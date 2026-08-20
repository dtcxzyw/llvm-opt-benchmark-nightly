inline.NumInlined: 27
inline.NumDeleted: 25
begin_hunk_0_@dissect_v5ua:bb.a
  br label %bb.u

bb.u:                                             ; preds = %dissect_draft_error_code_parameter.exit.i.i, %.thread.i.i.i
  %i.dm = phi i32 [ %.pr.i.i.i, %dissect_draft_error_code_parameter.exit.i.i ], [ %i.cw, %.thread.i.i.i ] ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.do = load ptr, ptr %i.e, align 8
  %i.dp = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 2)
  %i.dq = zext i16 %i.dp to i32
  %i.dr = add nuw nsw i32 %i.dq, 8                ; 3 uses
  %i.ds = call i32 @tvb_reported_length_remaining(ptr noundef %i.bv, i32 noundef %i.dr)
  %.not.i36.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i36.i.i, label %dissect_draft_tei_status_parameter.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = load i32, ptr @hf_tei_draft_status, align 4
  %i.du = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.dt, ptr noundef %i.bv, i32 noundef %i.dr, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.dv = call i32 @tvb_get_ntohl(ptr noundef %i.bv, i32 noundef %i.dr)
  %i.dw = call ptr @val_to_str_const(i32 noundef %i.dv, ptr noundef nonnull @tei_draft_status_values, ptr noundef nonnull @.str.254)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.do, ptr noundef nonnull @.str.178, ptr noundef %i.dw)
  br label %dissect_draft_tei_status_parameter.exit.i.i

dissect_draft_tei_status_parameter.exit.i.i:      ; preds = %bb.w, %bb.v
  %.pre.i.i.i = load i32, ptr @msg_class, align 4
  br label %bb.x

bb.x:                                             ; preds = %dissect_draft_tei_status_parameter.exit.i.i, %bb.u
  %i.dx = phi i32 [ %.pre.i.i.i, %dissect_draft_tei_status_parameter.exit.i.i ], [ %i.dm, %bb.u ]
  %i.dy = icmp eq i32 %i.dx, 9
  br i1 %i.dy, label %bb.y, label %dissect_release_reason_parameter.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.dz = load i32, ptr @msg_type, align 4        ; 2 uses
  %i.ea = add i32 %i.dz, -1
  %or.cond16.i.i.i = icmp ult i32 %i.ea, 4
  br i1 %or.cond16.i.i.i, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.eb = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 2)
  %i.ec = add i16 %i.eb, 8                        ; 3 uses
  %i.ed = load i32, ptr @msg_length, align 4
  %i.ee = zext i16 %i.ec to i32                   ; 2 uses
  %i.ef = trunc i32 %i.ed to i16                  ; 2 uses
  %i.eg = sub i16 %i.ef, %i.ec
  %i.eh = zext i16 %i.eg to i32
  %.not.i.i.i = icmp eq i16 %i.ec, %i.ef
  br i1 %.not.i.i.i, label %dissect_release_reason_parameter.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ei = call zeroext i8 @tvb_get_uint8(ptr noundef %i.bv, i32 noundef %i.ee)
  %i.ej = icmp eq i8 %i.ei, 72
  br i1 %i.ej, label %bb.ab, label %dissect_release_reason_parameter.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ek = call ptr @tvb_new_subset_length(ptr noundef %i.bv, i32 noundef %i.ee, i32 noundef %i.eh) ; 3 uses
  %i.el = load ptr, ptr %i.e, align 8
  %.b.i35.i.i = load i1, ptr @iua_version, align 4
  %..i.i.i = select i1 %.b.i35.i.i, i32 0, i32 4
  %i.em = call zeroext i8 @tvb_get_uint8(ptr noundef %i.ek, i32 noundef %..i.i.i)
  %i.en = icmp eq i8 %i.em, 72
  %i.eo = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.ek, i32 noundef 2)
  %i.ep = add i16 %i.eo, -4                       ; 2 uses
  %i.eq = zext i16 %i.ep to i32                   ; 2 uses
  %i.er = call ptr @tvb_new_subset_length(ptr noundef %i.ek, i32 noundef 4, i32 noundef %i.eq)
  %i.es = icmp eq i16 %i.ep, 1
  %i.et = select i1 %i.es, ptr @.str.256, ptr @.str.257
  %v52_handle.val.i.i.i = load ptr, ptr @v52_handle, align 8
  %q931_handle.val.i.i.i = load ptr, ptr @q931_handle, align 8
  %i.eu = select i1 %i.en, ptr %v52_handle.val.i.i.i, ptr %q931_handle.val.i.i.i
  %i.ev = call i32 @call_dissector(ptr noundef %i.eu, ptr noundef %i.er, ptr noundef %1, ptr noundef %i.m) ; 0 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.el, ptr noundef nonnull @.str.255, i32 noundef %i.eq, ptr noundef nonnull %i.et)
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.ac:                                            ; preds = %bb.y
  %i.ew = and i32 %i.dz, -3
  %or.cond18.i.i.i = icmp eq i32 %i.ew, 8
  br i1 %or.cond18.i.i.i, label %bb.ad, label %dissect_release_reason_parameter.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.ex = load ptr, ptr %i.e, align 8
  %.b6.i.i.i = load i1, ptr @iua_version, align 4
  br i1 %.b6.i.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ey = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 2)
  %i.ez = zext i16 %i.ey to i32
  %i.fa = add nuw nsw i32 %i.ez, 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0.i.i.i = phi i32 [ %i.fa, %bb.ae ], [ 4, %bb.ad ] ; 2 uses
  %i.fb = load i32, ptr @hf_release_reason, align 4
  %i.fc = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.fb, ptr noundef %i.bv, i32 noundef %.0.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %.b.i.i.i = load i1, ptr @iua_version, align 4
  br i1 %.b.i.i.i, label %dissect_release_reason_parameter.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fd = call i32 @tvb_get_ntohl(ptr noundef %i.bv, i32 noundef %.0.i.i.i)
  %i.fe = call ptr @val_to_str_const(i32 noundef %i.fd, ptr noundef nonnull @release_reason_values, ptr noundef nonnull @.str.258)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ex, ptr noundef nonnull @.str.178, ptr noundef %i.fe)
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.ah:                                            ; preds = %bb.p
  %i.ff = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.fg = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 2)
  %i.fh = load i32, ptr @hf_adaptation_layer_id, align 4
  %i.fi = zext i16 %i.fg to i32
  %i.fj = load ptr, ptr %i.bd, align 8
  %i.fk = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.co, i32 noundef %i.fh, ptr noundef %i.bv, i32 noundef 4, i32 noundef %i.fi, i32 noundef 0, ptr noundef %i.fj, ptr noundef nonnull %i.d) ; 0 uses
  %i.fl = load ptr, ptr %i.d, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ff, ptr noundef nonnull @.str.178, ptr noundef %i.fl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.ai:                                            ; preds = %bb.p
  %.b120.i.i.i = load i1, ptr @iua_version, align 4
  br i1 %.b120.i.i.i, label %.thread130.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fm = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.fn = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 2)
  %i.fo = add i16 %i.fn, -4
  %i.fp = load i32, ptr @hf_text_if_id, align 4
  %i.fq = zext i16 %i.fo to i32
  %i.fr = load ptr, ptr %i.bd, align 8
  %i.fs = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.co, i32 noundef %i.fp, ptr noundef %i.bv, i32 noundef 4, i32 noundef %i.fq, i32 noundef 0, ptr noundef %i.fr, ptr noundef nonnull %i.c) ; 0 uses
  %i.ft = load ptr, ptr %i.c, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fm, ptr noundef nonnull @.str.259, ptr noundef %i.ft)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  %.b.pr.i.i.i = load i1, ptr @iua_version, align 4
  br i1 %.b.pr.i.i.i, label %.thread130.i.i.i, label %dissect_release_reason_parameter.exit.i.i.i

.thread130.i.i.i:                                 ; preds = %bb.aj, %bb.ai
  %i.fu = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.fv = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 2)
  %i.fw = load i32, ptr @hf_scn_protocol_id, align 4
  %i.fx = zext i16 %i.fv to i32
  %i.fy = load ptr, ptr %i.bd, align 8
  %i.fz = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.co, i32 noundef %i.fw, ptr noundef %i.bv, i32 noundef 4, i32 noundef %i.fx, i32 noundef 0, ptr noundef %i.fy, ptr noundef nonnull %i.b) ; 0 uses
  %i.ga = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fu, ptr noundef nonnull @.str.178, ptr noundef %i.ga)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.ak:                                            ; preds = %bb.p
  %i.gb = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.gc = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 2) ; 2 uses
  %.b.i.i.i.i = load i1, ptr @iua_version, align 4
  %i.gd = add i16 %i.gc, 4
  %spec.select.i.i.i.i = select i1 %.b.i.i.i.i, i16 %i.gd, i16 %i.gc ; 2 uses
  %i.ge = icmp ugt i16 %spec.select.i.i.i.i, 4
  br i1 %i.ge, label %bb.al, label %dissect_info_string_parameter.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.gf = add i16 %spec.select.i.i.i.i, -4
  %i.gg = load i32, ptr @hf_info_string, align 4
  %i.gh = zext i16 %i.gf to i32
  %i.gi = load ptr, ptr %i.bd, align 8
  %i.gj = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.co, i32 noundef %i.gg, ptr noundef %i.bv, i32 noundef 4, i32 noundef %i.gh, i32 noundef 0, ptr noundef %i.gi, ptr noundef nonnull %i.a) ; 0 uses
  %i.gk = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gb, ptr noundef nonnull @.str.178, ptr noundef %i.gk)
  br label %dissect_info_string_parameter.exit.i.i.i

dissect_info_string_parameter.exit.i.i.i:         ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.am:                                            ; preds = %bb.p
  %i.gl = load ptr, ptr %i.e, align 8
  call fastcc void @dissect_dlci_parameter(ptr noundef %i.bv, ptr noundef %i.co, ptr noundef %i.gl, ptr noundef %1)
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.an:                                            ; preds = %bb.p
  %i.gm = load ptr, ptr %i.e, align 8
  %i.gn = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 2)
  %i.go = add i16 %i.gn, -4                       ; 2 uses
  %i.gp = load i32, ptr @hf_diagnostic_info, align 4
  %i.gq = zext i16 %i.go to i32                   ; 2 uses
  %i.gr = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.gp, ptr noundef %i.bv, i32 noundef 4, i32 noundef %i.gq, i32 noundef 0) ; 0 uses
  %i.gs = icmp eq i16 %i.go, 1
  %i.gt = select i1 %i.gs, ptr @.str.256, ptr @.str.257
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gm, ptr noundef nonnull @.str.255, i32 noundef %i.gq, ptr noundef nonnull %i.gt)
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.ao:                                            ; preds = %bb.p
  %i.gu = load ptr, ptr %i.e, align 8
  %i.gv = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 2) ; 3 uses
  %i.gw = zext i16 %i.gv to i32
  %i.gx = add nsw i32 %i.gw, -4
  %i.gy = sdiv i32 %i.gx, 8                       ; 2 uses
  %.not.i.i.i.i = icmp ult i16 %i.gv, 12
  br i1 %.not.i.i.i.i, label %dissect_integer_range_interface_identifier_parameter.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ao, %.lr.ph.i.i.i.i
  %.016.i.i.i.i.a = phi i32 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.ao ]
  %.016.i.i.i.i = phi i32 [ %i.hf, %.lr.ph.i.i.i.i ], [ 4, %bb.ao ]
  %i.gz = load i32, ptr @hf_if_range_start, align 4
  %i.ha = and i32 %.016.i.i.i.i, 65535            ; 3 uses
  %i.hb = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.gz, ptr noundef %i.bv, i32 noundef %i.ha, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.hc = load i32, ptr @hf_if_range_end, align 4
  %i.hd = add nuw nsw i32 %i.ha, 4
  %i.he = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.hc, ptr noundef %i.bv, i32 noundef %i.hd, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.hf = add nuw nsw i32 %i.ha, 8
  %indvars.iv.next.i.i.i.i = add nuw nsw i32 %.016.i.i.i.i.a, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i.i, %i.gy
  br i1 %exitcond.not.i.i.i.i, label %dissect_integer_range_interface_identifier_parameter.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

dissect_integer_range_interface_identifier_parameter.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.ao
  %i.hg = add i16 %i.gv, -12
  %i.hh = icmp ult i16 %i.hg, 8
  %i.hi = select i1 %i.hh, ptr @.str.256, ptr @.str.257
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gu, ptr noundef nonnull @.str.260, i32 noundef %i.gy, ptr noundef nonnull %i.hi)
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.ap:                                            ; preds = %bb.p
  %i.hj = load ptr, ptr %i.e, align 8
  %i.hk = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 2)
  %i.hl = add i16 %i.hk, -4                       ; 2 uses
  %i.hm = load i32, ptr @hf_heartbeat_data, align 4
  %i.hn = zext i16 %i.hl to i32                   ; 2 uses
  %i.ho = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.hm, ptr noundef %i.bv, i32 noundef 4, i32 noundef %i.hn, i32 noundef 0) ; 0 uses
  %i.hp = icmp eq i16 %i.hl, 1
  %i.hq = select i1 %i.hp, ptr @.str.256, ptr @.str.257
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.hj, ptr noundef nonnull @.str.255, i32 noundef %i.hn, ptr noundef nonnull %i.hq)
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.aq:                                            ; preds = %bb.p
  %i.hr = load ptr, ptr %i.e, align 8
  %i.hs = load i32, ptr @hf_asp_reason, align 4
  %i.ht = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.hs, ptr noundef %i.bv, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.hu = call i32 @tvb_get_ntohl(ptr noundef %i.bv, i32 noundef 4)
  %i.hv = call ptr @val_to_str_const(i32 noundef %i.hu, ptr noundef nonnull @asp_reason_values, ptr noundef nonnull @.str.261)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.hr, ptr noundef nonnull @.str.178, ptr noundef %i.hv)
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.ar:                                            ; preds = %bb.p
  %i.hw = load ptr, ptr %i.e, align 8
  %i.hx = load i32, ptr @hf_traffic_mode_type, align 4
  %i.hy = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.hx, ptr noundef %i.bv, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.hz = call i32 @tvb_get_ntohl(ptr noundef %i.bv, i32 noundef 4)
  %i.ia = call ptr @val_to_str_const(i32 noundef %i.hz, ptr noundef nonnull @traffic_mode_type_values, ptr noundef nonnull @.str.262)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.hw, ptr noundef nonnull @.str.178, ptr noundef %i.ia)
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.as:                                            ; preds = %bb.p
  %i.ib = load ptr, ptr %i.e, align 8
  %i.ic = load i32, ptr @hf_error_code, align 4
  %i.id = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.ic, ptr noundef %i.bv, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ie = call i32 @tvb_get_ntohl(ptr noundef %i.bv, i32 noundef 4)
  %i.if = call ptr @val_to_str_const(i32 noundef %i.ie, ptr noundef nonnull @error_code_values, ptr noundef nonnull @.str.263)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ib, ptr noundef nonnull @.str.178, ptr noundef %i.if)
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.at:                                            ; preds = %bb.p
  %i.ig = load ptr, ptr %i.e, align 8
  %i.ih = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 4)
  %i.ii = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 6)
  %i.ij = load i32, ptr @hf_status_type, align 4
  %i.ik = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.ij, ptr noundef %i.bv, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.il = load i32, ptr @hf_status_id, align 4
  %i.im = zext i16 %i.ii to i32                   ; 3 uses
  %i.in = zext i16 %i.ih to i32
  %i.io = shl nuw i32 %i.in, 16
  %i.ip = or disjoint i32 %i.io, %i.im            ; 2 uses
  %i.iq = call ptr @val_to_str_const(i32 noundef %i.ip, ptr noundef nonnull @status_type_id_values, ptr noundef nonnull @.str.265)
  %i.ir = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.co, i32 noundef %i.il, ptr noundef %i.bv, i32 noundef 6, i32 noundef 2, i32 noundef %i.im, ptr noundef nonnull @.str.264, i32 noundef %i.im, ptr noundef %i.iq) ; 0 uses
  %i.is = call ptr @val_to_str_const(i32 noundef %i.ip, ptr noundef nonnull @status_type_id_values, ptr noundef nonnull @.str.266)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ig, ptr noundef nonnull @.str.178, ptr noundef %i.is)
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.au:                                            ; preds = %bb.p
  %i.it = load ptr, ptr %i.e, align 8
  %.b.i126.i.i.i = load i1, ptr @iua_version, align 4
  %..i.i.i.i = select i1 %.b.i126.i.i.i, i32 0, i32 4
  %i.iu = call zeroext i8 @tvb_get_uint8(ptr noundef %i.bv, i32 noundef %..i.i.i.i)
  %i.iv = icmp eq i8 %i.iu, 72
  %i.iw = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 2)
  %i.ix = add i16 %i.iw, -4                       ; 2 uses
  %i.iy = zext i16 %i.ix to i32                   ; 2 uses
  %i.iz = call ptr @tvb_new_subset_length(ptr noundef %i.bv, i32 noundef 4, i32 noundef %i.iy)
  %i.ja = icmp eq i16 %i.ix, 1
  %i.jb = select i1 %i.ja, ptr @.str.256, ptr @.str.257
  %v52_handle.val.i.i.i.i = load ptr, ptr @v52_handle, align 8
  %q931_handle.val.i.i.i.i = load ptr, ptr @q931_handle, align 8
  %i.jc = select i1 %i.iv, ptr %v52_handle.val.i.i.i.i, ptr %q931_handle.val.i.i.i.i
  %i.jd = call i32 @call_dissector(ptr noundef %i.jc, ptr noundef %i.iz, ptr noundef %1, ptr noundef %i.m) ; 0 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.it, ptr noundef nonnull @.str.255, i32 noundef %i.iy, ptr noundef nonnull %i.jb)
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.av:                                            ; preds = %bb.p
  %i.je = load ptr, ptr %i.e, align 8
  %.b6.i.i.i.i = load i1, ptr @iua_version, align 4
  br i1 %.b6.i.i.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jf = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 2)
  %i.jg = zext i16 %i.jf to i32
  %i.jh = add nuw nsw i32 %i.jg, 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i = phi i32 [ %i.jh, %bb.aw ], [ 4, %bb.av ] ; 2 uses
  %i.ji = load i32, ptr @hf_release_reason, align 4
  %i.jj = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.ji, ptr noundef %i.bv, i32 noundef %.0.i.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %.b.i127.i.i.i = load i1, ptr @iua_version, align 4
  br i1 %.b.i127.i.i.i, label %dissect_release_reason_parameter.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jk = call i32 @tvb_get_ntohl(ptr noundef %i.bv, i32 noundef %.0.i.i.i.i)
  %i.jl = call ptr @val_to_str_const(i32 noundef %i.jk, ptr noundef nonnull @release_reason_values, ptr noundef nonnull @.str.258)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.je, ptr noundef nonnull @.str.178, ptr noundef %i.jl)
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.az:                                            ; preds = %bb.p
  %i.jm = load ptr, ptr %i.e, align 8
  %i.jn = load i32, ptr @hf_tei_status, align 4
  %i.jo = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.jn, ptr noundef %i.bv, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.jp = call i32 @tvb_get_ntohl(ptr noundef %i.bv, i32 noundef 4)
  %i.jq = call ptr @val_to_str_const(i32 noundef %i.jp, ptr noundef nonnull @tei_status_values, ptr noundef nonnull @.str.274)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.jm, ptr noundef nonnull @.str.178, ptr noundef %i.jq)
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.ba:                                            ; preds = %bb.p
  %i.jr = load ptr, ptr %i.e, align 8
  %i.js = load i32, ptr @hf_asp_identifier, align 4
  %i.jt = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.js, ptr noundef %i.bv, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ju = call i32 @tvb_get_ntohl(ptr noundef %i.bv, i32 noundef 4)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.jr, ptr noundef nonnull @.str.275, i32 noundef %i.ju)
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.bb:                                            ; preds = %bb.p
  %i.jv = load ptr, ptr %i.e, align 8
  %i.jw = load i32, ptr @hf_link_status, align 4
  %i.jx = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.jw, ptr noundef %i.bv, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.jy = call i32 @tvb_get_ntohl(ptr noundef %i.bv, i32 noundef 4)
  %i.jz = call ptr @val_to_str_const(i32 noundef %i.jy, ptr noundef nonnull @link_status_values, ptr noundef nonnull @.str.276)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.jv, ptr noundef nonnull @.str.178, ptr noundef %i.jz)
  %i.ka = call i32 @tvb_get_ntohl(ptr noundef %i.bv, i32 noundef 4)
  store i32 %i.ka, ptr @link_status_operational, align 4
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.bc:                                            ; preds = %bb.p
  %i.kb = load ptr, ptr %i.e, align 8
  %i.kc = load i32, ptr @hf_sa_bit_id, align 4
  %i.kd = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.kc, ptr noundef %i.bv, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ke = load i32, ptr @hf_sa_bit_value, align 4
  %i.kf = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.ke, ptr noundef %i.bv, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.kg = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 4)
  %i.kh = zext i16 %i.kg to i32
  %i.ki = call ptr @val_to_str_const(i32 noundef %i.kh, ptr noundef nonnull @sa_bit_values, ptr noundef nonnull @.str.265)
  %i.kj = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 6)
  %i.kk = zext i16 %i.kj to i32
  %i.kl = call ptr @val_to_str_const(i32 noundef %i.kk, ptr noundef nonnull @sa_bit_values, ptr noundef nonnull @.str.278)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.kb, ptr noundef nonnull @.str.277, ptr noundef %i.ki, ptr noundef %i.kl)
  %i.km = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 6)
  %i.kn = zext i16 %i.km to i32
  store i32 %i.kn, ptr @sa_bit_id, align 4
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.bd:                                            ; preds = %bb.p
  %i.ko = load ptr, ptr %i.e, align 8
  %i.kp = load i32, ptr @hf_error_reason, align 4
  %i.kq = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.kp, ptr noundef %i.bv, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.kr = call i32 @tvb_get_ntohl(ptr noundef %i.bv, i32 noundef 4)
  %i.ks = call ptr @val_to_str_const(i32 noundef %i.kr, ptr noundef nonnull @error_reason_values, ptr noundef nonnull @.str.265)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ko, ptr noundef nonnull @.str.178, ptr noundef %i.ks)
  br label %dissect_release_reason_parameter.exit.i.i.i

bb.be:                                            ; preds = %bb.p
  %i.kt = load ptr, ptr %i.e, align 8
  %i.ku = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 2)
  %i.kv = add i16 %i.ku, -4                       ; 3 uses
  %i.kw = zext i16 %i.kv to i32                   ; 2 uses
  %.not.i128.i.i.i = icmp eq i16 %i.kv, 0
  br i1 %.not.i128.i.i.i, label %dissect_unknown_parameter.exit.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kx = load i32, ptr @hf_parameter_value, align 4
  %i.ky = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.kx, ptr noundef %i.bv, i32 noundef 4, i32 noundef %i.kw, i32 noundef 0) ; 0 uses
  br label %dissect_unknown_parameter.exit.i.i.i

dissect_unknown_parameter.exit.i.i.i:             ; preds = %bb.bf, %bb.be
  %i.kz = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.bv, i32 noundef 0)
  %i.la = zext i16 %i.kz to i32
  %i.lb = icmp eq i16 %i.kv, 1
  %i.lc = select i1 %i.lb, ptr @.str.256, ptr @.str.257
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.kt, ptr noundef nonnull @.str.279, i32 noundef %i.la, i32 noundef %i.kw, ptr noundef nonnull %i.lc)
  br label %dissect_release_reason_parameter.exit.i.i.i

dissect_release_reason_parameter.exit.i.i.i:      ; preds = %dissect_unknown_parameter.exit.i.i.i, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %dissect_integer_range_interface_identifier_parameter.exit.i.i.i, %bb.an, %bb.am, %dissect_info_string_parameter.exit.i.i.i, %.thread130.i.i.i, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.r
  %.not125.i.i.i = icmp eq i16 %.1.i.i.i, %i.cj
  br i1 %.not125.i.i.i, label %dissect_parameter.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %dissect_release_reason_parameter.exit.i.i.i
  %i.ld = load i32, ptr @hf_parameter_padding, align 4
  %i.le = call ptr @proto_tree_add_item(ptr noundef %i.co, i32 noundef %i.ld, ptr noundef %i.bv, i32 noundef %i.ci, i32 noundef %i.cl, i32 noundef 0) ; 0 uses
  br label %dissect_parameter.exit.i.i

dissect_parameter.exit.i.i:                       ; preds = %bb.bg, %dissect_release_reason_parameter.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  %i.lf = add i32 %.0.i.i, %.0302.i.i             ; 2 uses
  %i.lg = call i32 @tvb_reported_length_remaining(ptr noundef %i.bb, i32 noundef %i.lf) ; 2 uses
  %.not.i21.i = icmp eq i32 %i.lg, 0
  br i1 %.not.i21.i, label %dissect_parameters.exit.i, label %bb.k, !llvm.loop !9

dissect_parameters.exit.i:                        ; preds = %dissect_parameter.exit.i.i, %dissect_common_header.exit.i
  %i.lh = load i32, ptr @dlci_efa, align 4
  %or.cond.i = icmp ult i32 %i.lh, 8176
  br i1 %or.cond.i, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %dissect_parameters.exit.i
  %i.li = load i32, ptr @messageclassCopy, align 4
  switch i32 %i.li, label %bb.bj [
    i32 4, label %bb.bi
    i32 3, label %bb.bi
    i32 0, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh, %bb.bh
  store i32 -1, ptr @messageclassCopy, align 4
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.lj = load ptr, ptr %i.g, align 8
  call void @col_append_str(ptr noundef %i.lj, i32 noundef 25, ptr noundef nonnull @.str.169)
  %i.lk = load ptr, ptr %i.g, align 8
  %i.ll = load i32, ptr @linkIdentifier, align 4
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.lk, i32 noundef 25, ptr noundef nonnull @.str.170, i32 noundef %i.ll)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %dissect_parameters.exit.i
  %i.lm = load i32, ptr @sa_bit_id, align 4
  %i.ln = icmp sgt i32 %i.lm, -1
  br i1 %i.ln, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.lo = load ptr, ptr %i.g, align 8
  call void @col_append_str(ptr noundef %i.lo, i32 noundef 25, ptr noundef nonnull @.str.169)
  %i.lp = load ptr, ptr %i.g, align 8
  %i.lq = load i32, ptr @sa_bit_id, align 4
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.lp, i32 noundef 25, ptr noundef nonnull @.str.171, i32 noundef %i.lq)
  store i32 -1, ptr @sa_bit_id, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.lr = load i32, ptr @link_status_operational, align 4 ; 2 uses
  %i.ls = icmp sgt i32 %i.lr, -1
  br i1 %i.ls, label %bb.bn, label %dissect_v5ua_message.exit

bb.bn:                                            ; preds = %bb.bm
  switch i32 %i.lr, label %bb.bp [
    i32 0, label %.sink.split.i
    i32 1, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bo, %bb.bn
  %.str.173.sink.i = phi ptr [ @.str.173, %bb.bo ], [ @.str.172, %bb.bn ]
  %i.lt = load ptr, ptr %i.g, align 8
  call void @col_append_str(ptr noundef %i.lt, i32 noundef 25, ptr noundef nonnull %.str.173.sink.i)
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split.i, %bb.bn
  store i32 -1, ptr @link_status_operational, align 4
  br label %dissect_v5ua_message.exit

dissect_v5ua_message.exit:                        ; preds = %bb.bm, %bb.bp
  %i.lu = call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.lu
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_v5ua() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_v5ua, align 4
  %i.b = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.80, i32 noundef %i.a)
  store ptr %i.b, ptr @q931_handle, align 8
  %i.c = load i32, ptr @proto_v5ua, align 4
  %i.d = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.81, i32 noundef %i.c)
  store ptr %i.d, ptr @v52_handle, align 8
  %i.e = load ptr, ptr @v5ua_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.82, i32 noundef 10001, ptr noundef %i.e)
  %i.f = load ptr, ptr @v5ua_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.82, i32 noundef 5675, ptr noundef %i.f)
  %i.g = load ptr, ptr @v5ua_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.83, i32 noundef 6, ptr noundef %i.g)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_int_interface_identifier_parameter(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2)
  %i.b = zext i16 %i.a to i32
  %i.c = add nsw i32 %i.b, -4
  %i.d = sdiv i32 %i.c, 4
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef nonnull @.str.235)
  %i.e = and i32 %i.d, 65535                      ; 3 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @hf_link_id, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.h = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 4)
  %i.i = lshr i32 %i.h, 5                         ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef nonnull @.str.236, i32 noundef %i.i)
  %.pre = load i32, ptr @hf_chnl_id, align 4
  store i32 %i.i, ptr @linkIdentifier, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %.pre, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 7)
  %i.l = and i8 %i.k, 31
  %i.m = zext nneg i8 %i.l to i32
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef nonnull @.str.238, i32 noundef %i.m)
  %exitcond.peel.not = icmp eq i32 %i.e, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %bb.b, %.lr.ph.peel.next
  %indvars.iv = phi i32 [ %indvars.iv.next, %.lr.ph.peel.next ], [ 1, %bb.b ]
  %.027 = phi i32 [ %i.w, %.lr.ph.peel.next ], [ 8, %bb.b ] ; 4 uses
  %i.n = load i32, ptr @hf_link_id, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.n, ptr noundef %0, i32 noundef %.027, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.p = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.027)
  %i.q = lshr i32 %i.p, 5                         ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef nonnull @.str.237, i32 noundef %i.q)
  %.pre30 = load i32, ptr @hf_chnl_id, align 4
  store i32 %i.q, ptr @linkIdentifier, align 4
  %i.r = or disjoint i32 %.027, 3                 ; 2 uses
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %.pre30, ptr noundef %0, i32 noundef %i.r, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.r)
  %i.u = and i8 %i.t, 31
  %i.v = zext nneg i8 %i.u to i32
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef nonnull @.str.238, i32 noundef %i.v)
  %i.w = add nuw nsw i32 %.027, 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %3 = icmp samesign ugt i32 %i.e, %indvars.iv.next
  br i1 %3, label %.lr.ph.peel.next, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph.peel.next, %bb.b, %bb.a
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef nonnull @.str.239)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_dlci_parameter(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %.b = load i1, ptr @iua_version, align 4
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2)
  %i.d = add i16 %i.c, 4
  %i.e = zext i16 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 4, %bb.a ]     ; 5 uses
  %i.f = load i32, ptr @hf_dlci_zero_bit, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr @hf_dlci_spare_bit, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.h, ptr noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_dlci_sapi, align 4
  %i.k = call ptr @proto_tree_add_item_ret_uint(ptr noundef %1, i32 noundef %i.j, ptr noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.l = add nuw nsw i32 %.0, 1
  %i.m = load i32, ptr @hf_dlci_one_bit, align 4
  %i.n = and i32 %i.l, 65535                      ; 2 uses
  %i.o = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.n, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_dlci_tei, align 4
  %i.q = call ptr @proto_tree_add_item_ret_uint(ptr noundef %1, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.n, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.r = add nuw nsw i32 %.0, 2
  %i.s = and i32 %i.r, 65535                      ; 6 uses
  %i.t = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.s) ; 3 uses
  %i.u = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.s) ; 3 uses
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  store i32 %i.v, ptr @dlci_efa, align 4
  %i.w = icmp ult i16 %i.u, 8176
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %3, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.y, i32 noundef 25, ptr noundef nonnull @.str.240, i32 noundef %i.v)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  switch i16 %i.u, label %bb.k [
    i16 8176, label %bb.f
    i16 8177, label %bb.g
    i16 8178, label %bb.h
    i16 8179, label %bb.i
    i16 8180, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr i8, ptr %3, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void @col_append_str(ptr noundef %i.aa, i32 noundef 25, ptr noundef nonnull @.str.241)
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %3, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void @col_append_str(ptr noundef %i.ac, i32 noundef 25, ptr noundef nonnull @.str.242)
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %3, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void @col_append_str(ptr noundef %i.ae, i32 noundef 25, ptr noundef nonnull @.str.243)
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %3, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void @col_append_str(ptr noundef %i.ag, i32 noundef 25, ptr noundef nonnull @.str.244)
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %3, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void @col_append_str(ptr noundef %i.ai, i32 noundef 25, ptr noundef nonnull @.str.245)
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.f, %bb.h, %bb.j, %bb.i, %bb.g, %bb.d
  %i.aj = zext i16 %i.t to i32                    ; 10 uses
  %i.ak = icmp ult i16 %i.t, 8176
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr @hf_efa, align 4
  %i.am = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.s, i32 noundef 2, i32 noundef %i.aj, ptr noundef nonnull @.str.246, i32 noundef %i.aj) ; 0 uses
  %i.an = load i32, ptr %i.a, align 4
  %i.ao = load i32, ptr %i.b, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef nonnull @.str.247, i32 noundef %i.an, i32 noundef %i.ao, i32 noundef %i.aj)
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ap = icmp ult i16 %i.t, 8181
  %i.aq = load i32, ptr @hf_efa, align 4          ; 2 uses
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = call ptr @val_to_str_const(i32 noundef %i.aj, ptr noundef nonnull @efa_values, ptr noundef nonnull @.str.249)
  %i.as = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.s)
  %i.at = zext i16 %i.as to i32
  %i.au = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.aq, ptr noundef %0, i32 noundef %i.s, i32 noundef 2, i32 noundef %i.aj, ptr noundef nonnull @.str.248, ptr noundef %i.ar, i32 noundef %i.at) ; 0 uses
  %i.av = load i32, ptr %i.a, align 4
  %i.aw = load i32, ptr %i.b, align 4
  %i.ax = call ptr @val_to_str_const(i32 noundef %i.aj, ptr noundef nonnull @efa_values, ptr noundef nonnull @.str.251)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef nonnull @.str.250, i32 noundef %i.av, i32 noundef %i.aw, ptr noundef %i.ax, i32 noundef %i.aj)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ay = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.aq, ptr noundef %0, i32 noundef %i.s, i32 noundef 2, i32 noundef %i.aj, ptr noundef nonnull @.str.252, i32 noundef %i.aj) ; 0 uses
  %i.az = load i32, ptr %i.a, align 4
  %i.ba = load i32, ptr %i.b, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef nonnull @.str.253, i32 noundef %i.az, i32 noundef %i.ba, i32 noundef %i.aj)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7, !11}
!11 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
