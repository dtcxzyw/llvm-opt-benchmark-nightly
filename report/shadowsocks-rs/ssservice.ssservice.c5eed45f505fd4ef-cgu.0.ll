Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_clientINtB7_10HttpClientNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingE17send_request_conn0CsgZAIVb0XKpv_9ssservice:bb.a
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXs5_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4103.0..sroa_idx, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ah, ptr %i.nu, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @_RNvXs1_NtCs7ewmRfXve8r_4http8responseINtB5_8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4105.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68567
  %i.nv = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 5, ptr %i.nv, align 8, !noalias !68567
  %.sroa.422.0..sroa_idx.i.i32 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @851, ptr %.sroa.422.0..sroa_idx.i.i32, align 8, !noalias !68567
  %.sroa.523.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 45, ptr %.sroa.523.0..sroa_idx.i.i33, align 8, !noalias !68567
  %i.nw = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @1547, ptr %i.nw, align 8, !noalias !68567
  %i.nx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.af, ptr %i.nx, align 8, !noalias !68567
  store i64 0, ptr %i.b, align 8, !noalias !68567
  %.sroa.428.0..sroa_idx.i.i34 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @851, ptr %.sroa.428.0..sroa_idx.i.i34, align 8, !noalias !68567
  %.sroa.529.0..sroa_idx.i.i35 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 45, ptr %.sroa.529.0..sroa_idx.i.i35, align 8, !noalias !68567
  %i.ny = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ny, align 8, !noalias !68567
  %.sroa.434.0..sroa_idx.i.i36 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @848, ptr %.sroa.434.0..sroa_idx.i.i36, align 8, !noalias !68567
  %.sroa.535.0..sroa_idx.i.i37 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 56, ptr %.sroa.535.0..sroa_idx.i.i37, align 8, !noalias !68567
  %i.nz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.nz, align 8, !noalias !68567
  %i.oa = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 275, ptr %i.oa, align 4, !noalias !68567
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #53, !noalias !68567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.dh

bb.ei:                                            ; preds = %bb.ej, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4join10JoinHandleuEECsgZAIVb0XKpv_9ssservice.exit
  store i8 0, ptr %i.ll, align 1
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 1498 ; 2 uses
  %i.oc = load i8, ptr %i.ob, align 2, !range !181, !noundef !178
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %bb.ek, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit40

bb.ej:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4join10JoinHandleuEECsgZAIVb0XKpv_9ssservice.exit
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 384
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(24) %i.oe) #53
  br label %bb.ei

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit40: ; preds = %bb.em, %bb.el, %bb.ek, %bb.ei
  store i8 0, ptr %i.ob, align 2
  br label %bb.en

bb.ek:                                            ; preds = %bb.ei
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 344
  call void @llvm.experimental.noalias.scope.decl(metadata !68568)
  %i.og = load i16, ptr %i.of, align 8, !range !179, !alias.scope !68568, !noundef !178
  %i.oh = icmp eq i16 %i.og, 0
  br i1 %i.oh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit40, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 352
  call void @llvm.experimental.noalias.scope.decl(metadata !68569)
  call void @llvm.experimental.noalias.scope.decl(metadata !68570)
  %.val.i.i.i38 = load i64, ptr %i.oi, align 8, !alias.scope !68571 ; 2 uses
  %i.oj = icmp eq i64 %.val.i.i.i38, 0
  br i1 %i.oj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit40, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.val1.i.i.i39 = load ptr, ptr %i.ok, align 8, !alias.scope !68571, !nonnull !178, !noundef !178
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i39, i64 noundef %.val.i.i.i38, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !68571
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit40

bb.en:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit40, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit
  %.sroa.6160.0.i136149 = phi i8 [ %.sroa.6160.0.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit40 ], [ %.sroa.6160.0.i.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.11164.0.i138146 = phi i8 [ %.sroa.11164.0.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit40 ], [ %.sroa.11164.0.i.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.0119.0 = phi i64 [ -3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit40 ], [ %.sroa.0159.0.i.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.10124.0 = phi ptr [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit40 ], [ %.sroa.14.0.i.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit ]
  store i64 %.sroa.0119.0, ptr %0, align 8
  %.sroa.3120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.6160.0.i136149, ptr %.sroa.3120.0..sroa_idx, align 8
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.11164.0.i138146, ptr %.sroa.5121.0..sroa_idx, align 1
  %.sroa.7122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(150) %.sroa.7122.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(150) %.sroa.7122, i64 150, i1 false)
  %.sroa.9123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.9123.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.9123, i64 104, i1 false)
  %.sroa.10124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %.sroa.10124.0, ptr %.sroa.10124.0..sroa_idx, align 8
  br label %common.ret
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef range(i8 1, 3) i8 @_RNCNvMs5_NtNtCsczhfDQ1qNkX_5tokio6signal4unixNtB7_6Signal4recv0CsgZAIVb0XKpv_9ssservice(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !232, !noundef !178
  switch i8 %i.b, label %bb.b [
    i8 0, label %.thread
    i8 1, label %bb.g
    i8 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !178, !align !186, !noundef !178
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !232, !noalias !68574
  switch i8 %.pre, label %bb.d [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 3, label %.common.ret_crit_edge.i
  ]

.common.ret_crit_edge.i:                          ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !68574
  br label %_RNCNvMNtCsczhfDQ1qNkX_5tokio6signalNtB4_8RxFuture4recv0CsgZAIVb0XKpv_9ssservice.exit

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %.thread, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !68574, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !noalias !68574
  br label %_RNCNvMNtCsczhfDQ1qNkX_5tokio6signalNtB4_8RxFuture4recv0CsgZAIVb0XKpv_9ssservice.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @960) #63, !noalias !68574
  unreachable

_RNCNvMNtCsczhfDQ1qNkX_5tokio6signalNtB4_8RxFuture4recv0CsgZAIVb0XKpv_9ssservice.exit: ; preds = %.common.ret_crit_edge.i, %bb.e
  %.val.i = phi ptr [ %.val.pre.i, %.common.ret_crit_edge.i ], [ %i.f, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = tail call noundef zeroext i1 @_RNvMNtCsczhfDQ1qNkX_5tokio6signalNtB2_8RxFuture9poll_recv(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #53 ; 2 uses
  %..i = select i1 %i.i, i8 3, i8 1               ; 2 uses
  store i8 %..i, ptr %i.h, align 8, !noalias !68574
  %.5 = select i1 %i.i, i8 2, i8 1
  store i8 %..i, ptr %i.a, align 8
  ret i8 %.5

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1556) #63
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtB7_21UdpAssociationContextNtNtNtBd_3tun3udp19UdpTunInboundWriterE28send_received_respond_packet0CsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 16 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.3.i.i = alloca [24 x i8], align 8        ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [9380 x i8], align 4              ; 32 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [9380 x i8], align 4              ; 17 uses
  %i.p = alloca [96 x i8], align 8                ; 16 uses
  %i.q = alloca [64 x i8], align 8                ; 11 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [80 x i8], align 8                ; 13 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [64 x i8], align 8                ; 11 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 353 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !range !232, !noundef !178
  switch i8 %i.ab, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.at
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8
  %i.af = load ptr, ptr %i.ad, align 8, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  store <2 x ptr> %i.ae, ptr %i.ac, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !178, !noundef !178
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !178 ; 2 uses
  store ptr %i.ai, ptr %i.ag, align 8, !captures !229
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 354
  %i.ao = load i8, ptr %i.an, align 2, !range !181, !noundef !178 ; 2 uses
  store i8 %i.ao, ptr %i.am, align 8
  %i.ap = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 6
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp samesign ugt i64 %i.ap, 4
  br i1 %i.ar, label %bb.d, label %.thread121

.thread121:                                       ; preds = %bb.d, %bb.c
  %i.as = phi ptr [ %i.af, %bb.c ], [ %.pre, %bb.d ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 536
  store i8 1, ptr %i.at, align 8
  %i.au = load ptr, ptr %i.ac, align 8, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.au, i64 512
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 456
  %4 = load ptr, ptr %2, align 8, !nonnull !178, !align !186, !noundef !178
  %i.aw = load ptr, ptr %i.ag, align 8, !nonnull !178, !noundef !178
  %5 = load i64, ptr %i.al, align 8, !noundef !178
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 32, i1 false)
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %.sroa.668.0..sroa_idx, align 8
  %.sroa.769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %4, ptr %.sroa.769.0..sroa_idx, align 8
  %.sroa.870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aw, ptr %.sroa.870.0..sroa_idx, align 8
  %.sroa.971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %5, ptr %.sroa.971.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 280
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.az = trunc nuw i8 %i.ao to i1                ; 2 uses
  %spec.select = select i1 %i.az, ptr @1059, ptr @1058
  %spec.select128 = select i1 %i.az, i64 8, i64 7
  store ptr %spec.select, ptr %i.z, align 8, !captures !229
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %spec.select128, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 %i.ak, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.ay, ptr %i.x, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %2, ptr %i.bb, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.455.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.z, ptr %i.bc, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.457.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store ptr %i.y, ptr %i.bd, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.459.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !68635
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 5, ptr %i.be, align 8, !noalias !68635
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr @862, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !68635
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i64 49, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !68635
  %i.bf = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  store ptr @1589, ptr %i.bf, align 8, !noalias !68635
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store ptr %i.x, ptr %i.bg, align 8, !noalias !68635
  store i64 0, ptr %i.p, align 8, !noalias !68635
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @862, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !68635
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 49, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !68635
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 0, ptr %i.bh, align 8, !noalias !68635
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr @859, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !68635
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 59, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !68635
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store i32 1, ptr %i.bi, align 8, !noalias !68635
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 76
  store i32 693, ptr %i.bj, align 4, !noalias !68635
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.p) #53, !noalias !68635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !68635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.pre = load ptr, ptr %i.ac, align 8
  br label %.thread121

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.pre112 = load i8, ptr %.phi.trans.insert, align 8, !range !232, !noalias !68636
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 6 uses
  switch i8 %.pre112, label %bb.f [
    i8 0, label %bb.g
    i8 1, label %bb.aq
    i8 3, label %bb.x
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %.thread121, %bb.e
  %i.bl = phi ptr [ %i.ax, %.thread121 ], [ %i.bk, %bb.e ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !68636, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.7.sroa.0.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 2, !noalias !68636 ; 2 uses
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.7.sroa.8.0.copyload.i = load i16, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i, align 2, !noalias !68636 ; 2 uses
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.7.sroa.9.sroa.7.0..sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.7.sroa.9.sroa.7.0.copyload.i = load i16, ptr %.sroa.7.sroa.9.sroa.7.0..sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.i, align 4, !noalias !68636
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !68636, !nonnull !178, !align !186, !noundef !178 ; 14 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !68636, !nonnull !178, !noundef !178 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !68636, !noundef !178 ; 4 uses
  %i.bu = load i16, ptr %i.bp, align 8, !range !179, !noalias !68636, !noundef !178
  %i.bv = trunc nuw i16 %i.bu to i1
  br i1 %i.bv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bw = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1889, i64 noundef 50) #60, !noalias !68636
  br label %_RNCNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3udpNtB7_19UdpTunInboundWriterNtNtNtNtBb_3net3udp11association15UdpInboundWrite7send_to0CsgZAIVb0XKpv_9ssservice.exit.thread

bb.i:                                             ; preds = %bb.g
  %.sroa.03.0.copyload.i = load i16, ptr %0, align 8, !noalias !68636
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %.sroa.0.0.copyload.i = load i16, ptr %i.bx, align 4, !noalias !68636
  %.sroa.761.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 6
  %.sroa.761.0.copyload.i = load i32, ptr %.sroa.761.0..sroa_idx.i, align 2, !noalias !68636 ; 5 uses
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %.sroa.15.0.copyload.i = load i16, ptr %.sroa.15.0..sroa_idx.i, align 2, !noalias !68636 ; 5 uses
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %.sroa.17.sroa.0.0.copyload.i = load i8, ptr %.sroa.17.0..sroa_idx.i, align 4, !noalias !68636 ; 2 uses
  %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 13
  %.sroa.17.sroa.5.0.copyload.i = load i8, ptr %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx.i, align 1, !noalias !68636 ; 2 uses
  %.sroa.17.sroa.6.0..sroa.17.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 14
  %.sroa.17.sroa.6.0.copyload.i = load i8, ptr %.sroa.17.sroa.6.0..sroa.17.0..sroa_idx.sroa_idx.i, align 2, !noalias !68636 ; 2 uses
  %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 15
  %.sroa.17.sroa.7.0.copyload.i = load i8, ptr %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx.i, align 1, !noalias !68636 ; 2 uses
  %.sroa.17.sroa.8.0..sroa.17.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.17.sroa.8.0.copyload.i = load i8, ptr %.sroa.17.sroa.8.0..sroa.17.0..sroa_idx.sroa_idx.i, align 8, !noalias !68636 ; 2 uses
  %.sroa.17.sroa.9.0..sroa.17.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 17
  %.sroa.17.sroa.9.0.copyload.i = load i8, ptr %.sroa.17.sroa.9.0..sroa.17.0..sroa_idx.sroa_idx.i, align 1, !noalias !68636 ; 2 uses
  %.sroa.17.sroa.10.0..sroa.17.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 18
  %.sroa.17.sroa.10.0.copyload.i = load i8, ptr %.sroa.17.sroa.10.0..sroa.17.0..sroa_idx.sroa_idx.i, align 2, !noalias !68636 ; 2 uses
  %.sroa.17.sroa.11.0..sroa.17.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 19
  %.sroa.17.sroa.11.0.copyload.i = load i8, ptr %.sroa.17.sroa.11.0..sroa.17.0..sroa_idx.sroa_idx.i, align 1, !noalias !68636 ; 2 uses
  %.sroa.17.sroa.12.0..sroa.17.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %.sroa.17.sroa.12.0.copyload.i = load i32, ptr %.sroa.17.sroa.12.0..sroa.17.0..sroa_idx.sroa_idx.i, align 4, !noalias !68636 ; 2 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %.sroa.21.0.copyload.i = load i16, ptr %.sroa.21.0..sroa_idx.i, align 8, !noalias !68636 ; 2 uses
  %i.by = trunc i16 %.sroa.03.0.copyload.i to i1
  %i.bz = trunc nuw i16 %.sroa.0.0.copyload.i to i1 ; 2 uses
  br i1 %i.by, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.bz, label %bb.r, label %_RNvMNtNtCsf3Ta7LF998c_4core3net11socket_addrNtB2_10SocketAddr3new.exit43.i

bb.k:                                             ; preds = %bb.i
  br i1 %i.bz, label %bb.l, label %_RNvMNtNtCsf3Ta7LF998c_4core3net11socket_addrNtB2_10SocketAddr3new.exit.i

bb.l:                                             ; preds = %bb.k
  %.sroa.761.2.extract.shift.i = lshr i32 %.sroa.761.0.copyload.i, 16
  %sum.shift.i = lshr i32 %.sroa.761.0.copyload.i, 24
  %.sroa.761.2.extract.shift.masked.i = and i32 %.sroa.761.2.extract.shift.i, 255
  %i.ca = or i32 %.sroa.761.2.extract.shift.masked.i, %sum.shift.i
  %or.cond.i.i = icmp eq i32 %i.ca, 0
  br i1 %or.cond.i.i, label %_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.i, label %.critedge.i

_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.i: ; preds = %bb.l
  %.sroa.6.3.extract.shift.i = lshr i16 %.sroa.15.0.copyload.i, 8
  %.sroa.15.0.copyload.masked.i = and i16 %.sroa.15.0.copyload.i, 255
  %i.cb = or i16 %.sroa.15.0.copyload.masked.i, %.sroa.6.3.extract.shift.i
  %or.cond5.i.i = icmp eq i16 %i.cb, 0
  %i.cc = or i8 %.sroa.17.sroa.5.0.copyload.i, %.sroa.17.sroa.0.0.copyload.i
  %or.cond8.i.i = icmp eq i8 %i.cc, 0
  %or.cond29.i.i = select i1 %or.cond5.i.i, i1 %or.cond8.i.i, i1 false
  %i.cd = or i8 %.sroa.17.sroa.7.0.copyload.i, %.sroa.17.sroa.6.0.copyload.i
  %or.cond11.i.i = icmp eq i8 %i.cd, 0
  %or.cond30.i.i = select i1 %or.cond29.i.i, i1 %or.cond11.i.i, i1 false
  %i.ce = or i8 %.sroa.17.sroa.9.0.copyload.i, %.sroa.17.sroa.8.0.copyload.i
  %or.cond14.i.i = icmp eq i8 %i.ce, 0
  %or.cond31.i.i = select i1 %or.cond30.i.i, i1 %or.cond14.i.i, i1 false
  %i.cf = and i8 %.sroa.17.sroa.11.0.copyload.i, %.sroa.17.sroa.10.0.copyload.i
  %or.cond17.i.i = icmp eq i8 %i.cf, -1
  %or.cond32.i.i = select i1 %or.cond31.i.i, i1 %or.cond17.i.i, i1 false
  br i1 %or.cond32.i.i, label %_RNvMNtNtCsf3Ta7LF998c_4core3net11socket_addrNtB2_10SocketAddr3new.exit.i, label %.critedge.i

.critedge.i:                                      ; preds = %_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.i, %bb.l
  %i.cg = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1885, i64 noundef 35) #60, !noalias !68636
  br label %_RNCNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3udpNtB7_19UdpTunInboundWriterNtNtNtNtBb_3net3udp11association15UdpInboundWrite7send_to0CsgZAIVb0XKpv_9ssservice.exit.thread

_RNvMNtNtCsf3Ta7LF998c_4core3net11socket_addrNtB2_10SocketAddr3new.exit43.i: ; preds = %bb.j
  br label %bb.r

_RNvMNtNtCsf3Ta7LF998c_4core3net11socket_addrNtB2_10SocketAddr3new.exit.i: ; preds = %_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.i, %bb.k
  %.sroa.761.0.i = phi i32 [ %.sroa.761.0.copyload.i, %bb.k ], [ %.sroa.17.sroa.12.0.copyload.i, %_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.i ]
  %.sroa.15.0.i = phi i16 [ %.sroa.15.0.copyload.i, %bb.k ], [ %.sroa.21.0.copyload.i, %_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !68636
  %.sroa.10173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1055
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.sroa.10173.0..sroa_idx.i, i8 0, i64 40, i1 false), !noalias !68636
  %.sroa.7.0..sroa_idx170.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1044
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.7.0..sroa_idx170.i, i8 0, i64 9, i1 false), !noalias !68636
  store i32 2, ptr %i.o, align 4, !alias.scope !68637, !noalias !68636
  %.sroa.4166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 0, ptr %.sroa.4166.0..sroa_idx.i, align 4, !alias.scope !68637, !noalias !68636
  %.sroa.5168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1036
  store i32 %.sroa.761.0.i, ptr %.sroa.5168.0..sroa_idx.i, align 4, !alias.scope !68637, !noalias !68636
  %.sroa.6169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1040
  store i32 %.sroa.7.sroa.0.0.copyload.i, ptr %.sroa.6169.0..sroa_idx.i, align 4, !alias.scope !68637, !noalias !68636
  %.sroa.8171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1053
  store i8 20, ptr %.sroa.8171.0..sroa_idx.i, align 1, !alias.scope !68637, !noalias !68636
  %.sroa.9172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1054
  store i8 -1, ptr %.sroa.9172.0..sroa_idx.i, align 2, !alias.scope !68637, !noalias !68636
  %.sroa.11174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1095
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %.sroa.11174.0..sroa_idx.i, align 1, !alias.scope !68637, !noalias !68636
  %.sroa.15179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 9291
  store i8 -1, ptr %.sroa.15179.0..sroa_idx.i, align 1, !alias.scope !68637, !noalias !68636
  %.sroa.16180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 9292
  %i.ch = insertelement <4 x i16> <i16 poison, i16 poison, i16 0, i16 0>, i16 %.sroa.15.0.i, i64 0
  %i.ci = insertelement <4 x i16> %i.ch, i16 %.sroa.7.sroa.8.0.copyload.i, i64 1
  store <4 x i16> %i.ci, ptr %.sroa.16180.0..sroa_idx.i, align 4, !alias.scope !68637, !noalias !68636
  %.sroa.20185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 9359
  store i8 2, ptr %.sroa.20185.0..sroa_idx.i, align 1, !alias.scope !68637, !noalias !68636
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 9360
  store i16 -2, ptr %.sroa.22.0..sroa_idx.i, align 4, !alias.scope !68637, !noalias !68636
  %i.cj = call noundef i64 @_RNvMs9_NtCsiwebgwkgVmN_10etherparse14packet_builderINtB5_17PacketBuilderStepNtNtNtB7_9transport10udp_header9UdpHeaderE4size(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(9380) %i.o, i64 noundef %i.bt) #53, !noalias !68636 ; 6 uses
  %.not.i.i.i = icmp slt i64 %i.cj, 0
  br i1 %.not.i.i.i, label %bb.p, label %bb.m, !prof !189

bb.m:                                             ; preds = %_RNvMNtNtCsf3Ta7LF998c_4core3net11socket_addrNtB2_10SocketAddr3new.exit.i
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !68638
  %i.cl = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.cj, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !68638 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.p, label %bb.o
end_hunk_0
begin_hunk_1_@_RNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtB7_21UdpAssociationContextNtNtNtBd_3tun3udp19UdpTunInboundWriterE6create0CsgZAIVb0XKpv_9ssservice:bb.a
  %i.azq = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.bv, ptr %i.azq, align 8, !noalias !69080
  %.sroa.4358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.4358.0..sroa_idx.i, align 8, !noalias !69080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !69295
  %i.azr = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 1, ptr %i.azr, align 8, !noalias !69295
  %.sroa.422.0..sroa_idx.i.i172.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @862, ptr %.sroa.422.0..sroa_idx.i.i172.i, align 8, !noalias !69295
  %.sroa.523.0..sroa_idx.i.i173.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 49, ptr %.sroa.523.0..sroa_idx.i.i173.i, align 8, !noalias !69295
  %i.azs = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr @1583, ptr %i.azs, align 8, !noalias !69295
  %i.azt = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.bu, ptr %i.azt, align 8, !noalias !69295
  store i64 0, ptr %i.c, align 8, !noalias !69295
  %.sroa.428.0..sroa_idx.i.i174.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @862, ptr %.sroa.428.0..sroa_idx.i.i174.i, align 8, !noalias !69295
  %.sroa.529.0..sroa_idx.i.i175.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 49, ptr %.sroa.529.0..sroa_idx.i.i175.i, align 8, !noalias !69295
  %i.azu = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.azu, align 8, !noalias !69295
  %.sroa.434.0..sroa_idx.i.i176.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @859, ptr %.sroa.434.0..sroa_idx.i.i176.i, align 8, !noalias !69295
  %.sroa.535.0..sroa_idx.i.i177.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 59, ptr %.sroa.535.0..sroa_idx.i.i177.i, align 8, !noalias !69295
  %i.azv = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 1, ptr %i.azv, align 8, !noalias !69295
  %i.azw = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 431, ptr %i.azw, align 4, !noalias !69295
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c) #53, !noalias !69296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !69295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !69080
  br label %bb.ll

bb.lp:                                            ; preds = %bb.jg
  %i.azx = getelementptr inbounds nuw i8, ptr %i.arh, i64 496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.azy = getelementptr inbounds nuw i8, ptr %i.arh, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.azy, i64 32, i1 false)
  %.val85.i = load ptr, ptr %i.azx, align 8, !nonnull !178, !noundef !178 ; 4 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %.val85.i, i64 448
  %i.baa = call noundef i8 @_RNvMNtNtCsczhfDQ1qNkX_5tokio4sync15batch_semaphoreNtB2_9Semaphore11try_acquire(ptr noundef nonnull align 8 %i.azz, i64 noundef 1) #53, !noalias !69297
  %cond.i = icmp eq i8 %i.baa, 2
  br i1 %cond.i, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.bab = getelementptr inbounds nuw i8, ptr %.val85.i, i64 128
  %i.bac = getelementptr inbounds nuw i8, ptr %.val85.i, i64 136
  %i.bad = atomicrmw add ptr %i.bac, i64 1 acquire, align 8, !noalias !69298 ; 2 uses
  %i.bae = call fastcc noundef nonnull ptr @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4listINtB2_2TxNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE10find_blockCsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.bab, i64 noundef %i.bad) #53, !noalias !69298 ; 2 uses
  %i.baf = and i64 %i.bad, 31                     ; 2 uses
  %i.bag = getelementptr inbounds nuw [32 x i8], ptr %i.bae, i64 %i.baf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bag, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.bp, i64 32, i1 false), !noalias !69299
  %i.bah = shl nuw nsw i64 1, %i.baf
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bae, i64 1040
  %i.baj = atomicrmw or ptr %i.bai, i64 %i.bah release, align 8, !noalias !69298 ; 0 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %.val85.i, i64 256
  call void @_RNvMs0_NtNtNtCsczhfDQ1qNkX_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.bak) #53, !noalias !69300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.bal = load ptr, ptr %i.arg, align 8, !noalias !69080, !nonnull !178, !align !186, !noundef !178
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 536
  store i8 0, ptr %i.bam, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.i

bb.lr:                                            ; preds = %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.ban = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !69080 ; 2 uses
  %i.bao = icmp ult i64 %i.ban, 6
  call void @llvm.assume(i1 %i.bao)
  %i.bap = icmp samesign ugt i64 %i.ban, 3
  br i1 %i.bap, label %bb.ls, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.i

bb.ls:                                            ; preds = %bb.lr
  %i.baq = load ptr, ptr %i.arg, align 8, !noalias !69080, !nonnull !178, !align !186, !noundef !178
  %i.bar = getelementptr inbounds nuw i8, ptr %i.baq, i64 456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !69080
  store ptr %i.bar, ptr %i.bo, align 8, !noalias !69080
  %.sroa.4400.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4400.0..sroa_idx.i, align 8, !noalias !69080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69301
  %i.bas = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 4, ptr %i.bas, align 8, !noalias !69301
  %.sroa.422.0..sroa_idx.i.i181.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @862, ptr %.sroa.422.0..sroa_idx.i.i181.i, align 8, !noalias !69301
  %.sroa.523.0..sroa_idx.i.i182.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 49, ptr %.sroa.523.0..sroa_idx.i.i182.i, align 8, !noalias !69301
  %i.bat = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @1584, ptr %i.bat, align 8, !noalias !69301
  %i.bau = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.bo, ptr %i.bau, align 8, !noalias !69301
  store i64 0, ptr %i.b, align 8, !noalias !69301
  %.sroa.428.0..sroa_idx.i.i183.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @862, ptr %.sroa.428.0..sroa_idx.i.i183.i, align 8, !noalias !69301
  %.sroa.529.0..sroa_idx.i.i184.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 49, ptr %.sroa.529.0..sroa_idx.i.i184.i, align 8, !noalias !69301
  %i.bav = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.bav, align 8, !noalias !69301
  %.sroa.434.0..sroa_idx.i.i185.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @859, ptr %.sroa.434.0..sroa_idx.i.i185.i, align 8, !noalias !69301
  %.sroa.535.0..sroa_idx.i.i186.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 59, ptr %.sroa.535.0..sroa_idx.i.i186.i, align 8, !noalias !69301
  %i.baw = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.baw, align 8, !noalias !69301
  %i.bax = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 473, ptr %i.bax, align 4, !noalias !69301
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #53, !noalias !69302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !69080
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.i

bb.lt:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1601) #63
  unreachable

common.ret:                                       ; preds = %bb.lv, %bb.lu
  %common.ret.op.i8 = phi i1 [ false, %bb.lv ], [ true, %bb.lu ]
  %storemerge = phi i8 [ 1, %bb.lv ], [ 3, %bb.lu ]
  store i8 %storemerge, ptr %i.cb, align 8
  ret i1 %common.ret.op.i8

bb.lu:                                            ; preds = %bb.iq, %bb.is, %bb.jo, %_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtB14_21UdpAssociationContextNtNtNtB1a_3tun3udp19UdpTunInboundWriterE15dispatch_packet00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.i, %bb.ir
  %i.bay = phi ptr [ %i.apb, %bb.ir ], [ %i.db, %_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtB14_21UdpAssociationContextNtNtNtB1a_3tun3udp19UdpTunInboundWriterE15dispatch_packet00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.aso, %bb.jo ], [ %i.apf, %bb.is ], [ %i.aox, %bb.iq ]
  %.sink.i.ph = phi i8 [ 6, %bb.ir ], [ 3, %_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtB14_21UdpAssociationContextNtNtNtB1a_3tun3udp19UdpTunInboundWriterE15dispatch_packet00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.i ], [ 4, %bb.jo ], [ 7, %bb.is ], [ 5, %bb.iq ]
  store i8 %.sink.i.ph, ptr %i.bay, align 1, !noalias !69080
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.5.sroa.6.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.5.sroa.7.sroa.4.i)
  br label %common.ret

bb.lv:                                            ; preds = %bb.jm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit97.i
  %i.baz = getelementptr inbounds nuw i8, ptr %0, i64 592
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc7bounded8ReceiverTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(8) %i.baz) #53
  store i8 1, ptr %i.db, align 1, !noalias !69080
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.5.sroa.6.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.5.sroa.7.sroa.4.i)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtBJ_21UdpAssociationContextNtNtNtBP_3tun3udp19UdpTunInboundWriterE15dispatch_packet0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.dc) #53
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association21UdpAssociationContextNtNtNtBK_3tun3udp19UdpTunInboundWriterEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(544) %0) #53
  br label %common.ret
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtB7_21UdpAssociationContextNtNtNtBd_5redir8udprelay21UdpRedirInboundWriterE28send_received_respond_packet0CsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 6 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [96 x i8], align 8                ; 16 uses
  %i.d = alloca [96 x i8], align 8                ; 16 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [96 x i8], align 8                ; 16 uses
  %i.g = alloca [96 x i8], align 8                ; 16 uses
  %i.h = alloca [32 x i8], align 4                ; 4 uses
  %.sroa.057.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %.sroa.11.i.sroa.0.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %.sroa.051.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 6 uses
  %.sroa.11.sroa.0.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 11 uses
  %.sroa.1122.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %.sroa.111.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.8.i.i.i.i = alloca [6 x i8], align 2     ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [32 x i8], align 4                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [64 x i8], align 8                ; 11 uses
  %i.p = alloca [64 x i8], align 8                ; 11 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [48 x i8], align 8                ; 9 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [32 x i8], align 4                ; 17 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.3343.i = alloca [16 x i8], align 8       ; 5 uses
  %i.w = alloca [32 x i8], align 4                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [96 x i8], align 8                ; 16 uses
  %i.z = alloca [64 x i8], align 8                ; 11 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [80 x i8], align 8               ; 13 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 5 uses
  %i.ag = alloca [64 x i8], align 8               ; 11 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 369 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !range !232, !noundef !178
  switch i8 %i.ak, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.dn
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.an = load <2 x ptr>, ptr %i.am, align 8
  %i.ao = load ptr, ptr %i.am, align 8, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  store <2 x ptr> %i.an, ptr %i.al, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !178, !noundef !178
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.as = load i64, ptr %i.ar, align 8, !noundef !178 ; 2 uses
  store ptr %i.aq, ptr %0, align 8, !captures !229
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 370
  %i.aw = load i8, ptr %i.av, align 2, !range !181, !noundef !178 ; 2 uses
  store i8 %i.aw, ptr %i.au, align 8
  %i.ax = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 6
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = icmp samesign ugt i64 %i.ax, 4
  br i1 %i.az, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.d, %bb.c
  %i.ba = phi ptr [ %i.ao, %bb.c ], [ %.pre, %bb.d ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 552
  store i8 1, ptr %i.bb, align 8
  %i.bc = load ptr, ptr %i.al, align 8, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.bc, i64 440
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 480
  %4 = load ptr, ptr %2, align 8, !nonnull !178, !align !186, !noundef !178
  %5 = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178
  %6 = load i64, ptr %i.at, align 8, !noundef !178
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 32, i1 false)
  %.sroa.682.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %3, ptr %.sroa.682.0..sroa_idx.a, align 8
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %4, ptr %.sroa.783.0..sroa_idx, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %5, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %6, ptr %.sroa.985.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3343.i)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.bg = trunc nuw i8 %i.aw to i1                ; 2 uses
  %spec.select = select i1 %i.bg, ptr @1059, ptr @1058
  %spec.select446 = select i1 %i.bg, i64 8, i64 7
  store ptr %spec.select, ptr %i.ai, align 8, !captures !229
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %spec.select446, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %i.as, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.bf, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %2, ptr %i.bi, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.469.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %i.ai, ptr %i.bj, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.471.0..sroa_idx, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store ptr %i.ah, ptr %i.bk, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.473.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !69566
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store i64 5, ptr %i.bl, align 8, !noalias !69566
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store ptr @862, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !69566
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store i64 49, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !69566
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  store ptr @1589, ptr %i.bm, align 8, !noalias !69566
  %i.bn = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store ptr %i.ag, ptr %i.bn, align 8, !noalias !69566
  store i64 0, ptr %i.y, align 8, !noalias !69566
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @862, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !69566
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 49, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !69566
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 0, ptr %i.bo, align 8, !noalias !69566
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr @859, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !69566
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i64 59, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !69566
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store i32 1, ptr %i.bp, align 8, !noalias !69566
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 76
  store i32 693, ptr %i.bq, align 4, !noalias !69566
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.y) #53, !noalias !69566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !69566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %.pre = load ptr, ptr %i.al, align 8
  br label %.thread

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.pre308 = load i8, ptr %.phi.trans.insert, align 8, !range !228, !noalias !69567
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3343.i)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  switch i8 %.pre308, label %bb.f [
    i8 0, label %bb.g
    i8 1, label %bb.ae
    i8 3, label %bb.p
    i8 4, label %bb.da
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %.thread, %bb.e
  %i.bs = phi ptr [ %i.be, %.thread ], [ %i.br, %bb.e ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !69567, !nonnull !178, !align !186, !noundef !178
  store ptr %i.bw, ptr %i.bu, align 8, !noalias !69567, !captures !229
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false), !noalias !69567
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !69567, !noundef !178
  %i.cc = load <2 x ptr>, ptr %i.bz, align 8, !noalias !69567
  store <2 x ptr> %i.cc, ptr %i.by, align 8, !noalias !69567
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.cb, ptr %i.cd, align 8, !noalias !69567
  %i.ce = call noundef nonnull ptr @_RNvNtNtCslxdWNweD0x2_11shadowsocks3net3sys25get_ip_stack_capabilities() #53 ; 3 uses
  %i.cf = load ptr, ptr %i.by, align 8, !noalias !69567, !nonnull !178, !align !186, !noundef !178 ; 19 uses
  %i.cg = load i16, ptr %i.cf, align 8, !range !179, !noundef !178
  %i.ch = trunc nuw i16 %i.cg to i1
  br i1 %i.ch, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ci = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1893, i64 noundef 52) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEECsgZAIVb0XKpv_9ssservice.exit.i

bb.i:                                             ; preds = %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %.sroa.0.0.copyload.i = load i16, ptr %i.cj, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 6
  %.sroa.7.0.copyload.i = load i8, ptr %.sroa.7.0..sroa_idx.i, align 2 ; 4 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 7
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 1 ; 4 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.9.0.copyload.i = load i8, ptr %.sroa.9.0..sroa_idx.i, align 8 ; 5 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 9
  %.sroa.11.0.copyload.i = load i8, ptr %.sroa.11.0..sroa_idx.i, align 1 ; 5 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 10
  %.sroa.13.0.copyload.i = load i16, ptr %.sroa.13.0..sroa_idx.i, align 2 ; 6 uses
  %.sroa.13.sroa.8.0.extract.shift.i = lshr i16 %.sroa.13.0.copyload.i, 8
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %.sroa.16.0.copyload.i = load i8, ptr %.sroa.16.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 13
  %.sroa.17.0.copyload.i = load i8, ptr %.sroa.17.0..sroa_idx.i, align 1 ; 4 uses
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 14
  %.sroa.18.0.copyload.i = load i8, ptr %.sroa.18.0..sroa_idx.i, align 2 ; 4 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 15
  %.sroa.19.0.copyload.i = load i8, ptr %.sroa.19.0..sroa_idx.i, align 1 ; 4 uses
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.20.0.copyload.i = load i8, ptr %.sroa.20.0..sroa_idx.i, align 8 ; 4 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 17
  %.sroa.21.0.copyload.i = load i8, ptr %.sroa.21.0..sroa_idx.i, align 1 ; 4 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 18
  %.sroa.22.0.copyload.i = load i8, ptr %.sroa.22.0..sroa_idx.i, align 2 ; 4 uses
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 19
  %.sroa.23.0.copyload.i = load i8, ptr %.sroa.23.0..sroa_idx.i, align 1 ; 4 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %.sroa.24.0.copyload.i = load i32, ptr %.sroa.24.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.25.0.copyload.i = load i64, ptr %.sroa.25.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.25280.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.sroa.25280.0.copyload.i = load i16, ptr %.sroa.25280.0..sroa_idx.i, align 8 ; 4 uses
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 34
  %.sroa.26.0.copyload.i = load i16, ptr %.sroa.26.0..sroa_idx.i, align 2 ; 3 uses
  %i.ck = trunc nuw i16 %.sroa.0.0.copyload.i to i1
  br i1 %i.ck, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !range !181, !noundef !178
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cp = load i8, ptr %i.co, align 1, !range !181, !noundef !178
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br i1 %i.cq, label %_RNvMNtNtCsf3Ta7LF998c_4core3net11socket_addrNtB2_10SocketAddr3new.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i16 0, ptr %i.cr, align 8, !noalias !69567
  %.sroa.7.0..sroa_idx190.i = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx190.i, align 2, !noalias !69567
  %.sroa.8.0..sroa_idx196.i = getelementptr inbounds nuw i8, ptr %0, i64 147
  store i8 %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx196.i, align 1, !noalias !69567
  %.sroa.9.0..sroa_idx202.i = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i8 %.sroa.9.0.copyload.i, ptr %.sroa.9.0..sroa_idx202.i, align 4, !noalias !69567
  %.sroa.11.0..sroa_idx208.i = getelementptr inbounds nuw i8, ptr %0, i64 149
  store i8 %.sroa.11.0.copyload.i, ptr %.sroa.11.0..sroa_idx208.i, align 1, !noalias !69567
  %.sroa.13.0..sroa_idx214.i = getelementptr inbounds nuw i8, ptr %0, i64 150
  store i16 %.sroa.13.0.copyload.i, ptr %.sroa.13.0..sroa_idx214.i, align 2, !noalias !69567
  %.sroa.16.0..sroa_idx220.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 %.sroa.16.0.copyload.i, ptr %.sroa.16.0..sroa_idx220.i, align 8, !noalias !69567
  %.sroa.17.0..sroa_idx226.i = getelementptr inbounds nuw i8, ptr %0, i64 153
  store i8 %.sroa.17.0.copyload.i, ptr %.sroa.17.0..sroa_idx226.i, align 1, !noalias !69567
  %.sroa.18.0..sroa_idx232.i = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 %.sroa.18.0.copyload.i, ptr %.sroa.18.0..sroa_idx232.i, align 2, !noalias !69567
  %.sroa.19.0..sroa_idx238.i = getelementptr inbounds nuw i8, ptr %0, i64 155
  store i8 %.sroa.19.0.copyload.i, ptr %.sroa.19.0..sroa_idx238.i, align 1, !noalias !69567
  %.sroa.20.0..sroa_idx244.i = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 %.sroa.20.0.copyload.i, ptr %.sroa.20.0..sroa_idx244.i, align 4, !noalias !69567
  %.sroa.21.0..sroa_idx250.i = getelementptr inbounds nuw i8, ptr %0, i64 157
  store i8 %.sroa.21.0.copyload.i, ptr %.sroa.21.0..sroa_idx250.i, align 1, !noalias !69567
  %.sroa.22.0..sroa_idx256.i = getelementptr inbounds nuw i8, ptr %0, i64 158
  store i8 %.sroa.22.0.copyload.i, ptr %.sroa.22.0..sroa_idx256.i, align 2, !noalias !69567
  %.sroa.23.0..sroa_idx262.i = getelementptr inbounds nuw i8, ptr %0, i64 159
  store i8 %.sroa.23.0.copyload.i, ptr %.sroa.23.0..sroa_idx262.i, align 1, !noalias !69567
  %.sroa.24.0..sroa_idx268.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.24.0..sroa_idx268.i, align 8, !noalias !69567
  %.sroa.25.0..sroa_idx274.i = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i64 %.sroa.25.0.copyload.i, ptr %.sroa.25.0..sroa_idx274.i, align 4, !noalias !69567
  %.sroa.25280.0..sroa_idx281.i = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i16 %.sroa.25280.0.copyload.i, ptr %.sroa.25280.0..sroa_idx281.i, align 4, !noalias !69567
  %.sroa.26.0..sroa_idx287.i = getelementptr inbounds nuw i8, ptr %0, i64 174
  store i16 %.sroa.26.0.copyload.i, ptr %.sroa.26.0..sroa_idx287.i, align 2, !noalias !69567
  br label %.thread.i

_RNvMNtNtCsf3Ta7LF998c_4core3net11socket_addrNtB2_10SocketAddr3new.exit.i: ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !69568)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 148
  %.sroa.7316.sroa.4.0..sroa.7316.1..sroa_idx317.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 158
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.cs, i8 0, i64 10, i1 false)
  store i8 -1, ptr %.sroa.7316.sroa.4.0..sroa.7316.1..sroa_idx317.sroa_idx.i, align 2, !alias.scope !69569, !noalias !69567
  %.sroa.7316.sroa.5.0..sroa.7316.1..sroa_idx317.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 159
  store i8 -1, ptr %.sroa.7316.sroa.5.0..sroa.7316.1..sroa_idx317.sroa_idx.i, align 1, !alias.scope !69569, !noalias !69567
  %.sroa.7316.sroa.6.0..sroa.7316.1..sroa_idx317.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 %.sroa.7.0.copyload.i, ptr %.sroa.7316.sroa.6.0..sroa.7316.1..sroa_idx317.sroa_idx.i, align 8, !alias.scope !69569, !noalias !69567
  %.sroa.7316.sroa.7.0..sroa.7316.1..sroa_idx317.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 161
  store i8 %.sroa.8.0.copyload.i, ptr %.sroa.7316.sroa.7.0..sroa.7316.1..sroa_idx317.sroa_idx.i, align 1, !alias.scope !69569, !noalias !69567
  %.sroa.7316.sroa.8.0..sroa.7316.1..sroa_idx317.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i8 %.sroa.9.0.copyload.i, ptr %.sroa.7316.sroa.8.0..sroa.7316.1..sroa_idx317.sroa_idx.i, align 2, !alias.scope !69569, !noalias !69567
  %.sroa.7316.sroa.9.0..sroa.7316.1..sroa_idx317.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 163
  store i8 %.sroa.11.0.copyload.i, ptr %.sroa.7316.sroa.9.0..sroa.7316.1..sroa_idx317.sroa_idx.i, align 1, !alias.scope !69569, !noalias !69567
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 0, ptr %.sroa.44.0..sroa_idx.i.i, align 4, !alias.scope !69570, !noalias !69571
  %.sroa.5.0..sroa_idx.i67.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %.sroa.5.0..sroa_idx.i67.i, align 8, !alias.scope !69570, !noalias !69571
  %.sroa.6.0..sroa_idx.i68.i = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i16 %.sroa.13.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i68.i, align 4, !alias.scope !69570, !noalias !69571
end_hunk_1
begin_hunk_2_@_RNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtB7_21UdpAssociationContextNtNtNtBd_5redir8udprelay21UdpRedirInboundWriterE6create0CsgZAIVb0XKpv_9ssservice:bb.a
  %i.bbd = icmp ne i64 %i.bbc, 1095216660480
  call void @llvm.assume(i1 %i.bbb)
  call void @llvm.assume(i1 %i.bbd)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit182.i

bb.mf:                                            ; preds = %bb.md
  %i.bbe = getelementptr i8, ptr %.val.i180.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bbe) ]
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.bbe, ptr %i.bbf, align 8, !alias.scope !70397, !noalias !70396
  store i8 3, ptr %i.d, align 8, !alias.scope !70397, !noalias !70396
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bbf) #53, !noalias !70395
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit182.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit182.i: ; preds = %bb.mf, %bb.me, %bb.md, %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !70396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !70174
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.i

bb.mg:                                            ; preds = %bb.mc
  %i.bbg = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bbh = load ptr, ptr %i.bbg, align 8, !noalias !70174, !nonnull !178, !align !186, !noundef !178
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbh, i64 480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !70174
  store ptr %i.bbi, ptr %i.bu, align 8, !noalias !70174
  %.sroa.4369.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4369.0..sroa_idx.i, align 8, !noalias !70174
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.bv, ptr %i.bbj, align 8, !noalias !70174
  %.sroa.4371.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.4371.0..sroa_idx.i, align 8, !noalias !70174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !70398
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 1, ptr %i.bbk, align 8, !noalias !70398
  %.sroa.422.0..sroa_idx.i.i185.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @862, ptr %.sroa.422.0..sroa_idx.i.i185.i, align 8, !noalias !70398
  %.sroa.523.0..sroa_idx.i.i186.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 49, ptr %.sroa.523.0..sroa_idx.i.i186.i, align 8, !noalias !70398
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr @1583, ptr %i.bbl, align 8, !noalias !70398
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.bu, ptr %i.bbm, align 8, !noalias !70398
  store i64 0, ptr %i.c, align 8, !noalias !70398
  %.sroa.428.0..sroa_idx.i.i187.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @862, ptr %.sroa.428.0..sroa_idx.i.i187.i, align 8, !noalias !70398
  %.sroa.529.0..sroa_idx.i.i188.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 49, ptr %.sroa.529.0..sroa_idx.i.i188.i, align 8, !noalias !70398
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.bbn, align 8, !noalias !70398
  %.sroa.434.0..sroa_idx.i.i189.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @859, ptr %.sroa.434.0..sroa_idx.i.i189.i, align 8, !noalias !70398
  %.sroa.535.0..sroa_idx.i.i190.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 59, ptr %.sroa.535.0..sroa_idx.i.i190.i, align 8, !noalias !70398
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 1, ptr %i.bbo, align 8, !noalias !70398
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 431, ptr %i.bbp, align 4, !noalias !70398
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c) #53, !noalias !70399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !70398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !70174
  br label %bb.md

bb.mh:                                            ; preds = %bb.jm
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.arw, i64 520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.arw, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.bbr, i64 32, i1 false)
  %.val85.i = load ptr, ptr %i.bbq, align 8, !nonnull !178, !noundef !178 ; 4 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %.val85.i, i64 448
  %i.bbt = call noundef i8 @_RNvMNtNtCsczhfDQ1qNkX_5tokio4sync15batch_semaphoreNtB2_9Semaphore11try_acquire(ptr noundef nonnull align 8 %i.bbs, i64 noundef 1) #53, !noalias !70400
  %cond.i = icmp eq i8 %i.bbt, 2
  br i1 %cond.i, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.bbu = getelementptr inbounds nuw i8, ptr %.val85.i, i64 128
  %i.bbv = getelementptr inbounds nuw i8, ptr %.val85.i, i64 136
  %i.bbw = atomicrmw add ptr %i.bbv, i64 1 acquire, align 8, !noalias !70401 ; 2 uses
  %i.bbx = call fastcc noundef nonnull ptr @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4listINtB2_2TxNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE10find_blockCsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.bbu, i64 noundef %i.bbw) #53, !noalias !70401 ; 2 uses
  %i.bby = and i64 %i.bbw, 31                     ; 2 uses
  %i.bbz = getelementptr inbounds nuw [32 x i8], ptr %i.bbx, i64 %i.bby
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bbz, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.bp, i64 32, i1 false), !noalias !70402
  %i.bca = shl nuw nsw i64 1, %i.bby
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bbx, i64 1040
  %i.bcc = atomicrmw or ptr %i.bcb, i64 %i.bca release, align 8, !noalias !70401 ; 0 uses
  %i.bcd = getelementptr inbounds nuw i8, ptr %.val85.i, i64 256
  call void @_RNvMs0_NtNtNtCsczhfDQ1qNkX_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.bcd) #53, !noalias !70403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.bce = load ptr, ptr %i.arv, align 8, !noalias !70174, !nonnull !178, !align !186, !noundef !178
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bce, i64 552
  store i8 0, ptr %i.bcf, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.i

bb.mj:                                            ; preds = %bb.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.bcg = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !70174 ; 2 uses
  %i.bch = icmp ult i64 %i.bcg, 6
  call void @llvm.assume(i1 %i.bch)
  %i.bci = icmp samesign ugt i64 %i.bcg, 3
  br i1 %i.bci, label %bb.mk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.i

bb.mk:                                            ; preds = %bb.mj
  %i.bcj = load ptr, ptr %i.arv, align 8, !noalias !70174, !nonnull !178, !align !186, !noundef !178
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcj, i64 480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !70174
  store ptr %i.bck, ptr %i.bo, align 8, !noalias !70174
  %.sroa.4413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4413.0..sroa_idx.i, align 8, !noalias !70174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !70404
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 4, ptr %i.bcl, align 8, !noalias !70404
  %.sroa.422.0..sroa_idx.i.i194.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @862, ptr %.sroa.422.0..sroa_idx.i.i194.i, align 8, !noalias !70404
  %.sroa.523.0..sroa_idx.i.i195.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 49, ptr %.sroa.523.0..sroa_idx.i.i195.i, align 8, !noalias !70404
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @1584, ptr %i.bcm, align 8, !noalias !70404
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.bo, ptr %i.bcn, align 8, !noalias !70404
  store i64 0, ptr %i.b, align 8, !noalias !70404
  %.sroa.428.0..sroa_idx.i.i196.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @862, ptr %.sroa.428.0..sroa_idx.i.i196.i, align 8, !noalias !70404
  %.sroa.529.0..sroa_idx.i.i197.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 49, ptr %.sroa.529.0..sroa_idx.i.i197.i, align 8, !noalias !70404
  %i.bco = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.bco, align 8, !noalias !70404
  %.sroa.434.0..sroa_idx.i.i198.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @859, ptr %.sroa.434.0..sroa_idx.i.i198.i, align 8, !noalias !70404
  %.sroa.535.0..sroa_idx.i.i199.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 59, ptr %.sroa.535.0..sroa_idx.i.i199.i, align 8, !noalias !70404
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.bcp, align 8, !noalias !70404
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 473, ptr %i.bcq, align 4, !noalias !70404
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #53, !noalias !70405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !70404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !70174
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.i

bb.ml:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1601) #63
  unreachable

common.ret:                                       ; preds = %bb.mn, %bb.mm
  %common.ret.op.i8 = phi i1 [ false, %bb.mn ], [ true, %bb.mm ]
  %storemerge = phi i8 [ 1, %bb.mn ], [ 3, %bb.mm ]
  store i8 %storemerge, ptr %i.cb, align 8
  ret i1 %common.ret.op.i8

bb.mm:                                            ; preds = %bb.iq, %bb.is, %bb.ju, %_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtB14_21UdpAssociationContextNtNtNtB1a_5redir8udprelay21UdpRedirInboundWriterE15dispatch_packet00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.i, %bb.ir
  %i.bcr = phi ptr [ %i.apb, %bb.ir ], [ %i.db, %_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtB14_21UdpAssociationContextNtNtNtB1a_5redir8udprelay21UdpRedirInboundWriterE15dispatch_packet00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.atd, %bb.ju ], [ %i.apf, %bb.is ], [ %i.aox, %bb.iq ]
  %.sink.i.ph = phi i8 [ 6, %bb.ir ], [ 3, %_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtB14_21UdpAssociationContextNtNtNtB1a_5redir8udprelay21UdpRedirInboundWriterE15dispatch_packet00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.i ], [ 4, %bb.ju ], [ 7, %bb.is ], [ 5, %bb.iq ]
  store i8 %.sink.i.ph, ptr %i.bcr, align 1, !noalias !70174
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.5.sroa.6.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.5.sroa.7.sroa.4.i)
  br label %common.ret

bb.mn:                                            ; preds = %bb.js, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit102.i
  %i.bcs = getelementptr inbounds nuw i8, ptr %0, i64 608
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc7bounded8ReceiverTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bcs) #53
  store i8 1, ptr %i.db, align 1, !noalias !70174
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.5.sroa.6.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.5.sroa.7.sroa.4.i)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtBJ_21UdpAssociationContextNtNtNtBP_5redir8udprelay21UdpRedirInboundWriterE15dispatch_packet0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.dc) #53
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association21UdpAssociationContextNtNtNtBK_5redir8udprelay21UdpRedirInboundWriterEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(560) %0) #53
  br label %common.ret
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtB7_21UdpAssociationContextNtNtNtBd_6tunnel8udprelay22TunnelUdpInboundWriterE28send_received_respond_packet0CsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 16 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [96 x i8], align 8                ; 16 uses
  %i.g = alloca [64 x i8], align 8                ; 11 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [80 x i8], align 8                ; 13 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [64 x i8], align 8                ; 11 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 569 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !range !232, !noundef !178
  switch i8 %i.r, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.v
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.t, align 8, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  store <2 x ptr> %i.u, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !178, !noundef !178
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !178 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !captures !229
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 570
  %i.ad = load i8, ptr %i.ac, align 2, !range !181, !noundef !178 ; 2 uses
  store i8 %i.ad, ptr %i.ab, align 8
  %i.ae = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 6
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp samesign ugt i64 %i.ae, 4
  br i1 %i.ag, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.d, %bb.c
  %i.ah = phi ptr [ %i.v, %bb.c ], [ %.pre, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 536
  store i8 1, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.s, align 8, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.aj, i64 512
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 456
  %4 = load ptr, ptr %2, align 8, !nonnull !178, !align !186, !noundef !178
  %5 = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178
  %6 = load i64, ptr %i.aa, align 8, !noundef !178
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false)
  %.sroa.670.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %3, ptr %.sroa.670.0..sroa_idx.a, align 8
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %4, ptr %.sroa.771.0..sroa_idx, align 8
  %.sroa.872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %5, ptr %.sroa.872.0..sroa_idx, align 8
  %.sroa.973.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %6, ptr %.sroa.973.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 544
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ao = trunc nuw i8 %i.ad to i1                ; 2 uses
  %spec.select = select i1 %i.ao, ptr @1059, ptr @1058
  %spec.select115 = select i1 %i.ao, i64 8, i64 7
  store ptr %spec.select, ptr %i.p, align 8, !captures !229
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %spec.select115, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %i.z, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.an, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %2, ptr %i.aq, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.457.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.p, ptr %i.ar, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.459.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.o, ptr %i.as, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.461.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !70429
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 5, ptr %i.at, align 8, !noalias !70429
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr @862, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !70429
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 49, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !70429
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr @1589, ptr %i.au, align 8, !noalias !70429
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store ptr %i.n, ptr %i.av, align 8, !noalias !70429
  store i64 0, ptr %i.f, align 8, !noalias !70429
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @862, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !70429
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 49, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !70429
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.aw, align 8, !noalias !70429
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr @859, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !70429
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 59, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !70429
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i32 1, ptr %i.ax, align 8, !noalias !70429
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  store i32 693, ptr %i.ay, align 4, !noalias !70429
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.f) #53, !noalias !70429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !70429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.pre = load ptr, ptr %i.s, align 8
  br label %.thread

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.pre112 = load i8, ptr %.phi.trans.insert, align 8, !range !232, !noalias !70430
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  switch i8 %.pre112, label %bb.f [
    i8 0, label %bb.g
    i8 1, label %bb.i
    i8 3, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %.thread, %bb.e
  %i.bb = phi ptr [ %i.am, %.thread ], [ %i.ba, %bb.e ]
  %i.bc = phi ptr [ %i.al, %.thread ], [ %i.az, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !70430, !nonnull !178, !align !186, !noundef !178
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !70430, !nonnull !178, !noundef !178
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !70430, !noundef !178
  %.val.i = load ptr, ptr %i.be, align 8, !noalias !70430, !nonnull !178, !noundef !178
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 32, i1 false), !noalias !70430
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.bj, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !70430
  %.sroa.79.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.bg, ptr %.sroa.79.0..sroa_idx.i, align 8, !noalias !70430
  %.sroa.810.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.bi, ptr %.sroa.810.0..sroa_idx.i, align 8, !noalias !70430
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !70430
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %i.bl = phi ptr [ %i.ba, %bb.e ], [ %i.bb, %bb.g ] ; 2 uses
  %i.bm = phi ptr [ %i.az, %bb.e ], [ %i.bc, %bb.g ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bo = call fastcc { i64, ptr } @_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7send_toNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0CsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.bn, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #61 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0      ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 2
  br i1 %i.bq, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1929) #63, !noalias !70430
  unreachable

bb.j:                                             ; preds = %bb.h
  store i8 3, ptr %i.bl, align 8, !noalias !70430
  br label %_RNCNvXs_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8udprelayNtB6_22TunnelUdpInboundWriterNtNtNtNtBa_3net3udp11association15UdpInboundWrite7send_to0CsgZAIVb0XKpv_9ssservice.exit

bb.k:                                             ; preds = %bb.h
  %i.br = extractvalue { i64, ptr } %i.bo, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bt = load i8, ptr %i.bs, align 8, !range !228, !noalias !70430, !noundef !178
  switch i8 %i.bt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7send_toNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit.i [
    i8 4, label %bb.p
    i8 3, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val.i.i = load i16, ptr %i.bu, align 8, !range !230, !noalias !70430, !noundef !178
  %i.bv = getelementptr i8, ptr %0, i64 208
  %.val1.i.i = load ptr, ptr %i.bv, align 8, !noalias !70430 ; 4 uses
  %cond.i.i.i.i = icmp eq i16 %.val.i.i, -1
  br i1 %cond.i.i.i.i, label %bb.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7send_toNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !70431
  %i.bw = ptrtoint ptr %.val1.i.i to i64          ; 2 uses
  %i.bx = and i64 %i.bw, 3
  switch i64 %i.bx, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
    i64 3, label %bb.n
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
    i64 1, label %bb.o
  ], !prof !231

default.unreachable:                              ; preds = %bb.aa, %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.by = icmp ult ptr %.val1.i.i, inttoptr (i64 188978561024 to ptr)
  %i.bz = and i64 %i.bw, 1095216660480
  %i.ca = icmp ne i64 %i.bz, 1095216660480
  call void @llvm.assume(i1 %i.by)
  call void @llvm.assume(i1 %i.ca)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.cb = getelementptr i8, ptr %.val1.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.cb, ptr %i.cc, align 8, !alias.scope !70432, !noalias !70431
  store i8 3, ptr %i.e, align 8, !alias.scope !70432, !noalias !70431
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cc) #53, !noalias !70433
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !70431
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7send_toNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit.i

bb.p:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ce = load i8, ptr %i.cd, align 8, !range !232, !noalias !70430, !noundef !178
  %cond.i.i.i = icmp eq i8 %i.ce, 3
  br i1 %cond.i.i.i, label %bb.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7send_toNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cg = load i8, ptr %i.cf, align 8, !range !228, !noalias !70430, !noundef !178
  %cond.i.i2.i.i = icmp eq i8 %i.cg, 3
  br i1 %cond.i.i2.i.i, label %bb.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7send_toNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ci = load i8, ptr %i.ch, align 8, !range !232, !noalias !70430, !noundef !178
  %cond.i.i.i.i.i = icmp eq i8 %i.ci, 3
  br i1 %cond.i.i.i.i.i, label %bb.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7send_toNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit.i

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ck = load i8, ptr %i.cj, align 8, !range !232, !noalias !70430, !noundef !178
  %cond.i.i.i.i.i.i = icmp eq i8 %i.ck, 3
  br i1 %cond.i.i.i.i.i.i, label %bb.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7send_toNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @_RNvXs6_NtNtNtCsczhfDQ1qNkX_5tokio7runtime2io12scheduled_ioNtB5_9ReadinessNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.cl) #53
  %i.cm = getelementptr i8, ptr %0, i64 448
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !noalias !70430, !align !186, !noundef !178 ; 2 uses
  %i.cn = icmp eq ptr %.val.i.i.i.i.i.i.i, null
  br i1 %i.cn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7send_toNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = getelementptr i8, ptr %0, i64 456
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.co, align 8, !noalias !70430
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !178, !noundef !178
  call void %i.cq(ptr noundef %.val1.i.i.i.i.i.i.i) #53, !inline_history !70416
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7send_toNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7send_toNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, %bb.l, %bb.k
  %i.cr = trunc nuw i64 %i.bp to i1
  %spec.select.i.i = select i1 %i.cr, ptr %i.br, ptr null
  store i8 1, ptr %i.bl, align 8, !noalias !70430
  %i.cs = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %spec.select.i.i, 1
  br label %_RNCNvXs_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8udprelayNtB6_22TunnelUdpInboundWriterNtNtNtNtBa_3net3udp11association15UdpInboundWrite7send_to0CsgZAIVb0XKpv_9ssservice.exit

_RNCNvXs_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8udprelayNtB6_22TunnelUdpInboundWriterNtNtNtNtBa_3net3udp11association15UdpInboundWrite7send_to0CsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.j, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7send_toNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit.i
  %common.ret.op.i = phi { i64, ptr } [ { i64 1, ptr undef }, %bb.j ], [ %i.cs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7send_toNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit.i ] ; 2 uses
end_hunk_2
begin_hunk_3_@_RNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtB7_21UdpAssociationContextNtNtNtBd_6tunnel8udprelay22TunnelUdpInboundWriterE6create0CsgZAIVb0XKpv_9ssservice:bb.a

bb.lk:                                            ; preds = %bb.li
  %i.azf = getelementptr i8, ptr %.val.i165.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.azf) ]
  %i.azg = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.azf, ptr %i.azg, align 8, !alias.scope !71065, !noalias !71064
  store i8 3, ptr %i.d, align 8, !alias.scope !71065, !noalias !71064
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.azg) #53, !noalias !71063
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit167.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit167.i: ; preds = %bb.lk, %bb.lj, %bb.li, %bb.li
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !71064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !70851
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.i

bb.ll:                                            ; preds = %bb.lh
  %i.azh = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.azi = load ptr, ptr %i.azh, align 8, !noalias !70851, !nonnull !178, !align !186, !noundef !178
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !70851
  store ptr %i.azj, ptr %i.bu, align 8, !noalias !70851
  %.sroa.4354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4354.0..sroa_idx.i, align 8, !noalias !70851
  %i.azk = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.bv, ptr %i.azk, align 8, !noalias !70851
  %.sroa.4356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.4356.0..sroa_idx.i, align 8, !noalias !70851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71066
  %i.azl = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 1, ptr %i.azl, align 8, !noalias !71066
  %.sroa.422.0..sroa_idx.i.i170.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @862, ptr %.sroa.422.0..sroa_idx.i.i170.i, align 8, !noalias !71066
  %.sroa.523.0..sroa_idx.i.i171.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 49, ptr %.sroa.523.0..sroa_idx.i.i171.i, align 8, !noalias !71066
  %i.azm = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr @1583, ptr %i.azm, align 8, !noalias !71066
  %i.azn = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.bu, ptr %i.azn, align 8, !noalias !71066
  store i64 0, ptr %i.c, align 8, !noalias !71066
  %.sroa.428.0..sroa_idx.i.i172.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @862, ptr %.sroa.428.0..sroa_idx.i.i172.i, align 8, !noalias !71066
  %.sroa.529.0..sroa_idx.i.i173.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 49, ptr %.sroa.529.0..sroa_idx.i.i173.i, align 8, !noalias !71066
  %i.azo = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.azo, align 8, !noalias !71066
  %.sroa.434.0..sroa_idx.i.i174.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @859, ptr %.sroa.434.0..sroa_idx.i.i174.i, align 8, !noalias !71066
  %.sroa.535.0..sroa_idx.i.i175.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 59, ptr %.sroa.535.0..sroa_idx.i.i175.i, align 8, !noalias !71066
  %i.azp = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 1, ptr %i.azp, align 8, !noalias !71066
  %i.azq = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 431, ptr %i.azq, align 4, !noalias !71066
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c) #53, !noalias !71067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !70851
  br label %bb.li

bb.lm:                                            ; preds = %bb.jf
  %i.azr = getelementptr inbounds nuw i8, ptr %i.arf, i64 496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.azs = getelementptr inbounds nuw i8, ptr %i.arf, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.azs, i64 32, i1 false)
  %.val85.i = load ptr, ptr %i.azr, align 8, !nonnull !178, !noundef !178 ; 4 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %.val85.i, i64 448
  %i.azu = call noundef i8 @_RNvMNtNtCsczhfDQ1qNkX_5tokio4sync15batch_semaphoreNtB2_9Semaphore11try_acquire(ptr noundef nonnull align 8 %i.azt, i64 noundef 1) #53, !noalias !71068
  %cond.i = icmp eq i8 %i.azu, 2
  br i1 %cond.i, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  %i.azv = getelementptr inbounds nuw i8, ptr %.val85.i, i64 128
  %i.azw = getelementptr inbounds nuw i8, ptr %.val85.i, i64 136
  %i.azx = atomicrmw add ptr %i.azw, i64 1 acquire, align 8, !noalias !71069 ; 2 uses
  %i.azy = call fastcc noundef nonnull ptr @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4listINtB2_2TxNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE10find_blockCsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.azv, i64 noundef %i.azx) #53, !noalias !71069 ; 2 uses
  %i.azz = and i64 %i.azx, 31                     ; 2 uses
  %i.baa = getelementptr inbounds nuw [32 x i8], ptr %i.azy, i64 %i.azz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.baa, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.bp, i64 32, i1 false), !noalias !71070
  %i.bab = shl nuw nsw i64 1, %i.azz
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azy, i64 1040
  %i.bad = atomicrmw or ptr %i.bac, i64 %i.bab release, align 8, !noalias !71069 ; 0 uses
  %i.bae = getelementptr inbounds nuw i8, ptr %.val85.i, i64 256
  call void @_RNvMs0_NtNtNtCsczhfDQ1qNkX_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.bae) #53, !noalias !71071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.baf = load ptr, ptr %i.are, align 8, !noalias !70851, !nonnull !178, !align !186, !noundef !178
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 536
  store i8 0, ptr %i.bag, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.i

bb.lo:                                            ; preds = %bb.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.bah = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !70851 ; 2 uses
  %i.bai = icmp ult i64 %i.bah, 6
  call void @llvm.assume(i1 %i.bai)
  %i.baj = icmp samesign ugt i64 %i.bah, 3
  br i1 %i.baj, label %bb.lp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.i

bb.lp:                                            ; preds = %bb.lo
  %i.bak = load ptr, ptr %i.are, align 8, !noalias !70851, !nonnull !178, !align !186, !noundef !178
  %i.bal = getelementptr inbounds nuw i8, ptr %i.bak, i64 456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !70851
  store ptr %i.bal, ptr %i.bo, align 8, !noalias !70851
  %.sroa.4398.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4398.0..sroa_idx.i, align 8, !noalias !70851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !71072
  %i.bam = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 4, ptr %i.bam, align 8, !noalias !71072
  %.sroa.422.0..sroa_idx.i.i179.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @862, ptr %.sroa.422.0..sroa_idx.i.i179.i, align 8, !noalias !71072
  %.sroa.523.0..sroa_idx.i.i180.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 49, ptr %.sroa.523.0..sroa_idx.i.i180.i, align 8, !noalias !71072
  %i.ban = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @1584, ptr %i.ban, align 8, !noalias !71072
  %i.bao = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.bo, ptr %i.bao, align 8, !noalias !71072
  store i64 0, ptr %i.b, align 8, !noalias !71072
  %.sroa.428.0..sroa_idx.i.i181.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @862, ptr %.sroa.428.0..sroa_idx.i.i181.i, align 8, !noalias !71072
  %.sroa.529.0..sroa_idx.i.i182.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 49, ptr %.sroa.529.0..sroa_idx.i.i182.i, align 8, !noalias !71072
  %i.bap = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.bap, align 8, !noalias !71072
  %.sroa.434.0..sroa_idx.i.i183.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @859, ptr %.sroa.434.0..sroa_idx.i.i183.i, align 8, !noalias !71072
  %.sroa.535.0..sroa_idx.i.i184.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 59, ptr %.sroa.535.0..sroa_idx.i.i184.i, align 8, !noalias !71072
  %i.baq = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.baq, align 8, !noalias !71072
  %i.bar = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 473, ptr %i.bar, align 4, !noalias !71072
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #53, !noalias !71073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !71072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !70851
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.i

bb.lq:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1601) #63
  unreachable

common.ret:                                       ; preds = %bb.ls, %bb.lr
  %common.ret.op.i8 = phi i1 [ false, %bb.ls ], [ true, %bb.lr ]
  %storemerge = phi i8 [ 1, %bb.ls ], [ 3, %bb.lr ]
  store i8 %storemerge, ptr %i.cb, align 8
  ret i1 %common.ret.op.i8

bb.lr:                                            ; preds = %bb.iq, %bb.is, %bb.jn, %_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtB14_21UdpAssociationContextNtNtNtB1a_6tunnel8udprelay22TunnelUdpInboundWriterE15dispatch_packet00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.i, %bb.ir
  %i.bas = phi ptr [ %i.apb, %bb.ir ], [ %i.db, %_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtB14_21UdpAssociationContextNtNtNtB1a_6tunnel8udprelay22TunnelUdpInboundWriterE15dispatch_packet00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.asm, %bb.jn ], [ %i.apf, %bb.is ], [ %i.aox, %bb.iq ]
  %.sink.i.ph = phi i8 [ 6, %bb.ir ], [ 3, %_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtB14_21UdpAssociationContextNtNtNtB1a_6tunnel8udprelay22TunnelUdpInboundWriterE15dispatch_packet00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.i ], [ 4, %bb.jn ], [ 7, %bb.is ], [ 5, %bb.iq ]
  store i8 %.sink.i.ph, ptr %i.bas, align 1, !noalias !70851
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.5.sroa.6.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.5.sroa.7.sroa.4.i)
  br label %common.ret

bb.ls:                                            ; preds = %bb.jl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit97.i
  %i.bat = getelementptr inbounds nuw i8, ptr %0, i64 592
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc7bounded8ReceiverTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtNtCsknai52m1gBp_5bytes5bytes5BytesEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bat) #53
  store i8 1, ptr %i.db, align 1, !noalias !70851
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.5.sroa.6.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.5.sroa.7.sroa.4.i)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtBJ_21UdpAssociationContextNtNtNtBP_6tunnel8udprelay22TunnelUdpInboundWriterE15dispatch_packet0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.dc) #53
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association21UdpAssociationContextNtNtNtBK_6tunnel8udprelay22TunnelUdpInboundWriterEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(544) %0) #53
  br label %common.ret
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtB7_21UdpAssociationContextNtNtNtNtNtBd_5socks6server6socks58udprelay22Socks5UdpInboundWriterE28send_received_respond_packet0CsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 16 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [3 x i8], align 1                 ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.7.i = alloca [12 x i8], align 4          ; 6 uses
  %i.i = alloca [96 x i8], align 8                ; 16 uses
  %i.j = alloca [64 x i8], align 8                ; 11 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [80 x i8], align 8                ; 13 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [64 x i8], align 8                ; 11 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 689 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !range !232, !noundef !178
  switch i8 %i.u, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.ah
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.w, align 8, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  store <2 x ptr> %i.x, ptr %i.v, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !178, !noundef !178
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !178 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !captures !229
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 690
  %i.ag = load i8, ptr %i.af, align 2, !range !181, !noundef !178 ; 2 uses
  store i8 %i.ag, ptr %i.ae, align 8
  %i.ah = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 6
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp samesign ugt i64 %i.ah, 4
  br i1 %i.aj, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.d, %bb.c
  %i.ak = phi ptr [ %i.y, %bb.c ], [ %.pre, %bb.d ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 536
  store i8 1, ptr %i.al, align 8
  %i.am = load ptr, ptr %i.v, align 8, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 456
  %4 = load ptr, ptr %2, align 8, !nonnull !178, !align !186, !noundef !178
  %5 = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178
  %6 = load i64, ptr %i.ad, align 8, !noundef !178
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  %.sroa.673.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %3, ptr %.sroa.673.0..sroa_idx.a, align 8
  %.sroa.774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %4, ptr %.sroa.774.0..sroa_idx, align 8
  %.sroa.875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %5, ptr %.sroa.875.0..sroa_idx, align 8
  %.sroa.976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %6, ptr %.sroa.976.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 632
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ar = trunc nuw i8 %i.ag to i1                ; 2 uses
  %spec.select = select i1 %i.ar, ptr @1059, ptr @1058
  %spec.select119 = select i1 %i.ar, i64 8, i64 7
  store ptr %spec.select, ptr %i.s, align 8, !captures !229
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %spec.select119, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %i.ac, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.aq, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %2, ptr %i.at, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.460.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.s, ptr %i.au, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.462.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store ptr %i.r, ptr %i.av, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.464.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !71135
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 5, ptr %i.aw, align 8, !noalias !71135
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr @862, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !71135
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 49, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !71135
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store ptr @1589, ptr %i.ax, align 8, !noalias !71135
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store ptr %i.q, ptr %i.ay, align 8, !noalias !71135
  store i64 0, ptr %i.i, align 8, !noalias !71135
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @862, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !71135
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 49, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !71135
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %i.az, align 8, !noalias !71135
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr @859, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !71135
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 59, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !71135
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i32 1, ptr %i.ba, align 8, !noalias !71135
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  store i32 693, ptr %i.bb, align 4, !noalias !71135
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.i) #53, !noalias !71135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !71135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.pre = load ptr, ptr %i.v, align 8
  br label %.thread

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.pre115 = load i8, ptr %.phi.trans.insert, align 8, !range !232, !noalias !71136
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  switch i8 %.pre115, label %bb.f [
    i8 0, label %bb.g
    i8 1, label %bb.q
    i8 3, label %bb.p
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %.thread, %bb.e
  %i.be = phi ptr [ %i.ap, %.thread ], [ %i.bd, %bb.e ]
  %i.bf = phi ptr [ %i.ao, %.thread ], [ %i.bc, %bb.e ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !71136, !nonnull !178, !align !186, !noundef !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 32, i1 false), !noalias !71136
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !71136, !nonnull !178, !align !186, !noundef !178 ; 21 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !71136, !nonnull !178, !noundef !178
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !71136, !noundef !178 ; 2 uses
  %i.bo = load i16, ptr %i.bj, align 8, !range !179, !noalias !71136, !noundef !178
  %i.bp = trunc nuw i16 %i.bo to i1
  br i1 %i.bp, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.br = load i16, ptr %i.bq, align 4, !range !179, !noalias !71136, !noundef !178
  %i.bs = trunc nuw i16 %i.br to i1
  br i1 %i.bs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.018.0.copyload.i.i = load i8, ptr %i.bt, align 8, !alias.scope !71137, !noalias !71136
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 9
  %.sroa.5.0.copyload.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i, align 1, !alias.scope !71137, !noalias !71136
  %i.bu = or i8 %.sroa.5.0.copyload.i.i, %.sroa.018.0.copyload.i.i
  %or.cond.i.i = icmp eq i8 %i.bu, 0
  br i1 %or.cond.i.i, label %_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.i, label %_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.thread.i

_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.i: ; preds = %bb.i
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 19
  %.sroa.20.0.copyload.i.i = load i8, ptr %.sroa.20.0..sroa_idx.i.i, align 1, !alias.scope !71137, !noalias !71136
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 18
  %.sroa.18.0.copyload.i.i = load i8, ptr %.sroa.18.0..sroa_idx.i.i, align 2, !alias.scope !71137, !noalias !71136
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  %i.bv = load <8 x i8>, ptr %.sroa.6.0..sroa_idx.i.i, align 2, !alias.scope !71137, !noalias !71136 ; 2 uses
  %i.bw = shufflevector <8 x i8> %i.bv, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bx = shufflevector <8 x i8> %i.bv, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.by = or <4 x i8> %i.bw, %i.bx
  %.fr = freeze <4 x i8> %i.by
  %i.bz = and i8 %.sroa.18.0.copyload.i.i, %.sroa.20.0.copyload.i.i
  %or.cond17.i.i = icmp eq i8 %i.bz, -1
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.ca = icmp eq i32 %.fr.scalar, 0
  %op.rdx = select i1 %i.ca, i1 %or.cond17.i.i, i1 false
  br i1 %op.rdx, label %_RNvMNtNtCsf3Ta7LF998c_4core3net11socket_addrNtB2_10SocketAddr3new.exit.i, label %_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.thread.i

bb.j:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.bj, i64 6
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i30, align 2, !noalias !71136
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  %.sroa.6.0.copyload.i = load i16, ptr %.sroa.6.0..sroa_idx.i, align 2, !noalias !71136
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx.i, i64 12, i1 false), !noalias !71136
  %.sroa.732.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.cb = load <2 x i32>, ptr %.sroa.732.0..sroa_idx.i, align 8, !noalias !71136
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.cc = load <2 x i16>, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !71136
  br label %bb.l

_RNvMNtNtCsf3Ta7LF998c_4core3net11socket_addrNtB2_10SocketAddr3new.exit.i: ; preds = %_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.i
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %.sroa.21.0.copyload.i.i = load i32, ptr %.sroa.21.0..sroa_idx.i.i, align 4, !alias.scope !71137, !noalias !71136
  %i.cd = getelementptr i8, ptr %i.bj, i64 32
  %.val13.i = load i16, ptr %i.cd, align 8, !noalias !71136, !noundef !178 ; 2 uses
  %i.ce = insertelement <2 x i16> <i16 poison, i16 undef>, i16 %.val13.i, i64 0
  br label %bb.l

_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.thread.i: ; preds = %_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.i, %bb.i
  %.sroa.4.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 6
  %.sroa.4.0.copyload25.i = load i32, ptr %.sroa.4.0..sroa_idx24.i, align 2, !noalias !71136
  %.sroa.6.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  %.sroa.6.0.copyload29.i = load i16, ptr %.sroa.6.0..sroa_idx28.i, align 2, !noalias !71136
  %.sroa.7.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx31.i, i64 12, i1 false), !noalias !71136
  %.sroa.732.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.cf = load <2 x i32>, ptr %.sroa.732.0..sroa_idx35.i, align 8, !noalias !71136
  %.sroa.9.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.cg = load <2 x i16>, ptr %.sroa.9.0..sroa_idx43.i, align 8, !noalias !71136
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.experimental.noalias.scope.decl(metadata !71138)
  call void @llvm.experimental.noalias.scope.decl(metadata !71139)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ci) #53, !noalias !71136
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.cl = load i16, ptr %i.ck, align 2, !alias.scope !71139, !noalias !71140, !noundef !178
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 2 uses
  store i16 %i.cl, ptr %i.cm, align 2, !alias.scope !71138, !noalias !71141
  store i16 1, ptr %i.ch, align 8, !alias.scope !71138, !noalias !71141
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.cn, align 8, !alias.scope !71142, !noalias !71136
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, i8 0, i64 16, i1 false), !alias.scope !71143, !noalias !71136
  store ptr inttoptr (i64 1 to ptr), ptr %i.cp, align 8, !alias.scope !71142, !noalias !71136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !71136
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj) #53, !noalias !71136
  %i.cr = load i16, ptr %i.cm, align 2, !alias.scope !71144, !noalias !71145, !noundef !178
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i16 %i.cr, ptr %i.cs, align 2, !alias.scope !71146, !noalias !71147
  br label %_RNvXsw_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit18.i

bb.l:                                             ; preds = %_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.thread.i, %_RNvMNtNtCsf3Ta7LF998c_4core3net11socket_addrNtB2_10SocketAddr3new.exit.i, %bb.j
  %.sroa.4.0.i = phi i32 [ %.sroa.21.0.copyload.i.i, %_RNvMNtNtCsf3Ta7LF998c_4core3net11socket_addrNtB2_10SocketAddr3new.exit.i ], [ %.sroa.4.0.copyload25.i, %_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.thread.i ], [ %.sroa.4.0.copyload.i, %bb.j ]
  %.sroa.6.0.i = phi i16 [ %.val13.i, %_RNvMNtNtCsf3Ta7LF998c_4core3net11socket_addrNtB2_10SocketAddr3new.exit.i ], [ %.sroa.6.0.copyload29.i, %_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.thread.i ], [ %.sroa.6.0.copyload.i, %bb.j ]
  %.sroa.0.0.i = phi i16 [ 0, %_RNvMNtNtCsf3Ta7LF998c_4core3net11socket_addrNtB2_10SocketAddr3new.exit.i ], [ 1, %_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.thread.i ], [ 0, %bb.j ]
  %i.ct = phi <2 x i16> [ %i.ce, %_RNvMNtNtCsf3Ta7LF998c_4core3net11socket_addrNtB2_10SocketAddr3new.exit.i ], [ %i.cg, %_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.thread.i ], [ %i.cc, %bb.j ]
  %i.cu = phi <2 x i32> [ zeroinitializer, %_RNvMNtNtCsf3Ta7LF998c_4core3net11socket_addrNtB2_10SocketAddr3new.exit.i ], [ %i.cf, %_RNvNtNtCs8UFHSMUhzWe_19shadowsocks_service3net5utils14to_ipv4_mapped.exit.thread.i ], [ %i.cb, %bb.j ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i16 %.sroa.0.0.i, ptr %i.cw, align 4, !noalias !71136
  %.sroa.4.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %0, i64 86
  store i32 %.sroa.4.0.i, ptr %.sroa.4.0..sroa_idx22.i, align 2, !noalias !71136
  %.sroa.6.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i16 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx26.i, align 2, !noalias !71136
  %.sroa.7.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx30.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.i, i64 12, i1 false), !noalias !71136
  %.sroa.732.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x i32> %i.cu, ptr %.sroa.732.0..sroa_idx33.i, align 8, !noalias !71136
  %.sroa.9.0..sroa_idx41.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i16> %i.ct, ptr %.sroa.9.0..sroa_idx41.i, align 8, !noalias !71136
  store i16 0, ptr %i.cv, align 8, !noalias !71136
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.cx, align 8, !alias.scope !71142, !noalias !71136
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false), !alias.scope !71143, !noalias !71136
  store ptr inttoptr (i64 1 to ptr), ptr %i.cz, align 8, !alias.scope !71142, !noalias !71136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !71136
  call void @llvm.experimental.noalias.scope.decl(metadata !71146)
  call void @llvm.experimental.noalias.scope.decl(metadata !71144)
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.da, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.cw, i64 32, i1 false), !alias.scope !71148, !noalias !71136
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtCs2dlyTE5y14r_2h25codec12framed_writeINtB4_7EncoderINtNtNtNtB8_5proto7streams10prioritize11PrioritizedNtNtCsknai52m1gBp_5bytes5bytes5BytesEE6bufferCsgZAIVb0XKpv_9ssservice:bb.a
  br label %bb.cb

bb.cd:                                            ; preds = %bb.v
  %i.ku = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25codec12framed_writeINtB6_7EncoderpE6buffers1_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ku, label %bb.ce [
    i8 0, label %bb.cg
    i8 1, label %bb.cf
    i8 2, label %bb.cf
  ], !prof !185

bb.ce:                                            ; preds = %bb.cd
  %i.kv = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25codec12framed_writeINtB6_7EncoderpE6buffers1_10___CALLSITE) #60 ; 2 uses
  %i.kw = icmp eq i8 %i.kv, 0
  br i1 %i.kw, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.cd, %bb.ce
  %.sroa.046.0 = phi i8 [ %i.kv, %bb.ce ], [ %i.ku, %bb.cd ], [ %i.ku, %bb.cd ]
  %i.kx = load ptr, ptr @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25codec12framed_writeINtB6_7EncoderpE6buffers1_10___CALLSITE, align 8, !nonnull !178, !align !186, !noundef !178
  %i.ky = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kx, i8 noundef %.sroa.046.0) #53
  br i1 %i.ky, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cd, %bb.v, %bb.ch, %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !92930)
  call void @llvm.experimental.noalias.scope.decl(metadata !92931)
  call void @llvm.experimental.noalias.scope.decl(metadata !92932)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !alias.scope !92933, !noundef !178
  %i.lb = load ptr, ptr %i.al, align 8, !alias.scope !92933, !nonnull !178, !align !186, !noundef !178
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 32
  %i.ld = load ptr, ptr %i.lc, align 8, !noalias !92933, !nonnull !178, !noundef !178
  %i.le = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !alias.scope !92933, !noundef !178
  %i.lg = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.lh = load i64, ptr %i.lg, align 8, !alias.scope !92933, !noundef !178
  call void %i.ld(ptr noundef %i.la, ptr noundef %i.lf, i64 noundef %i.lh) #53, !noalias !92933, !inline_history !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.bg

bb.ch:                                            ; preds = %bb.cf
  %i.li = load ptr, ptr @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25codec12framed_writeINtB6_7EncoderpE6buffers1_10___CALLSITE, align 8, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr @2305, ptr %i.aj, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr inttoptr (i64 31 to ptr), ptr %i.lk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.ll = load i64, ptr %i.bn, align 8, !noundef !178
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ln = load i64, ptr %i.lm, align 8, !noundef !178
  %i.lo = call i64 @llvm.usub.sat.i64(i64 %i.ll, i64 %i.ln)
  store i64 %i.lo, ptr %i.ai, align 8
  store ptr %i.aj, ptr %i.ak, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @19, ptr %i.lp, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.ai, ptr %i.lq, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr @69, ptr %i.lr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 1, ptr %i.t, align 8
  %.sroa.048.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.ak, ptr %.sroa.048.sroa.4.0..sroa_idx, align 8
  %.sroa.048.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 2, ptr %.sroa.048.sroa.5.0..sroa_idx, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.lj, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.li, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.cg

bb.ci:                                            ; preds = %bb.w
  %i.ls = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25codec12framed_writeINtB6_7EncoderpE6buffers3_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ls, label %bb.cj [
    i8 0, label %bb.cl
    i8 1, label %bb.ck
    i8 2, label %bb.ck
  ], !prof !185

bb.cj:                                            ; preds = %bb.ci
  %i.lt = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25codec12framed_writeINtB6_7EncoderpE6buffers3_10___CALLSITE) #60 ; 2 uses
  %i.lu = icmp eq i8 %i.lt, 0
  br i1 %i.lu, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.ci, %bb.cj
  %.sroa.066.0 = phi i8 [ %i.lt, %bb.cj ], [ %i.ls, %bb.ci ], [ %i.ls, %bb.ci ]
  %i.lv = load ptr, ptr @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25codec12framed_writeINtB6_7EncoderpE6buffers3_10___CALLSITE, align 8, !nonnull !178, !align !186, !noundef !178
  %i.lw = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.lv, i8 noundef %.sroa.066.0) #53
  br i1 %i.lw, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ci, %bb.w, %bb.cm, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.bg

bb.cm:                                            ; preds = %bb.ck
  %i.lx = load ptr, ptr @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25codec12framed_writeINtB6_7EncoderpE6buffers3_10___CALLSITE, align 8, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr @2306, ptr %i.ab, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr inttoptr (i64 43 to ptr), ptr %i.lz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ma = load i64, ptr %i.bn, align 8, !noundef !178
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.mc = load i64, ptr %i.mb, align 8, !noundef !178
  %i.md = call i64 @llvm.usub.sat.i64(i64 %i.ma, i64 %i.mc)
  store i64 %i.md, ptr %i.aa, align 8
  store ptr %i.ab, ptr %i.ac, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @19, ptr %i.me, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.aa, ptr %i.mf, align 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr @69, ptr %i.mg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 1, ptr %i.r, align 8
  %.sroa.068.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ac, ptr %.sroa.068.sroa.4.0..sroa_idx, align 8
  %.sroa.068.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 2, ptr %.sroa.068.sroa.5.0..sroa_idx, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ly, ptr %.sroa.469.0..sroa_idx, align 8
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.lx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.cl

bb.cn:                                            ; preds = %bb.x
  %i.mh = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25codec12framed_writeINtB6_7EncoderpE6buffers4_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.mh, label %bb.co [
    i8 0, label %bb.cq
    i8 1, label %bb.cp
    i8 2, label %bb.cp
  ], !prof !185

bb.co:                                            ; preds = %bb.cn
  %i.mi = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25codec12framed_writeINtB6_7EncoderpE6buffers4_10___CALLSITE) #60 ; 2 uses
  %i.mj = icmp eq i8 %i.mi, 0
  br i1 %i.mj, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.cn, %bb.co
  %.sroa.076.0 = phi i8 [ %i.mi, %bb.co ], [ %i.mh, %bb.cn ], [ %i.mh, %bb.cn ]
  %i.mk = load ptr, ptr @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25codec12framed_writeINtB6_7EncoderpE6buffers4_10___CALLSITE, align 8, !nonnull !178, !align !186, !noundef !178
  %i.ml = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mk, i8 noundef %.sroa.076.0) #53
  br i1 %i.ml, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cn, %bb.x, %bb.cr, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bg

bb.cr:                                            ; preds = %bb.cp
  %i.mm = load ptr, ptr @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25codec12framed_writeINtB6_7EncoderpE6buffers4_10___CALLSITE, align 8, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr @2307, ptr %i.x, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr inttoptr (i64 27 to ptr), ptr %i.mo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.mp = load i64, ptr %i.bn, align 8, !noundef !178
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.mr = load i64, ptr %i.mq, align 8, !noundef !178
  %i.ms = call i64 @llvm.usub.sat.i64(i64 %i.mp, i64 %i.mr)
  store i64 %i.ms, ptr %i.w, align 8
  store ptr %i.x, ptr %i.y, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @19, ptr %i.mt, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.w, ptr %i.mu, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @69, ptr %i.mv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 1, ptr %i.q, align 8
  %.sroa.078.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.y, ptr %.sroa.078.sroa.4.0..sroa_idx, align 8
  %.sroa.078.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 2, ptr %.sroa.078.sroa.5.0..sroa_idx, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.mn, ptr %.sroa.479.0..sroa_idx, align 8
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.cq
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB4_10ConnectionINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtB8_6client4PeerE4pollCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(2416) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [40 x i8], align 16               ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 10 uses
  %i.r = alloca [328 x i8], align 8               ; 4 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [40 x i8], align 8                ; 7 uses
  %i.z = alloca [40 x i8], align 8                ; 10 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [16 x i8], align 16              ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [1 x i8], align 1                ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [16 x i8], align 16              ; 4 uses
  %i.aj = alloca [64 x i8], align 8               ; 11 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [16 x i8], align 16              ; 4 uses
  %i.ao = alloca [64 x i8], align 8               ; 11 uses
  %i.ap = alloca [1 x i8], align 1                ; 6 uses
  %i.aq = alloca [4 x i8], align 4                ; 7 uses
  %i.ar = alloca [4 x i8], align 4                ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 9 uses
  %i.av = alloca [1 x i8], align 1                ; 3 uses
  %.sroa.8.i.i.sroa.4.i.i.i = alloca [3 x i8], align 1 ; 4 uses
  %.sroa.8.i.i.sroa.16.i.i.i = alloca [236 x i8], align 8 ; 4 uses
  %i.aw = alloca [32 x i8], align 8               ; 7 uses
  %i.ax = alloca [32 x i8], align 8               ; 7 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [32 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [16 x i8], align 8               ; 4 uses
  %i.bh = alloca [16 x i8], align 16              ; 4 uses
  %i.bi = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.5.i.i.i = alloca [3 x i8], align 1       ; 4 uses
  %.sroa.23.i.i.i = alloca [236 x i8], align 8    ; 6 uses
  %i.bj = alloca [4 x i8], align 4                ; 4 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [16 x i8], align 8               ; 8 uses
  %i.bm = alloca [32 x i8], align 8               ; 7 uses
  %i.bn = alloca [40 x i8], align 8               ; 12 uses
  %i.bo = alloca [32 x i8], align 8               ; 7 uses
  %i.bp = alloca [40 x i8], align 8               ; 12 uses
  %i.bq = alloca [16 x i8], align 16              ; 4 uses
  %i.br = alloca [32 x i8], align 8               ; 7 uses
  %i.bs = alloca [296 x i8], align 8              ; 14 uses
  %i.bt = alloca [4 x i8], align 4                ; 9 uses
  %i.bu = alloca [296 x i8], align 8              ; 14 uses
  %i.bv = alloca [16 x i8], align 16              ; 4 uses
  %i.bw = alloca [16 x i8], align 8               ; 5 uses
  %i.bx = alloca [4 x i8], align 4                ; 4 uses
  %i.by = alloca [8 x i8], align 8                ; 4 uses
  %i.bz = alloca [8 x i8], align 8                ; 4 uses
  %i.ca = alloca [1 x i8], align 1                ; 4 uses
  %i.cb = alloca [16 x i8], align 16              ; 4 uses
  %i.cc = alloca [112 x i8], align 8              ; 17 uses
  %i.cd = alloca [8 x i8], align 8                ; 6 uses
  %i.ce = alloca [4 x i8], align 4                ; 6 uses
  %i.cf = alloca [296 x i8], align 8              ; 14 uses
  %i.cg = alloca [296 x i8], align 8              ; 29 uses
  %i.ch = alloca [16 x i8], align 8               ; 5 uses
  %i.ci = alloca [1 x i8], align 1                ; 7 uses
  %i.cj = alloca [8 x i8], align 8                ; 4 uses
  %i.ck = alloca [8 x i8], align 8                ; 4 uses
  %i.cl = alloca [32 x i8], align 8               ; 7 uses
  %i.cm = alloca [32 x i8], align 8               ; 7 uses
  %i.cn = alloca [40 x i8], align 8               ; 18 uses
  %i.co = alloca [16 x i8], align 8               ; 31 uses
  %i.cp = alloca [16 x i8], align 8               ; 9 uses
  %i.cq = alloca [32 x i8], align 8               ; 7 uses
  %i.cr = alloca [40 x i8], align 8               ; 13 uses
  %i.cs = alloca [32 x i8], align 8               ; 7 uses
  %i.ct = alloca [32 x i8], align 8               ; 7 uses
  %i.cu = alloca [296 x i8], align 8              ; 4 uses
  %i.cv = alloca [8 x i8], align 8                ; 4 uses
  %i.cw = alloca [16 x i8], align 16              ; 4 uses
  %i.cx = alloca [32 x i8], align 8               ; 7 uses
  %i.cy = alloca [296 x i8], align 8              ; 8 uses
  %.sroa.7.i.i.i = alloca [295 x i8], align 1     ; 5 uses
  %i.cz = alloca [16 x i8], align 8               ; 5 uses
  %i.da = alloca [16 x i8], align 8               ; 5 uses
  %i.db = alloca [16 x i8], align 16              ; 4 uses
  %i.dc = alloca [16 x i8], align 8               ; 5 uses
  %i.dd = alloca [4 x i8], align 4                ; 3 uses
  %i.de = alloca [1 x i8], align 1                ; 3 uses
  %i.df = alloca [32 x i8], align 8               ; 7 uses
  %i.dg = alloca [296 x i8], align 8              ; 6 uses
  %i.dh = alloca [16 x i8], align 8               ; 5 uses
  %i.di = alloca [16 x i8], align 8               ; 5 uses
  %i.dj = alloca [16 x i8], align 8               ; 5 uses
  %i.dk = alloca [16 x i8], align 8               ; 4 uses
  %i.dl = alloca [16 x i8], align 8               ; 12 uses
  %i.dm = alloca [4 x i8], align 4                ; 3 uses
  %i.dn = alloca [1 x i8], align 1                ; 3 uses
  %i.do = alloca [296 x i8], align 8              ; 6 uses
  %i.dp = alloca [16 x i8], align 8               ; 4 uses
  %i.dq = alloca [16 x i8], align 8               ; 4 uses
  %i.dr = alloca [16 x i8], align 8               ; 4 uses
  %i.ds = alloca [40 x i8], align 8               ; 10 uses
  %i.dt = alloca [40 x i8], align 8               ; 8 uses
  %i.du = alloca [1 x i8], align 1                ; 3 uses
  %i.dv = alloca [296 x i8], align 8              ; 6 uses
  %i.dw = alloca [16 x i8], align 8               ; 4 uses
  %i.dx = alloca [16 x i8], align 8               ; 4 uses
  %i.dy = alloca [32 x i8], align 8               ; 7 uses
  %i.dz = alloca [32 x i8], align 8               ; 7 uses
  %i.ea = alloca [16 x i8], align 16              ; 4 uses
  %i.eb = alloca [16 x i8], align 8               ; 5 uses
  %i.ec = alloca [40 x i8], align 8               ; 10 uses
  %i.ed = alloca [16 x i8], align 8               ; 5 uses
  %i.ee = alloca [16 x i8], align 8               ; 5 uses
  %i.ef = alloca [16 x i8], align 8               ; 5 uses
  %i.eg = alloca [8 x i8], align 8                ; 6 uses
  %i.eh = alloca [16 x i8], align 8               ; 4 uses
  %i.ei = alloca [8 x i8], align 8                ; 7 uses
  %i.ej = alloca [8 x i8], align 8                ; 9 uses
  %i.ek = alloca [32 x i8], align 8               ; 14 uses
  %.sroa.4.i.i.sroa.6.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.el = alloca [40 x i8], align 8               ; 8 uses
  %i.em = alloca [40 x i8], align 8               ; 12 uses
  %.sroa.475.i.i.i = alloca [47 x i8], align 1    ; 4 uses
  %i.en = alloca [296 x i8], align 8              ; 7 uses
  %i.eo = alloca [8 x i8], align 8                ; 4 uses
  %i.ep = alloca [16 x i8], align 16              ; 4 uses
  %i.eq = alloca [32 x i8], align 8               ; 7 uses
  %i.er = alloca [32 x i8], align 8               ; 7 uses
  %i.es = alloca [296 x i8], align 8              ; 7 uses
  %i.et = alloca [8 x i8], align 8                ; 4 uses
  %i.eu = alloca [16 x i8], align 8               ; 5 uses
  %i.ev = alloca [32 x i8], align 8               ; 7 uses
  %i.ew = alloca [40 x i8], align 8               ; 4 uses
  %.sroa.423.i.i.i = alloca [47 x i8], align 1    ; 4 uses
  %i.ex = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.24.i.i.i = alloca [16 x i8], align 8     ; 6 uses
  %i.ey = alloca [16 x i8], align 16              ; 4 uses
  %i.ez = alloca [16 x i8], align 8               ; 5 uses
  %i.fa = alloca [32 x i8], align 8               ; 7 uses
  %i.fb = alloca [32 x i8], align 8               ; 7 uses
  %i.fc = alloca [40 x i8], align 8               ; 13 uses
  %i.fd = alloca [1 x i8], align 1                ; 3 uses
  %i.fe = alloca [32 x i8], align 8               ; 7 uses
  %i.ff = alloca [32 x i8], align 8               ; 7 uses
  %i.fg = alloca [32 x i8], align 8               ; 7 uses
  %i.fh = alloca [64 x i8], align 8               ; 11 uses
  %i.fi = alloca [16 x i8], align 8               ; 5 uses
  %i.fj = alloca [16 x i8], align 8               ; 5 uses
  %i.fk = alloca [4 x i8], align 4                ; 4 uses
  %i.fl = alloca [48 x i8], align 8               ; 9 uses
  %i.fm = alloca [16 x i8], align 8               ; 5 uses
  %i.fn = alloca [16 x i8], align 8               ; 5 uses
  %i.fo = alloca [32 x i8], align 8               ; 7 uses
  %i.fp = alloca [16 x i8], align 8               ; 5 uses
  %i.fq = alloca [16 x i8], align 8               ; 5 uses
  %i.fr = alloca [16 x i8], align 8               ; 6 uses
  %i.fs = alloca [16 x i8], align 8               ; 6 uses
  %i.ft = alloca [32 x i8], align 8               ; 7 uses
  %i.fu = alloca [16 x i8], align 8               ; 5 uses
  %i.fv = alloca [16 x i8], align 8               ; 5 uses
  %i.fw = alloca [16 x i8], align 8               ; 5 uses
  %i.fx = alloca [4 x i8], align 4                ; 8 uses
  %i.fy = alloca [16 x i8], align 8               ; 4 uses
  %i.fz = alloca [16 x i8], align 8               ; 4 uses
  %i.ga = alloca [1 x i8], align 1                ; 3 uses
  %i.gb = alloca [16 x i8], align 8               ; 5 uses
  %i.gc = alloca [16 x i8], align 8               ; 5 uses
  %i.gd = alloca [16 x i8], align 8               ; 5 uses
  %i.ge = alloca [32 x i8], align 8               ; 7 uses
  %i.gf = alloca [296 x i8], align 8              ; 9 uses
  %i.gg = alloca [8 x i8], align 8                ; 6 uses
  %.sroa.1637.i.i.i = alloca [16 x i8], align 8   ; 6 uses
  %i.gh = alloca [16 x i8], align 16              ; 4 uses
  %i.gi = alloca [16 x i8], align 8               ; 5 uses
  %i.gj = alloca [32 x i8], align 8               ; 7 uses
  %i.gk = alloca [296 x i8], align 8              ; 12 uses
  %i.gl = alloca [1 x i8], align 1                ; 3 uses
  %i.gm = alloca [1 x i8], align 1                ; 3 uses
  %i.gn = alloca [296 x i8], align 8              ; 6 uses
  %i.go = alloca [296 x i8], align 8              ; 6 uses
  %i.gp = alloca [1 x i8], align 1                ; 3 uses
  %i.gq = alloca [296 x i8], align 8              ; 6 uses
  %i.gr = alloca [40 x i8], align 8               ; 12 uses
  %i.gs = alloca [32 x i8], align 8               ; 7 uses
  %i.gt = alloca [40 x i8], align 8               ; 18 uses
  %i.gu = alloca [1 x i8], align 1                ; 3 uses
  %i.gv = alloca [296 x i8], align 8              ; 9 uses
  %i.gw = alloca [16 x i8], align 8               ; 4 uses
  %.sroa.13.i = alloca [16 x i8], align 8         ; 7 uses
  %.sroa.524.sroa.5.sroa.0.i = alloca [52 x i8], align 8 ; 8 uses
  %.sroa.345.sroa.3.i = alloca [3 x i8], align 1  ; 6 uses
  %i.gx = alloca [296 x i8], align 8              ; 8 uses
  %.sroa.11128.i = alloca [47 x i8], align 1      ; 9 uses
  %.sroa.15129.i = alloca [248 x i8], align 8     ; 6 uses
  %.sroa.9.i = alloca [47 x i8], align 1          ; 6 uses
  %.sroa.11.i = alloca [248 x i8], align 8        ; 5 uses
  %i.gy = alloca [56 x i8], align 8               ; 10 uses
  %i.gz = alloca [64 x i8], align 8               ; 11 uses
  %i.ha = alloca [40 x i8], align 8               ; 14 uses
  %i.hb = alloca [32 x i8], align 8               ; 5 uses
  %i.hc = alloca [16 x i8], align 16              ; 4 uses
  %i.hd = alloca [16 x i8], align 8               ; 5 uses
  %i.he = alloca [32 x i8], align 8               ; 7 uses
  %i.hf = alloca [56 x i8], align 8               ; 12 uses
  %.sroa.10 = alloca [28 x i8], align 4           ; 3 uses
  %i.hg = alloca [40 x i8], align 8               ; 20 uses
  %i.hh = alloca [8 x i8], align 8                ; 4 uses
  %i.hi = alloca [16 x i8], align 8               ; 5 uses
  %i.hj = alloca [32 x i8], align 8               ; 7 uses
  %i.hk = alloca [32 x i8], align 8               ; 7 uses
  %i.hl = alloca [40 x i8], align 8               ; 14 uses
  %i.hm = alloca [40 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hm)
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 2096 ; 7 uses
  %i.ho = load i64, ptr %i.hn, align 8, !range !191, !noundef !178
  %.not = icmp eq i64 %i.ho, 2
  br i1 %.not, label %.thread1504, label %bb.b

.thread1504:                                      ; preds = %bb.a
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 2128
  %i.hq = load ptr, ptr %i.hp, align 8, !align !186, !noundef !178
  store i64 2, ptr %i.hm, align 8
  %.sroa.545.0..sroa_idx461506 = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  store ptr %i.hq, ptr %i.hr, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb)
  call void @_RNvXsb_NtCsb1q9vQXIC0o_7tracing4spanNtB5_5InnerNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.hb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hn) #53
  %.sroa.043.0.copyload = load i64, ptr %i.hb, align 8 ; 2 uses
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %.sroa.545.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.545.0..sroa_idx46, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.545.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb)
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 2128
  %i.ht = load ptr, ptr %i.hs, align 8, !align !186, !noundef !178
  store i64 %.sroa.043.0.copyload, ptr %i.hm, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  store ptr %i.ht, ptr %i.hu, align 8
  %.not66 = icmp eq i64 %.sroa.043.0.copyload, 2
  br i1 %.not66, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  call void @_RNvMs2_NtCs1kwRxRulhfk_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hv) #53
  br label %bb.d

bb.d:                                             ; preds = %.thread1504, %bb.b, %bb.c
  %.sroa.545.0..sroa_idx461508 = phi ptr [ %.sroa.545.0..sroa_idx461506, %.thread1504 ], [ %.sroa.545.0..sroa_idx46, %bb.b ], [ %.sroa.545.0..sroa_idx46, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hl)
  %i.hw = load atomic i64, ptr @_RNvNtCs1kwRxRulhfk_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %bb.e, label %.thread

default.unreachable1503:                          ; preds = %bb.ym, %bb.yh, %bb.n, %bb.yd, %bb.xy
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.hy = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB6_10ConnectionpppE4poll10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.hy, label %bb.f [
    i8 0, label %.thread
    i8 1, label %bb.g
    i8 2, label %bb.g
  ], !prof !185

.thread:                                          ; preds = %bb.f, %bb.g, %bb.d, %bb.e
  store i64 2, ptr %i.hl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.hz = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB6_10ConnectionpppE4poll10___CALLSITE) #60 ; 2 uses
  %.not67 = icmp eq i8 %i.hz, 0
  br i1 %.not67, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.f
  %.sroa.05.0 = phi i8 [ %i.hz, %bb.f ], [ %i.hy, %bb.e ], [ %i.hy, %bb.e ]
  %i.ia = load ptr, ptr @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB6_10ConnectionpppE4poll10___CALLSITE, align 8, !nonnull !178, !align !186, !noundef !178
  %i.ib = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ia, i8 noundef %.sroa.05.0) #53
  br i1 %i.ib, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ic = load ptr, ptr @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB6_10ConnectionpppE4poll10___CALLSITE, align 8, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hk)
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  store i64 1, ptr %i.hk, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store i64 0, ptr %.sroa.551.0..sroa_idx, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  store ptr %i.id, ptr %i.ie, align 8
  call void @_RNvMNtCsb1q9vQXIC0o_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.hl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ic, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hk) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk)
  %.pr = load i64, ptr %i.hl, align 8
  %.not68 = icmp eq i64 %.pr, 2
  br i1 %.not68, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.if = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  call void @_RNvMs2_NtCs1kwRxRulhfk_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.if) #53
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.h, %bb.i
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 2352 ; 7 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %.sroa.016.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %.sroa.016.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 2356 ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 2353 ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %.sroa.031.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %.sroa.031.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 1520 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 1056 ; 5 uses
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 1168 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i133 = getelementptr inbounds nuw i8, ptr %i.e, i64 17 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.is = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 2360 ; 9 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 2136 ; 7 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2144
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2152
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2160
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2168
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2172
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 1453 ; 22 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 1472 ; 20 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 1464 ; 20 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 1504 ; 20 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %.sroa.464.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %.sroa.565.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %.sroa.666.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %.sroa.767.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 1176 ; 17 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 2188 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 2176 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 2184
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 2120 ; 2 uses
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.ji = getelementptr inbounds nuw i8, ptr %i.gt, i64 24 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 2320 ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 2328 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i87.i = getelementptr inbounds nuw i8, ptr %1, i64 2329
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  %.sroa.415.0..sroa_idx.i.i94.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 2337 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 2338
  %i.jo = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.jp = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  %.sroa.422.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 2192 ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 2368 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 2256 ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 2260 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 2264
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 2268
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 2272
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 2276
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 2280
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 2284
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 2288
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 2292
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 2304
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 2308
  %i.ke = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %.sroa.517.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  %.sroa.619.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 20
  %.sroa.721.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 28
  %.sroa.823.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 36
  %.sroa.925.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 44
  %.sroa.1027.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 52
  %.sroa.1129.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 60
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %.sroa.015.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %.sroa.015.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %.sroa.4.0..sroa_idx.i68.i.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 2316 ; 2 uses
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.sroa.420.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.sroa.011.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.sroa.011.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %.sroa.48.0..sroa_idx.i31.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.sroa.441.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %.sroa.445.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.kk = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %.sroa.453.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %.sroa.457.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.kn = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %.sroa.461.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  %i.ko = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %.sroa.017.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.017.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %.sroa.418.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %.sroa.4172.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %.sroa.4176.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %.sroa.4180.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.ks = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  %.sroa.4184.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.kt = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.sroa.035.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.sroa.035.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %.sroa.436.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %.sroa.9119.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %.sroa.4114.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 1 ; 2 uses
  %.sroa.6116.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %.sroa.7117.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 1320
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 6 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 1280 ; 2 uses
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 1512 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 2196 ; 9 uses
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 2252 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 2200
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 2212 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 2228 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 2232
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 2236
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 2240
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 2244 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %.sroa.742.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 20
  %.sroa.1146.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 36
  %.sroa.1550.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 52
  %.sroa.1752.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 60
  %.sroa.455.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %.sroa.042.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.sroa.042.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %.sroa.443.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.ll = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.lm = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 4 uses
  %.sroa.447.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 1 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 2376 ; 6 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %i.lr = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ls = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %.sroa.459.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.sroa.560.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.lt = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.lu = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i98.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %.sroa.018.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.sroa.018.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %.sroa.419.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 1600 ; 9 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 1528 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 1634 ; 7 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 1633 ; 7 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 5 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 3 uses
  %.sroa.443.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 1608 ; 11 uses
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 1616 ; 8 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 4 uses
  %.sroa.24.16..sroa.443.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.mg = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.410.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %.sroa.4.i.i.sroa.6.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %.sroa.421.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.sroa.5.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.mh = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.sroa.038.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.038.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %.sroa.439.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 1640 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 2080 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 1744
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 2088 ; 3 uses
  %.sroa.472.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %.sroa.573.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.mm = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.475.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.475.i.i.i, i64 7
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 1 ; 2 uses
  %.sroa.446.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 48 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.mp = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %.sroa.055.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.sroa.055.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %.sroa.456.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %.sroa.423.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.423.i.i.i, i64 7
  %i.mq = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  %.sroa.341.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  %i.mr = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
end_hunk_4
begin_hunk_5_@_RNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB4_10ConnectionINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtB8_6client4PeerE4pollCsgZAIVb0XKpv_9ssservice:bb.a
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.nc = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.sroa.4.0..sroa_idx.i.i.i80 = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %.sroa.4114.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.5115.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.nf = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.ng = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.nh = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.nj = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %.sroa.4120.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.5121.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.nk = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.nl = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 5 uses
  %.sroa.417.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.026.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.026.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.427.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.nn = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.4314.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.5315.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.sroa.6316.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %.sroa.7317.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 44
  %.sroa.8318.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 45
  %.sroa.9319.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 46
  %.sroa.10320.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 47
  %i.no = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.nq = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.nr = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ns = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.nt = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.nu = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.nv = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.nw = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.nx = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.ny = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  %i.nz = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.oa = getelementptr inbounds nuw i8, ptr %i.cc, i64 104
  %.sroa.038.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.038.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.439.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.ob = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.4297.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.sroa.5298.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %.sroa.6.0..sroa_idx299.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %.sroa.7.0..sroa_idx300.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 44
  %.sroa.8301.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 45
  %.sroa.9.0..sroa_idx302.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 46
  %.sroa.10304.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 47
  %i.oc = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.048.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.048.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.449.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.od = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.4306.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.sroa.5307.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %.sroa.6308.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %.sroa.7309.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 44
  %.sroa.8310.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 45
  %.sroa.9311.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 46
  %.sroa.10312.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 47
  %i.oe = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.099.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.099.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.4100.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.of = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 4 uses
  %.sroa.12.8..sroa_idx52.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %.sroa.13.8..sroa_idx57.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.12.8..sroa_idx50.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %.sroa.13.8..sroa_idx55.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.0.i.sroa.6.0..sroa_idx77.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.sroa.0.i.sroa.7.0..sroa_idx79.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.og = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.oi = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 10 uses
  %.sroa.12.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 12 ; 6 uses
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 5 uses
  %.sroa.16.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 5 uses
  %.sroa.17.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 32 ; 5 uses
  %.sroa.18.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 40 ; 5 uses
  %.sroa.19.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 44 ; 4 uses
  %.sroa.20.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 45 ; 4 uses
  %.sroa.21.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 46 ; 4 uses
  %.sroa.22.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 47 ; 4 uses
  %.sroa.23.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 48 ; 4 uses
  %.sroa.483.0..sroa_idx84.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 284 ; 2 uses
  %.sroa.586.0..sroa_idx87.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 288 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.ol = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.060.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.060.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.461.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.4142.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.5143.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.om = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.on = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 3 uses
  %.sroa.470.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.oo = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %.sroa.4148.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.5149.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.oq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 3 uses
  %.sroa.479.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.or = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.080.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %.sroa.481.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 68
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 69
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 70
  %i.ot = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 6 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 2 uses
  %.sroa.4165.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.0109.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.0109.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.4110.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ox = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.oy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.pa = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %.sroa.017.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.017.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %.sroa.418.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.pb = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.pc = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.7184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 2180
  %i.pf = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.pg = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %.sroa.5.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  %i.ph = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.pi = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %i.pj = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.pk = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.032.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.032.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.3.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %.sroa.6.0..sroa_idx148 = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %.sroa.6150.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.sroa.8.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %.sroa.10.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.po = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.pq = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 2412
  %i.ps = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.pt = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.pv = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.pw = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.px = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.py = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.pz = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %.sroa.022.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.022.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.qa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4.0..sroa_idx.i.i.i108 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.qb = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %.sroa.421.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i106 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %.sroa.012.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.012.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.j
  %i.qm = load atomic i64, ptr @_RNvNtCs1kwRxRulhfk_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.qn = icmp eq i64 %i.qm, 0
  br i1 %i.qn, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.backedge
  %i.qo = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB6_10ConnectionpppE4polls_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.qo, label %bb.l [
    i8 0, label %bb.n
    i8 1, label %bb.m
    i8 2, label %bb.m
  ], !prof !185

bb.l:                                             ; preds = %bb.k
  %i.qp = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB6_10ConnectionpppE4polls_10___CALLSITE) #60 ; 2 uses
  %i.qq = icmp eq i8 %i.qp, 0
  br i1 %i.qq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.l
  %.sroa.014.0 = phi i8 [ %i.qp, %bb.l ], [ %i.qo, %bb.k ], [ %i.qo, %bb.k ]
  %i.qr = load ptr, ptr @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB6_10ConnectionpppE4polls_10___CALLSITE, align 8, !nonnull !178, !align !186, !noundef !178
  %i.qs = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qr, i8 noundef %.sroa.014.0) #53
  br i1 %i.qs, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.k, %.backedge, %bb.o, %bb.m
  %i.qt = load i8, ptr %i.ig, align 8, !range !199, !noundef !178
  switch i8 %i.qt, label %default.unreachable1503 [
    i8 0, label %bb.p
    i8 1, label %bb.lo
    i8 2, label %bb.lp
  ]

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hj)
  %i.qu = load ptr, ptr @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB6_10ConnectionpppE4polls_10___CALLSITE, align 8, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hh)
  store ptr %i.ig, ptr %i.hh, align 8
  store ptr %i.hh, ptr %i.hi, align 8
  store ptr @2311, ptr %i.ih, align 8
  store i64 1, ptr %i.hj, align 8
  store ptr %i.hi, ptr %.sroa.016.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.016.sroa.5.0..sroa_idx, align 8
  store ptr %i.qv, ptr %.sroa.417.0..sroa_idx, align 8
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hj) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hi)
  br label %bb.n

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hg)
  call void @llvm.experimental.noalias.scope.decl(metadata !93555)
  call void @llvm.experimental.noalias.scope.decl(metadata !93556)
  call void @llvm.experimental.noalias.scope.decl(metadata !93557)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.524.sroa.5.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.345.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha)
  %.val.i = load ptr, ptr %i.iv, align 8, !alias.scope !93556, !noalias !93558, !nonnull !178, !noundef !178 ; 5 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 5 uses
  %i.qx = cmpxchg ptr %i.qw, i32 0, i32 1 acquire monotonic, align 4, !noalias !93559
  %i.qy = extractvalue { i32, i1 } %i.qx, 1
  br i1 %i.qy, label %bb.r, label %bb.q, !prof !192

bb.q:                                             ; preds = %bb.p
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.qw) #53, !noalias !93560
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.qz = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !93561
  %i.ra = and i64 %i.qz, 9223372036854775807
  %i.rb = icmp eq i64 %i.ra, 0
  br i1 %i.rb, label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.s, !prof !192

bb.s:                                             ; preds = %bb.r
  %i.rc = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #60, !noalias !93560
  %i.rd = xor i1 %i.rc, true
  %i.re = zext i1 %i.rd to i8
  br label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.sroa.01.0.i.i.i.i.i = phi i8 [ %i.re, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.val.i, i64 20 ; 2 uses
  %i.rg = load atomic i8, ptr %i.rf monotonic, align 1, !noalias !93560
  %.not.i.i.not.i.i.i = icmp eq i8 %i.rg, 0
  br i1 %.not.i.i.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.t, !prof !192

bb.t:                                             ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw), !noalias !93562
  store ptr %i.qw, ptr %i.gw, align 8, !noalias !93562
  %i.rh = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i8 %.sroa.01.0.i.i.i.i.i, ptr %i.rh, align 8, !noalias !93562
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1963, i64 noundef 43, ptr noundef nonnull %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1973, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2002) #63, !noalias !93563
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.ri = trunc nuw i8 %.sroa.01.0.i.i.i.i.i to i1
  %i.rj = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.rk = getelementptr inbounds nuw i8, ptr %.val.i, i64 144
  %i.rl = getelementptr inbounds nuw i8, ptr %.val.i, i64 480
  call void @_RNvMNtNtNtCs2dlyTE5y14r_2h25proto7streams4recvNtB2_4Recv27clear_expired_reset_streams(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.rk, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.rl, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.rj) #53, !noalias !93555
  br i1 %i.ri, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.rm = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !93564
  %i.rn = and i64 %i.rm, 9223372036854775807
  %i.ro = icmp eq i64 %i.rn, 0
  br i1 %i.ro, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.v, !prof !192

bb.v:                                             ; preds = %bb.u
  %i.rp = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #60, !noalias !93555
  br i1 %i.rp, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store atomic i8 1, ptr %i.rf monotonic, align 1, !noalias !93555
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i: ; preds = %bb.w, %bb.v, %bb.u, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.rq = atomicrmw xchg ptr %i.qw, i32 0 release, align 4, !noalias !93555
  %i.rr = icmp eq i32 %i.rq, 2
  br i1 %i.rr, label %bb.x, label %_RNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB4_10ConnectionINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtB8_6client4PeerE27clear_expired_reset_streamsCsgZAIVb0XKpv_9ssservice.exit.i.preheader, !prof !187

bb.x:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.qw) #53, !noalias !93555
  br label %_RNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB4_10ConnectionINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtB8_6client4PeerE27clear_expired_reset_streamsCsgZAIVb0XKpv_9ssservice.exit.i.preheader

_RNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB4_10ConnectionINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtB8_6client4PeerE27clear_expired_reset_streamsCsgZAIVb0XKpv_9ssservice.exit.i.preheader: ; preds = %bb.x, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  br label %_RNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB4_10ConnectionINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtB8_6client4PeerE27clear_expired_reset_streamsCsgZAIVb0XKpv_9ssservice.exit.i

_RNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB4_10ConnectionINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtB8_6client4PeerE27clear_expired_reset_streamsCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB4_10ConnectionINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtB8_6client4PeerE27clear_expired_reset_streamsCsgZAIVb0XKpv_9ssservice.exit.i.preheader, %bb.lk
  call void @llvm.experimental.noalias.scope.decl(metadata !93565)
  call void @llvm.experimental.noalias.scope.decl(metadata !93566)
  call void @llvm.experimental.noalias.scope.decl(metadata !93567)
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.iw, align 8, !alias.scope !93568, !noalias !93569 ; 4 uses
  %.sroa.6.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !93568, !noalias !93569 ; 2 uses
  %.sroa.6.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !93568, !noalias !93569 ; 2 uses
  %.sroa.6.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !93568, !noalias !93569 ; 2 uses
  %.sroa.6.sroa.8.0.copyload.i.i.i = load i32, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 4, !alias.scope !93568, !noalias !93569
  %i.rs = load <2 x i32>, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !93568, !noalias !93569
  store ptr null, ptr %i.iw, align 8, !alias.scope !93568, !noalias !93569
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i, null
  br i1 %.not.i.i.i, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %_RNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB4_10ConnectionINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtB8_6client4PeerE27clear_expired_reset_streamsCsgZAIVb0XKpv_9ssservice.exit.i
  %i.rt = load i8, ptr %i.ix, align 1, !range !208, !alias.scope !93570, !noalias !93571, !noundef !178
  %.not.i.i.i.i = icmp eq i8 %i.rt, -1
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ru = load i64, ptr %i.iy, align 8, !alias.scope !93570, !noalias !93571, !noundef !178
  %i.rv = load i64, ptr %i.iz, align 8, !alias.scope !93570, !noalias !93571, !noundef !178
  %i.rw = sub i64 %i.ru, %i.rv
  %i.rx = load i64, ptr %i.ja, align 8, !alias.scope !93570, !noalias !93571, !noundef !178
  %.not7.i.i.i.i = icmp ult i64 %i.rw, %i.rx
  br i1 %.not7.i.i.i.i, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ry = call fastcc { i64, ptr } @_RNvMNtNtCs2dlyTE5y14r_2h25codec12framed_writeINtB2_11FramedWriteINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5flushCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(2416) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #53, !noalias !93572 ; 2 uses
  %i.rz = extractvalue { i64, ptr } %i.ry, 0
  %i.sa = trunc nuw i64 %i.rz to i1
  br i1 %i.sa, label %_RNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB4_10ConnectionINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtB8_6client4PeerE5poll2CsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.sb = extractvalue { i64, ptr } %i.ry, 1      ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.sb, null
  br i1 %.not8.i.i.i.i, label %bb.ac, label %bb.hf

bb.ac:                                            ; preds = %bb.ab
  %i.sc = load i8, ptr %i.ix, align 1, !range !208, !alias.scope !93570, !noalias !93571, !noundef !178
  %.not9.i.i.i.i = icmp eq i8 %i.sc, -1
  br i1 %.not9.i.i.i.i, label %bb.ad, label %_RNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB4_10ConnectionINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtB8_6client4PeerE5poll2CsgZAIVb0XKpv_9ssservice.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.sd = load i64, ptr %i.iy, align 8, !alias.scope !93570, !noalias !93571, !noundef !178
  %i.se = load i64, ptr %i.iz, align 8, !alias.scope !93570, !noalias !93571, !noundef !178
  %i.sf = sub i64 %i.sd, %i.se
  %i.sg = load i64, ptr %i.ja, align 8, !alias.scope !93570, !noalias !93571, !noundef !178
  %.not10.i.i.i.i = icmp ult i64 %i.sf, %i.sg
  br i1 %.not10.i.i.i.i, label %_RNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB4_10ConnectionINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtB8_6client4PeerE5poll2CsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.af

bb.ae:                                            ; preds = %_RNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB4_10ConnectionINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtB8_6client4PeerE27clear_expired_reset_streamsCsgZAIVb0XKpv_9ssservice.exit.i
  %i.sh = load i8, ptr %i.jd, align 4, !alias.scope !93568, !noalias !93569
  %i.si = trunc nuw i8 %i.sh to i1
  %i.sj = load i32, ptr %i.je, align 8, !range !196, !alias.scope !93556, !noalias !93558
  %i.sk = trunc nuw i32 %i.sj to i1
  %or.cond.i = select i1 %i.si, i1 %i.sk, i1 false
  br i1 %or.cond.i, label %.thread.i, label %bb.ah

bb.af:                                            ; preds = %bb.ad, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv), !noalias !93573
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.jb, align 8, !noalias !93573
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i, ptr %.sroa.464.0..sroa_idx.i.i.i, align 8, !noalias !93573
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i, ptr %.sroa.565.0..sroa_idx.i.i.i, align 8, !noalias !93573
  store ptr %.sroa.6.sroa.6.0.copyload.i.i.i, ptr %.sroa.666.0..sroa_idx.i.i.i, align 8, !noalias !93573
  store <2 x i32> %i.rs, ptr %.sroa.767.0..sroa_idx.i.i.i, align 8, !noalias !93573
end_hunk_5
begin_hunk_6_@_RNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB4_10ConnectionINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtB8_6client4PeerE4pollCsgZAIVb0XKpv_9ssservice:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !94045)
  call void @llvm.experimental.noalias.scope.decl(metadata !94046)
  call void @llvm.experimental.noalias.scope.decl(metadata !94047)
  call void @llvm.experimental.noalias.scope.decl(metadata !94048)
  %i.boy = icmp eq i64 %.pr199, 0
  br i1 %i.boy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsb1q9vQXIC0o_7tracing4span4SpanECsgZAIVb0XKpv_9ssservice.exit116, label %bb.wo

bb.wo:                                            ; preds = %bb.wn
  call void @llvm.experimental.noalias.scope.decl(metadata !94049)
  call void @llvm.experimental.noalias.scope.decl(metadata !94050)
  %i.boz = load ptr, ptr %.sroa.545.0..sroa_idx461508, align 8, !alias.scope !94051, !nonnull !178, !noundef !178
  %i.bpa = atomicrmw sub ptr %i.boz, i64 1 release, align 8, !noalias !94052
  %i.bpb = icmp eq i64 %i.bpa, 1
  br i1 %i.bpb, label %bb.wp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsb1q9vQXIC0o_7tracing4span4SpanECsgZAIVb0XKpv_9ssservice.exit116

bb.wp:                                            ; preds = %bb.wo
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs1kwRxRulhfk_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.545.0..sroa_idx461508) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsb1q9vQXIC0o_7tracing4span4SpanECsgZAIVb0XKpv_9ssservice.exit116

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsb1q9vQXIC0o_7tracing4span4SpanECsgZAIVb0XKpv_9ssservice.exit116: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsb1q9vQXIC0o_7tracing4span4SpanECsgZAIVb0XKpv_9ssservice.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsb1q9vQXIC0o_7tracing4span7EnteredECsgZAIVb0XKpv_9ssservice.exit114, %bb.wn, %bb.wo, %bb.wp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hm)
  ret void

bb.wq:                                            ; preds = %bb.sy, %bb.lv, %bb.lw, %bb.lt
  store i8 -2, ptr %0, align 8
  br label %bb.xg

bb.wr:                                            ; preds = %bb.sz, %bb.lu
  %.sroa.7.1.i.ph = phi ptr [ %i.arn, %bb.lu ], [ %i.bhc, %bb.sz ]
  call void @_RNvXs2_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %.sroa.7.1.i.ph) #53
  br label %bb.xg

bb.ws:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEECsgZAIVb0XKpv_9ssservice.exit38.i
  %i.bpc = load ptr, ptr %i.lo, align 8, !noundef !178
  %.not72 = icmp eq ptr %i.bpc, null
  br i1 %.not72, label %bb.wt, label %bb.wu

bb.wt:                                            ; preds = %bb.ws
  %i.bpd = load i8, ptr %i.jd, align 4, !range !181, !noundef !178
  %i.bpe = trunc nuw i8 %i.bpd to i1
  %.not220 = xor i1 %i.bpe, true
  %i.bpf = load i32, ptr %i.je, align 8, !range !196
  %i.bpg = trunc nuw i32 %i.bpf to i1
  %or.cond223 = select i1 %.not220, i1 %i.bpg, i1 false
  %i.bph = load i32, ptr %i.pe, align 4
  %i.bpi = icmp ne i32 %i.bph, 2147483647
  %or.cond226 = select i1 %or.cond223, i1 %i.bpi, i1 false
  br i1 %or.cond226, label %bb.wu, label %_RNvMNtNtCs2dlyTE5y14r_2h25proto7go_awayNtB2_6GoAway20should_close_on_idle.exit.thread

bb.wu:                                            ; preds = %bb.wt, %bb.ws
  %.val78 = load ptr, ptr %i.iv, align 8, !nonnull !178, !noundef !178 ; 4 uses
  %i.bpj = getelementptr inbounds nuw i8, ptr %.val78, i64 16 ; 5 uses
  %i.bpk = cmpxchg ptr %i.bpj, i32 0, i32 1 acquire monotonic, align 4, !noalias !94053
  %i.bpl = extractvalue { i32, i1 } %i.bpk, 1
  br i1 %i.bpl, label %bb.ww, label %bb.wv, !prof !192

bb.wv:                                            ; preds = %bb.wu
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bpj) #53, !noalias !94053
  br label %bb.ww

bb.ww:                                            ; preds = %bb.wv, %bb.wu
  %i.bpm = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !94053
  %i.bpn = and i64 %i.bpm, 9223372036854775807
  %i.bpo = icmp eq i64 %i.bpn, 0
  br i1 %i.bpo, label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i118, label %bb.wx, !prof !192

bb.wx:                                            ; preds = %bb.ww
  %i.bpp = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #60, !noalias !94053
  %i.bpq = xor i1 %i.bpp, true
  %i.bpr = zext i1 %i.bpq to i8
  br label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i118

_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i118: ; preds = %bb.wx, %bb.ww
  %.sroa.01.0.i.i.i119 = phi i8 [ %i.bpr, %bb.wx ], [ 0, %bb.ww ] ; 2 uses
  %i.bps = getelementptr inbounds nuw i8, ptr %.val78, i64 20 ; 2 uses
  %i.bpt = load atomic i8, ptr %i.bps monotonic, align 1, !noalias !94053
  %.not.i.i.not.i120 = icmp eq i8 %i.bpt, 0
  br i1 %.not.i.i.not.i120, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i121, label %bb.wy, !prof !192

bb.wy:                                            ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !94054
  store ptr %i.bpj, ptr %i.g, align 8, !noalias !94054
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %.sroa.01.0.i.i.i119, ptr %i.bpu, align 8, !noalias !94054
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1963, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1973, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2212) #63, !noalias !94055
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i121: ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i118
  %i.bpv = trunc nuw i8 %.sroa.01.0.i.i.i119 to i1
  %i.bpw = getelementptr inbounds nuw i8, ptr %.val78, i64 48
  %i.bpx = load i64, ptr %i.bpw, align 8, !noundef !178
  %i.bpy = icmp eq i64 %i.bpx, 0
  br i1 %i.bpy, label %bb.wz, label %bb.xa

bb.wz:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i121
  %i.bpz = getelementptr inbounds nuw i8, ptr %.val78, i64 64
  %i.bqa = load i64, ptr %i.bpz, align 8, !noundef !178
  %i.bqb = icmp ne i64 %i.bqa, 0
  br label %bb.xa

bb.xa:                                            ; preds = %bb.wz, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i121
  %.sroa.0.0.i122 = phi i1 [ %i.bqb, %bb.wz ], [ true, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i121 ]
  br i1 %i.bpv, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.xb

bb.xb:                                            ; preds = %bb.xa
  %i.bqc = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bqd = and i64 %i.bqc, 9223372036854775807
  %i.bqe = icmp eq i64 %i.bqd, 0
  br i1 %i.bqe, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.xc, !prof !192

bb.xc:                                            ; preds = %bb.xb
  %i.bqf = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #60
  br i1 %i.bqf, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.xd

bb.xd:                                            ; preds = %bb.xc
  store atomic i8 1, ptr %i.bps monotonic, align 4
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.xd, %bb.xc, %bb.xb, %bb.xa
  %i.bqg = atomicrmw xchg ptr %i.bpj, i32 0 release, align 4
  %i.bqh = icmp eq i32 %i.bqg, 2
  br i1 %i.bqh, label %bb.xe, label %_RNvMs2_NtNtNtCs2dlyTE5y14r_2h25proto7streams7streamsINtB5_7StreamsNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtBb_6client4PeerE11has_streamsCsgZAIVb0XKpv_9ssservice.exit, !prof !187

bb.xe:                                            ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bpj) #53
  br label %_RNvMs2_NtNtNtCs2dlyTE5y14r_2h25proto7streams7streamsINtB5_7StreamsNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtBb_6client4PeerE11has_streamsCsgZAIVb0XKpv_9ssservice.exit

_RNvMs2_NtNtNtCs2dlyTE5y14r_2h25proto7streams7streamsINtB5_7StreamsNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtBb_6client4PeerE11has_streamsCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.xe
  br i1 %.sroa.0.0.i122, label %_RNvMNtNtCs2dlyTE5y14r_2h25proto7go_awayNtB2_6GoAway20should_close_on_idle.exit.thread, label %bb.xf

_RNvMNtNtCs2dlyTE5y14r_2h25proto7go_awayNtB2_6GoAway20should_close_on_idle.exit.thread: ; preds = %bb.wt, %_RNvMs2_NtNtNtCs2dlyTE5y14r_2h25proto7streams7streamsINtB5_7StreamsNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtBb_6client4PeerE11has_streamsCsgZAIVb0XKpv_9ssservice.exit
  store i8 -2, ptr %0, align 8
  br label %bb.xg

bb.xf:                                            ; preds = %_RNvMs2_NtNtNtCs2dlyTE5y14r_2h25proto7streams7streamsINtB5_7StreamsNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtBb_6client4PeerE11has_streamsCsgZAIVb0XKpv_9ssservice.exit
  %i.bqi = load ptr, ptr %i.iv, align 8, !alias.scope !94056, !noalias !94057, !nonnull !178, !noundef !178
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqi, i64 16
  %i.bqk = call fastcc noundef i32 @_RNvMs_NtNtNtCs2dlyTE5y14r_2h25proto7streams7streamsINtB4_10DynStreamsNtNtCsknai52m1gBp_5bytes5bytes5BytesE17last_processed_idCsgZAIVb0XKpv_9ssservice(ptr nonnull %i.bqj) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.bqk, ptr %i.pf, align 16
  store i32 0, ptr %i.pg, align 4
  store <2 x ptr> <ptr @17, ptr inttoptr (i64 1 to ptr)>, ptr %i.f, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5.0..sroa_idx.i126, i8 0, i64 16, i1 false)
  call void @_RNvMNtNtCs2dlyTE5y14r_2h25proto7go_awayNtB2_6GoAway11go_away_now(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.iw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.f) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hg)
  br label %.backedge.backedge

bb.xg:                                            ; preds = %bb.wq, %bb.wr, %_RNvMNtNtCs2dlyTE5y14r_2h25proto7go_awayNtB2_6GoAway20should_close_on_idle.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hg)
  br label %bb.wj

bb.xh:                                            ; preds = %bb.lo
  %i.bql = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB6_10ConnectionpppE4polls0_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bql, label %bb.xi [
    i8 0, label %bb.xk
    i8 1, label %bb.xj
    i8 2, label %bb.xj
  ], !prof !185

bb.xi:                                            ; preds = %bb.xh
  %i.bqm = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB6_10ConnectionpppE4polls0_10___CALLSITE) #60 ; 2 uses
  %i.bqn = icmp eq i8 %i.bqm, 0
  br i1 %i.bqn, label %bb.xk, label %bb.xj

bb.xj:                                            ; preds = %bb.xh, %bb.xh, %bb.xi
  %.sroa.029.0 = phi i8 [ %i.bqm, %bb.xi ], [ %i.bql, %bb.xh ], [ %i.bql, %bb.xh ]
  %i.bqo = load ptr, ptr @_RNvNvMs_NtNtCs2dlyTE5y14r_2h25proto10connectionINtB6_10ConnectionpppE4polls0_10___CALLSITE, align 8, !nonnull !178, !align !186, !noundef !178
  %i.bqp = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bqo, i8 noundef %.sroa.029.0) #53
  br i1 %i.bqp, label %bb.yu, label %bb.xk

bb.xk:                                            ; preds = %bb.xi, %bb.xh, %bb.lo, %bb.yu, %bb.xj
  call void @llvm.experimental.noalias.scope.decl(metadata !94058)
  call void @llvm.experimental.noalias.scope.decl(metadata !94059)
  %i.bqq = load i8, ptr %i.il, align 8, !range !181, !alias.scope !94060, !noalias !94061, !noundef !178
  %i.bqr = trunc nuw i8 %i.bqq to i1
  br i1 %i.bqr, label %bb.xm, label %bb.xl

bb.xl:                                            ; preds = %bb.xk
  %i.bqs = call fastcc { i64, ptr } @_RNvMNtNtCs2dlyTE5y14r_2h25codec12framed_writeINtB2_11FramedWriteINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5flushCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(2096) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #53 ; 2 uses
  %i.bqt = extractvalue { i64, ptr } %i.bqs, 0
  %i.bqu = trunc nuw i64 %i.bqt to i1
  br i1 %i.bqu, label %.loopexit243, label %bb.ys

bb.xm:                                            ; preds = %bb.yt, %bb.xk
  call void @llvm.experimental.noalias.scope.decl(metadata !94062)
  %i.bqv = load i64, ptr %i.im, align 8, !range !227, !alias.scope !94063, !noalias !94064, !noundef !178 ; 2 uses
  %i.bqw = icmp sgt i64 %i.bqv, -1
  br i1 %i.bqw, label %bb.xo, label %bb.xn

bb.xn:                                            ; preds = %._crit_edge.i.i.i, %bb.xm
  %i.bqx = phi i64 [ %.pre.i.i.i135, %._crit_edge.i.i.i ], [ %i.bqv, %bb.xm ]
  %i.bqy = icmp ugt i64 %i.bqx, -9223372036854775807
  br i1 %i.bqy, label %.preheader2686, label %bb.xu

bb.xo:                                            ; preds = %bb.xm
  call void @llvm.experimental.noalias.scope.decl(metadata !94065)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !94066
  %i.bqz = load i8, ptr %i.io, align 8, !range !181, !alias.scope !94067, !noalias !94068, !noundef !178
  store ptr %i.in, ptr %i.e, align 8, !noalias !94066
  store ptr %1, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !94066
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !94066
  store i8 %i.bqz, ptr %.sroa.5.0..sroa_idx.i.i.i.i133, align 1, !noalias !94066
  %i.bra = call fastcc { i64, ptr } @_RINvNtCs3Ol6WPi9G6e_12tokio_rustls6client22poll_handle_early_dataINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB14_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.im, ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ip, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #53 ; 2 uses
  %i.brb = extractvalue { i64, ptr } %i.bra, 0
  switch i64 %i.brb, label %bb.xq [
    i64 2, label %bb.xp
    i64 0, label %bb.xr
  ]

bb.xp:                                            ; preds = %bb.xo
  %i.brc = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i.i133, align 1, !range !181, !noalias !94066, !noundef !178
  store i8 %i.brc, ptr %i.io, align 8, !alias.scope !94067, !noalias !94068
  br label %bb.xs

bb.xq:                                            ; preds = %bb.xo
  %i.brd = extractvalue { i64, ptr } %i.bra, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.brd) ]
  br label %bb.xs

bb.xr:                                            ; preds = %bb.xo
  %.val.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !94066
  %.val13.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !94066, !nonnull !178, !align !186, !noundef !178
  %i.bre = call fastcc { i64, ptr } @_RNvXs2_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB5_6StreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBW_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flushCsgZAIVb0XKpv_9ssservice(ptr %.val.i.i.i.i, ptr nonnull %.val13.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !94066
  br label %_RNvXsa_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBZ_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flushCsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.xs:                                            ; preds = %bb.xq, %bb.xp
  %.sroa.4.1.i.i.i.i = phi ptr [ undef, %bb.xp ], [ %i.brd, %bb.xq ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 1, %bb.xp ], [ 0, %bb.xq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !94066
  %i.brf = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.brg = insertvalue { i64, ptr } %i.brf, ptr %.sroa.4.1.i.i.i.i, 1
  br label %_RNvXsa_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBZ_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flushCsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RNvXsa_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBZ_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flushCsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.xs, %bb.xr
  %.merged.i.i.i.i = phi { i64, ptr } [ %i.brg, %bb.xs ], [ %i.bre, %bb.xr ] ; 2 uses
  %i.brh = extractvalue { i64, ptr } %.merged.i.i.i.i, 0
  %i.bri = trunc nuw i64 %i.brh to i1
  br i1 %i.bri, label %.loopexit243, label %bb.xt

bb.xt:                                            ; preds = %_RNvXsa_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBZ_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flushCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.brj = extractvalue { i64, ptr } %.merged.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i134 = icmp eq ptr %i.brj, null
  br i1 %.not.i.i.i134, label %._crit_edge.i.i.i, label %.loopexit242

._crit_edge.i.i.i:                                ; preds = %bb.xt
  %.pre.i.i.i135 = load i64, ptr %i.im, align 8, !range !227, !alias.scope !94063, !noalias !94064
  br label %bb.xn

bb.xu:                                            ; preds = %bb.xn
  call void @_RNvMNtCsb28OZjLZAOu_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(2096) %1) #53
  %i.brk = load i64, ptr %i.im, align 8, !range !227, !alias.scope !94063, !noalias !94064, !noundef !178 ; 4 uses
  %i.brl = icmp slt i64 %i.brk, 0
  %i.brm = add i64 %i.brk, -9223372036854775807
  %i.brn = select i1 %i.brl, i64 %i.brm, i64 0
  %or.cond.i.i.i.i129 = icmp slt i64 %i.brk, 1    ; 2 uses
  switch i64 %i.brn, label %bb.yq [
    i64 2, label %bb.yr
    i64 4, label %bb.yr
  ]

.sink.split.sink.split.i.i.i:                     ; preds = %bb.yr, %bb.yq
  %.sink.ph.i.i.i = phi i64 [ -9223372036854775806, %bb.yq ], [ -9223372036854775805, %bb.yr ]
  %.val20.i.i.i = load ptr, ptr %i.iq, align 8, !alias.scope !94063, !noalias !94064, !nonnull !178, !noundef !178
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20.i.i.i, i64 noundef %i.brk, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !178
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.yr, %bb.yq, %.sink.split.sink.split.i.i.i
  %.sink.i.i.i130 = phi i64 [ -9223372036854775805, %bb.yr ], [ -9223372036854775806, %bb.yq ], [ %.sink.ph.i.i.i, %.sink.split.sink.split.i.i.i ]
  store i64 %.sink.i.i.i130, ptr %i.im, align 8, !alias.scope !94063, !noalias !94064
  br label %.preheader2686

.preheader2686:                                   ; preds = %.sink.split.i.i.i, %bb.xn
  br label %bb.xv

bb.xv:                                            ; preds = %.preheader2686, %bb.yp
  %i.bro = load i64, ptr %i.ir, align 8, !alias.scope !94063, !noalias !94069, !noundef !178
  %.not.i.i.i.i131 = icmp eq i64 %i.bro, 0
  br i1 %.not.i.i.i.i131, label %bb.xw, label %bb.xx

bb.xw:                                            ; preds = %bb.xv
  %i.brp = call { i64, ptr } @_RNvXs0_NtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtB5_9TcpStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.in, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #53 ; 2 uses
  %i.brq = extractvalue { i64, ptr } %i.brp, 0
  %i.brr = extractvalue { i64, ptr } %i.brp, 1    ; 8 uses
  %i.brs = trunc nuw i64 %i.brq to i1
  br i1 %i.brs, label %.loopexit243, label %bb.yg

bb.xx:                                            ; preds = %bb.xv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !94070
  store ptr %i.in, ptr %i.d, align 8, !noalias !94070
  store ptr %2, ptr %i.is, align 8, !noalias !94070
  %i.brt = call { i64, ptr } @_RNvMs_NtCsb28OZjLZAOu_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.it, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2290) #53 ; 2 uses
  %i.bru = extractvalue { i64, ptr } %i.brt, 0
  %i.brv = extractvalue { i64, ptr } %i.brt, 1    ; 9 uses
  %i.brw = trunc nuw i64 %i.bru to i1
  br i1 %i.brw, label %bb.xy, label %bb.yp

bb.xy:                                            ; preds = %bb.xx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.brv) ]
  %i.brx = ptrtoint ptr %i.brv to i64             ; 4 uses
  %i.bry = and i64 %i.brx, 3                      ; 2 uses
  switch i64 %i.bry, label %default.unreachable1503 [
    i64 2, label %bb.xz
    i64 3, label %bb.ya
    i64 0, label %bb.yb
    i64 1, label %bb.yc
  ], !prof !231

bb.xz:                                            ; preds = %bb.xy
  %i.brz = lshr i64 %i.brx, 32
  %i.bsa = trunc nuw i64 %i.brz to i32
  %i.bsb = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #53
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.bsb, i64 8
  %i.bsd = load ptr, ptr %i.bsc, align 8, !nonnull !178, !noundef !178
  %i.bse = call noundef i8 %i.bsd(i32 noundef %i.bsa) #53, !inline_history !93545
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i

bb.ya:                                            ; preds = %bb.xy
  %i.bsf = lshr i64 %i.brx, 32
  %i.bsg = icmp ult ptr %i.brv, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i.i.i = trunc i64 %i.bsf to i8 ; 2 uses
  %i.bsh = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bsg)
  call void @llvm.assume(i1 %i.bsh)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i

bb.yb:                                            ; preds = %bb.xy
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.brv, i64 16
  %i.bsj = load i8, ptr %i.bsi, align 8, !range !292, !noundef !178
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i

bb.yc:                                            ; preds = %bb.xy
  %i.bsk = getelementptr i8, ptr %i.brv, i64 31
  %i.bsl = load i8, ptr %i.bsk, align 8, !range !292, !noundef !178
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i: ; preds = %bb.yc, %bb.yb, %bb.ya, %bb.xz
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %i.bse, %bb.xz ], [ %switch.idx.cast.i.i.i.i.i.i.i.i, %bb.ya ], [ %i.bsj, %bb.yb ], [ %i.bsl, %bb.yc ]
  %i.bsm = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i, 13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !94070
  br i1 %i.bsm, label %bb.yd, label %.loopexit242

bb.yd:                                            ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !94071
  switch i64 %i.bry, label %default.unreachable1503 [
    i64 2, label %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBV_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i
    i64 3, label %bb.ye
    i64 0, label %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBV_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i
    i64 1, label %bb.yf
  ], !prof !231

bb.ye:                                            ; preds = %bb.yd
  %i.bsn = icmp ult ptr %i.brv, inttoptr (i64 188978561024 to ptr)
  %i.bso = and i64 %i.brx, 1095216660480
  %i.bsp = icmp ne i64 %i.bso, 1095216660480
  call void @llvm.assume(i1 %i.bsn)
  call void @llvm.assume(i1 %i.bsp)
  br label %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBV_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i

bb.yf:                                            ; preds = %bb.yd
  %i.bsq = getelementptr i8, ptr %i.brv, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bsq) ]
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.bsq, ptr %i.bsr, align 8, !alias.scope !94072, !noalias !94071
  store i8 3, ptr %i.c, align 8, !alias.scope !94072, !noalias !94071
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bsr) #53, !noalias !94073
  br label %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBV_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i

_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBV_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i: ; preds = %bb.yf, %bb.ye, %bb.yd, %bb.yd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !94071
  br label %.loopexit243

bb.yg:                                            ; preds = %bb.xw
  %.not19.i.i.i.i = icmp eq ptr %i.brr, null
  br i1 %.not19.i.i.i.i, label %bb.yv, label %bb.yh

bb.yh:                                            ; preds = %bb.yg
  %i.bss = ptrtoint ptr %i.brr to i64             ; 4 uses
  %i.bst = and i64 %i.bss, 3                      ; 2 uses
  switch i64 %i.bst, label %default.unreachable1503 [
    i64 2, label %bb.yi
    i64 3, label %bb.yj
    i64 0, label %bb.yk
    i64 1, label %bb.yl
  ], !prof !231

bb.yi:                                            ; preds = %bb.yh
  %i.bsu = lshr i64 %i.bss, 32
  %i.bsv = trunc nuw i64 %i.bsu to i32
  %i.bsw = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #53
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsw, i64 8
  %i.bsy = load ptr, ptr %i.bsx, align 8, !nonnull !178, !noundef !178
  %i.bsz = call noundef i8 %i.bsy(i32 noundef %i.bsv) #53, !inline_history !93550
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

bb.yj:                                            ; preds = %bb.yh
  %i.bta = lshr i64 %i.bss, 32
  %i.btb = icmp ult ptr %i.brr, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i.i = trunc i64 %i.bta to i8 ; 2 uses
  %i.btc = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.btb)
  call void @llvm.assume(i1 %i.btc)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

bb.yk:                                            ; preds = %bb.yh
  %i.btd = getelementptr inbounds nuw i8, ptr %i.brr, i64 16
  %i.bte = load i8, ptr %i.btd, align 8, !range !292, !noundef !178
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

bb.yl:                                            ; preds = %bb.yh
  %i.btf = getelementptr i8, ptr %i.brr, i64 31
  %i.btg = load i8, ptr %i.btf, align 8, !range !292, !noundef !178
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i: ; preds = %bb.yl, %bb.yk, %bb.yj, %bb.yi
  %.sroa.0.0.i22.i.i.i.i = phi i8 [ %i.bsz, %bb.yi ], [ %switch.idx.cast.i.i.i.i.i.i.i, %bb.yj ], [ %i.bte, %bb.yk ], [ %i.btg, %bb.yl ]
  %i.bth = icmp eq i8 %.sroa.0.0.i22.i.i.i.i, 7
  br i1 %i.bth, label %bb.ym, label %.loopexit242

bb.ym:                                            ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !94074
end_hunk_6
begin_hunk_7_@_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice:bb.a
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.br = getelementptr i8, ptr %i.bq, i64 %.sroa.03.0.i10
  %.sroa.015.0.copyload.i15 = load i16, ptr %i.br, align 1, !alias.scope !99630
  %i.bs = zext i16 %.sroa.015.0.copyload.i15 to i64
  %i.bt = shl nuw nsw i64 %.sroa.03.0.i10, 3
  %i.bu = shl nuw nsw i64 %i.bs, %i.bt
  %i.bv = or i64 %i.bu, %.sroa.0.0.i11
  %i.bw = or disjoint i64 %.sroa.03.0.i10, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12 = phi i64 [ %i.bw, %bb.n ], [ %.sroa.03.0.i10, %bb.m ] ; 3 uses
  %.sroa.0.1.i13 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.0.0.i11, %bb.m ] ; 2 uses
  %i.bx = icmp samesign ult i64 %.sroa.03.1.i12, %i.ah
  br i1 %i.bx, label %bb.p, label %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17

bb.p:                                             ; preds = %bb.o
  %i.by = add i64 %.sroa.03.1.i12, %.sroa.0.1.lcssa ; 2 uses
  %i.bz = icmp ult i64 %i.by, %2
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.by
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !99630, !noundef !178
  %i.cc = zext i8 %i.cb to i64
  %i.cd = shl nuw nsw i64 %.sroa.03.1.i12, 3
  %i.ce = shl nuw nsw i64 %i.cc, %i.cd
  %i.cf = or i64 %i.ce, %.sroa.0.1.i13
  br label %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17

_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i14 = phi i64 [ %i.cf, %bb.p ], [ %.sroa.0.1.i13, %bb.o ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14, ptr %i.cg, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.ch = phi i64 [ %.promoted22, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ci = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cx, %bb.q ] ; 3 uses
  %i.cj = phi i64 [ %.promoted19, %.lr.ph ], [ %i.cz, %bb.q ]
  %.sroa.0.118 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.dc, %bb.q ] ; 2 uses
  %i.ck = phi i64 [ %.promoted, %.lr.ph ], [ %i.db, %bb.q ]
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118
  %.sroa.07.0.copyload = load i64, ptr %i.cl, align 1 ; 2 uses
  %i.cm = xor i64 %i.cj, %.sroa.07.0.copyload     ; 3 uses
  %i.cn = add i64 %i.ci, %i.ck                    ; 3 uses
  %i.co = add i64 %i.ch, %i.cm                    ; 2 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 13)
  %i.cq = xor i64 %i.cp, %i.cn                    ; 3 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 16)
  %i.cs = xor i64 %i.co, %i.cr                    ; 3 uses
  %i.ct = tail call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 32)
  %i.cu = add i64 %i.co, %i.cq                    ; 3 uses
  %i.cv = add i64 %i.cs, %i.ct                    ; 2 uses
  %i.cw = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 17)
  %i.cx = xor i64 %i.cu, %i.cw                    ; 2 uses
  %i.cy = tail call noundef i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 21)
  %i.cz = xor i64 %i.cy, %i.cv                    ; 2 uses
  %i.da = tail call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 32) ; 2 uses
  %i.db = xor i64 %i.cv, %.sroa.07.0.copyload     ; 2 uses
  %i.dc = add nuw i64 %.sroa.0.118, 8             ; 3 uses
  %i.dd = icmp ult i64 %i.dc, %i.ai
  br i1 %i.dd, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17, %bb.j
  %storemerge = phi i64 [ %i.bk, %bb.j ], [ %i.ah, %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtNtCsgNLA4kpd9RZ_7smoltcp4wire3udpINtB5_6PacketRShENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val23 = load i64, ptr %i.e, align 8, !noundef !178 ; 8 uses
  %i.f = icmp ugt i64 %.val23, 1
  br i1 %i.f, label %_RNvMNtNtCsgNLA4kpd9RZ_7smoltcp4wire3udpINtB2_6PacketRShE8src_portCsgZAIVb0XKpv_9ssservice.exit, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2, i64 noundef %.val23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1995) #63
  unreachable

_RNvMNtNtCsgNLA4kpd9RZ_7smoltcp4wire3udpINtB2_6PacketRShE8src_portCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a
  %.sroa.02.0.copyload.i.i = load i16, ptr %.val, align 1, !alias.scope !99637
  %i.g = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.02.0.copyload.i.i)
  store i16 %i.g, ptr %i.d, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = icmp ugt i64 %.val23, 3
  br i1 %i.h, label %_RNvMNtNtCsgNLA4kpd9RZ_7smoltcp4wire3udpINtB2_6PacketRShE8dst_portCsgZAIVb0XKpv_9ssservice.exit, label %bb.c, !prof !192

bb.c:                                             ; preds = %_RNvMNtNtCsgNLA4kpd9RZ_7smoltcp4wire3udpINtB2_6PacketRShE8src_portCsgZAIVb0XKpv_9ssservice.exit
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 2, i64 noundef 4, i64 noundef %.val23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1994) #63
  unreachable

_RNvMNtNtCsgNLA4kpd9RZ_7smoltcp4wire3udpINtB2_6PacketRShE8dst_portCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMNtNtCsgNLA4kpd9RZ_7smoltcp4wire3udpINtB2_6PacketRShE8src_portCsgZAIVb0XKpv_9ssservice.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %.sroa.02.0.copyload.i.i28 = load i16, ptr %i.i, align 1, !alias.scope !99638
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.02.0.copyload.i.i28)
  store i16 %i.j, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = icmp ugt i64 %.val23, 5
  br i1 %i.k, label %_RNvMNtNtCsgNLA4kpd9RZ_7smoltcp4wire3udpINtB2_6PacketRShE3lenCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.d, !prof !192

bb.d:                                             ; preds = %_RNvMNtNtCsgNLA4kpd9RZ_7smoltcp4wire3udpINtB2_6PacketRShE8dst_portCsgZAIVb0XKpv_9ssservice.exit
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef 6, i64 noundef %.val23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1993) #63
  unreachable

_RNvMNtNtCsgNLA4kpd9RZ_7smoltcp4wire3udpINtB2_6PacketRShE3lenCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RNvMNtNtCsgNLA4kpd9RZ_7smoltcp4wire3udpINtB2_6PacketRShE8dst_portCsgZAIVb0XKpv_9ssservice.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %.sroa.02.0.copyload.i.i.i = load i16, ptr %i.l, align 1, !alias.scope !99639
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.02.0.copyload.i.i.i) ; 2 uses
  %i.n = zext i16 %i.m to i64                     ; 3 uses
  %i.o = icmp ult i16 %i.m, 8
  %.not.i = icmp ult i64 %.val23, %i.n
  %or.cond.i = or i1 %i.o, %.not.i
  br i1 %or.cond.i, label %bb.e, label %_RNvMs_NtNtCsgNLA4kpd9RZ_7smoltcp4wire3udpINtB4_6PacketRShE7payloadCsgZAIVb0XKpv_9ssservice.exit, !prof !207

bb.e:                                             ; preds = %_RNvMNtNtCsgNLA4kpd9RZ_7smoltcp4wire3udpINtB2_6PacketRShE3lenCsgZAIVb0XKpv_9ssservice.exit.i
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.n, i64 noundef %.val23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2321) #63
  unreachable

_RNvMs_NtNtCsgNLA4kpd9RZ_7smoltcp4wire3udpINtB4_6PacketRShE7payloadCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMNtNtCsgNLA4kpd9RZ_7smoltcp4wire3udpINtB2_6PacketRShE3lenCsgZAIVb0XKpv_9ssservice.exit.i
  %i.p = add nsw i64 %i.n, -8
  store i64 %i.p, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.q, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.r, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.s = load ptr, ptr %1, align 8, !nonnull !178, !noundef !178
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !178, !align !186, !noundef !178
  %i.v = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noundef nonnull @2828, ptr noundef nonnull %i.a) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.v
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs3_NtNtCsi1FNhPBS7PW_11hickory_net4xfer12dns_exchangeINtB5_21DnsExchangeBackgroundINtNtB7_15dns_multiplexer14DnsMultiplexerINtNtNtB9_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB9_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB2S_17AsyncIoStdAsTokioIB2Q_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEEENtB2U_9TokioTimeENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(1792) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 3 uses
  %i.b = alloca [2 x i8], align 2                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.432.i = alloca [55 x i8], align 1        ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [2 x i8], align 2                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [48 x i8], align 8                ; 5 uses
  %i.m = alloca [72 x i8], align 8                ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [152 x i8], align 8               ; 6 uses
  %i.q = alloca [152 x i8], align 8               ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [56 x i8], align 8                ; 7 uses
  %i.u = alloca [2 x i8], align 2                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [16 x i8], align 16               ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [48 x i8], align 8                ; 7 uses
  %i.z = alloca [48 x i8], align 8                ; 9 uses
  %i.aa = alloca [32 x i8], align 8               ; 6 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [272 x i8], align 8              ; 4 uses
  %i.ad = alloca [184 x i8], align 8              ; 4 uses
  %i.ae = alloca [152 x i8], align 8              ; 8 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [72 x i8], align 8               ; 4 uses
  %i.ah = alloca [48 x i8], align 8               ; 6 uses
  %.sroa.019.i.i = alloca [40 x i8], align 8      ; 7 uses
  %.sroa.721.i.i = alloca [15 x i8], align 1      ; 7 uses
  %i.ai = alloca [32 x i8], align 4               ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [2 x i8], align 2                ; 5 uses
  %i.an = alloca [16 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 9 uses
  %i.ap = alloca [24 x i8], align 8               ; 9 uses
  %i.aq = alloca [32 x i8], align 8               ; 9 uses
  %i.ar = alloca [32 x i8], align 8               ; 9 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [32 x i8], align 8               ; 7 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [32 x i8], align 8               ; 7 uses
  %i.ax = alloca [32 x i8], align 8               ; 7 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [32 x i8], align 8               ; 7 uses
  %i.bc = alloca [32 x i8], align 8               ; 7 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [16 x i8], align 16              ; 4 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [8 x i8], align 8                ; 4 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [16 x i8], align 8               ; 5 uses
  %i.bp = alloca [16 x i8], align 16              ; 4 uses
  %i.bq = alloca [16 x i8], align 8               ; 5 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [16 x i8], align 8               ; 5 uses
  %i.bw = alloca [16 x i8], align 8               ; 5 uses
  %i.bx = alloca [16 x i8], align 8               ; 5 uses
  %i.by = alloca [2 x i8], align 2                ; 5 uses
  %i.bz = alloca [16 x i8], align 8               ; 5 uses
  %i.ca = alloca [16 x i8], align 8               ; 5 uses
  %i.cb = alloca [16 x i8], align 8               ; 5 uses
  %i.cc = alloca [16 x i8], align 8               ; 5 uses
  %i.cd = alloca [16 x i8], align 8               ; 5 uses
  %i.ce = alloca [16 x i8], align 8               ; 5 uses
  %i.cf = alloca [16 x i8], align 16              ; 4 uses
  %i.cg = alloca [16 x i8], align 8               ; 5 uses
  %i.ch = alloca [8 x i8], align 8                ; 10 uses
  %i.ci = alloca [16 x i8], align 16              ; 4 uses
  %i.cj = alloca [16 x i8], align 8               ; 5 uses
  %i.ck = alloca [32 x i8], align 8               ; 7 uses
  %i.cl = alloca [8 x i8], align 8                ; 4 uses
  %i.cm = alloca [16 x i8], align 8               ; 5 uses
  %i.cn = alloca [16 x i8], align 8               ; 5 uses
  %i.co = alloca [32 x i8], align 8               ; 7 uses
  %i.cp = alloca [24 x i8], align 8               ; 6 uses
  %i.cq = alloca [32 x i8], align 4               ; 13 uses
  %i.cr = alloca [56 x i8], align 8               ; 10 uses
  %i.cs = alloca [32 x i8], align 8               ; 8 uses
  %i.ct = alloca [32 x i8], align 4               ; 13 uses
  %i.cu = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.3.sroa.2.sroa.3.i.i.i = alloca [18 x i8], align 4 ; 11 uses
  %i.cv = alloca [32 x i8], align 8               ; 7 uses
  %i.cw = alloca [32 x i8], align 4               ; 9 uses
  %i.cx = alloca [16 x i8], align 8               ; 5 uses
  %i.cy = alloca [16 x i8], align 8               ; 5 uses
  %i.cz = alloca [32 x i8], align 4               ; 11 uses
  %.sroa.31.sroa.5.i.i.i = alloca [18 x i8], align 2 ; 7 uses
  %i.da = alloca [32 x i8], align 8               ; 7 uses
  %i.db = alloca [72 x i8], align 8               ; 4 uses
  %i.dc = alloca [48 x i8], align 8               ; 6 uses
  %i.dd = alloca [72 x i8], align 8               ; 6 uses
  %.sroa.865.i.i = alloca [71 x i8], align 1      ; 8 uses
  %i.de = alloca [72 x i8], align 8               ; 5 uses
  %i.df = alloca [16 x i8], align 8               ; 5 uses
  %i.dg = alloca [16 x i8], align 8               ; 5 uses
  %i.dh = alloca [16 x i8], align 8               ; 5 uses
  %i.di = alloca [72 x i8], align 8               ; 5 uses
  %i.dj = alloca [2 x i8], align 2                ; 6 uses
  %i.dk = alloca [48 x i8], align 8               ; 13 uses
  %i.dl = alloca [24 x i8], align 8               ; 4 uses
  %i.dm = alloca [32 x i8], align 8               ; 7 uses
  %i.dn = alloca [32 x i8], align 8               ; 7 uses
  %i.do = alloca [32 x i8], align 8               ; 7 uses
  %i.dp = alloca [72 x i8], align 8               ; 14 uses
  %i.dq = alloca [8 x i8], align 8                ; 4 uses
  %i.dr = alloca [16 x i8], align 16              ; 4 uses
  %i.ds = alloca [32 x i8], align 8               ; 7 uses
  %i.dt = alloca [48 x i8], align 8               ; 5 uses
  %i.du = alloca [16 x i8], align 8               ; 5 uses
  %i.dv = alloca [16 x i8], align 8               ; 5 uses
  %i.dw = alloca [16 x i8], align 8               ; 5 uses
  %i.dx = alloca [176 x i8], align 8              ; 9 uses
  %i.dy = alloca [184 x i8], align 8              ; 6 uses
  %i.dz = alloca [176 x i8], align 8              ; 7 uses
  %i.ea = alloca [72 x i8], align 8               ; 20 uses
  %i.eb = alloca [16 x i8], align 8               ; 5 uses
  %i.ec = alloca [32 x i8], align 4               ; 4 uses
  %i.ed = alloca [16 x i8], align 8               ; 5 uses
  %i.ee = alloca [16 x i8], align 8               ; 5 uses
  %i.ef = alloca [272 x i8], align 8              ; 13 uses
  %i.eg = alloca [32 x i8], align 8               ; 7 uses
  %i.eh = alloca [32 x i8], align 8               ; 7 uses
  %i.ei = alloca [16 x i8], align 16              ; 4 uses
  %i.ej = alloca [16 x i8], align 8               ; 5 uses
  %i.ek = alloca [80 x i8], align 8               ; 13 uses
  %i.el = alloca [80 x i8], align 8               ; 6 uses
  %i.em = alloca [280 x i8], align 8              ; 10 uses
  %i.en = alloca [16 x i8], align 8               ; 5 uses
  %i.eo = alloca [16 x i8], align 8               ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 2 uses
  %i.eq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 32 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 40 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 9 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 7 uses
  %.sroa.418.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.011.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.011.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %.sroa.865.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 4 uses
  %.sroa.5204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %.sroa.8205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 33
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 11 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 17 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 8 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 9 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i441.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i442.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.52.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 17 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %.sroa.6285.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %.sroa.6285.0..sroa_idx286.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %.sroa.6545.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ct, i64 6
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cq, i64 6
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ct, i64 28
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %.sroa.4303.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %.sroa.4307.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.073.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.073.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.474.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.gl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.091.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.091.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.492.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 8 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.4371.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.0206.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.0206.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.4207.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.0226.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0226.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.4227.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.4379.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.0216.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0216.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.4217.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.4329.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.0134.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.0134.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.4135.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.4345.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.0155.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.0155.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.4156.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.4353.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.0165.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.0165.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.4166.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.6239.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1274
  %.sroa.4337.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.0144.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.0144.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.4145.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.0190.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.0190.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.4191.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.31.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1330
  %.sroa.31.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1348
  %.sroa.31.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %.sroa.31.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1356
  %.sroa.31.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1358
  %i.hj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.0116.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.0116.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.4117.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.hk = getelementptr inbounds nuw i8, ptr %i.cz, i64 6
  %i.hl = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.hm = getelementptr inbounds nuw i8, ptr %i.cz, i64 28
  %i.hn = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %i.ho = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.hp = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %.sroa.645.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 28
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 30
  %.sroa.434.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %.sroa.438.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.hr = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.019.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.019.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %.sroa.527.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 3 uses
  %.sroa.628.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %.sroa.729.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 2 uses
  %.sroa.729.sroa.4.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %.sroa.729.sroa.5.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 34
  %.sroa.729.sroa.6.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 52
  %.sroa.729.sroa.7.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %.sroa.729.sroa.8.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 60
  %.sroa.729.sroa.9.0..sroa.729.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 62
  %.sroa.4292.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %.sroa.4296.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dz, i64 134 ; 2 uses
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 176
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.031.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.031.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.hx = getelementptr inbounds nuw i8, ptr %i.dz, i64 152
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dz, i64 160
  %i.hz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %.sroa.041.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.041.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %.sroa.6.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.ie = getelementptr inbounds nuw i8, ptr %i.em, i64 272 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %.sroa.785.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %.sroa.886.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ek, i64 72 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ef, i64 184
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ef, i64 192
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ef, i64 200
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ef, i64 224
  %i.il = getelementptr inbounds nuw i8, ptr %i.ef, i64 232
  %i.im = getelementptr inbounds nuw i8, ptr %i.ef, i64 240
  %i.in = getelementptr inbounds nuw i8, ptr %i.ae, i64 134
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.iq = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.is = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.it = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.iw = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ix = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.iy = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.029.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.029.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.432.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.432.i, i64 7
  %.sroa.461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.09.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.09.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.jd = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.019.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.019.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.jh = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ji = getelementptr inbounds nuw i8, ptr %i.el, i64 72 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.033.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.sroa.033.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %.sroa.3.sroa.2.sroa.3.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.sroa.3.i.i.i, i64 4
end_hunk_7
begin_hunk_8_@_RNvXs3_NtNtCsi1FNhPBS7PW_11hickory_net4xfer12dns_exchangeINtB5_21DnsExchangeBackgroundINtNtB7_15dns_multiplexer14DnsMultiplexerINtNtNtB9_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB9_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB2S_17AsyncIoStdAsTokioIB2Q_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEEENtB2U_9TokioTimeENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice:bb.a
bb.dw:                                            ; preds = %bb.dx, %bb.dv, %bb.du, %bb.dt, %bb.ds
  %i.agh = load i64, ptr %i.gm, align 8, !alias.scope !100007, !noalias !100006, !noundef !178
  %i.agi = add i64 %i.agh, %i.afq                 ; 2 uses
  store i64 %i.agi, ptr %i.gm, align 8, !alias.scope !100007, !noalias !100006
  %i.agj = load i64, ptr %i.gn, align 8, !alias.scope !100007, !noalias !100006, !noundef !178 ; 2 uses
  %i.agk = icmp sgt i64 %i.agj, -1
  call void @llvm.assume(i1 %i.agk)
  %i.agl = icmp ult i64 %i.agi, %i.agj
  %i.agm = load atomic i64, ptr @_RNvNtCs1kwRxRulhfk_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !100005
  %i.agn = icmp eq i64 %i.agm, 0                  ; 2 uses
  br i1 %i.agl, label %bb.ef, label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %i.ago = load ptr, ptr @_RNvNvXs_NtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_streamINtB6_9TcpStreampENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nexts6_10___CALLSITE, align 8, !noalias !100005, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !100005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !100005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !100005
  %i.agq = load i64, ptr %i.gn, align 8, !alias.scope !100007, !noalias !100006, !noundef !178 ; 2 uses
  store i64 %i.agq, ptr %i.bm, align 8, !noalias !100005
  %i.agr = icmp sgt i64 %i.agq, -1
  call void @llvm.assume(i1 %i.agr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !100005
  store ptr %i.bm, ptr %i.bl, align 8, !noalias !100005
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4371.0..sroa_idx.i.i.i.i, align 8, !noalias !100005
  store ptr @3355, ptr %i.bn, align 8, !noalias !100005
  store ptr %i.bl, ptr %i.gs, align 8, !noalias !100005
  store ptr %i.bn, ptr %i.bo, align 8, !noalias !100005
  store ptr @19, ptr %i.gt, align 8, !noalias !100005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !100005
  store i64 1, ptr %i.au, align 8, !noalias !100005
  store ptr %i.bo, ptr %.sroa.0206.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !100005
  store i64 1, ptr %.sroa.0206.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !100005
  store ptr %i.agp, ptr %.sroa.4207.0..sroa_idx.i.i.i.i, align 8, !noalias !100005
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ago, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au) #53, !noalias !100010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !100005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !100005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !100005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !100005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !100005
  br label %bb.dw

bb.dy:                                            ; preds = %bb.dw
  br i1 %i.agn, label %bb.dz, label %bb.cx

bb.dz:                                            ; preds = %bb.dy
  %i.ags = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_NtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_streamINtB6_9TcpStreampENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nexts8_10___CALLSITE, i64 16) monotonic, align 8, !noalias !100005 ; 3 uses
  switch i8 %i.ags, label %bb.ea [
    i8 0, label %bb.cx
    i8 1, label %bb.eb
    i8 2, label %bb.eb
  ], !prof !185

bb.ea:                                            ; preds = %bb.dz
  %i.agt = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs_NtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_streamINtB6_9TcpStreampENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nexts8_10___CALLSITE) #60, !noalias !100010 ; 2 uses
  %i.agu = icmp eq i8 %i.agt, 0
  br i1 %i.agu, label %bb.cx, label %bb.eb

bb.eb:                                            ; preds = %bb.dz, %bb.ea, %bb.dz
  %.sroa.0224.0.i.i.i.i = phi i8 [ %i.agt, %bb.ea ], [ %i.ags, %bb.dz ], [ %i.ags, %bb.dz ]
  %i.agv = load ptr, ptr @_RNvNvXs_NtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_streamINtB6_9TcpStreampENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nexts8_10___CALLSITE, align 8, !noalias !100005, !nonnull !178, !align !186, !noundef !178
  %i.agw = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.agv, i8 noundef %.sroa.0224.0.i.i.i.i) #53, !noalias !100010
  br i1 %i.agw, label %bb.ec, label %bb.cx

bb.ec:                                            ; preds = %bb.eb
  %i.agx = load ptr, ptr @_RNvNvXs_NtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_streamINtB6_9TcpStreampENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nexts8_10___CALLSITE, align 8, !noalias !100005, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !100005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !100005
  store <2 x ptr> <ptr @3356, ptr inttoptr (i64 63 to ptr)>, ptr %i.bf, align 16, !noalias !100005
  store ptr %i.bf, ptr %i.bg, align 8, !noalias !100005
  store ptr @19, ptr %i.gu, align 8, !noalias !100005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !100005
  store i64 1, ptr %i.as, align 8, !noalias !100005
  store ptr %i.bg, ptr %.sroa.0226.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !100005
  store i64 1, ptr %.sroa.0226.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !100005
  store ptr %i.agy, ptr %.sroa.4227.0..sroa_idx.i.i.i.i, align 8, !noalias !100005
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.agx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as) #53, !noalias !100010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !100005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !100005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !100005
  br label %bb.cx

bb.ed:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !100005
  store i64 %.sroa.5245.0.copyload.i.i.i.i, ptr %i.be, align 8, !noalias !100005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !100005
  store i64 %.sroa.5243.sroa.4.0.copyload.i.i.i.i, ptr %i.bd, align 8, !noalias !100005
  %i.agz = icmp sgt i64 %.sroa.5243.sroa.4.0.copyload.i.i.i.i, -1
  call void @llvm.assume(i1 %i.agz)
  %i.aha = icmp eq i64 %.sroa.5245.0.copyload.i.i.i.i, %.sroa.5243.sroa.4.0.copyload.i.i.i.i
  br i1 %i.aha, label %bb.bk, label %bb.ee, !prof !192

bb.ee:                                            ; preds = %bb.ed
  call void @_RINvNtCsf3Ta7LF998c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bd, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3357) #63, !noalias !100010
  unreachable

bb.ef:                                            ; preds = %bb.dw
  br i1 %i.agn, label %bb.eg, label %.backedge

bb.eg:                                            ; preds = %bb.ef
  %i.ahb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_NtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_streamINtB6_9TcpStreampENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nexts7_10___CALLSITE, i64 16) monotonic, align 8, !noalias !100005 ; 3 uses
  switch i8 %i.ahb, label %bb.eh [
    i8 0, label %.backedge
    i8 1, label %bb.ei
    i8 2, label %bb.ei
  ], !prof !185

bb.eh:                                            ; preds = %bb.eg
  %i.ahc = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs_NtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_streamINtB6_9TcpStreampENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nexts7_10___CALLSITE) #60, !noalias !100010 ; 2 uses
  %i.ahd = icmp eq i8 %i.ahc, 0
  br i1 %i.ahd, label %.backedge, label %bb.ei

bb.ei:                                            ; preds = %bb.eg, %bb.eh, %bb.eg
  %.sroa.0214.0.i.i.i.i = phi i8 [ %i.ahc, %bb.eh ], [ %i.ahb, %bb.eg ], [ %i.ahb, %bb.eg ]
  %i.ahe = load ptr, ptr @_RNvNvXs_NtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_streamINtB6_9TcpStreampENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nexts7_10___CALLSITE, align 8, !noalias !100005, !nonnull !178, !align !186, !noundef !178
  %i.ahf = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ahe, i8 noundef %.sroa.0214.0.i.i.i.i) #53, !noalias !100010
  br i1 %i.ahf, label %bb.ej, label %.backedge

bb.ej:                                            ; preds = %bb.ei
  %i.ahg = load ptr, ptr @_RNvNvXs_NtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_streamINtB6_9TcpStreampENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nexts7_10___CALLSITE, align 8, !noalias !100005, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !100005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !100005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !100005
  %i.ahi = load i64, ptr %i.gn, align 8, !alias.scope !100007, !noalias !100006, !noundef !178 ; 2 uses
  store i64 %i.ahi, ptr %i.bi, align 8, !noalias !100005
  %i.ahj = icmp sgt i64 %i.ahi, -1
  call void @llvm.assume(i1 %i.ahj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !100005
  store ptr %i.bi, ptr %i.bh, align 8, !noalias !100005
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4379.0..sroa_idx.i.i.i.i, align 8, !noalias !100005
  store ptr @3358, ptr %i.bj, align 8, !noalias !100005
  store ptr %i.bh, ptr %i.gv, align 8, !noalias !100005
  store ptr %i.bj, ptr %i.bk, align 8, !noalias !100005
  store ptr @19, ptr %i.gw, align 8, !noalias !100005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !100005
  store i64 1, ptr %i.at, align 8, !noalias !100005
  store ptr %i.bk, ptr %.sroa.0216.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !100005
  store i64 1, ptr %.sroa.0216.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !100005
  store ptr %i.ahh, ptr %.sroa.4217.0..sroa_idx.i.i.i.i, align 8, !noalias !100005
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ahg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at) #53, !noalias !100010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !100005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !100005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !100005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !100005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !100005
  br label %.backedge

.backedge:                                        ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.dc, %bb.cx
  br label %bb.bj

bb.ek:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit466.i.i.i.i
  %i.ahk = icmp slt i64 %i.aaf, 0
  %i.ahl = add i64 %i.aaf, -9223372036854775807
  %i.ahm = select i1 %i.ahk, i64 %i.ahl, i64 0
  switch i64 %i.ahm, label %bb.au [
    i64 0, label %bb.em
    i64 1, label %bb.en
    i64 2, label %bb.eo
  ]

thread-pre-split747.i.i.i.i:                      ; preds = %bb.ff, %bb.fe
  %.sroa.7.0.copyload.pr.i.i.i.i = load i64, ptr %i.fn, align 8, !alias.scope !100007, !noalias !100006
  br label %bb.el

bb.el:                                            ; preds = %bb.ew, %thread-pre-split747.i.i.i.i
  %.sroa.7.0.copyload.i.i.i.i = phi i64 [ %.sroa.7.0.copyload.pr.i.i.i.i, %thread-pre-split747.i.i.i.i ], [ %i.air, %bb.ew ] ; 7 uses
  %.sroa.024.0.copyload.i.i.i.i = load i64, ptr %i.fh, align 8, !alias.scope !100007, !noalias !100006 ; 7 uses
  %.sroa.627.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.fq, align 8, !alias.scope !100007, !noalias !100006 ; 5 uses
  %.sroa.627.sroa.5.0.copyload.i.i.i.i = load i64, ptr %i.fo, align 8, !alias.scope !100007, !noalias !100006 ; 4 uses
  %.sroa.8.0.copyload.i.i.i.i = load i64, ptr %i.fm, align 8, !alias.scope !100007, !noalias !100006 ; 2 uses
  store i64 -1, ptr %i.fh, align 8, !alias.scope !100007, !noalias !100006
  %.not425.i.i.i.i = icmp eq i64 %.sroa.024.0.copyload.i.i.i.i, -1
  br i1 %.not425.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit466.i.i.i.i.backedge, label %bb.fg

bb.em:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !100005
  %i.ahn = load i64, ptr %i.fn, align 8, !alias.scope !100007, !noalias !100006, !noundef !178 ; 4 uses
  %i.aho = icmp ugt i64 %i.ahn, 2
  br i1 %i.aho, label %bb.eu, label %bb.et, !prof !187

bb.en:                                            ; preds = %bb.ek
  %i.ahp = load i64, ptr %i.fm, align 8, !alias.scope !100007, !noalias !100006, !noundef !178 ; 4 uses
  %i.ahq = load i64, ptr %i.fn, align 8, !alias.scope !100007, !noalias !100006, !noundef !178 ; 4 uses
  %i.ahr = icmp ugt i64 %i.ahp, %i.ahq
  br i1 %i.ahr, label %bb.fd, label %bb.ex, !prof !187

bb.eo:                                            ; preds = %bb.ek
  call void @llvm.experimental.noalias.scope.decl(metadata !100030)
  call void @llvm.experimental.noalias.scope.decl(metadata !100031)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !100032
  %i.ahs = load i64, ptr %i.fj, align 8, !range !227, !alias.scope !100033, !noalias !100034, !noundef !178 ; 2 uses
  %i.aht = icmp slt i64 %i.ahs, 0
  %i.ahu = add i64 %i.ahs, 9223372036854775807
  %i.ahv = and i64 %i.ahu, -3
  %switch.selectcmp14.i.i.i.i.i.i = icmp eq i64 %i.ahv, 0
  %switch.selectcmp.i.i.i.i.i.i = and i1 %i.aht, %switch.selectcmp14.i.i.i.i.i.i
  %i.ahw = zext i1 %switch.selectcmp.i.i.i.i.i.i to i8
  %i.ahx = load i8, ptr %i.fk, align 8, !range !181, !alias.scope !100033, !noalias !100034, !noundef !178
  store ptr %2, ptr %i.ap, align 8, !noalias !100032
  store ptr %0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !100032
  store i8 %i.ahw, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !100032
  store i8 %i.ahx, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !100032
  %i.ahy = call fastcc { i64, ptr } @_RINvNtCs3Ol6WPi9G6e_12tokio_rustls6client22poll_handle_early_dataINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB14_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.fj, ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap, ptr noalias nofree noundef align 8 dereferenceable(16) %i.fl, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #53, !noalias !100010 ; 2 uses
  %i.ahz = extractvalue { i64, ptr } %i.ahy, 0
  switch i64 %i.ahz, label %bb.eq [
    i64 2, label %bb.ep
    i64 0, label %bb.er
  ]

bb.ep:                                            ; preds = %bb.eo
  %i.aia = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 1, !range !181, !noalias !100032, !noundef !178
  store i8 %i.aia, ptr %i.fk, align 8, !alias.scope !100033, !noalias !100034
  br label %bb.es

bb.eq:                                            ; preds = %bb.eo
  %i.aib = extractvalue { i64, ptr } %i.ahy, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aib) ]
  br label %bb.es

bb.er:                                            ; preds = %bb.eo
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !noalias !100032
  %.val13.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !100032, !nonnull !178, !align !186, !noundef !178
  %i.aic = call fastcc { i64, ptr } @_RNvXs2_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB5_6StreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBW_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flushCsgZAIVb0XKpv_9ssservice(ptr %.val.i.i.i.i.i.i, ptr nonnull %.val13.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #53, !noalias !100010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !100032
  br label %_RNvXs0_NtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompatINtB5_17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB5_17AsyncIoStdAsTokioIBS_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtCsjerix4WXF9m_10futures_io6if_std10AsyncWrite10poll_flushCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

bb.es:                                            ; preds = %bb.eq, %bb.ep
  %.sroa.4.1.i.i.i.i.i.i = phi ptr [ undef, %bb.ep ], [ %i.aib, %bb.eq ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 1, %bb.ep ], [ 0, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !100032
  %i.aid = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.aie = insertvalue { i64, ptr } %i.aid, ptr %.sroa.4.1.i.i.i.i.i.i, 1
  br label %_RNvXs0_NtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompatINtB5_17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB5_17AsyncIoStdAsTokioIBS_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtCsjerix4WXF9m_10futures_io6if_std10AsyncWrite10poll_flushCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvXs0_NtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompatINtB5_17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB5_17AsyncIoStdAsTokioIBS_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtCsjerix4WXF9m_10futures_io6if_std10AsyncWrite10poll_flushCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.es, %bb.er
  %.merged.i.i.i.i.i.i = phi { i64, ptr } [ %i.aie, %bb.es ], [ %i.aic, %bb.er ] ; 2 uses
  %i.aif = extractvalue { i64, ptr } %.merged.i.i.i.i.i.i, 0
  %i.aig = trunc nuw i64 %i.aif to i1
  br i1 %i.aig, label %_RNvXs_NtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_streamINtB4_9TcpStreamINtNtNtB8_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB18_17AsyncIoStdAsTokioIB16_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread74.i.i.i, label %bb.ff

bb.et:                                            ; preds = %bb.em
  %i.aih = sub nuw nsw i64 2, %i.ahn
  %i.aii = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.ahn
  %i.aij = load ptr, ptr %i.fq, align 8, !alias.scope !100007, !noalias !100006, !nonnull !178, !noundef !178
  %i.aik = load i64, ptr %i.fo, align 8, !alias.scope !100007, !noalias !100006, !noundef !178
  store ptr %i.aii, ptr %i.cs, align 8, !noalias !100005
  store i64 %i.aih, ptr %i.fr, align 8, !noalias !100005
  store ptr %i.aij, ptr %i.fs, align 8, !noalias !100005
  store i64 %i.aik, ptr %i.ft, align 8, !noalias !100005
  %i.ail = call fastcc { i64, ptr } @_RNvXsa_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBZ_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite19poll_write_vectoredCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(1496) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cs, i64 noundef 2) #53, !noalias !100010 ; 2 uses
  %i.aim = extractvalue { i64, ptr } %i.ail, 0
  %i.ain = extractvalue { i64, ptr } %i.ail, 1    ; 2 uses
  switch i64 %i.aim, label %bb.ev [
    i64 2, label %.loopexit.i.i.i
    i64 0, label %bb.ew
  ]

bb.eu:                                            ; preds = %bb.em
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ahn, i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3360) #63, !noalias !100010
  unreachable

bb.ev:                                            ; preds = %bb.et
  %i.aio = ptrtoint ptr %i.ain to i64
  br label %.loopexit.i.i.i

bb.ew:                                            ; preds = %bb.et
  %i.aip = ptrtoint ptr %i.ain to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !100005
  %i.aiq = load i64, ptr %i.fn, align 8, !alias.scope !100007, !noalias !100006, !noundef !178
  %i.air = add i64 %i.aiq, %i.aip                 ; 2 uses
  store i64 %i.air, ptr %i.fn, align 8, !alias.scope !100007, !noalias !100006
  br label %bb.el

.loopexit.i.i.i:                                  ; preds = %bb.et, %bb.ev
  %.sroa.19.0.i.i.i = phi i64 [ %i.aio, %bb.ev ], [ undef, %bb.et ]
  %.sroa.0.0.i.i.i = phi i64 [ -1, %bb.ev ], [ -3, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !100005
  br label %_RNvXs_NtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_streamINtB4_9TcpStreamINtNtNtB8_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB18_17AsyncIoStdAsTokioIB16_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.ex:                                            ; preds = %bb.en
  %i.ais = load ptr, ptr %i.fo, align 8, !alias.scope !100007, !noalias !100006, !nonnull !178, !noundef !178
  %i.ait = sub nuw i64 %i.ahq, %i.ahp             ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.ahp ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100035)
  call void @llvm.experimental.noalias.scope.decl(metadata !100036)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !100037
  %i.aiv = load i64, ptr %i.fj, align 8, !range !227, !alias.scope !100038, !noalias !100039, !noundef !178 ; 2 uses
  %i.aiw = icmp slt i64 %i.aiv, 0
  %i.aix = add i64 %i.aiv, 9223372036854775807
  %i.aiy = and i64 %i.aix, -3
  %switch.selectcmp20.i.i.i.i.i.i = icmp eq i64 %i.aiy, 0
  %switch.selectcmp.i.i440.i.i.i.i = and i1 %i.aiw, %switch.selectcmp20.i.i.i.i.i.i
  %i.aiz = zext i1 %switch.selectcmp.i.i440.i.i.i.i to i8
  %i.aja = load i8, ptr %i.fk, align 8, !range !181, !alias.scope !100038, !noalias !100039, !noundef !178
  store ptr %2, ptr %i.ao, align 8, !noalias !100037
  store ptr %0, ptr %.sroa.2.0..sroa_idx.i.i441.i.i.i.i, align 8, !noalias !100037
  store i8 %i.aiz, ptr %.sroa.3.0..sroa_idx.i.i442.i.i.i.i, align 8, !noalias !100037
  store i8 %i.aja, ptr %.sroa.52.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !100037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !100037
  store ptr %i.aiu, ptr %i.an, align 8, !noalias !100037
  store i64 %i.ait, ptr %i.fp, align 8, !noalias !100037
  %i.ajb = call fastcc { i64, ptr } @_RINvNtCs3Ol6WPi9G6e_12tokio_rustls6client22poll_handle_early_dataINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB14_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.fj, ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao, ptr noalias nofree noundef align 8 dereferenceable(16) %i.fl, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.an, i64 noundef 1) #53, !noalias !100010 ; 2 uses
  %i.ajc = extractvalue { i64, ptr } %i.ajb, 0
  %i.ajd = extractvalue { i64, ptr } %i.ajb, 1    ; 4 uses
  switch i64 %i.ajc, label %bb.ez [
    i64 2, label %bb.ey
    i64 0, label %bb.fa
  ]

bb.ey:                                            ; preds = %bb.ex
  %i.aje = load i8, ptr %.sroa.52.0..sroa_idx.i.i.i.i.i.i, align 1, !range !181, !noalias !100037, !noundef !178
  store i8 %i.aje, ptr %i.fk, align 8, !alias.scope !100038, !noalias !100039
  br label %bb.fc

bb.ez:                                            ; preds = %bb.ex
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ajd) ]
  br label %bb.fc

bb.fa:                                            ; preds = %bb.ex
  %i.ajf = icmp eq ptr %i.ajd, null
  br i1 %i.ajf, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !100037
  %.val.i.i445.i.i.i.i = load ptr, ptr %i.ao, align 8, !noalias !100037
  %.val19.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i441.i.i.i.i, align 8, !noalias !100037
  %i.ajg = call fastcc { i64, ptr } @_RNvXs2_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB5_6StreamINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBW_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionENtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_writeCsgZAIVb0XKpv_9ssservice(ptr %.val.i.i445.i.i.i.i, ptr %.val19.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aiu, i64 noundef range(i64 0, -9223372036854775808) %i.ait) #53, !noalias !100010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !100037
  br label %_RNvXs0_NtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompatINtB5_17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB5_17AsyncIoStdAsTokioIBS_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtCsjerix4WXF9m_10futures_io6if_std10AsyncWrite10poll_writeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

bb.fc:                                            ; preds = %bb.fa, %bb.ez, %bb.ey
  %.sroa.5.1.i.i.i.i.i.i = phi ptr [ undef, %bb.ey ], [ %i.ajd, %bb.ez ], [ %i.ajd, %bb.fa ]
  %.sroa.0.1.i.i443.i.i.i.i = phi i64 [ 2, %bb.ey ], [ 1, %bb.ez ], [ 0, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !100037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !100037
  %i.ajh = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i.i443.i.i.i.i, 0
  %i.aji = insertvalue { i64, ptr } %i.ajh, ptr %.sroa.5.1.i.i.i.i.i.i, 1
  br label %_RNvXs0_NtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompatINtB5_17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB5_17AsyncIoStdAsTokioIBS_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtCsjerix4WXF9m_10futures_io6if_std10AsyncWrite10poll_writeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvXs0_NtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompatINtB5_17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB5_17AsyncIoStdAsTokioIBS_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtCsjerix4WXF9m_10futures_io6if_std10AsyncWrite10poll_writeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.fc, %bb.fb
  %.merged.i.i444.i.i.i.i = phi { i64, ptr } [ %i.aji, %bb.fc ], [ %i.ajg, %bb.fb ] ; 2 uses
  %i.ajj = extractvalue { i64, ptr } %.merged.i.i444.i.i.i.i, 0
  %i.ajk = extractvalue { i64, ptr } %.merged.i.i444.i.i.i.i, 1 ; 2 uses
  switch i64 %i.ajj, label %.thread.i.i.i [
    i64 2, label %_RNvXs_NtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_streamINtB4_9TcpStreamINtNtNtB8_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB18_17AsyncIoStdAsTokioIB16_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread74.i.i.i
    i64 0, label %bb.fe
  ]

bb.fd:                                            ; preds = %bb.en
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ahp, i64 noundef %i.ahq, i64 noundef %i.ahq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3361) #63, !noalias !100010
  unreachable

bb.fe:                                            ; preds = %_RNvXs0_NtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompatINtB5_17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB5_17AsyncIoStdAsTokioIBS_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtCsjerix4WXF9m_10futures_io6if_std10AsyncWrite10poll_writeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.ajl = ptrtoint ptr %i.ajk to i64
  %i.ajm = load i64, ptr %i.fm, align 8, !alias.scope !100007, !noalias !100006, !noundef !178
  %i.ajn = add i64 %i.ajm, %i.ajl
  store i64 %i.ajn, ptr %i.fm, align 8, !alias.scope !100007, !noalias !100006
  br label %thread-pre-split747.i.i.i.i

bb.ff:                                            ; preds = %_RNvXs0_NtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompatINtB5_17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB5_17AsyncIoStdAsTokioIBS_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtCsjerix4WXF9m_10futures_io6if_std10AsyncWrite10poll_flushCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.ajo = extractvalue { i64, ptr } %.merged.i.i.i.i.i.i, 1 ; 2 uses
  %.not424.i.i.i.i = icmp eq ptr %i.ajo, null
  br i1 %.not424.i.i.i.i, label %thread-pre-split747.i.i.i.i, label %.thread.i.i.i

bb.fg:                                            ; preds = %bb.el
  %i.ajp = icmp slt i64 %.sroa.024.0.copyload.i.i.i.i, 0
  %i.ajq = add i64 %.sroa.024.0.copyload.i.i.i.i, -9223372036854775807
  %i.ajr = select i1 %i.ajp, i64 %i.ajq, i64 0
  switch i64 %i.ajr, label %bb.au [
    i64 0, label %bb.fh
    i64 1, label %bb.fi
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit466.i.i.i.i.backedge
  ]

bb.fh:                                            ; preds = %bb.fg
  %i.ajs = icmp ult i64 %.sroa.7.0.copyload.i.i.i.i, 2
  br i1 %i.ajs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit457.i.i.i.i, label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  %i.ajt = ptrtoint ptr %.sroa.627.sroa.0.0.copyload.i.i.i.i to i64 ; 2 uses
  %i.aju = icmp sgt i64 %.sroa.7.0.copyload.i.i.i.i, -1
  call void @llvm.assume(i1 %i.aju)
  %i.ajv = icmp ult i64 %.sroa.8.0.copyload.i.i.i.i, %.sroa.7.0.copyload.i.i.i.i
  br i1 %i.ajv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit487.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit478.i.i.i.i

bb.fj:                                            ; preds = %bb.fh
  %i.ajw = icmp sgt i64 %.sroa.627.sroa.5.0.copyload.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ajw)
  %i.ajx = add nuw i64 %.sroa.627.sroa.5.0.copyload.i.i.i.i, 2
  %i.ajy = icmp ult i64 %.sroa.7.0.copyload.i.i.i.i, %i.ajx
  br i1 %i.ajy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit472.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit463.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit457.i.i.i.i: ; preds = %bb.fh
  %.sroa.8.32.extract.trunc.i.i.i.i = trunc i64 %.sroa.8.0.copyload.i.i.i.i to i16
  store i64 %.sroa.024.0.copyload.i.i.i.i, ptr %i.fh, align 8, !alias.scope !100007, !noalias !100006
  store i64 %.sroa.7.0.copyload.i.i.i.i, ptr %i.fn, align 8, !alias.scope !100007, !noalias !100006
  store i16 %.sroa.8.32.extract.trunc.i.i.i.i, ptr %i.fm, align 8, !alias.scope !100007, !noalias !100006
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit466.i.i.i.i.backedge

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit463.i.i.i.i: ; preds = %bb.fj
  store i64 -9223372036854775807, ptr %i.fh, align 8, !alias.scope !100007, !noalias !100006
  %i.ajz = icmp eq i64 %.sroa.024.0.copyload.i.i.i.i, 0
  br i1 %i.ajz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit466.i.i.i.i.backedge, label %bb.fk

bb.fk:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit463.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.627.sroa.0.0.copyload.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.627.sroa.0.0.copyload.i.i.i.i, i64 noundef %.sroa.024.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !100040
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit466.i.i.i.i.backedge

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit472.i.i.i.i: ; preds = %bb.fj
  %i.aka = add i64 %.sroa.7.0.copyload.i.i.i.i, -2
  store i64 -9223372036854775808, ptr %i.fh, align 8, !alias.scope !100007, !noalias !100006
  store i64 %.sroa.024.0.copyload.i.i.i.i, ptr %i.fq, align 8, !alias.scope !100007, !noalias !100006
  store ptr %.sroa.627.sroa.0.0.copyload.i.i.i.i, ptr %i.fo, align 8, !alias.scope !100007, !noalias !100006
  store i64 %.sroa.627.sroa.5.0.copyload.i.i.i.i, ptr %i.fn, align 8, !alias.scope !100007, !noalias !100006
  store i64 %i.aka, ptr %i.fm, align 8, !alias.scope !100007, !noalias !100006
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit466.i.i.i.i.backedge

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit478.i.i.i.i: ; preds = %bb.fi
  store i64 -9223372036854775807, ptr %i.fh, align 8, !alias.scope !100007, !noalias !100006
  %i.akb = icmp eq ptr %.sroa.627.sroa.0.0.copyload.i.i.i.i, null
  br i1 %i.akb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit466.i.i.i.i.backedge, label %bb.fl

bb.fl:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit478.i.i.i.i
  %i.akc = inttoptr i64 %.sroa.627.sroa.5.0.copyload.i.i.i.i to ptr
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.akc, i64 noundef %i.ajt, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !100041
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit466.i.i.i.i.backedge

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit487.i.i.i.i: ; preds = %bb.fi
  store i64 -9223372036854775808, ptr %i.fh, align 8, !alias.scope !100007, !noalias !100006
  store i64 %i.ajt, ptr %i.fq, align 8, !alias.scope !100007, !noalias !100006
  store i64 %.sroa.7.0.copyload.i.i.i.i, ptr %i.fn, align 8, !alias.scope !100007, !noalias !100006
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit466.i.i.i.i.backedge

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit466.i.i.i.i.backedge: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit487.i.i.i.i, %bb.fl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit478.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit472.i.i.i.i, %bb.fk, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit463.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit457.i.i.i.i, %bb.fg, %bb.el, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_stream13WriteTcpStateEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit466.i.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ff, %_RNvXs0_NtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompatINtB5_17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB5_17AsyncIoStdAsTokioIBS_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtCsjerix4WXF9m_10futures_io6if_std10AsyncWrite10poll_writeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.dq, %bb.dk, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %.sroa.19.2.ph.in.i.i.i = phi ptr [ %i.afz, %bb.dq ], [ %i.abr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.afo, %bb.dk ], [ %i.ajk, %_RNvXs0_NtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompatINtB5_17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB5_17AsyncIoStdAsTokioIBS_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtCsjerix4WXF9m_10futures_io6if_std10AsyncWrite10poll_writeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.ajo, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !100005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !100004
  br label %_RNvYINtNtNtCsi1FNhPBS7PW_11hickory_net3tcp17tcp_client_stream15TcpClientStreamINtNtNtB9_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB1h_17AsyncIoStdAsTokioIB1f_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEENtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream9StreamExt15poll_next_unpinCsgZAIVb0XKpv_9ssservice.exit.i

_RNvXs_NtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_streamINtB4_9TcpStreamINtNtNtB8_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB18_17AsyncIoStdAsTokioIB16_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread74.i.i.i: ; preds = %_RNvXs0_NtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompatINtB5_17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB5_17AsyncIoStdAsTokioIBS_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtCsjerix4WXF9m_10futures_io6if_std10AsyncWrite10poll_writeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RNvXs0_NtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompatINtB5_17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB5_17AsyncIoStdAsTokioIBS_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtCsjerix4WXF9m_10futures_io6if_std10AsyncWrite10poll_flushCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !100005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !100004
  br label %_RNvYINtNtNtCsi1FNhPBS7PW_11hickory_net3tcp17tcp_client_stream15TcpClientStreamINtNtNtB9_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB1h_17AsyncIoStdAsTokioIB1f_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEENtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream9StreamExt15poll_next_unpinCsgZAIVb0XKpv_9ssservice.exit.thread338.i

_RNvXs_NtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_streamINtB4_9TcpStreamINtNtNtB8_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB18_17AsyncIoStdAsTokioIB16_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %.loopexit.i.i.i, %bb.cc, %bb.bk
  %.sroa.31.sroa.0.0.i.i.i = phi i16 [ undef, %.loopexit.i.i.i ], [ undef, %bb.cc ], [ %.sroa.31.sroa.0.0.copyload.i.i.i, %bb.bk ] ; 4 uses
  %.sroa.31.sroa.6.0.i.i.i = phi i32 [ undef, %.loopexit.i.i.i ], [ undef, %bb.cc ], [ %.sroa.31.sroa.6.0.copyload.i.i.i, %bb.bk ] ; 3 uses
  %.sroa.31.sroa.7.0.i.i.i = phi i32 [ undef, %.loopexit.i.i.i ], [ undef, %bb.cc ], [ %.sroa.31.sroa.7.0.copyload.i.i.i, %bb.bk ] ; 3 uses
  %.sroa.31.sroa.8.0.i.i.i = phi i16 [ undef, %.loopexit.i.i.i ], [ undef, %bb.cc ], [ %.sroa.31.sroa.8.0.copyload.i.i.i, %bb.bk ] ; 3 uses
  %.sroa.31.sroa.9.0.i.i.i = phi i16 [ undef, %.loopexit.i.i.i ], [ undef, %bb.cc ], [ %.sroa.31.sroa.9.0.copyload.i.i.i, %bb.bk ] ; 2 uses
  %.sroa.29.0.i.i.i = phi i64 [ undef, %.loopexit.i.i.i ], [ undef, %bb.cc ], [ %.sroa.5243.sroa.4.0.copyload.i.i.i.i, %bb.bk ]
  %.sroa.19.2.i.i.i = phi i64 [ %.sroa.19.0.i.i.i, %.loopexit.i.i.i ], [ %.sroa.19.1.i.i.i, %bb.cc ], [ %.sroa.5243.sroa.0.0.copyload.i.i.i.i, %bb.bk ]
  %.sroa.0.2.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.loopexit.i.i.i ], [ %.sroa.0.1.i.i.i, %bb.cc ], [ %.sroa.0241.0.copyload.i.i.i.i, %bb.bk ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !100005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !100004
  %i.akd = icmp eq i64 %.sroa.0.2.i.i.i, -3
  br i1 %i.akd, label %_RNvYINtNtNtCsi1FNhPBS7PW_11hickory_net3tcp17tcp_client_stream15TcpClientStreamINtNtNtB9_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB1h_17AsyncIoStdAsTokioIB1f_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEENtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream9StreamExt15poll_next_unpinCsgZAIVb0XKpv_9ssservice.exit.thread338.i, label %bb.fm

_RNvYINtNtNtCsi1FNhPBS7PW_11hickory_net3tcp17tcp_client_stream15TcpClientStreamINtNtNtB9_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB1h_17AsyncIoStdAsTokioIB1f_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEENtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream9StreamExt15poll_next_unpinCsgZAIVb0XKpv_9ssservice.exit.thread338.i: ; preds = %_RNvXs_NtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_streamINtB4_9TcpStreamINtNtNtB8_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB18_17AsyncIoStdAsTokioIB16_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i, %_RNvXs_NtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_streamINtB4_9TcpStreamINtNtNtB8_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB18_17AsyncIoStdAsTokioIB16_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.thread74.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.2.sroa.3.i.i.i)
  br label %.loopexit351.i

bb.fm:                                            ; preds = %_RNvXs_NtNtCsi1FNhPBS7PW_11hickory_net3tcp10tcp_streamINtB4_9TcpStreamINtNtNtB8_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB18_17AsyncIoStdAsTokioIB16_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.ake = inttoptr i64 %.sroa.19.2.i.i.i to ptr  ; 2 uses
  switch i64 %.sroa.0.2.i.i.i, label %bb.fn [
    i64 -2, label %.thread.i
    i64 -1, label %_RNvYINtNtNtCsi1FNhPBS7PW_11hickory_net3tcp17tcp_client_stream15TcpClientStreamINtNtNtB9_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB1h_17AsyncIoStdAsTokioIB1f_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEENtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream9StreamExt15poll_next_unpinCsgZAIVb0XKpv_9ssservice.exit.i
  ]

.thread.i:                                        ; preds = %bb.fm
  store i8 -2, ptr %i.ea, align 8, !alias.scope !100042, !noalias !100043
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.2.sroa.3.i.i.i)
  br label %.loopexit287

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(18) %.sroa.3.sroa.2.sroa.3.i.i.i, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.31.sroa.5.i.i.i, i64 18, i1 false), !noalias !100004
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !100004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %i.ff, i64 32, i1 false), !noalias !100044
  %i.akf = load i16, ptr %i.cz, align 4, !range !179, !alias.scope !100045, !noalias !100046, !noundef !178
  %i.akg = icmp eq i16 %.sroa.31.sroa.0.0.i.i.i, %i.akf
  br i1 %i.akg, label %bb.fo, label %_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread.i.i.i

bb.fo:                                            ; preds = %bb.fn
  %i.akh = trunc nuw i16 %.sroa.31.sroa.0.0.i.i.i to i1
  br i1 %i.akh, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.aki = load i16, ptr %i.hm, align 4, !alias.scope !100045, !noalias !100046, !noundef !178
  %i.akj = icmp eq i16 %.sroa.31.sroa.8.0.i.i.i, %i.aki
  %i.akk = load i32, ptr %i.hn, align 4, !noalias !100004
  %i.akl = icmp eq i32 %.sroa.31.sroa.6.0.i.i.i, %i.akk
  %or.cond.i.i.i = select i1 %i.akj, i1 %i.akl, i1 false
  %i.akm = load i32, ptr %i.ho, align 4, !noalias !100004
  %i.akn = icmp eq i32 %.sroa.31.sroa.7.0.i.i.i, %i.akm
  %or.cond96.i.i.i = select i1 %or.cond.i.i.i, i1 %i.akn, i1 false
  br i1 %or.cond96.i.i.i, label %.split.i.i.i, label %_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread.i.i.i

bb.fq:                                            ; preds = %bb.fo
  %.sroa.3.sroa.2.sroa.3.i.i.i.4..sroa.3.sroa.2.sroa.3.i.i.i.4..sroa.3.sroa.2.sroa.3.i.i.i.4..sroa.3.sroa.2.sroa.3.i.i.4..sroa.3.sroa.2.sroa.3.i.i.4..sroa.3.sroa.2.sroa.3.i.4..sroa.3.sroa.2.sroa.3.i.4..sroa.3.4..sroa.3.4..sroa.3.4..sroa.3.6..i.i.i = load i16, ptr %.sroa.3.sroa.2.sroa.3.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx, align 4, !noalias !100004
  %i.ako = load i16, ptr %i.hk, align 2, !alias.scope !100045, !noalias !100046, !noundef !178
  %i.akp = icmp eq i16 %.sroa.3.sroa.2.sroa.3.i.i.i.4..sroa.3.sroa.2.sroa.3.i.i.i.4..sroa.3.sroa.2.sroa.3.i.i.i.4..sroa.3.sroa.2.sroa.3.i.i.4..sroa.3.sroa.2.sroa.3.i.i.4..sroa.3.sroa.2.sroa.3.i.4..sroa.3.sroa.2.sroa.3.i.4..sroa.3.4..sroa.3.4..sroa.3.4..sroa.3.6..i.i.i, %i.ako
  br i1 %i.akp, label %_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i.i.i, label %_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread.i.i.i

.split.i.i.i:                                     ; preds = %bb.fp
  %.sroa.3.sroa.2.sroa.3.i.i.i.2..sroa.3.sroa.2.sroa.3.i.i.i.2..sroa.3.sroa.2.sroa.3.i.i.i.2..sroa.3.sroa.2.sroa.3.i.i.2..sroa.3.sroa.2.sroa.3.i.i.2..sroa.3.sroa.2.sroa.3.i.2..sroa.3.sroa.2.sroa.3.i.2..sroa.3.2..sroa.3.2..sroa.3.2..sroa.3.4..i.i.i = load i128, ptr %.sroa.3.sroa.2.sroa.3.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx, align 2, !noalias !100004
  %i.akq = load i128, ptr %i.hp, align 4, !alias.scope !100045, !noalias !100046, !noundef !178
  %i.akr = icmp eq i128 %.sroa.3.sroa.2.sroa.3.i.i.i.2..sroa.3.sroa.2.sroa.3.i.i.i.2..sroa.3.sroa.2.sroa.3.i.i.i.2..sroa.3.sroa.2.sroa.3.i.i.2..sroa.3.sroa.2.sroa.3.i.i.2..sroa.3.sroa.2.sroa.3.i.2..sroa.3.sroa.2.sroa.3.i.2..sroa.3.2..sroa.3.2..sroa.3.2..sroa.3.4..i.i.i, %i.akq
  br i1 %i.akr, label %_RNvYINtNtNtCsi1FNhPBS7PW_11hickory_net3tcp17tcp_client_stream15TcpClientStreamINtNtNtB9_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB1h_17AsyncIoStdAsTokioIB1f_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEENtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream9StreamExt15poll_next_unpinCsgZAIVb0XKpv_9ssservice.exit.thread.i, label %_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i.i.i: ; preds = %bb.fq
  %.sroa.3.sroa.2.sroa.3.i.i.i.0..sroa.3.sroa.2.sroa.3.i.i.i.0..sroa.3.sroa.2.sroa.3.i.i.i.0..sroa.3.sroa.2.sroa.3.i.i.0..sroa.3.sroa.2.sroa.3.i.i.0..sroa.3.sroa.2.sroa.3.i.0..sroa.3.sroa.2.sroa.3.i.0..sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.2..i.i.i = load i32, ptr %.sroa.3.sroa.2.sroa.3.i.i.i, align 4, !noalias !100004
  %i.aks = load i32, ptr %i.hl, align 2, !alias.scope !100045, !noalias !100046, !noundef !178
  %i.akt = icmp eq i32 %.sroa.3.sroa.2.sroa.3.i.i.i.0..sroa.3.sroa.2.sroa.3.i.i.i.0..sroa.3.sroa.2.sroa.3.i.i.i.0..sroa.3.sroa.2.sroa.3.i.i.0..sroa.3.sroa.2.sroa.3.i.i.0..sroa.3.sroa.2.sroa.3.i.0..sroa.3.sroa.2.sroa.3.i.0..sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.2..i.i.i, %i.aks
  br i1 %i.akt, label %_RNvYINtNtNtCsi1FNhPBS7PW_11hickory_net3tcp17tcp_client_stream15TcpClientStreamINtNtNtB9_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB1h_17AsyncIoStdAsTokioIB1f_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEENtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream9StreamExt15poll_next_unpinCsgZAIVb0XKpv_9ssservice.exit.thread.i, label %_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvYINtNtNtCsi1FNhPBS7PW_11hickory_net3tcp17tcp_client_stream15TcpClientStreamINtNtNtB9_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs3Ol6WPi9G6e_12tokio_rustls6client9TlsStreamINtB1h_17AsyncIoStdAsTokioIB1f_NtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEEENtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream9StreamExt15poll_next_unpinCsgZAIVb0XKpv_9ssservice.exit.thread.i: ; preds = %bb.fu, %bb.ft, %bb.fs, %bb.fr, %_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread.i.i.i, %_RNvXse_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i
  store i8 -1, ptr %i.ea, align 8, !alias.scope !100042, !noalias !100043
  store i64 %.sroa.0.2.i.i.i, ptr %.sroa.527.0..sroa_idx.i.i.i, align 8, !alias.scope !100042, !noalias !100043
end_hunk_8
