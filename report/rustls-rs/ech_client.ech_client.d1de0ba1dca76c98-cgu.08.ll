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
  %i.n = alloca [176 x i8], align 8               ; 7 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 6 uses
  invoke void @_RNvXsb_NtCs5MfxasYgTEl_11hickory_net4xferINtB5_17FirstAnswerFutureINtNtB5_12dns_exchange15DnsExchangeSendNtNtNtB7_7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.gy, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.cv unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs5MfxasYgTEl_11hickory_net4xfer17FirstAnswerFutureINtNtBE_12dns_exchange15DnsExchangeSendNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(104) %i.gy) #24
          to label %bb.cr unwind label %bb.u

bb.cv:                                            ; preds = %bb.ct
  %i.ha = load i64, ptr %i.n, align 8, !range !46, !noundef !18
  %i.hb = icmp eq i64 %i.ha, -2
  br i1 %i.hb, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %common.ret

bb.cx:                                            ; preds = %bb.cv
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.hc, ptr noundef nonnull align 8 dereferenceable(176) %i.n, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
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
begin_hunk_2_@_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpkeINtB4_11HpkeAwsLcRsKj10_Kj20_ENtNtB8_4hpke4Hpke12setup_openerCsi17nFaBu4HY_10ech_client:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.6.sroa.8, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.15, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.sroa.9, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.16, i64 15, i1 false)
  %.sroa.16.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.16, i64 15
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.16.48..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  %.sroa.413.sroa.6.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.413.sroa.6.0..sroa.413.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.6.sroa.8, i64 9, i1 false)
  %.sroa.413.sroa.7.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.413.sroa.7.0..sroa.413.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.sroa.9, i64 15, i1 false)
  store i8 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.818, i64 7, i1 false)
  %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.0.ph, ptr %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx, align 8
  %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.0.ph, ptr %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx, align 8
  br label %bb.au

bb.ap:                                            ; preds = %bb.am
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.11.8.copyload20 = load i64, ptr %i.bx, align 8, !noalias !2913
  %.sroa.14.8..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.14.8.copyload23 = load ptr, ptr %.sroa.14.8..sroa_idx22, align 8, !noalias !2913
  %.sroa.15.8..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.15.8..sroa_idx24, i64 9, i1 false), !noalias !2913
  %.sroa.16.8..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.16, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.16.8..sroa_idx25, i64 15, i1 false), !noalias !2913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.6.sroa.8, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.15, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.sroa.9, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.16, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  store i64 %.sroa.11.8.copyload20, ptr %i.p, align 8
  %.sroa.6.sroa.7.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %.sroa.14.8.copyload23, ptr %.sroa.6.sroa.7.7..sroa_idx, align 8
  %.sroa.6.sroa.8.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.6.sroa.8.7..sroa_idx, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.6.sroa.8, i64 9, i1 false)
  %.sroa.6.sroa.9.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.sroa.9.7..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.sroa.9, i64 15, i1 false)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !2915
  %i.by = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 40, 4865) 40, i64 noundef range(i64 8, 129) 8) #22, !noalias !2915 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.aq, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke6OpenerKj10_Kj20_EE3newCsi17nFaBu4HY_10ech_client.exit, !prof !8

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #23
          to label %.noexc unwind label %bb.ar

.noexc:                                           ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2918
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %.sroa.6.sroa.7.7..sroa_idx, ptr %i.a, align 8, !noalias !2918
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.cb, ptr %i.cc, align 8, !noalias !2918
  invoke void @_RNvXs4_CshEiLVZluVSb_7zeroizeINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2918
  br label %common.resume

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke6OpenerKj10_Kj20_EE3newCsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @165, ptr %i.cf, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.au

bb.au:                                            ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke6OpenerKj10_Kj20_EE3newCsi17nFaBu4HY_10ech_client.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.9)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpkeINtB4_11HpkeAwsLcRsKj10_Kj20_ENtNtB8_4hpke4Hpke12setup_sealerCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 12 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 12 uses
  %i.g = alloca [64 x i8], align 8                ; 11 uses
  %i.h = alloca [32 x i8], align 8                ; 11 uses
  %i.i = alloca [33 x i8], align 1                ; 7 uses
  %.sroa.619.i.i.sroa.0.i = alloca [7 x i8], align 1 ; 7 uses
  %.sroa.619.i.i.sroa.11.i = alloca [9 x i8], align 1 ; 7 uses
  %.sroa.613.i.i.sroa.0.i = alloca [7 x i8], align 1 ; 7 uses
  %.sroa.613.i.i.sroa.9.i = alloca [9 x i8], align 1 ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [160 x i8], align 8               ; 14 uses
  %.sroa.66.i.i.sroa.7.i = alloca [7 x i8], align 1 ; 7 uses
  %.sroa.66.i.i.sroa.13.i = alloca [16 x i8], align 8 ; 7 uses
  %.sroa.6.i.i.sroa.7.i = alloca [7 x i8], align 1 ; 7 uses
  %.sroa.6.i.i.sroa.10.i = alloca [16 x i8], align 8 ; 7 uses
  %i.m = alloca [160 x i8], align 8               ; 14 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 13 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [64 x i8], align 8                ; 16 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  %i.t = alloca [40 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.12 = alloca [7 x i8], align 1            ; 8 uses
  %.sroa.16 = alloca [16 x i8], align 8           ; 8 uses
  %.sroa.5.sroa.7 = alloca [7 x i8], align 1      ; 7 uses
  %.sroa.5.sroa.10 = alloca [16 x i8], align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2930)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 5 uses
  %i.x = load ptr, ptr %1, align 8, !alias.scope !2927, !noalias !2932, !nonnull !18, !align !92, !noundef !18 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2938)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2935, !noalias !2940, !nonnull !18, !noundef !18 ; 2 uses
  %.val.i.i = load i8, ptr %i.y, align 1, !range !1759, !noalias !2942, !noundef !18 ; 3 uses
  %i.z = icmp eq i8 %.val.i.i, 3
  br i1 %i.z, label %bb.b, label %switch.lookup

bb.b:                                             ; preds = %bb.a
  %i.aa = tail call { i64, ptr } @_RNvNtCs222MioR9bx1_9aws_lc_rs9agreement15generate_x25519(), !noalias !2943 ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %bb.g

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2942
  %i.ad = zext nneg i8 %.val.i.i to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpkeINtB4_11HpkeAwsLcRsKj10_Kj20_ENtNtB8_4hpke4Hpke12setup_sealerCsi17nFaBu4HY_10ech_client, i64 %i.ad
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  store i32 %switch.ext, ptr %i.o, align 4, !noalias !2942
  %i.ae = call { i64, ptr } @_RINvMs1_NtCs222MioR9bx1_9aws_lc_rs8evp_pkeyINtNtB8_3ptr14ManagedPointerONtNtCs9y7goCcaNJZ_10aws_lc_sys16universal_crypto11evp_pkey_stE8generateNCNvNtB8_2ec16evp_key_generate0ECsi17nFaBu4HY_10ech_client(i32 noundef 408, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %i.o), !noalias !2943 ; 4 uses
  %i.af = extractvalue { i64, ptr } %i.ae, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2942
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %bb.f, label %bb.c

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.c:                                             ; preds = %switch.lookup
  switch i8 %.val.i.i, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  br label %bb.g

bb.f:                                             ; preds = %switch.lookup, %bb.b
  call void @_RNvNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs15unspecified_err(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p), !noalias !2944
  %.sroa.09.0.copyload.i.i = load i8, ptr %i.p, align 8, !noalias !2945
  %.sroa.613.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.613.0.copyload.i.i = load i64, ptr %.sroa.613.0..sroa_idx.i.i, align 8, !noalias !2945
  %.sroa.816.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.816.0.copyload.i.i = load ptr, ptr %.sroa.816.0..sroa_idx.i.i, align 8, !noalias !2945
  %.sroa.18.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.18.24.copyload.i = load i64, ptr %.sroa.18.24..sroa_idx.i, align 8, !noalias !2945
  %.sroa.19.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.19.24.copyload.i = load ptr, ptr %.sroa.19.24..sroa_idx.i, align 8, !noalias !2945
  %.sroa.20.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.sroa.20.24.copyload.i = load i64, ptr %.sroa.20.24..sroa_idx.i, align 8, !noalias !2945
  br label %_RNvMs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpkeINtB5_5DhKemKj20_E5encapCsi17nFaBu4HY_10ech_client.exit.i

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.pn.i.i.i = phi { i64, ptr } [ %i.ae, %bb.e ], [ %i.aa, %bb.b ], [ %i.ae, %bb.d ], [ %i.ae, %bb.c ]
  %.sroa.014.0.i.i.i = phi i64 [ 2, %bb.e ], [ 3, %bb.b ], [ 1, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i = extractvalue { i64, ptr } %.pn.i.i.i, 1 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2946)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2942
  store i64 %.sroa.014.0.i.i.i, ptr %i.n, align 8, !noalias !2949
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %.sroa.8.0.i.i.i, ptr %i.ah, align 8, !noalias !2949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2949
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i.i.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i.i.sroa.13.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2949
  invoke void @_RNvMs6_NtCs222MioR9bx1_9aws_lc_rs9agreementNtB5_10PrivateKey18compute_public_key(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n)
          to label %bb.i unwind label %bb.h, !noalias !2952

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.i:                                             ; preds = %bb.g
  %i.aj = load i64, ptr %i.l, align 8, !range !2892, !noalias !2949, !noundef !18 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2949
  invoke void @_RNvNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs15unspecified_err(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g)
          to label %bb.av unwind label %bb.h, !noalias !2953

bb.k:                                             ; preds = %bb.i
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.66.i.i.sroa.0.0.copyload.i = load i8, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !noalias !2949
  %.sroa.66.i.i.sroa.7.0..sroa.437.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.66.i.i.sroa.7.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.66.i.i.sroa.7.0..sroa.437.0..sroa_idx.i.i.sroa_idx.i, i64 7, i1 false), !noalias !2949
  %.sroa.66.i.i.sroa.9.0..sroa.437.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.66.i.i.sroa.9.0.copyload.i = load i64, ptr %.sroa.66.i.i.sroa.9.0..sroa.437.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !2949
  %.sroa.66.i.i.sroa.11.0..sroa.437.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.66.i.i.sroa.11.0.copyload.i = load ptr, ptr %.sroa.66.i.i.sroa.11.0..sroa.437.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !2949
  %.sroa.66.i.i.sroa.13.0..sroa.437.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.66.i.i.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.66.i.i.sroa.13.0..sroa.437.0..sroa_idx.i.i.sroa_idx.i, i64 16, i1 false), !noalias !2949
  %.sroa.66.i.i.sroa.15.0..sroa.437.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.66.i.i.sroa.15.0.copyload.i = load i64, ptr %.sroa.66.i.i.sroa.15.0..sroa.437.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !2949
  %.sroa.66.i.i.sroa.17.0..sroa.437.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.66.i.i.sroa.17.0.copyload.i = load ptr, ptr %.sroa.66.i.i.sroa.17.0..sroa.437.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !2949
  %.sroa.66.i.i.sroa.19.0..sroa.437.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sroa.66.i.i.sroa.19.0.copyload.i = load i64, ptr %.sroa.66.i.i.sroa.19.0..sroa.437.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !2949
  %.sroa.538.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.538.0..sroa_idx.i.i.i, i64 88, i1 false), !noalias !2949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.i.sroa.7.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.66.i.i.sroa.7.i, i64 7, i1 false), !noalias !2949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.66.i.i.sroa.13.i, i64 16, i1 false), !noalias !2949
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i.i.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i.i.sroa.13.i)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  store i8 %.sroa.66.i.i.sroa.0.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2949
  %.sroa.6.i.i.sroa.7.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.i.sroa.7.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.i.sroa.7.i, i64 7, i1 false), !noalias !2949
  %.sroa.6.i.i.sroa.8.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.66.i.i.sroa.9.0.copyload.i, ptr %.sroa.6.i.i.sroa.8.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !2949
  %.sroa.6.i.i.sroa.9.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %.sroa.66.i.i.sroa.11.0.copyload.i, ptr %.sroa.6.i.i.sroa.9.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !2949
  %.sroa.6.i.i.sroa.10.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.sroa.10.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.sroa.10.i, i64 16, i1 false), !noalias !2949
  %.sroa.6.i.i.sroa.11.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 %.sroa.66.i.i.sroa.15.0.copyload.i, ptr %.sroa.6.i.i.sroa.11.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !2949
  %.sroa.6.i.i.sroa.12.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr %.sroa.66.i.i.sroa.17.0.copyload.i, ptr %.sroa.6.i.i.sroa.12.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !2949
  %.sroa.6.i.i.sroa.13.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 %.sroa.66.i.i.sroa.19.0.copyload.i, ptr %.sroa.6.i.i.sroa.13.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !2949
  store i64 %i.aj, ptr %i.m, align 8, !noalias !2949
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2949
  %i.al = invoke { ptr, i64 } @_RNvXsf_NtCs222MioR9bx1_9aws_lc_rs9agreementNtB5_9PublicKeyINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.m)
          to label %bb.m unwind label %bb.l, !noalias !2953 ; 2 uses

.body72.i.i.i:                                    ; preds = %bb.as, %bb.ak, %.body.i.i.i, %bb.l
  %.pn53.i.i.i = phi { ptr, i32 } [ %.pn.i42.i.i, %.body.i.i.i ], [ %i.ci, %bb.ak ], [ %i.am, %bb.l ], [ %i.cl, %bb.as ]
  %.val67.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2949
  call void @"\01aws_lc_0_43_0_EVP_PKEY_free"(ptr noundef %.val67.i.i.i) #22, !noalias !2953
  br label %bb.aw

bb.l:                                             ; preds = %bb.at, %bb.al, %bb.m, %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body72.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.an = extractvalue { ptr, i64 } %i.al, 0
  %i.ao = extractvalue { ptr, i64 } %i.al, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !2954, !noalias !2953, !nonnull !18, !noundef !18
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !2954, !noalias !2953, !noundef !18
  store ptr %i.an, ptr %i.j, align 8, !noalias !2949
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.ao, ptr %i.at, align 8, !noalias !2949
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.aq, ptr %i.au, align 8, !noalias !2949
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %i.as, ptr %i.av, align 8, !noalias !2949
  invoke void @_RNvXs0_NtCs4wP2HXfJTCR_5alloc5sliceSRShINtB5_6ConcathE6concatCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef 2)
          to label %switch.lookup112 unwind label %bb.l, !noalias !2953

switch.lookup112:                                 ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2949
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613.i.i.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613.i.i.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.i.i.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.i.i.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2949
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val68.i.i.i = load ptr, ptr %i.aw, align 8, !noalias !2949 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val69.i.i.i = load i64, ptr %i.ax, align 8, !noalias !2949
  %switch.gep113 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpkeINtB4_11HpkeAwsLcRsKj10_Kj20_ENtNtB8_4hpke4Hpke12setup_sealerCsi17nFaBu4HY_10ech_client.149, i64 %.sroa.014.0.i.i.i
  %switch.load114 = load ptr, ptr %switch.gep113, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2955
  invoke void @_RNvXsu_NtCs222MioR9bx1_9aws_lc_rs9agreementNtB5_15ParsedPublicKeyINtNtCsj6eKBz9Db1c_4core7convert7TryFromINtB5_17UnparsedPublicKeyRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE8try_fromCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4)
          to label %.noexc.i.i.i unwind label %bb.ab, !noalias !2953

.noexc.i.i.i:                                     ; preds = %switch.lookup112
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.az = load i8, ptr %i.ay, align 4, !range !2901, !noalias !2955, !noundef !18
  %i.ba = icmp eq i8 %i.az, -1
  br i1 %i.ba, label %bb.ac, label %bb.n

bb.n:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !2955
  %i.bb = invoke noundef nonnull ptr @_RNvMsp_NtCs222MioR9bx1_9aws_lc_rs9agreementNtB5_15ParsedPublicKey3alg(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.p unwind label %bb.o, !noalias !2962

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.o
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.bc, %bb.o ], [ %i.bl, %bb.t ], [ %i.bl, %bb.u ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs9agreement15ParsedPublicKeyECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #24, !noalias !2963
  br label %.body.i.i.i

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bd = load i8, ptr %i.bb, align 1, !range !1759, !noalias !2962, !noundef !18
  %i.be = load i8, ptr %switch.load114, align 1, !range !1759, !noalias !2955, !noundef !18
  %.not.i.i.i.i = icmp eq i8 %i.bd, %i.be
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.bg = invoke { ptr, i64 } @_RNvMs1_NtCs222MioR9bx1_9aws_lc_rs8evp_pkeyINtNtB7_3ptr14ManagedPointerONtNtCs9y7goCcaNJZ_10aws_lc_sys16universal_crypto11evp_pkey_stE5agree(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %bb.r unwind label %bb.o, !noalias !2963 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0      ; 4 uses
  %i.bi = extractvalue { ptr, i64 } %i.bg, 1      ; 5 uses
  %i.bj = icmp eq ptr %i.bh, null
  br i1 %i.bj, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68.i.i.i) ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  invoke fastcc void @_RNvMs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpkeINtB5_5DhKemKj20_E18extract_and_expandCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 1 captures(address) dereferenceable(32) %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef range(i64 0, -9223372036854775808) %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val68.i.i.i, i64 noundef %.val69.i.i.i)
          to label %bb.v unwind label %bb.t, !noalias !2964

bb.t:                                             ; preds = %bb.s
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = icmp eq i64 %i.bi, 0
  br i1 %i.bm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.bi, i64 noundef 1) #22, !noalias !2963
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i

bb.v:                                             ; preds = %bb.s
  %i.bn = icmp eq i64 %i.bi, 0
  br i1 %i.bn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECsi17nFaBu4HY_10ech_client.exit21.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.bi, i64 noundef 1) #22, !noalias !2963
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECsi17nFaBu4HY_10ech_client.exit21.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECsi17nFaBu4HY_10ech_client.exit21.i.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !2965)
  %.val4.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !2965, !noalias !2955, !noundef !18
  call void @"\01aws_lc_0_43_0_EVP_PKEY_free"(ptr noundef %.val4.i.i.i.i.i) #22, !noalias !2968
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !2965, !noalias !2955, !noundef !18 ; 2 uses
  %i.bp = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.bp, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECsi17nFaBu4HY_10ech_client.exit21.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !2965, !noalias !2955, !nonnull !18, !noundef !18
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #22, !noalias !2968
  br label %bb.ad
end_hunk_2
