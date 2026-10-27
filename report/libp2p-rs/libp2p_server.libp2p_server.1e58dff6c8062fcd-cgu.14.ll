Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.14?download=true
inline.NumInlined: 3209
inline.NumDeleted: 1562
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvXs_NtCs5xzCmWPONXx_11libp2p_quic9transportINtB6_12GenTransportNtNtNtB8_8provider5tokio8ProviderENtNtCsdTHTBGblh3Z_11libp2p_core9transport9Transport4dials_0Cs2Bxje7pdMIr_13libp2p_server:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  invoke void @_RNvMNtCsaRn6AFvch86_5quinn8endpointNtB2_8Endpoint12connect_with(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 1)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !3893)
  %i.n = load i64, ptr %i.e, align 8, !range !26, !alias.scope !3894, !noundef !17
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !alias.scope !3895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false), !alias.scope !3896
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 0, ptr %i.i, align 1
  %i.q = load i64, ptr %1, align 8, !noundef !17
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !range !61, !noundef !17
  invoke void @_RNvMNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connectingNtB2_10Connecting3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.f, i64 noundef %i.q, i32 noundef %i.s)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.i:                                             ; preds = %bb.v, %bb.r, %bb.g
  %.pn8 = phi { ptr, i32 } [ %i.ah, %bb.v ], [ %i.ad, %bb.r ], [ %i.t, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 241
  %i.w = load i8, ptr %i.v, align 1, !range !18, !noundef !17
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.y, label %bb.n

bb.j:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i8 0, ptr %i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsaRn6AFvch86_5quinn8endpoint8EndpointECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(88) %i.j)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.n, %bb.l
  %.pn13 = phi { ptr, i32 } [ %i.y, %bb.l ], [ %.pn10.pn, %bb.n ]
  store i8 2, ptr %i.g, align 8
  resume { ptr, i32 } %.pn13

bb.l:                                             ; preds = %bb.w, %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

common.ret:                                       ; preds = %bb.t, %bb.m
  %storemerge = phi i8 [ 3, %bb.t ], [ 1, %bb.m ]
  store i8 %storemerge, ptr %i.g, align 8
  ret void

bb.m:                                             ; preds = %bb.w, %bb.j
  %.sroa.421.0 = phi ptr [ null, %bb.j ], [ %.sroa.421.0.copyload23, %bb.w ]
  %.sroa.017.0 = phi i64 [ 10, %bb.j ], [ %.sroa.017.0.copyload18, %bb.w ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.017.0, ptr %i.z, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4, i64 40, i1 false)
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.421.0, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.524, i64 48, i1 false)
  store i64 0, ptr %0, align 8
  br label %common.ret

bb.n:                                             ; preds = %bb.y, %bb.d, %bb.i
  %.pn10.pn = phi { ptr, i32 } [ %i.m, %bb.d ], [ %.pn8, %bb.y ], [ %.pn8, %bb.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 241
  store i8 0, ptr %i.aa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsaRn6AFvch86_5quinn8endpoint8EndpointECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ab) #37
          to label %bb.k unwind label %bb.x

bb.o:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #39
  unreachable

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #39
  unreachable

bb.q:                                             ; preds = %bb.c, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  invoke void @_RNvXs0_NtNtCs5xzCmWPONXx_11libp2p_quic10connection10connectingNtB5_10ConnectingNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10ConnectingECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ac) #37
          to label %bb.i unwind label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.ae = load i64, ptr %i.a, align 8, !range !26, !noundef !17
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %common.ret

bb.u:                                             ; preds = %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.017.0.copyload18 = load i64, ptr %i.ag, align 8
  %.sroa.3.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx19, i64 32, i1 false)
  %.sroa.4.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx20, i64 40, i1 false)
  %.sroa.421.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.421.0.copyload23 = load ptr, ptr %.sroa.421.0..sroa_idx22, align 8
  %.sroa.524.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.524, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.524.0..sroa_idx25, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10ConnectingECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ac)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.w:                                             ; preds = %bb.u
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 241
  store i8 0, ptr %i.ai, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsaRn6AFvch86_5quinn8endpoint8EndpointECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(88) %i.aj)
          to label %bb.m unwind label %bb.l

bb.x:                                             ; preds = %bb.y, %bb.r, %bb.n
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.y:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsaRn6AFvch86_5quinn10connection10ConnectingECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #37
          to label %bb.n unwind label %bb.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs5xzCmWPONXx_11libp2p_quic9transportINtB2_12GenTransportNtNtNtB4_8provider5tokio8ProviderE12bound_socketCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(528) %1, i16 %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [32 x i8], align 1          ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [184 x i8], align 8               ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.610 = alloca [56 x i8], align 8          ; 6 uses
  %i.g = alloca [120 x i8], align 8               ; 15 uses
  %i.h = alloca [32 x i8], align 4                ; 5 uses
  %i.i = trunc nuw i16 %.0.val to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !align !21, !noundef !17 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.m = load ptr, ptr %i.l, align 8
  store ptr null, ptr %i.j, align 8
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !17, !noundef !17
  tail call void %i.o(ptr noundef %i.m)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %i.p, i8 0, i64 26, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i32 0, ptr %i.q, align 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  store i16 0, ptr %.sroa.4.0..sroa_idx, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi i16 [ 0, %bb.e ], [ 1, %bb.d ]
  store i16 %storemerge, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RINvNtNtNtCsG258MDvU3F_3std3sys3net10connection9each_addrNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNvNvMsa_NtB2_6socketNtB1T_9UdpSocket4bind5innerB25_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(32) %i.h)
  %i.r = load i32, ptr %i.d, align 8, !range !37, !noundef !17
  %i.s = trunc nuw i32 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !17, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 12, ptr %i.v, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %.sroa.424.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.x = load i32, ptr %i.w, align 4, !range !48, !noundef !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !3908)
  call void @llvm.experimental.noalias.scope.decl(metadata !3909)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3910
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !3909, !nonnull !17, !noundef !17 ; 3 uses
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8, !noalias !3910
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !3909, !nonnull !17, !align !21, !noundef !17 ; 2 uses
  store ptr %i.z, ptr %i.c, align 8, !noalias !3910
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !noalias !3910
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !3909, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3910
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !3909, !nonnull !17, !noundef !17 ; 4 uses
  %i.aj = atomicrmw add ptr %i.ai, i64 1 monotonic, align 8, !noalias !3910
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !3909, !nonnull !17, !align !21, !noundef !17 ; 2 uses
  store ptr %i.ai, ptr %i.b, align 8, !noalias !3910
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.am, ptr %i.an, align 8, !noalias !3910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3910
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
          to label %bb.o unwind label %bb.m, !noalias !3908

bb.l:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = atomicrmw add ptr %i.ai, i64 -1 release, align 8, !noalias !3911
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputINtNtBG_5boxed3BoxDNtNtCsdAHj8hiIvQh_11quinn_proto13cid_generator21ConnectionIdGeneratorEL_ENtNtB4_6marker4SendNtB3g_4SyncEL_EECs2Bxje7pdMIr_13libp2p_server.exit.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputINtNtB7_5boxed3BoxDNtNtCsdAHj8hiIvQh_11quinn_proto13cid_generator21ConnectionIdGeneratorEL_ENtNtBO_6marker4SendNtB33_4SyncEL_E9drop_slowB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #41
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputINtNtBG_5boxed3BoxDNtNtCsdAHj8hiIvQh_11quinn_proto13cid_generator21ConnectionIdGeneratorEL_ENtNtB4_6marker4SendNtB3g_4SyncEL_EECs2Bxje7pdMIr_13libp2p_server.exit.i unwind label %bb.q, !noalias !3908

bb.o:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.as = load i8, ptr %i.ar, align 8, !range !18, !alias.scope !3909, !noundef !17
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !3909, !noundef !17
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !range !61, !alias.scope !3909, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.ay = load i8, ptr %i.ax, align 1, !range !18, !alias.scope !3909, !noundef !17
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull readonly align 2 dereferenceable(32) %i.ba, i64 32, i1 false), !noalias !3908
  br label %bb.s

bb.q:                                             ; preds = %bb.r, %bb.n
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !3908
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputINtNtBG_5boxed3BoxDNtNtCsdAHj8hiIvQh_11quinn_proto13cid_generator21ConnectionIdGeneratorEL_ENtNtB4_6marker4SendNtB3g_4SyncEL_EECs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.n, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !3912)
  call void @llvm.experimental.noalias.scope.decl(metadata !3913)
  %i.bc = load ptr, ptr %i.c, align 8, !alias.scope !3914, !noalias !3910, !nonnull !17, !noundef !17
  %i.bd = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !3915
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.r, label %bb.w

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputINtNtBG_5boxed3BoxDNtNtCsdAHj8hiIvQh_11quinn_proto13cid_generator21ConnectionIdGeneratorEL_ENtNtB4_6marker4SendNtB3g_4SyncEL_EECs2Bxje7pdMIr_13libp2p_server.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsdAHj8hiIvQh_11quinn_proto6crypto7HmacKeyEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #41
          to label %bb.w unwind label %bb.q, !noalias !3908

bb.s:                                             ; preds = %bb.p, %bb.o
  %.sroa.0.0.i = phi i8 [ 1, %bb.p ], [ 0, %bb.o ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.z, ptr %i.bf, align 8, !alias.scope !3908
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.ad, ptr %i.bg, align 8, !alias.scope !3908
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i64 %i.ag, ptr %i.bh, align 8, !alias.scope !3908
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.ai, ptr %i.bi, align 8, !alias.scope !3908
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr %i.am, ptr %i.bj, align 8, !alias.scope !3908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3909
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i8 %i.as, ptr %i.bk, align 8, !alias.scope !3908
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.au, ptr %i.bl, align 8, !alias.scope !3908
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i32 %i.aw, ptr %i.bm, align 8, !alias.scope !3908
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 81
  store i8 %.sroa.0.0.i, ptr %i.bn, align 1, !alias.scope !3908
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.5.i, i64 32, i1 false), !noalias !3909
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3910
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.610)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 2, ptr %i.e, align 8
  call fastcc void @_RNvMNtCs5xzCmWPONXx_11libp2p_quic9transportINtB2_12GenTransportNtNtNtB4_8provider5tokio8ProviderE12new_endpointCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(184) %i.e, i32 noundef %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bo = load ptr, ptr %i.f, align 8, !noundef !17 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.610, ptr noundef nonnull align 8 dereferenceable(56) %i.bq, i64 56, i1 false)
  br i1 %i.bp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.610, i64 56, i1 false)
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.528.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.610, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610)
  store ptr %i.bo, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.v

bb.v:                                             ; preds = %bb.g, %bb.t, %bb.u
  ret void

bb.w:                                             ; preds = %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputINtNtBG_5boxed3BoxDNtNtCsdAHj8hiIvQh_11quinn_proto13cid_generator21ConnectionIdGeneratorEL_ENtNtB4_6marker4SendNtB3g_4SyncEL_EECs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.bs = call noundef i32 @close(i32 noundef %i.x) #33 ; 0 uses
  resume { ptr, i32 } %i.ao
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs5xzCmWPONXx_11libp2p_quic9transportINtB2_12GenTransportNtNtNtB4_8provider5tokio8ProviderE12new_endpointCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(120) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(184) %2, i32 noundef range(i32 0, -1) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 7 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
  %i.d = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #33 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c, !prof !62

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #40
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 1, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.a, ptr noundef nonnull align 8 dereferenceable(184) %2, i64 184, i1 false)
  call void @_RNvMNtCsaRn6AFvch86_5quinn8endpointNtB2_8Endpoint3new(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %i.a, i32 noundef %3, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) @69)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = load ptr, ptr %i.c, align 8, !noundef !17 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.i, ptr %.sroa.417.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.515.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.414.0.copyload.sink = phi ptr [ inttoptr (i64 12 to ptr), %bb.d ], [ %i.i, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.414.0.copyload.sink, ptr %i.j, align 8
  store ptr %i.f, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.i, %.critedge
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = tail call noundef i32 @close(i32 noundef %3) #33 ; 0 uses
  %i.n = load i32, ptr %2, align 8, !range !3918, !alias.scope !3919, !noundef !17
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdAHj8hiIvQh_11quinn_proto6config12ServerConfigECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %2)
          to label %.critedge unwind label %bb.g

.critedge22:                                      ; preds = %.critedge
  resume { ptr, i32 } %i.l

.critedge:                                        ; preds = %bb.i, %bb.h
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdAHj8hiIvQh_11quinn_proto6config14EndpointConfigECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(120) %1) #37
          to label %.critedge22 unwind label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMNtCs5xzCmWPONXx_11libp2p_quic9transportINtB2_12GenTransportNtNtNtB4_8provider5tokio8ProviderE17eligible_listenerCs2Bxje7pdMIr_13libp2p_server(ptr %.392.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = icmp eq ptr %.392.val, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.392.val, i64 736
  %i.f = load i64, ptr %i.e, align 8, !noundef !17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  store ptr %0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.392.val, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.03.0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %0, ptr %i.g, align 8
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecQINtNtCs5xzCmWPONXx_11libp2p_quic9transport8ListenerNtNtNtB10_8provider5tokio8ProviderEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterIB2I_INtNtNtCsl9hx9jpF0W9_12futures_util6stream10select_all7IterMutBV_ENCNvMBY_INtBY_12GenTransportB1K_E17eligible_listener0ENCB4M_s_0EE9from_iterCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !17 ; 4 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.j)
  switch i64 %i.i, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 8317987319222330741, ptr %i.a, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 7816392313619706465, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 7237128888997146477, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 8387220255154660723, ptr %.sroa.619.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.920.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i8 0, i64 40, i1 false)
  call fastcc void @_RINvXsg_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB6_10SocketAddrNtNtBa_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %i.a)
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !alias.scope !3924
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.417.0..sroa_idx, align 8, !alias.scope !3924
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !3924 ; 3 uses
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.619.0..sroa_idx, align 8, !alias.scope !3924
  %i.k = load i64, ptr %.sroa.920.0..sroa_idx, align 8, !alias.scope !3924, !noundef !17
  %i.l = shl i64 %i.k, 56
  %i.m = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !3924, !noundef !17
  %i.n = or i64 %i.l, %i.m                        ; 2 uses
  %i.o = xor i64 %i.n, %.sroa.22.0.copyload.i     ; 3 uses
  %i.p = add i64 %.sroa.17.0.copyload.i, %.sroa.0.0.copyload.i ; 3 uses
  %i.q = add i64 %i.o, %.sroa.10.0.copyload.i     ; 2 uses
  %i.r = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i, i64 %.sroa.17.0.copyload.i, i64 13)
  %i.s = xor i64 %i.r, %i.p                       ; 3 uses
  %i.t = call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 16)
  %i.u = xor i64 %i.t, %i.q                       ; 3 uses
  %i.v = call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 32)
  %i.w = add i64 %i.q, %i.s                       ; 3 uses
  %i.x = add i64 %i.u, %i.v                       ; 2 uses
  %i.y = call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 17)
  %i.z = xor i64 %i.w, %i.y                       ; 3 uses
  %i.aa = call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 21)
  %i.ab = xor i64 %i.aa, %i.x                     ; 3 uses
  %i.ac = call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32)
  %i.ad = xor i64 %i.x, %i.n
  %i.ae = xor i64 %i.ac, 255
  %i.af = add i64 %i.ad, %i.z                     ; 3 uses
  %i.ag = add i64 %i.ab, %i.ae                    ; 2 uses
  %i.ah = call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 13)
  %i.ai = xor i64 %i.af, %i.ah                    ; 3 uses
  %i.aj = call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 16)
  %i.ak = xor i64 %i.aj, %i.ag                    ; 3 uses
  %i.al = call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 32)
  %i.am = add i64 %i.ai, %i.ag                    ; 3 uses
  %i.an = add i64 %i.ak, %i.al                    ; 2 uses
  %i.ao = call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 17)
  %i.ap = xor i64 %i.am, %i.ao                    ; 3 uses
  %i.aq = call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 21)
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %i.as = call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.at = add i64 %i.ap, %i.an                    ; 3 uses
  %i.au = add i64 %i.ar, %i.as                    ; 2 uses
  %i.av = call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 13)
  %i.aw = xor i64 %i.av, %i.at                    ; 3 uses
  %i.ax = call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 16)
  %i.ay = xor i64 %i.ax, %i.au                    ; 3 uses
  %i.az = call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.ba = add i64 %i.aw, %i.au                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 17)
  %i.bd = xor i64 %i.bc, %i.ba                    ; 3 uses
  %i.be = call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 21)
  %i.bf = xor i64 %i.be, %i.bb                    ; 3 uses
  %i.bg = call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.bh = add i64 %i.bd, %i.bb
  %i.bi = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bj = call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 13)
  %i.bk = xor i64 %i.bj, %i.bh                    ; 3 uses
  %i.bl = call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 16)
  %i.bm = xor i64 %i.bl, %i.bi                    ; 2 uses
  %i.bn = add i64 %i.bk, %i.bi                    ; 3 uses
  %i.bo = call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 17)
  %i.bp = call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 21)
end_hunk_0
