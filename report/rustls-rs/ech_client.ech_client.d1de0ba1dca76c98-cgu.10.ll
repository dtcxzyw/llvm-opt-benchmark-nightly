Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.10?download=true
inline.NumInlined: 991
inline.NumDeleted: 474
begin_hunk_0_@_RINvMNtNtCs4okMlIQ9Z13_2h25frame7go_awayNtB3_6GoAway6encodeNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECsi17nFaBu4HY_10ech_client:bb.a
  store i32 %i.ac, ptr %i.a, align 4, !noalias !78
  call void @_RNvXs2_NtCsl0TPHHzpGH6_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RINvMNtCsl0TPHHzpGH6_5bytes5bytesNtB3_5Bytes5sliceNtNtNtCsj6eKBz9Db1c_4core3ops5range9RangeFullECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %0)
  call void @_RINvXs2_NtCsl0TPHHzpGH6_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putNtNtB8_5bytes5BytesECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr @_RNvNvMNtNtCs4okMlIQ9Z13_2h25frame7go_awayNtB4_6GoAway6encode10___CALLSITE, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.af, ptr %i.i, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1_NtNtCs4okMlIQ9Z13_2h25frame6reasonNtB5_6ReasonNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  store ptr @3, ptr %i.j, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.ag, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @1, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 1, ptr %i.g, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMNtNtCs4okMlIQ9Z13_2h25proto9ping_pongNtB3_8PingPong17send_pending_pingINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB22_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB5_7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(2024) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [296 x i8], align 8               ; 6 uses
  %i.d = alloca [296 x i8], align 8               ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !81, !noundef !6
  switch i8 %i.f, label %bb.g [
    i8 2, label %bb.b
    i8 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !noundef !6   ; 2 uses
  %.not23.a = icmp eq ptr %i.g, null
  br i1 %.not23.a, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = tail call { i64, ptr } @_RNvMNtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB2_11FramedWriteINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE10poll_readyCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(1456) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i64, ptr } %i.h, 1        ; 2 uses
  %.not25 = icmp eq ptr %i.k, null
  br i1 %.not25, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18
  %.sroa.010.0.copyload = load i64, ptr %i.l, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 0, ptr %i.m, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i64 %.sroa.010.0.copyload, ptr %.sroa.4.0..sroa_idx, align 2
  store i8 5, ptr %i.d, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 1144
  %i.o = call noundef i8 @_RNvMs_NtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB4_7EncoderINtNtNtNtB8_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE6bufferCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.d) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i = icmp eq i8 %i.o, -1
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit, label %bb.f, !prof !82

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !83
  store i8 %i.o, ptr %i.b, align 1, !noalias !83
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 18, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.e
  store i8 1, ptr %i.e, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.i, %bb.b, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit27, %bb.j, %bb.a, %bb.d, %bb.c
  %.sroa.6.0 = phi ptr [ %i.k, %bb.d ], [ undef, %bb.i ], [ undef, %bb.c ], [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.j ], [ null, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit27 ], [ null, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit ], [ %i.aa, %bb.k ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %bb.i ], [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.j ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit27 ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit ], [ 0, %bb.k ]
  %i.p = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %.sroa.6.0, 1
  ret { i64, ptr } %i.q

bb.h:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = load atomic i64, ptr %i.r acquire, align 8
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = tail call { i64, ptr } @_RNvMNtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB2_11FramedWriteINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE10poll_readyCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(1456) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %1, align 8, !nonnull !6, !align !7, !noundef !6
  tail call void @_RNvMCs4t2ynGArmuo_12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z)
  br label %bb.g

bb.k:                                             ; preds = %bb.i
  %i.aa = extractvalue { i64, ptr } %i.u, 1       ; 2 uses
  %.not24 = icmp eq ptr %i.aa, null
  br i1 %.not24, label %bb.l, label %bb.g

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 0, ptr %i.ab, align 1
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i64 -5470036214019294149, ptr %.sroa.422.0..sroa_idx, align 2
  store i8 5, ptr %i.c, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 1144
  %i.ad = call noundef i8 @_RNvMs_NtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB4_7EncoderINtNtNtNtB8_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE6bufferCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i26 = icmp eq i8 %i.ad, -1
  br i1 %.not.i26, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit27, label %bb.m, !prof !82

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !87
  store i8 %i.ad, ptr %i.a, align 1, !noalias !87
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #23
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit27: ; preds = %bb.l
  %i.ae = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store atomic i64 2, ptr %i.af release, align 8
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMNtNtCs4okMlIQ9Z13_2h25proto9ping_pongNtB3_8PingPong17send_pending_pongINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB22_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB5_7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(2024) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [296 x i8], align 8               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.01.0.copyload = load i8, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 1
  store i8 0, ptr %i.c, align 8
  %i.d = trunc nuw i8 %.sroa.01.0.copyload to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, ptr } @_RNvMNtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB2_11FramedWriteINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE10poll_readyCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(1456) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.c, align 8
  br label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit

bb.d:                                             ; preds = %bb.b
  %i.h = extractvalue { i64, ptr } %i.e, 1        ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 1, ptr %i.i, align 1
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i64 %.sroa.6.0.copyload, ptr %.sroa.415.0..sroa_idx, align 2
  store i8 5, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1144
  %i.k = call noundef i8 @_RNvMs_NtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB4_7EncoderINtNtNtNtB8_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE6bufferCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i8 %i.k, -1
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit, label %bb.f, !prof !82

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !91
  store i8 %i.k, ptr %i.a, align 1, !noalias !91
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  %.sroa.4.1 = phi ptr [ null, %bb.e ], [ null, %bb.a ], [ undef, %bb.c ], [ %i.h, %bb.d ]
  %.sroa.0.1 = phi i64 [ 0, %bb.e ], [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.d ]
  %i.l = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.m = insertvalue { i64, ptr } %i.l, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.m
}

; Function Attrs: noinline nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECsi17nFaBu4HY_10ech_client(i8 noundef range(i8 0, 44) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !95
  %i.a = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4193) 64, i64 noundef range(i64 1, 9) 8) #24, !noalias !95 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvXs1_NtCsj6eKBz9Db1c_4core7convertNtNtCs7ZUl82OSlxp_6rustls5error5ErrorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2f_4SyncEL_EE4intoCsi17nFaBu4HY_10ech_client.exit, !prof !102

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #25
          to label %.noexc.i.i unwind label %bb.c, !noalias !103

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1) #26
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvXs1_NtCsj6eKBz9Db1c_4core7convertNtNtCs7ZUl82OSlxp_6rustls5error5ErrorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2f_4SyncEL_EE4intoCsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.e = tail call noundef nonnull ptr @_RNvNtNtCs4wP2HXfJTCR_5alloc2io5error21custom_owner_from_box(i8 noundef %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @205)
  %i.f = tail call noundef nonnull ptr @_RNvMs0_NtNtNtCsj6eKBz9Db1c_4core2io5error4reprNtB5_4Repr10new_custom(ptr noundef nonnull %i.e)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv13poll_completeINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Z_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(112) %2, ptr noalias nofree noundef align 8 dereferenceable(96) %3, ptr noalias nofree noundef align 8 dereferenceable(2024) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [296 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !104, !noalias !107, !noundef !6 ; 2 uses
  %i.i = load i32, ptr %i.f, align 8, !alias.scope !104, !noalias !107, !noundef !6 ; 3 uses
  %.not.i = icmp slt i32 %i.i, %i.h
  br i1 %.not.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = sub i32 %i.h, %i.i                       ; 3 uses
  %i.k = sdiv i32 %i.i, 2
  %i.l = icmp slt i32 %i.j, %i.k
  br i1 %i.l, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call { i64, ptr } @_RNvMNtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB2_11FramedWriteINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE10poll_readyCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(2024) %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !104 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv29send_connection_window_updateINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2f_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  %.not8.i = icmp eq ptr %i.p, null
  br i1 %.not8.i, label %bb.e, label %_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv29send_connection_window_updateINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2f_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !110
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.q, align 4, !noalias !110
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.j, ptr %i.r, align 8, !noalias !110
  store i8 7, ptr %i.e, align 8, !noalias !110
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 1144
  %i.t = call noundef i8 @_RNvMs_NtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB4_7EncoderINtNtNtNtB8_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE6bufferCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.e), !noalias !104 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !110
  %.not.i.i = icmp eq i8 %i.t, -1
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit.i, label %bb.f, !prof !82

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !111
  store i8 %i.t, ptr %i.d, align 1, !noalias !111
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 27, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23, !noalias !104
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.e
  %i.u = call { i32, i32 } @_RNvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams12flow_controlNtB2_11FlowControl10inc_window(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.f, i32 noundef %i.j) ; 2 uses
  %i.v = extractvalue { i32, i32 } %i.u, 0
  %i.w = trunc nuw i32 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.h, !prof !115

bb.g:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit.i
  %i.x = extractvalue { i32, i32 } %i.u, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !110
  store i32 %i.x, ptr %i.c, align 4, !noalias !110
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 29, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #23
  unreachable

bb.h:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit.i, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = call { i64, ptr } @_RNvMNtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB2_11FramedWriteINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE10poll_readyCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(2024) %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !116 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv29send_connection_window_updateINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2f_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client.exit.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i
  %i.ac = phi { i64, ptr } [ %i.y, %.lr.ph.i ], [ %i.af, %bb.k ]
  %i.ad = extractvalue { i64, ptr } %i.ac, 1      ; 4 uses
  %.not.i13 = icmp eq ptr %i.ad, null
  br i1 %.not.i13, label %bb.j, label %_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv29send_connection_window_updateINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2f_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client.exit.sink.split

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !121
  call void @_RINvMs3_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeINtB6_5QueueNtNtB8_6stream16NextWindowUpdateE3popNtB6_5StoreECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 4 dereferenceable(20) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2)
  %i.ae = load ptr, ptr %i.b, align 8, !noalias !121, !noundef !6
  %.not6.i = icmp eq ptr %i.ae, null
  br i1 %.not6.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !121
  call void @_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams6countsNtB3_6Counts10transitionNCINvMNtB5_4recvNtB1f_4Recv26send_stream_window_updatesINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesE0uECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(2024) %4)
  %i.af = call { i64, ptr } @_RNvMNtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB2_11FramedWriteINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE10poll_readyCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(2024) %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.ag = extractvalue { i64, ptr } %i.af, 0
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv29send_connection_window_updateINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2f_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client.exit.sink.split, label %bb.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !121
  br label %_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv29send_connection_window_updateINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2f_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client.exit.sink.split

_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv29send_connection_window_updateINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2f_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client.exit.sink.split: ; preds = %bb.i, %bb.k, %bb.l, %bb.h
  %.sroa.6.0.ph = phi ptr [ undef, %bb.h ], [ %i.ad, %bb.l ], [ %i.ad, %bb.k ], [ %i.ad, %bb.i ]
  %.sroa.0.0.ph = phi i64 [ 1, %bb.h ], [ 0, %bb.l ], [ 0, %bb.i ], [ 1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv29send_connection_window_updateINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2f_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client.exit

_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv29send_connection_window_updateINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2f_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv29send_connection_window_updateINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2f_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client.exit.sink.split, %bb.c, %bb.d
  %.sroa.6.0 = phi ptr [ %i.p, %bb.d ], [ undef, %bb.c ], [ %.sroa.6.0.ph, %_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv29send_connection_window_updateINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2f_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client.exit.sink.split ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %bb.c ], [ %.sroa.0.0.ph, %_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv29send_connection_window_updateINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2f_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client.exit.sink.split ]
  %i.ai = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.aj = insertvalue { i64, ptr } %i.ai, ptr %.sroa.6.0, 1
  ret { i64, ptr } %i.aj
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv20send_pending_refusalINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB26_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(2024) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [296 x i8], align 8               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !range !124, !noundef !6
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = load i32, ptr %i.f, align 4, !noundef !6
  %i.h = tail call { i64, ptr } @_RNvMNtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB2_11FramedWriteINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE10poll_readyCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(1456) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.c

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.d, %bb.a
  store i32 0, ptr %i.c, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { i64, ptr } %i.h, 1        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.g, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 7, ptr %i.m, align 8
  store i8 8, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 1144
  %i.o = call noundef i8 @_RNvMs_NtNtCs4okMlIQ9Z13_2h25codec12framed_writeINtB4_7EncoderINtNtNtNtB8_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE6bufferCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i8 %i.o, -1
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client.exit, label %bb.e, !prof !82

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !125
end_hunk_0
begin_hunk_1_@_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtBL_5rdata4tsig4TSIGEE13new_uninit_inCsi17nFaBu4HY_10ech_client:bb.a
; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_type10RecordTypeNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsi17nFaBu4HY_10ech_client() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(152) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4193) 152, i64 noundef 8) #24 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !115

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_type10RecordTypeNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsi17nFaBu4HY_10ech_client() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(56) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4193) 56, i64 noundef 8) #24 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !115

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsjXdHNeFfodD_13hickory_proto5error10ProtoErrorE13new_uninit_inCsi17nFaBu4HY_10ech_client() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4193) 48, i64 noundef 8) #24 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !115

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryE13new_uninit_inCsi17nFaBu4HY_10ech_client() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(88) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4193) 88, i64 noundef 8) #24 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !115

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameE13new_uninit_inCsi17nFaBu4HY_10ech_client() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(80) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4193) 80, i64 noundef 8) #24 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !115

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMs_NtNtCskruEhpekJ3V_5tokio4task8join_setINtB4_7JoinSetuE6insertCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull returned %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_NtNtNtCskruEhpekJ3V_5tokio7runtime4task3rawNtB4_7RawTask7ref_inc(ptr noundef nonnull %1)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = invoke { ptr, ptr } @_RNvMs2_NtNtCskruEhpekJ3V_5tokio4util17idle_notified_setINtB5_15IdleNotifiedSetINtNtNtNtB9_7runtime4task4join10JoinHandleuEE11insert_idleCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1)
          to label %bb.c unwind label %.thread17  ; 2 uses

.thread17:                                        ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.thread12

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { ptr, ptr } %i.d, 0
  %i.g = extractvalue { ptr, ptr } %i.d, 1
  store ptr %i.f, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8
  invoke void @_RINvMs3_NtNtCskruEhpekJ3V_5tokio4util17idle_notified_setINtB6_20EntryInOneOfTheListsINtNtNtNtBa_7runtime4task4join10JoinHandleuEE22with_value_and_contextNCNvMs_NtNtBa_4task8join_setINtB2y_7JoinSetuE6insert0uECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2354)
  call void @llvm.experimental.noalias.scope.decl(metadata !2357)
  call void @llvm.experimental.noalias.scope.decl(metadata !2360)
  %i.j = load ptr, ptr %i.a, align 8, !alias.scope !2363, !nonnull !6, !noundef !6
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !2363
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %.thread12

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCskruEhpekJ3V_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #22
          to label %.thread12 unwind label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2364)
  call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  call void @llvm.experimental.noalias.scope.decl(metadata !2370)
  %i.m = load ptr, ptr %i.a, align 8, !alias.scope !2373, !nonnull !6, !noundef !6
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !2373
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBI_7runtime4task4join10JoinHandleuEEECsi17nFaBu4HY_10ech_client.exit6

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCskruEhpekJ3V_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #22
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBI_7runtime4task4join10JoinHandleuEEECsi17nFaBu4HY_10ech_client.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBI_7runtime4task4join10JoinHandleuEEECsi17nFaBu4HY_10ech_client.exit6: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %1

bb.h:                                             ; preds = %bb.i, %.thread12, %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

.thread12:                                        ; preds = %bb.e, %bb.d, %.thread17
  %.pn16 = phi { ptr, i32 } [ %i.e, %.thread17 ], [ %i.i, %bb.d ], [ %i.i, %bb.e ]
  invoke void @_RNvXs4_NtNtNtCskruEhpekJ3V_5tokio7runtime4task5abortNtB5_11AbortHandleNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCskruEhpekJ3V_5tokio7runtime4task4join10JoinHandleuEECsi17nFaBu4HY_10ech_client.exit unwind label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCskruEhpekJ3V_5tokio7runtime4task4join10JoinHandleuEECsi17nFaBu4HY_10ech_client.exit: ; preds = %.thread12, %bb.i
  %.pn.pn11 = phi { ptr, i32 } [ %i.q, %bb.i ], [ %.pn16, %.thread12 ]
  resume { ptr, i32 } %.pn.pn11

bb.i:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCskruEhpekJ3V_5tokio7runtime4task4join10JoinHandleuEECsi17nFaBu4HY_10ech_client.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs9RFwvXNxPyg_16hickory_resolver19connection_providerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderNtB2_18ConnectionProvider14new_connectionCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(17) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [360 x i8], align 8               ; 6 uses
  %i.b = alloca [3024 x i8], align 8              ; 20 uses
  %i.c = alloca [344 x i8], align 8               ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [4192 x i8], align 8              ; 19 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [408 x i8], align 8               ; 18 uses
  %i.m = alloca [104 x i8], align 8               ; 18 uses
  %.sroa.6.sroa.7.sroa.0 = alloca [12 x i8], align 4 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.o = load i16, ptr %i.n, align 8, !noundef !6 ; 5 uses
  %i.p = load i8, ptr %2, align 1, !range !131, !noundef !6
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.041.0.copyload = load i16, ptr %i.r, align 1
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.sroa.442.0.copyload = load i16, ptr %.sroa.442.0..sroa_idx, align 1
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.sroa.7.sroa.0, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.543.0..sroa_idx, i64 12, i1 false)
  %.sroa.6.sroa.0.2.insert.ext = zext i16 %.sroa.041.0.copyload to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.012.0.copyload = load i32, ptr %i.r, align 1 ; 2 uses
  %.sroa.6.sroa.0.sroa.5.0.extract.shift = lshr i32 %.sroa.012.0.copyload, 16
  %5 = and i32 %.sroa.012.0.copyload, 65535
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.6.sroa.0.sroa.0.sroa.0.0 = phi i32 [ 0, %bb.b ], [ %5, %bb.c ] ; 4 uses
  %.sroa.6.sroa.0.0 = phi i32 [ %.sroa.6.sroa.0.2.insert.ext, %bb.b ], [ %.sroa.6.sroa.0.sroa.5.0.extract.shift, %bb.c ] ; 4 uses
  %.sroa.6.sroa.6.0 = phi i16 [ %.sroa.442.0.copyload, %bb.b ], [ %i.o, %bb.c ] ; 4 uses
  %.sroa.0.0 = phi i16 [ 1, %bb.b ], [ 0, %bb.c ] ; 4 uses
  %i.s = load i64, ptr %3, align 8, !range !1394, !noundef !6
  switch i64 %i.s, label %default.unreachable86 [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.k
    i64 3, label %bb.l
  ]

default.unreachable86:                            ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 416
  %i.u = load i64, ptr %i.t, align 8, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 424
  %i.w = load i32, ptr %i.v, align 8, !range !1857, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 550
  %i.y = load i8, ptr %i.x, align 2, !range !131, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 496 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.s, label %bb.q

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 416
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 424
  %i.ag = load i32, ptr %i.af, align 8, !range !1857, !noundef !6
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 536
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !6
  %.val64 = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.aj = atomicrmw add ptr %.val64, i64 1 monotonic, align 8
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i16 %.sroa.0.0, ptr %i.am, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 34
  %.sroa.6.sroa.0.sroa.5.0.insert.shift89 = shl nuw i32 %.sroa.6.sroa.0.0, 16
  %.sroa.6.sroa.0.sroa.0.0.insert.insert77 = or disjoint i32 %.sroa.6.sroa.0.sroa.5.0.insert.shift89, %.sroa.6.sroa.0.sroa.0.sroa.0.0
  store i32 %.sroa.6.sroa.0.sroa.0.0.insert.insert77, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 38
  store i16 %.sroa.6.sroa.6.0, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 2
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.sroa.7.sroa.0, i64 12, i1 false)
  %.sroa.6.sroa.7.sroa.5.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  store i32 0, ptr %.sroa.6.sroa.7.sroa.5.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx, align 4
  %.sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i32 0, ptr %.sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.7.sroa.7.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  store i16 %i.o, ptr %.sroa.6.sroa.7.sroa.7.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.ae, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 %i.ag, ptr %i.ap, align 8
  store i64 1, ptr %i.l, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.ai, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store ptr %.val64, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 400
  store i8 0, ptr %i.as, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2374
  %i.at = tail call noundef align 8 dereferenceable_or_null(408) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4193) 408, i64 noundef range(i64 1, 9) 8) #24, !noalias !2374 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.h, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNCINvMNtNtCs5MfxasYgTEl_11hickory_net3tcp17tcp_client_streamINtBK_15TcpClientStreamINtNtNtBO_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEE8exchangeNtNtB24_13tokio_runtime20TokioRuntimeProviderE0E3newCsi17nFaBu4HY_10ech_client.exit, !prof !102

bb.h:                                             ; preds = %_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 408) #25
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMNtNtCs5MfxasYgTEl_11hickory_net3tcp17tcp_client_streamINtBH_15TcpClientStreamINtNtNtBL_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEE8exchangeNtNtB21_13tokio_runtime20TokioRuntimeProviderE0ECsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 dereferenceable(408) %i.l) #26
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.aq, %bb.aj, %.body, %bb.u, %bb.n, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.dj, %bb.aj ], [ %i.av, %bb.i ], [ %i.bk, %bb.n ], [ %i.cb, %bb.u ], [ %.pn58, %.body ], [ %i.ef, %bb.aq ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNCINvMNtNtCs5MfxasYgTEl_11hickory_net3tcp17tcp_client_streamINtBK_15TcpClientStreamINtNtNtBO_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEE8exchangeNtNtB24_13tokio_runtime20TokioRuntimeProviderE0E3newCsi17nFaBu4HY_10ech_client.exit: ; preds = %_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %i.at, ptr noundef nonnull align 8 dereferenceable(408) %i.l, i64 408, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @68, ptr %i.ay, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.al

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.az, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !6, !noundef !6
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !6
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  call void @_RNvXs2_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_10ServerNameINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bc)
  %i.be = load i8, ptr %i.g, align 8, !range !81, !noundef !6
  %i.bf = icmp eq i8 %i.be, 2
  br i1 %i.bf, label %.split, label %bb.x

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXsd_NtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB5_12ClientConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(344) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %4) #28
  store i64 1, ptr %i.a, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bh, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2377
  %i.bi = tail call noundef align 8 dereferenceable_or_null(360) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4193) 360, i64 noundef range(i64 1, 9) 8) #24, !noalias !2377 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.m, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEE3newCsi17nFaBu4HY_10ech_client.exit, !prof !102

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 360) #25
          to label %.noexc67 unwind label %bb.n

.noexc67:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(344) %i.bg)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEE3newCsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.bi, ptr noundef nonnull align 8 dereferenceable(360) %i.a, i64 360, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val63 = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bm = atomicrmw add ptr %.val63, i64 1 monotonic, align 8
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %bb.p, label %_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit70

bb.p:                                             ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEE3newCsi17nFaBu4HY_10ech_client.exit
  tail call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.e
  %i.bo = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6
  %.val62 = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bp = atomicrmw add ptr %.val62, i64 1 monotonic, align 8
  %i.bq = icmp slt i64 %i.bp, 0
  br i1 %i.bq, label %bb.r, label %_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit71

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit71: ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i16 %.sroa.0.0, ptr %i.bs, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  %.sroa.6.sroa.0.sroa.5.0.insert.shift94 = shl nuw i32 %.sroa.6.sroa.0.0, 16
  %.sroa.6.sroa.0.sroa.0.0.insert.insert81 = or disjoint i32 %.sroa.6.sroa.0.sroa.5.0.insert.shift94, %.sroa.6.sroa.0.sroa.0.sroa.0.0
  store i32 %.sroa.6.sroa.0.sroa.0.0.insert.insert81, ptr %.sroa.6.0..sroa_idx4, align 2
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 22
  store i16 %.sroa.6.sroa.6.0, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx4.sroa_idx, align 2
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.sroa.7.sroa.0, i64 12, i1 false)
  %.sroa.6.sroa.7.sroa.5.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx4.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  store i32 0, ptr %.sroa.6.sroa.7.sroa.5.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx4.sroa_idx.sroa_idx, align 4
  %.sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx4.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %.sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx4.sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.7.sroa.7.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx4.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  store i16 %i.o, ptr %.sroa.6.sroa.7.sroa.7.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx4.sroa_idx.sroa_idx, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %.val62, ptr %i.bt, align 8
  store i64 %i.u, ptr %i.m, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %i.w, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store i8 %i.y, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store ptr %i.bo, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 97
  store i8 0, ptr %i.by, align 1
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2380
  %i.bz = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4193) 104, i64 noundef range(i64 1, 9) 8) #24, !noalias !2380 ; 3 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.t, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNCNvXNtCs9RFwvXNxPyg_16hickory_resolver19connection_providerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderNtBJ_18ConnectionProvider14new_connection0E3newCsi17nFaBu4HY_10ech_client.exit, !prof !102

bb.t:                                             ; preds = %_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit71
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #25
          to label %.noexc73 unwind label %bb.u

.noexc73:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvXNtCs9RFwvXNxPyg_16hickory_resolver19connection_providerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderNtBG_18ConnectionProvider14new_connection0ECsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 dereferenceable(104) %i.m) #26
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNCNvXNtCs9RFwvXNxPyg_16hickory_resolver19connection_providerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderNtBJ_18ConnectionProvider14new_connection0E3newCsi17nFaBu4HY_10ech_client.exit: ; preds = %_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bz, ptr noundef nonnull align 8 dereferenceable(104) %i.m, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bz, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @67, ptr %i.ce, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.al

bb.w:                                             ; preds = %bb.aa, %.body
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

.split:                                           ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtB6_7Display3fmtCsi17nFaBu4HY_10ech_client, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @70, ptr noundef nonnull %i.i), !noalias !2383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i8 5, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.al

bb.x:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB2_10ServerName8to_owned(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.z unwind label %bb.y

.body:                                            ; preds = %bb.ae, %bb.y, %bb.aa
  %.pn58 = phi { ptr, i32 } [ %i.ch, %bb.aa ], [ %i.cg, %bb.y ], [ %i.da, %bb.ae ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #26
          to label %common.resume unwind label %bb.w

bb.y:                                             ; preds = %bb.x
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @_RNvXsd_NtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB5_12ClientConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(344) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %4)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #26
          to label %.body unwind label %bb.w

bb.ab:                                            ; preds = %bb.z
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 416
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !6
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 424
  %i.cl = load i32, ptr %i.ck, align 8, !range !1857, !noundef !6
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 536
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !6
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.co = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.cp = icmp slt i64 %i.co, 0
  br i1 %i.cp, label %bb.ac, label %_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit75

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.trap()
  unreachable

_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit75: ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 376
  store i16 %.sroa.0.0, ptr %i.cq, align 8
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.e, i64 378
  %.sroa.6.sroa.0.sroa.5.0.insert.shift84 = shl nuw i32 %.sroa.6.sroa.0.0, 16
  %.sroa.6.sroa.0.sroa.0.0.insert.insert73 = or disjoint i32 %.sroa.6.sroa.0.sroa.5.0.insert.shift84, %.sroa.6.sroa.0.sroa.0.sroa.0.0
  store i32 %.sroa.6.sroa.0.sroa.0.0.insert.insert73, ptr %.sroa.6.0..sroa_idx5, align 2
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx5.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 382
  store i16 %.sroa.6.sroa.6.0, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx5.sroa_idx, align 2
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.sroa.7.sroa.0, i64 12, i1 false)
  %.sroa.6.sroa.7.sroa.5.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 396
  store i32 0, ptr %.sroa.6.sroa.7.sroa.5.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.sroa_idx, align 4
  %.sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 400
  store i32 0, ptr %.sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.7.sroa.7.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 404
  store i16 %i.o, ptr %.sroa.6.sroa.7.sroa.7.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.sroa_idx, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.e, ptr noundef nonnull align 8 dereferenceable(344) %i.c, i64 344, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  store i64 %i.cj, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  store i32 %i.cl, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  store i64 1, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  store i64 %i.cn, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 440
  store ptr %.val, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 552
  store i8 0, ptr %i.cx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2386
  %i.cy = call noundef align 8 dereferenceable_or_null(4192) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4193) 4192, i64 noundef range(i64 1, 9) 8) #24, !noalias !2386 ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.ad, label %bb.ag, !prof !102

bb.ad:                                            ; preds = %_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit75
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 4192) #25
          to label %.noexc76 unwind label %bb.ae

.noexc76:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvNtCs5MfxasYgTEl_11hickory_net3tls12tls_exchangeNtNtNtBI_7runtime13tokio_runtime20TokioRuntimeProviderINtNtB1v_8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEE0ECsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 dereferenceable(4192) %i.e) #26
          to label %.body unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ag:                                            ; preds = %_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4192) %i.cy, ptr noundef nonnull align 8 dereferenceable(4192) %i.e, i64 4192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @69, ptr %i.dd, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.de = load i8, ptr %i.h, align 8, !range !131, !alias.scope !2389, !noundef !6
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.ah, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECsi17nFaBu4HY_10ech_client.exit

bb.ah:                                            ; preds = %bb.ag
  %i.dg = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.dh = load i64, ptr %i.dg, align 8, !range !135, !alias.scope !2392, !noundef !6
  %i.di = icmp eq i64 %i.dh, -1
  br i1 %i.di, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECsi17nFaBu4HY_10ech_client.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsi17nFaBu4HY_10ech_client.exit.i.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsi17nFaBu4HY_10ech_client.exit.i.i.i: ; preds = %bb.ai
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dg)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECsi17nFaBu4HY_10ech_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.ag, %bb.ah, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsi17nFaBu4HY_10ech_client.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.al

bb.al:                                            ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNCINvMNtNtCs5MfxasYgTEl_11hickory_net3tcp17tcp_client_streamINtBK_15TcpClientStreamINtNtNtBO_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEE8exchangeNtNtB24_13tokio_runtime20TokioRuntimeProviderE0E3newCsi17nFaBu4HY_10ech_client.exit, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNCNvXNtCs9RFwvXNxPyg_16hickory_resolver19connection_providerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderNtBJ_18ConnectionProvider14new_connection0E3newCsi17nFaBu4HY_10ech_client.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECsi17nFaBu4HY_10ech_client.exit, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNCNvMs1_NtCs5MfxasYgTEl_11hickory_net2h2INtBM_24HttpsClientStreamBuilderNtNtNtBO_7runtime13tokio_runtime20TokioRuntimeProviderE8exchange0E3newCsi17nFaBu4HY_10ech_client.exit, %.split
  ret void

_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit70: ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEE3newCsi17nFaBu4HY_10ech_client.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.dn = atomicrmw add ptr %i.dm, i64 1 monotonic, align 8
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit70
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !6
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.dt = atomicrmw add ptr %i.ds, i64 1 monotonic, align 8
  %i.du = icmp slt i64 %i.dt, 0
  br i1 %i.du, label %bb.as, label %bb.ao

bb.an:                                            ; preds = %_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit70
  tail call void @llvm.trap()
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dw = load i64, ptr %i.dv, align 8, !noundef !6
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i16 2, ptr %i.dx, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %.val63, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.bi, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr null, ptr %.sroa.611.0..sroa_idx, align 8
  store i16 %.sroa.0.0, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.6.sroa.0.sroa.5.0.insert.shift = shl nuw i32 %.sroa.6.sroa.0.0, 16
  %.sroa.6.sroa.0.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.sroa.0.sroa.5.0.insert.shift, %.sroa.6.sroa.0.sroa.0.sroa.0.0
  store i32 %.sroa.6.sroa.0.sroa.0.0.insert.insert, ptr %.sroa.6.0..sroa_idx6, align 2
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i16 %.sroa.6.sroa.6.0, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx6.sroa_idx, align 2
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.sroa.7.sroa.0, i64 12, i1 false)
  %.sroa.6.sroa.7.sroa.5.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 0, ptr %.sroa.6.sroa.7.sroa.5.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.sroa_idx, align 4
  %.sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %.sroa.6.sroa.7.sroa.6.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.7.sroa.7.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i16 %i.o, ptr %.sroa.6.sroa.7.sroa.7.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx6.sroa_idx.sroa_idx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.dm, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.dq, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.ds, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 %i.dw, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 3016
  store i8 0, ptr %i.ec, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2397
  %i.ed = tail call noundef align 8 dereferenceable_or_null(3024) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4193) 3024, i64 noundef range(i64 1, 9) 8) #24, !noalias !2397 ; 3 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.ap, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNCNvMs1_NtCs5MfxasYgTEl_11hickory_net2h2INtBM_24HttpsClientStreamBuilderNtNtNtBO_7runtime13tokio_runtime20TokioRuntimeProviderE8exchange0E3newCsi17nFaBu4HY_10ech_client.exit, !prof !102

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 3024) #25
          to label %.noexc79 unwind label %bb.aq

.noexc79:                                         ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs1_NtCs5MfxasYgTEl_11hickory_net2h2INtBJ_24HttpsClientStreamBuilderNtNtNtBL_7runtime13tokio_runtime20TokioRuntimeProviderE8exchange0ECsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 dereferenceable(3024) %i.b) #26
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNCNvMs1_NtCs5MfxasYgTEl_11hickory_net2h2INtBM_24HttpsClientStreamBuilderNtNtNtBO_7runtime13tokio_runtime20TokioRuntimeProviderE8exchange0E3newCsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3024) %i.ed, ptr noundef nonnull align 8 dereferenceable(3024) %i.b, i64 3024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ed, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @71, ptr %i.ei, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.al

bb.as:                                            ; preds = %bb.am
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB4_3BoxNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEINtNtCsj6eKBz9Db1c_4core7convert4FromBO_E4fromCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2400
  %i.a = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4193) 88, i64 noundef range(i64 1, 9) 8) #24, !noalias !2400 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryE3newCsi17nFaBu4HY_10ech_client.exit, !prof !102

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #25
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryE3newCsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  ret ptr %i.a
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCsaKJjC64KgbL_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop() unnamed_addr #5 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call noundef ptr @_RNvYNtNtNtNtCsaKJjC64KgbL_3std3sys5stdio4unix6StderrNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @72, ptr noundef nonnull inttoptr (i64 123 to ptr))
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client(ptr %i.b)
  call void @_RNvNtCsaKJjC64KgbL_3std7process5abort() #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtNtCsjXdHNeFfodD_13hickory_proto9serialize6binary7decoderNtB5_11DecodeErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = load i64, ptr %0, align 8, !range !1758, !noundef !6 ; 2 uses
  %i.t = xor i64 %i.s, -9223372036854775808
  %i.u = icmp slt i64 %i.s, 0
  %i.v = select i1 %i.u, i64 %i.t, i64 27
  switch i64 %i.v, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %bb.x
    i64 22, label %bb.y
    i64 23, label %bb.z
    i64 24, label %bb.aa
    i64 25, label %bb.ab
    i64 26, label %bb.ac
    i64 27, label %bb.ad
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.r, align 8
  %i.x = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 15, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ae

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.z, ptr %i.q, align 8
  %i.aa = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 4, ptr noundef nonnull %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 3, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @81)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ae

bb.e:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 17)
  br label %bb.ae

bb.f:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 18)
  br label %bb.ae

bb.g:                                             ; preds = %bb.a
  %i.ad = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 20)
  br label %bb.ae

bb.h:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %i.p, align 8
  %i.ag = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 22, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 3, ptr noundef nonnull %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 3, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtB28_15dns_multiplexer14DnsMultiplexerINtNtNtB2a_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB2a_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtB4P_17AsyncIoStdAsTokioIB4N_NtNtNtNtBb_3net3tcp6stream9TcpStreamEEEEEENtB4R_9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCsi17nFaBu4HY_10ech_client
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtB28_15dns_multiplexer14DnsMultiplexerINtNtNtB2a_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB2a_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtB4P_17AsyncIoStdAsTokioIB4N_NtNtNtNtBb_3net3tcp6stream9TcpStreamEEEEEENtB4R_9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias noundef nonnull align 8, ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtB28_15dns_multiplexer14DnsMultiplexerINtNtNtB2a_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB2a_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtB4P_17AsyncIoStdAsTokioIB4N_NtNtNtNtBb_3net3tcp6stream9TcpStreamEEEEEENtB4R_9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias noundef nonnull align 8, ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtB28_15dns_multiplexer14DnsMultiplexerINtNtNtB2a_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB2a_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtBb_3net3tcp6stream9TcpStreamEEENtB4R_9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias noundef nonnull align 8, ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtB28_15dns_multiplexer14DnsMultiplexerINtNtNtB2a_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB2a_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtBb_3net3tcp6stream9TcpStreamEEENtB4R_9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias noundef nonnull align 8, ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB2a_3udp17udp_client_stream15UdpClientStreamNtNtNtB2a_7runtime13tokio_runtime20TokioRuntimeProviderENtB4a_9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias noundef nonnull align 8, ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB2a_3udp17udp_client_stream15UdpClientStreamNtNtNtB2a_7runtime13tokio_runtime20TokioRuntimeProviderENtB4a_9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias noundef nonnull align 8, ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundNtNtB2a_2h217HttpsClientStreamNtNtB2a_7runtime9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias noundef nonnull align 8, ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundNtNtB2a_2h217HttpsClientStreamNtNtB2a_7runtime9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias noundef nonnull align 8, ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNCINvNtCs5MfxasYgTEl_11hickory_net2h27connectINtNtNtB2c_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtBb_3net3tcp6stream9TcpStreamEIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputINtNtB13_6result6ResultB2O_NtNtNtB13_2io5error5ErrorENtNtB13_6marker4SendEL_EEE00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNCINvNtCs5MfxasYgTEl_11hickory_net2h27connectINtNtNtB2c_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtBb_3net3tcp6stream9TcpStreamEIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputINtNtB13_6result6ResultB2O_NtNtNtB13_2io5error5ErrorENtNtB13_6marker4SendEL_EEE00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB2a_12ProbeRequestNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB2a_12ProbeRequestNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtB13_15dns_multiplexer14DnsMultiplexerINtNtNtB15_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB15_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtB3K_17AsyncIoStdAsTokioIB3I_NtNtNtNtBb_3net3tcp6stream9TcpStreamEEEEEENtB3M_9TokioTimeEINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1760), ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtB13_15dns_multiplexer14DnsMultiplexerINtNtNtB15_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB15_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtB3K_17AsyncIoStdAsTokioIB3I_NtNtNtNtBb_3net3tcp6stream9TcpStreamEEEEEENtB3M_9TokioTimeEINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1760), ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtB13_15dns_multiplexer14DnsMultiplexerINtNtNtB15_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB15_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtBb_3net3tcp6stream9TcpStreamEEENtB3M_9TokioTimeEINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(648), ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtB13_15dns_multiplexer14DnsMultiplexerINtNtNtB15_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB15_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtBb_3net3tcp6stream9TcpStreamEEENtB3M_9TokioTimeEINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(648), ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB15_3udp17udp_client_stream15UdpClientStreamNtNtNtB15_7runtime13tokio_runtime20TokioRuntimeProviderENtB35_9TokioTimeEINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(416), ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB15_3udp17udp_client_stream15UdpClientStreamNtNtNtB15_7runtime13tokio_runtime20TokioRuntimeProviderENtB35_9TokioTimeEINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(416), ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundNtNtB15_2h217HttpsClientStreamNtNtB15_7runtime9TokioTimeEINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(344), ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundNtNtB15_2h217HttpsClientStreamNtNtB15_7runtime9TokioTimeEINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(344), ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellNCNCINvNtCs5MfxasYgTEl_11hickory_net2h27connectINtNtNtB17_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtBb_3net3tcp6stream9TcpStreamEINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB3a_6future6future6Futurep6OutputINtNtB3a_6result6ResultB1J_NtNtNtB3a_2io5error5ErrorENtNtB3a_6marker4SendEL_EEE00INtNtB3G_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(4696), ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellNCNCINvNtCs5MfxasYgTEl_11hickory_net2h27connectINtNtNtB17_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtBb_3net3tcp6stream9TcpStreamEINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB3a_6future6future6Futurep6OutputINtNtB3a_6result6ResultB1J_NtNtNtB3a_2io5error5ErrorENtNtB3a_6marker4SendEL_EEE00INtNtB3G_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(4696), ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB15_12ProbeRequestNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(384), ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4coreINtB5_4CellNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB15_12ProbeRequestNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(384), ptr noundef nonnull, i64 noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexINtNtNtCskruEhpekJ3V_5tokio4task8join_set7JoinSetuEE4lockCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvNtNtCskruEhpekJ3V_5tokio4task5spawn5spawnINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtBM_15dns_multiplexer14DnsMultiplexerINtNtNtBO_3tcp17tcp_client_stream15TcpClientStreamINtNtNtBO_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtB3r_17AsyncIoStdAsTokioIB3p_NtNtNtNtB6_3net3tcp6stream9TcpStreamEEEEEENtB3t_9TokioTimeEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1760), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime10reap_tasks(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvNtNtCskruEhpekJ3V_5tokio4task5spawn5spawnINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtBM_15dns_multiplexer14DnsMultiplexerINtNtNtBO_3tcp17tcp_client_stream15TcpClientStreamINtNtNtBO_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtB6_3net3tcp6stream9TcpStreamEEENtB3t_9TokioTimeEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(648), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvNtNtCskruEhpekJ3V_5tokio4task5spawn5spawnINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtBO_3udp17udp_client_stream15UdpClientStreamNtNtNtBO_7runtime13tokio_runtime20TokioRuntimeProviderENtB2N_9TokioTimeEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(416), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvNtNtCskruEhpekJ3V_5tokio4task5spawn5spawnINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundNtNtBO_2h217HttpsClientStreamNtNtBO_7runtime9TokioTimeEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(344), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvNtNtCskruEhpekJ3V_5tokio4task5spawn5spawnNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtBO_12ProbeRequestNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0ECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(384), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs0_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtB7_15RuntimeProvider11connect_tcp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32), i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamENtNtNtB8_2io5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs5MfxasYgTEl_11hickory_net3tcp17tcp_client_streamINtB3_15TcpClientStreamINtNtNtB7_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEE3newNtNtB1n_13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([248 x i8]) align 8 captures(none) dereferenceable(248), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32), i64, i32 noundef range(i32 -1, 1000000000), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexerINtB4_14DnsMultiplexerINtNtNtB8_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB8_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEE3newCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([352 x i8]) align 8 captures(none) dereferenceable(352), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(216), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchangeINtB3_11DnsExchangeNtNtNtB7_7runtime13tokio_runtime20TokioRuntimeProviderE11from_streamINtNtB5_15dns_multiplexer14DnsMultiplexerINtNtNtB7_3tcp17tcp_client_stream15TcpClientStreamINtNtB1e_8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEECsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([672 x i8]) align 8 captures(none) dereferenceable(672), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(352)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXNtNtNtCskruEhpekJ3V_5tokio2io4util9write_allINtB2_8WriteAllINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtNtB8_3net3tcp6stream9TcpStreamEEEENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_10ServerNameINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB2_10ServerName8to_owned(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskruEhpekJ3V_5tokio4time7timeout7timeoutINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client7ConnectINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1A_17AsyncIoTokioAsStdNtNtNtNtB6_3net3tcp6stream9TcpStreamEEEECsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([1256 x i8]) align 8 captures(none) dereferenceable(1256), i64 noundef, i32 noundef range(i32 0, 1000000000), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1144), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCskruEhpekJ3V_5tokio4time7timeoutINtB4_7TimeoutINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client7ConnectINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1I_17AsyncIoTokioAsStdNtNtNtNtB8_3net3tcp6stream9TcpStreamEEEENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([1144 x i8]) align 8 captures(none) dereferenceable(1144), ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs4okMlIQ9Z13_2h26clientNtB5_7Builder3new(ptr dead_on_unwind noalias nofree noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvNtNtCskruEhpekJ3V_5tokio4task5spawn5spawnNCNCINvNtCs5MfxasYgTEl_11hickory_net2h27connectINtNtNtBQ_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtB6_3net3tcp6stream9TcpStreamEINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB2S_6future6future6Futurep6OutputINtNtB2S_6result6ResultB1s_NtNtNtB2S_2io5error5ErrorENtNtB2S_6marker4SendEL_EEE00ECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(4696), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs5MfxasYgTEl_11hickory_net3tls30tls_client_connect_with_futureINtNtNtB4_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEECsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([3632 x i8]) align 8 captures(none) dereferenceable(3632), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexerINtB4_14DnsMultiplexerINtNtNtB8_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB8_7runtime8iocompat17AsyncIoTokioAsStdINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtB28_17AsyncIoStdAsTokioIB26_NtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEEEE3newCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([1464 x i8]) align 8 captures(none) dereferenceable(1464), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(1328), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchangeINtB3_11DnsExchangeNtNtNtB7_7runtime13tokio_runtime20TokioRuntimeProviderE11from_streamINtNtB5_15dns_multiplexer14DnsMultiplexerINtNtNtB7_3tcp17tcp_client_stream15TcpClientStreamINtNtB1e_8iocompat17AsyncIoTokioAsStdINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtB3M_17AsyncIoStdAsTokioIB3K_NtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEEEEECsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([1784 x i8]) align 8 captures(none) dereferenceable(1784), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1464)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCsjpgBhlqJ253_12tracing_core5fieldINtB5_12DisplayValueRNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtB5_5Value6recordCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCs5MfxasYgTEl_11hickory_net2h2INtB5_24HttpsClientStreamBuilderNtNtNtB7_7runtime13tokio_runtime20TokioRuntimeProviderE5buildCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([2816 x i8]) align 8 captures(address) dereferenceable(2816), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchangeINtB3_11DnsExchangeNtNtNtB7_7runtime13tokio_runtime20TokioRuntimeProviderE11from_streamNtNtB7_2h217HttpsClientStreamECsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([368 x i8]) align 8 captures(none) dereferenceable(368), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs4okMlIQ9Z13_2h25codecINtB4_5CodecINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1w_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE29set_max_recv_header_list_sizeCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(2024), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 13) i8 @_RNvMs0_NtCs4okMlIQ9Z13_2h25codecINtB5_5CodecINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1x_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB7_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE6bufferCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(2024), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(296)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs4okMlIQ9Z13_2h25proto10connectionINtB2_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1O_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtB6_6client4PeerE3newCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([2344 x i8]) align 8 captures(none) dereferenceable(2344), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(2024), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs3_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsINtB5_7StreamsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesNtNtBb_6client4PeerENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs4okMlIQ9Z13_2h26clientINtB5_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1E_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE22set_target_window_sizeCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(2344), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2_15UdpClientStreamNtNtNtB6_7runtime13tokio_runtime20TokioRuntimeProviderE7builderCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB5_22UdpClientStreamBuilderNtNtNtB9_7runtime13tokio_runtime20TokioRuntimeProviderE17avoid_local_portsCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(120), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB5_22UdpClientStreamBuilderNtNtNtB9_7runtime13tokio_runtime20TokioRuntimeProviderE8exchangeCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs4okMlIQ9Z13_2h25codecINtB2_5CodecINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1u_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB4_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE24with_max_recv_frame_sizeCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([2024 x i8]) align 8 captures(none) dereferenceable(2024), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1144), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsaKJjC64KgbL_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtCseieIppCIYdI_4slab4SlabNtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex6WaiterEEENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsaKJjC64KgbL_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtNtCskruEhpekJ3V_5tokio4task8join_set7JoinSetuEEENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs4okMlIQ9Z13_2h25codec11framed_read28calc_max_continuation_frames(i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local11destructors10linux_like8register(ptr noundef, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexINtCseieIppCIYdI_4slab4SlabNtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex6WaiterEE4lockCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs3_CseieIppCIYdI_4slabINtB5_4SlabNtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex6WaiterE6removeCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXso_CseieIppCIYdI_4slabINtB5_7IterMutNtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex6WaiterENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexNtB5_6Waiter4wake(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCskruEhpekJ3V_5tokio7runtime4task3rawNtB4_7RawTask7ref_inc(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs2_NtNtCskruEhpekJ3V_5tokio4util17idle_notified_setINtB5_15IdleNotifiedSetINtNtNtNtB9_7runtime4task4join10JoinHandleuEE11insert_idleCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCskruEhpekJ3V_5tokio4util17idle_notified_setINtB6_20EntryInOneOfTheListsINtNtNtNtBa_7runtime4task4join10JoinHandleuEE22with_value_and_contextNCNvMs_NtNtBa_4task8join_setINtB2y_7JoinSetuE6insert0uECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys() unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #19

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtB6_7Display3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string13FromUtf8ErrorNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter11debug_tuple(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsjXdHNeFfodD_13hickory_proto9serialize6binary7decoder11DecodeErrorNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1v_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00ENtNtB7_6stream9StreamExt15poll_next_unpinCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([184 x i8]) align 8 captures(address) dereferenceable(184), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1r_10UdpRequestNtNtNtB1v_7runtime13tokio_runtime20TokioRuntimeProviderENtB1r_7Request4send0ENtNtB7_6stream9StreamExt15poll_next_unpinCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs4wP2HXfJTCR_5alloc6stringNtB5_13FromUtf8ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCs4wP2HXfJTCR_5alloc6string13FromUtf8ErrorNtNtCsj6eKBz9Db1c_4core5error5Error5causeCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsa_NtCsj6eKBz9Db1c_4core5arrayAhj8_NtNtB7_3fmt5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsp_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_11ContentTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_13HandshakeTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_12DnsNameInnerNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCseO5Jl7W60Eg_16rustls_pki_types6alg_idNtB5_19AlgorithmIdentifierNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsj6eKBz9Db1c_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtCsj6eKBz9Db1c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCs4okMlIQ9Z13_2h25frame7go_awayNtB5_6GoAwayNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsj6eKBz9Db1c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsj6eKBz9Db1c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtNtCsjXdHNeFfodD_13hickory_proto9serialize6binary7decoderNtB5_11DecodeErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtNtCsjXdHNeFfodD_13hickory_proto9serialize6binary7decoder11DecodeErrorNtNtCsj6eKBz9Db1c_4core5error5Error5causeCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtCs9Nm16QDoYu7_3url6parserNtB5_10ParseErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCsj6eKBz9Db1c_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCsj6eKBz9Db1c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs2_NtNtCskruEhpekJ3V_5tokio4util17idle_notified_setINtB5_15IdleNotifiedSetINtNtNtNtB9_7runtime4task4join10JoinHandleuEE3newCsi17nFaBu4HY_10ech_client() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs4okMlIQ9Z13_2h25frame6reason6ReasonNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB4_4NameNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr15record_type_set13RecordTypeSetNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18EchConfigExtensionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCsl0TPHHzpGH6_5bytes3fmt5debugNtNtB8_5bytes5BytesNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtCsjpgBhlqJ253_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsj_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8DnsErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCs5MfxasYgTEl_11hickory_net5error8DnsErrorNtNtCsj6eKBz9Db1c_4core5error5Error5causeCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCsjXdHNeFfodD_13hickory_proto5errorNtB5_10ProtoErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsjXdHNeFfodD_13hickory_proto5error10ProtoErrorNtNtCsj6eKBz9Db1c_4core5error5Error5causeCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCs7ZUl82OSlxp_6rustls5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error5causeCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs5MfxasYgTEl_11hickory_net4http10SetHeadersEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsjpgBhlqJ253_12tracing_core10subscriber10SubscriberNtNtCsj6eKBz9Db1c_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ClientSessionStoreEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsdaVh6l1oWST_15futures_channel4mpsc12BoundedInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEEE9drop_slowB3i_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsdaVh6l1oWST_15futures_channel4mpsc12BoundedInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestEE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsdaVh6l1oWST_15futures_channel4mpsc12BoundedInnerNtNtNtCsjXdHNeFfodD_13hickory_proto2op14serial_message13SerialMessageEE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsdaVh6l1oWST_15futures_channel7oneshot5InnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17DnsResponseStreamEE9drop_slowB1y_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCskruEhpekJ3V_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSettEE9drop_slowCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
end_hunk_2
begin_hunk_3_@_RNvXsm_NtNtCsj6eKBz9Db1c_4core3fmt3numtNtB7_8LowerHex3fmt

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigENtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionNtNtNtB8_3net11socket_addr10SocketAddrENtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorNtNtCsj6eKBz9Db1c_4core5error5Error5causeCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_hEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCskruEhpekJ3V_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCskruEhpekJ3V_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxShEE16into_boxed_sliceCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_CseieIppCIYdI_4slabINtB5_4SlabNtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex6WaiterE9insert_atCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32), ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXs5_CseieIppCIYdI_4slabINtB5_4SlabNtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex6WaiterEINtNtNtCsj6eKBz9Db1c_4core3ops5index8IndexMutjE9index_mutCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexNtB5_6Waiter8register(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsjSDXC2TkEdJ_4http6header5value10ToStrErrorENtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs5MfxasYgTEl_11hickory_net5error8DnsErrorNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs4okMlIQ9Z13_2h25error5ErrorENtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsjXdHNeFfodD_13hickory_proto5error10ProtoErrorNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtB8_2io5error5ErrorENtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error5ErrorNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCsj6eKBz9Db1c_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error25EncryptedClientHelloErrorNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error14InvalidMessageNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error16PeerIncompatibleNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error14PeerMisbehavedNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error16CertificateErrorNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error23CertRevocationListErrorNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error16InconsistentKeysNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsjXdHNeFfodD_13hickory_proto2op13response_code12ResponseCodeNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs5MfxasYgTEl_11hickory_net5error9NoRecordsNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt17pointer_fmt_inner(i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtCs4okMlIQ9Z13_2h25error5ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3opt8EdnsCodeNtB16_10EdnsOptionEENtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEINtNtNtBa_5slice4iter4IterB14_EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeINtNtNtBa_5slice4iter4IterB14_EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeINtNtNtBa_5slice4iter4IterB14_EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs9RFwvXNxPyg_16hickory_resolver6config16ConnectionConfigINtNtNtBa_5slice4iter4IterB14_EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierINtNtNtBa_5slice4iter4IterB14_EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3opt8EdnsCodeNtB17_10EdnsOptionEINtNtNtBa_5slice4iter4IterB14_EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtCsl0TPHHzpGH6_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { noinline }
attributes #23 = { noinline noreturn }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { cold }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!5 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!6 = !{}
!7 = !{i64 8}
!8 = !{!9, !11, !13}
!9 = distinct !{!9, !10, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut8put_uintCsi17nFaBu4HY_10ech_client: argument 0"}
!10 = distinct !{!10, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut8put_uintCsi17nFaBu4HY_10ech_client"}
!11 = distinct !{!11, !12, !"_RINvMNtNtCs4okMlIQ9Z13_2h25frame4headNtB3_4Head6encodeNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECsi17nFaBu4HY_10ech_client: argument 0"}
!12 = distinct !{!12, !"_RINvMNtNtCs4okMlIQ9Z13_2h25frame4headNtB3_4Head6encodeNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECsi17nFaBu4HY_10ech_client"}
!13 = distinct !{!13, !12, !"_RINvMNtNtCs4okMlIQ9Z13_2h25frame4headNtB3_4Head6encodeNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECsi17nFaBu4HY_10ech_client: argument 1"}
!14 = !{!11}
!15 = !{!16, !11, !13}
!16 = distinct !{!16, !17, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csi17nFaBu4HY_10ech_client: argument 0"}
!17 = distinct !{!17, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csi17nFaBu4HY_10ech_client"}
!18 = !{!19, !11, !13}
!19 = distinct !{!19, !20, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csi17nFaBu4HY_10ech_client: argument 0"}
!20 = distinct !{!20, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csi17nFaBu4HY_10ech_client"}
!21 = !{!22, !11, !13}
!22 = distinct !{!22, !23, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32Csi17nFaBu4HY_10ech_client: argument 0"}
!23 = distinct !{!23, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32Csi17nFaBu4HY_10ech_client"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32Csi17nFaBu4HY_10ech_client: argument 0"}
!26 = distinct !{!26, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32Csi17nFaBu4HY_10ech_client"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut8put_uintCsi17nFaBu4HY_10ech_client: argument 0"}
!29 = distinct !{!29, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut8put_uintCsi17nFaBu4HY_10ech_client"}
!30 = !{i8 0, i8 11}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csi17nFaBu4HY_10ech_client: argument 0"}
!33 = distinct !{!33, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csi17nFaBu4HY_10ech_client"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csi17nFaBu4HY_10ech_client: argument 0"}
!36 = distinct !{!36, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csi17nFaBu4HY_10ech_client"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32Csi17nFaBu4HY_10ech_client: argument 0"}
!39 = distinct !{!39, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32Csi17nFaBu4HY_10ech_client"}
!40 = !{!41, !43, !45}
!41 = distinct !{!41, !42, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut8put_uintCsi17nFaBu4HY_10ech_client: argument 0"}
!42 = distinct !{!42, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut8put_uintCsi17nFaBu4HY_10ech_client"}
!43 = distinct !{!43, !44, !"_RINvMNtNtCs4okMlIQ9Z13_2h25frame4headNtB3_4Head6encodeNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECsi17nFaBu4HY_10ech_client: argument 0"}
!44 = distinct !{!44, !"_RINvMNtNtCs4okMlIQ9Z13_2h25frame4headNtB3_4Head6encodeNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECsi17nFaBu4HY_10ech_client"}
!45 = distinct !{!45, !44, !"_RINvMNtNtCs4okMlIQ9Z13_2h25frame4headNtB3_4Head6encodeNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECsi17nFaBu4HY_10ech_client: argument 1"}
!46 = !{!43}
!47 = !{!48, !43, !45}
!48 = distinct !{!48, !49, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csi17nFaBu4HY_10ech_client: argument 0"}
!49 = distinct !{!49, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csi17nFaBu4HY_10ech_client"}
!50 = !{!51, !43, !45}
!51 = distinct !{!51, !52, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csi17nFaBu4HY_10ech_client: argument 0"}
!52 = distinct !{!52, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csi17nFaBu4HY_10ech_client"}
!53 = !{!54, !43, !45}
!54 = distinct !{!54, !55, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32Csi17nFaBu4HY_10ech_client: argument 0"}
!55 = distinct !{!55, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32Csi17nFaBu4HY_10ech_client"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32Csi17nFaBu4HY_10ech_client: argument 0"}
!58 = distinct !{!58, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32Csi17nFaBu4HY_10ech_client"}
!59 = !{!60, !62, !64}
!60 = distinct !{!60, !61, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut8put_uintCsi17nFaBu4HY_10ech_client: argument 0"}
!61 = distinct !{!61, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut8put_uintCsi17nFaBu4HY_10ech_client"}
!62 = distinct !{!62, !63, !"_RINvMNtNtCs4okMlIQ9Z13_2h25frame4headNtB3_4Head6encodeNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECsi17nFaBu4HY_10ech_client: argument 0"}
!63 = distinct !{!63, !"_RINvMNtNtCs4okMlIQ9Z13_2h25frame4headNtB3_4Head6encodeNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECsi17nFaBu4HY_10ech_client"}
!64 = distinct !{!64, !63, !"_RINvMNtNtCs4okMlIQ9Z13_2h25frame4headNtB3_4Head6encodeNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECsi17nFaBu4HY_10ech_client: argument 1"}
!65 = !{!62}
!66 = !{!67, !62, !64}
!67 = distinct !{!67, !68, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csi17nFaBu4HY_10ech_client: argument 0"}
!68 = distinct !{!68, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csi17nFaBu4HY_10ech_client"}
!69 = !{!70, !62, !64}
!70 = distinct !{!70, !71, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csi17nFaBu4HY_10ech_client: argument 0"}
!71 = distinct !{!71, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8Csi17nFaBu4HY_10ech_client"}
!72 = !{!73, !62, !64}
!73 = distinct !{!73, !74, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32Csi17nFaBu4HY_10ech_client: argument 0"}
!74 = distinct !{!74, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32Csi17nFaBu4HY_10ech_client"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32Csi17nFaBu4HY_10ech_client: argument 0"}
!77 = distinct !{!77, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32Csi17nFaBu4HY_10ech_client"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32Csi17nFaBu4HY_10ech_client: argument 0"}
!80 = distinct !{!80, !"_RNvYNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32Csi17nFaBu4HY_10ech_client"}
!81 = !{i8 0, i8 3}
!82 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!83 = !{!84, !86}
!84 = distinct !{!84, !85, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client: argument 0"}
!85 = distinct !{!85, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client"}
!86 = distinct !{!86, !85, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client: argument 1"}
!87 = !{!88, !90}
!88 = distinct !{!88, !89, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client: argument 0"}
!89 = distinct !{!89, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client"}
!90 = distinct !{!90, !89, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client: argument 1"}
!91 = !{!92, !94}
!92 = distinct !{!92, !93, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client: argument 0"}
!93 = distinct !{!93, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client"}
!94 = distinct !{!94, !93, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client: argument 1"}
!95 = !{!96, !98, !100}
!96 = distinct !{!96, !97, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtCs7ZUl82OSlxp_6rustls5error5ErrorE3newCsi17nFaBu4HY_10ech_client: argument 0"}
!97 = distinct !{!97, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtCs7ZUl82OSlxp_6rustls5error5ErrorE3newCsi17nFaBu4HY_10ech_client"}
!98 = distinct !{!98, !99, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCs7ZUl82OSlxp_6rustls5error5ErrorE4fromCsi17nFaBu4HY_10ech_client: argument 0"}
!99 = distinct !{!99, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCs7ZUl82OSlxp_6rustls5error5ErrorE4fromCsi17nFaBu4HY_10ech_client"}
!100 = distinct !{!100, !101, !"_RNvXs1_NtCsj6eKBz9Db1c_4core7convertNtNtCs7ZUl82OSlxp_6rustls5error5ErrorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2f_4SyncEL_EE4intoCsi17nFaBu4HY_10ech_client: argument 0"}
!101 = distinct !{!101, !"_RNvXs1_NtCsj6eKBz9Db1c_4core7convertNtNtCs7ZUl82OSlxp_6rustls5error5ErrorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2f_4SyncEL_EE4intoCsi17nFaBu4HY_10ech_client"}
!102 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!103 = !{!98, !100}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv29send_connection_window_updateINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2f_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client: argument 0"}
!106 = distinct !{!106, !"_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv29send_connection_window_updateINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2f_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client"}
!107 = !{!108, !109}
!108 = distinct !{!108, !106, !"_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv29send_connection_window_updateINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2f_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client: argument 1"}
!109 = distinct !{!109, !106, !"_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv29send_connection_window_updateINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2f_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client: argument 2"}
!110 = !{!105, !108, !109}
!111 = !{!112, !114, !105, !108, !109}
!112 = distinct !{!112, !113, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client: argument 0"}
!113 = distinct !{!113, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client"}
!114 = distinct !{!114, !113, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client: argument 1"}
!115 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!116 = !{!117, !119, !120}
!117 = distinct !{!117, !118, !"_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv26send_stream_window_updatesINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2c_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client: argument 0"}
!118 = distinct !{!118, !"_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv26send_stream_window_updatesINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2c_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client"}
!119 = distinct !{!119, !118, !"_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv26send_stream_window_updatesINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2c_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client: argument 2"}
!120 = distinct !{!120, !118, !"_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv26send_stream_window_updatesINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2c_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client: argument 3"}
!121 = !{!117, !122, !119, !120, !123}
!122 = distinct !{!122, !118, !"_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv26send_stream_window_updatesINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2c_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client: argument 1"}
!123 = distinct !{!123, !118, !"_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams4recvNtB3_4Recv26send_stream_window_updatesINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2c_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECsi17nFaBu4HY_10ech_client: argument 4"}
!124 = !{i32 0, i32 2}
!125 = !{!126, !128}
!126 = distinct !{!126, !127, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client: argument 0"}
!127 = distinct !{!127, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client"}
!128 = distinct !{!128, !127, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtCs4okMlIQ9Z13_2h25codec5error9UserErrorE6expectCsi17nFaBu4HY_10ech_client: argument 1"}
!129 = !{i8 0, i8 12}
!130 = !{i64 0, i64 2}
!131 = !{i8 0, i8 2}
!132 = !{i8 -1, i8 3}
!133 = !{i64 0, i64 -9223372036854775808}
!134 = !{i64 1, i64 536870913}
!135 = !{i64 -1, i64 -9223372036854775808}
!136 = !{i16 0, i16 3}
!137 = !{!138, !140, !142}
!138 = distinct !{!138, !139, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEECsi17nFaBu4HY_10ech_client: argument 0"}
!139 = distinct !{!139, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEECsi17nFaBu4HY_10ech_client"}
!140 = distinct !{!140, !141, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op11dns_request10DnsRequestECsi17nFaBu4HY_10ech_client: argument 0"}
!141 = distinct !{!141, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op11dns_request10DnsRequestECsi17nFaBu4HY_10ech_client"}
!142 = distinct !{!142, !143, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestECsi17nFaBu4HY_10ech_client: argument 0"}
!143 = distinct !{!143, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestECsi17nFaBu4HY_10ech_client"}
!144 = !{!145, !140, !142}
!145 = distinct !{!145, !146, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEECsi17nFaBu4HY_10ech_client: argument 0"}
!146 = distinct !{!146, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEECsi17nFaBu4HY_10ech_client"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCsdaVh6l1oWST_15futures_channel7oneshot5InnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17DnsResponseStreamEEECsi17nFaBu4HY_10ech_client: argument 0"}
!149 = distinct !{!149, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCsdaVh6l1oWST_15futures_channel7oneshot5InnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17DnsResponseStreamEEECsi17nFaBu4HY_10ech_client"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsdaVh6l1oWST_15futures_channel7oneshot5InnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17DnsResponseStreamEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client: argument 0"}
!152 = distinct !{!152, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsdaVh6l1oWST_15futures_channel7oneshot5InnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17DnsResponseStreamEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client"}
!153 = !{!151, !148, !154, !142}
!154 = distinct !{!154, !155, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdaVh6l1oWST_15futures_channel7oneshot6SenderNtNtCs5MfxasYgTEl_11hickory_net4xfer17DnsResponseStreamEECsi17nFaBu4HY_10ech_client: argument 0"}
!155 = distinct !{!155, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdaVh6l1oWST_15futures_channel7oneshot6SenderNtNtCs5MfxasYgTEl_11hickory_net4xfer17DnsResponseStreamEECsi17nFaBu4HY_10ech_client"}
!156 = !{!151, !148}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCsdaVh6l1oWST_15futures_channel7oneshot5InnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17DnsResponseStreamEEECsi17nFaBu4HY_10ech_client: argument 0"}
!159 = distinct !{!159, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCsdaVh6l1oWST_15futures_channel7oneshot5InnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17DnsResponseStreamEEECsi17nFaBu4HY_10ech_client"}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsdaVh6l1oWST_15futures_channel7oneshot5InnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17DnsResponseStreamEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client: argument 0"}
!162 = distinct !{!162, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsdaVh6l1oWST_15futures_channel7oneshot5InnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17DnsResponseStreamEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client"}
!163 = !{!161, !158, !154, !142}
!164 = !{!161, !158}
!165 = !{i64 0, i64 3}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span5InnerECsi17nFaBu4HY_10ech_client: argument 0"}
!168 = distinct !{!168, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span5InnerECsi17nFaBu4HY_10ech_client"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjpgBhlqJ253_12tracing_core10dispatcher8DispatchECsi17nFaBu4HY_10ech_client: argument 0"}
!171 = distinct !{!171, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjpgBhlqJ253_12tracing_core10dispatcher8DispatchECsi17nFaBu4HY_10ech_client"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsjpgBhlqJ253_12tracing_core10dispatcher4KindINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECsi17nFaBu4HY_10ech_client: argument 0"}
!174 = distinct !{!174, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsjpgBhlqJ253_12tracing_core10dispatcher4KindINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECsi17nFaBu4HY_10ech_client"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCsjpgBhlqJ253_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECsi17nFaBu4HY_10ech_client: argument 0"}
!177 = distinct !{!177, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCsjpgBhlqJ253_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECsi17nFaBu4HY_10ech_client"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsjpgBhlqJ253_12tracing_core10subscriber10SubscriberNtNtCsj6eKBz9Db1c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client: argument 0"}
!180 = distinct !{!180, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsjpgBhlqJ253_12tracing_core10subscriber10SubscriberNtNtCsj6eKBz9Db1c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client"}
!181 = !{!179, !176, !173, !170, !167}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsi17nFaBu4HY_10ech_client: argument 0"}
!184 = distinct !{!184, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsi17nFaBu4HY_10ech_client"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_thread6HandleEECsi17nFaBu4HY_10ech_client: argument 0"}
!187 = distinct !{!187, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_thread6HandleEECsi17nFaBu4HY_10ech_client"}
!188 = !{!189}
end_hunk_3
