Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-gsm_a_gm?download=true
inline.NumInlined: 15
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@de_gmm_ms_radio_acc_cap:bb.a
  %.43732 = phi i32 [ %i.ax, %bb.r ], [ %.33731, %bb.o ] ; 5 uses
  %.43568 = phi i32 [ %i.aw, %bb.r ], [ %i.an, %bb.o ] ; 4 uses
  %.43528 = phi i8 [ %i.az, %bb.r ], [ %i.ao, %bb.o ] ; 2 uses
  %i.ba = lshr i32 %.43568, 25                    ; 3 uses
  %i.bb = load i32, ptr @hf_gsm_a_gm_acc_cap_struct_len, align 4
  %i.bc = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bb, ptr noundef %0, i32 noundef %i.am, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.bd = load ptr, ptr %i.a, align 8
  %i.be = lshr i32 %.43568, 28
  %i.bf = add nuw nsw i32 %i.be, 1
  call void @proto_item_set_len(ptr noundef %i.bd, i32 noundef %i.bf)
  %i.bg = add i32 %.13704, 11                     ; 4 uses
  %i.bh = shl i32 %.43568, 7                      ; 4 uses
  %i.bi = add i8 %.43528, -7                      ; 6 uses
  %i.bj = icmp eq i32 %i.aj, 15
  br i1 %i.bj, label %.preheader4320, label %bb.ay

.preheader4320:                                   ; preds = %bb.s, %.loopexit
  %.53870 = phi i32 [ %.123877, %.loopexit ], [ %.43869, %bb.s ] ; 5 uses
  %.53733 = phi i32 [ %.123740, %.loopexit ], [ %.43732, %bb.s ] ; 4 uses
  %.23705 = phi i32 [ %.43707, %.loopexit ], [ %i.bg, %bb.s ] ; 5 uses
  %.53569 = phi i32 [ %.123576, %.loopexit ], [ %i.bh, %bb.s ] ; 3 uses
  %.53529 = phi i8 [ %.123536, %.loopexit ], [ %i.bi, %bb.s ] ; 3 uses
  %.13495 = phi i32 [ %.33497, %.loopexit ], [ %i.ba, %bb.s ] ; 6 uses
  %i.bk = icmp eq i32 %.13495, 0
  br i1 %i.bk, label %.thread, label %bb.t

bb.t:                                             ; preds = %.preheader4320
  %i.bl = icmp eq i8 %.53529, 0
  br i1 %i.bl, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bm = icmp eq i32 %.53733, 0
  br i1 %i.bm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bn = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.53870, i32 noundef 1) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bo = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.53870)
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw i32 %i.bp, 24
  %i.br = or i32 %i.bq, %.53569
  %i.bs = add i32 %.53733, -1
  %i.bt = add i32 %.53870, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.bu = add i8 %.53529, -1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.63871 = phi i32 [ %i.bt, %bb.w ], [ %.53870, %bb.x ] ; 8 uses
  %.63734 = phi i32 [ %i.bs, %bb.w ], [ %.53733, %bb.x ] ; 6 uses
  %.63570 = phi i32 [ %i.br, %bb.w ], [ %.53569, %bb.x ] ; 3 uses
  %.63530 = phi i8 [ 7, %bb.w ], [ %i.bu, %bb.x ] ; 7 uses
  %i.bv = lshr i32 %.63570, 31                    ; 2 uses
  %trunc4295 = icmp sgt i32 %.63570, -1           ; 3 uses
  %.str.58..str.59 = select i1 %trunc4295, ptr @.str.58, ptr @.str.59
  %i.bw = load i32, ptr @hf_gsm_a_gm_presence, align 4
  %i.bx = add i32 %.63871, -1
  %i.by = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.x, i32 noundef %i.bw, ptr noundef %0, i32 noundef %i.bx, i32 noundef 1, i32 noundef %i.bv, ptr noundef @.str.61, ptr noundef nonnull %.str.58..str.59, i32 noundef %i.bv) ; 0 uses
  %i.bz = add i32 %.23705, 1                      ; 4 uses
  %i.ca = add nsw i32 %.13495, -1                 ; 3 uses
  %i.cb = shl i32 %.63570, 1                      ; 5 uses
  br i1 %trunc4295, label %.preheader, label %bb.ad

.preheader:                                       ; preds = %bb.y
  %.not43024339 = icmp eq i32 %i.ca, 0
  br i1 %.not43024339, label %.thread, label %.lr.ph4346

.lr.ph4346:                                       ; preds = %.preheader, %bb.ac
  %.234964345 = phi i32 [ %i.co, %bb.ac ], [ %i.ca, %.preheader ] ; 2 uses
  %.735314344 = phi i8 [ %i.cr, %bb.ac ], [ %.63530, %.preheader ] ; 3 uses
  %.735714343 = phi i32 [ %i.cp, %bb.ac ], [ %i.cb, %.preheader ] ; 2 uses
  %.337064342 = phi i32 [ %i.cs, %bb.ac ], [ %i.bz, %.preheader ]
  %.737354341 = phi i32 [ %.83736, %bb.ac ], [ %.63734, %.preheader ] ; 3 uses
  %.738724340 = phi i32 [ %.83873, %bb.ac ], [ %.63871, %.preheader ] ; 4 uses
  %..23496 = call i32 @llvm.umin.i32(i32 %.234964345, i32 8) ; 5 uses
  %i.cc = zext i8 %.735314344 to i32              ; 2 uses
  %i.cd = icmp samesign ugt i32 %..23496, %i.cc
  br i1 %i.cd, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %.lr.ph4346
  %i.ce = icmp eq i32 %.737354341, 0
  br i1 %i.ce, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cf = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.738724340, i32 noundef 1) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cg = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.738724340)
  %i.ch = zext i8 %i.cg to i32
  %i.ci = sub nuw nsw i32 24, %i.cc
  %i.cj = shl nuw i32 %i.ch, %i.ci
  %i.ck = or i32 %i.cj, %.735714343
  %i.cl = add i32 %.737354341, -1
  %i.cm = add i32 %.738724340, 1
  %i.cn = add nuw i8 %.735314344, 8
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph4346, %bb.ab
  %.83873 = phi i32 [ %i.cm, %bb.ab ], [ %.738724340, %.lr.ph4346 ] ; 2 uses
  %.83736 = phi i32 [ %i.cl, %bb.ab ], [ %.737354341, %.lr.ph4346 ] ; 2 uses
  %.83572 = phi i32 [ %i.ck, %bb.ab ], [ %.735714343, %.lr.ph4346 ]
  %.83532 = phi i8 [ %i.cn, %bb.ab ], [ %.735314344, %.lr.ph4346 ]
  %i.co = sub nuw i32 %.234964345, %..23496       ; 2 uses
  %i.cp = shl i32 %.83572, %..23496               ; 2 uses
  %i.cq = trunc nuw nsw i32 %..23496 to i8
  %i.cr = sub i8 %.83532, %i.cq                   ; 2 uses
  %i.cs = add i32 %..23496, %.337064342           ; 2 uses
  %.not4302 = icmp eq i32 %i.co, 0
  br i1 %.not4302, label %.loopexit, label %.lr.ph4346, !llvm.loop !7

bb.ad:                                            ; preds = %bb.y
  %i.ct = icmp ult i32 %.13495, 5
  br i1 %i.ct, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cu = icmp ult i8 %.63530, 4
  br i1 %i.cu, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.cv = icmp eq i32 %.63734, 0
  br i1 %i.cv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cw = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.63871, i32 noundef 1) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cx = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.63871)
  %i.cy = zext i8 %i.cx to i32
  %narrow4297 = sub nuw nsw i8 24, %.63530
  %i.cz = zext nneg i8 %narrow4297 to i32
  %i.da = shl nuw i32 %i.cy, %i.cz
  %i.db = or i32 %i.da, %i.cb
  %i.dc = add i32 %.63734, -1
  %i.dd = add i32 %.63871, 1
  %i.de = or disjoint i8 %.63530, 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ah
  %.93874 = phi i32 [ %i.dd, %bb.ah ], [ %.63871, %bb.ae ] ; 5 uses
  %.93737 = phi i32 [ %i.dc, %bb.ah ], [ %.63734, %bb.ae ] ; 4 uses
  %.93573 = phi i32 [ %i.db, %bb.ah ], [ %i.cb, %bb.ae ] ; 3 uses
  %.93533 = phi i8 [ %i.de, %bb.ah ], [ %.63530, %bb.ae ] ; 2 uses
  %i.df = lshr i32 %.93573, 28
  %i.dg = load i32, ptr @hf_gsm_a_gm_acc_tech_type, align 4
  %i.dh = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.dg, ptr noundef %0, i32 noundef %i.bz, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.di = add i32 %.23705, 5                      ; 3 uses
  %i.dj = add nsw i32 %.13495, -5                 ; 2 uses
  %i.dk = shl i32 %.93573, 4                      ; 3 uses
  %i.dl = add i8 %.93533, -4                      ; 5 uses
  %i.dm = icmp ult i32 %i.dj, 3
  br i1 %i.dm, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dn = icmp ult i8 %i.dl, 3
  br i1 %i.dn, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.do = icmp eq i32 %.93737, 0
  br i1 %i.do, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dp = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.93874, i32 noundef 1) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.93874)
  %i.dr = zext i8 %i.dq to i32
  %narrow4299 = sub nuw nsw i8 28, %.93533
  %i.ds = zext nneg i8 %narrow4299 to i32
  %i.dt = shl nuw i32 %i.dr, %i.ds
  %i.du = or i32 %i.dt, %i.dk
  %i.dv = add i32 %.93737, -1
  %i.dw = add i32 %.93874, 1
  %.not4298 = icmp ne i8 %i.dl, 0
  %.4304 = zext i1 %.not4298 to i32
  %i.dx = or disjoint i8 %i.dl, 8
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %bb.am
  %.103875 = phi i32 [ %i.dw, %bb.am ], [ %.93874, %bb.aj ] ; 6 uses
  %.103738 = phi i32 [ %i.dv, %bb.am ], [ %.93737, %bb.aj ] ; 4 uses
  %.103574 = phi i32 [ %i.du, %bb.am ], [ %i.dk, %bb.aj ]
  %.103534 = phi i8 [ %i.dx, %bb.am ], [ %i.dl, %bb.aj ] ; 2 uses
  %.33501 = phi i32 [ %.4304, %bb.am ], [ 0, %bb.aj ] ; 2 uses
  %i.dy = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.di, i32 noundef 3) ; 5 uses
  %i.dz = zext i8 %i.dy to i32                    ; 2 uses
  switch i32 %i.df, label %bb.aq [
    i32 4, label %bb.ao
    i32 3, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %switch.tableidx = add i8 %i.dy, -1             ; 2 uses
  %i.ea = icmp ult i8 %switch.tableidx, 3
  br i1 %i.ea, label %switch.lookup4464, label %bb.as

bb.ap:                                            ; preds = %bb.an
  %switch.tableidx4459 = add i8 %i.dy, -1         ; 2 uses
  %i.eb = icmp ult i8 %switch.tableidx4459, 3
  br i1 %i.eb, label %switch.lookup4464, label %bb.as

bb.aq:                                            ; preds = %bb.an
  %i.ec = icmp ult i32 %.93573, -1879048192
  br i1 %i.ec, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %switch.tableidx4463 = add i8 %i.dy, -2         ; 2 uses
  %i.ed = icmp ult i8 %switch.tableidx4463, 4
  br i1 %i.ed, label %switch.lookup4464, label %bb.as

switch.lookup4464:                                ; preds = %bb.ar, %bb.ap, %bb.ao
  %switch.tableidx4463.sink = phi i8 [ %switch.tableidx4459, %bb.ap ], [ %switch.tableidx, %bb.ao ], [ %switch.tableidx4463, %bb.ar ]
  %switch.table.de_gmm_ms_radio_acc_cap.2.sink = phi ptr [ @switch.table.de_gmm_ms_radio_acc_cap.4, %bb.ap ], [ @switch.table.de_gmm_ms_radio_acc_cap.3, %bb.ao ], [ @switch.table.de_gmm_ms_radio_acc_cap.5, %bb.ar ]
  %i.ee = zext nneg i8 %switch.tableidx4463.sink to i64
  %switch.gep4465 = getelementptr inbounds nuw [8 x i8], ptr %switch.table.de_gmm_ms_radio_acc_cap.2.sink, i64 %i.ee
  %switch.load4466 = load ptr, ptr %switch.gep4465, align 8
  br label %bb.as

bb.as:                                            ; preds = %switch.lookup4464, %bb.ao, %bb.ap, %bb.ar, %bb.aq
  %.13492 = phi ptr [ @.str.65, %bb.ar ], [ @.str.65, %bb.ap ], [ @.str.70, %bb.aq ], [ @.str.65, %bb.ao ], [ %switch.load4466, %switch.lookup4464 ]
  %i.ef = load i32, ptr @hf_gsm_a_gm_rf_power_capability, align 4
  %i.eg = xor i32 %.33501, -1
  %i.eh = add i32 %.103875, %i.eg
  %i.ei = add nuw nsw i32 %.33501, 1
  %i.ej = load ptr, ptr %i.e, align 8
  %i.ek = zext i8 %i.dy to i64
  %i.el = call ptr @decode_bits_in_field(ptr noundef %i.ej, i32 noundef %i.di, i32 noundef 3, i64 noundef %i.ek, i32 noundef 0)
  %i.em = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.x, i32 noundef %i.ef, ptr noundef %0, i32 noundef %i.eh, i32 noundef %i.ei, i32 noundef %i.dz, ptr noundef @.str.71, ptr noundef %i.el, ptr noundef nonnull %.13492, i32 noundef %i.dz) ; 0 uses
  %i.en = add i32 %.23705, 8                      ; 2 uses
  %i.eo = add nsw i32 %.13495, -8                 ; 2 uses
  %i.ep = shl i32 %.103574, 3                     ; 3 uses
  %i.eq = add i8 %.103534, -3                     ; 5 uses
  %i.er = icmp ult i32 %i.eo, 2
  br i1 %i.er, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.es = icmp ult i8 %i.eq, 2
  br i1 %i.es, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.et = icmp eq i32 %.103738, 0
  br i1 %i.et, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.eu = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.103875, i32 noundef 1) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ev = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.103875)
  %i.ew = zext i8 %i.ev to i32
  %narrow4301 = sub nuw nsw i8 27, %.103534
  %i.ex = zext nneg i8 %narrow4301 to i32
  %i.ey = shl nuw i32 %i.ew, %i.ex
  %i.ez = or i32 %i.ey, %i.ep
  %i.fa = add i32 %.103738, -1
  %i.fb = add i32 %.103875, 1
  %.4305 = zext nneg i8 %i.eq to i32
  %i.fc = or disjoint i8 %i.eq, 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.at, %bb.aw
  %.113876 = phi i32 [ %i.fb, %bb.aw ], [ %.103875, %bb.at ] ; 2 uses
  %.113739 = phi i32 [ %i.fa, %bb.aw ], [ %.103738, %bb.at ]
  %.113575 = phi i32 [ %i.ez, %bb.aw ], [ %i.ep, %bb.at ]
  %.113535 = phi i8 [ %i.fc, %bb.aw ], [ %i.eq, %bb.at ]
  %.53503 = phi i32 [ %.4305, %bb.aw ], [ 0, %bb.at ] ; 2 uses
  %i.fd = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.en, i32 noundef 2)
  %i.fe = zext i8 %i.fd to i32
  %i.ff = load i32, ptr @hf_gsm_a_gm_8psk_power_class, align 4
  %i.fg = xor i32 %.53503, -1
  %i.fh = add i32 %.113876, %i.fg
  %i.fi = add nuw nsw i32 %.53503, 1
  %i.fj = call ptr @proto_tree_add_uint(ptr noundef %i.x, i32 noundef %i.ff, ptr noundef %0, i32 noundef %i.fh, i32 noundef %i.fi, i32 noundef %i.fe) ; 0 uses
  %i.fk = add i32 %.23705, 10
  %i.fl = add nsw i32 %.13495, -10
  %i.fm = shl i32 %.113575, 2
  %i.fn = add i8 %.113535, -2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %bb.as, %bb.ai, %bb.ad, %bb.ax
  %.123877 = phi i32 [ %.113876, %bb.ax ], [ %.103875, %bb.as ], [ %.63871, %bb.ad ], [ %.93874, %bb.ai ], [ %.83873, %bb.ac ] ; 2 uses
  %.123740 = phi i32 [ %.113739, %bb.ax ], [ %.103738, %bb.as ], [ %.63734, %bb.ad ], [ %.93737, %bb.ai ], [ %.83736, %bb.ac ] ; 2 uses
  %.43707 = phi i32 [ %i.fk, %bb.ax ], [ %i.en, %bb.as ], [ %i.bz, %bb.ad ], [ %i.di, %bb.ai ], [ %i.cs, %bb.ac ] ; 2 uses
  %.123576 = phi i32 [ %i.fm, %bb.ax ], [ %i.ep, %bb.as ], [ %i.cb, %bb.ad ], [ %i.dk, %bb.ai ], [ %i.cp, %bb.ac ] ; 2 uses
  %.123536 = phi i8 [ %i.fn, %bb.ax ], [ %i.eq, %bb.as ], [ %.63530, %bb.ad ], [ %i.dl, %bb.ai ], [ %i.cr, %bb.ac ] ; 2 uses
  %.33497 = phi i32 [ %i.fl, %bb.ax ], [ %i.eo, %bb.as ], [ %i.ca, %bb.ad ], [ %i.dj, %bb.ai ], [ 0, %bb.ac ]
  br i1 %trunc4295, label %.thread, label %.preheader4320, !llvm.loop !8

bb.ay:                                            ; preds = %bb.s
  %i.fo = icmp ult i32 %.43568, 100663296
  br i1 %i.fo, label %.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fp = icmp ult i8 %i.bi, 3
  br i1 %i.fp, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.fq = icmp eq i32 %.43732, 0
  br i1 %i.fq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fr = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.43869, i32 noundef 1) ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.fs = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.43869)
  %i.ft = zext i8 %i.fs to i32
  %narrow4226 = sub nuw nsw i8 31, %.43528
  %i.fu = zext nneg i8 %narrow4226 to i32
  %i.fv = shl nuw i32 %i.ft, %i.fu
  %i.fw = or i32 %i.fv, %i.bh
  %i.fx = add i32 %.43732, -1
  %i.fy = add i32 %.43869, 1
  %.not4225 = icmp ne i8 %i.bi, 0
  %.4306 = zext i1 %.not4225 to i32
  %i.fz = or disjoint i8 %i.bi, 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.az, %bb.bc
  %.133878 = phi i32 [ %i.fy, %bb.bc ], [ %.43869, %bb.az ] ; 6 uses
  %.133741 = phi i32 [ %i.fx, %bb.bc ], [ %.43732, %bb.az ] ; 4 uses
  %.133577 = phi i32 [ %i.fw, %bb.bc ], [ %i.bh, %bb.az ]
  %.133537 = phi i8 [ %i.fz, %bb.bc ], [ %i.bi, %bb.az ] ; 2 uses
  %.73505 = phi i32 [ %.4306, %bb.bc ], [ 0, %bb.az ] ; 2 uses
  %i.ga = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bg, i32 noundef 3) ; 5 uses
  %i.gb = zext i8 %i.ga to i32                    ; 2 uses
  switch i32 %i.aj, label %bb.bg [
    i32 4, label %bb.be
    i32 3, label %bb.bf
  ]

bb.be:                                            ; preds = %bb.bd
  %switch.tableidx4467 = add i8 %i.ga, -1         ; 2 uses
  %i.gc = icmp ult i8 %switch.tableidx4467, 3
  br i1 %i.gc, label %switch.lookup4476, label %bb.bi

bb.bf:                                            ; preds = %bb.bd
  %switch.tableidx4471 = add i8 %i.ga, -1         ; 2 uses
  %i.gd = icmp ult i8 %switch.tableidx4471, 3
  br i1 %i.gd, label %switch.lookup4476, label %bb.bi

bb.bg:                                            ; preds = %bb.bd
  %i.ge = icmp ult i32 %.33567, -1879048192
  br i1 %i.ge, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %switch.tableidx4475 = add i8 %i.ga, -2         ; 2 uses
  %i.gf = icmp ult i8 %switch.tableidx4475, 4
  br i1 %i.gf, label %switch.lookup4476, label %bb.bi

switch.lookup4476:                                ; preds = %bb.bh, %bb.bf, %bb.be
  %switch.tableidx4475.sink = phi i8 [ %switch.tableidx4471, %bb.bf ], [ %switch.tableidx4467, %bb.be ], [ %switch.tableidx4475, %bb.bh ]
  %switch.table.de_gmm_ms_radio_acc_cap.5.sink = phi ptr [ @switch.table.de_gmm_ms_radio_acc_cap.4, %bb.bf ], [ @switch.table.de_gmm_ms_radio_acc_cap.3, %bb.be ], [ @switch.table.de_gmm_ms_radio_acc_cap.5, %bb.bh ]
  %i.gg = zext nneg i8 %switch.tableidx4475.sink to i64
  %switch.gep4477 = getelementptr inbounds nuw [8 x i8], ptr %switch.table.de_gmm_ms_radio_acc_cap.5.sink, i64 %i.gg
  %switch.load4478 = load ptr, ptr %switch.gep4477, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %switch.lookup4476, %bb.be, %bb.bf, %bb.bh, %bb.bg
  %.23493 = phi ptr [ @.str.65, %bb.bh ], [ @.str.65, %bb.bf ], [ @.str.70, %bb.bg ], [ @.str.65, %bb.be ], [ %switch.load4478, %switch.lookup4476 ]
  %i.gh = load i32, ptr @hf_gsm_a_gm_rf_power_capability, align 4
  %i.gi = xor i32 %.73505, -1
  %i.gj = add i32 %.133878, %i.gi
  %i.gk = add nuw nsw i32 %.73505, 1
  %i.gl = load ptr, ptr %i.e, align 8
  %i.gm = zext i8 %i.ga to i64
  %i.gn = call ptr @decode_bits_in_field(ptr noundef %i.gl, i32 noundef %i.bg, i32 noundef 3, i64 noundef %i.gm, i32 noundef 0)
  %i.go = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.x, i32 noundef %i.gh, ptr noundef %0, i32 noundef %i.gj, i32 noundef %i.gk, i32 noundef %i.gb, ptr noundef @.str.71, ptr noundef %i.gn, ptr noundef nonnull %.23493, i32 noundef %i.gb) ; 0 uses
  %i.gp = add i32 %.13704, 14
  %i.gq = shl i32 %.133577, 3                     ; 3 uses
  %i.gr = add i8 %.133537, -3                     ; 2 uses
  %i.gs = icmp eq i32 %i.ba, 3
  br i1 %i.gs, label %.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gt = icmp eq i8 %i.gr, 0
  br i1 %i.gt, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.gu = icmp eq i32 %.133741, 0
  br i1 %i.gu, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.gv = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.133878, i32 noundef 1) ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gw = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.133878)
  %i.gx = zext i8 %i.gw to i32
  %i.gy = shl nuw i32 %i.gx, 24
  %i.gz = or i32 %i.gy, %i.gq
  %i.ha = add i32 %.133741, -1
  %i.hb = add i32 %.133878, 1
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bj
  %i.hc = add i8 %.133537, -4
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.143879 = phi i32 [ %i.hb, %bb.bm ], [ %.133878, %bb.bn ] ; 3 uses
  %.143742 = phi i32 [ %i.ha, %bb.bm ], [ %.133741, %bb.bn ] ; 2 uses
  %.143578 = phi i32 [ %i.gz, %bb.bm ], [ %i.gq, %bb.bn ] ; 2 uses
  %.143538 = phi i8 [ 7, %bb.bm ], [ %i.hc, %bb.bn ] ; 2 uses
  %i.hd = icmp sgt i32 %.143578, -1
  %i.he = load i32, ptr @hf_gsm_a_gm_a5_bits, align 4 ; 2 uses
  %i.hf = add i32 %.143879, -1                    ; 2 uses
  %i.hg = add i32 %.13704, 15                     ; 2 uses
  %i.hh = add nsw i32 %i.ba, -4                   ; 2 uses
  %i.hi = shl i32 %.143578, 1                     ; 2 uses
  br i1 %i.hd, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hj = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.x, i32 noundef %i.he, ptr noundef %0, i32 noundef %i.hf, i32 noundef 1, i32 noundef 0, ptr noundef @.str.72, i32 noundef 0) ; 0 uses
  br label %.loopexit4322

bb.bq:                                            ; preds = %bb.bo
  %i.hk = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.x, i32 noundef %i.he, ptr noundef %0, i32 noundef %i.hf, i32 noundef 1, i32 noundef 1, ptr noundef @.str.73, i32 noundef 1) ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.by
  %.04329 = phi i32 [ 1, %bb.bq ], [ %i.id, %bb.by ] ; 2 uses
  %.44328 = phi i32 [ %i.hh, %bb.bq ], [ %.5, %bb.by ] ; 2 uses
  %.1535394327 = phi i8 [ %.143538, %bb.bq ], [ %.173541, %bb.by ] ; 3 uses
  %.1535794326 = phi i32 [ %i.hi, %bb.bq ], [ %.173581, %bb.by ] ; 3 uses
  %.537084325 = phi i32 [ %i.hg, %bb.bq ], [ %.63709, %bb.by ] ; 2 uses
  %.1537434324 = phi i32 [ %.143742, %bb.bq ], [ %.173745, %bb.by ] ; 4 uses
  %.1538804323 = phi i32 [ %.143879, %bb.bq ], [ %.173882, %bb.by ] ; 5 uses
  %i.hl = icmp eq i32 %.44328, 0
  br i1 %i.hl, label %bb.by, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hm = icmp eq i8 %.1535394327, 0
  br i1 %i.hm, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.hn = icmp eq i32 %.1537434324, 0
  br i1 %i.hn, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ho = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1538804323, i32 noundef 1) ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.hp = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1538804323)
  %i.hq = zext i8 %i.hp to i32
  %i.hr = shl nuw i32 %i.hq, 24
  %i.hs = or i32 %i.hr, %.1535794326
  %i.ht = add i32 %.1537434324, -1
  %i.hu = add i32 %.1538804323, 1
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bs
  %i.hv = add i8 %.1535394327, -1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.163881 = phi i32 [ %i.hu, %bb.bv ], [ %.1538804323, %bb.bw ] ; 2 uses
  %.163744 = phi i32 [ %i.ht, %bb.bv ], [ %.1537434324, %bb.bw ]
  %.163580 = phi i32 [ %i.hs, %bb.bv ], [ %.1535794326, %bb.bw ] ; 3 uses
  %.163540 = phi i8 [ 7, %bb.bv ], [ %i.hv, %bb.bw ]
  %i.hw = lshr i32 %.163580, 31                   ; 2 uses
  %trunc = icmp sgt i32 %.163580, -1
  %.str.74..str.75 = select i1 %trunc, ptr @.str.74, ptr @.str.75
  %i.hx = load i32, ptr @hf_gsm_a_gm_a5_bits, align 4
  %i.hy = add i32 %.163881, -1
  %i.hz = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.x, i32 noundef %i.hx, ptr noundef %0, i32 noundef %i.hy, i32 noundef 1, i32 noundef %i.hw, ptr noundef @.str.76, i32 noundef %.04329, ptr noundef nonnull %.str.74..str.75, i32 noundef %i.hw) ; 0 uses
  %i.ia = add i32 %.537084325, 1
  %i.ib = add nsw i32 %.44328, -1
  %i.ic = shl i32 %.163580, 1
  br label %bb.by

bb.by:                                            ; preds = %bb.br, %bb.bx
  %.173882 = phi i32 [ %.1538804323, %bb.br ], [ %.163881, %bb.bx ] ; 2 uses
  %.173745 = phi i32 [ %.1537434324, %bb.br ], [ %.163744, %bb.bx ] ; 2 uses
  %.63709 = phi i32 [ %.537084325, %bb.br ], [ %i.ia, %bb.bx ] ; 2 uses
  %.173581 = phi i32 [ %.1535794326, %bb.br ], [ %i.ic, %bb.bx ] ; 2 uses
  %.173541 = phi i8 [ %.1535394327, %bb.br ], [ %.163540, %bb.bx ] ; 2 uses
  %.5 = phi i32 [ 0, %bb.br ], [ %i.ib, %bb.bx ]  ; 2 uses
  %i.id = add nuw nsw i32 %.04329, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.id, 8
  br i1 %exitcond.not, label %.loopexit4322, label %bb.br, !llvm.loop !9

.loopexit4322:                                    ; preds = %bb.by, %bb.bp
  %.183883 = phi i32 [ %.143879, %bb.bp ], [ %.173882, %bb.by ] ; 5 uses
  %.183746 = phi i32 [ %.143742, %bb.bp ], [ %.173745, %bb.by ] ; 4 uses
  %.73710 = phi i32 [ %i.hg, %bb.bp ], [ %.63709, %bb.by ] ; 10 uses
  %.183582 = phi i32 [ %i.hi, %bb.bp ], [ %.173581, %bb.by ] ; 3 uses
  %.183542 = phi i8 [ %.143538, %bb.bp ], [ %.173541, %bb.by ] ; 3 uses
  %.6 = phi i32 [ %i.hh, %bb.bp ], [ %.5, %bb.by ] ; 9 uses
  %i.ie = icmp eq i32 %.6, 0
  br i1 %i.ie, label %.thread, label %bb.bz

bb.bz:                                            ; preds = %.loopexit4322
  %i.if = icmp eq i8 %.183542, 0
  br i1 %i.if, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.ig = icmp eq i32 %.183746, 0
  br i1 %i.ig, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ih = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.183883, i32 noundef 1) ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ii = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.183883)
  %i.ij = zext i8 %i.ii to i32
  %i.ik = shl nuw i32 %i.ij, 24
  %i.il = or i32 %i.ik, %.183582
  %i.im = add i32 %.183746, -1
  %i.in = add i32 %.183883, 1
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bz
  %i.io = add i8 %.183542, -1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.193884 = phi i32 [ %i.in, %bb.cc ], [ %.183883, %bb.cd ] ; 5 uses
  %.193747 = phi i32 [ %i.im, %bb.cc ], [ %.183746, %bb.cd ] ; 4 uses
  %.193583 = phi i32 [ %i.il, %bb.cc ], [ %.183582, %bb.cd ]
  %.193543 = phi i8 [ 7, %bb.cc ], [ %i.io, %bb.cd ] ; 3 uses
  %i.ip = load i32, ptr @hf_gsm_a_gm_rac_ctrled_early_cm_sending, align 4
  %i.iq = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.ip, ptr noundef %0, i32 noundef %.73710, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ir = add i32 %.73710, 1                      ; 2 uses
  %i.is = shl i32 %.193583, 1                     ; 3 uses
  %i.it = icmp eq i32 %.6, 1
  br i1 %i.it, label %.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.iu = icmp eq i8 %.193543, 0
  br i1 %i.iu, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %i.iv = icmp eq i32 %.193747, 0
  br i1 %i.iv, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.iw = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.193884, i32 noundef 1) ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ix = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.193884)
  %i.iy = zext i8 %i.ix to i32
  %i.iz = shl nuw i32 %i.iy, 24
  %i.ja = or i32 %i.iz, %i.is
  %i.jb = add i32 %.193747, -1
  %i.jc = add i32 %.193884, 1
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cf
  %i.jd = add i8 %.193543, -1
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.203885 = phi i32 [ %i.jc, %bb.ci ], [ %.193884, %bb.cj ] ; 5 uses
  %.203748 = phi i32 [ %i.jb, %bb.ci ], [ %.193747, %bb.cj ] ; 4 uses
  %.203584 = phi i32 [ %i.ja, %bb.ci ], [ %i.is, %bb.cj ]
  %.203544 = phi i8 [ 7, %bb.ci ], [ %i.jd, %bb.cj ] ; 3 uses
end_hunk_0
begin_hunk_1_@de_gmm_voice_domain_pref:bb.a
  %i.e = load i32, ptr @hf_gsm_a_gm_ue_usage_setting, align 4
  %i.f = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.d, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = or disjoint i32 %i.a, 6
  %i.h = load i32, ptr @hf_gsm_a_gm_voice_domain_pref_for_eutran, align 4
  %i.i = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.g, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.j = trunc i32 %4 to i16
  ret i16 %i.j
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i16 @de_gc_timer(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 %4, ptr nofree readnone captures(none) %5, i32 %6) #1 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3) ; 2 uses
  %i.b = and i8 %i.a, 31                          ; 5 uses
  %i.c = lshr i8 %i.a, 5
  switch i8 %i.c, label %.thread [
    i8 0, label %bb.b
    i8 7, label %bb.d
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i8 %i.b, 1
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %narrow = mul nuw i8 %i.b, 6
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_gsm_a_gm_gprs_timer, align 4
  %i.f = zext nneg i8 %i.b to i32
  %i.g = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.e, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.f, ptr noundef @.str.84) ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.02329 = phi ptr [ @.str.83, %bb.d ], [ @.str.82, %bb.a ], [ @.str.81, %bb.b ], [ @.str.82, %bb.c ]
  %.024.in28 = phi i8 [ %i.b, %bb.d ], [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ %narrow, %bb.c ]
  %i.i = load i32, ptr @hf_gsm_a_gm_gprs_timer, align 4
  %i.j = zext i8 %.024.in28 to i32                ; 2 uses
  %i.k = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.i, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.j, ptr noundef @.str.85, i32 noundef %i.j, ptr noundef nonnull %.02329)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %.1 = phi ptr [ %i.k, %.thread ], [ %i.g, %bb.d ]
  %i.l = load i32, ptr @ett_gmm_gprs_timer, align 4
  %i.m = tail call ptr @proto_item_add_subtree(ptr noundef %.1, i32 noundef %i.l) ; 2 uses
  %i.n = load i32, ptr @hf_gsm_a_gm_gprs_timer_unit, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.n, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_gsm_a_gm_gprs_timer_value, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.p, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret i16 1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i16 @de_gc_timer3(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 %4, ptr nofree readnone captures(none) %5, i32 %6) #1 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3) ; 2 uses
  %i.b = and i8 %i.a, 31                          ; 3 uses
  %i.c = zext nneg i8 %i.b to i32                 ; 8 uses
  %i.d = lshr i8 %i.a, 5
  switch i8 %i.d, label %default.unreachable38 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %.thread
    i8 6, label %bb.g
    i8 7, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = mul nuw nsw i32 %i.c, 10
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %i.b, 1
  %.str.86..str.87 = select i1 %i.f, ptr @.str.86, ptr @.str.87
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.g = mul nuw nsw i32 %i.c, 10
  br label %.thread

bb.e:                                             ; preds = %bb.a
  %i.h = shl nuw nsw i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i32
  br label %.thread

bb.f:                                             ; preds = %bb.a
  %i.j = mul nuw nsw i32 %i.c, 30
  br label %.thread

bb.g:                                             ; preds = %bb.a
  %i.k = mul nuw nsw i32 %i.c, 320
  br label %.thread

default.unreachable38:                            ; preds = %bb.a
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.l = load i32, ptr @hf_gsm_a_gm_gprs_timer3, align 4
  %i.m = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.l, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.c, ptr noundef @.str.84) ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.a, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.h
  %.03137 = phi ptr [ null, %bb.h ], [ @.str.82, %bb.a ], [ @.str.87, %bb.g ], [ @.str.81, %bb.f ], [ @.str.81, %bb.e ], [ @.str.87, %bb.d ], [ %.str.86..str.87, %bb.c ], [ @.str.82, %bb.b ]
  %.03236 = phi i32 [ %i.c, %bb.h ], [ %i.c, %bb.a ], [ %i.k, %bb.g ], [ %i.j, %bb.f ], [ %i.i, %bb.e ], [ %i.g, %bb.d ], [ %i.c, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.o = load i32, ptr @hf_gsm_a_gm_gprs_timer3, align 4
  %i.p = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.o, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %.03236, ptr noundef @.str.85, i32 noundef %.03236, ptr noundef %.03137)
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.1 = phi ptr [ %i.p, %.thread ], [ %i.m, %bb.h ]
  %i.q = load i32, ptr @ett_gmm_gprs_timer, align 4
  %i.r = tail call ptr @proto_item_add_subtree(ptr noundef %.1, i32 noundef %i.q) ; 2 uses
  %i.s = load i32, ptr @hf_gsm_a_gm_gprs_timer3_unit, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.s, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_gsm_a_gm_gprs_timer3_value, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.u, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret i16 1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i16 @de_sm_apn(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #1 {
bb.a:
  %i.a = load i32, ptr @hf_gsm_a_gm_apn, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef 84) ; 0 uses
  %i.c = trunc i32 %4 to i16
  ret i16 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i16 @de_sm_pco(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 56 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 9 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.k = getelementptr i8, ptr %2, i64 392
  %i.l = load i32, ptr %i.k, align 8              ; 3 uses
  %i.m = load i32, ptr @hf_gsm_a_gm_link_dir, align 4
  %i.n = tail call ptr @proto_tree_add_int(ptr noundef %1, i32 noundef %i.m, ptr noundef %0, i32 noundef %3, i32 noundef 0, i32 noundef %i.l) ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.p, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.p, i64 28       ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = or i32 %i.r, 2
  store i32 %i.s, ptr %i.q, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.a, %bb.b, %bb.c
  %i.t = load i32, ptr @hf_gsm_a_sm_ext, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.t, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_gsm_a_gm_configuration_protocol, align 4
  %i.w = and i8 %i.j, 7
  %i.x = zext nneg i8 %i.w to i32                 ; 2 uses
  %i.y = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.v, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.x, ptr noundef @.str.88, i32 noundef %i.x) ; 0 uses
  %i.z = add i32 %4, -1                           ; 3 uses
  %i.aa = add i32 %3, 1                           ; 2 uses
  %i.ab = icmp sgt i32 %i.z, 2
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %proto_item_set_generated.exit
  %.not = icmp eq i32 %i.l, 0                     ; 9 uses
  %i.ac = icmp eq i32 %i.l, 1                     ; 32 uses
  %i.ad = getelementptr i8, ptr %2, i64 8         ; 6 uses
  %gsm_a_sm_pco_ms2net_prot_vals.gsm_a_sm_pco_net2ms_prot_vals = select i1 %.not, ptr @gsm_a_sm_pco_ms2net_prot_vals, ptr @gsm_a_sm_pco_net2ms_prot_vals
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.dx
  %.0516545 = phi i32 [ %i.z, %.lr.ph ], [ %i.mv, %bb.dx ]
  %.0518544 = phi i32 [ %i.aa, %.lr.ph ], [ %i.mw, %bb.dx ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ae = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.0518544) ; 6 uses
  %i.af = load i32, ptr @hf_gsm_a_gm_pco_pid, align 4
  %i.ag = zext i16 %i.ae to i32                   ; 5 uses
  %i.ah = call ptr @val_to_str_ext_const(i32 noundef %i.ag, ptr noundef @ppp_vals_ext, ptr noundef @.str.90)
  %i.ai = call ptr @rval_to_str_const(i32 noundef %i.ag, ptr noundef %gsm_a_sm_pco_ms2net_prot_vals.gsm_a_sm_pco_net2ms_prot_vals, ptr noundef %i.ah)
  %i.aj = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.af, ptr noundef %0, i32 noundef %.0518544, i32 noundef 2, i32 noundef %i.ag, ptr noundef @.str.89, ptr noundef %i.ai, i32 noundef %i.ag)
  %i.ak = load i32, ptr @ett_sm_pco, align 4
  %i.al = call ptr @proto_item_add_subtree(ptr noundef %i.aj, i32 noundef %i.ak) ; 82 uses
  %i.am = add i32 %.0518544, 2
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %switch.tableidx = add i16 %i.ae, -35           ; 2 uses
  %i.an = icmp ult i16 %switch.tableidx, 52
  br i1 %i.an, label %switch.lookup581, label %.thread

bb.f:                                             ; preds = %bb.d
  %switch.tableidx580 = add i16 %i.ae, -65        ; 2 uses
  %i.ao = icmp ult i16 %switch.tableidx580, 22
  %or.cond = and i1 %.not, %i.ao
  br i1 %or.cond, label %switch.lookup581, label %.thread

switch.lookup581:                                 ; preds = %bb.f, %bb.e
  %switch.tableidx580.sink598 = phi i16 [ %switch.tableidx, %bb.e ], [ %switch.tableidx580, %bb.f ] ; 4 uses
  %switch.table.de_sm_pco.9.sink = phi ptr [ @switch.table.de_sm_pco, %bb.e ], [ @switch.table.de_sm_pco.9, %bb.f ]
  %switch.table.de_sm_pco.10.sink = phi ptr [ @switch.table.de_sm_pco.6, %bb.e ], [ @switch.table.de_sm_pco.10, %bb.f ]
  %switch.table.de_sm_pco.11.sink = phi ptr [ @switch.table.de_sm_pco.7, %bb.e ], [ @switch.table.de_sm_pco.11, %bb.f ]
  %switch.table.de_sm_pco.12.sink = phi ptr [ @switch.table.de_sm_pco.8, %bb.e ], [ @switch.table.de_sm_pco.12, %bb.f ]
  %i.ap = zext nneg i16 %switch.tableidx580.sink598 to i64
  %switch.gep582 = getelementptr inbounds nuw [8 x i8], ptr %switch.table.de_sm_pco.9.sink, i64 %i.ap
  %switch.load583 = load ptr, ptr %switch.gep582, align 8
  %i.aq = zext nneg i16 %switch.tableidx580.sink598 to i64
  %switch.gep584 = getelementptr inbounds nuw i8, ptr %switch.table.de_sm_pco.10.sink, i64 %i.aq
  %switch.load585 = load i8, ptr %switch.gep584, align 1
  %switch.ext586 = zext i8 %switch.load585 to i32
  %i.ar = zext nneg i16 %switch.tableidx580.sink598 to i64
  %switch.gep587 = getelementptr inbounds nuw [4 x i8], ptr %switch.table.de_sm_pco.11.sink, i64 %i.ar
  %switch.load588 = load i32, ptr %switch.gep587, align 4
  %i.as = zext nneg i16 %switch.tableidx580.sink598 to i64
  %switch.gep589 = getelementptr inbounds nuw i8, ptr %switch.table.de_sm_pco.12.sink, i64 %i.as
  %switch.load590 = load i8, ptr %switch.gep589, align 1
  %switch.ext591 = zext i8 %switch.load590 to i32
  br label %.thread

.thread:                                          ; preds = %switch.lookup581, %bb.f, %bb.e
  %hf_gsm_a_gm_sm_pco_length.sink = phi ptr [ @hf_gsm_a_gm_sm_pco_length, %bb.e ], [ @hf_gsm_a_gm_sm_pco_length, %bb.f ], [ %switch.load583, %switch.lookup581 ]
  %.sink571 = phi i32 [ 1, %bb.e ], [ 1, %bb.f ], [ %switch.ext586, %switch.lookup581 ]
  %.sink569 = phi i32 [ -3, %bb.e ], [ -3, %bb.f ], [ %switch.load588, %switch.lookup581 ]
  %.sink = phi i32 [ 3, %bb.e ], [ 3, %bb.f ], [ %switch.ext591, %switch.lookup581 ]
  %i.at = load i32, ptr %hf_gsm_a_gm_sm_pco_length.sink, align 4
  %i.au = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.al, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.am, i32 noundef %.sink571, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.av = add nsw i32 %.0516545, %.sink569
  %i.aw = add i32 %.0518544, %.sink               ; 71 uses
  switch i16 %i.ae, label %bb.dq [
    i16 1, label %bb.g
    i16 3, label %bb.i
    i16 7, label %bb.k
    i16 2, label %bb.dx
    i16 6, label %bb.dx
    i16 10, label %bb.dx
    i16 11, label %bb.dx
    i16 15, label %bb.dx
    i16 17, label %bb.dx
    i16 18, label %bb.dx
    i16 19, label %bb.dx
    i16 24, label %bb.dx
    i16 62, label %bb.dx
    i16 63, label %bb.dx
    i16 64, label %bb.dx
    i16 71, label %bb.dx
    i16 72, label %bb.dx
    i16 73, label %bb.dx
    i16 74, label %bb.dx
    i16 80, label %bb.dx
    i16 4, label %bb.m
    i16 5, label %bb.o
    i16 8, label %bb.q
    i16 9, label %bb.s
    i16 12, label %bb.u
    i16 13, label %bb.w
    i16 14, label %bb.y
    i16 16, label %bb.aa
    i16 20, label %bb.ac
    i16 21, label %bb.ae
    i16 22, label %bb.ag
    i16 37, label %bb.ag
    i16 23, label %bb.aj
    i16 25, label %bb.al
    i16 38, label %bb.al
    i16 26, label %bb.ao
    i16 27, label %bb.aq
    i16 28, label %bb.as
    i16 35, label %bb.as
    i16 29, label %bb.au
    i16 30, label %bb.aw
    i16 31, label %bb.ay
    i16 36, label %bb.ay
    i16 32, label %bb.ba
    i16 33, label %bb.bc
    i16 34, label %bb.be
    i16 39, label %bb.bg
    i16 40, label %bb.bi
    i16 41, label %bb.bi
    i16 42, label %bb.bi
    i16 43, label %bb.bi
    i16 48, label %bb.bk
    i16 49, label %bb.bm
    i16 50, label %bb.bw
    i16 53, label %bb.ck
    i16 54, label %bb.cm
    i16 55, label %bb.cm
    i16 56, label %bb.cm
    i16 57, label %bb.cw
    i16 58, label %bb.cy
    i16 59, label %bb.da
    i16 60, label %bb.dc
    i16 61, label %bb.de
    i16 65, label %bb.dg
    i16 81, label %bb.dh
    i16 82, label %bb.dk
    i16 86, label %bb.dm
    i16 88, label %bb.do
  ]

bb.g:                                             ; preds = %.thread
  %i.ax = load i32, ptr %i.a, align 4
  %i.ay = icmp ne i32 %i.ax, 0
  %or.cond28 = select i1 %i.ac, i1 %i.ay, i1 false
  br i1 %or.cond28, label %bb.h, label %bb.dx

bb.h:                                             ; preds = %bb.g
  %i.az = load i32, ptr @hf_gsm_a_gm_sm_pco_pcscf_ipv6, align 4
  %i.ba = call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.az, ptr noundef %0, i32 noundef %i.aw, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.dx

bb.i:                                             ; preds = %.thread
  %i.bb = load i32, ptr %i.a, align 4
  %i.bc = icmp ne i32 %i.bb, 0
  %or.cond30 = select i1 %i.ac, i1 %i.bc, i1 false
  br i1 %or.cond30, label %bb.j, label %bb.dx

bb.j:                                             ; preds = %bb.i
  %i.bd = load i32, ptr @hf_gsm_a_gm_sm_pco_dns_ipv6, align 4
  %i.be = call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.aw, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.dx

bb.k:                                             ; preds = %.thread
  %i.bf = load i32, ptr %i.a, align 4
  %i.bg = icmp ne i32 %i.bf, 0
  %or.cond32 = select i1 %i.ac, i1 %i.bg, i1 false
  br i1 %or.cond32, label %bb.l, label %bb.dx

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr @hf_gsm_a_gm_sm_pco_dsmipv6_home_agent_ipv6, align 4
  %i.bi = call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.bh, ptr noundef %0, i32 noundef %i.aw, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.dx

bb.m:                                             ; preds = %.thread
  %i.bj = load i32, ptr %i.a, align 4
  %i.bk = icmp eq i32 %i.bj, 1
  %or.cond34 = select i1 %i.ac, i1 %i.bk, i1 false
  br i1 %or.cond34, label %bb.n, label %bb.dx

bb.n:                                             ; preds = %bb.m
  %i.bl = load i32, ptr @hf_gsm_a_gm_sm_pco_reject_code, align 4
  %i.bm = call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.bl, ptr noundef %0, i32 noundef %i.aw, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.dx

bb.o:                                             ; preds = %.thread
  %i.bn = load i32, ptr %i.a, align 4
  %i.bo = icmp eq i32 %i.bn, 1
  %or.cond36 = select i1 %i.ac, i1 %i.bo, i1 false
  br i1 %or.cond36, label %bb.p, label %bb.dx

bb.p:                                             ; preds = %bb.o
  %i.bp = load i32, ptr @hf_gsm_a_gm_sm_pco_sel_bearer_ctrl_mode, align 4
  %i.bq = call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.bp, ptr noundef %0, i32 noundef %i.aw, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.dx

bb.q:                                             ; preds = %.thread
  %i.br = load i32, ptr %i.a, align 4
  %i.bs = icmp ne i32 %i.br, 0
  %or.cond38 = select i1 %i.ac, i1 %i.bs, i1 false
  br i1 %or.cond38, label %bb.r, label %bb.dx

bb.r:                                             ; preds = %bb.q
  %i.bt = load i32, ptr @hf_gsm_a_gm_sm_pco_dsmipv6_home_network_ipv6, align 4
  %i.bu = call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.bt, ptr noundef %0, i32 noundef %i.aw, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.bv = load i32, ptr @hf_gsm_a_gm_sm_pco_dsmipv6_home_network_prefix_length, align 4
  %i.bw = add i32 %i.aw, 16
  %i.bx = call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.bv, ptr noundef %0, i32 noundef %i.bw, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.dx

bb.s:                                             ; preds = %.thread
  %i.by = load i32, ptr %i.a, align 4
  %i.bz = icmp ne i32 %i.by, 0
  %or.cond40 = select i1 %i.ac, i1 %i.bz, i1 false
  br i1 %or.cond40, label %bb.t, label %bb.dx

bb.t:                                             ; preds = %bb.s
  %i.ca = load i32, ptr @hf_gsm_a_gm_sm_pco_dsmipv6_home_agent_ipv4, align 4
  %i.cb = call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.ca, ptr noundef %0, i32 noundef %i.aw, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.dx

bb.u:                                             ; preds = %.thread
  %i.cc = load i32, ptr %i.a, align 4
  %i.cd = icmp ne i32 %i.cc, 0
  %or.cond42 = select i1 %i.ac, i1 %i.cd, i1 false
  br i1 %or.cond42, label %bb.v, label %bb.dx

bb.v:                                             ; preds = %bb.u
  %i.ce = load i32, ptr @hf_gsm_a_gm_sm_pco_pcscf_ipv4, align 4
  %i.cf = call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.ce, ptr noundef %0, i32 noundef %i.aw, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.dx

bb.w:                                             ; preds = %.thread
  %i.cg = load i32, ptr %i.a, align 4
  %i.ch = icmp ne i32 %i.cg, 0
  %or.cond44 = select i1 %i.ac, i1 %i.ch, i1 false
  br i1 %or.cond44, label %bb.x, label %bb.dx

bb.x:                                             ; preds = %bb.w
  %i.ci = load i32, ptr @hf_gsm_a_gm_sm_pco_dns_ipv4, align 4
  %i.cj = call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.ci, ptr noundef %0, i32 noundef %i.aw, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.dx

bb.y:                                             ; preds = %.thread
  %i.ck = load i32, ptr %i.a, align 4             ; 2 uses
  %i.cl = icmp ne i32 %i.ck, 0
  %or.cond46 = select i1 %i.ac, i1 %i.cl, i1 false
  br i1 %or.cond46, label %bb.z, label %bb.dx

bb.z:                                             ; preds = %bb.y
  %i.cm = call ptr @dissect_e164_msisdn(ptr noundef %0, ptr noundef %2, ptr noundef %i.al, i32 noundef %i.aw, i32 noundef %i.ck, i32 noundef 1) ; 0 uses
  br label %bb.dx

bb.aa:                                            ; preds = %.thread
  %i.cn = load i32, ptr %i.a, align 4
  %i.co = icmp eq i32 %i.cn, 2
  %or.cond48 = select i1 %i.ac, i1 %i.co, i1 false
  br i1 %or.cond48, label %bb.ab, label %bb.dx

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load i32, ptr @hf_gsm_a_gm_sm_pco_ipv4_link_mtu_size, align 4
  %i.cq = call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.cp, ptr noundef %0, i32 noundef %i.aw, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.dx

bb.ac:                                            ; preds = %.thread
  %i.cr = load i32, ptr %i.a, align 4
end_hunk_1
