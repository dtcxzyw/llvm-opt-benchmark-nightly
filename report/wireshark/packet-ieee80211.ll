inline.NumInlined: 916
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 32
begin_hunk_0_@add_ff_action:bb.a

bb.gs:                                            ; preds = %bb.gr
  switch i8 %i.bcd, label %default.unreachable [
    i8 0, label %bb.gt
    i8 1, label %bb.hd
    i8 2, label %bb.hd
    i8 3, label %bb.hh
  ]

bb.gt:                                            ; preds = %bb.gs
  switch i8 %i.bcg, label %bb.ha [
    i8 0, label %bb.gu
    i8 1, label %bb.gx
  ]

bb.gu:                                            ; preds = %bb.gt
  switch i32 %.1108151.i.i, label %bb.gw [
    i32 -2, label %bb.gv
    i32 1, label %bb.gv
  ]

bb.gv:                                            ; preds = %bb.gu, %bb.gu
  %i.ben = add nsw i32 %.1108151.i.i, 1
  br label %vht_exclusive_skip_scidx.exit.i.i

bb.gw:                                            ; preds = %bb.gu
  %i.beo = add i32 %.1108151.i.i, 2
  br label %vht_exclusive_skip_scidx.exit.i.i

bb.gx:                                            ; preds = %bb.gt
  switch i32 %.1108151.i.i, label %bb.gz [
    i32 -4, label %bb.gy
    i32 1, label %bb.gy
    i32 -1, label %vht_exclusive_skip_scidx.exit.i.i
  ]

bb.gy:                                            ; preds = %bb.gx, %bb.gx
  %i.bep = add nsw i32 %.1108151.i.i, 3
  br label %vht_exclusive_skip_scidx.exit.i.i

bb.gz:                                            ; preds = %bb.gx
  %i.beq = add i32 %.1108151.i.i, 4
  br label %vht_exclusive_skip_scidx.exit.i.i

bb.ha:                                            ; preds = %bb.gt
  switch i32 %.1108151.i.i, label %bb.hc [
    i32 -4, label %bb.hb
    i32 1, label %bb.hb
    i32 -1, label %vht_exclusive_skip_scidx.exit.i.i
  ]

bb.hb:                                            ; preds = %bb.ha, %bb.ha
  %i.ber = add nsw i32 %.1108151.i.i, 3
  br label %vht_exclusive_skip_scidx.exit.i.i

bb.hc:                                            ; preds = %bb.ha
  %i.bes = add i32 %.1108151.i.i, 8
  br label %vht_exclusive_skip_scidx.exit.i.i

bb.hd:                                            ; preds = %bb.gs, %bb.gs
  switch i8 %i.bcg, label %bb.hg [
    i8 0, label %bb.he
    i8 1, label %bb.hf
  ]

bb.he:                                            ; preds = %bb.hd
  %i.bet = icmp eq i32 %.1108151.i.i, -2
  %i.beu = add i32 %.1108151.i.i, 2
  %spec.select.i.i.i = select i1 %i.bet, i32 2, i32 %i.beu
  br label %vht_exclusive_skip_scidx.exit.i.i

bb.hf:                                            ; preds = %bb.hd
  %i.bev = add i32 %.1108151.i.i, 4
  br label %vht_exclusive_skip_scidx.exit.i.i

bb.hg:                                            ; preds = %bb.hd
  %i.bew = icmp eq i32 %.1108151.i.i, -2
  %i.bex = add i32 %.1108151.i.i, 8
  %spec.select28.i.i.i = select i1 %i.bew, i32 2, i32 %i.bex
  br label %vht_exclusive_skip_scidx.exit.i.i

bb.hh:                                            ; preds = %bb.gs
  switch i8 %i.bcg, label %bb.hn [
    i8 0, label %bb.hi
    i8 1, label %bb.hm
  ]

bb.hi:                                            ; preds = %bb.hh
  switch i32 %.1108151.i.i, label %bb.hl [
    i32 -6, label %vht_exclusive_skip_scidx.exit.i.i
    i32 -130, label %bb.hj
    i32 126, label %bb.hk
  ]

bb.hj:                                            ; preds = %bb.hn, %bb.hi
  br label %vht_exclusive_skip_scidx.exit.i.i

bb.hk:                                            ; preds = %bb.hn, %bb.hi
  br label %vht_exclusive_skip_scidx.exit.i.i

bb.hl:                                            ; preds = %bb.hi
  %i.bey = add i32 %.1108151.i.i, 2
  br label %vht_exclusive_skip_scidx.exit.i.i

bb.hm:                                            ; preds = %bb.hh
  %cond.i.i.i = icmp eq i32 %.1108151.i.i, -6
  %i.bez = add i32 %.1108151.i.i, 4
  %spec.select29.i.i.i = select i1 %cond.i.i.i, i32 6, i32 %i.bez
  br label %vht_exclusive_skip_scidx.exit.i.i

bb.hn:                                            ; preds = %bb.hh
  switch i32 %.1108151.i.i, label %bb.ho [
    i32 -6, label %vht_exclusive_skip_scidx.exit.i.i
    i32 -130, label %bb.hj
    i32 126, label %bb.hk
  ]

bb.ho:                                            ; preds = %bb.hn
  %i.bfa = add i32 %.1108151.i.i, 8
  br label %vht_exclusive_skip_scidx.exit.i.i

vht_exclusive_skip_scidx.exit.i.i:                ; preds = %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hg, %bb.hf, %bb.he, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv
  %.0.i136.i.i = phi i32 [ 130, %bb.hk ], [ %i.bes, %bb.hc ], [ %i.ber, %bb.hb ], [ 1, %bb.gx ], [ %i.ben, %bb.gv ], [ %i.beo, %bb.gw ], [ %i.beq, %bb.gz ], [ %i.bep, %bb.gy ], [ 6, %bb.hi ], [ -126, %bb.hj ], [ %spec.select.i.i.i, %bb.he ], [ 1, %bb.ha ], [ 6, %bb.hn ], [ %i.bev, %bb.hf ], [ %i.bfa, %bb.ho ], [ %spec.select29.i.i.i, %bb.hm ], [ %spec.select28.i.i.i, %bb.hg ], [ %i.bey, %bb.hl ]
  %i.bfb = add i32 %.0111150.i.i, 1               ; 2 uses
  %.not126.i.i = icmp sgt i32 %i.bfb, %i.bdt
  br i1 %.not126.i.i, label %.sink.split.i156, label %.preheader.i.i166, !llvm.loop !25

bb.hp:                                            ; preds = %bb.fu
  %i.bfc = load i32, ptr @hf_ieee80211_vht_group_id_management, align 4
  %i.bfd = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bfc, ptr noundef %1, i32 noundef %i.bbb, i32 noundef -1, i32 noundef 0)
  %i.bfe = load i32, ptr @ett_vht_grpidmgmt, align 4
  %i.bff = tail call ptr @proto_item_add_subtree(ptr noundef %i.bfd, i32 noundef %i.bfe) ; 2 uses
  %i.bfg = tail call i64 @tvb_get_letoh64(ptr noundef %1, i32 noundef %i.bbb) ; 3 uses
  %i.bfh = load i32, ptr @hf_ieee80211_vht_membership_status_array, align 4
  %i.bfi = tail call ptr @proto_tree_add_item(ptr noundef %i.bff, i32 noundef %i.bfh, ptr noundef %1, i32 noundef %i.bbb, i32 noundef 8, i32 noundef 0)
  %i.bfj = load i32, ptr @ett_vht_msa, align 4
  %i.bfk = tail call ptr @proto_item_add_subtree(ptr noundef %i.bfi, i32 noundef %i.bfj)
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hs, %bb.hp
  %indvars.iv.i = phi i64 [ 0, %bb.hp ], [ %indvars.iv.next.i, %bb.hs ] ; 3 uses
  %i.bfl = shl nuw i64 1, %indvars.iv.i
  %i.bfm = and i64 %i.bfl, %i.bfg
  %.not81.i = icmp eq i64 %i.bfm, 0
  br i1 %.not81.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.bfn = load i32, ptr @hf_ieee80211_vht_membership_status_field, align 4
  %i.bfo = trunc nuw nsw i64 %indvars.iv.i to i32 ; 2 uses
  %i.bfp = lshr i32 %i.bfo, 3
  %i.bfq = add i32 %i.bfp, %i.bbb
  %i.bfr = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.bfk, i32 noundef %i.bfn, ptr noundef %1, i32 noundef %i.bfq, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.7977, i32 noundef %i.bfo) ; 0 uses
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i158 = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i158, label %bb.ht, label %bb.hq, !llvm.loop !26

bb.ht:                                            ; preds = %bb.hs
  %i.bfs = add i32 %3, 10                         ; 3 uses
  %i.bft = load i32, ptr @hf_ieee80211_vht_user_position_array, align 4
  %i.bfu = tail call ptr @proto_tree_add_item(ptr noundef %i.bff, i32 noundef %i.bft, ptr noundef %1, i32 noundef %i.bfs, i32 noundef 16, i32 noundef 0)
  %i.bfv = load i32, ptr @ett_vht_upa, align 4
  %i.bfw = tail call ptr @proto_item_add_subtree(ptr noundef %i.bfu, i32 noundef %i.bfv) ; 2 uses
  %i.bfx = tail call i64 @tvb_get_letoh64(ptr noundef %1, i32 noundef %i.bfs)
  br label %bb.hu

bb.hu:                                            ; preds = %bb.hw, %bb.ht
  %indvars.iv115.i = phi i64 [ 0, %bb.ht ], [ %indvars.iv.next116.i, %bb.hw ] ; 3 uses
  %indvars.iv106.i = phi i64 [ 0, %bb.ht ], [ %indvars.iv.next107.i, %bb.hw ] ; 3 uses
  %i.bfy = shl nuw i64 1, %indvars.iv115.i
  %i.bfz = and i64 %i.bfy, %i.bfg
  %.not.i159 = icmp eq i64 %i.bfz, 0
  br i1 %.not.i159, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.bga = lshr i64 %i.bfx, %indvars.iv106.i
  %i.bgb = trunc i64 %i.bga to i32
  %i.bgc = and i32 %i.bgb, 3                      ; 2 uses
  %i.bgd = load i32, ptr @hf_ieee80211_vht_user_position_field, align 4
  %i.bge = trunc nuw nsw i64 %indvars.iv106.i to i32
  %i.bgf = lshr i32 %i.bge, 3
  %i.bgg = add i32 %i.bgf, %i.bfs
  %i.bgh = trunc nuw nsw i64 %indvars.iv115.i to i32
  %i.bgi = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.bfw, i32 noundef %i.bgd, ptr noundef %1, i32 noundef %i.bgg, i32 noundef 1, i32 noundef %i.bgc, ptr noundef nonnull @.str.7978, i32 noundef %i.bgh, i32 noundef %i.bgc) ; 0 uses
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 2
  %indvars.iv.next116.i = add nuw nsw i64 %indvars.iv115.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next116.i, 32
  br i1 %exitcond109.not.i, label %bb.hx, label %bb.hu, !llvm.loop !27

bb.hx:                                            ; preds = %bb.hw
  %i.bgj = add i32 %3, 18                         ; 2 uses
  %i.bgk = tail call i64 @tvb_get_letoh64(ptr noundef %1, i32 noundef %i.bgj)
  br label %bb.hy

bb.hy:                                            ; preds = %bb.ia, %bb.hx
  %indvars.iv112.i = phi i64 [ 32, %bb.hx ], [ %indvars.iv.next113.i, %bb.ia ] ; 3 uses
  %indvars.iv106.1.i = phi i64 [ 0, %bb.hx ], [ %indvars.iv.next107.1.i, %bb.ia ] ; 3 uses
  %i.bgl = shl nuw i64 1, %indvars.iv112.i
  %i.bgm = and i64 %i.bgl, %i.bfg
  %.not.1.i = icmp eq i64 %i.bgm, 0
  br i1 %.not.1.i, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.bgn = lshr i64 %i.bgk, %indvars.iv106.1.i
  %i.bgo = trunc i64 %i.bgn to i32
  %i.bgp = and i32 %i.bgo, 3                      ; 2 uses
  %i.bgq = load i32, ptr @hf_ieee80211_vht_user_position_field, align 4
  %i.bgr = trunc nuw nsw i64 %indvars.iv106.1.i to i32
  %i.bgs = lshr i32 %i.bgr, 3
  %i.bgt = add i32 %i.bgs, %i.bgj
  %i.bgu = trunc nuw nsw i64 %indvars.iv112.i to i32
  %i.bgv = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.bfw, i32 noundef %i.bgq, ptr noundef %1, i32 noundef %i.bgt, i32 noundef 1, i32 noundef %i.bgp, ptr noundef nonnull @.str.7978, i32 noundef %i.bgu, i32 noundef %i.bgp) ; 0 uses
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %indvars.iv.next107.1.i = add nuw nsw i64 %indvars.iv106.1.i, 2
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond109.1.not.i = icmp eq i64 %indvars.iv.next113.i, 64
  br i1 %exitcond109.1.not.i, label %bb.ib, label %bb.hy, !llvm.loop !27

bb.ib:                                            ; preds = %bb.ia
  %i.bgw = add i32 %3, 26
  br label %.sink.split.i156

bb.ic:                                            ; preds = %bb.fu
  %i.bgx = load i32, ptr @hf_ieee80211_vht_operation_mode_notification, align 4
  %i.bgy = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bgx, ptr noundef %1, i32 noundef %i.bbb, i32 noundef -1, i32 noundef 0)
  %i.bgz = tail call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.bgy, ptr noundef nonnull @ei_ieee80211_vht_action) ; 0 uses
  br label %.sink.split.i156

.sink.split.i156:                                 ; preds = %vht_exclusive_skip_scidx.exit.i.i, %bb.ic, %bb.ib, %switch.lookup413, %._crit_edge.i.i164, %bb.fy
  %.sink133.i = phi i32 [ %i.bbb, %bb.ic ], [ %i.bgw, %bb.ib ], [ %i.bbx, %bb.fy ], [ %.1.lcssa.i.i165, %._crit_edge.i.i164 ], [ %.1.lcssa.i.i165, %switch.lookup413 ], [ %i.bek, %vht_exclusive_skip_scidx.exit.i.i ] ; 2 uses
  %i.bha = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %.sink133.i)
  %i.bhb = add i32 %i.bha, %.sink133.i
  br label %add_ff_action_vht.exit

add_ff_action_vht.exit:                           ; preds = %bb.fu, %.sink.split.i156
  %.1.i157 = phi i32 [ %i.bbb, %bb.fu ], [ %i.bhb, %.sink.split.i156 ]
  %i.bhc = sub i32 %.1.i157, %3
  br label %add_ff_action_spectrum_mgmt.exit

bb.id:                                            ; preds = %bb.a
  %i.bhd = load i32, ptr @hf_ieee80211_ff_category_code, align 4
  %i.bhe = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bhd, ptr noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bhf = add i32 %3, 1                          ; 2 uses
  %i.bhg = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bhf)
  %i.bhh = load i32, ptr @hf_ieee80211_ff_s1g_action, align 4
  %i.bhi = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bhh, ptr noundef %1, i32 noundef %i.bhf, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bhj = add i32 %3, 2                          ; 21 uses
  switch i8 %i.bhg, label %add_ff_action_s1g.exit [
    i8 0, label %bb.ie
    i8 1, label %bb.if
    i8 2, label %bb.ig
    i8 3, label %bb.ih
    i8 4, label %bb.ii
    i8 5, label %bb.ij
    i8 6, label %bb.ik
    i8 7, label %bb.il
    i8 8, label %bb.im
    i8 9, label %bb.in
    i8 11, label %bb.io
  ]

bb.ie:                                            ; preds = %bb.id
  %i.bhk = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bhj)
  %i.bhl = getelementptr i8, ptr %2, i64 8
  %i.bhm = load ptr, ptr %i.bhl, align 8
  %i.bhn = zext i8 %i.bhk to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.bhm, i32 noundef 25, ptr noundef nonnull @.str.7925, i32 noundef %i.bhn)
  %i.bho = load i32, ptr @hf_ieee80211_ff_dialog_token, align 4
  %i.bhp = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bho, ptr noundef %1, i32 noundef %i.bhj, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bhq = add i32 %3, 3                          ; 2 uses
  %i.bhr = tail call i32 @add_tagged_field_with_validation(ptr noundef %2, ptr noundef %0, ptr noundef %1, i32 noundef %i.bhq, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.bhs = add i32 %i.bhr, %i.bhq
  br label %add_ff_action_s1g.exit

bb.if:                                            ; preds = %bb.id
  %i.bht = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bhj)
  %i.bhu = getelementptr i8, ptr %2, i64 8
  %i.bhv = load ptr, ptr %i.bhu, align 8
  %i.bhw = zext i8 %i.bht to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.bhv, i32 noundef 25, ptr noundef nonnull @.str.7925, i32 noundef %i.bhw)
  %i.bhx = load i32, ptr @hf_ieee80211_ff_dialog_token, align 4
  %i.bhy = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bhx, ptr noundef %1, i32 noundef %i.bhj, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bhz = add i32 %3, 3                          ; 2 uses
  %i.bia = tail call i32 @add_tagged_field_with_validation(ptr noundef %2, ptr noundef %0, ptr noundef %1, i32 noundef %i.bhz, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.bib = add i32 %i.bia, %i.bhz
  br label %add_ff_action_s1g.exit

bb.ig:                                            ; preds = %bb.id
  %i.bic = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bhj)
  %i.bid = getelementptr i8, ptr %2, i64 8
  %i.bie = load ptr, ptr %i.bid, align 8
  %i.bif = zext i8 %i.bic to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.bie, i32 noundef 25, ptr noundef nonnull @.str.7925, i32 noundef %i.bif)
  %i.big = load i32, ptr @hf_ieee80211_ff_dialog_token, align 4
  %i.bih = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.big, ptr noundef %1, i32 noundef %i.bhj, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bii = add i32 %3, 3
  %i.bij = load i32, ptr @hf_ieee80211_s1g_sync_control, align 4
  %i.bik = load i32, ptr @ett_s1g_sync_control_tree, align 4
  %i.bil = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %0, ptr noundef %1, i32 noundef %i.bii, i32 noundef %i.bij, i32 noundef %i.bik, ptr noundef nonnull @s1g_sync_control_headers, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.bim = add i32 %3, 4
  br label %add_ff_action_s1g.exit

bb.ih:                                            ; preds = %bb.id
  %i.bin = tail call i32 @add_tagged_field_with_validation(ptr noundef %2, ptr noundef %0, ptr noundef %1, i32 noundef %i.bhj, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.bio = add i32 %i.bin, %i.bhj
  br label %add_ff_action_s1g.exit

bb.ii:                                            ; preds = %bb.id
  %i.bip = tail call i32 @add_tagged_field_with_validation(ptr noundef %2, ptr noundef %0, ptr noundef %1, i32 noundef %i.bhj, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.biq = add i32 %i.bip, %i.bhj
  br label %add_ff_action_s1g.exit

bb.ij:                                            ; preds = %bb.id
  %i.bir = tail call i32 @add_tagged_field_with_validation(ptr noundef %2, ptr noundef %0, ptr noundef %1, i32 noundef %i.bhj, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.bis = add i32 %i.bir, %i.bhj
  br label %add_ff_action_s1g.exit

bb.ik:                                            ; preds = %bb.id
  %i.bit = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bhj)
  %i.biu = getelementptr i8, ptr %2, i64 8
  %i.biv = load ptr, ptr %i.biu, align 8
  %i.biw = zext i8 %i.bit to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.biv, i32 noundef 25, ptr noundef nonnull @.str.7925, i32 noundef %i.biw)
  %i.bix = load i32, ptr @hf_ieee80211_ff_dialog_token, align 4
  %i.biy = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bix, ptr noundef %1, i32 noundef %i.bhj, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.biz = add i32 %3, 3                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  store i8 -40, ptr %i.l, align 1
  %i.bja = call i32 @add_tagged_field_with_validation(ptr noundef %2, ptr noundef %0, ptr noundef %1, i32 noundef %i.biz, i32 noundef 0, ptr noundef nonnull readonly %i.l, i32 noundef 1, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  %i.bjb = add i32 %i.bja, %i.biz
  br label %add_ff_action_s1g.exit

bb.il:                                            ; preds = %bb.id
  tail call fastcc void @add_ff_s1g_twt_teardown(ptr noundef %0, ptr noundef %1, i32 noundef %i.bhj)
  %i.bjc = add i32 %3, 3
  br label %add_ff_action_s1g.exit

bb.im:                                            ; preds = %bb.id
  %i.bjd = tail call i32 @add_tagged_field_with_validation(ptr noundef %2, ptr noundef %0, ptr noundef %1, i32 noundef %i.bhj, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.bje = add i32 %i.bjd, %i.bhj
  br label %add_ff_action_s1g.exit

bb.in:                                            ; preds = %bb.id
  %i.bjf = load i32, ptr @hf_ieee80211_s1g_sector_id_index, align 4
  %i.bjg = load i32, ptr @ett_s1g_sector_id_index, align 4
  %i.bjh = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %0, ptr noundef %1, i32 noundef %i.bhj, i32 noundef %i.bjf, i32 noundef %i.bjg, ptr noundef nonnull @s1g_sector_id_index_headers, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.bji = add i32 %3, 4
  br label %add_ff_action_s1g.exit

bb.io:                                            ; preds = %bb.id
  %i.bjj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bhj)
  %i.bjk = load i32, ptr @hf_ieee80211_s1g_twt_information_control, align 4
  %i.bjl = load i32, ptr @ett_s1g_twt_information_control, align 4
  %i.bjm = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %0, ptr noundef %1, i32 noundef %i.bhj, i32 noundef %i.bjk, i32 noundef %i.bjl, ptr noundef nonnull @s1g_twt_information_control_headers, i32 noundef -2147483648, i32 noundef 0) ; 0 uses
  %i.bjn = add i32 %3, 3                          ; 3 uses
  %i.bjo = zext i8 %i.bjj to i32                  ; 2 uses
  %i.bjp = and i32 %i.bjo, 96
  %.not.i.i170 = icmp eq i32 %i.bjp, 0
  br i1 %.not.i.i170, label %add_ff_action_s1g.exit, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.bjq = lshr i32 %i.bjo, 5
  %i.bjr = and i32 %i.bjq, 3                      ; 2 uses
  switch i32 %i.bjr, label %default.unreachable [
    i32 0, label %bb.is
    i32 1, label %.sink.split.i.i
    i32 2, label %bb.iq
    i32 3, label %bb.ir
  ]

bb.iq:                                            ; preds = %bb.ip
  br label %.sink.split.i.i

bb.ir:                                            ; preds = %bb.ip
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ir, %bb.iq, %bb.ip
  %hf_ieee80211_s1g_twt_next_twt_64.sink.i.i = phi ptr [ @hf_ieee80211_s1g_twt_next_twt_64, %bb.ir ], [ @hf_ieee80211_s1g_twt_next_twt_48, %bb.iq ], [ @hf_ieee80211_s1g_twt_next_twt_32, %bb.ip ]
  %.sink2.i.i = phi i32 [ 8, %bb.ir ], [ 6, %bb.iq ], [ 4, %bb.ip ] ; 2 uses
  %i.bjs = load i32, ptr %hf_ieee80211_s1g_twt_next_twt_64.sink.i.i, align 4
  %i.bjt = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bjs, ptr noundef %1, i32 noundef %i.bjn, i32 noundef %.sink2.i.i, i32 noundef -2147483648) ; 0 uses
  br label %bb.is

bb.is:                                            ; preds = %.sink.split.i.i, %bb.ip
  %.0.i.i171 = phi i32 [ %i.bjr, %bb.ip ], [ %.sink2.i.i, %.sink.split.i.i ]
  %i.bju = add i32 %.0.i.i171, %i.bjn
  br label %add_ff_action_s1g.exit

add_ff_action_s1g.exit:                           ; preds = %bb.id, %bb.ie, %bb.if, %bb.ig, %bb.ih, %bb.ii, %bb.ij, %bb.ik, %bb.il, %bb.im, %bb.in, %bb.io, %bb.is
  %.0.i172 = phi i32 [ %i.bhj, %bb.id ], [ %i.bhs, %bb.ie ], [ %i.bib, %bb.if ], [ %i.bim, %bb.ig ], [ %i.bio, %bb.ih ], [ %i.biq, %bb.ii ], [ %i.bis, %bb.ij ], [ %i.bjb, %bb.ik ], [ %i.bjc, %bb.il ], [ %i.bje, %bb.im ], [ %i.bji, %bb.in ], [ %i.bju, %bb.is ], [ %i.bjn, %bb.io ]
  %i.bjv = sub i32 %.0.i172, %3
  br label %add_ff_action_spectrum_mgmt.exit

bb.it:                                            ; preds = %bb.a
end_hunk_0
