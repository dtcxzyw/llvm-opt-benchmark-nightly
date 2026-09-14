Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40157
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNCNvMs2_NtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelayNtB7_9TcpServer3run0CsgZAIVb0XKpv_9ssservice:bb.a
_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4join10JoinHandleuEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtNtCsczhfDQ1qNkX_5tokio4task5spawn5spawnNCNCNvMs2_NtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelayNtBR_9TcpServer3run0s_0ECsgZAIVb0XKpv_9ssservice.exit, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.g

bb.ce:                                            ; preds = %bb.az
  %i.ic = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.id = icmp ult i64 %i.ic, 6
  call void @llvm.assume(i1 %i.id)
  %i.ie = icmp samesign ugt i64 %i.ic, 1
  br i1 %i.ie, label %bb.ck, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.if = getelementptr inbounds nuw i8, ptr %i.ac, i64 2272
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.if) #53
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ac, i64 2304 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63737)
  call void @llvm.experimental.noalias.scope.decl(metadata !63738)
  %i.ih = load ptr, ptr %i.ig, align 16, !alias.scope !63739, !nonnull !178, !noundef !178
  %i.ii = atomicrmw sub ptr %i.ih, i64 1 release, align 8, !noalias !63740
  %i.ij = icmp eq i64 %i.ii, 1
  br i1 %i.ij, label %bb.cg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_io12CryptoStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEECsgZAIVb0XKpv_9ssservice.exit.i

bb.cg:                                            ; preds = %bb.cf
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net4flow8FlowStatE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ig) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_io12CryptoStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_io12CryptoStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.cg, %bb.cf
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_io15DecryptedReaderECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 16 dereferenceable(2368) %i.ac) #53
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ac, i64 1152
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_io15EncryptedWriterECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 16 dereferenceable(1120) %i.ik) #53
  call void @llvm.experimental.noalias.scope.decl(metadata !63741)
  call void @llvm.experimental.noalias.scope.decl(metadata !63742)
  %i.il = load ptr, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 16, !alias.scope !63743, !nonnull !178, !noundef !178
  %i.im = atomicrmw sub ptr %i.il, i64 1 release, align 8, !noalias !63744
  %i.in = icmp eq i64 %i.im, 1
  br i1 %i.in, label %bb.ch, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCslxdWNweD0x2_11shadowsocks7context7ContextEECsgZAIVb0XKpv_9ssservice.exit.i

bb.ch:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_io12CryptoStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEECsgZAIVb0XKpv_9ssservice.exit.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCslxdWNweD0x2_11shadowsocks7context7ContextE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCslxdWNweD0x2_11shadowsocks7context7ContextEECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCslxdWNweD0x2_11shadowsocks7context7ContextEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.ch, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_io12CryptoStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEECsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !63745)
  %i.io = load i64, ptr %.sroa.312.0..sroa_idx, align 8, !range !182, !alias.scope !63746, !noundef !178
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %bb.ci, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEECsgZAIVb0XKpv_9ssservice.exit

bb.ci:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCslxdWNweD0x2_11shadowsocks7context7ContextEECsgZAIVb0XKpv_9ssservice.exit.i
  %.val.i.i40 = load ptr, ptr %.sroa.413.0..sroa_idx, align 16, !alias.scope !63746, !align !186, !noundef !178 ; 2 uses
  %i.iq = icmp eq ptr %.val.i.i40, null
  br i1 %i.iq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ac, i64 2344
  %.val1.i.i = load ptr, ptr %i.ir, align 8, !alias.scope !63746
  %i.is = getelementptr inbounds nuw i8, ptr %.val.i.i40, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !noalias !63745, !nonnull !178, !noundef !178
  call void %i.it(ptr noundef %.val1.i.i) #53, !noalias !63745, !inline_history !62
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCslxdWNweD0x2_11shadowsocks7context7ContextEECsgZAIVb0XKpv_9ssservice.exit.i, %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.g

bb.ck:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ab, ptr %i.y, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.488.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !63747
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 2, ptr %i.iu, align 8, !noalias !63747
  %.sroa.422.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @822, ptr %.sroa.422.0..sroa_idx.i.i42, align 8, !noalias !63747
  %.sroa.523.0..sroa_idx.i.i43 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 37, ptr %.sroa.523.0..sroa_idx.i.i43, align 8, !noalias !63747
  %i.iv = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr @1369, ptr %i.iv, align 8, !noalias !63747
  %i.iw = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.y, ptr %i.iw, align 8, !noalias !63747
  store i64 0, ptr %i.c, align 8, !noalias !63747
  %.sroa.428.0..sroa_idx.i.i44 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @822, ptr %.sroa.428.0..sroa_idx.i.i44, align 8, !noalias !63747
  %.sroa.529.0..sroa_idx.i.i45 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 37, ptr %.sroa.529.0..sroa_idx.i.i45, align 8, !noalias !63747
  %i.ix = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.ix, align 8, !noalias !63747
  %.sroa.434.0..sroa_idx.i.i46 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @720, ptr %.sroa.434.0..sroa_idx.i.i46, align 8, !noalias !63747
  %.sroa.535.0..sroa_idx.i.i47 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 49, ptr %.sroa.535.0..sroa_idx.i.i47, align 8, !noalias !63747
  %i.iy = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 1, ptr %i.iy, align 8, !noalias !63747
  %i.iz = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 138, ptr %i.iz, align 4, !noalias !63747
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c) #53, !noalias !63747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !63747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.cf

bb.cl:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay14proxy_listenerNtBH_13ProxyListener10accept_mapNCNCNvMs2_NtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelayNtB2p_9TcpServer3run00INtNtNtB2t_3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEE0ECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.041.0.i) ]
  store ptr %.sroa.041.0.i, ptr %i.cc, align 8
  %i.ja = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.jb = icmp ult i64 %i.ja, 6
  call void @llvm.assume(i1 %i.jb)
  %.not = icmp eq i64 %i.ja, 0
  br i1 %.not, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl, %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvNtNtCsczhfDQ1qNkX_5tokio4time5sleep5sleep(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.z, i64 noundef 1, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1371) #53
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.jc, ptr noundef nonnull align 8 dereferenceable(112) %i.z, i64 112, i1 false)
  br label %bb.at

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.cc, ptr %i.aa, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.479.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !63748
  %i.jd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 1, ptr %i.jd, align 8, !noalias !63748
  %.sroa.422.0..sroa_idx.i.i49 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @822, ptr %.sroa.422.0..sroa_idx.i.i49, align 8, !noalias !63748
  %.sroa.523.0..sroa_idx.i.i50 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 37, ptr %.sroa.523.0..sroa_idx.i.i50, align 8, !noalias !63748
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @1370, ptr %i.je, align 8, !noalias !63748
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.aa, ptr %i.jf, align 8, !noalias !63748
  store i64 0, ptr %i.b, align 8, !noalias !63748
  %.sroa.428.0..sroa_idx.i.i51 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @822, ptr %.sroa.428.0..sroa_idx.i.i51, align 8, !noalias !63748
  %.sroa.529.0..sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 37, ptr %.sroa.529.0..sroa_idx.i.i52, align 8, !noalias !63748
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.jg, align 8, !noalias !63748
  %.sroa.434.0..sroa_idx.i.i53 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @720, ptr %.sroa.434.0..sroa_idx.i.i53, align 8, !noalias !63748
  %.sroa.535.0..sroa_idx.i.i54 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 49, ptr %.sroa.535.0..sroa_idx.i.i54, align 8, !noalias !63748
  %i.jh = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.jh, align 8, !noalias !63748
  %i.ji = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 131, ptr %i.ji, align 4, !noalias !63748
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #53, !noalias !63748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !63748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.cm
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB7_19PingBalancerContext10check_once0CsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [40 x i8], align 8                ; 8 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [88 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 165 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !range !233, !noundef !178
  switch i8 %i.y, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.af
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 5 uses
  store i8 0, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 163 ; 4 uses
  store i8 0, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !178, !align !186, !noundef !178 ; 4 uses
  store ptr %i.ac, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 166
  %i.af = load i8, ptr %i.ae, align 2, !range !181, !noundef !178
  store i8 %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.ac, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %i.ac, i64 16
  %.val64 = load i64, ptr %i.ah, align 8, !noundef !178 ; 6 uses
  %i.ai = icmp ult i64 %.val64, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %.val64, 0
  br i1 %i.aj, label %common.ret, label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63781)
  %i.al = mul i64 %.val64, 66272                  ; 3 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %.val64, 139174493554665
  br i1 %or.cond.i.i.i, label %bb.g, label %2, !prof !189

2:                                                ; preds = %bb.e
  %3 = icmp eq i64 %i.al, 0
  br i1 %3, label %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit, label %bb.f

bb.f:                                             ; preds = %2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !63782
  %i.am = tail call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, 17) 16) #53, !noalias !63782 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.g, label %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit_crit_edge

._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit_crit_edge: ; preds = %bb.f
  %.pre = load ptr, ptr %i.ag, align 8
  br label %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.ph.i.i = phi i64 [ 16, %bb.f ], [ 0, %bb.e ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.al) #62, !noalias !63781
  unreachable

_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit: ; preds = %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit_crit_edge, %2
  %4 = phi ptr [ %i.ac, %2 ], [ %.pre, %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit_crit_edge ] ; 2 uses
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 16 to ptr), %2 ], [ %i.am, %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit_crit_edge ]
  %.sroa.4.0.i.i = phi i64 [ 0, %2 ], [ %.val64, %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit_crit_edge ] ; 2 uses
  %5 = icmp samesign ule i64 %.val64, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %5)
  store i64 %.sroa.4.0.i.i, ptr %i.ak, align 8, !alias.scope !63781
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %.sroa.10.0.i.i, ptr %i.ao, align 8, !alias.scope !63781
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  store i64 0, ptr %i.ap, align 8, !alias.scope !63781
  store i8 1, ptr %i.z, align 4
  %i.aq = getelementptr i8, ptr %4, i64 16
  %.val56 = load i64, ptr %i.aq, align 8, !noundef !178 ; 5 uses
  %i.ar = icmp ult i64 %.val56, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63783)
  %i.at = mul i64 %.val56, 66272                  ; 3 uses
  %or.cond.i.i.i102 = icmp samesign ugt i64 %.val56, 139174493554665
  br i1 %or.cond.i.i.i102, label %bb.j, label %bb.h, !prof !189

bb.h:                                             ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit106, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !63784
  %i.av = tail call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.at, i64 noundef range(i64 1, 17) 16) #53, !noalias !63784 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.j, label %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit106_crit_edge

._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit106_crit_edge: ; preds = %bb.i
  %.pre271.a = load ptr, ptr %i.ag, align 8
  br label %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit106

bb.j:                                             ; preds = %bb.i, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.4.0.ph.i.i105 = phi i64 [ 16, %bb.i ], [ 0, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i105, i64 %i.at) #62, !noalias !63783
  unreachable

_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit106: ; preds = %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit106_crit_edge, %bb.h
  %i.ax = phi ptr [ %4, %bb.h ], [ %.pre271.a, %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit106_crit_edge ] ; 2 uses
  %.sroa.10.0.i.i103 = phi ptr [ inttoptr (i64 16 to ptr), %bb.h ], [ %i.av, %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit106_crit_edge ]
  %.sroa.4.0.i.i104 = phi i64 [ 0, %bb.h ], [ %.val56, %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit106_crit_edge ] ; 2 uses
  %i.ay = icmp samesign ule i64 %.val56, %.sroa.4.0.i.i104
  tail call void @llvm.assume(i1 %i.ay)
  store i64 %.sroa.4.0.i.i104, ptr %i.as, align 8, !alias.scope !63783
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %.sroa.10.0.i.i103, ptr %i.az, align 8, !alias.scope !63783
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store i64 0, ptr %i.ba, align 8, !alias.scope !63783
  store i8 1, ptr %i.aa, align 1
  %i.bb = getelementptr i8, ptr %i.ax, i64 8
  %.val62 = load ptr, ptr %i.bb, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ax, i64 16
  %.val63 = load i64, ptr %i.bc, align 8, !noundef !178 ; 2 uses
  %.idx = shl nuw nsw i64 %.val63, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.val62, i64 %.idx
  %i.be = icmp eq i64 %.val63, 0
  br i1 %i.be, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit106, %bb.aa
  %.sroa.0.0253 = phi ptr [ %i.bf, %bb.aa ], [ %.val62, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit106 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0253, i64 8 ; 2 uses
  %.val75 = load ptr, ptr %.sroa.0.0253, align 8, !nonnull !178, !noundef !178 ; 6 uses
  %i.bg = load ptr, ptr %0, align 8, !nonnull !178, !align !186, !noundef !178
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bi = load i8, ptr %i.bh, align 8, !range !301, !noundef !178 ; 2 uses
  %.not = icmp eq i8 %i.bi, 2
  br i1 %.not, label %.thread, label %bb.u

._crit_edge.loopexit:                             ; preds = %bb.aa
  %.val76.pre = load i64, ptr %i.ba, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit106
  %.val76 = phi i64 [ %.val76.pre, %._crit_edge.loopexit ], [ 0, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCsgZAIVb0XKpv_9ssservice.exit106 ] ; 9 uses
  %.val77 = load i64, ptr %i.ap, align 8, !noundef !178 ; 6 uses
  %i.bj = icmp ult i64 %.val77, 139174493554666
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.bl = icmp samesign ugt i64 %.val77, 1        ; 2 uses
  %i.bm = zext i1 %i.bl to i8
  store i8 %i.bm, ptr %i.bk, align 1
  %i.bn = icmp ult i64 %.val76, 139174493554666
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 162
  %i.bp = icmp samesign ugt i64 %.val76, 1        ; 2 uses
  %i.bq = zext i1 %i.bp to i8
  store i8 %i.bq, ptr %i.bo, align 2
  %i.br = or i64 %.val76, %.val77
  %brmerge.not = icmp samesign ult i64 %i.br, 2
  br i1 %brmerge.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  br i1 %i.bl, label %bb.p, label %bb.o

bb.l:                                             ; preds = %._crit_edge
  %.val.i = load ptr, ptr %i.az, align 8, !nonnull !178, !noundef !178
  %i.bs = icmp eq i64 %.val76, 0
  br i1 %i.bs, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.bu, %.lr.ph.i.i.i ], [ 0, %bb.l ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [66272 x i8], ptr %.val.i, i64 %.sroa.0.03.i.i.i
  %i.bu = add nuw nsw i64 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBJ_11PingChecker18check_update_score0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 16 %i.bt) #53
  %i.bv = icmp eq i64 %i.bu, %.val76
  br i1 %i.bv, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %.lr.ph.i.i.i, %bb.l
  %.val2.i = load i64, ptr %i.as, align 8         ; 2 uses
  %i.bw = icmp eq i64 %.val2.i, 0
  br i1 %i.bw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECsgZAIVb0XKpv_9ssservice.exit, label %bb.m

bb.m:                                             ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i
  %.val3.i = load ptr, ptr %i.az, align 8, !nonnull !178, !noundef !178
  %i.bx = mul nuw i64 %.val2.i, 66272
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 16) #53
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i, %bb.m
  store i8 0, ptr %i.aa, align 1
  %.val.i107 = load ptr, ptr %i.ao, align 8, !nonnull !178, !noundef !178
  %.val1.i108 = load i64, ptr %i.ap, align 8, !noundef !178 ; 2 uses
  %i.by = icmp eq i64 %.val1.i108, 0
  br i1 %i.by, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i111, label %.lr.ph.i.i.i109

.lr.ph.i.i.i109:                                  ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECsgZAIVb0XKpv_9ssservice.exit, %.lr.ph.i.i.i109
  %.sroa.0.03.i.i.i110 = phi i64 [ %i.ca, %.lr.ph.i.i.i109 ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECsgZAIVb0XKpv_9ssservice.exit ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [66272 x i8], ptr %.val.i107, i64 %.sroa.0.03.i.i.i110
  %i.ca = add nuw nsw i64 %.sroa.0.03.i.i.i110, 1 ; 2 uses
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBJ_11PingChecker18check_update_score0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 16 %i.bz) #53
  %i.cb = icmp eq i64 %i.ca, %.val1.i108
  br i1 %i.cb, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i111, label %.lr.ph.i.i.i109

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i111: ; preds = %.lr.ph.i.i.i109, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECsgZAIVb0XKpv_9ssservice.exit
  %.val2.i112 = load i64, ptr %i.ak, align 8      ; 2 uses
  %i.cc = icmp eq i64 %.val2.i112, 0
  br i1 %i.cc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECsgZAIVb0XKpv_9ssservice.exit114, label %bb.n

bb.n:                                             ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i111
  %.val3.i113 = load ptr, ptr %i.ao, align 8, !nonnull !178, !noundef !178
  %i.cd = mul nuw i64 %.val2.i112, 66272
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i113, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 16) #53
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECsgZAIVb0XKpv_9ssservice.exit114

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECsgZAIVb0XKpv_9ssservice.exit114: ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice.exit.i111, %bb.n
  store i8 0, ptr %i.z, align 4
  br label %common.ret

common.ret:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECsgZAIVb0XKpv_9ssservice.exit114, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECsgZAIVb0XKpv_9ssservice.exit159, %bb.c, %bb.ag
  %storemerge = phi i8 [ 3, %bb.ag ], [ 1, %bb.c ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECsgZAIVb0XKpv_9ssservice.exit159 ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECsgZAIVb0XKpv_9ssservice.exit114 ]
  %common.ret.op = phi i1 [ true, %bb.ag ], [ false, %bb.c ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECsgZAIVb0XKpv_9ssservice.exit159 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECsgZAIVb0XKpv_9ssservice.exit114 ]
  store i8 %storemerge, ptr %i.x, align 1
  ret i1 %common.ret.op

bb.o:                                             ; preds = %bb.k
  store i8 0, ptr %i.aa, align 1
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  br i1 %i.bp, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.r, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E6appendCsgZAIVb0XKpv_9ssservice.exit, %bb.o
  %.sink = phi ptr [ %i.ak, %bb.r ], [ %i.ak, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E6appendCsgZAIVb0XKpv_9ssservice.exit ], [ %i.as, %bb.o ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %.sink, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call fastcc void @_RINvNtNtCscVsx2cUGvkQ_12futures_util6future8join_all8join_allINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1C_11PingChecker18check_update_score0EECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.v, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w) #53
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ce, ptr noundef nonnull align 8 dereferenceable(88) %i.v, i64 88, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  store i8 0, ptr %i.z, align 4
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  %i.cf = load ptr, ptr %i.az, align 8, !nonnull !178, !noundef !178
  %i.cg = load i64, ptr %i.ak, align 8, !range !180, !noundef !178
  %i.ch = sub nsw i64 %i.cg, %.val77
  %i.ci = icmp ugt i64 %.val76, %i.ch
  br i1 %i.ci, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E6appendCsgZAIVb0XKpv_9ssservice.exit, !prof !187

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i.i: ; preds = %bb.s
  tail call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ak, i64 noundef %.val77, i64 noundef %.val76, i64 noundef 16, i64 noundef 66272) #53
  %i.cj = load i64, ptr %i.ap, align 8, !noundef !178 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, 139174493554666
  tail call void @llvm.assume(i1 %i.ck)
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E6appendCsgZAIVb0XKpv_9ssservice.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E6appendCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i.i, %bb.s
  %i.cl = phi i64 [ %i.cj, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i.i ], [ %.val77, %bb.s ]
  %i.cm = load ptr, ptr %i.ao, align 8, !nonnull !178, !noundef !178
  %i.cn = getelementptr inbounds nuw [66272 x i8], ptr %i.cm, i64 %i.cl
  %i.co = mul nuw nsw i64 %.val76, 66272
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.cn, ptr nonnull readonly align 16 %i.cf, i64 %i.co, i1 false)
  %.pre.i.i = load i64, ptr %i.ap, align 8
  %i.cp = add i64 %.pre.i.i, %.val76
  store i64 %i.cp, ptr %i.ap, align 8
  store i64 0, ptr %i.ba, align 8
  store i8 0, ptr %i.z, align 4
  br label %bb.q

bb.t:                                             ; preds = %bb.q, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call fastcc void @_RNvXs_NtNtCscVsx2cUGvkQ_12futures_util6future8join_allINtB4_7JoinAllNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1c_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u, ptr noalias nofree noundef align 8 dereferenceable(88) %i.cq, ptr noalias nofree noundef align 8 dereferenceable(32) %1) #53
  %i.cr = load i64, ptr %i.u, align 8, !range !190, !noundef !178
  %i.cs = icmp eq i64 %i.cr, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.cs, label %bb.ag, label %bb.ah

bb.u:                                             ; preds = %.lr.ph
  %i.ct = getelementptr i8, ptr %.val75, i64 1160
  %.val78 = load float, ptr %i.ct, align 8
  %i.cu = getelementptr i8, ptr %.val75, i64 1168
  %.val79 = load i8, ptr %i.cu, align 8, !range !301, !noundef !178
  %i.cv = icmp ne i8 %.val79, 2
  %i.cw = fcmp ogt float %.val78, 0.000000e+00
  %.sroa.0.0.i115 = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %.sroa.0.0.i115, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0E4pushCsgZAIVb0XKpv_9ssservice.exit, %bb.u
  %i.cx = phi i8 [ %i.bi, %bb.u ], [ %.pre273, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0E4pushCsgZAIVb0XKpv_9ssservice.exit ]
  %.not250 = icmp eq i8 %i.cx, 1
  br i1 %.not250, label %bb.aa, label %.thread

bb.w:                                             ; preds = %bb.u
  %i.cy = atomicrmw add ptr %.val75, i64 1 monotonic, align 8
  %i.cz = icmp slt i64 %i.cy, 0
  br i1 %i.cz, label %bb.x, label %_RNvXsu_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing11server_data11ServerIdentENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing11server_data11ServerIdentENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.w
  %i.da = load ptr, ptr %0, align 8, !nonnull !178, !align !186, !noundef !178
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %.val83 = load ptr, ptr %i.db, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.dc = atomicrmw add ptr %.val83, i64 1 monotonic, align 8
end_hunk_0
