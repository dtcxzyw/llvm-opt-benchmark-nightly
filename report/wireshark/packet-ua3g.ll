inline.NumInlined: 17
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@decode_ip_device_routing:bb.a
  %hf_ua3g_ip_device_routing_start_rtp_parameter_enabler.hf_ua3g_ip_device_routing_start_rtp_parameter_value = select i1 %i.ch, ptr @hf_ua3g_ip_device_routing_start_rtp_parameter_enabler, ptr @hf_ua3g_ip_device_routing_start_rtp_parameter_value
  br label %.sink.split

bb.v:                                             ; preds = %bb.r
  %i.ci = icmp ult i8 %i.br, 9
  %hf_ua3g_ip_device_routing_start_rtp_parameter_send_qos.hf_ua3g_ip_device_routing_start_rtp_parameter_value = select i1 %i.ci, ptr @hf_ua3g_ip_device_routing_start_rtp_parameter_send_qos, ptr @hf_ua3g_ip_device_routing_start_rtp_parameter_value
  br label %.sink.split

bb.w:                                             ; preds = %bb.r
  %i.cj = icmp ult i8 %i.br, 9
  %hf_ua3g_ip_device_routing_start_rtp_parameter_dtmf_sending.hf_ua3g_ip_device_routing_start_rtp_parameter_value = select i1 %i.cj, ptr @hf_ua3g_ip_device_routing_start_rtp_parameter_dtmf_sending, ptr @hf_ua3g_ip_device_routing_start_rtp_parameter_value
  br label %.sink.split

bb.x:                                             ; preds = %bb.r
  %i.ck = icmp ult i8 %i.br, 9
  %hf_ua3g_ip_device_routing_start_rtp_parameter_rfc2198.hf_ua3g_ip_device_routing_start_rtp_parameter_value = select i1 %i.ck, ptr @hf_ua3g_ip_device_routing_start_rtp_parameter_rfc2198, ptr @hf_ua3g_ip_device_routing_start_rtp_parameter_value
  br label %.sink.split

bb.y:                                             ; preds = %bb.r
  %i.cl = icmp ult i8 %i.br, 9
  %hf_ua3g_ip_device_routing_start_rtp_parameter_srtp_encryption.hf_ua3g_ip_device_routing_start_rtp_parameter_value = select i1 %i.cl, ptr @hf_ua3g_ip_device_routing_start_rtp_parameter_srtp_encryption, ptr @hf_ua3g_ip_device_routing_start_rtp_parameter_value
  br label %.sink.split

bb.z:                                             ; preds = %bb.r
  %i.cm = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %i.cd)
  %i.cn = zext i16 %i.cm to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.r, %bb.z
  %.1729 = phi i32 [ %i.cn, %bb.z ], [ %.0728850, %bb.r ]
  %i.co = icmp ult i8 %i.br, 9
  %hf_ua3g_ip_device_routing_start_rtp_parameter_uint.hf_ua3g_ip_device_routing_start_rtp_parameter_value = select i1 %i.co, ptr @hf_ua3g_ip_device_routing_start_rtp_parameter_uint, ptr @hf_ua3g_ip_device_routing_start_rtp_parameter_value
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aa, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.r
  %hf_ua3g_ip_device_routing_start_rtp_parameter_uint.sink = phi ptr [ %hf_ua3g_ip_device_routing_start_rtp_parameter_uint.hf_ua3g_ip_device_routing_start_rtp_parameter_value, %bb.aa ], [ %hf_ua3g_ip_device_routing_start_rtp_parameter_enabler.hf_ua3g_ip_device_routing_start_rtp_parameter_value, %bb.u ], [ %hf_ua3g_ip_device_routing_start_rtp_parameter_srtp_encryption.hf_ua3g_ip_device_routing_start_rtp_parameter_value, %bb.y ], [ @hf_ua3g_ip_device_routing_start_rtp_parameter_ip, %bb.r ], [ %hf_ua3g_ip_device_routing_start_rtp_parameter_rfc2198.hf_ua3g_ip_device_routing_start_rtp_parameter_value, %bb.x ], [ %hf_ua3g_ip_device_routing_start_rtp_parameter_compressor.hf_ua3g_ip_device_routing_start_rtp_parameter_value, %bb.t ], [ %hf_ua3g_ip_device_routing_start_rtp_parameter_dtmf_sending.hf_ua3g_ip_device_routing_start_rtp_parameter_value, %bb.w ], [ @hf_ua3g_ip_device_routing_start_rtp_parameter_ip, %bb.s ], [ %hf_ua3g_ip_device_routing_start_rtp_parameter_send_qos.hf_ua3g_ip_device_routing_start_rtp_parameter_value, %bb.v ], [ @hf_ua3g_ip_device_routing_start_rtp_parameter_ip, %bb.r ]
  %.sink923 = phi i32 [ %i.bs, %bb.aa ], [ %i.bs, %bb.u ], [ %i.bs, %bb.y ], [ 4, %bb.r ], [ %i.bs, %bb.x ], [ %i.bs, %bb.t ], [ %i.bs, %bb.w ], [ 4, %bb.s ], [ %i.bs, %bb.v ], [ 4, %bb.r ]
  %.ph = phi ptr [ %i.bl, %bb.aa ], [ %i.bl, %bb.u ], [ %i.bl, %bb.y ], [ %i.bl, %bb.r ], [ %i.bl, %bb.x ], [ %i.bl, %bb.t ], [ %i.bl, %bb.w ], [ %i.cf, %bb.s ], [ %i.bl, %bb.v ], [ %i.bl, %bb.r ]
  %.ph921.a = phi i32 [ %i.bm, %bb.aa ], [ %i.bm, %bb.u ], [ %i.bm, %bb.y ], [ %i.bm, %bb.r ], [ %i.bm, %bb.x ], [ %i.bm, %bb.t ], [ %i.bm, %bb.w ], [ 4, %bb.s ], [ %i.bm, %bb.v ], [ %i.bm, %bb.r ]
  %.ph922 = phi i32 [ %i.bn, %bb.aa ], [ %i.bn, %bb.u ], [ %i.bn, %bb.y ], [ %i.bn, %bb.r ], [ %i.bn, %bb.x ], [ %i.bn, %bb.t ], [ %i.bn, %bb.w ], [ 2, %bb.s ], [ %i.bn, %bb.v ], [ %i.bn, %bb.r ]
  %.2730.ph = phi i32 [ %.1729, %bb.aa ], [ %.0728850, %bb.u ], [ %.0728850, %bb.y ], [ %.0728850, %bb.r ], [ %.0728850, %bb.x ], [ %.0728850, %bb.t ], [ %.0728850, %bb.w ], [ %.0728850, %bb.s ], [ %.0728850, %bb.v ], [ %.0728850, %bb.r ]
  %i.cp = load i32, ptr %hf_ua3g_ip_device_routing_start_rtp_parameter_uint.sink, align 4
  %i.cq = tail call ptr @proto_tree_add_item(ptr noundef %i.by, i32 noundef %i.cp, ptr noundef %1, i32 noundef %i.cd, i32 noundef %.sink923, i32 noundef 0) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.r, %bb.r
  %i.cr = phi ptr [ %i.bl, %bb.r ], [ %i.bl, %bb.r ], [ %.ph, %.sink.split ]
  %i.cs = phi i32 [ %i.bm, %bb.r ], [ %i.bm, %bb.r ], [ %.ph921.a, %.sink.split ]
  %i.ct = phi i32 [ %i.bn, %bb.r ], [ %i.bn, %bb.r ], [ %.ph922, %.sink.split ]
  %.2730 = phi i32 [ %.0728850, %bb.r ], [ %.0728850, %bb.r ], [ %.2730.ph, %.sink.split ]
  %i.cu = add i32 %i.cd, %i.bs
  %i.cv = sub i32 %i.ce, %i.bs
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.q
  %i.cw = phi ptr [ %i.cr, %bb.ab ], [ %i.bl, %bb.q ] ; 3 uses
  %i.cx = phi i32 [ %i.cs, %bb.ab ], [ %i.bm, %bb.q ] ; 2 uses
  %i.cy = phi i32 [ %i.ct, %bb.ab ], [ %i.bn, %bb.q ] ; 2 uses
  %.3731 = phi i32 [ %.2730, %bb.ab ], [ %.0728850, %bb.q ] ; 2 uses
  %.1705 = phi i32 [ %i.cv, %bb.ab ], [ %i.ce, %bb.q ] ; 2 uses
  %.1701 = phi i32 [ %i.cu, %bb.ab ], [ %i.cd, %bb.q ]
  %.not766 = icmp eq i32 %.1705, 0
  br i1 %.not766, label %._crit_edge855, label %bb.q, !llvm.loop !9

._crit_edge855:                                   ; preds = %bb.ac
  store i32 %i.cx, ptr %i.bi, align 4
  store ptr %i.cw, ptr %i.bj, align 8
  store ptr null, ptr %i.bk, align 8
  %i.cz = icmp ne ptr %i.cw, null
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge855, %bb.p
  %i.da = phi i1 [ %i.cz, %._crit_edge855 ], [ false, %bb.p ]
  %.lcssa848 = phi i32 [ %i.cy, %._crit_edge855 ], [ 0, %bb.p ]
  %.0728.lcssa = phi i32 [ %.3731, %._crit_edge855 ], [ 0, %bb.p ] ; 3 uses
  store i32 %.lcssa848, ptr %4, align 8
  %i.db = load i8, ptr @setup_conversations_enabled, align 1, !range !10, !noundef !11
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = icmp ne i32 %.0728.lcssa, 0
  %i.de = select i1 %i.dc, i1 %i.da, i1 false
  %or.cond924 = select i1 %i.de, i1 %i.dd, i1 false
  br i1 %or.cond924, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.df = getelementptr i8, ptr %2, i64 20        ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4
  call void @rtp_add_address(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %4, i32 noundef %.0728.lcssa, i32 noundef 0, ptr noundef nonnull @.str.652, i32 noundef %i.dg, i32 noundef 0, ptr noundef null)
  %i.dh = add nuw nsw i32 %.0728.lcssa, 1
  %i.di = load i32, ptr %i.df, align 4
  call void @rtcp_add_address(ptr noundef %2, ptr noundef nonnull %4, i32 noundef %i.dh, i32 noundef 0, ptr noundef nonnull @.str.652, i32 noundef %i.di)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %.loopexit

.lr.ph846:                                        ; preds = %.preheader, %bb.ah
  %.2702845 = phi i32 [ %.3703, %bb.ah ], [ 4, %.preheader ] ; 5 uses
  %.2706844 = phi i32 [ %.3707, %bb.ah ], [ %i.i, %.preheader ]
  %i.dj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.2702845)
  %i.dk = zext i8 %i.dj to i32                    ; 2 uses
  %i.dl = add i32 %.2702845, 1                    ; 2 uses
  %i.dm = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.dl) ; 3 uses
  %i.dn = zext i8 %i.dm to i32                    ; 4 uses
  %i.do = load i32, ptr @hf_ua3g_ip_device_routing_stop_rtp_parameter, align 4
  %i.dp = add nuw nsw i32 %i.dn, 2
  %i.dq = tail call ptr @val_to_str_const(i32 noundef %i.dk, ptr noundef nonnull @ip_device_routing_cmd_stop_rtp_vals, ptr noundef nonnull @.str.1218)
  %i.dr = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %0, i32 noundef %i.do, ptr noundef %1, i32 noundef %.2702845, i32 noundef %i.dp, i32 noundef %i.dk, ptr noundef nonnull @.str.1224, ptr noundef %i.dq)
  %i.ds = load i32, ptr @ett_ua3g_param, align 4
  %i.dt = tail call ptr @proto_item_add_subtree(ptr noundef %i.dr, i32 noundef %i.ds) ; 3 uses
  %i.du = load i32, ptr @hf_ua3g_ip_device_routing_stop_rtp_parameter, align 4
  %i.dv = tail call ptr @proto_tree_add_item(ptr noundef %i.dt, i32 noundef %i.du, ptr noundef %1, i32 noundef %.2702845, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dw = load i32, ptr @hf_ua3g_ip_device_routing_stop_rtp_parameter_length, align 4
  %i.dx = tail call ptr @proto_tree_add_item(ptr noundef %i.dt, i32 noundef %i.dw, ptr noundef %1, i32 noundef %i.dl, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dy = add i32 %.2702845, 2                    ; 3 uses
  %i.dz = add i32 %.2706844, -2                   ; 2 uses
  %.not765 = icmp eq i8 %i.dm, 0
  br i1 %.not765, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph846
  %i.ea = icmp ult i8 %i.dm, 9
  %hf_ua3g_ip_device_routing_stop_rtp_parameter_value_num.val = load i32, ptr @hf_ua3g_ip_device_routing_stop_rtp_parameter_value_num, align 4
  %hf_ua3g_ip_device_routing_stop_rtp_parameter_value_bytes.val = load i32, ptr @hf_ua3g_ip_device_routing_stop_rtp_parameter_value_bytes, align 4
  %i.eb = select i1 %i.ea, i32 %hf_ua3g_ip_device_routing_stop_rtp_parameter_value_num.val, i32 %hf_ua3g_ip_device_routing_stop_rtp_parameter_value_bytes.val
  %i.ec = tail call ptr @proto_tree_add_item(ptr noundef %i.dt, i32 noundef %i.eb, ptr noundef %1, i32 noundef %i.dy, i32 noundef %i.dn, i32 noundef 0) ; 0 uses
  %i.ed = add i32 %i.dy, %i.dn
  %i.ee = sub i32 %i.dz, %i.dn
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph846
  %.3707 = phi i32 [ %i.ee, %bb.ag ], [ %i.dz, %.lr.ph846 ] ; 2 uses
  %.3703 = phi i32 [ %i.ed, %bb.ag ], [ %i.dy, %.lr.ph846 ]
  %.not764 = icmp eq i32 %.3707, 0
  br i1 %.not764, label %.loopexit, label %.lr.ph846, !llvm.loop !12

.lr.ph842:                                        ; preds = %.preheader775, %bb.al
  %.4841 = phi i32 [ %.5, %bb.al ], [ 4, %.preheader775 ] ; 5 uses
  %.4708840 = phi i32 [ %.5709, %bb.al ], [ %i.i, %.preheader775 ]
  %i.ef = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.4841) ; 2 uses
  %i.eg = zext i8 %i.ef to i32                    ; 2 uses
  %i.eh = add i32 %.4841, 1                       ; 2 uses
  %i.ei = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.eh) ; 3 uses
  %i.ej = zext i8 %i.ei to i32                    ; 4 uses
  %i.ek = load i32, ptr @hf_ua3g_ip_device_routing_redirect_parameter, align 4
  %i.el = add nuw nsw i32 %i.ej, 2
  %i.em = tail call ptr @val_to_str_const(i32 noundef %i.eg, ptr noundef nonnull @ip_device_routing_cmd_redirect_vals, ptr noundef nonnull @.str.1218)
  %i.en = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %0, i32 noundef %i.ek, ptr noundef %1, i32 noundef %.4841, i32 noundef %i.el, i32 noundef %i.eg, ptr noundef nonnull @.str.1224, ptr noundef %i.em)
  %i.eo = load i32, ptr @ett_ua3g_param, align 4
  %i.ep = tail call ptr @proto_item_add_subtree(ptr noundef %i.en, i32 noundef %i.eo) ; 3 uses
  %i.eq = load i32, ptr @hf_ua3g_ip_device_routing_redirect_parameter, align 4
  %i.er = tail call ptr @proto_tree_add_item(ptr noundef %i.ep, i32 noundef %i.eq, ptr noundef %1, i32 noundef %.4841, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.es = load i32, ptr @hf_ua3g_ip_device_routing_redirect_parameter_length, align 4
  %i.et = tail call ptr @proto_tree_add_item(ptr noundef %i.ep, i32 noundef %i.es, ptr noundef %1, i32 noundef %i.eh, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eu = add i32 %.4841, 2                       ; 3 uses
  %i.ev = add i32 %.4708840, -2                   ; 2 uses
  %.not763 = icmp eq i8 %i.ei, 0
  br i1 %.not763, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph842
  switch i8 %i.ef, label %bb.aj [
    i8 0, label %bb.ak
    i8 2, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ew = icmp ult i8 %i.ei, 9
  %hf_ua3g_ip_device_routing_redirect_parameter_uint.hf_ua3g_ip_device_routing_redirect_parameter_value = select i1 %i.ew, ptr @hf_ua3g_ip_device_routing_redirect_parameter_uint, ptr @hf_ua3g_ip_device_routing_redirect_parameter_value
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ai
  %hf_ua3g_ip_device_routing_redirect_parameter_uint.sink = phi ptr [ %hf_ua3g_ip_device_routing_redirect_parameter_uint.hf_ua3g_ip_device_routing_redirect_parameter_value, %bb.aj ], [ @hf_ua3g_ip_device_routing_redirect_parameter_ip, %bb.ai ], [ @hf_ua3g_ip_device_routing_redirect_parameter_ip, %bb.ai ]
  %.sink925.a = phi i32 [ %i.ej, %bb.aj ], [ 4, %bb.ai ], [ 4, %bb.ai ]
  %i.ex = load i32, ptr %hf_ua3g_ip_device_routing_redirect_parameter_uint.sink, align 4
  %i.ey = tail call ptr @proto_tree_add_item(ptr noundef %i.ep, i32 noundef %i.ex, ptr noundef %1, i32 noundef %i.eu, i32 noundef %.sink925.a, i32 noundef 0) ; 0 uses
  %i.ez = add i32 %i.eu, %i.ej
  %i.fa = sub i32 %i.ev, %i.ej
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph842
  %.5709 = phi i32 [ %i.fa, %bb.ak ], [ %i.ev, %.lr.ph842 ] ; 2 uses
  %.5 = phi i32 [ %i.ez, %bb.ak ], [ %i.eu, %.lr.ph842 ]
  %.not762 = icmp eq i32 %.5709, 0
  br i1 %.not762, label %.loopexit, label %.lr.ph842, !llvm.loop !13

bb.am:                                            ; preds = %bb.b
  %i.fb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 4) ; 2 uses
  %i.fc = load i32, ptr @hf_ua3g_ip_device_routing_def_tones_num_entries, align 4
  %i.fd = tail call ptr @proto_tree_add_item(ptr noundef nonnull %0, i32 noundef %i.fc, ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fe = add nsw i32 %3, -2                      ; 2 uses
  %i.ff = icmp ne i8 %i.fb, 0
  %i.fg = icmp ne i32 %i.fe, 0
  %i.fh = select i1 %i.fg, i1 %i.ff, i1 false
  br i1 %i.fh, label %.preheader777.preheader, label %.loopexit

.preheader777.preheader:                          ; preds = %bb.am
  %i.fi = zext i8 %i.fb to i32                    ; 2 uses
  %i.fj = mul nsw i32 %i.fi, -6
  br label %.preheader777

.loopexit778:                                     ; preds = %bb.an
  %.not901 = icmp eq i32 %indvars.iv, 0
  br i1 %.not901, label %.loopexit, label %.preheader777, !llvm.loop !14

.preheader777:                                    ; preds = %.preheader777.preheader, %.loopexit778
  %.6838.a = phi i32 [ %i.fe, %.preheader777.preheader ], [ %indvars.iv, %.loopexit778 ]
  %.6710837 = phi i32 [ 5, %.preheader777.preheader ], [ %i.gh, %.loopexit778 ]
  %indvars.iv = add i32 %i.fj, %.6838.a           ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %.preheader777, %bb.an
  %.7836 = phi i32 [ %.6710837, %.preheader777 ], [ %i.gh, %bb.an ] ; 7 uses
  %.0727834 = phi i32 [ 1, %.preheader777 ], [ %i.gi, %bb.an ] ; 3 uses
  %i.fk = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %.7836)
  %i.fl = add i32 %.7836, 2                       ; 2 uses
  %i.fm = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.fl)
  %i.fn = sdiv i8 %i.fm, 2
  %i.fo = add i32 %.7836, 3                       ; 2 uses
  %i.fp = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %i.fo)
  %i.fq = add i32 %.7836, 5                       ; 2 uses
  %i.fr = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.fq)
  %i.fs = sdiv i8 %i.fr, 2
  %i.ft = load i32, ptr @ett_ua3g_param, align 4
  %i.fu = zext i16 %i.fk to i32
  %i.fv = sext i8 %i.fn to i32                    ; 2 uses
  %i.fw = zext i16 %i.fp to i32
  %i.fx = sext i8 %i.fs to i32                    ; 2 uses
  %i.fy = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %.7836, i32 noundef 6, i32 noundef %i.ft, ptr noundef null, ptr noundef nonnull @.str.1225, i32 noundef %.0727834, i32 noundef %i.fu, i32 noundef %i.fv, i32 noundef %i.fw, i32 noundef %i.fx) ; 4 uses
  %i.fz = load i32, ptr @hf_ua3g_ip_device_routing_def_tones_frequency_1, align 4
  %i.ga = tail call ptr @proto_tree_add_item(ptr noundef %i.fy, i32 noundef %i.fz, ptr noundef %1, i32 noundef %.7836, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.gb = load i32, ptr @hf_ua3g_ip_device_routing_def_tones_level_1, align 4
  %i.gc = tail call ptr @proto_tree_add_int(ptr noundef %i.fy, i32 noundef %i.gb, ptr noundef %1, i32 noundef %i.fl, i32 noundef 1, i32 noundef %i.fv) ; 0 uses
  %i.gd = load i32, ptr @hf_ua3g_ip_device_routing_def_tones_frequency_2, align 4
  %i.ge = tail call ptr @proto_tree_add_item(ptr noundef %i.fy, i32 noundef %i.gd, ptr noundef %1, i32 noundef %i.fo, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.gf = load i32, ptr @hf_ua3g_ip_device_routing_def_tones_level_2, align 4
  %i.gg = tail call ptr @proto_tree_add_int(ptr noundef %i.fy, i32 noundef %i.gf, ptr noundef %1, i32 noundef %i.fq, i32 noundef 1, i32 noundef %i.fx) ; 0 uses
  %i.gh = add i32 %.7836, 6                       ; 2 uses
  %i.gi = add nuw nsw i32 %.0727834, 1
  %exitcond.not = icmp eq i32 %.0727834, %i.fi
  br i1 %exitcond.not, label %.loopexit778, label %bb.an, !llvm.loop !15

bb.ao:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.gj = load i32, ptr @hf_ua3g_ip_device_routing_start_tone_direction, align 4
  %i.gk = tail call ptr @proto_tree_add_item(ptr noundef nonnull %0, i32 noundef %i.gj, ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gl = load i32, ptr @hf_ua3g_ip_device_routing_start_tone_num_entries, align 4
  %i.gm = call ptr @proto_tree_add_item_ret_uint(ptr noundef nonnull %0, i32 noundef %i.gl, ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.gn = load i32, ptr %i.a, align 4
  %.not864 = icmp eq i32 %i.gn, 0
  br i1 %.not864, label %._crit_edge833, label %.lr.ph832

._crit_edge833:                                   ; preds = %.lr.ph832, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit

.lr.ph832:                                        ; preds = %bb.ao, %.lr.ph832
  %.8830 = phi i32 [ %i.ha, %.lr.ph832 ], [ 5, %bb.ao ] ; 5 uses
  %.0726829 = phi i32 [ %i.gt, %.lr.ph832 ], [ 0, %bb.ao ]
  %i.go = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.8830)
  %i.gp = add i32 %.8830, 1                       ; 2 uses
  %i.gq = call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %i.gp)
  %i.gr = zext i16 %i.gq to i32
  %i.gs = load i32, ptr @ett_ua3g_param, align 4
  %i.gt = add nuw i32 %.0726829, 1                ; 3 uses
  %i.gu = zext i8 %i.go to i32
  %i.gv = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %.8830, i32 noundef 3, i32 noundef %i.gs, ptr noundef null, ptr noundef nonnull @.str.1226, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %i.gr) ; 2 uses
  %i.gw = load i32, ptr @hf_ua3g_ip_device_routing_start_tone_identification, align 4
  %i.gx = call ptr @proto_tree_add_item(ptr noundef %i.gv, i32 noundef %i.gw, ptr noundef %1, i32 noundef %.8830, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gy = load i32, ptr @hf_ua3g_ip_device_routing_start_tone_duration, align 4
  %i.gz = call ptr @proto_tree_add_item(ptr noundef %i.gv, i32 noundef %i.gy, ptr noundef %1, i32 noundef %i.gp, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ha = add i32 %.8830, 3
  %i.hb = load i32, ptr %i.a, align 4
  %i.hc = icmp ult i32 %i.gt, %i.hb
  br i1 %i.hc, label %.lr.ph832, label %._crit_edge833, !llvm.loop !16

bb.ap:                                            ; preds = %bb.b, %bb.b
  %.not759824 = icmp eq i32 %i.i, 0
  br i1 %.not759824, label %.loopexit, label %.lr.ph828

.lr.ph828:                                        ; preds = %bb.ap, %bb.at
  %.9826 = phi i32 [ %.10, %bb.at ], [ 4, %bb.ap ] ; 5 uses
  %.9713825 = phi i32 [ %.10714, %bb.at ], [ %i.i, %bb.ap ]
  %i.hd = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.9826) ; 2 uses
  %i.he = zext i8 %i.hd to i32                    ; 2 uses
  %i.hf = add i32 %.9826, 1                       ; 2 uses
  %i.hg = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.hf) ; 3 uses
  %i.hh = zext i8 %i.hg to i32                    ; 4 uses
  %i.hi = load i32, ptr @hf_ua3g_ip_device_routing_listen_rtp_parameter, align 4
  %i.hj = add nuw nsw i32 %i.hh, 2
  %i.hk = tail call ptr @val_to_str_const(i32 noundef %i.he, ptr noundef nonnull @ip_device_routing_cmd_listen_rtp_vals, ptr noundef nonnull @.str.1218)
  %i.hl = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %0, i32 noundef %i.hi, ptr noundef %1, i32 noundef %.9826, i32 noundef %i.hj, i32 noundef %i.he, ptr noundef nonnull @.str.1224, ptr noundef %i.hk)
  %i.hm = load i32, ptr @ett_ua3g_param, align 4
  %i.hn = tail call ptr @proto_item_add_subtree(ptr noundef %i.hl, i32 noundef %i.hm) ; 3 uses
  %i.ho = load i32, ptr @hf_ua3g_ip_device_routing_listen_rtp_parameter, align 4
  %i.hp = tail call ptr @proto_tree_add_item(ptr noundef %i.hn, i32 noundef %i.ho, ptr noundef %1, i32 noundef %.9826, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hq = load i32, ptr @hf_ua3g_ip_device_routing_listen_rtp_parameter_length, align 4
  %i.hr = tail call ptr @proto_tree_add_item(ptr noundef %i.hn, i32 noundef %i.hq, ptr noundef %1, i32 noundef %i.hf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hs = add i32 %.9826, 2                       ; 3 uses
  %i.ht = add i32 %.9713825, -2                   ; 2 uses
  %.not760 = icmp eq i8 %i.hg, 0
  br i1 %.not760, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph828
  switch i8 %i.hd, label %bb.ar [
    i8 0, label %bb.as
    i8 3, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.hu = icmp ult i8 %i.hg, 9
  %hf_ua3g_ip_device_routing_listen_rtp_parameter_port.hf_ua3g_ip_device_routing_listen_rtp_parameter_value = select i1 %i.hu, ptr @hf_ua3g_ip_device_routing_listen_rtp_parameter_port, ptr @hf_ua3g_ip_device_routing_listen_rtp_parameter_value
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.aq
  %hf_ua3g_ip_device_routing_listen_rtp_parameter_port.sink = phi ptr [ %hf_ua3g_ip_device_routing_listen_rtp_parameter_port.hf_ua3g_ip_device_routing_listen_rtp_parameter_value, %bb.ar ], [ @hf_ua3g_ip_device_routing_listen_rtp_parameter_ip, %bb.aq ], [ @hf_ua3g_ip_device_routing_listen_rtp_parameter_ip, %bb.aq ]
  %.sink926.a = phi i32 [ %i.hh, %bb.ar ], [ 1, %bb.aq ], [ 1, %bb.aq ]
  %i.hv = load i32, ptr %hf_ua3g_ip_device_routing_listen_rtp_parameter_port.sink, align 4
  %i.hw = tail call ptr @proto_tree_add_item(ptr noundef %i.hn, i32 noundef %i.hv, ptr noundef %1, i32 noundef %i.hs, i32 noundef %.sink926.a, i32 noundef 0) ; 0 uses
  %i.hx = add i32 %i.hs, %i.hh
  %i.hy = sub i32 %i.ht, %i.hh
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph828
  %.10714 = phi i32 [ %i.hy, %bb.as ], [ %i.ht, %.lr.ph828 ] ; 2 uses
  %.10 = phi i32 [ %i.hx, %bb.as ], [ %i.hs, %.lr.ph828 ]
  %.not759 = icmp eq i32 %.10714, 0
  br i1 %.not759, label %.loopexit, label %.lr.ph828, !llvm.loop !17

.lr.ph823:                                        ; preds = %.preheader781, %.lr.ph823
  %.11822 = phi i32 [ %i.ib, %.lr.ph823 ], [ 4, %.preheader781 ] ; 2 uses
  %.11715821 = phi i32 [ %i.ic, %.lr.ph823 ], [ %i.i, %.preheader781 ]
  %i.hz = load i32, ptr @hf_ua3g_ip_device_routing_get_param_req_parameter, align 4
  %i.ia = tail call ptr @proto_tree_add_item(ptr noundef nonnull %0, i32 noundef %i.hz, ptr noundef %1, i32 noundef %.11822, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ib = add i32 %.11822, 1
  %i.ic = add i32 %.11715821, -1                  ; 2 uses
  %.not758 = icmp eq i32 %i.ic, 0
  br i1 %.not758, label %.loopexit, label %.lr.ph823, !llvm.loop !18

.lr.ph819:                                        ; preds = %.preheader783, %bb.bj
  %.12818 = phi i32 [ %.13, %bb.bj ], [ 4, %.preheader783 ] ; 5 uses
  %.12716817 = phi i32 [ %.13717, %bb.bj ], [ %i.i, %.preheader783 ]
  %i.id = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.12818) ; 2 uses
  %i.ie = zext i8 %i.id to i32                    ; 2 uses
  %i.if = add i32 %.12818, 1                      ; 2 uses
  %i.ig = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.if) ; 3 uses
  %i.ih = zext i8 %i.ig to i32                    ; 5 uses
  %i.ii = load i32, ptr @hf_ua3g_ip_device_routing_set_param_req_parameter, align 4
  %i.ij = add nuw nsw i32 %i.ih, 2
  %i.ik = tail call ptr @val_to_str_ext_const(i32 noundef %i.ie, ptr noundef nonnull @ip_device_routing_cmd_set_param_req_vals_ext, ptr noundef nonnull @.str.1218)
  %i.il = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %0, i32 noundef %i.ii, ptr noundef %1, i32 noundef %.12818, i32 noundef %i.ij, i32 noundef %i.ie, ptr noundef nonnull @.str.1224, ptr noundef %i.ik)
  %i.im = load i32, ptr @ett_ua3g_param, align 4
  %i.in = tail call ptr @proto_item_add_subtree(ptr noundef %i.il, i32 noundef %i.im) ; 3 uses
  %i.io = load i32, ptr @hf_ua3g_ip_device_routing_set_param_req_parameter, align 4
  %i.ip = tail call ptr @proto_tree_add_item(ptr noundef %i.in, i32 noundef %i.io, ptr noundef %1, i32 noundef %.12818, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.iq = load i32, ptr @hf_ua3g_ip_device_routing_set_param_req_parameter_length, align 4
  %i.ir = tail call ptr @proto_tree_add_item(ptr noundef %i.in, i32 noundef %i.iq, ptr noundef %1, i32 noundef %i.if, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.is = add i32 %.12818, 2                      ; 3 uses
  %i.it = add i32 %.12716817, -2                  ; 2 uses
  %.not757 = icmp eq i8 %i.ig, 0
  br i1 %.not757, label %bb.bj, label %bb.au

bb.au:                                            ; preds = %.lr.ph819
  switch i8 %i.id, label %bb.bh [
    i8 6, label %bb.bi
    i8 7, label %bb.av
    i8 8, label %bb.av
    i8 9, label %bb.av
    i8 10, label %bb.av
    i8 11, label %bb.av
    i8 12, label %bb.av
    i8 15, label %bb.aw
    i8 17, label %bb.ax
    i8 18, label %bb.ay
    i8 19, label %bb.az
    i8 22, label %bb.ba
    i8 27, label %bb.bb
    i8 28, label %bb.bc
    i8 30, label %bb.bd
    i8 34, label %bb.be
    i8 35, label %bb.bf
    i8 36, label %bb.bg
  ]

bb.av:                                            ; preds = %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au
  br label %bb.bi

bb.aw:                                            ; preds = %bb.au
  br label %bb.bi

bb.ax:                                            ; preds = %bb.au
  br label %bb.bi

bb.ay:                                            ; preds = %bb.au
  br label %bb.bi

bb.az:                                            ; preds = %bb.au
  br label %bb.bi

bb.ba:                                            ; preds = %bb.au
  br label %bb.bi

bb.bb:                                            ; preds = %bb.au
  br label %bb.bi

bb.bc:                                            ; preds = %bb.au
  br label %bb.bi

bb.bd:                                            ; preds = %bb.au
  br label %bb.bi

bb.be:                                            ; preds = %bb.au
  br label %bb.bi
end_hunk_0
begin_hunk_1_@decode_main_voice_mode:bb.a
  %i.z = load i32, ptr @hf_ua3g_main_voice_mode_sending_level, align 4
  %i.aa = sext i8 %i.y to i32
  %i.ab = tail call ptr @proto_tree_add_int(ptr noundef nonnull %0, i32 noundef %i.z, ptr noundef %1, i32 noundef 5, i32 noundef 1, i32 noundef %i.aa) ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.ac = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 4)
  %i.ad = sdiv i8 %i.ac, 2
  %i.ae = load i32, ptr @hf_ua3g_main_voice_mode_headset_level, align 4
  %i.af = sext i8 %i.ad to i32
  %i.ag = tail call ptr @proto_tree_add_int(ptr noundef nonnull %0, i32 noundef %i.ae, ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef %i.af) ; 0 uses
  %i.ah = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 5)
  %i.ai = sdiv i8 %i.ah, 2
  %i.aj = load i32, ptr @hf_ua3g_main_voice_mode_sending_level, align 4
  %i.ak = sext i8 %i.ai to i32
  %i.al = tail call ptr @proto_tree_add_int(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef %1, i32 noundef 5, i32 noundef 1, i32 noundef %i.ak) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.am = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 4)
  %i.an = sdiv i8 %i.am, 2
  %i.ao = load i32, ptr @hf_ua3g_main_voice_mode_handsfree_level, align 4
  %i.ap = sext i8 %i.an to i32
  %i.aq = tail call ptr @proto_tree_add_int(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef %i.ap) ; 0 uses
  %i.ar = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 5)
  %i.as = sdiv i8 %i.ar, 2
  %i.at = load i32, ptr @hf_ua3g_main_voice_mode_sending_level, align 4
  %i.au = sext i8 %i.as to i32
  %i.av = tail call ptr @proto_tree_add_int(ptr noundef nonnull %0, i32 noundef %i.at, ptr noundef %1, i32 noundef 5, i32 noundef 1, i32 noundef %i.au) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_subdevice_metastate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_ua3g_subdevice_metastate_subchannel_address, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.a, ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_ua3g_subdevice_metastate_new_metastate, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.c, ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_dwl_dtmf_clck_format(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 -1, 65535) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_ua3g_dwl_dtmf_clck_format_minimum_on_time, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.a, ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_ua3g_dwl_dtmf_clck_format_inter_digit_pause_time, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.c, ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_ua3g_dwl_dtmf_clck_format_clock_time_format, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.e, ptr noundef %1, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = icmp ugt i32 %2, 2
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr @hf_ua3g_dwl_dtmf_clck_format_dtmf_country_adaptation, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.h, ptr noundef %1, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_set_clck(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 -1, 65535) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 3) ; 3 uses
  %i.b = getelementptr i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = zext i8 %i.a to i32
  %i.e = tail call ptr @val_to_str_const(i32 noundef %i.d, ptr noundef nonnull @str_command_set_clck, ptr noundef nonnull @.str.1218)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.c, i32 noundef 25, ptr noundef nonnull @.str.1223, ptr noundef %i.e)
  %i.f = load i32, ptr @hf_ua3g_command_set_clck, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.f, ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = icmp uge i8 %i.a, 3
  %.not29 = icmp eq i32 %3, 1
  %or.cond = or i1 %i.h, %.not29
  br i1 %or.cond, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %switch.masked = icmp eq i8 %i.a, 2
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 4)
  %i.j = zext i8 %i.i to i32
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 5)
  %i.l = zext i8 %i.k to i32
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 6)
  %i.n = zext i8 %i.m to i32
  %i.o = load i32, ptr @hf_ua3g_call_timer, align 4
  %i.p = load i32, ptr @hf_ua3g_current_time, align 4
  %i.q = select i1 %switch.masked, i32 %i.o, i32 %i.p
  %i.r = tail call i32 @tvb_get_ntoh24(ptr noundef %1, i32 noundef 4)
  %i.s = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %0, i32 noundef %i.q, ptr noundef %1, i32 noundef 4, i32 noundef 3, i32 noundef %i.r, ptr noundef nonnull @.str.1231, i32 noundef %i.j, i32 noundef %i.l, i32 noundef %i.n) ; 0 uses
  %i.t = add nsw i32 %3, -4                       ; 2 uses
  %.not.peel = icmp eq i32 %i.t, 0
  br i1 %.not.peel, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02731 = phi i32 [ %i.af, %.lr.ph ], [ 7, %.lr.ph.preheader ] ; 6 uses
  %.02830 = phi i32 [ %i.ag, %.lr.ph ], [ %i.t, %.lr.ph.preheader ]
  %i.u = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.02731)
  %i.v = zext i8 %i.u to i32
  %i.w = add i32 %.02731, 1
  %i.x = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.w)
  %i.y = zext i8 %i.x to i32
  %i.z = add i32 %.02731, 2
  %i.aa = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.z)
  %i.ab = zext i8 %i.aa to i32
  %i.ac = load i32, ptr @hf_ua3g_call_timer, align 4
  %i.ad = tail call i32 @tvb_get_ntoh24(ptr noundef %1, i32 noundef %.02731)
  %i.ae = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %0, i32 noundef %i.ac, ptr noundef %1, i32 noundef %.02731, i32 noundef 3, i32 noundef %i.ad, ptr noundef nonnull @.str.1231, i32 noundef %i.v, i32 noundef %i.y, i32 noundef %i.ab) ; 0 uses
  %i.af = add i32 %.02731, 3
  %i.ag = add i32 %.02830, -3                     ; 2 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !24

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %.lr.ph.preheader
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_voice_channel(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 -1, 65535) %2) unnamed_addr #0 {
bb.a:
  switch i32 %2, label %bb.c [
    i32 1, label %.sink.split.sink.split
    i32 2, label %.sink.split
    i32 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @hf_ua3g_voice_channel_b_general, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.a, ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.a, %bb.b
  %hf_ua3g_voice_channel_channel_mode.sink = phi ptr [ @hf_ua3g_voice_channel_b_loud_speaker, %bb.b ], [ @hf_ua3g_voice_channel_channel_mode, %bb.a ]
  %.sink3 = phi i32 [ 4, %bb.b ], [ 3, %bb.a ]
  %hf_ua3g_voice_channel_main_voice.sink.ph = phi ptr [ @hf_ua3g_voice_channel_b_ear_piece, %bb.b ], [ @hf_ua3g_voice_channel_codec, %bb.a ]
  %.sink2.ph = phi i32 [ 5, %bb.b ], [ 3, %bb.a ]
  %hf_ua3g_voice_channel_announce.sink.ph = phi ptr [ @hf_ua3g_voice_channel_b_microphones, %bb.b ], [ @hf_ua3g_voice_channel_voice_channel, %bb.a ]
  %.sink1.ph = phi i32 [ 6, %bb.b ], [ 3, %bb.a ]
  %i.c = load i32, ptr %hf_ua3g_voice_channel_channel_mode.sink, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.c, ptr noundef %1, i32 noundef %.sink3, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.a
  %hf_ua3g_voice_channel_main_voice.sink = phi ptr [ @hf_ua3g_voice_channel_main_voice, %bb.a ], [ %hf_ua3g_voice_channel_main_voice.sink.ph, %.sink.split.sink.split ]
  %.sink2 = phi i32 [ 3, %bb.a ], [ %.sink2.ph, %.sink.split.sink.split ]
  %hf_ua3g_voice_channel_announce.sink = phi ptr [ @hf_ua3g_voice_channel_announce, %bb.a ], [ %hf_ua3g_voice_channel_announce.sink.ph, %.sink.split.sink.split ]
  %.sink1 = phi i32 [ 4, %bb.a ], [ %.sink1.ph, %.sink.split.sink.split ]
  %i.e = load i32, ptr %hf_ua3g_voice_channel_main_voice.sink, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.e, ptr noundef %1, i32 noundef %.sink2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr %hf_ua3g_voice_channel_announce.sink, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.g, ptr noundef %1, i32 noundef %.sink1, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_external_ringing(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 3)
  %i.b = getelementptr i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = zext i8 %i.a to i32
  %i.e = tail call ptr @val_to_str_const(i32 noundef %i.d, ptr noundef nonnull @str_ext_ring_cmd, ptr noundef nonnull @.str.1218)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.c, i32 noundef 25, ptr noundef nonnull @.str.1223, ptr noundef %i.e)
  %i.f = load i32, ptr @hf_ua3g_external_ringing_command, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.f, ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_lcd_cursor(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 4)
  %i.b = and i8 %i.a, 2
  %.not = icmp eq i8 %i.b, 0
  %i.c = select i1 %.not, ptr @.str.992, ptr @.str.1169
  %i.d = getelementptr i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.e, i32 noundef 25, ptr noundef nonnull @.str.1223, ptr noundef nonnull %i.c)
  %i.f = load i32, ptr @hf_ua3g_lcd_cursor_line_number, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.f, ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr @hf_ua3g_lcd_cursor, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.h, ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_dwl_special_char(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 -1, 65535) %2) unnamed_addr #0 {
bb.a:
  %.not6 = icmp eq i32 %2, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0128 = phi i32 [ %indvars.iv, %.lr.ph ], [ %2, %bb.a ]
  %.0137 = phi i32 [ %i.s, %.lr.ph ], [ 3, %bb.a ] ; 10 uses
  %indvars.iv = add i32 %.0128, -9                ; 2 uses
  %i.a = load i32, ptr @hf_ua3g_dwl_special_char_character_number, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.a, ptr noundef %1, i32 noundef %.0137, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.1142 = add i32 %.0137, 1
  %i.c = load i32, ptr @hf_ua3g_dwl_special_char_byte, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.c, ptr noundef %1, i32 noundef %.1142, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.114 = add i32 %.0137, 2
  %i.e = load i32, ptr @hf_ua3g_dwl_special_char_byte, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.e, ptr noundef %1, i32 noundef %.114, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.114.1 = add i32 %.0137, 3
  %i.g = load i32, ptr @hf_ua3g_dwl_special_char_byte, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.g, ptr noundef %1, i32 noundef %.114.1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.114.2 = add i32 %.0137, 4
  %i.i = load i32, ptr @hf_ua3g_dwl_special_char_byte, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.i, ptr noundef %1, i32 noundef %.114.2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.114.3 = add i32 %.0137, 5
  %i.k = load i32, ptr @hf_ua3g_dwl_special_char_byte, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.k, ptr noundef %1, i32 noundef %.114.3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.114.4 = add i32 %.0137, 6
  %i.m = load i32, ptr @hf_ua3g_dwl_special_char_byte, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.m, ptr noundef %1, i32 noundef %.114.4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.114.5 = add i32 %.0137, 7
  %i.o = load i32, ptr @hf_ua3g_dwl_special_char_byte, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.o, ptr noundef %1, i32 noundef %.114.5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.114.6 = add i32 %.0137, 8
  %i.q = load i32, ptr @hf_ua3g_dwl_special_char_byte, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.q, ptr noundef %1, i32 noundef %.114.6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.s = add i32 %.0137, 9
  %.not = icmp eq i32 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_set_clck_timer_pos(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @hf_ua3g_set_clck_timer_pos_clock_line_number, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef nonnull %0, i32 noundef %i.a, ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_ua3g_set_clck_timer_pos_clock_column_number, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_ua3g_set_clck_timer_pos_call_timer_line_number, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef nonnull %0, i32 noundef %i.e, ptr noundef %1, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_ua3g_set_clck_timer_pos_call_timer_column_number, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef nonnull %0, i32 noundef %i.g, ptr noundef %1, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_set_lcd_contrast(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_ua3g_set_lcd_contrast_driver_number, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.a, ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_ua3g_set_lcd_contrast_contrast_value, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.c, ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_beep(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 -1, 65535) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 3) ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = zext i8 %i.a to i32
  %i.e = tail call ptr @val_to_str_const(i32 noundef %i.d, ptr noundef nonnull @str_command_beep, ptr noundef nonnull @.str.1218)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.c, i32 noundef 25, ptr noundef nonnull @.str.1223, ptr noundef %i.e)
  %i.f = load i32, ptr @hf_ua3g_command_beep, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.f, ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.a, label %.loopexit [
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 4, label %bb.d
    i8 5, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.h = load i32, ptr @hf_ua3g_beep_destination, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.h, ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = add nsw i32 %3, -2                       ; 2 uses
  %.not101111 = icmp eq i32 %i.j, 0
  br i1 %.not101111, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0114 = phi i32 [ %i.t, %.lr.ph ], [ 5, %bb.c ] ; 4 uses
  %.093113 = phi i32 [ %i.u, %.lr.ph ], [ %i.j, %bb.c ]
  %.097112 = phi i32 [ %i.k, %.lr.ph ], [ 0, %bb.c ]
  %i.k = add nuw i32 %.097112, 1                  ; 2 uses
  %i.l = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.0114)
  %i.m = and i8 %i.l, 127
  %i.n = mul i8 %i.m, 10
  %i.o = load i32, ptr @hf_ua3g_beep_on_off, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.o, ptr noundef %1, i32 noundef %.0114, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_ua3g_beep_cadence, align 4
  %i.r = zext i8 %i.n to i32                      ; 2 uses
  %i.s = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %0, i32 noundef %i.q, ptr noundef %1, i32 noundef %.0114, i32 noundef 1, i32 noundef %i.r, ptr noundef nonnull @.str.1232, i32 noundef %i.k, i32 noundef %i.r) ; 0 uses
  %i.t = add i32 %.0114, 1
  %i.u = add i32 %.093113, -1                     ; 2 uses
  %.not101 = icmp eq i32 %i.u, 0
  br i1 %.not101, label %.loopexit, label %.lr.ph, !llvm.loop !27

bb.d:                                             ; preds = %bb.b
  %i.v = load i32, ptr @hf_ua3g_beep_beep_destination, align 4
  %i.w = load i32, ptr @ett_ua3g_beep_beep_destination, align 4
  %i.x = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef 4, i32 noundef %i.v, i32 noundef %i.w, ptr noundef nonnull @decode_beep.destinations, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_ua3g_beep_beep_number, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.y, ptr noundef %1, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.aa = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 4)
  %i.ab = load i32, ptr @hf_ua3g_beep_beep_number, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ab, ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = icmp ult i8 %i.aa, 69
  %. = select i1 %i.ad, i32 0, i32 255            ; 2 uses
  %i.ae = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 5) ; 2 uses
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = load i32, ptr @hf_ua3g_beep_number_of_notes, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ag, ptr noundef %1, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ai = add nsw i32 %3, -3                      ; 2 uses
  %.not99108 = icmp eq i32 %i.ai, 0
  br i1 %.not99108, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %.not100103 = icmp eq i8 %i.ae, 0
  br i1 %.not100103, label %.preheader.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.neg = mul nuw nsw i32 %i.af, 3                ; 2 uses
  %4 = sub nsw i32 %3, %.neg
  %5 = xor i32 %.neg, -1
  br label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.preheader.us
  %.1110.us = phi i32 [ %i.al, %.preheader.us ], [ 6, %.preheader.lr.ph ] ; 2 uses
  %.194109.us = phi i32 [ %i.am, %.preheader.us ], [ %i.ai, %.preheader.lr.ph ]
  %i.aj = load i32, ptr @hf_ua3g_beep_terminator, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.aj, ptr noundef %1, i32 noundef %.1110.us, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.al = add i32 %.1110.us, 1
  %i.am = add i32 %.194109.us, -1                 ; 2 uses
  %.not99.us = icmp eq i32 %i.am, 0
  br i1 %.not99.us, label %.loopexit, label %.preheader.us, !llvm.loop !28

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.1110.a = phi i32 [ %4, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.194109 = phi i32 [ 6, %.preheader.preheader ], [ %i.bl, %._crit_edge ]
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.f
  %.2106 = phi i32 [ %.194109, %.preheader ], [ %i.bh, %bb.f ] ; 8 uses
  %.096104 = phi i32 [ 1, %.preheader ], [ %i.bi, %bb.f ] ; 3 uses
  %i.an = load i32, ptr @ett_ua3g_note, align 4
  %i.ao = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %0, ptr noundef %1, i32 noundef %.2106, i32 noundef 3, i32 noundef %i.an, ptr noundef null, ptr noundef nonnull @.str.1233, i32 noundef %.096104) ; 3 uses
  %i.ap = load i32, ptr @hf_ua3g_beep_freq_sample, align 4
  %i.aq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.2106)
  %i.ar = zext i8 %i.aq to i32
  %i.as = tail call ptr @val_to_str_const(i32 noundef %., ptr noundef nonnull @str_beep_freq_sample_nb, ptr noundef nonnull @.str.1218)
  %i.at = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.2106)
  %i.au = zext i8 %i.at to i32
  %i.av = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.ao, i32 noundef %i.ap, ptr noundef %1, i32 noundef %.2106, i32 noundef 1, i32 noundef %i.ar, ptr noundef nonnull @.str.1234, ptr noundef %i.as, i32 noundef %i.au) ; 0 uses
  %i.aw = add i32 %.2106, 1
  %i.ax = load i32, ptr @hf_ua3g_beep_level, align 4
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.ax, ptr noundef %1, i32 noundef %i.aw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.az = add i32 %.2106, 2                       ; 3 uses
  %i.ba = load i32, ptr @hf_ua3g_beep_duration, align 4
  %i.bb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.az)
  %i.bc = zext i8 %i.bb to i32
  %i.bd = tail call ptr @val_to_str_const(i32 noundef %., ptr noundef nonnull @str_beep_duration, ptr noundef nonnull @.str.1218)
  %i.be = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.az)
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.ao, i32 noundef %i.ba, ptr noundef %1, i32 noundef %i.az, i32 noundef 1, i32 noundef %i.bc, ptr noundef nonnull @.str.1235, ptr noundef %i.bd, i32 noundef %i.bf) ; 0 uses
  %i.bh = add i32 %.2106, 3                       ; 2 uses
  %i.bi = add nuw nsw i32 %.096104, 1
  %exitcond.not = icmp eq i32 %.096104, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.f
  %i.bj = load i32, ptr @hf_ua3g_beep_terminator, align 4
  %i.bk = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bj, ptr noundef %1, i32 noundef %i.bh, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bl = add i32 %.2106, 4
  %.not99 = icmp eq i32 %.1110.a, 4
  %indvars.iv.next = add i32 %.1110.a, %5
  br i1 %.not99, label %.loopexit, label %.preheader, !llvm.loop !28

bb.g:                                             ; preds = %bb.a
  %i.bm = getelementptr i8, ptr %2, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void @col_append_str(ptr noundef %i.bn, i32 noundef 25, ptr noundef nonnull @.str.1236)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.preheader.us, %.lr.ph, %bb.e, %bb.c, %bb.d, %bb.b, %bb.g
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_sidetone(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 3) ; 2 uses
  %.not = icmp eq i8 %i.a, 0
  %i.b = select i1 %.not, ptr @.str.992, ptr @.str.1169
  %i.c = getelementptr i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.d, i32 noundef 25, ptr noundef nonnull @.str.1223, ptr noundef nonnull %i.b)
  %i.e = load i32, ptr @hf_ua3g_command_sidetone, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.e, ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = icmp eq i8 %i.a, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr @hf_ua3g_sidetone_level, align 4
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 4)
  %i.j = lshr i8 %i.i, 1
  %i.k = zext nneg i8 %i.j to i32
  %i.l = tail call ptr @proto_tree_add_int(ptr noundef %0, i32 noundef %i.h, ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef %i.k) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_ringing_cadence(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 -1, 65535) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @hf_ua3g_ringing_cadence_cadence, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef nonnull %0, i32 noundef %i.a, ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.0211 = add nsw i32 %2, -1                     ; 2 uses
  %.not232 = icmp eq i32 %.0211, 0
  br i1 %.not232, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0215 = phi i32 [ %.021, %.lr.ph ], [ %.0211, %bb.b ]
  %.04 = phi i32 [ %i.l, %.lr.ph ], [ 4, %bb.b ]  ; 4 uses
  %.0203 = phi i32 [ %i.c, %.lr.ph ], [ 0, %bb.b ]
  %i.c = add nuw i32 %.0203, 1                    ; 2 uses
  %i.d = load i32, ptr @hf_ua3g_ringing_cadence_on_off, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef nonnull %0, i32 noundef %i.d, ptr noundef %1, i32 noundef %.04, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.04)
  %i.g = and i8 %i.f, 127
  %i.h = zext nneg i8 %i.g to i32
  %i.i = mul nuw nsw i32 %i.h, 10                 ; 2 uses
  %i.j = load i32, ptr @hf_ua3g_ringing_cadence_length, align 4
  %i.k = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef %1, i32 noundef %.04, i32 noundef 1, i32 noundef %i.i, ptr noundef nonnull @.str.1243, i32 noundef %i.c, i32 noundef %i.i) ; 0 uses
  %i.l = add i32 %.04, 1
  %.021 = add i32 %.0215, -1                      ; 2 uses
  %.not23 = icmp eq i32 %.021, 0
  br i1 %.not23, label %.loopexit, label %.lr.ph, !llvm.loop !30

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_mute(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 3)
  %i.b = getelementptr i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = zext i8 %i.a to i32
  %i.e = tail call ptr @val_to_str_const(i32 noundef %i.d, ptr noundef nonnull @str_mute, ptr noundef nonnull @.str.1218)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.c, i32 noundef 25, ptr noundef nonnull @.str.1223, ptr noundef %i.e)
  %i.f = load i32, ptr @hf_ua3g_command_mute, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.f, ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_feedback(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 -1, 65535) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 3) ; 2 uses
  %.not = icmp eq i8 %i.a, 0
  %i.b = select i1 %.not, ptr @.str.992, ptr @.str.1169
  %i.c = getelementptr i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.d, i32 noundef 25, ptr noundef nonnull @.str.1223, ptr noundef nonnull %i.b)
  %.not26 = icmp eq ptr %0, null
  br i1 %.not26, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_ua3g_command_feedback, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef nonnull %0, i32 noundef %i.e, ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = icmp eq i8 %i.a, 1
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr @hf_ua3g_feedback_level, align 4
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 4)
  %i.j = lshr i8 %i.i, 1
  %i.k = zext nneg i8 %i.j to i32
  %i.l = tail call ptr @proto_tree_add_int(ptr noundef nonnull %0, i32 noundef %i.h, ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef %i.k) ; 0 uses
  %.not27 = icmp eq i32 %3, 2
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr @hf_ua3g_feedback_duration, align 4
  %i.n = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 5)
  %i.o = zext i8 %i.n to i32
  %i.p = mul nuw nsw i32 %i.o, 10
  %i.q = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 5)
  %i.r = zext i8 %i.q to i32
  %i.s = mul nuw nsw i32 %i.r, 10
  %i.t = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef nonnull %0, i32 noundef %i.m, ptr noundef %1, i32 noundef 5, i32 noundef 1, i32 noundef %i.p, ptr noundef nonnull @.str.1247, i32 noundef %i.s) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_r_w_peripheral(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 -1, 65535) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_ua3g_r_w_peripheral_address, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.a, ptr noundef %1, i32 noundef 3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.c = icmp ugt i32 %2, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @hf_ua3g_r_w_peripheral_content, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.d, ptr noundef %1, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_icon_cmd(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.a = load i32, ptr @hf_ua3g_icon_cmd_icon_number, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef nonnull %0, i32 noundef %i.a, ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 4)
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 5)
  %i.e = zext i8 %i.c to i32                      ; 8 uses
  %i.f = zext i8 %i.d to i32                      ; 8 uses
  %i.g = shl nuw nsw i32 %i.e, 1
  %i.h = and i32 %i.g, 2
  %i.i = and i32 %i.f, 1
  %i.j = or disjoint i32 %i.h, %i.i               ; 3 uses
  %i.k = load i32, ptr @hf_ua3g_icon_cmd_segment, align 4
  %i.l = tail call ptr @val_to_str_const(i32 noundef %i.j, ptr noundef nonnull @str_icon_cmd_state, ptr noundef nonnull @.str.1218)
  %i.m = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %0, i32 noundef %i.k, ptr noundef %1, i32 noundef 4, i32 noundef 2, i32 noundef %i.j, ptr noundef nonnull @.str.1248, i32 noundef 0, ptr noundef %i.l, i32 noundef %i.j) ; 0 uses
  %i.n = and i32 %i.e, 2
  %i.o = lshr i32 %i.f, 1
  %i.p = and i32 %i.o, 1
  %i.q = or disjoint i32 %i.n, %i.p               ; 3 uses
  %i.r = load i32, ptr @hf_ua3g_icon_cmd_segment, align 4
  %i.s = tail call ptr @val_to_str_const(i32 noundef %i.q, ptr noundef nonnull @str_icon_cmd_state, ptr noundef nonnull @.str.1218)
  %i.t = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %0, i32 noundef %i.r, ptr noundef %1, i32 noundef 4, i32 noundef 2, i32 noundef %i.q, ptr noundef nonnull @.str.1248, i32 noundef 1, ptr noundef %i.s, i32 noundef %i.q) ; 0 uses
  %i.u = lshr i32 %i.e, 1
  %i.v = and i32 %i.u, 2
  %i.w = lshr i32 %i.f, 2
  %i.x = and i32 %i.w, 1
  %i.y = or disjoint i32 %i.v, %i.x               ; 3 uses
  %i.z = load i32, ptr @hf_ua3g_icon_cmd_segment, align 4
  %i.aa = tail call ptr @val_to_str_const(i32 noundef %i.y, ptr noundef nonnull @str_icon_cmd_state, ptr noundef nonnull @.str.1218)
  %i.ab = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %0, i32 noundef %i.z, ptr noundef %1, i32 noundef 4, i32 noundef 2, i32 noundef %i.y, ptr noundef nonnull @.str.1248, i32 noundef 2, ptr noundef %i.aa, i32 noundef %i.y) ; 0 uses
  %i.ac = lshr i32 %i.e, 2
  %i.ad = and i32 %i.ac, 2
  %i.ae = lshr i32 %i.f, 3
  %i.af = and i32 %i.ae, 1
  %i.ag = or disjoint i32 %i.ad, %i.af            ; 3 uses
  %i.ah = load i32, ptr @hf_ua3g_icon_cmd_segment, align 4
  %i.ai = tail call ptr @val_to_str_const(i32 noundef %i.ag, ptr noundef nonnull @str_icon_cmd_state, ptr noundef nonnull @.str.1218)
  %i.aj = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %0, i32 noundef %i.ah, ptr noundef %1, i32 noundef 4, i32 noundef 2, i32 noundef %i.ag, ptr noundef nonnull @.str.1248, i32 noundef 3, ptr noundef %i.ai, i32 noundef %i.ag) ; 0 uses
  %i.ak = lshr i32 %i.e, 3
  %i.al = and i32 %i.ak, 2
  %i.am = lshr i32 %i.f, 4
  %i.an = and i32 %i.am, 1
  %i.ao = or disjoint i32 %i.al, %i.an            ; 3 uses
  %i.ap = load i32, ptr @hf_ua3g_icon_cmd_segment, align 4
  %i.aq = tail call ptr @val_to_str_const(i32 noundef %i.ao, ptr noundef nonnull @str_icon_cmd_state, ptr noundef nonnull @.str.1218)
  %i.ar = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %0, i32 noundef %i.ap, ptr noundef %1, i32 noundef 4, i32 noundef 2, i32 noundef %i.ao, ptr noundef nonnull @.str.1248, i32 noundef 4, ptr noundef %i.aq, i32 noundef %i.ao) ; 0 uses
  %i.as = lshr i32 %i.e, 4
  %i.at = and i32 %i.as, 2
  %i.au = lshr i32 %i.f, 5
end_hunk_1
