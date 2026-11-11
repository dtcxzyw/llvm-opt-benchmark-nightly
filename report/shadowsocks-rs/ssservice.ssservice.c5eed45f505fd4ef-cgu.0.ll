Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNvXs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h26clientINtB5_14H2ClientFutureNtNtNtBb_4body8incoming8IncomingINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB1M_3net11http_stream15ProxyHttpStreamNtNtNtNtB1K_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtB1G_13TokioExecutorENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice:bb.a
  br i1 %.not4.i, label %bb.dh, label %bb.da, !prof !186

bb.da:                                            ; preds = %bb.cz
  store ptr %i.kc, ptr %i.d, align 8, !noalias !100280
  call void @llvm.experimental.noalias.scope.decl(metadata !100281)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 64
  store atomic i8 1, ptr %i.kd seq_cst, align 1, !noalias !100282
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 32 ; 2 uses
  %i.kf = atomicrmw xchg ptr %i.ke, i8 1 seq_cst, align 1, !noalias !100282
  %.not.i.i.i.i = icmp eq i8 %i.kf, 0
  br i1 %.not.i.i.i.i, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !noalias !100282, !align !185, !noundef !177 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8, !noalias !100282
  store ptr null, ptr %i.kg, align 8, !noalias !100282
  %.not5.i.i.i.i = icmp eq ptr %i.kh, null
  store atomic i8 0, ptr %i.ke seq_cst, align 8, !noalias !100282
  br i1 %.not5.i.i.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !noalias !100282, !nonnull !177, !noundef !177
  call void %i.kl(ptr noundef %i.kj) #52, !noalias !100282, !inline_history !100138
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da
  %i.km = getelementptr inbounds nuw i8, ptr %i.kc, i64 56 ; 2 uses
  %i.kn = atomicrmw xchg ptr %i.km, i8 1 seq_cst, align 1, !noalias !100282
  %.not6.i.i.i.i = icmp eq i8 %i.kn, 0
  br i1 %.not6.i.i.i.i, label %bb.de, label %_RNvXs2_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_6SenderzENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i.i

bb.de:                                            ; preds = %bb.dd
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kc, i64 40 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !noalias !100282, !align !185, !noundef !177 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kc, i64 48
  %i.kr = load ptr, ptr %i.kq, align 8, !noalias !100282
  store ptr null, ptr %i.ko, align 8, !noalias !100282
  %i.ks = icmp eq ptr %i.kp, null
  br i1 %i.ks, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8, !noalias !100282, !nonnull !177, !noundef !177
  call void %i.ku(ptr noundef %i.kr) #52, !noalias !100282, !inline_history !100139
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.df, %bb.de
  store atomic i8 0, ptr %i.km seq_cst, align 8, !noalias !100283
  br label %_RNvXs2_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_6SenderzENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvXs2_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_6SenderzENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.dd
  call void @llvm.experimental.noalias.scope.decl(metadata !100284)
  call void @llvm.experimental.noalias.scope.decl(metadata !100285)
  %i.kv = load ptr, ptr %i.d, align 8, !alias.scope !100286, !noalias !100280, !nonnull !177, !noundef !177
  %i.kw = atomicrmw add ptr %i.kv, i64 -1 release, align 8, !noalias !100286
  %i.kx = icmp eq i64 %i.kw, 1
  br i1 %i.kx, label %bb.dg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslXgxf2tUV4p_15futures_channel7oneshot6SenderzEECsgZAIVb0XKpv_9ssservice.exit.i

bb.dg:                                            ; preds = %_RNvXs2_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_6SenderzENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCslXgxf2tUV4p_15futures_channel7oneshot5InnerzEE9drop_slowCs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #59
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslXgxf2tUV4p_15futures_channel7oneshot6SenderzEECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslXgxf2tUV4p_15futures_channel7oneshot6SenderzEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.dg, %_RNvXs2_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_6SenderzENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !100280
  br label %_RNvXs8_NtNtNtCsaI3lGUjttVO_5hyper5proto2h26clientINtB5_7PipeMapNtNtNtBb_4body8incoming8IncomingENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit

bb.dh:                                            ; preds = %bb.cz
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2924, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2925) #62
  unreachable

_RNvXs8_NtNtNtCsaI3lGUjttVO_5hyper5proto2h26clientINtB5_7PipeMapNtNtNtBb_4body8incoming8IncomingENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslXgxf2tUV4p_15futures_channel7oneshot6SenderzEECsgZAIVb0XKpv_9ssservice.exit.i, %bb.cy, %bb.cx, %bb.cw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h24ping8RecorderECsgZAIVb0XKpv_9ssservice.exit39.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h24ping8RecorderECsgZAIVb0XKpv_9ssservice.exit.i, %_RNvMs0_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_5InneruE4recvCsgZAIVb0XKpv_9ssservice.exit.thread45.i, %_RNvXs7_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_8SendWhenNtNtNtB9_4body8incoming8IncomingNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt13TokioExecutorENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.0.0.in = phi i1 [ true, %_RNvMs0_NtCslXgxf2tUV4p_15futures_channel7oneshotINtB5_5InneruE4recvCsgZAIVb0XKpv_9ssservice.exit.thread45.i ], [ %.sroa.0.2.i, %_RNvXs7_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_8SendWhenNtNtNtB9_4body8incoming8IncomingNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt13TokioExecutorENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h24ping8RecorderECsgZAIVb0XKpv_9ssservice.exit.i ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h24ping8RecorderECsgZAIVb0XKpv_9ssservice.exit39.i ], [ false, %bb.cx ], [ true, %bb.cy ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslXgxf2tUV4p_15futures_channel7oneshot6SenderzEECsgZAIVb0XKpv_9ssservice.exit.i ], [ true, %bb.cw ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBZ_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(1176) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1088
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  tail call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsb28OZjLZAOu_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %1) #52
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %.val2 = load i64, ptr %i.b, align 8, !range !226, !noundef !177 ; 2 uses
  %or.cond.i = icmp slt i64 %.val2, 1
  br i1 %or.cond.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6common8TlsStateECsgZAIVb0XKpv_9ssservice.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !177, !noundef !177
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !100289
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6common8TlsStateECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6common8TlsStateECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %.val = load ptr, ptr %i.d, align 8, !align !185, !noundef !177 ; 2 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6common8TlsStateECsgZAIVb0XKpv_9ssservice.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %.val1 = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !177, !noundef !177
  tail call void %i.h(ptr noundef %.val1) #52, !inline_history !21
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6common8TlsStateECsgZAIVb0XKpv_9ssservice.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtB7_6common9handshake9IoSession7into_ioCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(3520) initializes((0, 3520)) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dead_on_return dereferenceable(4640) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3520) %0, ptr noundef nonnull align 16 dereferenceable(3520) %i.a, i64 3520, i1 false)
  tail call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsb28OZjLZAOu_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %1) #52
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4576
  %.val2 = load i64, ptr %i.b, align 16, !range !226, !noundef !177 ; 2 uses
  %or.cond.i = icmp slt i64 %.val2, 1
  br i1 %or.cond.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6common8TlsStateECsgZAIVb0XKpv_9ssservice.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4584
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !177, !noundef !177
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !100292
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6common8TlsStateECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6common8TlsStateECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4608
  %.val = load ptr, ptr %i.d, align 16, !align !185, !noundef !177 ; 2 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6common8TlsStateECsgZAIVb0XKpv_9ssservice.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4616
  %.val1 = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !177, !noundef !177
  tail call void %i.h(ptr noundef %.val1) #52, !inline_history !21
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6common8TlsStateECsgZAIVb0XKpv_9ssservice.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs6_NtNtCsb28OZjLZAOu_6rustls4conn10connectionINtB7_16ConnectionCommonNtNtNtB9_6client11client_conn20ClientConnectionDataENtB5_13PlaintextSink14write_vectoredCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(1056) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  switch i64 %2, label %bb.b [
    i64 0, label %bb.m
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %2, 4                   ; 3 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !100331
  %i.d = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %.idx, i64 noundef range(i64 1, 17) 8) #52, !noalias !100331 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.b
  %xtraiter = and i64 %2, 1
  %i.f = icmp eq i64 %2, 1
  br i1 %i.f, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter = and i64 %2, 576460752303423486
  br label %.preheader.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #61, !noalias !100332
  unreachable

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %i.g = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %i.q, %.preheader.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.g ; 2 uses
  %.val11.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !100333, !noundef !177
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val12.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !100333, !noundef !177
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.g ; 2 uses
  store ptr %.val11.i.i.i.i.i.i.i, ptr %i.j, align 8, !noalias !100334, !captures !228
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.val12.i.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !100335
  %i.l = or disjoint i64 %i.g, 1                  ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.l ; 2 uses
  %.val11.i.i.i.i.i.i.i.1 = load ptr, ptr %i.m, align 8, !noalias !100333, !noundef !177
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val12.i.i.i.i.i.i.i.1 = load i64, ptr %i.n, align 8, !noalias !100333, !noundef !177
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.l ; 2 uses
  store ptr %.val11.i.i.i.i.i.i.i.1, ptr %i.o, align 8, !noalias !100334, !captures !228
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.val12.i.i.i.i.i.i.i.1, ptr %i.p, align 8, !noalias !100335
  %i.q = add nuw nsw i64 %i.g, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecRShEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterNtNtNtB1u_2io8io_slice7IoSliceENCNvXs6_NtNtCsb28OZjLZAOu_6rustls4conn10connectionINtB3f_16ConnectionCommonNtNtNtB3h_6client11client_conn20ClientConnectionDataENtB3d_13PlaintextSink14write_vectored0EE9from_iterCsgZAIVb0XKpv_9ssservice.exit.unr-lcssa, label %.preheader.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecRShEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterNtNtNtB1u_2io8io_slice7IoSliceENCNvXs6_NtNtCsb28OZjLZAOu_6rustls4conn10connectionINtB3f_16ConnectionCommonNtNtNtB3h_6client11client_conn20ClientConnectionDataENtB3d_13PlaintextSink14write_vectored0EE9from_iterCsgZAIVb0XKpv_9ssservice.exit.unr-lcssa: ; preds = %.preheader.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecRShEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterNtNtNtB1u_2io8io_slice7IoSliceENCNvXs6_NtNtCsb28OZjLZAOu_6rustls4conn10connectionINtB3f_16ConnectionCommonNtNtNtB3h_6client11client_conn20ClientConnectionDataENtB3d_13PlaintextSink14write_vectored0EE9from_iterCsgZAIVb0XKpv_9ssservice.exit, label %.preheader.i.i.i.i.epil.preheader

.preheader.i.i.i.i.epil.preheader:                ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecRShEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterNtNtNtB1u_2io8io_slice7IoSliceENCNvXs6_NtNtCsb28OZjLZAOu_6rustls4conn10connectionINtB3f_16ConnectionCommonNtNtNtB3h_6client11client_conn20ClientConnectionDataENtB3d_13PlaintextSink14write_vectored0EE9from_iterCsgZAIVb0XKpv_9ssservice.exit.unr-lcssa, %.preheader.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %i.q, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecRShEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterNtNtNtB1u_2io8io_slice7IoSliceENCNvXs6_NtNtCsb28OZjLZAOu_6rustls4conn10connectionINtB3f_16ConnectionCommonNtNtNtB3h_6client11client_conn20ClientConnectionDataENtB3d_13PlaintextSink14write_vectored0EE9from_iterCsgZAIVb0XKpv_9ssservice.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod17 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.epil.init ; 2 uses
  %.val11.i.i.i.i.i.i.i.epil = load ptr, ptr %i.r, align 8, !noalias !100333, !noundef !177
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val12.i.i.i.i.i.i.i.epil = load i64, ptr %i.s, align 8, !noalias !100333, !noundef !177
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.epil.init ; 2 uses
  store ptr %.val11.i.i.i.i.i.i.i.epil, ptr %i.t, align 8, !noalias !100334, !captures !228
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.val12.i.i.i.i.i.i.i.epil, ptr %i.u, align 8, !noalias !100335
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecRShEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterNtNtNtB1u_2io8io_slice7IoSliceENCNvXs6_NtNtCsb28OZjLZAOu_6rustls4conn10connectionINtB3f_16ConnectionCommonNtNtNtB3h_6client11client_conn20ClientConnectionDataENtB3d_13PlaintextSink14write_vectored0EE9from_iterCsgZAIVb0XKpv_9ssservice.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecRShEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterNtNtNtB1u_2io8io_slice7IoSliceENCNvXs6_NtNtCsb28OZjLZAOu_6rustls4conn10connectionINtB3f_16ConnectionCommonNtNtNtB3h_6client11client_conn20ClientConnectionDataENtB3d_13PlaintextSink14write_vectored0EE9from_iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecRShEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterNtNtNtB1u_2io8io_slice7IoSliceENCNvXs6_NtNtCsb28OZjLZAOu_6rustls4conn10connectionINtB3f_16ConnectionCommonNtNtNtB3h_6client11client_conn20ClientConnectionDataENtB3d_13PlaintextSink14write_vectored0EE9from_iterCsgZAIVb0XKpv_9ssservice.exit.unr-lcssa, %.preheader.i.i.i.i.epil.preheader
  call void @_RNvMs_NtNtNtCsb28OZjLZAOu_6rustls4msgs7message8outboundNtB4_14OutboundChunks3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef %2) #52
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.w = call noundef i64 @_RNvMs_NtCsb28OZjLZAOu_6rustls12common_stateNtB4_11CommonState16buffer_plaintext(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.v) #52
  call void @llvm.experimental.noalias.scope.decl(metadata !100336)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !range !180, !alias.scope !100336, !noundef !177
  %i.z = trunc nuw i8 %i.y to i1
  store i8 0, ptr %i.x, align 1, !alias.scope !100336
  br i1 %i.z, label %bb.d, label %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE26maybe_refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit

bb.d:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecRShEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterNtNtNtB1u_2io8io_slice7IoSliceENCNvXs6_NtNtCsb28OZjLZAOu_6rustls4conn10connectionINtB3f_16ConnectionCommonNtNtNtB3h_6client11client_conn20ClientConnectionDataENtB3d_13PlaintextSink14write_vectored0EE9from_iterCsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !100336
  call void @llvm.experimental.noalias.scope.decl(metadata !100337)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !range !244, !alias.scope !100338, !noundef !177
  %.not.i.i = icmp eq i8 %i.ab, -1
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RNvXsj_NtCsb28OZjLZAOu_6rustls5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aa) #60
  br label %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !100338, !nonnull !177, !noundef !177
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !100338, !nonnull !177, !align !185, !noundef !177
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !invariant.load !177, !noalias !100339, !nonnull !177
  call void %i.ah(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %0) #60, !inline_history !169
  br label %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit.i

_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.f, %bb.e
  %i.ai = load i8, ptr %i.b, align 8, !range !244, !alias.scope !100340, !noalias !100336, !noundef !177
  %i.aj = icmp eq i8 %i.ai, -1
  br i1 %i.aj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsb28OZjLZAOu_6rustls5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsb28OZjLZAOu_6rustls5error5ErrorECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b) #52
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsb28OZjLZAOu_6rustls5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsb28OZjLZAOu_6rustls5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.g, %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !100336
  br label %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE26maybe_refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit

_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE26maybe_refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsb28OZjLZAOu_6rustls5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecRShEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterNtNtNtB1u_2io8io_slice7IoSliceENCNvXs6_NtNtCsb28OZjLZAOu_6rustls4conn10connectionINtB3f_16ConnectionCommonNtNtNtB3h_6client11client_conn20ClientConnectionDataENtB3d_13PlaintextSink14write_vectored0EE9from_iterCsgZAIVb0XKpv_9ssservice.exit
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %.idx, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRShEECsgZAIVb0XKpv_9ssservice.exit

bb.h:                                             ; preds = %bb.a
  %i.ak = load ptr, ptr %1, align 8, !noundef !177
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noundef !177
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ak, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.am, ptr %i.ao, align 8
  store ptr null, ptr %i.c, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.aq = call noundef i64 @_RNvMs_NtCsb28OZjLZAOu_6rustls12common_stateNtB4_11CommonState16buffer_plaintext(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ap) #52 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100341)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !range !180, !alias.scope !100341, !noundef !177
  %i.at = trunc nuw i8 %i.as to i1
  store i8 0, ptr %i.ar, align 1, !alias.scope !100341
  br i1 %i.at, label %bb.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRShEECsgZAIVb0XKpv_9ssservice.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !100341
  call void @llvm.experimental.noalias.scope.decl(metadata !100342)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.av = load i8, ptr %i.au, align 8, !range !244, !alias.scope !100343, !noundef !177
  %.not.i.i10 = icmp eq i8 %i.av, -1
  br i1 %.not.i.i10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call fastcc void @_RNvXsj_NtCsb28OZjLZAOu_6rustls5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.au) #60
  br label %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit.i11

bb.k:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !100343, !nonnull !177, !noundef !177
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !100343, !nonnull !177, !align !185, !noundef !177
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !invariant.load !177, !noalias !100344, !nonnull !177
  call void %i.bb(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %0) #60, !inline_history !169
  br label %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit.i11

_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit.i11: ; preds = %bb.k, %bb.j
  %i.bc = load i8, ptr %i.a, align 8, !range !244, !alias.scope !100345, !noalias !100341, !noundef !177
  %i.bd = icmp eq i8 %i.bc, -1
  br i1 %i.bd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsb28OZjLZAOu_6rustls5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i12, label %bb.l

bb.l:                                             ; preds = %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit.i11
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsb28OZjLZAOu_6rustls5error5ErrorECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #52
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsb28OZjLZAOu_6rustls5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i12

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsb28OZjLZAOu_6rustls5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i12: ; preds = %bb.l, %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100341
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRShEECsgZAIVb0XKpv_9ssservice.exit

bb.m:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRShEECsgZAIVb0XKpv_9ssservice.exit
  %.sroa.4.0 = phi ptr [ %i.bf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRShEECsgZAIVb0XKpv_9ssservice.exit ], [ null, %bb.a ]
  %i.be = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.be

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRShEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsb28OZjLZAOu_6rustls5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i12, %bb.h, %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE26maybe_refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.4.1 = phi i64 [ %i.w, %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE26maybe_refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit ], [ %i.aq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsb28OZjLZAOu_6rustls5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i12 ], [ %i.aq, %bb.h ]
  %i.bf = inttoptr i64 %.sroa.4.1 to ptr
  br label %bb.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef ptr @_RNvXs6_NtNtCsb28OZjLZAOu_6rustls4conn10connectionINtB7_16ConnectionCommonNtNtNtB9_6client11client_conn20ClientConnectionDataENtB5_13PlaintextSink5flushCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs6_NtNtCsb28OZjLZAOu_6rustls4conn10connectionINtB7_16ConnectionCommonNtNtNtB9_6client11client_conn20ClientConnectionDataENtB5_13PlaintextSink5writeCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(1056) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %i.d, align 8
  store ptr null, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.f = call noundef i64 @_RNvMs_NtCsb28OZjLZAOu_6rustls12common_stateNtB4_11CommonState16buffer_plaintext(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !100353)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !range !180, !alias.scope !100353, !noundef !177
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.g, align 1, !alias.scope !100353
  br i1 %i.i, label %bb.b, label %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE26maybe_refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !100353
  call void @llvm.experimental.noalias.scope.decl(metadata !100354)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !244, !alias.scope !100355, !noundef !177
  %.not.i.i = icmp eq i8 %i.k, -1
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RNvXsj_NtCsb28OZjLZAOu_6rustls5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.j) #60
  br label %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !100355, !nonnull !177, !noundef !177
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !100355, !nonnull !177, !align !185, !noundef !177
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !177, !noalias !100356, !nonnull !177
  call void %i.q(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %0) #60, !inline_history !169
  br label %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit.i

_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.d, %bb.c
  %i.r = load i8, ptr %i.a, align 8, !range !244, !alias.scope !100357, !noalias !100353, !noundef !177
  %i.s = icmp eq i8 %i.r, -1
  br i1 %i.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsb28OZjLZAOu_6rustls5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.e

bb.e:                                             ; preds = %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsb28OZjLZAOu_6rustls5error5ErrorECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #52
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsb28OZjLZAOu_6rustls5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsb28OZjLZAOu_6rustls5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.e, %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100353
  br label %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE26maybe_refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit

_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE26maybe_refresh_traffic_keysCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsb28OZjLZAOu_6rustls5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit.i
  %i.t = inttoptr i64 %i.f to ptr
end_hunk_0
