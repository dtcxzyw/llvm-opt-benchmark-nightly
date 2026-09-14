Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ieee80211?download=true
inline.NumInlined: 916
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 32
begin_hunk_0_@dissect_rejected_groups:bb.a
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02 = phi i32 [ %i.d, %.lr.ph ], [ 1, %bb.a ]  ; 2 uses
  %i.b = load i32, ptr @hf_ieee80211_rejected_groups_group, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef %.02, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.d = add i32 %.02, 2                          ; 2 uses
  %i.e = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.d)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !243

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_he_6ghz_band_capabilities(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2147483647) %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %3, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10552) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_ieee80211_tag_he_6ghz_cap_inf, align 4
  %i.c = load i32, ptr @ett_tag_he_6ghz_cap_inf_tree, align 4
  %i.d = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %2, ptr noundef %0, i32 noundef 1, i32 noundef %i.b, i32 noundef %i.c, ptr noundef nonnull @ieee80211_tag_he_6ghz_cap_inf, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_ranging_parameters(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2147483647) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.c = icmp samesign ult i32 %3, 6
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10555) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_ieee80211_tag_ranging_parameters, align 4
  %i.f = load i32, ptr @ett_tag_ranging, align 4
  %i.g = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %2, ptr noundef %0, i32 noundef 1, i32 noundef %i.e, i32 noundef %i.f, ptr noundef nonnull @dissect_ranging_parameters.ranging_params_fields, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.i = and i8 %i.h, 3                           ; 2 uses
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i8 %i.i to i32                 ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @val_to_str_const(i32 noundef %i.j, ptr noundef nonnull @dissect_ranging_parameters.short_status, ptr noundef nonnull @.str.4485)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.l, i32 noundef 25, ptr noundef nonnull @.str.10556, i32 noundef %i.j, ptr noundef %i.m)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = icmp samesign ugt i32 %3, 8
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.o = getelementptr i8, ptr %1, i64 8          ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.l
  %.06475 = phi i32 [ 0, %.lr.ph ], [ %i.bx, %bb.l ] ; 2 uses
  %.06574 = phi i32 [ 8, %.lr.ph ], [ %.pre-phi, %bb.l ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.p = load i32, ptr @ett_ranging_subelement_tree, align 4
  %i.q = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %.06574, i32 noundef -1, i32 noundef %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.10557, i32 noundef %.06475) ; 4 uses
  %i.r = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.06574) ; 2 uses
  %i.s = zext i8 %i.r to i32
  %i.t = call ptr @rval_to_str_const(i32 noundef %i.s, ptr noundef nonnull @ranging_subelt_types, ptr noundef nonnull @.str.613)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.q, ptr noundef nonnull @.str.246, ptr noundef %i.t)
  %i.u = load i32, ptr @hf_ieee80211_tag_ranging_subelt_tag, align 4
  %i.v = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.u, ptr noundef %0, i32 noundef %.06574, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.w = add nsw i32 %.06574, 1                   ; 2 uses
  %i.x = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.w) ; 2 uses
  %i.y = load i32, ptr @hf_ieee80211_tag_ranging_subelt_len, align 4
  %i.z = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.w, i32 noundef 1, i32 noundef 0)
  %i.aa = add nsw i32 %.06574, 2                  ; 12 uses
  %i.ab = zext i8 %i.x to i32                     ; 3 uses
  %i.ac = add i32 %i.aa, %i.ab                    ; 5 uses
  %.not69 = icmp sgt i32 %i.ac, %i.b
  br i1 %.not69, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.ad = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.aa)
  %i.ae = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.z, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10558, i32 noundef %i.ab, i32 noundef %i.ad) ; 0 uses
  %i.af = load ptr, ptr %i.a, align 8
  call void @proto_item_set_len(ptr noundef %i.af, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  switch i8 %i.r, label %bb.l [
    i8 0, label %bb.h
    i8 1, label %bb.j
    i8 2, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr @hf_ieee80211_tag_ranging_ntb, align 4
  %i.ah = load i32, ptr @ett_tag_ranging_ntb, align 4
  %i.ai = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %2, ptr noundef %0, i32 noundef range(i32 -2147483646, -2147483648) %i.aa, i32 noundef %i.ag, i32 noundef %i.ah, ptr noundef nonnull @dissect_ntb_specific.nontb_fields, i32 noundef -2147483648, i32 noundef 1)
  %i.aj = load ptr, ptr %i.o, align 8
  call void @col_append_str(ptr noundef %i.aj, i32 noundef 25, ptr noundef nonnull @.str.10562)
  %i.ak = icmp ult i8 %i.x, 6
  br i1 %i.ak, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = call i64 @tvb_get_int48(ptr noundef %0, i32 noundef range(i32 -2147483646, -2147483648) %i.aa, i32 noundef -2147483648) ; 2 uses
  %i.am = lshr i64 %i.al, 24
  %i.an = lshr i64 %i.al, 1
  %i.ao = and i64 %i.am, 1048575
  %i.ap = and i64 %i.an, 8388607
  %i.aq = mul nuw nsw i64 %i.ao, 10000
  %i.ar = mul nuw nsw i64 %i.ap, 100
  %i.as = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %i.at = insertelement <2 x i64> %i.as, i64 %i.aq, i64 1
  %i.au = uitofp nneg <2 x i64> %i.at to <2 x double>
  %i.av = fdiv <2 x double> %i.au, splat (double 1.000000e+06) ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 0
  %i.ax = fptrunc double %i.aw to float
  %i.ay = extractelement <2 x double> %i.av, i64 1
  %i.az = fptrunc double %i.ay to float
  %i.ba = fpext float %i.ax to double             ; 2 uses
  %i.bb = fpext float %i.az to double             ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ai, ptr noundef nonnull @.str.10563, double noundef %i.ba, double noundef %i.bb)
  %i.bc = load ptr, ptr %i.o, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.bc, i32 noundef 25, ptr noundef nonnull @.str.10564, double noundef %i.ba, double noundef %i.bb)
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.bd = load i32, ptr @hf_ieee80211_tag_ranging_aid_rsid, align 4
  %i.be = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bd, ptr noundef %0, i32 noundef range(i32 -2147483646, -2147483648) %i.aa, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bf = load i32, ptr @hf_ieee80211_tag_ranging_device_class, align 4
  %i.bg = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bf, ptr noundef %0, i32 noundef range(i32 -2147483646, -2147483648) %i.aa, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bh = load i32, ptr @hf_ieee80211_tag_ranging_full_bw_ul_mu_mimo, align 4
  %i.bi = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bh, ptr noundef %0, i32 noundef range(i32 -2147483646, -2147483648) %i.aa, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bj = load i32, ptr @hf_ieee80211_tag_ranging_trigger_frame_paddur, align 4
  %i.bk = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bj, ptr noundef %0, i32 noundef range(i32 -2147483646, -2147483648) %i.aa, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bl = load i32, ptr @hf_ieee80211_tag_ranging_max_sess_exp, align 4
  %i.bm = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bl, ptr noundef %0, i32 noundef range(i32 -2147483646, -2147483648) %i.aa, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bn = load i32, ptr @hf_ieee80211_tag_ranging_passive_tb_ranging, align 4
  %i.bo = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bn, ptr noundef %0, i32 noundef range(i32 -2147483646, -2147483648) %i.aa, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bp = load i32, ptr @hf_ieee80211_tag_ranging_tb_specific_reserved, align 4
  %i.bq = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bp, ptr noundef %0, i32 noundef range(i32 -2147483646, -2147483648) %i.aa, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.br = add i32 %.06574, 6                      ; 2 uses
  %i.bs = call i32 @add_tagged_field_with_validation(ptr noundef %1, ptr noundef %2, ptr noundef %0, i32 noundef %i.br, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.bt = add i32 %i.bs, %i.br
  %.pre = add i32 %i.bt, %i.ab
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.bu = load i32, ptr @hf_ieee80211_tag_ranging_secure_he_ltf, align 4
  %i.bv = load i32, ptr @ett_tag_ranging_secure_he_ltf, align 4
  %i.bw = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.q, ptr noundef %0, i32 noundef %i.aa, i32 noundef %i.bu, i32 noundef %i.bv, ptr noundef nonnull @ranging_subelement_secure_he_ltf_fields, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.g, %bb.h, %bb.i
  %.pre-phi = phi i32 [ %.pre, %bb.j ], [ %i.ac, %bb.k ], [ %i.ac, %bb.g ], [ %i.ac, %bb.h ], [ %i.ac, %bb.i ] ; 3 uses
  %i.bx = add i32 %.06475, 1
  %i.by = load ptr, ptr %i.a, align 8
  %i.bz = sub i32 %.pre-phi, %.06574
  call void @proto_item_set_len(ptr noundef %i.by, i32 noundef %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ca = icmp slt i32 %.pre-phi, %3
  br i1 %i.ca, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.e, %.thread, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_secure_ltf_parameters(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @hf_ieee80211_tag_secure_ltf_params_counter, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef 1, i32 noundef 6, i32 noundef -2147483648) ; 0 uses
  %i.c = load i32, ptr @hf_ieee80211_tag_secure_ltf_generation_sac, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.c, ptr noundef %0, i32 noundef 7, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.e = load i32, ptr @hf_ieee80211_tag_secure_ltf_management_sac, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.e, ptr noundef %0, i32 noundef 9, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.g = load i32, ptr @hf_ieee80211_tag_secure_ltf_result_ltf_ofs, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef 11, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_ista_availability_window(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2147483647) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [513 x i8], align 16              ; 12 uses
  %i.b = alloca [8 x i8], align 8                 ; 13 uses
  %i.c = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 1)
  %i.d = and i16 %i.c, 511                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(513) %i.a, i8 noundef 0, i64 noundef 513, i1 noundef false) #20
  store i64 0, ptr %i.b, align 8
  %i.e = load i32, ptr @hf_ieee80211_ftm_ista_availability_count, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.e, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.g = load i32, ptr @hf_ieee80211_ftm_ista_availability_reserved, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.i = zext nneg i16 %i.d to i32                ; 7 uses
  %i.j = lshr i32 %i.i, 3                         ; 2 uses
  %.not3 = icmp eq i32 %i.j, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.k = add nuw nsw i32 %i.j, 1                  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0534 = phi i32 [ 3, %.lr.ph.preheader ], [ %i.u, %.lr.ph ] ; 2 uses
  %i.l = shl nuw nsw i64 %indvars.iv, 3
  %i.m = getelementptr i8, ptr %i.a, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0534)
  %i.p = insertelement <8 x i8> poison, i8 %i.o, i64 0
  %i.q = shufflevector <8 x i8> %i.p, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.r = lshr <8 x i8> %i.q, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  %i.s = and <8 x i8> %i.r, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -1>
  %i.t = or disjoint <8 x i8> %i.s, splat (i8 48)
  store <8 x i8> %i.t, ptr %i.n, align 8
  %i.u = add nuw nsw i32 %.0534, 1                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !244

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.053.lcssa = phi i32 [ 3, %bb.a ], [ %i.u, %.lr.ph ] ; 2 uses
  %.052.lcssa = phi i32 [ 1, %bb.a ], [ %i.k, %.lr.ph ] ; 2 uses
  %i.v = shl nuw nsw i32 %.052.lcssa, 3           ; 2 uses
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr i8, ptr %i.a, i64 %i.w
  store i8 0, ptr %i.x, align 8
  %i.y = and i32 %i.i, 7                          ; 9 uses
  %.not55 = icmp eq i32 %i.y, 0
  br i1 %.not55, label %bb.j, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.z = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.053.lcssa)
  %i.aa = add nsw i32 %i.v, -8                    ; 2 uses
  %i.ab = sext i8 %i.z to i32                     ; 3 uses
  %i.ac = icmp samesign ult i32 %i.aa, %i.i
  br i1 %i.ac, label %.lr.ph11.preheader, label %._crit_edge12

.lr.ph11.preheader:                               ; preds = %bb.b
  %i.ad = zext i32 %.052.lcssa to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3                ; 2 uses
  %i.af = add nsw i64 %i.ae, -8                   ; 2 uses
  %wide.trip.count26 = zext nneg i16 %i.d to i64  ; 3 uses
  %reass.sub = sub nsw i64 %wide.trip.count26, %i.ae
  %i.ag = add nsw i64 %reass.sub, 7
  %xtraiter = and i64 %wide.trip.count26, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.prol.loopexit, label %.lr.ph11.prol

.lr.ph11.prol:                                    ; preds = %.lr.ph11.preheader, %.lr.ph11.prol
  %indvars.iv23.prol = phi i64 [ %indvars.iv.next24.prol, %.lr.ph11.prol ], [ %i.af, %.lr.ph11.preheader ] ; 2 uses
  %.19.prol = phi i32 [ %i.al, %.lr.ph11.prol ], [ %i.ab, %.lr.ph11.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph11.prol ], [ 0, %.lr.ph11.preheader ]
  %i.ah = trunc nsw i32 %.19.prol to i8
  %i.ai = and i8 %i.ah, 1
  %i.aj = or disjoint i8 %i.ai, 48
  %i.ak = getelementptr i8, ptr %i.a, i64 %indvars.iv23.prol
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = ashr i32 %.19.prol, 1                   ; 3 uses
  %indvars.iv.next24.prol = add nuw nsw i64 %indvars.iv23.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph11.prol.loopexit, label %.lr.ph11.prol, !llvm.loop !245

.lr.ph11.prol.loopexit:                           ; preds = %.lr.ph11.prol, %.lr.ph11.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph11.preheader ], [ %i.al, %.lr.ph11.prol ]
  %indvars.iv23.unr = phi i64 [ %i.af, %.lr.ph11.preheader ], [ %indvars.iv.next24.prol, %.lr.ph11.prol ]
  %.19.unr = phi i32 [ %i.ab, %.lr.ph11.preheader ], [ %i.al, %.lr.ph11.prol ]
  %i.am = icmp ult i64 %i.ag, 3
  br i1 %i.am, label %._crit_edge12, label %.lr.ph11

.lr.ph11:                                         ; preds = %.lr.ph11.prol.loopexit, %.lr.ph11
  %indvars.iv23 = phi i64 [ %indvars.iv.next24.3, %.lr.ph11 ], [ %indvars.iv23.unr, %.lr.ph11.prol.loopexit ] ; 5 uses
  %.19 = phi i32 [ %i.bj, %.lr.ph11 ], [ %.19.unr, %.lr.ph11.prol.loopexit ] ; 5 uses
  %i.an = trunc nsw i32 %.19 to i8
  %i.ao = and i8 %i.an, 1
  %i.ap = or disjoint i8 %i.ao, 48
  %i.aq = getelementptr i8, ptr %i.a, i64 %indvars.iv23
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = trunc i32 %.19 to i8
  %i.as = lshr i8 %i.ar, 1
  %i.at = and i8 %i.as, 1
  %i.au = or disjoint i8 %i.at, 48
  %i.av = getelementptr i8, ptr %i.a, i64 %indvars.iv23
  %i.aw = getelementptr i8, ptr %i.av, i64 1
  store i8 %i.au, ptr %i.aw, align 1
  %i.ax = trunc i32 %.19 to i8
  %i.ay = lshr i8 %i.ax, 2
  %i.az = and i8 %i.ay, 1
  %i.ba = or disjoint i8 %i.az, 48
  %i.bb = getelementptr i8, ptr %i.a, i64 %indvars.iv23
  %i.bc = getelementptr i8, ptr %i.bb, i64 2
  store i8 %i.ba, ptr %i.bc, align 1
  %i.bd = trunc i32 %.19 to i8
  %i.be = lshr i8 %i.bd, 3
  %i.bf = and i8 %i.be, 1
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = getelementptr i8, ptr %i.a, i64 %indvars.iv23
  %i.bi = getelementptr i8, ptr %i.bh, i64 3
  store i8 %i.bg, ptr %i.bi, align 1
  %i.bj = ashr i32 %.19, 4                        ; 2 uses
  %indvars.iv.next24.3 = add nuw nsw i64 %indvars.iv23, 4 ; 2 uses
  %exitcond27.not.3 = icmp eq i64 %indvars.iv.next24.3, %wide.trip.count26
  br i1 %exitcond27.not.3, label %._crit_edge12, label %.lr.ph11, !llvm.loop !246

._crit_edge12:                                    ; preds = %.lr.ph11.prol.loopexit, %.lr.ph11, %bb.b
  %.150.lcssa = phi i32 [ %i.aa, %bb.b ], [ %i.i, %.lr.ph11 ], [ %i.i, %.lr.ph11.prol.loopexit ]
  %.1.lcssa = phi i32 [ %i.ab, %bb.b ], [ %.lcssa.unr, %.lr.ph11.prol.loopexit ], [ %i.bj, %.lr.ph11 ] ; 8 uses
  %i.bk = zext nneg i32 %.150.lcssa to i64
  %i.bl = getelementptr i8, ptr %i.a, i64 %i.bk
  store i8 0, ptr %i.bl, align 1
  %i.bm = sub nuw nsw i32 8, %i.y
  %wide.trip.count31 = zext nneg i32 %i.bm to i64
  %i.bn = trunc nsw i32 %.1.lcssa to i8
  %i.bo = and i8 %i.bn, 1
  %i.bp = or disjoint i8 %i.bo, 48
  store i8 %i.bp, ptr %i.b, align 8
  %exitcond32.not = icmp eq i32 %i.y, 7
  br i1 %exitcond32.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge12
  %i.bq = trunc i32 %.1.lcssa to i8
  %i.br = lshr i8 %i.bq, 1
  %i.bs = and i8 %i.br, 1
  %i.bt = or disjoint i8 %i.bs, 48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.bt, ptr %i.bu, align 1
  %exitcond32.not.1 = icmp eq i32 %i.y, 6
  br i1 %exitcond32.not.1, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bv = trunc i32 %.1.lcssa to i8
  %i.bw = lshr i8 %i.bv, 2
  %i.bx = and i8 %i.bw, 1
  %i.by = or disjoint i8 %i.bx, 48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.by, ptr %i.bz, align 2
  %exitcond32.not.2 = icmp eq i32 %i.y, 5
  br i1 %exitcond32.not.2, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ca = trunc i32 %.1.lcssa to i8
  %i.cb = lshr i8 %i.ca, 3
  %i.cc = and i8 %i.cb, 1
  %i.cd = or disjoint i8 %i.cc, 48
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.cd, ptr %i.ce, align 1
  %exitcond32.not.3 = icmp eq i32 %i.y, 4
  br i1 %exitcond32.not.3, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cf = trunc i32 %.1.lcssa to i8
  %i.cg = lshr i8 %i.cf, 4
  %i.ch = and i8 %i.cg, 1
  %i.ci = or disjoint i8 %i.ch, 48
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.ci, ptr %i.cj, align 4
  %exitcond32.not.4 = icmp eq i32 %i.y, 3
  br i1 %exitcond32.not.4, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ck = trunc i32 %.1.lcssa to i8
  %i.cl = lshr i8 %i.ck, 5
  %i.cm = and i8 %i.cl, 1
  %i.cn = or disjoint i8 %i.cm, 48
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %i.cn, ptr %i.co, align 1
  %exitcond32.not.5 = icmp eq i32 %i.y, 2
  br i1 %exitcond32.not.5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cp = trunc i32 %.1.lcssa to i8
  %i.cq = lshr i8 %i.cp, 6
  %i.cr = and i8 %i.cq, 1
  %i.cs = or disjoint i8 %i.cr, 48
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %i.cs, ptr %i.ct, align 2
  %exitcond32.not.6 = icmp eq i32 %i.y, 1
  br i1 %exitcond32.not.6, label %bb.i, label %3

3:                                                ; preds = %bb.h
  %4 = trunc i32 %.1.lcssa to i8
  %5 = lshr i8 %4, 7
  %6 = or disjoint i8 %5, 48
  %7 = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %6, ptr %7, align 1
  br label %bb.i

bb.i:                                             ; preds = %3, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %._crit_edge12
  %i.cu = getelementptr i8, ptr %i.b, i64 %wide.trip.count31
  store i8 0, ptr %i.cu, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.cv = load i32, ptr @hf_ieee80211_ftm_ista_avail_bits, align 4
  %i.cw = add nuw nsw i32 %i.i, 7
  %i.cx = lshr i32 %i.cw, 3
  %i.cy = call ptr @proto_tree_add_string(ptr noundef %1, i32 noundef %i.cv, ptr noundef %0, i32 noundef 3, i32 noundef %i.cx, ptr noundef nonnull %i.a) ; 0 uses
  %i.cz = shl i32 %2, 3
  %i.da = add i32 %i.cz, -16
  %.not56 = icmp eq i32 %i.da, %i.i
  br i1 %.not56, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.db = load i32, ptr @hf_ieee80211_ftm_ista_avail_pad, align 4
  %i.dc = call ptr @proto_tree_add_string(ptr noundef %1, i32 noundef %i.db, ptr noundef %0, i32 noundef %.053.lcssa, i32 noundef 1, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_rsta_availability_window(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.b = and i8 %i.a, 127                         ; 2 uses
  %i.c = load i32, ptr @hf_ieee80211_ftm_rsta_header, align 4
  %i.d = load i32, ptr @ett_rsta_avail_header, align 4
  %i.e = tail call ptr @proto_tree_add_bitmask(ptr noundef %1, ptr noundef %0, i32 noundef 1, i32 noundef %i.c, i32 noundef %i.d, ptr noundef nonnull @rsta_avail_info_header, i32 noundef 0) ; 0 uses
  %i.f = zext nneg i8 %i.b to i32
  %.not3 = icmp eq i8 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02 = phi i32 [ %i.p, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %.0241 = phi i32 [ %i.o, %.lr.ph ], [ 2, %bb.a ] ; 4 uses
  %i.g = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %.0241)
  %i.h = and i32 %i.g, 8388608
  %.not = icmp eq i32 %i.h, 0                     ; 4 uses
  %i.i = select i1 %.not, i32 4, i32 5
  %i.j = load i32, ptr @ett_rsta_avail_tree, align 4
  %i.k = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %1, ptr noundef %0, i32 noundef %.0241, i32 noundef %i.i, i32 noundef %i.j, ptr noundef null, ptr noundef nonnull @.str.10565, i32 noundef %.02)
  %i.l = load i32, ptr @ett_rsta_avail_subfield, align 4
  %rsta_availability_subfield_hdr1.rsta_availability_subfield_hdr2 = select i1 %.not, ptr @rsta_availability_subfield_hdr1, ptr @rsta_availability_subfield_hdr2
  %. = select i1 %.not, i32 4, i32 5
  %hf_ieee80211_ftm_rsta_avail_subfield_short.val = load i32, ptr @hf_ieee80211_ftm_rsta_avail_subfield_short, align 4
  %hf_ieee80211_ftm_rsta_avail_subfield_long.val = load i32, ptr @hf_ieee80211_ftm_rsta_avail_subfield_long, align 4
  %i.m = select i1 %.not, i32 %hf_ieee80211_ftm_rsta_avail_subfield_short.val, i32 %hf_ieee80211_ftm_rsta_avail_subfield_long.val
  %i.n = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.k, ptr noundef %0, i32 noundef %.0241, i32 noundef %i.m, i32 noundef %i.l, ptr noundef nonnull %rsta_availability_subfield_hdr1.rsta_availability_subfield_hdr2, i32 noundef -2147483648) ; 0 uses
  %i.o = add i32 %.0241, %.
  %i.p = add nuw nsw i32 %.02, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.p, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !248

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_pasn_parameters(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2147483647) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.c = zext i8 %i.b to i32                      ; 3 uses
  %i.d = icmp samesign ult i32 %3, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10566) ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr @hf_ieee80211_tag_pasn_parameters_control, align 4
  %i.g = load i32, ptr @ett_pasn_parameters, align 4
  %i.h = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %2, ptr noundef %0, i32 noundef 1, i32 noundef %i.f, i32 noundef %i.g, ptr noundef nonnull @pasn_params_fields, i32 noundef -2147483648, i32 noundef 6) ; 0 uses
  %i.i = load i32, ptr @hf_ieee80211_tag_pasn_parameters_wrapped_fmt, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = and i32 %i.c, 1
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %._crit_edge, label %has_comeback_after.exit

._crit_edge:                                      ; preds = %bb.c
  %.pre = and i32 %i.c, 2
  br label %bb.h

has_comeback_after.exit:                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8
  %i.l = load i32, ptr @ett_pasn_comeback_tree, align 4
  %i.m = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef 3, i32 noundef -1, i32 noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.10567) ; 3 uses
  %i.n = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef 3)
  %i.o = and i32 %i.c, 2                          ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  %spec.select.i = select i1 %.not.i, i32 0, i32 -2
  %i.p = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 3)
  %i.q = zext i16 %i.p to i32
  %i.r = add i32 %i.n, %spec.select.i
  %.not11.i.not = icmp slt i32 %i.r, %i.q
  br i1 %.not11.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %has_comeback_after.exit
  %i.s = load i32, ptr @hf_ieee80211_tag_pasn_comeback_after, align 4
  %i.t = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.s, ptr noundef %0, i32 noundef 3, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %has_comeback_after.exit
  %.0 = phi i32 [ 5, %bb.d ], [ 3, %has_comeback_after.exit ] ; 3 uses
  %i.u = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0) ; 2 uses
  %i.v = load i32, ptr @hf_ieee80211_tag_pasn_cookie_length, align 4
  %i.w = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.v, ptr noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = add nuw nsw i32 %.0, 1                   ; 3 uses
  %.not56 = icmp eq i8 %i.u, 0
  br i1 %.not56, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr @hf_ieee80211_tag_pasn_cookie, align 4
  %i.z = zext i8 %i.u to i32                      ; 2 uses
  %i.aa = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0) ; 0 uses
  %i.ab = add nuw nsw i32 %i.x, %i.z
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %i.ab, %bb.f ], [ %i.x, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.o, %bb.g ]
  %.2 = phi i32 [ 3, %._crit_edge ], [ %.1, %bb.g ] ; 3 uses
  %.not57 = icmp eq i32 %.pre-phi, 0
  br i1 %.not57, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = add nuw nsw i32 %.2, 2                  ; 2 uses
  %i.ad = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ac) ; 2 uses
  %i.ae = load i32, ptr @hf_ieee80211_tag_pasn_finite_cyclic_group_id, align 4
  %i.af = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ae, ptr noundef %0, i32 noundef %.2, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ag = load i32, ptr @hf_ieee80211_tag_pasn_ephemeral_public_key_len, align 4
  %i.ah = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.ac, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not58 = icmp eq i8 %i.ad, 0
  br i1 %.not58, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = zext i8 %i.ad to i32
  %i.aj = add nuw nsw i32 %.2, 3
  %i.ak = load i32, ptr @hf_ieee80211_tag_pasn_ephemeral_public_key, align 4
  %i.al = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ak, ptr noundef %0, i32 noundef %i.aj, i32 noundef %i.ai, i32 noundef 0) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_tid_to_link_mapping(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2147483647) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 11 uses
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.c = load i32, ptr @hf_ieee80211_eht_ttl_mapping_tid_0_link_mapping, align 4
  store i32 %i.c, ptr %i.a, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load i32, ptr @hf_ieee80211_eht_ttl_mapping_tid_1_link_mapping, align 4
  store i32 %i.e, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr @hf_ieee80211_eht_ttl_mapping_tid_2_link_mapping, align 4
  store i32 %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = load i32, ptr @hf_ieee80211_eht_ttl_mapping_tid_3_link_mapping, align 4
  store i32 %i.i, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i32, ptr @hf_ieee80211_eht_ttl_mapping_tid_4_link_mapping, align 4
  store i32 %i.k, ptr %i.j, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.m = load i32, ptr @hf_ieee80211_eht_ttl_mapping_tid_5_link_mapping, align 4
  store i32 %i.m, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.o = load i32, ptr @hf_ieee80211_eht_ttl_mapping_tid_6_link_mapping, align 4
  store i32 %i.o, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.q = load i32, ptr @hf_ieee80211_eht_ttl_mapping_tid_7_link_mapping, align 4
  store i32 %i.q, ptr %i.p, align 4
  %i.r = load i32, ptr @hf_ieee80211_eht_ttl_mapping_control, align 4
  %i.s = load i32, ptr @ett_eht_ttl_mapping, align 4
  %i.t = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %1, ptr noundef %0, i32 noundef 1, i32 noundef %i.r, i32 noundef %i.s, ptr noundef nonnull @eht_ttl_mapping_control_hdrs, i32 noundef -2147483648, i32 noundef 1)
  %i.u = icmp eq i32 %2, 1
  br i1 %i.u, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.w = load i32, ptr @hf_ieee80211_eht_ttl_mapping_presence, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.w, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.y = zext i8 %i.b to i32                      ; 3 uses
  %i.z = and i32 %i.y, 8
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.d, label %bb.c
end_hunk_0
