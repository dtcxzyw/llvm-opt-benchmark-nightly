Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.08?download=true
inline.NumInlined: 1313
inline.NumDeleted: 515
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNCNCINvNtCs5MfxasYgTEl_11hickory_net2h27connectINtNtNtB8_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB2r_6future6future6Futurep6OutputINtNtB2r_6result6ResultBK_NtNtNtB2r_2io5error5ErrorENtNtB2r_6marker4SendEL_EEE00Csi17nFaBu4HY_10ech_client:bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4okMlIQ9Z13_2h25proto10connection15ConnectionInnerNtNtBI_6client4PeerEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(320) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB27_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEEECsi17nFaBu4HY_10ech_client.exit unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4okMlIQ9Z13_2h25proto10connection10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2k_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtBI_6client4PeerEECsi17nFaBu4HY_10ech_client.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB27_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEEECsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4okMlIQ9Z13_2h25proto10connection10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2k_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtBI_6client4PeerEECsi17nFaBu4HY_10ech_client.exit.i
  %.not = icmp eq i8 %i.m, -1
  br i1 %.not, label %common.ret, label %.noexc

.noexc:                                           ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4okMlIQ9Z13_2h26client10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB27_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEEECsi17nFaBu4HY_10ech_client.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %i.m, ptr %i.f, align 8
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3.0..sroa_idx4, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3, i64 39, i1 false)
  %i.u = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.v = and i64 %i.u, -2
  %switch = icmp eq i64 %i.v, 4
  br i1 %switch, label %.critedge, label %bb.p

bb.p:                                             ; preds = %.noexc
  %i.w = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtCs5MfxasYgTEl_11hickory_net2h27connect0010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.x = icmp ult i8 %i.w, 3
  br i1 %i.x, label %bb.s, label %bb.q, !prof !2343

bb.q:                                             ; preds = %bb.p
  %i.y = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtCs5MfxasYgTEl_11hickory_net2h27connect0010___CALLSITE) #26
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.s:                                             ; preds = %bb.q, %bb.p
  %.sroa.0.0.i19 = phi i8 [ %i.w, %bb.p ], [ %i.y, %bb.q ] ; 2 uses
  %i.aa = icmp eq i8 %.sroa.0.0.i19, 0
  br i1 %i.aa, label %.critedge, label %bb.u

bb.t:                                             ; preds = %bb.u
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.u:                                             ; preds = %bb.s
  %i.ac = load ptr, ptr @_RNvNCNCNvNtCs5MfxasYgTEl_11hickory_net2h27connect0010___CALLSITE, align 8, !nonnull !18, !align !92, !noundef !18
  %i.ad = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ac, i8 noundef %.sroa.0.0.i19)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  br i1 %i.ad, label %bb.aa, label %.critedge

.critedge:                                        ; preds = %.noexc, %bb.s, %_RNCNCNCINvNtCs5MfxasYgTEl_11hickory_net2h27connectINtNtNtBa_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB2t_6future6future6Futurep6OutputINtNtB2t_6result6ResultBM_NtNtNtB2t_2io5error5ErrorENtNtB2t_6marker4SendEL_EEE000Csi17nFaBu4HY_10ech_client.exit, %bb.v
  %i.ae = phi i8 [ %i.m, %.noexc ], [ %i.m, %bb.s ], [ %.pre, %_RNCNCNCINvNtCs5MfxasYgTEl_11hickory_net2h27connectINtNtNtBa_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB2t_6future6future6Futurep6OutputINtNtB2t_6result6ResultBM_NtNtNtB2t_2io5error5ErrorENtNtB2t_6marker4SendEL_EEE000Csi17nFaBu4HY_10ech_client.exit ], [ %i.m, %bb.v ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2344)
  call void @llvm.experimental.noalias.scope.decl(metadata !2347)
  switch i8 %i.ae, label %bb.w [
    i8 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECsi17nFaBu4HY_10ech_client.exit
    i8 1, label %bb.z
    i8 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECsi17nFaBu4HY_10ech_client.exit
    i8 3, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECsi17nFaBu4HY_10ech_client.exit
  ]

bb.w:                                             ; preds = %.critedge
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i.i = load ptr, ptr %i.af, align 8, !alias.scope !2350, !nonnull !18, !noundef !18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2350
  %i.ag = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable33 [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i.i
    i64 3, label %bb.x
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i.i
    i64 1, label %bb.y
  ], !prof !177

bb.x:                                             ; preds = %bb.w
  %i.ai = icmp ult ptr %.val.i.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.al = getelementptr i8, ptr %.val.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !2351, !noalias !2350
  store i8 3, ptr %i.a, align 8, !alias.scope !2351, !noalias !2350
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i.i unwind label %bb.ad

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2350
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECsi17nFaBu4HY_10ech_client.exit

bb.z:                                             ; preds = %.critedge
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2354)
  call void @llvm.experimental.noalias.scope.decl(metadata !2357)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !2360, !noundef !18
  %i.aq = load ptr, ptr %i.an, align 8, !alias.scope !2360, !nonnull !18, !align !92, !noundef !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !2360, !nonnull !18, !noundef !18
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !2360, !noundef !18
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !2360, !noundef !18
  invoke void %i.as(ptr noundef %i.ap, ptr noundef %i.au, i64 noundef %i.aw)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECsi17nFaBu4HY_10ech_client.exit unwind label %bb.ad, !inline_history !2361

bb.aa:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ax = load ptr, ptr @_RNvNCNCNvNtCs5MfxasYgTEl_11hickory_net2h27connect0010___CALLSITE, align 8, !nonnull !18, !align !92, !noundef !18 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs3_NtCs4okMlIQ9Z13_2h25errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr @35, ptr %i.c, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.az, align 8
  store ptr %i.c, ptr %i.d, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @36, ptr %i.ba, align 8
  store i64 1, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ay, ptr %.sroa.8.0..sroa_idx, align 8
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %_RNCNCNCINvNtCs5MfxasYgTEl_11hickory_net2h27connectINtNtNtBa_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB2t_6future6future6Futurep6OutputINtNtB2t_6result6ResultBM_NtNtNtB2t_2io5error5ErrorENtNtB2t_6marker4SendEL_EEE000Csi17nFaBu4HY_10ech_client.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ae

_RNCNCNCINvNtCs5MfxasYgTEl_11hickory_net2h27connectINtNtNtBa_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB2t_6future6future6Futurep6OutputINtNtB2t_6result6ResultBM_NtNtNtB2t_2io5error5ErrorENtNtB2t_6marker4SendEL_EEE000Csi17nFaBu4HY_10ech_client.exit: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i8, ptr %i.f, align 8, !range !218, !alias.scope !2350
  br label %.critedge

bb.ac:                                            ; preds = %bb.ae, %bb.ad
  %.pn13 = phi { ptr, i32 } [ %i.bc, %bb.ad ], [ %.pn10.pn, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.body

bb.ad:                                            ; preds = %bb.z, %bb.y
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i.i, %.critedge, %.critedge, %.critedge, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %common.ret

bb.ae:                                            ; preds = %bb.r, %bb.t, %bb.ab
  %.pn10.pn = phi { ptr, i32 } [ %i.bb, %bb.ab ], [ %i.ab, %bb.t ], [ %i.z, %bb.r ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #24
          to label %bb.ac unwind label %bb.af

bb.af:                                            ; preds = %bb.f, %bb.ae
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB6_12ProbeRequestNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0Csi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [17 x i8], align 1                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 10 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [17 x i8], align 1                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [176 x i8], align 8               ; 3 uses
  %i.o = alloca [32 x i8], align 8                ; 9 uses
  %i.p = alloca [80 x i8], align 8                ; 5 uses
  %i.q = alloca [88 x i8], align 8                ; 7 uses
  %i.r = alloca [272 x i8], align 8               ; 5 uses
  %i.s = alloca [104 x i8], align 8               ; 5 uses
  %i.t = alloca [104 x i8], align 8               ; 11 uses
  %i.u = alloca [17 x i8], align 1                ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 8 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 8 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %i.aa = alloca [17 x i8], align 1               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 8 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.3 = alloca [31 x i8], align 1            ; 3 uses
  %.sroa.4 = alloca [40 x i8], align 8            ; 2 uses
  %i.ag = alloca [72 x i8], align 8               ; 8 uses
  %i.ah = alloca [17 x i8], align 1               ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !1760, !noundef !18
  switch i8 %i.ak, label %default.unreachable416 [
    i8 0, label %.thread
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.x
    i8 5, label %bb.bc
    i8 6, label %bb.bu
    i8 7, label %bb.b
    i8 8, label %bb.du
    i8 9, label %bb.el
  ]

default.unreachable416:                           ; preds = %bb.el, %bb.du, %bb.bu, %bb.bc, %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  br label %bb.ct

.thread:                                          ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 275
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.22.0.copyload = load i8, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 257
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.am, ptr noundef nonnull align 1 dereferenceable(17) %.sroa.23.0..sroa_idx, i64 17, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 274
  store i8 %.sroa.22.0.copyload, ptr %i.an, align 2
  store i8 1, ptr %i.al, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ap = load <2 x ptr>, ptr %0, align 8
  store <2 x ptr> %i.ap, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.21.0.copyload, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.21.0.copyload) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.21.0.copyload, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.ar, ptr %i.as, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 320
  br label %bb.f

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit170: ; preds = %.body, %.body.thread, %bb.v, %bb.q, %bb.s
  %.pn34 = phi { ptr, i32 } [ %i.bo, %bb.s ], [ %i.bn, %bb.q ], [ %i.bi, %bb.v ], [ %.pn6.i, %.body.thread ], [ %i.bi, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %.body175

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #27
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #27
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !1759, !noalias !2362
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  switch i8 %.pre, label %default.unreachable416 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ]

bb.f:                                             ; preds = %.thread, %bb.e
  %i.av = phi ptr [ %i.at, %.thread ], [ %i.au, %bb.e ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !2362, !nonnull !18, !align !92, !noundef !18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 880
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.ay, ptr %i.az, align 8, !noalias !2362
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 -1, ptr %i.ba, align 8, !noalias !2362
  br label %bb.i

.body.thread:                                     ; preds = %bb.j, %bb.m
  %.pn6.i = phi { ptr, i32 } [ %i.bg, %bb.m ], [ %i.be, %bb.j ]
  store i8 2, ptr %i.bb, align 8, !noalias !2362
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit170

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #27
          to label %.noexc165 unwind label %.body

.noexc165:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #27
          to label %.noexc166 unwind label %.body

.noexc166:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.bb = phi ptr [ %i.av, %bb.f ], [ %i.au, %bb.e ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.bd = invoke noundef align 8 ptr @_RNvXse_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_15MutexLockFutureNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.k unwind label %bb.j       ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsf_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_15MutexLockFutureNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %.body.thread unwind label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bf = icmp eq ptr %i.bd, null
  br i1 %i.bf, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXsf_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_15MutexLockFutureNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %bb.p unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.n:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.h, %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr = load i8, ptr %i.au, align 8
  %cond.i171 = icmp eq i8 %.pr, 3
  br i1 %cond.i171, label %bb.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit170

common.ret:                                       ; preds = %bb.ev, %bb.ee, %bb.cw, %bb.ce, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool11PoolContextEECsi17nFaBu4HY_10ech_client.exit276, %bb.bm, %bb.aa, %bb.o
  %.sink = phi i8 [ 9, %bb.ev ], [ 8, %bb.ee ], [ 7, %bb.cw ], [ 6, %bb.ce ], [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool11PoolContextEECsi17nFaBu4HY_10ech_client.exit276 ], [ 5, %bb.bm ], [ 4, %bb.aa ], [ 3, %bb.o ]
  %common.ret.op = phi i1 [ true, %bb.ev ], [ true, %bb.ee ], [ true, %bb.cw ], [ true, %bb.ce ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool11PoolContextEECsi17nFaBu4HY_10ech_client.exit276 ], [ true, %bb.bm ], [ true, %bb.aa ], [ true, %bb.o ]
  store i8 %.sink, ptr %i.aj, align 8
  ret i1 %common.ret.op

bb.o:                                             ; preds = %bb.k
  store i8 3, ptr %i.bb, align 8, !noalias !2362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %common.ret

bb.p:                                             ; preds = %bb.l
  store i8 1, ptr %i.bb, align 8, !noalias !2362
  store ptr %i.bd, ptr %i.ai, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ah, ptr noundef nonnull align 1 dereferenceable(17) %i.bk, i64 17, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 274
  %i.bm = load i8, ptr %i.bl, align 2, !range !1759, !noundef !18
  invoke void @_RNvMs2_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtB5_24NameServerTransportState19initiate_connection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(17) %i.ah, i8 noundef %i.bm)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke void @_RNvXsi_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit170 unwind label %bb.u

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke void @_RNvXsi_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %bb.t unwind label %bb.s

end_hunk_0
begin_hunk_1_@_RNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB6_12ProbeRequestNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0Csi17nFaBu4HY_10ech_client:bb.a
bb.bu:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %.phi.trans.insert398 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.pre399 = load i8, ptr %.phi.trans.insert398, align 8, !range !1759, !noalias !2383
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  switch i8 %.pre399, label %default.unreachable416 [
    i8 0, label %bb.bv
    i8 1, label %bb.bw
    i8 2, label %bb.bx
    i8 3, label %bb.by
  ]

bb.bv:                                            ; preds = %.thread418, %bb.bu
  %i.fs = phi ptr [ %i.dk, %.thread418 ], [ %i.fr, %bb.bu ]
  %i.ft = phi ptr [ %i.dj, %.thread418 ], [ %i.fq, %bb.bu ] ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !2383, !nonnull !18, !align !92, !noundef !18
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 880
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.fv, ptr %i.fw, align 8, !noalias !2383
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 -1, ptr %i.fx, align 8, !noalias !2383
  br label %bb.by

.body212.thread:                                  ; preds = %bb.bz, %bb.cc
  %.pn6.i209 = phi { ptr, i32 } [ %i.ge, %bb.cc ], [ %i.gc, %bb.bz ]
  store i8 2, ptr %i.fy, align 8, !noalias !2383
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit224

bb.bw:                                            ; preds = %bb.bu
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #27
          to label %.noexc214 unwind label %.body212

.noexc214:                                        ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %bb.bu
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #27
          to label %.noexc215 unwind label %.body212

.noexc215:                                        ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bv, %bb.bu
  %i.fy = phi ptr [ %i.fs, %bb.bv ], [ %i.fr, %bb.bu ] ; 3 uses
  %i.fz = phi ptr [ %i.ft, %bb.bv ], [ %i.fq, %bb.bu ]
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.gb = invoke noundef align 8 ptr @_RNvXse_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_15MutexLockFutureNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ca unwind label %bb.bz     ; 3 uses

bb.bz:                                            ; preds = %bb.by
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsf_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_15MutexLockFutureNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ga)
          to label %.body212.thread unwind label %bb.cd

bb.ca:                                            ; preds = %bb.by
  %i.gd = icmp eq ptr %i.gb, null
  br i1 %i.gd, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvXsf_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_15MutexLockFutureNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ga)
          to label %bb.cf unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body212.thread

bb.cd:                                            ; preds = %bb.bz
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

.body212:                                         ; preds = %bb.bx, %bb.bw
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr362 = load i8, ptr %i.fr, align 8
  %cond.i225 = icmp eq i8 %.pr362, 3
  br i1 %cond.i225, label %bb.cs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit224

bb.ce:                                            ; preds = %bb.ca
  store i8 3, ptr %i.fy, align 8, !noalias !2383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %common.ret

bb.cf:                                            ; preds = %bb.cb
  store i8 1, ptr %i.fy, align 8, !noalias !2383
  store ptr %i.gb, ptr %i.v, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.u, ptr noundef nonnull align 1 dereferenceable(17) %i.gi, i64 17, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 274
  %i.gk = load i8, ptr %i.gj, align 2, !range !1759, !noundef !18
  invoke void @_RNvMs2_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolNtB5_24NameServerTransportState19complete_connection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.gh, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(17) %i.u, i8 noundef %i.gk)
          to label %bb.ch unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RNvXsi_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit224 unwind label %bb.u

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RNvXsi_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit221 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit224

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit221: ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvMNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB2_4Name4root(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.p)
          to label %bb.cl unwind label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit221
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cq

bb.ck:                                            ; preds = %bb.cl
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.cq

bb.cl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit221
  call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.p, i64 80, i1 false), !alias.scope !2389
  %i.gq = getelementptr inbounds nuw i8, ptr %i.q, i64 84
  store i16 19, ptr %i.gq, align 4, !alias.scope !2391, !noalias !2386
  %i.gr = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store i16 0, ptr %i.gr, align 8, !alias.scope !2391, !noalias !2386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.o, i64 26
  %i.gt = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i16 1232, ptr %i.gt, align 8, !alias.scope !2392
  %i.gu = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 26, ptr %i.gu, align 8, !alias.scope !2392
  store <4 x i8> <i8 1, i8 0, i8 1, i8 0>, ptr %i.gs, align 2, !alias.scope !2392
  store i64 0, ptr %i.o, align 8, !alias.scope !2392
  %i.gv = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 333000000, ptr %i.gv, align 8, !alias.scope !2392
  invoke void @_RNvMs_NtNtCsjXdHNeFfodD_13hickory_proto2op11dns_requestNtB4_10DnsRequest10from_query(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.o)
          to label %bb.cm unwind label %bb.ck

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXs0_NtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchangeINtB5_11DnsExchangeNtNtNtB9_7runtime13tokio_runtime20TokioRuntimeProviderENtNtB7_10dns_handle9DnsHandle4sendCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(272) %i.r)
          to label %bb.cp unwind label %bb.co

bb.cn:                                            ; preds = %bb.cq, %bb.co
  %.pn55 = phi { ptr, i32 } [ %i.gw, %bb.co ], [ %.pn53, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.cr

bb.co:                                            ; preds = %bb.cm
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cp:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.s, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fz, ptr noundef nonnull align 8 dereferenceable(104) %i.t, i64 104, i1 false)
  br label %bb.ct

bb.cq:                                            ; preds = %bb.ck, %bb.cj
  %.pn53 = phi { ptr, i32 } [ %i.go, %bb.cj ], [ %i.gp, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.cn

bb.cr:                                            ; preds = %bb.ff, %bb.cu, %bb.dj, %bb.cy, %bb.cn
  %.pn93 = phi { ptr, i32 } [ %i.hd, %bb.cy ], [ %.pn91, %bb.dj ], [ %.pn91, %bb.ff ], [ %i.gz, %bb.cu ], [ %.pn55, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ar

bb.cs:                                            ; preds = %.body212
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke void @_RNvXsf_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_15MutexLockFutureNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gx)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit224 unwind label %bb.u

bb.ct:                                            ; preds = %bb.b, %bb.cp
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 6 uses
  invoke void @_RNvXsb_NtCs5MfxasYgTEl_11hickory_net4xferINtB5_17FirstAnswerFutureINtNtB5_12dns_exchange15DnsExchangeSendNtNtNtB7_7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.gy, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.cv unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs5MfxasYgTEl_11hickory_net4xfer17FirstAnswerFutureINtNtBE_12dns_exchange15DnsExchangeSendNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(104) %i.gy) #24
          to label %bb.cr unwind label %bb.u

bb.cv:                                            ; preds = %bb.ct
  %i.ha = load i64, ptr %i.n, align 8, !range !46, !noundef !18
  %i.hb = icmp eq i64 %i.ha, -2
  br i1 %i.hb, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %common.ret

bb.cx:                                            ; preds = %bb.cv
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.hc, ptr noundef nonnull align 8 dereferenceable(176) %i.n, i64 176, i1 false)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs5MfxasYgTEl_11hickory_net4xfer17FirstAnswerFutureINtNtBE_12dns_exchange15DnsExchangeSendNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(104) %i.gy)
          to label %bb.cz unwind label %bb.cy

bb.cy:                                            ; preds = %bb.fb, %bb.cx
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cz:                                            ; preds = %bb.cx
  %i.he = load i64, ptr %i.hc, align 8, !range !44, !noundef !18
  %i.hf = icmp eq i64 %i.he, -1
  br i1 %i.hf, label %.noexc, label %.noexc130

.noexc130:                                        ; preds = %bb.cz
  %i.hg = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off392 = add i64 %i.hg, -2
  %switch393 = icmp ult i64 %.off392, 4
  br i1 %switch393, label %.thread419, label %bb.da

bb.da:                                            ; preds = %.noexc130
  %i.hh = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB8_12ProbeRequestpE3run0s0_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.hi = icmp ult i8 %i.hh, 3
  br i1 %i.hi, label %bb.dd, label %bb.db, !prof !2343

bb.db:                                            ; preds = %bb.da
  %i.hj = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB8_12ProbeRequestpE3run0s0_10___CALLSITE) #26
          to label %bb.dd unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.dd:                                            ; preds = %bb.db, %bb.da
  %.sroa.0.0.i228 = phi i8 [ %i.hh, %bb.da ], [ %i.hj, %bb.db ] ; 2 uses
  %i.hl = icmp eq i8 %.sroa.0.0.i228, 0
  br i1 %i.hl, label %.thread419, label %bb.df

bb.de:                                            ; preds = %bb.df
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.df:                                            ; preds = %bb.dd
  %i.hn = load ptr, ptr @_RNvNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB8_12ProbeRequestpE3run0s0_10___CALLSITE, align 8, !nonnull !18, !align !92, !noundef !18
  %i.ho = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hn, i8 noundef %.sroa.0.0.i228)
          to label %bb.dg unwind label %bb.de

bb.dg:                                            ; preds = %bb.df
  br i1 %i.ho, label %bb.dh, label %.thread419

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.hp = load ptr, ptr @_RNvNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB8_12ProbeRequestpE3run0s0_10___CALLSITE, align 8, !nonnull !18, !align !92, !noundef !18 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @49, ptr %i.k, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 43 to ptr), ptr %i.hr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 274
  store ptr %i.hs, ptr %i.j, align 8
  store ptr %i.k, ptr %i.l, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @36, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.j, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @47, ptr %i.hv, align 8
  store i64 1, ptr %i.m, align 8
  %.sroa.7315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %.sroa.7315.0..sroa_idx, align 8
  %.sroa.8316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 2, ptr %.sroa.8316.0..sroa_idx, align 8
  %.sroa.9317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.hq, ptr %.sroa.9317.0..sroa_idx, align 8
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %_RNCNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB8_12ProbeRequestNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0s0_0Csi17nFaBu4HY_10ech_client.exit unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.dj

_RNCNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB8_12ProbeRequestNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0s0_0Csi17nFaBu4HY_10ech_client.exit: ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.thread419

.thread419:                                       ; preds = %bb.dd, %_RNCNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB8_12ProbeRequestNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0s0_0Csi17nFaBu4HY_10ech_client.exit, %bb.dg, %.noexc130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val155 = load ptr, ptr %i.hx, align 8, !nonnull !18, !noundef !18
  %i.hy = getelementptr inbounds nuw i8, ptr %.val155, i64 16
  store ptr %i.hy, ptr %i.gy, align 8
  %.sroa.8324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 0, ptr %.sroa.8324.0..sroa_idx, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.dv

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit255: ; preds = %.body244, %.body244.thread, %bb.ek, %bb.eg, %bb.ei
  %.pn74 = phi { ptr, i32 } [ %i.jw, %bb.ei ], [ %i.jv, %bb.eg ], [ %i.jq, %bb.ek ], [ %.pn6.i241, %.body244.thread ], [ %i.jq, %.body244 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dc, %bb.de, %bb.di, %bb.fa, %bb.dt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit255
  %.pn91 = phi { ptr, i32 } [ %i.kx, %bb.fa ], [ %.pn88.pn, %bb.dt ], [ %.pn74, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit255 ], [ %i.hw, %bb.di ], [ %i.hm, %bb.de ], [ %i.hk, %bb.dc ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !range !44, !noundef !18
  %i.ic = icmp eq i64 %i.ib, -1
  br i1 %i.ic, label %bb.cr, label %bb.ff

.noexc:                                           ; preds = %bb.cz
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gy, ptr noundef nonnull align 8 dereferenceable(72) %i.id, i64 72, i1 false)
  %i.ie = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off394 = add i64 %i.ie, -2
  %switch395 = icmp ult i64 %.off394, 4
  br i1 %switch395, label %.thread420, label %bb.dk

bb.dk:                                            ; preds = %.noexc
  %i.if = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB8_12ProbeRequestpE3run0s1_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.ig = icmp ult i8 %i.if, 3
  br i1 %i.ig, label %bb.dn, label %bb.dl, !prof !2343

bb.dl:                                            ; preds = %bb.dk
  %i.ih = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB8_12ProbeRequestpE3run0s1_10___CALLSITE) #26
          to label %bb.dn unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dn:                                            ; preds = %bb.dl, %bb.dk
  %.sroa.0.0.i234 = phi i8 [ %i.if, %bb.dk ], [ %i.ih, %bb.dl ] ; 2 uses
  %i.ij = icmp eq i8 %.sroa.0.0.i234, 0
  br i1 %i.ij, label %.thread420, label %bb.dp

bb.do:                                            ; preds = %bb.dp
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dp:                                            ; preds = %bb.dn
  %i.il = load ptr, ptr @_RNvNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB8_12ProbeRequestpE3run0s1_10___CALLSITE, align 8, !nonnull !18, !align !92, !noundef !18
  %i.im = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.il, i8 noundef %.sroa.0.0.i234)
          to label %bb.dq unwind label %bb.do

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.im, label %bb.dr, label %.thread420

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.in = load ptr, ptr @_RNvNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB8_12ProbeRequestpE3run0s1_10___CALLSITE, align 8, !nonnull !18, !align !92, !noundef !18 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @50, ptr %i.e, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 37 to ptr), ptr %i.ip, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 274
  store ptr %i.iq, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.gy, ptr %i.c, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @36, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.d, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @47, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.c, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @51, ptr %i.iv, align 8
  store i64 1, ptr %i.g, align 8
  %.sroa.8329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.8329.0..sroa_idx, align 8
  %.sroa.9330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 3, ptr %.sroa.9330.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.io, ptr %.sroa.10.0..sroa_idx, align 8
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.in, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %_RNCNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB8_12ProbeRequestNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0s1_0Csi17nFaBu4HY_10ech_client.exit unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
end_hunk_1
