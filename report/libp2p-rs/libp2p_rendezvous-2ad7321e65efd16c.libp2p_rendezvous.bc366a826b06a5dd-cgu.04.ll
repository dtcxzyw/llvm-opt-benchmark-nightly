Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_rendezvous-2ad7321e65efd16c.libp2p_rendezvous.bc366a826b06a5dd-cgu.04?download=true
inline.NumInlined: 274
inline.NumDeleted: 156
begin_hunk_0_@_RNvXs_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB4_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour14on_swarm_event:bb.a
  %i.ca = load ptr, ptr %i.bz, align 8, !invariant.load !4, !nonnull !4
  %i.cb = invoke noundef zeroext i1 %i.ca(ptr noundef %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.k

bb.aa:                                            ; preds = %bb.z
  br i1 %i.cb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cc = load ptr, ptr @_RNvNvXs_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB6_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour14on_swarm_event10___CALLSITE, align 8, !nonnull !4, !align !12, !noundef !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.n, ptr %i.e, align 8
  store ptr @_RNvXs3_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB5_13RegisterErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  store ptr @28, ptr %i.f, align 8
  store ptr %i.e, ptr %i.ah, align 8
  store ptr %i.f, ptr %i.g, align 8
  store ptr @29, ptr %i.ai, align 8
  store i64 1, ptr %i.h, align 8
  store ptr %i.g, ptr %.sroa.421.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.522.0..sroa_idx, align 8
  store ptr %i.cd, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.br, ptr noundef nonnull %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.ad unwind label %bb.k

bb.ac:                                            ; preds = %bb.aa, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.v

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ac

bb.ae:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.af

bb.af:                                            ; preds = %bb.j, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.d

bb.ag:                                            ; preds = %bb.e, %bb.k
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEyEEB2p_.exit: ; preds = %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB4_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour27on_connection_handler_event(ptr noalias nofree noundef align 8 dereferenceable(864) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(80) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(440) %3) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs9_CsfoiTdJnOWBy_23libp2p_request_responseINtB5_9BehaviourNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecENtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour27on_connection_handler_eventB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB4_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour34handle_pending_outbound_connection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(864) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %3, ptr nofree noundef nonnull readnone align 8 captures(none) %4, i64 noundef range(i64 0, 288230376151711744) %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load i64, ptr %3, align 8, !range !16, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB5_9Behaviour21discovered_peer_addrs(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.a, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.b)
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtB2b_7flatten7FlattenINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceBR_EEEE9from_iterB4m_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.06.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.47.0.copyload = load ptr, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ 0, %bb.a ]
  %.sroa.3.0 = phi ptr [ %.sroa.47.0.copyload, %bb.b ], [ inttoptr (i64 8 to ptr), %bb.a ]
  %.sroa.0.0 = phi i64 [ %.sroa.06.0.copyload, %bb.b ], [ 0, %bb.a ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx2, align 8
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx4, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB4_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour37handle_established_inbound_connection(ptr dead_on_unwind noalias nofree noundef writable sret([280 x i8]) align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef align 8 dereferenceable(864) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %3, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 %5) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs9_CsfoiTdJnOWBy_23libp2p_request_responseINtB5_9BehaviourNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecENtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour37handle_established_inbound_connectionB12_(ptr noalias nofree noundef nonnull sret([280 x i8]) align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %3, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 %5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB4_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour38handle_established_outbound_connection(ptr dead_on_unwind noalias nofree noundef writable sret([280 x i8]) align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef align 8 dereferenceable(864) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %3, ptr noundef nonnull align 8 %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs9_CsfoiTdJnOWBy_23libp2p_request_responseINtB5_9BehaviourNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecENtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour38handle_established_outbound_connectionB12_(ptr noalias nofree noundef nonnull sret([280 x i8]) align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %3, ptr noundef nonnull align 8 %4, i1 noundef zeroext %5, i1 noundef zeroext %6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB4_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour4poll(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([592 x i8]) align 8 captures(none) dereferenceable(592) %0, ptr noalias nofree noundef align 8 dereferenceable(864) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [128 x i8], align 8               ; 8 uses
  %i.g = alloca [80 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [128 x i8], align 8               ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [80 x i8], align 8                ; 6 uses
  %i.s = alloca [104 x i8], align 8               ; 6 uses
  %.sroa.0105 = alloca [56 x i8], align 8         ; 5 uses
  %.sroa.5107 = alloca [16 x i8], align 8         ; 5 uses
  %i.t = alloca [104 x i8], align 8               ; 6 uses
  %i.u = alloca [104 x i8], align 8               ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [104 x i8], align 8               ; 6 uses
  %.sroa.4103 = alloca [104 x i8], align 8        ; 7 uses
  %i.x = alloca [104 x i8], align 8               ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [32 x i8], align 8                ; 10 uses
  %i.aa = alloca [24 x i8], align 8               ; 11 uses
  %i.ab = alloca [104 x i8], align 8              ; 6 uses
  %i.ac = alloca [104 x i8], align 8              ; 5 uses
  %i.ad = alloca [104 x i8], align 8              ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [104 x i8], align 8              ; 6 uses
  %i.ag = alloca [104 x i8], align 8              ; 6 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [48 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 12 uses
  %i.am = alloca [80 x i8], align 8               ; 7 uses
  %i.an = alloca [104 x i8], align 8              ; 7 uses
  %i.ao = alloca [592 x i8], align 8              ; 4 uses
  %i.ap = alloca [592 x i8], align 8              ; 4 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 3 uses
  %.sroa.10 = alloca [80 x i8], align 8           ; 3 uses
  %i.aq = alloca [8 x i8], align 8                ; 6 uses
  %.sroa.13 = alloca [24 x i8], align 8           ; 8 uses
  %.sroa.16 = alloca [80 x i8], align 8           ; 8 uses
  %.sroa.22 = alloca [16 x i8], align 8           ; 5 uses
  %i.ar = alloca [424 x i8], align 8              ; 10 uses
  %i.as = alloca [8 x i8], align 8                ; 8 uses
  %i.at = alloca [592 x i8], align 8              ; 19 uses
  %i.au = alloca [592 x i8], align 8              ; 6 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [40 x i8], align 8               ; 7 uses
  %i.ax = alloca [32 x i8], align 8               ; 7 uses
  %i.ay = alloca [40 x i8], align 8               ; 5 uses
  %i.az = alloca [40 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.ba = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.c, label %bb.b

.body67:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.dx, %bb.ee, %.body70, %bb.dq, %bb.dp, %bb.do, %bb.dm, %.body
  %.sroa.030.0 = phi i8 [ %.sroa.028.2, %bb.dm ], [ %.sroa.028.2, %.body70 ], [ %.sroa.028.2, %bb.dp ], [ %.sroa.028.2, %bb.dq ], [ %.sroa.028.2, %.body ], [ %.sroa.028.2, %bb.do ], [ %.sroa.028.2, %bb.dx ], [ %.sroa.028.2, %bb.ee ], [ %.sroa.028.2, %.loopexit ], [ %.sroa.030.1.ph, %.loopexit.split-lp ]
  %.sroa.028.0 = phi i8 [ %.sroa.028.2, %bb.dm ], [ %.sroa.028.2, %.body70 ], [ %.sroa.028.2, %bb.dp ], [ %.sroa.028.2, %bb.dq ], [ %.sroa.028.2, %.body ], [ %.sroa.028.2, %bb.do ], [ %.sroa.028.2, %bb.dx ], [ %.sroa.028.2, %bb.ee ], [ %.sroa.028.2, %.loopexit ], [ %.sroa.028.1.ph, %.loopexit.split-lp ]
  %eh.lpad-body68.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.dm ], [ %eh.lpad-body71, %.body70 ], [ %eh.lpad-body, %bb.dp ], [ %eh.lpad-body, %bb.dq ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.do ], [ %i.il, %bb.dx ], [ %i.iu, %bb.ee ], [ %lpad.loopexit135, %.loopexit ], [ %lpad.loopexit.split-lp136, %.loopexit.split-lp ] ; 2 uses
  %.sroa.12.0 = extractvalue { ptr, i32 } %eh.lpad-body68.pn, 1 ; 2 uses
  %.sroa.045.0 = extractvalue { ptr, i32 } %eh.lpad-body68.pn, 0 ; 2 uses
  %i.bc = trunc nuw i8 %.sroa.028.0 to i1
  br i1 %i.bc, label %bb.eo, label %.thread

.loopexit:                                        ; preds = %.backedge, %bb.w, %bb.z, %bb.df, %bb.dh, %bb.di, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg9QLscIEtAL_17libp2p_rendezvous.exit.i
  %lpad.loopexit135 = landingpad { ptr, i32 }
          cleanup
  br label %.body67

.loopexit.split-lp:                               ; preds = %bb.r, %bb.e, %bb.f, %bb.i, %bb.cz, %bb.db, %bb.dc, %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg9QLscIEtAL_17libp2p_rendezvous.exit.i74
  %.sroa.030.1.ph = phi i8 [ 0, %bb.f ], [ 0, %bb.i ], [ 1, %bb.r ], [ %.sroa.028.2, %bb.cz ], [ %.sroa.028.2, %bb.db ], [ %.sroa.028.2, %bb.dc ], [ 1, %bb.p ], [ 0, %bb.e ], [ %.sroa.028.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg9QLscIEtAL_17libp2p_rendezvous.exit.i74 ]
  %.sroa.028.1.ph = phi i8 [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.r ], [ %.sroa.028.2, %bb.cz ], [ %.sroa.028.2, %bb.db ], [ %.sroa.028.2, %bb.dc ], [ 0, %bb.p ], [ 0, %bb.e ], [ %.sroa.028.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg9QLscIEtAL_17libp2p_rendezvous.exit.i74 ]
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup
  br label %.body67

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bd = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.bd, 0
  br i1 %.not, label %bb.c, label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit

_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit: ; preds = %.noexc53, %bb.q, %.noexc54, %bb.b
  %.sroa.028.2 = phi i8 [ 0, %bb.b ], [ 1, %.noexc54 ], [ 1, %bb.q ], [ 1, %.noexc53 ] ; 27 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 10 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 80 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 80 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 440
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 2 uses
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 3 uses
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.66.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.10.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %.sroa.58.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 840 ; 2 uses
  %.sroa.4103.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4103, i64 16
  %.sroa.4103.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4103, i64 48
  %.sroa.4103.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4103, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 792
  %i.co = getelementptr inbounds nuw i8, ptr %i.ar, i64 9
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.cq = getelementptr inbounds nuw i8, ptr %i.an, i64 80 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.ct = insertelement <4 x ptr> poison, ptr %1, i64 2
  %i.cu = insertelement <4 x ptr> %i.ct, ptr %i.r, i64 3
  br label %.backedge

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.cv = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.cx = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB6_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour4poll10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.cx, label %bb.e [
    i8 0, label %bb.l
    i8 1, label %bb.f
    i8 2, label %bb.f
  ], !prof !21

bb.e:                                             ; preds = %bb.d
  %i.cy = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB6_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour4poll10___CALLSITE)
          to label %bb.g unwind label %.loopexit.split-lp ; 2 uses

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.g
  %.sroa.011.0 = phi i8 [ %i.cy, %bb.g ], [ %i.cx, %bb.d ], [ %i.cx, %bb.d ]
  %i.cz = load ptr, ptr @_RNvNvXs_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB6_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour4poll10___CALLSITE, align 8, !nonnull !4, !align !12, !noundef !4
  %i.da = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cz, i8 noundef %.sroa.011.0)
          to label %bb.h unwind label %.loopexit.split-lp

bb.g:                                             ; preds = %bb.e
  %.not46 = icmp eq i8 %i.cy, 0
  br i1 %.not46, label %bb.l, label %bb.f

bb.h:                                             ; preds = %bb.f
  br i1 %i.da, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.db = load ptr, ptr @_RNvNvXs_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB6_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour4poll10___CALLSITE, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  store i64 1, ptr %i.ax, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 0, ptr %.sroa.537.0..sroa_idx, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.dc, ptr %i.dd, align 8
  invoke void @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.db, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ax)
          to label %bb.t unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.l, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.aw, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.o

bb.k:                                             ; preds = %bb.m
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  %i.dg = extractvalue { ptr, i32 } %i.de, 1
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(40) %i.aw) #22
          to label %.thread.thread130 unwind label %bb.s

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.dh = load ptr, ptr @_RNvNvXs_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB6_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour4poll10___CALLSITE, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  store i64 2, ptr %i.aw, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %i.dh, ptr %i.di, align 8
  %i.dj = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not47 = icmp eq i8 %i.dj, 0
  br i1 %.not47, label %bb.m, label %bb.j

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  store i64 1, ptr %i.av, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 0, ptr %.sroa.542.0..sroa_idx, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.dk, ptr %i.dl, align 8
  %i.dm = invoke noundef nonnull align 8 ptr @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span10record_all(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av)
          to label %bb.n unwind label %bb.k       ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.j

bb.o:                                             ; preds = %bb.t, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.dn = load i64, ptr %i.az, align 8, !range !9, !alias.scope !442, !noundef !4
  %.not.i = icmp eq i64 %i.dn, 2
  br i1 %.not.i, label %.noexc53, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  invoke void @_RNvMs2_NtCs9Bqz0CSWZZv_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.do)
          to label %.noexc53 unwind label %.loopexit.split-lp

.noexc53:                                         ; preds = %bb.o, %bb.p
  %i.dp = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not4.i = icmp eq i8 %i.dp, 0
  br i1 %.not4.i, label %bb.q, label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit

bb.q:                                             ; preds = %.noexc53
  %i.dq = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !442, !align !12, !noundef !4 ; 3 uses
  %.not5.i = icmp eq ptr %i.dr, null
  br i1 %.not5.i, label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !442
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !4, !noundef !4
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dv = load i64, ptr %i.du, align 8, !noundef !4
  store ptr %i.dt, ptr %i.ai, align 8, !noalias !442, !captures !15
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.dv, ptr %i.dw, align 8, !noalias !442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !442
  store ptr %i.ai, ptr %i.ah, align 8, !noalias !442
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsg9QLscIEtAL_17libp2p_rendezvous, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !442
  invoke fastcc void @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span3log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 21, ptr noundef nonnull @6, ptr noundef nonnull %i.ah) #24
          to label %.noexc54 unwind label %.loopexit.split-lp

.noexc54:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !442
  br label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit

end_hunk_0
begin_hunk_1_@_RNvXs_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB4_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour4poll:bb.a
  %i.hm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %bb.ck unwind label %bb.cb, !noalias !448

bb.cb:                                            ; preds = %bb.ca
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !448
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit.i.i.i: ; preds = %bb.bz
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec6CookieEBF_.exit.i unwind label %bb.cc, !noalias !448

bb.cc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit.i.i.i
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec6CookieEBF_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit.i.i.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !450
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.ce unwind label %bb.cd, !noalias !448

bb.cd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec6CookieEBF_.exit.i
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body26.i unwind label %bb.cf, !noalias !448

bb.ce:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec6CookieEBF_.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationEEB1c_.exit.i unwind label %.loopexit.split-lp144.loopexit.split-lp, !noalias !448

bb.cf:                                            ; preds = %bb.cd
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !448
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationEEB1c_.exit.i: ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !450
  br label %bb.as

bb.cg:                                            ; preds = %_RNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB7_9Behaviour15handle_response0B9_.exit.i.i, %.lr.ph.i.i
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.cg, %.thread15.i.i.i, %bb.bv
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.hr, %bb.cg ], [ %.pn11.i.i.i, %.thread15.i.i.i ], [ %i.hg, %bb.bv ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEB11_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #22
          to label %.thread.i unwind label %bb.ax, !noalias !448

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMs0_NtBU_6clientNtB2I_9Behaviour15handle_response0EBU_.exit.i: ; preds = %.noexc21.i, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4103)
  %.sroa.0102.0.copyload = load i64, ptr %i.aa, align 8, !noalias !450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4103, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !noalias !450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4103.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4103.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0105, i64 56, i1 false), !noalias !450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5107, i64 16, i1 false), !noalias !451
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4103, i64 24, i1 false), !noalias !451
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4103.32..sroa_idx, i64 80, i1 false), !noalias !451
  %.sroa.19.sroa.0.0.extract.trunc = trunc i64 %.sroa.4106.0.copyload to i8
  %.sroa.19.sroa.8.0.extract.shift = lshr i64 %.sroa.4106.0.copyload, 8
  %.sroa.19.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.19.sroa.8.0.extract.shift to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4103)
  %i.hs = load i64, ptr %i.y, align 8, !range !11, !alias.scope !464, !noalias !450, !noundef !4
  %i.ht = icmp eq i64 %i.hs, -1
  br i1 %i.ht, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEB11_.exit.i, label %bb.ch

bb.ch:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMs0_NtBU_6clientNtB2I_9Behaviour15handle_response0EBU_.exit.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit.i.i unwind label %bb.ci, !noalias !448

bb.ci:                                            ; preds = %bb.ch
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body26.i unwind label %bb.cj, !noalias !448

bb.cj:                                            ; preds = %bb.ci
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !448
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit.i.i: ; preds = %bb.ch
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEB11_.exit.i unwind label %.loopexit.split-lp144.loopexit.split-lp, !noalias !448

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEB11_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit.i.i, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMs0_NtBU_6clientNtB2I_9Behaviour15handle_response0EBU_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !450
  br label %bb.aw

.thread.i:                                        ; preds = %.body.i, %.thread38.i
  %.pn34.i = phi { ptr, i32 } [ %i.fc, %.thread38.i ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec6CookieEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.z) #22
          to label %bb.ck unwind label %bb.ax, !noalias !448

bb.ck:                                            ; preds = %.thread.i, %bb.cc, %bb.ca
  %.pn.pn.ph.i = phi { ptr, i32 } [ %.pn34.i, %.thread.i ], [ %i.ho, %bb.cc ], [ %i.hm, %bb.ca ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #22
          to label %.body26.i unwind label %bb.ax, !noalias !448

bb.cl:                                            ; preds = %bb.bb
  %i.hw = load i64, ptr %i.ck, align 8, !range !10, !noalias !450, !noundef !4
  %.not16.i = icmp eq i64 %i.hw, -2
  br i1 %.not16.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.s, ptr noundef nonnull align 8 dereferenceable(104) %i.w, i64 104, i1 false), !noalias !450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !noalias !451
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(80) %i.s, i64 80, i1 false), !noalias !451
  br label %bb.aw

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !450
  br label %bb.as

.sink.split.i:                                    ; preds = %bb.aw, %bb.as
  %.sroa.19.sroa.8.sroa.0.1 = phi i56 [ undef, %bb.as ], [ %.sroa.19.sroa.8.sroa.0.0, %bb.aw ]
  %.sroa.19.sroa.0.1 = phi i8 [ undef, %bb.as ], [ %.sroa.19.sroa.0.0, %bb.aw ]
  %.sroa.085.1 = phi i64 [ -1, %bb.as ], [ %.sroa.085.0, %bb.aw ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec7MessageEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(424) %i.ar)
          to label %bb.cq unwind label %.loopexit138

bb.co:                                            ; preds = %bb.ak
  unreachable

bb.cp:                                            ; preds = %.body26.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec7MessageEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(424) %i.ar) #22
          to label %.body unwind label %bb.ax, !noalias !452

.loopexit138:                                     ; preds = %bb.ae, %bb.ag, %.sink.split.i
  %lpad.loopexit140 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp139:                            ; preds = %bb.ac, %bb.ai
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit138, %.loopexit.split-lp139, %.body26.i, %bb.cp
  %i.hx = phi i1 [ true, %.body26.i ], [ true, %bb.cp ], [ true, %.loopexit138 ], [ %i.ed, %.loopexit.split-lp139 ]
  %eh.lpad-body = phi { ptr, i32 } [ %.pn19.i, %.body26.i ], [ %.pn19.i, %bb.cp ], [ %lpad.loopexit140, %.loopexit138 ], [ %lpad.loopexit.split-lp141, %.loopexit.split-lp139 ] ; 5 uses
  %i.hy = load i64, ptr %i.at, align 8, !range !443, !noundef !4 ; 3 uses
  %i.hz = icmp ne i64 %i.hy, -1
  %or.cond = and i1 %i.hx, %i.hz
  br i1 %or.cond, label %bb.dl, label %.body67

bb.cq:                                            ; preds = %bb.aw, %.sink.split.i
  %.sroa.19.sroa.8.sroa.0.2 = phi i56 [ %.sroa.19.sroa.8.sroa.0.1, %.sink.split.i ], [ %.sroa.19.sroa.8.sroa.0.0, %bb.aw ]
  %.sroa.19.sroa.0.2 = phi i8 [ %.sroa.19.sroa.0.1, %.sink.split.i ], [ %.sroa.19.sroa.0.0, %bb.aw ]
  %.sroa.085.3 = phi i64 [ %.sroa.085.1, %.sink.split.i ], [ %.sroa.085.0, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0105)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5107)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.not50 = icmp eq i64 %.sroa.085.3, -1
  br i1 %.not50, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13, i64 24, i1 false)
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.16, i64 80, i1 false)
  %.sroa.19.sroa.8.0.insert.ext = zext i56 %.sroa.19.sroa.8.sroa.0.2 to i64
  %.sroa.19.sroa.8.0.insert.shift = shl nuw i64 %.sroa.19.sroa.8.0.insert.ext, 8
  %.sroa.19.sroa.0.0.insert.ext = zext i8 %.sroa.19.sroa.0.2 to i64
  %.sroa.19.sroa.0.0.insert.insert = or disjoint i64 %.sroa.19.sroa.8.0.insert.shift, %.sroa.19.sroa.0.0.insert.ext
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22, i64 16, i1 false)
  store i64 2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.085.3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.19.sroa.0.0.insert.insert, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.ct

bb.cs:                                            ; preds = %.thread114, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cv, %bb.cr
  %i.ia = load i64, ptr %i.at, align 8, !range !443, !noundef !4 ; 2 uses
  switch i64 %i.ia, label %bb.cz [
    i64 -1, label %bb.cx
    i64 2, label %bb.cy
  ]

bb.cu:                                            ; preds = %bb.cw, %bb.cs
  %i.ib = load i64, ptr %i.at, align 8, !range !443, !noundef !4 ; 2 uses
  switch i64 %i.ib, label %bb.df [
    i64 -1, label %bb.dd
    i64 2, label %bb.de
  ]

bb.cv:                                            ; preds = %bb.ah, %bb.af
  %.sroa.097.0.ph = phi i64 [ -9223372036854775806, %bb.af ], [ -9223372036854775808, %bb.ah ]
  store i64 2, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.097.0.ph, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.10, i64 80, i1 false)
  %.sroa.415.sroa.6.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 6, ptr %.sroa.415.sroa.6.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.ct

bb.cw:                                            ; preds = %.noexc58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.cu

bb.cx:                                            ; preds = %bb.ct, %bb.dk, %bb.dc, %bb.db, %bb.da, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.x

bb.cy:                                            ; preds = %bb.ct
  %3 = load i64, ptr %i.bf, align 8, !range !5, !noundef !4 ; 2 uses
  %4 = icmp slt i64 %3, 6
  br i1 %4, label %bb.da, label %bb.db

bb.cz:                                            ; preds = %bb.ct
  %5 = icmp ne i64 %i.ia, 6
  call void @llvm.assume(i1 %5)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmINtCsfoiTdJnOWBy_23libp2p_request_response5EventNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec7MessageB2c_EINtNtB1t_7handler15OutboundMessageNtB2e_5CodecEEEB2g_(ptr noalias nofree noundef align 8 dereferenceable(592) %i.at)
          to label %bb.cx unwind label %.loopexit.split-lp

bb.da:                                            ; preds = %bb.cy
  %i.ic = icmp eq i64 %3, -1
  br i1 %i.ic, label %bb.cx, label %bb.dc

bb.db:                                            ; preds = %bb.cy
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsfoiTdJnOWBy_23libp2p_request_response5EventNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec7MessageB1n_EEB1r_(ptr noalias nofree noundef align 8 dereferenceable(528) %i.bf)
          to label %bb.cx unwind label %.loopexit.split-lp

bb.dc:                                            ; preds = %bb.da
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsfoiTdJnOWBy_23libp2p_request_response7MessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec7MessageB1p_EEB1t_(ptr noalias nofree noundef align 8 dereferenceable(440) %i.bf)
          to label %bb.cx unwind label %.loopexit.split-lp

bb.dd:                                            ; preds = %bb.cu, %bb.di, %bb.dh, %bb.dg, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.dd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit
  br label %.backedge

bb.de:                                            ; preds = %bb.cu
  %6 = load i64, ptr %i.bf, align 8, !range !5, !noundef !4 ; 2 uses
  %7 = icmp slt i64 %6, 6
  br i1 %7, label %bb.dg, label %bb.dh

bb.df:                                            ; preds = %bb.cu
  %8 = icmp ne i64 %i.ib, 6
  call void @llvm.assume(i1 %8)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmINtCsfoiTdJnOWBy_23libp2p_request_response5EventNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec7MessageB2c_EINtNtB1t_7handler15OutboundMessageNtB2e_5CodecEEEB2g_(ptr noalias nofree noundef align 8 dereferenceable(592) %i.at)
          to label %bb.dd unwind label %.loopexit

bb.dg:                                            ; preds = %bb.de
  %i.id = icmp eq i64 %6, -1
  br i1 %i.id, label %bb.dd, label %bb.di

bb.dh:                                            ; preds = %bb.de
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsfoiTdJnOWBy_23libp2p_request_response5EventNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec7MessageB1n_EEB1r_(ptr noalias nofree noundef align 8 dereferenceable(528) %i.bf)
          to label %bb.dd unwind label %.loopexit

bb.di:                                            ; preds = %bb.dg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsfoiTdJnOWBy_23libp2p_request_response7MessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec7MessageB1p_EEB1t_(ptr noalias nofree noundef align 8 dereferenceable(440) %i.bf)
          to label %bb.dd unwind label %.loopexit

bb.dj:                                            ; preds = %bb.ai
  unreachable

bb.dk:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(592) %i.ao, i64 592, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.cx

bb.dl:                                            ; preds = %.body
  %i.ie = icmp ne i64 %i.hy, 6
  call void @llvm.assume(i1 %i.ie)
  %i.if = icmp eq i64 %i.hy, 2
  br i1 %i.if, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmINtCsfoiTdJnOWBy_23libp2p_request_response5EventNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec7MessageB2c_EINtNtB1t_7handler15OutboundMessageNtB2e_5CodecEEEB2g_(ptr noalias nofree noundef align 8 dereferenceable(592) %i.at) #22
          to label %.body67 unwind label %bb.s

bb.dn:                                            ; preds = %bb.dl
  %i.ig = load i64, ptr %i.bf, align 8, !range !5, !noundef !4 ; 2 uses
  %i.ih = icmp slt i64 %i.ig, 6
  br i1 %i.ih, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsfoiTdJnOWBy_23libp2p_request_response5EventNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec7MessageB1n_EEB1r_(ptr noalias nofree noundef align 8 dereferenceable(528) %i.bf) #22
          to label %.body67 unwind label %bb.s

bb.dp:                                            ; preds = %bb.dn
  %i.ii = icmp eq i64 %i.ig, -1
  br i1 %i.ii, label %.body67, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsfoiTdJnOWBy_23libp2p_request_response7MessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec7MessageB1p_EEB1t_(ptr noalias nofree noundef align 8 dereferenceable(440) %i.bf) #22
          to label %.body67 unwind label %bb.s

bb.dr:                                            ; preds = %bb.z
  %i.ij = load i64, ptr %i.cq, align 8, !range !10, !noundef !4
  %switch = icmp ugt i64 %i.ij, -3
  br i1 %switch, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  store i64 -1, ptr %0, align 8
  br label %bb.x

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.am, ptr noundef nonnull align 8 dereferenceable(80) %i.an, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false)
  %i.ik = invoke noundef align 8 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEENtNtNtB1L_4hash6random11RandomStateE7get_mutBO_EB2A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.am)
          to label %bb.du unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dt, %bb.ei, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i, %bb.eg, %bb.dv
  %lpad.loopexit.split-lp365 = landingpad { ptr, i32 }
          cleanup
  br label %.body70

.body70:                                          ; preds = %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eb
  %eh.lpad-body71 = phi { ptr, i32 } [ %i.ip, %bb.eb ], [ %lpad.loopexit.split-lp365, %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al) #22
          to label %.body67 unwind label %bb.s

bb.du:                                            ; preds = %bb.dt
  %.not52 = icmp eq ptr %i.ik, null
  br i1 %.not52, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeBO_EBS_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ik, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.dz unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dw:                                            ; preds = %bb.du
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg9QLscIEtAL_17libp2p_rendezvous.exit.i unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body67 unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg9QLscIEtAL_17libp2p_rendezvous.exit.i: ; preds = %bb.dw
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit unwind label %.loopexit

bb.dz:                                            ; preds = %bb.dv
  %i.in = load i64, ptr %i.ak, align 8, !range !11, !alias.scope !465, !noundef !4
  %i.io = icmp eq i64 %i.in, -1
  br i1 %i.io, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsg9QLscIEtAL_17libp2p_rendezvous.exit, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body70 unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i: ; preds = %bb.ea
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsg9QLscIEtAL_17libp2p_rendezvous.exit unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %bb.dz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.is = load i64, ptr %i.ir, align 8, !noundef !4
  %i.it = icmp eq i64 %i.is, 0
  br i1 %i.it, label %bb.eg, label %bb.ed

bb.ed:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEEEEB1V_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsg9QLscIEtAL_17libp2p_rendezvous.exit
  %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.am, i64 80, i1 false)
  store i64 2, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %.sroa.420.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg9QLscIEtAL_17libp2p_rendezvous.exit.i74 unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.iu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body67 unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg9QLscIEtAL_17libp2p_rendezvous.exit.i74: ; preds = %bb.ed
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit80 unwind label %.loopexit.split-lp

bb.eg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsg9QLscIEtAL_17libp2p_rendezvous.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEENtNtNtB1L_4hash6random11RandomStateE6removeBO_EB2A_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.am)
          to label %bb.eh unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eh:                                            ; preds = %bb.eg
  %i.iw = load ptr, ptr %i.aj, align 8, !alias.scope !466, !noundef !4
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEEEEB1V_.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEEEEB1V_.exit unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEEEEB1V_.exit: ; preds = %bb.eh, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.ed

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit80: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg9QLscIEtAL_17libp2p_rendezvous.exit.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.x

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg9QLscIEtAL_17libp2p_rendezvous.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %.backedge.backedge

bb.ej:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.iy = load i64, ptr %i.az, align 8, !range !9, !alias.scope !467, !noalias !468, !noundef !4
  %.not.i.i.i82 = icmp eq i64 %i.iy, 2
  br i1 %.not.i.i.i82, label %.noexc83, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.iz = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  invoke void @_RNvMs2_NtCs9Bqz0CSWZZv_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.iz)
          to label %.noexc83 unwind label %.thread.thread

.noexc83:                                         ; preds = %bb.ek, %bb.ej
  %i.ja = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !468
end_hunk_1
