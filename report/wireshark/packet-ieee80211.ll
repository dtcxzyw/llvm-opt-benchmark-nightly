inline.NumInlined: 916
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 32
begin_hunk_0_@add_ff_action:bb.a
  %i.hm = load i32, ptr @hf_ieee80211_ff_tpc_link_margin, align 4
  %i.hn = add i32 %3, 6
  %i.ho = tail call ptr @proto_tree_add_item(ptr noundef %i.hd, i32 noundef %i.hm, ptr noundef %1, i32 noundef %i.hn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hp = add i32 %3, 7
  %i.hq = load i32, ptr @hf_ieee80211_ff_rm_rx_antenna_id, align 4
  %i.hr = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.hq, ptr noundef %1, i32 noundef %i.hp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hs = add i32 %3, 8
  %i.ht = load i32, ptr @hf_ieee80211_ff_rm_tx_antenna_id, align 4
  %i.hu = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ht, ptr noundef %1, i32 noundef %i.hs, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hv = add i32 %3, 9
  %i.hw = load i32, ptr @hf_ieee80211_ff_rm_rcpi, align 4
  %i.hx = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.hw, ptr noundef %1, i32 noundef %i.hv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hy = add i32 %3, 10
  %i.hz = load i32, ptr @hf_ieee80211_ff_rm_rsni, align 4
  %i.ia = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.hz, ptr noundef %1, i32 noundef %i.hy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ib = add i32 %3, 11
  br label %add_ff_action_radio_measurement.exit

bb.y:                                             ; preds = %bb.t
  %i.ic = load i32, ptr @hf_ieee80211_ff_rm_dialog_token, align 4
  %i.id = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ic, ptr noundef %1, i32 noundef %i.ge, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ie = add i32 %3, 3
  br label %add_ff_action_radio_measurement.exit

bb.z:                                             ; preds = %bb.t
  %i.if = load i32, ptr @hf_ieee80211_ff_rm_dialog_token, align 4
  %i.ig = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.if, ptr noundef %1, i32 noundef %i.ge, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ih = add i32 %3, 3
  br label %add_ff_action_radio_measurement.exit

add_ff_action_radio_measurement.exit:             ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %.0.i130 = phi i32 [ %i.ge, %bb.t ], [ %i.gk, %bb.u ], [ %i.gn, %bb.v ], [ %i.gw, %bb.w ], [ %i.ib, %bb.x ], [ %i.ie, %bb.y ], [ %i.ih, %bb.z ]
  %i.ii = sub i32 %.0.i130, %3
  br label %add_ff_action_spectrum_mgmt.exit

bb.aa:                                            ; preds = %bb.a
  %i.ij = load i32, ptr @hf_ieee80211_ff_category_code, align 4
  %i.ik = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ij, ptr noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.il = add i32 %3, 1                           ; 2 uses
  %i.im = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.il)
  %i.in = load i32, ptr @hf_ieee80211_ff_ft_action_code, align 4
  %i.io = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.in, ptr noundef %1, i32 noundef %i.il, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ip = add i32 %3, 2                           ; 5 uses
  switch i8 %i.im, label %add_ff_action_fast_bss_transition.exit [
    i8 1, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %bb.ad
    i8 4, label %bb.ae
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.iq = load i32, ptr @hf_ieee80211_ff_sta_address, align 4
  %i.ir = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.iq, ptr noundef %1, i32 noundef %i.ip, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.is = add i32 %3, 8
  %i.it = load i32, ptr @hf_ieee80211_ff_target_ap_address, align 4
  %i.iu = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.it, ptr noundef %1, i32 noundef %i.is, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.iv = add i32 %3, 14
  br label %add_ff_action_fast_bss_transition.exit

bb.ac:                                            ; preds = %bb.aa
  %i.iw = load i32, ptr @hf_ieee80211_ff_sta_address, align 4
  %i.ix = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.iw, ptr noundef %1, i32 noundef %i.ip, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.iy = add i32 %3, 8
  %i.iz = load i32, ptr @hf_ieee80211_ff_target_ap_address, align 4
  %i.ja = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.iz, ptr noundef %1, i32 noundef %i.iy, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.jb = add i32 %3, 14
  %i.jc = load i32, ptr @hf_ieee80211_ff_status_code, align 4
  %i.jd = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.jc, ptr noundef %1, i32 noundef %i.jb, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.je = add i32 %3, 16
  br label %add_ff_action_fast_bss_transition.exit

bb.ad:                                            ; preds = %bb.aa
  %i.jf = load i32, ptr @hf_ieee80211_ff_sta_address, align 4
  %i.jg = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.jf, ptr noundef %1, i32 noundef %i.ip, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.jh = add i32 %3, 8
  %i.ji = load i32, ptr @hf_ieee80211_ff_target_ap_address, align 4
  %i.jj = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ji, ptr noundef %1, i32 noundef %i.jh, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.jk = add i32 %3, 14
  br label %add_ff_action_fast_bss_transition.exit

bb.ae:                                            ; preds = %bb.aa
  %i.jl = load i32, ptr @hf_ieee80211_ff_sta_address, align 4
  %i.jm = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.jl, ptr noundef %1, i32 noundef %i.ip, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.jn = add i32 %3, 8
  %i.jo = load i32, ptr @hf_ieee80211_ff_target_ap_address, align 4
  %i.jp = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.jo, ptr noundef %1, i32 noundef %i.jn, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.jq = add i32 %3, 14
  %i.jr = load i32, ptr @hf_ieee80211_ff_status_code, align 4
  %i.js = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.jr, ptr noundef %1, i32 noundef %i.jq, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.jt = add i32 %3, 16
  br label %add_ff_action_fast_bss_transition.exit

add_ff_action_fast_bss_transition.exit:           ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.0.i131 = phi i32 [ %i.ip, %bb.aa ], [ %i.iv, %bb.ab ], [ %i.je, %bb.ac ], [ %i.jk, %bb.ad ], [ %i.jt, %bb.ae ]
  %i.ju = sub i32 %.0.i131, %3
  br label %add_ff_action_spectrum_mgmt.exit

bb.af:                                            ; preds = %bb.a
  %i.jv = load i32, ptr @hf_ieee80211_ff_category_code, align 4
  %i.jw = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.jv, ptr noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.jx = add i32 %3, 1                           ; 2 uses
  %i.jy = load i32, ptr @hf_ieee80211_ff_ht_action, align 4
  %i.jz = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.jy, ptr noundef %1, i32 noundef %i.jx, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ka = add i32 %3, 2                           ; 17 uses
  %i.kb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.jx)
  switch i8 %i.kb, label %add_ff_action_ht.exit [
    i8 0, label %bb.ag
    i8 1, label %bb.ah
    i8 2, label %bb.ai
    i8 3, label %bb.am
    i8 4, label %switch.lookup
    i8 5, label %switch.lookup388
    i8 6, label %switch.lookup398
    i8 7, label %bb.av
    i8 8, label %bb.aw
  ]

bb.ag:                                            ; preds = %bb.af
  %i.kc = load i32, ptr @hf_ieee80211_ff_channel_width, align 4
  %i.kd = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.kc, ptr noundef %1, i32 noundef %i.ka, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ke = add i32 %3, 3
  br label %add_ff_action_ht.exit

bb.ah:                                            ; preds = %bb.af
  %i.kf = load i32, ptr @hf_ieee80211_ff_sm_pwr_save, align 4
  %i.kg = load i32, ptr @ett_ff_sm_pwr_save, align 4
  %i.kh = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef %i.ka, i32 noundef %i.kf, i32 noundef %i.kg, ptr noundef nonnull @ieee80211_ff_sw_pwr_save_fields, i32 noundef -2147483648) ; 0 uses
  %i.ki = add i32 %3, 3
  br label %add_ff_action_ht.exit

bb.ai:                                            ; preds = %bb.af
  %i.kj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ka)
  %i.kk = load i32, ptr @hf_ieee80211_ff_psmp_param_set, align 4
  %i.kl = load i32, ptr @ett_ff_psmp_param_set, align 4
  %i.km = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef %i.ka, i32 noundef %i.kk, i32 noundef %i.kl, ptr noundef nonnull @ieee80211_ff_psmp_param_set_fields, i32 noundef -2147483648) ; 0 uses
  %i.kn = add i32 %3, 4                           ; 2 uses
  %i.ko = and i8 %i.kj, 15                        ; 2 uses
  %.not.i132 = icmp eq i8 %i.ko, 0
  br i1 %.not.i132, label %add_ff_action_ht.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai, %add_ff_psmp_sta_info.exit.i
  %.010.i = phi i32 [ %i.mb, %add_ff_psmp_sta_info.exit.i ], [ %i.kn, %bb.ai ] ; 16 uses
  %.0979.i = phi i8 [ %i.mc, %add_ff_psmp_sta_info.exit.i ], [ 0, %bb.ai ]
  %i.kp = load i32, ptr @hf_ieee80211_ff_psmp_sta_info, align 4
  %i.kq = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.kp, ptr noundef %1, i32 noundef %.010.i, i32 noundef 8, i32 noundef -2147483648) ; 2 uses
  %i.kr = load i32, ptr @ett_ff_psmp_sta_info, align 4
  %i.ks = tail call ptr @proto_item_add_subtree(ptr noundef %i.kq, i32 noundef %i.kr) ; 12 uses
  %i.kt = load i32, ptr @hf_ieee80211_ff_psmp_sta_info_type, align 4
  %i.ku = tail call ptr @proto_tree_add_item(ptr noundef %i.kq, i32 noundef %i.kt, ptr noundef %1, i32 noundef %.010.i, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.kv = tail call i32 @tvb_get_letohl(ptr noundef %1, i32 noundef %.010.i)
  %i.kw = and i32 %i.kv, 3
  switch i32 %i.kw, label %.lr.ph.i.unreachabledefault [
    i32 0, label %bb.aj
    i32 1, label %bb.ak
    i32 2, label %bb.al
    i32 3, label %add_ff_psmp_sta_info.exit.i
  ]

bb.aj:                                            ; preds = %.lr.ph.i
  %i.kx = load i32, ptr @hf_ieee80211_ff_psmp_sta_info_dtt_start_offset, align 4
  %i.ky = tail call ptr @proto_tree_add_item(ptr noundef %i.ks, i32 noundef %i.kx, ptr noundef %1, i32 noundef %.010.i, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.kz = load i32, ptr @hf_ieee80211_ff_psmp_sta_info_dtt_duration, align 4
  %i.la = tail call ptr @proto_tree_add_item(ptr noundef %i.ks, i32 noundef %i.kz, ptr noundef %1, i32 noundef %.010.i, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.lb = load i32, ptr @hf_ieee80211_ff_psmp_sta_info_reserved_large, align 4
  %i.lc = tail call i64 @tvb_get_letoh64(ptr noundef %1, i32 noundef %.010.i)
  %i.ld = lshr i64 %i.lc, 21
  %i.le = tail call ptr @proto_tree_add_uint64(ptr noundef %i.ks, i32 noundef %i.lb, ptr noundef %1, i32 noundef %.010.i, i32 noundef 8, i64 noundef %i.ld) ; 0 uses
  br label %add_ff_psmp_sta_info.exit.i

bb.ak:                                            ; preds = %.lr.ph.i
  %i.lf = load i32, ptr @hf_ieee80211_ff_psmp_sta_info_dtt_start_offset, align 4
  %i.lg = tail call ptr @proto_tree_add_item(ptr noundef %i.ks, i32 noundef %i.lf, ptr noundef %1, i32 noundef %.010.i, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.lh = load i32, ptr @hf_ieee80211_ff_psmp_sta_info_dtt_duration, align 4
  %i.li = tail call ptr @proto_tree_add_item(ptr noundef %i.ks, i32 noundef %i.lh, ptr noundef %1, i32 noundef %.010.i, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.lj = load i32, ptr @hf_ieee80211_ff_psmp_sta_info_psmp_multicast_id, align 4
  %i.lk = tail call i64 @tvb_get_letoh64(ptr noundef %1, i32 noundef %.010.i)
  %i.ll = lshr i64 %i.lk, 21
  %i.lm = tail call ptr @proto_tree_add_uint64(ptr noundef %i.ks, i32 noundef %i.lj, ptr noundef %1, i32 noundef %.010.i, i32 noundef 6, i64 noundef %i.ll) ; 0 uses
  br label %add_ff_psmp_sta_info.exit.i

bb.al:                                            ; preds = %.lr.ph.i
  %i.ln = load i32, ptr @hf_ieee80211_ff_psmp_sta_info_dtt_start_offset, align 4
  %i.lo = tail call ptr @proto_tree_add_item(ptr noundef %i.ks, i32 noundef %i.ln, ptr noundef %1, i32 noundef %.010.i, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.lp = load i32, ptr @hf_ieee80211_ff_psmp_sta_info_dtt_duration, align 4
  %i.lq = tail call ptr @proto_tree_add_item(ptr noundef %i.ks, i32 noundef %i.lp, ptr noundef %1, i32 noundef %.010.i, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.lr = add i32 %.010.i, 2
  %i.ls = load i32, ptr @hf_ieee80211_ff_psmp_sta_info_sta_id, align 4
  %i.lt = tail call ptr @proto_tree_add_item(ptr noundef %i.ks, i32 noundef %i.ls, ptr noundef %1, i32 noundef %i.lr, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.lu = add i32 %.010.i, 4                      ; 3 uses
  %i.lv = load i32, ptr @hf_ieee80211_ff_psmp_sta_info_utt_start_offset, align 4
  %i.lw = tail call ptr @proto_tree_add_item(ptr noundef %i.ks, i32 noundef %i.lv, ptr noundef %1, i32 noundef %i.lu, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.lx = load i32, ptr @hf_ieee80211_ff_psmp_sta_info_utt_duration, align 4
  %i.ly = tail call ptr @proto_tree_add_item(ptr noundef %i.ks, i32 noundef %i.lx, ptr noundef %1, i32 noundef %i.lu, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.lz = load i32, ptr @hf_ieee80211_ff_psmp_sta_info_reserved_small, align 4
  %i.ma = tail call ptr @proto_tree_add_item(ptr noundef %i.ks, i32 noundef %i.lz, ptr noundef %1, i32 noundef %i.lu, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %add_ff_psmp_sta_info.exit.i

.lr.ph.i.unreachabledefault:                      ; preds = %.lr.ph.i
  unreachable

default.unreachable:                              ; preds = %bb.kh, %bb.gj, %bb.gs, %bb.ix, %bb.ip
  unreachable

add_ff_psmp_sta_info.exit.i:                      ; preds = %bb.al, %bb.ak, %bb.aj, %.lr.ph.i
  %i.mb = add i32 %.010.i, 8                      ; 2 uses
  %i.mc = add nuw nsw i8 %.0979.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i8 %i.mc, %i.ko
  br i1 %exitcond.not.i, label %add_ff_action_ht.exit, label %.lr.ph.i, !llvm.loop !10

bb.am:                                            ; preds = %bb.af
  %i.md = load i32, ptr @hf_ieee80211_ff_pco_phase_cntrl, align 4
  %i.me = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.md, ptr noundef %1, i32 noundef %i.ka, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.mf = add i32 %3, 3
  br label %add_ff_action_ht.exit

switch.lookup:                                    ; preds = %bb.af
  %i.mg = tail call zeroext i16 @tvb_get_letohs(ptr noundef %1, i32 noundef %i.ka) ; 2 uses
  %i.mh = zext i16 %i.mg to i32                   ; 2 uses
  %i.mi = lshr i32 %i.mh, 2
  %switch.shiftamt = and i32 %i.mi, 24
  %switch.downshift = lshr i32 17039873, %switch.shiftamt
  %i.mj = lshr i32 %i.mh, 7
  %i.mk = and i32 %i.mj, 3
  %i.ml = zext nneg i32 %i.mk to i64
  %switch.gep417.a = getelementptr inbounds nuw i8, ptr @switch.table.add_ff_action.231, i64 %i.ml
  %switch.load418.a = load i8, ptr %switch.gep417.a, align 1
  %switch.ext = zext i8 %switch.load418.a to i32
  %i.mm = trunc i16 %i.mg to i8                   ; 3 uses
  %i.mn = lshr i8 %i.mm, 2
  %i.mo = and i8 %i.mn, 3
  %i.mp = add nuw nsw i8 %i.mo, 1
  %i.mq = and i8 %i.mm, 3
  %i.mr = add nuw nsw i8 %i.mq, 1
  %.sroa.2.0.insert.ext.i.i = zext nneg i8 %i.mp to i32 ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext nneg i8 %i.mr to i32 ; 2 uses
  %i.ms = load i32, ptr @hf_ieee80211_ff_mimo_cntrl, align 4
  %i.mt = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ms, ptr noundef %1, i32 noundef %i.ka, i32 noundef 6, i32 noundef 0)
  %i.mu = load i32, ptr @ett_ff_mimo_cntrl, align 4
  %i.mv = tail call ptr @proto_item_add_subtree(ptr noundef %i.mt, i32 noundef %i.mu) ; 2 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.mv, ptr noundef %1, i32 noundef %i.ka, i32 noundef 2, ptr noundef nonnull @add_ff_mimo_cntrl.ieee80211_mimo_fields, i32 noundef -2147483648)
  %i.mw = add i32 %3, 4
  %i.mx = load i32, ptr @hf_ieee80211_ff_mimo_cntrl_sounding_timestamp, align 4
  %i.my = tail call ptr @proto_tree_add_item(ptr noundef %i.mv, i32 noundef %i.mx, ptr noundef %1, i32 noundef %i.mw, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.mz = add i32 %3, 8                           ; 2 uses
  %i.na = load i32, ptr @ett_mimo_report, align 4
  %i.nb = tail call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %i.mz, i32 noundef %.sroa.0.0.insert.ext.i.i, i32 noundef %i.na, ptr noundef null, ptr noundef nonnull @.str.7965) ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %switch.lookup
  %.031.i.i = phi i32 [ %i.ng, %.lr.ph.i.i ], [ %i.mz, %switch.lookup ] ; 3 uses
  %.02630.i.i = phi i32 [ %i.nh, %.lr.ph.i.i ], [ 1, %switch.lookup ] ; 3 uses
  %i.nc = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.031.i.i)
  %i.nd = load i32, ptr @hf_ieee80211_ff_mimo_csi_snr, align 4
  %i.ne = zext i8 %i.nc to i32                    ; 2 uses
  %i.nf = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.nb, i32 noundef %i.nd, ptr noundef %1, i32 noundef %.031.i.i, i32 noundef 1, i32 noundef %i.ne, ptr noundef nonnull @.str.7966, i32 noundef %.02630.i.i, i32 noundef %i.ne) ; 0 uses
  %i.ng = add i32 %.031.i.i, 1                    ; 3 uses
  %i.nh = add nuw nsw i32 %.02630.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %.02630.i.i, %.sroa.2.0.insert.ext.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !11

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.ni = and i8 %i.mm, 16
  %.not28.i.i = icmp eq i8 %i.ni, 0
  %switch.table.add_ff_action.222.switch.table.add_ff_action = select i1 %.not28.i.i, ptr @switch.table.add_ff_action.226, ptr @switch.table.add_ff_action.225
  %narrow425 = add nuw nsw i32 %switch.downshift, 255
  %i.nj = and i32 %narrow425, 255
  %i.nk = zext nneg i32 %i.nj to i64
  %switch.gep385 = getelementptr inbounds nuw i8, ptr %switch.table.add_ff_action.222.switch.table.add_ff_action, i64 %i.nk
  %switch.load386 = load i8, ptr %switch.gep385, align 1
  %switch.ext387 = zext i8 %switch.load386 to i32
  %i.nl = mul nuw nsw i32 %.sroa.2.0.insert.ext.i.i, %.sroa.0.0.insert.ext.i.i
  %i.nm = mul nuw nsw i32 %i.nl, %switch.ext
  %i.nn = add nuw nsw i32 %i.nm, 3
  %i.no = mul nuw nsw i32 %i.nn, %switch.ext387
  %i.np = add nuw nsw i32 %i.no, 6
  %i.nq = lshr i32 %i.np, 3                       ; 2 uses
  %i.nr = load i32, ptr @hf_ieee80211_ff_mimo_csi_matrices, align 4
  %i.ns = tail call ptr @proto_tree_add_item(ptr noundef %i.nb, i32 noundef %i.nr, ptr noundef %1, i32 noundef %i.ng, i32 noundef %i.nq, i32 noundef 0) ; 0 uses
  %i.nt = add i32 %i.nq, %i.ng
  br label %add_ff_action_ht.exit

switch.lookup388:                                 ; preds = %bb.af
  %i.nu = tail call zeroext i16 @tvb_get_letohs(ptr noundef %1, i32 noundef %i.ka) ; 2 uses
  %i.nv = zext i16 %i.nu to i32                   ; 2 uses
  %i.nw = lshr i32 %i.nv, 2
  %switch.shiftamt389 = and i32 %i.nw, 24
  %switch.downshift390 = lshr i32 17039873, %switch.shiftamt389
  %i.nx = lshr i32 %i.nv, 7
  %i.ny = and i32 %i.nx, 3
  %i.nz = zext nneg i32 %i.ny to i64
  %switch.gep420 = getelementptr inbounds nuw i8, ptr @switch.table.add_ff_action.231, i64 %i.nz
  %switch.load421 = load i8, ptr %switch.gep420, align 1
  %switch.ext422 = zext i8 %switch.load421 to i32
  %i.oa = trunc i16 %i.nu to i8                   ; 3 uses
  %i.ob = and i8 %i.oa, 3
  %i.oc = add nuw nsw i8 %i.ob, 1                 ; 2 uses
  %.sroa.0.0.insert.ext.i116.i = zext nneg i8 %i.oc to i32 ; 2 uses
  %i.od = load i32, ptr @hf_ieee80211_ff_mimo_cntrl, align 4
  %i.oe = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.od, ptr noundef %1, i32 noundef %i.ka, i32 noundef 6, i32 noundef 0)
  %i.of = load i32, ptr @ett_ff_mimo_cntrl, align 4
  %i.og = tail call ptr @proto_item_add_subtree(ptr noundef %i.oe, i32 noundef %i.of) ; 2 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.og, ptr noundef %1, i32 noundef %i.ka, i32 noundef 2, ptr noundef nonnull @add_ff_mimo_cntrl.ieee80211_mimo_fields, i32 noundef -2147483648)
  %i.oh = add i32 %3, 4
  %i.oi = load i32, ptr @hf_ieee80211_ff_mimo_cntrl_sounding_timestamp, align 4
  %i.oj = tail call ptr @proto_tree_add_item(ptr noundef %i.og, i32 noundef %i.oi, ptr noundef %1, i32 noundef %i.oh, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ok = add i32 %3, 8                           ; 2 uses
  %i.ol = load i32, ptr @ett_mimo_report, align 4
  %i.om = tail call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %i.ok, i32 noundef %.sroa.0.0.insert.ext.i116.i, i32 noundef %i.ol, ptr noundef null, ptr noundef nonnull @.str.7965) ; 2 uses
  br label %.lr.ph.i123.i

.lr.ph.i123.i:                                    ; preds = %.lr.ph.i123.i, %switch.lookup388
  %.031.i124.i = phi i32 [ %i.or, %.lr.ph.i123.i ], [ %i.ok, %switch.lookup388 ] ; 3 uses
  %.02630.i125.i = phi i32 [ %i.os, %.lr.ph.i123.i ], [ 1, %switch.lookup388 ] ; 3 uses
  %i.on = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.031.i124.i)
  %i.oo = load i32, ptr @hf_ieee80211_ff_mimo_csi_snr, align 4
  %i.op = zext i8 %i.on to i32                    ; 2 uses
  %i.oq = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.om, i32 noundef %i.oo, ptr noundef %1, i32 noundef %.031.i124.i, i32 noundef 1, i32 noundef %i.op, ptr noundef nonnull @.str.7967, i32 noundef %.02630.i125.i, i32 noundef %i.op) ; 0 uses
  %i.or = add i32 %.031.i124.i, 1                 ; 3 uses
  %i.os = add nuw nsw i32 %.02630.i125.i, 1
  %exitcond.not.i126.i = icmp eq i32 %.02630.i125.i, %.sroa.0.0.insert.ext.i116.i
  br i1 %exitcond.not.i126.i, label %._crit_edge.i127.i, label %.lr.ph.i123.i, !llvm.loop !12

._crit_edge.i127.i:                               ; preds = %.lr.ph.i123.i
  %i.ot = lshr i8 %i.oa, 2
  %i.ou = and i8 %i.ot, 3
  %i.ov = add nuw nsw i8 %i.ou, 1
  %i.ow = and i8 %i.oa, 16
  %.not28.i131.i = icmp eq i8 %i.ow, 0
  %switch.table.add_ff_action.224.switch.table.add_ff_action.223 = select i1 %.not28.i131.i, ptr @switch.table.add_ff_action.226, ptr @switch.table.add_ff_action.225
  %narrow424 = add nuw nsw i32 %switch.downshift390, 255
  %i.ox = and i32 %narrow424, 255
  %i.oy = zext nneg i32 %i.ox to i64
  %switch.gep395 = getelementptr inbounds nuw i8, ptr %switch.table.add_ff_action.224.switch.table.add_ff_action.223, i64 %i.oy
  %switch.load396 = load i8, ptr %switch.gep395, align 1
  %switch.ext397 = zext i8 %switch.load396 to i32
  %narrow = mul nuw nsw i8 %i.ov, %i.oc
  %i.oz = zext nneg i8 %narrow to i32
  %i.pa = mul nuw nsw i32 %switch.ext422, %i.oz
  %i.pb = mul nuw nsw i32 %i.pa, %switch.ext397
  %i.pc = add nuw nsw i32 %i.pb, 4
  %i.pd = lshr i32 %i.pc, 3                       ; 2 uses
  %i.pe = load i32, ptr @hf_ieee80211_ff_mimo_csi_bf_matrices, align 4
  %i.pf = tail call ptr @proto_tree_add_item(ptr noundef %i.om, i32 noundef %i.pe, ptr noundef %1, i32 noundef %i.or, i32 noundef %i.pd, i32 noundef 0) ; 0 uses
  %i.pg = add i32 %i.pd, %i.or
  br label %add_ff_action_ht.exit

switch.lookup398:                                 ; preds = %bb.af
  %i.ph = tail call zeroext i16 @tvb_get_letohs(ptr noundef %1, i32 noundef %i.ka) ; 3 uses
  %i.pi = lshr i16 %i.ph, 2
  %i.pj = and i16 %i.pi, 24
  %switch.shiftamt399 = zext nneg i16 %i.pj to i32
  %switch.downshift400 = lshr i32 17039873, %switch.shiftamt399
  %i.pk = trunc i16 %i.ph to i8                   ; 3 uses
  %i.pl = and i8 %i.pk, 3                         ; 2 uses
  %i.pm = add nuw nsw i8 %i.pl, 1                 ; 4 uses
  %i.pn = load i32, ptr @hf_ieee80211_ff_mimo_cntrl, align 4
  %i.po = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.pn, ptr noundef %1, i32 noundef %i.ka, i32 noundef 6, i32 noundef 0)
  %i.pp = load i32, ptr @ett_ff_mimo_cntrl, align 4
  %i.pq = tail call ptr @proto_item_add_subtree(ptr noundef %i.po, i32 noundef %i.pp) ; 2 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.pq, ptr noundef %1, i32 noundef %i.ka, i32 noundef 2, ptr noundef nonnull @add_ff_mimo_cntrl.ieee80211_mimo_fields, i32 noundef -2147483648)
  %i.pr = add i32 %3, 4
  %i.ps = load i32, ptr @hf_ieee80211_ff_mimo_cntrl_sounding_timestamp, align 4
  %i.pt = tail call ptr @proto_tree_add_item(ptr noundef %i.pq, i32 noundef %i.ps, ptr noundef %1, i32 noundef %i.pr, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.pu = add i32 %3, 8                           ; 2 uses
  %i.pv = zext nneg i8 %i.pm to i32               ; 2 uses
  %i.pw = load i32, ptr @ett_mimo_report, align 4
  %i.px = tail call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %i.pu, i32 noundef %i.pv, i32 noundef %i.pw, ptr noundef null, ptr noundef nonnull @.str.7965) ; 2 uses
  br label %.lr.ph.i158.i

.lr.ph.i158.i:                                    ; preds = %.lr.ph.i158.i, %switch.lookup398
  %.03038.i.i = phi i32 [ %i.qf, %.lr.ph.i158.i ], [ %i.pu, %switch.lookup398 ] ; 3 uses
  %.03137.i.i = phi i32 [ %i.qg, %.lr.ph.i158.i ], [ 1, %switch.lookup398 ] ; 3 uses
  %i.py = tail call signext i8 @tvb_get_int8(ptr noundef %1, i32 noundef %.03038.i.i) ; 4 uses
  %i.pz = sext i8 %i.py to i32
  %switch.selectcmp.i.i = icmp eq i8 %i.py, 127
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 62, i32 32
  %switch.selectcmp32.i.i = icmp eq i8 %i.py, -128
  %switch.select33.i.i = select i1 %switch.selectcmp32.i.i, i32 60, i32 %switch.select.i.i
  %i.qa = load i32, ptr @hf_ieee80211_ff_mimo_csi_snr, align 4
  %i.qb = sitofp i8 %i.py to double
  %i.qc = fmul nnan double %i.qb, 2.500000e-01
  %i.qd = fadd double %i.qc, 2.200000e+01
  %i.qe = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.px, i32 noundef %i.qa, ptr noundef %1, i32 noundef %.03038.i.i, i32 noundef 1, i32 noundef %i.pz, ptr noundef nonnull @.str.7968, i32 noundef %.03137.i.i, i32 noundef %switch.select33.i.i, double noundef %i.qd) ; 0 uses
  %i.qf = add i32 %.03038.i.i, 1                  ; 3 uses
  %i.qg = add nuw nsw i32 %.03137.i.i, 1
  %exitcond.not.i159.i = icmp eq i32 %.03137.i.i, %i.pv
  br i1 %exitcond.not.i159.i, label %._crit_edge.i160.i, label %.lr.ph.i158.i, !llvm.loop !13

._crit_edge.i160.i:                               ; preds = %.lr.ph.i158.i
  %i.qh = lshr i8 %i.pk, 2
  %i.qi = and i8 %i.qh, 3
  %i.qj = add nuw nsw i8 %i.qi, 1                 ; 3 uses
  %i.qk = icmp eq i8 %i.qj, 2                     ; 2 uses
  %i.ql = icmp eq i8 %i.pl, 0                     ; 3 uses
  %or.cond.i.i.i = and i1 %i.ql, %i.qk
  br i1 %or.cond.i.i.i, label %get_mimo_na.exit.i.i, label %bb.an

bb.an:                                            ; preds = %._crit_edge.i160.i
  %i.qm = icmp eq i8 %i.pm, 2                     ; 3 uses
  %or.cond5.i.i.i = and i1 %i.qm, %i.qk
  br i1 %or.cond5.i.i.i, label %get_mimo_na.exit.i.i, label %bb.ao
end_hunk_0
begin_hunk_1_@add_ff_action:bb.a
bb.fp:                                            ; preds = %bb.fo, %.lr.ph.i.i152
  %.1.i.i153 = phi i32 [ %i.ayu, %bb.fo ], [ %.03.i.i, %.lr.ph.i.i152 ] ; 2 uses
  %i.ayv = add i8 %.0142.i.i, -1                  ; 2 uses
  %.not.i.i154 = icmp eq i8 %i.ayv, 0
  br i1 %.not.i.i154, label %add_ff_action_robust_av_streaming.exit, label %.lr.ph.i.i152, !llvm.loop !21

bb.fq:                                            ; preds = %bb.fm
  %i.ayw = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ayb)
  %i.ayx = getelementptr i8, ptr %2, i64 8
  %i.ayy = load ptr, ptr %i.ayx, align 8
  %i.ayz = zext i8 %i.ayw to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ayy, i32 noundef 25, ptr noundef nonnull @.str.7925, i32 noundef %i.ayz)
  %i.aza = load i32, ptr @hf_ieee80211_ff_dialog_token, align 4
  %i.azb = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.aza, ptr noundef %1, i32 noundef %i.ayb, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.azc = add i32 %3, 3
  %i.azd = load i32, ptr @hf_ieee80211_ff_status_code, align 4
  %i.aze = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.azd, ptr noundef %1, i32 noundef %i.azc, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.azf = add i32 %3, 5                          ; 3 uses
  %i.azg = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.azf)
  %.not.i150 = icmp eq i32 %i.azg, 0
  br i1 %.not.i150, label %add_ff_action_robust_av_streaming.exit, label %add_ff_scs_status_list.exit.sink.split.i

add_ff_scs_status_list.exit.sink.split.sink.split.i: ; preds = %bb.fm, %bb.fm
  %i.azh = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ayb)
  %i.azi = getelementptr i8, ptr %2, i64 8
  %i.azj = load ptr, ptr %i.azi, align 8
  %i.azk = zext i8 %i.azh to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.azj, i32 noundef 25, ptr noundef nonnull @.str.7925, i32 noundef %i.azk)
  %i.azl = load i32, ptr @hf_ieee80211_ff_dialog_token, align 4
  %i.azm = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.azl, ptr noundef %1, i32 noundef %i.ayb, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.azn = add i32 %3, 3
  br label %add_ff_scs_status_list.exit.sink.split.i

add_ff_scs_status_list.exit.sink.split.i:         ; preds = %add_ff_scs_status_list.exit.sink.split.sink.split.i, %bb.fq
  %.sink73.i = phi i32 [ %i.azf, %bb.fq ], [ %i.azn, %add_ff_scs_status_list.exit.sink.split.sink.split.i ] ; 2 uses
  %i.azo = tail call i32 @add_tagged_field_with_validation(ptr noundef %2, ptr noundef %0, ptr noundef %1, i32 noundef %.sink73.i, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.azp = add i32 %i.azo, %.sink73.i
  br label %add_ff_action_robust_av_streaming.exit

add_ff_action_robust_av_streaming.exit:           ; preds = %bb.fp, %bb.fm, %bb.fn, %bb.fq, %add_ff_scs_status_list.exit.sink.split.i
  %.0.i151 = phi i32 [ %i.ayb, %bb.fm ], [ %i.azp, %add_ff_scs_status_list.exit.sink.split.i ], [ %i.azf, %bb.fq ], [ %i.aym, %bb.fn ], [ %.1.i.i153, %bb.fp ]
  %i.azq = sub i32 %.0.i151, %3
  br label %add_ff_action_spectrum_mgmt.exit

bb.fr:                                            ; preds = %bb.a
  %i.azr = load i32, ptr @hf_ieee80211_ff_category_code, align 4
  %i.azs = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.azr, ptr noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.azt = add i32 %3, 1                          ; 2 uses
  %i.azu = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.azt)
  %i.azv = load i32, ptr @hf_ieee80211_ff_unprotected_dmg_action_code, align 4
  %i.azw = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.azv, ptr noundef %1, i32 noundef %i.azt, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.azx = add i32 %3, 2                          ; 5 uses
  switch i8 %i.azu, label %add_ff_action_unprotected_dmg.exit [
    i8 0, label %bb.fs
    i8 1, label %bb.ft
  ]

bb.fs:                                            ; preds = %bb.fr
  %i.azy = tail call i64 @tvb_get_letoh64(ptr noundef %1, i32 noundef %i.azx)
  store i64 %i.azy, ptr @last_timestamp, align 8
  %i.azz = load i32, ptr @hf_ieee80211_ff_timestamp, align 4
  %i.baa = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.azz, ptr noundef %1, i32 noundef %i.azx, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.bab = add i32 %3, 10                         ; 2 uses
  %i.bac = load i32, ptr @hf_ieee80211_ff_beacon_interval, align 4
  %i.bad = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bac, ptr noundef %1, i32 noundef %i.bab, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bae = getelementptr i8, ptr %2, i64 8
  %i.baf = load ptr, ptr %i.bae, align 8
  %i.bag = tail call zeroext i16 @tvb_get_letohs(ptr noundef %1, i32 noundef %i.bab)
  %i.bah = zext i16 %i.bag to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.baf, i32 noundef 25, ptr noundef nonnull @.str.7964, i32 noundef %i.bah)
  %i.bai = add i32 %3, 12
  br label %add_ff_action_unprotected_dmg.exit

bb.ft:                                            ; preds = %bb.fr
  %i.baj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.azx)
  %i.bak = getelementptr i8, ptr %2, i64 8
  %i.bal = load ptr, ptr %i.bak, align 8
  %i.bam = zext i8 %i.baj to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.bal, i32 noundef 25, ptr noundef nonnull @.str.7925, i32 noundef %i.bam)
  %i.ban = load i32, ptr @hf_ieee80211_ff_dialog_token, align 4
  %i.bao = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ban, ptr noundef %1, i32 noundef %i.azx, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bap = add i32 %3, 3
  %i.baq = load i32, ptr @hf_ieee80211_ff_brp, align 4
  %i.bar = load i32, ptr @ett_brp_tree, align 4
  %i.bas = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %0, ptr noundef %1, i32 noundef %i.bap, i32 noundef %i.baq, i32 noundef %i.bar, ptr noundef nonnull @add_ff_BRP_request.ieee80211_ff_BRP_request, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %i.bat = add i32 %3, 7
  br label %add_ff_action_unprotected_dmg.exit

add_ff_action_unprotected_dmg.exit:               ; preds = %bb.fr, %bb.fs, %bb.ft
  %.0.i155 = phi i32 [ %i.azx, %bb.fr ], [ %i.bai, %bb.fs ], [ %i.bat, %bb.ft ]
  %i.bau = sub i32 %.0.i155, %3
  br label %add_ff_action_spectrum_mgmt.exit

bb.fu:                                            ; preds = %bb.a
  %i.bav = load i32, ptr @hf_ieee80211_ff_category_code, align 4
  %i.baw = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bav, ptr noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bax = add i32 %3, 1                          ; 2 uses
  %i.bay = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bax)
  %i.baz = load i32, ptr @hf_ieee80211_ff_vht_action, align 4
  %i.bba = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.baz, ptr noundef %1, i32 noundef %i.bax, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bbb = add i32 %3, 2                          ; 9 uses
  switch i8 %i.bay, label %add_ff_action_vht.exit [
    i8 0, label %bb.fv
    i8 1, label %bb.hp
    i8 2, label %bb.ic
  ]

bb.fv:                                            ; preds = %bb.fu
  %i.bbc = tail call i32 @tvb_get_letoh24(ptr noundef %1, i32 noundef %i.bbb)
  %.fr.i.i = freeze i32 %i.bbc                    ; 7 uses
  %i.bbd = load i32, ptr @hf_ieee80211_ff_vht_mimo_cntrl, align 4
  %i.bbe = load i32, ptr @ett_ff_vhtmimo_cntrl, align 4
  %i.bbf = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef %i.bbb, i32 noundef %i.bbd, i32 noundef %i.bbe, ptr noundef nonnull @hf_ieee80211_ff_vht_mimo_cntrl_fields, i32 noundef -2147483648) ; 0 uses
  %i.bbg = add i32 %3, 5                          ; 3 uses
  %i.bbh = and i32 %.fr.i.i, 7                    ; 2 uses
  %i.bbi = add nuw nsw i32 %i.bbh, 1              ; 4 uses
  %i.bbj = load i32, ptr @hf_ieee80211_vht_compressed_beamforming_report, align 4
  %i.bbk = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bbj, ptr noundef %1, i32 noundef %i.bbg, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.bbl = load i32, ptr @ett_ff_vhtmimo_beamforming_report, align 4
  %i.bbm = tail call ptr @proto_item_add_subtree(ptr noundef %i.bbk, i32 noundef %i.bbl) ; 2 uses
  %i.bbn = load i32, ptr @ett_ff_vhtmimo_beamforming_report_snr, align 4
  %i.bbo = tail call ptr @proto_tree_add_subtree(ptr noundef %i.bbm, ptr noundef %1, i32 noundef %i.bbg, i32 noundef %i.bbi, i32 noundef %i.bbn, ptr noundef null, ptr noundef nonnull @.str.7979)
  %i.bbp = add nuw nsw i32 %i.bbh, 2              ; 2 uses
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fw, %bb.fv
  %.0106140.i.i = phi i32 [ %i.bbg, %bb.fv ], [ %i.bbx, %bb.fw ] ; 3 uses
  %.0120139.i.i = phi i32 [ 1, %bb.fv ], [ %i.bby, %bb.fw ] ; 2 uses
  %i.bbq = tail call signext i8 @tvb_get_int8(ptr noundef %1, i32 noundef %.0106140.i.i) ; 4 uses
  %i.bbr = sext i8 %i.bbq to i32
  %switch.selectcmp.i.i160 = icmp eq i8 %i.bbq, 127
  %switch.select.i.i161 = select i1 %switch.selectcmp.i.i160, i32 62, i32 32
  %switch.selectcmp132.i.i = icmp eq i8 %i.bbq, -128
  %switch.select133.i.i = select i1 %switch.selectcmp132.i.i, i32 60, i32 %switch.select.i.i161
  %i.bbs = load i32, ptr @hf_ieee80211_vht_compressed_beamforming_report_snr, align 4
  %i.bbt = sitofp i8 %i.bbq to double
  %i.bbu = fmul nnan double %i.bbt, 2.500000e-01
  %i.bbv = fadd double %i.bbu, 2.200000e+01
  %i.bbw = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format(ptr noundef %i.bbo, i32 noundef %i.bbs, ptr noundef %1, i32 noundef %.0106140.i.i, i32 noundef 1, i32 noundef %i.bbr, ptr noundef nonnull @.str.7968, i32 noundef %.0120139.i.i, i32 noundef %switch.select133.i.i, double noundef %i.bbv) ; 0 uses
  %i.bbx = add i32 %.0106140.i.i, 1               ; 8 uses
  %i.bby = add nuw nsw i32 %.0120139.i.i, 1       ; 2 uses
  %exitcond.i.i = icmp eq i32 %i.bby, %i.bbp
  br i1 %exitcond.i.i, label %bb.fx, label %bb.fw, !llvm.loop !22

bb.fx:                                            ; preds = %bb.fw
  %i.bbz = lshr i32 %.fr.i.i, 3
  %i.bca = and i32 %i.bbz, 7
  %i.bcb = add nuw nsw i32 %i.bca, 1              ; 2 uses
  %i.bcc = trunc i32 %.fr.i.i to i8
  %i.bcd = lshr i8 %i.bcc, 6                      ; 6 uses
  %i.bce = lshr i32 %.fr.i.i, 8
  %i.bcf = trunc i32 %i.bce to i8
  %i.bcg = and i8 %i.bcf, 3                       ; 6 uses
  %i.bch = and i32 %.fr.i.i, 1024
  %.not.i.i162 = icmp eq i32 %i.bch, 0            ; 4 uses
  %i.bci = and i32 %.fr.i.i, 2048
  %.not123.i.i163 = icmp eq i32 %i.bci, 0         ; 3 uses
  %..i.i = select i1 %.not.i.i162, i32 7, i32 9
  %.129.i.i = select i1 %.not.i.i162, i32 5, i32 7
  %.130.i.i = select i1 %.not.i.i162, i32 4, i32 6
  %.131.i.i = select i1 %.not.i.i162, i32 2, i32 4
  %.0115.i.i = select i1 %.not123.i.i163, i32 %.130.i.i, i32 %..i.i ; 2 uses
  %.0114.i.i = select i1 %.not123.i.i163, i32 %.131.i.i, i32 %.129.i.i ; 2 uses
  %i.bcj = and i32 %.fr.i.i, 768
  %i.bck = icmp eq i32 %i.bcj, 768
  br i1 %i.bck, label %bb.fy, label %switch.lookup408

bb.fy:                                            ; preds = %bb.fx
  %i.bcl = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.bbk, ptr noundef nonnull @ei_ieee80211_inv_val, ptr noundef nonnull @.str.7980) ; 0 uses
  br label %.sink.split.i156

switch.lookup408:                                 ; preds = %bb.fx
  %i.bcm = load i32, ptr @ett_ff_vhtmimo_beamforming_report_feedback_matrices, align 4
  %i.bcn = tail call ptr @proto_tree_add_subtree(ptr noundef %i.bbm, ptr noundef %1, i32 noundef %i.bbx, i32 noundef -1, i32 noundef %i.bcm, ptr noundef null, ptr noundef nonnull @.str.7981) ; 3 uses
  %i.bco = zext nneg i8 %i.bcd to i64             ; 2 uses
  %i.bcp = getelementptr [12 x i8], ptr @add_ff_vht_compressed_beamforming_report.ns_arr, i64 %i.bco
  %i.bcq = zext nneg i8 %i.bcg to i64             ; 2 uses
  %i.bcr = getelementptr [4 x i8], ptr %i.bcp, i64 %i.bcq
  %i.bcs = load i32, ptr %i.bcr, align 4          ; 3 uses
  %i.bct = zext nneg i8 %i.bcd to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.add_ff_action.229, i64 %i.bct
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  %i.bcu = icmp sgt i32 %i.bcs, 0
  br i1 %i.bcu, label %.lr.ph.i.i168, label %._crit_edge.i.i164

.lr.ph.i.i168:                                    ; preds = %switch.lookup408
  %i.bcv = shl i32 %i.bbx, 3                      ; 2 uses
  %i.bcw = icmp eq i8 %i.bcg, 0
  %i.bcx = getelementptr i8, ptr %2, i64 416      ; 2 uses
  br i1 %i.bcw, label %.lr.ph.split.us.split.i.i, label %.lr.ph.split.split.i.preheader.i

.lr.ph.split.split.i.preheader.i:                 ; preds = %.lr.ph.i.i168
  %i.bcy = icmp eq i8 %i.bcd, 3
  br label %.lr.ph.split.split.i.i

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.i.i168, %vht_compressed_skip_scidx.exit.us.i.i
  %.0105144.us.i.i = phi i32 [ %i.bdg, %vht_compressed_skip_scidx.exit.us.i.i ], [ %i.bcv, %.lr.ph.i.i168 ]
  %.1143.us.i.i = phi i32 [ %i.bdh, %vht_compressed_skip_scidx.exit.us.i.i ], [ %i.bbx, %.lr.ph.i.i168 ]
  %.1117142.us.i.i = phi i32 [ %i.bde, %vht_compressed_skip_scidx.exit.us.i.i ], [ %switch.load, %.lr.ph.i.i168 ] ; 11 uses
  %.1121141.us.i.i = phi i32 [ %i.bdi, %vht_compressed_skip_scidx.exit.us.i.i ], [ 0, %.lr.ph.i.i168 ]
  switch i8 %i.bcd, label %.lr.ph.split.us.split.i.i.unreachabledefault [
    i8 0, label %bb.gi
    i8 1, label %bb.gf
    i8 2, label %bb.gd
    i8 3, label %bb.fz
  ]

.lr.ph.split.us.split.i.i.unreachabledefault:     ; preds = %.lr.ph.split.us.split.i.i
  unreachable

bb.fz:                                            ; preds = %.lr.ph.split.us.split.i.i
  switch i32 %.1117142.us.i.i, label %.fold.split.i.us.i.i [
    i32 -5, label %vht_compressed_skip_scidx.exit.us.i.i
    i32 -231, label %bb.gc
    i32 -203, label %bb.gc
    i32 -167, label %bb.gc
    i32 -139, label %bb.gc
    i32 -117, label %bb.gc
    i32 -89, label %bb.gc
    i32 -53, label %bb.gc
    i32 -25, label %bb.gc
    i32 25, label %bb.gc
    i32 53, label %bb.gc
    i32 89, label %bb.gc
    i32 117, label %bb.gc
    i32 139, label %bb.gc
    i32 167, label %bb.gc
    i32 203, label %bb.gc
    i32 231, label %bb.gc
    i32 -129, label %bb.gb
    i32 127, label %bb.ga
  ]

bb.ga:                                            ; preds = %bb.fz
  br label %vht_compressed_skip_scidx.exit.us.i.i

bb.gb:                                            ; preds = %bb.fz
  br label %vht_compressed_skip_scidx.exit.us.i.i

bb.gc:                                            ; preds = %bb.fz, %bb.fz, %bb.fz, %bb.fz, %bb.fz, %bb.fz, %bb.fz, %bb.fz, %bb.fz, %bb.fz, %bb.fz, %bb.fz, %bb.fz, %bb.fz, %bb.fz, %bb.fz
  %i.bcz = add nsw i32 %.1117142.us.i.i, 1
  br label %vht_compressed_skip_scidx.exit.us.i.i

.fold.split.i.us.i.i:                             ; preds = %bb.fz
  br label %vht_compressed_skip_scidx.exit.us.i.i

bb.gd:                                            ; preds = %.lr.ph.split.us.split.i.i
  switch i32 %.1117142.us.i.i, label %vht_compressed_skip_scidx.exit.us.i.i [
    i32 -103, label %bb.ge
    i32 -75, label %bb.ge
    i32 -39, label %bb.ge
    i32 -11, label %bb.ge
    i32 11, label %bb.ge
    i32 39, label %bb.ge
    i32 75, label %bb.ge
    i32 103, label %bb.ge
    i32 -1, label %bb.gg
  ]

bb.ge:                                            ; preds = %bb.gd, %bb.gd, %bb.gd, %bb.gd, %bb.gd, %bb.gd, %bb.gd, %bb.gd
  %i.bda = add nsw i32 %.1117142.us.i.i, 1
  br label %vht_compressed_skip_scidx.exit.us.i.i

bb.gf:                                            ; preds = %.lr.ph.split.us.split.i.i
  switch i32 %.1117142.us.i.i, label %vht_compressed_skip_scidx.exit.us.i.i [
    i32 -53, label %bb.gh
    i32 -25, label %bb.gh
    i32 -11, label %bb.gh
    i32 11, label %bb.gh
    i32 25, label %bb.gh
    i32 53, label %bb.gh
    i32 -1, label %bb.gg
    i32 0, label %bb.gg
    i32 1, label %bb.gg
  ]

bb.gg:                                            ; preds = %bb.gf, %bb.gf, %bb.gf, %bb.gd
  br label %vht_compressed_skip_scidx.exit.us.i.i

bb.gh:                                            ; preds = %bb.gf, %bb.gf, %bb.gf, %bb.gf, %bb.gf, %bb.gf
  %i.bdb = add nsw i32 %.1117142.us.i.i, 1
  br label %vht_compressed_skip_scidx.exit.us.i.i

bb.gi:                                            ; preds = %.lr.ph.split.us.split.i.i
  %switch.tableidx = add i32 %.1117142.us.i.i, 21 ; 3 uses
  %i.bdc = icmp ult i32 %switch.tableidx, 43
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 4398317060097, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.bdc, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup410.a, label %vht_compressed_skip_scidx.exit.us.i.i

switch.lookup410.a:                               ; preds = %bb.gi
  %i.bdd = zext nneg i32 %switch.tableidx to i64
  %switch.gep411.a = getelementptr inbounds nuw [4 x i8], ptr @switch.table.add_ff_action.228, i64 %i.bdd
  %switch.load412.a = load i32, ptr %switch.gep411.a, align 4
  br label %vht_compressed_skip_scidx.exit.us.i.i

vht_compressed_skip_scidx.exit.us.i.i:            ; preds = %switch.lookup410.a, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %.fold.split.i.us.i.i, %bb.gc, %bb.gb, %bb.ga, %bb.fz
  %.0.i.us.i.i = phi i32 [ -126, %bb.gb ], [ %.1117142.us.i.i, %bb.gi ], [ %switch.load412.a, %switch.lookup410.a ], [ 130, %bb.ga ], [ %.1117142.us.i.i, %bb.gf ], [ %i.bdb, %bb.gh ], [ %.1117142.us.i.i, %.fold.split.i.us.i.i ], [ 6, %bb.fz ], [ %.1117142.us.i.i, %bb.gd ], [ %i.bda, %bb.ge ], [ 2, %bb.gg ], [ %i.bcz, %bb.gc ] ; 2 uses
  %i.bde = add i32 %.0.i.us.i.i, 1
  %i.bdf = load i32, ptr @hf_ieee80211_vht_compressed_beamform_scidx, align 4
  %.val.us.i.i = load ptr, ptr %i.bcx, align 8
  %i.bdg = tail call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.bcn, ptr noundef %1, ptr %.val.us.i.i, i32 noundef %.1143.us.i.i, i32 noundef %.0105144.us.i.i, i32 noundef %.0.i.us.i.i, i32 noundef %i.bcb, i32 noundef %i.bbi, i32 noundef %.0115.i.i, i32 noundef %.0114.i.i, i32 noundef %i.bdf) ; 2 uses
  %i.bdh = sdiv i32 %i.bdg, 8                     ; 2 uses
  %i.bdi = add nuw nsw i32 %.1121141.us.i.i, 1    ; 2 uses
  %exitcond165.not.i.i = icmp eq i32 %i.bdi, %i.bcs
  br i1 %exitcond165.not.i.i, label %._crit_edge.i.i164, label %.lr.ph.split.us.split.i.i, !llvm.loop !23

.lr.ph.split.split.i.i:                           ; preds = %vht_compressed_skip_scidx.exit.i.i, %.lr.ph.split.split.i.preheader.i
  %.0105144.i.i = phi i32 [ %i.bdn, %vht_compressed_skip_scidx.exit.i.i ], [ %i.bcv, %.lr.ph.split.split.i.preheader.i ]
  %.1143.i.i = phi i32 [ %i.bdo, %vht_compressed_skip_scidx.exit.i.i ], [ %i.bbx, %.lr.ph.split.split.i.preheader.i ]
  %.1117142.i.i = phi i32 [ %i.bdl, %vht_compressed_skip_scidx.exit.i.i ], [ %switch.load, %.lr.ph.split.split.i.preheader.i ] ; 8 uses
  %.1121141.i.i = phi i32 [ %i.bdp, %vht_compressed_skip_scidx.exit.i.i ], [ 0, %.lr.ph.split.split.i.preheader.i ]
  br i1 %i.bcy, label %bb.gj, label %vht_compressed_skip_scidx.exit.i.i

bb.gj:                                            ; preds = %.lr.ph.split.split.i.i
  switch i8 %i.bcg, label %default.unreachable [
    i8 3, label %vht_compressed_skip_scidx.exit.i.i
    i8 1, label %bb.gk
    i8 2, label %bb.gm
  ]

bb.gk:                                            ; preds = %bb.gj
  switch i32 %.1117142.i.i, label %vht_compressed_skip_scidx.exit.i.i [
    i32 -128, label %bb.gl
    i32 -4, label %bb.gl
    i32 -2, label %bb.gl
    i32 0, label %bb.gl
    i32 2, label %bb.gl
    i32 4, label %bb.gl
    i32 128, label %bb.gl
  ]

bb.gl:                                            ; preds = %bb.gk, %bb.gk, %bb.gk, %bb.gk, %bb.gk, %bb.gk, %bb.gk
  %i.bdj = add nsw i32 %.1117142.i.i, 1
  br label %vht_compressed_skip_scidx.exit.i.i

bb.gm:                                            ; preds = %bb.gj
  switch i32 %.1117142.i.i, label %vht_compressed_skip_scidx.exit.i.i [
    i32 -2, label %bb.gn
    i32 2, label %bb.gn
  ]

bb.gn:                                            ; preds = %bb.gm, %bb.gm
  %i.bdk = or disjoint i32 %.1117142.i.i, 1
  br label %vht_compressed_skip_scidx.exit.i.i

vht_compressed_skip_scidx.exit.i.i:               ; preds = %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %.lr.ph.split.split.i.i
  %.0.i.i.i169 = phi i32 [ %.1117142.i.i, %bb.gm ], [ %.1117142.i.i, %bb.gk ], [ %i.bdk, %bb.gn ], [ %.1117142.i.i, %.lr.ph.split.split.i.i ], [ %i.bdj, %bb.gl ], [ %.1117142.i.i, %bb.gj ] ; 2 uses
  %i.bdl = add i32 %.0.i.i.i169, 1
  %i.bdm = load i32, ptr @hf_ieee80211_vht_compressed_beamform_scidx, align 4
  %.val.i.i = load ptr, ptr %i.bcx, align 8
  %i.bdn = tail call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.bcn, ptr noundef %1, ptr %.val.i.i, i32 noundef %.1143.i.i, i32 noundef %.0105144.i.i, i32 noundef %.0.i.i.i169, i32 noundef %i.bcb, i32 noundef %i.bbi, i32 noundef %.0115.i.i, i32 noundef %.0114.i.i, i32 noundef %i.bdm) ; 2 uses
  %i.bdo = sdiv i32 %i.bdn, 8                     ; 2 uses
  %i.bdp = add nuw nsw i32 %.1121141.i.i, 1       ; 2 uses
  %exitcond164.not.i.i = icmp eq i32 %i.bdp, %i.bcs
  br i1 %exitcond164.not.i.i, label %._crit_edge.i.i164, label %.lr.ph.split.split.i.i, !llvm.loop !23

._crit_edge.i.i164:                               ; preds = %vht_compressed_skip_scidx.exit.i.i, %vht_compressed_skip_scidx.exit.us.i.i, %switch.lookup408
  %.1.lcssa.i.i165 = phi i32 [ %i.bbx, %switch.lookup408 ], [ %i.bdh, %vht_compressed_skip_scidx.exit.us.i.i ], [ %i.bdo, %vht_compressed_skip_scidx.exit.i.i ] ; 5 uses
  %i.bdq = sub i32 %.1.lcssa.i.i165, %i.bbx
  tail call void @proto_item_set_len(ptr noundef %i.bcn, i32 noundef %i.bdq)
  br i1 %.not123.i.i163, label %.sink.split.i156, label %bb.go

bb.go:                                            ; preds = %._crit_edge.i.i164
  %i.bdr = getelementptr [12 x i8], ptr @add_ff_vht_compressed_beamforming_report.delta_ns_arr, i64 %i.bco
  %i.bds = getelementptr [4 x i8], ptr %i.bdr, i64 %i.bcq
  %i.bdt = load i32, ptr %i.bds, align 4          ; 3 uses
  %i.bdu = mul i32 %i.bdt, %i.bbi                 ; 2 uses
  %i.bdv = shl i32 %i.bdu, 2                      ; 2 uses
  %i.bdw = and i32 %i.bdu, 1
  %.not125.i.i = icmp eq i32 %i.bdw, 0
  br i1 %.not125.i.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.bdx = sdiv i32 %i.bdv, 8
  %i.bdy = add nsw i32 %i.bdx, 1
  br label %switch.lookup413

bb.gq:                                            ; preds = %bb.go
  %i.bdz = ashr exact i32 %i.bdv, 3
  br label %switch.lookup413

switch.lookup413:                                 ; preds = %bb.gp, %bb.gq
  %.0109.i.i = phi i32 [ %i.bdy, %bb.gp ], [ %i.bdz, %bb.gq ]
  %i.bea = zext nneg i8 %i.bcd to i64
  %switch.gep414 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.add_ff_action.229, i64 %i.bea
  %switch.load415 = load i32, ptr %switch.gep414, align 4
  %i.beb = load i32, ptr @hf_ieee80211_vht_mu_exclusive_beamforming_report, align 4
  %i.bec = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.beb, ptr noundef %1, i32 noundef %.1.lcssa.i.i165, i32 noundef %.0109.i.i, i32 noundef 0)
  %i.bed = load i32, ptr @ett_ff_vhtmu_exclusive_beamforming_report_matrices, align 4
  %i.bee = tail call ptr @proto_item_add_subtree(ptr noundef %i.bec, i32 noundef %i.bed)
  %.not126148.i.i = icmp slt i32 %i.bdt, 1
  br i1 %.not126148.i.i, label %.sink.split.i156, label %.preheader.i.i166

.preheader.i.i166:                                ; preds = %switch.lookup413, %vht_exclusive_skip_scidx.exit.i.i
  %.2152.i.i = phi i32 [ %i.bek, %vht_exclusive_skip_scidx.exit.i.i ], [ %.1.lcssa.i.i165, %switch.lookup413 ]
  %.1108151.i.i = phi i32 [ %.0.i136.i.i, %vht_exclusive_skip_scidx.exit.i.i ], [ %switch.load415, %switch.lookup413 ] ; 21 uses
  %.0111150.i.i = phi i32 [ %i.bfb, %vht_exclusive_skip_scidx.exit.i.i ], [ 1, %switch.lookup413 ]
  %.0112149.i.i = phi i8 [ %i.bel, %vht_exclusive_skip_scidx.exit.i.i ], [ 1, %switch.lookup413 ]
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gr, %.preheader.i.i166
  %.3147.i.i = phi i32 [ %.2152.i.i, %.preheader.i.i166 ], [ %i.bek, %bb.gr ] ; 2 uses
  %.0110146.i.i = phi i32 [ 1, %.preheader.i.i166 ], [ %i.bem, %bb.gr ] ; 2 uses
  %.1113145.i.i = phi i8 [ %.0112149.i.i, %.preheader.i.i166 ], [ %i.bel, %bb.gr ] ; 2 uses
  %.not128.mask.i.i = and i8 %.1113145.i.i, 1     ; 2 uses
  %.134.i.i = zext nneg i8 %.not128.mask.i.i to i32
  %i.bef = xor i8 %.not128.mask.i.i, 1
end_hunk_1
begin_hunk_2_@add_ff_action:bb.a
  %i.bld = load i32, ptr @hf_ieee80211_ff_dialog_token, align 4
  %i.ble = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bld, ptr noundef %1, i32 noundef %i.bkc, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.blf = add i32 %3, 3                          ; 2 uses
  %i.blg = tail call i32 @add_tagged_field_with_validation(ptr noundef %2, ptr noundef %0, ptr noundef %1, i32 noundef %i.blf, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.blh = add i32 %i.blg, %i.blf
  br label %add_ff_action_protected_s1g.exit

bb.jc:                                            ; preds = %bb.it
  %i.bli = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bkc)
  %i.blj = getelementptr i8, ptr %2, i64 8
  %i.blk = load ptr, ptr %i.blj, align 8
  %i.bll = zext i8 %i.bli to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.blk, i32 noundef 25, ptr noundef nonnull @.str.7925, i32 noundef %i.bll)
  %i.blm = load i32, ptr @hf_ieee80211_ff_dialog_token, align 4
  %i.bln = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.blm, ptr noundef %1, i32 noundef %i.bkc, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.blo = add i32 %3, 3                          ; 2 uses
  %i.blp = tail call i32 @add_tagged_field_with_validation(ptr noundef %2, ptr noundef %0, ptr noundef %1, i32 noundef %i.blo, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.blq = add i32 %i.blp, %i.blo
  br label %add_ff_action_protected_s1g.exit

bb.jd:                                            ; preds = %bb.it
  %i.blr = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bkc)
  %i.bls = getelementptr i8, ptr %2, i64 8
  %i.blt = load ptr, ptr %i.bls, align 8
  %i.blu = zext i8 %i.blr to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.blt, i32 noundef 25, ptr noundef nonnull @.str.7925, i32 noundef %i.blu)
  %i.blv = load i32, ptr @hf_ieee80211_ff_dialog_token, align 4
  %i.blw = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.blv, ptr noundef %1, i32 noundef %i.bkc, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.blx = add i32 %3, 3
  %i.bly = load i32, ptr @hf_ieee80211_s1g_sync_control, align 4
  %i.blz = load i32, ptr @ett_s1g_sync_control_tree, align 4
  %i.bma = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %0, ptr noundef %1, i32 noundef %i.blx, i32 noundef %i.bly, i32 noundef %i.blz, ptr noundef nonnull @s1g_sync_control_headers, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.bmb = add i32 %3, 4
  br label %add_ff_action_protected_s1g.exit

bb.je:                                            ; preds = %bb.it
  %i.bmc = tail call i32 @add_tagged_field_with_validation(ptr noundef %2, ptr noundef %0, ptr noundef %1, i32 noundef %i.bkc, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.bmd = add i32 %i.bmc, %i.bkc
  br label %add_ff_action_protected_s1g.exit

bb.jf:                                            ; preds = %bb.it
  %i.bme = tail call i32 @add_tagged_field_with_validation(ptr noundef %2, ptr noundef %0, ptr noundef %1, i32 noundef %i.bkc, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.bmf = add i32 %i.bme, %i.bkc
  br label %add_ff_action_protected_s1g.exit

bb.jg:                                            ; preds = %bb.it
  %i.bmg = tail call i32 @add_tagged_field_with_validation(ptr noundef %2, ptr noundef %0, ptr noundef %1, i32 noundef %i.bkc, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.bmh = add i32 %i.bmg, %i.bkc
  br label %add_ff_action_protected_s1g.exit

bb.jh:                                            ; preds = %bb.it
  %i.bmi = tail call i32 @add_tagged_field_with_validation(ptr noundef %2, ptr noundef %0, ptr noundef %1, i32 noundef %i.bkc, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.bmj = add i32 %i.bmi, %i.bkc
  br label %add_ff_action_protected_s1g.exit

bb.ji:                                            ; preds = %bb.it
  %i.bmk = load i32, ptr @hf_ieee80211_s1g_sector_id_index, align 4
  %i.bml = load i32, ptr @ett_s1g_sector_id_index, align 4
  %i.bmm = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %0, ptr noundef %1, i32 noundef %i.bkc, i32 noundef %i.bmk, i32 noundef %i.bml, ptr noundef nonnull @s1g_sector_id_index_headers, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.bmn = add i32 %3, 4
  br label %add_ff_action_protected_s1g.exit

add_ff_action_protected_s1g.exit:                 ; preds = %bb.it, %bb.iu, %bb.iv, %bb.iw, %bb.ja, %bb.jb, %bb.jc, %bb.jd, %bb.je, %bb.jf, %bb.jg, %bb.jh, %bb.ji
  %.0.i174 = phi i32 [ %i.bkc, %bb.it ], [ %i.bmn, %bb.ji ], [ %i.bmj, %bb.jh ], [ %i.bmh, %bb.jg ], [ %i.bmf, %bb.jf ], [ %i.bkl, %bb.iu ], [ %i.bkm, %bb.iv ], [ %i.bmd, %bb.je ], [ %i.blh, %bb.jb ], [ %i.blq, %bb.jc ], [ %i.bmb, %bb.jd ], [ %i.bky, %bb.ja ], [ %i.bkr, %bb.iw ]
  %i.bmo = sub i32 %.0.i174, %3
  br label %add_ff_action_spectrum_mgmt.exit

bb.jj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.bmp = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %3) ; 2 uses
  %i.bmq = load i32, ptr @hf_ieee80211_ff_category_code, align 4
  %i.bmr = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bmq, ptr noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bms = add i32 %3, 1
  %i.bmt = load i32, ptr @hf_ieee80211_ff_he_action, align 4
  %i.bmu = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %0, i32 noundef %i.bmt, ptr noundef %1, i32 noundef %i.bms, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.j)
  %i.bmv = add i32 %3, 2                          ; 4 uses
  %i.bmw = load i32, ptr @ett_ff_he_action, align 4
  %i.bmx = call ptr @proto_item_add_subtree(ptr noundef %i.bmu, i32 noundef %i.bmw) ; 6 uses
  %i.bmy = load i8, ptr %i.j, align 1
  switch i8 %i.bmy, label %add_ff_action_he.exit [
    i8 0, label %bb.jk
    i8 1, label %bb.lh
  ]

bb.jk:                                            ; preds = %bb.jj
  %i.bmz = load i32, ptr @hf_ieee80211_he_beamforming_report_len, align 4
  %i.bna = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.bmx, i32 noundef %i.bmz, ptr noundef %1, i32 noundef %i.bmv, i32 noundef 0, i32 noundef %i.bmp, ptr noundef nonnull @.str.7986, i32 noundef %i.bmp) ; 0 uses
  %i.bnb = call i64 @tvb_get_letoh40(ptr noundef %1, i32 noundef %i.bmv)
  %i.bnc = trunc i64 %i.bnb to i32                ; 8 uses
  %i.bnd = and i32 %i.bnc, 7                      ; 2 uses
  %i.bne = add nuw nsw i32 %i.bnd, 1              ; 2 uses
  %i.bnf = load i32, ptr @hf_ieee80211_he_mimo_control_field, align 4
  %i.bng = load i32, ptr @ett_ff_he_mimo_control, align 4
  %i.bnh = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.bmx, ptr noundef %1, i32 noundef %i.bmv, i32 noundef %i.bnf, i32 noundef %i.bng, ptr noundef nonnull @he_mimo_control_headers, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %i.bni = add i32 %3, 7                          ; 2 uses
  %i.bnj = load i32, ptr @ett_ff_he_mimo_beamforming_report_snr, align 4
  %i.bnk = call ptr @proto_tree_add_subtree(ptr noundef %i.bmx, ptr noundef %1, i32 noundef %i.bni, i32 noundef %i.bne, i32 noundef %i.bnj, ptr noundef null, ptr noundef nonnull @.str.7979)
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jl, %bb.jk
  %.075106.i.i = phi i32 [ %i.bni, %bb.jk ], [ %i.bny, %bb.jl ] ; 3 uses
  %.076105.i.i = phi i32 [ 0, %bb.jk ], [ %i.bnz, %bb.jl ] ; 3 uses
  %i.bnl = call signext i8 @tvb_get_int8(ptr noundef %1, i32 noundef %.075106.i.i) ; 5 uses
  %i.bnm = load i32, ptr @hf_ieee80211_he_compressed_beamforming_report_snr, align 4
  %i.bnn = sext i8 %i.bnl to i32
  %i.bno = icmp eq i8 %i.bnl, 127
  %i.bnp = icmp eq i8 %i.bnl, -128
  %i.bnq = select i1 %i.bnp, ptr @.str.7989, ptr @.str.7990
  %i.bnr = select i1 %i.bno, ptr @.str.7988, ptr %i.bnq
  %i.bns = sitofp i8 %i.bnl to float
  %i.bnt = fadd nnan float %i.bns, 8.800000e+01
  %i.bnu = fmul nnan float %i.bnt, 2.500000e-01
  %i.bnv = fpext float %i.bnu to double
  %i.bnw = zext i8 %i.bnl to i32
  %i.bnx = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format(ptr noundef %i.bnk, i32 noundef %i.bnm, ptr noundef %1, i32 noundef %.075106.i.i, i32 noundef 1, i32 noundef %i.bnn, ptr noundef nonnull @.str.7987, i32 noundef %.076105.i.i, ptr noundef nonnull %i.bnr, double noundef %i.bnv, i32 noundef %i.bnw) ; 0 uses
  %i.bny = add i32 %.075106.i.i, 1                ; 5 uses
  %i.bnz = add nuw nsw i32 %.076105.i.i, 1
  %exitcond.not.i.i182 = icmp eq i32 %.076105.i.i, %i.bnd
  br i1 %exitcond.not.i.i182, label %bb.jm, label %bb.jl, !llvm.loop !28

bb.jm:                                            ; preds = %bb.jl
  %i.boa = lshr i32 %i.bnc, 3
  %i.bob = and i32 %i.boa, 7
  %i.boc = add nuw nsw i32 %i.bob, 1
  %i.bod = lshr i32 %i.bnc, 6
  %i.boe = and i32 %i.bod, 3                      ; 4 uses
  %i.bof = lshr i32 %i.bnc, 8
  %i.bog = and i32 %i.bof, 1                      ; 2 uses
  %i.boh = lshr i32 %i.bnc, 9
  %i.boi = and i32 %i.boh, 1                      ; 2 uses
  %i.boj = lshr i32 %i.bnc, 10
  %i.bok = and i32 %i.boj, 3
  %i.bol = lshr i32 %i.bnc, 16
  %i.bom = and i32 %i.bol, 127                    ; 4 uses
  %i.bon = lshr i32 %i.bnc, 23
  %i.boo = and i32 %i.bon, 127                    ; 4 uses
  switch i32 %i.bok, label %bb.jq [
    i32 0, label %bb.jn
    i32 1, label %bb.jo
  ]

bb.jn:                                            ; preds = %bb.jm
  %i.bop = icmp eq i32 %i.boi, 0                  ; 2 uses
  %..i.i188 = select i1 %i.bop, i32 4, i32 6
  %.90.i.i = select i1 %i.bop, i32 2, i32 4
  br label %bb.jq

bb.jo:                                            ; preds = %bb.jm
  %.not87.i.i = icmp eq i32 %i.bog, 0
  br i1 %.not87.i.i, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.boq = icmp eq i32 %i.boi, 0                  ; 2 uses
  %.91.i.i = select i1 %i.boq, i32 7, i32 9
  %.92.i.i = select i1 %i.boq, i32 5, i32 7
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jo, %bb.jn, %bb.jm
  %.078.i.i = phi i32 [ %..i.i188, %bb.jn ], [ 0, %bb.jm ], [ 7, %bb.jo ], [ %.91.i.i, %bb.jp ]
  %.077.i.i = phi i32 [ %.90.i.i, %bb.jn ], [ 0, %bb.jm ], [ 9, %bb.jo ], [ %.92.i.i, %bb.jp ]
  %i.bor = load i32, ptr @ett_ff_he_mimo_feedback_matrices, align 4
  %i.bos = call ptr @proto_tree_add_subtree(ptr noundef %i.bmx, ptr noundef %1, i32 noundef %i.bny, i32 noundef -1, i32 noundef %i.bor, ptr noundef null, ptr noundef nonnull @.str.7981) ; 2 uses
  %i.bot = shl i32 %i.bny, 3                      ; 2 uses
  %i.bou = icmp eq i32 %i.bog, 0                  ; 8 uses
  %i.bov = icmp samesign ugt i32 %i.boo, 36       ; 2 uses
  %i.bow = zext nneg i32 %i.boo to i64            ; 6 uses
  %i.box = getelementptr [8 x i8], ptr @scidx_80MHz_Ng16, i64 %i.bow
  %i.boy = getelementptr i8, ptr %i.box, i64 4
  %i.boz = getelementptr [8 x i8], ptr @scidx_80MHz_Ng4, i64 %i.bow
  %i.bpa = getelementptr i8, ptr %i.boz, i64 4
  %i.bpb = icmp samesign ugt i32 %i.boo, 17       ; 2 uses
  %i.bpc = getelementptr [8 x i8], ptr @scidx_40MHz_Ng16, i64 %i.bow
  %i.bpd = getelementptr i8, ptr %i.bpc, i64 4
  %i.bpe = getelementptr [8 x i8], ptr @scidx_40MHz_Ng4, i64 %i.bow
  %i.bpf = getelementptr i8, ptr %i.bpe, i64 4
  %i.bpg = icmp samesign ugt i32 %i.boo, 8        ; 2 uses
  %i.bph = getelementptr [8 x i8], ptr @scidx_20MHz_Ng16, i64 %i.bow
  %i.bpi = getelementptr i8, ptr %i.bph, i64 4
  %i.bpj = getelementptr [8 x i8], ptr @scidx_20MHz_Ng4, i64 %i.bow
  %i.bpk = getelementptr i8, ptr %i.bpj, i64 4
  %i.bpl = icmp eq i32 %i.boe, 0
  %spec.select.i.i.i183 = select i1 %i.bou, i32 4, i32 16 ; 2 uses
  %i.bpm = icmp samesign ugt i32 %i.bom, 36       ; 2 uses
  %i.bpn = zext nneg i32 %i.bom to i64            ; 6 uses
  %i.bpo = getelementptr [8 x i8], ptr @scidx_80MHz_Ng16, i64 %i.bpn
  %i.bpp = getelementptr [8 x i8], ptr @scidx_80MHz_Ng4, i64 %i.bpn
  %i.bpq = icmp samesign ugt i32 %i.bom, 17       ; 2 uses
  %i.bpr = getelementptr [8 x i8], ptr @scidx_40MHz_Ng16, i64 %i.bpn
  %i.bps = getelementptr [8 x i8], ptr @scidx_40MHz_Ng4, i64 %i.bpn
  %i.bpt = icmp samesign ugt i32 %i.bom, 8        ; 2 uses
  %i.bpu = getelementptr [8 x i8], ptr @scidx_20MHz_Ng16, i64 %i.bpn
  %i.bpv = getelementptr [8 x i8], ptr @scidx_20MHz_Ng4, i64 %i.bpn
  %i.bpw = getelementptr i8, ptr %2, i64 416
  %cond.i.a = icmp eq i32 %i.boe, 3
  br i1 %cond.i.a, label %dissect_compressed_beamforming_and_cqi.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.jq, %bb.lg
  %.080.i.i = phi i32 [ %i.bqt, %bb.lg ], [ %i.bot, %bb.jq ] ; 21 uses
  %.079.i.i = phi i32 [ %.058.i99.i.i, %bb.lg ], [ -2147483648, %bb.jq ] ; 10 uses
  %.1.i.i184 = phi i32 [ %i.bqv, %bb.lg ], [ %i.bny, %bb.jq ]
  switch i32 %i.boe, label %bb.kb [
    i32 0, label %bb.jr
    i32 1, label %bb.jw
  ]

bb.jr:                                            ; preds = %.split.i
  br i1 %i.bou, label %bb.js, label %bb.ju

bb.js:                                            ; preds = %bb.jr
  br i1 %i.bpg, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.bpx = load i32, ptr %i.bpk, align 4
  %i.bpy = icmp eq i32 %.079.i.i, %i.bpx
  br i1 %i.bpy, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.kg

bb.ju:                                            ; preds = %bb.jr
  br i1 %i.bpg, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.bpz = load i32, ptr %i.bpi, align 4
  %i.bqa = icmp eq i32 %.079.i.i, %i.bpz
  br i1 %i.bqa, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.kg

bb.jw:                                            ; preds = %.split.i
  br i1 %i.bou, label %bb.jx, label %bb.jz

bb.jx:                                            ; preds = %bb.jw
  br i1 %i.bpb, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bqb = load i32, ptr %i.bpf, align 4
  %i.bqc = icmp eq i32 %.079.i.i, %i.bqb
  br i1 %i.bqc, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.kg

bb.jz:                                            ; preds = %bb.jw
  br i1 %i.bpb, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.bqd = load i32, ptr %i.bpd, align 4
  %i.bqe = icmp eq i32 %.079.i.i, %i.bqd
  br i1 %i.bqe, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.kg

bb.kb:                                            ; preds = %.split.i
  br i1 %i.bou, label %bb.kc, label %bb.ke

bb.kc:                                            ; preds = %bb.kb
  br i1 %i.bov, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.bqf = load i32, ptr %i.bpa, align 4
  %i.bqg = icmp eq i32 %.079.i.i, %i.bqf
  br i1 %i.bqg, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.kg

bb.ke:                                            ; preds = %bb.kb
  br i1 %i.bov, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bqh = load i32, ptr %i.boy, align 4
  %i.bqi = icmp eq i32 %.079.i.i, %i.bqh
  br i1 %i.bqi, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %bb.kd, %bb.ka, %bb.jy, %bb.jv, %bb.jt
  %i.bqj = icmp eq i32 %.079.i.i, -2147483648
  br i1 %i.bqj, label %bb.kh, label %bb.kx

bb.kh:                                            ; preds = %bb.kg
  switch i32 %i.boe, label %default.unreachable [
    i32 0, label %bb.ki
    i32 1, label %bb.kn
    i32 2, label %bb.ks
  ]

bb.ki:                                            ; preds = %bb.kh
  br i1 %i.bou, label %bb.kj, label %bb.kl

bb.kj:                                            ; preds = %bb.ki
  br i1 %i.bpt, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.bqk = load i32, ptr %i.bpv, align 8
  br label %next_he_scidx.exit.i.i

bb.kl:                                            ; preds = %bb.ki
  br i1 %i.bpt, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.bql = load i32, ptr %i.bpu, align 8
  br label %next_he_scidx.exit.i.i

bb.kn:                                            ; preds = %bb.kh
  br i1 %i.bou, label %bb.ko, label %bb.kq

bb.ko:                                            ; preds = %bb.kn
  br i1 %i.bpq, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bqm = load i32, ptr %i.bps, align 8
  br label %next_he_scidx.exit.i.i

bb.kq:                                            ; preds = %bb.kn
  br i1 %i.bpq, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bqn = load i32, ptr %i.bpr, align 8
  br label %next_he_scidx.exit.i.i

bb.ks:                                            ; preds = %bb.kh
  br i1 %i.bou, label %bb.kt, label %bb.kv

bb.kt:                                            ; preds = %bb.ks
  br i1 %i.bpm, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.bqo = load i32, ptr %i.bpp, align 8
  br label %next_he_scidx.exit.i.i

bb.kv:                                            ; preds = %bb.ks
  br i1 %i.bpm, label %dissect_compressed_beamforming_and_cqi.exit.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.bqp = load i32, ptr %i.bpo, align 8
  br label %next_he_scidx.exit.i.i

bb.kx:                                            ; preds = %bb.kg
  br i1 %i.bpl, label %bb.ky, label %bb.lf

bb.ky:                                            ; preds = %bb.kx
  br i1 %i.bou, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  switch i32 %.079.i.i, label %bb.lf [
    i32 -122, label %next_he_scidx.exit.thread96.i.i
    i32 -4, label %bb.lb
    i32 2, label %bb.ld
    i32 120, label %bb.le
  ]

bb.la:                                            ; preds = %bb.ky
  switch i32 %.079.i.i, label %bb.lf [
    i32 -122, label %next_he_scidx.exit.thread96.i.i
    i32 -4, label %bb.lb
    i32 -2, label %bb.lc
    i32 2, label %bb.ld
    i32 116, label %bb.le
  ]

bb.lb:                                            ; preds = %bb.la, %bb.kz
  br label %next_he_scidx.exit.thread96.i.i

bb.lc:                                            ; preds = %bb.la
  br label %next_he_scidx.exit.thread96.i.i

bb.ld:                                            ; preds = %bb.la, %bb.kz
  br label %next_he_scidx.exit.thread96.i.i

bb.le:                                            ; preds = %bb.la, %bb.kz
  br label %next_he_scidx.exit.thread96.i.i

bb.lf:                                            ; preds = %bb.la, %bb.kz, %bb.kx
  %i.bqq = add i32 %.079.i.i, %spec.select.i.i.i183 ; 2 uses
  %i.bqr = icmp eq i32 %i.bqq, 0
  br i1 %i.bqr, label %next_he_scidx.exit.thread96.i.i, label %next_he_scidx.exit.i.i

next_he_scidx.exit.i.i:                           ; preds = %bb.lf, %bb.kw, %bb.ku, %bb.kr, %bb.kp, %bb.km, %bb.kk
  %.058.i.i.i = phi i32 [ %i.bqk, %bb.kk ], [ %i.bqo, %bb.ku ], [ %i.bqm, %bb.kp ], [ %i.bqp, %bb.kw ], [ %i.bqq, %bb.lf ], [ %i.bql, %bb.km ], [ %i.bqn, %bb.kr ] ; 2 uses
  %.not88.i.i = icmp eq i32 %.058.i.i.i, -2147483648
  br i1 %.not88.i.i, label %dissect_compressed_beamforming_and_cqi.exit.i, label %next_he_scidx.exit.thread96.i.i

next_he_scidx.exit.thread96.i.i:                  ; preds = %next_he_scidx.exit.i.i, %bb.lf, %bb.le, %bb.ld, %bb.lc, %bb.lb, %bb.la, %bb.kz
  %.058.i99.i.i = phi i32 [ %.058.i.i.i, %next_he_scidx.exit.i.i ], [ 122, %bb.le ], [ 4, %bb.ld ], [ 2, %bb.lc ], [ -2, %bb.lb ], [ -120, %bb.kz ], [ -116, %bb.la ], [ %spec.select.i.i.i183, %bb.lf ] ; 2 uses
  %i.bqs = load i32, ptr @hf_ieee80211_he_compressed_beamform_scidx, align 4
  %.val.i.i185 = load ptr, ptr %i.bpw, align 8
  %i.bqt = call fastcc i32 @dissect_he_feedback_matrix(ptr noundef %i.bos, ptr noundef %1, ptr %.val.i.i185, i32 noundef %.1.i.i184, i32 noundef %.080.i.i, i32 noundef %.058.i99.i.i, i32 noundef %i.boc, i32 noundef %i.bne, i32 noundef %.078.i.i, i32 noundef %.077.i.i, i32 noundef %i.bqs) ; 4 uses
  %.not89.i.i = icmp sgt i32 %i.bqt, %.080.i.i
  br i1 %.not89.i.i, label %bb.lg, label %.thread.i.i186

.thread.i.i186:                                   ; preds = %next_he_scidx.exit.thread96.i.i
  %i.bqu = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.bmx, ptr noundef nonnull @ei_ieee80211_bad_length) ; 0 uses
  br label %dissect_compressed_beamforming_and_cqi.exit.i

bb.lg:                                            ; preds = %next_he_scidx.exit.thread96.i.i
  %i.bqv = sdiv i32 %i.bqt, 8
  br label %.split.i

dissect_compressed_beamforming_and_cqi.exit.i:    ; preds = %next_he_scidx.exit.i.i, %bb.kv, %bb.kt, %bb.kq, %bb.ko, %bb.kl, %bb.kj, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.ka, %bb.jz, %bb.jy, %bb.jx, %bb.jv, %bb.ju, %bb.jt, %bb.js, %.thread.i.i186, %bb.jq
  %.181.i.i = phi i32 [ %i.bqt, %.thread.i.i186 ], [ %i.bot, %bb.jq ], [ %.080.i.i, %bb.js ], [ %.080.i.i, %bb.jt ], [ %.080.i.i, %bb.ju ], [ %.080.i.i, %bb.jv ], [ %.080.i.i, %bb.jx ], [ %.080.i.i, %bb.jy ], [ %.080.i.i, %bb.jz ], [ %.080.i.i, %bb.ka ], [ %.080.i.i, %bb.kc ], [ %.080.i.i, %bb.kd ], [ %.080.i.i, %bb.ke ], [ %.080.i.i, %bb.kf ], [ %.080.i.i, %bb.kj ], [ %.080.i.i, %bb.kl ], [ %.080.i.i, %bb.ko ], [ %.080.i.i, %bb.kq ], [ %.080.i.i, %bb.kt ], [ %.080.i.i, %bb.kv ], [ %.080.i.i, %next_he_scidx.exit.i.i ]
  %i.bqw = add i32 %.181.i.i, 7
  %i.bqx = sdiv i32 %i.bqw, 8                     ; 3 uses
  %i.bqy = sub i32 %i.bqx, %i.bny
  call void @proto_item_set_len(ptr noundef %i.bos, i32 noundef %i.bqy)
  %i.bqz = call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.bqx)
  %i.bra = call i32 @llvm.smax.i32(i32 %i.bqz, i32 0)
  %spec.select.i.i = add i32 %i.bra, %i.bqx
  br label %add_ff_action_he.exit

bb.lh:                                            ; preds = %bb.jj
  %i.brb = add i32 %3, 3
  %i.brc = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.brb) ; 0 uses
  %i.brd = add i32 %3, 5
  %i.bre = call fastcc i32 @dissect_quiet_time_period(ptr noundef %1, ptr noundef %i.bmx, i32 noundef %i.brd)
  br label %add_ff_action_he.exit

end_hunk_2
