Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ieee80211?download=true
inline.NumInlined: 916
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ieee80211_tag_dmg_capabilities:bb.a
  %i.f = load i32, ptr @hf_ieee80211_tag_dmg_capa_sta_addr, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr @hf_ieee80211_tag_dmg_capa_aid, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %2, ptr noundef %0, i32 noundef 7, i32 noundef 3, ptr noundef nonnull @ieee80211_tag_dmg_capabilities.ieee80211_tag_dmg_cap1, i32 noundef -2147483648)
  tail call void @proto_tree_add_bitmask_list(ptr noundef %2, ptr noundef %0, i32 noundef 10, i32 noundef 3, ptr noundef nonnull @ieee80211_tag_dmg_capabilities.ieee80211_tag_dmg_cap2, i32 noundef -2147483648)
  tail call void @proto_tree_add_bitmask_list(ptr noundef %2, ptr noundef %0, i32 noundef 13, i32 noundef 2, ptr noundef nonnull @ieee80211_tag_dmg_capabilities.ieee80211_tag_dmg_cap3, i32 noundef -2147483648)
  tail call void @proto_tree_add_bitmask_list(ptr noundef %2, ptr noundef %0, i32 noundef 15, i32 noundef 2, ptr noundef nonnull @ieee80211_tag_dmg_capabilities.ieee80211_tag_dmg_cap4, i32 noundef -2147483648)
  %.not = icmp eq i32 %i.a, 22
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %3, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.k, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10518, i32 noundef %i.a) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = load i32, ptr @hf_ieee80211_tag_sta_beam_track, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 17, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %2, ptr noundef %0, i32 noundef 19, i32 noundef 1, ptr noundef nonnull @ieee80211_tag_dmg_capabilities.ieee80211_tag_dmg_cap5, i32 noundef -2147483648)
  %i.o = load i32, ptr @hf_ieee80211_tag_max_basic_sf_amsdu, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef 20, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_ieee80211_tag_max_short_sf_amsdu, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef 21, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.s = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.s
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @ieee80211_tag_dmg_operation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %.not = icmp eq i32 %i.a, 10
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10519, i32 noundef %i.a) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @proto_tree_add_bitmask_list(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @ieee80211_tag_dmg_operation.ieee80211_tag_dmg_operation_flags, i32 noundef -2147483648)
  %i.e = load i32, ptr @hf_ieee80211_tag_PSRSI, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_ieee80211_tag_min_BHI_duration, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 3, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.i = load i32, ptr @hf_ieee80211_tag_brdct_sta_info_dur, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_ieee80211_tag_assoc_resp_confirm_time, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_ieee80211_tag_min_pp_duration, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_ieee80211_tag_SP_idle_timeout, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef 8, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_ieee80211_tag_max_lost_beacons, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef 9, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.s
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @ieee80211_tag_antenna_section_id(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %.not = icmp eq i32 %i.a, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10326, i32 noundef %i.a) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @proto_tree_add_bitmask_list(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @ieee80211_tag_antenna_section_id.ieee80211_tag_antenna, i32 noundef -2147483648)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.e
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @ieee80211_tag_extended_schedule(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 4 uses
  %i.b = srem i32 %i.a, 15
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.d, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10520, i32 noundef %i.a) ; 0 uses
  br label %._crit_edge

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr %3, align 8                ; 2 uses
  %i.g = icmp eq i32 %i.f, 356
  %i.h = icmp eq i32 %i.f, 359
  %spec.select = or i1 %i.g, %i.h
  %i.i = icmp sgt i32 %i.a, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %add_ff_beamforming_ctrl.exit
  %.073 = phi i32 [ %i.bb, %add_ff_beamforming_ctrl.exit ], [ 0, %bb.c ] ; 17 uses
  %i.j = load i32, ptr @ett_allocation_tree, align 4
  %i.k = sdiv i32 %.073, 15
  %i.l = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %.073, i32 noundef 15, i32 noundef %i.j, ptr noundef null, ptr noundef nonnull @.str.10521, i32 noundef %i.k) ; 14 uses
  %i.m = load i32, ptr @hf_ieee80211_tag_allocation_id, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.m, ptr noundef %0, i32 noundef %.073, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.o = load i32, ptr @hf_ieee80211_tag_allocation_type, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.o, ptr noundef %0, i32 noundef %.073, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.q = load i32, ptr @hf_ieee80211_tag_pseudo_static, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.q, ptr noundef %0, i32 noundef %.073, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.s = load i32, ptr @hf_ieee80211_tag_truncatable, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.s, ptr noundef %0, i32 noundef %.073, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.u = load i32, ptr @hf_ieee80211_tag_extendable, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.u, ptr noundef %0, i32 noundef %.073, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.w = load i32, ptr @hf_ieee80211_tag_pcp_active, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.w, ptr noundef %0, i32 noundef %.073, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.y = load i32, ptr @hf_ieee80211_tag_lp_sc_used, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.y, ptr noundef %0, i32 noundef %.073, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aa = add i32 %.073, 2                        ; 2 uses
  %i.ab = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.aa)
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = and i32 %i.ac, 2
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ae = and i32 %i.ac, 4
  %i.af = icmp ne i32 %i.ae, 0
  %or.cond.i = and i1 %spec.select, %i.af
  br i1 %or.cond.i, label %add_ff_beamforming_ctrl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  br label %add_ff_beamforming_ctrl.exit

add_ff_beamforming_ctrl.exit:                     ; preds = %bb.d, %bb.e
  %add_ff_beamforming_ctrl.ieee80211_ff_beamforming_ctrl.sink.i = phi ptr [ @add_ff_beamforming_ctrl.ieee80211_ff_beamforming_ctrl, %bb.e ], [ @add_ff_beamforming_ctrl.ieee80211_ff_beamforming_ctrl_grant, %bb.d ]
  %i.ag = load i32, ptr @hf_ieee80211_ff_bf, align 4
  %i.ah = load i32, ptr @ett_bf_tree, align 4
  %i.ai = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.l, ptr noundef %0, i32 noundef %i.aa, i32 noundef %i.ag, i32 noundef %i.ah, ptr noundef nonnull %add_ff_beamforming_ctrl.ieee80211_ff_beamforming_ctrl.sink.i, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %i.aj = add i32 %.073, 4
  %i.ak = load i32, ptr @hf_ieee80211_tag_src_aid, align 4
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.ak, ptr noundef %0, i32 noundef %i.aj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.am = add i32 %.073, 5
  %i.an = load i32, ptr @hf_ieee80211_tag_dest_aid, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ap = add i32 %.073, 6
  %i.aq = load i32, ptr @hf_ieee80211_tag_alloc_start, align 4
  %i.ar = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.aq, ptr noundef %0, i32 noundef %i.ap, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.as = add i32 %.073, 10
  %i.at = load i32, ptr @hf_ieee80211_tag_alloc_block_duration, align 4
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.as, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.av = add i32 %.073, 12
  %i.aw = load i32, ptr @hf_ieee80211_tag_num_blocks, align 4
  %i.ax = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.av, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ay = add i32 %.073, 13
  %i.az = load i32, ptr @hf_ieee80211_tag_alloc_block_period, align 4
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.az, ptr noundef %0, i32 noundef %i.ay, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bb = add i32 %.073, 15                       ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %i.a
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !136

._crit_edge:                                      ; preds = %add_ff_beamforming_ctrl.exit, %bb.c, %bb.b
  %i.bd = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.bd
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @ieee80211_tag_sta_availability(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 4 uses
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10522, i32 noundef %i.a) ; 0 uses
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.028 = phi i32 [ %i.o, %.lr.ph ], [ 0, %.preheader ] ; 6 uses
  %i.g = load i32, ptr @ett_sta_info, align 4
  %4 = lshr exact i32 %.028, 1
  %i.h = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %.028, i32 noundef 2, i32 noundef %i.g, ptr noundef null, ptr noundef nonnull @.str.10523, i32 noundef %4) ; 3 uses
  %i.i = load i32, ptr @hf_ieee80211_tag_aid, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %0, i32 noundef %.028, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.k = load i32, ptr @hf_ieee80211_tag_cbap, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.k, ptr noundef %0, i32 noundef %.028, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.m = load i32, ptr @hf_ieee80211_tag_pp_avail, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.m, ptr noundef %0, i32 noundef %.028, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.o = add nuw nsw i32 %.028, 2                 ; 2 uses
  %i.p = icmp slt i32 %i.o, %i.a
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !137

._crit_edge:                                      ; preds = %.lr.ph, %.preheader, %bb.b
  %i.q = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.q
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @ieee80211_tag_next_dmg_ati(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %.not = icmp eq i32 %i.a, 6
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10319, i32 noundef %i.a) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_ieee80211_tag_next_ati_start_time, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.g = load i32, ptr @hf_ieee80211_tag_next_ati_duration, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @ieee80211_tag_nextpcp_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 4 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.d, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10524, i32 noundef %i.a) ; 0 uses
  br label %._crit_edge

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr @hf_ieee80211_tag_nextpcp_token, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.01922 = phi i32 [ %i.j, %.lr.ph ], [ 1, %bb.c ] ; 2 uses
  %i.h = load i32, ptr @hf_ieee80211_tag_nextpcp_list, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %.01922, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = add nuw i32 %.01922, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.j, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !138

._crit_edge:                                      ; preds = %.lr.ph, %bb.c, %bb.b
  %i.k = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.k
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @ieee80211_tag_pcp_handover(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %.not = icmp eq i32 %i.a, 13
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10525, i32 noundef %i.a) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_ieee80211_tag_old_bssid, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_ieee80211_tag_new_pcp_addr, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 6, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_ieee80211_tag_remaining_BI, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 12, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.k
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @ieee80211_tag_beamlink_maintenance(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10526, i32 noundef %i.a) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_ieee80211_ff_blm, align 4
  %i.f = load i32, ptr @ett_blm_tree, align 4
  %i.g = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef %i.e, i32 noundef %i.f, ptr noundef nonnull @add_ff_beamformed_link.ieee80211_ff_beamformed_link, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.h
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @ieee80211_tag_quiet_period_res(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %.not = icmp eq i32 %i.a, 10
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10527, i32 noundef %i.a) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_ieee80211_tag_request_token, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.g = load i32, ptr @hf_ieee80211_tag_bssid, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 2, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_ieee80211_ff_sta_address, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 8, i32 noundef 6, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.k
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @ieee80211_tag_intra_access_cat_prio(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10526, i32 noundef %i.a) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_ieee80211_intra_access_prio, align 4
  %i.f = load i32, ptr @ett_ieee80211_intra_access_prio, align 4
  %i.g = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef %i.e, i32 noundef %i.f, ptr noundef nonnull @intra_access_prio_headers, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.h
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @ieee80211_tag_scs_descriptor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.b = load i32, ptr @hf_ieee80211_scs_descriptor_scsid, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_ieee80211_scs_descriptor_type, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.f = and i8 %i.a, -3
  %or.cond = icmp eq i8 %i.f, 0
  br i1 %or.cond, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @add_tagged_field_with_validation(ptr noundef %1, ptr noundef %2, ptr noundef %0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.h = add i32 %i.g, 2                          ; 3 uses
  %i.i = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.h)
  %.not56 = icmp eq i32 %i.i, 0
  br i1 %.not56, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.057 = phi i32 [ %i.m, %bb.c ], [ %i.h, %bb.b ] ; 4 uses
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.057)
  %i.k = icmp eq i8 %i.j, 14
  br i1 %i.k, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.l = tail call i32 @add_tagged_field_with_validation(ptr noundef %1, ptr noundef %2, ptr noundef %0, i32 noundef %.057, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.m = add i32 %i.l, %.057                      ; 3 uses
  %i.n = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.m)
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !139

.critedge:                                        ; preds = %.lr.ph, %bb.c, %bb.b
end_hunk_0
