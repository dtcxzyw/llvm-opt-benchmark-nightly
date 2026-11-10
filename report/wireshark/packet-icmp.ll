Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-icmp?download=true
inline.NumInlined: 24
inline.NumDeleted: 12
begin_hunk_0_@dissect_icmp:bb.a
  %i.da = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.cz, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.db = load i32, ptr @hf_icmp_seq_num, align 4
  %i.dc = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.db, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dd = load i32, ptr @hf_icmp_seq_num_le, align 4
  %i.de = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.dd, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.df = load ptr, ptr %i.m, align 8
  %i.dg = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 4)
  %i.dh = zext i16 %i.dg to i32
  %i.di = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 6)
  %i.dj = zext i16 %i.di to i32
  %i.dk = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 6)
  %i.dl = zext i16 %i.dk to i32
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.df, i32 noundef 25, ptr noundef @.str.285, i32 noundef %i.dh, i32 noundef %i.dj, i32 noundef %i.dl)
  %.not346 = icmp eq ptr %i.l, null
  br i1 %.not346, label %bb.az, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dm = load ptr, ptr %i.m, align 8
  %i.dn = getelementptr i8, ptr %i.l, i64 12
  %i.do = load i8, ptr %i.dn, align 4
  %i.dp = zext i8 %i.do to i32
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.dm, i32 noundef 25, ptr noundef @.str.286, i32 noundef %i.dp)
  br label %bb.az

bb.ad:                                            ; preds = %bb.aa
  %.not345 = icmp eq i8 %.0408, 0
  %i.dq = load i32, ptr @hf_icmp_unused, align 4  ; 3 uses
  br i1 %.not345, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dr = zext i8 %.0408 to i32
  %i.ds = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.dq, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dt = load i32, ptr @hf_icmp_length, align 4
  %i.du = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.dt, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dv = load i32, ptr @hf_icmp_length_original_datagram, align 4
  %i.dw = shl nuw nsw i32 %i.dr, 2
  %i.dx = call ptr @proto_tree_add_uint(ptr noundef %i.bm, i32 noundef %i.dv, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef %i.dw) ; 2 uses
  %.not.i = icmp eq ptr %i.dx, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dy = getelementptr i8, ptr %i.dx, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.dz, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ea = getelementptr i8, ptr %i.dz, i64 28     ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = or i32 %i.eb, 2
  store i32 %i.ec, ptr %i.ea, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.ae, %bb.af, %bb.ag
  %i.ed = icmp eq i8 %i.q, 4
  br i1 %i.ed, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %proto_item_set_generated.exit
  %i.ee = load i32, ptr @hf_icmp_mtu, align 4
  %i.ef = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.ee, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.thread410

bb.ai:                                            ; preds = %proto_item_set_generated.exit
  %i.eg = load i32, ptr @hf_icmp_unused, align 4
  %i.eh = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.eg, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.thread410

bb.aj:                                            ; preds = %bb.ad
  %i.ei = icmp eq i8 %i.q, 4
  br i1 %i.ei, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ej = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.dq, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ek = load i32, ptr @hf_icmp_mtu, align 4
  %i.el = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.ek, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.thread410

bb.al:                                            ; preds = %bb.aj
  %i.em = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.dq, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread410

bb.am:                                            ; preds = %bb.aa
  %i.en = load i32, ptr @hf_icmp_pointer, align 4
  %i.eo = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.en, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not344 = icmp eq i8 %.0408, 0
  br i1 %.not344, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ep = zext i8 %.0408 to i32
  %i.eq = load i32, ptr @hf_icmp_length, align 4
  %i.er = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.eq, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.es = load i32, ptr @hf_icmp_length_original_datagram, align 4
  %i.et = shl nuw nsw i32 %i.ep, 2
  %i.eu = call ptr @proto_tree_add_uint(ptr noundef %i.bm, i32 noundef %i.es, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef %i.et) ; 2 uses
  %.not.i356 = icmp eq ptr %i.eu, null
  br i1 %.not.i356, label %proto_item_set_generated.exit358, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ev = getelementptr i8, ptr %i.eu, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %.not5.i357 = icmp eq ptr %i.ew, null
  br i1 %.not5.i357, label %proto_item_set_generated.exit358, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ex = getelementptr i8, ptr %i.ew, i64 28     ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = or i32 %i.ey, 2
  store i32 %i.ez, ptr %i.ex, align 4
  br label %proto_item_set_generated.exit358

proto_item_set_generated.exit358:                 ; preds = %bb.an, %bb.ao, %bb.ap
  %i.fa = load i32, ptr @hf_icmp_unused, align 4
  %i.fb = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.fa, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.thread410

bb.aq:                                            ; preds = %bb.am
  %i.fc = load i32, ptr @hf_icmp_unused, align 4
  %i.fd = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.fc, ptr noundef %0, i32 noundef 5, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %.thread410

bb.ar:                                            ; preds = %bb.aa
  %i.fe = load i32, ptr @hf_icmp_redir_gw, align 4
  %i.ff = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.fe, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread410

bb.as:                                            ; preds = %bb.aa
  %.not343 = icmp eq i8 %.0408, 0
  br i1 %.not343, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fg = zext i8 %.0408 to i32
  %i.fh = load i32, ptr @hf_icmp_unused, align 4
  %i.fi = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.fh, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fj = load i32, ptr @hf_icmp_length, align 4
  %i.fk = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.fj, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fl = load i32, ptr @hf_icmp_length_original_datagram, align 4
  %i.fm = shl nuw nsw i32 %i.fg, 2
  %i.fn = call ptr @proto_tree_add_uint(ptr noundef %i.bm, i32 noundef %i.fl, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef %i.fm) ; 2 uses
  %.not.i359 = icmp eq ptr %i.fn, null
  br i1 %.not.i359, label %proto_item_set_generated.exit361, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fo = getelementptr i8, ptr %i.fn, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8            ; 2 uses
  %.not5.i360 = icmp eq ptr %i.fp, null
  br i1 %.not5.i360, label %proto_item_set_generated.exit361, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fq = getelementptr i8, ptr %i.fp, i64 28     ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = or i32 %i.fr, 2
  store i32 %i.fs, ptr %i.fq, align 4
  br label %proto_item_set_generated.exit361

proto_item_set_generated.exit361:                 ; preds = %bb.at, %bb.au, %bb.av
  %i.ft = load i32, ptr @hf_icmp_unused, align 4
  %i.fu = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.ft, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.thread410

bb.aw:                                            ; preds = %bb.as
  %i.fv = load i32, ptr @hf_icmp_unused, align 4
  %i.fw = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.fv, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread410

bb.ax:                                            ; preds = %bb.aa
  %i.fx = load i32, ptr @hf_icmp_ident, align 4
  %i.fy = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.fx, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fz = load i32, ptr @hf_icmp_ident_le, align 4
  %i.ga = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.fz, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %.thread412

bb.ay:                                            ; preds = %bb.aa
  %i.gb = load i32, ptr @hf_icmp_ident, align 4
  %i.gc = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.gb, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.gd = load i32, ptr @hf_icmp_ident_le, align 4
  %i.ge = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.gd, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.gf = load i32, ptr @hf_icmp_ext_echo_seq_num, align 4
  %i.gg = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.gf, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gh = load i32, ptr @hf_icmp_ext_echo_rsp_state, align 4
  %i.gi = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.gh, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gj = load i32, ptr @hf_icmp_ext_echo_rsp_reserved, align 4
  %i.gk = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.gj, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.thread412

bb.az:                                            ; preds = %bb.ab, %bb.ac
  switch i8 %i.p, label %bb.ef [
    i8 3, label %.thread410
    i8 11, label %.thread410
    i8 12, label %.thread410
    i8 4, label %.thread410
    i8 5, label %.thread410
    i8 8, label %bb.cb
    i8 0, label %bb.bk
    i8 9, label %.thread462
    i8 13, label %bb.dq
    i8 14, label %bb.dq
    i8 17, label %bb.ed
    i8 18, label %bb.ed
  ]

.thread410:                                       ; preds = %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.aa, %bb.ar, %bb.ak, %bb.al, %bb.ah, %bb.ai, %bb.aq, %proto_item_set_generated.exit358, %bb.aw, %proto_item_set_generated.exit361
  %i.gl = getelementptr i8, ptr %1, i64 276       ; 4 uses
  %i.gm = load i8, ptr %i.gl, align 4             ; 2 uses
  %i.gn = or i8 %i.gm, 1
  store i8 %i.gn, ptr %i.gl, align 4
  %i.go = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 8) ; 2 uses
  %i.gp = icmp eq i8 %i.p, 5
  br i1 %i.gp, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.thread410
  %i.gq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 8)
  %i.gr = shl i8 %i.gq, 2
  %i.gs = and i8 %i.gr, 60
  %narrow = add nuw nsw i8 %i.gs, 8
  %i.gt = zext nneg i8 %narrow to i32
  br label %.sink.split463

bb.bb:                                            ; preds = %.thread410
  %i.gu = zext i8 %.0408 to i32                   ; 2 uses
  %.not351 = icmp eq i8 %.0408, 0
  br i1 %.not351, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gv = call i32 @tvb_reported_length(ptr noundef %0)
  %i.gw = shl nuw nsw i32 %i.gu, 2                ; 2 uses
  %i.gx = add nuw nsw i32 %i.gw, 8
  %i.gy = icmp ugt i32 %i.gv, %i.gx
  br i1 %i.gy, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.gz = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 10)
  %i.ha = zext i16 %i.gz to i32
  %i.hb = icmp samesign ult i32 %i.gw, %i.ha
  br i1 %i.hb, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 8)
  %i.hd = and i8 %i.hc, 15
  %i.he = zext nneg i8 %i.hd to i32
  %i.hf = add nuw nsw i32 %i.he, %i.gu
  %i.hg = shl nuw nsw i32 %i.hf, 2
  br label %.sink.split463

bb.bf:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.hh = call i32 @tvb_reported_length(ptr noundef %0)
  %i.hi = icmp ugt i32 %i.hh, 136
  %i.hj = load i8, ptr @favor_icmp_mpls_ext, align 1, !range !8
  %i.hk = trunc nuw i8 %i.hj to i1
  %or.cond = select i1 %i.hi, i1 %i.hk, i1 false
  br i1 %or.cond, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hl = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 10)
  %i.hm = icmp ugt i16 %i.hl, 128
  br i1 %i.hm, label %.sink.split463, label %bb.bh

.sink.split463:                                   ; preds = %bb.bg, %bb.ba, %bb.be
  %.sink = phi i32 [ %i.hg, %bb.be ], [ %i.gt, %bb.ba ], [ 128, %bb.bg ]
  call void @set_actual_length(ptr noundef %i.go, i32 noundef %.sink)
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split463, %bb.bg, %bb.bf
  %i.hn = load ptr, ptr @ip_handle, align 8
  %i.ho = call i32 @call_dissector(ptr noundef %i.hn, ptr noundef %i.go, ptr noundef %1, ptr noundef %i.bm) ; 0 uses
  %i.hp = and i8 %i.gm, 1
  %i.hq = load i8, ptr %i.gl, align 4
  %i.hr = and i8 %i.hq, -2
  %i.hs = or disjoint i8 %i.hr, %i.hp
  store i8 %i.hs, ptr %i.gl, align 4
  %i.ht = call i32 @tvb_reported_length(ptr noundef %0)
  %i.hu = icmp ugt i32 %i.ht, 136
  br i1 %i.hu, label %bb.bi, label %bb.ef

bb.bi:                                            ; preds = %bb.bh
  %i.hv = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 10)
  %i.hw = icmp ult i16 %i.hv, 129
  %i.hx = load i8, ptr @favor_icmp_mpls_ext, align 1, !range !8
  %i.hy = trunc nuw i8 %i.hx to i1
  %or.cond3 = select i1 %i.hw, i1 true, i1 %i.hy
  br i1 %or.cond3, label %bb.bj, label %bb.ef

bb.bj:                                            ; preds = %bb.bi
  %i.hz = zext i8 %.0408 to i32
  %i.ia = shl nuw nsw i32 %i.hz, 2
  %i.ib = call i32 @llvm.umax.i32(i32 %i.ia, i32 128)
  %i.ic = add nuw nsw i32 %i.ib, 8
  %i.id = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.ic)
  %i.ie = call i32 @dissect_icmp_extension(ptr noundef %i.id, ptr noundef %1, ptr noundef %i.bm, ptr poison) ; 0 uses
  br label %bb.ef

bb.bk:                                            ; preds = %bb.az
  %i.if = getelementptr i8, ptr %1, i64 276       ; 2 uses
  %i.ig = load i8, ptr %i.if, align 4
  %i.ih = and i8 %i.ig, 1
  %.not348 = icmp eq i8 %i.ih, 0
  br i1 %.not348, label %bb.bl, label %bb.cy

bb.bl:                                            ; preds = %bb.bk
  %i.ii = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.ij = icmp eq i16 %i.ii, -1
  %narrow416 = select i1 %i.ij, i16 0, i16 %i.ii
  %spec.select355 = zext i16 %narrow416 to i32    ; 2 uses
  store i32 %spec.select355, ptr %i.f, align 4
  %i.ik = load i8, ptr %i.if, align 4
  %i.il = and i8 %i.ik, 2
  %i.im = icmp ne i8 %i.il, 0
  %i.in = load i8, ptr getelementptr inbounds nuw (i8, ptr @prefs, i64 286), align 2, !range !8
  %i.io = trunc nuw i8 %i.in to i1
  %or.cond5 = select i1 %i.im, i1 %i.io, i1 false
  br i1 %or.cond5, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ip = or disjoint i32 %spec.select355, 65536
  store i32 %i.ip, ptr %i.f, align 4
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.iq = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 4)
  %i.ir = zext i16 %i.iq to i32
  %i.is = shl nuw i32 %i.ir, 16
  %i.it = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 6)
  %i.iu = zext i16 %i.it to i32
  %i.iv = or disjoint i32 %i.is, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.iv, ptr %i.iw, align 4
  %i.ix = load i8, ptr getelementptr inbounds nuw (i8, ptr @prefs, i64 286), align 2, !range !8, !noundef !9
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.iz = getelementptr i8, ptr %1, i64 256
  %i.ja = load i32, ptr %i.iz, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %i.jb = phi i32 [ %i.ja, %bb.bo ], [ 0, %bb.bn ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.jb, ptr %i.jc, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.jd = getelementptr i8, ptr %1, i64 20        ; 3 uses
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = getelementptr i8, ptr %1, i64 208
  %i.jg = getelementptr i8, ptr %1, i64 232
  %i.jh = getelementptr i8, ptr %1, i64 284
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = call i32 @conversation_pt_to_conversation_type(i32 noundef %i.ji)
  %i.jk = call ptr @find_conversation(i32 noundef %i.je, ptr noundef %i.jf, ptr noundef %i.jg, i32 noundef %i.jj, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %transaction_end.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jm = load i32, ptr @proto_icmp, align 4
  %i.jn = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.jk, i32 noundef %i.jm) ; 4 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %transaction_end.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jp = getelementptr i8, ptr %1, i64 80
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = getelementptr i8, ptr %i.jq, i64 53
  %i.js = load i16, ptr %i.jr, align 1
  %i.jt = and i16 %i.js, 8
  %.not.i362 = icmp eq i16 %i.jt, 0
  br i1 %.not.i362, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 3, ptr %5, align 16
  %i.ju = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i32 0, ptr %i.jv, align 16
  %i.jw = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr null, ptr %i.jw, align 8
  %i.jx = load ptr, ptr %i.jn, align 8
  %i.jy = call ptr @wmem_tree_lookup32_array(ptr noundef %i.jx, ptr noundef nonnull %5) ; 6 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ka = getelementptr i8, ptr %i.jy, i64 4      ; 3 uses
  %i.kb = load i32, ptr %i.ka, align 4
  %.not47.i = icmp eq i32 %i.kb, 0
  br i1 %.not47.i, label %.critedge.i, label %bb.bu

.critedge.i:                                      ; preds = %bb.bt
  %i.kc = load i32, ptr %i.jd, align 4
  store i32 %i.kc, ptr %i.ka, align 4
  store i32 3, ptr %5, align 16
  store ptr %i.f, ptr %i.ju, align 8
  store i32 1, ptr %i.jv, align 16
  store ptr %i.b, ptr %i.jw, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.kd, align 16
  %i.ke = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ke, align 8
  %i.kf = load i32, ptr %i.jy, align 8
  store i32 %i.kf, ptr %i.b, align 4
  %i.kg = getelementptr i8, ptr %i.jn, i64 8      ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8
end_hunk_0
begin_hunk_1_@dissect_icmp:bb.a
  %i.ss = getelementptr i8, ptr %1, i64 24
  %i.st = load i64, ptr %i.ss, align 8
  %i.su = mul i64 %i.st, 1000
  %i.sv = getelementptr i8, ptr %1, i64 32
  %i.sw = load i32, ptr %i.sv, align 8
  %i.sx = sdiv i32 %i.sw, 1000000
  %i.sy = sext i32 %i.sx to i64
  %i.sz = add i64 %i.su, %i.sy
  %i.ta = srem i64 %i.sz, 86400000                ; 4 uses
  %i.tb = trunc nsw i64 %i.ta to i32              ; 18 uses
  %i.tc = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 8)
  %i.td = and i32 %i.tc, 2147483647               ; 10 uses
  %i.te = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.tf = and i32 %i.te, 2147483647               ; 10 uses
  %i.tg = icmp samesign ult i32 %i.td, 86400000   ; 2 uses
  %i.th = icmp samesign ugt i32 %i.tf, 86399999
  %or.cond.i = select i1 %i.tg, i1 %i.th, i1 false
  br i1 %or.cond.i, label %get_best_guess_mstimeofday.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ti = icmp samesign ult i32 %i.tf, 86400000   ; 2 uses
  %i.tj = icmp samesign ugt i32 %i.td, 86399999
  %or.cond3.i = select i1 %i.ti, i1 %i.tj, i1 false
  br i1 %or.cond3.i, label %get_best_guess_mstimeofday.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %or.cond5.i = and i1 %i.tg, %i.ti
  br i1 %or.cond5.i, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.tk = icmp ult i32 %i.td, %i.tb
  %i.tl = icmp samesign ult i32 %i.td, 21600001
  %or.cond7.i = select i1 %i.tk, i1 %i.tl, i1 false
  %i.tm = icmp ugt i64 %i.ta, 64799999            ; 2 uses
  %or.cond9.i = and i1 %i.tm, %or.cond7.i
  %i.tn = add nuw nsw i32 %i.td, 86400000
  %spec.select.i = select i1 %or.cond9.i, i32 %i.tn, i32 %i.td
  %i.to = icmp ult i32 %i.tf, %i.tb
  %i.tp = icmp samesign ult i32 %i.tf, 21600001
  %or.cond11.i = select i1 %i.to, i1 %i.tp, i1 false
  %or.cond13.i = and i1 %i.tm, %or.cond11.i
  %i.tq = add nuw nsw i32 %i.tf, 86400000
  %.0.i376 = select i1 %or.cond13.i, i32 %i.tq, i32 %i.tf
  %i.tr = sub nsw i32 %spec.select.i, %i.tb
  %i.ts = sub nsw i32 %.0.i376, %i.tb
  %i.tt = icmp ult i32 %i.tr, %i.ts
  %.050.i = select i1 %i.tt, i32 %i.td, i32 %i.tf
  br label %get_best_guess_mstimeofday.exit

bb.du:                                            ; preds = %bb.ds
  %i.tu = sub i32 %i.td, %i.tb
  %i.tv = sub i32 %i.tf, %i.tb
  %i.tw = icmp ult i32 %i.tu, %i.tv
  %..i = select i1 %i.tw, i32 %i.td, i32 %i.tf
  br label %get_best_guess_mstimeofday.exit

get_best_guess_mstimeofday.exit:                  ; preds = %bb.dq, %bb.dr, %bb.dt, %bb.du
  %.1.i = phi i32 [ %i.tf, %bb.dr ], [ %i.td, %bb.dq ], [ %.050.i, %bb.dt ], [ %..i, %bb.du ]
  %i.tx = load i32, ptr @hf_icmp_originate_timestamp, align 4
  %i.ty = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.tx, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef 0)
  %i.tz = getelementptr i8, ptr %1, i64 416       ; 3 uses
  %i.ua = load ptr, ptr %i.tz, align 8
  %i.ub = zext nneg i32 %.1.i to i64
  %i.uc = call ptr @signed_time_msecs_to_str(ptr noundef %i.ua, i64 noundef %i.ub)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ty, ptr noundef @.str.287, ptr noundef %i.uc)
  %i.ud = load i32, ptr @hf_icmp_receive_timestamp, align 4
  %i.ue = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.ud, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0)
  %i.uf = load ptr, ptr %i.tz, align 8
  %i.ug = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 12)
  %i.uh = and i32 %i.ug, 2147483647               ; 10 uses
  %i.ui = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 12)
  %i.uj = and i32 %i.ui, 2147483647               ; 10 uses
  %i.uk = icmp samesign ult i32 %i.uh, 86400000   ; 2 uses
  %i.ul = icmp samesign ugt i32 %i.uj, 86399999
  %or.cond.i377 = select i1 %i.uk, i1 %i.ul, i1 false
  br i1 %or.cond.i377, label %get_best_guess_mstimeofday.exit389, label %bb.dv

bb.dv:                                            ; preds = %get_best_guess_mstimeofday.exit
  %i.um = icmp samesign ult i32 %i.uj, 86400000   ; 2 uses
  %i.un = icmp samesign ugt i32 %i.uh, 86399999
  %or.cond3.i378 = select i1 %i.um, i1 %i.un, i1 false
  br i1 %or.cond3.i378, label %get_best_guess_mstimeofday.exit389, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %or.cond5.i379 = and i1 %i.uk, %i.um
  br i1 %or.cond5.i379, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.uo = icmp ult i32 %i.uh, %i.tb
  %i.up = icmp samesign ult i32 %i.uh, 21600001
  %or.cond7.i382 = select i1 %i.uo, i1 %i.up, i1 false
  %i.uq = icmp ugt i64 %i.ta, 64799999            ; 2 uses
  %or.cond9.i383 = and i1 %i.uq, %or.cond7.i382
  %i.ur = add nuw nsw i32 %i.uh, 86400000
  %spec.select.i384 = select i1 %or.cond9.i383, i32 %i.ur, i32 %i.uh
  %i.us = icmp ult i32 %i.uj, %i.tb
  %i.ut = icmp samesign ult i32 %i.uj, 21600001
  %or.cond11.i385 = select i1 %i.us, i1 %i.ut, i1 false
  %or.cond13.i386 = and i1 %i.uq, %or.cond11.i385
  %i.uu = add nuw nsw i32 %i.uj, 86400000
  %.0.i387 = select i1 %or.cond13.i386, i32 %i.uu, i32 %i.uj
  %i.uv = sub nsw i32 %spec.select.i384, %i.tb
  %i.uw = sub nsw i32 %.0.i387, %i.tb
  %i.ux = icmp ult i32 %i.uv, %i.uw
  %.050.i388 = select i1 %i.ux, i32 %i.uh, i32 %i.uj
  br label %get_best_guess_mstimeofday.exit389

bb.dy:                                            ; preds = %bb.dw
  %i.uy = sub i32 %i.uh, %i.tb
  %i.uz = sub i32 %i.uj, %i.tb
  %i.va = icmp ult i32 %i.uy, %i.uz
  %..i380 = select i1 %i.va, i32 %i.uh, i32 %i.uj
  br label %get_best_guess_mstimeofday.exit389

get_best_guess_mstimeofday.exit389:               ; preds = %get_best_guess_mstimeofday.exit, %bb.dv, %bb.dx, %bb.dy
  %.1.i381 = phi i32 [ %i.uj, %bb.dv ], [ %i.uh, %get_best_guess_mstimeofday.exit ], [ %.050.i388, %bb.dx ], [ %..i380, %bb.dy ]
  %i.vb = zext nneg i32 %.1.i381 to i64
  %i.vc = call ptr @signed_time_msecs_to_str(ptr noundef %i.uf, i64 noundef %i.vb)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ue, ptr noundef @.str.287, ptr noundef %i.vc)
  %i.vd = load i32, ptr @hf_icmp_transmit_timestamp, align 4
  %i.ve = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.vd, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef 0)
  %i.vf = load ptr, ptr %i.tz, align 8
  %i.vg = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 16)
  %i.vh = and i32 %i.vg, 2147483647               ; 10 uses
  %i.vi = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 16)
  %i.vj = and i32 %i.vi, 2147483647               ; 10 uses
  %i.vk = icmp samesign ult i32 %i.vh, 86400000   ; 2 uses
  %i.vl = icmp samesign ugt i32 %i.vj, 86399999
  %or.cond.i390 = select i1 %i.vk, i1 %i.vl, i1 false
  br i1 %or.cond.i390, label %get_best_guess_mstimeofday.exit402, label %bb.dz

bb.dz:                                            ; preds = %get_best_guess_mstimeofday.exit389
  %i.vm = icmp samesign ult i32 %i.vj, 86400000   ; 2 uses
  %i.vn = icmp samesign ugt i32 %i.vh, 86399999
  %or.cond3.i391 = select i1 %i.vm, i1 %i.vn, i1 false
  br i1 %or.cond3.i391, label %get_best_guess_mstimeofday.exit402, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %or.cond5.i392 = and i1 %i.vk, %i.vm
  br i1 %or.cond5.i392, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.vo = icmp ult i32 %i.vh, %i.tb
  %i.vp = icmp samesign ult i32 %i.vh, 21600001
  %or.cond7.i395 = select i1 %i.vo, i1 %i.vp, i1 false
  %i.vq = icmp ugt i64 %i.ta, 64799999            ; 2 uses
  %or.cond9.i396 = and i1 %i.vq, %or.cond7.i395
  %i.vr = add nuw nsw i32 %i.vh, 86400000
  %spec.select.i397 = select i1 %or.cond9.i396, i32 %i.vr, i32 %i.vh
  %i.vs = icmp ult i32 %i.vj, %i.tb
  %i.vt = icmp samesign ult i32 %i.vj, 21600001
  %or.cond11.i398 = select i1 %i.vs, i1 %i.vt, i1 false
  %or.cond13.i399 = and i1 %i.vq, %or.cond11.i398
  %i.vu = add nuw nsw i32 %i.vj, 86400000
  %.0.i400 = select i1 %or.cond13.i399, i32 %i.vu, i32 %i.vj
  %i.vv = sub nsw i32 %spec.select.i397, %i.tb
  %i.vw = sub nsw i32 %.0.i400, %i.tb
  %i.vx = icmp ult i32 %i.vv, %i.vw
  %.050.i401 = select i1 %i.vx, i32 %i.vh, i32 %i.vj
  br label %get_best_guess_mstimeofday.exit402

bb.ec:                                            ; preds = %bb.ea
  %i.vy = sub i32 %i.vh, %i.tb
  %i.vz = sub i32 %i.vj, %i.tb
  %i.wa = icmp ult i32 %i.vy, %i.vz
  %..i393 = select i1 %i.wa, i32 %i.vh, i32 %i.vj
  br label %get_best_guess_mstimeofday.exit402

get_best_guess_mstimeofday.exit402:               ; preds = %get_best_guess_mstimeofday.exit389, %bb.dz, %bb.eb, %bb.ec
  %.1.i394 = phi i32 [ %i.vj, %bb.dz ], [ %i.vh, %get_best_guess_mstimeofday.exit389 ], [ %.050.i401, %bb.eb ], [ %..i393, %bb.ec ]
  %i.wb = zext nneg i32 %.1.i394 to i64
  %i.wc = call ptr @signed_time_msecs_to_str(ptr noundef %i.vf, i64 noundef %i.wb)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ve, ptr noundef @.str.287, ptr noundef %i.wc)
  br label %bb.ef

bb.ed:                                            ; preds = %bb.az, %bb.az
  %i.wd = load i32, ptr @hf_icmp_address_mask, align 4
  %i.we = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.wd, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.ef

.thread412:                                       ; preds = %bb.ax, %bb.ay
  %hf_icmp_ext_echo_seq_num.sink = phi ptr [ @hf_icmp_ext_echo_seq_num, %bb.ax ], [ @hf_icmp_ext_echo_rsp_active, %bb.ay ]
  %.sink467 = phi i32 [ 6, %bb.ax ], [ 7, %bb.ay ]
  %hf_icmp_ext_echo_req_reserved.sink = phi ptr [ @hf_icmp_ext_echo_req_reserved, %bb.ax ], [ @hf_icmp_ext_echo_rsp_ipv4, %bb.ay ]
  %hf_icmp_ext_echo_req_local.sink = phi ptr [ @hf_icmp_ext_echo_req_local, %bb.ax ], [ @hf_icmp_ext_echo_rsp_ipv6, %bb.ay ]
  %i.wf = load i32, ptr %hf_icmp_ext_echo_seq_num.sink, align 4
  %i.wg = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.wf, ptr noundef %0, i32 noundef %.sink467, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.wh = load i32, ptr %hf_icmp_ext_echo_req_reserved.sink, align 4
  %i.wi = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.wh, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.wj = load i32, ptr %hf_icmp_ext_echo_req_local.sink, align 4
  %i.wk = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.wj, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.wl = call i32 @tvb_reported_length(ptr noundef %0)
  %i.wm = icmp ugt i32 %i.wl, 8
  br i1 %i.wm, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %.thread412
  %i.wn = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 8)
  %i.wo = call i32 @dissect_icmp_extension(ptr noundef %i.wn, ptr noundef %1, ptr noundef %i.bm, ptr poison) ; 0 uses
  br label %bb.ef

bb.ef:                                            ; preds = %bb.az, %bb.aa, %.thread412, %bb.ee, %.thread462, %._crit_edge, %bb.dp, %proto_item_set_generated.exit372, %bb.dn, %bb.cz, %bb.de, %bb.bh, %bb.bj, %bb.bi, %bb.ed, %get_best_guess_mstimeofday.exit402
  %.1328 = phi ptr [ null, %bb.az ], [ null, %bb.bj ], [ null, %bb.bi ], [ null, %bb.bh ], [ %.0327, %bb.de ], [ %.0327, %bb.cz ], [ %.0327, %proto_item_set_generated.exit372 ], [ %.0327, %bb.dn ], [ null, %bb.dp ], [ null, %._crit_edge ], [ null, %.thread462 ], [ null, %get_best_guess_mstimeofday.exit402 ], [ null, %bb.ed ], [ null, %bb.ee ], [ null, %.thread412 ], [ null, %bb.aa ] ; 2 uses
  %i.wp = getelementptr i8, ptr %1, i64 80
  %i.wq = load ptr, ptr %i.wp, align 8
  %i.wr = getelementptr i8, ptr %i.wq, i64 53
  %i.ws = load i16, ptr %i.wr, align 1
  %i.wt = and i16 %i.ws, 8
  %.not352 = icmp eq i16 %i.wt, 0
  br i1 %.not352, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.wu = call ptr @wmem_file_scope()
  %i.wv = call noalias dereferenceable_or_null(2) ptr @wmem_alloc(ptr noundef %i.wu, i64 noundef 2) #6 ; 3 uses
  store i8 %i.p, ptr %i.wv, align 1
  %i.ww = getelementptr i8, ptr %i.wv, i64 1
  store i8 %i.q, ptr %i.ww, align 1
  %i.wx = call ptr @wmem_file_scope()
  %i.wy = load i32, ptr @proto_icmp, align 4
  call void @p_add_proto_data(ptr noundef %i.wx, ptr noundef %1, i32 noundef %i.wy, i32 noundef 0, ptr noundef %i.wv)
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.not353 = icmp eq ptr %.1328, null
  br i1 %.not353, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.wz = load i32, ptr @icmp_tap, align 4
  call void @tap_queue_packet(i32 noundef %i.wz, ptr noundef %1, ptr noundef nonnull %.1328)
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.xa = call i32 @tvb_reported_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  ret i32 %i.xa
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_heur_dissector_list_with_description(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_icmp_extension(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.e = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0) ; 4 uses
  %i.f = load i32, ptr @hf_icmp_ext, align 4
  %i.g = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef %i.e, ptr noundef @.str.344) ; 2 uses
  %i.h = icmp ult i32 %i.e, 4
  br i1 %i.h, label %bb.ay, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr @ett_icmp_ext, align 4
  %i.j = tail call ptr @proto_item_add_subtree(ptr noundef %i.g, i32 noundef %i.i) ; 5 uses
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.l = lshr i8 %i.k, 4                          ; 2 uses
  %i.m = load i32, ptr @hf_icmp_ext_version, align 4
  %i.n = zext nneg i8 %i.l to i32
  %i.o = tail call ptr @proto_tree_add_uint(ptr noundef %i.j, i32 noundef %i.m, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.n) ; 0 uses
  %i.p = load i32, ptr @hf_icmp_ext_reserved, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.j, i32 noundef %i.p, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.r = add nsw i8 %i.l, -3
  %or.cond = icmp ult i8 %i.r, -2
  br i1 %or.cond, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.s = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 4)
  %i.t = icmp ugt i32 %i.s, 3
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr i8, ptr %1, i64 416
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.g, ptr noundef @.str.345)
  br label %bb.ay

bb.d:                                             ; preds = %.lr.ph, %bb.av
  %.0114184 = phi i32 [ %i.e, %.lr.ph ], [ %.2154, %bb.av ] ; 12 uses
  %.0115183 = phi i1 [ false, %.lr.ph ], [ %.2117152, %bb.av ] ; 12 uses
  %.0119182 = phi i8 [ 0, %.lr.ph ], [ %.1120150, %bb.av ] ; 11 uses
  %.0123181 = phi i32 [ 0, %.lr.ph ], [ %.2125148, %bb.av ] ; 12 uses
  %.0128178 = phi i32 [ 4, %.lr.ph ], [ %i.ac, %bb.av ] ; 34 uses
  %i.v = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.0128178) ; 4 uses
  %i.w = zext i16 %i.v to i32                     ; 5 uses
  %i.x = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0128178)
  %i.y = icmp ugt i32 %i.x, %i.w
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0128178) ; 2 uses
  %i.aa = trunc i32 %i.z to i16
  %.pre = and i32 %i.z, 65535
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.pre-phi = phi i32 [ %i.w, %bb.d ], [ %.pre, %bb.e ] ; 4 uses
  %i.ab = phi i16 [ %i.v, %bb.d ], [ %i.aa, %bb.e ] ; 3 uses
  %i.ac = add i32 %.0128178, %.pre-phi            ; 3 uses
  %i.ad = icmp ugt i16 %i.ab, 4
  %i.ae = call i16 @llvm.umax.i16(i16 %i.ab, i16 4)
  %i.af = zext i16 %i.ae to i32
  %i.ag = load i32, ptr @ett_icmp_ext_object, align 4
  %i.ah = call ptr @proto_tree_add_subtree(ptr noundef %i.j, ptr noundef %0, i32 noundef %.0128178, i32 noundef %i.af, i32 noundef %i.ag, ptr noundef nonnull %i.d, ptr noundef @.str.346) ; 23 uses
  %i.ai = load i32, ptr @hf_icmp_ext_length, align 4
  %i.aj = call ptr @proto_tree_add_uint(ptr noundef %i.ah, i32 noundef %i.ai, ptr noundef %0, i32 noundef %.0128178, i32 noundef 2, i32 noundef %i.w) ; 2 uses
  %i.ak = add i32 %.0128178, 2                    ; 2 uses
  %i.al = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ak) ; 2 uses
  %i.am = load i32, ptr @hf_icmp_ext_class, align 4
  %i.an = call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.ak, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ao = add i32 %.0128178, 3                    ; 10 uses
  %i.ap = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ao)
  %i.aq = icmp ult i16 %i.v, 4
  br i1 %i.aq, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.ar = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.aj, ptr noundef @ei_icmp_ext_obj_len_invalid, ptr noundef @.str.347, i32 noundef %i.w) ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.as = icmp ult i16 %i.ab, %i.v                ; 2 uses
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.aj, ptr noundef @ei_icmp_ext_obj_len_truncated, ptr noundef @.str.348, i32 noundef %i.w, i32 noundef %.pre-phi) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = zext i8 %i.al to i32
  switch i8 %i.al, label %dissect_mpls_extended_payload_object.exit.thread [
    i8 1, label %bb.j
    i8 2, label %bb.p
    i8 0, label %bb.ag
    i8 3, label %bb.al
  ]

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.aw = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.0128178)
  %i.ax = zext i16 %i.aw to i32                   ; 2 uses
  %i.ay = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0128178)
  %i.az = icmp ugt i32 %i.ay, %i.ax
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0128178)
  %.pre.i = and i32 %i.ba, 65535
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi.i = phi i32 [ %i.ax, %bb.j ], [ %.pre.i, %bb.k ]
  %i.bb = add i32 %.pre-phi.i, %.0128178          ; 4 uses
  %i.bc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ao) ; 2 uses
  %i.bd = load i32, ptr @hf_icmp_ext_c_type, align 4
  %i.be = zext i8 %i.bc to i32
  %i.bf = call ptr @proto_tree_add_uint(ptr noundef %i.ah, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.ao, i32 noundef 1, i32 noundef %i.be) ; 0 uses
  %cond.i.not = icmp eq i8 %i.bc, 1
  br i1 %cond.i.not, label %bb.m, label %dissect_mpls_stack_entry_object.exit.thread

dissect_mpls_stack_entry_object.exit.thread:      ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %dissect_mpls_extended_payload_object.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bg = add i32 %.0128178, 4                    ; 2 uses
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.av, ptr noundef @.str.352)
  %i.bh = add i32 %.0128178, 8                    ; 2 uses
  %.not65.i = icmp sgt i32 %i.bh, %i.bb
  br i1 %.not65.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %i.bi = phi i32 [ %i.cp, %bb.n ], [ %i.bh, %bb.m ] ; 3 uses
  %.06166.i = phi i32 [ %i.bi, %bb.n ], [ %i.bg, %bb.m ] ; 7 uses
  %i.bj = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.06166.i)
  %i.bk = icmp ult i32 %i.bj, 4
  br i1 %i.bk, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.bl = load i32, ptr @ett_icmp_mpls_stack_object, align 4
  %i.bm = call ptr @proto_tree_add_subtree(ptr noundef %i.ah, ptr noundef %0, i32 noundef %.06166.i, i32 noundef 4, i32 noundef %i.bl, ptr noundef nonnull %i.c, ptr noundef @.str.353) ; 4 uses
  %i.bn = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.06166.i)
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add i32 %.06166.i, 2                    ; 3 uses
  %i.bq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bp) ; 2 uses
  %i.br = shl nuw nsw i32 %i.bo, 4
  %i.bs = zext i8 %i.bq to i32                    ; 4 uses
  %i.bt = lshr i32 %i.bs, 4
  %i.bu = or disjoint i32 %i.bt, %i.br            ; 2 uses
  %i.bv = load i32, ptr @hf_icmp_mpls_label, align 4
  %i.bw = shl nuw nsw i32 %i.bu, 4
  %i.bx = call ptr @proto_tree_add_uint(ptr noundef %i.bm, i32 noundef %i.bv, ptr noundef %0, i32 noundef %.06166.i, i32 noundef 3, i32 noundef %i.bw) ; 0 uses
  %i.by = load ptr, ptr %i.c, align 8
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.by, ptr noundef @.str.354, i32 noundef %i.bu)
end_hunk_1
