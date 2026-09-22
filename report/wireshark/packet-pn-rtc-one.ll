Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-pn-rtc-one?download=true
inline.NumInlined: 19
inline.NumDeleted: 7
begin_hunk_0_@dissect_PNIO_C_SDU_RTC1:bb.a
  %i.cp = getelementptr i8, ptr %.0461625, i64 20
  %i.cq = load i16, ptr %i.cp, align 4
  %i.cr = getelementptr i8, ptr %.0461625, i64 24
  %i.cs = load i16, ptr %i.cr, align 8
  %i.ct = zext i16 %i.cq to i32
  %i.cu = zext i16 %i.cs to i32
  br label %addresses_equal.exit

addresses_equal.exit:                             ; preds = %bb.v, %bb.t, %bb.s, %bb.r, %bb.p, %bb.o, %bb.w
  %.0480 = phi i1 [ true, %bb.w ], [ false, %bb.r ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.s ], [ false, %bb.t ], [ false, %bb.v ]
  %.0467 = phi i32 [ %i.ct, %bb.w ], [ 0, %bb.r ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.v ]
  %.0465 = phi i32 [ %i.cu, %bb.w ], [ 0, %bb.r ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.v ]
  %i.cv = getelementptr i8, ptr %2, i64 232
  %i.cw = load ptr, ptr %i.bf, align 8
  %i.cx = tail call ptr @conversation_key_addr1(ptr noundef %i.cw) ; 3 uses
  %i.cy = load i32, ptr %i.cv, align 8
  %i.cz = load i32, ptr %i.cx, align 8
  %i.da = icmp eq i32 %i.cy, %i.cz
  br i1 %i.da, label %bb.x, label %addresses_equal.exit587

bb.x:                                             ; preds = %addresses_equal.exit
  %i.db = getelementptr i8, ptr %2, i64 236
  %i.dc = load i32, ptr %i.db, align 4            ; 3 uses
  %i.dd = getelementptr i8, ptr %i.cx, i64 4
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = icmp eq i32 %i.dc, %i.de
  br i1 %i.df, label %bb.y, label %addresses_equal.exit587

bb.y:                                             ; preds = %bb.x
  %i.dg = icmp eq i32 %i.dc, 0
  br i1 %i.dg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dh = getelementptr i8, ptr %2, i64 240
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr i8, ptr %i.cx, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = sext i32 %i.dc to i64
  %bcmp.i586 = tail call i32 @bcmp(ptr %i.di, ptr %i.dk, i64 %i.dl)
  %i.dm = icmp eq i32 %bcmp.i586, 0
  br i1 %i.dm, label %bb.aa, label %addresses_equal.exit587

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dn = load ptr, ptr %i.bf, align 8
  %i.do = tail call ptr @conversation_key_addr2(ptr noundef %i.dn) ; 3 uses
  %i.dp = load i32, ptr %i.be, align 8
  %i.dq = load i32, ptr %i.do, align 8
  %i.dr = icmp eq i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.ab, label %addresses_equal.exit587

bb.ab:                                            ; preds = %bb.aa
  %i.ds = getelementptr i8, ptr %2, i64 212
  %i.dt = load i32, ptr %i.ds, align 4            ; 3 uses
  %i.du = getelementptr i8, ptr %i.do, i64 4
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = icmp eq i32 %i.dt, %i.dv
  br i1 %i.dw, label %bb.ac, label %addresses_equal.exit587

bb.ac:                                            ; preds = %bb.ab
  %i.dx = icmp eq i32 %i.dt, 0
  br i1 %i.dx, label %bb.ce, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dy = getelementptr i8, ptr %2, i64 216
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr i8, ptr %i.do, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = sext i32 %i.dt to i64
  %bcmp.i589 = tail call i32 @bcmp(ptr %i.dz, ptr %i.eb, i64 %i.ec)
  %i.ed = icmp eq i32 %bcmp.i589, 0
  br i1 %i.ed, label %bb.ce, label %addresses_equal.exit587

addresses_equal.exit587:                          ; preds = %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.x, %addresses_equal.exit
  br i1 %.0480, label %bb.ae, label %.thread646

bb.ae:                                            ; preds = %addresses_equal.exit587
  %i.ee = load i8, ptr @pnio_ps_selection, align 1, !range !16, !noundef !17
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = load i32, ptr @hf_pn_io_frame_info_type, align 4 ; 2 uses
  br i1 %i.ef, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eh = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format_value(ptr noundef %.0494, i32 noundef %i.eg, ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) ; 0 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ei = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format_value(ptr noundef %.0494, i32 noundef %i.eg, ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.ej = load ptr, ptr %.0461625, align 8        ; 3 uses
  %.not560 = icmp eq ptr %i.ej, null
  br i1 %.not560, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ek = load i32, ptr @hf_pn_io_frame_info_vendor, align 4
  %i.el = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format_value(ptr noundef %.0494, i32 noundef %i.ek, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.ej, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.ej) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.em = getelementptr i8, ptr %.0461625, i64 8
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not561 = icmp eq ptr %i.en, null
  br i1 %.not561, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eo = load i32, ptr @hf_pn_io_frame_info_nameofstation, align 4
  %i.ep = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format_value(ptr noundef %.0494, i32 noundef %i.eo, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.en, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.en) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.eq = getelementptr i8, ptr %.0461625, i64 29
  %i.er = load i8, ptr %i.eq, align 1, !range !16, !noundef !17
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.am, label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.et = getelementptr i8, ptr %.0461625, i64 28
  %i.eu = load i8, ptr %i.et, align 4, !range !16, !noundef !17
  %i.ev = trunc nuw i8 %i.eu to i1
  %i.ew = getelementptr i8, ptr %.0461625, i64 32 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8            ; 2 uses
  %.not563 = icmp eq ptr %i.ex, null              ; 2 uses
  br i1 %i.ev, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  br i1 %.not563, label %proto_item_set_generated.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ey = load i32, ptr @hf_pn_io_frame_info_gsd_found, align 4
  %i.ez = tail call ptr @proto_tree_add_string(ptr noundef %.0494, i32 noundef %i.ey, ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef nonnull %i.ex) ; 2 uses
  %.not.i = icmp eq ptr %i.ez, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fa = getelementptr i8, ptr %i.ez, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.fb, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fc = getelementptr i8, ptr %i.fb, i64 28     ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = or i32 %i.fd, 2
  store i32 %i.fe, ptr %i.fc, align 4
  br label %proto_item_set_generated.exit

bb.ar:                                            ; preds = %bb.am
  br i1 %.not563, label %proto_item_set_generated.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ff = load i32, ptr @hf_pn_io_frame_info_gsd_error, align 4
  %i.fg = tail call ptr @proto_tree_add_item(ptr noundef %.0494, i32 noundef %i.ff, ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0)
  %i.fh = load ptr, ptr %i.ew, align 8
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fg, ptr noundef nonnull @.str.10, ptr noundef %i.fh)
  br label %proto_item_set_generated.exit

bb.at:                                            ; preds = %bb.al
  %i.fi = load i32, ptr @hf_pn_io_frame_info_gsd_path, align 4
  %i.fj = tail call ptr @proto_tree_add_item(ptr noundef %.0494, i32 noundef %i.fi, ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fj, ptr noundef nonnull @.str.11)
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.at, %bb.ar, %bb.as, %bb.an
  %i.fk = add nuw nsw i32 %.0465, %.0467          ; 4 uses
  %i.fl = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %1)
  %i.fm = icmp ugt i32 %i.fk, %i.fl
  br i1 %i.fm, label %bb.au, label %.preheader664

.preheader664:                                    ; preds = %proto_item_set_generated.exit
  %.not564691 = icmp eq i32 %i.fk, 0
  br i1 %.not564691, label %._crit_edge696, label %.lr.ph695

.lr.ph695:                                        ; preds = %.preheader664
  %i.fn = getelementptr i8, ptr %.0461625, i64 56
  %i.fo = getelementptr i8, ptr %.0461625, i64 72
  %i.fp = getelementptr i8, ptr %2, i64 8
  %i.fq = getelementptr i8, ptr %2, i64 416
  %i.fr = getelementptr i8, ptr %.0461625, i64 40
  %.not.i601 = icmp eq ptr %.0494, null
  br label %bb.av

bb.au:                                            ; preds = %proto_item_set_generated.exit
  %i.fs = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %.0473, ptr noundef nonnull @ei_pn_io_too_many_data_objects, ptr noundef nonnull @.str.12, i32 noundef %i.fk) ; 0 uses
  %i.ft = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %.thread646

bb.av:                                            ; preds = %.lr.ph695, %.loopexit663
  %.in = phi i32 [ %i.fk, %.lr.ph695 ], [ %i.fu, %.loopexit663 ]
  %.0474694 = phi i8 [ 0, %.lr.ph695 ], [ %.1475.lcssa, %.loopexit663 ] ; 2 uses
  %.0484693 = phi i16 [ 0, %.lr.ph695 ], [ %.4488, %.loopexit663 ] ; 2 uses
  %.0496692 = phi i32 [ %1, %.lr.ph695 ], [ %.7503, %.loopexit663 ] ; 2 uses
  %i.fu = add nsw i32 %.in, -1                    ; 2 uses
  %i.fv = load ptr, ptr %i.fn, align 8
  %i.fw = call ptr @wmem_list_head(ptr noundef %i.fv) ; 2 uses
  %.not565679 = icmp eq ptr %i.fw, null
  br i1 %.not565679, label %._crit_edge, label %.lr.ph684

.lr.ph684:                                        ; preds = %bb.av, %bb.ca
  %.0459683 = phi ptr [ %i.lu, %bb.ca ], [ %i.fw, %bb.av ] ; 2 uses
  %.1475682 = phi i8 [ %.4, %bb.ca ], [ %.0474694, %bb.av ] ; 5 uses
  %.1485681 = phi i16 [ %.2486, %bb.ca ], [ %.0484693, %bb.av ] ; 3 uses
  %.1497680 = phi i32 [ %.5501, %bb.ca ], [ %.0496692, %bb.av ] ; 8 uses
  %i.fx = call ptr @wmem_list_frame_data(ptr noundef nonnull %.0459683) ; 25 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  %i.fz = load i16, ptr %i.fy, align 8
  %i.ga = icmp eq i16 %i.fz, %.1485681
  br i1 %i.ga, label %bb.aw, label %bb.ca

bb.aw:                                            ; preds = %.lr.ph684
  %i.gb = load i32, ptr @hf_pn_io_io_data_object, align 4
  %i.gc = call ptr @proto_tree_add_item(ptr noundef %.0494, i32 noundef %i.gb, ptr noundef %0, i32 noundef %.1497680, i32 noundef 0, i32 noundef 0) ; 5 uses
  %i.gd = load i32, ptr @ett_pn_io_io_data_object, align 4
  %i.ge = call ptr @proto_item_add_subtree(ptr noundef %i.gc, i32 noundef %i.gd) ; 15 uses
  %i.gf = load ptr, ptr %i.fo, align 8
  %i.gg = call ptr @wmem_list_head(ptr noundef %i.gf) ; 2 uses
  %.not567676 = icmp eq ptr %i.gg, null
  br i1 %.not567676, label %.loopexit662, label %.lr.ph678

.lr.ph678:                                        ; preds = %bb.aw
  %i.gh = getelementptr i8, ptr %i.fx, i64 8      ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph678, %bb.az
  %.0458677 = phi ptr [ %i.gg, %.lr.ph678 ], [ %i.gr, %bb.az ] ; 2 uses
  %i.gi = call ptr @wmem_list_frame_data(ptr noundef nonnull %.0458677) ; 2 uses
  %i.gj = load i32, ptr %i.gh, align 8
  %i.gk = getelementptr i8, ptr %i.gi, i64 4
  %i.gl = load i32, ptr %i.gk, align 4
  %.not568 = icmp eq i32 %i.gj, %i.gl
  br i1 %.not568, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gm = getelementptr i8, ptr %i.gi, i64 4
  %i.gn = load i32, ptr @hf_pn_io_io_data_object_info_module_diff, align 4
  %i.go = call ptr @proto_tree_add_item(ptr noundef %i.ge, i32 noundef %i.gn, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %i.gp = load i32, ptr %i.gm, align 4
  %i.gq = load i32, ptr %i.gh, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.go, ptr noundef nonnull @.str.13, i32 noundef %i.gp, i32 noundef %i.gq)
  br label %.loopexit662

bb.az:                                            ; preds = %bb.ax
  %i.gr = call ptr @wmem_list_frame_next(ptr noundef nonnull %.0458677) ; 2 uses
  %.not567 = icmp eq ptr %i.gr, null
  br i1 %.not567, label %.loopexit662, label %bb.ax, !llvm.loop !7

.loopexit662:                                     ; preds = %bb.az, %bb.aw, %bb.ay
  %i.gs = load i32, ptr @hf_pn_io_io_data_object_info_moduleidentnumber, align 4
  %i.gt = getelementptr i8, ptr %i.fx, i64 8
  %i.gu = load i32, ptr %i.gt, align 8
  %i.gv = call ptr @proto_tree_add_uint(ptr noundef %i.ge, i32 noundef %i.gs, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.gu) ; 0 uses
  %i.gw = load i32, ptr @hf_pn_io_io_data_object_info_submoduleidentnumber, align 4
  %i.gx = getelementptr i8, ptr %i.fx, i64 12
  %i.gy = load i32, ptr %i.gx, align 4
  %i.gz = call ptr @proto_tree_add_uint(ptr noundef %i.ge, i32 noundef %i.gw, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.gy) ; 0 uses
  %i.ha = getelementptr i8, ptr %i.fx, i64 88     ; 3 uses
  %i.hb = load i8, ptr %i.ha, align 8, !range !16, !noundef !17
  %i.hc = trunc nuw i8 %i.hb to i1
  %i.hd = load i8, ptr @pnio_ps_selection, align 1, !range !16
  %i.he = trunc nuw i8 %i.hd to i1
  %or.cond574 = select i1 %i.hc, i1 %i.he, i1 false
  br i1 %or.cond574, label %bb.ba, label %bb.bo

bb.ba:                                            ; preds = %.loopexit662
  %i.hf = icmp eq i8 %.1475682, 0
  br i1 %i.hf, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hg = load ptr, ptr %i.fp, align 8
  call void @col_append_str(ptr noundef %i.hg, i32 noundef 25, ptr noundef nonnull @.str.14)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.2476 = phi i8 [ 1, %bb.bb ], [ %.1475682, %bb.ba ]
  %i.hh = load i32, ptr @hf_pn_io_ps_f_dest_adr, align 4
  %i.hi = getelementptr i8, ptr %i.fx, i64 32
  %i.hj = load i16, ptr %i.hi, align 8
  %i.hk = zext i16 %i.hj to i32
  %i.hl = call ptr @proto_tree_add_uint(ptr noundef %i.ge, i32 noundef %i.hh, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.hk) ; 0 uses
  %i.hm = getelementptr i8, ptr %i.fx, i64 35     ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1             ; 2 uses
  %.not569 = icmp eq i8 %i.hn, 0
  br i1 %.not569, label %.thread643, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ho = getelementptr i8, ptr %i.fx, i64 18
  %i.hp = load i16, ptr %i.ho, align 2            ; 2 uses
  %i.hq = add i8 %i.hn, 1                         ; 3 uses
  %i.hr = zext i8 %i.hq to i16
  %i.hs = icmp ugt i16 %i.hp, %i.hr
  br i1 %i.hs, label %bb.be, label %.thread643

bb.be:                                            ; preds = %bb.bd
  %i.ht = trunc i16 %i.hp to i8                   ; 2 uses
  %.not570 = icmp eq i8 %i.hq, %i.ht
  br i1 %.not570, label %.thread643, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hu = sub i8 %i.ht, %i.hq
  %i.hv = load i32, ptr @hf_pn_io_ps_f_data, align 4
  %i.hw = call fastcc i32 @dissect_pn_io_ps_uint(ptr noundef %0, i32 noundef %.1497680, ptr noundef %2, ptr noundef %i.ge, ptr noundef %4, i32 noundef %i.hv, i8 noundef zeroext %i.hu, ptr noundef nonnull %i.a)
  br label %.thread643

.thread643:                                       ; preds = %bb.bc, %bb.bd, %bb.bf, %bb.be
  %.2498 = phi i32 [ %i.hw, %bb.bf ], [ %.1497680, %bb.be ], [ %.1497680, %bb.bd ], [ %.1497680, %bb.bc ] ; 7 uses
  %i.hx = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.2498) ; 2 uses
  %i.hy = and i8 %i.hx, 32                        ; 3 uses
  %i.hz = getelementptr i8, ptr %i.fx, i64 121    ; 2 uses
  %i.ia = load i8, ptr %i.hz, align 1
  %.not571 = icmp eq i8 %i.ia, %i.hy
  br i1 %.not571, label %proto_item_set_hidden.exit598, label %bb.bg

bb.bg:                                            ; preds = %.thread643
  %i.ib = zext nneg i8 %i.hy to i32
  %i.ic = load i32, ptr @hf_pn_io_ps_sb_toggelBitChanged, align 4
  %i.id = call ptr @proto_tree_add_uint(ptr noundef %i.ge, i32 noundef %i.ic, ptr noundef %0, i32 noundef %.2498, i32 noundef 0, i32 noundef %i.ib) ; 2 uses
  %.not.i591 = icmp eq ptr %i.id, null
  br i1 %.not.i591, label %proto_item_set_hidden.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ie = getelementptr i8, ptr %i.id, i64 40
  %i.if = load ptr, ptr %i.ie, align 8            ; 2 uses
  %.not5.i592 = icmp eq ptr %i.if, null
  br i1 %.not5.i592, label %proto_item_set_hidden.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ig = getelementptr i8, ptr %i.if, i64 28     ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4
  %i.ii = or i32 %i.ih, 1
  store i32 %i.ii, ptr %i.ig, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.bg, %bb.bh, %bb.bi
  %i.ij = load i32, ptr @hf_pn_io_ps_sb_toggelBitChange_slot_nr, align 4
  %i.ik = load i16, ptr %i.fx, align 8
  %i.il = zext i16 %i.ik to i32
  %i.im = call ptr @proto_tree_add_uint(ptr noundef %i.ge, i32 noundef %i.ij, ptr noundef %0, i32 noundef %.2498, i32 noundef 0, i32 noundef %i.il) ; 2 uses
  %.not.i593 = icmp eq ptr %i.im, null
  br i1 %.not.i593, label %proto_item_set_hidden.exit595, label %bb.bj

bb.bj:                                            ; preds = %proto_item_set_hidden.exit
  %i.in = getelementptr i8, ptr %i.im, i64 40
  %i.io = load ptr, ptr %i.in, align 8            ; 2 uses
  %.not5.i594 = icmp eq ptr %i.io, null
  br i1 %.not5.i594, label %proto_item_set_hidden.exit595, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ip = getelementptr i8, ptr %i.io, i64 28     ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4
  %i.ir = or i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 4
  br label %proto_item_set_hidden.exit595

proto_item_set_hidden.exit595:                    ; preds = %proto_item_set_hidden.exit, %bb.bj, %bb.bk
  %i.is = load i32, ptr @hf_pn_io_ps_sb_toggelBitChange_subslot_nr, align 4
  %i.it = getelementptr i8, ptr %i.fx, i64 2
  %i.iu = load i16, ptr %i.it, align 2
  %i.iv = zext i16 %i.iu to i32
  %i.iw = call ptr @proto_tree_add_uint(ptr noundef %i.ge, i32 noundef %i.is, ptr noundef %0, i32 noundef %.2498, i32 noundef 0, i32 noundef %i.iv) ; 2 uses
  %.not.i596 = icmp eq ptr %i.iw, null
  br i1 %.not.i596, label %proto_item_set_hidden.exit598, label %bb.bl

bb.bl:                                            ; preds = %proto_item_set_hidden.exit595
  %i.ix = getelementptr i8, ptr %i.iw, i64 40
  %i.iy = load ptr, ptr %i.ix, align 8            ; 2 uses
  %.not5.i597 = icmp eq ptr %i.iy, null
  br i1 %.not5.i597, label %proto_item_set_hidden.exit598, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iz = getelementptr i8, ptr %i.iy, i64 28     ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4
  %i.jb = or i32 %i.ja, 1
  store i32 %i.jb, ptr %i.iz, align 4
  br label %proto_item_set_hidden.exit598

proto_item_set_hidden.exit598:                    ; preds = %bb.bm, %bb.bl, %proto_item_set_hidden.exit595, %.thread643
  %.not.i599 = icmp eq ptr %i.ge, null
  br i1 %.not.i599, label %dissect_pn_io_ps_SB.exit, label %bb.bn

bb.bn:                                            ; preds = %proto_item_set_hidden.exit598
  %i.jc = load i32, ptr @hf_pn_io_ps_sb, align 4
  %i.jd = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.2498)
  %i.je = load i32, ptr @ett_pn_io_ioxs, align 4
  %i.jf = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef nonnull %i.ge, ptr noundef %0, i32 noundef %.2498, i32 noundef %i.jc, i32 noundef %i.je, ptr noundef nonnull @ps_sb_fields, i32 noundef -2147483648, i32 noundef 1)
  %i.jg = and i8 %i.jd, -33
  %i.jh = icmp eq i8 %i.jg, 0
  %i.ji = select i1 %i.jh, ptr @.str.139, ptr @.str.140
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.jf, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.ji)
  br label %dissect_pn_io_ps_SB.exit

dissect_pn_io_ps_SB.exit:                         ; preds = %proto_item_set_hidden.exit598, %bb.bn
  %i.jj = add i32 %.2498, 1
  %i.jk = load i8, ptr %i.hm, align 1
  %i.jl = zext i8 %i.jk to i32
  %i.jm = call i32 @dissect_pn_user_data(ptr noundef %0, i32 noundef %i.jj, ptr noundef %2, ptr noundef %i.ge, i32 noundef %i.jl, ptr noundef nonnull @.str.15)
  %i.jn = getelementptr i8, ptr %i.fx, i64 120
  store i8 %i.hx, ptr %i.jn, align 8
  store i8 %i.hy, ptr %i.hz, align 1
  br label %bb.br

bb.bo:                                            ; preds = %.loopexit662
  %i.jo = getelementptr i8, ptr %i.fx, i64 4
  %i.jp = load i32, ptr %i.jo, align 4
  %i.jq = icmp eq i32 %i.jp, 38656
  %i.jr = getelementptr i8, ptr %i.fx, i64 18
  %i.js = load i16, ptr %i.jr, align 2
  %i.jt = zext i16 %i.js to i32                   ; 2 uses
  br i1 %i.jq, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ju = call i32 @dissect_pn_pa_profile_data(ptr noundef %0, i32 noundef %.1497680, ptr noundef %2, ptr noundef %i.ge, i32 noundef %i.jt, ptr nonnull poison)
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.jv = call i32 @dissect_pn_user_data(ptr noundef %0, i32 noundef %.1497680, ptr noundef %2, ptr noundef %i.ge, i32 noundef %i.jt, ptr noundef nonnull @.str.16)
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq, %dissect_pn_io_ps_SB.exit
  %.3499 = phi i32 [ %i.jm, %dissect_pn_io_ps_SB.exit ], [ %i.ju, %bb.bp ], [ %i.jv, %bb.bq ] ; 4 uses
  %.3477 = phi i8 [ %.2476, %dissect_pn_io_ps_SB.exit ], [ %.1475682, %bb.bp ], [ %.1475682, %bb.bq ]
  %i.jw = getelementptr i8, ptr %i.fx, i64 89     ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !range !16, !noundef !17
  %i.jy = icmp eq i8 %i.jx, 0
  br i1 %i.jy, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %.not.i600 = icmp eq ptr %i.ge, null
  br i1 %.not.i600, label %dissect_PNIO_IOxS.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jz = load i32, ptr @hf_pn_io_iops, align 4
  %i.ka = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.3499) ; 2 uses
  %i.kb = load i32, ptr @ett_pn_io_ioxs, align 4
  %i.kc = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef nonnull %i.ge, ptr noundef %0, i32 noundef %.3499, i32 noundef %i.jz, i32 noundef %i.kb, ptr noundef nonnull @ioxs_fields, i32 noundef -2147483648, i32 noundef 1)
  %i.kd = and i8 %i.ka, 1
  %.not11.i = icmp eq i8 %i.kd, 0
  %i.ke = select i1 %.not11.i, ptr @.str.63, ptr @.str.142
  %.not12.i = icmp sgt i8 %i.ka, -1
  %i.kf = select i1 %.not12.i, ptr @.str.144, ptr @.str.143
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.kc, ptr noundef nonnull @.str.141, ptr noundef nonnull %i.ke, ptr noundef nonnull %i.kf)
  br label %dissect_PNIO_IOxS.exit

dissect_PNIO_IOxS.exit:                           ; preds = %bb.bs, %bb.bt
  %i.kg = add i32 %.3499, 1
  %i.kh = getelementptr i8, ptr %i.fx, i64 18
  %i.ki = load i16, ptr %i.kh, align 2
  %i.kj = zext i16 %i.ki to i32
  %i.kk = add nuw nsw i32 %i.kj, 1
  br label %bb.bv

bb.bu:                                            ; preds = %bb.br
  %i.kl = getelementptr i8, ptr %i.fx, i64 18
  %i.km = load i16, ptr %i.kl, align 2
  %i.kn = zext i16 %i.km to i32
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %dissect_PNIO_IOxS.exit
  %.sink = phi i32 [ %i.kn, %bb.bu ], [ %i.kk, %dissect_PNIO_IOxS.exit ]
  %.4500 = phi i32 [ %.3499, %bb.bu ], [ %i.kg, %dissect_PNIO_IOxS.exit ]
  call void @proto_item_set_len(ptr noundef %i.gc, i32 noundef %.sink)
  %i.ko = load i16, ptr %i.fx, align 8
  %i.kp = zext i16 %i.ko to i32
  %i.kq = getelementptr i8, ptr %i.fx, i64 2
  %i.kr = load i16, ptr %i.kq, align 2
  %i.ks = zext i16 %i.kr to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gc, ptr noundef nonnull @.str.17, i32 noundef %i.kp, i32 noundef %i.ks)
  %i.kt = getelementptr i8, ptr %i.fx, i64 20
  %i.ku = load i16, ptr %i.kt, align 4
  %i.kv = icmp ugt i16 %i.ku, 1
  br i1 %i.kv, label %bb.bw, label %._crit_edge736

._crit_edge736:                                   ; preds = %bb.bv
  %.phi.trans.insert = getelementptr i8, ptr %i.fx, i64 96
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.kw = load i16, ptr %i.fx, align 8
  %i.kx = icmp eq i16 %i.kw, 0
  %i.ky = load ptr, ptr %i.fq, align 8
  %.str.18..str.19 = select i1 %i.kx, ptr @.str.18, ptr @.str.19
  %i.kz = call ptr @wmem_strbuf_new(ptr noundef %i.ky, ptr noundef nonnull %.str.18..str.19) ; 2 uses
  %i.la = load i8, ptr %i.ha, align 8, !range !16, !noundef !17
  %i.lb = trunc nuw i8 %i.la to i1
  %i.lc = getelementptr i8, ptr %i.fx, i64 18
  %i.ld = load i16, ptr %i.lc, align 2            ; 2 uses
  %.not572 = icmp eq i16 %i.ld, 0
  %.str.21..str.20 = select i1 %.not572, ptr @.str.21, ptr @.str.20
  %i.le = icmp ugt i16 %i.ld, 4
  %.str.20..str.21 = select i1 %i.le, ptr @.str.20, ptr @.str.21
  %.str.20.sink = select i1 %i.lb, ptr %.str.20..str.21, ptr %.str.21..str.20
  call void @wmem_strbuf_append(ptr noundef %i.kz, ptr noundef nonnull %.str.20.sink)
  %i.lf = call ptr @wmem_file_scope()
  %i.lg = call ptr @wmem_strbuf_get_str(ptr noundef %i.kz)
  %i.lh = call noalias ptr @wmem_strdup(ptr noundef %i.lf, ptr noundef %i.lg) ; 2 uses
  %i.li = getelementptr i8, ptr %i.fx, i64 96
  store ptr %i.lh, ptr %i.li, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %._crit_edge736, %bb.bw
  %i.lj = phi ptr [ %.pre, %._crit_edge736 ], [ %i.lh, %bb.bw ]
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gc, ptr noundef nonnull @.str.22, ptr noundef %i.lj)
  %i.lk = load i8, ptr %i.ha, align 8, !range !16, !noundef !17
  %i.ll = trunc nuw i8 %i.lk to i1
  %i.lm = load i8, ptr @pnio_ps_selection, align 1, !range !16
  %i.ln = trunc nuw i8 %i.lm to i1
  %or.cond576 = select i1 %i.ll, i1 %i.ln, i1 false
  br i1 %or.cond576, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gc, ptr noundef nonnull @.str.23)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.lo = getelementptr i8, ptr %i.fx, i64 18
  %i.lp = load i16, ptr %i.lo, align 2
  %i.lq = add i16 %i.lp, %.1485681
  %i.lr = load i8, ptr %i.jw, align 1, !range !16, !noundef !17
  %i.ls = xor i8 %i.lr, 1
  %i.lt = zext nneg i8 %i.ls to i16
  %spec.select = add i16 %i.lq, %i.lt
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.lr.ph684
  %.5501 = phi i32 [ %.1497680, %.lr.ph684 ], [ %.4500, %bb.bz ] ; 2 uses
  %.2486 = phi i16 [ %.1485681, %.lr.ph684 ], [ %spec.select, %bb.bz ] ; 2 uses
  %.4 = phi i8 [ %.1475682, %.lr.ph684 ], [ %.3477, %bb.bz ] ; 2 uses
  %i.lu = call ptr @wmem_list_frame_next(ptr noundef nonnull %.0459683) ; 2 uses
  %.not565 = icmp eq ptr %i.lu, null
  br i1 %.not565, label %._crit_edge, label %.lr.ph684, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.ca, %bb.av
  %.1497.lcssa = phi i32 [ %.0496692, %bb.av ], [ %.5501, %bb.ca ] ; 5 uses
  %.1485.lcssa = phi i16 [ %.0484693, %bb.av ], [ %.2486, %bb.ca ] ; 4 uses
  %.1475.lcssa = phi i8 [ %.0474694, %bb.av ], [ %.4, %bb.ca ]
  %i.lv = load ptr, ptr %i.fr, align 8
  %i.lw = call ptr @wmem_list_head(ptr noundef %i.lv) ; 2 uses
  %.not566687 = icmp eq ptr %i.lw, null
  br i1 %.not566687, label %.loopexit663, label %.lr.ph690

.lr.ph690:                                        ; preds = %._crit_edge, %bb.cd
  %.1460688 = phi ptr [ %i.mp, %bb.cd ], [ %i.lw, %._crit_edge ] ; 2 uses
  %i.lx = call ptr @wmem_list_frame_data(ptr noundef nonnull %.1460688) ; 3 uses
  %i.ly = getelementptr i8, ptr %i.lx, i64 4
  %i.lz = load i16, ptr %i.ly, align 2
  %i.ma = icmp eq i16 %i.lz, %.1485.lcssa
  br i1 %i.ma, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %.lr.ph690
  br i1 %.not.i601, label %dissect_PNIO_IOCS.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mb = getelementptr i8, ptr %i.lx, i64 2
  %i.mc = load i16, ptr %i.mb, align 2
  %i.md = load i16, ptr %i.lx, align 2
  %i.me = load i32, ptr @hf_pn_io_iocs, align 4
  %i.mf = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1497.lcssa) ; 2 uses
  %i.mg = load i32, ptr @ett_pn_io_ioxs, align 4
  %i.mh = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef nonnull %.0494, ptr noundef %0, i32 noundef %.1497.lcssa, i32 noundef %i.me, i32 noundef %i.mg, ptr noundef nonnull @ioxs_fields, i32 noundef -2147483648, i32 noundef 1)
  %i.mi = and i8 %i.mf, 1
  %.not13.i = icmp eq i8 %i.mi, 0
  %i.mj = select i1 %.not13.i, ptr @.str.63, ptr @.str.142
  %.not14.i = icmp sgt i8 %i.mf, -1
  %i.mk = select i1 %.not14.i, ptr @.str.144, ptr @.str.143
  %i.ml = zext i16 %i.md to i32
  %i.mm = zext i16 %i.mc to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.mh, ptr noundef nonnull @.str.145, ptr noundef nonnull %i.mj, ptr noundef nonnull %i.mk, i32 noundef %i.ml, i32 noundef %i.mm)
  br label %dissect_PNIO_IOCS.exit

dissect_PNIO_IOCS.exit:                           ; preds = %bb.cb, %bb.cc
  %i.mn = add i32 %.1497.lcssa, 1
  %i.mo = add i16 %.1485.lcssa, 1
  br label %.loopexit663

bb.cd:                                            ; preds = %.lr.ph690
  %i.mp = call ptr @wmem_list_frame_next(ptr noundef nonnull %.1460688) ; 2 uses
  %.not566 = icmp eq ptr %i.mp, null
  br i1 %.not566, label %.loopexit663, label %.lr.ph690, !llvm.loop !9

.loopexit663:                                     ; preds = %bb.cd, %._crit_edge, %dissect_PNIO_IOCS.exit
  %.7503 = phi i32 [ %i.mn, %dissect_PNIO_IOCS.exit ], [ %.1497.lcssa, %._crit_edge ], [ %.1497.lcssa, %bb.cd ] ; 2 uses
  %.4488 = phi i16 [ %i.mo, %dissect_PNIO_IOCS.exit ], [ %.1485.lcssa, %._crit_edge ], [ %.1485.lcssa, %bb.cd ]
  %.not564 = icmp eq i32 %i.fu, 0
  br i1 %.not564, label %._crit_edge696, label %bb.av, !llvm.loop !10

._crit_edge696:                                   ; preds = %.loopexit663, %.preheader664
  %.0496.lcssa = phi i32 [ %1, %.preheader664 ], [ %.7503, %.loopexit663 ] ; 2 uses
  %i.mq = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.0496.lcssa)
  %i.mr = call i32 @dissect_pn_user_data(ptr noundef %0, i32 noundef %.0496.lcssa, ptr noundef %2, ptr noundef %3, i32 noundef %i.mq, ptr noundef nonnull @.str.24)
  br label %.thread646

bb.ce:                                            ; preds = %bb.ad, %bb.ac
  %i.ms = getelementptr i8, ptr %.0461625, i64 22
  %i.mt = load i16, ptr %i.ms, align 2
  %i.mu = getelementptr i8, ptr %.0461625, i64 26
  %i.mv = load i16, ptr %i.mu, align 2
  %i.mw = zext i16 %i.mt to i32
  %i.mx = zext i16 %i.mv to i32
  %i.my = load i8, ptr @pnio_ps_selection, align 1, !range !16, !noundef !17
  %i.mz = trunc nuw i8 %i.my to i1
  %i.na = load i32, ptr @hf_pn_io_frame_info_type, align 4 ; 2 uses
  br i1 %i.mz, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.nb = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format_value(ptr noundef %.0494, i32 noundef %i.na, ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) ; 0 uses
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.nc = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format_value(ptr noundef %.0494, i32 noundef %i.na, ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) ; 0 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %i.nd = load ptr, ptr %.0461625, align 8        ; 3 uses
  %.not545 = icmp eq ptr %i.nd, null
  br i1 %.not545, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ne = load i32, ptr @hf_pn_io_frame_info_vendor, align 4
  %i.nf = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format_value(ptr noundef %.0494, i32 noundef %i.ne, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.nd, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.nd) ; 0 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.ng = getelementptr i8, ptr %.0461625, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8            ; 3 uses
  %.not546 = icmp eq ptr %i.nh, null
  br i1 %.not546, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ni = load i32, ptr @hf_pn_io_frame_info_nameofstation, align 4
  %i.nj = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format_value(ptr noundef %.0494, i32 noundef %i.ni, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.nh, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.nh) ; 0 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.nk = getelementptr i8, ptr %.0461625, i64 29
  %i.nl = load i8, ptr %i.nk, align 1, !range !16, !noundef !17
  %i.nm = trunc nuw i8 %i.nl to i1
  br i1 %i.nm, label %bb.cm, label %bb.ct

bb.cm:                                            ; preds = %bb.cl
  %i.nn = getelementptr i8, ptr %.0461625, i64 28
  %i.no = load i8, ptr %i.nn, align 4, !range !16, !noundef !17
  %i.np = trunc nuw i8 %i.no to i1
  %i.nq = getelementptr i8, ptr %.0461625, i64 32 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8            ; 2 uses
  %.not548 = icmp eq ptr %i.nr, null              ; 2 uses
  br i1 %i.np, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  br i1 %.not548, label %proto_item_set_generated.exit604, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ns = load i32, ptr @hf_pn_io_frame_info_gsd_found, align 4
  %i.nt = tail call ptr @proto_tree_add_string(ptr noundef %.0494, i32 noundef %i.ns, ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef nonnull %i.nr) ; 2 uses
  %.not.i602 = icmp eq ptr %i.nt, null
  br i1 %.not.i602, label %proto_item_set_generated.exit604, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nu = getelementptr i8, ptr %i.nt, i64 40
  %i.nv = load ptr, ptr %i.nu, align 8            ; 2 uses
  %.not5.i603 = icmp eq ptr %i.nv, null
  br i1 %.not5.i603, label %proto_item_set_generated.exit604, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.nw = getelementptr i8, ptr %i.nv, i64 28     ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 4
  %i.ny = or i32 %i.nx, 2
  store i32 %i.ny, ptr %i.nw, align 4
  br label %proto_item_set_generated.exit604

bb.cr:                                            ; preds = %bb.cm
  br i1 %.not548, label %proto_item_set_generated.exit604, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nz = load i32, ptr @hf_pn_io_frame_info_gsd_error, align 4
  %i.oa = tail call ptr @proto_tree_add_item(ptr noundef %.0494, i32 noundef %i.nz, ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0)
  %i.ob = load ptr, ptr %i.nq, align 8
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.oa, ptr noundef nonnull @.str.10, ptr noundef %i.ob)
  br label %proto_item_set_generated.exit604

bb.ct:                                            ; preds = %bb.cl
  %i.oc = load i32, ptr @hf_pn_io_frame_info_gsd_path, align 4
  %i.od = tail call ptr @proto_tree_add_item(ptr noundef %.0494, i32 noundef %i.oc, ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.od, ptr noundef nonnull @.str.11)
  br label %proto_item_set_generated.exit604

proto_item_set_generated.exit604:                 ; preds = %bb.cq, %bb.cp, %bb.co, %bb.ct, %bb.cr, %bb.cs, %bb.cn
  %i.oe = add nuw nsw i32 %i.mx, %i.mw            ; 4 uses
  %i.of = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %1)
  %i.og = icmp ugt i32 %i.oe, %i.of
  br i1 %i.og, label %bb.cu, label %.preheader

.preheader:                                       ; preds = %proto_item_set_generated.exit604
  %.not549718 = icmp eq i32 %i.oe, 0
  br i1 %.not549718, label %._crit_edge723, label %.lr.ph722

.lr.ph722:                                        ; preds = %.preheader
  %i.oh = getelementptr i8, ptr %.0461625, i64 64
  %i.oi = getelementptr i8, ptr %.0461625, i64 72
  %i.oj = getelementptr i8, ptr %2, i64 8
  %i.ok = getelementptr i8, ptr %2, i64 416
  %i.ol = getelementptr i8, ptr %.0461625, i64 48
  %.not.i619 = icmp eq ptr %.0494, null
  br label %bb.cv

bb.cu:                                            ; preds = %proto_item_set_generated.exit604
  %i.om = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %.0473, ptr noundef nonnull @ei_pn_io_too_many_data_objects, ptr noundef nonnull @.str.12, i32 noundef %i.oe) ; 0 uses
  %i.on = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %.thread646

bb.cv:                                            ; preds = %.lr.ph722, %.loopexit661
  %.in725 = phi i32 [ %i.oe, %.lr.ph722 ], [ %i.oo, %.loopexit661 ]
  %.6721 = phi i8 [ 0, %.lr.ph722 ], [ %.7.lcssa, %.loopexit661 ] ; 2 uses
  %.5489720 = phi i16 [ 0, %.lr.ph722 ], [ %.9493, %.loopexit661 ] ; 2 uses
  %.8504719 = phi i32 [ %1, %.lr.ph722 ], [ %.15, %.loopexit661 ] ; 2 uses
  %i.oo = add nsw i32 %.in725, -1                 ; 2 uses
  %i.op = load ptr, ptr %i.oh, align 8
  %i.oq = call ptr @wmem_list_head(ptr noundef %i.op) ; 2 uses
  %.not550703 = icmp eq ptr %i.oq, null
  br i1 %.not550703, label %._crit_edge710, label %.lr.ph709

.lr.ph709:                                        ; preds = %bb.cv, %bb.eb
  %.2707 = phi ptr [ %i.um, %bb.eb ], [ %i.oq, %bb.cv ] ; 2 uses
  %.7706 = phi i8 [ %.10, %bb.eb ], [ %.6721, %bb.cv ] ; 6 uses
  %.6490705 = phi i16 [ %.7491, %bb.eb ], [ %.5489720, %bb.cv ] ; 4 uses
  %.9505704 = phi i32 [ %.13, %bb.eb ], [ %.8504719, %bb.cv ] ; 9 uses
  %i.or = call ptr @wmem_list_frame_data(ptr noundef nonnull %.2707) ; 26 uses
  %.not552 = icmp eq ptr %i.or, null
  br i1 %.not552, label %bb.eb, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph709
  %i.os = getelementptr i8, ptr %i.or, i64 16
  %i.ot = load i16, ptr %i.os, align 8
  %i.ou = icmp eq i16 %i.ot, %.6490705
  br i1 %i.ou, label %bb.cx, label %bb.eb

bb.cx:                                            ; preds = %bb.cw
  %i.ov = load i32, ptr @hf_pn_io_io_data_object, align 4
  %i.ow = call ptr @proto_tree_add_item(ptr noundef %.0494, i32 noundef %i.ov, ptr noundef %0, i32 noundef %.9505704, i32 noundef 0, i32 noundef 0) ; 5 uses
  %i.ox = load i32, ptr @ett_pn_io_io_data_object, align 4
  %i.oy = call ptr @proto_item_add_subtree(ptr noundef %i.ow, i32 noundef %i.ox) ; 15 uses
  %i.oz = load ptr, ptr %i.oi, align 8
  %i.pa = call ptr @wmem_list_head(ptr noundef %i.oz) ; 2 uses
  %.not553699 = icmp eq ptr %i.pa, null
  br i1 %.not553699, label %.loopexit, label %.lr.ph702

.lr.ph702:                                        ; preds = %bb.cx
  %i.pb = getelementptr i8, ptr %i.or, i64 8      ; 2 uses
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph702, %bb.da
  %.1700 = phi ptr [ %i.pa, %.lr.ph702 ], [ %i.pl, %bb.da ] ; 2 uses
  %i.pc = call ptr @wmem_list_frame_data(ptr noundef nonnull %.1700) ; 2 uses
  %i.pd = load i32, ptr %i.pb, align 8
  %i.pe = getelementptr i8, ptr %i.pc, i64 4
  %i.pf = load i32, ptr %i.pe, align 4
  %.not554 = icmp eq i32 %i.pd, %i.pf
  br i1 %.not554, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pg = getelementptr i8, ptr %i.pc, i64 4
  %i.ph = load i32, ptr @hf_pn_io_io_data_object_info_module_diff, align 4
  %i.pi = call ptr @proto_tree_add_item(ptr noundef %i.oy, i32 noundef %i.ph, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %i.pj = load i32, ptr %i.pg, align 4
  %i.pk = load i32, ptr %i.pb, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.pi, ptr noundef nonnull @.str.13, i32 noundef %i.pj, i32 noundef %i.pk)
  br label %.loopexit

bb.da:                                            ; preds = %bb.cy
  %i.pl = call ptr @wmem_list_frame_next(ptr noundef nonnull %.1700) ; 2 uses
  %.not553 = icmp eq ptr %i.pl, null
  br i1 %.not553, label %.loopexit, label %bb.cy, !llvm.loop !11

.loopexit:                                        ; preds = %bb.da, %bb.cx, %bb.cz
  %i.pm = load i32, ptr @hf_pn_io_io_data_object_info_moduleidentnumber, align 4
  %i.pn = getelementptr i8, ptr %i.or, i64 8
  %i.po = load i32, ptr %i.pn, align 8
  %i.pp = call ptr @proto_tree_add_uint(ptr noundef %i.oy, i32 noundef %i.pm, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.po) ; 0 uses
  %i.pq = load i32, ptr @hf_pn_io_io_data_object_info_submoduleidentnumber, align 4
  %i.pr = getelementptr i8, ptr %i.or, i64 12
  %i.ps = load i32, ptr %i.pr, align 4
  %i.pt = call ptr @proto_tree_add_uint(ptr noundef %i.oy, i32 noundef %i.pq, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ps) ; 0 uses
  %i.pu = getelementptr i8, ptr %i.or, i64 88     ; 3 uses
  %i.pv = load i8, ptr %i.pu, align 8, !range !16, !noundef !17
  %i.pw = trunc nuw i8 %i.pv to i1
  %i.px = load i8, ptr @pnio_ps_selection, align 1, !range !16
  %i.py = trunc nuw i8 %i.px to i1
  %or.cond578 = select i1 %i.pw, i1 %i.py, i1 false
  br i1 %or.cond578, label %bb.db, label %bb.dp

bb.db:                                            ; preds = %.loopexit
  %i.pz = icmp eq i8 %.7706, 0
  br i1 %i.pz, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.qa = load ptr, ptr %i.oj, align 8
  call void @col_append_str(ptr noundef %i.qa, i32 noundef 25, ptr noundef nonnull @.str.14)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.8 = phi i8 [ 1, %bb.dc ], [ %.7706, %bb.db ]
  %i.qb = load i32, ptr @hf_pn_io_ps_f_dest_adr, align 4
  %i.qc = getelementptr i8, ptr %i.or, i64 32
  %i.qd = load i16, ptr %i.qc, align 8
  %i.qe = zext i16 %i.qd to i32
  %i.qf = call ptr @proto_tree_add_uint(ptr noundef %i.oy, i32 noundef %i.qb, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.qe) ; 0 uses
  %i.qg = getelementptr i8, ptr %i.or, i64 35     ; 2 uses
  %i.qh = load i8, ptr %i.qg, align 1             ; 2 uses
  %.not555 = icmp eq i8 %i.qh, 0
  br i1 %.not555, label %.thread658, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.qi = getelementptr i8, ptr %i.or, i64 18
  %i.qj = load i16, ptr %i.qi, align 2            ; 2 uses
  %i.qk = add i8 %i.qh, 1                         ; 3 uses
  %i.ql = zext i8 %i.qk to i16
  %i.qm = icmp ugt i16 %i.qj, %i.ql
  br i1 %i.qm, label %bb.df, label %.thread658

bb.df:                                            ; preds = %bb.de
  %i.qn = trunc i16 %i.qj to i8                   ; 2 uses
  %.not556 = icmp eq i8 %i.qk, %i.qn
  br i1 %.not556, label %.thread658, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.qo = sub i8 %i.qn, %i.qk
  %i.qp = load i32, ptr @hf_pn_io_ps_f_data, align 4
  %i.qq = call fastcc i32 @dissect_pn_io_ps_uint(ptr noundef %0, i32 noundef %.9505704, ptr noundef %2, ptr noundef %i.oy, ptr noundef %4, i32 noundef %i.qp, i8 noundef zeroext %i.qo, ptr noundef nonnull %i.a)
  br label %.thread658

.thread658:                                       ; preds = %bb.dd, %bb.de, %bb.dg, %bb.df
  %.10506 = phi i32 [ %i.qq, %bb.dg ], [ %.9505704, %bb.df ], [ %.9505704, %bb.de ], [ %.9505704, %bb.dd ] ; 7 uses
  %i.qr = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.10506) ; 2 uses
  %i.qs = and i8 %i.qr, 32                        ; 3 uses
  %i.qt = getelementptr i8, ptr %i.or, i64 121    ; 2 uses
  %i.qu = load i8, ptr %i.qt, align 1
  %.not557 = icmp eq i8 %i.qu, %i.qs
  br i1 %.not557, label %proto_item_set_hidden.exit613, label %bb.dh

bb.dh:                                            ; preds = %.thread658
  %i.qv = zext nneg i8 %i.qs to i32
  %i.qw = load i32, ptr @hf_pn_io_ps_cb_toggelBitChanged, align 4
  %i.qx = call ptr @proto_tree_add_uint(ptr noundef %i.oy, i32 noundef %i.qw, ptr noundef %0, i32 noundef %.10506, i32 noundef 0, i32 noundef %i.qv) ; 2 uses
  %.not.i605 = icmp eq ptr %i.qx, null
  br i1 %.not.i605, label %proto_item_set_hidden.exit607, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.qy = getelementptr i8, ptr %i.qx, i64 40
  %i.qz = load ptr, ptr %i.qy, align 8            ; 2 uses
  %.not5.i606 = icmp eq ptr %i.qz, null
  br i1 %.not5.i606, label %proto_item_set_hidden.exit607, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ra = getelementptr i8, ptr %i.qz, i64 28     ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4
  %i.rc = or i32 %i.rb, 1
  store i32 %i.rc, ptr %i.ra, align 4
  br label %proto_item_set_hidden.exit607

proto_item_set_hidden.exit607:                    ; preds = %bb.dh, %bb.di, %bb.dj
  %i.rd = load i32, ptr @hf_pn_io_ps_cb_toggelBitChange_slot_nr, align 4
  %i.re = load i16, ptr %i.or, align 8
  %i.rf = zext i16 %i.re to i32
  %i.rg = call ptr @proto_tree_add_uint(ptr noundef %i.oy, i32 noundef %i.rd, ptr noundef %0, i32 noundef %.10506, i32 noundef 0, i32 noundef %i.rf) ; 2 uses
  %.not.i608 = icmp eq ptr %i.rg, null
  br i1 %.not.i608, label %proto_item_set_hidden.exit610, label %bb.dk

bb.dk:                                            ; preds = %proto_item_set_hidden.exit607
  %i.rh = getelementptr i8, ptr %i.rg, i64 40
  %i.ri = load ptr, ptr %i.rh, align 8            ; 2 uses
  %.not5.i609 = icmp eq ptr %i.ri, null
  br i1 %.not5.i609, label %proto_item_set_hidden.exit610, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.rj = getelementptr i8, ptr %i.ri, i64 28     ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 4
  %i.rl = or i32 %i.rk, 1
  store i32 %i.rl, ptr %i.rj, align 4
  br label %proto_item_set_hidden.exit610

proto_item_set_hidden.exit610:                    ; preds = %proto_item_set_hidden.exit607, %bb.dk, %bb.dl
  %i.rm = load i32, ptr @hf_pn_io_ps_cb_toggelBitChange_subslot_nr, align 4
  %i.rn = getelementptr i8, ptr %i.or, i64 2
  %i.ro = load i16, ptr %i.rn, align 2
  %i.rp = zext i16 %i.ro to i32
  %i.rq = call ptr @proto_tree_add_uint(ptr noundef %i.oy, i32 noundef %i.rm, ptr noundef %0, i32 noundef %.10506, i32 noundef 0, i32 noundef %i.rp) ; 2 uses
  %.not.i611 = icmp eq ptr %i.rq, null
  br i1 %.not.i611, label %proto_item_set_hidden.exit613, label %bb.dm

bb.dm:                                            ; preds = %proto_item_set_hidden.exit610
  %i.rr = getelementptr i8, ptr %i.rq, i64 40
  %i.rs = load ptr, ptr %i.rr, align 8            ; 2 uses
  %.not5.i612 = icmp eq ptr %i.rs, null
  br i1 %.not5.i612, label %proto_item_set_hidden.exit613, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.rt = getelementptr i8, ptr %i.rs, i64 28     ; 2 uses
  %i.ru = load i32, ptr %i.rt, align 4
  %i.rv = or i32 %i.ru, 1
  store i32 %i.rv, ptr %i.rt, align 4
  br label %proto_item_set_hidden.exit613

proto_item_set_hidden.exit613:                    ; preds = %bb.dn, %bb.dm, %proto_item_set_hidden.exit610, %.thread658
  %.not.i614 = icmp eq ptr %i.oy, null
  br i1 %.not.i614, label %dissect_pn_io_ps_CB.exit, label %bb.do

bb.do:                                            ; preds = %proto_item_set_hidden.exit613
  %i.rw = load i32, ptr @hf_pn_io_ps_cb, align 4
  %i.rx = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.10506)
  %i.ry = load i32, ptr @ett_pn_io_ioxs, align 4
  %i.rz = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef nonnull %i.oy, ptr noundef %0, i32 noundef %.10506, i32 noundef %i.rw, i32 noundef %i.ry, ptr noundef nonnull @ps_cb_fields, i32 noundef -2147483648, i32 noundef 1)
  %switch.and.i = and i8 %i.rx, 95
  %switch.selectcmp.i = icmp eq i8 %switch.and.i, 0
  %i.sa = select i1 %switch.selectcmp.i, ptr @.str.139, ptr @.str.140
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.rz, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.sa)
  br label %dissect_pn_io_ps_CB.exit

dissect_pn_io_ps_CB.exit:                         ; preds = %proto_item_set_hidden.exit613, %bb.do
  %i.sb = add i32 %.10506, 1
  %i.sc = load i8, ptr %i.qg, align 1
  %i.sd = zext i8 %i.sc to i32
  %i.se = call i32 @dissect_pn_user_data(ptr noundef %0, i32 noundef %i.sb, ptr noundef %2, ptr noundef %i.oy, i32 noundef %i.sd, ptr noundef nonnull @.str.15)
  %i.sf = getelementptr i8, ptr %i.or, i64 120
  store i8 %i.qr, ptr %i.sf, align 8
  store i8 %i.qs, ptr %i.qt, align 1
  br label %bb.ds

bb.dp:                                            ; preds = %.loopexit
  %i.sg = getelementptr i8, ptr %i.or, i64 4
  %i.sh = load i32, ptr %i.sg, align 4
  %i.si = icmp eq i32 %i.sh, 38656
  %i.sj = getelementptr i8, ptr %i.or, i64 18
  %i.sk = load i16, ptr %i.sj, align 2
  %i.sl = zext i16 %i.sk to i32                   ; 2 uses
  br i1 %i.si, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.sm = call i32 @dissect_pn_pa_profile_data(ptr noundef %0, i32 noundef %.9505704, ptr noundef %2, ptr noundef %i.oy, i32 noundef %i.sl, ptr nonnull poison)
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  %i.sn = call i32 @dissect_pn_user_data(ptr noundef %0, i32 noundef %.9505704, ptr noundef %2, ptr noundef %i.oy, i32 noundef %i.sl, ptr noundef nonnull @.str.16)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dq, %bb.dr, %dissect_pn_io_ps_CB.exit
  %.11507 = phi i32 [ %i.se, %dissect_pn_io_ps_CB.exit ], [ %i.sm, %bb.dq ], [ %i.sn, %bb.dr ] ; 4 uses
  %.9 = phi i8 [ %.8, %dissect_pn_io_ps_CB.exit ], [ %.7706, %bb.dq ], [ %.7706, %bb.dr ]
  %i.so = getelementptr i8, ptr %i.or, i64 89     ; 2 uses
  %i.sp = load i8, ptr %i.so, align 1, !range !16, !noundef !17
  %i.sq = icmp eq i8 %i.sp, 0
  br i1 %i.sq, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %.not.i615 = icmp eq ptr %i.oy, null
  br i1 %.not.i615, label %dissect_PNIO_IOxS.exit618, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.sr = load i32, ptr @hf_pn_io_iops, align 4
  %i.ss = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.11507) ; 2 uses
  %i.st = load i32, ptr @ett_pn_io_ioxs, align 4
  %i.su = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef nonnull %i.oy, ptr noundef %0, i32 noundef %.11507, i32 noundef %i.sr, i32 noundef %i.st, ptr noundef nonnull @ioxs_fields, i32 noundef -2147483648, i32 noundef 1)
  %i.sv = and i8 %i.ss, 1
  %.not11.i616 = icmp eq i8 %i.sv, 0
  %i.sw = select i1 %.not11.i616, ptr @.str.63, ptr @.str.142
  %.not12.i617 = icmp sgt i8 %i.ss, -1
  %i.sx = select i1 %.not12.i617, ptr @.str.144, ptr @.str.143
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.su, ptr noundef nonnull @.str.141, ptr noundef nonnull %i.sw, ptr noundef nonnull %i.sx)
  br label %dissect_PNIO_IOxS.exit618

dissect_PNIO_IOxS.exit618:                        ; preds = %bb.dt, %bb.du
  %i.sy = add i32 %.11507, 1
  %i.sz = getelementptr i8, ptr %i.or, i64 18
  %i.ta = load i16, ptr %i.sz, align 2
  %i.tb = zext i16 %i.ta to i32
  %i.tc = add nuw nsw i32 %i.tb, 1
  br label %bb.dw

bb.dv:                                            ; preds = %bb.ds
  %i.td = getelementptr i8, ptr %i.or, i64 18
  %i.te = load i16, ptr %i.td, align 2
  %i.tf = zext i16 %i.te to i32
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %dissect_PNIO_IOxS.exit618
  %.sink819 = phi i32 [ %i.tf, %bb.dv ], [ %i.tc, %dissect_PNIO_IOxS.exit618 ]
  %.12 = phi i32 [ %.11507, %bb.dv ], [ %i.sy, %dissect_PNIO_IOxS.exit618 ]
  call void @proto_item_set_len(ptr noundef %i.ow, i32 noundef %.sink819)
  %i.tg = load i16, ptr %i.or, align 8
  %i.th = zext i16 %i.tg to i32
  %i.ti = getelementptr i8, ptr %i.or, i64 2
  %i.tj = load i16, ptr %i.ti, align 2
  %i.tk = zext i16 %i.tj to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ow, ptr noundef nonnull @.str.17, i32 noundef %i.th, i32 noundef %i.tk)
  %i.tl = getelementptr i8, ptr %i.or, i64 20
  %i.tm = load i16, ptr %i.tl, align 4
  %i.tn = icmp ugt i16 %i.tm, 1
  br i1 %i.tn, label %bb.dx, label %._crit_edge737

._crit_edge737:                                   ; preds = %bb.dw
  %.phi.trans.insert738 = getelementptr i8, ptr %i.or, i64 96
  %.pre739 = load ptr, ptr %.phi.trans.insert738, align 8
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.to = load i16, ptr %i.or, align 8
  %i.tp = icmp eq i16 %i.to, 0
  %i.tq = load ptr, ptr %i.ok, align 8
  %.str.18..str.19821 = select i1 %i.tp, ptr @.str.18, ptr @.str.19
  %i.tr = call ptr @wmem_strbuf_new(ptr noundef %i.tq, ptr noundef nonnull %.str.18..str.19821) ; 2 uses
  %i.ts = load i8, ptr %i.pu, align 8, !range !16, !noundef !17
  %i.tt = trunc nuw i8 %i.ts to i1
  %i.tu = getelementptr i8, ptr %i.or, i64 18
  %i.tv = load i16, ptr %i.tu, align 2            ; 2 uses
  %.not558 = icmp eq i16 %i.tv, 0
  %.str.20..str.21823 = select i1 %.not558, ptr @.str.20, ptr @.str.21
  %i.tw = icmp ugt i16 %i.tv, 4
  %.str.21..str.20822 = select i1 %i.tw, ptr @.str.21, ptr @.str.20
  %.str.21.sink = select i1 %i.tt, ptr %.str.21..str.20822, ptr %.str.20..str.21823
  call void @wmem_strbuf_append(ptr noundef %i.tr, ptr noundef nonnull %.str.21.sink)
  %i.tx = call ptr @wmem_file_scope()
  %i.ty = call ptr @wmem_strbuf_get_str(ptr noundef %i.tr)
  %i.tz = call noalias ptr @wmem_strdup(ptr noundef %i.tx, ptr noundef %i.ty) ; 2 uses
  %i.ua = getelementptr i8, ptr %i.or, i64 96
  store ptr %i.tz, ptr %i.ua, align 8
  br label %bb.dy

bb.dy:                                            ; preds = %._crit_edge737, %bb.dx
  %i.ub = phi ptr [ %.pre739, %._crit_edge737 ], [ %i.tz, %bb.dx ]
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ow, ptr noundef nonnull @.str.22, ptr noundef %i.ub)
  %i.uc = load i8, ptr %i.pu, align 8, !range !16, !noundef !17
  %i.ud = trunc nuw i8 %i.uc to i1
  %i.ue = load i8, ptr @pnio_ps_selection, align 1, !range !16
  %i.uf = trunc nuw i8 %i.ue to i1
  %or.cond580 = select i1 %i.ud, i1 %i.uf, i1 false
  br i1 %or.cond580, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ow, ptr noundef nonnull @.str.23)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.ug = getelementptr i8, ptr %i.or, i64 18
  %i.uh = load i16, ptr %i.ug, align 2
  %i.ui = add i16 %i.uh, %.6490705
  %i.uj = load i8, ptr %i.so, align 1, !range !16, !noundef !17
  %i.uk = xor i8 %i.uj, 1
  %i.ul = zext nneg i8 %i.uk to i16
  %spec.select581 = add i16 %i.ui, %i.ul
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %.lr.ph709, %bb.cw
  %.13 = phi i32 [ %.9505704, %.lr.ph709 ], [ %.12, %bb.ea ], [ %.9505704, %bb.cw ] ; 2 uses
  %.7491 = phi i16 [ %.6490705, %.lr.ph709 ], [ %spec.select581, %bb.ea ], [ %.6490705, %bb.cw ] ; 2 uses
  %.10 = phi i8 [ %.7706, %.lr.ph709 ], [ %.9, %bb.ea ], [ %.7706, %bb.cw ] ; 2 uses
  %i.um = call ptr @wmem_list_frame_next(ptr noundef nonnull %.2707) ; 2 uses
  %.not550 = icmp eq ptr %i.um, null
  br i1 %.not550, label %._crit_edge710, label %.lr.ph709, !llvm.loop !12

._crit_edge710:                                   ; preds = %bb.eb, %bb.cv
  %.9505.lcssa = phi i32 [ %.8504719, %bb.cv ], [ %.13, %bb.eb ] ; 5 uses
  %.6490.lcssa = phi i16 [ %.5489720, %bb.cv ], [ %.7491, %bb.eb ] ; 4 uses
  %.7.lcssa = phi i8 [ %.6721, %bb.cv ], [ %.10, %bb.eb ]
  %i.un = load ptr, ptr %i.ol, align 8
  %i.uo = call ptr @wmem_list_head(ptr noundef %i.un) ; 2 uses
  %.not551714 = icmp eq ptr %i.uo, null
  br i1 %.not551714, label %.loopexit661, label %.lr.ph717

.lr.ph717:                                        ; preds = %._crit_edge710, %bb.ee
  %.3715 = phi ptr [ %i.vh, %bb.ee ], [ %i.uo, %._crit_edge710 ] ; 2 uses
  %i.up = call ptr @wmem_list_frame_data(ptr noundef nonnull %.3715) ; 3 uses
  %i.uq = getelementptr i8, ptr %i.up, i64 4
  %i.ur = load i16, ptr %i.uq, align 2
  %i.us = icmp eq i16 %i.ur, %.6490.lcssa
  br i1 %i.us, label %bb.ec, label %bb.ee

bb.ec:                                            ; preds = %.lr.ph717
  br i1 %.not.i619, label %dissect_PNIO_IOCS.exit622, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ut = getelementptr i8, ptr %i.up, i64 2
  %i.uu = load i16, ptr %i.ut, align 2
  %i.uv = load i16, ptr %i.up, align 2
  %i.uw = load i32, ptr @hf_pn_io_iocs, align 4
  %i.ux = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.9505.lcssa) ; 2 uses
  %i.uy = load i32, ptr @ett_pn_io_ioxs, align 4
  %i.uz = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef nonnull %.0494, ptr noundef %0, i32 noundef %.9505.lcssa, i32 noundef %i.uw, i32 noundef %i.uy, ptr noundef nonnull @ioxs_fields, i32 noundef -2147483648, i32 noundef 1)
  %i.va = and i8 %i.ux, 1
  %.not13.i620 = icmp eq i8 %i.va, 0
  %i.vb = select i1 %.not13.i620, ptr @.str.63, ptr @.str.142
  %.not14.i621 = icmp sgt i8 %i.ux, -1
  %i.vc = select i1 %.not14.i621, ptr @.str.144, ptr @.str.143
  %i.vd = zext i16 %i.uv to i32
  %i.ve = zext i16 %i.uu to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.uz, ptr noundef nonnull @.str.145, ptr noundef nonnull %i.vb, ptr noundef nonnull %i.vc, i32 noundef %i.vd, i32 noundef %i.ve)
  br label %dissect_PNIO_IOCS.exit622

dissect_PNIO_IOCS.exit622:                        ; preds = %bb.ec, %bb.ed
  %i.vf = add i32 %.9505.lcssa, 1
  %i.vg = add i16 %.6490.lcssa, 1
  br label %.loopexit661

bb.ee:                                            ; preds = %.lr.ph717
  %i.vh = call ptr @wmem_list_frame_next(ptr noundef nonnull %.3715) ; 2 uses
  %.not551 = icmp eq ptr %i.vh, null
  br i1 %.not551, label %.loopexit661, label %.lr.ph717, !llvm.loop !13

.loopexit661:                                     ; preds = %bb.ee, %._crit_edge710, %dissect_PNIO_IOCS.exit622
  %.15 = phi i32 [ %i.vf, %dissect_PNIO_IOCS.exit622 ], [ %.9505.lcssa, %._crit_edge710 ], [ %.9505.lcssa, %bb.ee ] ; 2 uses
  %.9493 = phi i16 [ %i.vg, %dissect_PNIO_IOCS.exit622 ], [ %.6490.lcssa, %._crit_edge710 ], [ %.6490.lcssa, %bb.ee ]
  %.not549 = icmp eq i32 %i.oo, 0
  br i1 %.not549, label %._crit_edge723, label %bb.cv, !llvm.loop !14

._crit_edge723:                                   ; preds = %.loopexit661, %.preheader
  %.8504.lcssa = phi i32 [ %1, %.preheader ], [ %.15, %.loopexit661 ] ; 2 uses
  %i.vi = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.8504.lcssa)
  %i.vj = call i32 @dissect_pn_user_data(ptr noundef %0, i32 noundef %.8504.lcssa, ptr noundef %2, ptr noundef %3, i32 noundef %i.vi, ptr noundef nonnull @.str.24)
  br label %.thread646

.thread646:                                       ; preds = %bb.f, %bb.n, %addresses_equal.exit587, %._crit_edge696, %._crit_edge723, %bb.cu, %bb.au, %bb.e, %bb.c
  %.0495 = phi i32 [ %i.q, %bb.c ], [ %i.ft, %bb.au ], [ %i.y, %bb.e ], [ %i.on, %bb.cu ], [ %i.mr, %._crit_edge696 ], [ %i.vj, %._crit_edge723 ], [ %1, %addresses_equal.exit587 ], [ %1, %bb.n ], [ %1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0495
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @pn_is_valid_security_metadata(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dissect_CSF_SDU_heur(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2
end_hunk_0
