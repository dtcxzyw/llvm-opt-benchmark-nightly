Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-unistim?download=true
inline.NumInlined: 26
inline.NumDeleted: 21
begin_hunk_0_@dissect_payload:bb.a
    i8 0, label %.loopexit
    i8 1, label %bb.b
    i8 2, label %bb.e
    i8 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @uinfo, align 8            ; 5 uses
  %i.k = getelementptr i8, ptr %i.j, i64 48       ; 2 uses
  %i.l = getelementptr i8, ptr %2, i64 208
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %2, i64 212
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %i.p = getelementptr i8, ptr %2, i64 216
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  store i32 %i.m, ptr %i.k, align 8
  %i.r = icmp eq i32 %i.o, 0
  br i1 %i.r, label %copy_address.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = sext i32 %i.o to i64
  %i.t = tail call ptr @wmem_memdup(ptr noundef null, ptr noundef %i.q, i64 noundef %i.s) #7 ; 2 uses
  %i.u = getelementptr i8, ptr %i.j, i64 64
  store ptr %i.t, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.j, i64 56
  store ptr %i.t, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %i.j, i64 52
  store i32 %i.o, ptr %i.w, align 4
  %.pre85 = load ptr, ptr @uinfo, align 8
  br label %copy_address.exit

copy_address.exit:                                ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.j, %bb.b ], [ %.pre85, %bb.c ] ; 5 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16       ; 2 uses
  %i.z = getelementptr i8, ptr %2, i64 232
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %2, i64 236
  %i.ac = load i32, ptr %i.ab, align 4            ; 3 uses
  %i.ad = getelementptr i8, ptr %2, i64 240
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store i32 %i.aa, ptr %i.y, align 8
  %i.af = icmp eq i32 %i.ac, 0
  br i1 %i.af, label %copy_address.exit30, label %bb.d

bb.d:                                             ; preds = %copy_address.exit
  %i.ag = sext i32 %i.ac to i64
  %i.ah = tail call ptr @wmem_memdup(ptr noundef null, ptr noundef %i.ae, i64 noundef %i.ag) #7 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.x, i64 32
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %i.x, i64 24
  store ptr %i.ah, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %i.x, i64 20
  store i32 %i.ac, ptr %i.ak, align 4
  %.pre86 = load ptr, ptr @uinfo, align 8
  br label %copy_address.exit30

copy_address.exit30:                              ; preds = %copy_address.exit, %bb.d
  %i.al = phi ptr [ %i.x, %copy_address.exit ], [ %.pre86, %bb.d ]
  %i.am = getelementptr i8, ptr %2, i64 292
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr i8, ptr %i.al, i64 40
  store i32 %i.an, ptr %i.ao, align 8
  br label %dissect_uftp_message.exit

bb.e:                                             ; preds = %bb.a
  %i.ap = load ptr, ptr @uinfo, align 8           ; 5 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 48     ; 2 uses
  %i.ar = getelementptr i8, ptr %2, i64 232
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %2, i64 236
  %i.au = load i32, ptr %i.at, align 4            ; 3 uses
  %i.av = getelementptr i8, ptr %2, i64 240
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  store i32 %i.as, ptr %i.aq, align 8
  %i.ax = icmp eq i32 %i.au, 0
  br i1 %i.ax, label %copy_address.exit31, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = sext i32 %i.au to i64
  %i.az = tail call ptr @wmem_memdup(ptr noundef null, ptr noundef %i.aw, i64 noundef %i.ay) #7 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ap, i64 64
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %i.ap, i64 56
  store ptr %i.az, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %i.ap, i64 52
  store i32 %i.au, ptr %i.bc, align 4
  %.pre = load ptr, ptr @uinfo, align 8
  br label %copy_address.exit31

copy_address.exit31:                              ; preds = %bb.e, %bb.f
  %i.bd = phi ptr [ %i.ap, %bb.e ], [ %.pre, %bb.f ] ; 5 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 16     ; 2 uses
  %i.bf = getelementptr i8, ptr %2, i64 208
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %2, i64 212
  %i.bi = load i32, ptr %i.bh, align 4            ; 3 uses
  %i.bj = getelementptr i8, ptr %2, i64 216
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  store i32 %i.bg, ptr %i.be, align 8
  %i.bl = icmp eq i32 %i.bi, 0
  br i1 %i.bl, label %copy_address.exit32, label %bb.g

bb.g:                                             ; preds = %copy_address.exit31
  %i.bm = sext i32 %i.bi to i64
  %i.bn = tail call ptr @wmem_memdup(ptr noundef null, ptr noundef %i.bk, i64 noundef %i.bm) #7 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bd, i64 32
  store ptr %i.bn, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %i.bd, i64 24
  store ptr %i.bn, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %i.bd, i64 20
  store i32 %i.bi, ptr %i.bq, align 4
  %.pre84 = load ptr, ptr @uinfo, align 8
  br label %copy_address.exit32

copy_address.exit32:                              ; preds = %copy_address.exit31, %bb.g
  %i.br = phi ptr [ %i.bd, %copy_address.exit31 ], [ %.pre84, %bb.g ]
  %i.bs = getelementptr i8, ptr %2, i64 288
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = getelementptr i8, ptr %i.br, i64 40
  store i32 %i.bt, ptr %i.bu, align 8
  %i.bv = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef 6)
  %i.bw = load ptr, ptr @uinfo, align 8
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  store i32 %i.bv, ptr %i.bx, align 8
  %i.by = load i32, ptr @hf_terminal_id, align 4
  %i.bz = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.by, ptr noundef %1, i32 noundef 6, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_uftp_message.exit

bb.h:                                             ; preds = %bb.a
  %i.ca = load i32, ptr @ett_unistim, align 4
  %i.cb = tail call ptr @proto_tree_add_subtree(ptr noundef %i.i, ptr noundef %1, i32 noundef 6, i32 noundef -1, i32 noundef %i.ca, ptr noundef null, ptr noundef nonnull @.str.4) ; 4 uses
  %i.cc = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 6)
  %i.cd = load i32, ptr @hf_uftp_command, align 4
  %i.ce = tail call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.cd, ptr noundef %1, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.cc, label %dissect_uftp_message.exit [
    i8 2, label %.sink.split.i
    i8 -127, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.cf = load i32, ptr @hf_uftp_datablock_size, align 4
  %i.cg = tail call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.cf, ptr noundef %1, i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ch = load i32, ptr @hf_uftp_datablock_limit, align 4
  %i.ci = tail call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.ch, ptr noundef %1, i32 noundef 9, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.h
  %.sink5.i = phi i32 [ 10, %bb.i ], [ 7, %bb.h ] ; 3 uses
  %hf_uftp_datablock.sink.i = phi ptr [ @hf_uftp_filename, %bb.i ], [ @hf_uftp_datablock, %bb.h ]
  %i.cj = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %.sink5.i) ; 2 uses
  %i.ck = load i32, ptr %hf_uftp_datablock.sink.i, align 4
  %i.cl = tail call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.ck, ptr noundef %1, i32 noundef %.sink5.i, i32 noundef %i.cj, i32 noundef 0) ; 0 uses
  %i.cm = add i32 %i.cj, %.sink5.i
  br label %dissect_uftp_message.exit

dissect_uftp_message.exit:                        ; preds = %.sink.split.i, %bb.h, %copy_address.exit32, %copy_address.exit30, %bb.a
  %.0 = phi i32 [ 6, %bb.a ], [ 6, %copy_address.exit30 ], [ 10, %copy_address.exit32 ], [ 7, %bb.h ], [ %i.cm, %.sink.split.i ] ; 2 uses
  %i.cn = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %.0)
  %.not66 = icmp eq i32 %i.cn, 0
  br i1 %.not66, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %dissect_uftp_message.exit
  %i.co = getelementptr i8, ptr %2, i64 416
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = getelementptr i8, ptr %2, i64 20        ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %dissect_unistim_message.exit
  %.167 = phi i32 [ %.0, %.lr.ph ], [ %.089.i, %dissect_unistim_message.exit ] ; 273 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ct = load i32, ptr @ett_unistim, align 4
  %i.cu = call ptr @proto_tree_add_subtree(ptr noundef %i.i, ptr noundef %1, i32 noundef %.167, i32 noundef -1, i32 noundef %i.ct, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.1341) ; 494 uses
  %i.cv = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.167)
  %i.cw = load i32, ptr @hf_unistim_cmd_add, align 4
  %i.cx = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.cw, ptr noundef %1, i32 noundef %.167, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cy = add i32 %.167, 1                        ; 3 uses
  %i.cz = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.cy) ; 3 uses
  %i.da = zext i8 %i.cz to i32                    ; 100 uses
  %i.db = icmp ult i8 %i.cz, 3
  br i1 %i.db, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dc = load i32, ptr @hf_unistim_len, align 4
  %i.dd = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.dc, ptr noundef %1, i32 noundef %i.cy, i32 noundef 1, i32 noundef 0) ; 2 uses
  store ptr %i.dd, ptr %i.b, align 8
  %i.de = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.dd, ptr noundef nonnull @ei_unistim_len) ; 0 uses
  %i.df = call i32 @tvb_reported_length(ptr noundef %1)
  br label %dissect_unistim_message.exit

bb.l:                                             ; preds = %bb.j
  %i.dg = load ptr, ptr %i.b, align 8
  call void @proto_item_set_len(ptr noundef %i.dg, i32 noundef %i.da)
  %i.dh = load i32, ptr @hf_unistim_len, align 4
  %i.di = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.dh, ptr noundef %1, i32 noundef %i.cy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dj = add i32 %.167, 2                        ; 30 uses
  switch i8 %i.cv, label %bb.hr [
    i8 0, label %dissect_unistim_message.exit
    i8 9, label %bb.m
    i8 10, label %bb.m
    i8 11, label %bb.m
    i8 12, label %bb.m
    i8 13, label %bb.m
    i8 14, label %bb.m
    i8 17, label %bb.p
    i8 22, label %bb.u
    i8 23, label %bb.bl
    i8 25, label %bb.dr
    i8 26, label %bb.ee
    i8 30, label %bb.em
    i8 -119, label %bb.fc
    i8 -118, label %bb.fc
    i8 -117, label %bb.fc
    i8 -116, label %bb.fc
    i8 -115, label %bb.fc
    i8 -114, label %bb.fc
    i8 -111, label %bb.fe
    i8 -106, label %bb.ff
    i8 -105, label %bb.gd
    i8 -103, label %bb.go
    i8 -102, label %bb.gx
    i8 -98, label %bb.hj
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.dk = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.dj)
  %i.dl = load i32, ptr @hf_expansion_switch_cmd, align 4
  %i.dm = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.dl, ptr noundef %1, i32 noundef %i.dj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dn = add i32 %.167, 3
  %i.do = add nsw i32 %i.da, -3
  switch i8 %i.dk, label %dissect_expansion_switch.exit.i [
    i8 89, label %bb.o
    i8 87, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.dp = add i32 %.167, 4
  %i.dq = load i32, ptr @hf_expansion_softlabel_number, align 4
  %i.dr = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.dq, ptr noundef %1, i32 noundef %i.dp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ds = add i32 %.167, 5                        ; 2 uses
  %i.dt = add nsw i32 %i.da, -5                   ; 2 uses
  %i.du = load i32, ptr @hf_generic_string, align 4
  %i.dv = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.du, ptr noundef %1, i32 noundef %i.ds, i32 noundef %i.dt, i32 noundef 0) ; 0 uses
  br label %dissect_expansion_switch.exit.i

bb.o:                                             ; preds = %bb.m
  %i.dw = add i32 %.167, 4
  %i.dx = load i32, ptr @hf_expansion_softlabel_number, align 4
  %i.dy = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.dx, ptr noundef %1, i32 noundef %i.dw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dz = add i32 %.167, 5                        ; 3 uses
  %i.ea = load i32, ptr @hf_basic_bit_field, align 4
  %i.eb = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ea, ptr noundef %1, i32 noundef %i.dz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ec = load i32, ptr @hf_broadcast_icon_state, align 4
  %i.ed = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ec, ptr noundef %1, i32 noundef %i.dz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ee = load i32, ptr @hf_broadcast_icon_cadence, align 4
  %i.ef = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ee, ptr noundef %1, i32 noundef %i.dz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eg = add i32 %.167, 6
  %i.eh = add nsw i32 %i.da, -6
  br label %dissect_expansion_switch.exit.i

dissect_expansion_switch.exit.i:                  ; preds = %bb.o, %bb.n, %bb.m
  %.039.i.i = phi i32 [ %i.dn, %bb.m ], [ %i.eg, %bb.o ], [ %i.ds, %bb.n ]
  %.0.i.i = phi i32 [ %i.do, %bb.m ], [ %i.eh, %bb.o ], [ %i.dt, %bb.n ]
  %i.ei = add i32 %.0.i.i, %.039.i.i
  br label %dissect_unistim_message.exit

bb.p:                                             ; preds = %bb.l
  %i.ej = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.dj)
  %i.ek = load i32, ptr @hf_broadcast_switch_cmd, align 4
  %i.el = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ek, ptr noundef %1, i32 noundef %i.dj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.em = add i32 %.167, 3                        ; 10 uses
  %i.en = add nsw i32 %i.da, -3                   ; 2 uses
  switch i8 %i.ej, label %bb.t [
    i8 0, label %dissect_unistim_message.exit
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 -1, label %dissect_unistim_message.exit
  ]

bb.q:                                             ; preds = %bb.p
  %i.eo = load i32, ptr @hf_basic_bit_field, align 4
  %i.ep = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.eo, ptr noundef %1, i32 noundef %i.em, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eq = load i32, ptr @hf_broadcast_icon_state, align 4
  %i.er = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.eq, ptr noundef %1, i32 noundef %i.em, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.es = load i32, ptr @hf_broadcast_icon_cadence, align 4
  %i.et = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.es, ptr noundef %1, i32 noundef %i.em, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eu = add i32 %.167, 4
  br label %dissect_unistim_message.exit

bb.r:                                             ; preds = %bb.p
  %i.ev = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.em)
  %i.ew = add i32 %.167, 4                        ; 2 uses
  %i.ex = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ew)
  %i.ey = zext i8 %i.ex to i32
  %i.ez = add i32 %.167, 5                        ; 2 uses
  %i.fa = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ez)
  %i.fb = zext i8 %i.fa to i32
  %i.fc = add i32 %.167, 6                        ; 3 uses
  %i.fd = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.fc)
  %i.fe = zext i8 %i.fd to i32
  %i.ff = add i32 %.167, 7                        ; 2 uses
  %i.fg = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ff)
  %i.fh = zext i8 %i.fg to i32
  %i.fi = add i32 %.167, 8                        ; 2 uses
  %i.fj = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.fi)
  %i.fk = zext i8 %i.fj to i32
  %i.fl = load i32, ptr @ett_unistim, align 4
  %i.fm = urem i8 %i.ev, 100
  %i.fn = zext nneg i8 %i.fm to i32
  %i.fo = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.cu, ptr noundef %1, i32 noundef %i.em, i32 noundef 3, i32 noundef %i.fl, ptr noundef null, ptr noundef nonnull @.str.1342, i32 noundef %i.ey, i32 noundef %i.fb, i32 noundef %i.fn) ; 3 uses
  %i.fp = load i32, ptr @hf_broadcast_year, align 4
  %i.fq = call ptr @proto_tree_add_item(ptr noundef %i.fo, i32 noundef %i.fp, ptr noundef %1, i32 noundef %i.em, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fr = load i32, ptr @hf_broadcast_month, align 4
  %i.fs = call ptr @proto_tree_add_item(ptr noundef %i.fo, i32 noundef %i.fr, ptr noundef %1, i32 noundef %i.ew, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ft = load i32, ptr @hf_broadcast_day, align 4
  %i.fu = call ptr @proto_tree_add_item(ptr noundef %i.fo, i32 noundef %i.ft, ptr noundef %1, i32 noundef %i.ez, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fv = load i32, ptr @ett_unistim, align 4
  %i.fw = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.cu, ptr noundef %1, i32 noundef %i.fc, i32 noundef 3, i32 noundef %i.fv, ptr noundef null, ptr noundef nonnull @.str.1343, i32 noundef %i.fe, i32 noundef %i.fh, i32 noundef %i.fk) ; 3 uses
  %i.fx = load i32, ptr @hf_broadcast_hour, align 4
  %i.fy = call ptr @proto_tree_add_item(ptr noundef %i.fw, i32 noundef %i.fx, ptr noundef %1, i32 noundef %i.fc, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fz = load i32, ptr @hf_broadcast_minute, align 4
  %i.ga = call ptr @proto_tree_add_item(ptr noundef %i.fw, i32 noundef %i.fz, ptr noundef %1, i32 noundef %i.ff, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gb = load i32, ptr @hf_broadcast_second, align 4
  %i.gc = call ptr @proto_tree_add_item(ptr noundef %i.fw, i32 noundef %i.gb, ptr noundef %1, i32 noundef %i.fi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gd = add i32 %.167, 9
  br label %dissect_unistim_message.exit

bb.s:                                             ; preds = %bb.p
  %i.ge = load i32, ptr @hf_generic_data, align 4
  %i.gf = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ge, ptr noundef %1, i32 noundef %i.em, i32 noundef %i.en, i32 noundef 0) ; 0 uses
  %i.gg = add i32 %.167, %i.da
  br label %dissect_unistim_message.exit

bb.t:                                             ; preds = %bb.p
  %i.gh = load i32, ptr @hf_generic_data, align 4
  %i.gi = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.gh, ptr noundef %1, i32 noundef %i.em, i32 noundef %i.en, i32 noundef 0) ; 0 uses
  %i.gj = add i32 %.167, %i.da
  br label %dissect_unistim_message.exit

bb.u:                                             ; preds = %bb.l
  %i.gk = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.dj)
  %i.gl = load i32, ptr @hf_audio_switch_cmd, align 4
  %i.gm = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.gl, ptr noundef %1, i32 noundef %i.dj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gn = add i32 %.167, 3                        ; 65 uses
  %i.go = add nsw i32 %i.da, -3                   ; 13 uses
  switch i8 %i.gk, label %bb.bk [
    i8 0, label %bb.v
    i8 1, label %dissect_unistim_message.exit
    i8 2, label %bb.w
    i8 4, label %.preheader.i47
    i8 16, label %bb.x
    i8 17, label %bb.y
    i8 18, label %bb.z
    i8 19, label %bb.aa
    i8 20, label %bb.ab
    i8 21, label %bb.ac
    i8 23, label %bb.ad
    i8 24, label %bb.ae
    i8 26, label %bb.af
    i8 27, label %bb.ag
    i8 28, label %bb.ah
    i8 29, label %bb.ai
    i8 30, label %bb.aj
    i8 32, label %bb.ak
    i8 33, label %bb.al
    i8 34, label %bb.am
    i8 35, label %bb.an
    i8 36, label %bb.ao
    i8 37, label %bb.ap
    i8 40, label %bb.aq
    i8 48, label %bb.at
    i8 49, label %bb.av
    i8 50, label %bb.aw
    i8 52, label %bb.ax
    i8 55, label %bb.ay
    i8 56, label %bb.az
    i8 57, label %bb.bf
    i8 58, label %bb.bg
    i8 59, label %bb.bh
    i8 60, label %bb.bi
    i8 61, label %bb.bj
  ]

.preheader.i47:                                   ; preds = %bb.u
  %.not551568.i = icmp eq i32 %i.go, 0
  br i1 %.not551568.i, label %dissect_unistim_message.exit, label %.lr.ph571.i

bb.v:                                             ; preds = %bb.u
  %i.gp = load i32, ptr @hf_basic_bit_field, align 4
  %i.gq = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.gp, ptr noundef %1, i32 noundef %i.gn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gr = load i32, ptr @hf_audio_mgr_attr, align 4
  %i.gs = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.gr, ptr noundef %1, i32 noundef %i.gn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gt = load i32, ptr @hf_audio_mgr_opts, align 4
  %i.gu = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.gt, ptr noundef %1, i32 noundef %i.gn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gv = load i32, ptr @hf_audio_mgr_alert, align 4
end_hunk_0
begin_hunk_1_@dissect_payload:bb.a
  %i.acl = load i32, ptr @hf_display_write_address_line_number, align 4
  %i.acm = call ptr @proto_tree_add_item(ptr noundef %i.abg, i32 noundef %i.acl, ptr noundef %1, i32 noundef %i.aby, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acn = add i32 %.167, 5
  %i.aco = add nsw i32 %i.da, -5
  br label %bb.cw

bb.cw:                                            ; preds = %.thread617.i, %bb.cv, %.thread.i, %bb.cq
  %.5567.i = phi i32 [ %i.acn, %.thread617.i ], [ %i.aby, %bb.cv ], [ %i.tx, %bb.cq ], [ %i.acf, %.thread.i ] ; 9 uses
  %.5.i = phi i32 [ %i.aco, %.thread617.i ], [ %i.ach, %bb.cv ], [ %i.ty, %bb.cq ], [ %i.acg, %.thread.i ] ; 2 uses
  %i.acp = and i32 %i.tu, 2
  %.not587.i = icmp eq i32 %i.acp, 0
  br i1 %.not587.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.acq = load i32, ptr @hf_basic_bit_field, align 4
  %i.acr = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.acq, ptr noundef %1, i32 noundef %.5567.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acs = load i32, ptr @hf_display_write_cursor_move, align 4
  %i.act = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.acs, ptr noundef %1, i32 noundef %.5567.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acu = load i32, ptr @hf_display_write_clear_left, align 4
  %i.acv = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.acu, ptr noundef %1, i32 noundef %.5567.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acw = load i32, ptr @hf_display_write_clear_right, align 4
  %i.acx = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.acw, ptr noundef %1, i32 noundef %.5567.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acy = load i32, ptr @hf_display_write_shift_left, align 4
  %i.acz = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.acy, ptr noundef %1, i32 noundef %.5567.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ada = load i32, ptr @hf_display_write_shift_right, align 4
  %i.adb = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ada, ptr noundef %1, i32 noundef %.5567.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adc = load i32, ptr @hf_display_write_highlight, align 4
  %i.add = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.adc, ptr noundef %1, i32 noundef %.5567.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ade = add i32 %.5567.i, 1
  %i.adf = add nsw i32 %.5.i, -1
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.6568.i = phi i32 [ %i.ade, %bb.cx ], [ %.5567.i, %bb.cw ] ; 3 uses
  %.6.i = phi i32 [ %i.adf, %bb.cx ], [ %.5.i, %bb.cw ] ; 2 uses
  %i.adg = and i32 %i.tu, 4
  %.not588.i = icmp eq i32 %i.adg, 0
  br i1 %.not588.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.adh = load i32, ptr @hf_display_write_tag, align 4
  %i.adi = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.adh, ptr noundef %1, i32 noundef %.6568.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adj = add i32 %.6568.i, 1
  %i.adk = add nsw i32 %.6.i, -1
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.7569.i = phi i32 [ %i.adj, %bb.cz ], [ %.6568.i, %bb.cy ] ; 3 uses
  %.7.i = phi i32 [ %i.adk, %bb.cz ], [ %.6.i, %bb.cy ] ; 3 uses
  %.not589.i = icmp eq i32 %.7.i, 0
  br i1 %.not589.i, label %dissect_unistim_message.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.adl = load i32, ptr @hf_generic_string, align 4
  %i.adm = load ptr, ptr %i.co, align 8
  %i.adn = load ptr, ptr @uinfo, align 8
  %i.ado = getelementptr i8, ptr %i.adn, i64 96
  %i.adp = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.cu, i32 noundef %i.adl, ptr noundef %1, i32 noundef %.7569.i, i32 noundef %.7.i, i32 noundef 0, ptr noundef %i.adm, ptr noundef %i.ado) ; 0 uses
  %i.adq = add i32 %.7.i, %.7569.i
  br label %dissect_unistim_message.exit

.lr.ph608.i:                                      ; preds = %.preheader.i41, %.lr.ph608.i
  %.8607.i = phi i32 [ %i.adw, %.lr.ph608.i ], [ %i.ty, %.preheader.i41 ]
  %.8570606.i = phi i32 [ %i.adv, %.lr.ph608.i ], [ %i.tx, %.preheader.i41 ] ; 3 uses
  %i.adr = load i32, ptr @hf_display_context_format, align 4
  %i.ads = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.adr, ptr noundef %1, i32 noundef %.8570606.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adt = load i32, ptr @hf_display_context_field, align 4
  %i.adu = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.adt, ptr noundef %1, i32 noundef %.8570606.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adv = add i32 %.8570606.i, 1                 ; 2 uses
  %i.adw = add nsw i32 %.8607.i, -1               ; 2 uses
  %.not581.i = icmp eq i32 %i.adw, 0
  br i1 %.not581.i, label %dissect_unistim_message.exit, label %.lr.ph608.i, !llvm.loop !10

bb.dc:                                            ; preds = %bb.bl
  %i.adx = load i32, ptr @hf_generic_data, align 4
  %i.ady = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.adx, ptr noundef %1, i32 noundef %i.tx, i32 noundef %i.ty, i32 noundef 0) ; 0 uses
  %i.adz = add i32 %.167, %i.da
  br label %dissect_unistim_message.exit

bb.dd:                                            ; preds = %bb.bl
  %i.aea = load i32, ptr @hf_display_char_address, align 4
  %i.aeb = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aea, ptr noundef %1, i32 noundef %i.tx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aec = add i32 %.167, 4
  %i.aed = add nsw i32 %i.da, -4
  %i.aee = load i32, ptr @hf_generic_data, align 4
  %i.aef = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aee, ptr noundef %1, i32 noundef %i.aec, i32 noundef %i.aed, i32 noundef 0) ; 0 uses
  %i.aeg = add i32 %.167, %i.da
  br label %dissect_unistim_message.exit

bb.de:                                            ; preds = %bb.bl
  %i.aeh = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.tx)
  %i.aei = load i32, ptr @hf_display_cursor_numeric, align 4
  %i.aej = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aei, ptr noundef %1, i32 noundef %i.tx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aek = load i32, ptr @hf_display_cursor_context, align 4
  %i.ael = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aek, ptr noundef %1, i32 noundef %i.tx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aem = load i32, ptr @hf_display_cursor_line, align 4
  %i.aen = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aem, ptr noundef %1, i32 noundef %i.tx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aeo = load i32, ptr @hf_display_cursor_softkey, align 4
  %i.aep = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aeo, ptr noundef %1, i32 noundef %i.tx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aeq = load i32, ptr @hf_display_cursor_softkey_id, align 4
  %i.aer = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aeq, ptr noundef %1, i32 noundef %i.tx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aes = add i32 %.167, 4
  %i.aet = load i32, ptr @hf_display_hlight_start, align 4
  %i.aeu = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aet, ptr noundef %1, i32 noundef %i.aes, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aev = add i32 %.167, 5
  %i.aew = load i32, ptr @hf_display_hlight_end, align 4
  %i.aex = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aew, ptr noundef %1, i32 noundef %i.aev, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aey = add i32 %.167, 6                       ; 4 uses
  %i.aez = add nsw i32 %i.da, -6                  ; 2 uses
  %i.afa = icmp eq i32 %i.aez, 0
  br i1 %i.afa, label %dissect_unistim_message.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.afb = and i8 %i.aeh, 4
  %.not580.i = icmp eq i8 %i.afb, 0
  br i1 %.not580.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.afc = load i32, ptr @hf_display_cursor_char_pos, align 4
  %i.afd = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.afc, ptr noundef %1, i32 noundef %i.aey, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afe = load i32, ptr @hf_display_cursor_line_number, align 4
  %i.aff = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.afe, ptr noundef %1, i32 noundef %i.aey, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afg = add i32 %.167, 7
  %i.afh = add nsw i32 %i.da, -7
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.9571.i = phi i32 [ %i.afg, %bb.dg ], [ %i.aey, %bb.df ] ; 2 uses
  %.9.i = phi i32 [ %i.afh, %bb.dg ], [ %i.aez, %bb.df ] ; 2 uses
  %i.afi = load i32, ptr @hf_generic_data, align 4
  %i.afj = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.afi, ptr noundef %1, i32 noundef %.9571.i, i32 noundef %.9.i, i32 noundef 0) ; 0 uses
  %i.afk = add i32 %.9.i, %.9571.i
  br label %dissect_unistim_message.exit

bb.di:                                            ; preds = %bb.bl
  %i.afl = load i32, ptr @hf_display_contrast, align 4
  %i.afm = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.afl, ptr noundef %1, i32 noundef %i.tx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afn = add i32 %.167, 4
  br label %dissect_unistim_message.exit

bb.dj:                                            ; preds = %bb.bl
  %i.afo = load i32, ptr @hf_broadcast_hour, align 4
  %i.afp = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.afo, ptr noundef %1, i32 noundef %i.tx, i32 noundef %i.ty, i32 noundef 0) ; 0 uses
  %i.afq = add i32 %.167, 4
  %i.afr = add nsw i32 %i.da, -4
  %i.afs = load i32, ptr @hf_broadcast_minute, align 4
  %i.aft = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.afs, ptr noundef %1, i32 noundef %i.afq, i32 noundef %i.afr, i32 noundef 0) ; 0 uses
  %i.afu = add i32 %.167, 5
  %i.afv = add nsw i32 %i.da, -5
  %i.afw = load i32, ptr @hf_generic_data, align 4
  %i.afx = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.afw, ptr noundef %1, i32 noundef %i.afu, i32 noundef %i.afv, i32 noundef 0) ; 0 uses
  %i.afy = add i32 %.167, %i.da
  br label %dissect_unistim_message.exit

bb.dk:                                            ; preds = %bb.bl
  %i.afz = load i32, ptr @hf_display_layer_skey_id, align 4
  %i.aga = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.afz, ptr noundef %1, i32 noundef %i.tx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.agb = add i32 %.167, 4
  %i.agc = load i32, ptr @hf_display_layer_number, align 4
  %i.agd = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.agc, ptr noundef %1, i32 noundef %i.agb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.age = add i32 %.167, 5
  %i.agf = add nsw i32 %i.da, -5
  %i.agg = load i32, ptr @hf_generic_string, align 4
  %i.agh = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.agg, ptr noundef %1, i32 noundef %i.age, i32 noundef %i.agf, i32 noundef 0) ; 0 uses
  %i.agi = add i32 %.167, %i.da
  br label %dissect_unistim_message.exit

bb.dl:                                            ; preds = %bb.bl
  %i.agj = load i32, ptr @hf_display_layer_skey_id, align 4
  %i.agk = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.agj, ptr noundef %1, i32 noundef %i.tx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.agl = load i32, ptr @hf_display_layer_all_skeys, align 4
  %i.agm = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.agl, ptr noundef %1, i32 noundef %i.tx, i32 noundef %i.ty, i32 noundef 0) ; 0 uses
  %i.agn = add i32 %.167, 4
  %i.ago = load i32, ptr @hf_display_layer_number, align 4
  %i.agp = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ago, ptr noundef %1, i32 noundef %i.agn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.agq = add i32 %.167, 5
  br label %dissect_unistim_message.exit

bb.dm:                                            ; preds = %bb.bl
  %i.agr = load i32, ptr @hf_display_layer_skey_id, align 4
  %i.ags = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.agr, ptr noundef %1, i32 noundef %i.tx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.agt = load i32, ptr @hf_display_layer_all_skeys, align 4
  %i.agu = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.agt, ptr noundef %1, i32 noundef %i.tx, i32 noundef %i.ty, i32 noundef 0) ; 0 uses
  %i.agv = add i32 %.167, 4
  %i.agw = load i32, ptr @hf_display_layer_number, align 4
  %i.agx = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.agw, ptr noundef %1, i32 noundef %i.agv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.agy = add i32 %.167, 5
  br label %dissect_unistim_message.exit

bb.dn:                                            ; preds = %bb.bl
  %i.agz = load i32, ptr @hf_display_layer_skey_id, align 4
  %i.aha = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.agz, ptr noundef %1, i32 noundef %i.tx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ahb = load i32, ptr @hf_display_once_or_cyclic, align 4
  %i.ahc = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ahb, ptr noundef %1, i32 noundef %i.tx, i32 noundef %i.ty, i32 noundef 0) ; 0 uses
  %.10599.i = add nsw i32 %i.da, -4               ; 2 uses
  %.10572600.i = add i32 %.167, 4                 ; 2 uses
  %.not601.i = icmp eq i32 %.10599.i, 0
  br i1 %.not601.i, label %dissect_unistim_message.exit, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %bb.dn, %.lr.ph.i39
  %.10603.i.a = phi i32 [ %.10572.i, %.lr.ph.i39 ], [ %.10572600.i, %bb.dn ] ; 3 uses
  %.10572.in602.i = phi i32 [ %.10.i, %.lr.ph.i39 ], [ %.10599.i, %bb.dn ]
  %i.ahd = load i32, ptr @hf_display_layer_number, align 4
  %i.ahe = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ahd, ptr noundef %1, i32 noundef %.10603.i.a, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ahf = add i32 %.10603.i.a, 1
  %i.ahg = load i32, ptr @hf_display_layer_duration, align 4
  %i.ahh = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ahg, ptr noundef %1, i32 noundef %i.ahf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.10.i = add i32 %.10572.in602.i, -2            ; 2 uses
  %.10572.i = add i32 %.10603.i.a, 2              ; 2 uses
  %.not.i40 = icmp eq i32 %.10.i, 0
  br i1 %.not.i40, label %dissect_unistim_message.exit, label %.lr.ph.i39, !llvm.loop !11

bb.do:                                            ; preds = %bb.bl
  %i.ahi = load i32, ptr @hf_display_layer_skey_id, align 4
  %i.ahj = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ahi, ptr noundef %1, i32 noundef %i.tx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ahk = add i32 %.167, 4
  br label %dissect_unistim_message.exit

bb.dp:                                            ; preds = %bb.bl
  %i.ahl = load i32, ptr @hf_display_layer_skey_id, align 4
  %i.ahm = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ahl, ptr noundef %1, i32 noundef %i.tx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ahn = add i32 %.167, 4
  br label %dissect_unistim_message.exit

bb.dq:                                            ; preds = %bb.bl
  %i.aho = load i32, ptr @hf_generic_data, align 4
  %i.ahp = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aho, ptr noundef %1, i32 noundef %i.tx, i32 noundef %i.ty, i32 noundef 0) ; 0 uses
  %i.ahq = add i32 %.167, %i.da
  br label %dissect_unistim_message.exit

bb.dr:                                            ; preds = %bb.l
  %i.ahr = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.dj)
  %i.ahs = load i32, ptr @hf_key_switch_cmd, align 4
  %i.aht = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ahs, ptr noundef %1, i32 noundef %i.dj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ahu = add i32 %.167, 3                       ; 26 uses
  %i.ahv = add nsw i32 %i.da, -3                  ; 5 uses
  switch i8 %i.ahr, label %bb.ed [
    i8 0, label %bb.ds
    i8 1, label %dissect_unistim_message.exit
    i8 2, label %dissect_unistim_message.exit
    i8 3, label %dissect_unistim_message.exit
    i8 4, label %dissect_unistim_message.exit
    i8 5, label %dissect_unistim_message.exit
    i8 6, label %bb.dt
    i8 7, label %bb.du
    i8 8, label %bb.dv
    i8 9, label %bb.dw
    i8 10, label %bb.dx
    i8 11, label %bb.dy
    i8 12, label %.preheader.i
    i8 13, label %bb.dz
    i8 14, label %bb.ea
    i8 15, label %bb.eb
    i8 -1, label %bb.ec
  ]

.preheader.i:                                     ; preds = %bb.dr
  %.not133.i = icmp eq i32 %i.ahv, 0
  br i1 %.not133.i, label %dissect_unistim_message.exit, label %.lr.ph.i37

bb.ds:                                            ; preds = %bb.dr
  %i.ahw = load i32, ptr @hf_basic_bit_field, align 4
  %i.ahx = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ahw, ptr noundef %1, i32 noundef %i.ahu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ahy = load i32, ptr @hf_key_led_cadence, align 4
  %i.ahz = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ahy, ptr noundef %1, i32 noundef %i.ahu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aia = load i32, ptr @hf_key_led_id, align 4
  %i.aib = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aia, ptr noundef %1, i32 noundef %i.ahu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aic = add i32 %.167, 4
  br label %dissect_unistim_message.exit

bb.dt:                                            ; preds = %bb.dr
  %i.aid = load i32, ptr @hf_generic_data, align 4
  %i.aie = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aid, ptr noundef %1, i32 noundef %i.ahu, i32 noundef %i.ahv, i32 noundef 0) ; 0 uses
  %i.aif = add i32 %.167, %i.da
  br label %dissect_unistim_message.exit

bb.du:                                            ; preds = %bb.dr
  %i.aig = load i32, ptr @hf_keys_send_key_rel, align 4
  %i.aih = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aig, ptr noundef %1, i32 noundef %i.ahu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aii = load i32, ptr @hf_keys_enable_vol, align 4
  %i.aij = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aii, ptr noundef %1, i32 noundef %i.ahu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aik = load i32, ptr @hf_keys_conspic_prog_key, align 4
  %i.ail = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aik, ptr noundef %1, i32 noundef %i.ahu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aim = load i32, ptr @hf_keys_acd_super_control, align 4
  %i.ain = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aim, ptr noundef %1, i32 noundef %i.ahu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aio = load i32, ptr @hf_keys_local_dial_feedback, align 4
  %i.aip = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aio, ptr noundef %1, i32 noundef %i.ahu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aiq = add i32 %.167, 4
  br label %dissect_unistim_message.exit

bb.dv:                                            ; preds = %bb.dr
  %i.air = load i32, ptr @hf_key_icon_id, align 4
  %i.ais = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.air, ptr noundef %1, i32 noundef %i.ahu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ait = load i32, ptr @hf_keys_admin_command, align 4
  %i.aiu = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ait, ptr noundef %1, i32 noundef %i.ahu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aiv = add i32 %.167, 4
  %i.aiw = load i32, ptr @hf_keys_logical_icon_id, align 4
  %i.aix = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aiw, ptr noundef %1, i32 noundef %i.aiv, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aiy = add i32 %.167, 6
  br label %dissect_unistim_message.exit

bb.dw:                                            ; preds = %bb.dr
  %i.aiz = load i32, ptr @hf_keys_repeat_timer_one, align 4
  %i.aja = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aiz, ptr noundef %1, i32 noundef %i.ahu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ajb = add i32 %.167, 4
  %i.ajc = load i32, ptr @hf_keys_repeat_timer_two, align 4
  %i.ajd = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ajc, ptr noundef %1, i32 noundef %i.ajb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aje = add i32 %.167, 5
  br label %dissect_unistim_message.exit

bb.dx:                                            ; preds = %bb.dr
  %i.ajf = load i32, ptr @hf_keys_led_id, align 4
  %i.ajg = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ajf, ptr noundef %1, i32 noundef %i.ahu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ajh = add i32 %.167, 4
  br label %dissect_unistim_message.exit

bb.dy:                                            ; preds = %bb.dr
  %i.aji = load i32, ptr @hf_keys_phone_icon_id, align 4
  %i.ajj = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.aji, ptr noundef %1, i32 noundef %i.ahu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ajk = add i32 %.167, 4
  br label %dissect_unistim_message.exit

.lr.ph.i37:                                       ; preds = %.preheader.i, %.lr.ph.i37
  %.0135.i = phi i32 [ %i.ajr, %.lr.ph.i37 ], [ %i.ahv, %.preheader.i ]
  %.0131134.i = phi i32 [ %i.ajq, %.lr.ph.i37 ], [ %i.ahu, %.preheader.i ] ; 3 uses
  %i.ajl = load i32, ptr @hf_keys_cadence_on_time, align 4
  %i.ajm = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ajl, ptr noundef %1, i32 noundef %.0131134.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ajn = add i32 %.0131134.i, 1
  %i.ajo = load i32, ptr @hf_keys_cadence_off_time, align 4
  %i.ajp = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ajo, ptr noundef %1, i32 noundef %i.ajn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ajq = add i32 %.0131134.i, 2                 ; 2 uses
  %i.ajr = add i32 %.0135.i, -2                   ; 2 uses
  %.not.i38 = icmp eq i32 %i.ajr, 0
  br i1 %.not.i38, label %dissect_unistim_message.exit, label %.lr.ph.i37, !llvm.loop !12

bb.dz:                                            ; preds = %bb.dr
  %i.ajs = load i32, ptr @hf_keys_user_activity_timeout, align 4
  %i.ajt = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ajs, ptr noundef %1, i32 noundef %i.ahu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aju = add i32 %.167, 4
  br label %dissect_unistim_message.exit

bb.ea:                                            ; preds = %bb.dr
  %i.ajv = load i32, ptr @hf_key_icon_id, align 4
  %i.ajw = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ajv, ptr noundef %1, i32 noundef %i.ahu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ajx = add i32 %.167, 4
  %i.ajy = add nsw i32 %i.da, -4
  %i.ajz = load i32, ptr @hf_generic_data, align 4
  %i.aka = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ajz, ptr noundef %1, i32 noundef %i.ajx, i32 noundef %i.ajy, i32 noundef 0) ; 0 uses
  %i.akb = add i32 %.167, %i.da
  br label %dissect_unistim_message.exit

bb.eb:                                            ; preds = %bb.dr
  %i.akc = load i32, ptr @hf_key_icon_id, align 4
  %i.akd = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.akc, ptr noundef %1, i32 noundef %i.ahu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ake = add i32 %.167, 4                       ; 3 uses
  %i.akf = load i32, ptr @hf_basic_bit_field, align 4
  %i.akg = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.akf, ptr noundef %1, i32 noundef %i.ake, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.akh = load i32, ptr @hf_broadcast_icon_state, align 4
  %i.aki = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.akh, ptr noundef %1, i32 noundef %i.ake, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.akj = load i32, ptr @hf_broadcast_icon_cadence, align 4
  %i.akk = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.akj, ptr noundef %1, i32 noundef %i.ake, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.akl = add i32 %.167, 5
  br label %dissect_unistim_message.exit

bb.ec:                                            ; preds = %bb.dr
  %i.akm = load i32, ptr @hf_generic_data, align 4
  %i.akn = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.akm, ptr noundef %1, i32 noundef %i.ahu, i32 noundef %i.ahv, i32 noundef 0) ; 0 uses
  %i.ako = add i32 %.167, %i.da
  br label %dissect_unistim_message.exit

bb.ed:                                            ; preds = %bb.dr
  %i.akp = load i32, ptr @hf_generic_data, align 4
  %i.akq = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.akp, ptr noundef %1, i32 noundef %i.ahu, i32 noundef %i.ahv, i32 noundef 0) ; 0 uses
  %i.akr = add i32 %.167, %i.da
  br label %dissect_unistim_message.exit

bb.ee:                                            ; preds = %bb.l
  %i.aks = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.dj)
  %i.akt = load i32, ptr @hf_basic_switch_cmd, align 4
  %i.aku = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.akt, ptr noundef %1, i32 noundef %i.dj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.akv = add i32 %.167, 3                       ; 15 uses
  %i.akw = add nsw i32 %i.da, -3                  ; 5 uses
  switch i8 %i.aks, label %bb.el [
    i8 1, label %bb.ef
    i8 2, label %bb.eg
    i8 6, label %bb.eh
    i8 7, label %bb.ei
    i8 8, label %bb.ej
    i8 15, label %bb.ek
    i8 -1, label %dissect_unistim_message.exit
  ]

bb.ef:                                            ; preds = %bb.ee
  %i.akx = load i32, ptr @hf_basic_bit_field, align 4
  %i.aky = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.akx, ptr noundef %1, i32 noundef %i.akv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.akz = load i32, ptr @hf_basic_switch_query_attr, align 4
  %i.ala = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.akz, ptr noundef %1, i32 noundef %i.akv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.alb = load i32, ptr @hf_basic_switch_query_opts, align 4
  %i.alc = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.alb, ptr noundef %1, i32 noundef %i.akv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ald = load i32, ptr @hf_basic_switch_query_fw, align 4
  %i.ale = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.ald, ptr noundef %1, i32 noundef %i.akv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.alf = load i32, ptr @hf_basic_switch_query_hw_id, align 4
  %i.alg = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.alf, ptr noundef %1, i32 noundef %i.akv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.alh = load i32, ptr @hf_basic_switch_query_it_type, align 4
  %i.ali = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.alh, ptr noundef %1, i32 noundef %i.akv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.alj = load i32, ptr @hf_basic_switch_query_prod_eng_code, align 4
  %i.alk = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.alj, ptr noundef %1, i32 noundef %i.akv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.all = load i32, ptr @hf_basic_switch_query_gray_mkt_info, align 4
  %i.alm = call ptr @proto_tree_add_item(ptr noundef %i.cu, i32 noundef %i.all, ptr noundef %1, i32 noundef %i.akv, i32 noundef 1, i32 noundef 0) ; 0 uses
end_hunk_1
