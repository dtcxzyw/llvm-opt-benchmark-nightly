Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-edonkey?download=true
inline.NumInlined: 162
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@dissect_edonkey_metatag:bb.a
  %i.dw = icmp eq i8 %i.a, 8
  br i1 %i.dw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dx = load i32, ptr @hf_edonkey_metatag_namesize, align 4
  %i.dy = add i32 %2, 1
  %i.dz = tail call ptr @proto_tree_add_uint(ptr noundef %i.dt, i32 noundef %i.dx, ptr noundef %0, i32 noundef %i.dy, i32 noundef 2, i32 noundef %.0318) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ea = sub i32 %i.l, %.0318                    ; 2 uses
  %i.eb = zext i8 %.0319 to i32                   ; 3 uses
  %i.ec = tail call ptr @try_val_to_str(i32 noundef %i.eb, ptr noundef nonnull @edonkey_special_tags) ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ee = load i32, ptr @hf_edonkey_metatag_name, align 4
  %i.ef = tail call ptr @proto_tree_add_item(ptr noundef %i.dt, i32 noundef %i.ee, ptr noundef %0, i32 noundef %i.ea, i32 noundef range(i32 0, 65536) %.0318, i32 noundef 0) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit330

bb.ah:                                            ; preds = %bb.af
  %i.eg = load i32, ptr @hf_edonkey_metatag_id, align 4
  %i.eh = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.dt, i32 noundef %i.eg, ptr noundef %0, i32 noundef %i.ea, i32 noundef range(i32 0, 65536) %.0318, i32 noundef %i.eb, ptr noundef nonnull @.str.443, ptr noundef nonnull %i.ec, i32 noundef %i.eb) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit330

edonkey_tree_add_metatag_name.exit330:            ; preds = %bb.ag, %bb.ah
  %i.ei = load i32, ptr @hf_edonkey_meta_tag_value_uint, align 4
  %i.ej = tail call ptr @proto_tree_add_item(ptr noundef %i.dt, i32 noundef %i.ei, ptr noundef %0, i32 noundef %i.l, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit328

bb.ai:                                            ; preds = %bb.d
  %i.ek = add nuw nsw i32 %.0, 1                  ; 2 uses
  %i.el = load i32, ptr @hf_edonkey_metatag, align 4
  %i.em = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.el, ptr noundef %0, i32 noundef %2, i32 noundef %i.ek, i32 noundef 0)
  %i.en = load i32, ptr @ett_edonkey_metatag, align 4
  %i.eo = tail call ptr @proto_item_add_subtree(ptr noundef %i.em, i32 noundef %i.en) ; 5 uses
  %i.ep = load i32, ptr @hf_edonkey_metatag_type, align 4
  %i.eq = tail call ptr @proto_tree_add_uint(ptr noundef %i.eo, i32 noundef %i.ep, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef %i.b) ; 0 uses
  %i.er = icmp eq i8 %i.a, 9
  br i1 %i.er, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.es = load i32, ptr @hf_edonkey_metatag_namesize, align 4
  %i.et = add i32 %2, 1
  %i.eu = tail call ptr @proto_tree_add_uint(ptr noundef %i.eo, i32 noundef %i.es, ptr noundef %0, i32 noundef %i.et, i32 noundef 2, i32 noundef %.0318) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ev = sub i32 %i.l, %.0318                    ; 2 uses
  %i.ew = zext i8 %.0319 to i32                   ; 3 uses
  %i.ex = tail call ptr @try_val_to_str(i32 noundef %i.ew, ptr noundef nonnull @edonkey_special_tags) ; 2 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ez = load i32, ptr @hf_edonkey_metatag_name, align 4
  %i.fa = tail call ptr @proto_tree_add_item(ptr noundef %i.eo, i32 noundef %i.ez, ptr noundef %0, i32 noundef %i.ev, i32 noundef range(i32 0, 65536) %.0318, i32 noundef 0) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit332

bb.am:                                            ; preds = %bb.ak
  %i.fb = load i32, ptr @hf_edonkey_metatag_id, align 4
  %i.fc = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.eo, i32 noundef %i.fb, ptr noundef %0, i32 noundef %i.ev, i32 noundef range(i32 0, 65536) %.0318, i32 noundef %i.ew, ptr noundef nonnull @.str.443, ptr noundef nonnull %i.ex, i32 noundef %i.ew) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit332

edonkey_tree_add_metatag_name.exit332:            ; preds = %bb.al, %bb.am
  %i.fd = load i32, ptr @hf_edonkey_meta_tag_value_uint, align 4
  %i.fe = tail call ptr @proto_tree_add_item(ptr noundef %i.eo, i32 noundef %i.fd, ptr noundef %0, i32 noundef %i.l, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit328

bb.an:                                            ; preds = %bb.d
  %i.ff = add nuw nsw i32 %.0, 1                  ; 2 uses
  %i.fg = load i32, ptr @hf_edonkey_metatag, align 4
  %i.fh = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.fg, ptr noundef %0, i32 noundef %2, i32 noundef %i.ff, i32 noundef 0)
  %i.fi = load i32, ptr @ett_edonkey_metatag, align 4
  %i.fj = tail call ptr @proto_item_add_subtree(ptr noundef %i.fh, i32 noundef %i.fi) ; 5 uses
  %i.fk = load i32, ptr @hf_edonkey_metatag_type, align 4
  %i.fl = tail call ptr @proto_tree_add_uint(ptr noundef %i.fj, i32 noundef %i.fk, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef %i.b) ; 0 uses
  %i.fm = icmp eq i8 %i.a, 5
  br i1 %i.fm, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fn = load i32, ptr @hf_edonkey_metatag_namesize, align 4
  %i.fo = add i32 %2, 1
  %i.fp = tail call ptr @proto_tree_add_uint(ptr noundef %i.fj, i32 noundef %i.fn, ptr noundef %0, i32 noundef %i.fo, i32 noundef 2, i32 noundef %.0318) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fq = sub i32 %i.l, %.0318                    ; 2 uses
  %i.fr = zext i8 %.0319 to i32                   ; 3 uses
  %i.fs = tail call ptr @try_val_to_str(i32 noundef %i.fr, ptr noundef nonnull @edonkey_special_tags) ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fu = load i32, ptr @hf_edonkey_metatag_name, align 4
  %i.fv = tail call ptr @proto_tree_add_item(ptr noundef %i.fj, i32 noundef %i.fu, ptr noundef %0, i32 noundef %i.fq, i32 noundef range(i32 0, 65536) %.0318, i32 noundef 0) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit334

bb.ar:                                            ; preds = %bb.ap
  %i.fw = load i32, ptr @hf_edonkey_metatag_id, align 4
  %i.fx = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.fj, i32 noundef %i.fw, ptr noundef %0, i32 noundef %i.fq, i32 noundef range(i32 0, 65536) %.0318, i32 noundef %i.fr, ptr noundef nonnull @.str.443, ptr noundef nonnull %i.fs, i32 noundef %i.fr) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit334

edonkey_tree_add_metatag_name.exit334:            ; preds = %bb.aq, %bb.ar
  %i.fy = load i32, ptr @hf_edonkey_meta_tag_value_uint, align 4
  %i.fz = tail call ptr @proto_tree_add_item(ptr noundef %i.fj, i32 noundef %i.fy, ptr noundef %0, i32 noundef %i.l, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit328

bb.as:                                            ; preds = %bb.d
  %i.ga = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.l)
  %i.gb = lshr i16 %i.ga, 3
  %narrow = add nuw nsw i16 %i.gb, 3
  %i.gc = zext nneg i16 %narrow to i32
  %i.gd = add nuw nsw i32 %.0, %i.gc              ; 2 uses
  %i.ge = load i32, ptr @hf_edonkey_metatag, align 4
  %i.gf = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ge, ptr noundef %0, i32 noundef %2, i32 noundef %i.gd, i32 noundef 0)
  %i.gg = load i32, ptr @ett_edonkey_metatag, align 4
  %i.gh = tail call ptr @proto_item_add_subtree(ptr noundef %i.gf, i32 noundef %i.gg) ; 5 uses
  %i.gi = load i32, ptr @hf_edonkey_metatag_type, align 4
  %i.gj = tail call ptr @proto_tree_add_uint(ptr noundef %i.gh, i32 noundef %i.gi, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef %i.b) ; 0 uses
  %i.gk = icmp eq i8 %i.a, 6
  br i1 %i.gk, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gl = load i32, ptr @hf_edonkey_metatag_namesize, align 4
  %i.gm = add i32 %2, 1
  %i.gn = tail call ptr @proto_tree_add_uint(ptr noundef %i.gh, i32 noundef %i.gl, ptr noundef %0, i32 noundef %i.gm, i32 noundef 2, i32 noundef %.0318) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.go = sub i32 %i.l, %.0318                    ; 2 uses
  %i.gp = zext i8 %.0319 to i32                   ; 3 uses
  %i.gq = tail call ptr @try_val_to_str(i32 noundef %i.gp, ptr noundef nonnull @edonkey_special_tags) ; 2 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gs = load i32, ptr @hf_edonkey_metatag_name, align 4
  %i.gt = tail call ptr @proto_tree_add_item(ptr noundef %i.gh, i32 noundef %i.gs, ptr noundef %0, i32 noundef %i.go, i32 noundef range(i32 0, 65536) %.0318, i32 noundef 0) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit336

bb.aw:                                            ; preds = %bb.au
  %i.gu = load i32, ptr @hf_edonkey_metatag_id, align 4
  %i.gv = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gh, i32 noundef %i.gu, ptr noundef %0, i32 noundef %i.go, i32 noundef range(i32 0, 65536) %.0318, i32 noundef %i.gp, ptr noundef nonnull @.str.443, ptr noundef nonnull %i.gq, i32 noundef %i.gp) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit336

edonkey_tree_add_metatag_name.exit336:            ; preds = %bb.av, %bb.aw
  %i.gw = load i32, ptr @hf_edonkey_boolean_array_length, align 4
  %i.gx = tail call ptr @proto_tree_add_item(ptr noundef %i.gh, i32 noundef %i.gw, ptr noundef %0, i32 noundef %i.l, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit328

bb.ax:                                            ; preds = %bb.d
  %i.gy = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.l)
  %i.gz = add nuw nsw i32 %.0, 4
  %i.ha = add i32 %i.gz, %i.gy                    ; 2 uses
  %i.hb = load i32, ptr @hf_edonkey_metatag, align 4
  %i.hc = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.hb, ptr noundef %0, i32 noundef %2, i32 noundef %i.ha, i32 noundef 0)
  %i.hd = load i32, ptr @ett_edonkey_metatag, align 4
  %i.he = tail call ptr @proto_item_add_subtree(ptr noundef %i.hc, i32 noundef %i.hd) ; 5 uses
  %i.hf = load i32, ptr @hf_edonkey_metatag_type, align 4
  %i.hg = tail call ptr @proto_tree_add_uint(ptr noundef %i.he, i32 noundef %i.hf, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef %i.b) ; 0 uses
  %i.hh = icmp eq i8 %i.a, 7
  br i1 %i.hh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hi = load i32, ptr @hf_edonkey_metatag_namesize, align 4
  %i.hj = add i32 %2, 1
  %i.hk = tail call ptr @proto_tree_add_uint(ptr noundef %i.he, i32 noundef %i.hi, ptr noundef %0, i32 noundef %i.hj, i32 noundef 2, i32 noundef %.0318) ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.hl = sub i32 %i.l, %.0318                    ; 2 uses
  %i.hm = zext i8 %.0319 to i32                   ; 3 uses
  %i.hn = tail call ptr @try_val_to_str(i32 noundef %i.hm, ptr noundef nonnull @edonkey_special_tags) ; 2 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hp = load i32, ptr @hf_edonkey_metatag_name, align 4
  %i.hq = tail call ptr @proto_tree_add_item(ptr noundef %i.he, i32 noundef %i.hp, ptr noundef %0, i32 noundef %i.hl, i32 noundef range(i32 0, 65536) %.0318, i32 noundef 0) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit338

bb.bb:                                            ; preds = %bb.az
  %i.hr = load i32, ptr @hf_edonkey_metatag_id, align 4
  %i.hs = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.he, i32 noundef %i.hr, ptr noundef %0, i32 noundef %i.hl, i32 noundef range(i32 0, 65536) %.0318, i32 noundef %i.hm, ptr noundef nonnull @.str.443, ptr noundef nonnull %i.hn, i32 noundef %i.hm) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit338

edonkey_tree_add_metatag_name.exit338:            ; preds = %bb.ba, %bb.bb
  %i.ht = load i32, ptr @hf_edonkey_blob_length, align 4
  %i.hu = tail call ptr @proto_tree_add_item(ptr noundef %i.he, i32 noundef %i.ht, ptr noundef %0, i32 noundef %i.l, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit328

bb.bc:                                            ; preds = %bb.d
  %i.hv = add nsw i8 %.0320, -17
  %or.cond = icmp ult i8 %i.hv, 16
  br i1 %or.cond, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.hw = zext nneg i8 %.0320 to i32
  %i.hx = add nsw i32 %i.hw, -16                  ; 2 uses
  %i.hy = add nuw nsw i32 %.0, %i.hx              ; 2 uses
  %i.hz = load i32, ptr @hf_edonkey_metatag, align 4
  %i.ia = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.hz, ptr noundef %0, i32 noundef %2, i32 noundef %i.hy, i32 noundef 0)
  %i.ib = load i32, ptr @ett_edonkey_metatag, align 4
  %i.ic = tail call ptr @proto_item_add_subtree(ptr noundef %i.ia, i32 noundef %i.ib) ; 5 uses
  %i.id = load i32, ptr @hf_edonkey_metatag_type, align 4
  %i.ie = tail call ptr @proto_tree_add_uint(ptr noundef %i.ic, i32 noundef %i.id, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef %i.b) ; 0 uses
  %i.if = icmp eq i8 %.0320, %i.a
  br i1 %i.if, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ig = load i32, ptr @hf_edonkey_metatag_namesize, align 4
  %i.ih = add i32 %2, 1
  %i.ii = tail call ptr @proto_tree_add_uint(ptr noundef %i.ic, i32 noundef %i.ig, ptr noundef %0, i32 noundef %i.ih, i32 noundef 2, i32 noundef %.0318) ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ij = sub i32 %i.l, %.0318                    ; 2 uses
  %i.ik = zext i8 %.0319 to i32                   ; 3 uses
  %i.il = tail call ptr @try_val_to_str(i32 noundef %i.ik, ptr noundef nonnull @edonkey_special_tags) ; 2 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.in = load i32, ptr @hf_edonkey_metatag_name, align 4
  %i.io = tail call ptr @proto_tree_add_item(ptr noundef %i.ic, i32 noundef %i.in, ptr noundef %0, i32 noundef %i.ij, i32 noundef range(i32 0, 65536) %.0318, i32 noundef 0) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit340

bb.bh:                                            ; preds = %bb.bf
  %i.ip = load i32, ptr @hf_edonkey_metatag_id, align 4
  %i.iq = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.ic, i32 noundef %i.ip, ptr noundef %0, i32 noundef %i.ij, i32 noundef range(i32 0, 65536) %.0318, i32 noundef %i.ik, ptr noundef nonnull @.str.443, ptr noundef nonnull %i.il, i32 noundef %i.ik) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit340

edonkey_tree_add_metatag_name.exit340:            ; preds = %bb.bg, %bb.bh
  %i.ir = load i32, ptr @hf_edonkey_string, align 4
  %i.is = tail call ptr @proto_tree_add_item(ptr noundef %i.ic, i32 noundef %i.ir, ptr noundef %0, i32 noundef %i.l, i32 noundef %i.hx, i32 noundef 0) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit328

bb.bi:                                            ; preds = %bb.bc
  %i.it = load i32, ptr @hf_edonkey_metatag, align 4
  %i.iu = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.it, ptr noundef %0, i32 noundef %2, i32 noundef %.0, i32 noundef 0)
  %i.iv = load i32, ptr @ett_edonkey_metatag, align 4
  %i.iw = tail call ptr @proto_item_add_subtree(ptr noundef %i.iu, i32 noundef %i.iv) ; 4 uses
  %i.ix = load i32, ptr @hf_edonkey_metatag_type, align 4
  %i.iy = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.iw, i32 noundef %i.ix, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef %i.b, ptr noundef nonnull @.str.442, i32 noundef %i.b) ; 0 uses
  %i.iz = icmp eq i8 %.0320, %i.a
  br i1 %i.iz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ja = load i32, ptr @hf_edonkey_metatag_namesize, align 4
  %i.jb = add i32 %2, 1
  %i.jc = tail call ptr @proto_tree_add_uint(ptr noundef %i.iw, i32 noundef %i.ja, ptr noundef %0, i32 noundef %i.jb, i32 noundef 2, i32 noundef %.0318) ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.jd = sub i32 %i.l, %.0318                    ; 2 uses
  %i.je = zext i8 %.0319 to i32                   ; 3 uses
  %i.jf = tail call ptr @try_val_to_str(i32 noundef %i.je, ptr noundef nonnull @edonkey_special_tags) ; 2 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.jh = load i32, ptr @hf_edonkey_metatag_name, align 4
  %i.ji = tail call ptr @proto_tree_add_item(ptr noundef %i.iw, i32 noundef %i.jh, ptr noundef %0, i32 noundef %i.jd, i32 noundef range(i32 0, 65536) %.0318, i32 noundef 0) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit328

bb.bm:                                            ; preds = %bb.bk
  %i.jj = load i32, ptr @hf_edonkey_metatag_id, align 4
  %i.jk = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.iw, i32 noundef %i.jj, ptr noundef %0, i32 noundef %i.jd, i32 noundef range(i32 0, 65536) %.0318, i32 noundef %i.je, ptr noundef nonnull @.str.443, ptr noundef nonnull %i.jf, i32 noundef %i.je) ; 0 uses
  br label %edonkey_tree_add_metatag_name.exit328

edonkey_tree_add_metatag_name.exit328:            ; preds = %bb.bm, %bb.bl, %bb.ac, %bb.ab, %edonkey_tree_add_metatag_name.exit340, %bb.w, %edonkey_metatag_name_get_type.exit.thread, %bb.x, %edonkey_tree_add_metatag_name.exit338, %edonkey_tree_add_metatag_name.exit336, %edonkey_tree_add_metatag_name.exit334, %edonkey_tree_add_metatag_name.exit332, %edonkey_tree_add_metatag_name.exit330, %edonkey_tree_add_metatag_name.exit324, %edonkey_tree_add_metatag_name.exit
  %.1 = phi i32 [ %i.hy, %edonkey_tree_add_metatag_name.exit340 ], [ %i.cw, %bb.ac ], [ %i.m, %edonkey_tree_add_metatag_name.exit ], [ %i.ak, %edonkey_tree_add_metatag_name.exit324 ], [ %i.bi, %bb.w ], [ %i.bi, %bb.x ], [ %i.bi, %edonkey_metatag_name_get_type.exit.thread ], [ %i.ha, %edonkey_tree_add_metatag_name.exit338 ], [ %i.dp, %edonkey_tree_add_metatag_name.exit330 ], [ %i.ek, %edonkey_tree_add_metatag_name.exit332 ], [ %i.ff, %edonkey_tree_add_metatag_name.exit334 ], [ %i.gd, %edonkey_tree_add_metatag_name.exit336 ], [ %i.cw, %bb.ab ], [ %.0, %bb.bl ], [ %.0, %bb.bm ]
  %i.jl = add i32 %.1, %2
  ret i32 %i.jl
}

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn null_pointer_is_valid
declare void @except_throw(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_string_enc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @g_ascii_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_edonkey_file_info(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_edonkey_fileinfo, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.a, ptr noundef %0, i32 noundef %2, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.c = load i32, ptr @ett_edonkey_fileinfo, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 4 uses
  %i.e = load i32, ptr @hf_edonkey_file_hash, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %0, i32 noundef %2, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.g = add i32 %2, 16                           ; 2 uses
  %i.h = load i32, ptr @hf_edonkey_client_id, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.g, i32 noundef 4, i32 noundef 0)
  %i.j = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.g) ; 2 uses
  %i.k = add i32 %2, 20                           ; 2 uses
  %i.l = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.k) ; 2 uses
  %i.m = icmp eq i32 %i.j, -50529028
  %i.n = icmp eq i16 %i.l, -772
  %or.cond.i = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond.i, label %dissect_edonkey_client_id.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %i.j, -67372037
  %i.p = icmp eq i16 %i.l, -1029
  %or.cond5.i = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond5.i, label %dissect_edonkey_client_id.exit.sink.split, label %dissect_edonkey_client_id.exit

dissect_edonkey_client_id.exit.sink.split:        ; preds = %bb.b, %bb.a
  %.str.485.sink = phi ptr [ @.str.485, %bb.a ], [ @.str.486, %bb.b ]
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.i, ptr noundef nonnull %.str.485.sink)
  br label %dissect_edonkey_client_id.exit

dissect_edonkey_client_id.exit:                   ; preds = %dissect_edonkey_client_id.exit.sink.split, %bb.b
  %i.q = load i32, ptr @hf_edonkey_port, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.k, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.s = add i32 %2, 22
  %i.t = tail call fastcc i32 @dissect_edonkey_list(ptr noundef %0, ptr noundef %1, i32 noundef %i.s, ptr noundef %i.d, i32 noundef 4, ptr noundef nonnull @.str.439, ptr noundef nonnull @dissect_edonkey_metatag) ; 2 uses
  %i.u = sub i32 %i.t, %2
  tail call void @proto_item_set_len(ptr noundef %i.b, i32 noundef %i.u)
  ret i32 %i.t
}

; Function Attrs: null_pointer_is_valid
declare void @increment_dissection_depth(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @decrement_dissection_depth(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_emule_sourceOBFU(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = add i32 %2, 6                            ; 2 uses
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.a)
  %i.c = load i32, ptr @hf_emule_sourceOBFU, align 4
  %.not = icmp sgt i8 %i.b, -1                    ; 2 uses
  %i.d = select i1 %.not, i32 7, i32 23
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.c, ptr noundef %0, i32 noundef %2, i32 noundef %i.d, i32 noundef 0)
  %i.f = load i32, ptr @ett_emule_sourceOBFU, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 4 uses
  %i.h = load i32, ptr @hf_edonkey_ip, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %0, i32 noundef %2, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_edonkey_port, align 4
  %i.k = add i32 %2, 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.k, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.m = load i32, ptr @hf_edonkey_obfuscation_settings, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.a, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.o = add i32 %2, 7                            ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr @hf_edonkey_client_hash, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.o, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.r = add i32 %2, 23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.r, %bb.b ], [ %i.o, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_emule_aich_hash_list_entry(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = load i32, ptr @hf_emule_aich_hash_entry, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.a, ptr noundef %0, i32 noundef %2, i32 noundef 22, i32 noundef 0)
  %i.c = load i32, ptr @ett_emule_aichhash, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 2 uses
  %i.e = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %2)
  %i.f = load i32, ptr @hf_emule_aich_hash_id, align 4
  %i.g = zext i16 %i.e to i32
  %i.h = tail call ptr @proto_tree_add_uint(ptr noundef %i.d, i32 noundef %i.f, ptr noundef %0, i32 noundef %2, i32 noundef 2, i32 noundef %i.g) ; 0 uses
  %i.i = load i32, ptr @hf_emule_aich_hash, align 4
  %i.j = add i32 %2, 2
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.j, i32 noundef 20, i32 noundef 0) ; 0 uses
  %i.l = add i32 %2, 22
  ret i32 %i.l
}

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_edonkey_udp_message(i8 noundef zeroext %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 1, -2147483648) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef 2) ; 2 uses
  %.0222 = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.a) ; 3 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i32 %.0222, 2                    ; 6 uses
  switch i8 %0, label %bb.ao [
    i8 -100, label %bb.c
    i8 -98, label %bb.d
    i8 -94, label %bb.e
    i8 -93, label %bb.h
    i8 -95, label %bb.k
    i8 -103, label %bb.l
    i8 -104, label %bb.m
    i8 -102, label %bb.n
    i8 -101, label %bb.o
    i8 -106, label %bb.p
    i8 -105, label %bb.q
    i8 10, label %bb.aa
    i8 12, label %bb.aa
    i8 11, label %bb.ab
    i8 14, label %bb.ac
    i8 16, label %bb.ad
    i8 15, label %bb.ae
    i8 17, label %bb.af
    i8 19, label %bb.af
    i8 18, label %bb.ag
    i8 20, label %bb.ah
    i8 27, label %bb.ai
    i8 28, label %bb.aj
    i8 21, label %bb.ak
    i8 22, label %bb.al
    i8 24, label %bb.am
    i8 25, label %bb.an
end_hunk_0
