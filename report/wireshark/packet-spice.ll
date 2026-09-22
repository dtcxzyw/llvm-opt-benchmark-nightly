Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-spice?download=true
inline.NumInlined: 63
inline.NumDeleted: 44
begin_hunk_0_@dissect_spice:bb.a
  %.not548 = icmp eq i32 %i.ba, 0
  br i1 %.not548, label %.loopexit, label %.lr.ph537

.lr.ph537:                                        ; preds = %.preheader492
  %i.bb = getelementptr i8, ptr %.0441, i64 24    ; 2 uses
  br label %bb.bg

.preheader:                                       ; preds = %bb.e
  %i.bc = tail call i32 @tvb_reported_length(ptr noundef %0)
  %.not550 = icmp eq i32 %i.bc, 0
  br i1 %.not550, label %.loopexit, label %.lr.ph544

.lr.ph544:                                        ; preds = %.preheader
  %i.bd = getelementptr i8, ptr %.0441, i64 24    ; 2 uses
  br label %bb.af

bb.f:                                             ; preds = %bb.e
  %i.be = tail call i32 @tvb_reported_length(ptr noundef %0) ; 6 uses
  %i.bf = icmp ult i32 %i.be, 16
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr i8, ptr %1, i64 340
  store i32 0, ptr %i.bg, align 4
  %i.bh = sub nuw nsw i32 16, %i.be
  %i.bi = getelementptr i8, ptr %1, i64 344
  store i32 %i.bh, ptr %i.bi, align 8
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.bj = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 12)
  %i.bk = add i32 %i.bj, 16                       ; 4 uses
  %i.bl = icmp ult i32 %i.be, %i.bk
  br i1 %i.bl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr i8, ptr %1, i64 340
  store i32 0, ptr %i.bm, align 4
  %i.bn = sub nuw i32 %i.bk, %i.be
  %i.bo = getelementptr i8, ptr %1, i64 344
  store i32 %i.bn, ptr %i.bo, align 8
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  tail call void @proto_item_set_len(ptr noundef %i.aq, i32 noundef %i.bk)
  tail call fastcc void @dissect_spice_link_client_pdu(ptr noundef %0, ptr noundef %1, ptr noundef %i.as, ptr noundef %.0441)
  %i.bp = load ptr, ptr %i.af, align 8
  %i.bq = load i8, ptr %i.ah, align 2
  %i.br = zext i8 %i.bq to i32
  %i.bs = tail call ptr @val_to_str_const(i32 noundef %i.br, ptr noundef nonnull @channel_types_vs, ptr noundef nonnull @.str.728)
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.bp, i32 noundef 35, ptr noundef nonnull @.str.727, ptr noundef %i.bs)
  %i.bt = getelementptr i8, ptr %.0441, i64 24
  store i32 1, ptr %i.bt, align 4
  br label %.loopexit

bb.k:                                             ; preds = %bb.e
  %i.bu = tail call i32 @tvb_reported_length(ptr noundef %0) ; 6 uses
  %i.bv = icmp ult i32 %i.bu, 16
  br i1 %i.bv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr i8, ptr %1, i64 340
  store i32 0, ptr %i.bw, align 4
  %i.bx = sub nuw nsw i32 16, %i.bu
  %i.by = getelementptr i8, ptr %1, i64 344
  store i32 %i.bx, ptr %i.by, align 8
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.bz = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 12)
  %i.ca = add i32 %i.bz, 16                       ; 5 uses
  %i.cb = icmp ult i32 %i.bu, %i.ca
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr i8, ptr %1, i64 340
  store i32 0, ptr %i.cc, align 4
  %i.cd = sub nuw i32 %i.ca, %i.bu
  %i.ce = getelementptr i8, ptr %1, i64 344
  store i32 %i.cd, ptr %i.ce, align 8
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  tail call void @proto_item_set_len(ptr noundef %i.aq, i32 noundef %i.ca)
  tail call fastcc void @dissect_spice_link_server_pdu(ptr noundef %0, ptr noundef %1, ptr noundef %i.as, ptr noundef %.0441)
  %i.cf = getelementptr i8, ptr %.0441, i64 16
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = and i32 %i.cg, 1
  %.not490 = icmp eq i32 %i.ch, 0
  br i1 %.not490, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = getelementptr i8, ptr %.0441, i64 12
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = and i32 %i.cj, 1
  %.not491 = icmp eq i32 %i.ck, 0
  br i1 %.not491, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cl = getelementptr i8, ptr %.0441, i64 24
  store i32 2, ptr %i.cl, align 4
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.cm = getelementptr i8, ptr %.0441, i64 24
  store i32 4, ptr %i.cm, align 4
  br label %.loopexit

bb.s:                                             ; preds = %bb.e
  %i.cn = getelementptr i8, ptr %.0441, i64 8
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = getelementptr i8, ptr %1, i64 292
  %i.cq = load i32, ptr %i.cp, align 4
  %.not489 = icmp eq i32 %i.co, %i.cq
  br i1 %.not489, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.aq, ptr noundef nonnull @ei_spice_expected_from_client) ; 0 uses
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  %i.cs = tail call i32 @tvb_reported_length(ptr noundef %0) ; 3 uses
  %i.ct = icmp ult i32 %i.cs, 4
  br i1 %i.ct, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr i8, ptr %1, i64 340
  store i32 0, ptr %i.cu, align 4
  %i.cv = sub nuw nsw i32 4, %i.cs
  %i.cw = getelementptr i8, ptr %1, i64 344
  store i32 %i.cv, ptr %i.cw, align 8
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  tail call void @proto_item_set_len(ptr noundef %i.aq, i32 noundef 4)
  %i.cx = load i32, ptr @hf_auth_select_client, align 4
  %i.cy = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.cx, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef -2147483648)
  %i.cz = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.da = getelementptr i8, ptr %.0441, i64 20
  store i32 %i.cz, ptr %i.da, align 4
  switch i32 %i.cz, label %bb.z [
    i32 1, label %bb.x
    i32 2, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.db = getelementptr i8, ptr %.0441, i64 24
  store i32 2, ptr %i.db, align 4
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.dc = getelementptr i8, ptr %.0441, i64 24
  store i32 5, ptr %i.dc, align 4
  br label %.loopexit

bb.z:                                             ; preds = %bb.w
  %i.dd = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.cy, ptr noundef nonnull @ei_spice_auth_unknown) ; 0 uses
  br label %.loopexit

bb.aa:                                            ; preds = %bb.e
  %i.de = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0) ; 6 uses
  %i.df = icmp ult i32 %i.de, 4
  br i1 %i.df, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dg = getelementptr i8, ptr %1, i64 340
  store i32 0, ptr %i.dg, align 4
  %i.dh = sub nuw nsw i32 4, %i.de
  %i.di = getelementptr i8, ptr %1, i64 344
  store i32 %i.dh, ptr %i.di, align 8
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %i.dj = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 0) ; 3 uses
  tail call void @proto_item_set_len(ptr noundef %i.aq, i32 noundef 4)
  %i.dk = load i32, ptr @hf_spice_sasl_message_length, align 4
  %i.dl = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.dk, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.dm = add i32 %i.dj, 4                        ; 4 uses
  %i.dn = icmp ult i32 %i.de, %i.dm
  br i1 %i.dn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.do = getelementptr i8, ptr %1, i64 340
  store i32 0, ptr %i.do, align 4
  %i.dp = sub nuw i32 %i.dm, %i.de
  %i.dq = getelementptr i8, ptr %1, i64 344
  store i32 %i.dp, ptr %i.dq, align 8
  br label %.loopexit

bb.ae:                                            ; preds = %bb.ac
  tail call void @proto_item_set_len(ptr noundef %i.aq, i32 noundef %i.dm)
  %i.dr = load i32, ptr @hf_spice_supported_authentication_mechanisms_list_length, align 4
  %i.ds = tail call ptr @proto_tree_add_uint(ptr noundef %i.as, i32 noundef %i.dr, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef %i.dj) ; 0 uses
  %i.dt = load i32, ptr @hf_spice_supported_authentication_mechanisms_list, align 4
  %i.du = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.dt, ptr noundef %0, i32 noundef 4, i32 noundef %i.dj, i32 noundef 0) ; 0 uses
  %i.dv = getelementptr i8, ptr %.0441, i64 24
  store i32 6, ptr %i.dv, align 4
  br label %.loopexit

bb.af:                                            ; preds = %.lr.ph544, %bb.ap
  %.0543 = phi i8 [ 0, %.lr.ph544 ], [ %.2, %bb.ap ] ; 2 uses
  %.0429542 = phi i32 [ 0, %.lr.ph544 ], [ %.2431, %bb.ap ] ; 9 uses
  %i.dw = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0429542) ; 6 uses
  %i.dx = icmp ult i32 %i.dw, 4
  br i1 %i.dx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dy = getelementptr i8, ptr %1, i64 340
  store i32 %.0429542, ptr %i.dy, align 4
  %i.dz = sub nuw nsw i32 4, %i.dw
  %i.ea = getelementptr i8, ptr %1, i64 344
  store i32 %i.dz, ptr %i.ea, align 8
  br label %.loopexit

bb.ah:                                            ; preds = %bb.af
  %i.eb = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %.0429542) ; 7 uses
  tail call void @proto_item_set_len(ptr noundef %i.aq, i32 noundef 4)
  %i.ec = load i32, ptr @hf_spice_sasl_message_length, align 4
  %i.ed = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.ec, ptr noundef %0, i32 noundef %.0429542, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ee = icmp eq i32 %i.eb, 0
  br i1 %i.ee, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 7, ptr %i.bd, align 4
  %i.ef = add i32 %.0429542, 4
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ah
  %i.eg = add i32 %i.eb, 4                        ; 4 uses
  %i.eh = icmp ult i32 %i.dw, %i.eg
  br i1 %i.eh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ei = getelementptr i8, ptr %1, i64 340
  store i32 %.0429542, ptr %i.ei, align 4
  %i.ej = sub nuw i32 %i.eg, %i.dw
  %i.ek = getelementptr i8, ptr %1, i64 344
  store i32 %i.ej, ptr %i.ek, align 8
  br label %.loopexit

bb.al:                                            ; preds = %bb.aj
  tail call void @proto_item_set_len(ptr noundef %i.aq, i32 noundef %i.eg)
  %i.el = icmp eq i8 %.0543, 0
  %i.em = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.en = add i32 %.0429542, 4                    ; 3 uses
  br i1 %i.el, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void @col_set_str(ptr noundef %i.em, i32 noundef 25, ptr noundef nonnull @.str.730)
  %i.eo = load i32, ptr @hf_spice_selected_authentication_mechanism_length, align 4
  %i.ep = tail call ptr @proto_tree_add_uint(ptr noundef %i.as, i32 noundef %i.eo, ptr noundef %0, i32 noundef %.0429542, i32 noundef 4, i32 noundef %i.eb) ; 0 uses
  %i.eq = load i32, ptr @hf_spice_selected_authentication_mechanism, align 4
  %i.er = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.eq, ptr noundef %0, i32 noundef %i.en, i32 noundef %i.eb, i32 noundef 0) ; 0 uses
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  tail call void @col_set_str(ptr noundef %i.em, i32 noundef 25, ptr noundef nonnull @.str.731)
  %i.es = load i32, ptr @hf_spice_client_out_mechanism_length, align 4
  %i.et = tail call ptr @proto_tree_add_uint(ptr noundef %i.as, i32 noundef %i.es, ptr noundef %0, i32 noundef %.0429542, i32 noundef 4, i32 noundef %i.eb) ; 0 uses
  %i.eu = load i32, ptr @hf_spice_selected_client_out_mechanism, align 4
  %i.ev = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.eu, ptr noundef %0, i32 noundef %i.en, i32 noundef %i.eb, i32 noundef 0) ; 0 uses
  store i32 7, ptr %i.bd, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ew = add i32 %i.en, %i.eb
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ai
  %.1433 = phi i32 [ 4, %bb.ai ], [ %i.eg, %bb.ao ]
  %.2431 = phi i32 [ %i.ef, %bb.ai ], [ %i.ew, %bb.ao ] ; 2 uses
  %.2 = phi i8 [ %.0543, %bb.ai ], [ 1, %bb.ao ]
  %i.ex = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.ey = icmp ult i32 %.2431, %i.ex
  br i1 %i.ey, label %bb.af, label %.loopexit, !llvm.loop !11

bb.aq:                                            ; preds = %bb.e, %bb.e
  %i.ez = tail call i32 @tvb_reported_length(ptr noundef %0)
  %.not549 = icmp eq i32 %i.ez, 0
  br i1 %.not549, label %._crit_edge, label %.lr.ph540

.lr.ph540:                                        ; preds = %bb.aq, %bb.ax
  %.3539 = phi i32 [ %.4, %bb.ax ], [ 0, %bb.aq ] ; 7 uses
  %i.fa = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.3539) ; 6 uses
  %i.fb = icmp ult i32 %i.fa, 4
  br i1 %i.fb, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph540
  %i.fc = getelementptr i8, ptr %1, i64 340
  store i32 %.3539, ptr %i.fc, align 4
  %i.fd = sub nuw nsw i32 4, %i.fa
  %i.fe = getelementptr i8, ptr %1, i64 344
  store i32 %i.fd, ptr %i.fe, align 8
  br label %.loopexit

bb.as:                                            ; preds = %.lr.ph540
  %i.ff = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %.3539) ; 4 uses
  %i.fg = add i32 %i.ff, 4                        ; 4 uses
  tail call void @proto_item_set_len(ptr noundef %i.aq, i32 noundef %i.fg)
  %i.fh = load i32, ptr @hf_spice_sasl_message_length, align 4
  %i.fi = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.fh, ptr noundef %0, i32 noundef %.3539, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.fj = icmp eq i32 %i.ff, 0
  br i1 %i.fj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fk = add i32 %.3539, 4
  br label %bb.ax

bb.au:                                            ; preds = %bb.as
  %i.fl = icmp ult i32 %i.fa, %i.fg
  br i1 %i.fl, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fm = getelementptr i8, ptr %1, i64 340
  store i32 %.3539, ptr %i.fm, align 4
  %i.fn = sub nuw i32 %i.fg, %i.fa
  %i.fo = getelementptr i8, ptr %1, i64 344
  store i32 %i.fn, ptr %i.fo, align 8
  br label %.loopexit

bb.aw:                                            ; preds = %bb.au
  %i.fp = add i32 %.3539, 4                       ; 2 uses
  %i.fq = load i32, ptr @hf_spice_sasl_authentication_data, align 4
  %i.fr = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.fq, ptr noundef %0, i32 noundef %i.fp, i32 noundef %i.ff, i32 noundef 0) ; 0 uses
  %i.fs = add i32 %i.ff, %i.fp
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.at
  %.3435 = phi i32 [ 0, %bb.at ], [ %i.fg, %bb.aw ]
  %.4 = phi i32 [ %i.fk, %bb.at ], [ %i.fs, %bb.aw ] ; 2 uses
  %i.ft = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.fu = icmp ult i32 %.4, %i.ft
  br i1 %i.fu, label %.lr.ph540, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.ax, %bb.aq
  %.2434.lcssa = phi i32 [ 0, %bb.aq ], [ %.3435, %bb.ax ] ; 2 uses
  %i.fv = load i32, ptr %.0440, align 4
  %i.fw = icmp eq i32 %i.fv, 7
  %i.fx = getelementptr i8, ptr %.0441, i64 24    ; 2 uses
  br i1 %i.fw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %._crit_edge
  store i32 8, ptr %i.fx, align 4
  br label %.loopexit

bb.az:                                            ; preds = %._crit_edge
  store i32 11, ptr %i.fx, align 4
  br label %.loopexit

bb.ba:                                            ; preds = %bb.e, %bb.e
  %i.fy = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not488 = icmp eq i32 %i.fy, 0
  br i1 %.not488, label %.loopexit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @proto_item_set_len(ptr noundef %i.aq, i32 noundef 1)
  %i.fz = load i32, ptr @hf_spice_sasl_auth_result, align 4
  %i.ga = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.as, i32 noundef %i.fz, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.e) ; 0 uses
  %i.gb = load i32, ptr %.0440, align 4
  %i.gc = icmp eq i32 %i.gb, 8
  br i1 %i.gc, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.gd = load i8, ptr %i.e, align 1              ; 2 uses
  %i.ge = icmp eq i8 %i.gd, 0
  br i1 %i.ge, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gf = getelementptr i8, ptr %.0441, i64 24
  store i32 9, ptr %i.gf, align 4
  br label %.loopexit

bb.be:                                            ; preds = %bb.bc
  %i.gg = zext i8 %i.gd to i32
  %i.gh = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.aq, ptr noundef nonnull @ei_spice_sasl_auth_result, ptr noundef nonnull @.str.732, i32 noundef %i.gg) ; 0 uses
  br label %.loopexit

bb.bf:                                            ; preds = %bb.bb
  %i.gi = getelementptr i8, ptr %.0441, i64 24
  store i32 3, ptr %i.gi, align 4
  br label %.loopexit

bb.bg:                                            ; preds = %.lr.ph537, %bb.bn
  %.5536 = phi i32 [ 0, %.lr.ph537 ], [ %.6, %bb.bn ] ; 8 uses
  %i.gj = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.5536) ; 6 uses
  %i.gk = icmp ult i32 %i.gj, 4
  br i1 %i.gk, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gl = getelementptr i8, ptr %1, i64 340
  store i32 %.5536, ptr %i.gl, align 4
  %i.gm = sub nuw nsw i32 4, %i.gj
  %i.gn = getelementptr i8, ptr %1, i64 344
  store i32 %i.gm, ptr %i.gn, align 8
  br label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.go = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %.5536) ; 5 uses
  tail call void @proto_item_set_len(ptr noundef %i.aq, i32 noundef 4)
  %i.gp = load i32, ptr @hf_spice_sasl_message_length, align 4
  %i.gq = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.gp, ptr noundef %0, i32 noundef %.5536, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.gr = icmp eq i32 %i.go, 0
  br i1 %i.gr, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.gs = load ptr, ptr %i.af, align 8
  tail call void @col_set_str(ptr noundef %i.gs, i32 noundef 25, ptr noundef nonnull @.str.733)
  store i32 10, ptr %i.bb, align 4
  %i.gt = add i32 %.5536, 4
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bi
  %i.gu = add i32 %i.go, 4                        ; 4 uses
  %i.gv = icmp ult i32 %i.gj, %i.gu
  br i1 %i.gv, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.gw = getelementptr i8, ptr %1, i64 340
  store i32 %.5536, ptr %i.gw, align 4
  %i.gx = sub nuw i32 %i.gu, %i.gj
  %i.gy = getelementptr i8, ptr %1, i64 344
  store i32 %i.gx, ptr %i.gy, align 8
  br label %.loopexit

bb.bm:                                            ; preds = %bb.bk
  tail call void @proto_item_set_len(ptr noundef %i.aq, i32 noundef %i.gu)
  %i.gz = load ptr, ptr %i.af, align 8
  tail call void @col_set_str(ptr noundef %i.gz, i32 noundef 25, ptr noundef nonnull @.str.734)
  %i.ha = load i32, ptr @hf_spice_clientout_length, align 4
  %i.hb = tail call ptr @proto_tree_add_uint(ptr noundef %i.as, i32 noundef %i.ha, ptr noundef %0, i32 noundef %.5536, i32 noundef 4, i32 noundef %i.go) ; 0 uses
  %i.hc = add i32 %.5536, 4                       ; 2 uses
  %i.hd = load i32, ptr @hf_spice_clientout_list, align 4
  %i.he = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.hd, ptr noundef %0, i32 noundef %i.hc, i32 noundef %i.go, i32 noundef 0) ; 0 uses
  store i32 10, ptr %i.bb, align 4
  %i.hf = add i32 %i.go, %i.hc
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bj
  %.5437 = phi i32 [ 4, %bb.bj ], [ %i.gu, %bb.bm ]
  %.6 = phi i32 [ %i.gt, %bb.bj ], [ %i.hf, %bb.bm ] ; 2 uses
  %i.hg = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.hh = icmp ult i32 %.6, %i.hg
  br i1 %i.hh, label %bb.bg, label %.loopexit, !llvm.loop !13

.lr.ph532:                                        ; preds = %.preheader494, %bb.bs
  %.7531 = phi i32 [ %i.id, %bb.bs ], [ 0, %.preheader494 ] ; 6 uses
  %i.hi = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.7531) ; 6 uses
  %i.hj = icmp ult i32 %i.hi, 4
  br i1 %i.hj, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph532
  %i.hk = getelementptr i8, ptr %1, i64 340
  store i32 %.7531, ptr %i.hk, align 4
  %i.hl = sub nuw nsw i32 4, %i.hi
  %i.hm = getelementptr i8, ptr %1, i64 344
  store i32 %i.hl, ptr %i.hm, align 8
  br label %.loopexit

bb.bp:                                            ; preds = %.lr.ph532
  %i.hn = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.7531) ; 6 uses
  tail call void @proto_item_set_len(ptr noundef %i.aq, i32 noundef %i.hn)
  %i.ho = load i32, ptr @hf_spice_sasl_message_length, align 4
  %i.hp = tail call ptr @proto_tree_add_item(ptr noundef %i.as, i32 noundef %i.ho, ptr noundef %0, i32 noundef %.7531, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.hq = icmp eq i32 %i.hn, 0
  br i1 %i.hq, label %.loopexit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hr = add i32 %i.hn, 4                        ; 4 uses
  %i.hs = icmp ult i32 %i.hi, %i.hr
  br i1 %i.hs, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
end_hunk_0
