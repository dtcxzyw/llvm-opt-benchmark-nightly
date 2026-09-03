Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-gsm_a_common?download=true
inline.NumInlined: 22
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@de_ms_cm_3:bb.a

bb.hh:                                            ; preds = %bb.he
  %i.xp = load i32, ptr @hf_gsm_a_ext_tsc_set_cap_support, align 4
  %i.xq = call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.xp, ptr noundef %0, i32 noundef %i.xk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xr = add i32 %.22, 22                        ; 2 uses
  %i.xs = sub i32 %i.bo, %i.xr                    ; 2 uses
  %i.xt = icmp slt i32 %i.xs, 1
  br i1 %i.xt, label %bb.hi, label %bb.hk

bb.hi:                                            ; preds = %bb.hh
  %i.xu = icmp slt i32 %i.xs, 0
  br i1 %i.xu, label %bb.hj, label %bb.ho

bb.hj:                                            ; preds = %bb.hi
  %i.xv = call ptr @proto_tree_add_expert(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_ie_length_too_short, ptr noundef %0, i32 noundef %3, i32 noundef %4) ; 0 uses
  br label %bb.ho

bb.hk:                                            ; preds = %bb.hh
  %i.xw = load i32, ptr @hf_gsm_a_ext_earfcn_value_range, align 4
  %i.xx = call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.xw, ptr noundef %0, i32 noundef %i.xr, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xy = add i32 %.22, 23                        ; 3 uses
  %i.xz = sub i32 1, %.22
  %i.ya = and i32 %i.xz, 7                        ; 3 uses
  %.not1387 = icmp eq i32 %i.ya, 0
  br i1 %.not1387, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.yb = load i32, ptr @hf_gsm_a_spare_bits, align 4
  %i.yc = call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.yb, ptr noundef %0, i32 noundef %i.xy, i32 noundef %i.ya, i32 noundef 0) ; 0 uses
  %i.yd = add i32 %i.ya, %i.xy
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %.23 = phi i32 [ %i.yd, %bb.hl ], [ %i.xy, %bb.hk ]
  %i.ye = lshr i32 %.23, 3                        ; 2 uses
  %i.yf = sub i32 %i.ye, %3                       ; 2 uses
  %i.yg = icmp ugt i32 %4, %i.yf
  br i1 %i.yg, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.yh = sub nuw i32 %4, %i.yf
  %i.yi = call ptr @proto_tree_add_expert(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_extraneous_data, ptr noundef %0, i32 noundef %i.ye, i32 noundef %i.yh) ; 0 uses
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hm, %bb.hn, %bb.hj, %bb.hi, %bb.hg, %bb.hf, %bb.hd, %bb.hc, %bb.ha, %bb.gz, %bb.gx, %bb.gw, %bb.gu, %bb.gt, %bb.gr, %bb.gq, %bb.gm, %bb.go, %bb.gn, %bb.gh, %bb.gj, %bb.gi, %bb.ge, %bb.gd, %bb.fz, %bb.gb, %bb.ga, %bb.fu, %bb.fw, %bb.fv, %bb.fr, %bb.fq, %bb.fo, %bb.fn, %bb.fl, %bb.fk, %bb.fi, %bb.fh, %bb.ff, %bb.fe, %bb.fc, %bb.fb, %bb.ez, %bb.ey, %bb.eu, %bb.et, %bb.ep, %bb.eo, %bb.em, %bb.el, %bb.eg, %bb.ef, %bb.ed, %bb.ec, %bb.dy, %bb.ea, %bb.dz, %bb.dt, %bb.ds, %bb.do, %bb.dn, %bb.dj, %bb.dl, %bb.dk, %bb.de, %bb.dg, %bb.df, %bb.db, %bb.da, %bb.cv, %bb.cu, %bb.cq, %bb.cp, %bb.cl, %bb.ck, %bb.ci, %bb.ch, %bb.cf, %bb.ce, %bb.ca, %bb.bz, %bb.bv, %bb.bu, %bb.bp, %bb.bo, %bb.bm, %bb.bl, %bb.bj, %bb.bi, %bb.bg, %bb.bf, %bb.bb, %bb.ba, %bb.aw, %bb.av, %bb.ar, %bb.aq, %bb.ai, %bb.ah, %bb.ad, %bb.ac, %bb.y, %bb.x, %bb.t, %bb.s, %bb.q, %bb.p, %bb.n, %bb.m, %bb.i, %bb.h, %bb.d, %bb.c
  %.01328 = trunc i32 %4 to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i16 %.01328
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bits_ret_val(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_bits8(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i16 @de_d_gb_call_ref(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 %4, ptr nofree readnone captures(none) %5, i32 %6) #1 {
bb.a:
  %i.a = load i32, ptr @hf_gsm_a_group_call_reference, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_gsm_a_service_flag, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.c, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_gsm_a_af_acknowledgement, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.e, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_gsm_a_call_priority, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.i = add i32 %3, 4                            ; 2 uses
  %i.j = load i32, ptr @hf_gsm_a_ciphering_info, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.l = load i32, ptr @hf_gsm_a_spare_bits, align 4
  %i.m = shl i32 %i.i, 3
  %i.n = or disjoint i32 %i.m, 4
  %i.o = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.n, i32 noundef 4, i32 noundef 0) ; 0 uses
  ret i16 5
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i16 @de_cn_common_gsm_map_nas_sys_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #1 {
bb.a:
  %i.a = load i32, ptr @hf_gsm_a_lac, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.c = add i32 %3, 2                            ; 2 uses
  %i.d = icmp ugt i32 %4, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %4, -2
  %i.f = tail call ptr @proto_tree_add_expert(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_extraneous_data, ptr noundef %0, i32 noundef %i.c, i32 noundef %i.e) ; 0 uses
  %i.g = add i32 %4, %3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.c, %bb.a ]
  %i.h = sub i32 %.0, %3
  %i.i = trunc i32 %i.h to i16
  ret i16 %i.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i16 @de_cs_domain_spec_sys_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #1 {
bb.a:
  %i.a = load i32, ptr @hf_gsm_a_rr_t3212, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = add i32 %3, 1                            ; 2 uses
  %i.d = load i32, ptr @hf_gsm_a_spare_bits, align 4
  %i.e = shl i32 %i.c, 3
  %i.f = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.d, ptr noundef %0, i32 noundef %i.e, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_gsm_a_att, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.c, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = add i32 %3, 2                            ; 2 uses
  %i.j = icmp ugt i32 %4, 2
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %4, -2
  %i.l = tail call ptr @proto_tree_add_expert(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_extraneous_data, ptr noundef %0, i32 noundef %i.i, i32 noundef %i.k) ; 0 uses
  %i.m = add i32 %4, %3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.m, %bb.b ], [ %i.i, %bb.a ]
  %i.n = sub i32 %.0, %3
  %i.o = trunc i32 %i.n to i16
  ret i16 %i.o
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i16 @de_ps_domain_spec_sys_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #1 {
bb.a:
  %i.a = load i32, ptr @hf_gsm_a_gm_rac, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = add i32 %3, 1                            ; 3 uses
  %i.d = load i32, ptr @hf_gsm_a_spare_bits, align 4
  %i.e = shl i32 %i.c, 3
  %i.f = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.d, ptr noundef %0, i32 noundef %i.e, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_gsm_a_nmo_1, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.c, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_gsm_a_nmo, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.c, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = add i32 %3, 2                            ; 2 uses
  %i.l = icmp ugt i32 %4, 2
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = add i32 %4, -2
  %i.n = tail call ptr @proto_tree_add_expert(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_extraneous_data, ptr noundef %0, i32 noundef %i.k, i32 noundef %i.m) ; 0 uses
  %i.o = add i32 %4, %3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.o, %bb.b ], [ %i.k, %bb.a ]
  %i.p = sub i32 %.0, %3
  %i.q = trunc i32 %i.p to i16
  ret i16 %i.q
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden zeroext i16 @de_plmn_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) #1 {
bb.a:
  %i.a = icmp ugt i32 %4, 2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.042 = phi i8 [ %i.h, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %.03741 = phi i32 [ %i.g, %.lr.ph ], [ %3, %bb.a ] ; 3 uses
  %i.b = load i32, ptr @ett_gsm_a_plmn, align 4
  %i.c = zext i8 %.042 to i32
  %i.d = add nuw nsw i32 %i.c, 1
  %i.e = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %1, ptr noundef %0, i32 noundef %.03741, i32 noundef 3, i32 noundef %i.b, ptr noundef null, ptr noundef nonnull @.str.82, i32 noundef %i.d) ; 2 uses
  %i.f = tail call ptr @dissect_e212_mcc_mnc_wmem_packet_str(ptr noundef %0, ptr noundef %2, ptr noundef %i.e, i32 noundef %.03741, i32 noundef 0, i1 noundef zeroext true)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.e, ptr noundef nonnull @.str.83, ptr noundef %i.f)
  %i.g = add i32 %.03741, 3                       ; 3 uses
  %i.h = add i8 %.042, 1                          ; 2 uses
  %.neg = sub i32 %3, %i.g
  %7 = add i32 %.neg, %4                          ; 2 uses
  %i.i = icmp ugt i32 %7, 2
  br i1 %i.i, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !8

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %8 = add i32 %4, -3                             ; 2 uses
  %9 = urem i32 %8, 3
  %10 = sub nuw i32 %8, %9
  %11 = add nuw i32 %10, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.037.lcssa = phi i32 [ %3, %bb.a ], [ %i.g, %._crit_edge.loopexit ] ; 3 uses
  %.0.lcssa = phi i8 [ 0, %bb.a ], [ %i.h, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa40 = phi i32 [ 0, %bb.a ], [ %11, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %4, %bb.a ], [ %7, %._crit_edge.loopexit ] ; 2 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = sext i32 %6 to i64
  %i.k = zext i8 %.0.lcssa to i32
  %i.l = icmp eq i8 %.0.lcssa, 1
  %i.m = select i1 %i.l, ptr @.str.32, ptr @.str.85
  %i.n = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %5, i64 noundef %i.j, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.84, i32 noundef %i.k, ptr noundef nonnull %i.m) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.o = icmp ugt i32 %4, %.lcssa40
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @proto_tree_add_expert(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_extraneous_data, ptr noundef %0, i32 noundef %.037.lcssa, i32 noundef %.lcssa) ; 0 uses
  %i.q = add i32 %.lcssa, %.037.lcssa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.q, %bb.d ], [ %.037.lcssa, %bb.c ]
  %i.r = sub i32 %.1, %3
  %i.s = trunc i32 %i.r to i16
  ret i16 %i.s
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i16 @de_ciph_key_seq_num(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #1 {
bb.a:
  %i.a = icmp eq i32 %4, 1
  %. = select i1 %i.a, i32 4, i32 0
  %i.b = load i32, ptr @hf_gsm_a_spare_bits, align 4
  %i.c = shl i32 %3, 3
  %i.d = or disjoint i32 %., %i.c                 ; 2 uses
  %i.e = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef %i.d, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.f = load i32, ptr @hf_gsm_a_key_seq, align 4
  %i.g = or disjoint i32 %i.d, 1
  %i.h = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.g, i32 noundef 3, i32 noundef 0) ; 0 uses
  ret i16 1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i16 @de_pd_sapi(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 %4, ptr nofree readnone captures(none) %5, i32 %6) #1 {
bb.a:
  %i.a = load i32, ptr getelementptr (i8, ptr @ett_gsm_dtap_elem, i64 40), align 4
  %i.b = tail call ptr @val_to_str_ext_const(i32 noundef 10, ptr noundef nonnull @gsm_dtap_elem_strings_ext, ptr noundef nonnull @.str.32)
  %i.c = tail call ptr @proto_tree_add_subtree(ptr noundef %1, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.a, ptr noundef null, ptr noundef %i.b)
  %i.d = load i32, ptr @hf_gsm_a_spare_bits, align 4
  %i.e = shl i32 %3, 3
  %i.f = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.d, ptr noundef %0, i32 noundef %i.e, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_gsm_a_sapi, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.g, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_gsm_a_L3_protocol_discriminator, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.i, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret i16 1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i16 @de_prio(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 %4, ptr nofree readnone captures(none) %5, i32 %6) #1 {
bb.a:
  %i.a = load i32, ptr @hf_gsm_a_b8spare, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_gsm_a_call_prio, align 4
  %i.d = shl i32 %3, 3
  %i.e = or disjoint i32 %i.d, 5
  %i.f = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.c, ptr noundef %0, i32 noundef %i.e, i32 noundef 3, i32 noundef 0) ; 0 uses
  ret i16 1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i16 @de_nas_cont_for_ps_ho(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #1 {
bb.a:
  %i.a = load i32, ptr @hf_gsm_a_old_xid, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_gsm_a_type_of_ciph_alg, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.c, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = add i32 %3, 1
  %i.f = load i32, ptr @hf_gsm_a_iov_ui, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.e, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.h = add i32 %3, 5                            ; 2 uses
  %i.i = icmp ugt i32 %4, 5
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %4, -5
  %i.k = tail call ptr @proto_tree_add_expert(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_extraneous_data, ptr noundef %0, i32 noundef %i.h, i32 noundef %i.j) ; 0 uses
  %i.l = add i32 %4, %3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.l, %bb.b ], [ %i.h, %bb.a ]
  %i.m = sub i32 %.0, %3
  %i.n = trunc i32 %i.m to i16
  ret i16 %i.n
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i16 @de_ms_net_feat_sup(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 %4, ptr nofree readnone captures(none) %5, i32 %6) #1 {
bb.a:
  %i.a = shl i32 %3, 3                            ; 2 uses
  %i.b = or disjoint i32 %i.a, 4
  %i.c = load i32, ptr @hf_gsm_a_spare_bits, align 4
  %i.d = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.c, ptr noundef %0, i32 noundef %i.b, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.e = or disjoint i32 %i.a, 7
  %i.f = load i32, ptr @hf_gsm_a_ext_periodic_timers, align 4
  %i.g = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret i16 1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_gsm_a_common() local_unnamed_addr #1 {
bb.a:
  store ptr @ett_gsm_a_plmn, ptr @proto_register_gsm_a_common.ett, align 16
  store ptr @ett_gsm_a_poly_pnt, ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 8), align 8
  store ptr @ett_gsm_common_elem, ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 16), align 16
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 4), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 24), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 8), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 32), align 16
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 12), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 40), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 16), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 48), align 16
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 20), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 56), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 24), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 64), align 16
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 28), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 72), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 32), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 80), align 16
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 36), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 88), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 40), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 96), align 16
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 44), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 104), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 48), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 112), align 16
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 52), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 120), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 56), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 128), align 16
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 60), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 136), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 64), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 144), align 16
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 68), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 152), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_common_elem, i64 72), ptr getelementptr inbounds nuw (i8, ptr @proto_register_gsm_a_common.ett, i64 160), align 16
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.516, ptr noundef nonnull @.str.517, ptr noundef nonnull @.str.496) ; 2 uses
  store i32 %i.a, ptr @proto_a_common, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_gsm_a_common.hf, i32 noundef 200)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_gsm_a_common.ett, i32 noundef 21)
  %i.b = load i32, ptr @proto_a_common, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_gsm_a_common.ei, i32 noundef 7)
  %i.d = tail call i32 @register_tap(ptr noundef nonnull @.str.496)
  store i32 %i.d, ptr @gsm_a_tap, align 4
  tail call void @register_stat_tap_table_ui(ptr noundef nonnull @proto_register_gsm_a_common.gsm_a_bssmap_stat_table)
  tail call void @register_stat_tap_table_ui(ptr noundef nonnull @proto_register_gsm_a_common.gsm_a_dtap_mm_stat_table)
  tail call void @register_stat_tap_table_ui(ptr noundef nonnull @proto_register_gsm_a_common.gsm_a_dtap_rr_stat_table)
  tail call void @register_stat_tap_table_ui(ptr noundef nonnull @proto_register_gsm_a_common.gsm_a_dtap_cc_stat_table)
  tail call void @register_stat_tap_table_ui(ptr noundef nonnull @proto_register_gsm_a_common.gsm_a_dtap_gmm_stat_table)
  tail call void @register_stat_tap_table_ui(ptr noundef nonnull @proto_register_gsm_a_common.gsm_a_dtap_sms_stat_table)
  tail call void @register_stat_tap_table_ui(ptr noundef nonnull @proto_register_gsm_a_common.gsm_a_dtap_sm_stat_table)
  tail call void @register_stat_tap_table_ui(ptr noundef nonnull @proto_register_gsm_a_common.gsm_a_dtap_ss_stat_table)
  tail call void @register_stat_tap_table_ui(ptr noundef nonnull @proto_register_gsm_a_common.gsm_a_dtap_tp_stat_table)
  tail call void @register_stat_tap_table_ui(ptr noundef nonnull @proto_register_gsm_a_common.gsm_a_sacch_rr_stat_table)
  %i.e = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.521, ptr noundef nonnull @.str.521, ptr noundef nonnull @.str.522)
  tail call void @proto_register_field_array(i32 noundef %i.e, ptr noundef nonnull @proto_register_gsm_a_common.hf_3gpp, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @gsm_a_bssmap_stat_init(ptr noundef %0) #1 {
bb.a:
  tail call fastcc void @gsm_a_stat_init(ptr noundef %0, ptr noundef nonnull @.str.846, ptr noundef nonnull @gsm_a_bssmap_msg_strings)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 2) i32 @gsm_a_bssmap_stat_packet(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 %4) #1 {
bb.a:
  %i.a = load i8, ptr %3, align 4
  %.not.i = icmp eq i8 %i.a, 0
  br i1 %.not.i, label %bb.b, label %gsm_a_stat_packet.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %3, i64 1          ; 2 uses
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i32
  %i.j = tail call ptr @stat_tap_get_field_data(ptr noundef %i.f, i32 noundef %i.i, i32 noundef 2) ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8        ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8
  %i.n = load i8, ptr %i.g, align 1
  %i.o = zext i8 %i.n to i32
  tail call void @stat_tap_set_field_data(ptr noundef %i.f, i32 noundef %i.o, i32 noundef 2, ptr noundef %i.j)
  br label %gsm_a_stat_packet.exit

gsm_a_stat_packet.exit:                           ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @gsm_a_stat_reset(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20         ; 2 uses
end_hunk_0
