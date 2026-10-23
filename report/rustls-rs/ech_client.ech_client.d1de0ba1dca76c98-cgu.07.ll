Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.07?download=true
inline.NumInlined: 1341
inline.NumDeleted: 661
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB1B_12ProbeRequestNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0EENtB4_6Future4pollCsi17nFaBu4HY_10ech_client:bb.a
  store i8 3, ptr %i.jo, align 8, !noalias !2163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2145
  br label %_RNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB6_12ProbeRequestNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0Csi17nFaBu4HY_10ech_client.exit

bb.eq:                                            ; preds = %bb.el
  store i8 1, ptr %i.jo, align 8, !noalias !2163
  store ptr %i.jq, ptr %i.b, align 8, !noalias !2145
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2145
  %i.jy = getelementptr inbounds nuw i8, ptr %.val, i64 257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.a, ptr noundef nonnull align 1 dereferenceable(17) %i.jy, i64 17, i1 false), !noalias !2145
  %i.jz = getelementptr inbounds nuw i8, ptr %.val, i64 274
  %i.ka = load i8, ptr %i.jz, align 2, !range !24, !noalias !2145, !noundef !6
  %i.kb = getelementptr inbounds nuw i8, ptr %.val, i64 280 ; 2 uses
  invoke void @_RNvMs2_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtB5_24NameServerTransportState14error_received(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.jx, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(17) %i.a, i8 noundef %i.ka, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.kb)
          to label %bb.es unwind label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2145
  invoke void @_RNvXsi_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs1_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtBJ_11PoolContext15transport_state0ECsi17nFaBu4HY_10ech_client.exit271.i unwind label %bb.v

bb.es:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2145
  invoke void @_RNvXsi_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit276.i unwind label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs1_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtBJ_11PoolContext15transport_state0ECsi17nFaBu4HY_10ech_client.exit271.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit276.i: ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2145
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(72) %i.kb)
          to label %bb.ed unwind label %bb.eu

bb.eu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit276.i, %bb.cz, %bb.cx
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.ev:                                            ; preds = %bb.ed
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(176) %i.jg)
          to label %bb.ew unwind label %bb.cu

bb.ew:                                            ; preds = %bb.ev, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.kf = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 3 uses
  %.val147.i = load ptr, ptr %i.kf, align 8, !noalias !2145, !nonnull !6, !noundef !6
  %i.kg = getelementptr inbounds nuw i8, ptr %.val147.i, i64 1000
  %i.kh = atomicrmw add ptr %i.kg, i8 1 monotonic, align 1 ; 0 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs5MfxasYgTEl_11hickory_net4xfer25BufDnsRequestStreamHandleNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ki)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange11DnsExchangeNtNtNtBI_7runtime13tokio_runtime20TokioRuntimeProviderEECsi17nFaBu4HY_10ech_client.exit278.i unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit204.i
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange11DnsExchangeNtNtNtBI_7runtime13tokio_runtime20TokioRuntimeProviderEECsi17nFaBu4HY_10ech_client.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange11DnsExchangeNtNtNtBI_7runtime13tokio_runtime20TokioRuntimeProviderEECsi17nFaBu4HY_10ech_client.exit278.i: ; preds = %bb.ew
  call void @llvm.experimental.noalias.scope.decl(metadata !2164)
  call void @llvm.experimental.noalias.scope.decl(metadata !2165)
  %i.kk = load ptr, ptr %i.kf, align 8, !alias.scope !2166, !noalias !2145, !nonnull !6, !noundef !6
  %i.kl = atomicrmw add ptr %i.kk, i64 -1 release, align 8, !noalias !2166
  %i.km = icmp eq i64 %i.kl, 1
  br i1 %i.km, label %.invoke.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool11PoolContextEECsi17nFaBu4HY_10ech_client.exit280.i

.invoke.i:                                        ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange11DnsExchangeNtNtNtBI_7runtime13tokio_runtime20TokioRuntimeProviderEECsi17nFaBu4HY_10ech_client.exit278.i, %bb.bo
  %i.kn = phi ptr [ %i.ex, %bb.bo ], [ %i.kf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange11DnsExchangeNtNtNtBI_7runtime13tokio_runtime20TokioRuntimeProviderEECsi17nFaBu4HY_10ech_client.exit278.i ]
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool11PoolContextE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kn) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool11PoolContextEECsi17nFaBu4HY_10ech_client.exit280.i unwind label %bb.bp

bb.ey:                                            ; preds = %bb.dd
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(176) %i.hm) #27
          to label %bb.co unwind label %bb.v

bb.ez:                                            ; preds = %bb.fa, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool11PoolContextEECsi17nFaBu4HY_10ech_client.exit.i
  store i8 0, ptr %i.fb, align 1, !noalias !2145
  store i8 2, ptr %i.aj, align 8, !noalias !2145
  resume { ptr, i32 } %.pn113.i

bb.fa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool11PoolContextEECsi17nFaBu4HY_10ech_client.exit.i
  %i.ko = getelementptr inbounds nuw i8, ptr %.val, i64 280
  %.val159.i = load ptr, ptr %i.ko, align 8, !noalias !2145
  %i.kp = getelementptr i8, ptr %.val, i64 288
  %.val160.i = load ptr, ptr %i.kp, align 8, !noalias !2145, !nonnull !6, !align !8, !noundef !6
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange11DnsExchangeNtNtNtB2w_7runtime13tokio_runtime20TokioRuntimeProviderENtNtB2w_5error8NetErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client(ptr %.val159.i, ptr nonnull %.val160.i) #27
          to label %bb.ez unwind label %bb.v

_RNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB6_12ProbeRequestNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0Csi17nFaBu4HY_10ech_client.exit: ; preds = %bb.p, %bb.z, %bb.bj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool11PoolContextEECsi17nFaBu4HY_10ech_client.exit280.i, %bb.cb, %bb.cs, %bb.dy, %bb.ep
  %.sink.i = phi i8 [ 9, %bb.ep ], [ 8, %bb.dy ], [ 7, %bb.cs ], [ 6, %bb.cb ], [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool11PoolContextEECsi17nFaBu4HY_10ech_client.exit280.i ], [ 5, %bb.bj ], [ 4, %bb.z ], [ 3, %bb.p ]
  %common.ret.op.i = phi i1 [ true, %bb.ep ], [ true, %bb.dy ], [ true, %bb.cs ], [ true, %bb.cb ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool11PoolContextEECsi17nFaBu4HY_10ech_client.exit280.i ], [ true, %bb.bj ], [ true, %bb.z ], [ true, %bb.p ]
  store i8 %.sink.i, ptr %i.aj, align 8, !noalias !2145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  ret i1 %common.ret.op.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver14caching_clientINtB1B_13CachingClientINtNtB1D_8resolver12LookupEitherNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE12inner_lookup0EENtB4_6Future4pollCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i.i = alloca [28 x i8], align 4 ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.4.i13 = alloca [71 x i8], align 1        ; 4 uses
  %i.c = alloca [152 x i8], align 8               ; 6 uses
  %i.d = alloca [88 x i8], align 8                ; 5 uses
  %i.e = alloca [152 x i8], align 8               ; 5 uses
  %i.f = alloca [88 x i8], align 8                ; 5 uses
  %i.g = alloca [152 x i8], align 8               ; 6 uses
  %i.h = alloca [88 x i8], align 8                ; 5 uses
  %i.i = alloca [88 x i8], align 8                ; 5 uses
  %i.j = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.3.i = alloca [72 x i8], align 8          ; 5 uses
  %.sroa.4.i = alloca [88 x i8], align 8          ; 4 uses
  %i.k = alloca [168 x i8], align 8               ; 8 uses
  %i.l = alloca [168 x i8], align 8               ; 21 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [152 x i8], align 8               ; 7 uses
  %i.p = alloca [176 x i8], align 8               ; 6 uses
  %i.q = alloca [176 x i8], align 8               ; 7 uses
  %i.r = alloca [176 x i8], align 8               ; 5 uses
  %i.s = alloca [176 x i8], align 8               ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 5 uses
  %i.u = alloca [88 x i8], align 8                ; 10 uses
  %i.v = alloca [168 x i8], align 8               ; 7 uses
  %i.w = alloca [88 x i8], align 8                ; 5 uses
  %i.x = alloca [64 x i8], align 8                ; 5 uses
  %.sroa.528 = alloca [71 x i8], align 1          ; 5 uses
  %i.y = alloca [88 x i8], align 8                ; 5 uses
  %i.z = alloca [64 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [71 x i8], align 1            ; 5 uses
  %i.aa = alloca [184 x i8], align 8              ; 6 uses
  %i.ab = alloca [88 x i8], align 8               ; 6 uses
  %i.ac = alloca [168 x i8], align 8              ; 5 uses
  %i.ad = alloca [184 x i8], align 8              ; 6 uses
  %i.ae = alloca [88 x i8], align 8               ; 6 uses
  %i.af = alloca [168 x i8], align 8              ; 5 uses
  %i.ag = alloca [184 x i8], align 8              ; 6 uses
  %i.ah = alloca [88 x i8], align 8               ; 6 uses
  %i.ai = alloca [168 x i8], align 8              ; 5 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 113 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 848 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !20, !noalias !2199, !noundef !6
  switch i8 %i.ak, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.bp
    i8 2, label %bb.bq
    i8 3, label %bb.bl
    i8 4, label %bb.cy
  ]

default.unreachable:                              ; preds = %bb.u, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 857 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 856
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 852
  store i32 0, ptr %i.an, align 4
  store i8 1, ptr %i.al, align 1, !noalias !2199
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 336 ; 14 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ao, ptr noundef nonnull align 8 dereferenceable(88) %i.ap, i64 88, i1 false), !noalias !2199
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 424 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false), !noalias !2199
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 456 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.as, ptr noundef nonnull align 8 dereferenceable(192) %.val, i64 192, i1 false), !noalias !2199
  store i8 1, ptr %i.am, align 8, !noalias !2199
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 648
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !2199
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 850
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 849
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !2199, !noundef !6
  store i8 %i.ax, ptr %i.av, align 2, !noalias !2199
  %i.ay = getelementptr i8, ptr %.val, i64 416    ; 2 uses
  %.val.i = load i16, ptr %i.ay, align 8, !range !2200, !noalias !2199, !noundef !6
  %i.az = icmp eq i16 %.val.i, 0
  br i1 %i.az, label %bb.c, label %bb.au

bb.c:                                             ; preds = %bb.b
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvXsa_NtCslWW8PXLybpZ_9once_cell4syncINtB5_4LazyNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage9ZoneUsageENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 @_RNvNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage9LOCALHOST)
          to label %bb.d unwind label %bb.at, !noalias !2198, !inline_history !2170

bb.d:                                             ; preds = %bb.c
  %i.bb = invoke noundef zeroext i1 @_RNvMNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB2_4Name7zone_of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ao)
          to label %bb.e unwind label %bb.at, !noalias !2198, !inline_history !2170

bb.e:                                             ; preds = %bb.d
  br i1 %i.bb, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = invoke noundef nonnull align 8 ptr @_RNvXsa_NtCslWW8PXLybpZ_9once_cell4syncINtB5_4LazyNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage9ZoneUsageENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 @_RNvNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage16IN_ADDR_ARPA_127)
          to label %bb.g unwind label %bb.at, !noalias !2198, !inline_history !2170

bb.g:                                             ; preds = %bb.f
  %i.bd = invoke noundef zeroext i1 @_RNvMNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB2_4Name7zone_of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ao)
          to label %bb.h unwind label %bb.at, !noalias !2198, !inline_history !2170

bb.h:                                             ; preds = %bb.g
  br i1 %i.bd, label %.invoke, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = invoke noundef nonnull align 8 ptr @_RNvXsa_NtCslWW8PXLybpZ_9once_cell4syncINtB5_4LazyNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage9ZoneUsageENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 @_RNvNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage10IP6_ARPA_1)
          to label %bb.j unwind label %bb.at, !noalias !2198, !inline_history !2170

bb.j:                                             ; preds = %bb.i
  %i.bf = invoke noundef zeroext i1 @_RNvMNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB2_4Name7zone_of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ao)
          to label %bb.k unwind label %bb.at, !noalias !2198, !inline_history !2170

bb.k:                                             ; preds = %bb.j
  br i1 %i.bf, label %.invoke, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = invoke noundef nonnull align 8 ptr @_RNvXsa_NtCslWW8PXLybpZ_9once_cell4syncINtB5_4LazyNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage9ZoneUsageENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 @_RNvNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage7INVALID)
          to label %bb.m unwind label %bb.at, !noalias !2198, !inline_history !2170

bb.m:                                             ; preds = %bb.l
  %i.bh = invoke noundef zeroext i1 @_RNvMNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB2_4Name7zone_of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ao)
          to label %bb.n unwind label %bb.at, !noalias !2198, !inline_history !2170

bb.n:                                             ; preds = %bb.m
  br i1 %i.bh, label %.invoke, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = invoke noundef nonnull align 8 ptr @_RNvXsa_NtCslWW8PXLybpZ_9once_cell4syncINtB5_4LazyNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage9ZoneUsageENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 @_RNvNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage5LOCAL)
          to label %bb.p unwind label %bb.at, !noalias !2198, !inline_history !2170

bb.p:                                             ; preds = %bb.o
  %i.bj = invoke noundef zeroext i1 @_RNvMNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB2_4Name7zone_of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ao)
          to label %bb.q unwind label %bb.at, !noalias !2198, !inline_history !2170

bb.q:                                             ; preds = %bb.p
  br i1 %i.bj, label %.invoke, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = invoke noundef nonnull align 8 ptr @_RNvXsa_NtCslWW8PXLybpZ_9once_cell4syncINtB5_4LazyNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage9ZoneUsageENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 @_RNvNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage5ONION)
          to label %bb.s unwind label %bb.at, !noalias !2198, !inline_history !2170

bb.s:                                             ; preds = %bb.r
  %i.bl = invoke noundef zeroext i1 @_RNvMNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB2_4Name7zone_of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ao)
          to label %bb.t unwind label %bb.at, !noalias !2198, !inline_history !2170

bb.t:                                             ; preds = %bb.s
  %_RNvNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage5ONION._RNvNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage7DEFAULT = select i1 %i.bl, ptr @_RNvNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage5ONION, ptr @_RNvNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage7DEFAULT
  br label %.invoke

.invoke:                                          ; preds = %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.e
  %i.bm = phi ptr [ @_RNvNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage5LOCAL, %bb.q ], [ %_RNvNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage5ONION._RNvNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage7DEFAULT, %bb.t ], [ @_RNvNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage7INVALID, %bb.n ], [ @_RNvNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage9LOCALHOST, %bb.k ], [ @_RNvNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage9LOCALHOST, %bb.h ], [ @_RNvNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage9LOCALHOST, %bb.e ]
  %i.bn = invoke noundef nonnull align 8 ptr @_RNvXsa_NtCslWW8PXLybpZ_9once_cell4syncINtB5_4LazyNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5usage9ZoneUsageENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 %i.bm)
          to label %bb.u unwind label %bb.at, !noalias !2198, !inline_history !2170

bb.u:                                             ; preds = %.invoke
  %i.bo = getelementptr i8, ptr %i.bn, i64 84
  %.sroa.0.0.val.i = load i8, ptr %i.bo, align 4, !range !24, !noalias !2198, !noundef !6
  switch i8 %.sroa.0.0.val.i, label %default.unreachable [
    i8 0, label %bb.au
    i8 1, label %bb.w
    i8 2, label %bb.au
    i8 3, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.528)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2199
  store i8 0, ptr %i.al, align 1, !noalias !2199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.ao, i64 88, i1 false), !noalias !2199
  invoke void @_RINvMs7_NtCs5MfxasYgTEl_11hickory_net5errorNtB6_9NoRecords3newNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.w, i16 noundef 3, i16 undef)
          to label %bb.bo unwind label %bb.bn, !noalias !2198, !inline_history !2170

bb.w:                                             ; preds = %bb.u
  %i.bp = getelementptr i8, ptr %.val, i64 420
  %.val38.i = load i16, ptr %i.bp, align 4, !range !33, !noalias !2199, !noundef !6
  switch i16 %.val38.i, label %bb.x [
    i16 0, label %bb.y
    i16 1, label %bb.z
    i16 26, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2199
  store i8 0, ptr %i.al, align 1, !noalias !2199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.y, ptr noundef nonnull align 8 dereferenceable(88) %i.ao, i64 88, i1 false), !noalias !2199
  invoke void @_RINvMs7_NtCs5MfxasYgTEl_11hickory_net5errorNtB6_9NoRecords3newNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.y, i16 noundef 0, i16 undef)
          to label %bb.as unwind label %bb.ar, !noalias !2198, !inline_history !2170

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2199
  store i8 0, ptr %i.al, align 1, !noalias !2199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ah, ptr noundef nonnull align 8 dereferenceable(88) %i.ao, i64 88, i1 false), !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2199
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvXsa_NtCslWW8PXLybpZ_9once_cell4syncINtB5_4LazyNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_data5RDataENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 @_RNvNtCs9RFwvXNxPyg_16hickory_resolver14caching_client12LOCALHOST_V4)
          to label %bb.ac unwind label %bb.af, !noalias !2198, !inline_history !2170

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2199
  store i8 0, ptr %i.al, align 1, !noalias !2199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ae, ptr noundef nonnull align 8 dereferenceable(88) %i.ao, i64 88, i1 false), !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2199
  %i.br = invoke noundef nonnull align 8 ptr @_RNvXsa_NtCslWW8PXLybpZ_9once_cell4syncINtB5_4LazyNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_data5RDataENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 @_RNvNtCs9RFwvXNxPyg_16hickory_resolver14caching_client12LOCALHOST_V6)
          to label %bb.ai unwind label %bb.al, !noalias !2198, !inline_history !2170

bb.aa:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2199
  store i8 0, ptr %i.al, align 1, !noalias !2199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ab, ptr noundef nonnull align 8 dereferenceable(88) %i.ao, i64 88, i1 false), !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2199
  %i.bs = invoke noundef nonnull align 8 ptr @_RNvXsa_NtCslWW8PXLybpZ_9once_cell4syncINtB5_4LazyNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_data5RDataENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 @_RNvNtCs9RFwvXNxPyg_16hickory_resolver14caching_client9LOCALHOST)
          to label %bb.an unwind label %bb.aq, !noalias !2198, !inline_history !2170

bb.ab:                                            ; preds = %bb.ad
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2199
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit25

bb.ac:                                            ; preds = %bb.y
  invoke fastcc void @_RNvXsa_NtNtCsjXdHNeFfodD_13hickory_proto2rr11record_dataNtB5_5RDataNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(184) %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.bq)
          to label %bb.ad unwind label %bb.af, !noalias !2198, !inline_history !2170

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMNtCs9RFwvXNxPyg_16hickory_resolver6lookupNtB2_6Lookup10from_rdata(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.ah, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %i.ag)
          to label %bb.ae unwind label %bb.ab, !noalias !2198, !inline_history !2170

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.l, ptr noundef nonnull align 8 dereferenceable(168) %i.ai, i64 168, i1 false), !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2199
  br label %bb.bg

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit25: ; preds = %bb.af, %bb.ab
  %lpad.phi39 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ab ], [ %lpad.thr_comm, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2199
  br label %bb.bm

bb.af:                                            ; preds = %bb.ac, %bb.y
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2199
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ah)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit25 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.al, %bb.aq, %bb.fc, %bb.fb, %bb.fa, %bb.ey, %bb.dr, %.body, %bb.br
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !2198, !inline_history !2170
  unreachable

bb.ah:                                            ; preds = %bb.aj
  %lpad.thr_comm.split-lp44 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2199
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit23

bb.ai:                                            ; preds = %bb.z
  invoke fastcc void @_RNvXsa_NtNtCsjXdHNeFfodD_13hickory_proto2rr11record_dataNtB5_5RDataNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(184) %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.br)
          to label %bb.aj unwind label %bb.al, !noalias !2198, !inline_history !2170

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMNtCs9RFwvXNxPyg_16hickory_resolver6lookupNtB2_6Lookup10from_rdata(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.af, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %i.ad)
          to label %bb.ak unwind label %bb.ah, !noalias !2198, !inline_history !2170

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.l, ptr noundef nonnull align 8 dereferenceable(168) %i.af, i64 168, i1 false), !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2199
  br label %bb.bg

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit23: ; preds = %bb.al, %bb.ah
  %lpad.phi48 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp44, %bb.ah ], [ %lpad.thr_comm43, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2199
  br label %bb.bm

bb.al:                                            ; preds = %bb.ai, %bb.z
  %lpad.thr_comm43 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2199
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ae)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit23 unwind label %bb.ag

bb.am:                                            ; preds = %bb.ao
  %lpad.thr_comm.split-lp53 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2199
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit21

bb.an:                                            ; preds = %bb.aa
  invoke fastcc void @_RNvXsa_NtNtCsjXdHNeFfodD_13hickory_proto2rr11record_dataNtB5_5RDataNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(184) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.bs)
          to label %bb.ao unwind label %bb.aq, !noalias !2198, !inline_history !2170

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvMNtCs9RFwvXNxPyg_16hickory_resolver6lookupNtB2_6Lookup10from_rdata(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %i.aa)
          to label %bb.ap unwind label %bb.am, !noalias !2198, !inline_history !2170

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.l, ptr noundef nonnull align 8 dereferenceable(168) %i.ac, i64 168, i1 false), !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2199
  br label %bb.bg

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit21: ; preds = %bb.aq, %bb.am
  %lpad.phi57 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp53, %bb.am ], [ %lpad.thr_comm52, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2199
  br label %bb.bm

bb.aq:                                            ; preds = %bb.an, %bb.aa
  %lpad.thr_comm52 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2199
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ab)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit21 unwind label %bb.ag

bb.ar:                                            ; preds = %bb.x
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.bm

bb.as:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2199
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %.sroa.5.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false), !alias.scope !2201, !noalias !2198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2199
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i8 2, ptr %i.bv, align 8, !noalias !2199
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.5, i64 71, i1 false), !noalias !2199
  store i64 -1, ptr %i.l, align 8, !noalias !2199
end_hunk_0
