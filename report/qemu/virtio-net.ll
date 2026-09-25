Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/virtio-net?download=true
inline.NumInlined: 414
inline.NumDeleted: 135
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@virtio_net_set_features
define internal void @virtio_net_set_features(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.FailoverDevice, align 8     ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.NetOffloads, align 1        ; 12 uses
  %i.b = alloca [2 x i64], align 16               ; 9 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 27, ptr noundef nonnull @__func__.VIRTIO_NET) #18 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr null, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 noundef 16, i1 noundef false) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 8
  %.not36 = icmp eq i64 %i.g, 0
  %.pre = load i64, ptr %i.b, align 16            ; 2 uses
  br i1 %.not36, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %.pre, -9                        ; 2 uses
  store i64 %i.h, ptr %i.b, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i64 [ %i.h, %bb.b ], [ %.pre, %bb.a ] ; 16 uses
  %i.j = and i64 %i.i, 1152921504611041280
  %or.cond = icmp eq i64 %i.j, 0
  br i1 %or.cond, label %virtio_net_set_multiqueue.exit, label %.thread

.thread:                                          ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8988
  %i.l = load i16, ptr %i.k, align 4
  %i.m = zext i16 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 1
  %i.o = or disjoint i32 %i.n, 1
  br label %virtio_net_set_multiqueue.exit

virtio_net_set_multiqueue.exit:                   ; preds = %bb.c, %.thread
  %i.p = phi i32 [ 1, %.thread ], [ 0, %bb.c ]
  %i.q = phi i32 [ %i.o, %.thread ], [ 3, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8984
  store i32 %i.p, ptr %i.r, align 8
  tail call fastcc void @virtio_net_change_num_queues(ptr noundef %i.d, i32 noundef %i.q)
  tail call fastcc void @virtio_net_set_queue_pairs(ptr noundef %i.d)
  %i.s = trunc i64 %i.i to i32
  %i.t = lshr i32 %i.s, 15
  %i.u = and i32 %i.t, 1                          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val31 = load i64, ptr %i.v, align 8           ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  store i32 %i.u, ptr %i.w, align 8
  %i.x = and i64 %i.i, 4294967296
  %.not.i32 = icmp eq i64 %i.x, 0
  br i1 %.not.i32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %virtio_net_set_multiqueue.exit
  %i.y = and i64 %.val31, 10
  %.not38 = icmp eq i64 %i.y, 0
  %i.z = lshr i64 %i.i, 57
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = and i32 %i.aa, 1                        ; 2 uses
  %.not24.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not24.i, i64 12, i64 20
  %i.ad = select i1 %.not38, i64 %i.ac, i64 24
  %i.ae = trunc nuw nsw i32 %i.ab to i8
  br label %bb.f

bb.e:                                             ; preds = %virtio_net_set_multiqueue.exit
  %.not22.i = icmp eq i32 %i.u, 0
  %i.af = select i1 %.not22.i, i64 10, i64 12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink28.i = phi i64 [ %i.af, %bb.e ], [ %i.ad, %bb.d ]
  %.sink.i = phi i8 [ 0, %bb.e ], [ %i.ae, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 624 ; 4 uses
  store i64 %.sink28.i, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 9203
  store i8 %.sink.i, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8988 ; 4 uses
  %i.aj = load i16, ptr %i.ai, align 4
  %.not27.i = icmp eq i16 %i.aj, 0
  br i1 %.not27.i, label %virtio_net_set_mrg_rx_bufs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 576
  %i.al = getelementptr i8, ptr %i.d, i64 608
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 616
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.i
  %.026.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ay, %bb.j ] ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8
  %i.ao = tail call ptr @qemu_get_subqueue(ptr noundef %i.an, i32 noundef %.026.i) #18
  %.val.i = load i32, ptr %i.al, align 8
  %.not25.i = icmp eq i32 %.val.i, 0
  br i1 %.not25.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = load i64, ptr %i.ag, align 8
  %i.as = trunc i64 %i.ar to i32
  %i.at = tail call zeroext i1 @qemu_has_vnet_hdr_len(ptr noundef %i.aq, i32 noundef %i.as) #18
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.ap, align 8
  %i.av = load i64, ptr %i.ag, align 8
  %i.aw = trunc i64 %i.av to i32
  tail call void @qemu_set_vnet_hdr_len(ptr noundef %i.au, i32 noundef %i.aw) #18
  %i.ax = load i64, ptr %i.ag, align 8
  store i64 %i.ax, ptr %i.am, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ay = add nuw nsw i32 %.026.i, 1              ; 2 uses
  %i.az = load i16, ptr %i.ai, align 4            ; 2 uses
  %i.ba = zext i16 %i.az to i32
  %i.bb = icmp samesign ult i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %virtio_net_set_mrg_rx_bufs.exit, !llvm.loop !1

virtio_net_set_mrg_rx_bufs.exit:                  ; preds = %bb.j, %bb.f
  %i.bc = phi i16 [ 0, %bb.f ], [ %i.az, %bb.j ]
  %i.bd = and i64 %i.i, 2305843009213693952
  %.not39 = icmp eq i64 %i.bd, 0
  br i1 %.not39, label %bb.l, label %bb.k

bb.k:                                             ; preds = %virtio_net_set_mrg_rx_bufs.exit
  %i.be = and i64 %i.i, 128
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = zext i1 %i.bf to i8
  %i.bh = lshr i64 %i.i, 8
  %i.bi = trunc i64 %i.bh to i8
  %i.bj = and i8 %i.bi, 1
  br label %bb.l

bb.l:                                             ; preds = %virtio_net_set_mrg_rx_bufs.exit, %bb.k
  %.sink = phi i8 [ %i.bg, %bb.k ], [ 0, %virtio_net_set_mrg_rx_bufs.exit ]
  %i.bk = phi i8 [ %i.bj, %bb.k ], [ 0, %virtio_net_set_mrg_rx_bufs.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 652
  store i8 %.sink, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 653
  store i8 %i.bk, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 9202
  %i.bo = lshr i64 %i.i, 60
  %i.bp = trunc nuw nsw i64 %i.bo to i8
  %i.bq = and i8 %i.bp, 1
  store i8 %i.bq, ptr %i.bn, align 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 608
  %i.bs = load i32, ptr %i.br, align 8
  %.not = icmp eq i32 %i.bs, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = and i64 %i.i, 54043195528447874         ; 2 uses
  %i.bu = shl i64 %.val31, 45                     ; 3 uses
  %i.bv = and i64 %i.bu, 211106232532992
  %i.bw = or disjoint i64 %i.bv, %i.bt
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 9024
  store i64 %i.bw, ptr %i.bx, align 8
  %i.by = getelementptr i8, ptr %i.d, i64 576
  %.val29 = load ptr, ptr %i.by, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.bz = trunc i64 %i.i to i8
  %i.ca = lshr i8 %i.bz, 1
  %i.cb = and i8 %i.ca, 1
  store i8 %i.cb, ptr %3, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.cd = and i64 %i.i, 128
  %i.ce = icmp ne i64 %i.cd, 0
  %i.cf = zext i1 %i.ce to i8
  store i8 %i.cf, ptr %i.cc, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ch = lshr i64 %i.i, 8
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = and i8 %i.ci, 1
  store i8 %i.cj, ptr %i.cg, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.cl = lshr i64 %i.i, 9
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = and i8 %i.cm, 1
  store i8 %i.cn, ptr %i.ck, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cp = lshr i64 %i.i, 10
  %i.cq = trunc i64 %i.cp to i8
  %i.cr = and i8 %i.cq, 1
  store i8 %i.cr, ptr %i.co, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.ct = lshr i64 %i.i, 54
  %i.cu = trunc i64 %i.ct to i8
  %i.cv = and i8 %i.cu, 1
  store i8 %i.cv, ptr %i.cs, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.cx = lshr i64 %i.bt, 55
  %i.cy = trunc nuw nsw i64 %i.cx to i8
  store i8 %i.cy, ptr %i.cw, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.da = lshr i64 %i.bu, 46
  %i.db = trunc nuw i64 %i.da to i8
  %i.dc = and i8 %i.db, 1
  store i8 %i.dc, ptr %i.cz, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.de = lshr i64 %i.bu, 47
  %i.df = trunc i64 %i.de to i8
  %i.dg = and i8 %i.df, 1
  store i8 %i.dg, ptr %i.dd, align 1
  %i.dh = tail call ptr @qemu_get_queue(ptr noundef %.val29) #18
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load ptr, ptr %i.di, align 8
  call void @qemu_set_offload(ptr noundef %i.dj, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.pre43 = load i16, ptr %i.ai, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dk = phi i16 [ %.pre43, %bb.m ], [ %i.bc, %bb.l ]
  %.not42 = icmp eq i16 %i.dk, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 576
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.q
  %.041 = phi i32 [ 0, %.lr.ph ], [ %i.du, %bb.q ] ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = call ptr @qemu_get_subqueue(ptr noundef %i.dm, i32 noundef %.041) #18
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call ptr @get_vhost_net(ptr noundef %i.dp) #18
  %.not27 = icmp eq ptr %i.dq, null
  br i1 %.not27, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = load ptr, ptr %i.do, align 8
  %i.ds = call ptr @get_vhost_net(ptr noundef %i.dr) #18
  call void @vhost_net_ack_features_ex(ptr noundef %i.ds, ptr noundef nonnull %i.b) #18
  %i.dt = load ptr, ptr %i.do, align 8
  call void @vhost_net_save_acked_features(ptr noundef %i.dt) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.du = add nuw nsw i32 %.041, 1                ; 2 uses
  %i.dv = load i16, ptr %i.ai, align 4
  %i.dw = zext i16 %i.dv to i32
  %i.dx = icmp samesign ult i32 %i.du, %i.dw
  br i1 %i.dx, label %bb.o, label %._crit_edge.loopexit, !llvm.loop !34

._crit_edge.loopexit:                             ; preds = %bb.q
  %.pre44 = load i64, ptr %i.b, align 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %i.dy = phi i64 [ %.pre44, %._crit_edge.loopexit ], [ %i.i, %bb.n ] ; 2 uses
  %i.dz = and i64 %i.dy, 524288
  %i.ea = icmp ne i64 %i.dz, 0                    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = and i64 %i.ec, 524288
  %i.ee = icmp ne i64 %i.ed, 0
  %i.ef = xor i1 %i.ea, %i.ee
  br i1 %i.ef, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 696
  %i.eh = load ptr, ptr %i.eg, align 8
  %not. = xor i1 %i.ea, true
  %i.ei = sext i1 %not. to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.eh, i8 noundef %i.ei, i64 noundef 512, i1 noundef false) #18
  %.pre45 = load i64, ptr %i.b, align 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %i.ej = phi i64 [ %.pre45, %bb.r ], [ %i.dy, %._crit_edge ]
  %i.ek = and i64 %i.ej, 4611686018427387904
  %.not40 = icmp eq i64 %i.ek, 0
  br i1 %.not40, label %bb.ah, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 9008 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8
  call void @qapi_event_send_failover_negotiated(ptr noundef %i.em) #18
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 9113
  store atomic i8 0, ptr %i.en monotonic, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %i.d, ptr %2, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.eo, align 8
  %i.ep = call ptr @sysbus_get_default() #18
  %i.eq = call i32 @qbus_walk_children(ptr noundef %i.ep, ptr noundef nonnull @failover_set_primary, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %2) #18 ; 0 uses
  %i.er = load ptr, ptr %i.eo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %.not.i33 = icmp eq ptr %i.er, null
  br i1 %.not.i33, label %bb.u, label %failover_add_primary.exit

bb.u:                                             ; preds = %bb.t
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 9160 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8            ; 2 uses
  %.not18.i = icmp eq ptr %i.et, null
  br i1 %.not18.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.2, i32 noundef 910, ptr noundef nonnull @__func__.failover_add_primary, ptr noundef nonnull @.str.147) #18
  %i.eu = load ptr, ptr %i.el, align 8
  call void (ptr, ptr, ...) @error_append_hint(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.148, ptr noundef %i.eu) #18
  br label %failover_add_primary.exit

bb.w:                                             ; preds = %bb.u
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 9168
  %i.ew = load i8, ptr %i.ev, align 8, !range !11, !noundef !12
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = call ptr @qdev_device_add_from_qdict(ptr noundef nonnull %i.et, i1 noundef zeroext %i.ex, ptr noundef nonnull %i.a) #18
  %i.ez = load ptr, ptr %i.a, align 8
  %.not19.i = icmp eq ptr %i.ez, null
  br i1 %.not19.i, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fa = load ptr, ptr %i.es, align 8            ; 3 uses
  %.not20.i = icmp eq ptr %i.fa, null
  br i1 %.not20.i, label %qobject_unref_impl.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8
  %.not6.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not6.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @__assert_fail(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_unref_impl) #20
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.fd = atomicrmw sub ptr %i.fb, i64 1 seq_cst, align 8
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.ab, label %qobject_unref_impl.exit.i

bb.ab:                                            ; preds = %bb.aa
  call void @qobject_destroy(ptr noundef nonnull %i.fa) #18
  br label %qobject_unref_impl.exit.i

qobject_unref_impl.exit.i:                        ; preds = %bb.ab, %bb.aa, %bb.x
  store ptr null, ptr %i.es, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.w
  call void @object_unref(ptr noundef %i.ey) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %qobject_unref_impl.exit.i
  %i.ff = load ptr, ptr %i.a, align 8
  call void @error_propagate(ptr noundef nonnull %i.c, ptr noundef %i.ff) #18
  br label %failover_add_primary.exit

failover_add_primary.exit:                        ; preds = %bb.t, %bb.v, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.fg = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not26 = icmp eq ptr %i.fg, null
  br i1 %.not26, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %failover_add_primary.exit
  %i.fh = load i8, ptr @qtest_allowed, align 1, !range !11, !noundef !12
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @warn_report_err(ptr noundef nonnull %i.fg) #18
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  call void @error_free(ptr noundef nonnull %i.fg) #18
  br label %bb.ah

bb.ah:                                            ; preds = %failover_add_primary.exit, %bb.ag, %bb.af, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @virtio_net_bad_features(ptr nofree readnone captures(none) %0) #10 {
bb.a:
  ret i64 14369
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_net_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 27, ptr noundef nonnull @__func__.VIRTIO_NET) #18 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 660
  store i8 1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 661
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8990
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.c, i8 0, i64 5, i1 false)
  store i16 1, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 9040
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @timer_del(ptr noundef %i.f) #18
end_hunk_0
