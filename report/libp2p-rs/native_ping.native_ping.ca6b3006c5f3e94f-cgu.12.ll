Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/native_ping.native_ping.ca6b3006c5f3e94f-cgu.12?download=true
inline.NumInlined: 2807
inline.NumDeleted: 1370
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXNtCscK5W4trzgIe_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEINtB5_7ContextB1a_B1M_E7contextReECshnt8FRa5Rut_11native_ping:bb.a
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.e = call noundef nonnull ptr @_RINvXNtNtCscK5W4trzgIe_6anyhow7context3extNtNtCsG258MDvU3F_3std3env8VarErrorNtB3_8StdError11ext_contextReECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCscK5W4trzgIe_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs44McOc0n4RX_13interop_tests4arch6native11RedisClientNtB5_5ErrorEINtB5_7ContextB1a_B28_E7contextReECshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) initializes((0, 4), (8, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !69, !noundef !18
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !18, !noundef !18
  %i.e = tail call noundef nonnull ptr @_RINvXs_NtNtCscK5W4trzgIe_6anyhow7context3extNtB9_5ErrorNtB5_8StdError11ext_contextReECshnt8FRa5Rut_11native_ping(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCskGfSpwhqogB_11netlink_sys5tokioNtB6_11TokioSocketNtNtB8_12async_socket11AsyncSocket14poll_recv_fromNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2, ptr noalias nofree noundef align 8 dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 17
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.u, %bb.a
  %i.w = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.x = icmp ult i64 %i.w, 6
  call void @llvm.assume(i1 %i.x)
  %i.y = icmp samesign ugt i64 %i.w, 4
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @38, ptr %i.i, align 8
  store i64 18, ptr %i.j, align 8
  store ptr @38, ptr %i.k, align 8
  store i64 18, ptr %i.l, align 8
  store ptr @37, ptr %i.m, align 8
  call void @_RINvNtCscIBp6mpAwK8_3log13___private_api3loguNtB2_12GlobalLoggerECshnt8FRa5Rut_11native_ping(ptr noundef nonnull @35, ptr noundef nonnull inttoptr (i64 43 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMNtNtCsc13h7DQFCSE_5tokio2io8async_fdINtB2_7AsyncFdNtNtCskGfSpwhqogB_11netlink_sys6socket6SocketE15poll_read_readyCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.z = load i8, ptr %i.n, align 1, !range !5219, !noundef !18 ; 3 uses
  %i.aa = icmp eq i8 %i.z, -2
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %0, align 8
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %.sroa.07.0.copyload = load ptr, ptr %i.g, align 8 ; 3 uses
  %i.ab = icmp eq i8 %i.z, -1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload) ]
  store i32 1, ptr %0, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.07.0.copyload, ptr %.sroa.429.0..sroa_idx, align 8
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.415.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.3.0..sroa_idx, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.0..sroa_idx, i64 6, i1 false)
  store ptr %.sroa.07.0.copyload, ptr %i.h, align 8
  store i8 %i.z, ptr %.sroa.5.0..sroa_idx, align 1
  %i.ac = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 6
  call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp samesign ugt i64 %i.ac, 4
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @38, ptr %i.f, align 8
  store i64 18, ptr %i.o, align 8
  store ptr @38, ptr %i.p, align 8
  store i64 18, ptr %i.q, align 8
  store ptr @40, ptr %i.r, align 8
  call void @_RINvNtCscIBp6mpAwK8_3log13___private_api3loguNtB2_12GlobalLoggerECshnt8FRa5Rut_11native_ping(ptr noundef nonnull @39, ptr noundef nonnull inttoptr (i64 85 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvMs3_NtNtCsc13h7DQFCSE_5tokio2io8async_fdINtB6_17AsyncFdReadyGuardNtNtCskGfSpwhqogB_11netlink_sys6socket6SocketE6try_ioTjNtNtB19_4addr10SocketAddrENCINvXs0_NtB19_5tokioNtB2x_11TokioSocketNtNtB19_12async_socket11AsyncSocket14poll_recv_fromNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0ECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %3)
  %i.af = load i64, ptr %i.e, align 8, !range !17, !noundef !18
  %i.ag = icmp eq i64 %i.af, 2
  br i1 %i.ag, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ah = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 6
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp samesign ugt i64 %i.ah, 4
  br i1 %i.aj, label %bb.t, label %bb.u

bb.l:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.d, align 8, !range !21, !noundef !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val39 = load ptr, ptr %i.al, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultTjNtNtCskGfSpwhqogB_11netlink_sys4addr10SocketAddrENtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping(i64 %.val, ptr %.val39) #30
          to label %bb.s unwind label %bb.r

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.am = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.an = icmp ult i64 %i.am, 6
  call void @llvm.assume(i1 %i.an)
  %i.ao = icmp samesign ugt i64 %i.am, 4
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXst_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTjNtNtCskGfSpwhqogB_11netlink_sys4addr10SocketAddrENtNtNtB7_2io5error5ErrorENtNtB7_3fmt5Debug3fmtCshnt8FRa5Rut_11native_ping, ptr %.sroa.433.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @38, ptr %i.b, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 18, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @38, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 18, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @42, ptr %i.as, align 8
  invoke void @_RINvNtCscIBp6mpAwK8_3log13___private_api3loguNtB2_12GlobalLoggerECshnt8FRa5Rut_11native_ping(ptr noundef nonnull @41, ptr noundef nonnull %i.c, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %bb.p unwind label %bb.l

bb.o:                                             ; preds = %bb.m, %bb.p
  %.sroa.019.0.copyload = load i64, ptr %i.d, align 8 ; 2 uses
  %i.at = trunc nuw i64 %.sroa.019.0.copyload to i1 ; 2 uses
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.420.0.copyload = load ptr, ptr %.sroa.420.0..sroa_idx, align 8, !nonnull !18
  %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.sroa.521.sroa.4.0.copyload = load ptr, ptr %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx.sroa_idx, align 4
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.521.sroa.0.0.copyload = load i32, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.618.0 = select i1 %i.at, ptr %.sroa.420.0.copyload, ptr %.sroa.521.sroa.4.0.copyload
  %.sroa.517.0 = select i1 %i.at, i32 undef, i32 %.sroa.521.sroa.0.0.copyload
  %i.au = trunc nuw i64 %.sroa.019.0.copyload to i32
  store i32 %i.au, ptr %0, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.517.0, ptr %.sroa.517.0..sroa_idx, align 4
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.618.0, ptr %.sroa.618.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.q:                                             ; preds = %bb.v, %bb.o
  ret void

bb.r:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.s:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.ak

bb.t:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @38, ptr %i.a, align 8
  store i64 18, ptr %i.s, align 8
  store ptr @38, ptr %i.t, align 8
  store i64 18, ptr %i.u, align 8
  store ptr @44, ptr %i.v, align 8
  call void @_RINvNtCscIBp6mpAwK8_3log13___private_api3loguNtB2_12GlobalLoggerECshnt8FRa5Rut_11native_ping(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 67 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.u:                                             ; preds = %bb.k, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.b

bb.v:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs7_NtCs79iw4ZC9yCo_10serde_json5errorNtB6_5ErrorNtNtCscWOm1fvf9pm_10serde_core3ser5Error6customReECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5229
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !5229
  %i.c = load i64, ptr %i.a, align 8, !range !21, !noalias !5229, !noundef !18
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !25, !noalias !5229, !noundef !18 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshnt8FRa5Rut_11native_ping.exit.i.i.i, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !5229
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #33, !noalias !5229
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshnt8FRa5Rut_11native_ping.exit.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !5229, !nonnull !18, !noundef !18 ; 2 uses
  %i.j = icmp ule i64 %1, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5229
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringReNtB5_8ToString9to_stringCshnt8FRa5Rut_11native_ping.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshnt8FRa5Rut_11native_ping.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %1, i1 false), !noalias !5230
  br label %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringReNtB5_8ToString9to_stringCshnt8FRa5Rut_11native_ping.exit

_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringReNtB5_8ToString9to_stringCshnt8FRa5Rut_11native_ping.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshnt8FRa5Rut_11native_ping.exit.i.i.i, %bb.c
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !5231
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !5231
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !5231
  %i.k = call noundef nonnull align 8 ptr @_RNvNtCs79iw4ZC9yCo_10serde_json5error10make_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.k
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter7WindowshEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1s_3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2F_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3B_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4E_6server9TlsStreamB5p_EEB5p_EE15receive_request00E0INtNtNtBb_3ops12control_flow11ControlFlowuEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5242)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !61, !alias.scope !5243, !noundef !18 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !5243, !nonnull !18 ; 2 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !5243 ; 3 uses
  %i.e = icmp eq i64 %i.c, 4
  %i.f = icmp ugt i64 %.promoted.i, 3
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.lr.ph.split.us.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBS_8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2L_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3H_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4K_6server9TlsStreamB5v_EEB5v_EE15receive_request00E0INtNtNtBa_3ops12control_flow11ControlFlowuEECshnt8FRa5Rut_11native_ping.exit

.lr.ph.split.us.i:                                ; preds = %bb.a
  %i.g = sub nuw i64 %.promoted.i, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  %i.i = add i64 %.promoted.i, -1                 ; 3 uses
  %i.j = load i32, ptr %i.h, align 1, !alias.scope !5244, !noalias !5242, !noundef !18
  %i.k = icmp eq i32 %i.j, 168626701
  br i1 %i.k, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBS_8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2L_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3H_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4K_6server9TlsStreamB5v_EEB5v_EE15receive_request00E0INtNtNtBa_3ops12control_flow11ControlFlowuEECshnt8FRa5Rut_11native_ping.exit, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cshnt8FRa5Rut_11native_ping.exit.backedge.us.i.preheader

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cshnt8FRa5Rut_11native_ping.exit.backedge.us.i.preheader: ; preds = %.lr.ph.split.us.i
  %.not19.i3 = icmp ugt i64 %i.i, 3
  br i1 %.not19.i3, label %.split.us.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBS_8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2L_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3H_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4K_6server9TlsStreamB5v_EEB5v_EE15receive_request00E0INtNtNtBa_3ops12control_flow11ControlFlowuEECshnt8FRa5Rut_11native_ping.exit

.split.us.i:                                      ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cshnt8FRa5Rut_11native_ping.exit.backedge.us.i.preheader, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cshnt8FRa5Rut_11native_ping.exit.backedge.us.i
  %storemerge.i.i9.us16.i4 = phi i64 [ %i.l, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cshnt8FRa5Rut_11native_ping.exit.backedge.us.i ], [ %i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cshnt8FRa5Rut_11native_ping.exit.backedge.us.i.preheader ] ; 2 uses
  %i.l = add i64 %storemerge.i.i9.us16.i4, -1     ; 3 uses
  %i.m = getelementptr i8, ptr %i.d, i64 %storemerge.i.i9.us16.i4
  %i.n = getelementptr i8, ptr %i.m, i64 -4
  %i.o = load i32, ptr %i.n, align 1, !alias.scope !5244, !noalias !5242, !noundef !18
  %i.p = icmp eq i32 %i.o, 168626701              ; 3 uses
  br i1 %i.p, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBS_8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2L_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3H_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4K_6server9TlsStreamB5v_EEB5v_EE15receive_request00E0INtNtNtBa_3ops12control_flow11ControlFlowuEECshnt8FRa5Rut_11native_ping.exit, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cshnt8FRa5Rut_11native_ping.exit.backedge.us.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cshnt8FRa5Rut_11native_ping.exit.backedge.us.i: ; preds = %.split.us.i
  %.not19.i = icmp ugt i64 %i.l, 3
  br i1 %.not19.i, label %.split.us.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBS_8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2L_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3H_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4K_6server9TlsStreamB5v_EEB5v_EE15receive_request00E0INtNtNtBa_3ops12control_flow11ControlFlowuEECshnt8FRa5Rut_11native_ping.exit

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBS_8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB2L_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB3H_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4K_6server9TlsStreamB5v_EEB5v_EE15receive_request00E0INtNtNtBa_3ops12control_flow11ControlFlowuEECshnt8FRa5Rut_11native_ping.exit: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cshnt8FRa5Rut_11native_ping.exit.backedge.us.i, %.split.us.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cshnt8FRa5Rut_11native_ping.exit.backedge.us.i.preheader, %bb.a, %.lr.ph.split.us.i
  %storemerge.i.i.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.i, %.lr.ph.split.us.i ], [ 0, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cshnt8FRa5Rut_11native_ping.exit.backedge.us.i.preheader ], [ %i.l, %.split.us.i ], [ 0, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cshnt8FRa5Rut_11native_ping.exit.backedge.us.i ]
  %.lcssa.i = phi i1 [ false, %bb.a ], [ true, %.lr.ph.split.us.i ], [ false, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cshnt8FRa5Rut_11native_ping.exit.backedge.us.i.preheader ], [ %i.p, %.split.us.i ], [ %i.p, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNCNvMNtNtCs4wN8za6y8UK_7soketto9handshake6serverINtB1l_6ServerINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIB2h_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB3k_6server9TlsStreamB45_EEB45_EE15receive_request00E0Cshnt8FRa5Rut_11native_ping.exit.backedge.us.i ]
  store i64 %storemerge.i.i.lcssa.i, ptr %i.a, align 8, !alias.scope !5243
  ret i1 %.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsl_NtCs5hzaM3VbZx4_5redis5typesNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_11ToRedisArgs16write_redis_argsNtNtB8_3cmd3CmdECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !18, !noundef !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !18
  tail call void @_RNvXs4_NtCs5hzaM3VbZx4_5redis3cmdNtB5_3CmdNtNtB7_5types10RedisWrite9write_arg(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs5hzaM3VbZx4_5redis3aio27execute_connection_pipelineINtNtNtCs3r7LNfiWgbg_10tokio_util5codec6framed6FramedINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_11AsyncStreamNtNtB1T_6marker4SendNtB3e_4SyncEL_EENtNtNtB6_6parser11aio_support10ValueCodecEE0Cshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.361 = alloca [55 x i8], align 1          ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.1054 = alloca [39 x i8], align 1         ; 7 uses
  %.sroa.3 = alloca [31 x i8], align 1            ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 281 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !range !55, !noundef !18
  switch i8 %i.k, label %default.unreachable75 [
    i8 0, label %bb.c
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.p
    i8 4, label %bb.b
  ]

default.unreachable75:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1054)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i8 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !18, !align !19, !noundef !18 ; 2 uses
  store ptr %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.p, i64 80, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  %i.s = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.s, align 8, !noundef !18 ; 3 uses
  %i.t = icmp ult i64 %.val, 128102389400760776
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.val, ptr %i.u, align 8
end_hunk_0
