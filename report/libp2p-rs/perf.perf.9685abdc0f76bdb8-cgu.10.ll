Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/perf.perf.9685abdc0f76bdb8-cgu.10?download=true
inline.NumInlined: 1501
inline.NumDeleted: 614
begin_hunk_0_@_RNCNvXs0_NtCs2oFjxwYQXCx_10libp2p_tls7upgradeNtB7_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade24InboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEE15upgrade_inbound0CscVe0kjRb1xs_4perf:bb.a
  %i.x = alloca [880 x i8], align 8               ; 12 uses
  %i.y = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.866 = alloca [1296 x i8], align 8        ; 4 uses
  %.sroa.1162.sroa.6 = alloca [136 x i8], align 8 ; 6 uses
  %.sroa.1263 = alloca [1160 x i8], align 8       ; 6 uses
  %i.z = alloca [144 x i8], align 8               ; 8 uses
  %.sroa.7 = alloca [144 x i8], align 8           ; 7 uses
  %.sroa.9 = alloca [1152 x i8], align 8          ; 6 uses
  %i.aa = alloca [1320 x i8], align 8             ; 16 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1712 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 8, !range !36, !noundef !11
  switch i8 %i.ac, label %default.unreachable221 [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.f
  ]

default.unreachable221:                           ; preds = %bb.bq, %bb.bj, %bb.bb, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1713 ; 2 uses
  store i8 1, ptr %i.ad, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ae, ptr noundef nonnull align 8 dereferenceable(240) %1, i64 240, i1 false)
  store i64 1, ptr %i.v, align 8, !noalias !1933
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 1, ptr %i.af, align 8, !noalias !1933
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1934
  %i.ag = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1921) 256, i64 noundef 8) #29, !noalias !1934 ; 5 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.c, label %bb.g, !prof !20

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #30
          to label %.noexc.i unwind label %bb.d, !noalias !1933

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn12ServerConfigECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(240) %i.ae)
          to label %.body unwind label %bb.e, !noalias !1933

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1933
  unreachable

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 392
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !1935, !noalias !1936
  %.sroa.9.0..sroa_idx.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 544
  %.sroa.9.0.copyload.i.i.pre = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.phi.trans.insert, align 8, !alias.scope !1935, !noalias !1936
  br label %bb.u

.body:                                            ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %.body36

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ag, ptr noundef nonnull align 8 dereferenceable(256) %i.v, i64 256, i1 false), !noalias !1933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1933
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 384
  store ptr %i.ag, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 0, ptr %i.ad, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.z, ptr noundef nonnull align 8 dereferenceable(144) %i.al, i64 144, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1941
  %i.am = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8, !noalias !1941
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs0_NtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connectionNtB5_16ServerConnection3new(ptr noalias nofree noundef nonnull sret([1168 x i8]) align 8 captures(none) dereferenceable(1168) %i.u, ptr noundef nonnull %i.ag)
          to label %bb.k unwind label %bb.j, !noalias !1941

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.z) #27
          to label %.body20 unwind label %bb.n, !noalias !1942

bb.k:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.u, align 8, !range !23, !noalias !1941, !noundef !11 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 2
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1941
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i64 64, i1 false), !noalias !1941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.s, ptr noundef nonnull align 8 dereferenceable(144) %i.z, i64 144, i1 false), !noalias !1942
  %i.as = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtNtCshPShd8ZVvJf_6rustls5error5ErrorECscVe0kjRb1xs_4perf(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.t)
          to label %bb.p unwind label %bb.o, !noalias !1941

bb.m:                                             ; preds = %bb.k
  %.sroa.01.i.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.01.i.i.sroa.4.0..sroa_idx, i64 144, i1 false), !noalias !1943
  %.sroa.01.i.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %.sroa.01.i.i.sroa.5.0.copyload = load ptr, ptr %.sroa.01.i.i.sroa.5.0..sroa_idx, align 8, !noalias !1941
  %.sroa.01.i.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1008) %.sroa.01.i.i.sroa.6, ptr noundef nonnull align 8 dereferenceable(1008) %.sroa.01.i.i.sroa.6.0..sroa_idx, i64 1008, i1 false), !noalias !1941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1941
  %.sroa.01.i.i.sroa.6.1168..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01.i.i.sroa.6, i64 1008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.01.i.i.sroa.6.1168..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.z, i64 144, i1 false), !noalias !1942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1152) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(1152) %.sroa.01.i.i.sroa.6, i64 1152, i1 false), !noalias !1943
  br label %bb.q

bb.n:                                             ; preds = %bb.o, %bb.j
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1942
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(144) %i.s) #27
          to label %.body20 unwind label %bb.n, !noalias !1941

bb.p:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(144) %i.z, i64 144, i1 false), !alias.scope !1941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1941
  br label %bb.q

.body20:                                          ; preds = %bb.j, %bb.o
  %eh.lpad-body21 = phi { ptr, i32 } [ %i.au, %bb.o ], [ %i.ao, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit

bb.q:                                             ; preds = %bb.m, %bb.p
  %.sroa.8.0 = phi ptr [ %i.as, %bb.p ], [ %.sroa.01.i.i.sroa.5.0.copyload, %bb.m ] ; 2 uses
  %.sroa.051.0 = phi i64 [ 4, %bb.p ], [ %i.ap, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.sroa.956.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.956.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7, i64 144, i1 false)
  %.sroa.11.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %1, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1152) %.sroa.11.0..sroa_idx58, ptr noundef nonnull align 8 dereferenceable(1152) %.sroa.9, i64 1152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i64 %.sroa.051.0, ptr %i.av, align 8
  %.sroa.1057.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 544
  store ptr %.sroa.8.0, ptr %.sroa.1057.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1704
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 8
  br label %bb.u

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit: ; preds = %bb.ca, %.body25, %.body20
  %.pn15 = phi { ptr, i32 } [ %eh.lpad-body21, %.body20 ], [ %i.gh, %bb.ca ], [ %.pn5, %.body25 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1944)
  call void @llvm.experimental.noalias.scope.decl(metadata !1945)
  call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !1947, !nonnull !11, !noundef !11
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !1947
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.r, label %.body36

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aw) #32
          to label %.body36 unwind label %bb.cl

bb.s:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #31
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #31
  unreachable

.body25:                                          ; preds = %bb.bx, %bb.bu, %.thread142.i.i, %bb.bp, %bb.bn, %.loopexit.split-lp.i.i, %.thread124.sink.split.i.i, %bb.aw, %bb.ar
  %.pn5 = phi { ptr, i32 } [ %.pn67.pn.ph.i.i, %.thread124.sink.split.i.i ], [ %i.ge, %bb.bx ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %i.fw, %bb.bn ], [ %.pn.pn115140.i.i, %bb.bu ], [ %.pn.pn115140.i.i, %.thread142.i.i ], [ %i.fy, %bb.bp ], [ %i.ek, %bb.ar ], [ %i.er, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1162.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1263)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.ba)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit unwind label %bb.cl

bb.u:                                             ; preds = %bb.f, %bb.q
  %.sroa.9.0.copyload.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.pre, %bb.f ], [ %.sroa.8.0, %bb.q ] ; 4 uses
  %.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.pre, %bb.f ], [ %.sroa.051.0, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1162.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1263)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1948)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1949)
  call void @llvm.experimental.noalias.scope.decl(metadata !1950)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1951
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 5 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %.sroa.107.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 3 uses
  %.sroa.107.0.copyload.i.i = load ptr, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !1935, !noalias !1936 ; 6 uses
  store i64 2, ptr %i.ba, align 8, !alias.scope !1935, !noalias !1936
  %i.bb = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload.i.i, i64 1)
  switch i64 %i.bb, label %bb.v [
    i64 0, label %bb.y
    i64 2, label %bb.w
    i64 3, label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.thread.i
    i64 1, label %bb.x
  ], !prof !41

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1951
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %i.bc, i64 88, i1 false), !noalias !1936
  %.sroa.9.64..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store ptr %.sroa.9.0.copyload.i.i, ptr %.sroa.9.64..sroa_idx.i.i, align 8, !noalias !1951
  %.sroa.10.64..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.64..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx.i.i, i64 48, i1 false), !noalias !1936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, i64 56, i1 false), !noalias !1936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1951
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.107.0.copyload.i.i) ]
  store ptr %.sroa.107.0.copyload.i.i, ptr %i.n, align 8, !noalias !1951
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br label %bb.az

_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.thread.i: ; preds = %bb.u
  %.sroa.17.i.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1952, !noalias !1953
  %.sroa.17.i.sroa.10.0..sroa.6.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa.6.0..sroa_idx.i.i.sroa_idx, i64 136, i1 false), !alias.scope !1952, !noalias !1953
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1951
  br label %bb.bv

bb.x:                                             ; preds = %bb.u
  invoke void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #31
          to label %.noexc24 unwind label %bb.bx

.noexc24:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.u
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 608
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.413.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6.0..sroa_idx.i.i, i64 144, i1 false), !noalias !1936
  %.sroa.614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 160 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.614.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx.i.i, i64 48, i1 false), !noalias !1936
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1104) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(1104) %.sroa.11.0..sroa_idx.i.i, i64 1104, i1 false), !noalias !1936
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.q, align 8, !noalias !1951
  %.sroa.5.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  store ptr %.sroa.9.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i23, align 8, !noalias !1951
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1951
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 1312
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 1168 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1951
  %i.bh = load i8, ptr %i.bf, align 8, !range !36, !noalias !1951, !noundef !11
  %i.bi = and i8 %i.bh, 1                         ; 2 uses
  store ptr %i.bg, ptr %i.j, align 8, !noalias !1951
  %.sroa.437.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.q, ptr %.sroa.437.0..sroa_idx.i.i, align 8, !noalias !1951
  %.sroa.538.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i8 %i.bi, ptr %.sroa.538.0..sroa_idx.i.i, align 8, !noalias !1951
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 822 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 823 ; 4 uses
  %i.bl = load i8, ptr %i.bj, align 2, !range !12, !noalias !1951, !noundef !11
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = load i8, ptr %i.bk, align 1, !range !12, !noalias !1951
  %i.bo = trunc nuw i8 %i.bn to i1
  %or.cond150199.i.i = select i1 %i.bm, i1 %i.bo, i1 false
  br i1 %or.cond150199.i.i, label %._crit_edge202.i.i, label %.lr.ph201.i.i

.lr.ph201.i.i:                                    ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 176 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 120 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 827 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.loopexit170.i.i, %.lr.ph201.i.i
  %i.bs = phi i8 [ %i.bi, %.lr.ph201.i.i ], [ %.ph.i.i, %.loopexit170.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1954)
  %i.bt = trunc nuw i8 %i.bs to i1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ag, %bb.z
  %i.bu = phi i1 [ %i.bt, %bb.z ], [ false, %bb.ag ]
  %.sroa.07.0.i.i.i = phi i64 [ 0, %bb.z ], [ %.sroa.07.192.i.lcssa.i.i, %bb.ag ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.z ], [ %.sroa.0.1.lcssa136.i.i.i, %bb.ag ] ; 3 uses
  %i.bv = load i64, ptr %i.bp, align 8, !noalias !1955, !noundef !11
  %.not78.not.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not78.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.aa
  %i.bw = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCscVe0kjRb1xs_4perf(ptr nonnull %i.bg, ptr nonnull %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !1956 ; 2 uses

.noexc.i.i:                                       ; preds = %.lr.ph.preheader.i.i.i
  %i.bx = extractvalue { i64, ptr } %i.bw, 0
  %i.by = extractvalue { i64, ptr } %i.bw, 1      ; 2 uses
  switch i64 %i.bx, label %.loopexit130.i.i.i [
    i64 2, label %._crit_edge.i.i.i
    i64 0, label %bb.ab
  ]

bb.ab:                                            ; preds = %.noexc.i.i
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = add i64 %.sroa.0.0.i.i.i, %i.bz         ; 2 uses
  %i.cb = load i64, ptr %i.bp, align 8, !noalias !1955, !noundef !11
  %.not.not.peel.i.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.not.peel.i.i.i, label %.loopexit142.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %bb.ac
  %.sroa.0.180.i.i.i = phi i64 [ %i.cg, %bb.ac ], [ %i.ca, %bb.ab ] ; 2 uses
  %i.cc = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCscVe0kjRb1xs_4perf(ptr nonnull %i.bg, ptr nonnull %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc72.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !1956 ; 2 uses

.noexc72.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.cd = extractvalue { i64, ptr } %i.cc, 0
  %i.ce = extractvalue { i64, ptr } %i.cc, 1      ; 2 uses
  switch i64 %i.cd, label %.loopexit130.i.i.i [
    i64 2, label %.loopexit142.i.i.i
    i64 0, label %bb.ac
  ]

bb.ac:                                            ; preds = %.noexc72.i.i
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = add i64 %.sroa.0.180.i.i.i, %i.cf       ; 2 uses
  %i.ch = load i64, ptr %i.bp, align 8, !noalias !1955, !noundef !11
  %.not.not.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.not.i.i.i, label %.loopexit142.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1906

._crit_edge.i.i.i:                                ; preds = %bb.ad, %.noexc73.i.i, %.noexc.i.i, %bb.aa
  %.sroa.0.1.lcssa136.i.i.i = phi i64 [ %.sroa.0.1.lcssa.ph.i.i.i, %.noexc73.i.i ], [ %.sroa.0.1.lcssa.ph.i.i.i, %bb.ad ], [ %.sroa.0.0.i.i.i, %bb.aa ], [ %.sroa.0.0.i.i.i, %.noexc.i.i ] ; 2 uses
  %.sroa.011.1.i.i.i = phi i1 [ true, %.noexc73.i.i ], [ %.not.lcssa.ph.i.i.i, %bb.ad ], [ false, %bb.aa ], [ true, %.noexc.i.i ]
  br i1 %i.bu, label %.thread.i.i.i, label %.lr.ph94.i.preheader.i.i

.lr.ph94.i.preheader.i.i:                         ; preds = %._crit_edge.i.i.i
  %i.ci = load i64, ptr %i.bq, align 8, !noalias !1955, !noundef !11
  %i.cj = icmp ne i64 %i.ci, 0
  %i.ck = load i8, ptr %i.br, align 1, !range !12, !noalias !1951
  %i.cl = trunc nuw i8 %i.ck to i1
  %or.cond154192.i.i = select i1 %i.cj, i1 true, i1 %i.cl
  br i1 %or.cond154192.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.loopexit142.i.i.i:                               ; preds = %bb.ac, %.noexc72.i.i, %bb.ab
  %.sroa.0.1.lcssa.ph.i.i.i = phi i64 [ %i.ca, %bb.ab ], [ %i.cg, %bb.ac ], [ %.sroa.0.180.i.i.i, %.noexc72.i.i ] ; 2 uses
  %.not.lcssa.ph.i.i.i = phi i1 [ false, %bb.ab ], [ false, %bb.ac ], [ true, %.noexc72.i.i ]
  %i.cm = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc73.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !1956 ; 2 uses

.noexc73.i.i:                                     ; preds = %.loopexit142.i.i.i
  %i.cn = extractvalue { i64, ptr } %i.cm, 0
  %i.co = trunc nuw i64 %i.cn to i1
  br i1 %i.co, label %._crit_edge.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc73.i.i
  %i.cp = extractvalue { i64, ptr } %i.cm, 1      ; 2 uses
  %.not45.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.loopexit130.i.i.i

.lr.ph94.i.i.i:                                   ; preds = %bb.af
  %i.cq = ptrtoint ptr %i.dp to i64
  %i.cr = add i64 %.sroa.07.192.i193.i.i, %i.cq   ; 2 uses
  %i.cs = load i64, ptr %i.bq, align 8, !noalias !1955, !noundef !11
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = load i8, ptr %i.br, align 1, !range !12, !noalias !1951
  %i.cv = trunc nuw i8 %i.cu to i1
  %or.cond154.i.i = select i1 %i.ct, i1 true, i1 %i.cv
  br i1 %or.cond154.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph94.i.i.i, %.lr.ph94.i.preheader.i.i
  %.sroa.07.192.i.lcssa.i.i = phi i64 [ %.sroa.07.0.i.i.i, %.lr.ph94.i.preheader.i.i ], [ %.sroa.07.192.i193.i.i, %.lr.ph.i.i ], [ %i.cr, %.lr.ph94.i.i.i ] ; 2 uses
  %i.cw = load i8, ptr %i.bj, align 2, !range !12, !noalias !1955, !noundef !11 ; 2 uses
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = load i8, ptr %i.bk, align 1, !range !12, !noalias !1951 ; 2 uses
  %i.cz = trunc nuw i8 %i.cy to i1
  %or.cond158.i.i = select i1 %i.cx, i1 %i.cz, i1 false
  br i1 %or.cond158.i.i, label %.loopexit170.i.i, label %bb.ag

._crit_edge.thread.i.i:                           ; preds = %.noexc74.i.i
  %i.da = load i8, ptr %i.bj, align 2, !range !12, !noalias !1955, !noundef !11 ; 2 uses
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = load i8, ptr %i.bk, align 1, !range !12, !noalias !1951 ; 2 uses
  %i.dd = trunc nuw i8 %i.dc to i1
  %or.cond158225.i.i = select i1 %i.db, i1 %i.dd, i1 false
  br i1 %or.cond158225.i.i, label %.loopexit170.i.i, label %.thread.i.i

.thread.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.thread140.i.i.i
  %i.de = phi i8 [ 1, %.thread140.i.i.i ], [ %i.bs, %._crit_edge.i.i.i ]
  %i.df = load i8, ptr %i.bj, align 2, !range !12, !noalias !1955, !noundef !11
  %i.dg = trunc nuw i8 %i.df to i1
  %i.dh = load i8, ptr %i.bk, align 1, !range !12, !noalias !1951
  %i.di = trunc nuw i8 %i.dh to i1
  %or.cond152.i.i = select i1 %i.dg, i1 %i.di, i1 false
  br i1 %or.cond152.i.i, label %.loopexit170.i.i, label %.thread51.i.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph94.i.preheader.i.i, %.lr.ph94.i.i.i
  %.sroa.07.192.i193.i.i = phi i64 [ %i.cr, %.lr.ph94.i.i.i ], [ %.sroa.07.0.i.i.i, %.lr.ph94.i.preheader.i.i ] ; 3 uses
  %i.dj = load i8, ptr %i.bj, align 2, !range !12, !noalias !1955, !noundef !11
  %i.dk = trunc nuw i8 %i.dj to i1
  %i.dl = load i64, ptr %i.bp, align 8, !noalias !1951
  %i.dm = icmp eq i64 %i.dl, 0
  %or.cond156.i.i = select i1 %i.dk, i1 true, i1 %i.dm
  br i1 %or.cond156.i.i, label %bb.ae, label %._crit_edge.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.dn = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE7read_ioCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc74.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !1956 ; 2 uses

.noexc74.i.i:                                     ; preds = %bb.ae
  %i.do = extractvalue { i64, ptr } %i.dn, 0
  %i.dp = extractvalue { i64, ptr } %i.dn, 1      ; 3 uses
  switch i64 %i.do, label %.loopexit130.i.i.i [
    i64 2, label %._crit_edge.thread.i.i
    i64 0, label %bb.af
  ]

bb.af:                                            ; preds = %.noexc74.i.i
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %.thread140.i.i.i, label %.lr.ph94.i.i.i

.thread140.i.i.i:                                 ; preds = %bb.af
  store i8 1, ptr %.sroa.538.0..sroa_idx.i.i, align 8, !alias.scope !1954, !noalias !1957
  br label %.thread.i.i.i

bb.ag:                                            ; preds = %._crit_edge.i.i
  br i1 %.sroa.011.1.i.i.i, label %.thread.i.i, label %bb.aa

.thread51.i.i.i:                                  ; preds = %.thread.i.i.i
  %i.dr = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 17) #32
          to label %.loopexit130.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !1956

.thread.i.i:                                      ; preds = %bb.ag, %._crit_edge.thread.i.i
  %.sroa.07.192.i.lcssa226230.i.i = phi i64 [ %.sroa.07.192.i193.i.i, %._crit_edge.thread.i.i ], [ %.sroa.07.192.i.lcssa.i.i, %bb.ag ]
  %i.ds = phi i8 [ %i.da, %._crit_edge.thread.i.i ], [ %i.cw, %bb.ag ]
  %i.dt = phi i8 [ %i.dc, %._crit_edge.thread.i.i ], [ %i.cy, %bb.ag ]
  %i.du = icmp eq i64 %.sroa.07.192.i.lcssa226230.i.i, 0
  %i.dv = icmp eq i64 %.sroa.0.1.lcssa136.i.i.i, 0
  %or.cond3.i.i.i = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %or.cond3.i.i.i, label %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCscVe0kjRb1xs_4perf.exit.i.i, label %.loopexit170.i.i

._crit_edge202.i.i:                               ; preds = %.loopexit170.i.i, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1958
  store ptr %i.q, ptr %i.c, align 8, !noalias !1958
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @150, ptr %i.dw, align 8, !noalias !1958
  %i.dx = invoke noundef ptr @_RNvXs5_NtNtCshPShd8ZVvJf_6rustls4conn10connectionNtB5_6WriterNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc77.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !1956 ; 2 uses

.noexc77.i.i:                                     ; preds = %._crit_edge202.i.i
  %.not.i.i.i = icmp eq ptr %i.dx, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1958
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.noexc77.i.i
  %i.dy = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.dx, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf.exit.i.i

bb.ai:                                            ; preds = %.noexc77.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc79.i.i, %bb.ai
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !1958, !noundef !11
  %.not16.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not16.i.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.eb = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !1956

bb.al:                                            ; preds = %bb.aj
  %i.ec = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCscVe0kjRb1xs_4perf(ptr nonnull %i.bg, ptr nonnull %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc79.i.i unwind label %.loopexit.i.i, !noalias !1956 ; 2 uses

.noexc79.i.i:                                     ; preds = %bb.al
  %i.ed = extractvalue { i64, ptr } %i.ec, 0
  switch i64 %i.ed, label %bb.am [
    i64 2, label %.loopexit.i76.i.i
    i64 0, label %bb.aj
  ]

bb.am:                                            ; preds = %.noexc79.i.i
  %i.ee = extractvalue { i64, ptr } %i.ec, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  br label %.loopexit.i76.i.i

.loopexit.i76.i.i:                                ; preds = %.noexc79.i.i, %bb.am
  %.sroa.5.1.i.i.i = phi ptr [ %i.ee, %bb.am ], [ undef, %.noexc79.i.i ]
  %.sroa.04.1.i.i.i = phi i64 [ 0, %bb.am ], [ 1, %.noexc79.i.i ]
  %i.ef = insertvalue { i64, ptr } poison, i64 %.sroa.04.1.i.i.i, 0
  %i.eg = insertvalue { i64, ptr } %i.ef, ptr %.sroa.5.1.i.i.i, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf.exit.i.i

_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf.exit.i.i: ; preds = %.loopexit.i76.i.i, %bb.ak, %bb.ah
  %.merged.i.i.i = phi { i64, ptr } [ %i.dy, %bb.ah ], [ %i.eg, %.loopexit.i76.i.i ], [ %i.eb, %bb.ak ] ; 2 uses
  %i.eh = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.ei = extractvalue { i64, ptr } %.merged.i.i.i, 1 ; 3 uses
  %i.ej = trunc nuw i64 %i.eh to i1
  br i1 %i.ej, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.d, ptr noundef nonnull align 8 dereferenceable(1320) %i.q, i64 1320, i1 false), !noalias !1951
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.ba)
          to label %bb.au unwind label %bb.at, !noalias !1959

bb.ao:                                            ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf.exit.i.i
  %.not.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1951
  store ptr %i.ei, ptr %i.f, align 8, !noalias !1951
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4129)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.e, ptr noundef nonnull align 8 dereferenceable(1320) %i.q, i64 1320, i1 false), !noalias !1951
  %.sroa.0128.0.copyload = load ptr, ptr %i.bg, align 8, !noalias !1951
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 1176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4129, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4129.0..sroa_idx, i64 136, i1 false), !noalias !1951
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.e)
          to label %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit.i.i unwind label %bb.ar, !noalias !1956

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1951
  %.sroa.0.0.copyload2.i = load i64, ptr %i.q, align 8, !noalias !1960
  %.sroa.12.0.copyload4.i = load ptr, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !1960
  %.sroa.17.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.17.i.sroa.0.0.copyload122 = load ptr, ptr %.sroa.17.0..sroa_idx5.i, align 8, !noalias !1960
  %.sroa.17.i.sroa.10.0..sroa.17.0..sroa_idx5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa.17.0..sroa_idx5.i.sroa_idx, i64 136, i1 false), !noalias !1960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.614.0..sroa_idx.i.i, i64 1160, i1 false), !noalias !1960
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #27
          to label %.body25 unwind label %bb.as, !noalias !1956

_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit.i.i: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4129, i64 136, i1 false), !noalias !1960
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4129)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1951
  br label %bb.av

bb.as:                                            ; preds = %bb.bu, %bb.bt, %.thread107.i.i, %bb.bp, %3, %.loopexit.split-lp.i.i, %bb.aw, %bb.ar
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1959
  unreachable

bb.at:                                            ; preds = %bb.an
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.thread124.sink.split.i.i

bb.au:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.ba, ptr noundef nonnull align 8 dereferenceable(1320) %i.d, i64 1320, i1 false), !noalias !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1951
  br label %bb.av

bb.av:                                            ; preds = %bb.ay, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit82.i.i, %bb.au, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit.i.i
  %.sroa.17.i.sroa.0.4 = phi ptr [ undef, %bb.au ], [ %.sroa.0128.0.copyload, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit.i.i ], [ %.sroa.0126.0.copyload, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit82.i.i ], [ undef, %bb.ay ]
  %.sroa.12.2.i = phi ptr [ undef, %bb.au ], [ %i.ei, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit.i.i ], [ %.sroa.1196.0.ph.i.i, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit82.i.i ], [ undef, %bb.ay ]
  %.sroa.0.2.i = phi i64 [ -1, %bb.au ], [ 2, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit.i.i ], [ 2, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit82.i.i ], [ -1, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1951
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i

_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCscVe0kjRb1xs_4perf.exit.i.i: ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.g, ptr noundef nonnull align 8 dereferenceable(1320) %i.q, i64 1320, i1 false), !noalias !1951
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.ba)
          to label %bb.ay unwind label %bb.ax, !noalias !1959

.loopexit130.i.i.i:                               ; preds = %bb.ad, %.noexc.i.i, %.noexc72.i.i, %.noexc74.i.i, %.thread51.i.i.i
  %.sroa.1196.0.ph.i.i = phi ptr [ %i.dr, %.thread51.i.i.i ], [ %i.ce, %.noexc72.i.i ], [ %i.dp, %.noexc74.i.i ], [ %i.cp, %bb.ad ], [ %i.by, %.noexc.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1951
  store ptr %.sroa.1196.0.ph.i.i, ptr %i.i, align 8, !noalias !1951
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4127)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.h, ptr noundef nonnull align 8 dereferenceable(1320) %i.q, i64 1320, i1 false), !noalias !1951
  %.sroa.0126.0.copyload = load ptr, ptr %i.bg, align 8, !noalias !1951
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 1176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4127, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4127.0..sroa_idx, i64 136, i1 false), !noalias !1951
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.h)
          to label %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit82.i.i unwind label %bb.aw, !noalias !1956

.loopexit170.i.i:                                 ; preds = %._crit_edge.i.i, %.thread.i.i, %.thread.i.i.i, %._crit_edge.thread.i.i
  %i.en = phi i8 [ 1, %.thread.i.i.i ], [ %i.dt, %.thread.i.i ], [ 1, %._crit_edge.thread.i.i ], [ 1, %._crit_edge.i.i ]
  %i.eo = phi i8 [ 1, %.thread.i.i.i ], [ %i.ds, %.thread.i.i ], [ 1, %._crit_edge.thread.i.i ], [ 1, %._crit_edge.i.i ]
  %.ph.i.i = phi i8 [ %i.de, %.thread.i.i.i ], [ %i.bs, %.thread.i.i ], [ %i.bs, %._crit_edge.thread.i.i ], [ %i.bs, %._crit_edge.i.i ]
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = trunc nuw i8 %i.en to i1
  %or.cond150.i.i = select i1 %i.ep, i1 %i.eq, i1 false
  br i1 %or.cond150.i.i, label %._crit_edge202.i.i, label %bb.z

bb.aw:                                            ; preds = %.loopexit130.i.i.i
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #27
          to label %.body25 unwind label %bb.as, !noalias !1956

_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit82.i.i: ; preds = %.loopexit130.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4127, i64 136, i1 false), !noalias !1960
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4127)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1951
  br label %bb.av

bb.ax:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCscVe0kjRb1xs_4perf.exit.i.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.thread124.sink.split.i.i

bb.ay:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCscVe0kjRb1xs_4perf.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.ba, ptr noundef nonnull align 8 dereferenceable(1320) %i.g, i64 1320, i1 false), !noalias !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1951
  br label %bb.av

.thread124.sink.split.i.i:                        ; preds = %bb.ax, %bb.at
  %.sink.i.i = phi ptr [ %i.d, %bb.at ], [ %i.g, %bb.ax ]
  %.pn67.pn.ph.i.i = phi { ptr, i32 } [ %i.em, %bb.at ], [ %i.es, %bb.ax ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.ba, ptr noundef nonnull align 8 dereferenceable(1320) %.sink.i.i, i64 1320, i1 false), !noalias !1936
  br label %.body25

.loopexit.i.i:                                    ; preds = %bb.al
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.ae
  %lpad.loopexit160.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %lpad.loopexit163.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.loopexit142.i.i.i, %.lr.ph.preheader.i.i.i
  %lpad.loopexit166.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %bb.ak, %._crit_edge202.i.i, %.thread51.i.i.i
  %lpad.loopexit.split-lp167.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit160.i.i.a, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit163.i.i.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit166.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp167.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(1320) %i.q) #27
          to label %.body25 unwind label %bb.as, !noalias !1956

bb.az:                                            ; preds = %bb.bh, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1951
  store ptr %i.p, ptr %i.l, align 8, !noalias !1951
  store ptr %2, ptr %i.bd, align 8, !noalias !1951
  %i.et = invoke { i64, ptr } @_RNvMs7_NtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @30)
          to label %bb.ba unwind label %.thread117.thread134.i.i, !noalias !1956 ; 2 uses

.thread117.thread134.i.i:                         ; preds = %bb.az
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.thread107.i.i

.thread136.i.i:                                   ; preds = %bb.bl
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.ba:                                            ; preds = %bb.az
  %i.ew = extractvalue { i64, ptr } %i.et, 0      ; 2 uses
  %i.ex = extractvalue { i64, ptr } %i.et, 1      ; 12 uses
  store i64 %i.ew, ptr %i.m, align 8, !noalias !1951
  store ptr %i.ex, ptr %i.be, align 8, !noalias !1951
  %i.ey = trunc nuw i64 %i.ew to i1
  br i1 %i.ey, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.ez = ptrtoint ptr %i.ex to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ]
  %i.fa = and i64 %i.ez, 3                        ; 3 uses
  switch i64 %i.fa, label %default.unreachable221 [
    i64 2, label %bb.bc
    i64 3, label %bb.bd
    i64 0, label %bb.be
    i64 1, label %bb.bf
  ], !prof !25

bb.bc:                                            ; preds = %bb.bb
  %i.fb = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc84.i.i unwind label %3, !noalias !1956

.noexc84.i.i:                                     ; preds = %bb.bc
  %i.fc = lshr i64 %i.ez, 32
  %i.fd = trunc nuw i64 %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !1956, !nonnull !11, !noundef !11
  %i.fg = invoke noundef i8 %i.ff(i32 noundef %i.fd)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i unwind label %3, !noalias !1956, !inline_history !0

bb.bd:                                            ; preds = %bb.bb
  %i.fh = lshr i64 %i.ez, 32
  %i.fi = icmp ult ptr %i.ex, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i = trunc i64 %i.fh to i8 ; 2 uses
  %i.fj = icmp ne i8 %switch.idx.cast.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.fi)
  call void @llvm.assume(i1 %i.fj)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.be:                                            ; preds = %bb.bb
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fl = load i8, ptr %i.fk, align 8, !range !39, !noalias !1956, !noundef !11
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.bf:                                            ; preds = %bb.bb
  %i.fm = getelementptr i8, ptr %i.ex, i64 31
  %i.fn = load i8, ptr %i.fm, align 8, !range !39, !noalias !1956, !noundef !11
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.bg:                                            ; preds = %bb.ba
  %i.fo = icmp eq ptr %i.ex, null
  br i1 %i.fo, label %.loopexit171.i.i, label %bb.bh

.loopexit171.i.i:                                 ; preds = %bb.bg
  %.sroa.17.i.sroa.0.0.copyload118 = load ptr, ptr %i.p, align 8, !noalias !1960
  %.sroa.17.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa_idx, i64 136, i1 false), !noalias !1960
  br label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1951
  br label %bb.az

3:                                                ; preds = %.noexc84.i.i, %bb.bc
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.be) #27
          to label %.thread107.i.i unwind label %bb.as, !noalias !1956

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i: ; preds = %bb.bf, %bb.be, %bb.bd, %.noexc84.i.i
  %.sroa.0.0.i83.i.i = phi i8 [ %i.fn, %bb.bf ], [ %switch.idx.cast.i.i.i.i.i, %bb.bd ], [ %i.fl, %bb.be ], [ %i.fg, %.noexc84.i.i ]
  %i.fp = icmp eq i8 %.sroa.0.0.i83.i.i, 13
  br i1 %i.fp, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1951
  store ptr %i.ex, ptr %i.k, align 8, !noalias !1951
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619.i.i, ptr noundef nonnull align 8 dereferenceable(144) %i.p, i64 144, i1 false), !noalias !1951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false), !noalias !1951
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.ba)
          to label %bb.bq unwind label %bb.bp, !noalias !1959

bb.bj:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i
  %.sroa.17.i.sroa.0.0.copyload119 = load ptr, ptr %i.p, align 8, !noalias !1960
  %.sroa.17.i.sroa.10.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa_idx123, i64 136, i1 false), !noalias !1960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1961
  switch i64 %i.fa, label %default.unreachable221 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf.exit.i.i
    i64 3, label %bb.bk
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf.exit.i.i
    i64 1, label %bb.bl
  ], !prof !25

bb.bk:                                            ; preds = %bb.bj
  %i.fq = icmp ult ptr %i.ex, inttoptr (i64 188978561024 to ptr)
  %i.fr = and i64 %i.ez, 1095216660480
  %i.fs = icmp ne i64 %i.fr, 1095216660480
  call void @llvm.assume(i1 %i.fq)
  call void @llvm.assume(i1 %i.fs)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf.exit.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.ft = getelementptr i8, ptr %i.ex, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ft, ptr %i.fu, align 8, !alias.scope !1962, !noalias !1961
  store i8 3, ptr %i.b, align 8, !alias.scope !1962, !noalias !1961
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf.exit.i.i unwind label %.thread136.i.i, !noalias !1956

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf.exit.i.i: ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1961
  br label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf.exit.i.i, %.loopexit171.i.i
  %.sroa.17.i.sroa.0.1 = phi ptr [ %.sroa.17.i.sroa.0.0.copyload119, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf.exit.i.i ], [ %.sroa.17.i.sroa.0.0.copyload118, %.loopexit171.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1951
  %i.fv = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECscVe0kjRb1xs_4perf.exit.i.i.i unwind label %bb.bn, !noalias !1956

bb.bn:                                            ; preds = %bb.bm
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fv)
          to label %.body25 unwind label %bb.bo, !noalias !1956

bb.bo:                                            ; preds = %bb.bn
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1956
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECscVe0kjRb1xs_4perf.exit.i.i.i: ; preds = %bb.bm
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECscVe0kjRb1xs_4perf.exit.i.i unwind label %bb.bx

bb.bp:                                            ; preds = %bb.bi
  %i.fy = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %i.ba, align 8, !alias.scope !1935, !noalias !1936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, i64 56, i1 false), !noalias !1936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bc, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619.i.i, i64 144, i1 false), !noalias !1936
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !1935, !noalias !1936
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #27
          to label %.body25 unwind label %bb.as, !noalias !1959

bb.bq:                                            ; preds = %bb.bi
  store i64 3, ptr %i.ba, align 8, !alias.scope !1935, !noalias !1936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, i64 56, i1 false), !noalias !1936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bc, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619.i.i, i64 144, i1 false), !noalias !1936
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !1935, !noalias !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1963
  switch i64 %i.fa, label %default.unreachable221 [
    i64 2, label %.critedge.i.i
    i64 3, label %bb.br
    i64 0, label %.critedge.i.i
    i64 1, label %bb.bs
  ], !prof !25

bb.br:                                            ; preds = %bb.bq
  %i.fz = icmp ult ptr %i.ex, inttoptr (i64 188978561024 to ptr)
  %i.ga = and i64 %i.ez, 1095216660480
  %i.gb = icmp ne i64 %i.ga, 1095216660480
  call void @llvm.assume(i1 %i.fz)
  call void @llvm.assume(i1 %i.gb)
  br label %.critedge.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.gc = getelementptr i8, ptr %i.ex, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gc) ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.gc, ptr %i.gd, align 8, !alias.scope !1964, !noalias !1963
  store i8 3, ptr %i.a, align 8, !alias.scope !1964, !noalias !1963
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gd)
          to label %.critedge.i.i unwind label %bb.bx

.critedge.i.i:                                    ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1951
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECscVe0kjRb1xs_4perf.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECscVe0kjRb1xs_4perf.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECscVe0kjRb1xs_4perf.exit.i.i.i, %.critedge.i.i
  %.sroa.17.i.sroa.0.2 = phi ptr [ undef, %.critedge.i.i ], [ %.sroa.17.i.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECscVe0kjRb1xs_4perf.exit.i.i.i ]
  %.sroa.12.1.i = phi ptr [ undef, %.critedge.i.i ], [ %.sroa.107.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECscVe0kjRb1xs_4perf.exit.i.i.i ]
  %.sroa.0.1.i = phi i64 [ -1, %.critedge.i.i ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECscVe0kjRb1xs_4perf.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1951
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i

.thread142.i.i:                                   ; preds = %bb.bt
  br i1 %.sroa.059.0113141.i.i, label %bb.bu, label %.body25

.thread107.i.i:                                   ; preds = %3, %.thread117.thread134.i.i
  %.pn.pn116.i.i = phi { ptr, i32 } [ %i.eu, %.thread117.thread134.i.i ], [ %4, %3 ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #27
          to label %bb.bt unwind label %bb.as, !noalias !1956

bb.bt:                                            ; preds = %.thread107.i.i, %.thread136.i.i
  %.sroa.059.0113141.i.i = phi i1 [ false, %.thread136.i.i ], [ true, %.thread107.i.i ]
  %.pn.pn115140.i.i = phi { ptr, i32 } [ %i.ev, %.thread136.i.i ], [ %.pn.pn116.i.i, %.thread107.i.i ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o) #27
          to label %.thread142.i.i unwind label %bb.as, !noalias !1956

bb.bu:                                            ; preds = %.thread142.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(144) %i.p) #27
          to label %.body25 unwind label %bb.as, !noalias !1956

_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECscVe0kjRb1xs_4perf.exit.i.i, %bb.av, %bb.aq
  %.sroa.17.i.sroa.0.3 = phi ptr [ %.sroa.17.i.sroa.0.4, %bb.av ], [ %.sroa.17.i.sroa.0.0.copyload122, %bb.aq ], [ %.sroa.17.i.sroa.0.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECscVe0kjRb1xs_4perf.exit.i.i ] ; 2 uses
  %.sroa.12.3.i = phi ptr [ %.sroa.12.2.i, %bb.av ], [ %.sroa.12.0.copyload4.i, %bb.aq ], [ %.sroa.12.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECscVe0kjRb1xs_4perf.exit.i.i ] ; 2 uses
  %.sroa.0.3.i = phi i64 [ %.sroa.0.2.i, %bb.av ], [ %.sroa.0.0.copyload2.i, %bb.aq ], [ %.sroa.0.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECscVe0kjRb1xs_4perf.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1951
  switch i64 %.sroa.0.3.i, label %bb.bw [
    i64 -1, label %bb.by
    i64 2, label %bb.bv
  ]

bb.bv:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.thread.i
  %.sroa.17.i.sroa.0.0 = phi ptr [ %.sroa.17.i.sroa.0.3, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i ], [ %.sroa.17.i.sroa.0.0.copyload, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.thread.i ]
  %.sroa.12.317.i = phi ptr [ %.sroa.12.3.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i ], [ %.sroa.9.0.copyload.i.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.thread.i ] ; 2 uses
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1965
  store ptr %.sroa.17.i.sroa.0.0, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !1965
  %.sroa.17.i.sroa.10.0..sroa.414.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa.414.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, i64 136, i1 false), !noalias !1965
  store ptr %.sroa.12.317.i, ptr %i.r, align 8, !noalias !1965
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(144) %.sroa.414.0..sroa_idx.i)
          to label %.noexc29 unwind label %bb.bx

.noexc29:                                         ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1965
  br label %bb.bz

bb.bw:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.1162.sroa.6, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, i64 136, i1 false), !noalias !1966
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.1263, ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.21.i, i64 1160, i1 false), !noalias !1966
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bv, %bb.bs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECscVe0kjRb1xs_4perf.exit.i.i.i, %bb.x
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body25

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit, %bb.by
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit ], [ 3, %bb.by ]
  store i8 %storemerge, ptr %i.ab, align 8
  ret void

bb.by:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1162.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1263)
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 -2, ptr %i.gf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %common.ret

bb.bz:                                            ; preds = %bb.bw, %.noexc29
  %.sroa.1162.sroa.0.0.ph = phi ptr [ undef, %.noexc29 ], [ %.sroa.17.i.sroa.0.3, %bb.bw ]
  %.sroa.961.0.ph = phi ptr [ %.sroa.12.317.i, %.noexc29 ], [ %.sroa.12.3.i, %bb.bw ] ; 3 uses
  %.sroa.060.0.ph = phi i64 [ 2, %.noexc29 ], [ %.sroa.0.3.i, %bb.bw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  %i.gg = ptrtoint ptr %.sroa.961.0.ph to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.866, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.1162.sroa.6, i64 136, i1 false)
  %.sroa.866.160..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.866, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.866.160..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.1263, i64 1160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1162.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1263)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.ba)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit31 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit31: ; preds = %bb.bz
  %i.gi = icmp eq i64 %.sroa.060.0.ph, 2
  br i1 %i.gi, label %bb.cs, label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit31
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.866, i64 40
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1256) %.sroa.772.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1256) %i.gj, i64 1256, i1 false)
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.671.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.866, i64 40, i1 false)
  store i64 %.sroa.060.0.ph, ptr %i.aa, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store i64 %i.gg, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %.sroa.1162.sroa.0.0.ph, ptr %.sroa.570.0..sroa_idx, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1967)
  call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  call void @llvm.experimental.noalias.scope.decl(metadata !1969)
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !1970, !nonnull !11, !noundef !11
  %i.gm = atomicrmw sub ptr %i.gl, i64 1 release, align 8, !noalias !1970
  %i.gn = icmp eq i64 %i.gm, 1
  br i1 %i.gn, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gk) #32
          to label %bb.ce unwind label %.thread154

.thread154:                                       ; preds = %bb.cc
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cd:                                            ; preds = %bb.ce
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.thread158

bb.ce:                                            ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.875.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.aa, i64 1168
  invoke void @_RNvNtCs2oFjxwYQXCx_10libp2p_tls7upgrade26extract_single_certificate(ptr noalias nofree noundef nonnull sret([880 x i8]) align 8 captures(address) dereferenceable(880) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(840) %i.aa)
          to label %bb.cf unwind label %bb.cd

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !1971)
  %i.gr = load i64, ptr %i.w, align 8, !range !23, !alias.scope !1972, !noalias !1971, !noundef !11 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 2
  %i.gt = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.875.sroa.0.0.copyload103 = load i64, ptr %i.gt, align 8, !alias.scope !1973 ; 2 uses
  %.sroa.875.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.875.sroa.8.0.copyload105 = load ptr, ptr %.sroa.875.sroa.8.0..sroa_idx, align 8, !alias.scope !1973 ; 2 uses
  %.sroa.875.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.875.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.875.sroa.9.0..sroa_idx, i64 40, i1 false), !alias.scope !1973
  br i1 %i.gs, label %bb.cm, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.sroa.1077.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(816) %.sroa.581.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(816) %.sroa.1077.0..sroa_idx78, i64 816, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.sroa.480.sroa.5.0..sroa.480.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.480.sroa.5.0..sroa.480.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.875.sroa.9, i64 40, i1 false)
  store i64 %i.gr, ptr %i.x, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.875.sroa.0.0.copyload103, ptr %.sroa.480.0..sroa_idx, align 8
  %.sroa.480.sroa.4.0..sroa.480.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %.sroa.875.sroa.8.0.copyload105, ptr %.sroa.480.sroa.4.0..sroa.480.0..sroa_idx.sroa_idx, align 8
  invoke void @_RNvMs1_NtCs2oFjxwYQXCx_10libp2p_tls11certificateNtB5_14P2pCertificate7peer_id(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(880) %i.x)
          to label %bb.ci unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate14P2pCertificateECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(880) %i.x) #27
          to label %.thread158 unwind label %bb.cl

bb.ci:                                            ; preds = %bb.cg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate14P2pCertificateECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(880) %i.x)
          to label %bb.ck unwind label %bb.cj

.thread158:                                       ; preds = %bb.cd, %bb.ch, %bb.cj
  %.pn11 = phi { ptr, i32 } [ %i.gp, %bb.cd ], [ %i.gv, %bb.cj ], [ %i.gu, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.875.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.cr

bb.cj:                                            ; preds = %bb.ci
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %.thread158

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.875.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.sroa.0115.0.copyload = load i64, ptr %i.aa, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1312) %.sroa.898, ptr noundef nonnull align 8 dereferenceable(1312) %.sroa.4.0..sroa_idx, i64 1312, i1 false)
  %.sroa.0107.0.copyload = load i64, ptr %i.y, align 8
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.5108.0.copyload = load ptr, ptr %.sroa.5108.0..sroa_idx, align 8
  %.sroa.6109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.590, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6109.0..sroa_idx, i64 40, i1 false)
  %.sroa.7110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.693, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7110.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit: ; preds = %bb.ct, %bb.cs, %bb.co, %bb.ck
  %.sroa.695.0 = phi i64 [ %.sroa.0115.0.copyload, %bb.ck ], [ -1, %bb.co ], [ -1, %bb.cs ], [ -1, %bb.ct ]
  %.sroa.485.0 = phi ptr [ %.sroa.5108.0.copyload, %bb.ck ], [ %.sroa.875.sroa.8.0.copyload105, %bb.co ], [ %.sroa.961.0.ph, %bb.cs ], [ %.sroa.961.0.ph, %bb.ct ]
  %.sroa.082.0 = phi i64 [ %.sroa.0107.0.copyload, %bb.ck ], [ %.sroa.875.sroa.0.0.copyload103, %bb.co ], [ -9223372036854775757, %bb.cs ], [ -9223372036854775757, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 %.sroa.082.0, ptr %0, align 8
  %.sroa.485.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.485.0, ptr %.sroa.485.0..sroa_idx86, align 8
  %.sroa.590.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_RNCNvXs1_NtCs2oFjxwYQXCx_10libp2p_tls7upgradeNtB7_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade25OutboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEE16upgrade_outbound0CscVe0kjRb1xs_4perf:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 496
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !2035, !noalias !2036
  %.sroa.9.0..sroa_idx.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 648
  %.sroa.9.0.copyload.i.i.pre = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.phi.trans.insert, align 8, !alias.scope !2035, !noalias !2036
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1705 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1707
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1706 ; 2 uses
  store i8 1, ptr %i.ag, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 1, ptr %i.ae, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 0, ptr %i.ah, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 2
  store i8 1, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.758)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  store i8 0, ptr %i.af, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.ai, ptr noundef nonnull align 8 dereferenceable(344) %1, i64 344, i1 false)
  store i64 1, ptr %i.v, align 8, !noalias !2037
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 1, ptr %i.aj, align 8, !noalias !2037
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !2038
  %i.ak = tail call noundef align 8 dereferenceable_or_null(360) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1921) 360, i64 noundef 8) #29, !noalias !2038 ; 5 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.d, label %bb.g, !prof !20

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 360) #30
          to label %.noexc.i unwind label %bb.e, !noalias !2037

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn12ClientConfigECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(344) %i.ai)
          to label %.body unwind label %bb.f, !noalias !2037

bb.f:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !2037
  unreachable

.body:                                            ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.758)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %.body37

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ak, ptr noundef nonnull align 8 dereferenceable(360) %i.v, i64 360, i1 false), !noalias !2037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2037
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 488
  store ptr %i.ak, ptr %i.ao, align 8
  store i8 0, ptr %i.ae, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 0, ptr %i.ag, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.z, ptr noundef nonnull align 8 dereferenceable(144) %i.ap, i64 144, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2042)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2043
  %i.aq = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8, !noalias !2043
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs2_NtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connectionNtB5_16ClientConnection3new(ptr noalias nofree noundef nonnull sret([1056 x i8]) align 8 captures(address) dereferenceable(1056) %i.u, ptr noundef nonnull %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.ab)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.z) #27
          to label %.body21 unwind label %bb.n, !noalias !2044

bb.k:                                             ; preds = %bb.h
  %i.at = load i64, ptr %i.u, align 8, !range !23, !noalias !2043, !noundef !11 ; 2 uses
  %i.au = icmp eq i64 %i.at, 2
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2043
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.av, i64 64, i1 false), !noalias !2043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2043
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.s, ptr noundef nonnull align 8 dereferenceable(144) %i.z, i64 144, i1 false), !noalias !2044
  %i.aw = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtNtCshPShd8ZVvJf_6rustls5error5ErrorECscVe0kjRb1xs_4perf(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.t)
          to label %bb.p unwind label %bb.o, !noalias !2043

bb.m:                                             ; preds = %bb.k
  %.sroa.01.i.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.758, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.01.i.i.sroa.4.0..sroa_idx, i64 144, i1 false), !noalias !2045
  %.sroa.01.i.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %.sroa.01.i.i.sroa.5.0.copyload = load ptr, ptr %.sroa.01.i.i.sroa.5.0..sroa_idx, align 8, !noalias !2043
  %.sroa.01.i.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(896) %.sroa.01.i.i.sroa.6, ptr noundef nonnull align 8 dereferenceable(896) %.sroa.01.i.i.sroa.6.0..sroa_idx, i64 896, i1 false), !noalias !2043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2043
  %.sroa.01.i.i.sroa.6.1056..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01.i.i.sroa.6, i64 896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.01.i.i.sroa.6.1056..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.z, i64 144, i1 false), !noalias !2044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(1040) %.sroa.01.i.i.sroa.6, i64 1040, i1 false), !noalias !2045
  br label %bb.q

bb.n:                                             ; preds = %bb.o, %bb.j
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !2044
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(144) %i.s) #27
          to label %.body21 unwind label %bb.n, !noalias !2043

bb.p:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.758, ptr noundef nonnull align 8 dereferenceable(144) %i.z, i64 144, i1 false), !alias.scope !2046, !noalias !2047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2043
  br label %bb.q

.body21:                                          ; preds = %bb.j, %bb.o
  %eh.lpad-body22 = phi { ptr, i32 } [ %i.ay, %bb.o ], [ %i.as, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.758)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit

bb.q:                                             ; preds = %bb.m, %bb.p
  %.sroa.859.0 = phi ptr [ %i.aw, %bb.p ], [ %.sroa.01.i.i.sroa.5.0.copyload, %bb.m ] ; 2 uses
  %.sroa.056.0 = phi i64 [ 4, %bb.p ], [ %i.at, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.sroa.963.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.963.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.758, i64 144, i1 false)
  %.sroa.11.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %1, i64 656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %.sroa.11.0..sroa_idx65, ptr noundef nonnull align 8 dereferenceable(1040) %.sroa.9, i64 1040, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.758)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 496
  store i64 %.sroa.056.0, ptr %i.az, align 8
  %.sroa.1064.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 648
  store ptr %.sroa.859.0, ptr %.sroa.1064.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1696
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 8
  br label %bb.v

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit: ; preds = %bb.cb, %.body26, %.body21
  %.pn15 = phi { ptr, i32 } [ %eh.lpad-body22, %.body21 ], [ %i.go, %bb.cb ], [ %.pn5, %.body26 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  call void @llvm.experimental.noalias.scope.decl(metadata !2049)
  call void @llvm.experimental.noalias.scope.decl(metadata !2050)
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !2051, !nonnull !11, !noundef !11
  %i.bc = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !2051
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.r, label %.body37

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ba) #32
          to label %.body37 unwind label %bb.cm

bb.s:                                             ; preds = %bb.cw, %.body37
  store i8 0, ptr %i.hh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 1707
  %i.bf = load i8, ptr %i.be, align 1, !range !12, !noundef !11
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.cy, label %bb.cx

bb.t:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #31
  unreachable

bb.u:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #31
  unreachable

.body26:                                          ; preds = %bb.by, %bb.bv, %.thread141.i.i, %bb.bq, %bb.bo, %.loopexit.split-lp.i.i, %.thread123.sink.split.i.i, %bb.ax, %bb.as
  %.pn5 = phi { ptr, i32 } [ %.pn67.pn.ph.i.i, %.thread123.sink.split.i.i ], [ %i.gl, %bb.by ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %i.gd, %bb.bo ], [ %.pn.pn114139.i.i, %bb.bv ], [ %.pn.pn114139.i.i, %.thread141.i.i ], [ %i.gf, %bb.bq ], [ %i.er, %bb.as ], [ %i.ey, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1169.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1270)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.bh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit unwind label %bb.cm

bb.v:                                             ; preds = %bb.b, %bb.q
  %.sroa.9.0.copyload.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.pre, %bb.b ], [ %.sroa.859.0, %bb.q ] ; 4 uses
  %.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.pre, %bb.b ], [ %.sroa.056.0, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1169.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1270)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2055
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 5 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %.sroa.107.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 3 uses
  %.sroa.107.0.copyload.i.i = load ptr, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !2035, !noalias !2036 ; 6 uses
  store i64 2, ptr %i.bh, align 8, !alias.scope !2035, !noalias !2036
  %i.bi = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload.i.i, i64 1)
  switch i64 %i.bi, label %bb.w [
    i64 0, label %bb.z
    i64 2, label %bb.x
    i64 3, label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.thread.i
    i64 1, label %bb.y
  ], !prof !41

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2055
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %i.bj, i64 88, i1 false), !noalias !2036
  %.sroa.9.64..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store ptr %.sroa.9.0.copyload.i.i, ptr %.sroa.9.64..sroa_idx.i.i, align 8, !noalias !2055
  %.sroa.10.64..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.64..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx.i.i, i64 48, i1 false), !noalias !2036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, i64 56, i1 false), !noalias !2036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2055
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.107.0.copyload.i.i) ]
  store ptr %.sroa.107.0.copyload.i.i, ptr %i.n, align 8, !noalias !2055
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br label %bb.ba

_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.thread.i: ; preds = %bb.v
  %.sroa.17.i.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2056, !noalias !2057
  %.sroa.17.i.sroa.10.0..sroa.6.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa.6.0..sroa_idx.i.i.sroa_idx, i64 136, i1 false), !alias.scope !2056, !noalias !2057
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2055
  br label %bb.bw

bb.y:                                             ; preds = %bb.v
  invoke void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #31
          to label %.noexc25 unwind label %bb.by

.noexc25:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.v
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 712
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.413.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6.0..sroa_idx.i.i, i64 144, i1 false), !noalias !2036
  %.sroa.614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 160 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.614.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx.i.i, i64 48, i1 false), !noalias !2036
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(992) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(992) %.sroa.11.0..sroa_idx.i.i, i64 992, i1 false), !noalias !2036
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.q, align 8, !noalias !2055
  %.sroa.5.0..sroa_idx.i.i24 = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  store ptr %.sroa.9.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i24, align 8, !noalias !2055
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2055
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 1200
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 1056 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2055
  %i.bo = load i8, ptr %i.bm, align 8, !range !36, !noalias !2055, !noundef !11
  %i.bp = and i8 %i.bo, 1                         ; 2 uses
  store ptr %i.bn, ptr %i.j, align 8, !noalias !2055
  %.sroa.437.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.q, ptr %.sroa.437.0..sroa_idx.i.i, align 8, !noalias !2055
  %.sroa.538.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i8 %i.bp, ptr %.sroa.538.0..sroa_idx.i.i, align 8, !noalias !2055
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 822 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 823 ; 4 uses
  %i.bs = load i8, ptr %i.bq, align 2, !range !12, !noalias !2055, !noundef !11
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = load i8, ptr %i.br, align 1, !range !12, !noalias !2055
  %i.bv = trunc nuw i8 %i.bu to i1
  %or.cond149198.i.i = select i1 %i.bt, i1 %i.bv, i1 false
  br i1 %or.cond149198.i.i, label %._crit_edge201.i.i, label %.lr.ph200.i.i

.lr.ph200.i.i:                                    ; preds = %bb.z
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 176 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 120 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 827 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit169.i.i, %.lr.ph200.i.i
  %i.bz = phi i8 [ %i.bp, %.lr.ph200.i.i ], [ %.ph.i.i, %.loopexit169.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  %i.ca = trunc nuw i8 %i.bz to i1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ah, %bb.aa
  %i.cb = phi i1 [ %i.ca, %bb.aa ], [ false, %bb.ah ]
  %.sroa.07.0.i.i.i = phi i64 [ 0, %bb.aa ], [ %.sroa.07.192.i.lcssa.i.i, %bb.ah ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.aa ], [ %.sroa.0.1.lcssa136.i.i.i, %bb.ah ] ; 3 uses
  %i.cc = load i64, ptr %i.bw, align 8, !noalias !2059, !noundef !11
  %.not78.not.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not78.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ab
  %i.cd = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCscVe0kjRb1xs_4perf(ptr nonnull %i.bn, ptr nonnull %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2060 ; 2 uses

.noexc.i.i:                                       ; preds = %.lr.ph.preheader.i.i.i
  %i.ce = extractvalue { i64, ptr } %i.cd, 0
  %i.cf = extractvalue { i64, ptr } %i.cd, 1      ; 2 uses
  switch i64 %i.ce, label %.loopexit130.i.i.i [
    i64 2, label %._crit_edge.i.i.i
    i64 0, label %bb.ac
  ]

bb.ac:                                            ; preds = %.noexc.i.i
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = add i64 %.sroa.0.0.i.i.i, %i.cg         ; 2 uses
  %i.ci = load i64, ptr %i.bw, align 8, !noalias !2059, !noundef !11
  %.not.not.peel.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.not.peel.i.i.i, label %.loopexit142.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ac, %bb.ad
  %.sroa.0.180.i.i.i = phi i64 [ %i.cn, %bb.ad ], [ %i.ch, %bb.ac ] ; 2 uses
  %i.cj = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCscVe0kjRb1xs_4perf(ptr nonnull %i.bn, ptr nonnull %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc70.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2060 ; 2 uses

.noexc70.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.ck = extractvalue { i64, ptr } %i.cj, 0
  %i.cl = extractvalue { i64, ptr } %i.cj, 1      ; 2 uses
  switch i64 %i.ck, label %.loopexit130.i.i.i [
    i64 2, label %.loopexit142.i.i.i
    i64 0, label %bb.ad
  ]

bb.ad:                                            ; preds = %.noexc70.i.i
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = add i64 %.sroa.0.180.i.i.i, %i.cm       ; 2 uses
  %i.co = load i64, ptr %i.bw, align 8, !noalias !2059, !noundef !11
  %.not.not.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not.not.i.i.i, label %.loopexit142.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2007

._crit_edge.i.i.i:                                ; preds = %bb.ae, %.noexc71.i.i, %.noexc.i.i, %bb.ab
  %.sroa.0.1.lcssa136.i.i.i = phi i64 [ %.sroa.0.1.lcssa.ph.i.i.i, %.noexc71.i.i ], [ %.sroa.0.1.lcssa.ph.i.i.i, %bb.ae ], [ %.sroa.0.0.i.i.i, %bb.ab ], [ %.sroa.0.0.i.i.i, %.noexc.i.i ] ; 2 uses
  %.sroa.011.1.i.i.i = phi i1 [ true, %.noexc71.i.i ], [ %.not.lcssa.ph.i.i.i, %bb.ae ], [ false, %bb.ab ], [ true, %.noexc.i.i ]
  br i1 %i.cb, label %.thread.i.i.i, label %.lr.ph94.i.preheader.i.i

.lr.ph94.i.preheader.i.i:                         ; preds = %._crit_edge.i.i.i
  %i.cp = load i64, ptr %i.bx, align 8, !noalias !2059, !noundef !11
  %i.cq = icmp ne i64 %i.cp, 0
  %i.cr = load i8, ptr %i.by, align 1, !range !12, !noalias !2055
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond153191.i.i = select i1 %i.cq, i1 true, i1 %i.cs
  br i1 %or.cond153191.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.loopexit142.i.i.i:                               ; preds = %bb.ad, %.noexc70.i.i, %bb.ac
  %.sroa.0.1.lcssa.ph.i.i.i = phi i64 [ %i.ch, %bb.ac ], [ %i.cn, %bb.ad ], [ %.sroa.0.180.i.i.i, %.noexc70.i.i ] ; 2 uses
  %.not.lcssa.ph.i.i.i = phi i1 [ false, %bb.ac ], [ false, %bb.ad ], [ true, %.noexc70.i.i ]
  %i.ct = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.bn, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc71.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2060 ; 2 uses

.noexc71.i.i:                                     ; preds = %.loopexit142.i.i.i
  %i.cu = extractvalue { i64, ptr } %i.ct, 0
  %i.cv = trunc nuw i64 %i.cu to i1
  br i1 %i.cv, label %._crit_edge.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.noexc71.i.i
  %i.cw = extractvalue { i64, ptr } %i.ct, 1      ; 2 uses
  %.not45.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.loopexit130.i.i.i

.lr.ph94.i.i.i:                                   ; preds = %bb.ag
  %i.cx = ptrtoint ptr %i.dw to i64
  %i.cy = add i64 %.sroa.07.192.i192.i.i, %i.cx   ; 2 uses
  %i.cz = load i64, ptr %i.bx, align 8, !noalias !2059, !noundef !11
  %i.da = icmp ne i64 %i.cz, 0
  %i.db = load i8, ptr %i.by, align 1, !range !12, !noalias !2055
  %i.dc = trunc nuw i8 %i.db to i1
  %or.cond153.i.i = select i1 %i.da, i1 true, i1 %i.dc
  br i1 %or.cond153.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph94.i.i.i, %.lr.ph94.i.preheader.i.i
  %.sroa.07.192.i.lcssa.i.i = phi i64 [ %.sroa.07.0.i.i.i, %.lr.ph94.i.preheader.i.i ], [ %.sroa.07.192.i192.i.i, %.lr.ph.i.i ], [ %i.cy, %.lr.ph94.i.i.i ] ; 2 uses
  %i.dd = load i8, ptr %i.bq, align 2, !range !12, !noalias !2059, !noundef !11 ; 2 uses
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = load i8, ptr %i.br, align 1, !range !12, !noalias !2055 ; 2 uses
  %i.dg = trunc nuw i8 %i.df to i1
  %or.cond157.i.i = select i1 %i.de, i1 %i.dg, i1 false
  br i1 %or.cond157.i.i, label %.loopexit169.i.i, label %bb.ah

._crit_edge.thread.i.i:                           ; preds = %.noexc72.i.i
  %i.dh = load i8, ptr %i.bq, align 2, !range !12, !noalias !2059, !noundef !11 ; 2 uses
  %i.di = trunc nuw i8 %i.dh to i1
  %i.dj = load i8, ptr %i.br, align 1, !range !12, !noalias !2055 ; 2 uses
  %i.dk = trunc nuw i8 %i.dj to i1
  %or.cond157224.i.i = select i1 %i.di, i1 %i.dk, i1 false
  br i1 %or.cond157224.i.i, label %.loopexit169.i.i, label %.thread.i.i

.thread.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.thread140.i.i.i
  %i.dl = phi i8 [ 1, %.thread140.i.i.i ], [ %i.bz, %._crit_edge.i.i.i ]
  %i.dm = load i8, ptr %i.bq, align 2, !range !12, !noalias !2059, !noundef !11
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = load i8, ptr %i.br, align 1, !range !12, !noalias !2055
  %i.dp = trunc nuw i8 %i.do to i1
  %or.cond151.i.i = select i1 %i.dn, i1 %i.dp, i1 false
  br i1 %or.cond151.i.i, label %.loopexit169.i.i, label %.thread51.i.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph94.i.preheader.i.i, %.lr.ph94.i.i.i
  %.sroa.07.192.i192.i.i = phi i64 [ %i.cy, %.lr.ph94.i.i.i ], [ %.sroa.07.0.i.i.i, %.lr.ph94.i.preheader.i.i ] ; 3 uses
  %i.dq = load i8, ptr %i.bq, align 2, !range !12, !noalias !2059, !noundef !11
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = load i64, ptr %i.bw, align 8, !noalias !2055
  %i.dt = icmp eq i64 %i.ds, 0
  %or.cond155.i.i = select i1 %i.dr, i1 true, i1 %i.dt
  br i1 %or.cond155.i.i, label %bb.af, label %._crit_edge.i.i

bb.af:                                            ; preds = %.lr.ph.i.i
  %i.du = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE7read_ioCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc72.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !2060 ; 2 uses

.noexc72.i.i:                                     ; preds = %bb.af
  %i.dv = extractvalue { i64, ptr } %i.du, 0
  %i.dw = extractvalue { i64, ptr } %i.du, 1      ; 3 uses
  switch i64 %i.dv, label %.loopexit130.i.i.i [
    i64 2, label %._crit_edge.thread.i.i
    i64 0, label %bb.ag
  ]

bb.ag:                                            ; preds = %.noexc72.i.i
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %.thread140.i.i.i, label %.lr.ph94.i.i.i

.thread140.i.i.i:                                 ; preds = %bb.ag
  store i8 1, ptr %.sroa.538.0..sroa_idx.i.i, align 8, !alias.scope !2058, !noalias !2061
  br label %.thread.i.i.i

bb.ah:                                            ; preds = %._crit_edge.i.i
  br i1 %.sroa.011.1.i.i.i, label %.thread.i.i, label %bb.ab

.thread51.i.i.i:                                  ; preds = %.thread.i.i.i
  %i.dy = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 17) #32
          to label %.loopexit130.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2060

.thread.i.i:                                      ; preds = %bb.ah, %._crit_edge.thread.i.i
  %.sroa.07.192.i.lcssa225229.i.i = phi i64 [ %.sroa.07.192.i192.i.i, %._crit_edge.thread.i.i ], [ %.sroa.07.192.i.lcssa.i.i, %bb.ah ]
  %i.dz = phi i8 [ %i.dh, %._crit_edge.thread.i.i ], [ %i.dd, %bb.ah ]
  %i.ea = phi i8 [ %i.dj, %._crit_edge.thread.i.i ], [ %i.df, %bb.ah ]
  %i.eb = icmp eq i64 %.sroa.07.192.i.lcssa225229.i.i, 0
  %i.ec = icmp eq i64 %.sroa.0.1.lcssa136.i.i.i, 0
  %or.cond3.i.i.i = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond3.i.i.i, label %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCscVe0kjRb1xs_4perf.exit.i.i, label %.loopexit169.i.i

._crit_edge201.i.i:                               ; preds = %.loopexit169.i.i, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2062
  store ptr %i.q, ptr %i.c, align 8, !noalias !2062
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @147, ptr %i.ed, align 8, !noalias !2062
  %i.ee = invoke noundef ptr @_RNvXs5_NtNtCshPShd8ZVvJf_6rustls4conn10connectionNtB5_6WriterNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc76.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2060 ; 2 uses

.noexc76.i.i:                                     ; preds = %._crit_edge201.i.i
  %.not.i.i.i = icmp eq ptr %i.ee, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2062
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.noexc76.i.i
  %i.ef = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.ee, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf.exit.i.i

bb.aj:                                            ; preds = %.noexc76.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc78.i.i, %bb.aj
  %i.eh = load i64, ptr %i.eg, align 8, !noalias !2063, !noundef !11
  %.not16.i.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not16.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ei = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.bn, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2060

bb.am:                                            ; preds = %bb.ak
  %i.ej = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCscVe0kjRb1xs_4perf(ptr nonnull %i.bn, ptr nonnull %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc78.i.i unwind label %.loopexit.i.i, !noalias !2060 ; 2 uses

.noexc78.i.i:                                     ; preds = %bb.am
  %i.ek = extractvalue { i64, ptr } %i.ej, 0
  switch i64 %i.ek, label %bb.an [
    i64 2, label %.loopexit.i75.i.i
    i64 0, label %bb.ak
  ]

bb.an:                                            ; preds = %.noexc78.i.i
  %i.el = extractvalue { i64, ptr } %i.ej, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.el) ]
  br label %.loopexit.i75.i.i

.loopexit.i75.i.i:                                ; preds = %.noexc78.i.i, %bb.an
  %.sroa.5.1.i.i.i = phi ptr [ %i.el, %bb.an ], [ undef, %.noexc78.i.i ]
  %.sroa.04.1.i.i.i = phi i64 [ 0, %bb.an ], [ 1, %.noexc78.i.i ]
  %i.em = insertvalue { i64, ptr } poison, i64 %.sroa.04.1.i.i.i, 0
  %i.en = insertvalue { i64, ptr } %i.em, ptr %.sroa.5.1.i.i.i, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf.exit.i.i

_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf.exit.i.i: ; preds = %.loopexit.i75.i.i, %bb.al, %bb.ai
  %.merged.i.i.i = phi { i64, ptr } [ %i.ef, %bb.ai ], [ %i.en, %.loopexit.i75.i.i ], [ %i.ei, %bb.al ] ; 2 uses
  %i.eo = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.ep = extractvalue { i64, ptr } %.merged.i.i.i, 1 ; 3 uses
  %i.eq = trunc nuw i64 %i.eo to i1
  br i1 %i.eq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.d, ptr noundef nonnull align 8 dereferenceable(1208) %i.q, i64 1208, i1 false), !noalias !2055
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.bh)
          to label %bb.av unwind label %bb.au, !noalias !2064

bb.ap:                                            ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCscVe0kjRb1xs_4perf.exit.i.i
  %.not.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2055
  store ptr %i.ep, ptr %i.f, align 8, !noalias !2055
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4129)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.e, ptr noundef nonnull align 8 dereferenceable(1208) %i.q, i64 1208, i1 false), !noalias !2055
  %.sroa.0128.0.copyload = load ptr, ptr %i.bn, align 8, !noalias !2055
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 1064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4129, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4129.0..sroa_idx, i64 136, i1 false), !noalias !2055
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.e)
          to label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit.i.i unwind label %bb.as, !noalias !2060

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2055
  %.sroa.0.0.copyload2.i = load i64, ptr %i.q, align 8, !noalias !2065
  %.sroa.12.0.copyload4.i = load ptr, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !2065
  %.sroa.17.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.17.i.sroa.0.0.copyload122 = load ptr, ptr %.sroa.17.0..sroa_idx5.i, align 8, !noalias !2065
  %.sroa.17.i.sroa.10.0..sroa.17.0..sroa_idx5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa.17.0..sroa_idx5.i.sroa_idx, i64 136, i1 false), !noalias !2065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.614.0..sroa_idx.i.i, i64 1048, i1 false), !noalias !2065
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #27
          to label %.body26 unwind label %bb.at, !noalias !2060

_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit.i.i: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4129, i64 136, i1 false), !noalias !2065
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4129)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2055
  br label %bb.aw

bb.at:                                            ; preds = %bb.bv, %bb.bu, %.thread106.i.i, %bb.bq, %3, %.loopexit.split-lp.i.i, %bb.ax, %bb.as
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !2064
  unreachable

bb.au:                                            ; preds = %bb.ao
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.thread123.sink.split.i.i

bb.av:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.bh, ptr noundef nonnull align 8 dereferenceable(1208) %i.d, i64 1208, i1 false), !noalias !2036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2055
  br label %bb.aw

bb.aw:                                            ; preds = %bb.az, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit81.i.i, %bb.av, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit.i.i
  %.sroa.17.i.sroa.0.4 = phi ptr [ undef, %bb.av ], [ %.sroa.0128.0.copyload, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit.i.i ], [ %.sroa.0126.0.copyload, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit81.i.i ], [ undef, %bb.az ]
  %.sroa.12.2.i = phi ptr [ undef, %bb.av ], [ %i.ep, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit.i.i ], [ %.sroa.1195.0.ph.i.i, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit81.i.i ], [ undef, %bb.az ]
  %.sroa.0.2.i = phi i64 [ -1, %bb.av ], [ 2, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit.i.i ], [ 2, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit81.i.i ], [ -1, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2055
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i

_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCscVe0kjRb1xs_4perf.exit.i.i: ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.g, ptr noundef nonnull align 8 dereferenceable(1208) %i.q, i64 1208, i1 false), !noalias !2055
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.bh)
          to label %bb.az unwind label %bb.ay, !noalias !2064

.loopexit130.i.i.i:                               ; preds = %bb.ae, %.noexc.i.i, %.noexc70.i.i, %.noexc72.i.i, %.thread51.i.i.i
  %.sroa.1195.0.ph.i.i = phi ptr [ %i.dy, %.thread51.i.i.i ], [ %i.cl, %.noexc70.i.i ], [ %i.dw, %.noexc72.i.i ], [ %i.cw, %bb.ae ], [ %i.cf, %.noexc.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2055
  store ptr %.sroa.1195.0.ph.i.i, ptr %i.i, align 8, !noalias !2055
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4127)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.h, ptr noundef nonnull align 8 dereferenceable(1208) %i.q, i64 1208, i1 false), !noalias !2055
  %.sroa.0126.0.copyload = load ptr, ptr %i.bn, align 8, !noalias !2055
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 1064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4127, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4127.0..sroa_idx, i64 136, i1 false), !noalias !2055
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.h)
          to label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit81.i.i unwind label %bb.ax, !noalias !2060

.loopexit169.i.i:                                 ; preds = %._crit_edge.i.i, %.thread.i.i, %.thread.i.i.i, %._crit_edge.thread.i.i
  %i.eu = phi i8 [ 1, %.thread.i.i.i ], [ %i.ea, %.thread.i.i ], [ 1, %._crit_edge.thread.i.i ], [ 1, %._crit_edge.i.i ]
  %i.ev = phi i8 [ 1, %.thread.i.i.i ], [ %i.dz, %.thread.i.i ], [ 1, %._crit_edge.thread.i.i ], [ 1, %._crit_edge.i.i ]
  %.ph.i.i = phi i8 [ %i.dl, %.thread.i.i.i ], [ %i.bz, %.thread.i.i ], [ %i.bz, %._crit_edge.thread.i.i ], [ %i.bz, %._crit_edge.i.i ]
  %i.ew = trunc nuw i8 %i.ev to i1
  %i.ex = trunc nuw i8 %i.eu to i1
  %or.cond149.i.i = select i1 %i.ew, i1 %i.ex, i1 false
  br i1 %or.cond149.i.i, label %._crit_edge201.i.i, label %bb.aa

bb.ax:                                            ; preds = %.loopexit130.i.i.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #27
          to label %.body26 unwind label %bb.at, !noalias !2060

_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCscVe0kjRb1xs_4perf.exit81.i.i: ; preds = %.loopexit130.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4127, i64 136, i1 false), !noalias !2065
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4127)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2055
  br label %bb.aw

bb.ay:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCscVe0kjRb1xs_4perf.exit.i.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.thread123.sink.split.i.i

bb.az:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCscVe0kjRb1xs_4perf.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.bh, ptr noundef nonnull align 8 dereferenceable(1208) %i.g, i64 1208, i1 false), !noalias !2036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2055
  br label %bb.aw

.thread123.sink.split.i.i:                        ; preds = %bb.ay, %bb.au
  %.sink.i.i = phi ptr [ %i.d, %bb.au ], [ %i.g, %bb.ay ]
  %.pn67.pn.ph.i.i = phi { ptr, i32 } [ %i.et, %bb.au ], [ %i.ez, %bb.ay ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.bh, ptr noundef nonnull align 8 dereferenceable(1208) %.sink.i.i, i64 1208, i1 false), !noalias !2036
  br label %.body26

.loopexit.i.i:                                    ; preds = %bb.am
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.af
  %lpad.loopexit159.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %lpad.loopexit162.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.loopexit142.i.i.i, %.lr.ph.preheader.i.i.i
  %lpad.loopexit165.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %bb.al, %._crit_edge201.i.i, %.thread51.i.i.i
  %lpad.loopexit.split-lp166.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit159.i.i.a, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit162.i.i.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit165.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp166.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(1208) %i.q) #27
          to label %.body26 unwind label %bb.at, !noalias !2060

bb.ba:                                            ; preds = %bb.bi, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2055
  store ptr %i.p, ptr %i.l, align 8, !noalias !2055
  store ptr %2, ptr %i.bk, align 8, !noalias !2055
  %i.fa = invoke { i64, ptr } @_RNvMs7_NtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @30)
          to label %bb.bb unwind label %.thread116.thread133.i.i, !noalias !2060 ; 2 uses

.thread116.thread133.i.i:                         ; preds = %bb.ba
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.thread106.i.i

.thread135.i.i:                                   ; preds = %bb.bm
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bb:                                            ; preds = %bb.ba
  %i.fd = extractvalue { i64, ptr } %i.fa, 0      ; 2 uses
  %i.fe = extractvalue { i64, ptr } %i.fa, 1      ; 12 uses
  store i64 %i.fd, ptr %i.m, align 8, !noalias !2055
  store ptr %i.fe, ptr %i.bl, align 8, !noalias !2055
  %i.ff = trunc nuw i64 %i.fd to i1
  br i1 %i.ff, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.fg = ptrtoint ptr %i.fe to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fe) ]
  %i.fh = and i64 %i.fg, 3                        ; 3 uses
  switch i64 %i.fh, label %default.unreachable220 [
    i64 2, label %bb.bd
    i64 3, label %bb.be
    i64 0, label %bb.bf
    i64 1, label %bb.bg
  ], !prof !25

bb.bd:                                            ; preds = %bb.bc
  %i.fi = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc83.i.i unwind label %3, !noalias !2060

.noexc83.i.i:                                     ; preds = %bb.bd
  %i.fj = lshr i64 %i.fg, 32
  %i.fk = trunc nuw i64 %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !2060, !nonnull !11, !noundef !11
  %i.fn = invoke noundef i8 %i.fm(i32 noundef %i.fk)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i unwind label %3, !noalias !2060, !inline_history !0

bb.be:                                            ; preds = %bb.bc
  %i.fo = lshr i64 %i.fg, 32
  %i.fp = icmp ult ptr %i.fe, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i = trunc i64 %i.fo to i8 ; 2 uses
  %i.fq = icmp ne i8 %switch.idx.cast.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.fp)
  call void @llvm.assume(i1 %i.fq)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.bf:                                            ; preds = %bb.bc
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fs = load i8, ptr %i.fr, align 8, !range !39, !noalias !2060, !noundef !11
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.bg:                                            ; preds = %bb.bc
  %i.ft = getelementptr i8, ptr %i.fe, i64 31
  %i.fu = load i8, ptr %i.ft, align 8, !range !39, !noalias !2060, !noundef !11
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.bh:                                            ; preds = %bb.bb
  %i.fv = icmp eq ptr %i.fe, null
  br i1 %i.fv, label %.loopexit170.i.i, label %bb.bi

.loopexit170.i.i:                                 ; preds = %bb.bh
  %.sroa.17.i.sroa.0.0.copyload118 = load ptr, ptr %i.p, align 8, !noalias !2065
  %.sroa.17.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa_idx, i64 136, i1 false), !noalias !2065
  br label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2055
  br label %bb.ba

3:                                                ; preds = %.noexc83.i.i, %bb.bd
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bl) #27
          to label %.thread106.i.i unwind label %bb.at, !noalias !2060

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.be, %.noexc83.i.i
  %.sroa.0.0.i82.i.i = phi i8 [ %i.fu, %bb.bg ], [ %switch.idx.cast.i.i.i.i.i, %bb.be ], [ %i.fs, %bb.bf ], [ %i.fn, %.noexc83.i.i ]
  %i.fw = icmp eq i8 %.sroa.0.0.i82.i.i, 13
  br i1 %i.fw, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2055
  store ptr %i.fe, ptr %i.k, align 8, !noalias !2055
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619.i.i, ptr noundef nonnull align 8 dereferenceable(144) %i.p, i64 144, i1 false), !noalias !2055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false), !noalias !2055
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.bh)
          to label %bb.br unwind label %bb.bq, !noalias !2064

bb.bk:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i
  %.sroa.17.i.sroa.0.0.copyload119 = load ptr, ptr %i.p, align 8, !noalias !2065
  %.sroa.17.i.sroa.10.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa_idx123, i64 136, i1 false), !noalias !2065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2066
  switch i64 %i.fh, label %default.unreachable220 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf.exit.i.i
    i64 3, label %bb.bl
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf.exit.i.i
    i64 1, label %bb.bm
  ], !prof !25

bb.bl:                                            ; preds = %bb.bk
  %i.fx = icmp ult ptr %i.fe, inttoptr (i64 188978561024 to ptr)
  %i.fy = and i64 %i.fg, 1095216660480
  %i.fz = icmp ne i64 %i.fy, 1095216660480
  call void @llvm.assume(i1 %i.fx)
  call void @llvm.assume(i1 %i.fz)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf.exit.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.ga = getelementptr i8, ptr %i.fe, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ga) ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ga, ptr %i.gb, align 8, !alias.scope !2067, !noalias !2066
  store i8 3, ptr %i.b, align 8, !alias.scope !2067, !noalias !2066
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf.exit.i.i unwind label %.thread135.i.i, !noalias !2060

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf.exit.i.i: ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2066
  br label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf.exit.i.i, %.loopexit170.i.i
  %.sroa.17.i.sroa.0.1 = phi ptr [ %.sroa.17.i.sroa.0.0.copyload119, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf.exit.i.i ], [ %.sroa.17.i.sroa.0.0.copyload118, %.loopexit170.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2055
  %i.gc = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECscVe0kjRb1xs_4perf.exit.i.i.i unwind label %bb.bo, !noalias !2060

bb.bo:                                            ; preds = %bb.bn
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gc)
          to label %.body26 unwind label %bb.bp, !noalias !2060

bb.bp:                                            ; preds = %bb.bo
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !2060
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECscVe0kjRb1xs_4perf.exit.i.i.i: ; preds = %bb.bn
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECscVe0kjRb1xs_4perf.exit.i.i unwind label %bb.by

bb.bq:                                            ; preds = %bb.bj
  %i.gf = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %i.bh, align 8, !alias.scope !2035, !noalias !2036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, i64 56, i1 false), !noalias !2036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619.i.i, i64 144, i1 false), !noalias !2036
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !2035, !noalias !2036
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #27
          to label %.body26 unwind label %bb.at, !noalias !2064

bb.br:                                            ; preds = %bb.bj
  store i64 3, ptr %i.bh, align 8, !alias.scope !2035, !noalias !2036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, i64 56, i1 false), !noalias !2036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619.i.i, i64 144, i1 false), !noalias !2036
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !2035, !noalias !2036
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2068
  switch i64 %i.fh, label %default.unreachable220 [
    i64 2, label %.critedge.i.i
    i64 3, label %bb.bs
    i64 0, label %.critedge.i.i
    i64 1, label %bb.bt
  ], !prof !25

bb.bs:                                            ; preds = %bb.br
  %i.gg = icmp ult ptr %i.fe, inttoptr (i64 188978561024 to ptr)
  %i.gh = and i64 %i.fg, 1095216660480
  %i.gi = icmp ne i64 %i.gh, 1095216660480
  call void @llvm.assume(i1 %i.gg)
  call void @llvm.assume(i1 %i.gi)
  br label %.critedge.i.i

bb.bt:                                            ; preds = %bb.br
  %i.gj = getelementptr i8, ptr %i.fe, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gj) ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.gj, ptr %i.gk, align 8, !alias.scope !2069, !noalias !2068
  store i8 3, ptr %i.a, align 8, !alias.scope !2069, !noalias !2068
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gk)
          to label %.critedge.i.i unwind label %bb.by

.critedge.i.i:                                    ; preds = %bb.bt, %bb.bs, %bb.br, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2055
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECscVe0kjRb1xs_4perf.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECscVe0kjRb1xs_4perf.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECscVe0kjRb1xs_4perf.exit.i.i.i, %.critedge.i.i
  %.sroa.17.i.sroa.0.2 = phi ptr [ undef, %.critedge.i.i ], [ %.sroa.17.i.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECscVe0kjRb1xs_4perf.exit.i.i.i ]
  %.sroa.12.1.i = phi ptr [ undef, %.critedge.i.i ], [ %.sroa.107.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECscVe0kjRb1xs_4perf.exit.i.i.i ]
  %.sroa.0.1.i = phi i64 [ -1, %.critedge.i.i ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECscVe0kjRb1xs_4perf.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2055
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i

.thread141.i.i:                                   ; preds = %bb.bu
  br i1 %.sroa.059.0112140.i.i, label %bb.bv, label %.body26

.thread106.i.i:                                   ; preds = %3, %.thread116.thread133.i.i
  %.pn.pn115.i.i = phi { ptr, i32 } [ %i.fb, %.thread116.thread133.i.i ], [ %4, %3 ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #27
          to label %bb.bu unwind label %bb.at, !noalias !2060

bb.bu:                                            ; preds = %.thread106.i.i, %.thread135.i.i
  %.sroa.059.0112140.i.i = phi i1 [ false, %.thread135.i.i ], [ true, %.thread106.i.i ]
  %.pn.pn114139.i.i = phi { ptr, i32 } [ %i.fc, %.thread135.i.i ], [ %.pn.pn115.i.i, %.thread106.i.i ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o) #27
          to label %.thread141.i.i unwind label %bb.at, !noalias !2060

bb.bv:                                            ; preds = %.thread141.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(144) %i.p) #27
          to label %.body26 unwind label %bb.at, !noalias !2060

_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECscVe0kjRb1xs_4perf.exit.i.i, %bb.aw, %bb.ar
  %.sroa.17.i.sroa.0.3 = phi ptr [ %.sroa.17.i.sroa.0.4, %bb.aw ], [ %.sroa.17.i.sroa.0.0.copyload122, %bb.ar ], [ %.sroa.17.i.sroa.0.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECscVe0kjRb1xs_4perf.exit.i.i ] ; 2 uses
  %.sroa.12.3.i = phi ptr [ %.sroa.12.2.i, %bb.aw ], [ %.sroa.12.0.copyload4.i, %bb.ar ], [ %.sroa.12.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECscVe0kjRb1xs_4perf.exit.i.i ] ; 2 uses
  %.sroa.0.3.i = phi i64 [ %.sroa.0.2.i, %bb.aw ], [ %.sroa.0.0.copyload2.i, %bb.ar ], [ %.sroa.0.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECscVe0kjRb1xs_4perf.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2055
  switch i64 %.sroa.0.3.i, label %bb.bx [
    i64 -1, label %bb.bz
    i64 2, label %bb.bw
  ]

bb.bw:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.thread.i
  %.sroa.17.i.sroa.0.0 = phi ptr [ %.sroa.17.i.sroa.0.3, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i ], [ %.sroa.17.i.sroa.0.0.copyload, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.thread.i ]
  %.sroa.12.317.i = phi ptr [ %.sroa.12.3.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i ], [ %.sroa.9.0.copyload.i.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.thread.i ] ; 2 uses
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2070
  store ptr %.sroa.17.i.sroa.0.0, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !2070
  %.sroa.17.i.sroa.10.0..sroa.414.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa.414.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, i64 136, i1 false), !noalias !2070
  store ptr %.sroa.12.317.i, ptr %i.r, align 8, !noalias !2070
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(144) %.sroa.414.0..sroa_idx.i)
          to label %.noexc30 unwind label %bb.by

.noexc30:                                         ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2070
  br label %bb.ca

bb.bx:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.1169.sroa.6, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, i64 136, i1 false), !noalias !2071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.1270, ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.21.i, i64 1048, i1 false), !noalias !2071
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw, %bb.bt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECscVe0kjRb1xs_4perf.exit.i.i.i, %bb.y
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body26

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit, %bb.bz
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit ], [ 3, %bb.bz ]
  store i8 %storemerge, ptr %i.ac, align 8
  ret void

bb.bz:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCscVe0kjRb1xs_4perf.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1169.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1270)
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 -2, ptr %i.gm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %common.ret

bb.ca:                                            ; preds = %bb.bx, %.noexc30
  %.sroa.1169.sroa.0.0.ph = phi ptr [ undef, %.noexc30 ], [ %.sroa.17.i.sroa.0.3, %bb.bx ]
  %.sroa.968.0.ph = phi ptr [ %.sroa.12.317.i, %.noexc30 ], [ %.sroa.12.3.i, %bb.bx ] ; 3 uses
  %.sroa.067.0.ph = phi i64 [ 2, %.noexc30 ], [ %.sroa.0.3.i, %bb.bx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  %i.gn = ptrtoint ptr %.sroa.968.0.ph to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.873, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.1169.sroa.6, i64 136, i1 false)
  %.sroa.873.160..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.873, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.873.160..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.1270, i64 1048, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1169.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1270)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.bh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit32 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit32: ; preds = %bb.ca
  %i.gp = icmp eq i64 %.sroa.067.0.ph, 2
  br i1 %i.gp, label %bb.ct, label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit32
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.873, i64 40
  %.sroa.780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.780.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1144) %i.gq, i64 1144, i1 false)
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.679.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.873, i64 40, i1 false)
  store i64 %.sroa.067.0.ph, ptr %i.aa, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.gn, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %.sroa.1169.sroa.0.0.ph, ptr %.sroa.578.0..sroa_idx, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2072)
  call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !2075, !nonnull !11, !noundef !11
  %i.gt = atomicrmw sub ptr %i.gs, i64 1 release, align 8, !noalias !2075
  %i.gu = icmp eq i64 %i.gt, 1
  br i1 %i.gu, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gr) #32
          to label %bb.cf unwind label %.thread153

.thread153:                                       ; preds = %bb.cd
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.ce:                                            ; preds = %bb.cf
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.thread157

bb.cf:                                            ; preds = %bb.cd, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.883.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.aa, i64 1056
  invoke void @_RNvNtCs2oFjxwYQXCx_10libp2p_tls7upgrade26extract_single_certificate(ptr noalias nofree noundef nonnull sret([880 x i8]) align 8 captures(address) dereferenceable(880) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(840) %i.aa)
          to label %bb.cg unwind label %bb.ce

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !2076)
  %i.gy = load i64, ptr %i.w, align 8, !range !23, !alias.scope !2077, !noalias !2076, !noundef !11 ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 2
  %i.ha = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.883.sroa.0.0.copyload113 = load i64, ptr %i.ha, align 8, !alias.scope !2078 ; 2 uses
  %.sroa.883.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.883.sroa.8.0.copyload115 = load ptr, ptr %.sroa.883.sroa.8.0..sroa_idx, align 8, !alias.scope !2078 ; 2 uses
  %.sroa.883.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.883.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.883.sroa.9.0..sroa_idx, i64 40, i1 false), !alias.scope !2078
  br i1 %i.gz, label %bb.cn, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.sroa.1085.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(816) %.sroa.589.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(816) %.sroa.1085.0..sroa_idx86, i64 816, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.sroa.488.sroa.5.0..sroa.488.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.488.sroa.5.0..sroa.488.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.883.sroa.9, i64 40, i1 false)
  store i64 %i.gy, ptr %i.x, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.883.sroa.0.0.copyload113, ptr %.sroa.488.0..sroa_idx, align 8
  %.sroa.488.sroa.4.0..sroa.488.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %.sroa.883.sroa.8.0.copyload115, ptr %.sroa.488.sroa.4.0..sroa.488.0..sroa_idx.sroa_idx, align 8
  invoke void @_RNvMs1_NtCs2oFjxwYQXCx_10libp2p_tls11certificateNtB5_14P2pCertificate7peer_id(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(880) %i.x)
          to label %bb.cj unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate14P2pCertificateECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(880) %i.x) #27
          to label %.thread157 unwind label %bb.cm

bb.cj:                                            ; preds = %bb.ch
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate14P2pCertificateECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(880) %i.x)
          to label %bb.cl unwind label %bb.ck

.thread157:                                       ; preds = %bb.ce, %bb.ci, %bb.ck
  %.pn11 = phi { ptr, i32 } [ %i.gw, %bb.ce ], [ %i.hc, %bb.ck ], [ %i.hb, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.883.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.cs

bb.ck:                                            ; preds = %bb.cj
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %.thread157

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.883.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %.sroa.9108, ptr noundef nonnull align 8 dereferenceable(1208) %i.aa, i64 1208, i1 false)
  %.sroa.093.sroa.0.0.copyload = load i64, ptr %i.y, align 8
  %.sroa.093.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.093.sroa.5.0.copyload = load ptr, ptr %.sroa.093.sroa.5.0..sroa_idx, align 8
  %.sroa.093.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5104, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.093.sroa.6.0..sroa_idx, i64 40, i1 false)
  %.sroa.093.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6106, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.sroa.7.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECscVe0kjRb1xs_4perf.exit: ; preds = %bb.cu, %bb.ct, %bb.cp, %bb.cl
  %.sroa.6107.0 = phi i64 [ 2, %bb.cl ], [ -1, %bb.cp ], [ -1, %bb.ct ], [ -1, %bb.cu ]
  %.sroa.4100.0 = phi ptr [ %.sroa.093.sroa.5.0.copyload, %bb.cl ], [ %.sroa.883.sroa.8.0.copyload115, %bb.cp ], [ %.sroa.968.0.ph, %bb.ct ], [ %.sroa.968.0.ph, %bb.cu ]
  %.sroa.097.0 = phi i64 [ %.sroa.093.sroa.0.0.copyload, %bb.cl ], [ %.sroa.883.sroa.0.0.copyload113, %bb.cp ], [ -9223372036854775756, %bb.ct ], [ -9223372036854775756, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 1705
  store i8 0, ptr %i.hd, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  store i64 %.sroa.097.0, ptr %0, align 8
end_hunk_1
