Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-packetbb?download=true
inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_packetbb:bb.a
  br label %dissect_pbb_addressblock.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.ev = zext nneg i8 %i.en to i64
  %i.ew = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.em, i64 noundef %i.ev) ; 0 uses
  %i.ex = sub nsw i32 %i.bb, %i.eo
  %i.ey = add nuw nsw i32 %i.eo, 3
  %i.ez = add nuw nsw i32 %i.em, %i.eo
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ab
  %.0258.i.i = phi i32 [ %i.ez, %bb.ai ], [ %i.eg, %bb.ab ] ; 9 uses
  %.0256.i.i = phi i8 [ %i.en, %bb.ai ], [ 0, %bb.ab ] ; 5 uses
  %.0253.i.i = phi i32 [ %i.ey, %bb.ai ], [ 2, %bb.ab ] ; 3 uses
  %.0251.i.i = phi i32 [ %i.ex, %bb.ai ], [ %i.bb, %bb.ab ] ; 3 uses
  %.0250.i.i = phi i32 [ %i.eg, %bb.ai ], [ 0, %bb.ab ]
  %i.fa = and i32 %i.ei, 32
  %.not274.i.i = icmp eq i32 %i.fa, 0             ; 2 uses
  br i1 %.not274.i.i, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fb = icmp eq i32 %.0258.i.i, %i.dr
  br i1 %i.fb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fc = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.cc, ptr noundef %1, ptr noundef nonnull @ei_packetbb_error, ptr noundef %0, i32 noundef range(i32 0, 65536) %i.dr, i32 noundef 0, ptr noundef nonnull @.str.185) ; 0 uses
  %i.fd = call i32 @tvb_reported_length(ptr noundef %0)
  br label %dissect_pbb_addressblock.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.fe = add nuw nsw i32 %.0258.i.i, 1           ; 3 uses
  %i.ff = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0258.i.i) ; 2 uses
  %i.fg = zext i8 %i.ff to i32                    ; 2 uses
  %i.fh = xor i8 %.0256.i.i, -1
  %i.fi = sext i8 %i.fh to i32
  %i.fj = add nsw i32 %i.bb, %i.fi
  %i.fk = icmp slt i32 %i.fj, %i.fg
  br i1 %i.fk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fl = sub nsw i32 %i.dr, %i.fe
  %i.fm = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.cc, ptr noundef %1, ptr noundef nonnull @ei_packetbb_error, ptr noundef %0, i32 noundef %i.fe, i32 noundef %i.fl, ptr noundef nonnull @.str.186) ; 0 uses
  %i.fn = call i32 @tvb_reported_length(ptr noundef %0)
  br label %dissect_pbb_addressblock.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.fo = sub nsw i32 %.0251.i.i, %i.fg
  %i.fp = add nuw nsw i32 %.0253.i.i, 1
  br label %bb.ax

bb.ap:                                            ; preds = %bb.aj
  %i.fq = and i32 %i.ei, 64
  %.not275.i.i = icmp eq i32 %i.fq, 0
  br i1 %.not275.i.i, label %bb.ax, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fr = icmp eq i32 %.0258.i.i, %i.dr
  br i1 %i.fr, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fs = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.cc, ptr noundef %1, ptr noundef nonnull @ei_packetbb_error, ptr noundef %0, i32 noundef range(i32 0, 65536) %i.dr, i32 noundef 0, ptr noundef nonnull @.str.185) ; 0 uses
  %i.ft = call i32 @tvb_reported_length(ptr noundef %0)
  br label %dissect_pbb_addressblock.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.fu = add nuw nsw i32 %.0258.i.i, 1           ; 5 uses
  %i.fv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0258.i.i) ; 3 uses
  %i.fw = zext i8 %i.fv to i32                    ; 6 uses
  %i.fx = xor i8 %.0256.i.i, -1
  %i.fy = sext i8 %i.fx to i32
  %i.fz = add nsw i32 %i.bb, %i.fy
  %i.ga = icmp slt i32 %i.fz, %i.fw
  %i.gb = sub nsw i32 %i.dr, %i.fu                ; 3 uses
  br i1 %i.ga, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gc = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.cc, ptr noundef %1, ptr noundef nonnull @ei_packetbb_error, ptr noundef %0, i32 noundef %i.fu, i32 noundef %i.gb, ptr noundef nonnull @.str.186) ; 0 uses
  %i.gd = call i32 @tvb_reported_length(ptr noundef %0)
  br label %dissect_pbb_addressblock.exit.i

bb.au:                                            ; preds = %bb.as
  %i.ge = icmp ult i32 %i.gb, %i.fw
  br i1 %i.ge, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gf = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.cc, ptr noundef %1, ptr noundef nonnull @ei_packetbb_error, ptr noundef %0, i32 noundef %i.fu, i32 noundef %i.gb, ptr noundef nonnull @.str.185) ; 0 uses
  %i.gg = call i32 @tvb_reported_length(ptr noundef %0)
  br label %dissect_pbb_addressblock.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.gh = sub nsw i32 %i.bb, %i.fw
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr i8, ptr %i.a, i64 %i.gi
  %i.gk = zext i8 %i.fv to i64
  %i.gl = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.gj, i32 noundef %i.fu, i64 noundef %i.gk) ; 0 uses
  %i.gm = sub nsw i32 %.0251.i.i, %i.fw
  %i.gn = add nuw nsw i32 %.0253.i.i, 1
  %i.go = add nuw nsw i32 %i.gn, %i.fw
  %i.gp = add nuw nsw i32 %i.fu, %i.fw
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ap, %bb.ao
  %.1259.i.i = phi i32 [ %i.fe, %bb.ao ], [ %i.gp, %bb.aw ], [ %.0258.i.i, %bb.ap ] ; 7 uses
  %.0255.i.i = phi i8 [ %i.ff, %bb.ao ], [ %i.fv, %bb.aw ], [ 0, %bb.ap ]
  %.1254.i.i = phi i32 [ %i.fp, %bb.ao ], [ %i.go, %bb.aw ], [ %.0253.i.i, %bb.ap ]
  %.1252.i.i = phi i32 [ %i.fo, %bb.ao ], [ %i.gm, %bb.aw ], [ %.0251.i.i, %bb.ap ] ; 5 uses
  %.0249.i.i = phi i32 [ %.0258.i.i, %bb.ao ], [ %.0258.i.i, %bb.aw ], [ 0, %bb.ap ] ; 2 uses
  %i.gq = zext i8 %i.ef to i32                    ; 4 uses
  %i.gr = mul nsw i32 %.1252.i.i, %i.gq           ; 2 uses
  %i.gs = add nsw i32 %i.gr, %.1254.i.i           ; 2 uses
  %i.gt = add nsw i32 %i.gr, %.1259.i.i           ; 4 uses
  %i.gu = and i32 %i.ei, 16
  %.not276.i.i = icmp eq i32 %i.gu, 0             ; 2 uses
  br i1 %.not276.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gv = add nsw i32 %i.gs, 1
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.gw = and i32 %i.ei, 8
  %.not277.i.i = icmp eq i32 %i.gw, 0             ; 2 uses
  %i.gx = select i1 %.not277.i.i, i32 0, i32 %i.gq
  %spec.select.i.i = add nsw i32 %i.gs, %i.gx
  %spec.select280.i.i = select i1 %.not277.i.i, i32 0, i32 %i.gt
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.2.i.i = phi i32 [ %i.gv, %bb.ay ], [ %spec.select.i.i, %bb.az ] ; 2 uses
  %.0248.i.i = phi i32 [ %i.gt, %bb.ay ], [ %spec.select280.i.i, %bb.az ] ; 2 uses
  %i.gy = add nsw i32 %.2.i.i, %.4147.i           ; 3 uses
  %i.gz = icmp ugt i32 %i.gy, %i.dr
  br i1 %i.gz, label %dissect_pbb_addressblock.exit.thread.i, label %bb.bb

dissect_pbb_addressblock.exit.thread.i:           ; preds = %bb.ba
  %i.ha = sub nsw i32 %i.dr, %i.gt
  %i.hb = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.cc, ptr noundef %1, ptr noundef nonnull @ei_packetbb_error, ptr noundef %0, i32 noundef %i.gt, i32 noundef %i.ha, ptr noundef nonnull @.str.187) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %dissect_pbb_message.exit

bb.bb:                                            ; preds = %bb.ba
  %i.hc = load i32, ptr @hf_packetbb_addr, align 4
  %i.hd = call ptr @proto_tree_add_item(ptr noundef %i.cc, i32 noundef %i.hc, ptr noundef %0, i32 noundef range(i32 0, 65535) %.4147.i, i32 noundef %.2.i.i, i32 noundef 0) ; 2 uses
  %i.he = load i32, ptr @ett_packetbb_addr, align 4
  %i.hf = call ptr @proto_item_add_subtree(ptr noundef %i.hd, i32 noundef %i.he) ; 10 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.hd, ptr noundef nonnull @.str.188, i32 noundef %i.gq)
  %i.hg = load i32, ptr @hf_packetbb_addr_num, align 4
  %i.hh = call ptr @proto_tree_add_item(ptr noundef %i.hf, i32 noundef %i.hg, ptr noundef %0, i32 noundef range(i32 0, 65535) %.4147.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hi = load i32, ptr @hf_packetbb_addr_flags, align 4
  %i.hj = load i32, ptr @ett_packetbb_addr_flags, align 4
  %i.hk = call ptr @proto_tree_add_bitmask(ptr noundef %i.hf, ptr noundef %0, i32 noundef %i.ee, i32 noundef %i.hi, i32 noundef %i.hj, ptr noundef nonnull @dissect_pbb_addressblock.flags, i32 noundef 0) ; 0 uses
  br i1 %.not.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hl = load i32, ptr @hf_packetbb_addr_head, align 4
  %i.hm = zext nneg i8 %.0256.i.i to i32
  %i.hn = add nuw nsw i32 %i.hm, 1
  %i.ho = call ptr @proto_tree_add_item(ptr noundef %i.hf, i32 noundef %i.hl, ptr noundef %0, i32 noundef %.0250.i.i, i32 noundef %i.hn, i32 noundef 0) ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hp = and i32 %i.ei, 64
  %.not278.i.i = icmp eq i32 %i.hp, 0
  br i1 %.not278.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hq = load i32, ptr @hf_packetbb_addr_tail, align 4
  %i.hr = zext i8 %.0255.i.i to i32
  %i.hs = add nuw nsw i32 %i.hr, 1
  %i.ht = call ptr @proto_tree_add_item(ptr noundef %i.hf, i32 noundef %i.hq, ptr noundef %0, i32 noundef %.0249.i.i, i32 noundef %i.hs, i32 noundef 0) ; 0 uses
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  br i1 %.not274.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hu = load i32, ptr @hf_packetbb_addr_tail, align 4
  %i.hv = call ptr @proto_tree_add_item(ptr noundef %i.hf, i32 noundef %i.hu, ptr noundef %0, i32 noundef %.0249.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.not282.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not282.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bh
  %i.hw = zext nneg i8 %.0256.i.i to i64
  %i.hx = getelementptr i8, ptr %i.a, i64 %i.hw
  %i.hy = zext i32 %.1252.i.i to i64
  %i.hz = sub nsw i32 %i.gy, %.1259.i.i           ; 4 uses
  %i.ia = zext nneg i8 %.0256.i.i to i32
  %i.ib = add nsw i32 %.1252.i.i, %i.ia
  %i.ic = zext i32 %i.ib to i64
  %i.id = and i32 %i.ei, 8
  %.not279.i.i = icmp eq i32 %i.id, 0
  br label %bb.bi

bb.bi:                                            ; preds = %bb.br, %.lr.ph.i.i
  %.0281.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.jd, %bb.br ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i8 %i.dw, ptr %i.b, align 1
  %i.ie = mul nsw i32 %.0281.i.i, %.1252.i.i
  %i.if = add nsw i32 %i.ie, %.1259.i.i           ; 2 uses
  %i.ig = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.hx, i32 noundef %i.if, i64 noundef %i.hy) ; 0 uses
  switch i8 %.0.i35, label %default.unreachable [
    i8 0, label %bb.bj
    i8 1, label %bb.bk
    i8 2, label %bb.bl
    i8 3, label %bb.bm
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.ih = load i32, ptr %i.a, align 16
  %i.ii = load i32, ptr %i.dy, align 4
  %i.ij = call ptr @proto_tree_add_ipv4(ptr noundef %i.hf, i32 noundef %i.ii, ptr noundef %0, i32 noundef %.1259.i.i, i32 noundef %i.hz, i32 noundef %i.ih)
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bi
  %i.ik = load i32, ptr %i.dy, align 4
  %i.il = call ptr @proto_tree_add_ipv6(ptr noundef %i.hf, i32 noundef %i.ik, ptr noundef %0, i32 noundef %.1259.i.i, i32 noundef %i.hz, ptr noundef nonnull %i.a)
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bi
  %i.im = load i32, ptr %i.dy, align 4
  %i.in = call ptr @proto_tree_add_ether(ptr noundef %i.hf, i32 noundef %i.im, ptr noundef %0, i32 noundef %.1259.i.i, i32 noundef %i.hz, ptr noundef nonnull %i.a)
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.io = load i32, ptr %i.dy, align 4
  %i.ip = load ptr, ptr %i.ao, align 8
  %i.iq = call ptr @bytes_to_str_maxlen(ptr noundef %i.ip, ptr noundef nonnull %i.a, i64 noundef %i.ic, i64 noundef 36)
  %i.ir = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.hf, i32 noundef %i.io, ptr noundef %0, i32 noundef %.1259.i.i, i32 noundef %i.hz, ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef %i.iq)
  br label %bb.bn

default.unreachable:                              ; preds = %bb.bi
  unreachable

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %.1.i.i = phi ptr [ %i.ir, %bb.bm ], [ %i.ij, %bb.bj ], [ %i.il, %bb.bk ], [ %i.in, %bb.bl ] ; 2 uses
  %i.is = load i32, ptr @ett_packetbb_addr_value, align 4
  %i.it = call ptr @proto_item_add_subtree(ptr noundef %.1.i.i, i32 noundef %i.is) ; 3 uses
  %i.iu = load i32, ptr @hf_packetbb_addr_value_mid, align 4
  %i.iv = call ptr @proto_tree_add_item(ptr noundef %i.it, i32 noundef %i.iu, ptr noundef %0, i32 noundef %i.if, i32 noundef %.1252.i.i, i32 noundef 0) ; 0 uses
  br i1 %.not276.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iw = load i32, ptr @hf_packetbb_addr_value_prefix, align 4
  %i.ix = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.it, i32 noundef %i.iw, ptr noundef %0, i32 noundef %.0248.i.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  br i1 %.not279.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iy = load i32, ptr @hf_packetbb_addr_value_prefix, align 4
  %i.iz = add i32 %.0281.i.i, %.0248.i.i
  %i.ja = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.it, i32 noundef %i.iy, ptr noundef %0, i32 noundef %i.iz, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.jb = load i8, ptr %i.b, align 1
  %i.jc = zext i8 %i.jb to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1.i.i, ptr noundef nonnull @.str.190, i32 noundef %i.jc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  %i.jd = add nuw nsw i32 %.0281.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.jd, %i.gq
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.bi, !llvm.loop !8

._crit_edge.i.i:                                  ; preds = %bb.br, %bb.bh
  %i.je = call fastcc i32 @dissect_pbb_tlvblock(ptr noundef %0, ptr noundef %1, ptr noundef %i.hf, i32 noundef %i.gy, i32 noundef range(i32 0, 65536) %i.dr, i8 noundef signext %i.ef, i32 noundef 2)
  br label %dissect_pbb_addressblock.exit.i

dissect_pbb_addressblock.exit.i:                  ; preds = %._crit_edge.i.i, %bb.av, %bb.at, %bb.ar, %bb.an, %bb.al, %bb.ah, %bb.af, %bb.ad, %bb.aa
  %.0257.i.i = phi i32 [ %i.ec, %bb.aa ], [ %i.el, %bb.ad ], [ %i.er, %bb.af ], [ %i.eu, %bb.ah ], [ %i.fd, %bb.al ], [ %i.fn, %bb.an ], [ %i.gg, %bb.av ], [ %i.je, %._crit_edge.i.i ], [ %i.ft, %bb.ar ], [ %i.gd, %bb.at ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.jf = icmp ult i32 %.0257.i.i, %i.dr
  br i1 %i.jf, label %bb.z, label %dissect_pbb_message.exit, !llvm.loop !9

dissect_pbb_message.exit:                         ; preds = %dissect_pbb_addressblock.exit.i, %bb.j, %bb.m, %bb.x, %bb.y, %dissect_pbb_addressblock.exit.thread.i
  %.0135.i = phi i32 [ %i.at, %bb.j ], [ %i.bp, %bb.m ], [ %i.ds, %bb.x ], [ %i.dt, %bb.y ], [ %i.dr, %dissect_pbb_addressblock.exit.thread.i ], [ %.0257.i.i, %dissect_pbb_addressblock.exit.i ] ; 2 uses
  %i.jg = call i32 @tvb_reported_length(ptr noundef %0)
  %i.jh = icmp ult i32 %.0135.i, %i.jg
  br i1 %i.jh, label %bb.i, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %dissect_pbb_message.exit, %dissect_pbb_header.exit
  %i.ji = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.d, %bb.a, %._crit_edge
  %.033 = phi i32 [ %i.ji, %._crit_edge ], [ 0, %bb.a ], [ 0, %bb.d ]
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
  %i.d = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_packetbb_error, ptr noundef %0, i32 noundef %3, i32 noundef %i.c, ptr noundef nonnull @.str.167) ; 0 uses
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  %i.e = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %3) ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = add nuw nsw i32 %i.a, %i.f               ; 3 uses
  %i.h = icmp ult i32 %4, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = sub nsw i32 %4, %3
  %i.j = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_packetbb_error, ptr noundef %0, i32 noundef %3, i32 noundef %i.i, ptr noundef nonnull @.str.168) ; 0 uses
  br label %bb.az

bb.e:                                             ; preds = %bb.c
  %i.k = load i32, ptr @hf_packetbb_tlvblock, align 4
  %i.l = sub nsw i32 %i.g, %3
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
