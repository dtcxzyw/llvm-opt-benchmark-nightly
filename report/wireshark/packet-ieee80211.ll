Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ieee80211?download=true
inline.NumInlined: 916
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 32
begin_hunk_0_@dissect_bss_available_admission_capacity_ie:bb.a
  %i.g = load i32, ptr @ett_tag_bss_bitmask_tree, align 4
  %i.h = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef %i.f, i32 noundef %i.g, ptr noundef nonnull @dissect_bss_available_admission_capacity_ie.ieee80211_tag_bss_avb_adm_cap_bitmask, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %i.i = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 0)
  %i.j = zext i16 %i.i to i32                     ; 12 uses
  %i.k = and i32 %i.j, 1
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr @hf_ieee80211_tag_bss_avb_adm_cap_up0, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 4, %bb.d ], [ 2, %bb.c ]        ; 3 uses
  %i.n = and i32 %i.j, 2
  %.not76 = icmp eq i32 %i.n, 0
  br i1 %.not76, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr @hf_ieee80211_tag_bss_avb_adm_cap_up1, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef %.0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.q = add nuw nsw i32 %.0, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %i.q, %bb.f ], [ %.0, %bb.e ]   ; 3 uses
  %i.r = and i32 %i.j, 4
  %.not77 = icmp eq i32 %i.r, 0
  br i1 %.not77, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i32, ptr @hf_ieee80211_tag_bss_avb_adm_cap_up2, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.s, ptr noundef %0, i32 noundef %.1, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.u = add nuw nsw i32 %.1, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i32 [ %i.u, %bb.h ], [ %.1, %bb.g ]   ; 3 uses
  %i.v = and i32 %i.j, 8
  %.not78 = icmp eq i32 %i.v, 0
  br i1 %.not78, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load i32, ptr @hf_ieee80211_tag_bss_avb_adm_cap_up3, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.w, ptr noundef %0, i32 noundef %.2, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.y = add nuw nsw i32 %.2, 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3 = phi i32 [ %i.y, %bb.j ], [ %.2, %bb.i ]   ; 3 uses
  %i.z = and i32 %i.j, 16
  %.not79 = icmp eq i32 %i.z, 0
  br i1 %.not79, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load i32, ptr @hf_ieee80211_tag_bss_avb_adm_cap_up4, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aa, ptr noundef %0, i32 noundef %.3, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ac = add nuw nsw i32 %.3, 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.4 = phi i32 [ %i.ac, %bb.l ], [ %.3, %bb.k ]  ; 3 uses
  %i.ad = and i32 %i.j, 32
  %.not80 = icmp eq i32 %i.ad, 0
  br i1 %.not80, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load i32, ptr @hf_ieee80211_tag_bss_avb_adm_cap_up5, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ae, ptr noundef %0, i32 noundef %.4, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ag = add nuw nsw i32 %.4, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.5 = phi i32 [ %i.ag, %bb.n ], [ %.4, %bb.m ]  ; 3 uses
  %i.ah = and i32 %i.j, 64
  %.not81 = icmp eq i32 %i.ah, 0
  br i1 %.not81, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = load i32, ptr @hf_ieee80211_tag_bss_avb_adm_cap_up6, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ai, ptr noundef %0, i32 noundef %.5, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ak = add nuw nsw i32 %.5, 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.6 = phi i32 [ %i.ak, %bb.p ], [ %.5, %bb.o ]  ; 3 uses
  %i.al = and i32 %i.j, 128
  %.not82 = icmp eq i32 %i.al, 0
  br i1 %.not82, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = load i32, ptr @hf_ieee80211_tag_bss_avb_adm_cap_up7, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.am, ptr noundef %0, i32 noundef %.6, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ao = add nuw nsw i32 %.6, 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.7 = phi i32 [ %i.ao, %bb.r ], [ %.6, %bb.q ]  ; 3 uses
  %i.ap = and i32 %i.j, 256
  %.not83 = icmp eq i32 %i.ap, 0
  br i1 %.not83, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = load i32, ptr @hf_ieee80211_tag_bss_avb_adm_cap_ac0, align 4
  %i.ar = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aq, ptr noundef %0, i32 noundef %.7, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.as = add nuw nsw i32 %.7, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.8 = phi i32 [ %i.as, %bb.t ], [ %.7, %bb.s ]  ; 3 uses
  %i.at = and i32 %i.j, 512
  %.not84 = icmp eq i32 %i.at, 0
  br i1 %.not84, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = load i32, ptr @hf_ieee80211_tag_bss_avb_adm_cap_ac1, align 4
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.au, ptr noundef %0, i32 noundef %.8, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aw = add nuw nsw i32 %.8, 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.9 = phi i32 [ %i.aw, %bb.v ], [ %.8, %bb.u ]  ; 3 uses
  %i.ax = and i32 %i.j, 1024
  %.not85 = icmp eq i32 %i.ax, 0
  br i1 %.not85, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = load i32, ptr @hf_ieee80211_tag_bss_avb_adm_cap_ac2, align 4
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ay, ptr noundef %0, i32 noundef %.9, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ba = add nuw nsw i32 %.9, 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.10 = phi i32 [ %i.ba, %bb.x ], [ %.9, %bb.w ] ; 3 uses
  %i.bb = and i32 %i.j, 2048
  %.not86 = icmp eq i32 %i.bb, 0
  br i1 %.not86, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = load i32, ptr @hf_ieee80211_tag_bss_avb_adm_cap_ac3, align 4
  %i.bd = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bc, ptr noundef %0, i32 noundef %.10, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.be = add nuw nsw i32 %.10, 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.b
  %.074 = phi i32 [ 0, %bb.b ], [ %i.be, %bb.z ], [ %.10, %bb.y ]
  ret i32 %.074
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @ieee80211_tag_ie_68_conflict(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 7 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = tail call i32 @tvb_reported_length(ptr noundef %0) ; 3 uses
  %i.f = icmp sgt i32 %i.e, 19
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %3, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr i8, ptr %3, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 7 uses
  %i.k = load i32, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i16 1, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i8 0, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i8 0, ptr %i.d, align 1
  %i.l = load i32, ptr @hf_ieee80211_tag_wapi_param_set_version, align 4
  %i.m = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.n = load i16, ptr %i.a, align 2              ; 2 uses
  %.not.i = icmp eq i16 %i.n, 1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = zext i16 %i.n to i32
  %i.p = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.h, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10404, i32 noundef %i.o) ; 0 uses
  br label %dissect_wapi_param_set.exit

bb.d:                                             ; preds = %bb.b
  %i.q = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.r = load i32, ptr @hf_ieee80211_tag_wapi_param_set_akm_suite_count, align 4
  %i.s = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.r, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef -2147483648)
  %.not107.i = icmp eq i16 %i.q, 0
  br i1 %.not107.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.j, ptr noundef nonnull @.str.10405)
  %i.t = getelementptr i8, ptr %1, i64 416        ; 3 uses
  %wide.trip.count.i = zext i16 %i.q to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.i = phi i32 [ 0, %bb.e ], [ %i.ac, %bb.f ]
  %.098110.i = phi i32 [ 4, %bb.e ], [ %i.ab, %bb.f ] ; 3 uses
  %i.u = load i32, ptr @ett_tag_wapi_param_set_akm_tree, align 4
  %i.v = call ptr @proto_item_add_subtree(ptr noundef %i.s, i32 noundef %i.u) ; 2 uses
  %i.w = load i32, ptr @hf_ieee80211_tag_wapi_param_set_akm_suite_oui, align 4
  %i.x = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.w, ptr noundef %0, i32 noundef %.098110.i, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.y = or disjoint i32 %.098110.i, 3
  %i.z = load i32, ptr @hf_ieee80211_tag_wapi_param_set_akm_suite_type, align 4
  %i.aa = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.v, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.y, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.ab = add nuw nsw i32 %.098110.i, 4           ; 3 uses
  %i.ac = add nuw nsw i32 %indvars.iv.i, 1        ; 3 uses
  %i.ad = load ptr, ptr %i.t, align 8
  %i.ae = load i8, ptr %i.c, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = call ptr @val_to_str(ptr noundef %i.ad, i32 noundef %i.af, ptr noundef nonnull @ieee80211_wapi_suite_type_short, ptr noundef nonnull @.str.10407)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.j, ptr noundef nonnull @.str.10406, i32 noundef %i.ac, ptr noundef %i.ag)
  %exitcond.not.i = icmp eq i32 %i.ac, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !llvm.loop !119

bb.g:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.j, ptr noundef nonnull @.str.10408)
  %i.ah = load i32, ptr @hf_ieee80211_tag_wapi_param_set_ucast_cipher_suite_count, align 4
  %i.ai = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %2, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.ab, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.b)
  %i.aj = load i16, ptr %i.b, align 2
  %.not108.i = icmp eq i16 %i.aj, 0
  br i1 %.not108.i, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ak = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.h, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10409) ; 0 uses
  br label %dissect_wapi_param_set.exit

bb.i:                                             ; preds = %bb.g
  %4 = or disjoint i32 %i.ab, 2                   ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.j, ptr noundef nonnull @.str.10410)
  %i.al = load i16, ptr %i.b, align 2
  %.not116.i = icmp eq i16 %i.al, 0
  br i1 %.not116.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %indvars.iv120.i = phi i32 [ %i.au, %.lr.ph.i ], [ 0, %bb.i ]
  %.199112.i = phi i32 [ %i.at, %.lr.ph.i ], [ %4, %bb.i ] ; 3 uses
  %i.am = load i32, ptr @ett_tag_wapi_param_set_ucast_tree, align 4
  %i.an = call ptr @proto_item_add_subtree(ptr noundef %i.ai, i32 noundef %i.am) ; 2 uses
  %i.ao = load i32, ptr @hf_ieee80211_tag_wapi_param_set_ucast_cipher_suite_oui, align 4
  %i.ap = call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.ao, ptr noundef %0, i32 noundef %.199112.i, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aq = add nuw nsw i32 %.199112.i, 3
  %i.ar = load i32, ptr @hf_ieee80211_tag_wapi_param_set_ucast_cipher_suite_type, align 4
  %i.as = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.an, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.aq, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.d) ; 0 uses
  %i.at = add nuw nsw i32 %.199112.i, 4           ; 2 uses
  %i.au = add nuw nsw i32 %indvars.iv120.i, 1     ; 3 uses
  %i.av = load ptr, ptr %i.t, align 8
  %i.aw = load i8, ptr %i.d, align 1
  %i.ax = zext i8 %i.aw to i32
  %i.ay = call ptr @val_to_str(ptr noundef %i.av, i32 noundef %i.ax, ptr noundef nonnull @ieee80211_wapi_cipher_type, ptr noundef nonnull @.str.10407)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.j, ptr noundef nonnull @.str.10406, i32 noundef %i.au, ptr noundef %i.ay)
  %i.az = load i16, ptr %i.b, align 2
  %i.ba = zext i16 %i.az to i32
  %i.bb = icmp samesign ult i32 %i.au, %i.ba
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !120

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.i
  %.199.lcssa.i = phi i32 [ %4, %bb.i ], [ %i.at, %.lr.ph.i ] ; 5 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.j, ptr noundef nonnull @.str.10408)
  %i.bc = load i32, ptr @hf_ieee80211_tag_wapi_param_set_mcast_cipher_suite_oui, align 4
  %i.bd = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bc, ptr noundef %0, i32 noundef %.199.lcssa.i, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.be = add i32 %.199.lcssa.i, 3                ; 2 uses
  %i.bf = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.be)
  %i.bg = load i32, ptr @hf_ieee80211_tag_wapi_param_set_mcast_cipher_suite_type, align 4
  %i.bh = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bg, ptr noundef %0, i32 noundef %i.be, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bi = add i32 %.199.lcssa.i, 4
  %i.bj = load ptr, ptr %i.t, align 8
  %i.bk = zext i8 %i.bf to i32
  %i.bl = call ptr @val_to_str(ptr noundef %i.bj, i32 noundef %i.bk, ptr noundef nonnull @ieee80211_wapi_cipher_type, ptr noundef nonnull @.str.10407)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.j, ptr noundef nonnull @.str.10412, ptr noundef %i.bl)
  %i.bm = load i32, ptr @hf_ieee80211_tag_wapi_param_set_capab, align 4
  %i.bn = load i32, ptr @ett_tag_wapi_param_set_preauth_tree, align 4
  %i.bo = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %2, ptr noundef %0, i32 noundef %i.bi, i32 noundef %i.bm, i32 noundef %i.bn, ptr noundef nonnull @dissect_wapi_param_set.ieee80211_tag_wapi_param_set, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %i.bp = and i32 %i.k, -3
  %or.cond.i = icmp eq i32 %i.bp, 0
  br i1 %or.cond.i, label %bb.k, label %dissect_wapi_param_set.exit

bb.j:                                             ; preds = %bb.g
  %i.bq = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.h, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10411) ; 0 uses
  br label %dissect_wapi_param_set.exit

bb.k:                                             ; preds = %._crit_edge.i
  %i.br = add i32 %.199.lcssa.i, 6                ; 2 uses
  %i.bs = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.br) ; 2 uses
  %i.bt = load i32, ptr @hf_ieee80211_tag_wapi_param_set_bkid_count, align 4
  %i.bu = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bt, ptr noundef %0, i32 noundef %i.br, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %.not109.i = icmp eq i16 %i.bs, 0
  br i1 %.not109.i, label %dissect_wapi_param_set.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.k
  %i.bv = add i32 %.199.lcssa.i, 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.2115.i = phi i16 [ %i.bz, %.preheader.i ], [ 0, %.preheader.i.preheader ]
  %.2100114.i = phi i32 [ %i.by, %.preheader.i ], [ %i.bv, %.preheader.i.preheader ] ; 2 uses
  %i.bw = load i32, ptr @hf_ieee80211_tag_wapi_param_set_bkid_list, align 4
  %i.bx = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bw, ptr noundef %0, i32 noundef %.2100114.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.by = add nuw nsw i32 %.2100114.i, 16
  %i.bz = add nuw i16 %.2115.i, 1                 ; 2 uses
  %exitcond123.not.i = icmp eq i16 %i.bz, %i.bs
  br i1 %exitcond123.not.i, label %dissect_wapi_param_set.exit, label %.preheader.i, !llvm.loop !121

dissect_wapi_param_set.exit:                      ; preds = %.preheader.i, %bb.c, %bb.h, %._crit_edge.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %dissect_bss_ac_access_delay_ie.exit

bb.l:                                             ; preds = %bb.a
  %.not.i15 = icmp eq i32 %i.e, 4
  br i1 %.not.i15, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr i8, ptr %3, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.cb, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10416, i32 noundef range(i32 -2147483648, 20) %i.e) ; 0 uses
  br label %dissect_bss_ac_access_delay_ie.exit

bb.n:                                             ; preds = %bb.l
  %i.cd = load i32, ptr @hf_ieee80211_tag_bss_avg_ac_access_delay_be, align 4
  %i.ce = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cd, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.cf = load i32, ptr @hf_ieee80211_tag_bss_avg_ac_access_delay_bk, align 4
  %i.cg = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cf, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ch = load i32, ptr @hf_ieee80211_tag_bss_avg_ac_access_delay_vi, align 4
  %i.ci = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ch, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.cj = load i32, ptr @hf_ieee80211_tag_bss_avg_ac_access_delay_vo, align 4
  %i.ck = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cj, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %dissect_bss_ac_access_delay_ie.exit

dissect_bss_ac_access_delay_ie.exit:              ; preds = %bb.n, %bb.m, %dissect_wapi_param_set.exit
  %i.cl = call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.cl
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_bss_max_idle_period(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_ieee80211_tag_bss_max_idle_period, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ieee80211_tag_bss_max_idle_options, align 4
  %i.d = load i32, ptr @ett_max_idle_period_options, align 4
  %i.e = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %2, ptr noundef %0, i32 noundef 2, i32 noundef %i.c, i32 noundef %i.d, ptr noundef nonnull @ieee80211_bss_max_idle_options, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  ret i32 3
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_tfs_request(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = tail call i32 @tvb_reported_length(ptr noundef %0) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i16 -8959, ptr %i.a, align 2
  %i.c = load i32, ptr @hf_ieee80211_tag_tfs_request_id, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.e = load i32, ptr @hf_ieee80211_tag_tfs_request_ac_delete_after_match, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.g = load i32, ptr @hf_ieee80211_tag_tfs_request_ac_notify, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.i = icmp slt i32 %i.b, 4
  br i1 %i.i, label %bb.b, label %.preheader83

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_ieee80211_missing_data, ptr noundef nonnull @.str.10417) ; 0 uses
  br label %bb.h

.preheader83:                                     ; preds = %bb.a, %.loopexit
  %i.k = phi i32 [ %i.ac, %.loopexit ], [ 3, %bb.a ] ; 2 uses
  %.07285 = phi i32 [ %i.t, %.loopexit ], [ 2, %bb.a ] ; 3 uses
  %i.l = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.07285)
  %i.m = load i32, ptr @hf_ieee80211_tag_tfs_request_subelem_id, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef %.07285, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.o = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.k)
  %i.p = load i32, ptr @hf_ieee80211_tag_tfs_request_subelem_len, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.k, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.r = add i32 %.07285, 2                       ; 3 uses
  %i.s = zext i8 %i.o to i32                      ; 2 uses
  %i.t = add i32 %i.r, %i.s                       ; 7 uses
  %.not = icmp sgt i32 %i.t, %i.b
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %.preheader83
  %i.u = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10418) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %.preheader83
  %cond = icmp eq i8 %i.l, 1
  br i1 %cond, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.z, %bb.d ], [ %i.r, %bb.c ]  ; 3 uses
  %i.v = icmp slt i32 %.0, %i.t
  br i1 %i.v, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.preheader
  %i.w = load i32, ptr %3, align 8
  %i.x = call i32 @add_tagged_field_with_validation(ptr noundef %1, ptr noundef %2, ptr noundef %0, i32 noundef %.0, i32 noundef %i.w, ptr noundef nonnull readonly %i.a, i32 noundef 2, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null) ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  %i.z = add i32 %i.x, %.0
  br i1 %i.y, label %.loopexit, label %.preheader

bb.e:                                             ; preds = %bb.c
  %i.aa = load i32, ptr @hf_ieee80211_tag_tfs_request_subelem, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.r, i32 noundef %i.s, i32 noundef 0) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.e
  %i.ac = add i32 %i.t, 1                         ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.b
  br i1 %i.ad, label %.preheader83, label %bb.f, !llvm.loop !122

bb.f:                                             ; preds = %.loopexit
  %i.ae = icmp slt i32 %i.t, %i.b
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = sub i32 %i.b, %i.t
  %i.ag = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_ieee80211_extra_data, ptr noundef %0, i32 noundef %i.t, i32 noundef %i.af, ptr noundef nonnull @.str.10419) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.thread, %bb.b
  %i.ah = tail call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %i.ah
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_tfs_response(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
end_hunk_0
begin_hunk_1_@dissect_ht_control:bb.a
bb.r:                                             ; preds = %bb.h
  %i.gd = call i32 @tvb_get_letohl(ptr noundef %2, i32 noundef range(i32 -4, 65532) %3)
  %i.ge = lshr i32 %i.gd, %i.ap
  %i.gf = and i32 %i.ge, 1023                     ; 3 uses
  %i.gg = load i32, ptr @ett_ieee80211_control_srs, align 4
  %i.gh = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.x, ptr noundef %2, i32 noundef range(i32 -4, 65532) %3, i32 noundef 4, i32 noundef %i.gg, ptr noundef null, ptr noundef nonnull @.str.10170, i32 noundef %i.gf) ; 2 uses
  %i.gi = load i32, ptr @hf_ieee80211_he_srs_ppdu_resp_dur, align 4
  %i.gj = call ptr @proto_tree_add_uint(ptr noundef %i.gh, i32 noundef %i.gi, ptr noundef %2, i32 noundef range(i32 -4, 65532) %3, i32 noundef 4, i32 noundef %i.gf) ; 0 uses
  %i.gk = load i32, ptr @hf_ieee80211_he_srs_reserved, align 4
  %i.gl = call ptr @proto_tree_add_uint(ptr noundef %i.gh, i32 noundef %i.gk, ptr noundef %2, i32 noundef range(i32 -4, 65532) %3, i32 noundef 4, i32 noundef %i.gf) ; 0 uses
  br label %bb.x

bb.s:                                             ; preds = %bb.h
  %i.gm = call i32 @tvb_get_letohl(ptr noundef %2, i32 noundef range(i32 -4, 65532) %3)
  %i.gn = lshr i32 %i.gm, %i.ap
  %i.go = and i32 %i.gn, 1048575                  ; 3 uses
  %i.gp = load i32, ptr @ett_ieee80211_control_aar, align 4
  %i.gq = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.x, ptr noundef %2, i32 noundef range(i32 -4, 65532) %3, i32 noundef 4, i32 noundef %i.gp, ptr noundef null, ptr noundef nonnull @.str.10171, i32 noundef %i.go) ; 2 uses
  %i.gr = load i32, ptr @hf_ieee80211_he_aar_assisted_ap_bitmap, align 4
  %i.gs = call ptr @proto_tree_add_uint(ptr noundef %i.gq, i32 noundef %i.gr, ptr noundef %2, i32 noundef range(i32 -4, 65532) %3, i32 noundef 4, i32 noundef %i.go) ; 0 uses
  %i.gt = load i32, ptr @hf_ieee80211_he_aar_reserved, align 4
  %i.gu = call ptr @proto_tree_add_uint(ptr noundef %i.gq, i32 noundef %i.gt, ptr noundef %2, i32 noundef range(i32 -4, 65532) %3, i32 noundef 4, i32 noundef %i.go) ; 0 uses
  br label %bb.x

bb.t:                                             ; preds = %bb.h
  br i1 %i.aq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gv = call i32 @tvb_get_letohl(ptr noundef %2, i32 noundef range(i32 -4, 65532) %3)
  %i.gw = lshr i32 %i.gv, 6                       ; 2 uses
  %i.gx = load i32, ptr @ett_ieee80211_a_control_ones, align 4
  %i.gy = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.x, ptr noundef %2, i32 noundef range(i32 -4, 65532) %3, i32 noundef 4, i32 noundef %i.gx, ptr noundef null, ptr noundef nonnull @.str.10172, i32 noundef %i.gw)
  %i.gz = load i32, ptr @hf_ieee80211_he_a_control_ones, align 4
  %i.ha = call ptr @proto_tree_add_uint(ptr noundef %i.gy, i32 noundef %i.gz, ptr noundef %2, i32 noundef range(i32 -4, 65532) %3, i32 noundef 4, i32 noundef %i.gw) ; 0 uses
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.hb = call ptr @expert_add_info(ptr noundef %0, ptr noundef %i.x, ptr noundef nonnull @ei_ieee80211_invalid_control_length) ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.h
  %i.hc = call ptr @expert_add_info(ptr noundef %0, ptr noundef %i.x, ptr noundef nonnull @ei_ieee80211_invalid_control_id) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.w
  %.sink = phi i32 [ 32, %bb.w ], [ 12, %bb.k ], [ 26, %bb.l ], [ 26, %bb.m ], [ 8, %bb.n ], [ 10, %bb.o ], [ 8, %bb.p ], [ 6, %bb.q ], [ 10, %bb.r ], [ 20, %bb.s ], [ 26, %bb.i ], [ 26, %bb.j ], [ 26, %bb.v ], [ 26, %bb.u ]
  %i.hd = add nuw nsw i32 %i.ap, %.sink           ; 2 uses
  %i.he = and i32 %i.hd, 255                      ; 2 uses
  %i.hf = icmp samesign ult i32 %i.he, 32
  br i1 %i.hf, label %bb.e, label %.loopexit

bb.y:                                             ; preds = %bb.c
  %i.hg = load i32, ptr @hf_ieee80211_htc_mrq, align 4
  %i.hh = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.hg, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.hi = load i32, ptr %i.a, align 4             ; 3 uses
  %i.hj = and i32 %i.hi, 536870912
  %.not228 = icmp eq i32 %i.hj, 0
  br i1 %.not228, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hk = and i32 %i.hi, 4
  %.not229 = icmp eq i32 %i.hk, 0
  %hf_ieee80211_htc_msi_stbc_reserved.hf_ieee80211_htc_msi = select i1 %.not229, ptr @hf_ieee80211_htc_msi_stbc_reserved, ptr @hf_ieee80211_htc_msi
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.hl = and i32 %i.hi, 65024
  %i.hm = icmp eq i32 %i.hl, 65024
  br i1 %i.hm, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hn = load i32, ptr @hf_ieee80211_htc_compressed_msi, align 4
  %i.ho = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.hn, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %hf_ieee80211_htc_msi_stbc_reserved.sink240.sink = phi ptr [ %hf_ieee80211_htc_msi_stbc_reserved.hf_ieee80211_htc_msi, %bb.z ], [ @hf_ieee80211_htc_ppdu_stbc_encoded, %bb.ab ], [ @hf_ieee80211_htc_msi_stbc_reserved, %bb.aa ]
  %hf_ieee80211_htc_gid_l.sink = phi ptr [ @hf_ieee80211_htc_mfsi, %bb.z ], [ @hf_ieee80211_htc_gid_l, %bb.ab ], [ @hf_ieee80211_htc_gid_l, %bb.aa ]
  %i.hp = load i32, ptr %hf_ieee80211_htc_msi_stbc_reserved.sink240.sink, align 4
  %i.hq = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.hp, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.hr = load i32, ptr %hf_ieee80211_htc_gid_l.sink, align 4
  %i.hs = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.hr, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ht = load i32, ptr @hf_ieee80211_htc_mfb, align 4
  %i.hu = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ht, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648)
  %i.hv = load i32, ptr @ett_mfb_subtree, align 4
  %i.hw = call ptr @proto_item_add_subtree(ptr noundef %i.hu, i32 noundef %i.hv) ; 4 uses
  %hf_ieee80211_htc_s1g_num_sts.val = load i32, ptr @hf_ieee80211_htc_s1g_num_sts, align 4
  %hf_ieee80211_htc_num_sts.val = load i32, ptr @hf_ieee80211_htc_num_sts, align 4
  %i.hx = select i1 %.0.i, i32 %hf_ieee80211_htc_s1g_num_sts.val, i32 %hf_ieee80211_htc_num_sts.val
  %i.hy = call ptr @proto_tree_add_item(ptr noundef %i.hw, i32 noundef %i.hx, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %hf_ieee80211_htc_s1g_vht_mcs.val = load i32, ptr @hf_ieee80211_htc_s1g_vht_mcs, align 4
  %hf_ieee80211_htc_vht_mcs.val = load i32, ptr @hf_ieee80211_htc_vht_mcs, align 4
  %i.hz = select i1 %.0.i, i32 %hf_ieee80211_htc_s1g_vht_mcs.val, i32 %hf_ieee80211_htc_vht_mcs.val
  %i.ia = call ptr @proto_tree_add_item(ptr noundef %i.hw, i32 noundef %i.hz, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %hf_ieee80211_htc_s1g_bw.val = load i32, ptr @hf_ieee80211_htc_s1g_bw, align 4
  %hf_ieee80211_htc_bw.val = load i32, ptr @hf_ieee80211_htc_bw, align 4
  %i.ib = select i1 %.0.i, i32 %hf_ieee80211_htc_s1g_bw.val, i32 %hf_ieee80211_htc_bw.val
  %i.ic = call ptr @proto_tree_add_item(ptr noundef %i.hw, i32 noundef %i.ib, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.id = load i32, ptr @hf_ieee80211_htc_snr, align 4
  %i.ie = call ptr @proto_tree_add_item(ptr noundef %i.hw, i32 noundef %i.id, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.if = load i32, ptr %i.a, align 4
  %i.ig = and i32 %i.if, 65024
  %i.ih = icmp eq i32 %i.ig, 65024
  br i1 %i.ih, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ii = load i32, ptr @hf_ieee80211_htc_gid_h, align 4
  %i.ij = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ii, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ik = load i32, ptr @hf_ieee80211_htc_coding_type, align 4
  %i.il = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ik, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %hf_ieee80211_htc_reserved3.sink = phi ptr [ @hf_ieee80211_htc_fb_tx_type, %bb.ad ], [ @hf_ieee80211_htc_reserved3, %bb.ac ]
  %i.im = load i32, ptr %hf_ieee80211_htc_reserved3.sink, align 4
  %i.in = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.im, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.io = load i32, ptr @hf_ieee80211_htc_unsolicited_mfb, align 4
  %i.ip = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.io, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %.loopexit

bb.af:                                            ; preds = %sta_is_s1g.exit
  %i.iq = load i32, ptr @hf_ieee80211_htc_ht_lac, align 4
  %i.ir = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.iq, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648)
  %i.is = load i32, ptr @ett_lac_subtree, align 4
  %i.it = call ptr @proto_item_add_subtree(ptr noundef %i.ir, i32 noundef %i.is) ; 6 uses
  %i.iu = load i32, ptr @hf_ieee80211_htc_lac_trq, align 4
  %i.iv = call ptr @proto_tree_add_item(ptr noundef %i.it, i32 noundef %i.iu, ptr noundef %2, i32 noundef %3, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.iw = load i32, ptr %i.a, align 4
  %i.ix = and i32 %i.iw, 60
  %i.iy = icmp eq i32 %i.ix, 56
  br i1 %i.iy, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.iz = load i32, ptr @hf_ieee80211_htc_lac_mai_mrq, align 4
  %i.ja = call ptr @proto_tree_add_item(ptr noundef %i.it, i32 noundef %i.iz, ptr noundef %2, i32 noundef %3, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.jb = load i32, ptr %i.a, align 4
  %i.jc = and i32 %i.jb, 4
  %.not226 = icmp eq i32 %i.jc, 0
  %hf_ieee80211_htc_lac_mai_reserved.hf_ieee80211_htc_lac_mai_msi = select i1 %.not226, ptr @hf_ieee80211_htc_lac_mai_reserved, ptr @hf_ieee80211_htc_lac_mai_msi
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %hf_ieee80211_htc_lac_mai_msi.sink = phi ptr [ %hf_ieee80211_htc_lac_mai_reserved.hf_ieee80211_htc_lac_mai_msi, %bb.ag ], [ @hf_ieee80211_htc_lac_mai_aseli, %bb.af ]
  %i.jd = load i32, ptr %hf_ieee80211_htc_lac_mai_msi.sink, align 4
  %i.je = call ptr @proto_tree_add_item(ptr noundef %i.it, i32 noundef %i.jd, ptr noundef %2, i32 noundef %3, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.jf = load i32, ptr @hf_ieee80211_htc_lac_mfsi, align 4
  %i.jg = call ptr @proto_tree_add_item(ptr noundef %i.it, i32 noundef %i.jf, ptr noundef %2, i32 noundef %3, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.jh = load i32, ptr %i.a, align 4
  %i.ji = and i32 %i.jh, 60
  %i.jj = icmp eq i32 %i.ji, 56
  br i1 %i.jj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jk = load i32, ptr @hf_ieee80211_htc_lac_asel_command, align 4
  %i.jl = call ptr @proto_tree_add_item(ptr noundef %i.it, i32 noundef %i.jk, ptr noundef %2, i32 noundef %3, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %hf_ieee80211_htc_lac_mfb.sink = phi ptr [ @hf_ieee80211_htc_lac_asel_data, %bb.ai ], [ @hf_ieee80211_htc_lac_mfb, %bb.ah ]
  %i.jm = load i32, ptr %hf_ieee80211_htc_lac_mfb.sink, align 4
  %i.jn = call ptr @proto_tree_add_item(ptr noundef %i.it, i32 noundef %i.jm, ptr noundef %2, i32 noundef %3, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.jo = load i32, ptr @hf_ieee80211_htc_cal_pos, align 4
  %i.jp = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.jo, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.jq = load i32, ptr @hf_ieee80211_htc_cal_seq, align 4
  %i.jr = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.jq, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.js = load i32, ptr @hf_ieee80211_htc_reserved1, align 4
  %i.jt = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.js, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ju = load i32, ptr @hf_ieee80211_htc_csi_steering, align 4
  %i.jv = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ju, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.jw = load i32, ptr @hf_ieee80211_htc_ndp_announcement, align 4
  %i.jx = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.jw, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.jy = load i32, ptr @hf_ieee80211_htc_reserved2, align 4
  %i.jz = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.jy, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %bb.f, %bb.ae, %bb.aj
  %i.ka = load i32, ptr %i.a, align 4
  %i.kb = and i32 %i.ka, 2
  %.not230 = icmp eq i32 %i.kb, 0
  br i1 %.not230, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.loopexit
  %i.kc = load i32, ptr @hf_ieee80211_htc_ac_constraint, align 4
  %i.kd = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.kc, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ke = load i32, ptr @hf_ieee80211_htc_rdg_more_ppdu, align 4
  %i.kf = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ke, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_ieee80211_he_eht_trigger(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 10, 17) %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load i32, ptr @ett_addr, align 4
  %i.d = tail call ptr @proto_tree_add_mac48_detail(ptr noundef nonnull @mac_ta, ptr noundef nonnull @mac_addr, i32 noundef %i.c, ptr noundef %0, ptr noundef %2, i32 noundef %3) ; 0 uses
  %i.e = add nuw nsw i32 %3, 6                    ; 13 uses
  %i.f = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.e)
  %i.g = icmp ult i32 %i.f, 8
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_ieee80211_missing_data, ptr noundef nonnull @.str.10173) ; 0 uses
  %i.i = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.aq

bb.c:                                             ; preds = %bb.a
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.e)
  %i.k = and i8 %i.j, 15                          ; 7 uses
  %i.l = add nuw nsw i32 %3, 12
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.l) ; 3 uses
  %i.n = add nuw nsw i32 %3, 14
  %i.o = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.n)
  %i.p = icmp ult i8 %i.m, -64
  %i.q = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = and i16 %i.o, 4096
  %.not = icmp eq i16 %i.s, 0
  %i.t = select i1 %.not, ptr @.str.8630, ptr @.str.10175
  %i.u = select i1 %i.p, ptr %i.t, ptr @.str.5179
  %i.v = getelementptr i8, ptr %1, i64 416
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = zext nneg i8 %i.k to i64
  %i.y = tail call ptr @val64_to_str_wmem(ptr noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @trigger_type_vals, ptr noundef nonnull @.str.613)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.r, i32 noundef 25, ptr noundef nonnull @.str.10174, ptr noundef nonnull %i.u, ptr noundef %i.y)
  %i.z = icmp samesign ugt i8 %i.k, 8
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.k to i32
  %i.ab = load i32, ptr @hf_ieee80211_he_trigger_type, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.e, i32 noundef 1, i32 noundef 0)
  %i.ad = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ac, ptr noundef nonnull @ei_ieee80211_inv_val, ptr noundef nonnull @.str.10176, i32 noundef %i.aa) ; 0 uses
  %i.ae = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.e)
  %i.af = add i32 %i.ae, 6
  br label %bb.aq

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr null, ptr %i.b, align 8
  %i.ag = tail call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef range(i32 16, 23) %i.e) ; 2 uses
  %i.ah = and i64 %i.ag, 36028797018963968
  %.not.not.i = icmp eq i64 %i.ah, 0
  %i.ai = lshr i64 %i.ag, 18
  %i.aj = trunc i64 %i.ai to i8
  %i.ak = and i8 %i.aj, 3
  store i8 %i.ak, ptr @global_he_trigger_bw, align 1
  %i.al = load i32, ptr @ett_he_trigger_common_info, align 4
  %i.am = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef range(i32 16, 23) %i.e, i32 noundef -1, i32 noundef %i.al, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.10178) ; 7 uses
  br i1 %.not.not.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %5 = or disjoint i32 %i.e, 8                    ; 4 uses
  %i.an = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %5)
  %i.ao = lshr i16 %i.an, 12
  %i.ap = and i16 %i.ao, 7                        ; 2 uses
  switch i16 %i.ap, label %bb.i [
    i16 0, label %bb.g
    i16 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr @hf_ieee80211_eht_trigger_common_info, align 4
  %i.ar = load i32, ptr @ett_he_trigger_base_common_info, align 4
  %i.as = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.am, ptr noundef %0, i32 noundef range(i32 16, 23) %i.e, i32 noundef %i.aq, i32 noundef %i.ar, ptr noundef nonnull @eht_common_info_headers, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.at = load i32, ptr @hf_ieee80211_uhr_trigger_common_info, align 4
  %i.au = load i32, ptr @ett_he_trigger_base_common_info, align 4
  %i.av = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.am, ptr noundef %0, i32 noundef range(i32 16, 23) %i.e, i32 noundef %i.at, i32 noundef %i.au, ptr noundef nonnull @uhr_common_info_headers, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.aw = zext nneg i16 %i.ap to i32
  %i.ax = load ptr, ptr %i.b, align 8
  %i.ay = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ax, ptr noundef nonnull @ei_ieee80211_inv_val, ptr noundef nonnull @.str.10179, i32 noundef %i.aw) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.az = load i32, ptr @hf_ieee80211_he_trigger_common_info, align 4
  %i.ba = load i32, ptr @ett_he_trigger_base_common_info, align 4
  %i.bb = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.am, ptr noundef %0, i32 noundef range(i32 16, 23) %i.e, i32 noundef %i.az, i32 noundef %i.ba, ptr noundef nonnull @common_info_headers, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %.pre.i = or disjoint i32 %i.e, 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.pre-phi.i = phi i32 [ %5, %bb.g ], [ %5, %bb.h ], [ %5, %bb.i ], [ %.pre.i, %bb.j ] ; 2 uses
  %cond.i = icmp eq i8 %i.k, 5
  br i1 %cond.i, label %bb.l, label %add_trigger_common_info.exit

bb.l:                                             ; preds = %bb.k
  %i.bc = load i32, ptr @hf_ieee80211_he_trigger_bar_ctrl, align 4
  %i.bd = load i32, ptr @ett_he_trigger_bar_ctrl, align 4
  %i.be = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.am, ptr noundef %0, i32 noundef range(i32 24, 31) %.pre-phi.i, i32 noundef %i.bc, i32 noundef %i.bd, ptr noundef nonnull @he_trig_frm_bar_ctrl_fields, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %i.bf = add nuw nsw i32 %3, 16
  %i.bg = load i32, ptr @hf_ieee80211_he_trigger_bar_info, align 4
  %i.bh = load i32, ptr @ett_he_trigger_bar_info, align 4
  %i.bi = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.am, ptr noundef %0, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef %i.bh, ptr noundef nonnull @he_trig_frm_bar_info_fields, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %i.bj = add nuw nsw i32 %3, 18
  br label %add_trigger_common_info.exit

add_trigger_common_info.exit:                     ; preds = %bb.k, %bb.l
  %.037.i = phi i32 [ %i.bj, %bb.l ], [ %.pre-phi.i, %bb.k ]
  %.0.i = phi i32 [ 12, %bb.l ], [ 8, %bb.k ]     ; 2 uses
  %i.bk = load ptr, ptr %i.b, align 8
  %i.bl = sub nuw nsw i32 %.037.i, %i.e
  call void @proto_item_set_len(ptr noundef %i.bk, i32 noundef %i.bl)
  %i.bm = add nuw nsw i32 %.0.i, 6                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.bn = add nuw nsw i32 %.0.i, %i.e             ; 8 uses
  %i.bo = icmp eq i8 %i.k, 8
  br i1 %i.bo, label %bb.m, label %bb.r

bb.m:                                             ; preds = %add_trigger_common_info.exit
  %i.bp = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bn)
  %i.bq = and i8 %i.bp, 15                        ; 4 uses
  %i.br = load ptr, ptr %i.q, align 8
  %i.bs = zext nneg i8 %i.bq to i32               ; 2 uses
  %i.bt = call ptr @rval_to_str_const(i32 noundef %i.bs, ptr noundef nonnull @ranging_trigger_subtype_vals, ptr noundef nonnull @.str.613)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.br, i32 noundef 25, ptr noundef nonnull @.str.246, ptr noundef %i.bt)
  %i.bu = icmp samesign ugt i8 %i.bq, 4
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = load i32, ptr @hf_ieee80211_ranging_trigger_subtype1, align 4
  %i.bw = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bv, ptr noundef %0, i32 noundef %i.bn, i32 noundef 1, i32 noundef 0)
  %i.bx = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bw, ptr noundef nonnull @ei_ieee80211_inv_val, ptr noundef nonnull @.str.10177, i32 noundef %i.bs) ; 0 uses
  %i.by = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.bn)
  %i.bz = add i32 %i.by, %i.bm
  br label %bb.aq

bb.o:                                             ; preds = %bb.m
  %i.ca = icmp eq i8 %i.bq, 4
  %i.cb = load i32, ptr @ett_he_trigger_ranging, align 4 ; 2 uses
  br i1 %i.ca, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load i32, ptr @hf_ieee80211_he_trigger_ranging_common_info_1, align 4
  %i.cd = call ptr @proto_tree_add_bitmask(ptr noundef %i.am, ptr noundef %0, i32 noundef %i.bn, i32 noundef %i.cc, i32 noundef %i.cb, ptr noundef nonnull @ranging_headers1, i32 noundef 0) ; 0 uses
  %i.ce = add nuw nsw i32 %i.bn, 1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cf = load i32, ptr @hf_ieee80211_he_trigger_ranging_common_info_2, align 4
  %i.cg = call ptr @proto_tree_add_bitmask(ptr noundef %i.am, ptr noundef %0, i32 noundef %i.bn, i32 noundef %i.cf, i32 noundef %i.cb, ptr noundef nonnull @ranging_headers2, i32 noundef -2147483648) ; 0 uses
  %i.ch = add nuw nsw i32 %i.bn, 2
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %add_trigger_common_info.exit
  %.067 = phi i8 [ %i.bq, %bb.p ], [ 4, %bb.q ], [ 0, %add_trigger_common_info.exit ]
  %.065 = phi i32 [ %i.ce, %bb.p ], [ %i.ch, %bb.q ], [ %i.bn, %add_trigger_common_info.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8
  %i.ci = load i32, ptr @ett_he_trigger_user_info, align 4
  %i.cj = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef range(i32 24, 37) %.065, i32 noundef -1, i32 noundef %i.ci, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5314) ; 16 uses
  %i.ck = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef range(i32 24, 37) %.065)
  %i.cl = and i16 %i.ck, 4095                     ; 2 uses
  %i.cm = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef range(i32 24, 37) %.065)
  %i.cn = add nsw i32 %.065, -1
  %i.co = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.cn)
  %.not129.i = icmp eq i16 %i.cl, 4095
  br i1 %.not129.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.cp = and i16 %i.co, 15
  %i.cq = icmp eq i8 %i.m, 1
  %i.cr = icmp eq i8 %i.m, 0
  %i.cs = and i16 %i.cm, 4096
  %.not112.i = icmp eq i16 %i.cs, 0
  %.not113.i = icmp eq i16 %i.cp, 0
  br label %bb.s

bb.s:                                             ; preds = %bb.ao, %.lr.ph.i
  %.0133.i = phi i1 [ false, %.lr.ph.i ], [ %.1.i, %bb.ao ]
  %.0106132.i = phi i16 [ %i.cl, %.lr.ph.i ], [ %i.eu, %bb.ao ] ; 2 uses
  %.0108131.i = phi i32 [ %.065, %.lr.ph.i ], [ %.2.i, %bb.ao ] ; 19 uses
  %.0121130.i = phi i32 [ 0, %.lr.ph.i ], [ %.2123.i, %bb.ao ] ; 6 uses
  %i.ct = icmp eq i16 %.0106132.i, 2007           ; 3 uses
  %i.cu = add i32 %.0108131.i, 4
  %i.cv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cu)
  %or.cond.i = and i1 %i.cq, %i.ct
  %i.cw = icmp slt i8 %i.cv, 0
  %or.cond4.i = select i1 %or.cond.i, i1 %i.cw, i1 false
  %or.cond6.i = and i1 %i.cr, %i.ct
  %or.cond114.i = or i1 %or.cond6.i, %or.cond4.i
  %.1.i = select i1 %or.cond114.i, i1 true, i1 %.0133.i ; 2 uses
  switch i8 %i.k, label %default.unreachable [
    i8 0, label %bb.t
    i8 1, label %bb.t
    i8 2, label %bb.t
    i8 3, label %bb.t
    i8 4, label %bb.t
    i8 5, label %bb.t
    i8 6, label %bb.t
    i8 7, label %bb.ae
    i8 8, label %bb.af
  ]

bb.t:                                             ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s
  br i1 %.1.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cx = load i32, ptr @hf_ieee80211_he_trigger_user_info, align 4 ; 2 uses
  %i.cy = load i32, ptr @ett_he_trigger_base_user_info, align 4 ; 2 uses
  switch i16 %.0106132.i, label %bb.v [
    i16 2045, label %bb.w
    i16 0, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.cz = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.cj, ptr noundef %0, i32 noundef %.0108131.i, i32 noundef %i.cx, i32 noundef %i.cy, ptr noundef nonnull @user_info_headers_no_2045, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  br label %bb.ak

bb.w:                                             ; preds = %bb.u, %bb.u
  %i.da = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.cj, ptr noundef %0, i32 noundef %.0108131.i, i32 noundef %i.cx, i32 noundef %i.cy, ptr noundef nonnull @user_info_headers_2045, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  br label %bb.ak

bb.x:                                             ; preds = %bb.t
  br i1 %i.ct, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = load i32, ptr @hf_ieee80211_eht_trigger_special_user_info, align 4
  %i.dc = load i32, ptr @ett_he_trigger_base_user_info, align 4
  %i.dd = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.cj, ptr noundef %0, i32 noundef %.0108131.i, i32 noundef %i.db, i32 noundef %i.dc, ptr noundef nonnull @special_user_info_headers_eht, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  br label %bb.ak

bb.z:                                             ; preds = %bb.x
  %i.de = load i32, ptr @ett_he_trigger_base_user_info, align 4 ; 3 uses
  br i1 %.not112.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.df = load i32, ptr @hf_ieee80211_eht_trigger_user_info, align 4
  %i.dg = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.cj, ptr noundef %0, i32 noundef %.0108131.i, i32 noundef %i.df, i32 noundef %i.de, ptr noundef nonnull @user_info_headers_eht, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  br label %bb.ak

bb.ab:                                            ; preds = %bb.z
  %i.dh = load i32, ptr @hf_ieee80211_uhr_trigger_user_info, align 4 ; 2 uses
  br i1 %.not113.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.cj, ptr noundef %0, i32 noundef %.0108131.i, i32 noundef %i.dh, i32 noundef %i.de, ptr noundef nonnull @user_info_headers_uhr_rru, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  br label %bb.ak

bb.ad:                                            ; preds = %bb.ab
  %i.dj = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.cj, ptr noundef %0, i32 noundef %.0108131.i, i32 noundef %i.dh, i32 noundef %i.de, ptr noundef nonnull @user_info_headers_uhr_dru, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  br label %bb.ak

bb.ae:                                            ; preds = %bb.s
  %i.dk = load i32, ptr @hf_ieee80211_he_trigger_dep_nfrp_user_info, align 4
  %i.dl = load i32, ptr @ett_he_trigger_dep_nfrp_user_info, align 4
  %i.dm = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.cj, ptr noundef %0, i32 noundef %.0108131.i, i32 noundef %i.dk, i32 noundef %i.dl, ptr noundef nonnull @nfrp_trigger_dependent_user_headers, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %i.dn = add i32 %.0108131.i, 5
  %i.do = add i32 %.0121130.i, 5
  br label %.thread.i

bb.af:                                            ; preds = %bb.s
  %i.dp = load i32, ptr @ett_he_trigger_ranging_poll, align 4 ; 4 uses
  switch i8 %.067, label %default.unreachable [
    i8 0, label %bb.ag
    i8 3, label %bb.ag
    i8 1, label %bb.ah
    i8 2, label %bb.ai
    i8 4, label %bb.aj
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af
  %i.dq = load i32, ptr @hf_ieee80211_he_trigger_ranging_trigger_poll_rpt, align 4
  %i.dr = call ptr @proto_tree_add_bitmask(ptr noundef %i.cj, ptr noundef %0, i32 noundef %.0108131.i, i32 noundef %i.dq, i32 noundef %i.dp, ptr noundef nonnull @poll_rpt_hdrs, i32 noundef -2147483648) ; 0 uses
  br label %dissect_ieee80211_ranging_trigger_variant.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.ds = load i32, ptr @hf_ieee80211_he_trigger_ranging_trigger_sounding, align 4
  %i.dt = call ptr @proto_tree_add_bitmask(ptr noundef %i.cj, ptr noundef %0, i32 noundef %.0108131.i, i32 noundef %i.ds, i32 noundef %i.dp, ptr noundef nonnull @sounding_hdrs, i32 noundef -2147483648) ; 0 uses
  br label %dissect_ieee80211_ranging_trigger_variant.exit.i

bb.ai:                                            ; preds = %bb.af
  %i.du = load i32, ptr @hf_ieee80211_he_trigger_ranging_trigger_sec_sound, align 4
  %i.dv = call ptr @proto_tree_add_bitmask(ptr noundef %i.cj, ptr noundef %0, i32 noundef %.0108131.i, i32 noundef %i.du, i32 noundef %i.dp, ptr noundef nonnull @sec_sound_hdrs, i32 noundef -2147483648) ; 0 uses
  %i.dw = add i32 %.0108131.i, 5
  %i.dx = load i32, ptr @hf_ieee80211_he_trigger_ranging_user_info_sac, align 4
  %i.dy = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.dx, ptr noundef %0, i32 noundef %i.dw, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %dissect_ieee80211_ranging_trigger_variant.exit.i

bb.aj:                                            ; preds = %bb.af
  %i.dz = load i32, ptr @hf_ieee80211_he_trigger_ranging_trigger_sounding, align 4
  %i.ea = call ptr @proto_tree_add_bitmask(ptr noundef %i.cj, ptr noundef %0, i32 noundef %.0108131.i, i32 noundef %i.dz, i32 noundef %i.dp, ptr noundef nonnull @sounding_hdrs, i32 noundef -2147483648) ; 0 uses
  br label %dissect_ieee80211_ranging_trigger_variant.exit.i

dissect_ieee80211_ranging_trigger_variant.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.sink.i.i = phi i32 [ 5, %bb.aj ], [ 7, %bb.ai ], [ 5, %bb.ah ], [ 5, %bb.ag ] ; 2 uses
  %i.eb = add i32 %.sink.i.i, %.0108131.i
  %i.ec = add i32 %.sink.i.i, %.0121130.i
  br label %.thread.i

default.unreachable:                              ; preds = %bb.af, %bb.s
  unreachable

bb.ak:                                            ; preds = %bb.v, %bb.w, %bb.y, %bb.aa, %bb.ac, %bb.ad
  %i.ed = add i32 %.0108131.i, 5                  ; 4 uses
  %i.ee = add i32 %.0121130.i, 5
  switch i8 %i.k, label %.thread.i [
    i8 0, label %bb.al
    i8 1, label %bb.am
end_hunk_1
begin_hunk_2_@wlan_endpoint_get_filter_type:bb.a

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ @.str.10205, %bb.c ], [ @.str.434, %bb.b ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @parse_key_string(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @free_key_string(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i32 @Dot11DecryptSetKeys(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @g_strchomp(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @g_strchug(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i16 @determine_mic_len(ptr noundef %0, i1 noundef zeroext %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @wmem_file_scope()
  %i.b = load i32, ptr @proto_wlan, align 4
  %i.c = tail call ptr @p_get_proto_data(ptr noundef %i.a, ptr noundef %0, i32 noundef %i.b, i32 noundef 8)
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 288
  store i32 %i.e, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %0, i64 292
  store i32 %i.e, ptr %i.g, align 4
  %i.h = tail call ptr @find_conversation_pinfo(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 416
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr @proto_wlan, align 4
  %i.l = tail call ptr @p_get_proto_data(ptr noundef %i.j, ptr noundef %0, i32 noundef %i.k, i32 noundef 7) ; 4 uses
  %.not40 = icmp eq ptr %i.h, null
  br i1 %.not40, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr @proto_wlan, align 4
  %i.n = tail call ptr @conversation_get_proto_data(ptr noundef nonnull %i.h, i32 noundef %i.m)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]  ; 5 uses
  %i.o = load i8, ptr @wlan_key_mic_len_enable, align 1, !range !9, !noundef !10
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr @wlan_key_mic_len, align 4
  %i.r = trunc i32 %i.q to i16
  br label %get_mic_len_owe.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq ptr %.0, null
  %or.cond.not = select i1 %1, i1 true, i1 %i.s
  br i1 %or.cond.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i16, ptr %.0, align 4               ; 2 uses
  %.not = icmp eq i16 %i.t, 0
  br i1 %.not, label %bb.g, label %get_mic_len_owe.exit

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %.0, i64 2
  %i.v = load i8, ptr %i.u, align 2, !range !9, !noundef !10
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %.0, i64 4
  %i.y = load i32, ptr %i.x, align 4
  switch i32 %i.y, label %bb.p [
    i32 1027090, label %bb.i
    i32 1027096, label %bb.j
    i32 1027097, label %bb.j
    i32 1027084, label %get_mic_len_owe.exit
    i32 1027085, label %get_mic_len_owe.exit
    i32 1027089, label %get_mic_len_owe.exit
    i32 1027086, label %bb.o
    i32 1027087, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %3, align 1
  %i.z = getelementptr i8, ptr %.0, i64 8
  %i.aa = load i16, ptr %i.z, align 4
  %switch.tableidx = add i16 %i.aa, -15           ; 2 uses
  %i.ab = icmp ult i16 %switch.tableidx, 18
  br i1 %i.ab, label %switch.lookup, label %bb.p

bb.j:                                             ; preds = %bb.h, %bb.h
  store i8 1, ptr %3, align 1
  store i8 1, ptr %2, align 1
  br label %get_mic_len_owe.exit

.critedge:                                        ; preds = %bb.e, %bb.g
  %.not42 = icmp eq ptr %i.l, null
  br i1 %.not42, label %bb.q, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.ac = load i8, ptr %i.l, align 4, !range !9, !noundef !10
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr i8, ptr %i.l, i64 4
  %i.af = load i32, ptr %i.ae, align 4
  switch i32 %i.af, label %bb.p [
    i32 1027090, label %bb.m
    i32 1027096, label %bb.n
    i32 1027097, label %bb.n
    i32 1027084, label %get_mic_len_owe.exit
    i32 1027085, label %get_mic_len_owe.exit
    i32 1027089, label %get_mic_len_owe.exit
    i32 1027086, label %bb.o
    i32 1027087, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %3, align 1
  %i.ag = getelementptr i8, ptr %i.l, i64 8
  %i.ah = load i16, ptr %i.ag, align 4
  %switch.tableidx51 = add i16 %i.ah, -15         ; 2 uses
  %i.ai = icmp ult i16 %switch.tableidx51, 18
  br i1 %i.ai, label %switch.lookup52, label %bb.p

bb.n:                                             ; preds = %bb.l, %bb.l
  store i8 1, ptr %3, align 1
  store i8 1, ptr %2, align 1
  br label %get_mic_len_owe.exit

bb.o:                                             ; preds = %bb.h, %bb.h, %bb.l, %bb.l
  br label %get_mic_len_owe.exit

bb.p:                                             ; preds = %bb.m, %bb.i, %bb.h, %bb.l
  br label %get_mic_len_owe.exit

bb.q:                                             ; preds = %bb.k, %.critedge
  store i8 1, ptr %2, align 1
  br label %get_mic_len_owe.exit

switch.lookup:                                    ; preds = %bb.i
  %i.aj = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.determine_mic_len.235, i64 %i.aj
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  br label %get_mic_len_owe.exit

switch.lookup52:                                  ; preds = %bb.m
  %i.ak = zext nneg i16 %switch.tableidx51 to i64
  %switch.gep53 = getelementptr inbounds nuw i8, ptr @switch.table.determine_mic_len.235, i64 %i.ak
  %switch.load54 = load i8, ptr %switch.gep53, align 1
  %switch.ext55 = zext i8 %switch.load54 to i16
  br label %get_mic_len_owe.exit

get_mic_len_owe.exit:                             ; preds = %switch.lookup52, %switch.lookup, %bb.l, %bb.l, %bb.l, %bb.h, %bb.h, %bb.h, %bb.p, %bb.o, %bb.f, %bb.q, %bb.n, %bb.j, %bb.d
  %.035 = phi i16 [ %i.r, %bb.d ], [ 16, %bb.q ], [ %i.t, %bb.f ], [ 16, %bb.j ], [ %switch.ext, %switch.lookup ], [ 24, %bb.h ], [ 16, %bb.n ], [ %switch.ext55, %switch.lookup52 ], [ 24, %bb.l ], [ 24, %bb.l ], [ 24, %bb.h ], [ 16, %bb.p ], [ 0, %bb.o ], [ 24, %bb.l ], [ 24, %bb.h ]
  ret i16 %.035
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @discover_key_mic_len2(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @wmem_file_scope()
  %i.b = load i32, ptr @proto_wlan, align 4
  %i.c = tail call ptr @p_get_proto_data(ptr noundef %i.a, ptr noundef %1, i32 noundef %i.b, i32 noundef 8)
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 288
  store i32 %i.e, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %1, i64 292
  store i32 %i.e, ptr %i.g, align 4
  %i.h = tail call ptr @find_or_create_conversation(ptr noundef %1) ; 2 uses
  %i.i = load i32, ptr @proto_wlan, align 4
  %i.j = tail call ptr @conversation_get_proto_data(ptr noundef %i.h, i32 noundef %i.i) ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.b, label %get_or_create_conversation_data.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @wmem_file_scope()
  %i.l = tail call noalias dereferenceable_or_null(12) ptr @wmem_alloc(ptr noundef %i.k, i64 noundef 12) #21 ; 2 uses
  %i.m = load i32, ptr @proto_wlan, align 4
  tail call void @conversation_add_proto_data(ptr noundef %i.h, i32 noundef %i.m, ptr noundef %i.l)
  br label %get_or_create_conversation_data.exit

get_or_create_conversation_data.exit:             ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.j, %bb.a ], [ %i.l, %bb.b ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(12) %.0.i, i8 noundef 0, i64 noundef 12, i1 noundef false) #20
  %i.n = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.o = icmp ugt i32 %i.n, 94
  br i1 %i.o, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %get_or_create_conversation_data.exit, %bb.c
  %i.p = phi i32 [ %2, %bb.c ], [ 94, %get_or_create_conversation_data.exit ]
  %.021 = phi i16 [ %i.t, %bb.c ], [ 16, %get_or_create_conversation_data.exit ] ; 2 uses
  %.01820 = phi i32 [ %i.u, %bb.c ], [ 92, %get_or_create_conversation_data.exit ] ; 3 uses
  %i.q = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %.01820, i32 noundef 0)
  %i.r = zext i16 %i.q to i32
  %i.s = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.p)
  %.not = icmp eq i32 %i.s, %i.r
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.t = add i16 %.021, 8                         ; 2 uses
  %i.u = add i32 %.01820, 8                       ; 3 uses
  %i.v = tail call i32 @tvb_captured_length(ptr noundef %0)
  %2 = or disjoint i32 %i.u, 2                    ; 2 uses
  %i.w = icmp ugt i32 %i.v, %2
  br i1 %i.w, label %.lr.ph, label %.critedge, !llvm.loop !227

.critedge:                                        ; preds = %.lr.ph, %bb.c, %get_or_create_conversation_data.exit
  %.018.lcssa = phi i32 [ 92, %get_or_create_conversation_data.exit ], [ %i.u, %bb.c ], [ %.01820, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i16 [ 16, %get_or_create_conversation_data.exit ], [ %i.t, %bb.c ], [ %.021, %.lr.ph ]
  %i.x = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.018.lcssa)
  %i.y = icmp ugt i32 %i.x, 1
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.critedge
  %i.z = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %.018.lcssa, i32 noundef 0)
  %i.aa = zext i16 %i.z to i32
  %i.ab = add nuw nsw i32 %i.aa, 2
  %i.ac = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.018.lcssa)
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 %.0.lcssa, ptr %.0.i, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.critedge
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @add_ptk_analysis(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [256 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = call i32 @Dot11DecryptGetKCK(ptr noundef nonnull %2, ptr noundef nonnull %i.a) ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = sext i32 %i.c to i64
  %i.f = call ptr @bytes_to_hexstr(ptr noundef nonnull %i.b, ptr noundef %i.d, i64 noundef %i.e) ; 0 uses
  %i.g = shl i32 %i.c, 1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr i8, ptr %i.b, i64 %i.h
  store i8 0, ptr %i.i, align 2
  %i.j = load i32, ptr @hf_ieee80211_fc_analysis_kck, align 4
  %i.k = call ptr @proto_tree_add_string(ptr noundef %1, i32 noundef %i.j, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.m, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.m, i64 28       ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = or i32 %i.o, 2
  store i32 %i.p, ptr %i.n, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.a, %bb.b, %bb.c
  %i.q = call i32 @Dot11DecryptGetKEK(ptr noundef nonnull %2, ptr noundef nonnull %i.a) ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = sext i32 %i.q to i64
  %i.t = call ptr @bytes_to_hexstr(ptr noundef nonnull %i.b, ptr noundef %i.r, i64 noundef %i.s) ; 0 uses
  %i.u = shl i32 %i.q, 1
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr i8, ptr %i.b, i64 %i.v
  store i8 0, ptr %i.w, align 2
  %i.x = load i32, ptr @hf_ieee80211_fc_analysis_kek, align 4
  %i.y = call ptr @proto_tree_add_string(ptr noundef %1, i32 noundef %i.x, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) ; 2 uses
  %.not.i12 = icmp eq ptr %i.y, null
  br i1 %.not.i12, label %proto_item_set_generated.exit14, label %bb.d

bb.d:                                             ; preds = %proto_item_set_generated.exit
  %i.z = getelementptr i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not5.i13 = icmp eq ptr %i.aa, null
  br i1 %.not5.i13, label %proto_item_set_generated.exit14, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.aa, i64 28     ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = or i32 %i.ac, 2
  store i32 %i.ad, ptr %i.ab, align 4
  br label %proto_item_set_generated.exit14

proto_item_set_generated.exit14:                  ; preds = %proto_item_set_generated.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @get_eapol_parsed(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 416        ; 27 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr @proto_eapol, align 4
  %i.d = tail call ptr @p_get_proto_data(ptr noundef %i.b, ptr noundef %0, i32 noundef %i.c, i32 noundef 0) ; 3 uses
  %.not109 = icmp eq ptr %i.d, null
  br i1 %.not109, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = trunc i32 %i.e to i16
  %i.g = getelementptr i8, ptr %1, i64 4
  store i16 %i.f, ptr %i.g, align 4
  %i.h = and i32 %i.e, 65535
  %i.i = icmp samesign ugt i32 %i.h, 1024
  br i1 %i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.d, i64 4
  %i.k = load i8, ptr %i.j, align 4
  %i.l = getelementptr i8, ptr %1, i64 6
  store i8 %i.k, ptr %i.l, align 2
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = load i32, ptr @proto_wlan, align 4
  %i.o = tail call ptr @p_get_proto_data(ptr noundef %i.m, ptr noundef %0, i32 noundef %i.n, i32 noundef 17)
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = trunc i64 %i.p to i8
  %i.r = getelementptr i8, ptr %1, i64 7
  store i8 %i.q, ptr %i.r, align 1
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load i32, ptr @proto_wlan, align 4
  %i.u = tail call ptr @p_get_proto_data(ptr noundef %i.s, ptr noundef %0, i32 noundef %i.t, i32 noundef 18)
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = trunc i64 %i.v to i16
  %i.x = getelementptr i8, ptr %1, i64 8
  store i16 %i.w, ptr %i.x, align 8
  %i.y = and i64 %i.v, 65535
  %i.z = icmp samesign ugt i64 %i.y, 1024
  br i1 %i.z, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = load i32, ptr @proto_wlan, align 4
  %i.ac = tail call ptr @p_get_proto_data(ptr noundef %i.aa, ptr noundef %0, i32 noundef %i.ab, i32 noundef 19)
  %i.ad = getelementptr i8, ptr %1, i64 16
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %i.a, align 8
  %i.af = load i32, ptr @proto_wlan, align 4
  %i.ag = tail call ptr @p_get_proto_data(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.af, i32 noundef 20)
  %i.ah = getelementptr i8, ptr %1, i64 24
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = load i32, ptr @proto_wlan, align 4
  %i.ak = tail call ptr @p_get_proto_data(ptr noundef %i.ai, ptr noundef %0, i32 noundef %i.aj, i32 noundef 21)
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = trunc i64 %i.al to i16
  %i.an = getelementptr i8, ptr %1, i64 32
  store i16 %i.am, ptr %i.an, align 8
  %i.ao = and i64 %i.al, 65535
  %i.ap = icmp samesign ugt i64 %i.ao, 1024
  br i1 %i.ap, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.a, align 8
  %i.ar = load i32, ptr @proto_wlan, align 4
  %i.as = tail call ptr @p_get_proto_data(ptr noundef %i.aq, ptr noundef %0, i32 noundef %i.ar, i32 noundef 11)
  %i.at = getelementptr i8, ptr %1, i64 40
  store ptr %i.as, ptr %i.at, align 8
  %i.au = load ptr, ptr %i.a, align 8
  %i.av = load i32, ptr @proto_wlan, align 4
  %i.aw = tail call ptr @p_get_proto_data(ptr noundef %i.au, ptr noundef %0, i32 noundef %i.av, i32 noundef 12)
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = trunc i64 %i.ax to i8
  %i.az = getelementptr i8, ptr %1, i64 34
  store i8 %i.ay, ptr %i.az, align 2
  %i.ba = load ptr, ptr %i.a, align 8
  %i.bb = load i32, ptr @proto_wlan, align 4
  %i.bc = tail call ptr @p_get_proto_data(ptr noundef %i.ba, ptr noundef %0, i32 noundef %i.bb, i32 noundef 13)
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = trunc i64 %i.bd to i8
  %i.bf = getelementptr i8, ptr %1, i64 35
  store i8 %i.be, ptr %i.bf, align 1
  %i.bg = load ptr, ptr %i.a, align 8
  %i.bh = load i32, ptr @proto_wlan, align 4
  %i.bi = tail call ptr @p_get_proto_data(ptr noundef %i.bg, ptr noundef %0, i32 noundef %i.bh, i32 noundef 14)
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = getelementptr i8, ptr %1, i64 36
  store i8 %i.bk, ptr %i.bl, align 4
  %i.bm = load ptr, ptr %i.a, align 8
  %i.bn = load i32, ptr @proto_wlan, align 4
  %i.bo = tail call ptr @p_get_proto_data(ptr noundef %i.bm, ptr noundef %0, i32 noundef %i.bn, i32 noundef 15)
  %i.bp = getelementptr i8, ptr %1, i64 48
  store ptr %i.bo, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.a, align 8
  %i.br = load i32, ptr @proto_wlan, align 4
  %i.bs = tail call ptr @p_get_proto_data(ptr noundef %i.bq, ptr noundef %0, i32 noundef %i.br, i32 noundef 16)
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = trunc i64 %i.bt to i16
  %i.bv = getelementptr i8, ptr %1, i64 56
  store i16 %i.bu, ptr %i.bv, align 8
end_hunk_2
