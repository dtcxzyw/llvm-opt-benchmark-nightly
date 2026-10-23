Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/hole_punching_tests.hole_punching_tests.c9f93ab45a8f7f17-cgu.03?download=true
inline.NumInlined: 1811
inline.NumDeleted: 865
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNCNvCshl6eeJekvqJ_19hole_punching_tests4main0B3_:bb.a

bb.adv:                                           ; preds = %.body310
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6b9j1MKPRPC_12libp2p_swarm10SwarmEventNtCshl6eeJekvqJ_19hole_punching_tests14BehaviourEventEEB1k_(ptr noalias nofree noundef align 8 dereferenceable(696) %i.cmp) #26
          to label %.body369 unwind label %bb.t

bb.adw:                                           ; preds = %.body310
  %i.csf = getelementptr inbounds nuw i8, ptr %0, i64 2469
  %i.csg = load i8, ptr %i.csf, align 1, !range !32, !noundef !9
  %i.csh = trunc nuw i8 %i.csg to i1
  br i1 %i.csh, label %bb.adz, label %.body369

bb.adx:                                           ; preds = %.body310
  %i.csi = getelementptr inbounds nuw i8, ptr %0, i64 2466
  %i.csj = load i8, ptr %i.csi, align 2, !range !32, !noundef !9
  %i.csk = trunc nuw i8 %i.csj to i1
  br i1 %i.csk, label %bb.aeb, label %.body369

bb.ady:                                           ; preds = %.body310
  %i.csl = getelementptr inbounds nuw i8, ptr %0, i64 2496
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef align 8 dereferenceable(24) %i.csl) #26
          to label %bb.aec unwind label %bb.t

bb.adz:                                           ; preds = %bb.adw
  %i.csm = icmp ne i64 %i.cmq, 5
  call void @llvm.assume(i1 %i.csm)
  %i.csn = icmp eq i64 %i.cmq, 6
  br i1 %i.csn, label %.body369, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshl6eeJekvqJ_19hole_punching_tests14BehaviourEventEBD_(ptr noalias nofree noundef align 8 dereferenceable(696) %i.cmp) #26
          to label %.body369 unwind label %bb.t

bb.aeb:                                           ; preds = %bb.adx
  %i.cso = getelementptr inbounds nuw i8, ptr %0, i64 2584
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6b9j1MKPRPC_12libp2p_swarm9DialErrorECshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef align 8 dereferenceable(120) %i.cso) #26
          to label %.body369 unwind label %bb.t

bb.aec:                                           ; preds = %bb.ady
  %i.csp = getelementptr inbounds nuw i8, ptr %0, i64 2467
  %i.csq = load i8, ptr %i.csp, align 1, !range !32, !noundef !9
  %i.csr = trunc nuw i8 %i.csq to i1
  br i1 %i.csr, label %bb.aed, label %.body369

bb.aed:                                           ; preds = %bb.aec
  %i.css = getelementptr inbounds nuw i8, ptr %0, i64 2528
  %i.cst = load ptr, ptr %i.css, align 8, !noundef !9 ; 2 uses
  %.not124 = icmp eq ptr %i.cst, null
  br i1 %.not124, label %.body369, label %bb.aee

bb.aee:                                           ; preds = %bb.aed
  %i.csu = getelementptr inbounds nuw i8, ptr %0, i64 2468
  %i.csv = load i8, ptr %i.csu, align 4, !range !32, !noundef !9
  %i.csw = trunc nuw i8 %i.csv to i1
  br i1 %i.csw, label %bb.aef, label %.body369

bb.aef:                                           ; preds = %bb.aee
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshl6eeJekvqJ_19hole_punching_tests(ptr nonnull %i.cst) #26
          to label %.body369 unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCskFgHTArva8k_13netlink_proto8protocol8protocolINtB4_8ProtocolNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageB18_EEE14handle_messageCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef align 8 dereferenceable(152) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [88 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 8 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [88 x i8], align 8                ; 5 uses
  %i.o = alloca [72 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.t = load i32, ptr %i.s, align 4, !noundef !9 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = load i32, ptr %i.u, align 4, !noundef !9 ; 2 uses
  store i32 %i.t, ptr %i.r, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  store i32 %i.v, ptr %i.w, align 4
  %i.x = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.y = icmp ult i64 %i.x, 6
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp samesign ugt i64 %i.x, 4
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.r, ptr %i.q, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs0_NtNtCskFgHTArva8k_13netlink_proto8protocol8protocolNtB5_9RequestIdNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr @115, ptr %i.p, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 33, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr @115, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 33, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr @114, ptr %i.ad, align 8
  invoke void @_RINvNtCscIBp6mpAwK8_3log13___private_api3loguNtB2_12GlobalLoggerECshl6eeJekvqJ_19hole_punching_tests(ptr noundef nonnull @112, ptr noundef nonnull %i.q, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p)
          to label %bb.d unwind label %bb.z

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.ae = phi i32 [ %i.v, %bb.a ], [ %.pre14, %bb.d ]
  %i.af = phi i32 [ %i.t, %bb.a ], [ %.pre, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtB11_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ag, i32 noundef %i.af, i32 noundef %i.ae)
          to label %bb.e unwind label %bb.z

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.pre = load i32, ptr %i.r, align 4
  %.pre14 = load i32, ptr %i.w, align 4
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %i.m, align 8, !noundef !9
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aj, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.ak = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtCskGfSpwhqogB_11netlink_sys4addr10SocketAddrEE13push_back_mutCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.n) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !9, !align !13, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2251)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2252
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 -24
  store ptr %i.ap, ptr %i.k, align 8, !noalias !2252
  %i.aq = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2252 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 6
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp samesign ugt i64 %i.aq, 4
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2252
  store ptr %i.k, ptr %i.j, align 8, !noalias !2252
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdNtB6_5Debug3fmtCshl6eeJekvqJ_19hole_punching_tests, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !2252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2252
  store ptr @115, ptr %i.i, align 8, !noalias !2252
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 33, ptr %i.at, align 8, !noalias !2252
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr @115, ptr %i.au, align 8, !noalias !2252
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 33, ptr %i.av, align 8, !noalias !2252
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr @117, ptr %i.aw, align 8, !noalias !2252
  invoke void @_RINvNtCscIBp6mpAwK8_3log13___private_api3loguNtB2_12GlobalLoggerECshl6eeJekvqJ_19hole_punching_tests(ptr noundef nonnull @116, ptr noundef nonnull %i.j, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
          to label %bb.j unwind label %bb.v, !noalias !2252

bb.i:                                             ; preds = %bb.j, %bb.g
  %i.ax = load i64, ptr %i.o, align 8, !range !22, !alias.scope !2251, !noundef !9
  %i.ay = icmp samesign ult i64 %i.ax, 40
  br i1 %i.ay, label %bb.k, label %bb.q

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2252
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 70
  %i.ba = load i16, ptr %i.az, align 2, !alias.scope !2251, !noundef !9
  %i.bb = and i16 %i.ba, 2
  %.not.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.bd = load i8, ptr %i.bc, align 8, !range !32, !noalias !2252, !noundef !9 ; 2 uses
  %3 = icmp eq i8 %i.bd, 0
  %4 = xor i8 %i.bd, 1
  br i1 %3, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.0.i = phi i8 [ %4, %bb.l ], [ 0, %bb.k ]
  %i.be = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2252 ; 2 uses
  %i.bf = icmp ult i64 %i.be, 6
  call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp samesign ugt i64 %i.be, 4
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2252
  store ptr %i.k, ptr %i.f, align 8, !noalias !2252
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdNtB6_5Debug3fmtCshl6eeJekvqJ_19hole_punching_tests, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !2252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2252
  store ptr @115, ptr %i.e, align 8, !noalias !2252
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 33, ptr %i.bh, align 8, !noalias !2252
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @115, ptr %i.bi, align 8, !noalias !2252
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 33, ptr %i.bj, align 8, !noalias !2252
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr @119, ptr %i.bk, align 8, !noalias !2252
  invoke void @_RINvNtCscIBp6mpAwK8_3log13___private_api3loguNtB2_12GlobalLoggerECshl6eeJekvqJ_19hole_punching_tests(ptr noundef nonnull @118, ptr noundef nonnull %i.f, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.p unwind label %bb.v, !noalias !2252

bb.o:                                             ; preds = %bb.p, %bb.m
  %i.bl = getelementptr inbounds i8, ptr %i.am, i64 -16
  %i.bm = invoke noundef ptr @_RNvXsk_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bl)
          to label %.noexc unwind label %bb.v, !noalias !2252

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2252
  br label %bb.o

.noexc:                                           ; preds = %bb.u, %bb.o
  %.sroa.021.0.i = phi ptr [ %i.cb, %bb.u ], [ %i.bm, %bb.o ]
  %.sroa.0.2.i = phi i8 [ 1, %bb.u ], [ %.sroa.0.0.i, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i8 %.sroa.0.2.i, ptr %i.bn, align 8, !noalias !2252
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %.sroa.021.0.i, ptr %i.bo, align 8, !noalias !2252
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol8ResponseNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageB26_EEEE13push_back_mutCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.d) ; 0 uses
  %i.bq = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2252 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 6
  call void @llvm.assume(i1 %i.br)
  %i.bs = icmp samesign ugt i64 %i.bq, 4
  br i1 %i.bs, label %.noexc7, label %bb.x

bb.q:                                             ; preds = %bb.l, %bb.i
  %i.bt = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2252 ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 6
  call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp samesign ugt i64 %i.bt, 4
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2252
  store ptr %i.k, ptr %i.h, align 8, !noalias !2252
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdNtB6_5Debug3fmtCshl6eeJekvqJ_19hole_punching_tests, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !2252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2252
  store ptr @115, ptr %i.g, align 8, !noalias !2252
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 33, ptr %i.bw, align 8, !noalias !2252
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr @115, ptr %i.bx, align 8, !noalias !2252
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 33, ptr %i.by, align 8, !noalias !2252
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr @121, ptr %i.bz, align 8, !noalias !2252
  invoke void @_RINvNtCscIBp6mpAwK8_3log13___private_api3loguNtB2_12GlobalLoggerECshl6eeJekvqJ_19hole_punching_tests(ptr noundef nonnull @120, ptr noundef nonnull %i.h, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g)
          to label %bb.t unwind label %bb.v, !noalias !2252

bb.s:                                             ; preds = %bb.t, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2252
  invoke void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtBR_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEEE6removeCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull %i.am)
          to label %bb.u unwind label %bb.v, !noalias !2253

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2252
  br label %bb.s

bb.u:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !2252, !noundef !9
  %i.cc = load <2 x i32>, ptr %i.a, align 8, !noalias !2252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2252
  store <2 x i32> %i.cc, ptr %i.l, align 8, !noalias !2252
  store ptr %i.l, ptr %i.k, align 8, !noalias !2252, !captures !35
  br label %.noexc

.noexc7:                                          ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2252
  store ptr %i.k, ptr %i.c, align 8, !noalias !2252
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdNtB6_5Debug3fmtCshl6eeJekvqJ_19hole_punching_tests, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !2252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2252
  store ptr @115, ptr %i.b, align 8, !noalias !2252
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 33, ptr %i.cd, align 8, !noalias !2252
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @115, ptr %i.ce, align 8, !noalias !2252
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 33, ptr %i.cf, align 8, !noalias !2252
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @123, ptr %i.cg, align 8, !noalias !2252
  call void @_RINvNtCscIBp6mpAwK8_3log13___private_api3loguNtB2_12GlobalLoggerECshl6eeJekvqJ_19hole_punching_tests(ptr noundef nonnull @122, ptr noundef nonnull %i.c, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2252
  br label %bb.x

bb.v:                                             ; preds = %bb.s, %bb.r, %bb.o, %bb.n, %bb.h
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEECshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o) #26
          to label %.body.thread unwind label %bb.w, !noalias !2254

bb.w:                                             ; preds = %bb.v
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !2254
  unreachable

bb.x:                                             ; preds = %.noexc7, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.y

bb.y:                                             ; preds = %bb.f, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

.body.thread:                                     ; preds = %bb.v, %bb.z
  %eh.lpad-body10 = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.v ], [ %lpad.thr_comm.split-lp, %bb.z ]
  resume { ptr, i32 } %eh.lpad-body10

bb.z:                                             ; preds = %bb.c, %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEECshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef align 8 dereferenceable(72) %1) #26
          to label %.body.thread unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCskFgHTArva8k_13netlink_proto8protocol8protocolINtB4_8ProtocolNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageB18_EEE7requestCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef align 8 dereferenceable(152) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [88 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 9 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %.sroa.3.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(6) %.sroa.3.0..sroa_idx, i64 6, i1 false)
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 70
  %.sroa.34.0.copyload = load i16, ptr %.sroa.34.0..sroa_idx, align 2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !noundef !9 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !noundef !9
  %i.i = add i32 %i.h, 1                          ; 3 uses
  store i32 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.b, ptr noundef nonnull align 8 dereferenceable(60) %1, i64 60, i1 false)
  %.sroa.2.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %i.i, ptr %.sroa.2.0..sroa_idx1, align 4
  %.sroa.34.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 70
  store i16 %.sroa.34.0.copyload, ptr %.sroa.34.0..sroa_idx5, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4
  %i.l = load <2 x i32>, ptr %i.f, align 8
  store <2 x i32> %i.l, ptr %i.k, align 8
  %.sroa.6.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx11, align 8
  %i.m = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtCskGfSpwhqogB_11netlink_sys4addr10SocketAddrEE13push_back_mutCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.b)
          to label %bb.b unwind label %bb.q       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.n = and i16 %.sroa.34.0.copyload, 13
  %or.cond = icmp eq i16 %i.n, 0
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = and i16 %.sroa.34.0.copyload, 4
  %i.p = icmp ne i16 %i.o, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = call { ptr, i8 } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtBP_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q, i32 noundef %i.i, i32 noundef %.sroa.5.0.copyload, ptr noundef %i.e, i1 noundef zeroext %i.p) ; 2 uses
  %i.s = extractvalue { ptr, i8 } %i.r, 0         ; 2 uses
  %i.t = extractvalue { ptr, i8 } %i.r, 1         ; 2 uses
  store ptr %i.s, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.t, ptr %i.u, align 8
  %i.v = icmp eq i8 %i.t, 2
  %i.w = icmp eq ptr %i.s, null
  %or.cond.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEEECshl6eeJekvqJ_19hole_punching_tests.exit, label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.x = icmp eq ptr %i.e, null
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEECshl6eeJekvqJ_19hole_punching_tests.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsn_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_20UnboundedSenderInnerINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2287)
  call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  %i.z = load ptr, ptr %i.c, align 8, !alias.scope !2289, !nonnull !9, !noundef !9
  %i.aa = atomicrmw add ptr %i.z, i64 -1 release, align 8, !noalias !2290
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc14UnboundedInnerINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEE9drop_slowCsg1Z0Dwl4khT_9rtnetlink(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #29
          to label %common.resume unwind label %bb.j
end_hunk_0
