Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-bgp?download=true
inline.NumInlined: 72
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@decode_prefix_MP:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 4, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.a, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr null, ptr %i.ae, align 8
  %i.af = sub i32 %i.u, %8
  %i.ag = add i32 %i.af, %i.z                     ; 2 uses
  %i.ah = load i32, ptr @ett_bgp_prefix, align 4  ; 2 uses
  %i.ai = call ptr @wmem_strbuf_get_str(ptr noundef %i.p) ; 2 uses
  %i.aj = load ptr, ptr %i.n, align 8
  %i.ak = call ptr @address_to_str(ptr noundef %i.aj, ptr noundef nonnull %13) ; 2 uses
  br i1 %.not941.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %0, ptr noundef %7, i32 noundef %8, i32 noundef %i.ag, i32 noundef %i.ah, ptr noundef null, ptr noundef nonnull @.str.1935, ptr noundef %i.ai, ptr noundef %i.ak, i32 noundef %i.y, i32 noundef %.0) ; 2 uses
  %i.am = call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %1, ptr noundef %7, i32 noundef %8, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.an = add i32 %8, 4
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ao = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %0, ptr noundef %7, i32 noundef %8, i32 noundef %i.ag, i32 noundef %i.ah, ptr noundef null, ptr noundef nonnull @.str.1936, ptr noundef %i.ai, ptr noundef %i.ak, i32 noundef %i.y)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0874 = phi i32 [ %i.an, %bb.n ], [ %8, %bb.o ] ; 2 uses
  %.0871 = phi ptr [ %i.al, %bb.n ], [ %i.ao, %bb.o ] ; 3 uses
  %i.ap = load i32, ptr @hf_bgp_prefix_length, align 4
  %i.aq = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %.0871, i32 noundef %i.ap, ptr noundef %7, i32 noundef %.0874, i32 noundef 1, i32 noundef %i.m, ptr noundef nonnull @.str.1937, ptr noundef %9, i32 noundef %i.m) ; 0 uses
  %i.ar = load i32, ptr @hf_bgp_label_stack, align 4
  %i.as = add i32 %.0874, 1
  %i.at = call ptr @wmem_strbuf_get_str(ptr noundef %i.p)
  %i.au = call ptr @wmem_strbuf_get_str(ptr noundef %i.p)
  %i.av = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %.0871, i32 noundef %i.ar, ptr noundef %7, i32 noundef %i.as, i32 noundef %i.s, ptr noundef %i.at, ptr noundef nonnull @.str.1938, ptr noundef %9, ptr noundef %i.au) ; 0 uses
  %i.aw = add i32 %i.t, %.1870
  %i.ax = add i32 %i.aw, %i.z
  %i.ay = load i32, ptr %i.a, align 4
  %i.az = call ptr @proto_tree_add_ipv4(ptr noundef %.0871, i32 noundef %2, ptr noundef %7, i32 noundef %i.u, i32 noundef %i.z, i32 noundef %i.ay) ; 0 uses
  br label %bb.er

bb.q:                                             ; preds = %bb.b
  %i.ba = tail call fastcc i32 @decode_mcast_vpn_nlri(ptr noundef %0, ptr noundef %7, i32 noundef %8, i16 noundef zeroext 1, ptr noundef %10) ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.es, label %bb.er

bb.r:                                             ; preds = %bb.b
  %i.bc = tail call fastcc i32 @decode_mdt_safi(ptr noundef %10, ptr noundef %0, ptr noundef %7, i32 noundef %8) ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.es, label %bb.er

bb.s:                                             ; preds = %bb.b
  %i.be = tail call zeroext i8 @tvb_get_uint8(ptr noundef %7, i32 noundef %8) ; 3 uses
  %i.bf = zext i8 %i.be to i32                    ; 3 uses
  %i.bg = icmp eq i8 %i.be, 0
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bh = load i32, ptr @hf_bgp_wildcard_route_target, align 4
  %i.bi = tail call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.bh, ptr noundef %7, i32 noundef %8, i32 noundef 1, ptr noundef %9) ; 0 uses
  br label %bb.er

bb.u:                                             ; preds = %bb.s
  %i.bj = add i8 %i.be, -97
  %or.cond = icmp ult i8 %i.bj, -65
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bk = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @ei_bgp_length_invalid, ptr noundef %7, i32 noundef %8, i32 noundef 1, ptr noundef nonnull @.str.1939, ptr noundef %9, i32 noundef %i.bf) ; 0 uses
  br label %bb.es

bb.w:                                             ; preds = %bb.u
  %i.bl = add nuw nsw i32 %i.bf, 7
  %i.bm = lshr i32 %i.bl, 3                       ; 3 uses
  %i.bn = getelementptr i8, ptr %10, i64 416      ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call ptr @wmem_strbuf_new(ptr noundef %i.bo, ptr noundef nonnull @.str) ; 6 uses
  %i.bq = add i32 %8, 1                           ; 3 uses
  %i.br = add i32 %8, 5                           ; 2 uses
  %i.bs = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %7, i32 noundef %i.br)
  switch i16 %i.bs, label %bb.aa [
    i16 2, label %bb.x
    i16 258, label %bb.y
    i16 514, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.bt = add i32 %8, 7
  %i.bu = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %7, i32 noundef %i.bt)
  %i.bv = zext i16 %i.bu to i32
  %i.bw = add i32 %8, 9
  %i.bx = tail call i32 @tvb_get_ntohl(ptr noundef %7, i32 noundef %i.bw)
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.bp, ptr noundef nonnull @.str.1, i32 noundef %i.bv, i32 noundef %i.bx)
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.by = load ptr, ptr %i.bn, align 8
  %i.bz = add i32 %8, 7
  %i.ca = tail call ptr @tvb_address_to_str(ptr noundef %i.by, ptr noundef %7, i32 noundef 2, i32 noundef %i.bz)
  %i.cb = add i32 %8, 11
  %i.cc = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %7, i32 noundef %i.cb)
  %i.cd = zext i16 %i.cc to i32
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.bp, ptr noundef nonnull @.str.2, ptr noundef %i.ca, i32 noundef %i.cd)
  br label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.ce = tail call i32 @tvb_get_ntohl(ptr noundef %7, i32 noundef 6)
  %i.cf = add i32 %8, 11
  %i.cg = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %7, i32 noundef %i.cf)
  %i.ch = zext i16 %i.cg to i32
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.bp, ptr noundef nonnull @.str.1, i32 noundef %i.ce, i32 noundef %i.ch)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.bp, ptr noundef nonnull @.str.1940)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.ci = load i32, ptr @ett_bgp_prefix, align 4
  %i.cj = tail call i32 @tvb_get_ntohl(ptr noundef %7, i32 noundef %i.bq)
  %i.ck = tail call ptr @wmem_strbuf_get_str(ptr noundef %i.bp)
  %i.cl = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %0, ptr noundef %7, i32 noundef %i.bq, i32 noundef %i.bm, i32 noundef %i.ci, ptr noundef null, ptr noundef nonnull @.str.1941, ptr noundef %9, i32 noundef %i.cj, ptr noundef %i.ck, i32 noundef %i.bf) ; 3 uses
  %i.cm = load i32, ptr @hf_bgp_prefix_length, align 4
  %i.cn = tail call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.cm, ptr noundef %7, i32 noundef %8, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.co = load i32, ptr @hf_bgp_originating_as, align 4
  %i.cp = tail call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.co, ptr noundef %7, i32 noundef %i.bq, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.cq = load i32, ptr @hf_bgp_community_prefix, align 4
  %i.cr = add nsw i32 %i.bm, -4
  %i.cs = tail call ptr @wmem_strbuf_get_str(ptr noundef %i.bp)
  %i.ct = tail call ptr @proto_tree_add_string(ptr noundef %i.cl, i32 noundef %i.cq, ptr noundef %7, i32 noundef %i.br, i32 noundef %i.cr, ptr noundef %i.cs) ; 0 uses
  %i.cu = add nuw nsw i32 %i.bm, 1
  br label %bb.er

bb.ac:                                            ; preds = %bb.b
  %i.cv = tail call zeroext i8 @tvb_get_uint8(ptr noundef %7, i32 noundef %8) ; 2 uses
  %.not940 = icmp eq i8 %i.cv, 32
  br i1 %.not940, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cw = zext i8 %i.cv to i32
  %i.cx = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @ei_bgp_length_invalid, ptr noundef %7, i32 noundef %8, i32 noundef 1, ptr noundef nonnull @.str.1942, ptr noundef %9, i32 noundef %i.cw) ; 0 uses
  br label %bb.es

bb.ae:                                            ; preds = %bb.ac
  %i.cy = add i32 %8, 1
  %i.cz = load i32, ptr @hf_bgp_endpoint_address, align 4
  %i.da = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.cz, ptr noundef %7, i32 noundef %i.cy, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.er

bb.af:                                            ; preds = %bb.b
  %i.db = tail call zeroext i8 @tvb_get_uint8(ptr noundef %7, i32 noundef %8) ; 2 uses
  %i.dc = zext i8 %i.db to i32                    ; 3 uses
  %i.dd = icmp ult i8 %i.db, 17
  br i1 %i.dd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.de = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @ei_bgp_prefix_length_invalid, ptr noundef %7, i32 noundef %8, i32 noundef 1, ptr noundef nonnull @.str.1943, ptr noundef %9, i32 noundef %i.dc) ; 0 uses
  br label %bb.es

bb.ah:                                            ; preds = %bb.af
  %i.df = add i32 %8, 1                           ; 2 uses
  %i.dg = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %7, i32 noundef %i.df)
  %i.dh = add i32 %8, 3                           ; 2 uses
  %i.di = add nsw i32 %i.dc, -16                  ; 2 uses
  %i.dj = call i32 @tvb_get_ipv4_addr_with_prefix_len(ptr noundef %7, i32 noundef %i.dh, ptr noundef nonnull %i.a, i32 noundef %i.di) ; 3 uses
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dl = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @ei_bgp_prefix_length_invalid, ptr noundef %7, i32 noundef %8, i32 noundef 1, ptr noundef nonnull @.str.1943, ptr noundef %9, i32 noundef %i.dc) ; 0 uses
  br label %bb.es

bb.aj:                                            ; preds = %bb.ah
  store i32 2, ptr %13, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 4, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.a, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr null, ptr %i.do, align 8
  %i.dp = add nuw i32 %i.dj, 3                    ; 2 uses
  %i.dq = load i32, ptr @ett_bgp_prefix, align 4
  %i.dr = zext i16 %i.dg to i32
  %i.ds = getelementptr i8, ptr %10, i64 416
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = call ptr @address_to_str(ptr noundef %i.dt, ptr noundef nonnull %13)
  %i.dv = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %0, ptr noundef %7, i32 noundef %8, i32 noundef %i.dp, i32 noundef %i.dq, ptr noundef null, ptr noundef nonnull @.str.1944, i32 noundef %i.dr, ptr noundef %i.du, i32 noundef %i.di) ; 3 uses
  %i.dw = load i32, ptr @hf_bgp_prefix_length, align 4
  %i.dx = call ptr @proto_tree_add_item(ptr noundef %i.dv, i32 noundef %i.dw, ptr noundef %7, i32 noundef %8, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dy = load i32, ptr @hf_bgp_mp_nlri_tnl_id, align 4
  %i.dz = call ptr @proto_tree_add_item(ptr noundef %i.dv, i32 noundef %i.dy, ptr noundef %7, i32 noundef %i.df, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ea = load i32, ptr %i.a, align 4
  %i.eb = call ptr @proto_tree_add_ipv4(ptr noundef %i.dv, i32 noundef %2, ptr noundef %7, i32 noundef %i.dh, i32 noundef %i.dj, i32 noundef %i.ea) ; 0 uses
  br label %bb.er

bb.ak:                                            ; preds = %bb.b
  %i.ec = tail call fastcc i32 @decode_sr_policy_nlri(ptr noundef %0, ptr noundef %7, i32 noundef %8, i16 noundef zeroext 1)
  br label %bb.er

bb.al:                                            ; preds = %bb.b, %bb.b, %bb.b
  %i.ed = add i32 %8, %6
  %i.ee = tail call fastcc i32 @detect_add_path_prefix46(ptr noundef %7, i32 noundef %8, i32 noundef %i.ed, i32 noundef 255) ; 2 uses
  %.not939.not = icmp eq i32 %i.ee, 0             ; 2 uses
  %i.ef = add i32 %8, 4                           ; 2 uses
  %spec.select = select i1 %.not939.not, i32 %8, i32 %i.ef ; 2 uses
  %spec.select943 = shl nuw nsw i32 %i.ee, 2
  %i.eg = tail call zeroext i8 @tvb_get_uint8(ptr noundef %7, i32 noundef %spec.select)
  %i.eh = zext i8 %i.eg to i32                    ; 4 uses
  %i.ei = getelementptr i8, ptr %10, i64 416      ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = tail call ptr @wmem_strbuf_new(ptr noundef %i.ej, ptr noundef nonnull @.str) ; 4 uses
  %i.el = add i32 %spec.select, 1                 ; 4 uses
  tail call void @wmem_strbuf_truncate(ptr noundef %i.ek, i64 noundef 0)
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %.021.i = phi i32 [ %i.el, %bb.al ], [ %i.et, %bb.ao ] ; 3 uses
  %i.em = tail call i32 @tvb_get_ntoh24(ptr noundef %7, i32 noundef %.021.i) ; 3 uses
  %i.en = icmp eq i32 %.021.i, %i.el
  %i.eo = and i32 %i.em, -8388609
  %or.cond.i = icmp eq i32 %i.eo, 0
  %or.cond19.i = select i1 %i.en, i1 %or.cond.i, i1 false
  br i1 %or.cond19.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @wmem_strbuf_append(ptr noundef %i.ek, ptr noundef nonnull @.str.1967)
  br label %decode_MPLS_stack.exit

bb.ao:                                            ; preds = %bb.am
  %i.ep = lshr i32 %i.em, 4
  %i.eq = and i32 %i.em, 1
  %i.er = icmp eq i32 %i.eq, 0                    ; 2 uses
  %i.es = select i1 %i.er, ptr @.str.71, ptr @.str.1969
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.ek, ptr noundef nonnull @.str.1968, i32 noundef %i.ep, ptr noundef nonnull %i.es)
  %i.et = add i32 %.021.i, 3                      ; 2 uses
  br i1 %i.er, label %bb.am, label %bb.ap, !llvm.loop !0

bb.ap:                                            ; preds = %bb.ao
  %i.eu = sub i32 %i.et, %i.el
  %i.ev = udiv i32 %i.eu, 3
  br label %decode_MPLS_stack.exit

decode_MPLS_stack.exit:                           ; preds = %bb.an, %bb.ap
  %.018.i = phi i32 [ 1, %bb.an ], [ %i.ev, %bb.ap ] ; 2 uses
  %i.ew = mul nuw i32 %.018.i, 3                  ; 4 uses
  %i.ex = add i32 %i.el, %i.ew                    ; 2 uses
  %i.ey = mul i32 %.018.i, 24
  %i.ez = add i32 %i.ey, 64                       ; 2 uses
  %i.fa = icmp ugt i32 %i.ez, %i.eh
  br i1 %i.fa, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %decode_MPLS_stack.exit
  %i.fb = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @ei_bgp_prefix_length_invalid, ptr noundef %7, i32 noundef %8, i32 noundef 1, ptr noundef nonnull @.str.1945, ptr noundef %9, i32 noundef %i.eh) ; 0 uses
  br label %bb.es

bb.ar:                                            ; preds = %decode_MPLS_stack.exit
  %i.fc = sub nuw nsw i32 %i.eh, %i.ez
  %i.fd = add i32 %i.ex, 8                        ; 3 uses
  %i.fe = call i32 @tvb_get_ipv4_addr_with_prefix_len(ptr noundef %7, i32 noundef %i.fd, ptr noundef nonnull %i.a, i32 noundef %i.fc) ; 4 uses
  %i.ff = icmp slt i32 %i.fe, 0
  br i1 %i.ff, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fg = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @ei_bgp_prefix_length_invalid, ptr noundef %7, i32 noundef %8, i32 noundef 1, ptr noundef nonnull @.str.1945, ptr noundef %9, i32 noundef %i.eh) ; 0 uses
  br label %bb.es

bb.at:                                            ; preds = %bb.ar
  store i32 2, ptr %13, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 4, ptr %i.fh, align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.a, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr null, ptr %i.fj, align 8
  %i.fk = sub i32 %i.fd, %8
  %i.fl = add i32 %i.fk, %i.fe
  %i.fm = load i32, ptr @ett_bgp_prefix, align 4
  %i.fn = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %0, ptr noundef %7, i32 noundef %8, i32 noundef %i.fl, i32 noundef %i.fm, ptr noundef null, ptr noundef nonnull @.str.1946) ; 5 uses
  br i1 %.not939.not, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fo = call ptr @proto_tree_add_item(ptr noundef %i.fn, i32 noundef %1, ptr noundef %7, i32 noundef %8, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.1875 = phi i32 [ %i.ef, %bb.au ], [ %8, %bb.at ] ; 2 uses
  %i.fp = load i32, ptr @hf_bgp_prefix_length, align 4
  %i.fq = call ptr @proto_tree_add_item(ptr noundef %i.fn, i32 noundef %i.fp, ptr noundef %7, i32 noundef %.1875, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fr = load i32, ptr @hf_bgp_label_stack, align 4
  %i.fs = add i32 %.1875, 1                       ; 2 uses
  %i.ft = call ptr @wmem_strbuf_get_str(ptr noundef %i.ek)
  %i.fu = call ptr @proto_tree_add_string(ptr noundef %i.fn, i32 noundef %i.fr, ptr noundef %7, i32 noundef %i.fs, i32 noundef %i.ew, ptr noundef %i.ft) ; 0 uses
  %i.fv = load i32, ptr @hf_bgp_rd, align 4
  %i.fw = add i32 %i.fs, %i.ew
  %i.fx = load ptr, ptr %i.ei, align 8
  %i.fy = call ptr @decode_bgp_rd(ptr noundef %i.fx, ptr noundef %7, i32 noundef %i.ex)
  %i.fz = call ptr @proto_tree_add_string(ptr noundef %i.fn, i32 noundef %i.fv, ptr noundef %7, i32 noundef %i.fw, i32 noundef 8, ptr noundef %i.fy) ; 0 uses
  %i.ga = load i32, ptr %i.a, align 4
  %i.gb = call ptr @proto_tree_add_ipv4(ptr noundef %i.fn, i32 noundef %2, ptr noundef %7, i32 noundef %i.fd, i32 noundef %i.fe, i32 noundef %i.ga) ; 0 uses
  %15 = or disjoint i32 %spec.select943, 9
  %i.gc = add i32 %15, %i.ew
  %i.gd = add i32 %i.gc, %i.fe
  br label %bb.er

bb.aw:                                            ; preds = %bb.b, %bb.b
  %i.ge = tail call fastcc i32 @decode_flowspec_nlri(ptr noundef %0, ptr noundef %7, i32 noundef %8, i16 noundef zeroext 1, i8 noundef zeroext %5, ptr noundef %10) ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %bb.es, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gg = add nuw nsw i32 %i.ge, 1
  br label %bb.er

bb.ay:                                            ; preds = %bb.b
  %i.gh = tail call fastcc i32 @decode_bgp_mup_nlri(ptr noundef %0, ptr noundef %7, i32 noundef %8, ptr noundef %10, i16 noundef zeroext 1)
  br label %bb.er

bb.az:                                            ; preds = %bb.b
  %i.gi = zext i8 %5 to i32
  %i.gj = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @ei_bgp_unknown_safi, ptr noundef %7, i32 noundef %8, i32 noundef 0, ptr noundef nonnull @.str.1926, i32 noundef %i.gi, i32 noundef 1) ; 0 uses
  br label %bb.es

bb.ba:                                            ; preds = %bb.a
  switch i8 %5, label %bb.cp [
    i8 1, label %bb.bb
    i8 2, label %bb.bb
    i8 3, label %bb.bb
    i8 4, label %bb.bh
    i8 5, label %bb.br
    i8 7, label %bb.bs
    i8 64, label %bb.bv
    i8 73, label %bb.ca
    i8 85, label %bb.cb
    i8 -128, label %bb.cc
    i8 -127, label %bb.cc
    i8 -126, label %bb.cc
    i8 -123, label %bb.cn
    i8 -122, label %bb.cn
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba, %bb.ba
  %i.gk = add i32 %8, %6
  %i.gl = tail call fastcc range(i32 0, 2) i32 @detect_add_path_prefix46(ptr noundef %7, i32 noundef %8, i32 noundef %i.gk, i32 noundef 128)
  %.not938 = icmp eq i32 %i.gl, 0
  br i1 %.not938, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  %i.gm = tail call i32 @tvb_get_ntohl(ptr noundef %7, i32 noundef %8)
  %i.gn = add i32 %8, 4                           ; 3 uses
  %i.go = tail call zeroext i8 @tvb_get_uint8(ptr noundef %7, i32 noundef %i.gn)
  %i.gp = zext i8 %i.go to i32                    ; 5 uses
  %i.gq = add i32 %8, 5                           ; 2 uses
  %i.gr = call i32 @tvb_get_ipv6_addr_with_prefix_len(ptr noundef %7, i32 noundef %i.gq, ptr noundef nonnull %11, i32 noundef %i.gp) ; 3 uses
  %i.gs = icmp slt i32 %i.gr, 0
  br i1 %i.gs, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gt = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @ei_bgp_length_invalid, ptr noundef %7, i32 noundef %i.gn, i32 noundef 1, ptr noundef nonnull @.str.2006, ptr noundef %9, i32 noundef %i.gp) ; 0 uses
  br label %decode_path_prefix6.exit

bb.be:                                            ; preds = %bb.bc
  store i32 3, ptr %12, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 16, ptr %i.gu, align 4
  %i.gv = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %11, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr null, ptr %i.gw, align 8
  %i.gx = add nuw i32 %i.gr, 5                    ; 2 uses
  %i.gy = load i32, ptr @ett_bgp_prefix, align 4
  %i.gz = getelementptr i8, ptr %10, i64 416
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = call ptr @address_to_str(ptr noundef %i.ha, ptr noundef nonnull %12)
  %i.hc = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %0, ptr noundef %7, i32 noundef %8, i32 noundef %i.gx, i32 noundef %i.gy, ptr noundef null, ptr noundef nonnull @.str.1964, ptr noundef %i.hb, i32 noundef %i.gp, i32 noundef %i.gm) ; 3 uses
  %i.hd = call ptr @proto_tree_add_item(ptr noundef %i.hc, i32 noundef %1, ptr noundef %7, i32 noundef %8, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.he = load i32, ptr @hf_bgp_prefix_length, align 4
  %i.hf = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.hc, i32 noundef %i.he, ptr noundef %7, i32 noundef %i.gn, i32 noundef 1, i32 noundef %i.gp, ptr noundef nonnull @.str.1966, ptr noundef %9, i32 noundef %i.gp) ; 0 uses
  %i.hg = call ptr @proto_tree_add_ipv6(ptr noundef %i.hc, i32 noundef %3, ptr noundef %7, i32 noundef %i.gq, i32 noundef %i.gr, ptr noundef nonnull %11) ; 0 uses
  br label %decode_path_prefix6.exit

decode_path_prefix6.exit:                         ; preds = %bb.bd, %bb.be
  %.0.i = phi i32 [ -1, %bb.bd ], [ %i.gx, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  %i.hh = tail call fastcc i32 @decode_prefix6(ptr noundef %0, ptr noundef %10, i32 noundef %3, ptr noundef %7, i32 noundef %8, ptr noundef %9)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %decode_path_prefix6.exit
  %.3 = phi i32 [ %.0.i, %decode_path_prefix6.exit ], [ %i.hh, %bb.bf ] ; 2 uses
  %i.hi = icmp slt i32 %.3, 0
  br i1 %i.hi, label %bb.es, label %bb.er

bb.bh:                                            ; preds = %bb.ba
  %i.hj = add i32 %8, %6
  %i.hk = tail call fastcc i32 @detect_add_path_prefix46(ptr noundef %7, i32 noundef %8, i32 noundef %i.hj, i32 noundef 255)
  %.not937.not = icmp eq i32 %i.hk, 0             ; 2 uses
  br i1 %.not937.not, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hl = tail call i32 @tvb_get_ntohl(ptr noundef %7, i32 noundef %8)
  %i.hm = add i32 %8, 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.2881 = phi i32 [ %i.hm, %bb.bi ], [ %8, %bb.bh ] ; 3 uses
  %.4 = phi i32 [ 4, %bb.bi ], [ 0, %bb.bh ]
  %.1 = phi i32 [ %i.hl, %bb.bi ], [ 0, %bb.bh ]
  %i.hn = tail call zeroext i8 @tvb_get_uint8(ptr noundef %7, i32 noundef %.2881)
  %i.ho = zext i8 %i.hn to i32                    ; 6 uses
  %i.hp = getelementptr i8, ptr %10, i64 416      ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = tail call ptr @wmem_strbuf_new(ptr noundef %i.hq, ptr noundef nonnull @.str) ; 4 uses
  %i.hs = add i32 %.2881, 1
  %i.ht = tail call fastcc i32 @decode_MPLS_stack(ptr noundef %7, i32 noundef %i.hs, ptr noundef %i.hr) ; 2 uses
  %i.hu = mul nuw i32 %i.ht, 3                    ; 2 uses
  %i.hv = add i32 %i.hu, 1                        ; 2 uses
  %i.hw = add i32 %i.hv, %.2881                   ; 3 uses
  %i.hx = mul i32 %i.ht, 24                       ; 2 uses
  %i.hy = icmp ugt i32 %i.hx, %i.ho
  br i1 %i.hy, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.hz = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @ei_bgp_prefix_length_invalid, ptr noundef %7, i32 noundef %8, i32 noundef 1, ptr noundef nonnull @.str.1947, ptr noundef %9, i32 noundef %i.ho) ; 0 uses
  br label %bb.es

bb.bl:                                            ; preds = %bb.bj
  %i.ia = sub nuw nsw i32 %i.ho, %i.hx            ; 3 uses
  %i.ib = call i32 @tvb_get_ipv6_addr_with_prefix_len(ptr noundef %7, i32 noundef %i.hw, ptr noundef nonnull %14, i32 noundef %i.ia) ; 4 uses
  %i.ic = icmp slt i32 %i.ib, 0
  br i1 %i.ic, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.id = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @ei_bgp_prefix_length_invalid, ptr noundef %7, i32 noundef %8, i32 noundef 1, ptr noundef nonnull @.str.1947, ptr noundef %9, i32 noundef %i.ho) ; 0 uses
  br label %bb.es

bb.bn:                                            ; preds = %bb.bl
  store i32 3, ptr %13, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 16, ptr %i.ie, align 4
  %i.if = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %14, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr null, ptr %i.ig, align 8
  %i.ih = sub i32 %i.hw, %8
  %i.ii = add i32 %i.ih, %i.ib                    ; 2 uses
  %i.ij = load i32, ptr @ett_bgp_prefix, align 4  ; 2 uses
  %i.ik = call ptr @wmem_strbuf_get_str(ptr noundef %i.hr) ; 2 uses
  %i.il = load ptr, ptr %i.hp, align 8
  %i.im = call ptr @address_to_str(ptr noundef %i.il, ptr noundef nonnull %13) ; 2 uses
  br i1 %.not937.not, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.in = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %0, ptr noundef %7, i32 noundef %8, i32 noundef %i.ii, i32 noundef %i.ij, ptr noundef null, ptr noundef nonnull @.str.1948, ptr noundef %i.ik, ptr noundef %i.im, i32 noundef %i.ia, i32 noundef %.1) ; 2 uses
  %i.io = call ptr @proto_tree_add_item(ptr noundef %i.in, i32 noundef %1, ptr noundef %7, i32 noundef %8, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ip = add i32 %8, 4
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.iq = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %0, ptr noundef %7, i32 noundef %8, i32 noundef %i.ii, i32 noundef %i.ij, ptr noundef null, ptr noundef nonnull @.str.1949, ptr noundef %i.ik, ptr noundef %i.im, i32 noundef %i.ia)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.2876 = phi i32 [ %i.ip, %bb.bo ], [ %8, %bb.bp ] ; 2 uses
  %.1872 = phi ptr [ %i.in, %bb.bo ], [ %i.iq, %bb.bp ] ; 3 uses
  %i.ir = load i32, ptr @hf_bgp_prefix_length, align 4
  %i.is = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %.1872, i32 noundef %i.ir, ptr noundef %7, i32 noundef %.2876, i32 noundef 1, i32 noundef %i.ho, ptr noundef nonnull @.str.1937, ptr noundef %9, i32 noundef %i.ho) ; 0 uses
  %i.it = load i32, ptr @hf_bgp_label_stack, align 4
  %i.iu = add i32 %.2876, 1
  %i.iv = call ptr @wmem_strbuf_get_str(ptr noundef %i.hr)
  %i.iw = call ptr @wmem_strbuf_get_str(ptr noundef %i.hr)
  %i.ix = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %.1872, i32 noundef %i.it, ptr noundef %7, i32 noundef %i.iu, i32 noundef %i.hu, ptr noundef %i.iv, ptr noundef nonnull @.str.1938, ptr noundef %9, ptr noundef %i.iw) ; 0 uses
  %i.iy = add i32 %i.hv, %.4
  %i.iz = add i32 %i.iy, %i.ib
  %i.ja = call ptr @proto_tree_add_ipv6(ptr noundef %.1872, i32 noundef %3, ptr noundef %7, i32 noundef %i.hw, i32 noundef %i.ib, ptr noundef nonnull %14) ; 0 uses
  br label %bb.er

bb.br:                                            ; preds = %bb.ba
  %i.jb = tail call fastcc i32 @decode_mcast_vpn_nlri(ptr noundef %0, ptr noundef %7, i32 noundef %8, i16 noundef zeroext 2, ptr noundef %10) ; 2 uses
  %i.jc = icmp slt i32 %i.jb, 0
  br i1 %i.jc, label %bb.es, label %bb.er

bb.bs:                                            ; preds = %bb.ba
  %i.jd = tail call zeroext i8 @tvb_get_uint8(ptr noundef %7, i32 noundef %8) ; 2 uses
  %.not936 = icmp eq i8 %i.jd, -128
  br i1 %.not936, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.je = zext i8 %i.jd to i32
  %i.jf = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @ei_bgp_length_invalid, ptr noundef %7, i32 noundef %8, i32 noundef 1, ptr noundef nonnull @.str.1950, ptr noundef %9, i32 noundef %i.je) ; 0 uses
  br label %bb.es

bb.bu:                                            ; preds = %bb.bs
  %i.jg = add i32 %8, 1
  %i.jh = load i32, ptr @hf_bgp_endpoint_address_ipv6, align 4
  %i.ji = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.jh, ptr noundef %7, i32 noundef %i.jg, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.er

bb.bv:                                            ; preds = %bb.ba
  %i.jj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %7, i32 noundef %8) ; 2 uses
  %i.jk = zext i8 %i.jj to i32                    ; 3 uses
  %i.jl = icmp ult i8 %i.jj, 17
  br i1 %i.jl, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.jm = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @ei_bgp_prefix_length_invalid, ptr noundef %7, i32 noundef %8, i32 noundef 1, ptr noundef nonnull @.str.1951, ptr noundef %9, i32 noundef %i.jk) ; 0 uses
  br label %bb.es

bb.bx:                                            ; preds = %bb.bv
  %i.jn = add i32 %8, 1                           ; 2 uses
  %i.jo = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %7, i32 noundef %i.jn)
  %i.jp = add i32 %8, 3                           ; 2 uses
  %i.jq = add nsw i32 %i.jk, -16                  ; 2 uses
  %i.jr = call i32 @tvb_get_ipv6_addr_with_prefix_len(ptr noundef %7, i32 noundef %i.jp, ptr noundef nonnull %14, i32 noundef %i.jq) ; 3 uses
  %i.js = icmp slt i32 %i.jr, 0
  br i1 %i.js, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.jt = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @ei_bgp_prefix_length_invalid, ptr noundef %7, i32 noundef %8, i32 noundef 1, ptr noundef nonnull @.str.1951, ptr noundef %9, i32 noundef %i.jk) ; 0 uses
  br label %bb.es

bb.bz:                                            ; preds = %bb.bx
  store i32 3, ptr %13, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 16, ptr %i.ju, align 4
  %i.jv = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %14, ptr %i.jv, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr null, ptr %i.jw, align 8
  %i.jx = add nuw i32 %i.jr, 3                    ; 2 uses
  %i.jy = load i32, ptr @ett_bgp_prefix, align 4
  %i.jz = zext i16 %i.jo to i32
  %i.ka = getelementptr i8, ptr %10, i64 416
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = call ptr @address_to_str(ptr noundef %i.kb, ptr noundef nonnull %13)
  %i.kd = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %0, ptr noundef %7, i32 noundef %8, i32 noundef %i.jx, i32 noundef %i.jy, ptr noundef null, ptr noundef nonnull @.str.1952, i32 noundef %i.jz, ptr noundef %i.kc, i32 noundef %i.jq) ; 3 uses
  %i.ke = load i32, ptr @hf_bgp_prefix_length, align 4
  %i.kf = call ptr @proto_tree_add_item(ptr noundef %i.kd, i32 noundef %i.ke, ptr noundef %7, i32 noundef %8, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.kg = load i32, ptr @hf_bgp_mp_nlri_tnl_id, align 4
  %i.kh = call ptr @proto_tree_add_item(ptr noundef %i.kd, i32 noundef %i.kg, ptr noundef %7, i32 noundef %i.jn, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ki = call ptr @proto_tree_add_ipv6(ptr noundef %i.kd, i32 noundef %3, ptr noundef %7, i32 noundef %i.jp, i32 noundef %i.jr, ptr noundef nonnull %14) ; 0 uses
  br label %bb.er

bb.ca:                                            ; preds = %bb.ba
  %i.kj = tail call fastcc i32 @decode_sr_policy_nlri(ptr noundef %0, ptr noundef %7, i32 noundef %8, i16 noundef zeroext 2)
  br label %bb.er

bb.cb:                                            ; preds = %bb.ba
  %i.kk = tail call fastcc i32 @decode_bgp_mup_nlri(ptr noundef %0, ptr noundef %7, i32 noundef %8, ptr noundef %10, i16 noundef zeroext 2)
  br label %bb.er

bb.cc:                                            ; preds = %bb.ba, %bb.ba, %bb.ba
  %i.kl = add i32 %8, %6
  %i.km = tail call fastcc i32 @detect_add_path_prefix46(ptr noundef %7, i32 noundef %8, i32 noundef %i.kl, i32 noundef 255) ; 2 uses
  %.not935.not = icmp eq i32 %i.km, 0             ; 2 uses
  %i.kn = add i32 %8, 4                           ; 2 uses
  %spec.select944 = select i1 %.not935.not, i32 %8, i32 %i.kn ; 2 uses
  %spec.select945 = shl nuw nsw i32 %i.km, 2
  %i.ko = tail call zeroext i8 @tvb_get_uint8(ptr noundef %7, i32 noundef %spec.select944)
  %i.kp = zext i8 %i.ko to i32                    ; 4 uses
  %i.kq = getelementptr i8, ptr %10, i64 416      ; 3 uses
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = tail call ptr @wmem_strbuf_new(ptr noundef %i.kr, ptr noundef nonnull @.str) ; 4 uses
  %i.kt = add i32 %spec.select944, 1              ; 4 uses
  tail call void @wmem_strbuf_truncate(ptr noundef %i.ks, i64 noundef 0)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cf, %bb.cc
  %.021.i946 = phi i32 [ %i.kt, %bb.cc ], [ %i.lb, %bb.cf ] ; 3 uses
  %i.ku = tail call i32 @tvb_get_ntoh24(ptr noundef %7, i32 noundef %.021.i946) ; 3 uses
  %i.kv = icmp eq i32 %.021.i946, %i.kt
  %i.kw = and i32 %i.ku, -8388609
  %or.cond.i947 = icmp eq i32 %i.kw, 0
  %or.cond19.i948 = select i1 %i.kv, i1 %or.cond.i947, i1 false
  br i1 %or.cond19.i948, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  tail call void @wmem_strbuf_append(ptr noundef %i.ks, ptr noundef nonnull @.str.1967)
  br label %decode_MPLS_stack.exit950

bb.cf:                                            ; preds = %bb.cd
  %i.kx = lshr i32 %i.ku, 4
  %i.ky = and i32 %i.ku, 1
  %i.kz = icmp eq i32 %i.ky, 0                    ; 2 uses
  %i.la = select i1 %i.kz, ptr @.str.71, ptr @.str.1969
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.ks, ptr noundef nonnull @.str.1968, i32 noundef %i.kx, ptr noundef nonnull %i.la)
  %i.lb = add i32 %.021.i946, 3                   ; 2 uses
  br i1 %i.kz, label %bb.cd, label %bb.cg, !llvm.loop !0

bb.cg:                                            ; preds = %bb.cf
  %i.lc = sub i32 %i.lb, %i.kt
  %i.ld = udiv i32 %i.lc, 3
  br label %decode_MPLS_stack.exit950

decode_MPLS_stack.exit950:                        ; preds = %bb.ce, %bb.cg
  %.018.i949 = phi i32 [ 1, %bb.ce ], [ %i.ld, %bb.cg ] ; 2 uses
  %i.le = mul nuw i32 %.018.i949, 3               ; 3 uses
  %i.lf = add i32 %i.kt, %i.le                    ; 3 uses
  %i.lg = mul i32 %.018.i949, 24
  %i.lh = add i32 %i.lg, 64                       ; 2 uses
  %i.li = icmp ugt i32 %i.lh, %i.kp
  br i1 %i.li, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %decode_MPLS_stack.exit950
  %i.lj = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @ei_bgp_prefix_length_invalid, ptr noundef %7, i32 noundef %8, i32 noundef 1, ptr noundef nonnull @.str.1953, ptr noundef %9, i32 noundef %i.kp) ; 0 uses
  br label %bb.es

bb.ci:                                            ; preds = %decode_MPLS_stack.exit950
  %i.lk = sub nuw nsw i32 %i.kp, %i.lh            ; 2 uses
  %i.ll = add i32 %i.lf, 8                        ; 2 uses
  %i.lm = call i32 @tvb_get_ipv6_addr_with_prefix_len(ptr noundef %7, i32 noundef %i.ll, ptr noundef nonnull %14, i32 noundef %i.lk) ; 3 uses
  %i.ln = icmp slt i32 %i.lm, 0
  br i1 %i.ln, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.lo = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @ei_bgp_prefix_length_invalid, ptr noundef %7, i32 noundef %8, i32 noundef 1, ptr noundef nonnull @.str.1953, ptr noundef %9, i32 noundef %i.kp) ; 0 uses
  br label %bb.es

bb.ck:                                            ; preds = %bb.ci
  br i1 %.not935.not, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lp = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %1, ptr noundef %7, i32 noundef %8, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.3877 = phi i32 [ %i.kn, %bb.cl ], [ %8, %bb.ck ] ; 2 uses
  %i.lq = load i32, ptr @hf_bgp_prefix_length, align 4
  %i.lr = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.lq, ptr noundef %7, i32 noundef %.3877, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ls = load i32, ptr @hf_bgp_label_stack, align 4
  %i.lt = add i32 %.3877, 1
  %i.lu = call ptr @wmem_strbuf_get_str(ptr noundef %i.ks)
  %i.lv = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.ls, ptr noundef %7, i32 noundef %i.lt, i32 noundef %i.le, ptr noundef %i.lu) ; 0 uses
  %i.lw = load i32, ptr @hf_bgp_rd, align 4
  %i.lx = load ptr, ptr %i.kq, align 8
  %i.ly = call ptr @decode_bgp_rd(ptr noundef %i.lx, ptr noundef %7, i32 noundef %i.lf)
  %i.lz = call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.lw, ptr noundef %7, i32 noundef %i.lf, i32 noundef 8, ptr noundef %i.ly) ; 0 uses
  store i32 3, ptr %13, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 16, ptr %i.ma, align 4
  %i.mb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %14, ptr %i.mb, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr null, ptr %i.mc, align 8
  %i.md = load ptr, ptr %i.kq, align 8
  %i.me = call ptr @address_to_str(ptr noundef %i.md, ptr noundef nonnull %13)
  %i.mf = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_ipv6_format_value(ptr noundef %0, i32 noundef %3, ptr noundef %7, i32 noundef %i.ll, i32 noundef %i.lm, ptr noundef nonnull %14, ptr noundef nonnull @.str.1954, ptr noundef %i.me, i32 noundef %i.lk) ; 0 uses
  %16 = or disjoint i32 %spec.select945, 9
  %i.mg = add i32 %16, %i.le
  %i.mh = add i32 %i.mg, %i.lm
  br label %bb.er

bb.cn:                                            ; preds = %bb.ba, %bb.ba
  %i.mi = tail call fastcc i32 @decode_flowspec_nlri(ptr noundef %0, ptr noundef %7, i32 noundef %8, i16 noundef zeroext 2, i8 noundef zeroext %5, ptr noundef %10) ; 2 uses
  %i.mj = icmp slt i32 %i.mi, 0
  br i1 %i.mj, label %bb.es, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mk = add nuw nsw i32 %i.mi, 1
  br label %bb.er

bb.cp:                                            ; preds = %bb.ba
  %i.ml = zext i8 %5 to i32
  %i.mm = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @ei_bgp_unknown_safi, ptr noundef %7, i32 noundef %8, i32 noundef 0, ptr noundef nonnull @.str.1926, i32 noundef %i.ml, i32 noundef 2) ; 0 uses
  br label %bb.es

bb.cq:                                            ; preds = %bb.a, %bb.a
  switch i8 %5, label %bb.dc [
    i8 -128, label %bb.cr
    i8 -127, label %bb.cr
    i8 -126, label %bb.cr
    i8 65, label %bb.cr
    i8 70, label %bb.cy
  ]

bb.cr:                                            ; preds = %bb.cq, %bb.cq, %bb.cq, %bb.cq
  %i.mn = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %7, i32 noundef %8) ; 2 uses
  %i.mo = zext i16 %i.mn to i32                   ; 2 uses
  %i.mp = load i32, ptr @hf_bgp_vplsad_length, align 4
  %i.mq = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.mp, ptr noundef %7, i32 noundef %8, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.mr = load i32, ptr @hf_bgp_vplsad_rd, align 4
  %i.ms = add i32 %8, 2                           ; 2 uses
  %i.mt = getelementptr i8, ptr %10, i64 416      ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8
  %i.mv = tail call ptr @decode_bgp_rd(ptr noundef %i.mu, ptr noundef %7, i32 noundef %i.ms)
  %i.mw = tail call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.mr, ptr noundef %7, i32 noundef %i.ms, i32 noundef 8, ptr noundef %i.mv) ; 0 uses
  %i.mx = icmp eq i16 %i.mn, 12
  %i.my = add i32 %8, 10                          ; 2 uses
  br i1 %i.mx, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.mz = load i32, ptr @hf_bgp_bgpad_pe_addr, align 4
  %i.na = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.mz, ptr noundef %7, i32 noundef %i.my, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.cx

bb.ct:                                            ; preds = %bb.cr
  %i.nb = load i32, ptr @hf_bgp_vplsbgp_ce_id, align 4
  %i.nc = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.nb, ptr noundef %7, i32 noundef %i.my, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.nd = load i32, ptr @hf_bgp_vplsbgp_labelblock_offset, align 4
  %i.ne = add i32 %8, 12
  %i.nf = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.nd, ptr noundef %7, i32 noundef %i.ne, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ng = load i32, ptr @hf_bgp_vplsbgp_labelblock_size, align 4
  %i.nh = add i32 %8, 14
  %i.ni = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ng, ptr noundef %7, i32 noundef %i.nh, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.nj = load ptr, ptr %i.mt, align 8
  %i.nk = tail call ptr @wmem_strbuf_new(ptr noundef %i.nj, ptr noundef nonnull @.str) ; 4 uses
  %i.nl = add i32 %8, 16                          ; 3 uses
  tail call void @wmem_strbuf_truncate(ptr noundef %i.nk, i64 noundef 0)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cw, %bb.ct
  %.021.i951 = phi i32 [ %i.nl, %bb.ct ], [ %i.nt, %bb.cw ] ; 3 uses
  %i.nm = tail call i32 @tvb_get_ntoh24(ptr noundef %7, i32 noundef %.021.i951) ; 3 uses
  %i.nn = icmp eq i32 %.021.i951, %i.nl
  %i.no = and i32 %i.nm, -8388609
  %or.cond.i952 = icmp eq i32 %i.no, 0
  %or.cond19.i953 = select i1 %i.nn, i1 %or.cond.i952, i1 false
  br i1 %or.cond19.i953, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  tail call void @wmem_strbuf_append(ptr noundef %i.nk, ptr noundef nonnull @.str.1967)
  br label %decode_MPLS_stack.exit955

bb.cw:                                            ; preds = %bb.cu
  %i.np = lshr i32 %i.nm, 4
  %i.nq = and i32 %i.nm, 1
  %i.nr = icmp eq i32 %i.nq, 0                    ; 2 uses
  %i.ns = select i1 %i.nr, ptr @.str.71, ptr @.str.1969
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.nk, ptr noundef nonnull @.str.1968, i32 noundef %i.np, ptr noundef nonnull %i.ns)
  %i.nt = add i32 %.021.i951, 3
  br i1 %i.nr, label %bb.cu, label %decode_MPLS_stack.exit955, !llvm.loop !0

decode_MPLS_stack.exit955:                        ; preds = %bb.cw, %bb.cv
  %i.nu = load i32, ptr @hf_bgp_vplsbgp_labelblock_base, align 4
  %i.nv = add nsw i32 %i.mo, -14
  %i.nw = tail call ptr @wmem_strbuf_get_str(ptr noundef %i.nk)
  %i.nx = tail call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.nu, ptr noundef %7, i32 noundef %i.nl, i32 noundef %i.nv, ptr noundef %i.nw) ; 0 uses
  br label %bb.cx

bb.cx:                                            ; preds = %decode_MPLS_stack.exit955, %bb.cs
  %i.ny = add nuw nsw i32 %i.mo, 2
  br label %bb.er

bb.cy:                                            ; preds = %bb.cq
  %i.nz = add i32 %8, 4                           ; 2 uses
  %i.oa = tail call zeroext i8 @tvb_get_uint8(ptr noundef %7, i32 noundef %i.nz)
  %i.ob = icmp ult i8 %i.oa, 11
  br i1 %i.ob, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.oc = tail call zeroext i8 @tvb_get_uint8(ptr noundef %7, i32 noundef %8)
  %i.od = icmp eq i8 %i.oc, 0
  br i1 %i.od, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.oe = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %1, ptr noundef %7, i32 noundef %8, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.of = tail call fastcc i32 @decode_evpn_nlri(ptr noundef %0, ptr noundef %7, i32 noundef %i.nz, ptr noundef %10)
  %i.og = add i32 %i.of, 4
  br label %bb.er

bb.db:                                            ; preds = %bb.cz, %bb.cy
  %i.oh = tail call fastcc i32 @decode_evpn_nlri(ptr noundef %0, ptr noundef %7, i32 noundef %8, ptr noundef %10)
  br label %bb.er

bb.dc:                                            ; preds = %bb.cq
  %i.oi = zext i8 %5 to i32
  %i.oj = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @ei_bgp_unknown_safi, ptr noundef %7, i32 noundef %8, i32 noundef 0, ptr noundef nonnull @.str.1926, i32 noundef %i.oi, i32 noundef %i.b) ; 0 uses
  br label %bb.es

bb.dd:                                            ; preds = %bb.a
  %i.ok = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %7, i32 noundef %8)
  %i.ol = add i32 %8, 2                           ; 2 uses
  %i.om = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %7, i32 noundef %i.ol) ; 3 uses
  %i.on = zext i16 %i.om to i32                   ; 4 uses
  %i.oo = add nuw nsw i32 %i.on, 4                ; 19 uses
  %i.op = add i8 %5, -71
  %or.cond4 = icmp ult i8 %i.op, 2
  br i1 %or.cond4, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.oq = icmp eq i8 %5, -128
  br i1 %i.oq, label %bb.df, label %bb.es

bb.df:                                            ; preds = %bb.de, %bb.dd
  %hf_bgp_ls_safi128_nlri.sink = phi ptr [ @hf_bgp_ls_nlri, %bb.dd ], [ @hf_bgp_ls_safi128_nlri, %bb.de ]
  %i.or = load i32, ptr %hf_bgp_ls_safi128_nlri.sink, align 4
  %i.os = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.or, ptr noundef %7, i32 noundef %8, i32 noundef %i.oo, i32 noundef 0)
  %i.ot = load i32, ptr @ett_bgp_mp_reach_nlri, align 4
  %i.ou = tail call ptr @proto_item_add_subtree(ptr noundef %i.os, i32 noundef %i.ot) ; 10 uses
  %i.ov = load i32, ptr @hf_bgp_ls_nlri_type, align 4
  %i.ow = tail call ptr @proto_tree_add_item(ptr noundef %i.ou, i32 noundef %i.ov, ptr noundef %7, i32 noundef %8, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ox = load i32, ptr @hf_bgp_ls_nlri_length, align 4
  %i.oy = tail call ptr @proto_tree_add_item(ptr noundef %i.ou, i32 noundef %i.ox, ptr noundef %7, i32 noundef %i.ol, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.oz = add i32 %8, 4                           ; 4 uses
  %i.pa = icmp eq i8 %5, -128
  br i1 %i.pa, label %bb.dg, label %bb.dq

bb.dg:                                            ; preds = %bb.df
  %i.pb = icmp ult i16 %i.om, 8
  br i1 %i.pb, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  %cond = icmp eq i16 %i.om, 0
  br i1 %cond, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.pc = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %10, ptr noundef %i.ou, ptr noundef nonnull @ei_bgp_ls_error, ptr noundef nonnull @.str.1955) ; 0 uses
  br label %bb.er

bb.dj:                                            ; preds = %bb.dh
  %i.pd = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %10, ptr noundef %i.ou, ptr noundef nonnull @ei_bgp_ls_error, ptr noundef nonnull @.str.1956, i32 noundef %i.on) ; 0 uses
  br label %bb.er

bb.dk:                                            ; preds = %bb.dg
  %i.pe = load i32, ptr @hf_bgp_ls_safi128_nlri_route_distinguisher, align 4
  %i.pf = tail call ptr @proto_tree_add_item(ptr noundef %i.ou, i32 noundef %i.pe, ptr noundef %7, i32 noundef %i.oz, i32 noundef 8, i32 noundef 0)
  %i.pg = load i32, ptr @ett_bgp_mp_reach_nlri, align 4
  %i.ph = tail call ptr @proto_item_add_subtree(ptr noundef %i.pf, i32 noundef %i.pg) ; 8 uses
  %i.pi = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %7, i32 noundef %i.oz) ; 2 uses
  %i.pj = load i32, ptr @hf_bgp_ls_safi128_nlri_route_distinguisher_type, align 4
  %i.pk = tail call ptr @proto_tree_add_item(ptr noundef %i.ph, i32 noundef %i.pj, ptr noundef %7, i32 noundef %i.oz, i32 noundef 2, i32 noundef 0) ; 0 uses
  switch i16 %i.pi, label %bb.do [
    i16 0, label %bb.dl
    i16 1, label %bb.dm
    i16 2, label %bb.dn
  ]

bb.dl:                                            ; preds = %bb.dk
  %i.pl = load i32, ptr @hf_bgp_ls_safi128_nlri_route_dist_admin_asnum_2, align 4
  %i.pm = add i32 %8, 6
  %i.pn = tail call ptr @proto_tree_add_item(ptr noundef %i.ph, i32 noundef %i.pl, ptr noundef %7, i32 noundef %i.pm, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.po = load i32, ptr @hf_bgp_ls_safi128_nlri_route_dist_asnum_4, align 4
  %i.pp = add i32 %8, 8
  %i.pq = tail call ptr @proto_tree_add_item(ptr noundef %i.ph, i32 noundef %i.po, ptr noundef %7, i32 noundef %i.pp, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.dp

bb.dm:                                            ; preds = %bb.dk
  %i.pr = load i32, ptr @hf_bgp_ls_safi128_nlri_route_dist_admin_ipv4, align 4
  %i.ps = add i32 %8, 6
  %i.pt = tail call ptr @proto_tree_add_item(ptr noundef %i.ph, i32 noundef %i.pr, ptr noundef %7, i32 noundef %i.ps, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.pu = load i32, ptr @hf_bgp_ls_safi128_nlri_route_dist_asnum_2, align 4
  %i.pv = add i32 %8, 10
  %i.pw = tail call ptr @proto_tree_add_item(ptr noundef %i.ph, i32 noundef %i.pu, ptr noundef %7, i32 noundef %i.pv, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.dp

bb.dn:                                            ; preds = %bb.dk
  %i.px = load i32, ptr @hf_bgp_ls_safi128_nlri_route_dist_admin_asnum_4, align 4
  %i.py = add i32 %8, 6
end_hunk_0
