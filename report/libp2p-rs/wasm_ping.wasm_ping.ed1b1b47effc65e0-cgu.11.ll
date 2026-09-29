Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/wasm_ping.wasm_ping.ed1b1b47effc65e0-cgu.11?download=true
inline.NumInlined: 1294
inline.NumDeleted: 622
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotINtB4_6SenderINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1y_6errors11redis_error10RedisErrorEE4sendCskm6LeB9lWb4_9wasm_ping:bb.a
bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #25
          to label %common.resume unwind label %bb.w

_RNvXs0_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotINtB5_6SenderINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1z_6errors11redis_error10RedisErrorEENtNtNtBY_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit.thread.i: ; preds = %bb.t, %.noexc.i
  %i.ap = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !1446
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1M_6errors11redis_error10RedisErrorEEECskm6LeB9lWb4_9wasm_ping.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1M_6errors11redis_error10RedisErrorEEECskm6LeB9lWb4_9wasm_ping.exit

bb.w:                                             ; preds = %bb.v
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %.thread, %bb.z, %bb.aa, %bb.u, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.bc, %bb.z ], [ %i.am, %bb.u ], [ %i.am, %bb.v ], [ %i.bc, %bb.aa ], [ %.pn1233, %.thread ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1M_6errors11redis_error10RedisErrorEEECskm6LeB9lWb4_9wasm_ping.exit.sink.split: ; preds = %_RNvXs0_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotINtB5_6SenderINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1z_6errors11redis_error10RedisErrorEENtNtNtBY_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit.thread.i, %_RNvXs0_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotINtB5_6SenderINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1z_6errors11redis_error10RedisErrorEENtNtNtBY_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit.thread.i26
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1M_6errors11redis_error10RedisErrorEEECskm6LeB9lWb4_9wasm_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1M_6errors11redis_error10RedisErrorEEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1M_6errors11redis_error10RedisErrorEEECskm6LeB9lWb4_9wasm_ping.exit.sink.split, %_RNvXs0_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotINtB5_6SenderINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1z_6errors11redis_error10RedisErrorEENtNtNtBY_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit.thread.i26, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping.exit19, %_RNvXs0_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotINtB5_6SenderINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1z_6errors11redis_error10RedisErrorEENtNtNtBY_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit.thread.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping.exit21
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping.exit19: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  %i.as = load ptr, ptr %i.b, align 8, !alias.scope !1447, !noundef !15 ; 6 uses
  %.not.i.i22 = icmp eq ptr %i.as, null
  br i1 %.not.i.i22, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1M_6errors11redis_error10RedisErrorEEECskm6LeB9lWb4_9wasm_ping.exit, label %bb.x

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping.exit19
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = invoke noundef i64 @_RNvMs9_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotNtB5_5State12set_complete(ptr noundef nonnull align 8 %i.at)
          to label %.noexc.i24 unwind label %bb.z, !noalias !1447

.noexc.i24:                                       ; preds = %bb.x
  %i.av = and i64 %i.au, 5
  %or.cond.not.i.i.i25 = icmp eq i64 %i.av, 1
  br i1 %or.cond.not.i.i.i25, label %bb.y, label %_RNvXs0_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotINtB5_6SenderINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1z_6errors11redis_error10RedisErrorEENtNtNtBY_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit.thread.i26

bb.y:                                             ; preds = %.noexc.i24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !1448, !nonnull !15, !align !22, !noundef !15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !1448, !nonnull !15, !noundef !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !1448, !noundef !15
  invoke void %i.az(ptr noundef %i.bb)
          to label %_RNvXs0_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotINtB5_6SenderINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1z_6errors11redis_error10RedisErrorEENtNtNtBY_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit.thread.i26 unwind label %bb.z, !noalias !1447, !inline_history !28

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !1449
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.aa, label %common.resume

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #25
          to label %common.resume unwind label %bb.ab

_RNvXs0_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotINtB5_6SenderINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1z_6errors11redis_error10RedisErrorEENtNtNtBY_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit.thread.i26: ; preds = %bb.y, %.noexc.i24
  %i.bf = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !1450
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1M_6errors11redis_error10RedisErrorEEECskm6LeB9lWb4_9wasm_ping.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1M_6errors11redis_error10RedisErrorEEECskm6LeB9lWb4_9wasm_ping.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ac:                                            ; preds = %bb.j, %bb.ad, %.thread
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

.thread:                                          ; preds = %bb.j, %bb.i, %.thread34, %bb.ad
  %.pn1233 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread34 ], [ %lpad.thr_comm.split-lp, %bb.ad ], [ %.pn, %bb.i ], [ %.pn, %bb.j ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1M_6errors11redis_error10RedisErrorEEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(8) %i.b) #28
          to label %common.resume unwind label %bb.ac

bb.ad:                                            ; preds = %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB11_6errors11redis_error10RedisErrorEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(56) %2) #28
          to label %.thread unwind label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotINtB4_6SenderINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1y_6errors11redis_error10RedisErrorEE9is_closedCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !15  ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = tail call noundef i64 @_RNvMs9_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotNtB5_5State4load(ptr noundef nonnull align 8 %i.b, i8 noundef 2)
  %i.d = and i64 %i.c, 4
  %i.e = icmp ne i64 %i.d, 0
  ret i1 %i.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #30
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E21reserve_one_uncheckedCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1454, !noalias !1455, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 16
  br i1 %i.c, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCskm6LeB9lWb4_9wasm_ping.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCskm6LeB9lWb4_9wasm_ping.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1454, !noalias !1455, !noundef !15 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCskm6LeB9lWb4_9wasm_ping.exit.thread, !prof !1456

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCskm6LeB9lWb4_9wasm_ping.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCskm6LeB9lWb4_9wasm_ping.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCskm6LeB9lWb4_9wasm_ping.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !19

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCskm6LeB9lWb4_9wasm_ping.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E8try_growCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(656) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECskm6LeB9lWb4_9wasm_ping.exit
    i64 0, label %bb.d
  ], !prof !1457

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #30
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCskm6LeB9lWb4_9wasm_ping.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCskm6LeB9lWb4_9wasm_ping.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E8try_growCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCskm6LeB9lWb4_9wasm_ping.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 6 uses
  %i.d = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 16                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !15
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !19

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCskm6LeB9lWb4_9wasm_ping.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #30
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCskm6LeB9lWb4_9wasm_ping.exit
  %i.j = icmp ult i64 %1, 17
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = mul i64 %1, 40                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 230584300921369395
  br i1 %or.cond.not, label %bb.l, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECskm6LeB9lWb4_9wasm_ping.exit, !prof !1460

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECskm6LeB9lWb4_9wasm_ping.exit
  %i.l = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond65.not = icmp ugt i64 %i.c, 230584300921369395
  br i1 %or.cond65.not, label %bb.l, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECskm6LeB9lWb4_9wasm_ping.exit48, !prof !1460

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECskm6LeB9lWb4_9wasm_ping.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.m = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #26 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECskm6LeB9lWb4_9wasm_ping.exit48: ; preds = %bb.f
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.k) #26 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECskm6LeB9lWb4_9wasm_ping.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.m, %bb.i ], [ %i.o, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECskm6LeB9lWb4_9wasm_ping.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = mul nuw nsw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = mul nuw nsw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.s = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 230584300921369395
  br i1 %or.cond.not.i, label %bb.k, label %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECskm6LeB9lWb4_9wasm_ping.exit, !prof !1460

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1461
  store i64 0, ptr %i.a, align 8, !noalias !1461
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !1461
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !1461
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECskm6LeB9lWb4_9wasm_ping.exit48, %bb.g, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECskm6LeB9lWb4_9wasm_ping.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECskm6LeB9lWb4_9wasm_ping.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECskm6LeB9lWb4_9wasm_ping.exit48 ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECskm6LeB9lWb4_9wasm_ping.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECskm6LeB9lWb4_9wasm_ping.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXNtCskKLDkoKarTP_4core3fmtQNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_5Write10write_charCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !22, !noundef !15 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1468, !noundef !15 ; 5 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i32 %1, 2048
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i32 %1, 65536
  %..i.i = select i1 %i.g, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 2, %bb.b ], [ %..i.i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.h = load i64, ptr %i.a, align 8, !range !18, !alias.scope !1469, !noundef !15
  %i.i = sub nsw i64 %i.h, %i.c
  %i.j = icmp ugt i64 %.sroa.0.0.i.i, %i.i
  br i1 %i.j, label %bb.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping.exit.i.i, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.c, i64 noundef %.sroa.0.0.i.i, i64 noundef 1, i64 noundef 1)
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping.exit.i.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping.exit.i.i: ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1468, !nonnull !15, !noundef !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 10 uses
  br i1 %i.e, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping.exit.i.i
  %i.n = icmp samesign ult i32 %1, 2048
  %i.o = trunc i32 %1 to i8
  %i.p = and i8 %i.o, 63
  %i.q = or disjoint i8 %i.p, -128                ; 3 uses
  %i.r = lshr i32 %1, 6
  %i.s = trunc i32 %i.r to i8                     ; 2 uses
  %i.t = and i8 %i.s, 63
  %i.u = or disjoint i8 %i.t, -128                ; 2 uses
  %i.v = lshr i32 %1, 12
  %i.w = trunc i32 %i.v to i8                     ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = or disjoint i8 %i.x, -128
  %i.z = lshr i32 %1, 18
  %i.aa = trunc nuw nsw i32 %i.z to i8
  %i.ab = or disjoint i8 %i.aa, -16
  br i1 %i.n, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping.exit.i.i
  %i.ac = trunc nuw nsw i32 %1 to i8
  store i8 %i.ac, ptr %i.m, align 1
  br label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = or disjoint i8 %i.s, -64
  store i8 %i.ad, ptr %i.m, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.q, ptr %i.ae, align 1
  br label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit

bb.i:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i32 %1, 65536
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = or disjoint i8 %i.w, -32
  store i8 %i.ag, ptr %i.m, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.u, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i8 %i.q, ptr %i.ai, align 1
  br label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.ab, ptr %i.m, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.y, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i8 %i.u, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  store i8 %i.q, ptr %i.al, align 1
  br label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.am = add nuw i64 %.sroa.0.0.i.i, %i.c
  store i64 %i.am, ptr %i.b, align 8, !alias.scope !1468
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXNtCskKLDkoKarTP_4core3fmtQNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_5Write9write_fmtCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskm6LeB9lWb4_9wasm_ping.exit:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !22, !noundef !15
  %i.b = tail call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @137, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !1470
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXNtCskKLDkoKarTP_4core3fmtQNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_5Write9write_strCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !22, !noundef !15 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1481, !noalias !1482, !noundef !15 ; 5 uses
  %i.d = load i64, ptr %i.a, align 8, !range !18, !alias.scope !1481, !noalias !1482, !noundef !15
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping.exit.thread.i.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping.exit.i.i.i, !prof !19

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping.exit.thread.i.i.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.c, i64 noundef %2, i64 noundef 1, i64 noundef 1), !noalias !1482
  %i.g = load i64, ptr %i.b, align 8, !alias.scope !1483, !noalias !1482, !noundef !15 ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  br label %bb.b

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping.exit.i.i.i: ; preds = %bb.a
  %i.i = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.i)
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping.exit.i.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping.exit.thread.i.i.i
  %i.j = phi i64 [ %i.g, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping.exit.thread.i.i.i ], [ %i.c, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping.exit.i.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1483, !noalias !1482, !nonnull !15, !noundef !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !1483, !noalias !1482
  br label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping.exit.i.i.i, %bb.b
  %i.n = phi i64 [ %.pre.i.i.i, %bb.b ], [ %i.c, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping.exit.i.i.i ]
  %i.o = add i64 %i.n, %2
  store i64 %i.o, ptr %i.b, align 8, !alias.scope !1483, !noalias !1482
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 ptr @_RNvXNtNtCs2oEMpbzoU1t_10thirtyfour7session4httpNtB2_4BodyINtNtCskKLDkoKarTP_4core7convert4FromRNtNtCs79iw4ZC9yCo_10serde_json5value5ValueE4fromCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(72) %0) unnamed_addr #2 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.c = tail call fastcc noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !15 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskm6LeB9lWb4_9wasm_ping.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1488
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i
    i64 1, label %bb.e
  ], !prof !21

default.unreachable:                              ; preds = %bb.c
  unreachable

end_hunk_0
begin_hunk_1_@llvm.umin.i64
!1260 = !{!1251, !1248}
!1261 = !{!1252, !1249}
!1262 = !{!1251, !1252, !1248, !1249}
!1263 = distinct !{!1263, !"_RNvXs9_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt6formatNtB5_13DefaultFieldsINtNtB9_5field11MakeVisitorNtB5_6WriterE12make_visitor"}
!1264 = distinct !{!1264, !1263, !"_RNvXs9_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt6formatNtB5_13DefaultFieldsINtNtB9_5field11MakeVisitorNtB5_6WriterE12make_visitor: argument 1"}
!1265 = distinct !{!1265, !1263, !"_RNvXs9_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt6formatNtB5_13DefaultFieldsINtNtB9_5field11MakeVisitorNtB5_6WriterE12make_visitor: argument 0"}
!1266 = !{!1264}
!1267 = !{!1265, !1264}
!1268 = !{!1265}
!1269 = distinct !{!1269, !"_RNvXs9_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt6formatNtB5_13DefaultFieldsINtNtB9_5field11MakeVisitorNtB5_6WriterE12make_visitor"}
!1270 = distinct !{!1270, !1269, !"_RNvXs9_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt6formatNtB5_13DefaultFieldsINtNtB9_5field11MakeVisitorNtB5_6WriterE12make_visitor: argument 1"}
!1271 = distinct !{!1271, !1269, !"_RNvXs9_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt6formatNtB5_13DefaultFieldsINtNtB9_5field11MakeVisitorNtB5_6WriterE12make_visitor: argument 0"}
!1272 = !{!1270}
!1273 = !{!1271, !1270}
!1274 = !{!1271}
!1275 = distinct !{!1275, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvCse0v0U5LqnG1_12thread_local15allocate_bucketINtNtBc_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEE0ENtNtNtBa_6traits8iterator8Iterator7collectIB2t_INtB1o_5EntryB27_EEECskm6LeB9lWb4_9wasm_ping"}
!1276 = distinct !{!1276, !1275, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvCse0v0U5LqnG1_12thread_local15allocate_bucketINtNtBc_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEE0ENtNtNtBa_6traits8iterator8Iterator7collectIB2t_INtB1o_5EntryB27_EEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1277 = distinct !{!1277, !"_RINvXsf_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBx_NtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEEINtNtNtNtB1m_4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtNtB1m_3ops5range5RangejENCINvBJ_15allocate_bucketB1h_E0EECskm6LeB9lWb4_9wasm_ping"}
!1278 = distinct !{!1278, !1277, !"_RINvXsf_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBx_NtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEEINtNtNtNtB1m_4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtNtB1m_3ops5range5RangejENCINvBJ_15allocate_bucketB1h_E0EECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1279 = distinct !{!1279, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBL_NtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEEINtB2_12SpecFromIterBU_INtNtNtNtB1A_4iter8adapters3map3MapINtNtNtB1A_3ops5range5RangejENCINvBX_15allocate_bucketB1v_E0EE9from_iterCskm6LeB9lWb4_9wasm_ping"}
!1280 = distinct !{!1280, !1279, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBL_NtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEEINtB2_12SpecFromIterBU_INtNtNtNtB1A_4iter8adapters3map3MapINtNtNtB1A_3ops5range5RangejENCINvBX_15allocate_bucketB1v_E0EE9from_iterCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1281 = distinct !{!1281, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBU_NtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1J_4iter8adapters3map3MapINtNtNtB1J_3ops5range5RangejENCINvB16_15allocate_bucketB1E_E0EE9from_iterCskm6LeB9lWb4_9wasm_ping"}
!1282 = distinct !{!1282, !1281, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBU_NtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1J_4iter8adapters3map3MapINtNtNtB1J_3ops5range5RangejENCINvB16_15allocate_bucketB1E_E0EE9from_iterCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1283 = distinct !{!1283, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBK_NtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEEINtB4_10SpecExtendBT_INtNtNtNtB1z_4iter8adapters3map3MapINtNtNtB1z_3ops5range5RangejENCINvBW_15allocate_bucketB1u_E0EE11spec_extendCskm6LeB9lWb4_9wasm_ping"}
!1284 = distinct !{!1284, !1283, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBK_NtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEEINtB4_10SpecExtendBT_INtNtNtNtB1z_4iter8adapters3map3MapINtNtNtB1z_3ops5range5RangejENCINvBW_15allocate_bucketB1u_E0EE11spec_extendCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1285 = distinct !{!1285, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBx_NtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEE14extend_trustedINtNtNtNtB1m_4iter8adapters3map3MapINtNtNtB1m_3ops5range5RangejENCINvBJ_15allocate_bucketB1h_E0EECskm6LeB9lWb4_9wasm_ping"}
!1286 = distinct !{!1286, !1285, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBx_NtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEE14extend_trustedINtNtNtNtB1m_4iter8adapters3map3MapINtNtNtB1m_3ops5range5RangejENCINvBJ_15allocate_bucketB1h_E0EECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1287 = distinct !{!1287, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBv_NtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEE16into_boxed_sliceCskm6LeB9lWb4_9wasm_ping"}
!1288 = distinct !{!1288, !1287, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBv_NtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEE16into_boxed_sliceCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1289 = !{!1282, !1280, !1278, !1276}
!1290 = !{!1286, !1284, !1282, !1280, !1278, !1276}
!1291 = !{!1288}
!1292 = distinct !{!1292, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMNtCskeoOuuhwsQF_12sharded_slab5shardINtB1o_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1q_3cfg13DefaultConfigE3new0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1q_4page6SharedB2b_B3g_EEECskm6LeB9lWb4_9wasm_ping"}
!1293 = distinct !{!1293, !1292, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMNtCskeoOuuhwsQF_12sharded_slab5shardINtB1o_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1q_3cfg13DefaultConfigE3new0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1q_4page6SharedB2b_B3g_EEECskm6LeB9lWb4_9wasm_ping: argument 1"}
!1294 = distinct !{!1294, !"_RINvXsf_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB33_8adapters3map3MapINtNtNtB35_3ops5range5RangejENCNvMNtBL_5shardINtB5a_5ShardB1p_B2u_E3new0EECskm6LeB9lWb4_9wasm_ping"}
!1295 = distinct !{!1295, !1294, !"_RINvXsf_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB33_8adapters3map3MapINtNtNtB35_3ops5range5RangejENCNvMNtBL_5shardINtB5a_5ShardB1p_B2u_E3new0EECskm6LeB9lWb4_9wasm_ping: argument 1"}
!1296 = distinct !{!1296, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBZ_3cfg13DefaultConfigEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3G_3ops5range5RangejENCNvMNtBZ_5shardINtB4T_5ShardB1D_B2I_E3new0EE9from_iterCskm6LeB9lWb4_9wasm_ping"}
!1297 = distinct !{!1297, !1296, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBZ_3cfg13DefaultConfigEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3G_3ops5range5RangejENCNvMNtBZ_5shardINtB4T_5ShardB1D_B2I_E3new0EE9from_iterCskm6LeB9lWb4_9wasm_ping: argument 1"}
!1298 = distinct !{!1298, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB18_3cfg13DefaultConfigEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3X_3ops5range5RangejENCNvMNtB18_5shardINtB5a_5ShardB1M_B2R_E3new0EE9from_iterCskm6LeB9lWb4_9wasm_ping"}
!1299 = distinct !{!1299, !1298, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB18_3cfg13DefaultConfigEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3X_3ops5range5RangejENCNvMNtB18_5shardINtB5a_5ShardB1M_B2R_E3new0EE9from_iterCskm6LeB9lWb4_9wasm_ping: argument 1"}
!1300 = distinct !{!1300, !1292, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMNtCskeoOuuhwsQF_12sharded_slab5shardINtB1o_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1q_3cfg13DefaultConfigE3new0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1q_4page6SharedB2b_B3g_EEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1301 = distinct !{!1301, !1294, !"_RINvXsf_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB33_8adapters3map3MapINtNtNtB35_3ops5range5RangejENCNvMNtBL_5shardINtB5a_5ShardB1p_B2u_E3new0EECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1302 = distinct !{!1302, !1296, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBZ_3cfg13DefaultConfigEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3G_3ops5range5RangejENCNvMNtBZ_5shardINtB4T_5ShardB1D_B2I_E3new0EE9from_iterCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1303 = distinct !{!1303, !1298, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB18_3cfg13DefaultConfigEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3X_3ops5range5RangejENCNvMNtB18_5shardINtB5a_5ShardB1M_B2R_E3new0EE9from_iterCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1304 = distinct !{!1304, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!1305 = distinct !{!1305, !1304, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!1306 = distinct !{!1306, !1304, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!1307 = distinct !{!1307, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBY_3cfg13DefaultConfigEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3D_3ops5range5RangejENCNvMNtBY_5shardINtB4Q_5ShardB1C_B2H_E3new0EE11spec_extendCskm6LeB9lWb4_9wasm_ping"}
!1308 = distinct !{!1308, !1307, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBY_3cfg13DefaultConfigEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3D_3ops5range5RangejENCNvMNtBY_5shardINtB4Q_5ShardB1C_B2H_E3new0EE11spec_extendCskm6LeB9lWb4_9wasm_ping: argument 1"}
!1309 = distinct !{!1309, !1307, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBY_3cfg13DefaultConfigEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3D_3ops5range5RangejENCNvMNtBY_5shardINtB4Q_5ShardB1C_B2H_E3new0EE11spec_extendCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1310 = distinct !{!1310, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3l_3ops5range5RangejENCNvMNtBL_5shardINtB4y_5ShardB1p_B2u_E3new0EECskm6LeB9lWb4_9wasm_ping"}
!1311 = distinct !{!1311, !1310, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3l_3ops5range5RangejENCNvMNtBL_5shardINtB4y_5ShardB1p_B2u_E3new0EECskm6LeB9lWb4_9wasm_ping: argument 1"}
!1312 = distinct !{!1312, !1310, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3l_3ops5range5RangejENCNvMNtBL_5shardINtB4y_5ShardB1p_B2u_E3new0EECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1313 = distinct !{!1313, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBJ_3cfg13DefaultConfigEE16into_boxed_sliceCskm6LeB9lWb4_9wasm_ping"}
!1314 = distinct !{!1314, !1313, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBJ_3cfg13DefaultConfigEE16into_boxed_sliceCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1315 = !{!1293}
!1316 = !{!1295}
!1317 = !{!1297}
!1318 = !{!1299}
!1319 = !{!1303, !1299, !1302, !1297, !1301, !1295, !1300, !1293}
!1320 = !{!1305, !1299, !1297, !1295, !1293}
!1321 = !{!1306, !1303, !1302, !1301, !1300}
!1322 = !{!1306, !1299, !1297, !1295, !1293}
!1323 = !{!1305, !1303, !1302, !1301, !1300}
!1324 = !{!1312, !1311, !1309, !1308, !1303, !1299, !1302, !1297, !1301, !1295, !1300, !1293}
!1325 = !{!1303, !1302, !1301, !1300}
!1326 = !{!1299, !1297, !1295, !1293}
!1327 = !{!1314}
!1328 = distinct !{!1328, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMNtCskeoOuuhwsQF_12sharded_slab5shardINtB1o_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1q_3cfg13DefaultConfigE3news_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB1q_4page5LocalEECskm6LeB9lWb4_9wasm_ping"}
!1329 = distinct !{!1329, !1328, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMNtCskeoOuuhwsQF_12sharded_slab5shardINtB1o_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1q_3cfg13DefaultConfigE3news_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB1q_4page5LocalEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1330 = distinct !{!1330, !"_RINvXsf_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCskeoOuuhwsQF_12sharded_slab4page5LocalEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1v_8adapters3map3MapINtNtNtB1x_3ops5range5RangejENCNvMNtBK_5shardINtB3C_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBK_3cfg13DefaultConfigE3news_0EECskm6LeB9lWb4_9wasm_ping"}
!1331 = distinct !{!1331, !1330, !"_RINvXsf_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCskeoOuuhwsQF_12sharded_slab4page5LocalEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1v_8adapters3map3MapINtNtNtB1x_3ops5range5RangejENCNvMNtBK_5shardINtB3C_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBK_3cfg13DefaultConfigE3news_0EECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1332 = distinct !{!1332, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCskeoOuuhwsQF_12sharded_slab4page5LocalEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB28_3ops5range5RangejENCNvMNtBY_5shardINtB3l_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBY_3cfg13DefaultConfigE3news_0EE9from_iterCskm6LeB9lWb4_9wasm_ping"}
!1333 = distinct !{!1333, !1332, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCskeoOuuhwsQF_12sharded_slab4page5LocalEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB28_3ops5range5RangejENCNvMNtBY_5shardINtB3l_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBY_3cfg13DefaultConfigE3news_0EE9from_iterCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1334 = distinct !{!1334, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCskeoOuuhwsQF_12sharded_slab4page5LocalEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2o_3ops5range5RangejENCNvMNtB17_5shardINtB3B_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB17_3cfg13DefaultConfigE3news_0EE9from_iterCskm6LeB9lWb4_9wasm_ping"}
!1335 = distinct !{!1335, !1334, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCskeoOuuhwsQF_12sharded_slab4page5LocalEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2o_3ops5range5RangejENCNvMNtB17_5shardINtB3B_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB17_3cfg13DefaultConfigE3news_0EE9from_iterCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1336 = distinct !{!1336, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtCskeoOuuhwsQF_12sharded_slab4page5LocalEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB25_3ops5range5RangejENCNvMNtBX_5shardINtB3i_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBX_3cfg13DefaultConfigE3news_0EE11spec_extendCskm6LeB9lWb4_9wasm_ping"}
!1337 = distinct !{!1337, !1336, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtCskeoOuuhwsQF_12sharded_slab4page5LocalEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB25_3ops5range5RangejENCNvMNtBX_5shardINtB3i_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBX_3cfg13DefaultConfigE3news_0EE11spec_extendCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1338 = distinct !{!1338, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCskeoOuuhwsQF_12sharded_slab4page5LocalE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1N_3ops5range5RangejENCNvMNtBK_5shardINtB30_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBK_3cfg13DefaultConfigE3news_0EECskm6LeB9lWb4_9wasm_ping"}
!1339 = distinct !{!1339, !1338, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCskeoOuuhwsQF_12sharded_slab4page5LocalE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1N_3ops5range5RangejENCNvMNtBK_5shardINtB30_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBK_3cfg13DefaultConfigE3news_0EECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1340 = distinct !{!1340, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCskeoOuuhwsQF_12sharded_slab4page5LocalE16into_boxed_sliceCskm6LeB9lWb4_9wasm_ping"}
!1341 = distinct !{!1341, !1340, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCskeoOuuhwsQF_12sharded_slab4page5LocalE16into_boxed_sliceCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1342 = !{!1335, !1333, !1331, !1329}
!1343 = !{!1339, !1337, !1335, !1333, !1331, !1329}
!1344 = !{!1341}
!1345 = distinct !{!1345, !"_RNCNvMs1_NtCs9DIU3UKMbTt_4axum4jsonINtB7_4JsonINtNtCskKLDkoKarTP_4core6result6ResultNtCs44McOc0n4RX_13interop_tests6ReportNtNtCsexYYUdYSQU6_5alloc6string6StringEE10from_bytes0Cskm6LeB9lWb4_9wasm_ping"}
!1346 = distinct !{!1346, !1345, !"_RNCNvMs1_NtCs9DIU3UKMbTt_4axum4jsonINtB7_4JsonINtNtCskKLDkoKarTP_4core6result6ResultNtCs44McOc0n4RX_13interop_tests6ReportNtNtCsexYYUdYSQU6_5alloc6string6StringEE10from_bytes0Cskm6LeB9lWb4_9wasm_ping: argument 0"}
!1347 = distinct !{!1347, !1345, !"_RNCNvMs1_NtCs9DIU3UKMbTt_4axum4jsonINtB7_4JsonINtNtCskKLDkoKarTP_4core6result6ResultNtCs44McOc0n4RX_13interop_tests6ReportNtNtCsexYYUdYSQU6_5alloc6string6StringEE10from_bytes0Cskm6LeB9lWb4_9wasm_ping: argument 2"}
!1348 = distinct !{!1348, !1345, !"_RNCNvMs1_NtCs9DIU3UKMbTt_4axum4jsonINtB7_4JsonINtNtCskKLDkoKarTP_4core6result6ResultNtCs44McOc0n4RX_13interop_tests6ReportNtNtCsexYYUdYSQU6_5alloc6string6StringEE10from_bytes0Cskm6LeB9lWb4_9wasm_ping: argument 1"}
!1349 = distinct !{!1349, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs79iw4ZC9yCo_10serde_json5error5ErrorE3newCskm6LeB9lWb4_9wasm_ping"}
!1350 = distinct !{!1350, !1349, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs79iw4ZC9yCo_10serde_json5error5ErrorE3newCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1351 = distinct !{!1351, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs44McOc0n4RX_13interop_tests6ReportNtNtCsexYYUdYSQU6_5alloc6string6StringEECskm6LeB9lWb4_9wasm_ping"}
!1352 = distinct !{!1352, !1351, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs44McOc0n4RX_13interop_tests6ReportNtNtCsexYYUdYSQU6_5alloc6string6StringEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1353 = !{!1346}
!1354 = !{!1347}
!1355 = !{!1346, !1347}
!1356 = !{!1346, !1348, !1347}
!1357 = !{!1348, !1347}
!1358 = !{!1350, !1346, !1348, !1347}
!1359 = !{!1352, !1347}
!1360 = !{!1346, !1348}
!1361 = distinct !{!1361, !"_RNCNvMs1_NtCs9DIU3UKMbTt_4axum4jsonINtB7_4JsonNtCs44McOc0n4RX_13interop_tests12BlpopRequestE10from_bytes0Cskm6LeB9lWb4_9wasm_ping"}
!1362 = distinct !{!1362, !1361, !"_RNCNvMs1_NtCs9DIU3UKMbTt_4axum4jsonINtB7_4JsonNtCs44McOc0n4RX_13interop_tests12BlpopRequestE10from_bytes0Cskm6LeB9lWb4_9wasm_ping: argument 0"}
!1363 = distinct !{!1363, !1361, !"_RNCNvMs1_NtCs9DIU3UKMbTt_4axum4jsonINtB7_4JsonNtCs44McOc0n4RX_13interop_tests12BlpopRequestE10from_bytes0Cskm6LeB9lWb4_9wasm_ping: argument 2"}
!1364 = distinct !{!1364, !1361, !"_RNCNvMs1_NtCs9DIU3UKMbTt_4axum4jsonINtB7_4JsonNtCs44McOc0n4RX_13interop_tests12BlpopRequestE10from_bytes0Cskm6LeB9lWb4_9wasm_ping: argument 1"}
!1365 = distinct !{!1365, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs79iw4ZC9yCo_10serde_json5error5ErrorE3newCskm6LeB9lWb4_9wasm_ping"}
!1366 = distinct !{!1366, !1365, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs79iw4ZC9yCo_10serde_json5error5ErrorE3newCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1367 = !{!1362}
!1368 = !{!1362, !1363}
!1369 = !{!1362, !1364, !1363}
!1370 = !{!1362, !1364}
!1371 = !{!1366, !1362, !1364, !1363}
!1372 = !{!1364, !1363}
!1373 = distinct !{!1373, !"_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCskm6LeB9lWb4_9wasm_ping"}
!1374 = distinct !{!1374, !1373, !"_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1375 = distinct !{!1375, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCskm6LeB9lWb4_9wasm_ping"}
!1376 = distinct !{!1376, !1375, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1377 = distinct !{!1377, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping"}
!1378 = distinct !{!1378, !1377, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1379 = !{!1378, !1376, !1374}
!1380 = !{!1376, !1374}
!1381 = distinct !{!1381, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCscwxJ8MeEu7n_4http6header3map3PosE7reserveCskm6LeB9lWb4_9wasm_ping"}
!1382 = distinct !{!1382, !1381, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCscwxJ8MeEu7n_4http6header3map3PosE7reserveCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1383 = distinct !{!1383, !1386, !1387}
!1384 = distinct !{!1384, !1387, !1386}
!1385 = !{!1382}
!1386 = !{!"llvm.loop.isvectorized", i32 1}
!1387 = !{!"llvm.loop.unroll.runtime.disable"}
!1388 = distinct !{!1388, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1n_6errors11redis_error10RedisErrorEEECskm6LeB9lWb4_9wasm_ping"}
!1389 = distinct !{!1389, !1388, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1n_6errors11redis_error10RedisErrorEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1390 = distinct !{!1390, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping"}
!1391 = distinct !{!1391, !1390, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1392 = distinct !{!1392, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping"}
!1393 = distinct !{!1393, !1392, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1394 = distinct !{!1394, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping"}
!1395 = distinct !{!1395, !1394, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1396 = distinct !{!1396, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping"}
!1397 = distinct !{!1397, !1396, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1398 = distinct !{!1398, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping"}
!1399 = distinct !{!1399, !1398, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1400 = distinct !{!1400, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping"}
!1401 = distinct !{!1401, !1400, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1402 = distinct !{!1402, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1M_6errors11redis_error10RedisErrorEEECskm6LeB9lWb4_9wasm_ping"}
!1403 = distinct !{!1403, !1402, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1M_6errors11redis_error10RedisErrorEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1404 = distinct !{!1404, !"_RNvXs0_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotINtB5_6SenderINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1z_6errors11redis_error10RedisErrorEENtNtNtBY_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping"}
!1405 = distinct !{!1405, !1404, !"_RNvXs0_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotINtB5_6SenderINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1z_6errors11redis_error10RedisErrorEENtNtNtBY_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1406 = distinct !{!1406, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2F_6errors11redis_error10RedisErrorEEEEECskm6LeB9lWb4_9wasm_ping"}
!1407 = distinct !{!1407, !1406, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2F_6errors11redis_error10RedisErrorEEEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1408 = distinct !{!1408, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping"}
!1409 = distinct !{!1409, !1408, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1410 = distinct !{!1410, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping"}
!1411 = distinct !{!1411, !1410, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1412 = distinct !{!1412, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2F_6errors11redis_error10RedisErrorEEEEECskm6LeB9lWb4_9wasm_ping"}
!1413 = distinct !{!1413, !1412, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2F_6errors11redis_error10RedisErrorEEEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1414 = distinct !{!1414, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping"}
!1415 = distinct !{!1415, !1414, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1416 = distinct !{!1416, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping"}
!1417 = distinct !{!1417, !1416, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1418 = distinct !{!1418, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1M_6errors11redis_error10RedisErrorEEECskm6LeB9lWb4_9wasm_ping"}
!1419 = distinct !{!1419, !1418, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1M_6errors11redis_error10RedisErrorEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1420 = distinct !{!1420, !"_RNvXs0_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotINtB5_6SenderINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1z_6errors11redis_error10RedisErrorEENtNtNtBY_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping"}
!1421 = distinct !{!1421, !1420, !"_RNvXs0_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotINtB5_6SenderINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1z_6errors11redis_error10RedisErrorEENtNtNtBY_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1422 = distinct !{!1422, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2F_6errors11redis_error10RedisErrorEEEEECskm6LeB9lWb4_9wasm_ping"}
!1423 = distinct !{!1423, !1422, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2F_6errors11redis_error10RedisErrorEEEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1424 = distinct !{!1424, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping"}
!1425 = distinct !{!1425, !1424, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1426 = distinct !{!1426, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping"}
!1427 = distinct !{!1427, !1426, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1428 = distinct !{!1428, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2F_6errors11redis_error10RedisErrorEEEEECskm6LeB9lWb4_9wasm_ping"}
!1429 = distinct !{!1429, !1428, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2F_6errors11redis_error10RedisErrorEEEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1430 = distinct !{!1430, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping"}
!1431 = distinct !{!1431, !1430, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1432 = distinct !{!1432, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping"}
!1433 = distinct !{!1433, !1432, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1434 = !{i8 -2, i8 15}
!1435 = !{!1389}
!1436 = !{!1391}
!1437 = !{!1393}
!1438 = !{!1393, !1391}
!1439 = !{!1395}
!1440 = !{!1397}
!1441 = !{!1397, !1395}
!1442 = !{!1401, !1399}
!1443 = !{!1403}
!1444 = !{!1405, !1403}
!1445 = !{!1411, !1409, !1407, !1403}
!1446 = !{!1417, !1415, !1413, !1403}
!1447 = !{!1419}
!1448 = !{!1421, !1419}
!1449 = !{!1427, !1425, !1423, !1419}
!1450 = !{!1433, !1431, !1429, !1419}
!1451 = distinct !{!1451, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCskm6LeB9lWb4_9wasm_ping"}
!1452 = distinct !{!1452, !1451, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCskm6LeB9lWb4_9wasm_ping: argument 1"}
!1453 = distinct !{!1453, !1451, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1454 = !{!1452}
!1455 = !{!1453}
!1456 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!1457 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!1458 = distinct !{!1458, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsczYENlYh6wI_8smallvec18CollectionAllocErrE6unwrapCskm6LeB9lWb4_9wasm_ping"}
!1459 = distinct !{!1459, !1458, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsczYENlYh6wI_8smallvec18CollectionAllocErrE6unwrapCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1460 = !{!"branch_weights", i32 2002, i32 2000}
!1461 = !{!1459}
!1462 = distinct !{!1462, !"_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char"}
!1463 = distinct !{!1463, !1462, !"_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char: argument 0"}
!1464 = distinct !{!1464, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push"}
!1465 = distinct !{!1465, !1464, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push: argument 0"}
!1466 = distinct !{!1466, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping"}
!1467 = distinct !{!1467, !1466, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1468 = !{!1465, !1463}
!1469 = !{!1467, !1465, !1463}
!1470 = distinct !{ptr @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskm6LeB9lWb4_9wasm_ping, null}
!1471 = distinct !{!1471, !"_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str"}
!1472 = distinct !{!1472, !1471, !"_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str: argument 0"}
!1473 = distinct !{!1473, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str"}
!1474 = distinct !{!1474, !1473, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str: argument 0"}
!1475 = distinct !{!1475, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCskm6LeB9lWb4_9wasm_ping"}
!1476 = distinct !{!1476, !1475, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1477 = distinct !{!1477, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping"}
!1478 = distinct !{!1478, !1477, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1479 = distinct !{!1479, !1471, !"_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str: argument 1"}
!1480 = distinct !{!1480, !1473, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str: argument 1"}
!1481 = !{!1478, !1476, !1474, !1472}
!1482 = !{!1480, !1479}
!1483 = !{!1476, !1474, !1472}
!1484 = distinct !{!1484, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskm6LeB9lWb4_9wasm_ping"}
!1485 = distinct !{!1485, !1484, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1486 = distinct !{!1486, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskm6LeB9lWb4_9wasm_ping"}
!1487 = distinct !{!1487, !1486, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1488 = !{!1485}
!1489 = !{!1487}
!1490 = distinct !{null}
!1491 = !{i8 -2, i8 6}
!1492 = !{i8 -1, i8 6}
!1493 = distinct !{!1493, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtCsdBtMCjsiEvL_8indexmap6BucketNtNtB8_6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2X_5slice4iter4IterBT_EEE11spec_extendCskm6LeB9lWb4_9wasm_ping"}
!1494 = distinct !{!1494, !1493, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtCsdBtMCjsiEvL_8indexmap6BucketNtNtB8_6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2X_5slice4iter4IterBT_EEE11spec_extendCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1495 = distinct !{!1495, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCsdBtMCjsiEvL_8indexmap6BucketNtNtB8_6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2F_5slice4iter4IterBG_EEECskm6LeB9lWb4_9wasm_ping"}
!1496 = distinct !{!1496, !1495, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCsdBtMCjsiEvL_8indexmap6BucketNtNtB8_6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2F_5slice4iter4IterBG_EEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1497 = distinct !{!1497, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtCsdBtMCjsiEvL_8indexmap6BucketNtNtB6_6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEE7reserveCskm6LeB9lWb4_9wasm_ping"}
!1498 = distinct !{!1498, !1497, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtCsdBtMCjsiEvL_8indexmap6BucketNtNtB6_6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEE7reserveCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1499 = distinct !{!1499, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterINtCsdBtMCjsiEvL_8indexmap6BucketNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtB1Y_3vecINtB45_3VecB1n_E14extend_trustedB3_E0ECskm6LeB9lWb4_9wasm_ping"}
!1500 = distinct !{!1500, !1499, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterINtCsdBtMCjsiEvL_8indexmap6BucketNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtB1Y_3vecINtB45_3VecB1n_E14extend_trustedB3_E0ECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1501 = !{!1494}
!1502 = !{!1496}
!1503 = !{!1496, !1494}
!1504 = !{!1498, !1496, !1494}
!1505 = !{!1500, !1496, !1494}
!1506 = !{!1500}
!1507 = distinct !{!1507, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping"}
!1508 = distinct !{!1508, !1507, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping: argument 1"}
!1509 = distinct !{!1509, !1507, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1510 = distinct !{!1510, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskm6LeB9lWb4_9wasm_ping"}
!1511 = distinct !{!1511, !1510, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskm6LeB9lWb4_9wasm_ping: argument 1"}
!1512 = distinct !{!1512, !1510, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1513 = distinct !{!1513, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCs5hzaM3VbZx4_5redis5types5ValueBG_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping"}
!1514 = distinct !{!1514, !1513, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCs5hzaM3VbZx4_5redis5types5ValueBG_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping: argument 1"}
!1515 = distinct !{!1515, !1513, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCs5hzaM3VbZx4_5redis5types5ValueBG_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1516 = distinct !{!1516, !"_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtCs5hzaM3VbZx4_5redis5types5ValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping"}
!1517 = distinct !{!1517, !1516, !"_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtCs5hzaM3VbZx4_5redis5types5ValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1518 = distinct !{!1518, !"_RNvXNtNtCskKLDkoKarTP_4core5clone6uninitNtNtCs5hzaM3VbZx4_5redis5types5ValueNtB2_8CopySpec9clone_oneCskm6LeB9lWb4_9wasm_ping"}
!1519 = distinct !{!1519, !1518, !"_RNvXNtNtCskKLDkoKarTP_4core5clone6uninitNtNtCs5hzaM3VbZx4_5redis5types5ValueNtB2_8CopySpec9clone_oneCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1520 = distinct !{null, null}
!1521 = distinct !{!1521, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCs5hzaM3VbZx4_5redis5types5ValueBG_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping"}
!1522 = distinct !{!1522, !1521, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCs5hzaM3VbZx4_5redis5types5ValueBG_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping: argument 1"}
!1523 = distinct !{!1523, !1521, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCs5hzaM3VbZx4_5redis5types5ValueBG_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1524 = distinct !{null}
!1525 = distinct !{!1525, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping"}
!1526 = distinct !{!1526, !1525, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping: argument 1"}
!1527 = distinct !{!1527, !1525, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1528 = distinct !{!1528, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskm6LeB9lWb4_9wasm_ping"}
!1529 = distinct !{!1529, !1528, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskm6LeB9lWb4_9wasm_ping: argument 1"}
!1530 = distinct !{!1530, !1528, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1531 = distinct !{!1531, !"_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!1532 = distinct !{!1532, !1531, !"_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 1"}
!1533 = distinct !{!1533, !1531, !"_RNvXsg_NtNtCs5hzaM3VbZx4_5redis6errors12server_errorNtB5_4ReprNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!1534 = distinct !{!1534, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5hzaM3VbZx4_5redis5types14VerbatimFormatECskm6LeB9lWb4_9wasm_ping"}
!1535 = distinct !{!1535, !1534, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5hzaM3VbZx4_5redis5types14VerbatimFormatECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1536 = distinct !{!1536, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5hzaM3VbZx4_5redis5types8PushKindECskm6LeB9lWb4_9wasm_ping"}
!1537 = distinct !{!1537, !1536, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5hzaM3VbZx4_5redis5types8PushKindECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1538 = !{!1508}
!1539 = !{!1509}
!1540 = !{!1512, !1511, !1509, !1508}
!1541 = !{!1512, !1509, !1508}
!1542 = !{!1514}
!1543 = !{!1515}
!1544 = !{!1517}
!1545 = !{!1519, !1517}
!1546 = !{!1522}
!1547 = !{!1523}
!1548 = !{!1526}
!1549 = !{!1527}
!1550 = !{!1530, !1529, !1527, !1526}
!1551 = !{!1530, !1527, !1526}
!1552 = !{!1532}
!1553 = !{!1533}
!1554 = !{i8 0, i8 14}
!1555 = !{!1533, !1532}
!1556 = !{!1535}
!1557 = !{!1537}
!1558 = distinct !{!1558, !"_RNvXsn_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtBM_3fmt5Debug3fmtCskm6LeB9lWb4_9wasm_ping"}
!1559 = distinct !{!1559, !1558, !"_RNvXsn_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtBM_3fmt5Debug3fmtCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1560 = distinct !{null}
!1561 = !{!1559}
!1562 = distinct !{!1562, !"_RNvXsj_NtCs2oEMpbzoU1t_10thirtyfour5errorNtB5_19WebDriverErrorInnerNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!1563 = distinct !{!1563, !1562, !"_RNvXsj_NtCs2oEMpbzoU1t_10thirtyfour5errorNtB5_19WebDriverErrorInnerNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!1564 = distinct !{!1564, !"_RNvXsn_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtCs2oEMpbzoU1t_10thirtyfour5error19WebDriverErrorInnerENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskm6LeB9lWb4_9wasm_ping"}
!1565 = distinct !{!1565, !1564, !"_RNvXsn_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtCs2oEMpbzoU1t_10thirtyfour5error19WebDriverErrorInnerENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1566 = distinct !{!1566, !1562, !"_RNvXsj_NtCs2oEMpbzoU1t_10thirtyfour5errorNtB5_19WebDriverErrorInnerNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!1567 = !{!1563}
!1568 = !{!1566, !1565}
!1569 = !{!1563, !1566, !1565}
!1570 = distinct !{!1570, !"_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!1571 = distinct !{!1571, !1570, !"_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!1572 = distinct !{!1572, !1570, !"_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!1573 = !{!1571}
!1574 = !{!1572}
!1575 = distinct !{!1575, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!1576 = distinct !{!1576, !1575, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!1577 = distinct !{!1577, !"_RINvNtCs79iw4ZC9yCo_10serde_json3ser9to_writerQINtNtNtCs1eA6bChxBZF_5bytes3buf6writer6WriterNtNtBQ_9bytes_mut8BytesMutEINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB1Y_6string6StringEECskm6LeB9lWb4_9wasm_ping"}
!1578 = distinct !{!1578, !1577, !"_RINvNtCs79iw4ZC9yCo_10serde_json3ser9to_writerQINtNtNtCs1eA6bChxBZF_5bytes3buf6writer6WriterNtNtBQ_9bytes_mut8BytesMutEINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB1Y_6string6StringEECskm6LeB9lWb4_9wasm_ping: argument 1"}
!1579 = distinct !{!1579, !1577, !"_RINvNtCs79iw4ZC9yCo_10serde_json3ser9to_writerQINtNtNtCs1eA6bChxBZF_5bytes3buf6writer6WriterNtNtBQ_9bytes_mut8BytesMutEINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB1Y_6string6StringEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1580 = distinct !{!1580, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9DIU3UKMbTt_4axum4json4JsonINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB1e_6string6StringEEECskm6LeB9lWb4_9wasm_ping"}
!1581 = distinct !{!1581, !1580, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9DIU3UKMbTt_4axum4json4JsonINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB1e_6string6StringEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1582 = distinct !{!1582, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECskm6LeB9lWb4_9wasm_ping"}
!1583 = distinct !{!1583, !1582, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1584 = distinct !{!1584, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping"}
!1585 = distinct !{!1585, !1584, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1586 = !{!1576}
!1587 = !{!1579, !1578}
!1588 = !{!1581}
!1589 = !{!1583}
!1590 = !{!1585}
!1591 = !{!1585, !1583, !1581}
!1592 = distinct !{null}
!1593 = distinct !{!1593, !"_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs5hzaM3VbZx4_5redis5types14FromRedisValue13from_byte_vecCskm6LeB9lWb4_9wasm_ping"}
!1594 = distinct !{!1594, !1593, !"_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs5hzaM3VbZx4_5redis5types14FromRedisValue13from_byte_vecCskm6LeB9lWb4_9wasm_ping: argument 1"}
!1595 = distinct !{!1595, !1593, !"_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs5hzaM3VbZx4_5redis5types14FromRedisValue13from_byte_vecCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1596 = distinct !{!1596, !"_RNCNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs5hzaM3VbZx4_5redis5types14FromRedisValue13from_byte_vec0Cskm6LeB9lWb4_9wasm_ping"}
!1597 = distinct !{!1597, !1596, !"_RNCNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs5hzaM3VbZx4_5redis5types14FromRedisValue13from_byte_vec0Cskm6LeB9lWb4_9wasm_ping: argument 1"}
!1598 = distinct !{!1598, !1596, !"_RNCNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs5hzaM3VbZx4_5redis5types14FromRedisValue13from_byte_vec0Cskm6LeB9lWb4_9wasm_ping: argument 0"}
!1599 = distinct !{!1599, !"_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs5hzaM3VbZx4_5redis5types14FromRedisValue17from_redis_valuesCskm6LeB9lWb4_9wasm_ping"}
!1600 = distinct !{!1600, !1599, !"_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs5hzaM3VbZx4_5redis5types14FromRedisValue17from_redis_valuesCskm6LeB9lWb4_9wasm_ping: argument 1"}
!1601 = distinct !{!1601, !1599, !"_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs5hzaM3VbZx4_5redis5types14FromRedisValue17from_redis_valuesCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1602 = distinct !{!1602, !"_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs5hzaM3VbZx4_5redis5types14FromRedisValue17from_redis_valuesCskm6LeB9lWb4_9wasm_ping"}
!1603 = distinct !{!1603, !1602, !"_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs5hzaM3VbZx4_5redis5types14FromRedisValue17from_redis_valuesCskm6LeB9lWb4_9wasm_ping: argument 1"}
!1604 = distinct !{!1604, !1602, !"_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs5hzaM3VbZx4_5redis5types14FromRedisValue17from_redis_valuesCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1605 = distinct !{!1605, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5hzaM3VbZx4_5redis5types5ValueBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping"}
!1606 = distinct !{!1606, !1605, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5hzaM3VbZx4_5redis5types5ValueBX_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskm6LeB9lWb4_9wasm_ping: argument 1"}
!1607 = distinct !{!1607, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCskm6LeB9lWb4_9wasm_ping"}
!1608 = distinct !{!1608, !1607, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1609 = distinct !{!1609, !1607, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCskm6LeB9lWb4_9wasm_ping: argument 1"}
!1610 = distinct !{!1610, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECskm6LeB9lWb4_9wasm_ping"}
!1611 = distinct !{!1611, !1610, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1612 = distinct !{!1612, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping"}
!1613 = distinct !{!1613, !1612, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1614 = !{!1595, !1594}
!1615 = !{!1595}
!1616 = !{!1594}
!1617 = !{!1598, !1597, !1595, !1594}
!1618 = !{!1598, !1595, !1594}
!1619 = !{!1601, !1600}
!1620 = !{!1604, !1603}
!1621 = !{!1606}
!1622 = !{!1608}
!1623 = !{!1609}
!1624 = !{!1611}
!1625 = !{!1613}
!1626 = !{!1613, !1611}
!1627 = distinct !{!1627, !"_RNvMs3_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt6formatNtB5_6Format16format_timestampCskm6LeB9lWb4_9wasm_ping"}
!1628 = distinct !{!1628, !1627, !"_RNvMs3_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt6formatNtB5_6Format16format_timestampCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1629 = distinct !{!1629, !1627, !"_RNvMs3_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt6formatNtB5_6Format16format_timestampCskm6LeB9lWb4_9wasm_ping: argument 1"}
!1630 = distinct !{null}
!1631 = distinct !{!1631, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskm6LeB9lWb4_9wasm_ping"}
!1632 = distinct !{!1632, !1631, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1633 = distinct !{!1633, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskm6LeB9lWb4_9wasm_ping"}
!1634 = distinct !{!1634, !1633, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1635 = distinct !{!1635, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskm6LeB9lWb4_9wasm_ping"}
!1636 = distinct !{!1636, !1635, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1637 = distinct !{!1637, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping"}
!1638 = distinct !{!1638, !1637, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1639 = distinct !{!1639, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskm6LeB9lWb4_9wasm_ping"}
!1640 = distinct !{!1640, !1639, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1641 = distinct !{!1641, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskm6LeB9lWb4_9wasm_ping"}
!1642 = distinct !{!1642, !1641, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1643 = distinct !{!1643, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskm6LeB9lWb4_9wasm_ping"}
!1644 = distinct !{!1644, !1643, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1645 = distinct !{!1645, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping"}
!1646 = distinct !{!1646, !1645, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1647 = distinct !{!1647, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskm6LeB9lWb4_9wasm_ping"}
!1648 = distinct !{!1648, !1647, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1649 = distinct !{!1649, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskm6LeB9lWb4_9wasm_ping"}
!1650 = distinct !{!1650, !1649, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1651 = distinct !{!1651, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskm6LeB9lWb4_9wasm_ping"}
!1652 = distinct !{!1652, !1651, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1653 = distinct !{!1653, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping"}
!1654 = distinct !{!1654, !1653, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping: argument 0"}
!1655 = distinct !{!1655, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskm6LeB9lWb4_9wasm_ping"}
!1656 = distinct !{!1656, !1655, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1657 = distinct !{!1657, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskm6LeB9lWb4_9wasm_ping"}
!1658 = distinct !{!1658, !1657, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskm6LeB9lWb4_9wasm_ping: argument 0"}
!1659 = distinct !{!1659, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskm6LeB9lWb4_9wasm_ping"}
!1660 = distinct !{!1660, !1659, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskm6LeB9lWb4_9wasm_ping: argument 0"}
end_hunk_1
