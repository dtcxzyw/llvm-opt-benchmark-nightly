Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ospf?download=true
inline.NumInlined: 32
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_ospf:bb.a
bb.g:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ay, ptr noundef nonnull @.str.793)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bb = add i8 %i.j, -4
  %or.cond = icmp ult i8 %i.bb, -2
  br i1 %or.cond, label %bb.br, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = call i32 @tvb_captured_length(ptr noundef %0) ; 3 uses
  %i.bd = call i32 @tvb_reported_length(ptr noundef %0) ; 4 uses
  %i.be = load i16, ptr %i.c, align 2
  %.not198 = icmp eq i16 %i.be, 0
  br i1 %.not198, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr i8, ptr %1, i64 272
  %i.bg = load i8, ptr %i.bf, align 8, !range !19, !noundef !20
  %i.bh = trunc nuw i8 %i.bg to i1
  %.not199 = icmp ult i32 %i.bc, %i.bd
  %or.cond207 = select i1 %i.bh, i1 true, i1 %.not199
  %.not200 = icmp ult i32 %i.bc, %switch.select206
  %or.cond208 = select i1 %or.cond207, i1 true, i1 %.not200
  br i1 %or.cond208, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %switch.selectcmp205, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 16, ptr %i.bi, align 8
  %i.bj = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 0, i32 noundef 16)
  store ptr %i.bj, ptr %4, align 16
  %i.bk = icmp ugt i32 %i.bc, 24
  br i1 %i.bk, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bl = add i32 %i.bd, -24                      ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.bl, ptr %i.bn, align 8
  %i.bo = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 24, i32 noundef %i.bl)
  store ptr %i.bo, ptr %i.bm, align 16
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bp = getelementptr i8, ptr %1, i64 216
  %i.bq = load ptr, ptr %i.bp, align 8
  store ptr %i.bq, ptr %4, align 16
  %i.br = getelementptr i8, ptr %1, i64 212
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bs, ptr %i.bt, align 8
  %i.bu = getelementptr i8, ptr %1, i64 240
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bv, ptr %i.bw, align 16
  %i.bx = getelementptr i8, ptr %1, i64 236
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.by, ptr %i.bz, align 8
  %i.ca = zext i16 %i.q to i32
  %i.cb = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ca) #5, !srcloc !21
  store i32 %i.cb, ptr %i.b, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1493172224, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.b, ptr %i.cd, align 16
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 8, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 %i.bd, ptr %i.cg, align 8
  %i.ch = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 0, i32 noundef %i.bd)
  store ptr %i.ch, ptr %i.cf, align 16
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %.0195 = phi i32 [ 2, %bb.m ], [ 4, %bb.n ], [ 1, %bb.l ]
  %i.ci = call i32 @in_cksum(ptr noundef nonnull %4, i32 noundef %.0195) ; 2 uses
  %i.cj = and i32 %i.ci, 65535
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ay, ptr noundef nonnull @.str.796)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cl = trunc i32 %i.ci to i16
  %i.cm = load i16, ptr %i.c, align 2
  %i.cn = call zeroext i16 @in_cksum_shouldbe(i16 noundef zeroext %i.cm, i16 noundef zeroext %i.cl)
  %i.co = zext i16 %i.cn to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ay, ptr noundef nonnull @.str.797, i32 noundef %i.co)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.j, %bb.i
  br i1 %switch.selectcmp205, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.cp = load i32, ptr @hf_ospf_header_instance_id, align 4
  %i.cq = call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.cp, ptr noundef %0, i32 noundef 14, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cr = load i32, ptr @hf_ospf_header_auth_type, align 4
  %i.cs = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.y, i32 noundef %i.cr, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  %i.ct = load i8, ptr %i.d, align 1
  switch i8 %i.ct, label %bb.x [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.cu = load i32, ptr @hf_ospf_header_auth_data_none, align 4
  %i.cv = call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.cu, ptr noundef %0, i32 noundef 16, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %bb.aa

bb.u:                                             ; preds = %bb.s
  %i.cw = load i32, ptr @hf_ospf_header_auth_data_simple, align 4
  %i.cx = call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.cw, ptr noundef %0, i32 noundef 16, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %bb.aa

bb.v:                                             ; preds = %bb.s
  %i.cy = load i32, ptr @hf_ospf_header_auth_crypt_key_id, align 4
  %i.cz = call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.cy, ptr noundef %0, i32 noundef 18, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.da = load i32, ptr @hf_ospf_header_auth_crypt_data_length, align 4
  %i.db = call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.da, ptr noundef %0, i32 noundef 19, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 19)
  %i.dd = zext i8 %i.dc to i32                    ; 5 uses
  %i.de = load i32, ptr @hf_ospf_header_auth_crypt_seq_nbr, align 4
  %i.df = call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.de, ptr noundef %0, i32 noundef 20, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.dg = zext i16 %i.q to i32                    ; 3 uses
  %i.dh = call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %i.dg, i32 noundef %i.dd)
  br i1 %i.dh, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.di = load i32, ptr @hf_ospf_header_auth_crypt_data, align 4
  %i.dj = call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.di, ptr noundef %0, i32 noundef %i.dg, i32 noundef %i.dd, i32 noundef 0) ; 0 uses
  call void @proto_tree_set_appendix(ptr noundef %i.y, ptr noundef %0, i32 noundef %i.dg, i32 noundef %i.dd)
  br label %bb.aa

bb.x:                                             ; preds = %bb.s
  %i.dk = load i32, ptr @hf_ospf_header_auth_data_unknown, align 4
  %i.dl = call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.dk, ptr noundef %0, i32 noundef 16, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %bb.aa

bb.y:                                             ; preds = %bb.r
  %i.dm = load i32, ptr @hf_ospf_v3_header_instance_id, align 4
  %i.dn = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.y, i32 noundef %i.dm, ptr noundef %0, i32 noundef 14, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.e) ; 0 uses
  %i.do = load i8, ptr %i.e, align 1
  %or.cond5 = icmp sgt i8 %i.do, 65
  %spec.store.select = select i1 %or.cond5, i8 4, i8 6 ; 2 uses
  %i.dp = load i32, ptr @hf_ospf_header_reserved, align 4
  %i.dq = call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.dp, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef 0)
  %i.dr = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 15)
  %.not201 = icmp eq i8 %i.dr, 0
  br i1 %.not201, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.dq, ptr noundef nonnull @ei_ospf_header_reserved) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.t, %bb.u, %bb.x, %bb.w, %bb.v
  %.0194 = phi i32 [ 0, %bb.x ], [ 0, %bb.t ], [ 0, %bb.u ], [ %i.dd, %bb.w ], [ %i.dd, %bb.v ], [ 0, %bb.z ], [ 0, %bb.y ] ; 4 uses
  %.0192 = phi i8 [ 6, %bb.x ], [ 6, %bb.t ], [ 6, %bb.u ], [ 6, %bb.w ], [ 6, %bb.v ], [ %spec.store.select, %bb.z ], [ %spec.store.select, %bb.y ] ; 3 uses
  switch i8 %i.k, label %bb.as [
    i8 1, label %bb.ab
    i8 2, label %bb.ae
    i8 3, label %bb.al
    i8 4, label %bb.ar
    i8 5, label %.preheader.i222
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.dt = trunc nuw nsw i32 %switch.select206 to i16
  %i.du = sub i16 %i.q, %i.dt                     ; 2 uses
  %i.dv = load i32, ptr @hf_ospf_hello, align 4
  %i.dw = zext i16 %i.du to i32                   ; 3 uses
  %i.dx = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.dv, ptr noundef %0, i32 noundef range(i32 14, 25) %switch.select206, i32 noundef %i.dw, i32 noundef 0)
  %i.dy = load i32, ptr @ett_ospf_hello, align 4
  %i.dz = call ptr @proto_item_add_subtree(ptr noundef %i.dx, i32 noundef %i.dy) ; 16 uses
  %i.ea = icmp ugt i16 %i.du, 20                  ; 2 uses
  br i1 %switch.selectcmp205, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eb = load i32, ptr @hf_ospf_hello_network_mask, align 4
  %i.ec = call ptr @proto_tree_add_item(ptr noundef %i.dz, i32 noundef %i.eb, ptr noundef %0, i32 noundef range(i32 14, 25) 24, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ed = load i32, ptr @hf_ospf_hello_hello_interval, align 4
  %i.ee = call ptr @proto_tree_add_item(ptr noundef %i.dz, i32 noundef %i.ed, ptr noundef %0, i32 noundef 28, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ef = load i32, ptr @hf_ospf_v2_options, align 4
  %i.eg = load i32, ptr @ett_ospf_v2_options, align 4
  %i.eh = call ptr @proto_tree_add_bitmask(ptr noundef %i.dz, ptr noundef %0, i32 noundef 30, i32 noundef %i.ef, i32 noundef %i.eg, ptr noundef nonnull @bf_v2_options, i32 noundef 0) ; 0 uses
  %i.ei = load i32, ptr @hf_ospf_hello_router_priority, align 4
  %i.ej = call ptr @proto_tree_add_item(ptr noundef %i.dz, i32 noundef %i.ei, ptr noundef %0, i32 noundef 31, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ek = load i32, ptr @hf_ospf_hello_router_dead_interval, align 4
  %i.el = call ptr @proto_tree_add_item(ptr noundef %i.dz, i32 noundef %i.ek, ptr noundef %0, i32 noundef 32, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.em = load i32, ptr @hf_ospf_hello_designated_router, align 4
  %i.en = call ptr @proto_tree_add_item(ptr noundef %i.dz, i32 noundef %i.em, ptr noundef %0, i32 noundef 36, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.eo = load i32, ptr @hf_ospf_hello_backup_designated_router, align 4
  %i.ep = call ptr @proto_tree_add_item(ptr noundef %i.dz, i32 noundef %i.eo, ptr noundef %0, i32 noundef 40, i32 noundef 4, i32 noundef 0) ; 0 uses
  %5 = add nuw nsw i32 %i.dw, 24
  br i1 %i.ea, label %.lr.ph67.i, label %dissect_ospf_hello.exit.thread237

.lr.ph67.i:                                       ; preds = %bb.ac, %.lr.ph67.i
  %.066.i = phi i32 [ %i.es, %.lr.ph67.i ], [ 44, %bb.ac ] ; 2 uses
  %i.eq = load i32, ptr @hf_ospf_hello_active_neighbor, align 4
  %i.er = call ptr @proto_tree_add_item(ptr noundef %i.dz, i32 noundef %i.eq, ptr noundef %0, i32 noundef %.066.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.es = add nuw nsw i32 %.066.i, 4              ; 2 uses
  %i.et = icmp samesign ugt i32 %5, %i.es
  br i1 %i.et, label %.lr.ph67.i, label %dissect_ospf_hello.exit.thread237, !llvm.loop !8

bb.ad:                                            ; preds = %bb.ab
  %i.eu = load i32, ptr @hf_ospf_hello_interface_id, align 4
  %i.ev = call ptr @proto_tree_add_item(ptr noundef %i.dz, i32 noundef %i.eu, ptr noundef %0, i32 noundef range(i32 14, 25) 16, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ew = load i32, ptr @hf_ospf_hello_router_priority, align 4
  %i.ex = call ptr @proto_tree_add_item(ptr noundef %i.dz, i32 noundef %i.ew, ptr noundef %0, i32 noundef 20, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ey = load i32, ptr @hf_ospf_v3_options, align 4
  %i.ez = load i32, ptr @ett_ospf_v3_options, align 4
  %i.fa = call ptr @proto_tree_add_bitmask(ptr noundef %i.dz, ptr noundef %0, i32 noundef 21, i32 noundef %i.ey, i32 noundef %i.ez, ptr noundef nonnull @bf_v3_options, i32 noundef 0) ; 0 uses
  %i.fb = load i32, ptr @hf_ospf_hello_hello_interval, align 4
  %i.fc = call ptr @proto_tree_add_item(ptr noundef %i.dz, i32 noundef %i.fb, ptr noundef %0, i32 noundef 24, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fd = load i32, ptr @hf_ospf_hello_router_dead_interval, align 4
  %i.fe = call ptr @proto_tree_add_item(ptr noundef %i.dz, i32 noundef %i.fd, ptr noundef %0, i32 noundef 26, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ff = load i32, ptr @hf_ospf_hello_designated_router, align 4
  %i.fg = call ptr @proto_tree_add_item(ptr noundef %i.dz, i32 noundef %i.ff, ptr noundef %0, i32 noundef 28, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.fh = load i32, ptr @hf_ospf_hello_backup_designated_router, align 4
  %i.fi = call ptr @proto_tree_add_item(ptr noundef %i.dz, i32 noundef %i.fh, ptr noundef %0, i32 noundef 32, i32 noundef 4, i32 noundef 0) ; 0 uses
  %6 = add nuw nsw i32 %i.dw, 16
  br i1 %i.ea, label %.lr.ph.i, label %dissect_ospf_hello.exit.thread237

.lr.ph.i:                                         ; preds = %bb.ad, %.lr.ph.i
  %.165.i = phi i32 [ %i.fl, %.lr.ph.i ], [ 36, %bb.ad ] ; 2 uses
  %i.fj = load i32, ptr @hf_ospf_hello_active_neighbor, align 4
  %i.fk = call ptr @proto_tree_add_item(ptr noundef %i.dz, i32 noundef %i.fj, ptr noundef %0, i32 noundef %.165.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.fl = add nuw nsw i32 %.165.i, 4              ; 2 uses
  %i.fm = icmp samesign ugt i32 %6, %i.fl
  br i1 %i.fm, label %.lr.ph.i, label %dissect_ospf_hello.exit.thread237, !llvm.loop !9

bb.ae:                                            ; preds = %bb.aa
  %i.fn = trunc nuw nsw i32 %switch.select206 to i16
  %i.fo = sub i16 %i.q, %i.fn                     ; 5 uses
  %.not.i211 = icmp eq ptr %i.u, null
  br i1 %.not.i211, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fp = zext i16 %i.fo to i32
  %i.fq = load i32, ptr @ett_ospf_desc, align 4
  %i.fr = call ptr @proto_tree_add_subtree(ptr noundef nonnull %i.u, ptr noundef %0, i32 noundef range(i32 14, 25) %switch.select206, i32 noundef %i.fp, i32 noundef %i.fq, ptr noundef null, ptr noundef nonnull @.str.798) ; 10 uses
  br i1 %switch.selectcmp205, label %.thread.i, label %bb.ag

.thread.i:                                        ; preds = %bb.af
  %i.fs = load i32, ptr @hf_ospf_db_interface_mtu, align 4
  %i.ft = call ptr @proto_tree_add_item(ptr noundef %i.fr, i32 noundef %i.fs, ptr noundef %0, i32 noundef range(i32 14, 25) 24, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fu = load i32, ptr @hf_ospf_v2_options, align 4
  %i.fv = load i32, ptr @ett_ospf_v2_options, align 4
  %i.fw = call ptr @proto_tree_add_bitmask(ptr noundef %i.fr, ptr noundef %0, i32 noundef 26, i32 noundef %i.fu, i32 noundef %i.fv, ptr noundef nonnull @bf_v2_options, i32 noundef 0) ; 0 uses
  %i.fx = load i32, ptr @hf_ospf_dbd, align 4
  %i.fy = load i32, ptr @ett_ospf_dbd, align 4
  %i.fz = call ptr @proto_tree_add_bitmask(ptr noundef %i.fr, ptr noundef %0, i32 noundef 27, i32 noundef %i.fx, i32 noundef %i.fy, ptr noundef nonnull @bf_dbd, i32 noundef 0) ; 0 uses
  %i.ga = load i32, ptr @hf_ospf_db_dd_sequence, align 4
  %i.gb = call ptr @proto_tree_add_item(ptr noundef %i.fr, i32 noundef %i.ga, ptr noundef %0, i32 noundef 28, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread74.i

bb.ag:                                            ; preds = %bb.af
  %i.gc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef range(i32 14, 25) 16)
  %i.gd = load i32, ptr @hf_ospf_header_reserved, align 4
  %i.ge = call ptr @proto_tree_add_item(ptr noundef %i.fr, i32 noundef %i.gd, ptr noundef %0, i32 noundef range(i32 14, 25) 16, i32 noundef 1, i32 noundef 0)
  %.not67.i = icmp eq i8 %i.gc, 0
  br i1 %.not67.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gf = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ge, ptr noundef nonnull @ei_ospf_header_reserved) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gg = load i32, ptr @hf_ospf_v3_options, align 4
  %i.gh = load i32, ptr @ett_ospf_v3_options, align 4
  %i.gi = call ptr @proto_tree_add_bitmask(ptr noundef %i.fr, ptr noundef %0, i32 noundef 17, i32 noundef %i.gg, i32 noundef %i.gh, ptr noundef nonnull @bf_v3_options, i32 noundef 0) ; 0 uses
  %i.gj = load i32, ptr @hf_ospf_db_interface_mtu, align 4
  %i.gk = call ptr @proto_tree_add_item(ptr noundef %i.fr, i32 noundef %i.gj, ptr noundef %0, i32 noundef 20, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.gl = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 22)
  %i.gm = load i32, ptr @hf_ospf_header_reserved, align 4
  %i.gn = call ptr @proto_tree_add_item(ptr noundef %i.fr, i32 noundef %i.gm, ptr noundef %0, i32 noundef 22, i32 noundef 1, i32 noundef 0)
  %.not68.i = icmp eq i8 %i.gl, 0
  br i1 %.not68.i, label %.thread69.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.go = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.gn, ptr noundef nonnull @ei_ospf_header_reserved) ; 0 uses
  br label %.thread69.i

.thread69.i:                                      ; preds = %bb.aj, %bb.ai
  %i.gp = load i32, ptr @hf_ospf_dbd, align 4
  %i.gq = load i32, ptr @ett_ospf_dbd, align 4
  %i.gr = call ptr @proto_tree_add_bitmask(ptr noundef %i.fr, ptr noundef %0, i32 noundef 23, i32 noundef %i.gp, i32 noundef %i.gq, ptr noundef nonnull @bf_dbd, i32 noundef 0) ; 0 uses
  %i.gs = load i32, ptr @hf_ospf_db_dd_sequence, align 4
  %i.gt = call ptr @proto_tree_add_item(ptr noundef %i.fr, i32 noundef %i.gs, ptr noundef %0, i32 noundef 24, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread74.i.thread

bb.ak:                                            ; preds = %bb.ae
  br i1 %switch.selectcmp205, label %.thread74.i, label %.thread74.i.thread

.thread74.i:                                      ; preds = %bb.ak, %.thread.i
  %i.gu = zext i16 %i.fo to i32
  %i.gv = add nuw nsw i32 %i.gu, 24               ; 2 uses
  %i.gw = icmp ugt i16 %i.fo, 8
  br i1 %i.gw, label %.lr.ph.i212, label %dissect_ospf_hello.exit.thread239

.thread74.i.thread:                               ; preds = %.thread69.i, %bb.ak
  %i.gx = icmp ugt i16 %i.fo, 12
  br i1 %i.gx, label %.lr.ph.i212.thread, label %dissect_ospf_hello.exit.thread239

.lr.ph.i212.thread:                               ; preds = %.thread74.i.thread
  %i.gy = zext i16 %i.fo to i32
  %i.gz = add nuw nsw i32 %switch.select, %i.gy
  %i.ha = add nuw nsw i32 %switch.select, 12
  br label %.lr.ph.split.i.preheader

.lr.ph.i212:                                      ; preds = %.thread74.i
  %i.hb = add nuw nsw i32 %switch.select206, 8    ; 2 uses
  br i1 %switch.selectcmp205, label %.lr.ph.split.us.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i212.thread, %.lr.ph.i212
  %i.hc = phi i32 [ %i.ha, %.lr.ph.i212.thread ], [ %i.hb, %.lr.ph.i212 ]
  %i.hd = phi i32 [ %i.gz, %.lr.ph.i212.thread ], [ %i.gv, %.lr.ph.i212 ]
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i212, %.lr.ph.split.us.i
  %.170.us.i = phi i32 [ %i.he, %.lr.ph.split.us.i ], [ %i.hb, %.lr.ph.i212 ]
  %i.he = call fastcc i32 @dissect_ospf_v2_lsa(ptr noundef %0, ptr noundef %1, i32 noundef %.170.us.i, ptr noundef %i.u, i1 noundef zeroext false) ; 2 uses
  %i.hf = icmp sgt i32 %i.gv, %i.he
  br i1 %i.hf, label %.lr.ph.split.us.i, label %dissect_ospf_hello.exit.thread239, !llvm.loop !10

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %.lr.ph.split.i
  %.170.i = phi i32 [ %i.hg, %.lr.ph.split.i ], [ %i.hc, %.lr.ph.split.i.preheader ]
  %i.hg = call fastcc i32 @dissect_ospf_v3_lsa(ptr noundef %0, ptr noundef %1, i32 noundef %.170.i, ptr noundef %i.u, i1 noundef zeroext false, i8 noundef zeroext range(i8 4, 7) %.0192) ; 2 uses
  %i.hh = icmp sgt i32 %i.hd, %i.hg
  br i1 %i.hh, label %.lr.ph.split.i, label %dissect_ospf_hello.exit.thread239, !llvm.loop !10

bb.al:                                            ; preds = %bb.aa
  %i.hi = trunc nuw nsw i32 %switch.select206 to i16 ; 2 uses
  %i.hj = sub i16 %i.q, %i.hi
  %i.hk = zext i16 %i.hj to i32
  %i.hl = add nuw nsw i32 %switch.select206, %i.hk
  %.not39.i = icmp eq i16 %i.q, %i.hi
  br i1 %.not39.i, label %dissect_ospf_hello.exit.thread, label %.lr.ph.i214

.lr.ph.i214:                                      ; preds = %bb.al, %bb.aq
  %.038.i = phi i32 [ %i.il, %bb.aq ], [ %switch.select206, %bb.al ] ; 8 uses
  %i.hm = load i32, ptr @ett_ospf_lsr, align 4
  %i.hn = call ptr @proto_tree_add_subtree(ptr noundef %i.u, ptr noundef %0, i32 noundef %.038.i, i32 noundef 12, i32 noundef %i.hm, ptr noundef null, ptr noundef nonnull @.str.950) ; 5 uses
  switch i8 %i.j, label %bb.aq [
    i8 2, label %bb.am
    i8 3, label %bb.an
  ]

bb.am:                                            ; preds = %.lr.ph.i214
  %i.ho = load i32, ptr @hf_ospf_ls_type, align 4
  %i.hp = call ptr @proto_tree_add_item(ptr noundef %i.hn, i32 noundef %i.ho, ptr noundef %0, i32 noundef %.038.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.aq

bb.an:                                            ; preds = %.lr.ph.i214
  %i.hq = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.038.i)
  %i.hr = load i32, ptr @hf_ospf_header_reserved, align 4
  %i.hs = call ptr @proto_tree_add_item(ptr noundef %i.hn, i32 noundef %i.hr, ptr noundef %0, i32 noundef %.038.i, i32 noundef 2, i32 noundef 0)
  %.not.i215 = icmp eq i16 %i.hq, 0
  br i1 %.not.i215, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ht = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.hs, ptr noundef nonnull @ei_ospf_header_reserved) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.hu = load i32, ptr @hf_ospf_v3_ls_type, align 4
  %i.hv = add nuw nsw i32 %.038.i, 2              ; 4 uses
  %i.hw = call ptr @proto_tree_add_item(ptr noundef %i.hn, i32 noundef %i.hu, ptr noundef %0, i32 noundef %i.hv, i32 noundef 2, i32 noundef 0)
  %i.hx = load i32, ptr @ett_ospf_lsa_type, align 4
  %i.hy = call ptr @proto_item_add_subtree(ptr noundef %i.hw, i32 noundef %i.hx) ; 3 uses
  %i.hz = load i32, ptr @hf_ospf_v3_ls_type_u, align 4
  %i.ia = call ptr @proto_tree_add_item(ptr noundef %i.hy, i32 noundef %i.hz, ptr noundef %0, i32 noundef %i.hv, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ib = load i32, ptr @hf_ospf_v3_ls_type_s12, align 4
  %i.ic = call ptr @proto_tree_add_item(ptr noundef %i.hy, i32 noundef %i.ib, ptr noundef %0, i32 noundef %i.hv, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.id = load i32, ptr @hf_ospf_v3_ls_type_fc, align 4
  %i.ie = call ptr @proto_tree_add_item(ptr noundef %i.hy, i32 noundef %i.id, ptr noundef %0, i32 noundef %i.hv, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am, %.lr.ph.i214
  %i.if = load i32, ptr @hf_ospf_link_state_id, align 4
  %i.ig = add nuw nsw i32 %.038.i, 4
  %i.ih = call ptr @proto_tree_add_item(ptr noundef %i.hn, i32 noundef %i.if, ptr noundef %0, i32 noundef %i.ig, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ii = load i32, ptr @hf_ospf_adv_router, align 4
  %i.ij = add nuw nsw i32 %.038.i, 8
  %i.ik = call ptr @proto_tree_add_item(ptr noundef %i.hn, i32 noundef %i.ii, ptr noundef %0, i32 noundef %i.ij, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.il = add nuw nsw i32 %.038.i, 12             ; 2 uses
  %i.im = icmp samesign ugt i32 %i.hl, %i.il
  br i1 %i.im, label %.lr.ph.i214, label %dissect_ospf_hello.exit, !llvm.loop !11

bb.ar:                                            ; preds = %bb.aa
  %i.in = trunc nuw nsw i32 %switch.select206 to i16
  %i.io = sub i16 %i.q, %i.in
  %i.ip = zext i16 %i.io to i32
  %i.iq = load i32, ptr @ett_ospf_lsa_upd, align 4
  %i.ir = call ptr @proto_tree_add_subtree(ptr noundef %i.u, ptr noundef %0, i32 noundef range(i32 14, 25) %switch.select206, i32 noundef %i.ip, i32 noundef %i.iq, ptr noundef null, ptr noundef nonnull @.str.951) ; 3 uses
  %i.is = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef range(i32 14, 25) %switch.select206) ; 3 uses
  %i.it = load i32, ptr @hf_ospf_ls_number_of_lsas, align 4
  %i.iu = call ptr @proto_tree_add_item(ptr noundef %i.ir, i32 noundef %i.it, ptr noundef %0, i32 noundef range(i32 14, 25) %switch.select206, i32 noundef 4, i32 noundef 0) ; 0 uses
  %.not.i217 = icmp eq i32 %i.is, 0
  br i1 %.not.i217, label %dissect_ospf_hello.exit.thread, label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %bb.ar
  %i.iv = add nuw nsw i32 %switch.select206, 4    ; 2 uses
  br i1 %switch.selectcmp205, label %.lr.ph.split.us.i220, label %.lr.ph.split.i219

.lr.ph.split.us.i220:                             ; preds = %.lr.ph.i218, %.lr.ph.split.us.i220
  %.028.us.i = phi i32 [ %i.ix, %.lr.ph.split.us.i220 ], [ 0, %.lr.ph.i218 ]
  %.02627.us.i = phi i32 [ %i.iw, %.lr.ph.split.us.i220 ], [ %i.iv, %.lr.ph.i218 ]
  %i.iw = call fastcc i32 @dissect_ospf_v2_lsa(ptr noundef %0, ptr noundef %1, i32 noundef %.02627.us.i, ptr noundef %i.ir, i1 noundef zeroext true)
  %i.ix = add nuw i32 %.028.us.i, 1               ; 2 uses
  %exitcond30.not.i = icmp eq i32 %i.ix, %i.is
  br i1 %exitcond30.not.i, label %dissect_ospf_hello.exit.thread, label %.lr.ph.split.us.i220, !llvm.loop !12

.lr.ph.split.i219:                                ; preds = %.lr.ph.i218, %.lr.ph.split.i219
  %.028.i = phi i32 [ %i.iz, %.lr.ph.split.i219 ], [ 0, %.lr.ph.i218 ]
  %.02627.i = phi i32 [ %i.iy, %.lr.ph.split.i219 ], [ %i.iv, %.lr.ph.i218 ]
  %i.iy = call fastcc i32 @dissect_ospf_v3_lsa(ptr noundef %0, ptr noundef %1, i32 noundef %.02627.i, ptr noundef %i.ir, i1 noundef zeroext true, i8 noundef zeroext range(i8 4, 7) %.0192)
  %i.iz = add nuw i32 %.028.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.iz, %i.is
  br i1 %exitcond.not.i, label %dissect_ospf_hello.exit.thread, label %.lr.ph.split.i219, !llvm.loop !12

.preheader.i222:                                  ; preds = %bb.aa
  %i.ja = trunc nuw nsw i32 %switch.select206 to i16 ; 2 uses
  %i.jb = sub i16 %i.q, %i.ja
  %i.jc = zext i16 %i.jb to i32
  %i.jd = add nuw nsw i32 %switch.select206, %i.jc ; 2 uses
  %.not.i223 = icmp eq i16 %i.q, %i.ja
  br i1 %.not.i223, label %dissect_ospf_hello.exit.thread, label %.lr.ph.i224

end_hunk_0
