Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.14?download=true
inline.NumInlined: 1114
inline.NumDeleted: 519
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMNtCsl0TPHHzpGH6_5bytes5bytesNtB3_5Bytes5sliceNtNtNtCsj6eKBz9Db1c_4core3ops5range9RangeFullECsi17nFaBu4HY_10ech_client:_RINvCsl0TPHHzpGH6_5bytes5rangeNtNtNtCsj6eKBz9Db1c_4core3ops5range9RangeFullECsi17nFaBu4HY_10ech_client.exit

bb.a:                                             ; preds = %_RINvCsl0TPHHzpGH6_5bytes5rangeNtNtNtCsj6eKBz9Db1c_4core3ops5range9RangeFullECsi17nFaBu4HY_10ech_client.exit
  %i.d = load ptr, ptr %1, align 8, !nonnull !14, !align !16, !noundef !14
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !14, !noundef !14
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noundef !14
  tail call void %i.e(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %i.f, ptr noundef %i.h, i64 noundef %i.b)
  br label %bb.c

bb.b:                                             ; preds = %_RINvCsl0TPHHzpGH6_5bytes5rangeNtNtNtCsj6eKBz9Db1c_4core3ops5range9RangeFullECsi17nFaBu4HY_10ech_client.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noundef !14
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = getelementptr i8, ptr null, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.n, align 8
  store ptr @1, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs4okMlIQ9Z13_2h25proto7go_awayNtB3_6GoAway20send_pending_go_awayINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB21_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB5_7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2, ptr noalias nofree noundef align 8 dereferenceable(2024) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [296 x i8], align 8               ; 9 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.sroa.5.0.copyload = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.sroa.6.0.copyload = load ptr, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.6.sroa.8.0.copyload = load i32, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx, align 4
  %i.c = load <2 x i32>, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %1, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 1381 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !17, !alias.scope !85, !noundef !14
  %.not.i = icmp eq i8 %i.e, -1
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1400
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !85, !noundef !14
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1392
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !85, !noundef !14
  %i.j = sub i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1432
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !85, !noundef !14
  %.not7.i = icmp ult i64 %i.j, %i.l
  br i1 %.not7.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = invoke fastcc { i64, ptr } @_RNvMNtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB2_11FramedWriteINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE5flushCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(1456) %3, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.k, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.p = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  %.not8.i = icmp eq ptr %i.p, null
  br i1 %.not8.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.q = load i8, ptr %i.d, align 1, !range !17, !alias.scope !85, !noundef !14
  %.not9.i = icmp eq i8 %i.q, -1
  br i1 %.not9.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 1400
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !85, !noundef !14
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 1392
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !85, !noundef !14
  %i.v = sub i64 %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 1432
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !85, !noundef !14
  %.not10.i = icmp ult i64 %i.v, %i.x
  br i1 %.not10.i, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.z = load i8, ptr %i.y, align 4, !range !18
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.e
  store i32 1, ptr %0, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %.sroa.537.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !86, !nonnull !14, !noundef !14
  tail call void %i.ac(ptr noundef %.sroa.6.sroa.6.0.copyload, ptr noundef %.sroa.6.sroa.0.0.copyload, i64 noundef %.sroa.6.sroa.5.0.copyload), !noalias !86, !inline_history !0
  br label %bb.p

bb.j:                                             ; preds = %bb.g, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.ad, align 8
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.sroa.0.0.copyload, ptr %.sroa.484.0..sroa_idx, align 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.6.sroa.5.0.copyload, ptr %.sroa.585.0..sroa_idx, align 8
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.6.sroa.6.0.copyload, ptr %.sroa.686.0..sroa_idx, align 8
  %.sroa.787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <2 x i32> %i.c, ptr %.sroa.787.0..sroa_idx, align 8
  store i8 6, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 1144
  %i.af = call noundef i8 @_RNvMs_NtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB4_7EncoderINtNtNtNtB8_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE6bufferCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i44 = icmp eq i8 %i.af, -1
  br i1 %.not.i44, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit, label %.noexc45, !prof !19

.noexc45:                                         ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !87
  store i8 %i.af, ptr %i.a, align 1, !noalias !87
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 20, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #27
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.j
  store i32 0, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6.sroa.8.0.copyload, ptr %.sroa.415.0..sroa_idx, align 4
  br label %bb.p

bb.k:                                             ; preds = %bb.f, %bb.g, %.noexc
  store ptr %.sroa.0.0.copyload, ptr %1, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.p

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.l:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !88, !nonnull !14, !noundef !14
  invoke void %i.ah(ptr noundef %.sroa.6.sroa.6.0.copyload, ptr noundef %.sroa.6.sroa.0.0.copyload, i64 noundef %.sroa.6.sroa.5.0.copyload)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayECsi17nFaBu4HY_10ech_client.exit unwind label %bb.m, !inline_history !1

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.n:                                             ; preds = %bb.h
  store i32 2, ptr %0, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !range !20, !noundef !14
  %i.al = trunc nuw i32 %i.ak to i1
  br i1 %i.al, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.r, %bb.q, %bb.k, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit, %bb.i, %bb.n
  ret void

bb.q:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = load i32, ptr %i.am, align 8, !noundef !14
  store i32 0, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.an, ptr %.sroa.423.0..sroa_idx, align 4
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  store i32 2, ptr %0, align 8
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs4okMlIQ9Z13_2h25proto8settingsNtB3_8Settings13recv_settingsINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1X_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB5_7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEB53_NtNtB7_6client4PeerECsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 4 dereferenceable(128) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(60) %2, ptr noalias nofree noundef align 8 dereferenceable(2024) %3, ptr noalias nofree noundef align 8 dereferenceable(16) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load i8, ptr %i.j, align 4, !noundef !14
  %i.l = and i8 %i.k, 1
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !range !21, !noundef !14
  %.not52 = icmp eq i32 %i.n, 2
  br i1 %.not52, label %bb.e, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 4, !range !21, !noundef !14
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.f, label %bb.w

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27
  unreachable

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.m, ptr noundef nonnull align 4 dereferenceable(60) %2, i64 60, i1 false)
  store i8 -1, ptr %0, align 8
  br label %bb.v

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store ptr %i.q, ptr %i.i, align 8
  %i.r = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.s = icmp ult i64 %i.r, 2
  br i1 %i.s, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCs4okMlIQ9Z13_2h25proto8settingsNtB4_8Settings13recv_settings10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.t, label %bb.h [
    i8 0, label %bb.j
    i8 1, label %bb.i
    i8 2, label %bb.i
  ], !prof !22

bb.h:                                             ; preds = %bb.g
  %i.u = tail call noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtCs4okMlIQ9Z13_2h25proto8settingsNtB4_8Settings13recv_settings10___CALLSITE) #25 ; 2 uses
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.h
  %.sroa.06.0 = phi i8 [ %i.u, %bb.h ], [ %i.t, %bb.g ], [ %i.t, %bb.g ]
  %i.w = load ptr, ptr @_RNvNvMNtNtCs4okMlIQ9Z13_2h25proto8settingsNtB4_8Settings13recv_settings10___CALLSITE, align 8, !nonnull !14, !align !16, !noundef !14
  %i.x = tail call noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w, i8 noundef %.sroa.06.0)
  br i1 %i.x, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.k, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.z = load i32, ptr %i.y, align 4, !range !20, !noundef !14
  %i.aa = trunc nuw i32 %i.z to i1
  br i1 %i.aa, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr @_RNvNvMNtNtCs4okMlIQ9Z13_2h25proto8settingsNtB4_8Settings13recv_settings10___CALLSITE, align 8, !nonnull !14, !align !16, !noundef !14 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.i, ptr %i.f, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs4okMlIQ9Z13_2h25frame8settings8SettingsNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client, ptr %.sroa.437.0..sroa_idx, align 8
  store ptr @8, ptr %i.g, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.ad, align 8
  store ptr %i.g, ptr %i.h, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @9, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = add i32 %i.ag, -16384
  %or.cond = icmp ult i32 %i.ah, 16760832
  br i1 %or.cond, label %bb.o, label %bb.n, !prof !23

bb.m:                                             ; preds = %bb.o, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aj = load i32, ptr %i.ai, align 4, !range !20, !noundef !14
  %i.ak = trunc nuw i32 %i.aj to i1
  br i1 %i.ak, label %bb.p, label %bb.q

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 94, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #27
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.al = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 1472
  store i64 %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 2008
  %i.ao = load i64, ptr %i.an, align 8, !noundef !14
  %i.ap = call noundef i64 @_RNvNtNtCs4okMlIQ9Z13_2h25codec11framed_read28calc_max_continuation_frames(i64 noundef %i.ao, i64 noundef %i.al)
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 2016
  store i64 %i.ap, ptr %i.aq, align 8
  br label %bb.m

bb.p:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 2008
  store i64 %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 1472
  %i.aw = load i64, ptr %i.av, align 8, !noundef !14
  %i.ax = call noundef i64 @_RNvNtNtCs4okMlIQ9Z13_2h25codec11framed_read28calc_max_continuation_frames(i64 noundef %i.at, i64 noundef %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 2016
  store i64 %i.ax, ptr %i.ay, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.az = load i32, ptr %i.q, align 4, !range !20, !noundef !14
  %i.ba = trunc nuw i32 %i.az to i1
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 1568
  call void @_RNvMNtNtCs4okMlIQ9Z13_2h25hpack7decoderNtB2_7Decoder17queue_size_update(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.be, i64 noundef %i.bd)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bf = load ptr, ptr %i.i, align 8, !nonnull !14, !align !89, !noundef !14
  call void @_RNvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsINtB2_7StreamsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesNtNtB8_6client4PeerE20apply_local_settingsCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(60) %i.bf)
  %i.bg = load i8, ptr %i.e, align 8, !range !17, !noundef !14
  %.not53 = icmp eq i8 %i.bg, -1
  br i1 %.not53, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.sink.split

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i32 2, ptr %1, align 4
  store i8 -1, ptr %0, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.e, %bb.aa
  ret void

bb.w:                                             ; preds = %bb.c
  %i.bh = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bi = icmp ult i64 %i.bh, 2
  br i1 %i.bi, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCs4okMlIQ9Z13_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bj, label %bb.y [
    i8 0, label %bb.aa
    i8 1, label %bb.z
    i8 2, label %bb.z
  ], !prof !22

bb.y:                                             ; preds = %bb.x
  %i.bk = tail call noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtCs4okMlIQ9Z13_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE) #25 ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.x, %bb.y
  %.sroa.026.0 = phi i8 [ %i.bk, %bb.y ], [ %i.bj, %bb.x ], [ %i.bj, %bb.x ]
  %i.bm = load ptr, ptr @_RNvNvMNtNtCs4okMlIQ9Z13_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE, align 8, !nonnull !14, !align !16, !noundef !14
  %i.bn = tail call noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bm, i8 noundef %.sroa.026.0)
  br i1 %i.bn, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.x, %bb.w, %bb.ab, %bb.z
  store i8 1, ptr %0, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.431.0..sroa_idx, align 1
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.532.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.v

bb.ab:                                            ; preds = %bb.z
  %i.bo = load ptr, ptr @_RNvNvMNtNtCs4okMlIQ9Z13_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE, align 8, !nonnull !14, !align !16, !noundef !14 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @13, ptr %i.c, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 137 to ptr), ptr %i.bq, align 8
  store ptr %i.c, ptr %i.d, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @9, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.028.sroa.4.0..sroa_idx, align 8
  %.sroa.028.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.028.sroa.5.0..sroa_idx, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.bp, ptr %.sroa.429.0..sroa_idx, align 8
  call void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs4okMlIQ9Z13_2h25proto8settingsNtB3_8Settings9poll_sendINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1S_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB5_7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEB4Y_NtNtB7_6client4PeerECsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 4 dereferenceable(128) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2, ptr noalias nofree noundef align 8 dereferenceable(2024) %3, ptr noalias nofree noundef align 8 dereferenceable(16) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [296 x i8], align 8               ; 9 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [296 x i8], align 8               ; 12 uses
  %i.n = alloca [60 x i8], align 4                ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !range !21, !noundef !14 ; 3 uses
  %.not = icmp eq i32 %i.p, 2
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.r = load i8, ptr %i.q, align 4, !alias.scope !120, !noundef !14
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.x = load i32, ptr %i.w, align 4, !alias.scope !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 %i.p, ptr %i.n, align 4
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.y = load <4 x i32>, ptr %i.s, align 4, !alias.scope !120
  %i.z = load i32, ptr %i.s, align 4, !alias.scope !120
  store <4 x i32> %i.y, ptr %.sroa.5127.0..sroa_idx, align 4
  %.sroa.9131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.aa = load i32, ptr %i.u, align 4, !range !20, !alias.scope !120, !noundef !14
  %i.ab = load <4 x i32>, ptr %i.t, align 4, !alias.scope !120
  store <4 x i32> %i.ab, ptr %.sroa.9131.0..sroa_idx, align 4
  %.sroa.13135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.ac = load <4 x i32>, ptr %i.v, align 4, !alias.scope !120
  %i.ad = load i32, ptr %i.v, align 4, !alias.scope !120 ; 2 uses
  store <4 x i32> %i.ac, ptr %.sroa.13135.0..sroa_idx, align 4
  %.sroa.17139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  store i32 %i.x, ptr %.sroa.17139.0..sroa_idx, align 4
  %.sroa.18140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i8 %i.r, ptr %.sroa.18140.0..sroa_idx, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 1381 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !range !17, !alias.scope !121, !noundef !14
  %.not.i.i = icmp eq i8 %i.af, -1
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 1400
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !121, !noundef !14
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 1392
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !121, !noundef !14
  %i.ak = sub i64 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 1432
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !121, !noundef !14
  %.not7.i.i = icmp ult i64 %i.ak, %i.am
  br i1 %.not7.i.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.an = tail call fastcc { i64, ptr } @_RNvMNtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB2_11FramedWriteINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE5flushCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(2024) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = extractvalue { i64, ptr } %i.an, 1      ; 2 uses
  %.not8.i.i = icmp eq ptr %i.aq, null
  br i1 %.not8.i.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ar = load i8, ptr %i.ae, align 1, !range !17, !alias.scope !121, !noundef !14
  %.not9.i.i = icmp eq i8 %i.ar, -1
  br i1 %.not9.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 1400
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !121, !noundef !14
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 1392
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !121, !noundef !14
  %i.aw = sub i64 %i.at, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 1432
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !121, !noundef !14
  %.not10.i.i = icmp ult i64 %i.aw, %i.ay
  br i1 %.not10.i.i, label %bb.i, label %bb.k

bb.h:                                             ; preds = %bb.a, %bb.x
  store i32 2, ptr %i.o, align 4
  %i.az = load i32, ptr %1, align 4, !range !21, !noundef !14
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.y, label %bb.ae

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.d
  store i8 -2, ptr %0, align 8
  br label %bb.aq

bb.j:                                             ; preds = %bb.e
  tail call void @_RNvXs2_NtNtCs4okMlIQ9Z13_2h25proto5errorNtB5_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %i.aq)
  br label %bb.aq

bb.k:                                             ; preds = %bb.g, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 0, ptr %i.bb, align 4, !alias.scope !123
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %.sroa.577.0..sroa_idx, align 4, !alias.scope !123
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  store i32 0, ptr %.sroa.678.0..sroa_idx, align 4, !alias.scope !123
  %.sroa.779.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  store i32 0, ptr %.sroa.779.0..sroa_idx, align 4, !alias.scope !123
  %.sroa.880.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  store i32 0, ptr %.sroa.880.0..sroa_idx, align 4, !alias.scope !123
  %.sroa.981.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  store i32 0, ptr %.sroa.981.0..sroa_idx, align 4, !alias.scope !123
  %.sroa.1082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  store i32 0, ptr %.sroa.1082.0..sroa_idx, align 4, !alias.scope !123
  %.sroa.1183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  store i8 1, ptr %.sroa.1183.0..sroa_idx, align 4, !alias.scope !123
  store i8 4, ptr %i.m, align 8, !alias.scope !124
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 1144
  %i.bd = call noundef range(i8 -1, 3) i8 @_RNvMs_NtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB4_7EncoderINtNtNtNtB8_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE6bufferCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.bc, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.m) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not.i = icmp eq i8 %i.bd, -1
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit, label %bb.l, !prof !19

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !125
end_hunk_0
