Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_autonat-bbf8c001604f1f40.libp2p_autonat.db8382491c345134-cgu.14?download=true
inline.NumInlined: 325
inline.NumDeleted: 203
begin_hunk_0_@_RNvXs2_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviourNtB5_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour14on_swarm_event:bb.a
  %i.gq = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  store ptr %i.gf, ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  store ptr %i.aa, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store ptr %i.gg, ptr %i.gs, align 8
  call void @_RNvMs_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour9as_clientNtB4_8AsClient14on_new_address(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.b

bb.ao:                                            ; preds = %bb.a
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !nonnull !6, !align !8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.gw = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.gw, ptr noundef nonnull align 8 dereferenceable(80) %i.gv, i64 80, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 872
  store ptr %0, ptr %i.y, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.gx, ptr %i.hi, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.gy, ptr %i.hj, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.gz, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.ha, ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %i.hb, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store ptr %i.hc, ptr %i.hn, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store ptr %i.hd, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store ptr %i.he, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store ptr %i.hf, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  store ptr %i.hg, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store ptr %i.aa, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  store ptr %i.hh, ptr %i.ht, align 8
  call void @_RNvMs_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour9as_clientNtB4_8AsClient18on_expired_address(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.y, ptr noundef nonnull align 8 %i.gu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.b

bb.ap:                                            ; preds = %bb.a
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.hw = load ptr, ptr %i.hv, align 8, !nonnull !6, !align !8, !noundef !6
  %i.hx = load ptr, ptr %i.hw, align 8, !nonnull !6, !noundef !6
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !noundef !6
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !noundef !6
  call void %i.hx(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, ptr noundef nonnull align 8 %i.hy, ptr noundef %i.ia, i64 noundef %i.ic)
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.ie = call noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtCsbli3iz7XG76_9multiaddr9MultiaddruNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.id, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.w) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !648
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ig, ptr noundef nonnull align 8 dereferenceable(80) %i.if, i64 80, i1 false), !noalias !649
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr %0, ptr %i.a, align 8, !noalias !648
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ih, ptr %i.ir, align 8, !noalias !648
  %i.is = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ii, ptr %i.is, align 8, !noalias !648
  %i.it = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ij, ptr %i.it, align 8, !noalias !648
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.ik, ptr %i.iu, align 8, !noalias !648
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.il, ptr %i.iv, align 8, !noalias !648
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.im, ptr %i.iw, align 8, !noalias !648
  %i.ix = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.in, ptr %i.ix, align 8, !noalias !648
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.io, ptr %i.iy, align 8, !noalias !648
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.ip, ptr %i.iz, align 8, !noalias !648
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.iq, ptr %i.ja, align 8, !noalias !648
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.aa, ptr %i.jb, align 8, !noalias !648
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.id, ptr %i.jc, align 8, !noalias !648
  call void @_RNvMs_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour9as_clientNtB4_8AsClient14on_new_address(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.a), !noalias !649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.b

bb.aq:                                            ; preds = %bb.a
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !nonnull !6, !align !8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.jg = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.jg, ptr noundef nonnull align 8 dereferenceable(80) %i.jf, i64 80, i1 false)
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 872
  store ptr %0, ptr %i.x, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.jh, ptr %i.js, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ji, ptr %i.jt, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.jj, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.jk, ptr %i.jv, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %i.jl, ptr %i.jw, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store ptr %i.jm, ptr %i.jx, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store ptr %i.jn, ptr %i.jy, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store ptr %i.jo, ptr %i.jz, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  store ptr %i.jp, ptr %i.ka, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  store ptr %i.jq, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  store ptr %i.aa, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store ptr %i.jr, ptr %i.kd, align 8
  call void @_RNvMs_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour9as_clientNtB4_8AsClient18on_expired_address(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.x, ptr noundef nonnull align 8 %i.je)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviourNtB5_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour27on_connection_handler_event(ptr noalias nofree noundef align 8 dereferenceable(1024) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(80) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(120) %3) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs9_CsfoiTdJnOWBy_23libp2p_request_responseINtB5_9BehaviourNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour27on_connection_handler_eventB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviourNtB5_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour34handle_pending_outbound_connection(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(1024) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %3, ptr noundef nonnull align 8 %4, i64 noundef range(i64 0, 288230376151711744) %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs9_CsfoiTdJnOWBy_23libp2p_request_responseINtB5_9BehaviourNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour34handle_pending_outbound_connectionB14_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %3, ptr noundef nonnull align 8 %4, i64 noundef %5, i1 noundef zeroext %6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviourNtB5_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour37handle_established_inbound_connection(ptr dead_on_unwind noalias nofree noundef writable sret([280 x i8]) align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef align 8 dereferenceable(1024) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %3, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 %5) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs9_CsfoiTdJnOWBy_23libp2p_request_responseINtB5_9BehaviourNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour37handle_established_inbound_connectionB14_(ptr noalias nofree noundef nonnull sret([280 x i8]) align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %3, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 %5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviourNtB5_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour38handle_established_outbound_connection(ptr dead_on_unwind noalias nofree noundef writable sret([280 x i8]) align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef align 8 dereferenceable(1024) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %3, ptr noundef nonnull align 8 %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs9_CsfoiTdJnOWBy_23libp2p_request_responseINtB5_9BehaviourNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour38handle_established_outbound_connectionB14_(ptr noalias nofree noundef nonnull sret([280 x i8]) align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %3, ptr noundef nonnull align 8 %4, i1 noundef zeroext %5, i1 noundef zeroext %6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviourNtB5_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour4poll(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias nofree noundef align 8 dereferenceable(1024) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [272 x i8], align 8               ; 6 uses
  %i.g = alloca [184 x i8], align 8               ; 9 uses
  %i.h = alloca [128 x i8], align 8               ; 6 uses
  %i.i = alloca [272 x i8], align 8               ; 4 uses
  %i.j = alloca [272 x i8], align 8               ; 4 uses
  %i.k = alloca [208 x i8], align 8               ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [208 x i8], align 8               ; 4 uses
  %i.n = alloca [184 x i8], align 8               ; 11 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [208 x i8], align 8               ; 6 uses
  %i.q = alloca [272 x i8], align 8               ; 11 uses
  %i.r = alloca [272 x i8], align 8               ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [40 x i8], align 8                ; 5 uses
  %i.w = alloca [40 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.x = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.d

bb.b:                                             ; preds = %.loopexit, %bb.ay, %bb.ax, %bb.ap
  %.pn39 = phi { ptr, i32 } [ %.pn, %bb.ap ], [ %.pn, %bb.ax ], [ %.pn, %bb.ay ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  br i1 %.sroa.018.2, label %bb.bi, label %.thread

.loopexit:                                        ; preds = %.backedge, %bb.y, %bb.ab, %bb.at, %bb.bb
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.thread73:                                        ; preds = %bb.t, %bb.r, %bb.k, %bb.h, %bb.g
  %.sroa.020.1.ph = phi i1 [ true, %bb.r ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.k ], [ true, %bb.t ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %bb.ad
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.z = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.z, 0
  br i1 %.not, label %bb.e, label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit

_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit: ; preds = %.noexc43, %bb.s, %.noexc44, %bb.d
  %.sroa.018.2 = phi i1 [ false, %bb.d ], [ true, %.noexc44 ], [ true, %bb.s ], [ true, %.noexc43 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 920 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, <4 x i64> <i64 480, i64 776, i64 1016, i64 632>
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %4 = getelementptr inbounds nuw i8, ptr %1, <4 x i64> <i64 400, i64 360, i64 1000, i64 728>
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 824
  %5 = getelementptr inbounds nuw i8, ptr %1, <4 x i64> <i64 616, i64 1008, i64 824, i64 872>
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 872
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %6 = insertelement <2 x ptr> poison, ptr %i.ae, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %i.af, i64 1 ; 2 uses
  %i.bj = insertelement <2 x ptr> poison, ptr %i.ag, i64 0 ; 2 uses
  %i.bk = insertelement <2 x ptr> %i.bj, ptr %i.an, i64 1
  %i.bl = insertelement <2 x ptr> poison, ptr %i.ao, i64 0
  %i.bm = insertelement <2 x ptr> %i.bl, ptr %i.ap, i64 1
  %i.bn = insertelement <2 x ptr> poison, ptr %i.aq, i64 0
  %i.bo = insertelement <2 x ptr> %i.bn, ptr %i.ar, i64 1
  %i.bp = insertelement <2 x ptr> poison, ptr %i.as, i64 0
  %i.bq = insertelement <2 x ptr> %i.bp, ptr %i.at, i64 1
  %i.br = insertelement <2 x ptr> poison, ptr %i.au, i64 0
  %i.bs = insertelement <2 x ptr> %i.br, ptr %i.av, i64 1
  %i.bt = insertelement <2 x ptr> %i.bj, ptr %i.ah, i64 1
  br label %.backedge

bb.e:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.bu = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.bw = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs2_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviourNtB7_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour4poll10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bw, label %bb.g [
    i8 0, label %bb.n
    i8 1, label %bb.h
    i8 2, label %bb.h
  ], !prof !656

bb.g:                                             ; preds = %bb.f
  %i.bx = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs2_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviourNtB7_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour4poll10___CALLSITE)
          to label %bb.i unwind label %.thread73  ; 2 uses

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.i
  %.sroa.011.0 = phi i8 [ %i.bx, %bb.i ], [ %i.bw, %bb.f ], [ %i.bw, %bb.f ]
  %i.by = load ptr, ptr @_RNvNvXs2_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviourNtB7_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour4poll10___CALLSITE, align 8, !nonnull !6, !align !8, !noundef !6
  %i.bz = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.by, i8 noundef %.sroa.011.0)
          to label %bb.j unwind label %.thread73

bb.i:                                             ; preds = %bb.g
  %.not35 = icmp eq i8 %i.bx, 0
  br i1 %.not35, label %bb.n, label %bb.h

bb.j:                                             ; preds = %bb.h
  br i1 %i.bz, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ca = load ptr, ptr @_RNvNvXs2_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviourNtB7_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour4poll10___CALLSITE, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  store i64 1, ptr %i.u, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.cb, ptr %i.cc, align 8
  invoke void @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %bb.v unwind label %.thread73

bb.l:                                             ; preds = %bb.n, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.q

bb.m:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef align 8 dereferenceable(40) %i.t) #23
          to label %.thread.thread59 unwind label %bb.u

bb.n:                                             ; preds = %bb.i, %bb.j, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ce = load ptr, ptr @_RNvNvXs2_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviourNtB7_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour4poll10___CALLSITE, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  store i64 2, ptr %i.t, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.ce, ptr %i.cf, align 8
  %i.cg = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not36 = icmp eq i8 %i.cg, 0
  br i1 %.not36, label %bb.o, label %bb.l

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  store i64 1, ptr %i.s, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %.sroa.531.0..sroa_idx, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.ch, ptr %i.ci, align 8
  %i.cj = invoke noundef nonnull align 8 ptr @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span10record_all(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %bb.p unwind label %bb.m       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.l

bb.q:                                             ; preds = %bb.v, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.ck = load i64, ptr %i.w, align 8, !range !18, !alias.scope !657, !noundef !6
  %.not.i = icmp eq i64 %i.ck, 2
  br i1 %.not.i, label %.noexc43, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  invoke void @_RNvMs2_NtCs9Bqz0CSWZZv_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cl)
          to label %.noexc43 unwind label %.thread73

.noexc43:                                         ; preds = %bb.q, %bb.r
  %i.cm = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not4.i = icmp eq i8 %i.cm, 0
  br i1 %.not4.i, label %bb.s, label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit

bb.s:                                             ; preds = %.noexc43
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !657, !align !8, !noundef !6 ; 3 uses
  %.not5.i = icmp eq ptr %i.co, null
  br i1 %.not5.i, label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !657
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !6, !noundef !6
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !6
  store ptr %i.cq, ptr %i.d, align 8, !noalias !657, !captures !11
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !noalias !657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !657
  store ptr %i.d, ptr %i.c, align 8, !noalias !657
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiQsUuLk7hWW_14libp2p_autonat, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !657
  invoke fastcc void @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span3log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 21, ptr noundef nonnull @13, ptr noundef nonnull %i.c) #27
          to label %.noexc44 unwind label %.thread73

.noexc44:                                         ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !657
  br label %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit

bb.u:                                             ; preds = %bb.bi, %bb.bj, %bb.ay, %bb.au, %bb.m
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.v:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.q

.backedge:                                        ; preds = %.backedge.backedge, %_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour5EventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtB1Y_8protocol12AutoNatCodecEEE9pop_frontB20_(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %bb.w unwind label %.loopexit

bb.w:                                             ; preds = %.backedge
  %i.cv = load i64, ptr %i.r, align 8, !range !658, !noundef !6
  %.not37 = icmp eq i64 %i.cv, -1
  br i1 %.not37, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %i.r, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvXs9_CsfoiTdJnOWBy_23libp2p_request_responseINtB5_9BehaviourNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour4pollB14_(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aa unwind label %.loopexit

bb.z:                                             ; preds = %bb.ba, %bb.x
  br i1 %.sroa.018.2, label %bb.bd, label %bb.bh

bb.aa:                                            ; preds = %bb.y
  %i.cw = load i64, ptr %i.q, align 8, !range !658, !noundef !6 ; 3 uses
  %i.cx = icmp eq i64 %i.cw, -1
  br i1 %i.cx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bd, ptr noundef nonnull align 8 dereferenceable(80) %i.am, i64 80, i1 false)
  store ptr %1, ptr %i.g, align 8
  store <4 x ptr> %3, ptr %i.be, align 8
  store <4 x ptr> %4, ptr %i.bf, align 8
  store <4 x ptr> %5, ptr %i.bg, align 8
  invoke void @_RNvMs_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour9as_clientNtB4_8AsClient15poll_auto_probe(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.az unwind label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %i.cy = icmp ne i64 %i.cw, 6
  call void @llvm.assume(i1 %i.cy)
  %i.cz = icmp eq i64 %i.cw, 2                    ; 2 uses
  br i1 %i.cz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.p, ptr noundef nonnull align 8 dereferenceable(208) %i.ab, i64 208, i1 false)
  %i.da = load i64, ptr %i.p, align 8, !range !15, !noundef !6 ; 3 uses
  %i.db = icmp slt i64 %i.da, -9223372036854775805
  %i.dc = add i64 %i.da, -9223372036854775807
  %i.dd = select i1 %i.db, i64 %i.dc, i64 0
  switch i64 %i.dd, label %bb.c [
    i64 0, label %bb.af
    i64 1, label %bb.ag
    i64 2, label %bb.ah
    i64 3, label %bb.ai
  ]

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.j, ptr noundef nonnull align 8 dereferenceable(272) %i.q, i64 272, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs_NtCs6b9j1MKPRPC_12libp2p_swarm9behaviourINtB5_7ToSwarmINtCsfoiTdJnOWBy_23libp2p_request_response5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol11DialRequestNtB1L_12DialResponseEINtNtB10_7handler15OutboundMessageNtB1L_12AutoNatCodecEE7map_outNtNtB1N_9behaviour5EventNCNvXs2_B47_NtB47_9BehaviourNtB5_16NetworkBehaviour4poll0EB1P_(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %i.j)
          to label %bb.av unwind label %bb.aq

bb.af:                                            ; preds = %bb.ad
  %i.de = icmp eq i64 %i.da, -1
  br i1 %i.de, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aw, ptr noundef nonnull align 8 dereferenceable(80) %i.am, i64 80, i1 false)
  store ptr %1, ptr %i.n, align 8
  store <2 x ptr> %7, ptr %i.ax, align 8
  store <2 x ptr> %i.bk, ptr %i.ay, align 8
  store <2 x ptr> %i.bm, ptr %i.az, align 8
  store <2 x ptr> %i.bo, ptr %i.ba, align 8
  store <2 x ptr> %i.bq, ptr %i.bb, align 8
  store <2 x ptr> %i.bs, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.m, ptr noundef nonnull align 8 dereferenceable(208) %i.ab, i64 208, i1 false)
  invoke void @_RNvXNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour9as_clientNtB2_8AsClientNtB4_16HandleInnerEvent12handle_event(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(208) %i.m)
          to label %bb.aj unwind label %.thread51

bb.ah:                                            ; preds = %bb.af, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %1, ptr %i.l, align 8
  store <2 x ptr> %7, ptr %i.aj, align 8
  store <2 x ptr> %i.bt, ptr %i.ak, align 8
  store ptr %i.ai, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.k, ptr noundef nonnull align 8 dereferenceable(208) %i.ab, i64 208, i1 false)
  invoke void @_RNvXNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour9as_serverNtB2_8AsServerNtB4_16HandleInnerEvent12handle_event(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(208) %i.k)
          to label %bb.al unwind label %.thread51

bb.ai:                                            ; preds = %bb.ad
  store i64 0, ptr %i.o, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  invoke void @_RNvXs_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque11spec_extendINtB6_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour5EventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtB2c_8protocol12AutoNatCodecEEEINtB4_10SpecExtendB1j_INtNtB6_9into_iter8IntoIterB1j_EE11spec_extendB2e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.ao unwind label %bb.au

.thread51:                                        ; preds = %bb.ak, %bb.ag, %bb.ah
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  invoke void @_RNvXs_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque11spec_extendINtB6_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour5EventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtB2c_8protocol12AutoNatCodecEEEINtB4_10SpecExtendB1j_INtNtB6_9into_iter8IntoIterB1j_EE11spec_extendB2e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.am unwind label %.thread51

bb.al:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ak

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.df = load i64, ptr %i.q, align 8, !range !658, !noundef !6 ; 3 uses
  %i.dg = icmp eq i64 %i.df, -1
  br i1 %i.dg, label %bb.ar, label %bb.as

bb.ao:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsfoiTdJnOWBy_23libp2p_request_response5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol11DialRequestNtB1p_12DialResponseEEB1t_(ptr noalias nofree noundef align 8 dereferenceable(208) %i.p)
          to label %bb.an unwind label %bb.aq

bb.ap:                                            ; preds = %.thread51, %bb.au, %bb.aq
  %i.dh = phi i1 [ true, %bb.au ], [ true, %.thread51 ], [ %i.cz, %bb.aq ]
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.au ], [ %lpad.thr_comm, %.thread51 ], [ %i.dk, %bb.aq ] ; 3 uses
  %i.di = load i64, ptr %i.q, align 8, !range !658, !noundef !6 ; 3 uses
  %i.dj = icmp ne i64 %i.di, -1
  %or.cond = and i1 %i.dh, %i.dj
  br i1 %or.cond, label %bb.ax, label %bb.b

bb.aq:                                            ; preds = %bb.av, %bb.ao, %bb.ae
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ar:                                            ; preds = %bb.aw, %bb.at, %bb.as, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ar, %bb.bc
  br label %.backedge

bb.as:                                            ; preds = %bb.an
  %i.dl = icmp ne i64 %i.df, 6
  call void @llvm.assume(i1 %i.dl)
  %i.dm = icmp eq i64 %i.df, 2
  br i1 %i.dm, label %bb.ar, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmINtCsfoiTdJnOWBy_23libp2p_request_response5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol11DialRequestNtB2e_12DialResponseEINtNtB1t_7handler15OutboundMessageNtB2e_12AutoNatCodecEEEB2i_(ptr noalias nofree noundef align 8 dereferenceable(272) %i.q)
          to label %bb.ar unwind label %.loopexit

bb.au:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsfoiTdJnOWBy_23libp2p_request_response5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol11DialRequestNtB1p_12DialResponseEEB1t_(ptr noalias nofree noundef align 8 dereferenceable(208) %i.p) #23
          to label %bb.ap unwind label %bb.u

bb.av:                                            ; preds = %bb.ae
  %i.dn = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour5EventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtB1Y_8protocol12AutoNatCodecEEE13push_back_mutB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(272) %i.i)
          to label %bb.aw unwind label %bb.aq     ; 0 uses

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ar

bb.ax:                                            ; preds = %bb.ap
  %i.do = icmp ne i64 %i.di, 6
  call void @llvm.assume(i1 %i.do)
  %i.dp = icmp eq i64 %i.di, 2
  br i1 %i.dp, label %bb.b, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmINtCsfoiTdJnOWBy_23libp2p_request_response5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol11DialRequestNtB2e_12DialResponseEINtNtB1t_7handler15OutboundMessageNtB2e_12AutoNatCodecEEEB2i_(ptr noalias nofree noundef align 8 dereferenceable(272) %i.q) #23
          to label %bb.b unwind label %bb.u

bb.az:                                            ; preds = %bb.ab
  %i.dq = load i64, ptr %i.h, align 8, !range !21, !noundef !6
  %i.dr = icmp eq i64 %i.dq, -1
  br i1 %i.dr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 -1, ptr %0, align 8
  br label %bb.z

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bi, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  store i64 1, ptr %i.bh, align 8
  store i64 2, ptr %i.f, align 8
  %i.ds = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour5EventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtB1Y_8protocol12AutoNatCodecEEE13push_back_mutB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(272) %i.f)
          to label %bb.bc unwind label %.loopexit ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.backedge.backedge

bb.bd:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.dt = load i64, ptr %i.w, align 8, !range !18, !alias.scope !659, !noalias !660, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.dt, 2
  br i1 %.not.i.i.i, label %.noexc46, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.du = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  invoke void @_RNvMs2_NtCs9Bqz0CSWZZv_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.du)
          to label %.noexc46 unwind label %.thread.thread

.noexc46:                                         ; preds = %bb.be, %bb.bd
  %i.dv = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !660
  %.not4.i.i.i = icmp eq i8 %i.dv, 0
  br i1 %.not4.i.i.i, label %bb.bf, label %.thread54

bb.bf:                                            ; preds = %.noexc46
  %i.dw = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !659, !noalias !660, !align !8, !noundef !6 ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not5.i.i.i, label %.thread54, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !661
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !660, !nonnull !6, !noundef !6
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !660, !noundef !6
  store ptr %i.dz, ptr %i.b, align 8, !noalias !661, !captures !11
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.eb, ptr %i.ec, align 8, !noalias !661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !661
  store ptr %i.b, ptr %i.a, align 8, !noalias !661
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiQsUuLk7hWW_14libp2p_autonat, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !661
  invoke fastcc void @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span3log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 21, ptr noundef nonnull @11, ptr noundef nonnull %i.a) #27
          to label %.noexc47 unwind label %.thread.thread

.noexc47:                                         ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !661
  br label %.thread54

.thread:                                          ; preds = %.thread73, %bb.bi, %bb.b
  %.sroa.020.078 = phi i1 [ %.sroa.020.1.ph, %.thread73 ], [ true, %bb.bi ], [ false, %bb.b ]
  %.pn3977 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread73 ], [ %.pn39, %bb.bi ], [ %.pn39, %bb.b ] ; 2 uses
  br i1 %.sroa.020.078, label %bb.bj, label %.thread.thread59

.thread.thread:                                   ; preds = %bb.bg, %bb.be
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bh:                                            ; preds = %bb.z, %.thread54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

.thread54:                                        ; preds = %.noexc46, %bb.bf, %.noexc47
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef align 8 dereferenceable(40) %i.w)
  br label %bb.bh

bb.bi:                                            ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span7EnteredECsiQsUuLk7hWW_14libp2p_autonat(ptr nonnull %i.w) #23
          to label %.thread unwind label %bb.u

.thread.thread59:                                 ; preds = %bb.m, %bb.bj, %.thread
  %.pn4157 = phi { ptr, i32 } [ %.pn4158, %bb.bj ], [ %.pn3977, %.thread ], [ %i.cd, %bb.m ]
  resume { ptr, i32 } %.pn4157

bb.bj:                                            ; preds = %.thread.thread, %.thread
  %.pn4158 = phi { ptr, i32 } [ %i.ed, %.thread.thread ], [ %.pn3977, %.thread ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef align 8 dereferenceable(40) %i.w) #23
          to label %.thread.thread59 unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9BehaviourNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([480 x i8]) align 8 captures(none) dereferenceable(480) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [320 x i8], align 4               ; 4 uses
  %i.e = alloca [320 x i8], align 4               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvCshhqnaxk4GqT_4rand8make_rngNtNtNtB2_4rngs3std6StdRngECsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef nonnull sret([320 x i8]) align 4 captures(address) dereferenceable(320) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51)
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(320) %i.d, ptr noundef nonnull readonly align 4 dereferenceable(320) %i.e, i64 320, i1 false), !noalias !670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !669
  %i.f = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.d unwind label %bb.c, !noalias !669 ; 2 uses

bb.b:                                             ; preds = %bb.l, %bb.c
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.l ], [ %i.g, %bb.c ]
  invoke void @_RNvXs_NtCsenQHu2qVDfv_9rand_core5blockINtB4_8BlockRngINtCs1aYz1mjYrQZ_8chacha2010ChaChaCoreNtBS_3R12NtNtBS_8variants6LegacyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngECsiQsUuLk7hWW_14libp2p_autonat.exit.i unwind label %bb.k, !noalias !669

bb.c:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, i32 } %i.f, 0
  %i.i = extractvalue { i64, i32 } %i.f, 1
  %i.j = invoke { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %i.h, i32 noundef %i.i, i64 noundef 5, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21)
          to label %bb.e unwind label %bb.c, !noalias !669 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef nonnull ptr @_RNvXs4_NtNtCs5GOyS9hQAaF_13futures_timer6native5timerNtB5_11TimerHandleNtNtCskKLDkoKarTP_4core7default7Default7default()
          to label %bb.f unwind label %bb.c, !noalias !669

bb.f:                                             ; preds = %bb.e
  %i.l = extractvalue { i64, i32 } %i.j, 1
  %i.m = extractvalue { i64, i32 } %i.j, 0
  %i.n = invoke noundef ptr @_RNvMNtNtCs5GOyS9hQAaF_13futures_timer6native5delayNtB2_5Delay10new_handle(i64 noundef %i.m, i32 noundef %i.l, ptr noundef nonnull %i.k)
          to label %bb.g unwind label %bb.c, !noalias !669 ; 2 uses

bb.g:                                             ; preds = %bb.f
  store ptr %i.n, ptr %i.c, align 8, !noalias !669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !669
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.b, align 8, !noalias !669
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !noalias !669
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !noalias !669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !669
  %i.q = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @22)
          to label %bb.i unwind label %bb.h, !noalias !669 ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour11AddressInfoEEB2d_.exit.i: ; preds = %bb.j, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.v, %bb.j ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour5EventINtCscu2bAJ62uie_6either6EitherNtNtB2t_8protocol11DialRequestzEEEEB2v_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #23
          to label %bb.l unwind label %bb.k, !noalias !669

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour11AddressInfoEEB2d_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.s = extractvalue { i64, i64 } %i.q, 0
  %i.t = extractvalue { i64, i64 } %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @24, i64 32, i1 false), !noalias !669
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !669
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.t, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !669
  %i.u = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @22)
          to label %_RNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9Behaviour3newBb_.exit unwind label %bb.j, !noalias !669 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour11AddressInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour11AddressInfoEEB2d_.exit.i unwind label %bb.k, !noalias !669

bb.k:                                             ; preds = %bb.l, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour11AddressInfoEEB2d_.exit.i, %bb.b
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !669
  unreachable

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviour11AddressInfoEEB2d_.exit.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5GOyS9hQAaF_13futures_timer6native5delay5DelayECsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef align 8 dereferenceable(8) %i.c) #23
          to label %bb.b unwind label %bb.k, !noalias !669

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngECsiQsUuLk7hWW_14libp2p_autonat.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn.i

_RNvMs1_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v26client9behaviourNtB5_9Behaviour3newBb_.exit: ; preds = %bb.i
  %i.x = extractvalue { i64, i64 } %i.u, 0
  %i.y = extractvalue { i64, i64 } %i.u, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.z, ptr noundef nonnull readonly align 4 dereferenceable(320) %i.e, i64 320, i1 false), !alias.scope !671, !noalias !668
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 10, ptr %i.aa, align 8, !alias.scope !670, !noalias !667
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !670, !noalias !667
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !670, !noalias !667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !672
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !672
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.n, ptr %i.ac, align 8, !alias.scope !666, !noalias !672
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) @24, i64 32, i1 false), !noalias !672
end_hunk_0
