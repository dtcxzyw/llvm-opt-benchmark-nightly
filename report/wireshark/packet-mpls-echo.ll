Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-mpls-echo?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@dissect_mpls_echo_tlv_dd_map:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1276 = phi ptr [ %i.bb, %bb.i ], [ %.0275, %bb.h ]
  %i.bc = icmp sgt i32 %.0277, 20
  br i1 %i.bc, label %.lr.ph317.preheader, label %.loopexit304

.lr.ph317.preheader:                              ; preds = %bb.j
  %i.bd = add i32 %.0280, 16
  %i.be = add nsw i32 %.0277, -16
  br label %.lr.ph317

.lr.ph317:                                        ; preds = %.lr.ph317.preheader, %.loopexit
  %.0316 = phi i16 [ %.2, %.loopexit ], [ 1, %.lr.ph317.preheader ] ; 6 uses
  %.1278315 = phi i32 [ %.4, %.loopexit ], [ %i.be, %.lr.ph317.preheader ] ; 5 uses
  %.1281314 = phi i32 [ %.4284, %.loopexit ], [ %i.bd, %.lr.ph317.preheader ] ; 27 uses
  %i.bf = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.1281314)
  %i.bg = add i32 %.1281314, 2                    ; 2 uses
  %i.bh = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.bg) ; 2 uses
  %i.bi = add nsw i32 %.1278315, -4               ; 8 uses
  %i.bj = add i32 %.1281314, 4                    ; 17 uses
  %i.bk = zext i16 %i.bh to i32                   ; 8 uses
  %i.bl = icmp samesign ult i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph317
  %i.bm = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %.1276, ptr noundef nonnull @ei_mpls_echo_tlv_dd_map_subtlv_len, ptr noundef nonnull @.str.662, i32 noundef %i.bk, i32 noundef %i.bi) ; 0 uses
  br label %.loopexit304

bb.l:                                             ; preds = %.lr.ph317
  switch i16 %i.bf, label %bb.am [
    i16 1, label %bb.m
    i16 2, label %bb.ag
    i16 3, label %bb.ah
  ]

bb.m:                                             ; preds = %bb.l
  %i.bn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bj) ; 2 uses
  %i.bo = add i32 %.1281314, 5                    ; 6 uses
  %i.bp = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.bo) ; 5 uses
  %i.bq = zext i16 %i.bp to i32                   ; 9 uses
  %i.br = add nuw nsw i32 %i.bq, 8
  %i.bs = load i32, ptr @ett_mpls_echo_tlv_dd_map, align 4
  %i.bt = call ptr @proto_tree_add_subtree(ptr noundef %3, ptr noundef %0, i32 noundef %.1281314, i32 noundef %i.br, i32 noundef %i.bs, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.663) ; 21 uses
  %i.bu = zext i8 %i.bn to i32                    ; 2 uses
  switch i8 %i.bn, label %bb.ad [
    i8 0, label %bb.n
    i8 2, label %bb.p
    i8 4, label %bb.t
    i8 8, label %bb.x
    i8 9, label %bb.ac
  ]

bb.n:                                             ; preds = %bb.m
  br i1 %.not, label %bb.af, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load i32, ptr @hf_mpls_echo_sub_tlv_multipath_type, align 4
  %i.bw = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.bv, ptr noundef %0, i32 noundef %i.bj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bx = load i32, ptr @hf_mpls_echo_sub_tlv_multipath_length, align 4
  %i.by = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.bx, ptr noundef %0, i32 noundef %i.bo, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bz = load i32, ptr @hf_mpls_echo_sub_tlv_resv, align 4
  %i.ca = add i32 %.1281314, 7
  %i.cb = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.bz, ptr noundef %0, i32 noundef %i.ca, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cc = add i32 %.1281314, 8                    ; 2 uses
  %i.cd = load i32, ptr @ett_mpls_echo_tlv_ddstlv_map, align 4
  %i.ce = call ptr @proto_tree_add_subtree(ptr noundef %i.bt, ptr noundef %0, i32 noundef %i.cc, i32 noundef %i.bq, i32 noundef %i.cd, ptr noundef null, ptr noundef nonnull @.str.664)
  %i.cf = load i32, ptr @hf_mpls_echo_sub_tlv_multipath_info, align 4
  %i.cg = call ptr @proto_tree_add_item(ptr noundef %i.ce, i32 noundef %i.cf, ptr noundef %0, i32 noundef %i.cc, i32 noundef %i.bq, i32 noundef 0) ; 0 uses
  br label %bb.af

bb.p:                                             ; preds = %bb.m
  %.not300 = icmp eq i16 %i.bp, 4
  br i1 %.not300, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = load ptr, ptr %i.a, align 8
  %i.ci = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ch, ptr noundef nonnull @ei_mpls_echo_tlv_dd_map_subtlv_len, ptr noundef nonnull @.str.665, i32 noundef %i.bq) ; 0 uses
  br label %bb.af

bb.r:                                             ; preds = %bb.p
  br i1 %.not, label %bb.af, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = load i32, ptr @hf_mpls_echo_sub_tlv_multipath_type, align 4
  %i.ck = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.cj, ptr noundef %0, i32 noundef %i.bj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cl = load i32, ptr @hf_mpls_echo_sub_tlv_multipath_length, align 4
  %i.cm = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.cl, ptr noundef %0, i32 noundef %i.bo, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cn = load i32, ptr @hf_mpls_echo_sub_tlv_resv, align 4
  %i.co = add i32 %.1281314, 7
  %i.cp = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.cn, ptr noundef %0, i32 noundef %i.co, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cq = add i32 %.1281314, 8                    ; 2 uses
  %i.cr = load i32, ptr @ett_mpls_echo_tlv_ddstlv_map, align 4
  %i.cs = call ptr @proto_tree_add_subtree(ptr noundef %i.bt, ptr noundef %0, i32 noundef %i.cq, i32 noundef 4, i32 noundef %i.cr, ptr noundef null, ptr noundef nonnull @.str.666)
  %i.ct = load i32, ptr @hf_mpls_echo_sub_tlv_multipath_ip, align 4
  %i.cu = call ptr @proto_tree_add_item(ptr noundef %i.cs, i32 noundef %i.ct, ptr noundef %0, i32 noundef %i.cq, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.af

bb.t:                                             ; preds = %bb.m
  %.not299 = icmp eq i16 %i.bp, 8
  br i1 %.not299, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = load ptr, ptr %i.a, align 8
  %i.cw = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.cv, ptr noundef nonnull @ei_mpls_echo_tlv_dd_map_subtlv_len, ptr noundef nonnull @.str.667, i32 noundef %i.bq) ; 0 uses
  br label %bb.af

bb.v:                                             ; preds = %bb.t
  br i1 %.not, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = load i32, ptr @hf_mpls_echo_sub_tlv_multipath_type, align 4
  %i.cy = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.cx, ptr noundef %0, i32 noundef %i.bj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cz = load i32, ptr @hf_mpls_echo_sub_tlv_multipath_length, align 4
  %i.da = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.cz, ptr noundef %0, i32 noundef %i.bo, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.db = load i32, ptr @hf_mpls_echo_sub_tlv_resv, align 4
  %i.dc = add i32 %.1281314, 7
  %i.dd = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.db, ptr noundef %0, i32 noundef %i.dc, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.de = add i32 %.1281314, 8                    ; 2 uses
  %i.df = load i32, ptr @ett_mpls_echo_tlv_ddstlv_map, align 4
  %i.dg = call ptr @proto_tree_add_subtree(ptr noundef %i.bt, ptr noundef %0, i32 noundef %i.de, i32 noundef 8, i32 noundef %i.df, ptr noundef null, ptr noundef nonnull @.str.668) ; 2 uses
  %i.dh = load i32, ptr @hf_mpls_echo_sub_tlv_mp_ip_low, align 4
  %i.di = call ptr @proto_tree_add_item(ptr noundef %i.dg, i32 noundef %i.dh, ptr noundef %0, i32 noundef %i.de, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.dj = load i32, ptr @hf_mpls_echo_sub_tlv_mp_ip_high, align 4
  %i.dk = add i32 %.1281314, 12
  %i.dl = call ptr @proto_tree_add_item(ptr noundef %i.dg, i32 noundef %i.dj, ptr noundef %0, i32 noundef %i.dk, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.af

bb.x:                                             ; preds = %bb.m
  %i.dm = icmp ult i16 %i.bp, 4
  br i1 %i.dm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dn = load ptr, ptr %i.a, align 8
  %i.do = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.dn, ptr noundef nonnull @ei_mpls_echo_tlv_dd_map_subtlv_len, ptr noundef nonnull @.str.669, i32 noundef %i.bq) ; 0 uses
  br label %bb.af

bb.z:                                             ; preds = %bb.x
  br i1 %.not, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dp = load i32, ptr @hf_mpls_echo_sub_tlv_multipath_type, align 4
  %i.dq = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.dp, ptr noundef %0, i32 noundef %i.bj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dr = load i32, ptr @hf_mpls_echo_sub_tlv_multipath_length, align 4
  %i.ds = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.dr, ptr noundef %0, i32 noundef %i.bo, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dt = load i32, ptr @hf_mpls_echo_sub_tlv_resv, align 4
  %i.du = add i32 %.1281314, 7
  %i.dv = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.dt, ptr noundef %0, i32 noundef %i.du, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dw = add i32 %.1281314, 8                    ; 2 uses
  %i.dx = load i32, ptr @ett_mpls_echo_tlv_ddstlv_map, align 4
  %i.dy = call ptr @proto_tree_add_subtree(ptr noundef %i.bt, ptr noundef %0, i32 noundef %i.dw, i32 noundef %i.bq, i32 noundef %i.dx, ptr noundef null, ptr noundef nonnull @.str.670) ; 2 uses
  %i.dz = load i32, ptr @hf_mpls_echo_sub_tlv_multipath_ip, align 4
  %i.ea = call ptr @proto_tree_add_item(ptr noundef %i.dy, i32 noundef %i.dz, ptr noundef %0, i32 noundef %i.dw, i32 noundef 4, i32 noundef 0) ; 0 uses
  %.not298 = icmp eq i16 %i.bp, 4
  br i1 %.not298, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eb = load i32, ptr @hf_mpls_echo_sub_tlv_mp_mask, align 4
  %i.ec = add i32 %.1281314, 12
  %i.ed = add nsw i32 %i.bq, -4
  %i.ee = call ptr @proto_tree_add_item(ptr noundef %i.dy, i32 noundef %i.eb, ptr noundef %0, i32 noundef %i.ec, i32 noundef %i.ed, i32 noundef 0) ; 0 uses
  br label %bb.af

bb.ac:                                            ; preds = %bb.m
  %i.ef = load i32, ptr @hf_mpls_echo_sub_tlv_multipath_type, align 4
  %i.eg = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.bt, i32 noundef %i.ef, ptr noundef %0, i32 noundef %i.bj, i32 noundef 1, i32 noundef 9, ptr noundef nonnull @.str.671) ; 0 uses
  br label %bb.af

bb.ad:                                            ; preds = %bb.m
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eh = load i32, ptr @hf_mpls_echo_sub_tlv_multipath_type, align 4
  %i.ei = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.bt, i32 noundef %i.eh, ptr noundef %0, i32 noundef %i.bj, i32 noundef 1, i32 noundef %i.bu, ptr noundef nonnull @.str.672, i32 noundef %i.bu) ; 0 uses
  %i.ej = load i32, ptr @hf_mpls_echo_sub_tlv_multipath_type, align 4
  %i.ek = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.ej, ptr noundef %0, i32 noundef %i.bj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.el = load i32, ptr @hf_mpls_echo_sub_tlv_multipath_length, align 4
  %i.em = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.el, ptr noundef %0, i32 noundef %i.bo, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.en = load i32, ptr @hf_mpls_echo_sub_tlv_multipath_value, align 4
  %i.eo = add i32 %.1281314, 7
  %i.ep = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.en, ptr noundef %0, i32 noundef %i.eo, i32 noundef %i.bi, i32 noundef 0) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.aa, %bb.ab, %bb.z, %bb.v, %bb.r, %bb.n, %bb.ae, %bb.ac, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o
  %.neg303 = add nsw i32 %.1278315, -8
  %i.eq = sub nsw i32 %.neg303, %i.bq
  br label %.loopexit

bb.ag:                                            ; preds = %bb.l
  %i.er = add nuw nsw i32 %i.bk, 4
  %i.es = load i32, ptr @ett_mpls_echo_tlv_dd_map, align 4
  %i.et = call ptr @proto_tree_add_subtree(ptr noundef %3, ptr noundef %0, i32 noundef %.1281314, i32 noundef %i.er, i32 noundef %i.es, ptr noundef null, ptr noundef nonnull @.str.673)
  %i.eu = icmp ugt i16 %i.bh, 3
  br i1 %i.eu, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ag
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ev = add nsw i32 %.1278315, -8
  %5 = call i32 @llvm.usub.sat.i32(i32 %i.bk, i32 7)
  %i.ew = add nuw nsw i32 %5, 3                   ; 2 uses
  %i.ex = and i32 %i.ew, 131068                   ; 2 uses
  %i.ey = sub nsw i32 %i.ev, %i.ex
  %i.ez = add i32 %.1281314, 8
  %i.fa = add i32 %i.ez, %i.ex
  %i.fb = add i16 %.0316, 1
  %i.fc = lshr i32 %i.ew, 2
  %i.fd = trunc nuw nsw i32 %i.fc to i16
  %i.fe = add i16 %i.fb, %i.fd
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.1309 = phi i16 [ %i.ge, %.lr.ph.split ], [ %.0316, %.lr.ph ] ; 2 uses
  %.0274308 = phi i32 [ %i.gb, %.lr.ph.split ], [ %i.bk, %.lr.ph ] ; 2 uses
  %.2279307 = phi i32 [ %i.gc, %.lr.ph.split ], [ %i.bi, %.lr.ph ]
  %.2282306 = phi i32 [ %i.gd, %.lr.ph.split ], [ %i.bj, %.lr.ph ] ; 6 uses
  call void @decode_mpls_label(ptr noundef %0, i32 noundef %.2282306, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  %i.ff = load i32, ptr @ett_mpls_echo_tlv_ddstlv_map, align 4
  %i.fg = zext i16 %.1309 to i32
  %i.fh = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.et, ptr noundef %0, i32 noundef %.2282306, i32 noundef 4, i32 noundef %i.ff, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.659, i32 noundef %i.fg) ; 4 uses
  %i.fi = load ptr, ptr %i.b, align 8
  %i.fj = load i32, ptr %i.c, align 4
  %i.fk = load i8, ptr %i.f, align 1
  %i.fl = zext i8 %i.fk to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fi, ptr noundef nonnull @.str.674, i32 noundef %i.fj, i32 noundef %i.fl)
  %i.fm = load i32, ptr @hf_mpls_echo_sub_tlv_label, align 4
  %i.fn = load i32, ptr %i.c, align 4
  %i.fo = call ptr @proto_tree_add_uint(ptr noundef %i.fh, i32 noundef %i.fm, ptr noundef %0, i32 noundef %.2282306, i32 noundef 3, i32 noundef %i.fn) ; 0 uses
  %i.fp = load i32, ptr @hf_mpls_echo_sub_tlv_traffic_class, align 4
  %i.fq = add i32 %.2282306, 2                    ; 2 uses
  %i.fr = load i8, ptr %i.d, align 1
  %i.fs = zext i8 %i.fr to i32
  %i.ft = call ptr @proto_tree_add_uint(ptr noundef %i.fh, i32 noundef %i.fp, ptr noundef %0, i32 noundef %i.fq, i32 noundef 1, i32 noundef %i.fs) ; 0 uses
  %i.fu = load i32, ptr @hf_mpls_echo_sub_tlv_s_bit, align 4
  %i.fv = load i8, ptr %i.e, align 1
  %i.fw = zext i8 %i.fv to i32
  %i.fx = call ptr @proto_tree_add_uint(ptr noundef %i.fh, i32 noundef %i.fu, ptr noundef %0, i32 noundef %i.fq, i32 noundef 1, i32 noundef %i.fw) ; 0 uses
  %i.fy = load i32, ptr @hf_mpls_echo_tlv_ddstlv_map_mp_proto, align 4
  %i.fz = add i32 %.2282306, 3
  %i.ga = call ptr @proto_tree_add_item(ptr noundef %i.fh, i32 noundef %i.fy, ptr noundef %0, i32 noundef %i.fz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gb = add nsw i32 %.0274308, -4
  %i.gc = add i32 %.2279307, -4                   ; 2 uses
  %i.gd = add i32 %.2282306, 4                    ; 2 uses
  %i.ge = add i16 %.1309, 1                       ; 2 uses
  %i.gf = icmp samesign ugt i32 %.0274308, 7
  br i1 %i.gf, label %.lr.ph.split, label %.loopexit, !llvm.loop !10

bb.ah:                                            ; preds = %bb.l
  %i.gg = add i32 %.1281314, 5                    ; 2 uses
  %i.gh = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gg)
  %i.gi = add i32 %.1281314, 6                    ; 2 uses
  %i.gj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gi)
  %i.gk = zext i8 %i.gj to i32                    ; 3 uses
  %i.gl = add nuw nsw i32 %i.gk, 12
  %i.gm = load i32, ptr @ett_mpls_echo_tlv_dd_map, align 4
  %i.gn = call ptr @proto_tree_add_subtree(ptr noundef %3, ptr noundef %0, i32 noundef %.1281314, i32 noundef %i.gl, i32 noundef %i.gm, ptr noundef null, ptr noundef nonnull @.str.675) ; 8 uses
  %i.go = load i32, ptr @hf_mpls_echo_sub_tlv_op_type, align 4
  %i.gp = call ptr @proto_tree_add_item(ptr noundef %i.gn, i32 noundef %i.go, ptr noundef %0, i32 noundef %i.bj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gq = load i32, ptr @hf_mpls_echo_sub_tlv_addr_type, align 4
  %i.gr = call ptr @proto_tree_add_item(ptr noundef %i.gn, i32 noundef %i.gq, ptr noundef %0, i32 noundef %i.gg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gs = load i32, ptr @hf_mpls_echo_sub_tlv_fec_tlv_value, align 4
  %i.gt = call ptr @proto_tree_add_item(ptr noundef %i.gn, i32 noundef %i.gs, ptr noundef %0, i32 noundef %i.gi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gu = load i32, ptr @hf_mpls_echo_sub_tlv_res, align 4
  %i.gv = add i32 %.1281314, 7
  %i.gw = call ptr @proto_tree_add_item(ptr noundef %i.gn, i32 noundef %i.gu, ptr noundef %0, i32 noundef %i.gv, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.gh, label %bb.al [
    i8 0, label %bb.ai
    i8 1, label %bb.aj
    i8 2, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.gx = load i32, ptr @hf_mpls_echo_sub_tlv_remote_peer_unspecified, align 4
  %i.gy = add i32 %.1281314, 8
  %i.gz = call ptr @proto_tree_add_item(ptr noundef %i.gn, i32 noundef %i.gx, ptr noundef %0, i32 noundef %i.gy, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.ha = load i32, ptr @hf_mpls_echo_sub_tlv_remote_peer_ip, align 4
  %i.hb = add i32 %.1281314, 8                    ; 2 uses
  %i.hc = call ptr @proto_tree_add_item(ptr noundef %i.gn, i32 noundef %i.ha, ptr noundef %0, i32 noundef %i.hb, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.hd = add nsw i32 %.1278315, -8
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.he = load i32, ptr @hf_mpls_echo_sub_tlv_remore_peer_ipv6, align 4
  %i.hf = add i32 %.1281314, 8
  %i.hg = call ptr @proto_tree_add_item(ptr noundef %i.gn, i32 noundef %i.he, ptr noundef %0, i32 noundef %i.hf, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.hh = add nsw i32 %.1278315, -20
  %i.hi = add i32 %.1281314, 20
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.3283 = phi i32 [ %i.bj, %bb.ah ], [ %i.bj, %bb.ai ], [ %i.hb, %bb.aj ], [ %i.hi, %bb.ak ]
  %.3 = phi i32 [ %i.bi, %bb.ah ], [ %i.bi, %bb.ai ], [ %i.hd, %bb.aj ], [ %i.hh, %bb.ak ]
  %i.hj = add i32 %.3283, 4                       ; 2 uses
  call fastcc void @dissect_mpls_echo_tlv_fec(ptr noundef %0, ptr noundef %1, i32 noundef %i.hj, ptr noundef %i.gn, i32 noundef %i.gk)
  %reass.sub = sub i32 %.3, %i.gk
  %i.hk = add i32 %reass.sub, -4
  br label %.loopexit

bb.am:                                            ; preds = %bb.l
  %i.hl = load i32, ptr @ett_mpls_echo_tlv_dd_map, align 4
  %i.hm = call ptr @proto_tree_add_subtree(ptr noundef %3, ptr noundef %0, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef %i.hl, ptr noundef null, ptr noundef nonnull @.str.676) ; 3 uses
  %i.hn = load i32, ptr @hf_mpls_echo_tlv_dd_map_type, align 4
  %i.ho = call ptr @proto_tree_add_item(ptr noundef %i.hm, i32 noundef %i.hn, ptr noundef %0, i32 noundef %.1281314, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.hp = load i32, ptr @hf_mpls_echo_tlv_dd_map_length, align 4
  %i.hq = call ptr @proto_tree_add_item(ptr noundef %i.hm, i32 noundef %i.hp, ptr noundef %0, i32 noundef %i.bg, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.hr = load i32, ptr @hf_mpls_echo_tlv_dd_map_value, align 4
  %i.hs = call ptr @proto_tree_add_item(ptr noundef %i.hm, i32 noundef %i.hr, ptr noundef %0, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef 0) ; 0 uses
  %i.ht = sub nuw nsw i32 %i.bi, %i.bk
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us.preheader, %bb.ag, %bb.am, %bb.al, %bb.af
  %.4284 = phi i32 [ %i.bj, %bb.am ], [ %i.bj, %bb.af ], [ %i.hj, %bb.al ], [ %i.bj, %bb.ag ], [ %i.fa, %.lr.ph.split.us.preheader ], [ %i.gd, %.lr.ph.split ]
  %.4 = phi i32 [ %i.ht, %bb.am ], [ %i.eq, %bb.af ], [ %i.hk, %bb.al ], [ %i.bi, %bb.ag ], [ %i.ey, %.lr.ph.split.us.preheader ], [ %i.gc, %.lr.ph.split ] ; 2 uses
  %.2 = phi i16 [ %.0316, %bb.am ], [ %.0316, %bb.af ], [ %.0316, %bb.al ], [ %.0316, %bb.ag ], [ %i.fe, %.lr.ph.split.us.preheader ], [ %i.ge, %.lr.ph.split ]
  %i.hu = icmp sgt i32 %.4, 4
  br i1 %i.hu, label %.lr.ph317, label %.loopexit304, !llvm.loop !11

.loopexit304:                                     ; preds = %.loopexit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_mpls_echo_tlv_errored(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef range(i32 1, 2147483644) %4) unnamed_addr #0 {
bb.a:
  tail call void @increment_dissection_depth(ptr noundef %1)
  %i.a = icmp samesign ugt i32 %4, 3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.013 = phi i32 [ %i.c, %.lr.ph ], [ %4, %bb.a ] ; 2 uses
  %.01112 = phi i32 [ %i.d, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.b = tail call fastcc i32 @dissect_mpls_echo_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.01112, ptr noundef %3, i32 noundef %.013, i1 noundef zeroext true) ; 2 uses
  %i.c = sub i32 %.013, %i.b                      ; 2 uses
  %i.d = add i32 %i.b, %.01112
  %i.e = icmp sgt i32 %i.c, 3
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @increment_dissection_depth(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @decode_mpls_label(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @increment_dissection_depth(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
end_hunk_0
