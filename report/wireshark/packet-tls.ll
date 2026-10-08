Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-tls?download=true
inline.NumInlined: 52
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_tls_handshake:bb.a
bb.j:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.0179.lcssa261 = phi i32 [ %.0179.lcssa262, %._crit_edge.thread ], [ %i.u, %._crit_edge ] ; 3 uses
  tail call void @tvb_composite_finalize(ptr noundef %i.m)
  %i.w = sub i32 %4, %3                           ; 2 uses
  %i.x = tail call i32 @tvb_reported_length(ptr noundef %i.m)
  %i.y = icmp ugt i32 %i.x, 3
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = tail call i32 @tvb_get_ntoh24(ptr noundef %i.m, i32 noundef 1)
  %i.aa = add i32 %i.z, 4                         ; 2 uses
  %i.ab = sub i32 %i.aa, %.0179.lcssa261
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.ab)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0186 = phi i32 [ %i.w, %bb.j ], [ %spec.select, %bb.k ] ; 3 uses
  %.0184 = phi i32 [ 0, %bb.j ], [ %i.aa, %bb.k ]
  %i.ac = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.ad = add i32 %.0186, %3
  %i.ae = icmp ult i32 %i.ac, %i.ad
  br i1 %i.ae, label %.split, label %bb.m

.split:                                           ; preds = %bb.l
  store i32 0, ptr %i.b, align 4
  br i1 %5, label %bb.x, label %is_encrypted_handshake_message.exit

bb.m:                                             ; preds = %bb.l
  %i.af = tail call zeroext i8 @tvb_get_uint8(ptr noundef %i.m, i32 noundef 0)
  %i.ag = add i32 %.0186, %.0179.lcssa261
  %i.ah = icmp eq i32 %i.ag, %.0184               ; 2 uses
  %i.ai = load i32, ptr %i.b, align 4
  %i.aj = tail call fastcc ptr @save_tls_handshake_fragment(ptr noundef %1, i8 noundef zeroext %7, i32 noundef %6, i32 noundef %i.ai, ptr noundef %0, i32 noundef %3, i32 noundef %.0186, i32 noundef %.0179.lcssa261, i8 noundef zeroext %i.af, i1 noundef zeroext %i.ah, ptr noundef %8) ; 2 uses
  br i1 %i.ah, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.b, align 4
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  %i.ak = tail call ptr @wmem_file_scope()
  %i.al = load i32, ptr @proto_tls, align 4
  %i.am = zext i8 %7 to i32
  %i.an = tail call ptr @p_get_proto_data(ptr noundef %i.ak, ptr noundef %1, i32 noundef %i.al, i32 noundef %i.am) ; 2 uses
  %.not200 = icmp eq ptr %i.an, null
  br i1 %.not200, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %.0177229 = load ptr, ptr %i.ao, align 8        ; 2 uses
  %.not201230 = icmp eq ptr %.0177229, null
  br i1 %.not201230, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %bb.q
  %.0177231 = phi ptr [ %.0177, %bb.q ], [ %.0177229, %bb.p ] ; 3 uses
  %i.ap = load i32, ptr %.0177231, align 8
  %i.aq = icmp eq i32 %i.ap, %6
  br i1 %i.aq, label %.thread216, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.ar = getelementptr i8, ptr %.0177231, i64 16
  %.0177 = load ptr, ptr %i.ar, align 8           ; 2 uses
  %.not201 = icmp eq ptr %.0177, null
  br i1 %.not201, label %.thread, label %.lr.ph, !llvm.loop !19

bb.r:                                             ; preds = %bb.n, %bb.m
  %.not202 = icmp eq ptr %i.aj, null
  br i1 %.not202, label %.thread, label %.thread216

.thread216:                                       ; preds = %.lr.ph, %bb.r
  %.3219 = phi ptr [ %i.aj, %bb.r ], [ %.0177231, %.lr.ph ] ; 7 uses
  %i.as = getelementptr i8, ptr %.3219, i64 8     ; 2 uses
  %i.at = load i32, ptr %i.as, align 8
  %.not203 = icmp eq i32 %i.at, 0
  br i1 %.not203, label %is_encrypted_handshake_message.exit, label %bb.s

bb.s:                                             ; preds = %.thread216
  %i.au = getelementptr i8, ptr %.3219, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = tail call ptr @fragment_get_reassembled_id(ptr noundef nonnull @tls_hs_reassembly_table, ptr noundef %1, i32 noundef %i.av) ; 4 uses
  %i.ax = getelementptr i8, ptr %.3219, i64 13
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = and i8 %i.ay, 1
  %.not204 = icmp eq i8 %i.az, 0
  br i1 %.not204, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr i8, ptr %i.aw, i64 56     ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load i32, ptr %i.as, align 8
  %i.bd = tail call i32 @tvb_reported_length_remaining(ptr noundef %i.bb, i32 noundef %i.bc) ; 2 uses
  %i.be = load i32, ptr @hf_tls_handshake_protocol, align 4
  %i.bf = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.be, ptr noundef %0, i32 noundef %3, i32 noundef %i.bd, i32 noundef 0)
  %i.bg = add i32 %i.bd, %3                       ; 2 uses
  %i.bh = getelementptr i8, ptr %.3219, i64 12
  %i.bi = load i8, ptr %i.bh, align 4
  %i.bj = zext i8 %i.bi to i32
  %i.bk = tail call ptr @val_to_str_const(i32 noundef %i.bj, ptr noundef nonnull @ssl_31_handshake_type, ptr noundef nonnull @.str.1052)
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.bf, ptr noundef nonnull @.str.1051, ptr noundef %i.bk)
  %i.bl = load ptr, ptr %i.ba, align 8
  %i.bm = tail call ptr @tvb_new_chain(ptr noundef %0, ptr noundef %i.bl) ; 3 uses
  %i.bn = tail call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.bm, ptr noundef nonnull @.str.1053) ; 0 uses
  %i.bo = call zeroext i1 @show_fragment_tree(ptr noundef %i.aw, ptr noundef nonnull @tls_hs_fragment_items, ptr noundef %2, ptr noundef %1, ptr noundef %i.bm, ptr noundef nonnull %i.a) ; 0 uses
  call fastcc void @dissect_tls_handshake_full(ptr noundef %i.bm, ptr noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef %8, i32 noundef %9, ptr noundef %10, i16 noundef zeroext %11, i1 noundef zeroext true, i8 noundef zeroext %7)
  %i.bp = getelementptr i8, ptr %.3219, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %.not206 = icmp eq ptr %i.bq, null
  br i1 %.not206, label %is_encrypted_handshake_message.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = load i32, ptr %i.bq, align 8
  %.not207 = icmp eq i32 %i.br, %6
  %spec.store.select = select i1 %.not207, ptr %i.bq, ptr null
  br label %is_encrypted_handshake_message.exit

bb.v:                                             ; preds = %bb.s
  %i.bs = zext i16 %11 to i32
  %i.bt = getelementptr i8, ptr %.3219, i64 12
  %i.bu = load i8, ptr %i.bt, align 4
  %i.bv = sub i32 %4, %3
  %i.bw = zext i8 %i.bu to i32
  %i.bx = tail call ptr @val_to_str_const(i32 noundef %i.bw, ptr noundef nonnull @ssl_31_handshake_type, ptr noundef nonnull @.str.1052) ; 3 uses
  %i.by = getelementptr i8, ptr %1, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.bz, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.1063, ptr noundef %i.bx)
  %i.ca = tail call ptr @val_to_str_const(i32 noundef range(i32 0, 65536) %i.bs, ptr noundef nonnull @ssl_version_short_names, ptr noundef nonnull @.str.926)
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %2, ptr noundef nonnull @.str.1064, ptr noundef %i.ca, ptr noundef %i.bx)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef nonnull @.str.1065)
  %i.cb = load i32, ptr @hf_tls_handshake_protocol, align 4
  %i.cc = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cb, ptr noundef %0, i32 noundef %3, i32 noundef %i.bv, i32 noundef 0) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.cc, ptr noundef nonnull @.str.1067, ptr noundef %i.bx)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.cc, ptr noundef nonnull @.str.1065)
  %.not205 = icmp eq ptr %i.aw, null
  br i1 %.not205, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = load i32, ptr @hf_tls_handshake_reassembled_in, align 4
  %i.ce = getelementptr i8, ptr %i.aw, i64 40
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.cd, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.cf) ; 0 uses
  br label %.loopexit

.thread:                                          ; preds = %bb.q, %bb.p, %bb.o, %bb.b, %bb.r
  br i1 %5, label %bb.x, label %is_encrypted_handshake_message.exit

bb.x:                                             ; preds = %.split, %.thread
  %i.ch = sub i32 %4, %3                          ; 2 uses
  %i.ci = icmp ult i32 %i.ch, 16
  br i1 %i.ci, label %is_encrypted_handshake_message.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = tail call i64 @tvb_get_ntoh40(ptr noundef %0, i32 noundef %3)
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3) ; 2 uses
  %i.cm = zext i8 %i.cl to i32
  %i.cn = tail call ptr @try_val_to_str(i32 noundef %i.cm, ptr noundef nonnull @ssl_31_handshake_type)
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = add i32 %3, 1
  %i.cq = tail call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef %i.cp) ; 2 uses
  %i.cr = icmp ugt i32 %i.cq, 65535
  %i.cs = icmp samesign ugt i32 %i.cq, 1023
  br i1 %i.cr, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.v.i = select i1 %.not225, i64 48, i64 52
  %i.ct = getelementptr i8, ptr %8, i64 %.v.i     ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4            ; 2 uses
  %.not.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i, label %is_encrypted_handshake_message.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = getelementptr i8, ptr %1, i64 20
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = icmp ugt i32 %i.cw, %i.cu
  br i1 %i.cx, label %bb.ad, label %is_encrypted_handshake_message.exit

bb.ad:                                            ; preds = %bb.ac
  %.029.off.i = add i8 %i.cl, -1
  %switch.i = icmp ult i8 %.029.off.i, 2
  br i1 %switch.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.cy = add i32 %3, 4
  %i.cz = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.cy)
  %i.da = zext i16 %i.cz to i32
  %i.db = tail call ptr @try_val_to_str(i32 noundef %i.da, ptr noundef nonnull @ssl_versions)
  %i.dc = icmp eq ptr %i.db, null
  %narrow.i = select i1 %i.dc, i1 true, i1 %i.cs
  br i1 %narrow.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.ct, align 4
  br label %is_encrypted_handshake_message.exit

bb.ag:                                            ; preds = %bb.aa, %bb.y, %bb.z, %bb.ae, %bb.ad
  %i.dd = zext i16 %11 to i32
  %i.de = getelementptr i8, ptr %1, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  tail call void @col_append_sep_str(ptr noundef %i.df, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.1052)
  %i.dg = tail call ptr @val_to_str_const(i32 noundef range(i32 0, 65536) %i.dd, ptr noundef nonnull @ssl_version_short_names, ptr noundef nonnull @.str.926)
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %2, ptr noundef nonnull @.str.1064, ptr noundef %i.dg, ptr noundef nonnull @.str.1052)
  %i.dh = load i32, ptr @hf_tls_handshake_protocol, align 4
  %i.di = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dh, ptr noundef %0, i32 noundef %3, i32 noundef %i.ch, i32 noundef 0)
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.di, ptr noundef nonnull @.str.1067, ptr noundef nonnull @.str.1052)
  br label %.loopexit

is_encrypted_handshake_message.exit:              ; preds = %.thread216, %.split, %bb.af, %bb.ac, %bb.ab, %bb.x, %bb.t, %bb.u, %.thread
  %.5 = phi ptr [ null, %.thread ], [ null, %bb.t ], [ %spec.store.select, %bb.u ], [ null, %bb.x ], [ null, %bb.ab ], [ null, %bb.ac ], [ null, %bb.af ], [ null, %.split ], [ %.3219, %.thread216 ] ; 3 uses
  %.0180 = phi i1 [ true, %.thread ], [ false, %bb.t ], [ false, %bb.u ], [ true, %bb.x ], [ true, %bb.ab ], [ true, %bb.ac ], [ true, %bb.af ], [ true, %.split ], [ true, %.thread216 ] ; 3 uses
  %.0 = phi i32 [ %3, %.thread ], [ %i.bg, %bb.t ], [ %i.bg, %bb.u ], [ %3, %bb.x ], [ %3, %bb.ab ], [ %3, %bb.ac ], [ %3, %bb.af ], [ %3, %.split ], [ %3, %.thread216 ] ; 7 uses
  %i.dj = icmp ult i32 %.0, %4
  br i1 %i.dj, label %.lr.ph239.preheader, label %.loopexit

.lr.ph239.preheader:                              ; preds = %is_encrypted_handshake_message.exit
  %i.dk = sub nuw i32 %4, %.0                     ; 4 uses
  %i.dl = icmp ugt i32 %i.dk, 3
  br i1 %i.dl, label %bb.ah, label %.thread222

bb.ah:                                            ; preds = %.lr.ph239.preheader
  %i.dm = add nuw i32 %.0, 1
  %i.dn = call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef %i.dm) ; 2 uses
  %i.do = add i32 %i.dn, 3
  %or.cond211.not.peel = icmp ult i32 %i.do, %i.dk
  br i1 %or.cond211.not.peel, label %bb.ai, label %.thread222

bb.ai:                                            ; preds = %bb.ah
  call fastcc void @dissect_tls_handshake_full(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0, ptr noundef %8, i32 noundef %9, ptr noundef %10, i16 noundef zeroext %11, i1 noundef zeroext %.0180, i8 noundef zeroext %7)
  %i.dp = add i32 %.0, 4
  %i.dq = add i32 %i.dp, %i.dn                    ; 2 uses
  %i.dr = icmp ult i32 %i.dq, %4
  br i1 %i.dr, label %.lr.ph239, label %.loopexit

.lr.ph239:                                        ; preds = %bb.ai, %bb.aq
  %.1238 = phi i32 [ %i.eu, %bb.aq ], [ %i.dq, %bb.ai ] ; 6 uses
  %i.ds = sub nuw i32 %4, %.1238                  ; 4 uses
  %i.dt = icmp ugt i32 %i.ds, 3
  br i1 %i.dt, label %bb.aj, label %.thread222

bb.aj:                                            ; preds = %.lr.ph239
  %i.du = add nuw i32 %.1238, 1
  %i.dv = call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef %i.du) ; 2 uses
  %i.dw = add i32 %i.dv, 3
  %or.cond211.not = icmp ult i32 %i.dw, %i.ds
  br i1 %or.cond211.not, label %bb.aq, label %.thread222

.thread222:                                       ; preds = %.lr.ph239, %bb.aj, %bb.ah, %.lr.ph239.preheader
  %.1238.lcssa = phi i32 [ %.0, %.lr.ph239.preheader ], [ %.0, %bb.ah ], [ %.1238, %bb.aj ], [ %.1238, %.lr.ph239 ] ; 3 uses
  %.1181237.lcssa = phi i1 [ %.0180, %.lr.ph239.preheader ], [ %.0180, %bb.ah ], [ false, %bb.aj ], [ false, %.lr.ph239 ]
  %.lcssa = phi i32 [ %i.dk, %.lr.ph239.preheader ], [ %i.dk, %bb.ah ], [ %i.ds, %bb.aj ], [ %i.ds, %.lr.ph239 ] ; 2 uses
  %i.dx = load ptr, ptr %i.c, align 8
  %i.dy = getelementptr i8, ptr %i.dx, i64 53
  %i.dz = load i16, ptr %i.dy, align 1
  %i.ea = and i16 %i.dz, 8
  %.not208 = icmp eq i16 %i.ea, 0
  br i1 %.not208, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.thread222
  %i.eb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1238.lcssa)
  %i.ec = load i32, ptr @hs_reassembly_id_count, align 4
  %i.ed = add i32 %i.ec, 1                        ; 3 uses
  store i32 %i.ed, ptr @hs_reassembly_id_count, align 4
  store i32 %i.ed, ptr %i.b, align 4
  %i.ee = call fastcc ptr @save_tls_handshake_fragment(ptr noundef %1, i8 noundef zeroext %7, i32 noundef %6, i32 noundef %i.ed, ptr noundef %0, i32 noundef %.1238.lcssa, i32 noundef %.lcssa, i32 noundef 0, i8 noundef zeroext %i.eb, i1 noundef zeroext false, ptr noundef %8)
  br label %bb.ao

bb.al:                                            ; preds = %.thread222
  %.not209 = icmp eq ptr %.5, null
  br i1 %.not209, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ef = getelementptr i8, ptr %.5, i64 8
  %i.eg = load i32, ptr %i.ef, align 8
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 3076, ptr noundef nonnull @.str.1054) #17
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.ak
  %.6 = phi ptr [ %.5, %bb.am ], [ %i.ee, %bb.ak ] ; 2 uses
  %i.ei = zext i16 %11 to i32
  %i.ej = getelementptr i8, ptr %.6, i64 12
  %i.ek = load i8, ptr %i.ej, align 4
  %i.el = call fastcc ptr @tls_show_handshake_details(ptr noundef %1, ptr noundef %2, i32 noundef %i.ei, i8 noundef zeroext %i.ek, i1 noundef zeroext false, i1 noundef zeroext %.1181237.lcssa, i1 noundef zeroext false, ptr noundef %0, i32 noundef %.1238.lcssa, i32 noundef %.lcssa) ; 0 uses
  %i.em = getelementptr i8, ptr %.6, i64 4
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = call ptr @fragment_get_reassembled_id(ptr noundef nonnull @tls_hs_reassembly_table, ptr noundef %1, i32 noundef %i.en) ; 2 uses
  %.not210 = icmp eq ptr %i.eo, null
  br i1 %.not210, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ep = load i32, ptr @hf_tls_handshake_reassembled_in, align 4
  %i.eq = getelementptr i8, ptr %i.eo, i64 40
  %i.er = load i32, ptr %i.eq, align 8
  %i.es = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ep, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.er) ; 0 uses
  br label %.loopexit

bb.aq:                                            ; preds = %bb.aj
  call fastcc void @dissect_tls_handshake_full(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.1238, ptr noundef %8, i32 noundef %9, ptr noundef %10, i16 noundef zeroext %11, i1 noundef zeroext false, i8 noundef zeroext %7)
  %i.et = add i32 %.1238, 4
  %i.eu = add i32 %i.et, %i.dv                    ; 2 uses
  %i.ev = icmp ult i32 %i.eu, %4
  br i1 %i.ev, label %.lr.ph239, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %bb.aq, %bb.ai, %is_encrypted_handshake_message.exit, %bb.ap, %bb.ao, %bb.v, %bb.w, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @dissector_handle_get_protocol_long_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_ssl_payload(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr noundef initializes((0, 4)) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %4, i64 40         ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  store i32 %i.c, ptr %6, align 8
  %i.d = getelementptr i8, ptr %1, i64 336        ; 5 uses
  %i.e = load i16, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %4, i64 12         ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  tail call void (ptr, ...) @ssl_debug_printf(ptr noundef nonnull @.str.1068, ptr noundef nonnull @__func__.dissect_ssl_payload, i32 noundef %i.g)
  %i.h = load ptr, ptr %4, align 8
  %i.i = load i32, ptr %i.f, align 4
  %i.j = zext i32 %i.i to i64
  tail call void @ssl_print_data(ptr noundef nonnull @.str.1069, ptr noundef %i.h, i64 noundef %i.j)
  %i.k = load i8, ptr @tls_desegment_app_data, align 1, !range !7, !noundef !8
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.bi

bb.b:                                             ; preds = %bb.a
  store i16 2, ptr %i.d, align 8
  %i.m = load i32, ptr %i.b, align 8              ; 3 uses
  %i.n = load i32, ptr %i.f, align 4
  %i.o = add i32 %i.n, %i.m                       ; 10 uses
  %i.p = tail call ptr @proto_tree_get_root(ptr noundef %2) ; 2 uses
  %i.q = getelementptr i8, ptr %4, i64 24
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 340        ; 9 uses
  %i.t = getelementptr i8, ptr %1, i64 344        ; 11 uses
  %i.u = getelementptr i8, ptr %i.r, i64 8        ; 7 uses
  store i32 0, ptr %i.s, align 4
  store i32 0, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call ptr @wmem_tree_lookup32(ptr noundef %i.v, i32 noundef %i.m) ; 2 uses
  %.not386.i = icmp eq ptr %i.w, null
  br i1 %.not386.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.x = getelementptr i8, ptr %1, i64 80         ; 3 uses
  %i.y = getelementptr i8, ptr %1, i64 20         ; 3 uses
  %i.z = getelementptr i8, ptr %1, i64 24
  %i.aa = getelementptr i8, ptr %1, i64 8         ; 5 uses
  %i.ab = getelementptr i8, ptr %6, i64 4
  %i.ac = getelementptr i8, ptr %i.r, i64 4       ; 4 uses
  %i.ad = add i32 %i.o, 1073741824                ; 2 uses
  %i.ae = add i32 %i.o, 1
  %i.af = getelementptr i8, ptr %3, i64 8
  br label %bb.l

._crit_edge.i:                                    ; preds = %bb.bh, %bb.b
  %.0238.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.gz, %bb.bh ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.w, %bb.b ], [ %i.hc, %bb.bh ] ; 3 uses
  %i.ag = getelementptr i8, ptr %.lcssa.i, i64 8  ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr i8, ptr %1, i64 20        ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %.not274.i = icmp eq i32 %i.ah, %i.aj
  br i1 %.not274.i, label %bb.c, label %proto_item_set_generated.exit.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.ak = getelementptr i8, ptr %.lcssa.i, i64 12
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp eq i32 %i.al, %i.ah
  %i.an = getelementptr i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @col_clear(ptr noundef %i.ao, i32 noundef 25)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @col_set_str(ptr noundef %i.ao, i32 noundef 25, ptr noundef nonnull @.str.1070)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ap = load i32, ptr %i.ag, align 8
  %i.aq = call ptr @fragment_get(ptr noundef nonnull @ssl_reassembly_table, ptr noundef %1, i32 noundef %i.ap, ptr noundef nonnull %.lcssa.i) ; 2 uses
end_hunk_0
