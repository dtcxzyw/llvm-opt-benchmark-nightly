Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40157
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNCINvMs2_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB8_21AutoProxyClientStream31connect_proxied_with_opts_innerNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE0CsgZAIVb0XKpv_9ssservice:bb.a
bb.v:                                             ; preds = %bb.s
  store i8 3, ptr %i.df, align 8, !noalias !42838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !42834
  br label %bb.ba

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtBJ_15DirectTcpDialerNtNtNtBR_3net8outbound9TcpDialer4dial0ECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.s
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtBG_9TcpStream24connect_remote_with_opts0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.dg) #53, !noalias !42843
  store i8 1, ptr %i.df, align 8, !noalias !42838
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.3.0.copyload.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !noalias !42834
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.436.0.copyload.i.i = load ptr, ptr %.sroa.436.0..sroa_idx.i.i, align 8, !noalias !42834 ; 3 uses
  %.sroa.637.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.637.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.637.0..sroa_idx.i.i, i64 48, i1 false), !noalias !42834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !42834
  %i.dj = icmp eq i32 %i.dh, -2
  br i1 %i.dj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtBJ_15DirectTcpDialerNtNtNtBR_3net8outbound9TcpDialer4dial0ECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.436.0.copyload.i.i) ]
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtNtNtBN_5local3net3tcp17auto_proxy_stream15DirectTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtBJ_15DirectTcpDialerNtNtNtBR_3net8outbound9TcpDialer4dial0ECsgZAIVb0XKpv_9ssservice.exit.i.i
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.637.i.i, i64 48, i1 false), !noalias !42834
  store i32 %i.dh, ptr %i.q, align 8, !noalias !42834
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %.sroa.3.0.copyload.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !42834
  %.sroa.923.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.436.0.copyload.i.i, ptr %.sroa.923.0..sroa_idx.i.i, align 8, !noalias !42834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !42834
  call void @_RNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB2_19OutboundProxyStream8from_tcp(ptr noalias nofree noundef nonnull sret([1160 x i8]) align 8 captures(none) dereferenceable(1160) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.q) #53, !noalias !42841
  call void @llvm.experimental.noalias.scope.decl(metadata !42844)
  %i.dk = load i64, ptr %i.p, align 8, !range !267, !alias.scope !42845, !noalias !42846, !noundef !178 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, -1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !42847, !noalias !42834 ; 2 uses
  br i1 %i.dl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !42834
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtNtNtBN_5local3net3tcp17auto_proxy_stream15DirectTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit

bb.z:                                             ; preds = %bb.x
  %.sroa.943.0..sroa_idx44.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.9101.i.i.sroa.0.0.copyload112 = load ptr, ptr %.sroa.943.0..sroa_idx44.i.i, align 8, !noalias !42834
  %.sroa.9101.i.i.sroa.10.0..sroa.943.0..sroa_idx44.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10.0..sroa.943.0..sroa_idx44.i.i.sroa_idx, i64 48, i1 false), !noalias !42834
  %.sroa.9101.i.i.sroa.11.0..sroa.943.0..sroa_idx44.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11.0..sroa.943.0..sroa_idx44.i.i.sroa_idx, i64 1088, i1 false), !noalias !42834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !42834
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !42834, !nonnull !178, !align !186, !noundef !178 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !42834, !noundef !178
  %i.ds = getelementptr inbounds nuw [112 x i8], ptr %i.dp, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %i.dp, ptr %i.dt, align 8, !noalias !42834
  %.sroa.949.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %i.ds, ptr %.sroa.949.0..sroa_idx.i.i, align 8, !noalias !42834
  %.sroa.1050.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i64 0, ptr %.sroa.1050.0..sroa_idx.i.i, align 8, !noalias !42834
  br label %bb.aa

bb.aa:                                            ; preds = %bb.am, %bb.z
  %i.du = phi ptr [ %i.dc, %bb.z ], [ %i.eg, %bb.am ] ; 3 uses
  %.sroa.9101.i.i.sroa.0.0 = phi ptr [ %.sroa.9101.i.i.sroa.0.0.copyload112, %bb.z ], [ %.sroa.594.i.i.sroa.0.0.copyload, %bb.am ] ; 3 uses
  %i.dv = phi ptr [ %i.dd, %bb.z ], [ %i.eh, %bb.am ] ; 3 uses
  %i.dw = phi ptr [ %i.de, %bb.z ], [ %i.ei, %bb.am ] ; 3 uses
  %i.dx = phi ptr [ %i.ds, %bb.z ], [ %.pre118.i.i, %bb.am ]
  %i.dy = phi ptr [ %i.dp, %bb.z ], [ %.pre116.i.i, %bb.am ] ; 6 uses
  %.sroa.095.0.i.i = phi i64 [ %i.dk, %bb.z ], [ %i.ek, %bb.am ] ; 3 uses
  %.sroa.698.0.i.i = phi ptr [ %i.dn, %bb.z ], [ %.sroa.393.0.copyload.i.i, %bb.am ] ; 3 uses
  %i.dz = icmp eq ptr %i.dy, %i.dx
  br i1 %i.dz, label %bb.ao, label %bb.an

bb.ab:                                            ; preds = %bb.aq, %bb.j
  %i.ea = phi ptr [ %i.bi, %bb.j ], [ %i.du, %bb.aq ] ; 3 uses
  %i.eb = phi ptr [ %.phi.trans.insert.i, %bb.j ], [ %i.dv, %bb.aq ] ; 3 uses
  %i.ec = phi ptr [ %i.bt, %bb.j ], [ %i.dw, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !42834
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  call fastcc void @_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(1160) %i.o, ptr noundef nonnull align 8 %i.ed, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #61, !noalias !42841
  %i.ee = load i64, ptr %i.o, align 8, !range !302, !noalias !42834, !noundef !178 ; 3 uses
  %i.ef = icmp eq i64 %i.ee, -2
  br i1 %i.ef, label %bb.ar, label %bb.as

bb.ac:                                            ; preds = %bb.ap, %bb.j
  %i.eg = phi ptr [ %i.bi, %bb.j ], [ %i.fd, %bb.ap ] ; 3 uses
  %i.eh = phi ptr [ %.phi.trans.insert.i, %bb.j ], [ %i.fe, %bb.ap ] ; 3 uses
  %i.ei = phi ptr [ %i.bt, %bb.j ], [ %i.ff, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !42834
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  call fastcc void @_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(1160) %i.n, ptr noundef nonnull align 8 %i.ej, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #61, !noalias !42841
  %i.ek = load i64, ptr %i.n, align 8, !range !302, !noalias !42834, !noundef !178 ; 3 uses
  %i.el = icmp eq i64 %i.ek, -2
  br i1 %i.el, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !42834
  br label %bb.ba

bb.ae:                                            ; preds = %bb.ac
  %.sroa.393.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.393.0.copyload.i.i = load ptr, ptr %.sroa.393.0..sroa_idx.i.i, align 8, !noalias !42834 ; 3 uses
  %.sroa.594.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.594.i.i.sroa.0.0.copyload = load ptr, ptr %.sroa.594.0..sroa_idx.i.i, align 8, !noalias !42834
  %.sroa.594.i.i.sroa.6.0..sroa.594.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.594.i.i.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.594.i.i.sroa.6.0..sroa.594.0..sroa_idx.i.i.sroa_idx, i64 48, i1 false), !noalias !42834
  %.sroa.594.i.i.sroa.7.0..sroa.594.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.594.i.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.594.i.i.sroa.7.0..sroa.594.0..sroa_idx.i.i.sroa_idx, i64 1088, i1 false), !noalias !42834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !42834
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 2640
  %i.en = load i8, ptr %i.em, align 8, !range !230, !noalias !42834, !noundef !178
  switch i8 %i.en, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i [
    i8 0, label %bb.af
    i8 3, label %bb.ag
    i8 4, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %i.ej) #53, !noalias !42841
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 2648
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6socks5NtBH_16Socks5Negotiator13establish_tcpNtNtBJ_6stream19OutboundProxyStreamNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.eo) #53, !noalias !42841
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 2648
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound12http_connectNtBH_17HttpConnectClient9establishNtNtBJ_6stream19OutboundProxyStreamE0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.ep) #53, !noalias !42841
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 2641 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !range !181, !noalias !42834, !noundef !178
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  store i8 0, ptr %i.eq, align 1, !noalias !42834
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 1480
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(1160) %i.et) #53, !noalias !42841
  br label %bb.aj

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.aj, %bb.af, %bb.ae
  %i.eu = icmp eq i64 %i.ek, -1
  br i1 %i.eu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.393.0.copyload.i.i) ]
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtNtNtBN_5local3net3tcp17auto_proxy_stream15DirectTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit

bb.am:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.594.i.i.sroa.6, i64 48, i1 false), !noalias !42834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.594.i.i.sroa.7, i64 1088, i1 false), !noalias !42834
  %.phi.trans.insert115.i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.pre116.i.i = load ptr, ptr %.phi.trans.insert115.i.i, align 8, !alias.scope !42848, !noalias !42834
  %.phi.trans.insert117.i.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.pre118.i.i = load ptr, ptr %.phi.trans.insert117.i.i, align 8, !alias.scope !42848, !noalias !42834
  br label %bb.aa

bb.an:                                            ; preds = %bb.aa
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dy, i64 112
  store ptr %i.ew, ptr %i.ev, align 8, !alias.scope !42848, !noalias !42834
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !42849, !noalias !42834, !noundef !178 ; 2 uses
  %i.ez = add i64 %i.ey, 1                        ; 2 uses
  store i64 %i.ez, ptr %i.ex, align 8, !alias.scope !42849, !noalias !42834
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.ey, ptr %i.fa, align 8, !noalias !42834
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.dy, ptr %i.fb, align 8, !noalias !42834, !captures !231
  %.val9.i.i = load i64, ptr %i.dy, align 8, !range !271, !noalias !42841, !noundef !178
  %i.fc = icmp sgt i64 %.val9.i.i, -1
  br i1 %i.fc, label %bb.aq, label %bb.ap

bb.ao:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.i.i.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10, i64 48, i1 false), !noalias !42834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.13.i.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11, i64 1088, i1 false), !noalias !42834
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtNtNtBN_5local3net3tcp17auto_proxy_stream15DirectTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit

bb.ap:                                            ; preds = %bb.au, %bb.an
  %i.fd = phi ptr [ %i.ea, %bb.au ], [ %i.du, %bb.an ]
  %.sroa.9101.i.i.sroa.0.1 = phi ptr [ %.sroa.572.i.i.sroa.0.0.copyload, %bb.au ], [ %.sroa.9101.i.i.sroa.0.0, %bb.an ]
  %i.fe = phi ptr [ %i.eb, %bb.au ], [ %i.dv, %bb.an ]
  %i.ff = phi ptr [ %i.ec, %bb.au ], [ %i.dw, %bb.an ]
  %.pre-phi.i.i = phi i64 [ %.pre123.i.i, %bb.au ], [ %i.ez, %bb.an ] ; 2 uses
  %i.fg = phi ptr [ %.pre122.i.i, %bb.au ], [ %i.dy, %bb.an ]
  %.sroa.095.1.i.i = phi i64 [ %i.ee, %bb.au ], [ %.sroa.095.0.i.i, %bb.an ]
  %.sroa.698.1.i.i = phi ptr [ %.sroa.371.0.copyload.i.i, %bb.au ], [ %.sroa.698.0.i.i, %bb.an ]
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !42834, !nonnull !178, !align !186, !noundef !178
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.fk = load i64, ptr %i.fj, align 8, !noalias !42834, !noundef !178
  %.not.i.i = icmp ult i64 %.pre-phi.i.i, %i.fk
  %i.fl = getelementptr inbounds nuw [112 x i8], ptr %i.fi, i64 %.pre-phi.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 72
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !42834, !nonnull !178, !align !186, !noundef !178
  %..i13.i.i = select i1 %.not.i.i, ptr %i.fm, ptr %i.fo
  %.sroa.086.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %.sroa.9101.i.i.sroa.0.1, ptr %.sroa.086.sroa.8.0..sroa_idx.i.i, align 8, !noalias !42834
  %.sroa.9101.i.i.sroa.10.0..sroa.086.sroa.8.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10.0..sroa.086.sroa.8.0..sroa_idx.i.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10, i64 48, i1 false), !noalias !42834
  %.sroa.9101.i.i.sroa.11.0..sroa.086.sroa.8.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11.0..sroa.086.sroa.8.0..sroa_idx.i.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11, i64 1088, i1 false), !noalias !42834
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 304
  store i64 %.sroa.095.1.i.i, ptr %i.fp, align 8, !noalias !42834
  %.sroa.086.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 312
  store ptr %.sroa.698.1.i.i, ptr %.sroa.086.sroa.7.0..sroa_idx.i.i, align 8, !noalias !42834
  %.sroa.787.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1464
  store ptr %i.fg, ptr %.sroa.787.0..sroa_idx.i.i, align 8, !noalias !42834
  %.sroa.888.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1472
  store ptr %..i13.i.i, ptr %.sroa.888.0..sroa_idx.i.i, align 8, !noalias !42834
  %.sroa.1090.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2640
  store i8 0, ptr %.sroa.1090.0..sroa_idx.i.i, align 8, !noalias !42834
  br label %bb.ac

bb.aq:                                            ; preds = %bb.an
  %i.fq = call { ptr, i64 } @_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outboundNtB2_16OutboundProxyHop7tls_sni(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dy) #53, !noalias !42841 ; 2 uses
  %i.fr = extractvalue { ptr, i64 } %i.fq, 0
  %i.fs = extractvalue { ptr, i64 } %i.fq, 1
  %.sroa.064.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %.sroa.9101.i.i.sroa.0.0, ptr %.sroa.064.sroa.8.0..sroa_idx.i.i, align 8, !noalias !42834
  %.sroa.9101.i.i.sroa.10.0..sroa.064.sroa.8.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10.0..sroa.064.sroa.8.0..sroa_idx.i.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10, i64 48, i1 false), !noalias !42834
  %.sroa.9101.i.i.sroa.11.0..sroa.064.sroa.8.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11.0..sroa.064.sroa.8.0..sroa_idx.i.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11, i64 1088, i1 false), !noalias !42834
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 304
  store i64 %.sroa.095.0.i.i, ptr %i.ft, align 8, !noalias !42834
  %.sroa.064.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 312
  store ptr %.sroa.698.0.i.i, ptr %.sroa.064.sroa.7.0..sroa_idx.i.i, align 8, !noalias !42834
  %.sroa.765.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1464
  store ptr %i.fr, ptr %.sroa.765.0..sroa_idx.i.i, align 8, !noalias !42834
  %.sroa.866.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1472
  store i64 %i.fs, ptr %.sroa.866.0..sroa_idx.i.i, align 8, !noalias !42834
  %.sroa.1068.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 5040
  store i8 0, ptr %.sroa.1068.0..sroa_idx.i.i, align 8, !noalias !42834
  br label %bb.ab

bb.ar:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !42834
  br label %bb.ba

bb.as:                                            ; preds = %bb.ab
  %.sroa.371.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.371.0.copyload.i.i = load ptr, ptr %.sroa.371.0..sroa_idx.i.i, align 8, !noalias !42834 ; 3 uses
  %.sroa.572.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.572.i.i.sroa.0.0.copyload = load ptr, ptr %.sroa.572.0..sroa_idx.i.i, align 8, !noalias !42834
  %.sroa.572.i.i.sroa.6.0..sroa.572.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.572.i.i.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.572.i.i.sroa.6.0..sroa.572.0..sroa_idx.i.i.sroa_idx, i64 48, i1 false), !noalias !42834
  %.sroa.572.i.i.sroa.7.0..sroa.572.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.572.i.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.572.i.i.sroa.7.0..sroa.572.0..sroa_idx.i.i.sroa_idx, i64 1088, i1 false), !noalias !42834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !42834
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.ed) #53, !noalias !42841
  %i.fu = icmp eq i64 %i.ee, -1
  br i1 %i.fu, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.371.0.copyload.i.i) ]
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtNtNtBN_5local3net3tcp17auto_proxy_stream15DirectTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.572.i.i.sroa.6, i64 48, i1 false), !noalias !42834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.572.i.i.sroa.7, i64 1088, i1 false), !noalias !42834
  %.phi.trans.insert119.i.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.pre120.i.i = load i64, ptr %.phi.trans.insert119.i.i, align 8, !noalias !42834
  %.phi.trans.insert121.i.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.pre122.i.i = load ptr, ptr %.phi.trans.insert121.i.i, align 8, !noalias !42834
  %.pre123.i.i = add i64 %.pre120.i.i, 1
  br label %bb.ap

bb.av:                                            ; preds = %bb.h
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @567) #63, !noalias !42833
  unreachable

bb.aw:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @630) #63
  unreachable

common.ret:                                       ; preds = %_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing11server_dataNtB4_11ServerScore14report_failure0CsgZAIVb0XKpv_9ssservice.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local7context14ServiceContextEECsgZAIVb0XKpv_9ssservice.exit, %bb.ba, %bb.ax
  %.sink = phi i8 [ 5, %_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing11server_dataNtB4_11ServerScore14report_failure0CsgZAIVb0XKpv_9ssservice.exit ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local7context14ServiceContextEECsgZAIVb0XKpv_9ssservice.exit ], [ 4, %bb.ba ], [ 3, %bb.ax ]
  store i8 %.sink, ptr %i.w, align 8
  ret void

bb.ax:                                            ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 -3, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %common.ret

bb.ay:                                            ; preds = %bb.g
  %.sroa.051.0.copyload = load ptr, ptr %i.u, align 8 ; 2 uses
  %.sroa.352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.352.0.copyload = load ptr, ptr %.sroa.352.0..sroa_idx, align 8 ; 2 uses
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.553, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.553.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtBG_9TcpStream24connect_remote_with_opts0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.bf) #53
  %i.fv = ptrtoint ptr %.sroa.051.0.copyload to i64
  %i.fw = and i64 %i.fv, 4294967295
  %i.fx = icmp eq i64 %i.fw, 4294967294
  br i1 %i.fx, label %.thread151, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.18.sroa.12, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.553, i64 48, i1 false)
  br label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamNtNtNtB5_2io5error5ErrorE3mapNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream17OutboundTransportNcNtB20_6Direct0ECsgZAIVb0XKpv_9ssservice.exit

bb.ba:                                            ; preds = %bb.v, %bb.ad, %bb.ar
  %i.fy = phi ptr [ %i.dc, %bb.v ], [ %i.eg, %bb.ad ], [ %i.ea, %bb.ar ]
  %.ph.i = phi ptr [ %i.dd, %bb.v ], [ %i.eh, %bb.ad ], [ %i.eb, %bb.ar ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.v ], [ 5, %bb.ad ], [ 4, %bb.ar ]
  store i8 %.sink.i.ph.i, ptr %.ph.i, align 8, !noalias !42834
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9101.i.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9101.i.i.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.594.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.594.i.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.572.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.572.i.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !42832
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.637.i.i)
  store i8 3, ptr %i.fy, align 8, !noalias !42832
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.869.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.869.sroa.6)
  store i64 -3, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %common.ret

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtNtNtBN_5local3net3tcp17auto_proxy_stream15DirectTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.m, %bb.w, %bb.y, %bb.al, %bb.ao, %bb.at
  %i.fz = phi ptr [ %i.bu, %bb.m ], [ %i.dc, %bb.w ], [ %i.dc, %bb.y ], [ %i.du, %bb.ao ], [ %i.ea, %bb.at ], [ %i.eg, %bb.al ]
  %.sroa.13.i.i.sroa.0.4 = phi ptr [ undef, %bb.m ], [ undef, %bb.w ], [ undef, %bb.y ], [ %.sroa.9101.i.i.sroa.0.0, %bb.ao ], [ undef, %bb.at ], [ undef, %bb.al ]
  %i.ga = phi ptr [ %i.bz, %bb.m ], [ %i.dd, %bb.w ], [ %i.dd, %bb.y ], [ %i.dv, %bb.ao ], [ %i.eb, %bb.at ], [ %i.eh, %bb.al ]
  %i.gb = phi ptr [ %i.ca, %bb.m ], [ %i.de, %bb.w ], [ %i.de, %bb.y ], [ %i.dw, %bb.ao ], [ %i.ec, %bb.at ], [ %i.ei, %bb.al ]
  %.sroa.0102.0.i.i = phi i64 [ -1, %bb.m ], [ -1, %bb.w ], [ -1, %bb.y ], [ %.sroa.095.0.i.i, %bb.ao ], [ -1, %bb.at ], [ -1, %bb.al ] ; 2 uses
  %.sroa.7103.0.i.i = phi ptr [ %i.ce, %bb.m ], [ %.sroa.436.0.copyload.i.i, %bb.w ], [ %i.dn, %bb.y ], [ %.sroa.698.0.i.i, %bb.ao ], [ %.sroa.371.0.copyload.i.i, %bb.at ], [ %.sroa.393.0.copyload.i.i, %bb.al ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.869.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.i.i.sroa.6, i64 48, i1 false), !noalias !42850
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.869.sroa.6, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.13.i.i.sroa.7, i64 1088, i1 false), !noalias !42850
  store i8 1, ptr %i.ga, align 8, !noalias !42834
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9101.i.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9101.i.i.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.594.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.594.i.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.572.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.572.i.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !42832
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.637.i.i)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13connect_chainNtNtNtNtNtBM_5local3net3tcp17auto_proxy_stream15DirectTcpDialerE0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.gb) #53, !noalias !42833
  store i8 1, ptr %i.fz, align 8, !noalias !42832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.874, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.869.sroa.5, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.975, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.869.sroa.6, i64 1088, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.869.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.869.sroa.6)
  %i.gc = icmp eq i64 %.sroa.0102.0.i.i, -1
  br i1 %i.gc, label %.thread151, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtNtNtBN_5local3net3tcp17auto_proxy_stream15DirectTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.18.sroa.12, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.874, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.18.sroa.13, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.975, i64 1088, i1 false)
  br label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamNtNtNtB5_2io5error5ErrorE3mapNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream17OutboundTransportNcNtB20_6Direct0ECsgZAIVb0XKpv_9ssservice.exit

.thread151:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtNtNtBN_5local3net3tcp17auto_proxy_stream15DirectTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit, %bb.ay
  %.sroa.7103.0.i.i.sink = phi ptr [ %.sroa.352.0.copyload, %bb.ay ], [ %.sroa.7103.0.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtNtNtBN_5local3net3tcp17auto_proxy_stream15DirectTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7103.0.i.i.sink) ]
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %.sroa.7103.0.i.i.sink, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gf = load ptr, ptr %i.ge, align 8, !nonnull !178, !align !186, !noundef !178
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 1240
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %i.gg, ptr %i.gh, align 8
  %.sroa.786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i8 0, ptr %.sroa.786.0..sroa_idx, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 352
  br label %.thread.i27

_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamNtNtNtB5_2io5error5ErrorE3mapNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream17OutboundTransportNcNtB20_6Direct0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.az, %bb.bb
  %.sroa.18.sroa.0.2 = phi ptr [ %.sroa.352.0.copyload, %bb.az ], [ %.sroa.13.i.i.sroa.0.4, %bb.bb ] ; 2 uses
  %.sroa.14.0 = phi ptr [ %.sroa.051.0.copyload, %bb.az ], [ %.sroa.7103.0.i.i, %bb.bb ] ; 2 uses
  %.sroa.0.0 = phi i64 [ -1, %bb.az ], [ %.sroa.0102.0.i.i, %bb.bb ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gk = load ptr, ptr %i.gj, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %.val13 = load ptr, ptr %i.gl, align 8, !nonnull !178, !noundef !178
  %i.gm = getelementptr i8, ptr %.val13, i64 216
  %.val = load ptr, ptr %i.gm, align 8, !nonnull !178, !noundef !178 ; 4 uses
  %i.gn = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.go = icmp slt i64 %i.gn, 0
  br i1 %i.go, label %bb.bc, label %_RNvMs_NtNtCs8UFHSMUhzWe_19shadowsocks_service5local7contextNtB4_14ServiceContext7context.exit

bb.bc:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamNtNtNtB5_2io5error5ErrorE3mapNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream17OutboundTransportNcNtB20_6Direct0ECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.trap()
  unreachable

end_hunk_0
begin_hunk_1_@_RNCNCNvMs3_NtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelayNtB9_15TcpServerClient5serve00CsgZAIVb0XKpv_9ssservice:bb.a
bb.t:                                             ; preds = %bb.q
  store i8 3, ptr %i.bx, align 8, !noalias !48139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !48135
  br label %bb.az

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvXNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelayNtBG_15ServerTcpDialerNtNtNtBK_3net8outbound9TcpDialer4dial0ECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.q
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtBG_9TcpStream24connect_remote_with_opts0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.by) #53, !noalias !48144
  store i8 1, ptr %i.bx, align 8, !noalias !48139
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.3.0.copyload.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !noalias !48135
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.436.0.copyload.i.i = load ptr, ptr %.sroa.436.0..sroa_idx.i.i, align 8, !noalias !48135 ; 3 uses
  %.sroa.637.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.637.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.637.0..sroa_idx.i.i, i64 48, i1 false), !noalias !48135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !48135
  %i.cb = icmp eq i32 %i.bz, -2
  br i1 %i.cb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvXNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelayNtBG_15ServerTcpDialerNtNtNtBK_3net8outbound9TcpDialer4dial0ECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.436.0.copyload.i.i) ]
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtBN_6server8tcprelay15ServerTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvXNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelayNtBG_15ServerTcpDialerNtNtNtBK_3net8outbound9TcpDialer4dial0ECsgZAIVb0XKpv_9ssservice.exit.i.i
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.637.i.i, i64 48, i1 false), !noalias !48135
  store i32 %i.bz, ptr %i.f, align 8, !noalias !48135
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %.sroa.3.0.copyload.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !48135
  %.sroa.923.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.436.0.copyload.i.i, ptr %.sroa.923.0..sroa_idx.i.i, align 8, !noalias !48135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !48135
  call void @_RNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB2_19OutboundProxyStream8from_tcp(ptr noalias nofree noundef nonnull sret([1160 x i8]) align 8 captures(none) dereferenceable(1160) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f) #53, !noalias !48142
  call void @llvm.experimental.noalias.scope.decl(metadata !48145)
  %i.cc = load i64, ptr %i.e, align 8, !range !267, !alias.scope !48146, !noalias !48147, !noundef !178 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !48148, !noalias !48135 ; 2 uses
  br i1 %i.cd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !48135
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtBN_6server8tcprelay15ServerTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit

bb.x:                                             ; preds = %bb.v
  %.sroa.943.0..sroa_idx44.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.9101.i.i.sroa.0.0.copyload43 = load ptr, ptr %.sroa.943.0..sroa_idx44.i.i, align 8, !noalias !48135
  %.sroa.9101.i.i.sroa.10.0..sroa.943.0..sroa_idx44.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10.0..sroa.943.0..sroa_idx44.i.i.sroa_idx, i64 48, i1 false), !noalias !48135
  %.sroa.9101.i.i.sroa.11.0..sroa.943.0..sroa_idx44.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11.0..sroa.943.0..sroa_idx44.i.i.sroa_idx, i64 1088, i1 false), !noalias !48135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !48135
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !48135, !nonnull !178, !align !186, !noundef !178 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !48135, !noundef !178
  %i.ck = getelementptr inbounds nuw [112 x i8], ptr %i.ch, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.ch, ptr %i.cl, align 8, !noalias !48135
  %.sroa.949.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.ck, ptr %.sroa.949.0..sroa_idx.i.i, align 8, !noalias !48135
  %.sroa.1050.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 0, ptr %.sroa.1050.0..sroa_idx.i.i, align 8, !noalias !48135
  br label %bb.y

bb.y:                                             ; preds = %bb.ak, %bb.x
  %i.cm = phi ptr [ %i.bu, %bb.x ], [ %i.cy, %bb.ak ] ; 3 uses
  %.sroa.9101.i.i.sroa.0.0 = phi ptr [ %.sroa.9101.i.i.sroa.0.0.copyload43, %bb.x ], [ %.sroa.594.i.i.sroa.0.0.copyload, %bb.ak ] ; 3 uses
  %i.cn = phi ptr [ %i.bv, %bb.x ], [ %i.cz, %bb.ak ] ; 3 uses
  %i.co = phi ptr [ %i.bw, %bb.x ], [ %i.da, %bb.ak ] ; 3 uses
  %i.cp = phi ptr [ %i.ck, %bb.x ], [ %.pre118.i.i, %bb.ak ]
  %i.cq = phi ptr [ %i.ch, %bb.x ], [ %.pre116.i.i, %bb.ak ] ; 6 uses
  %.sroa.095.0.i.i = phi i64 [ %i.cc, %bb.x ], [ %i.dc, %bb.ak ] ; 3 uses
  %.sroa.698.0.i.i = phi ptr [ %i.cf, %bb.x ], [ %.sroa.393.0.copyload.i.i, %bb.ak ] ; 3 uses
  %i.cr = icmp eq ptr %i.cq, %i.cp
  br i1 %i.cr, label %bb.am, label %bb.al

bb.z:                                             ; preds = %bb.ao, %bb.h
  %i.cs = phi ptr [ %i.ac, %bb.h ], [ %i.cm, %bb.ao ] ; 3 uses
  %i.ct = phi ptr [ %.phi.trans.insert.i, %bb.h ], [ %i.cn, %bb.ao ] ; 3 uses
  %i.cu = phi ptr [ %i.an, %bb.h ], [ %i.co, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !48135
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  call fastcc void @_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(1160) %i.d, ptr noundef nonnull align 8 %i.cv, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #61, !noalias !48142
  %i.cw = load i64, ptr %i.d, align 8, !range !302, !noalias !48135, !noundef !178 ; 3 uses
  %i.cx = icmp eq i64 %i.cw, -2
  br i1 %i.cx, label %bb.ap, label %bb.aq

bb.aa:                                            ; preds = %bb.an, %bb.h
  %i.cy = phi ptr [ %i.ac, %bb.h ], [ %i.dv, %bb.an ] ; 3 uses
  %i.cz = phi ptr [ %.phi.trans.insert.i, %bb.h ], [ %i.dw, %bb.an ] ; 3 uses
  %i.da = phi ptr [ %i.an, %bb.h ], [ %i.dx, %bb.an ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !48135
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  call fastcc void @_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(1160) %i.c, ptr noundef nonnull align 8 %i.db, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #61, !noalias !48142
  %i.dc = load i64, ptr %i.c, align 8, !range !302, !noalias !48135, !noundef !178 ; 3 uses
  %i.dd = icmp eq i64 %i.dc, -2
  br i1 %i.dd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !48135
  br label %bb.az

bb.ac:                                            ; preds = %bb.aa
  %.sroa.393.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.393.0.copyload.i.i = load ptr, ptr %.sroa.393.0..sroa_idx.i.i, align 8, !noalias !48135 ; 3 uses
  %.sroa.594.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.594.i.i.sroa.0.0.copyload = load ptr, ptr %.sroa.594.0..sroa_idx.i.i, align 8, !noalias !48135
  %.sroa.594.i.i.sroa.6.0..sroa.594.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.594.i.i.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.594.i.i.sroa.6.0..sroa.594.0..sroa_idx.i.i.sroa_idx, i64 48, i1 false), !noalias !48135
  %.sroa.594.i.i.sroa.7.0..sroa.594.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.594.i.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.594.i.i.sroa.7.0..sroa.594.0..sroa_idx.i.i.sroa_idx, i64 1088, i1 false), !noalias !48135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !48135
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 2496
  %i.df = load i8, ptr %i.de, align 8, !range !230, !noalias !48135, !noundef !178
  switch i8 %i.df, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i [
    i8 0, label %bb.ad
    i8 3, label %bb.ae
    i8 4, label %bb.af
  ]

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %i.db) #53, !noalias !48142
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 2504
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6socks5NtBH_16Socks5Negotiator13establish_tcpNtNtBJ_6stream19OutboundProxyStreamNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.dg) #53, !noalias !48142
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 2504
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound12http_connectNtBH_17HttpConnectClient9establishNtNtBJ_6stream19OutboundProxyStreamE0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.dh) #53, !noalias !48142
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 2497 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !range !181, !noalias !48135, !noundef !178
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  store i8 0, ptr %i.di, align 1, !noalias !48135
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 1336
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(1160) %i.dl) #53, !noalias !48142
  br label %bb.ah

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.ah, %bb.ad, %bb.ac
  %i.dm = icmp eq i64 %i.dc, -1
  br i1 %i.dm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.393.0.copyload.i.i) ]
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtBN_6server8tcprelay15ServerTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit

bb.ak:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.594.i.i.sroa.6, i64 48, i1 false), !noalias !48135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.594.i.i.sroa.7, i64 1088, i1 false), !noalias !48135
  %.phi.trans.insert115.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre116.i.i = load ptr, ptr %.phi.trans.insert115.i.i, align 8, !alias.scope !48149, !noalias !48135
  %.phi.trans.insert117.i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.pre118.i.i = load ptr, ptr %.phi.trans.insert117.i.i, align 8, !alias.scope !48149, !noalias !48135
  br label %bb.y

bb.al:                                            ; preds = %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.do = getelementptr inbounds nuw i8, ptr %i.cq, i64 112
  store ptr %i.do, ptr %i.dn, align 8, !alias.scope !48149, !noalias !48135
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !48150, !noalias !48135, !noundef !178 ; 2 uses
  %i.dr = add i64 %i.dq, 1                        ; 2 uses
  store i64 %i.dr, ptr %i.dp, align 8, !alias.scope !48150, !noalias !48135
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %i.dq, ptr %i.ds, align 8, !noalias !48135
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.cq, ptr %i.dt, align 8, !noalias !48135, !captures !231
  %.val9.i.i = load i64, ptr %i.cq, align 8, !range !271, !noalias !48142, !noundef !178
  %i.du = icmp sgt i64 %.val9.i.i, -1
  br i1 %i.du, label %bb.ao, label %bb.an

bb.am:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.i.i.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.13.i.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11, i64 1088, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtBN_6server8tcprelay15ServerTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit

bb.an:                                            ; preds = %bb.as, %bb.al
  %i.dv = phi ptr [ %i.cs, %bb.as ], [ %i.cm, %bb.al ]
  %.sroa.9101.i.i.sroa.0.1 = phi ptr [ %.sroa.572.i.i.sroa.0.0.copyload, %bb.as ], [ %.sroa.9101.i.i.sroa.0.0, %bb.al ]
  %i.dw = phi ptr [ %i.ct, %bb.as ], [ %i.cn, %bb.al ]
  %i.dx = phi ptr [ %i.cu, %bb.as ], [ %i.co, %bb.al ]
  %.pre-phi.i.i = phi i64 [ %.pre123.i.i, %bb.as ], [ %i.dr, %bb.al ] ; 2 uses
  %i.dy = phi ptr [ %.pre122.i.i, %bb.as ], [ %i.cq, %bb.al ]
  %.sroa.095.1.i.i = phi i64 [ %i.cw, %bb.as ], [ %.sroa.095.0.i.i, %bb.al ]
  %.sroa.698.1.i.i = phi ptr [ %.sroa.371.0.copyload.i.i, %bb.as ], [ %.sroa.698.0.i.i, %bb.al ]
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !48135, !nonnull !178, !align !186, !noundef !178
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !48135, !noundef !178
  %.not.i.i = icmp ult i64 %.pre-phi.i.i, %i.ec
  %i.ed = getelementptr inbounds nuw [112 x i8], ptr %i.ea, i64 %.pre-phi.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !48135, !nonnull !178, !align !186, !noundef !178
  %..i13.i.i = select i1 %.not.i.i, ptr %i.ee, ptr %i.eg
  %.sroa.086.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %.sroa.9101.i.i.sroa.0.1, ptr %.sroa.086.sroa.8.0..sroa_idx.i.i, align 8, !noalias !48135
  %.sroa.9101.i.i.sroa.10.0..sroa.086.sroa.8.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10.0..sroa.086.sroa.8.0..sroa_idx.i.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10, i64 48, i1 false), !noalias !48135
  %.sroa.9101.i.i.sroa.11.0..sroa.086.sroa.8.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11.0..sroa.086.sroa.8.0..sroa_idx.i.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11, i64 1088, i1 false), !noalias !48135
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %.sroa.095.1.i.i, ptr %i.eh, align 8, !noalias !48135
  %.sroa.086.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %.sroa.698.1.i.i, ptr %.sroa.086.sroa.7.0..sroa_idx.i.i, align 8, !noalias !48135
  %.sroa.787.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1320
  store ptr %i.dy, ptr %.sroa.787.0..sroa_idx.i.i, align 8, !noalias !48135
  %.sroa.888.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1328
  store ptr %..i13.i.i, ptr %.sroa.888.0..sroa_idx.i.i, align 8, !noalias !48135
  %.sroa.1090.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2496
  store i8 0, ptr %.sroa.1090.0..sroa_idx.i.i, align 8, !noalias !48135
  br label %bb.aa

bb.ao:                                            ; preds = %bb.al
  %i.ei = call { ptr, i64 } @_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outboundNtB2_16OutboundProxyHop7tls_sni(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cq) #53, !noalias !48142 ; 2 uses
  %i.ej = extractvalue { ptr, i64 } %i.ei, 0
  %i.ek = extractvalue { ptr, i64 } %i.ei, 1
  %.sroa.064.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %.sroa.9101.i.i.sroa.0.0, ptr %.sroa.064.sroa.8.0..sroa_idx.i.i, align 8, !noalias !48135
  %.sroa.9101.i.i.sroa.10.0..sroa.064.sroa.8.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10.0..sroa.064.sroa.8.0..sroa_idx.i.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10, i64 48, i1 false), !noalias !48135
  %.sroa.9101.i.i.sroa.11.0..sroa.064.sroa.8.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11.0..sroa.064.sroa.8.0..sroa_idx.i.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11, i64 1088, i1 false), !noalias !48135
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %.sroa.095.0.i.i, ptr %i.el, align 8, !noalias !48135
  %.sroa.064.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %.sroa.698.0.i.i, ptr %.sroa.064.sroa.7.0..sroa_idx.i.i, align 8, !noalias !48135
  %.sroa.765.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1320
  store ptr %i.ej, ptr %.sroa.765.0..sroa_idx.i.i, align 8, !noalias !48135
  %.sroa.866.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1328
  store i64 %i.ek, ptr %.sroa.866.0..sroa_idx.i.i, align 8, !noalias !48135
  %.sroa.1068.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4896
  store i8 0, ptr %.sroa.1068.0..sroa_idx.i.i, align 8, !noalias !48135
  br label %bb.z

bb.ap:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !48135
  br label %bb.az

bb.aq:                                            ; preds = %bb.z
  %.sroa.371.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.371.0.copyload.i.i = load ptr, ptr %.sroa.371.0..sroa_idx.i.i, align 8, !noalias !48135 ; 3 uses
  %.sroa.572.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.572.i.i.sroa.0.0.copyload = load ptr, ptr %.sroa.572.0..sroa_idx.i.i, align 8, !noalias !48135
  %.sroa.572.i.i.sroa.6.0..sroa.572.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.572.i.i.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.572.i.i.sroa.6.0..sroa.572.0..sroa_idx.i.i.sroa_idx, i64 48, i1 false), !noalias !48135
  %.sroa.572.i.i.sroa.7.0..sroa.572.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.572.i.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.572.i.i.sroa.7.0..sroa.572.0..sroa_idx.i.i.sroa_idx, i64 1088, i1 false), !noalias !48135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !48135
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.cv) #53, !noalias !48142
  %i.em = icmp eq i64 %i.cw, -1
  br i1 %i.em, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.371.0.copyload.i.i) ]
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtBN_6server8tcprelay15ServerTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit

bb.as:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9101.i.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.572.i.i.sroa.6, i64 48, i1 false), !noalias !48135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.9101.i.i.sroa.11, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.572.i.i.sroa.7, i64 1088, i1 false), !noalias !48135
  %.phi.trans.insert119.i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.pre120.i.i = load i64, ptr %.phi.trans.insert119.i.i, align 8, !noalias !48135
  %.phi.trans.insert121.i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.pre122.i.i = load ptr, ptr %.phi.trans.insert121.i.i, align 8, !noalias !48135
  %.pre123.i.i = add i64 %.pre120.i.i, 1
  br label %bb.an

bb.at:                                            ; preds = %bb.f
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @567) #63, !noalias !48134
  unreachable

bb.au:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #63
  unreachable

common.ret:                                       ; preds = %bb.az, %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamNtNtNtB5_2io5error5ErrorE3mapNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelay12RemoteStreamNcNtB20_6Direct0ECsgZAIVb0XKpv_9ssservice.exit, %bb.av
  %.sink = phi i8 [ 4, %bb.az ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamNtNtNtB5_2io5error5ErrorE3mapNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelay12RemoteStreamNcNtB20_6Direct0ECsgZAIVb0XKpv_9ssservice.exit ], [ 3, %bb.av ]
  store i8 %.sink, ptr %i.j, align 8
  ret void

bb.av:                                            ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.aw:                                            ; preds = %bb.e
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.313.0.copyload = load i32, ptr %.sroa.313.0..sroa_idx, align 4
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.315.0.copyload = load ptr, ptr %.sroa.315.0..sroa_idx, align 8 ; 3 uses
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.417, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.417.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtBG_9TcpStream24connect_remote_with_opts0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.z) #53
  %i.en = icmp eq i32 %i.aa, -2
  br i1 %i.en, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.315.0.copyload) ]
  br label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamNtNtNtB5_2io5error5ErrorE3mapNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelay12RemoteStreamNcNtB20_6Direct0ECsgZAIVb0XKpv_9ssservice.exit

bb.ay:                                            ; preds = %bb.aw
  %.sroa.437.0.insert.ext = zext i32 %i.aa to i64
  %.sroa.437.4.insert.ext = zext i32 %.sroa.313.0.copyload to i64
  %.sroa.437.4.insert.shift = shl nuw i64 %.sroa.437.4.insert.ext, 32
  %.sroa.437.4.insert.insert = or disjoint i64 %.sroa.437.4.insert.shift, %.sroa.437.0.insert.ext
  %i.eo = inttoptr i64 %.sroa.437.4.insert.insert to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1139, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.417, i64 48, i1 false), !alias.scope !48151
  br label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamNtNtNtB5_2io5error5ErrorE3mapNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelay12RemoteStreamNcNtB20_6Direct0ECsgZAIVb0XKpv_9ssservice.exit

_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamNtNtNtB5_2io5error5ErrorE3mapNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelay12RemoteStreamNcNtB20_6Direct0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.bb, %bb.ba, %bb.ay, %bb.ax
  %.sroa.036.0 = phi i64 [ -1, %bb.ay ], [ -2, %bb.ax ], [ -2, %bb.ba ], [ %.sroa.0102.0.i.i, %bb.bb ]
  %.sroa.938.0 = phi ptr [ %.sroa.315.0.copyload, %bb.ay ], [ undef, %bb.ax ], [ undef, %bb.ba ], [ %.sroa.13.i.i.sroa.0.4, %bb.bb ]
  %.sroa.437.0 = phi ptr [ %i.eo, %bb.ay ], [ %.sroa.315.0.copyload, %bb.ax ], [ %.sroa.7103.0.i.i, %bb.ba ], [ %.sroa.7103.0.i.i, %bb.bb ]
  store i64 %.sroa.036.0, ptr %0, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.437.0, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.938.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.938.0, ptr %.sroa.938.0..sroa_idx, align 8
  %.sroa.1139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1139.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1139, i64 48, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.12, i64 1088, i1 false)
  br label %common.ret

bb.az:                                            ; preds = %bb.t, %bb.ab, %bb.ap
  %i.ep = phi ptr [ %i.bu, %bb.t ], [ %i.cy, %bb.ab ], [ %i.cs, %bb.ap ]
  %.ph.i = phi ptr [ %i.bv, %bb.t ], [ %i.cz, %bb.ab ], [ %i.ct, %bb.ap ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.t ], [ 5, %bb.ab ], [ 4, %bb.ap ]
  store i8 %.sink.i.ph.i, ptr %.ph.i, align 8, !noalias !48135
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9101.i.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9101.i.i.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.594.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.594.i.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.572.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.572.i.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !48133
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.637.i.i)
  store i8 3, ptr %i.ep, align 8, !noalias !48133
  store i64 -3, ptr %0, align 8
  br label %common.ret

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtBN_6server8tcprelay15ServerTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.k, %bb.u, %bb.w, %bb.aj, %bb.am, %bb.ar
  %i.eq = phi ptr [ %i.ao, %bb.k ], [ %i.bu, %bb.u ], [ %i.bu, %bb.w ], [ %i.cm, %bb.am ], [ %i.cs, %bb.ar ], [ %i.cy, %bb.aj ]
  %.sroa.13.i.i.sroa.0.4 = phi ptr [ undef, %bb.k ], [ undef, %bb.u ], [ undef, %bb.w ], [ %.sroa.9101.i.i.sroa.0.0, %bb.am ], [ undef, %bb.ar ], [ undef, %bb.aj ]
  %i.er = phi ptr [ %i.at, %bb.k ], [ %i.bv, %bb.u ], [ %i.bv, %bb.w ], [ %i.cn, %bb.am ], [ %i.ct, %bb.ar ], [ %i.cz, %bb.aj ]
  %i.es = phi ptr [ %i.au, %bb.k ], [ %i.bw, %bb.u ], [ %i.bw, %bb.w ], [ %i.co, %bb.am ], [ %i.cu, %bb.ar ], [ %i.da, %bb.aj ]
  %.sroa.0102.0.i.i = phi i64 [ -1, %bb.k ], [ -1, %bb.u ], [ -1, %bb.w ], [ %.sroa.095.0.i.i, %bb.am ], [ -1, %bb.ar ], [ -1, %bb.aj ] ; 2 uses
  %.sroa.7103.0.i.i = phi ptr [ %i.ay, %bb.k ], [ %.sroa.436.0.copyload.i.i, %bb.u ], [ %i.cf, %bb.w ], [ %.sroa.698.0.i.i, %bb.am ], [ %.sroa.371.0.copyload.i.i, %bb.ar ], [ %.sroa.393.0.copyload.i.i, %bb.aj ] ; 3 uses
  store i8 1, ptr %i.er, align 8, !noalias !48135
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9101.i.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9101.i.i.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.594.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.594.i.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.572.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.572.i.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !48133
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.637.i.i)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13connect_chainNtNtNtBM_6server8tcprelay15ServerTcpDialerE0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.es) #53, !noalias !48134
  store i8 1, ptr %i.eq, align 8, !noalias !48133
  %i.et = icmp eq i64 %.sroa.0102.0.i.i, -1
  br i1 %i.et, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtBN_6server8tcprelay15ServerTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7103.0.i.i) ]
  br label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamNtNtNtB5_2io5error5ErrorE3mapNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelay12RemoteStreamNcNtB20_6Direct0ECsgZAIVb0XKpv_9ssservice.exit

bb.bb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtBN_6server8tcprelay15ServerTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1139, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.i.i.sroa.6, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(1088) %.sroa.13.i.i.sroa.7, i64 1088, i1 false)
  br label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamNtNtNtB5_2io5error5ErrorE3mapNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelay12RemoteStreamNcNtB20_6Direct0ECsgZAIVb0XKpv_9ssservice.exit
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNCNvMs3_NtNtCslxdWNweD0x2_11shadowsocks12dns_resolver8resolverNtB9_11DnsResolver27hickory_dns_system_resolver00CsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [512 x i8], align 8               ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [512 x i8], align 8               ; 8 uses
  %i.h = alloca [1 x i8], align 1                 ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [96 x i8], align 8                ; 16 uses
  %i.k = alloca [96 x i8], align 8                ; 16 uses
  %i.l = alloca [64 x i8], align 8                ; 10 uses
  %i.m = alloca [3 x i8], align 4                 ; 8 uses
  %i.n = alloca [2 x i8], align 1                 ; 8 uses
  %i.o = alloca [96 x i8], align 8                ; 16 uses
  %.sroa.5.i.i = alloca [256 x i8], align 8       ; 4 uses
end_hunk_1
begin_hunk_2_@_RNCNvNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association21create_proxied_socket0CsgZAIVb0XKpv_9ssservice:bb.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvXNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationNtBG_14LocalTcpDialerNtNtNtBO_3net8outbound9TcpDialer4dial0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.cd
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtBG_9TcpStream24connect_remote_with_opts0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.mq) #53, !noalias !79056
  store i8 1, ptr %i.mp, align 8, !noalias !79051
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.3.0.copyload.i.i.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 4, !noalias !79043
  %.sroa.436.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.436.0.copyload.i.i.i.i = load ptr, ptr %.sroa.436.0..sroa_idx.i.i.i.i, align 8, !noalias !79043 ; 3 uses
  %.sroa.637.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.637.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.637.0..sroa_idx.i.i.i.i, i64 48, i1 false), !noalias !79043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !79043
  %i.mt = icmp eq i32 %i.mr, -2
  br i1 %i.mt, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvXNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationNtBG_14LocalTcpDialerNtNtNtBO_3net8outbound9TcpDialer4dial0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.436.0.copyload.i.i.i.i) ]
  br label %bb.dk

bb.ci:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvXNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationNtBG_14LocalTcpDialerNtNtNtBO_3net8outbound9TcpDialer4dial0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.637.i.i.i.i, i64 48, i1 false), !noalias !79043
  store i32 %i.mr, ptr %i.m, align 8, !noalias !79043
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %.sroa.3.0.copyload.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 4, !noalias !79043
  %.sroa.923.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.436.0.copyload.i.i.i.i, ptr %.sroa.923.0..sroa_idx.i.i.i.i, align 8, !noalias !79043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !79043
  call void @_RNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB2_19OutboundProxyStream8from_tcp(ptr noalias nofree noundef nonnull sret([1160 x i8]) align 8 captures(none) dereferenceable(1160) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.m) #53, !noalias !79054
  call void @llvm.experimental.noalias.scope.decl(metadata !79057)
  %i.mu = load i64, ptr %i.l, align 8, !range !267, !alias.scope !79058, !noalias !79059, !noundef !178 ; 2 uses
  %i.mv = icmp eq i64 %i.mu, -1
  %i.mw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !alias.scope !79060, !noalias !79043 ; 2 uses
  br i1 %i.mv, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !79043
  br label %bb.dk

bb.ck:                                            ; preds = %bb.ci
  %.sroa.943.0..sroa_idx44.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.9101.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.943.0..sroa_idx44.i.i.i.i, i64 1144, i1 false), !noalias !79043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !79043
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 1840
  %i.mz = load ptr, ptr %i.my, align 8, !noalias !79043, !nonnull !178, !align !186, !noundef !178 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 1848
  %i.nb = load i64, ptr %i.na, align 8, !noalias !79043, !noundef !178
  %i.nc = getelementptr inbounds nuw [112 x i8], ptr %i.mz, i64 %i.nb ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 1864
  store ptr %i.mz, ptr %i.nd, align 8, !noalias !79043
  %.sroa.949.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1872
  store ptr %i.nc, ptr %.sroa.949.0..sroa_idx.i.i.i.i, align 8, !noalias !79043
  %.sroa.1050.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1880
  store i64 0, ptr %.sroa.1050.0..sroa_idx.i.i.i.i, align 8, !noalias !79043
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cx, %bb.ck
  %i.ne = phi ptr [ %i.mi, %bb.ck ], [ %i.ny, %bb.cx ] ; 3 uses
  %i.nf = phi ptr [ %i.mj, %bb.ck ], [ %i.nz, %bb.cx ] ; 3 uses
  %i.ng = phi ptr [ %i.mk, %bb.ck ], [ %i.oa, %bb.cx ] ; 3 uses
  %i.nh = phi ptr [ %i.ml, %bb.ck ], [ %i.ob, %bb.cx ] ; 3 uses
  %i.ni = phi ptr [ %i.mm, %bb.ck ], [ %i.oc, %bb.cx ] ; 3 uses
  %i.nj = phi ptr [ %i.mn, %bb.ck ], [ %i.od, %bb.cx ] ; 3 uses
  %i.nk = phi ptr [ %i.mo, %bb.ck ], [ %i.oe, %bb.cx ] ; 3 uses
  %i.nl = phi ptr [ %i.nc, %bb.ck ], [ %.pre118.i.i.i.i, %bb.cx ]
  %i.nm = phi ptr [ %i.mz, %bb.ck ], [ %.pre116.i.i.i.i, %bb.cx ] ; 6 uses
  %.sroa.095.0.i.i.i.i = phi i64 [ %i.mu, %bb.ck ], [ %i.og, %bb.cx ] ; 3 uses
  %.sroa.698.0.i.i.i.i = phi ptr [ %i.mx, %bb.ck ], [ %.sroa.393.0.copyload.i.i.i.i, %bb.cx ] ; 3 uses
  %i.nn = icmp eq ptr %i.nm, %i.nl
  br i1 %i.nn, label %bb.cz, label %bb.cy

bb.cm:                                            ; preds = %bb.db, %bb.bu
  %i.no = phi ptr [ %i.ne, %bb.db ], [ %i.ff, %bb.bu ] ; 3 uses
  %i.np = phi ptr [ %i.nf, %bb.db ], [ %.phi.trans.insert.i, %bb.bu ] ; 3 uses
  %i.nq = phi ptr [ %i.ng, %bb.db ], [ %i.fr, %bb.bu ] ; 2 uses
  %i.nr = phi ptr [ %i.nh, %bb.db ], [ %.phi.trans.insert837.i.i, %bb.bu ] ; 3 uses
  %i.ns = phi ptr [ %i.ni, %bb.db ], [ %i.jj, %bb.bu ] ; 2 uses
  %i.nt = phi ptr [ %i.nj, %bb.db ], [ %.phi.trans.insert.i.i.i, %bb.bu ] ; 3 uses
  %i.nu = phi ptr [ %i.nk, %bb.db ], [ %i.kv, %bb.bu ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !79043
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 1912 ; 2 uses
  call fastcc void @_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(1160) %i.k, ptr noundef nonnull align 8 %i.nv, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #61, !noalias !79054
  %i.nw = load i64, ptr %i.k, align 8, !range !302, !noalias !79043, !noundef !178 ; 3 uses
  %i.nx = icmp eq i64 %i.nw, -2
  br i1 %i.nx, label %bb.dc, label %bb.dd

bb.cn:                                            ; preds = %bb.da, %bb.bu
  %i.ny = phi ptr [ %i.oz, %bb.da ], [ %i.ff, %bb.bu ] ; 3 uses
  %i.nz = phi ptr [ %i.pa, %bb.da ], [ %.phi.trans.insert.i, %bb.bu ] ; 3 uses
  %i.oa = phi ptr [ %i.pb, %bb.da ], [ %i.fr, %bb.bu ] ; 2 uses
  %i.ob = phi ptr [ %i.pc, %bb.da ], [ %.phi.trans.insert837.i.i, %bb.bu ] ; 3 uses
  %i.oc = phi ptr [ %i.pd, %bb.da ], [ %i.jj, %bb.bu ] ; 2 uses
  %i.od = phi ptr [ %i.pe, %bb.da ], [ %.phi.trans.insert.i.i.i, %bb.bu ] ; 3 uses
  %i.oe = phi ptr [ %i.pf, %bb.da ], [ %i.kv, %bb.bu ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !79043
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 1912 ; 2 uses
  call fastcc void @_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(1160) %i.j, ptr noundef nonnull align 8 %i.of, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #61, !noalias !79054
  %i.og = load i64, ptr %i.j, align 8, !range !302, !noalias !79043, !noundef !178 ; 3 uses
  %i.oh = icmp eq i64 %i.og, -2
  br i1 %i.oh, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !79043
  br label %bb.dj

bb.cp:                                            ; preds = %bb.cn
  %.sroa.393.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.393.0.copyload.i.i.i.i = load ptr, ptr %.sroa.393.0..sroa_idx.i.i.i.i, align 8, !noalias !79043 ; 3 uses
  %.sroa.594.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.594.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.594.0..sroa_idx.i.i.i.i, i64 1144, i1 false), !noalias !79043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !79043
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 4248
  %i.oj = load i8, ptr %i.oi, align 8, !range !230, !noalias !79043, !noundef !178
  switch i8 %i.oj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i [
    i8 0, label %bb.cq
    i8 3, label %bb.cr
    i8 4, label %bb.cs
  ]

bb.cq:                                            ; preds = %bb.cp
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %i.of) #53, !noalias !79054
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 4256
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6socks5NtBH_16Socks5Negotiator13establish_tcpNtNtBJ_6stream19OutboundProxyStreamNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.ok) #53, !noalias !79054
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cp
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 4256
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound12http_connectNtBH_17HttpConnectClient9establishNtNtBJ_6stream19OutboundProxyStreamE0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.ol) #53, !noalias !79054
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 4249 ; 2 uses
  %i.on = load i8, ptr %i.om, align 1, !range !181, !noalias !79043, !noundef !178
  %i.oo = trunc nuw i8 %i.on to i1
  br i1 %i.oo, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.cv, %bb.ct
  store i8 0, ptr %i.om, align 1, !noalias !79043
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

bb.cv:                                            ; preds = %bb.ct
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 3088
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(1160) %i.op) #53, !noalias !79054
  br label %bb.cu

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.cu, %bb.cq, %bb.cp
  %i.oq = icmp eq i64 %i.og, -1
  br i1 %i.oq, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.393.0.copyload.i.i.i.i) ]
  br label %bb.dk

bb.cx:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.9101.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.594.i.i.i.i, i64 1144, i1 false), !noalias !79043
  %.phi.trans.insert115.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1864
  %.pre116.i.i.i.i = load ptr, ptr %.phi.trans.insert115.i.i.i.i, align 8, !alias.scope !79061, !noalias !79043
  %.phi.trans.insert117.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1872
  %.pre118.i.i.i.i = load ptr, ptr %.phi.trans.insert117.i.i.i.i, align 8, !alias.scope !79061, !noalias !79043
  br label %bb.cl

bb.cy:                                            ; preds = %bb.cl
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 1864
  %i.os = getelementptr inbounds nuw i8, ptr %i.nm, i64 112
  store ptr %i.os, ptr %i.or, align 8, !alias.scope !79061, !noalias !79043
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 1880 ; 2 uses
  %i.ou = load i64, ptr %i.ot, align 8, !alias.scope !79062, !noalias !79043, !noundef !178 ; 2 uses
  %i.ov = add i64 %i.ou, 1                        ; 2 uses
  store i64 %i.ov, ptr %i.ot, align 8, !alias.scope !79062, !noalias !79043
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 1888
  store i64 %i.ou, ptr %i.ow, align 8, !noalias !79043
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 1896
  store ptr %i.nm, ptr %i.ox, align 8, !noalias !79043, !captures !231
  %.val9.i.i.i.i = load i64, ptr %i.nm, align 8, !range !271, !noalias !79054, !noundef !178
  %i.oy = icmp sgt i64 %.val9.i.i.i.i, -1
  br i1 %i.oy, label %bb.db, label %bb.da

bb.cz:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.13.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.9101.i.i.i.i, i64 1144, i1 false), !noalias !79040
  br label %bb.dk

bb.da:                                            ; preds = %bb.df, %bb.cy
  %i.oz = phi ptr [ %i.no, %bb.df ], [ %i.ne, %bb.cy ]
  %i.pa = phi ptr [ %i.np, %bb.df ], [ %i.nf, %bb.cy ]
  %i.pb = phi ptr [ %i.nq, %bb.df ], [ %i.ng, %bb.cy ]
  %i.pc = phi ptr [ %i.nr, %bb.df ], [ %i.nh, %bb.cy ]
  %i.pd = phi ptr [ %i.ns, %bb.df ], [ %i.ni, %bb.cy ]
  %i.pe = phi ptr [ %i.nt, %bb.df ], [ %i.nj, %bb.cy ]
  %i.pf = phi ptr [ %i.nu, %bb.df ], [ %i.nk, %bb.cy ]
  %.pre-phi.i.i.i.i = phi i64 [ %.pre123.i.i.i.i, %bb.df ], [ %i.ov, %bb.cy ] ; 2 uses
  %i.pg = phi ptr [ %.pre122.i.i.i.i, %bb.df ], [ %i.nm, %bb.cy ]
  %.sroa.095.1.i.i.i.i = phi i64 [ %i.nw, %bb.df ], [ %.sroa.095.0.i.i.i.i, %bb.cy ]
  %.sroa.698.1.i.i.i.i = phi ptr [ %.sroa.371.0.copyload.i.i.i.i, %bb.df ], [ %.sroa.698.0.i.i.i.i, %bb.cy ]
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 1840
  %i.pi = load ptr, ptr %i.ph, align 8, !noalias !79043, !nonnull !178, !align !186, !noundef !178
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 1848
  %i.pk = load i64, ptr %i.pj, align 8, !noalias !79043, !noundef !178
  %.not.i.i.i.i = icmp ult i64 %.pre-phi.i.i.i.i, %i.pk
  %i.pl = getelementptr inbounds nuw [112 x i8], ptr %i.pi, i64 %.pre-phi.i.i.i.i
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 72
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 1856
  %i.po = load ptr, ptr %i.pn, align 8, !noalias !79043, !nonnull !178, !align !186, !noundef !178
  %..i13.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.pm, ptr %i.po
  %.sroa.086.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.086.sroa.8.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.9101.i.i.i.i, i64 1144, i1 false), !noalias !79043
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 1912
  store i64 %.sroa.095.1.i.i.i.i, ptr %i.pp, align 8, !noalias !79043
  %.sroa.086.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1920
  store ptr %.sroa.698.1.i.i.i.i, ptr %.sroa.086.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !79043
  %.sroa.787.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3072
  store ptr %i.pg, ptr %.sroa.787.0..sroa_idx.i.i.i.i, align 8, !noalias !79043
  %.sroa.888.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3080
  store ptr %..i13.i.i.i.i, ptr %.sroa.888.0..sroa_idx.i.i.i.i, align 8, !noalias !79043
  %.sroa.1090.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4248
  store i8 0, ptr %.sroa.1090.0..sroa_idx.i.i.i.i, align 8, !noalias !79043
  br label %bb.cn

bb.db:                                            ; preds = %bb.cy
  %i.pq = call { ptr, i64 } @_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outboundNtB2_16OutboundProxyHop7tls_sni(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.nm) #53, !noalias !79054 ; 2 uses
  %i.pr = extractvalue { ptr, i64 } %i.pq, 0
  %i.ps = extractvalue { ptr, i64 } %i.pq, 1
  %.sroa.064.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.064.sroa.8.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.9101.i.i.i.i, i64 1144, i1 false), !noalias !79043
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 1912
  store i64 %.sroa.095.0.i.i.i.i, ptr %i.pt, align 8, !noalias !79043
  %.sroa.064.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1920
  store ptr %.sroa.698.0.i.i.i.i, ptr %.sroa.064.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !79043
  %.sroa.765.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3072
  store ptr %i.pr, ptr %.sroa.765.0..sroa_idx.i.i.i.i, align 8, !noalias !79043
  %.sroa.866.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3080
  store i64 %i.ps, ptr %.sroa.866.0..sroa_idx.i.i.i.i, align 8, !noalias !79043
  %.sroa.1068.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 6648
  store i8 0, ptr %.sroa.1068.0..sroa_idx.i.i.i.i, align 8, !noalias !79043
  br label %bb.cm

bb.dc:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !79043
  br label %bb.dj

bb.dd:                                            ; preds = %bb.cm
  %.sroa.371.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.371.0.copyload.i.i.i.i = load ptr, ptr %.sroa.371.0..sroa_idx.i.i.i.i, align 8, !noalias !79043 ; 3 uses
  %.sroa.572.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.572.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.572.0..sroa_idx.i.i.i.i, i64 1144, i1 false), !noalias !79043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !79043
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.nv) #53, !noalias !79054
  %i.pu = icmp eq i64 %i.nw, -1
  br i1 %i.pu, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.371.0.copyload.i.i.i.i) ]
  br label %bb.dk

bb.df:                                            ; preds = %bb.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.9101.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.572.i.i.i.i, i64 1144, i1 false), !noalias !79043
  %.phi.trans.insert119.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1888
  %.pre120.i.i.i.i = load i64, ptr %.phi.trans.insert119.i.i.i.i, align 8, !noalias !79043
  %.phi.trans.insert121.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1896
  %.pre122.i.i.i.i = load ptr, ptr %.phi.trans.insert121.i.i.i.i, align 8, !noalias !79043
  %.pre123.i.i.i.i = add i64 %.pre120.i.i.i.i, 1
  br label %bb.da

bb.dg:                                            ; preds = %bb.bj
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @735) #63, !noalias !79042
  unreachable

bb.dh:                                            ; preds = %bb.bs
  store i8 3, ptr %i.kr, align 8, !noalias !79044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !79040
  br label %_RNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain31connect_chain_for_udp_associateNtNtNtNtNtBa_5local3net3udp11association14LocalTcpDialerE0CsgZAIVb0XKpv_9ssservice.exit.thread.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvXNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationNtBG_14LocalTcpDialerNtNtNtBO_3net8outbound9TcpDialer4dial0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.bs
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtBG_9TcpStream24connect_remote_with_opts0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.ks) #53, !noalias !79063
  store i8 1, ptr %i.kr, align 8, !noalias !79044
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.3.0.copyload.i.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !noalias !79040
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.415.0.copyload.i.i.i = load ptr, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !noalias !79040 ; 3 uses
  %.sroa.616.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.616.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.616.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !79040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !79040
  %i.pv = icmp eq i32 %i.kt, -2
  br i1 %i.pv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain31connect_chain_for_udp_associateNtNtNtNtNtBM_5local3net3udp11association14LocalTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i, label %bb.di

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain31connect_chain_for_udp_associateNtNtNtNtNtBM_5local3net3udp11association14LocalTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit.thread.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvXNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationNtBG_14LocalTcpDialerNtNtNtBO_3net8outbound9TcpDialer4dial0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.415.0.copyload.i.i.i) ]
  store i8 1, ptr %i.kp, align 8, !noalias !79040
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !79024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !79024
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8236.sroa.5.i.i)
  br label %bb.gt

bb.di:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvXNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationNtBG_14LocalTcpDialerNtNtNtBO_3net8outbound9TcpDialer4dial0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.616.i.i.i, i64 48, i1 false), !noalias !79040
  store i32 %i.kt, ptr %i.q, align 8, !noalias !79040
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %.sroa.3.0.copyload.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4, !noalias !79040
  %.sroa.96.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.415.0.copyload.i.i.i, ptr %.sroa.96.0..sroa_idx.i.i.i, align 8, !noalias !79040
  call void @_RNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB2_19OutboundProxyStream8from_tcp(ptr noalias nofree noundef nonnull sret([1160 x i8]) align 8 captures(none) dereferenceable(1160) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.q) #53, !noalias !79042
  br label %_RNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain31connect_chain_for_udp_associateNtNtNtNtNtBa_5local3net3udp11association14LocalTcpDialerE0CsgZAIVb0XKpv_9ssservice.exit.i.i

bb.dj:                                            ; preds = %bb.dc, %bb.co, %bb.cg
  %i.pw = phi ptr [ %i.mi, %bb.cg ], [ %i.ny, %bb.co ], [ %i.no, %bb.dc ]
  %i.px = phi ptr [ %i.mj, %bb.cg ], [ %i.nz, %bb.co ], [ %i.np, %bb.dc ]
  %i.py = phi ptr [ %i.ml, %bb.cg ], [ %i.ob, %bb.co ], [ %i.nr, %bb.dc ]
  %i.pz = phi ptr [ %i.mn, %bb.cg ], [ %i.od, %bb.co ], [ %i.nt, %bb.dc ]
  %.sink.i.ph.i.i.i = phi i8 [ 3, %bb.cg ], [ 5, %bb.co ], [ 4, %bb.dc ]
  store i8 %.sink.i.ph.i.i.i, ptr %i.pz, align 8, !noalias !79043
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9101.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.594.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.572.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !79040
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.637.i.i.i.i)
  br label %_RNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain31connect_chain_for_udp_associateNtNtNtNtNtBa_5local3net3udp11association14LocalTcpDialerE0CsgZAIVb0XKpv_9ssservice.exit.thread.i.i

bb.dk:                                            ; preds = %bb.de, %bb.cz, %bb.cw, %bb.cj, %bb.ch, %bb.bx
  %i.qa = phi ptr [ %i.mi, %bb.ch ], [ %i.mi, %bb.cj ], [ %i.ne, %bb.cz ], [ %i.no, %bb.de ], [ %i.ny, %bb.cw ], [ %i.ff, %bb.bx ]
  %i.qb = phi ptr [ %i.mj, %bb.ch ], [ %i.mj, %bb.cj ], [ %i.nf, %bb.cz ], [ %i.np, %bb.de ], [ %i.nz, %bb.cw ], [ %.phi.trans.insert.i, %bb.bx ]
  %i.qc = phi ptr [ %i.mk, %bb.ch ], [ %i.mk, %bb.cj ], [ %i.ng, %bb.cz ], [ %i.nq, %bb.de ], [ %i.oa, %bb.cw ], [ %i.fr, %bb.bx ]
  %i.qd = phi ptr [ %i.ml, %bb.ch ], [ %i.ml, %bb.cj ], [ %i.nh, %bb.cz ], [ %i.nr, %bb.de ], [ %i.ob, %bb.cw ], [ %.phi.trans.insert837.i.i, %bb.bx ]
  %i.qe = phi ptr [ %i.mm, %bb.ch ], [ %i.mm, %bb.cj ], [ %i.ni, %bb.cz ], [ %i.ns, %bb.de ], [ %i.oc, %bb.cw ], [ %i.jj, %bb.bx ]
  %i.qf = phi ptr [ %i.mn, %bb.ch ], [ %i.mn, %bb.cj ], [ %i.nj, %bb.cz ], [ %i.nt, %bb.de ], [ %i.od, %bb.cw ], [ %.phi.trans.insert.i.i.i, %bb.bx ]
  %i.qg = phi ptr [ %i.mo, %bb.ch ], [ %i.mo, %bb.cj ], [ %i.nk, %bb.cz ], [ %i.nu, %bb.de ], [ %i.oe, %bb.cw ], [ %i.kv, %bb.bx ]
  %.sroa.0102.0.i.i.i.i = phi i64 [ -1, %bb.ch ], [ -1, %bb.cj ], [ %.sroa.095.0.i.i.i.i, %bb.cz ], [ -1, %bb.de ], [ -1, %bb.cw ], [ -1, %bb.bx ]
  %.sroa.7103.0.i.i.i.i = phi ptr [ %.sroa.436.0.copyload.i.i.i.i, %bb.ch ], [ %i.mx, %bb.cj ], [ %.sroa.698.0.i.i.i.i, %bb.cz ], [ %.sroa.371.0.copyload.i.i.i.i, %bb.de ], [ %.sroa.393.0.copyload.i.i.i.i, %bb.cw ], [ %i.kz, %bb.bx ]
  store i8 1, ptr %i.qf, align 8, !noalias !79043
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9101.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.594.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.572.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !79040
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.637.i.i.i.i)
  store i64 %.sroa.0102.0.i.i.i.i, ptr %i.p, align 8, !noalias !79040
  %.sroa.932.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.7103.0.i.i.i.i, ptr %.sroa.932.0..sroa_idx.i.i.i, align 8, !noalias !79040
  %.sroa.1033.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.1033.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.13.i.i.i.i, i64 1144, i1 false), !noalias !79040
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13connect_chainNtNtNtNtNtBM_5local3net3udp11association14LocalTcpDialerE0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.qg) #53, !noalias !79042
  br label %_RNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain31connect_chain_for_udp_associateNtNtNtNtNtBa_5local3net3udp11association14LocalTcpDialerE0CsgZAIVb0XKpv_9ssservice.exit.i.i

_RNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain31connect_chain_for_udp_associateNtNtNtNtNtBa_5local3net3udp11association14LocalTcpDialerE0CsgZAIVb0XKpv_9ssservice.exit.thread.i.i: ; preds = %bb.dj, %bb.dh
  %i.qh = phi ptr [ %i.km, %bb.dh ], [ %i.pw, %bb.dj ]
  %i.qi = phi ptr [ %i.kn, %bb.dh ], [ %i.px, %bb.dj ]
  %i.qj = phi ptr [ %i.kp, %bb.dh ], [ %i.py, %bb.dj ]
  %.sink.i.ph.i.i = phi i8 [ 3, %bb.dh ], [ 4, %bb.dj ]
  store i8 %.sink.i.ph.i.i, ptr %i.qj, align 8, !noalias !79040
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !79024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !79024
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i.i.i)
  br label %bb.gs

_RNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain31connect_chain_for_udp_associateNtNtNtNtNtBa_5local3net3udp11association14LocalTcpDialerE0CsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.dk, %bb.di
  %i.qk = phi ptr [ %i.km, %bb.di ], [ %i.qa, %bb.dk ] ; 3 uses
  %i.ql = phi ptr [ %i.kn, %bb.di ], [ %i.qb, %bb.dk ] ; 3 uses
  %i.qm = phi ptr [ %i.ko, %bb.di ], [ %i.qc, %bb.dk ] ; 2 uses
  %i.qn = phi ptr [ %i.kp, %bb.di ], [ %i.qd, %bb.dk ]
  %i.qo = phi ptr [ %i.kq, %bb.di ], [ %i.qe, %bb.dk ]
  %.sroa.0234.0.copyload235.pr.i.i = load i64, ptr %i.p, align 8, !noalias !79064 ; 3 uses
  %.sroa.8236.0..sroa_idx237.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.8236.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.8236.0..sroa_idx237.i.i, align 8, !noalias !79064 ; 2 uses
  %.sroa.8236.sroa.5.0..sroa.8236.0..sroa_idx237.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.8236.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.8236.sroa.5.0..sroa.8236.0..sroa_idx237.sroa_idx.i.i, i64 1144, i1 false), !noalias !79064
  store i8 1, ptr %i.qn, align 8, !noalias !79040
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !79024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !79024
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i.i.i)
  %i.qp = icmp eq i64 %.sroa.0234.0.copyload235.pr.i.i, -2
  br i1 %i.qp, label %bb.gs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain31connect_chain_for_udp_associateNtNtNtNtNtBM_5local3net3udp11association14LocalTcpDialerE0ECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.dl:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0264.i.i)
  %.phi.trans.insert851.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1832 ; 4 uses
  %.pre852.i.i = load i8, ptr %.phi.trans.insert851.i.i, align 8, !range !230, !noalias !79065
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8271.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11274.i.i)
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 1768 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.325.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.532.i.i.i)
  switch i8 %.pre852.i.i, label %bb.dm [
    i8 0, label %._crit_edge32.i
    i8 1, label %bb.dp
    i8 3, label %bb.do
    i8 4, label %bb.dw
  ]

._crit_edge32.i:                                  ; preds = %bb.dl
  %.phi.trans.insert33.i = getelementptr inbounds nuw i8, ptr %1, i64 1808
  %.pre34.i = load ptr, ptr %.phi.trans.insert33.i, align 8, !noalias !79065
  %.phi.trans.insert35.i = getelementptr inbounds nuw i8, ptr %1, i64 1816
  %.pre36.i = load ptr, ptr %.phi.trans.insert35.i, align 8, !noalias !79065
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  unreachable

end_hunk_2
