Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.09?download=true
inline.NumInlined: 3040
inline.NumDeleted: 1316
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNSNvYNCNCNCINvNtNtCs4LZN9PPmi2I_11hickory_net3udp17udp_client_stream5retryNtNtNtBh_7runtime13tokio_runtime20TokioRuntimeProviderINtBd_10UdpRequestB1b_EE00s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtNtNtB2D_4task4wake7ContextEE9call_once6vtableCs2Bxje7pdMIr_13libp2p_server:bb.a
_RNvYNCNCNCINvNtNtCs4LZN9PPmi2I_11hickory_net3udp17udp_client_stream5retryNtNtNtBf_7runtime13tokio_runtime20TokioRuntimeProviderINtBb_10UdpRequestB19_EE00s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtNtNtB2B_4task4wake7ContextEE9call_onceCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.a, %bb.b
  %storemerge.i.i = phi i64 [ %..i.i, %bb.b ], [ -5, %bb.a ]
  store i64 %storemerge.i.i, ptr %0, align 8, !alias.scope !3066, !noalias !3067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3063
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op7message7MessageNtNtNtNtBN_9serialize6binary7decoder11DecodeErrorE6expectCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(152) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %1, align 8, !range !23, !noundef !13
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 33, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @96, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #30
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto9serialize6binary7decoder11DecodeErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #31
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs4LZN9PPmi2I_11hickory_net3udp17udp_client_streamINtB2_15UdpClientStreamNtNtNtB6_7runtime13tokio_runtime20TokioRuntimeProviderE7builderCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = invoke noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSettEENtNtCskKLDkoKarTP_4core7default7Default7defaultCs2Bxje7pdMIr_13libp2p_server()
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !3076
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECs2Bxje7pdMIr_13libp2p_server.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEE9drop_slowCsa9Jrx9KOzzM_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #33
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i16 2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.b, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 3, ptr %i.l, align 1
  store i64 0, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 333000000, ptr %i.m, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtNtNtCskKLDkoKarTP_4core4iter8adapters5cycleINtB2_5CycleINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejEFjENtNtNtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closest8disjoint13IteratorIndexEE3newCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i = load ptr, ptr %1, align 8, !alias.scope !3080, !noalias !3081, !nonnull !13, !noundef !13
  store ptr %.val2.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x i64>, ptr %i.a, align 8, !alias.scope !3080, !noalias !3081
  store <2 x i64> %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsjQblLEOeBB3_7matchit4treeINtB5_4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdE12insert_routeCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [136 x i8], align 8               ; 20 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [136 x i8], align 8               ; 22 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [136 x i8], align 8               ; 14 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [136 x i8], align 8               ; 21 uses
  %i.j = alloca [136 x i8], align 8               ; 13 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @_RNvNtCsjQblLEOeBB3_7matchit4tree13find_wildcard(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.q = load i64, ptr %i.p, align 8, !range !19, !noundef !13
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.3111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5117.sroa.3.0..sroa.5117.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.5117.sroa.4.0..sroa.5117.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 133
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.sroa.389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 133
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.3111.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4114.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5117.sroa.3.0..sroa.5117.0..sroa_idx118.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5117.sroa.4.0..sroa.5117.0..sroa_idx118.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.397.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.4100.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 133
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.2151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.3152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.sroa.389.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.492.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  br label %bb.a

._crit_edge:                                      ; preds = %bb.aj, %.split
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.558.0.copyload = load i64, ptr %.sroa.558.0..sroa_idx, align 8
  %i.ar = load <2 x i64>, ptr %i.aq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store <2 x i64> %i.ar, ptr %0, align 8
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.558.0.copyload, ptr %.sroa.561.0..sroa_idx, align 8
  br label %bb.ai

bb.a:                                             ; preds = %.lr.ph, %bb.aj
  %.sroa.0.0258 = phi ptr [ %1, %.lr.ph ], [ %i.dh, %bb.aj ] ; 18 uses
  %.sroa.050.0.copyload = load i64, ptr %i.s, align 8
  %.sroa.451.0.copyload = load i64, ptr %.sroa.451.0..sroa_idx, align 8 ; 11 uses
  %.sroa.552.0.copyload = load i64, ptr %.sroa.552.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.as = trunc nuw i64 %.sroa.050.0.copyload to i1
  br i1 %i.as, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.at = load ptr, ptr %2, align 8, !nonnull !13, !noundef !13
  %i.au = load i64, ptr %i.t, align 8, !noundef !13 ; 3 uses
  %i.av = icmp ult i64 %.sroa.552.0.copyload, %.sroa.451.0.copyload
  br i1 %i.av, label %bb.h, label %bb.f, !prof !12

bb.c:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0258, i64 120
  store i32 1, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0258, i64 124
  store i32 %3, ptr %i.ax, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.0.0258)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0258, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0258, ptr %i.az, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.f:                                             ; preds = %bb.b
  %i.ba = sub nuw i64 %.sroa.552.0.copyload, %.sroa.451.0.copyload ; 4 uses
  %.not = icmp ugt i64 %.sroa.552.0.copyload, %i.au
  br i1 %.not, label %bb.h, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.bb = icmp ugt i64 %i.ba, 1
  br i1 %i.bb, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.b
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.451.0.copyload, i64 noundef %.sroa.552.0.copyload, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #34
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.451.0.copyload ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !noundef !13
  %i.bf = icmp eq i8 %i.be, 42
  br i1 %i.bf, label %bb.k, label %bb.w

bb.j:                                             ; preds = %bb.g
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #34
  unreachable

bb.k:                                             ; preds = %bb.i
  %.not173 = icmp eq i64 %.sroa.552.0.copyload, %i.au
  br i1 %.not173, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not174 = icmp eq i64 %.sroa.451.0.copyload, 0
  br i1 %.not174, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.ai

bb.n:                                             ; preds = %bb.q, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.475.0..sroa_idx, align 8
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.576.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store i32 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 132
  store i8 0, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 0, ptr %.sroa.567.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 133
  store i8 3, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  store i64 0, ptr %i.bk, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.469.0..sroa_idx, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store i32 0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.570.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i64 0, ptr %.sroa.564.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store i32 1, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 132
  store i8 0, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 133
  store i8 2, ptr %i.bq, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i32 1, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 124
  store i32 %3, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i)
          to label %bb.r unwind label %bb.u

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.451.0.copyload)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.0.0258)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0258, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.451.0.copyload)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.n

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bw = call fastcc noundef i64 @_RNvMs0_NtCsjQblLEOeBB3_7matchit4treeINtB5_4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdE9add_childCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(136) %.sroa.0.0258, ptr noalias nofree noundef align 8 captures(address) dereferenceable(136) %i.j) ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0258, i64 132
  store i8 1, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0258, i64 88
  %i.bz = load i64, ptr %i.by, align 8, !noundef !13 ; 2 uses
  %i.ca = icmp ult i64 %i.bw, %i.bz
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0258, i64 80
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !13, !noundef !13
  %i.cd = getelementptr inbounds nuw [136 x i8], ptr %i.cc, i64 %i.bw
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cd, ptr %i.ce, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ai

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #30
  unreachable

bb.u:                                             ; preds = %bb.n
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(136) %i.j) #31
          to label %bb.am unwind label %bb.v

bb.v:                                             ; preds = %bb.al, %bb.u
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.w:                                             ; preds = %bb.i
  %i.ch = load i8, ptr %i.bc, align 1, !noundef !13
  %i.ci = icmp eq i8 %i.ch, 123
  br i1 %i.ci, label %bb.x, label %bb.y, !prof !21

bb.x:                                             ; preds = %bb.w
  %.not170 = icmp eq i64 %.sroa.451.0.copyload, 0
  br i1 %.not170, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedhhECs6TEPlfJKwSA_12aho_corasick(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bc, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @99, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #34
  unreachable

bb.z:                                             ; preds = %bb.ac, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.386.0 = call i64 @llvm.usub.sat.i64(i64 %.sroa.552.0.copyload, i64 %.sroa.451.0.copyload)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.386.0)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3111.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4114.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5117.sroa.3.0..sroa.5117.0..sroa_idx.sroa_idx, align 8
  store i32 0, ptr %i.u, align 8
  store i8 0, ptr %i.v, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5117.sroa.4.0..sroa.5117.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.397.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.4100.0..sroa_idx, align 8
  store i8 3, ptr %i.x, align 1
  store i64 0, ptr %i.y, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4104.0..sroa_idx, align 8
  store i32 0, ptr %i.z, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5105.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.389.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.492.0..sroa_idx, align 8
  store i32 0, ptr %i.ac, align 8
  store i8 0, ptr %i.ad, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  store i8 1, ptr %i.af, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.cj = load i32, ptr %i.aa, align 4
  store i32 0, ptr %i.ah, align 8
  store i32 %i.cj, ptr %i.ai, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c)
          to label %bb.ad unwind label %bb.al

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.451.0.copyload)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.0.0258)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0258, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.451.0.copyload)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.z

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cl = call fastcc noundef i64 @_RNvMs0_NtCsjQblLEOeBB3_7matchit4treeINtB5_4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdE9add_childCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(136) %.sroa.0.0258, ptr noalias nofree noundef align 8 captures(address) dereferenceable(136) %i.e) ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0258, i64 132
  store i8 1, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0258, i64 88
  %i.co = load i64, ptr %i.cn, align 8, !noundef !13 ; 2 uses
  %i.cp = icmp ult i64 %i.cl, %i.co
  br i1 %i.cp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0258, i64 80
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !13, !noundef !13
  %i.cs = getelementptr inbounds nuw [136 x i8], ptr %i.cr, i64 %i.cl ; 7 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 128 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !noundef !13
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 8
  %i.cw = load i64, ptr %i.t, align 8, !noundef !13
  %i.cx = icmp ult i64 %i.ba, %i.cw
  br i1 %i.cx, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cl, i64 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #30
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 120
  store i32 1, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 124
  store i32 %3, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %i.da, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3111.0..sroa_idx112, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4114.0..sroa_idx115, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5117.sroa.3.0..sroa.5117.0..sroa_idx118.sroa_idx, align 8
  store i64 0, ptr %.sroa.5117.sroa.4.0..sroa.5117.0..sroa_idx118.sroa_idx, align 8
  store i32 1, ptr %i.ak, align 8
  store i8 0, ptr %i.al, align 4
  store i64 0, ptr %i.am, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.397.0..sroa_idx98, align 8
  store i64 0, ptr %.sroa.4100.0..sroa_idx101, align 8
  store i8 3, ptr %i.an, align 1
  store i64 0, ptr %i.ao, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2151.0..sroa_idx, align 8
  store i32 0, ptr %i.ap, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3152.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.389.0..sroa_idx90, align 8
  store i64 0, ptr %.sroa.492.0..sroa_idx93, align 8
  %i.db = call fastcc noundef i64 @_RNvMs0_NtCsjQblLEOeBB3_7matchit4treeINtB5_4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdE9add_childCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(136) %i.cs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(136) %i.a) ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !13 ; 2 uses
  %i.de = icmp ult i64 %i.db, %i.dd
  br i1 %i.de, label %bb.aj, label %bb.ak

bb.ai:                                            ; preds = %._crit_edge, %bb.m, %bb.e, %bb.s, %bb.ag
  ret void

bb.aj:                                            ; preds = %bb.ah
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !13, !noundef !13
  %i.dh = getelementptr inbounds nuw [136 x i8], ptr %i.dg, i64 %i.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @_RNvNtCsjQblLEOeBB3_7matchit4tree13find_wildcard(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.di = load i64, ptr %i.p, align 8, !range !19, !noundef !13
  %i.dj = trunc nuw i64 %i.di to i1
  br i1 %i.dj, label %._crit_edge, label %bb.a

bb.ak:                                            ; preds = %bb.ah
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.db, i64 noundef %i.dd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #30
  unreachable

bb.al:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(136) %i.e) #31
          to label %bb.am unwind label %bb.v

.sink.split:                                      ; preds = %bb.ab, %bb.p, %bb.d
  %.sink = phi ptr [ %i.n, %bb.d ], [ %i.m, %bb.p ], [ %i.h, %bb.ab ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ay, %bb.d ], [ %i.bv, %bb.p ], [ %i.ck, %bb.ab ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0258, ptr noundef nonnull align 8 dereferenceable(48) %.sink, i64 48, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.u, %bb.al
  %.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.u ], [ %lpad.thr_comm.split-lp, %bb.al ], [ %.pn.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 9223372036854775807) i64 @_RNvMs0_NtCsjQblLEOeBB3_7matchit4treeINtB5_4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdE21update_child_priorityCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, i64 noundef range(i64 0, 9223372036854775807) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !noundef !13 ; 2 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #34
  unreachable

.split:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !13, !noundef !13 ; 3 uses
  %i.g = getelementptr inbounds nuw [136 x i8], ptr %i.f, i64 %1
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !noundef !13
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.h, align 8
  %.not16 = icmp eq i64 %1, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %bb.g
  %.sroa.0.017 = phi i64 [ %i.k, %bb.g ], [ %1, %.split ] ; 3 uses
  %i.k = add nsw i64 %.sroa.0.017, -1             ; 3 uses
  %i.l = getelementptr inbounds nuw [136 x i8], ptr %i.f, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load i32, ptr %i.m, align 8, !noundef !13
  %i.o = icmp ult i32 %i.n, %i.j
  br i1 %i.o, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %.lr.ph, %.split
  %.sroa.0.0.lcssa = phi i64 [ 0, %.split ], [ %.sroa.0.017, %.lr.ph ], [ 0, %bb.g ] ; 6 uses
  %.not12 = icmp eq i64 %.sroa.0.0.lcssa, %1
  br i1 %.not12, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !13, !noundef !13
end_hunk_0
begin_hunk_1_@_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtNtBN_6stream11into_future12StreamFutureINtNtCsjouRnuJWSBB_5yamux13tagged_stream12TaggedStreamNtNtNtB2E_5frame6header8StreamIdINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverNtNtB2E_10connection13StreamCommandEEEEE9drop_slowB2E_

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtNtBN_6stream11into_future12StreamFutureNtNtCskC4O4hr3vz7_10libp2p_kad7handler21InboundSubstreamStateEEE9drop_slowB2D_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCsa9Jrx9KOzzM_16hickory_resolver16name_server_poolINtB23_9PoolStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EE9drop_slowCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs4LZN9PPmi2I_11hickory_net3udp17udp_client_streamINtB1Z_10UdpRequestNtNtNtB23_7runtime13tokio_runtime20TokioRuntimeProviderENtB1Z_7Request4send0EE9drop_slowCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server14ConnectionMetaE9drop_slowCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsaRn6AFvch86_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsaRn6AFvch86_5quinn8endpoint13EndpointInnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsc13h7DQFCSE_5tokio7runtime4park5InnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsdAHj8hiIvQh_11quinn_proto6config9transport15TransportConfigE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade19UpgradedCloseNotifyE9drop_slowCsgrCzhG8IxpI_8igd_next(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs4LZN9PPmi2I_11hickory_net5error13ForwardNSDataE9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcuE9drop_slowCsc13h7DQFCSE_5tokio(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs9Bqz0CSWZZv_12tracing_core5field8FieldSetNtB6_5Debug3fmtCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsu_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtCsjouRnuJWSBB_5yamux10connection13StreamCommandENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsc13h7DQFCSE_5tokio4time7timeout10poll_delay(i1 noundef zeroext, ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs_NtCs5vIp9T9TAX9_10futures_io6if_stdQINtNtNtCsl9hx9jpF0W9_12futures_util2io5split8ReadHalfINtNtNtBL_6future6either6EitherIB1w_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2a_6server9TlsStreamB2V_EEB2V_EENtB4_9AsyncRead9poll_readCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info4vlan14VlanQosMappingENtB6_5Debug3fmtCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link13vlan_protocol12VlanProtocolNtB6_5Debug3fmtCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16ConnectionConfigENtB6_5Debug3fmtCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionNtNtNtB8_3net11socket_addr10SocketAddrENtB6_5Debug3fmtCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordNtNtNtBL_5rdata3soa3SOAEE13new_uninit_inCs2Bxje7pdMIr_13libp2p_server() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordNtNtNtBL_5rdata4tsig4TSIGEE13new_uninit_inCs2Bxje7pdMIr_13libp2p_server() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtCsbTgMbcnmcyu_13hickory_proto5error10ProtoErrorE13new_uninit_inCs2Bxje7pdMIr_13libp2p_server() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryE13new_uninit_inCs2Bxje7pdMIr_13libp2p_server() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameE13new_uninit_inCs2Bxje7pdMIr_13libp2p_server() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabNtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex6WaiterE9insert_atCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32), ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXs5_Csl6TgSXZDiW0_4slabINtB5_4SlabNtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex6WaiterEINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutjE9index_mutCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCsl9hx9jpF0W9_12futures_util4lock5mutexNtB5_6Waiter8register(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16ConnectionConfigINtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtBa_3net7ip_addr8Ipv4AddrINtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtBa_3net7ip_addr8Ipv6AddrINtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route5route4mpls9MplsLabelINtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route5route9next_hops12RouteNextHopINtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link10proto_info5inet618LinkProtoInfoInet6INtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info4vlan14VlanQosMappingINtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info4vlan8InfoVlanINtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs3LwfirTY3Ij_20netlink_packet_route5route9attribute14RouteAttributeENtB6_5Debug3fmtCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #19

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { norecurse nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nounwind }
attributes #30 = { noreturn }
attributes #31 = { cold }
attributes #32 = { cold noreturn nounwind }
attributes #33 = { noinline }
attributes #34 = { noinline noreturn }
attributes #35 = { inlinehint }

!llvm.module.flags = !{!7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !"_RNvXsf_NtNtCsl9hx9jpF0W9_12futures_util4lock5mutexINtB5_15MutexLockFutureNtNtCsa9Jrx9KOzzM_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server"}
!5 = distinct !{!5, !4, !"_RNvXsf_NtNtCsl9hx9jpF0W9_12futures_util4lock5mutexINtB5_15MutexLockFutureNtNtCsa9Jrx9KOzzM_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!6 = distinct !{null}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 2, !"RtLibUseGOT", i32 1}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{}
!14 = !{i64 8}
!15 = !{i8 0, i8 2}
!16 = !{!"address", !"read_provenance"}
!17 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!18 = !{i8 0, i8 3}
!19 = !{i64 0, i64 2}
!20 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{i64 0, i64 3}
!23 = !{i64 -1, i64 -9223372036854775808}
!24 = !{i64 0, i64 -9223372036854775808}
!25 = !{i64 1, i64 536870913}
!26 = !{i8 -1, i8 3}
!27 = !{i8 -4, i8 4}
!28 = !{i64 -2, i64 3}
!29 = !{i32 0, i32 2}
!30 = !{i64 -1, i64 3}
!31 = !{i32 0, i32 -1}
!32 = !{i8 0, i8 4}
!33 = !{i8 0, i8 6}
!34 = !{i16 0, i16 3}
!35 = !{i32 -1, i32 13}
!36 = !{i16 0, i16 2}
!37 = !{i64 0, i64 44}
!38 = !{i8 0, i8 11}
!39 = !{i8 0, i8 8}
!40 = !{!5}
!41 = !{i64 0, i64 40}
!42 = !{i32 0, i32 3}
!43 = !{i32 0, i32 13}
!44 = !{i64 0, i64 -9223372036854775806}
!45 = !{i8 0, i8 12}
!46 = !{i64 0, i64 -9223372036854775797}
!47 = !{i16 0, i16 12}
!48 = !{i64 0, i64 -9223372036854775781}
!49 = !{i32 0, i32 1000000000}
!50 = !{i64 -3, i64 -9223372036854775808}
!51 = !{i32 -1, i32 1000000000}
!52 = !{i8 -1, i8 12}
!53 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!54 = !{i32 -2, i32 13}
!55 = !{i16 0, i16 21}
!56 = !{!"branch_weights", i32 6000, i32 1}
!57 = !{i64 4}
!58 = !{i64 -4, i64 -9223372036854775806}
!59 = !{i8 -6, i8 14}
!60 = !{i8 -5, i8 10}
!61 = !{!"branch_weights", i32 1, i32 4001}
!62 = !{!"branch_weights", i32 4000000, i32 4001}
!63 = distinct !{!63, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtBL_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEE3newCs2Bxje7pdMIr_13libp2p_server"}
!64 = distinct !{!64, !63, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtBL_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEE3newCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!65 = distinct !{!65, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs2Bxje7pdMIr_13libp2p_server"}
!66 = distinct !{!66, !65, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!67 = distinct !{!67, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!68 = distinct !{!68, !67, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!69 = !{!64}
!70 = !{!66}
!71 = !{!68}
!72 = !{!68, !66}
!73 = distinct !{!73, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade10H2UpgradedE3newCs2Bxje7pdMIr_13libp2p_server"}
!74 = distinct !{!74, !73, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade10H2UpgradedE3newCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!75 = distinct !{!75, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs2Bxje7pdMIr_13libp2p_server"}
!76 = distinct !{!76, !75, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!77 = distinct !{!77, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!78 = distinct !{!78, !77, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!79 = !{!74}
!80 = !{!76}
!81 = !{!78}
!82 = !{!78, !76}
!83 = distinct !{!83, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECs2Bxje7pdMIr_13libp2p_server"}
!84 = distinct !{!84, !83, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!85 = distinct !{!85, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime11TokioHandleECs2Bxje7pdMIr_13libp2p_server"}
!86 = distinct !{!86, !85, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime11TokioHandleECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!87 = distinct !{!87, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEEECs2Bxje7pdMIr_13libp2p_server"}
!88 = distinct !{!88, !87, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!89 = distinct !{!89, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server"}
!90 = distinct !{!90, !89, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!91 = !{!90, !88, !86, !84}
!92 = distinct !{!92, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1L_11RandomState3new0B24_ECs2Bxje7pdMIr_13libp2p_server"}
!93 = distinct !{!93, !92, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1L_11RandomState3new0B24_ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!94 = distinct !{null}
!95 = !{!93}
!96 = distinct !{!96, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCsexYYUdYSQU6_5alloc6string6StringEE8try_withNCNvXsa_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt9fmt_layerINtB2p_5LayerNtNtNtB2t_8registry7sharded8RegistryEINtNtB2t_5layer5LayerB3s_E8on_event0uECs2Bxje7pdMIr_13libp2p_server"}
!97 = distinct !{!97, !96, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCsexYYUdYSQU6_5alloc6string6StringEE8try_withNCNvXsa_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt9fmt_layerINtB2p_5LayerNtNtNtB2t_8registry7sharded8RegistryEINtNtB2t_5layer5LayerB3s_E8on_event0uECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!98 = distinct !{null}
!99 = distinct !{!99, !"_RNCNvXsa_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt9fmt_layerINtB7_5LayerNtNtNtBb_8registry7sharded8RegistryEINtNtBb_5layer5LayerB19_E8on_event0Cs2Bxje7pdMIr_13libp2p_server"}
!100 = distinct !{!100, !99, !"_RNCNvXsa_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt9fmt_layerINtB7_5LayerNtNtNtBb_8registry7sharded8RegistryEINtNtBb_5layer5LayerB19_E8on_event0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!101 = distinct !{!101, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2Bxje7pdMIr_13libp2p_server"}
!102 = distinct !{!102, !101, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!103 = distinct !{!103, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2Bxje7pdMIr_13libp2p_server"}
!104 = distinct !{!104, !103, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!105 = distinct !{!105, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2Bxje7pdMIr_13libp2p_server"}
!106 = distinct !{!106, !105, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!107 = !{!97}
!108 = !{!100, !97}
!109 = !{!102}
!110 = !{!104}
!111 = !{!106}
!112 = distinct !{!112, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtBX_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB3y_6result6ResultuIB2g_DNtNtB3y_5error5ErrorEL_EEEENCINvMs7_B2Q_NtB2Q_9CoreGuard5enterNCINvB55_8block_onINtNtB3y_3pin3PinQIB5S_IB2g_NCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B3t_E0E0B2e_EB6n_"}
!113 = distinct !{!113, !112, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtBX_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB3y_6result6ResultuIB2g_DNtNtB3y_5error5ErrorEL_EEEENCINvMs7_B2Q_NtB2Q_9CoreGuard5enterNCINvB55_8block_onINtNtB3y_3pin3PinQIB5S_IB2g_NCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B3t_E0E0B2e_EB6n_: argument 1"}
!114 = distinct !{!114, !112, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtBX_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB3y_6result6ResultuIB2g_DNtNtB3y_5error5ErrorEL_EEEENCINvMs7_B2Q_NtB2Q_9CoreGuard5enterNCINvB55_8block_onINtNtB3y_3pin3PinQIB5S_IB2g_NCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B3t_E0E0B2e_EB6n_: argument 0"}
!115 = distinct !{!115, !"_RNCINvNtNtCsc13h7DQFCSE_5tokio7runtime7context13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtB6_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB2h_6result6ResultuIBZ_DNtNtB2h_5error5ErrorEL_EEEENCINvMs7_B1z_NtB1z_9CoreGuard5enterNCINvB3N_8block_onINtNtB2h_3pin3PinQIB4A_IBZ_NCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B2c_E0E0B54_"}
!116 = distinct !{!116, !115, !"_RNCINvNtNtCsc13h7DQFCSE_5tokio7runtime7context13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtB6_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB2h_6result6ResultuIBZ_DNtNtB2h_5error5ErrorEL_EEEENCINvMs7_B1z_NtB1z_9CoreGuard5enterNCINvB3N_8block_onINtNtB2h_3pin3PinQIB4A_IBZ_NCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B2c_E0E0B54_: argument 1"}
!117 = distinct !{!117, !115, !"_RNCINvNtNtCsc13h7DQFCSE_5tokio7runtime7context13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtB6_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB2h_6result6ResultuIBZ_DNtNtB2h_5error5ErrorEL_EEEENCINvMs7_B1z_NtB1z_9CoreGuard5enterNCINvB3N_8block_onINtNtB2h_3pin3PinQIB4A_IBZ_NCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B2c_E0E0B54_: argument 0"}
!118 = distinct !{!118, !"_RINvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE3setNCINvMs7_NtB15_14current_threadNtB1G_9CoreGuard5enterNCINvB1C_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB2H_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0INtNtB2L_6option6OptionINtNtB2L_6result6ResultuIB3j_DNtNtB2L_5error5ErrorEL_EEEE0TIB3j_NtB1G_4CoreEB4z_EEB3V_"}
!119 = distinct !{!119, !118, !"_RINvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE3setNCINvMs7_NtB15_14current_threadNtB1G_9CoreGuard5enterNCINvB1C_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB2H_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0INtNtB2L_6option6OptionINtNtB2L_6result6ResultuIB3j_DNtNtB2L_5error5ErrorEL_EEEE0TIB3j_NtB1G_4CoreEB4z_EEB3V_: argument 1"}
!120 = distinct !{!120, !118, !"_RINvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE3setNCINvMs7_NtB15_14current_threadNtB1G_9CoreGuard5enterNCINvB1C_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB2H_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0INtNtB2L_6option6OptionINtNtB2L_6result6ResultuIB3j_DNtNtB2L_5error5ErrorEL_EEEE0TIB3j_NtB1G_4CoreEB4z_EEB3V_: argument 0"}
!121 = distinct !{!121, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard5enterNCINvB4_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB1J_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0INtNtB1N_6option6OptionINtNtB1N_6result6ResultuIB2l_DNtNtB1N_5error5ErrorEL_EEEE0B2X_"}
!122 = distinct !{!122, !121, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard5enterNCINvB4_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB1J_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0INtNtB1N_6option6OptionINtNtB1N_6result6ResultuIB2l_DNtNtB1N_5error5ErrorEL_EEEE0B2X_: argument 1"}
!123 = distinct !{!123, !121, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard5enterNCINvB4_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB1J_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0INtNtB1N_6option6OptionINtNtB1N_6result6ResultuIB2l_DNtNtB1N_5error5ErrorEL_EEEE0B2X_: argument 0"}
!124 = distinct !{!124, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB1v_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B2J_"}
!125 = distinct !{!125, !124, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB1v_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B2J_: argument 2"}
!126 = distinct !{!126, !124, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB1v_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B2J_: argument 1"}
!127 = distinct !{!127, !124, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB1v_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B2J_: argument 0"}
!128 = !{!113}
!129 = !{!114, !113}
!130 = !{!120, !119, !117, !116, !114, !113}
!131 = !{!114}
!132 = !{!127, !126, !125, !123, !122, !120, !119, !117, !116, !114, !113}
!133 = !{!127, !123, !122, !120, !119, !117, !116, !114, !113}
!134 = distinct !{!134, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtBX_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB3y_6result6ResultuIB2g_DNtNtB3y_5error5ErrorEL_EEEENCINvMs7_B2Q_NtB2Q_9CoreGuard5enterNCINvB55_8block_onINtNtB3y_3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0B3t_E0E0B2e_EB6d_"}
!135 = distinct !{!135, !134, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtBX_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB3y_6result6ResultuIB2g_DNtNtB3y_5error5ErrorEL_EEEENCINvMs7_B2Q_NtB2Q_9CoreGuard5enterNCINvB55_8block_onINtNtB3y_3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0B3t_E0E0B2e_EB6d_: argument 1"}
!136 = distinct !{!136, !134, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtBX_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB3y_6result6ResultuIB2g_DNtNtB3y_5error5ErrorEL_EEEENCINvMs7_B2Q_NtB2Q_9CoreGuard5enterNCINvB55_8block_onINtNtB3y_3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0B3t_E0E0B2e_EB6d_: argument 0"}
!137 = distinct !{!137, !"_RNCINvNtNtCsc13h7DQFCSE_5tokio7runtime7context13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtB6_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB2h_6result6ResultuIBZ_DNtNtB2h_5error5ErrorEL_EEEENCINvMs7_B1z_NtB1z_9CoreGuard5enterNCINvB3N_8block_onINtNtB2h_3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0B2c_E0E0B4V_"}
!138 = distinct !{!138, !137, !"_RNCINvNtNtCsc13h7DQFCSE_5tokio7runtime7context13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtB6_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB2h_6result6ResultuIBZ_DNtNtB2h_5error5ErrorEL_EEEENCINvMs7_B1z_NtB1z_9CoreGuard5enterNCINvB3N_8block_onINtNtB2h_3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0B2c_E0E0B4V_: argument 1"}
!139 = distinct !{!139, !137, !"_RNCINvNtNtCsc13h7DQFCSE_5tokio7runtime7context13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtB6_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB2h_6result6ResultuIBZ_DNtNtB2h_5error5ErrorEL_EEEENCINvMs7_B1z_NtB1z_9CoreGuard5enterNCINvB3N_8block_onINtNtB2h_3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0B2c_E0E0B4V_: argument 0"}
!140 = distinct !{!140, !"_RINvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE3setNCINvMs7_NtB15_14current_threadNtB1G_9CoreGuard5enterNCINvB1C_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0INtNtB2L_6option6OptionINtNtB2L_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2L_5error5ErrorEL_EEEE0TIB4F_NtB1G_4CoreEB3T_EEB3h_"}
!141 = distinct !{!141, !140, !"_RINvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE3setNCINvMs7_NtB15_14current_threadNtB1G_9CoreGuard5enterNCINvB1C_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0INtNtB2L_6option6OptionINtNtB2L_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2L_5error5ErrorEL_EEEE0TIB4F_NtB1G_4CoreEB3T_EEB3h_: argument 1"}
!142 = distinct !{!142, !140, !"_RINvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE3setNCINvMs7_NtB15_14current_threadNtB1G_9CoreGuard5enterNCINvB1C_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0INtNtB2L_6option6OptionINtNtB2L_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2L_5error5ErrorEL_EEEE0TIB4F_NtB1G_4CoreEB3T_EEB3h_: argument 0"}
!143 = distinct !{!143, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard5enterNCINvB4_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0INtNtB1N_6option6OptionINtNtB1N_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1N_5error5ErrorEL_EEEE0B2j_"}
!144 = distinct !{!144, !143, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard5enterNCINvB4_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0INtNtB1N_6option6OptionINtNtB1N_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1N_5error5ErrorEL_EEEE0B2j_: argument 1"}
!145 = distinct !{!145, !143, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard5enterNCINvB4_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0INtNtB1N_6option6OptionINtNtB1N_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1N_5error5ErrorEL_EEEE0B2j_: argument 0"}
!146 = distinct !{!146, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0B25_"}
!147 = distinct !{!147, !146, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0B25_: argument 1"}
!148 = distinct !{!148, !146, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0B25_: argument 0"}
!149 = !{!135}
!150 = !{!136, !135}
!151 = !{!142, !141, !139, !138, !136, !135}
!152 = !{!136}
!153 = !{!148, !147, !145, !144, !142, !141, !139, !138, !136, !135}
!154 = !{!148, !145, !144, !142, !141, !139, !138, !136, !135}
end_hunk_1
