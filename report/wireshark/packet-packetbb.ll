Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-packetbb?download=true
inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_packetbb:bb.a
  br label %dissect_pbb_addressblock.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.et = zext nneg i8 %i.el to i64
  %i.eu = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.ek, i64 noundef %i.et) ; 0 uses
  %i.ev = sub nuw nsw i32 %i.bb, %i.em
  %i.ew = add nuw nsw i32 %i.em, 3
  %i.ex = add nuw nsw i32 %i.ek, %i.em
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ab
  %.0258.i.i = phi i32 [ %i.ex, %bb.ai ], [ %i.ee, %bb.ab ] ; 9 uses
  %.0256.i.i = phi i8 [ %i.el, %bb.ai ], [ 0, %bb.ab ] ; 5 uses
  %.0253.i.i = phi i32 [ %i.ew, %bb.ai ], [ 2, %bb.ab ] ; 3 uses
  %.0251.i.i = phi i32 [ %i.ev, %bb.ai ], [ %i.bb, %bb.ab ] ; 3 uses
  %.0250.i.i = phi i32 [ %i.ee, %bb.ai ], [ 0, %bb.ab ]
  %i.ey = and i32 %i.eg, 32
  %.not274.i.i = icmp eq i32 %i.ey, 0             ; 2 uses
  br i1 %.not274.i.i, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ez = icmp eq i32 %.0258.i.i, %i.dp
  br i1 %i.ez, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fa = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.cb, ptr noundef %1, ptr noundef @ei_packetbb_error, ptr noundef %0, i32 noundef range(i32 0, 65536) %i.dp, i32 noundef 0, ptr noundef @.str.185) ; 0 uses
  %i.fb = call i32 @tvb_reported_length(ptr noundef %0)
  br label %dissect_pbb_addressblock.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.fc = add nuw nsw i32 %.0258.i.i, 1           ; 3 uses
  %i.fd = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0258.i.i) ; 2 uses
  %i.fe = zext i8 %i.fd to i32                    ; 2 uses
  %i.ff = xor i8 %.0256.i.i, -1
  %i.fg = sext i8 %i.ff to i32
  %i.fh = add nsw i32 %i.bb, %i.fg
  %i.fi = icmp slt i32 %i.fh, %i.fe
  br i1 %i.fi, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fj = sub nsw i32 %i.dp, %i.fc
  %i.fk = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.cb, ptr noundef %1, ptr noundef @ei_packetbb_error, ptr noundef %0, i32 noundef %i.fc, i32 noundef %i.fj, ptr noundef @.str.186) ; 0 uses
  %i.fl = call i32 @tvb_reported_length(ptr noundef %0)
  br label %dissect_pbb_addressblock.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.fm = sub nsw i32 %.0251.i.i, %i.fe
  %i.fn = add nuw nsw i32 %.0253.i.i, 1
  br label %bb.ax

bb.ap:                                            ; preds = %bb.aj
  %i.fo = and i32 %i.eg, 64
  %.not275.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not275.i.i, label %bb.ax, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fp = icmp eq i32 %.0258.i.i, %i.dp
  br i1 %i.fp, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fq = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.cb, ptr noundef %1, ptr noundef @ei_packetbb_error, ptr noundef %0, i32 noundef range(i32 0, 65536) %i.dp, i32 noundef 0, ptr noundef @.str.185) ; 0 uses
  %i.fr = call i32 @tvb_reported_length(ptr noundef %0)
  br label %dissect_pbb_addressblock.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.fs = add nuw nsw i32 %.0258.i.i, 1           ; 5 uses
  %i.ft = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0258.i.i) ; 3 uses
  %i.fu = zext i8 %i.ft to i32                    ; 6 uses
  %i.fv = xor i8 %.0256.i.i, -1
  %i.fw = sext i8 %i.fv to i32
  %i.fx = add nsw i32 %i.bb, %i.fw
  %i.fy = icmp slt i32 %i.fx, %i.fu
  %i.fz = sub nsw i32 %i.dp, %i.fs                ; 3 uses
  br i1 %i.fy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ga = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.cb, ptr noundef %1, ptr noundef @ei_packetbb_error, ptr noundef %0, i32 noundef %i.fs, i32 noundef %i.fz, ptr noundef @.str.186) ; 0 uses
  %i.gb = call i32 @tvb_reported_length(ptr noundef %0)
  br label %dissect_pbb_addressblock.exit.i

bb.au:                                            ; preds = %bb.as
  %i.gc = icmp ult i32 %i.fz, %i.fu
  br i1 %i.gc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gd = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.cb, ptr noundef %1, ptr noundef @ei_packetbb_error, ptr noundef %0, i32 noundef %i.fs, i32 noundef %i.fz, ptr noundef @.str.185) ; 0 uses
  %i.ge = call i32 @tvb_reported_length(ptr noundef %0)
  br label %dissect_pbb_addressblock.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.gf = sub nsw i32 %i.bb, %i.fu
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr i8, ptr %i.a, i64 %i.gg
  %i.gi = zext i8 %i.ft to i64
  %i.gj = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.gh, i32 noundef %i.fs, i64 noundef %i.gi) ; 0 uses
  %i.gk = sub nsw i32 %.0251.i.i, %i.fu
  %i.gl = add nuw nsw i32 %.0253.i.i, 1
  %i.gm = add nuw nsw i32 %i.gl, %i.fu
  %i.gn = add nuw nsw i32 %i.fs, %i.fu
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ap, %bb.ao
  %.1259.i.i = phi i32 [ %i.fc, %bb.ao ], [ %i.gn, %bb.aw ], [ %.0258.i.i, %bb.ap ] ; 7 uses
  %.0255.i.i = phi i8 [ %i.fd, %bb.ao ], [ %i.ft, %bb.aw ], [ 0, %bb.ap ]
  %.1254.i.i = phi i32 [ %i.fn, %bb.ao ], [ %i.gm, %bb.aw ], [ %.0253.i.i, %bb.ap ]
  %.1252.i.i = phi i32 [ %i.fm, %bb.ao ], [ %i.gk, %bb.aw ], [ %.0251.i.i, %bb.ap ] ; 5 uses
  %.0249.i.i = phi i32 [ %.0258.i.i, %bb.ao ], [ %.0258.i.i, %bb.aw ], [ 0, %bb.ap ] ; 2 uses
  %i.go = zext i8 %i.ed to i32                    ; 4 uses
  %i.gp = mul nsw i32 %.1252.i.i, %i.go           ; 2 uses
  %i.gq = add nsw i32 %i.gp, %.1254.i.i           ; 2 uses
  %i.gr = add nsw i32 %i.gp, %.1259.i.i           ; 4 uses
  %i.gs = and i32 %i.eg, 16
  %.not276.i.i = icmp eq i32 %i.gs, 0             ; 2 uses
  br i1 %.not276.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gt = add nsw i32 %i.gq, 1
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.gu = and i32 %i.eg, 8
  %.not277.i.i = icmp eq i32 %i.gu, 0             ; 2 uses
  %i.gv = select i1 %.not277.i.i, i32 0, i32 %i.go
  %spec.select.i.i = add nsw i32 %i.gq, %i.gv
  %spec.select280.i.i = select i1 %.not277.i.i, i32 0, i32 %i.gr
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.2.i.i = phi i32 [ %i.gt, %bb.ay ], [ %spec.select.i.i, %bb.az ] ; 2 uses
  %.0248.i.i = phi i32 [ %i.gr, %bb.ay ], [ %spec.select280.i.i, %bb.az ] ; 2 uses
  %i.gw = add nsw i32 %.2.i.i, %.4146.i           ; 3 uses
  %i.gx = icmp ugt i32 %i.gw, %i.dp
  br i1 %i.gx, label %dissect_pbb_addressblock.exit.thread.i, label %bb.bb

dissect_pbb_addressblock.exit.thread.i:           ; preds = %bb.ba
  %i.gy = sub nsw i32 %i.dp, %i.gr
  %i.gz = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.cb, ptr noundef %1, ptr noundef @ei_packetbb_error, ptr noundef %0, i32 noundef %i.gr, i32 noundef %i.gy, ptr noundef @.str.187) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %dissect_pbb_message.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ha = load i32, ptr @hf_packetbb_addr, align 4
  %i.hb = call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.ha, ptr noundef %0, i32 noundef range(i32 0, 65535) %.4146.i, i32 noundef %.2.i.i, i32 noundef 0) ; 2 uses
  %i.hc = load i32, ptr @ett_packetbb_addr, align 4
  %i.hd = call ptr @proto_item_add_subtree(ptr noundef %i.hb, i32 noundef %i.hc) ; 10 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.hb, ptr noundef @.str.188, i32 noundef %i.go)
  %i.he = load i32, ptr @hf_packetbb_addr_num, align 4
  %i.hf = call ptr @proto_tree_add_item(ptr noundef %i.hd, i32 noundef %i.he, ptr noundef %0, i32 noundef range(i32 0, 65535) %.4146.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hg = load i32, ptr @hf_packetbb_addr_flags, align 4
  %i.hh = load i32, ptr @ett_packetbb_addr_flags, align 4
  %i.hi = call ptr @proto_tree_add_bitmask(ptr noundef %i.hd, ptr noundef %0, i32 noundef %i.ec, i32 noundef %i.hg, i32 noundef %i.hh, ptr noundef @dissect_pbb_addressblock.flags, i32 noundef 0) ; 0 uses
  br i1 %.not.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hj = load i32, ptr @hf_packetbb_addr_head, align 4
  %i.hk = zext nneg i8 %.0256.i.i to i32
  %i.hl = add nuw nsw i32 %i.hk, 1
  %i.hm = call ptr @proto_tree_add_item(ptr noundef %i.hd, i32 noundef %i.hj, ptr noundef %0, i32 noundef %.0250.i.i, i32 noundef %i.hl, i32 noundef 0) ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hn = and i32 %i.eg, 64
  %.not278.i.i = icmp eq i32 %i.hn, 0
  br i1 %.not278.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ho = load i32, ptr @hf_packetbb_addr_tail, align 4
  %i.hp = zext i8 %.0255.i.i to i32
  %i.hq = add nuw nsw i32 %i.hp, 1
  %i.hr = call ptr @proto_tree_add_item(ptr noundef %i.hd, i32 noundef %i.ho, ptr noundef %0, i32 noundef %.0249.i.i, i32 noundef %i.hq, i32 noundef 0) ; 0 uses
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  br i1 %.not274.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hs = load i32, ptr @hf_packetbb_addr_tail, align 4
  %i.ht = call ptr @proto_tree_add_item(ptr noundef %i.hd, i32 noundef %i.hs, ptr noundef %0, i32 noundef %.0249.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.not282.i.i = icmp eq i8 %i.ed, 0
  br i1 %.not282.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bh
  %i.hu = zext nneg i8 %.0256.i.i to i64
  %i.hv = getelementptr i8, ptr %i.a, i64 %i.hu
  %i.hw = zext i32 %.1252.i.i to i64
  %i.hx = sub nsw i32 %i.gw, %.1259.i.i           ; 4 uses
  %i.hy = zext nneg i8 %.0256.i.i to i32
  %i.hz = add nsw i32 %.1252.i.i, %i.hy
  %i.ia = zext i32 %i.hz to i64
  %i.ib = and i32 %i.eg, 8
  %.not279.i.i = icmp eq i32 %i.ib, 0
  br label %bb.bi

bb.bi:                                            ; preds = %bb.br, %.lr.ph.i.i
  %.0281.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.jb, %bb.br ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i8 %i.du, ptr %i.b, align 1
  %i.ic = mul i32 %.0281.i.i, %.1252.i.i
  %i.id = add i32 %i.ic, %.1259.i.i               ; 2 uses
  %i.ie = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.hv, i32 noundef %i.id, i64 noundef %i.hw) ; 0 uses
  switch i8 %.0.i35, label %default.unreachable [
    i8 0, label %bb.bj
    i8 1, label %bb.bk
    i8 2, label %bb.bl
    i8 3, label %bb.bm
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.if = load i32, ptr %i.a, align 16
  %i.ig = load i32, ptr %i.dw, align 4
  %i.ih = call ptr @proto_tree_add_ipv4(ptr noundef %i.hd, i32 noundef %i.ig, ptr noundef %0, i32 noundef %.1259.i.i, i32 noundef %i.hx, i32 noundef %i.if)
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bi
  %i.ii = load i32, ptr %i.dw, align 4
  %i.ij = call ptr @proto_tree_add_ipv6(ptr noundef %i.hd, i32 noundef %i.ii, ptr noundef %0, i32 noundef %.1259.i.i, i32 noundef %i.hx, ptr noundef nonnull %i.a)
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bi
  %i.ik = load i32, ptr %i.dw, align 4
  %i.il = call ptr @proto_tree_add_ether(ptr noundef %i.hd, i32 noundef %i.ik, ptr noundef %0, i32 noundef %.1259.i.i, i32 noundef %i.hx, ptr noundef nonnull %i.a)
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.im = load i32, ptr %i.dw, align 4
  %i.in = load ptr, ptr %i.ao, align 8
  %i.io = call ptr @bytes_to_str_maxlen(ptr noundef %i.in, ptr noundef nonnull %i.a, i64 noundef %i.ia, i64 noundef 36)
  %i.ip = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.hd, i32 noundef %i.im, ptr noundef %0, i32 noundef %.1259.i.i, i32 noundef %i.hx, ptr noundef null, ptr noundef @.str.189, ptr noundef %i.io)
  br label %bb.bn

default.unreachable:                              ; preds = %bb.bi
  unreachable

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %.1.i.i = phi ptr [ %i.ip, %bb.bm ], [ %i.ih, %bb.bj ], [ %i.ij, %bb.bk ], [ %i.il, %bb.bl ] ; 2 uses
  %i.iq = load i32, ptr @ett_packetbb_addr_value, align 4
  %i.ir = call ptr @proto_item_add_subtree(ptr noundef %.1.i.i, i32 noundef %i.iq) ; 3 uses
  %i.is = load i32, ptr @hf_packetbb_addr_value_mid, align 4
  %i.it = call ptr @proto_tree_add_item(ptr noundef %i.ir, i32 noundef %i.is, ptr noundef %0, i32 noundef %i.id, i32 noundef %.1252.i.i, i32 noundef 0) ; 0 uses
  br i1 %.not276.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iu = load i32, ptr @hf_packetbb_addr_value_prefix, align 4
  %i.iv = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.ir, i32 noundef %i.iu, ptr noundef %0, i32 noundef %.0248.i.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  br i1 %.not279.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iw = load i32, ptr @hf_packetbb_addr_value_prefix, align 4
  %i.ix = add i32 %.0281.i.i, %.0248.i.i
  %i.iy = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.ir, i32 noundef %i.iw, ptr noundef %0, i32 noundef %i.ix, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.iz = load i8, ptr %i.b, align 1
  %i.ja = zext i8 %i.iz to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1.i.i, ptr noundef @.str.190, i32 noundef %i.ja)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  %i.jb = add nuw nsw i32 %.0281.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.jb, %i.go
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.bi, !llvm.loop !8

._crit_edge.i.i:                                  ; preds = %bb.br, %bb.bh
  %i.jc = call fastcc i32 @dissect_pbb_tlvblock(ptr noundef %0, ptr noundef %1, ptr noundef %i.hd, i32 noundef %i.gw, i32 noundef range(i32 0, 65536) %i.dp, i8 noundef signext %i.ed, i32 noundef 2)
  br label %dissect_pbb_addressblock.exit.i

dissect_pbb_addressblock.exit.i:                  ; preds = %._crit_edge.i.i, %bb.av, %bb.at, %bb.ar, %bb.an, %bb.al, %bb.ah, %bb.af, %bb.ad, %bb.aa
  %.0257.i.i = phi i32 [ %i.ea, %bb.aa ], [ %i.ej, %bb.ad ], [ %i.ep, %bb.af ], [ %i.es, %bb.ah ], [ %i.fb, %bb.al ], [ %i.fl, %bb.an ], [ %i.ge, %bb.av ], [ %i.jc, %._crit_edge.i.i ], [ %i.fr, %bb.ar ], [ %i.gb, %bb.at ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.jd = icmp ult i32 %.0257.i.i, %i.dp
  br i1 %i.jd, label %bb.z, label %dissect_pbb_message.exit, !llvm.loop !9

dissect_pbb_message.exit:                         ; preds = %dissect_pbb_addressblock.exit.i, %bb.j, %bb.m, %bb.x, %bb.y, %dissect_pbb_addressblock.exit.thread.i
  %.0135.i = phi i32 [ %i.at, %bb.j ], [ %i.bp, %bb.m ], [ %i.dq, %bb.x ], [ %i.dr, %bb.y ], [ %i.dp, %dissect_pbb_addressblock.exit.thread.i ], [ %.0257.i.i, %dissect_pbb_addressblock.exit.i ] ; 2 uses
  %i.je = call i32 @tvb_reported_length(ptr noundef %0)
  %i.jf = icmp ult i32 %.0135.i, %i.je
  br i1 %i.jf, label %bb.i, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %dissect_pbb_message.exit, %dissect_pbb_header.exit
  %i.jg = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.d, %bb.a, %._crit_edge
  %.033 = phi i32 [ %i.jg, %._crit_edge ], [ 0, %bb.a ], [ 0, %bb.d ]
  ret i32 %.033
}

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_pbb_tlvblock(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 65536) %3, i32 noundef %4, i8 noundef signext %5, i32 noundef range(i32 0, 3) %6) unnamed_addr #0 {
bb.a:
  %i.a = add nuw nsw i32 %3, 2                    ; 4 uses
  %i.b = icmp ult i32 %4, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sub nsw i32 %4, %3
  %i.d = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef @ei_packetbb_error, ptr noundef %0, i32 noundef %3, i32 noundef %i.c, ptr noundef @.str.167) ; 0 uses
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  %i.e = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %3) ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = add nuw nsw i32 %i.a, %i.f               ; 3 uses
  %i.h = icmp ult i32 %4, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = sub nuw nsw i32 %4, %3
  %i.j = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef @ei_packetbb_error, ptr noundef %0, i32 noundef %3, i32 noundef %i.i, ptr noundef @.str.168) ; 0 uses
  br label %bb.az

bb.e:                                             ; preds = %bb.c
  %i.k = load i32, ptr @hf_packetbb_tlvblock, align 4
  %i.l = sub nuw nsw i32 %i.g, %3
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef %3, i32 noundef %i.l, i32 noundef 0) ; 3 uses
  %i.n = load i32, ptr @ett_packetbb_tlvblock, align 4
  %i.o = tail call ptr @proto_item_add_subtree(ptr noundef %i.m, i32 noundef %i.n)
  %i.p = load i32, ptr @hf_packetbb_tlvblock_length, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.p, ptr noundef %0, i32 noundef %3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.not202 = icmp eq i16 %i.e, 0
  br i1 %.not202, label %._crit_edge, label %.lr.ph199

.lr.ph199:                                        ; preds = %bb.e
  %i.r = tail call i8 @llvm.usub.sat.i8(i8 %5, i8 1)
  %i.s = icmp sgt i8 %5, 0
  %i.t = icmp eq i32 %6, 1
  %i.u = getelementptr i8, ptr %1, i64 416
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph199, %bb.ay
  %.0172198 = phi i32 [ 0, %.lr.ph199 ], [ %i.fs, %bb.ay ]
  %.0174197 = phi i32 [ %i.a, %.lr.ph199 ], [ %.9, %bb.ay ] ; 7 uses
  %i.v = add nuw nsw i32 %.0174197, 1             ; 2 uses
  %i.w = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0174197) ; 4 uses
  %i.x = add nuw nsw i32 %.0174197, 2             ; 3 uses
  %i.y = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.v) ; 2 uses
  %i.z = zext i8 %i.y to i32                      ; 7 uses
  %.not = icmp sgt i8 %i.y, -1                    ; 2 uses
  %i.aa = add nuw nsw i32 %.0174197, 3            ; 2 uses
  %spec.select = select i1 %.not, i32 %i.x, i32 %i.aa ; 6 uses
  %i.ab = and i32 %i.z, 64
  %.not184 = icmp eq i32 %i.ab, 0                 ; 2 uses
  br i1 %.not184, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = add nuw nsw i32 %spec.select, 1
  %i.ad = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %spec.select) ; 2 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ae = and i32 %i.z, 32
  %.not185 = icmp eq i32 %i.ae, 0
  br i1 %.not185, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_0
