inline.NumInlined: 9
inline.NumDeleted: 6
begin_hunk_0_@dissect_rtitcp_common:bb.a
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.ao, ptr noundef nonnull @.str.118, ptr noundef %i.av)
  %i.aw = add i32 %spec.select137.i.i, 2
  %i.ax = load i32, ptr @hf_rtitcp_attributes_list_length, align 4
  %i.ay = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.ao, i32 noundef %i.ax, ptr noundef %0, i32 noundef %i.aw, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.az = add i32 %spec.select137.i.i, 4          ; 2 uses
  %i.ba = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.az)
  %.not.i.i = icmp eq i32 %i.ba, 554869826
  br i1 %.not.i.i, label %bb.g, label %dissect_control_message.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bb = load i32, ptr @hf_rtitcp_control_magic_cookie, align 4
  %i.bc = call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.bb, ptr noundef %0, i32 noundef %i.az, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bd = add i32 %spec.select137.i.i, 8          ; 3 uses
  %i.be = load i32, ptr @hf_rtitcp_control_transaction_id, align 4
  %i.bf = call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.be, ptr noundef %0, i32 noundef %i.bd, i32 noundef 12, i32 noundef 0) ; 0 uses
  %i.bg = load ptr, ptr %i.ac, align 8
  %i.bh = call ptr @tvb_bytes_to_str(ptr noundef %i.bg, ptr noundef %0, i32 noundef %i.bd, i32 noundef 12)
  %i.bi = call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %i.bd)
  store i64 %i.bi, ptr %i.b, align 8
  %i.bj = call ptr @find_or_create_conversation(ptr noundef %1) ; 2 uses
  %i.bk = load i32, ptr @proto_rtitcp, align 4
  %i.bl = call ptr @conversation_get_proto_data(ptr noundef %i.bj, i32 noundef %i.bk) ; 2 uses
  %.not129.i.i = icmp eq ptr %i.bl, null
  br i1 %.not129.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bm = call ptr @wmem_file_scope()
  %i.bn = call noalias dereferenceable_or_null(8) ptr @wmem_alloc(ptr noundef %i.bm, i64 noundef 8) #5 ; 3 uses
  %i.bo = call ptr @wmem_file_scope()
  %i.bp = call ptr @wmem_map_new(ptr noundef %i.bo, ptr noundef nonnull @g_int64_hash, ptr noundef nonnull @g_int64_equal)
  store ptr %i.bp, ptr %i.bn, align 8
  %i.bq = load i32, ptr @proto_rtitcp, align 4
  call void @conversation_add_proto_data(ptr noundef %i.bj, i32 noundef %i.bq, ptr noundef %i.bn)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0120.i.i = phi ptr [ %i.bl, %bb.g ], [ %i.bn, %bb.h ] ; 3 uses
  %i.br = load ptr, ptr %i.ad, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 53
  %i.bt = load i16, ptr %i.bs, align 1
  %i.bu = and i16 %i.bt, 8
  %.not130.i.i = icmp eq i16 %i.bu, 0
  br i1 %.not130.i.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bv = and i32 %i.ar, 256
  %.not131.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not131.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bw = call ptr @wmem_file_scope()
  %i.bx = call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.bw, i64 noundef 24) #5 ; 5 uses
  %i.by = load i32, ptr %i.ae, align 4
  store i32 %i.by, ptr %i.bx, align 8
  %i.bz = getelementptr i8, ptr %i.bx, i64 4
  store i32 0, ptr %i.bz, align 4
  %i.ca = getelementptr i8, ptr %i.bx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ca, ptr noundef align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  %i.cb = call ptr @wmem_file_scope()
  %i.cc = call noalias dereferenceable_or_null(8) ptr @wmem_alloc0(ptr noundef %i.cb, i64 noundef 8) #5 ; 2 uses
  %i.cd = load i64, ptr %i.b, align 8
  store i64 %i.cd, ptr %i.cc, align 8
  %i.ce = load ptr, ptr %.0120.i.i, align 8
  %i.cf = call ptr @wmem_map_insert(ptr noundef %i.ce, ptr noundef %i.cc, ptr noundef %i.bx) ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.cg = load ptr, ptr %.0120.i.i, align 8
  %i.ch = call ptr @wmem_map_lookup(ptr noundef %i.cg, ptr noundef nonnull %i.b) ; 3 uses
  %.not132.i.i = icmp eq ptr %i.ch, null
  br i1 %.not132.i.i, label %.thread.i.i, label %.thread162.i.i

.thread162.i.i:                                   ; preds = %bb.l
  %i.ci = load i32, ptr %i.ae, align 4
  %i.cj = getelementptr i8, ptr %i.ch, i64 4
  store i32 %i.ci, ptr %i.cj, align 4
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.ck = load ptr, ptr %.0120.i.i, align 8
  %i.cl = call ptr @wmem_map_lookup(ptr noundef %i.ck, ptr noundef nonnull %i.b)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.0119.i.i = phi ptr [ %i.cl, %bb.m ], [ %i.bx, %bb.k ] ; 2 uses
  %.not133.i.i = icmp eq ptr %.0119.i.i, null
  br i1 %.not133.i.i, label %.thread.i.i, label %bb.o

.thread.i.i:                                      ; preds = %bb.n, %bb.l
  %i.cm = load ptr, ptr %i.ac, align 8
  %i.cn = call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.cm, i64 noundef 24) #5 ; 4 uses
  store i32 0, ptr %i.cn, align 8
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  store i32 0, ptr %i.co, align 4
  %i.cp = getelementptr i8, ptr %i.cn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.cp, ptr noundef align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %.thread.i.i, %bb.n, %.thread162.i.i
  %.1.i.i = phi ptr [ %.0119.i.i, %bb.n ], [ %i.cn, %.thread.i.i ], [ %i.ch, %.thread162.i.i ] ; 4 uses
  %i.cq = and i32 %i.ar, 256
  %.not134.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not134.i.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.cr = getelementptr i8, ptr %.1.i.i, i64 4
  %i.cs = load i32, ptr %i.cr, align 4            ; 2 uses
  %.not135.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not135.i.i, label %proto_item_set_generated.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = load i32, ptr @hf_rtitcp_response_in, align 4
  %i.cu = call ptr @proto_tree_add_uint(ptr noundef %i.ao, i32 noundef %i.ct, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.cs) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %proto_item_set_generated.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not5.i.i.i, label %proto_item_set_generated.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = getelementptr i8, ptr %i.cw, i64 28     ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = or i32 %i.cy, 2
  store i32 %i.cz, ptr %i.cx, align 4
  br label %proto_item_set_generated.exit.i.i

bb.t:                                             ; preds = %bb.o
  %i.da = load i32, ptr %.1.i.i, align 8
  %.not136.i.i = icmp eq i32 %i.da, 0
  br i1 %.not136.i.i, label %proto_item_set_generated.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.db = load i32, ptr @hf_rtitcp_response_to, align 4
  %i.dc = load i32, ptr %.1.i.i, align 8
  %i.dd = call ptr @proto_tree_add_uint(ptr noundef %i.ao, i32 noundef %i.db, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.dc) ; 2 uses
  %.not.i138.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i138.i.i, label %proto_item_set_generated.exit140.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.de = getelementptr i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not5.i139.i.i = icmp eq ptr %i.df, null
  br i1 %.not5.i139.i.i, label %proto_item_set_generated.exit140.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dg = getelementptr i8, ptr %i.df, i64 28     ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = or i32 %i.dh, 2
  store i32 %i.di, ptr %i.dg, align 4
  br label %proto_item_set_generated.exit140.i.i

proto_item_set_generated.exit140.i.i:             ; preds = %bb.w, %bb.v, %bb.u
  %i.dj = getelementptr i8, ptr %.1.i.i, i64 8
  call void @nstime_delta(ptr noundef nonnull %4, ptr noundef %i.af, ptr noundef %i.dj)
  %i.dk = load i32, ptr @hf_rtitcp_response_time, align 4
  %i.dl = call ptr @proto_tree_add_time(ptr noundef %i.ao, i32 noundef %i.dk, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) ; 2 uses
  %.not.i141.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i141.i.i, label %proto_item_set_generated.exit143.i.i, label %bb.x

bb.x:                                             ; preds = %proto_item_set_generated.exit140.i.i
  %i.dm = getelementptr i8, ptr %i.dl, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %.not5.i142.i.i = icmp eq ptr %i.dn, null
  br i1 %.not5.i142.i.i, label %proto_item_set_generated.exit143.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = getelementptr i8, ptr %i.dn, i64 28     ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = or i32 %i.dp, 2
  store i32 %i.dq, ptr %i.do, align 4
  br label %proto_item_set_generated.exit143.i.i

proto_item_set_generated.exit143.i.i:             ; preds = %bb.y, %bb.x, %proto_item_set_generated.exit140.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %proto_item_set_generated.exit.i.i

proto_item_set_generated.exit.i.i:                ; preds = %proto_item_set_generated.exit143.i.i, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %i.dr = add i32 %spec.select137.i.i, 20         ; 2 uses
  %i.ds = load i16, ptr %i.a, align 2
  %i.dt = zext i16 %i.ds to i32
  %i.du = load i32, ptr @ett_rtitcp_attributes_list, align 4
  %i.dv = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.ao, ptr noundef %0, i32 noundef %i.dr, i32 noundef %i.dt, i32 noundef %i.du, ptr noundef null, ptr noundef nonnull @.str.119) ; 2 uses
  %i.dw = load i16, ptr %i.a, align 2
  %.not169.i.i = icmp eq i16 %i.dw, 0
  br i1 %.not169.i.i, label %.thread182.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %proto_item_set_generated.exit.i.i, %dissect_attribute.exit.i.i
  %.0123167.i.i = phi i32 [ %i.hi, %dissect_attribute.exit.i.i ], [ 0, %proto_item_set_generated.exit.i.i ] ; 2 uses
  %.0124166.i.i = phi i32 [ %i.dx, %dissect_attribute.exit.i.i ], [ 0, %proto_item_set_generated.exit.i.i ]
  %.0165.i.i = phi i8 [ %.1159.i.i, %dissect_attribute.exit.i.i ], [ 1, %proto_item_set_generated.exit.i.i ] ; 8 uses
  %i.dx = add i32 %.0124166.i.i, 1                ; 3 uses
  %i.dy = add i32 %.0123167.i.i, %i.dr            ; 14 uses
  %i.dz = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.dy, i32 noundef 0) ; 2 uses
  %i.ea = add i32 %i.dy, 2                        ; 2 uses
  %i.eb = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.ea, i32 noundef 0)
  %i.ec = zext i16 %i.eb to i32                   ; 7 uses
  %i.ed = add nuw nsw i32 %i.ec, 4                ; 2 uses
  %i.ee = load i32, ptr @ett_rtitcp_attribute, align 4
  %i.ef = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.dv, ptr noundef %0, i32 noundef %i.dy, i32 noundef %i.ed, i32 noundef %i.ee, ptr noundef null, ptr noundef nonnull @.str.125) ; 14 uses
  %i.eg = load i32, ptr @hf_rtitcp_control_attribute_type, align 4
  %i.eh = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.eg, ptr noundef %0, i32 noundef %i.dy, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ei = load i32, ptr @hf_rtitcp_control_attribute_length, align 4
  %i.ej = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.ei, ptr noundef %0, i32 noundef %i.ea, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ek = zext i16 %i.dz to i32
  %i.el = call ptr @val_to_str_const(i32 noundef %i.ek, ptr noundef nonnull @attribute_types_vals, ptr noundef nonnull @.str.85)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.ef, ptr noundef nonnull @.str.126, ptr noundef %i.el)
  switch i16 %i.dz, label %dissect_attribute.exit.i.i [
    i16 15618, label %bb.z
    i16 15617, label %bb.ac
    i16 15620, label %bb.aj
    i16 15619, label %bb.am
    i16 15623, label %bb.ap
    i16 9, label %bb.aq
  ]

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.em = add i32 %i.dy, 4                        ; 2 uses
  %i.en = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.em, i32 noundef 0) ; 3 uses
  %i.eo = trunc nuw i8 %.0165.i.i to i1
  br i1 %i.eo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.127)
  %i.ep = load ptr, ptr %i.e, align 8
  call void @col_append_str(ptr noundef %i.ep, i32 noundef 25, ptr noundef nonnull @.str.127)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.eq = phi ptr [ @.str.129, %bb.aa ], [ @.str.116, %bb.z ] ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.128, ptr noundef nonnull %i.eq, i32 noundef %i.en)
  %i.er = load ptr, ptr %i.e, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.er, i32 noundef 25, ptr noundef nonnull @.str.128, ptr noundef nonnull %i.eq, i32 noundef %i.en)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ef, ptr noundef nonnull @.str.130, i32 noundef %i.en)
  %i.es = load i32, ptr @hf_rtitcp_control_attribute_port, align 4
  %i.et = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.es, ptr noundef %0, i32 noundef %i.em, i32 noundef %i.ec, i32 noundef 0) ; 0 uses
  br label %dissect_attribute.exit.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.eu = add i32 %i.dy, 4                        ; 3 uses
  %i.ev = add i32 %i.dy, 12                       ; 2 uses
  %i.ew = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.ev, i32 noundef 0)
  %i.ex = icmp eq i16 %i.ew, -1                   ; 2 uses
  %..i.i.i.i = select i1 %i.ex, i32 1, i32 2
  %i.ey = load i32, ptr @hf_rtitcp_locator_kind, align 4
  %i.ez = call ptr @proto_tree_add_uint(ptr noundef %i.ef, i32 noundef %i.ey, ptr noundef %0, i32 noundef %i.ev, i32 noundef 2, i32 noundef %..i.i.i.i) ; 0 uses
  br i1 %i.ex, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.fa = load i32, ptr @hf_rtitcp_locator_port, align 4
  %i.fb = add i32 %i.dy, 14                       ; 2 uses
  %i.fc = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.fa, ptr noundef %0, i32 noundef %i.fb, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fd = load i32, ptr @hf_rtitcp_locator_ipv4, align 4
  %i.fe = add i32 %i.dy, 16                       ; 3 uses
  %i.ff = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.fd, ptr noundef %0, i32 noundef %i.fe, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.fg = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.fb, i32 noundef 0)
  %i.fh = trunc nuw i8 %.0165.i.i to i1
  br i1 %i.fh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.127)
  %i.fi = load ptr, ptr %i.e, align 8
  call void @col_append_str(ptr noundef %i.fi, i32 noundef 25, ptr noundef nonnull @.str.127)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fj = phi ptr [ @.str.129, %bb.ae ], [ @.str.116, %bb.ad ] ; 2 uses
  %i.fk = load ptr, ptr %i.ac, align 8
  %i.fl = call ptr @tvb_address_to_str(ptr noundef %i.fk, ptr noundef %0, i32 noundef 2, i32 noundef %i.fe)
  %i.fm = zext i16 %i.fg to i32                   ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.132, ptr noundef nonnull %i.fj, ptr noundef %i.fl, i32 noundef %i.fm)
  %i.fn = load ptr, ptr %i.e, align 8
  %i.fo = load ptr, ptr %i.ac, align 8
  %i.fp = call ptr @tvb_address_to_str(ptr noundef %i.fo, ptr noundef %0, i32 noundef 2, i32 noundef %i.fe)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.fn, i32 noundef 25, ptr noundef nonnull @.str.132, ptr noundef nonnull %i.fj, ptr noundef %i.fp, i32 noundef %i.fm)
  br label %dissect_attribute.exit.i.i

bb.ag:                                            ; preds = %bb.ac
  %i.fq = load i32, ptr @hf_rtitcp_locator_ipv6, align 4
  %i.fr = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.fq, ptr noundef %0, i32 noundef %i.eu, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.fs = trunc nuw i8 %.0165.i.i to i1
  br i1 %i.fs, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.127)
  %i.ft = load ptr, ptr %i.e, align 8
  call void @col_append_str(ptr noundef %i.ft, i32 noundef 25, ptr noundef nonnull @.str.127)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fu = phi ptr [ @.str.129, %bb.ah ], [ @.str.116, %bb.ag ] ; 2 uses
  %i.fv = load ptr, ptr %i.ac, align 8
  %i.fw = call ptr @tvb_address_to_str(ptr noundef %i.fv, ptr noundef %0, i32 noundef 3, i32 noundef %i.eu)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.131, ptr noundef nonnull %i.fu, ptr noundef %i.fw)
  %i.fx = load ptr, ptr %i.e, align 8
  %i.fy = load ptr, ptr %i.ac, align 8
  %i.fz = call ptr @tvb_address_to_str(ptr noundef %i.fy, ptr noundef %0, i32 noundef 3, i32 noundef %i.eu)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.fx, i32 noundef 25, ptr noundef nonnull @.str.131, ptr noundef nonnull %i.fu, ptr noundef %i.fz)
  br label %dissect_attribute.exit.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.ga = load i32, ptr @hf_rtitcp_control_attribute_connection_cookie, align 4
  %i.gb = add i32 %i.dy, 4                        ; 3 uses
  %i.gc = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.ga, ptr noundef %0, i32 noundef %i.gb, i32 noundef %i.ec, i32 noundef 0) ; 0 uses
  %i.gd = trunc nuw i8 %.0165.i.i to i1
  br i1 %i.gd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.127)
  %i.ge = load ptr, ptr %i.e, align 8
  call void @col_append_str(ptr noundef %i.ge, i32 noundef 25, ptr noundef nonnull @.str.127)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gf = phi ptr [ @.str.129, %bb.ak ], [ @.str.116, %bb.aj ] ; 2 uses
  %i.gg = load ptr, ptr %i.ac, align 8
  %i.gh = call ptr @tvb_bytes_to_str(ptr noundef %i.gg, ptr noundef %0, i32 noundef %i.gb, i32 noundef 16)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.131, ptr noundef nonnull %i.gf, ptr noundef %i.gh)
  %i.gi = load ptr, ptr %i.e, align 8
  %i.gj = load ptr, ptr %i.ac, align 8
  %i.gk = call ptr @tvb_bytes_to_str(ptr noundef %i.gj, ptr noundef %0, i32 noundef %i.gb, i32 noundef 16)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.gi, i32 noundef 25, ptr noundef nonnull @.str.131, ptr noundef nonnull %i.gf, ptr noundef %i.gk)
  br label %dissect_attribute.exit.i.i

bb.am:                                            ; preds = %.lr.ph.i.i
  %i.gl = add i32 %i.dy, 4                        ; 2 uses
  %i.gm = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gl)
  %i.gn = load i32, ptr @hf_rtitcp_control_attribute_connection_type, align 4
  %i.go = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.gn, ptr noundef %0, i32 noundef %i.gl, i32 noundef %i.ec, i32 noundef 0) ; 0 uses
  %i.gp = trunc nuw i8 %.0165.i.i to i1
  br i1 %i.gp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.127)
  %i.gq = load ptr, ptr %i.e, align 8
  call void @col_append_str(ptr noundef %i.gq, i32 noundef 25, ptr noundef nonnull @.str.127)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gr = phi ptr [ @.str.129, %bb.an ], [ @.str.116, %bb.am ] ; 2 uses
  %i.gs = zext i8 %i.gm to i32                    ; 2 uses
  %i.gt = call ptr @val_to_str_const(i32 noundef %i.gs, ptr noundef nonnull @rtitcp_attribute_connection_type_vals, ptr noundef nonnull @.str.85)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.131, ptr noundef nonnull %i.gr, ptr noundef %i.gt)
  %i.gu = load ptr, ptr %i.e, align 8
  %i.gv = call ptr @val_to_str_const(i32 noundef %i.gs, ptr noundef nonnull @rtitcp_attribute_connection_type_vals, ptr noundef nonnull @.str.85)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.gu, i32 noundef 25, ptr noundef nonnull @.str.131, ptr noundef nonnull %i.gr, ptr noundef %i.gv)
  br label %dissect_attribute.exit.i.i

bb.ap:                                            ; preds = %.lr.ph.i.i
  %i.gw = load i32, ptr @hf_rtitcp_control_attribute_session_id, align 4
  %i.gx = add i32 %i.dy, 4
  %i.gy = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.gw, ptr noundef %0, i32 noundef %i.gx, i32 noundef %i.ec, i32 noundef 0) ; 0 uses
  br label %dissect_attribute.exit.i.i

bb.aq:                                            ; preds = %.lr.ph.i.i
  %i.gz = add i32 %i.dy, 4
  %i.ha = load i32, ptr @hf_rtitcp_control_attribute_error_code_value, align 4
  %i.hb = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.ha, ptr noundef %0, i32 noundef %i.gz, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.hc = load i32, ptr @hf_rtitcp_control_attribute_error_code_description, align 4
  %i.hd = add i32 %i.dy, 8
  %i.he = add nsw i32 %i.ec, -4
  %i.hf = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.hc, ptr noundef %0, i32 noundef %i.hd, i32 noundef %i.he, i32 noundef 0) ; 0 uses
  br label %dissect_attribute.exit.i.i

dissect_attribute.exit.i.i:                       ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.al, %bb.ai, %bb.af, %bb.ab, %.lr.ph.i.i
  %.1159.i.i = phi i8 [ %.0165.i.i, %.lr.ph.i.i ], [ 0, %bb.ab ], [ %.0165.i.i, %bb.aq ], [ 0, %bb.al ], [ 0, %bb.ao ], [ %.0165.i.i, %bb.ap ], [ 0, %bb.ai ], [ 0, %bb.af ] ; 2 uses
  %5 = sub nsw i32 0, %i.ec
  %i.hg = and i32 %5, 3
  %i.hh = add nuw nsw i32 %i.hg, %.0123167.i.i
  %i.hi = add nuw nsw i32 %i.hh, %i.ed            ; 2 uses
  %i.hj = load i16, ptr %i.a, align 2
  %i.hk = zext i16 %i.hj to i32
  %i.hl = icmp samesign ult i32 %i.hi, %i.hk
  br i1 %i.hl, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !6

._crit_edge.i.i:                                  ; preds = %dissect_attribute.exit.i.i
  %i.hm = trunc nuw i8 %.1159.i.i to i1
  br i1 %i.hm, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i.i
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.120)
  %i.hn = load ptr, ptr %i.e, align 8
  call void @col_append_str(ptr noundef %i.hn, i32 noundef 25, ptr noundef nonnull @.str.120)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge.i.i
  %i.ho = icmp ugt i32 %i.dx, 1
  %spec.select185.i.i = select i1 %i.ho, ptr @.str.122, ptr @.str.123
  br label %.thread182.i.i

.thread182.i.i:                                   ; preds = %bb.as, %proto_item_set_generated.exit.i.i
  %.0124.lcssa181184.i.i = phi i32 [ 0, %proto_item_set_generated.exit.i.i ], [ %i.dx, %bb.as ]
  %i.hp = phi ptr [ @.str.123, %proto_item_set_generated.exit.i.i ], [ %spec.select185.i.i, %bb.as ]
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.dv, ptr noundef nonnull @.str.121, i32 noundef %.0124.lcssa181184.i.i, ptr noundef nonnull %i.hp)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.124, ptr noundef %i.bh, i32 noundef %i.am)
  br label %dissect_control_message.exit.i

dissect_control_message.exit.i:                   ; preds = %.thread182.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.hq = zext i16 %i.an to i32
  %i.hr = add i32 %.09.i, %i.hq                   ; 3 uses
  %i.hs = icmp ult i32 %i.hr, %i.ab
  br i1 %i.hs, label %bb.f, label %dissect_rtitcp_control_protocol.exit, !llvm.loop !8

dissect_rtitcp_control_protocol.exit:             ; preds = %dissect_control_message.exit.i, %bb.e, %bb.d
  %.0 = phi i32 [ %i.aa, %bb.d ], [ 0, %bb.e ], [ %i.hr, %dissect_control_message.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_uint32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @tvb_set_reported_length(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef ptr @print_header(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %3 to i32                       ; 2 uses
  %i.b = load i32, ptr @ett_rtitcp_message, align 4 ; 2 uses
  br i1 %5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.a, i32 noundef %i.b, ptr noundef null, ptr noundef nonnull @.str.113) ; 3 uses
  %i.d = load i32, ptr @hf_rtitcp_header_control_byte, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.d, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.f = load i32, ptr @hf_rtitcp_header_message_length, align 4
  %i.g = add i32 %2, 1
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.f, ptr noundef %1, i32 noundef %i.g, i32 noundef 3, i32 noundef 0)
  %i.i = tail call i32 @tvb_get_uint32(ptr noundef %1, i32 noundef %2, i32 noundef 0)
  %i.j = and i32 %i.i, 1073741823
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.h, ptr noundef nonnull @.str.115, i32 noundef %i.j)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.a, i32 noundef %i.b, ptr noundef null, ptr noundef nonnull @.str.114) ; 3 uses
  %i.l = load i32, ptr @hf_rtitcp_header_control_byte, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %1, i32 noundef %2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_rtitcp_header_message_length, align 4
  %i.o = add i32 %2, 2
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.n, ptr noundef %1, i32 noundef %i.o, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.03 = phi ptr [ %i.k, %bb.c ], [ %i.c, %bb.b ] ; 4 uses
  %i.q = load i32, ptr @hf_rtitcp_header_magic_number, align 4
  %i.r = add i32 %2, 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %.03, i32 noundef %i.q, ptr noundef %1, i32 noundef %i.r, i32 noundef 4, i32 noundef 0) ; 0 uses
  br i1 %4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr @hf_rtitcp_crc_magic_cookie, align 4
  %i.u = add i32 %2, 8
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %.03, i32 noundef %i.t, ptr noundef %1, i32 noundef %i.u, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr @hf_rtitcp_control_crc_value, align 4
  %i.x = add i32 %2, 12
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %.03, i32 noundef %i.w, ptr noundef %1, i32 noundef %i.x, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret ptr %.03
}

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dissector_try_heuristic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint16(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_bytes_to_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_ntoh64(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @find_or_create_conversation(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_int64_hash(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_int64_equal(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @nstime_delta(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_time(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

end_hunk_0
