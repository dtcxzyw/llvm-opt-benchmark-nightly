Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ceph?download=true
inline.NumInlined: 283
inline.NumDeleted: 109
begin_hunk_0_@dissect_ceph:bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.co, %bb.bc ]   ; 21 uses
  %i.p = call i32 @tvb_reported_length(ptr noundef %0)
  %i.q = icmp ult i32 %.0, %i.p
  br i1 %i.q, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.r = call ptr @find_or_create_conversation(ptr noundef %1) ; 3 uses
  store ptr %i.r, ptr %3, align 8
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.1587, ptr noundef nonnull @.str.1586, i32 noundef 1509, ptr noundef nonnull @.str.1588, ptr noundef nonnull @.str.1589) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.d, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 53
  %i.u = load i16, ptr %i.t, align 1
  %i.v = and i16 %i.u, 8
  %.not36.i = icmp eq i16 %i.v, 0
  br i1 %.not36.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = call ptr @wmem_file_scope()
  %i.x = load i32, ptr @proto_ceph, align 4
  %i.y = call ptr @p_get_proto_data(ptr noundef %i.w, ptr noundef %1, i32 noundef %i.x, i32 noundef range(i32 0, -1) %.0) ; 12 uses
  store ptr %i.y, ptr %i.e, align 8
  %.not37.i = icmp eq ptr %i.y, null
  br i1 %.not37.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.1587, ptr noundef nonnull @.str.1586, i32 noundef 1516, ptr noundef nonnull @.str.1590, ptr noundef nonnull @.str.1591) #10
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.f, align 8
  %i.aa = call noalias dereferenceable_or_null(128) ptr @wmem_alloc(ptr noundef %i.z, i64 noundef 128) #11 ; 13 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
  %i.ac = getelementptr i8, ptr %i.y, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) %i.ab, ptr noundef readonly align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  %i.ad = getelementptr i8, ptr %i.y, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load <2 x i32>, ptr %i.y, align 8
  store <2 x i32> %i.af, ptr %i.aa, align 8
  %i.ag = getelementptr i8, ptr %i.aa, i64 8
  store ptr %i.ae, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %i.aa, i64 16
  store ptr null, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %i.y, i64 60
  %i.aj = load i16, ptr %i.ai, align 4
  %i.ak = getelementptr i8, ptr %i.aa, i64 60
  store i16 %i.aj, ptr %i.ak, align 4
  %i.al = getelementptr i8, ptr %i.y, i64 56
  %i.am = load i32, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %i.aa, i64 56
  store i32 %i.am, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %i.y, i64 64
  %i.ap = getelementptr i8, ptr %i.aa, i64 64
  %i.aq = getelementptr i8, ptr %i.aa, i64 88
  %i.ar = getelementptr i8, ptr %i.y, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) %i.aq, ptr noundef readonly align 8 dereferenceable(32) %i.ar, i64 32, i1 false)
  %i.as = getelementptr i8, ptr %i.y, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load <2 x i32>, ptr %i.ao, align 8
  store <2 x i32> %i.au, ptr %i.ap, align 8
  %i.av = getelementptr i8, ptr %i.aa, i64 72
  store ptr %i.at, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %i.aa, i64 80
  store ptr null, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %i.y, i64 124
  %i.ay = load i16, ptr %i.ax, align 4
  %i.az = getelementptr i8, ptr %i.aa, i64 124
  store i16 %i.ay, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %i.y, i64 120
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %i.aa, i64 120
  store i32 %i.bb, ptr %i.bc, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.bd = load i32, ptr @proto_ceph, align 4
  %i.be = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.r, i32 noundef %i.bd)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge = phi ptr [ %i.aa, %bb.h ], [ %i.be, %bb.i ] ; 3 uses
  store ptr %storemerge, ptr %i.e, align 8
  %.not38.i = icmp eq ptr %storemerge, null
  br i1 %.not38.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = call ptr @wmem_file_scope()
  %i.bg = call noalias dereferenceable_or_null(128) ptr @wmem_alloc(ptr noundef %i.bf, i64 noundef 128) #11 ; 12 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 40
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(40) %i.bg, i8 0, i64 40, i1 false)
  store i64 -1, ptr %i.bh, align 8
  %i.bi = getelementptr i8, ptr %i.bg, i64 48
  store i32 0, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %i.bg, i64 60
  store i16 -1, ptr %i.bj, align 4
  %i.bk = getelementptr i8, ptr %i.bg, i64 56
  store i32 0, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %i.bg, i64 64
  %i.bm = getelementptr i8, ptr %i.bg, i64 104
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(40) %i.bl, i8 0, i64 40, i1 false)
  store i64 -1, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %i.bg, i64 112
  store i32 0, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %i.bg, i64 124
  store i16 -1, ptr %i.bo, align 4
  %i.bp = getelementptr i8, ptr %i.bg, i64 120
  store i32 0, ptr %i.bp, align 8
  store ptr %i.bg, ptr %i.e, align 8
  %i.bq = load ptr, ptr %3, align 8
  %i.br = load i32, ptr @proto_ceph, align 4
  call void @conversation_add_proto_data(ptr noundef %i.bq, i32 noundef %i.br, ptr noundef %i.bg)
  %.pre.i = load ptr, ptr %i.e, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bs = phi ptr [ %.pre.i, %bb.k ], [ %storemerge, %bb.j ] ; 9 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 60
  %i.bu = load i16, ptr %i.bt, align 4            ; 2 uses
  %.not39.i = icmp eq i16 %i.bu, -1
  br i1 %.not39.i, label %c_pkt_data_init.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = load i32, ptr %i.bs, align 8
  %i.bw = load i32, ptr %i.g, align 8
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.n, label %addresses_equal.exit.i

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr i8, ptr %i.bs, i64 4
  %i.bz = load i32, ptr %i.by, align 4            ; 3 uses
  %i.ca = load i32, ptr %i.h, align 4
  %i.cb = icmp eq i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.o, label %addresses_equal.exit.i

bb.o:                                             ; preds = %bb.n
  %i.cc = icmp eq i32 %i.bz, 0
  br i1 %i.cc, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr i8, ptr %i.bs, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load ptr, ptr %i.i, align 8
  %i.cg = sext i32 %i.bz to i64
  %bcmp.i.i = call i32 @bcmp(ptr %i.ce, ptr %i.cf, i64 %i.cg)
  %i.ch = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ch, label %bb.q, label %addresses_equal.exit.i

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ci = zext i16 %i.bu to i32
  %i.cj = load i32, ptr %i.j, align 8
  %i.ck = icmp eq i32 %i.cj, %i.ci
  br i1 %i.ck, label %bb.r, label %addresses_equal.exit.i

bb.r:                                             ; preds = %bb.q
  store ptr %i.bs, ptr %i.k, align 8
  %i.cl = getelementptr i8, ptr %i.bs, i64 64
  br label %bb.s

addresses_equal.exit.i:                           ; preds = %bb.q, %bb.p, %bb.n, %bb.m
  %i.cm = getelementptr i8, ptr %i.bs, i64 64     ; 2 uses
  store ptr %i.cm, ptr %i.k, align 8
  br label %bb.s

bb.s:                                             ; preds = %addresses_equal.exit.i, %bb.r
  %.sink.i = phi ptr [ %i.bs, %addresses_equal.exit.i ], [ %i.cl, %bb.r ] ; 2 uses
  %i.cn = phi ptr [ %i.cm, %addresses_equal.exit.i ], [ %i.bs, %bb.r ]
  store ptr %.sink.i, ptr %i.l, align 8
  %.not40.i = icmp eq ptr %i.cn, null
  br i1 %.not40.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.1592, ptr noundef nonnull @.str.1586, i32 noundef 1552, ptr noundef nonnull @.str.1593) #10
  unreachable

bb.u:                                             ; preds = %bb.s
  %.not41.i = icmp eq ptr %.sink.i, null
  br i1 %.not41.i, label %bb.v, label %c_pkt_data_init.exit

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.1592, ptr noundef nonnull @.str.1586, i32 noundef 1553, ptr noundef nonnull @.str.1594) #10
  unreachable

c_pkt_data_init.exit:                             ; preds = %bb.l, %bb.u
  store ptr null, ptr %i.n, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, i8 0, i64 56, i1 false)
  store ptr %1, ptr %i.o, align 8
  %.not = icmp eq i32 %.0, 0                      ; 2 uses
  br i1 %.not, label %.split, label %.split41

.split41:                                         ; preds = %c_pkt_data_init.exit
  call fastcc void @c_pkt_data_save(ptr noundef nonnull %3, ptr noundef %1, i32 noundef %.0)
  br label %.split

.split:                                           ; preds = %c_pkt_data_init.exit, %.split41
  %i.co = call fastcc i32 @c_pdu_end(ptr noundef %0, ptr noundef %1, i32 noundef %.0, ptr noundef nonnull %3) ; 6 uses
  switch i32 %i.co, label %bb.x [
    i32 0, label %.loopexit
    i32 -1, label %bb.w
  ]

bb.w:                                             ; preds = %.split
  %i.cp = getelementptr i8, ptr %1, i64 340
  store i32 %.0, ptr %i.cp, align 4
  br label %.loopexit.sink.split

bb.x:                                             ; preds = %.split
  %i.cq = call i32 @tvb_reported_length(ptr noundef %0)
  %i.cr = icmp ugt i32 %i.co, %i.cq
  br i1 %i.cr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cs = getelementptr i8, ptr %1, i64 340
  store i32 %.0, ptr %i.cs, align 4
  %i.ct = call i32 @tvb_reported_length(ptr noundef %0)
  %i.cu = sub i32 %i.co, %i.ct
  br label %.loopexit.sink.split

bb.z:                                             ; preds = %bb.x
  br i1 %.not, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call fastcc void @c_pkt_data_save(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cv = load ptr, ptr %i.a, align 8
  call void @col_append_sep_str(ptr noundef %i.cv, i32 noundef 25, ptr noundef nonnull @.str.1583, ptr noundef nonnull @.str.1584)
  %i.cw = load ptr, ptr %i.a, align 8
  call void @col_set_fence(ptr noundef %i.cw, i32 noundef 25)
  %i.cx = load i32, ptr @proto_ceph, align 4
  %i.cy = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cx, ptr noundef %0, i32 noundef range(i32 0, -1) %.0, i32 noundef -1, i32 noundef 0) ; 3 uses
  %i.cz = load i32, ptr @ett_ceph, align 4
  %i.da = call ptr @proto_item_add_subtree(ptr noundef %i.cy, i32 noundef %i.cz) ; 13 uses
  store ptr %i.cy, ptr %i.n, align 8
  %i.db = load i32, ptr @hf_filter_data, align 4
  %i.dc = call ptr @proto_tree_add_item(ptr noundef %i.da, i32 noundef %i.db, ptr noundef %0, i32 noundef range(i32 0, -1) %.0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.dd = load i32, ptr @ett_filter_data, align 4
  %i.de = call ptr @proto_item_add_subtree(ptr noundef %i.dc, i32 noundef %i.dd) ; 5 uses
  %i.df = load ptr, ptr %i.k, align 8
  %i.dg = getelementptr i8, ptr %i.df, i64 56
  %i.dh = load i32, ptr %i.dg, align 8
  switch i32 %i.dh, label %bb.ak [
    i32 0, label %bb.ac
    i32 2, label %bb.aj
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.di = call i32 @tvb_memeql(ptr noundef %0, i32 noundef range(i32 0, -1) %.0, ptr noundef nonnull @.str.1597, i64 noundef 6)
  %.not.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i, label %bb.ad, label %c_dissect_new.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.dj = call i32 @tvb_strnlen(ptr noundef %0, i32 noundef range(i32 0, -1) %.0, i32 noundef 10)
  %.not30.i.i = icmp eq i32 %i.dj, 9
  br i1 %.not30.i.i, label %bb.ae, label %c_dissect_new.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.dk = load i32, ptr @hf_banner, align 4
  %i.dl = call ptr @proto_tree_add_item(ptr noundef %i.da, i32 noundef %i.dk, ptr noundef %0, i32 noundef range(i32 0, -1) %.0, i32 noundef 9, i32 noundef 0) ; 0 uses
  %i.dm = add i32 %.0, 9                          ; 2 uses
  %i.dn = load ptr, ptr %i.o, align 8
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void @col_add_str(ptr noundef %i.dp, i32 noundef 25, ptr noundef nonnull @.str.1596)
  %i.dq = load ptr, ptr %i.n, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.dq, ptr noundef nonnull @.str.1603, ptr noundef nonnull @.str.1596)
  %.val32.i.i = load ptr, ptr %i.e, align 8
  %.val33.i.i = load ptr, ptr %i.k, align 8
  %i.dr = getelementptr i8, ptr %.val32.i.i, i64 64
  %i.ds = icmp eq ptr %.val33.i.i, %i.dr
  br i1 %i.ds, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dt = load i32, ptr @hf_server_info, align 4
  %i.du = load ptr, ptr %i.o, align 8
  %i.dv = call fastcc i32 @c_dissect_entityaddr(ptr noundef %i.da, i32 noundef %i.dt, ptr noundef null, ptr noundef %0, ptr noundef %i.du, i32 noundef %i.dm)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.028.i.i = phi i32 [ %i.dv, %bb.af ], [ %i.dm, %bb.ae ]
  %i.dw = load i32, ptr @hf_client_info, align 4
  %i.dx = load ptr, ptr %i.o, align 8
  %i.dy = call fastcc i32 @c_dissect_entityaddr(ptr noundef %i.da, i32 noundef %i.dw, ptr noundef null, ptr noundef %0, ptr noundef %i.dx, i32 noundef %.028.i.i) ; 12 uses
  %.val.i.i = load ptr, ptr %i.e, align 8
  %.val31.i.i = load ptr, ptr %i.k, align 8       ; 2 uses
  %i.dz = icmp eq ptr %.val31.i.i, %.val.i.i
  br i1 %i.dz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ea = add i32 %i.dy, 28                       ; 2 uses
  %i.eb = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.ea) ; 2 uses
  %i.ec = load i32, ptr @hf_connect, align 4
  %i.ed = call ptr @proto_tree_add_item(ptr noundef %i.da, i32 noundef %i.ec, ptr noundef %0, i32 noundef %i.dy, i32 noundef 33, i32 noundef 0)
  %i.ee = load i32, ptr @ett_connect, align 4
  %i.ef = call ptr @proto_item_add_subtree(ptr noundef %i.ed, i32 noundef %i.ee) ; 10 uses
  %i.eg = load i32, ptr @hf_features_low, align 4 ; 2 uses
  %i.eh = call ptr @proto_tree_add_bitmask(ptr noundef %i.ef, ptr noundef %0, i32 noundef %i.dy, i32 noundef %i.eg, i32 noundef %i.eg, ptr noundef nonnull @c_dissect_features.lowword, i32 noundef -2147483648) ; 0 uses
  %i.ei = add i32 %i.dy, 4
  %i.ej = load i32, ptr @hf_features_high, align 4 ; 2 uses
  %i.ek = call ptr @proto_tree_add_bitmask(ptr noundef %i.ef, ptr noundef %0, i32 noundef %i.ei, i32 noundef %i.ej, i32 noundef %i.ej, ptr noundef nonnull @c_dissect_features.highword, i32 noundef -2147483648) ; 0 uses
  %i.el = add i32 %i.dy, 8
  %i.em = load i32, ptr @hf_connect_host_type, align 4
  %i.en = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.em, ptr noundef %0, i32 noundef %i.el, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.eo = add i32 %i.dy, 12
  %i.ep = load i32, ptr @hf_connect_seq_global, align 4
  %i.eq = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.ep, ptr noundef %0, i32 noundef %i.eo, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.er = add i32 %i.dy, 16
  %i.es = load i32, ptr @hf_connect_seq, align 4
  %i.et = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.es, ptr noundef %0, i32 noundef %i.er, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.eu = add i32 %i.dy, 20
  %i.ev = load i32, ptr @hf_connect_proto_ver, align 4
  %i.ew = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.ev, ptr noundef %0, i32 noundef %i.eu, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ex = add i32 %i.dy, 24
  %i.ey = load i32, ptr @hf_connect_auth_proto, align 4
  %i.ez = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.ey, ptr noundef %0, i32 noundef %i.ex, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.fa = load i32, ptr @hf_connect_auth_size, align 4
  %i.fb = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.fa, ptr noundef %0, i32 noundef %i.ea, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.fc = add i32 %i.dy, 32
  %i.fd = load i32, ptr @hf_flags, align 4        ; 2 uses
  %i.fe = call ptr @proto_tree_add_bitmask(ptr noundef %i.ef, ptr noundef %0, i32 noundef %i.fc, i32 noundef %i.fd, i32 noundef %i.fd, ptr noundef nonnull @c_dissect_flags.flags, i32 noundef -2147483648) ; 0 uses
  %i.ff = add i32 %i.dy, 33                       ; 2 uses
  %i.fg = load i32, ptr @hf_connect_auth, align 4
  %i.fh = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.fg, ptr noundef %0, i32 noundef %i.ff, i32 noundef %i.eb, i32 noundef 0) ; 0 uses
  %i.fi = add i32 %i.eb, %i.ff
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fj = phi ptr [ %.pre.i.i, %bb.ah ], [ %.val31.i.i, %bb.ag ]
  %.1.i.i = phi i32 [ %i.fi, %bb.ah ], [ %i.dy, %bb.ag ]
  %i.fk = getelementptr i8, ptr %i.fj, i64 56
  store i32 1, ptr %i.fk, align 8
  br label %c_dissect_new.exit.i

bb.aj:                                            ; preds = %bb.ab
  %i.fl = load ptr, ptr %i.o, align 8
  %i.fm = getelementptr i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  call void @col_add_str(ptr noundef %i.fn, i32 noundef 25, ptr noundef nonnull @.str.555)
  %i.fo = load ptr, ptr %i.n, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fo, ptr noundef nonnull @.str.1603, ptr noundef nonnull @.str.555)
  %i.fp = load ptr, ptr %i.n, align 8
  %i.fq = call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef range(i32 0, -1) %.0)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fp, ptr noundef nonnull @.str.1595, i64 noundef %i.fq)
  %i.fr = load i32, ptr @hf_seq_new, align 4
  %i.fs = call ptr @proto_tree_add_item(ptr noundef %i.da, i32 noundef %i.fr, ptr noundef %0, i32 noundef range(i32 0, -1) %.0, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.ft = add i32 %.0, 8
  %i.fu = load ptr, ptr %i.k, align 8
  %i.fv = getelementptr i8, ptr %i.fu, i64 56
  store i32 1, ptr %i.fv, align 8
  br label %c_dissect_new.exit.i

bb.ak:                                            ; preds = %bb.ab
  %i.fw = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef range(i32 0, -1) %.0)
  %i.fx = load i32, ptr @hf_tag, align 4
  %i.fy = call ptr @proto_tree_add_item(ptr noundef %i.da, i32 noundef %i.fx, ptr noundef %0, i32 noundef range(i32 0, -1) %.0, i32 noundef 1, i32 noundef -2147483648)
  %i.fz = add nuw i32 %.0, 1                      ; 11 uses
  switch i8 %i.fw, label %.preheader.i.i [
    i8 1, label %bb.al
    i8 2, label %bb.al
    i8 3, label %bb.al
    i8 4, label %bb.al
    i8 5, label %bb.al
    i8 10, label %bb.al
    i8 11, label %bb.al
    i8 12, label %bb.al
    i8 13, label %bb.am
    i8 6, label %bb.an
    i8 7, label %bb.ao
    i8 8, label %bb.ap
    i8 9, label %bb.aq
    i8 14, label %bb.ar
    i8 15, label %bb.ar
  ]

.preheader.i.i:                                   ; preds = %bb.ak
  %i.ga = call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %i.fz, i32 noundef 1)
  br i1 %i.ga, label %c_unknowntagnext.exit.i.i, label %c_unknowntagnext.exit.thread.i.i

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.gb = call fastcc i32 @c_dissect_connect_reply(ptr noundef %i.da, ptr noundef %0, i32 noundef %i.fz, ptr noundef nonnull %3)
  br label %c_dissect_new.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.gc = call fastcc i32 @c_dissect_connect_reply(ptr noundef %i.da, ptr noundef %0, i32 noundef %i.fz, ptr noundef nonnull %3) ; 2 uses
  %i.gd = load i32, ptr @hf_seq_existing, align 4
  %i.ge = call ptr @proto_tree_add_item(ptr noundef %i.da, i32 noundef %i.gd, ptr noundef %0, i32 noundef %i.gc, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.gf = add i32 %i.gc, 8
  %i.gg = load ptr, ptr %i.l, align 8
  %i.gh = getelementptr i8, ptr %i.gg, i64 56
  store i32 2, ptr %i.gh, align 8
  br label %c_dissect_new.exit.i

bb.an:                                            ; preds = %bb.ak
  %i.gi = load ptr, ptr %i.o, align 8
end_hunk_0
