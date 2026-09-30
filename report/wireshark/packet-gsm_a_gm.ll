Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-gsm_a_gm?download=true
inline.NumInlined: 15
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@de_gmm_ms_net_cap:bb.a
bb.c:                                             ; preds = %bb.a
  %i.q = add i32 %3, 1                            ; 9 uses
  %i.r = load i32, ptr @hf_gsm_a_gmm_net_cap_pfc, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.r, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr @hf_gsm_a_gmm_net_cap_ext_gea_bits, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef 0)
  %i.v = load i32, ptr @ett_gmm_network_cap, align 4
  %i.w = tail call ptr @proto_item_add_subtree(ptr noundef %i.u, i32 noundef %i.v) ; 6 uses
  %i.x = load i32, ptr @hf_gsm_a_gmm_net_cap_gea2, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.z = load i32, ptr @hf_gsm_a_gmm_net_cap_gea3, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ab = load i32, ptr @hf_gsm_a_gmm_net_cap_gea4, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = load i32, ptr @hf_gsm_a_gmm_net_cap_gea5, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.af = load i32, ptr @hf_gsm_a_gmm_net_cap_gea6, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ah = load i32, ptr @hf_gsm_a_gmm_net_cap_gea7, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aj = load i32, ptr @hf_gsm_a_gmm_net_cap_lcs, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.al = icmp eq i32 %4, 2
  br i1 %i.al, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = add i32 %3, 2                           ; 8 uses
  %i.an = load i32, ptr @hf_gsm_a_gmm_net_cap_ps_irat_iu, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ap = load i32, ptr @hf_gsm_a_gmm_net_cap_ps_irat_s1, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ar = load i32, ptr @hf_gsm_a_gmm_net_cap_comb_proc, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.at = load i32, ptr @hf_gsm_a_gmm_net_cap_isr, align 4
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.av = load i32, ptr @hf_gsm_a_gmm_net_cap_srvcc_to_geran, align 4
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.av, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ax = load i32, ptr @hf_gsm_a_gmm_net_cap_epc, align 4
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ax, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.az = load i32, ptr @hf_gsm_a_gmm_net_cap_nf, align 4
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.az, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bb = load i32, ptr @hf_gsm_a_gmm_net_geran_net_sharing, align 4
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bb, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bd = icmp ult i32 %4, 4
  br i1 %i.bd, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = add i32 %3, 3                           ; 8 uses
  %i.bf = load i32, ptr @hf_gsm_a_gmm_net_cap_up_int_prot, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bf, ptr noundef %0, i32 noundef %i.be, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bh = load i32, ptr @hf_gsm_a_gmm_net_cap_up_gia4, align 4
  %i.bi = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bh, ptr noundef %0, i32 noundef %i.be, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bj = load i32, ptr @hf_gsm_a_gmm_net_cap_up_gia5, align 4
  %i.bk = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bj, ptr noundef %0, i32 noundef %i.be, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bl = load i32, ptr @hf_gsm_a_gmm_net_cap_up_gia6, align 4
  %i.bm = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bl, ptr noundef %0, i32 noundef %i.be, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bn = load i32, ptr @hf_gsm_a_gmm_net_cap_up_gia7, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bn, ptr noundef %0, i32 noundef %i.be, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bp = load i32, ptr @hf_gsm_a_gmm_net_cap_epco_ie_ind, align 4
  %i.bq = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bp, ptr noundef %0, i32 noundef %i.be, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.br = load i32, ptr @hf_gsm_a_gmm_net_cap_restrict_use_enh_cov, align 4
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.br, ptr noundef %0, i32 noundef %i.be, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bt = load i32, ptr @hf_gsm_a_gmm_net_cap_dc_eutra_nr_cap, align 4
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bt, ptr noundef %0, i32 noundef %i.be, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bv = add i32 %3, 4                           ; 2 uses
  %.not = icmp eq i32 %4, 4
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bw = add i32 %4, -4
  %i.bx = tail call ptr @proto_tree_add_expert(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_extraneous_data, ptr noundef %0, i32 noundef %i.bv, i32 noundef %i.bw) ; 0 uses
  %i.by = add i32 %4, %3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.by, %bb.f ], [ %i.bv, %bb.e ]
  %i.bz = sub i32 %.0, %3
  %i.ca = trunc i32 %i.bz to i16
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.g, %bb.b
  %.0130 = phi i16 [ %i.p, %bb.b ], [ %i.ca, %bb.g ], [ 2, %bb.c ], [ 3, %bb.d ]
  ret i16 %.0130
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define zeroext i16 @de_gmm_ms_radio_acc_cap(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8
  %i.b = shl i32 %4, 3
  %i.c = icmp ult i32 %i.b, 11
  br i1 %i.c, label %._crit_edge, label %.lr.ph4361

.lr.ph4361:                                       ; preds = %bb.a
  %i.d = shl i32 %3, 3
  %i.e = getelementptr i8, ptr %2, i64 416        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph4361, %.thread
  %.034844360 = phi i8 [ 4, %.lr.ph4361 ], [ %.2, %.thread ] ; 29 uses
  %.034864359 = phi i8 [ 0, %.lr.ph4361 ], [ %.23488, %.thread ] ; 27 uses
  %.034894358 = phi i32 [ 0, %.lr.ph4361 ], [ %i.v, %.thread ]
  %.035244357 = phi i8 [ 0, %.lr.ph4361 ], [ %.136, %.thread ] ; 3 uses
  %.035644356 = phi i32 [ 0, %.lr.ph4361 ], [ %.1363700, %.thread ] ; 3 uses
  %.037014355 = phi ptr [ null, %.lr.ph4361 ], [ %i.x, %.thread ]
  %.037034354 = phi i32 [ %i.d, %.lr.ph4361 ], [ %.243727, %.thread ] ; 2 uses
  %.037284353 = phi i32 [ %4, %.lr.ph4361 ], [ %.1363864, %.thread ] ; 4 uses
  %.038654352 = phi i32 [ %3, %.lr.ph4361 ], [ %.1364001, %.thread ] ; 5 uses
  %.not = icmp eq i32 %.037284353, %4
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i8 %.035244357, 0
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i32 %.037284353, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = call ptr @proto_tree_add_expert(ptr noundef %.037014355, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.038654352, i32 noundef 1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.038654352)
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw i32 %i.j, 24
  %i.l = or i32 %i.k, %.035644356
  %i.m = add i32 %.037284353, -1
  %i.n = add i32 %.038654352, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.o = add i8 %.035244357, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.13866 = phi i32 [ %i.n, %bb.f ], [ %.038654352, %bb.g ] ; 3 uses
  %.13729 = phi i32 [ %i.m, %bb.f ], [ %.037284353, %bb.g ] ; 4 uses
  %.13565 = phi i32 [ %i.l, %bb.f ], [ %.035644356, %bb.g ] ; 2 uses
  %.13525 = phi i8 [ 7, %bb.f ], [ %i.o, %bb.g ]  ; 2 uses
  %.not4221.not = icmp sgt i32 %.13565, -1
  br i1 %.not4221.not, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = shl i32 %.13729, 3
  %i.q = zext i8 %.13525 to i32
  %i.r = add i32 %i.p, %i.q
  %i.s = icmp ult i32 %i.r, 11
  br i1 %i.s, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = add i32 %.037034354, 1
  %i.u = shl i32 %.13565, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.23867 = phi i32 [ %.13866, %bb.j ], [ %.038654352, %bb.b ] ; 5 uses
  %.23730 = phi i32 [ %.13729, %bb.j ], [ %4, %bb.b ] ; 3 uses
  %.13704 = phi i32 [ %i.t, %bb.j ], [ %.037034354, %bb.b ] ; 5 uses
  %.23566 = phi i32 [ %i.u, %bb.j ], [ %.035644356, %bb.b ] ; 2 uses
  %.23526 = phi i8 [ %.13525, %bb.j ], [ %.035244357, %bb.b ] ; 4 uses
  %i.v = add i32 %.034894358, 1                   ; 2 uses
  %i.w = load i32, ptr @ett_gmm_radio_cap, align 4
  %i.x = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %1, ptr noundef %0, i32 noundef %.23867, i32 noundef 1, i32 noundef %i.w, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.57, i32 noundef %i.v) ; 202 uses
  %i.y = icmp ult i8 %.23526, 4
  br i1 %i.y, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.z = icmp eq i32 %.23730, 0
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.23867, i32 noundef 1) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ab = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.23867)
  %i.ac = zext i8 %i.ab to i32
  %narrow = sub nuw nsw i8 24, %.23526
  %i.ad = zext nneg i8 %narrow to i32
  %i.ae = shl nuw i32 %i.ac, %i.ad
  %i.af = or i32 %i.ae, %.23566
  %i.ag = add i32 %.23730, -1
  %i.ah = add i32 %.23867, 1
  %i.ai = or disjoint i8 %.23526, 8
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %.33868 = phi i32 [ %i.ah, %bb.n ], [ %.23867, %bb.k ] ; 4 uses
  %.33731 = phi i32 [ %i.ag, %bb.n ], [ %.23730, %bb.k ] ; 3 uses
  %.33567 = phi i32 [ %i.af, %bb.n ], [ %.23566, %bb.k ] ; 3 uses
  %.33527 = phi i8 [ %i.ai, %bb.n ], [ %.23526, %bb.k ] ; 2 uses
  %i.aj = lshr i32 %.33567, 28                    ; 2 uses
  %i.ak = load i32, ptr @hf_gsm_a_gm_acc_tech_type, align 4
  %i.al = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.ak, ptr noundef %0, i32 noundef %.13704, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.am = add i32 %.13704, 4
  %i.an = shl i32 %.33567, 4                      ; 2 uses
  %i.ao = add i8 %.33527, -4                      ; 3 uses
  %i.ap = icmp ult i8 %i.ao, 7
  br i1 %i.ap, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aq = icmp eq i32 %.33731, 0
  br i1 %i.aq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ar = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.33868, i32 noundef 1) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.as = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.33868)
  %i.at = zext i8 %i.as to i32
  %narrow4224 = sub nuw nsw i8 28, %.33527
  %i.au = zext nneg i8 %narrow4224 to i32
  %i.av = shl nuw i32 %i.at, %i.au
  %i.aw = or i32 %i.av, %i.an
  %i.ax = add i32 %.33731, -1
  %i.ay = add i32 %.33868, 1
  %7 = or disjoint i8 %i.ao, 8
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r
  %.43869 = phi i32 [ %i.ay, %bb.r ], [ %.33868, %bb.o ] ; 6 uses
  %.43732 = phi i32 [ %i.ax, %bb.r ], [ %.33731, %bb.o ] ; 5 uses
  %.43568 = phi i32 [ %i.aw, %bb.r ], [ %i.an, %bb.o ] ; 4 uses
  %.43528 = phi i8 [ %7, %bb.r ], [ %i.ao, %bb.o ] ; 2 uses
  %i.az = lshr i32 %.43568, 25                    ; 3 uses
  %i.ba = load i32, ptr @hf_gsm_a_gm_acc_cap_struct_len, align 4
  %i.bb = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.ba, ptr noundef %0, i32 noundef %i.am, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.bc = load ptr, ptr %i.a, align 8
  %i.bd = lshr i32 %.43568, 28
  %i.be = add nuw nsw i32 %i.bd, 1
  call void @proto_item_set_len(ptr noundef %i.bc, i32 noundef %i.be)
  %i.bf = add i32 %.13704, 11                     ; 4 uses
  %i.bg = shl i32 %.43568, 7                      ; 4 uses
  %i.bh = add i8 %.43528, -7                      ; 6 uses
  %i.bi = icmp eq i32 %i.aj, 15
  br i1 %i.bi, label %.preheader4320, label %bb.ay

.preheader4320:                                   ; preds = %bb.s, %.loopexit
  %.53870 = phi i32 [ %.123877, %.loopexit ], [ %.43869, %bb.s ] ; 5 uses
  %.53733 = phi i32 [ %.123740, %.loopexit ], [ %.43732, %bb.s ] ; 4 uses
  %.23705 = phi i32 [ %.43707, %.loopexit ], [ %i.bf, %bb.s ] ; 5 uses
  %.53569 = phi i32 [ %.123576, %.loopexit ], [ %i.bg, %bb.s ] ; 3 uses
  %.53529 = phi i8 [ %.123536, %.loopexit ], [ %i.bh, %bb.s ] ; 3 uses
  %.13495 = phi i32 [ %.33497, %.loopexit ], [ %i.az, %bb.s ] ; 6 uses
  %i.bj = icmp eq i32 %.13495, 0
  br i1 %i.bj, label %.thread, label %bb.t

bb.t:                                             ; preds = %.preheader4320
  %i.bk = icmp eq i8 %.53529, 0
  br i1 %i.bk, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bl = icmp eq i32 %.53733, 0
  br i1 %i.bl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bm = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.53870, i32 noundef 1) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.53870)
  %i.bo = zext i8 %i.bn to i32
  %i.bp = shl nuw i32 %i.bo, 24
  %i.bq = or i32 %i.bp, %.53569
  %i.br = add i32 %.53733, -1
  %i.bs = add i32 %.53870, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.bt = add i8 %.53529, -1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.63871 = phi i32 [ %i.bs, %bb.w ], [ %.53870, %bb.x ] ; 8 uses
  %.63734 = phi i32 [ %i.br, %bb.w ], [ %.53733, %bb.x ] ; 6 uses
  %.63570 = phi i32 [ %i.bq, %bb.w ], [ %.53569, %bb.x ] ; 3 uses
  %.63530 = phi i8 [ 7, %bb.w ], [ %i.bt, %bb.x ] ; 7 uses
  %i.bu = lshr i32 %.63570, 31                    ; 2 uses
  %trunc4295 = icmp sgt i32 %.63570, -1           ; 3 uses
  %.str.58..str.59 = select i1 %trunc4295, ptr @.str.58, ptr @.str.59
  %i.bv = load i32, ptr @hf_gsm_a_gm_presence, align 4
  %i.bw = add i32 %.63871, -1
  %i.bx = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.x, i32 noundef %i.bv, ptr noundef %0, i32 noundef %i.bw, i32 noundef 1, i32 noundef %i.bu, ptr noundef nonnull @.str.61, ptr noundef nonnull %.str.58..str.59, i32 noundef %i.bu) ; 0 uses
  %i.by = add i32 %.23705, 1                      ; 4 uses
  %i.bz = add nsw i32 %.13495, -1                 ; 3 uses
  %i.ca = shl i32 %.63570, 1                      ; 5 uses
  br i1 %trunc4295, label %.preheader, label %bb.ad

.preheader:                                       ; preds = %bb.y
  %.not43024339 = icmp eq i32 %i.bz, 0
  br i1 %.not43024339, label %.thread, label %.lr.ph4346

.lr.ph4346:                                       ; preds = %.preheader, %bb.ac
  %.234964345 = phi i32 [ %i.cn, %bb.ac ], [ %i.bz, %.preheader ] ; 2 uses
  %.735314344 = phi i8 [ %i.cq, %bb.ac ], [ %.63530, %.preheader ] ; 3 uses
  %.735714343 = phi i32 [ %i.co, %bb.ac ], [ %i.ca, %.preheader ] ; 2 uses
  %.337064342 = phi i32 [ %i.cr, %bb.ac ], [ %i.by, %.preheader ]
  %.737354341 = phi i32 [ %.83736, %bb.ac ], [ %.63734, %.preheader ] ; 3 uses
  %.738724340 = phi i32 [ %.83873, %bb.ac ], [ %.63871, %.preheader ] ; 4 uses
  %..23496 = call i32 @llvm.umin.i32(i32 %.234964345, i32 8) ; 5 uses
  %i.cb = zext i8 %.735314344 to i32              ; 2 uses
  %i.cc = icmp samesign ugt i32 %..23496, %i.cb
  br i1 %i.cc, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %.lr.ph4346
  %i.cd = icmp eq i32 %.737354341, 0
  br i1 %i.cd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ce = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.738724340, i32 noundef 1) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cf = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.738724340)
  %i.cg = zext i8 %i.cf to i32
  %i.ch = sub nuw nsw i32 24, %i.cb
  %i.ci = shl nuw i32 %i.cg, %i.ch
  %i.cj = or i32 %i.ci, %.735714343
  %i.ck = add i32 %.737354341, -1
  %i.cl = add i32 %.738724340, 1
  %i.cm = add nuw i8 %.735314344, 8
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph4346, %bb.ab
  %.83873 = phi i32 [ %i.cl, %bb.ab ], [ %.738724340, %.lr.ph4346 ] ; 2 uses
  %.83736 = phi i32 [ %i.ck, %bb.ab ], [ %.737354341, %.lr.ph4346 ] ; 2 uses
  %.83572 = phi i32 [ %i.cj, %bb.ab ], [ %.735714343, %.lr.ph4346 ]
  %.83532 = phi i8 [ %i.cm, %bb.ab ], [ %.735314344, %.lr.ph4346 ]
  %i.cn = sub nuw i32 %.234964345, %..23496       ; 2 uses
  %i.co = shl i32 %.83572, %..23496               ; 2 uses
  %i.cp = trunc nuw nsw i32 %..23496 to i8
  %i.cq = sub i8 %.83532, %i.cp                   ; 2 uses
  %i.cr = add i32 %..23496, %.337064342           ; 2 uses
  %.not4302 = icmp eq i32 %i.cn, 0
  br i1 %.not4302, label %.loopexit, label %.lr.ph4346, !llvm.loop !7

bb.ad:                                            ; preds = %bb.y
  %i.cs = icmp ult i32 %.13495, 5
  br i1 %i.cs, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ct = icmp ult i8 %.63530, 4
  br i1 %i.ct, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.cu = icmp eq i32 %.63734, 0
  br i1 %i.cu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cv = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.63871, i32 noundef 1) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cw = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.63871)
  %i.cx = zext i8 %i.cw to i32
  %narrow4297 = sub nuw nsw i8 24, %.63530
  %i.cy = zext nneg i8 %narrow4297 to i32
  %i.cz = shl nuw i32 %i.cx, %i.cy
  %i.da = or i32 %i.cz, %i.ca
  %i.db = add i32 %.63734, -1
  %i.dc = add i32 %.63871, 1
  %i.dd = or disjoint i8 %.63530, 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ah
  %.93874 = phi i32 [ %i.dc, %bb.ah ], [ %.63871, %bb.ae ] ; 5 uses
  %.93737 = phi i32 [ %i.db, %bb.ah ], [ %.63734, %bb.ae ] ; 4 uses
  %.93573 = phi i32 [ %i.da, %bb.ah ], [ %i.ca, %bb.ae ] ; 3 uses
  %.93533 = phi i8 [ %i.dd, %bb.ah ], [ %.63530, %bb.ae ] ; 2 uses
  %i.de = lshr i32 %.93573, 28
  %i.df = load i32, ptr @hf_gsm_a_gm_acc_tech_type, align 4
  %i.dg = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.df, ptr noundef %0, i32 noundef %i.by, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.dh = add i32 %.23705, 5                      ; 3 uses
  %i.di = add nsw i32 %.13495, -5                 ; 2 uses
  %i.dj = shl i32 %.93573, 4                      ; 3 uses
  %i.dk = add i8 %.93533, -4                      ; 5 uses
  %i.dl = icmp ult i32 %i.di, 3
  br i1 %i.dl, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dm = icmp ult i8 %i.dk, 3
  br i1 %i.dm, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.dn = icmp eq i32 %.93737, 0
  br i1 %i.dn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.do = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.93874, i32 noundef 1) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dp = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.93874)
  %i.dq = zext i8 %i.dp to i32
  %narrow4299 = sub nuw nsw i8 28, %.93533
  %i.dr = zext nneg i8 %narrow4299 to i32
  %i.ds = shl nuw i32 %i.dq, %i.dr
  %i.dt = or i32 %i.ds, %i.dj
  %i.du = add i32 %.93737, -1
  %i.dv = add i32 %.93874, 1
  %.not4298 = icmp ne i8 %i.dk, 0
  %.4304 = zext i1 %.not4298 to i32
  %8 = or disjoint i8 %i.dk, 8
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %bb.am
  %.103875 = phi i32 [ %i.dv, %bb.am ], [ %.93874, %bb.aj ] ; 6 uses
  %.103738 = phi i32 [ %i.du, %bb.am ], [ %.93737, %bb.aj ] ; 4 uses
  %.103574 = phi i32 [ %i.dt, %bb.am ], [ %i.dj, %bb.aj ]
  %.103534 = phi i8 [ %8, %bb.am ], [ %i.dk, %bb.aj ] ; 2 uses
  %.33501 = phi i32 [ %.4304, %bb.am ], [ 0, %bb.aj ] ; 2 uses
  %i.dw = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.dh, i32 noundef 3) ; 5 uses
  %i.dx = zext i8 %i.dw to i32                    ; 2 uses
  switch i32 %i.de, label %bb.aq [
    i32 4, label %bb.ao
    i32 3, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %switch.tableidx = add i8 %i.dw, -1             ; 2 uses
  %i.dy = icmp ult i8 %switch.tableidx, 3
  br i1 %i.dy, label %switch.lookup, label %bb.as

bb.ap:                                            ; preds = %bb.an
  %switch.tableidx4459 = add i8 %i.dw, -1         ; 2 uses
  %i.dz = icmp ult i8 %switch.tableidx4459, 3
  br i1 %i.dz, label %switch.lookup4460, label %bb.as

bb.aq:                                            ; preds = %bb.an
  %i.ea = icmp ult i32 %.93573, -1879048192
  br i1 %i.ea, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %switch.tableidx4463 = add i8 %i.dw, -2         ; 2 uses
  %i.eb = icmp ult i8 %switch.tableidx4463, 4
  br i1 %i.eb, label %switch.lookup4464, label %bb.as

switch.lookup:                                    ; preds = %bb.ao
  %i.ec = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.de_gmm_ms_radio_acc_cap.3, i64 %i.ec
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.as

switch.lookup4460:                                ; preds = %bb.ap
  %i.ed = zext nneg i8 %switch.tableidx4459 to i64
  %switch.gep4461 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.de_gmm_ms_radio_acc_cap.4, i64 %i.ed
  %switch.load4462 = load ptr, ptr %switch.gep4461, align 8
  br label %bb.as

switch.lookup4464:                                ; preds = %bb.ar
  %i.ee = zext nneg i8 %switch.tableidx4463 to i64
  %switch.gep4465 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.de_gmm_ms_radio_acc_cap.5, i64 %i.ee
  %switch.load4466 = load ptr, ptr %switch.gep4465, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ao, %bb.ap, %bb.ar, %switch.lookup4464, %switch.lookup4460, %switch.lookup, %bb.aq
  %.13492 = phi ptr [ %switch.load4462, %switch.lookup4460 ], [ %switch.load4466, %switch.lookup4464 ], [ @.str.70, %bb.aq ], [ %switch.load, %switch.lookup ], [ @.str.65, %bb.ar ], [ @.str.65, %bb.ap ], [ @.str.65, %bb.ao ]
  %i.ef = load i32, ptr @hf_gsm_a_gm_rf_power_capability, align 4
  %i.eg = xor i32 %.33501, -1
  %i.eh = add i32 %.103875, %i.eg
  %i.ei = add nuw nsw i32 %.33501, 1
  %i.ej = load ptr, ptr %i.e, align 8
  %i.ek = zext i8 %i.dw to i64
  %i.el = call ptr @decode_bits_in_field(ptr noundef %i.ej, i32 noundef %i.dh, i32 noundef 3, i64 noundef %i.ek, i32 noundef 0)
  %i.em = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.x, i32 noundef %i.ef, ptr noundef %0, i32 noundef %i.eh, i32 noundef %i.ei, i32 noundef %i.dx, ptr noundef nonnull @.str.71, ptr noundef %i.el, ptr noundef nonnull %.13492, i32 noundef %i.dx) ; 0 uses
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
  %i.eu = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.103875, i32 noundef 1) ; 0 uses
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
  %9 = or disjoint i8 %i.eq, 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.at, %bb.aw
  %.113876 = phi i32 [ %i.fb, %bb.aw ], [ %.103875, %bb.at ] ; 2 uses
  %.113739 = phi i32 [ %i.fa, %bb.aw ], [ %.103738, %bb.at ]
  %.113575 = phi i32 [ %i.ez, %bb.aw ], [ %i.ep, %bb.at ]
  %.113535 = phi i8 [ %9, %bb.aw ], [ %i.eq, %bb.at ]
  %.53503 = phi i32 [ %.4305, %bb.aw ], [ 0, %bb.at ] ; 2 uses
  %i.fc = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.en, i32 noundef 2)
  %i.fd = zext i8 %i.fc to i32
  %i.fe = load i32, ptr @hf_gsm_a_gm_8psk_power_class, align 4
  %i.ff = xor i32 %.53503, -1
  %i.fg = add i32 %.113876, %i.ff
  %i.fh = add nuw nsw i32 %.53503, 1
  %i.fi = call ptr @proto_tree_add_uint(ptr noundef %i.x, i32 noundef %i.fe, ptr noundef %0, i32 noundef %i.fg, i32 noundef %i.fh, i32 noundef %i.fd) ; 0 uses
  %i.fj = add i32 %.23705, 10
  %i.fk = add nsw i32 %.13495, -10
  %i.fl = shl i32 %.113575, 2
  %i.fm = add i8 %.113535, -2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %bb.as, %bb.ai, %bb.ad, %bb.ax
  %.123877 = phi i32 [ %.113876, %bb.ax ], [ %.103875, %bb.as ], [ %.63871, %bb.ad ], [ %.93874, %bb.ai ], [ %.83873, %bb.ac ] ; 2 uses
  %.123740 = phi i32 [ %.113739, %bb.ax ], [ %.103738, %bb.as ], [ %.63734, %bb.ad ], [ %.93737, %bb.ai ], [ %.83736, %bb.ac ] ; 2 uses
  %.43707 = phi i32 [ %i.fj, %bb.ax ], [ %i.en, %bb.as ], [ %i.by, %bb.ad ], [ %i.dh, %bb.ai ], [ %i.cr, %bb.ac ] ; 2 uses
  %.123576 = phi i32 [ %i.fl, %bb.ax ], [ %i.ep, %bb.as ], [ %i.ca, %bb.ad ], [ %i.dj, %bb.ai ], [ %i.co, %bb.ac ] ; 2 uses
  %.123536 = phi i8 [ %i.fm, %bb.ax ], [ %i.eq, %bb.as ], [ %.63530, %bb.ad ], [ %i.dk, %bb.ai ], [ %i.cq, %bb.ac ] ; 2 uses
  %.33497 = phi i32 [ %i.fk, %bb.ax ], [ %i.eo, %bb.as ], [ %i.bz, %bb.ad ], [ %i.di, %bb.ai ], [ 0, %bb.ac ]
  br i1 %trunc4295, label %.thread, label %.preheader4320, !llvm.loop !8

bb.ay:                                            ; preds = %bb.s
  %i.fn = icmp ult i32 %.43568, 100663296
  br i1 %i.fn, label %.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fo = icmp ult i8 %i.bh, 3
  br i1 %i.fo, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.fp = icmp eq i32 %.43732, 0
  br i1 %i.fp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fq = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.43869, i32 noundef 1) ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.fr = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.43869)
  %i.fs = zext i8 %i.fr to i32
  %narrow4226 = sub nuw nsw i8 31, %.43528
  %i.ft = zext nneg i8 %narrow4226 to i32
  %i.fu = shl nuw i32 %i.fs, %i.ft
  %i.fv = or i32 %i.fu, %i.bg
  %i.fw = add i32 %.43732, -1
  %i.fx = add i32 %.43869, 1
  %.not4225 = icmp ne i8 %i.bh, 0
  %.4306 = zext i1 %.not4225 to i32
  %10 = or disjoint i8 %i.bh, 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.az, %bb.bc
  %.133878 = phi i32 [ %i.fx, %bb.bc ], [ %.43869, %bb.az ] ; 6 uses
  %.133741 = phi i32 [ %i.fw, %bb.bc ], [ %.43732, %bb.az ] ; 4 uses
  %.133577 = phi i32 [ %i.fv, %bb.bc ], [ %i.bg, %bb.az ]
  %.133537 = phi i8 [ %10, %bb.bc ], [ %i.bh, %bb.az ] ; 2 uses
  %.73505 = phi i32 [ %.4306, %bb.bc ], [ 0, %bb.az ] ; 2 uses
  %i.fy = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bf, i32 noundef 3) ; 5 uses
  %i.fz = zext i8 %i.fy to i32                    ; 2 uses
  switch i32 %i.aj, label %bb.bg [
    i32 4, label %bb.be
    i32 3, label %bb.bf
  ]

bb.be:                                            ; preds = %bb.bd
  %switch.tableidx4467 = add i8 %i.fy, -1         ; 2 uses
  %i.ga = icmp ult i8 %switch.tableidx4467, 3
  br i1 %i.ga, label %switch.lookup4468, label %bb.bi

bb.bf:                                            ; preds = %bb.bd
  %switch.tableidx4471 = add i8 %i.fy, -1         ; 2 uses
  %i.gb = icmp ult i8 %switch.tableidx4471, 3
  br i1 %i.gb, label %switch.lookup4472, label %bb.bi

bb.bg:                                            ; preds = %bb.bd
  %i.gc = icmp ult i32 %.33567, -1879048192
  br i1 %i.gc, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %switch.tableidx4475 = add i8 %i.fy, -2         ; 2 uses
  %i.gd = icmp ult i8 %switch.tableidx4475, 4
  br i1 %i.gd, label %switch.lookup4476, label %bb.bi

switch.lookup4468:                                ; preds = %bb.be
  %i.ge = zext nneg i8 %switch.tableidx4467 to i64
  %switch.gep4469 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.de_gmm_ms_radio_acc_cap.3, i64 %i.ge
  %switch.load4470 = load ptr, ptr %switch.gep4469, align 8
  br label %bb.bi

switch.lookup4472:                                ; preds = %bb.bf
  %i.gf = zext nneg i8 %switch.tableidx4471 to i64
  %switch.gep4473 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.de_gmm_ms_radio_acc_cap.4, i64 %i.gf
  %switch.load4474 = load ptr, ptr %switch.gep4473, align 8
  br label %bb.bi

switch.lookup4476:                                ; preds = %bb.bh
  %i.gg = zext nneg i8 %switch.tableidx4475 to i64
  %switch.gep4477 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.de_gmm_ms_radio_acc_cap.5, i64 %i.gg
  %switch.load4478 = load ptr, ptr %switch.gep4477, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.be, %bb.bf, %bb.bh, %switch.lookup4476, %switch.lookup4472, %switch.lookup4468, %bb.bg
  %.23493 = phi ptr [ %switch.load4474, %switch.lookup4472 ], [ %switch.load4478, %switch.lookup4476 ], [ @.str.70, %bb.bg ], [ %switch.load4470, %switch.lookup4468 ], [ @.str.65, %bb.bh ], [ @.str.65, %bb.bf ], [ @.str.65, %bb.be ]
  %i.gh = load i32, ptr @hf_gsm_a_gm_rf_power_capability, align 4
  %i.gi = xor i32 %.73505, -1
  %i.gj = add i32 %.133878, %i.gi
  %i.gk = add nuw nsw i32 %.73505, 1
  %i.gl = load ptr, ptr %i.e, align 8
  %i.gm = zext i8 %i.fy to i64
  %i.gn = call ptr @decode_bits_in_field(ptr noundef %i.gl, i32 noundef %i.bf, i32 noundef 3, i64 noundef %i.gm, i32 noundef 0)
  %i.go = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.x, i32 noundef %i.gh, ptr noundef %0, i32 noundef %i.gj, i32 noundef %i.gk, i32 noundef %i.fz, ptr noundef nonnull @.str.71, ptr noundef %i.gn, ptr noundef nonnull %.23493, i32 noundef %i.fz) ; 0 uses
  %i.gp = add i32 %.13704, 14
  %i.gq = shl i32 %.133577, 3                     ; 3 uses
  %i.gr = add i8 %.133537, -3                     ; 2 uses
  %i.gs = icmp eq i32 %i.az, 3
  br i1 %i.gs, label %.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gt = icmp eq i8 %i.gr, 0
  br i1 %i.gt, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.gu = icmp eq i32 %.133741, 0
  br i1 %i.gu, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.gv = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.133878, i32 noundef 1) ; 0 uses
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
  %i.hh = add nsw i32 %i.az, -4                   ; 2 uses
  %i.hi = shl i32 %.143578, 1                     ; 2 uses
  br i1 %i.hd, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hj = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.x, i32 noundef %i.he, ptr noundef %0, i32 noundef %i.hf, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.72, i32 noundef 0) ; 0 uses
  br label %.loopexit4322

bb.bq:                                            ; preds = %bb.bo
  %i.hk = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.x, i32 noundef %i.he, ptr noundef %0, i32 noundef %i.hf, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.73, i32 noundef 1) ; 0 uses
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
  %i.ho = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1538804323, i32 noundef 1) ; 0 uses
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
  %i.hz = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.x, i32 noundef %i.hx, ptr noundef %0, i32 noundef %i.hy, i32 noundef 1, i32 noundef %i.hw, ptr noundef nonnull @.str.76, i32 noundef %.04329, ptr noundef nonnull %.str.74..str.75, i32 noundef %i.hw) ; 0 uses
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
  %i.ih = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.183883, i32 noundef 1) ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
end_hunk_0
begin_hunk_1_@de_gmm_ms_radio_acc_cap:bb.a
  br i1 %i.iu, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %i.iv = icmp eq i32 %.193747, 0
  br i1 %i.iv, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.iw = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.193884, i32 noundef 1) ; 0 uses
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
  %i.je = load i32, ptr @hf_gsm_a_gm_rac_pseudo_sync, align 4
  %i.jf = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.je, ptr noundef %0, i32 noundef %i.ir, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.jg = add i32 %.73710, 2                      ; 2 uses
  %i.jh = shl i32 %.203584, 1                     ; 3 uses
  %i.ji = icmp eq i32 %.6, 2
  br i1 %i.ji, label %.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jj = icmp eq i8 %.203544, 0
  br i1 %i.jj, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.jk = icmp eq i32 %.203748, 0
  br i1 %i.jk, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.jl = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.203885, i32 noundef 1) ; 0 uses
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.jm = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.203885)
  %i.jn = zext i8 %i.jm to i32
  %i.jo = shl nuw i32 %i.jn, 24
  %i.jp = or i32 %i.jo, %i.jh
  %i.jq = add i32 %.203748, -1
  %i.jr = add i32 %.203885, 1
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cl
  %i.js = add i8 %.203544, -1
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.213886 = phi i32 [ %i.jr, %bb.co ], [ %.203885, %bb.cp ] ; 5 uses
  %.213749 = phi i32 [ %i.jq, %bb.co ], [ %.203748, %bb.cp ] ; 4 uses
  %.213585 = phi i32 [ %i.jp, %bb.co ], [ %i.jh, %bb.cp ]
  %.213545 = phi i8 [ 7, %bb.co ], [ %i.js, %bb.cp ] ; 3 uses
  %i.jt = load i32, ptr @hf_gsm_a_gm_rac_vgcs, align 4
  %i.ju = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.jt, ptr noundef %0, i32 noundef %i.jg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.jv = add i32 %.73710, 3                      ; 2 uses
  %i.jw = shl i32 %.213585, 1                     ; 3 uses
  %i.jx = icmp eq i32 %.6, 3
  br i1 %i.jx, label %.thread, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jy = icmp eq i8 %.213545, 0
  br i1 %i.jy, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  %i.jz = icmp eq i32 %.213749, 0
  br i1 %i.jz, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.ka = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.213886, i32 noundef 1) ; 0 uses
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.kb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.213886)
  %i.kc = zext i8 %i.kb to i32
  %i.kd = shl nuw i32 %i.kc, 24
  %i.ke = or i32 %i.kd, %i.jw
  %i.kf = add i32 %.213749, -1
  %i.kg = add i32 %.213886, 1
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cr
  %i.kh = add i8 %.213545, -1
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.223887 = phi i32 [ %i.kg, %bb.cu ], [ %.213886, %bb.cv ] ; 5 uses
  %.223750 = phi i32 [ %i.kf, %bb.cu ], [ %.213749, %bb.cv ] ; 4 uses
  %.223586 = phi i32 [ %i.ke, %bb.cu ], [ %i.jw, %bb.cv ]
  %.223546 = phi i8 [ 7, %bb.cu ], [ %i.kh, %bb.cv ] ; 3 uses
  %i.ki = load i32, ptr @hf_gsm_a_gm_rac_vbs, align 4
  %i.kj = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.ki, ptr noundef %0, i32 noundef %i.jv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.kk = add i32 %.73710, 4                      ; 2 uses
  %i.kl = shl i32 %.223586, 1                     ; 3 uses
  %i.km = icmp eq i32 %.6, 4
  br i1 %i.km, label %.thread, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.kn = icmp eq i8 %.223546, 0
  br i1 %i.kn, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.ko = icmp eq i32 %.223750, 0
  br i1 %i.ko, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.kp = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.223887, i32 noundef 1) ; 0 uses
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.kq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.223887)
  %i.kr = zext i8 %i.kq to i32
  %i.ks = shl nuw i32 %i.kr, 24
  %i.kt = or i32 %i.ks, %i.kl
  %i.ku = add i32 %.223750, -1
  %i.kv = add i32 %.223887, 1
  br label %bb.dc

bb.db:                                            ; preds = %bb.cx
  %i.kw = add i8 %.223546, -1
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.233888 = phi i32 [ %i.kv, %bb.da ], [ %.223887, %bb.db ] ; 6 uses
  %.233751 = phi i32 [ %i.ku, %bb.da ], [ %.223750, %bb.db ] ; 5 uses
  %.233587 = phi i32 [ %i.kt, %bb.da ], [ %i.kl, %bb.db ] ; 2 uses
  %.233547 = phi i8 [ 7, %bb.da ], [ %i.kw, %bb.db ] ; 4 uses
  %i.kx = load i32, ptr @hf_gsm_a_gm_rac_multislot_capability, align 4
  %i.ky = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.kx, ptr noundef %0, i32 noundef %i.kk, i32 noundef 1, i32 noundef 0)
  %i.kz = add i32 %.73710, 5                      ; 2 uses
  %i.la = add nsw i32 %.6, -5                     ; 2 uses
  %i.lb = shl i32 %.233587, 1                     ; 4 uses
  %.not4227 = icmp sgt i32 %.233587, -1
  br i1 %.not4227, label %bb.hs, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.lc = load i32, ptr @ett_gsm_a_gm_msrac_multislot_capability, align 4
  %i.ld = call ptr @proto_item_add_subtree(ptr noundef %i.ky, i32 noundef %i.lc) ; 10 uses
  %i.le = icmp eq i32 %i.la, 0
  br i1 %i.le, label %.thread, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.lf = icmp eq i8 %.233547, 0
  br i1 %i.lf, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.lg = icmp eq i32 %.233751, 0
  br i1 %i.lg, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.lh = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.233888, i32 noundef 1) ; 0 uses
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.li = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.233888)
  %i.lj = zext i8 %i.li to i32
  %i.lk = shl nuw i32 %i.lj, 24
  %i.ll = or i32 %i.lk, %i.lb
  %i.lm = add i32 %.233751, -1
  %i.ln = add i32 %.233888, 1
  br label %bb.dj

bb.di:                                            ; preds = %bb.de
  %i.lo = zext i8 %.233547 to i32
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.243889 = phi i32 [ %i.ln, %bb.dh ], [ %.233888, %bb.di ] ; 7 uses
  %.243752 = phi i32 [ %i.lm, %bb.dh ], [ %.233751, %bb.di ] ; 5 uses
  %.243588 = phi i32 [ %i.ll, %bb.dh ], [ %i.lb, %bb.di ] ; 3 uses
  %.243548 = phi i32 [ 8, %bb.dh ], [ %i.lo, %bb.di ] ; 3 uses
  %i.lp = icmp sgt i32 %.243588, -1
  br i1 %i.lp, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.lq = load i32, ptr @hf_gsm_a_gm_rac_hscsd_multi_slot_class, align 4
  %i.lr = add i32 %.243889, -1
  %i.ls = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.ld, i32 noundef %i.lq, ptr noundef %0, i32 noundef %i.lr, i32 noundef 1, i32 noundef 255, ptr noundef nonnull @.str.77, i32 noundef 0) ; 0 uses
  %i.lt = add i32 %.73710, 6
  %i.lu = add nsw i32 %.6, -6
  %i.lv = shl nuw i32 %.243588, 1
  %i.lw = trunc nuw i32 %.243548 to i8
  %i.lx = add i8 %i.lw, -1
  br label %bb.dr

bb.dl:                                            ; preds = %bb.dj
  %i.ly = add nsw i32 %.6, -6
  %i.lz = shl i32 %.243588, 1                     ; 3 uses
  %i.ma = trunc nuw i32 %.243548 to i8
  %i.mb = add i8 %i.ma, -1                        ; 4 uses
  %i.mc = add i32 %.73710, 6                      ; 2 uses
  %i.md = icmp ult i32 %i.ly, 5
  br i1 %i.md, label %.thread, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.me = icmp ult i8 %i.mb, 5
  br i1 %i.me, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.mf = icmp eq i32 %.243752, 0
  br i1 %i.mf, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.mg = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.243889, i32 noundef 1) ; 0 uses
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.mh = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.243889)
  %i.mi = zext i8 %i.mh to i32
  %narrow4229 = sub nsw i32 25, %.243548
  %i.mj = and i32 %narrow4229, 255
  %i.mk = shl nuw i32 %i.mi, %i.mj
  %i.ml = or i32 %i.mk, %i.lz
  %i.mm = add i32 %.243752, -1
  %i.mn = add i32 %.243889, 1
  %11 = or disjoint i8 %i.mb, 8
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dm, %bb.dp
  %.253890 = phi i32 [ %i.mn, %bb.dp ], [ %.243889, %bb.dm ]
  %.253753 = phi i32 [ %i.mm, %bb.dp ], [ %.243752, %bb.dm ]
  %.253589 = phi i32 [ %i.ml, %bb.dp ], [ %i.lz, %bb.dm ]
  %.253549 = phi i8 [ %11, %bb.dp ], [ %i.mb, %bb.dm ]
  %i.mo = load i32, ptr @hf_gsm_a_gm_rac_hscsd_multi_slot_class, align 4
  %i.mp = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.mo, ptr noundef %0, i32 noundef %i.mc, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.mq = add i32 %.73710, 11
  %i.mr = add nsw i32 %.6, -11
  %i.ms = shl i32 %.253589, 5
  %i.mt = add i8 %.253549, -5
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dk
  %.263891 = phi i32 [ %.243889, %bb.dk ], [ %.253890, %bb.dq ] ; 5 uses
  %.263754 = phi i32 [ %.243752, %bb.dk ], [ %.253753, %bb.dq ] ; 4 uses
  %.83711 = phi i32 [ %i.lt, %bb.dk ], [ %i.mq, %bb.dq ] ; 4 uses
  %.263590 = phi i32 [ %i.lv, %bb.dk ], [ %i.ms, %bb.dq ] ; 3 uses
  %.263550 = phi i8 [ %i.lx, %bb.dk ], [ %i.mt, %bb.dq ] ; 3 uses
  %.7 = phi i32 [ %i.lu, %bb.dk ], [ %i.mr, %bb.dq ] ; 5 uses
  %i.mu = icmp eq i32 %.7, 0
  br i1 %i.mu, label %.thread, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.mv = icmp eq i8 %.263550, 0
  br i1 %i.mv, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.mw = icmp eq i32 %.263754, 0
  br i1 %i.mw, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.mx = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.263891, i32 noundef 1) ; 0 uses
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.my = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.263891)
  %i.mz = zext i8 %i.my to i32
  %i.na = shl nuw i32 %i.mz, 24
  %i.nb = or i32 %i.na, %.263590
  %i.nc = add i32 %.263754, -1
  %i.nd = add i32 %.263891, 1
  br label %bb.dx

bb.dw:                                            ; preds = %bb.ds
  %i.ne = zext i8 %.263550 to i32
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.273892 = phi i32 [ %i.nd, %bb.dv ], [ %.263891, %bb.dw ] ; 7 uses
  %.273755 = phi i32 [ %i.nc, %bb.dv ], [ %.263754, %bb.dw ] ; 5 uses
  %.273591 = phi i32 [ %i.nb, %bb.dv ], [ %.263590, %bb.dw ] ; 3 uses
  %.273551 = phi i32 [ 8, %bb.dv ], [ %i.ne, %bb.dw ] ; 3 uses
  %i.nf = icmp sgt i32 %.273591, -1
  %i.ng = add i32 %.83711, 1                      ; 3 uses
  br i1 %i.nf, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.nh = load i32, ptr @hf_gsm_a_gm_rac_gprs_multi_slot_class, align 4
  %i.ni = add i32 %.273892, -1
  %i.nj = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.ld, i32 noundef %i.nh, ptr noundef %0, i32 noundef %i.ni, i32 noundef 1, i32 noundef 255, ptr noundef nonnull @.str.77, i32 noundef 0) ; 0 uses
  %i.nk = add nsw i32 %.7, -1
  %i.nl = trunc nuw i32 %.273551 to i8
  %i.nm = add i8 %i.nl, -1
  br label %bb.el

bb.dz:                                            ; preds = %bb.dx
  %i.nn = shl i32 %.273591, 1                     ; 3 uses
  %i.no = trunc nuw i32 %.273551 to i8
  %i.np = add i8 %i.no, -1                        ; 4 uses
  %i.nq = icmp ult i32 %.7, 6
  br i1 %i.nq, label %.thread, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.nr = icmp ult i8 %i.np, 5
  br i1 %i.nr, label %bb.eb, label %bb.ee

bb.eb:                                            ; preds = %bb.ea
  %i.ns = icmp eq i32 %.273755, 0
  br i1 %i.ns, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.nt = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.273892, i32 noundef 1) ; 0 uses
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.nu = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.273892)
  %i.nv = zext i8 %i.nu to i32
  %narrow4231 = sub nsw i32 25, %.273551
  %i.nw = and i32 %narrow4231, 255
  %i.nx = shl nuw i32 %i.nv, %i.nw
  %i.ny = or i32 %i.nx, %i.nn
  %i.nz = add i32 %.273755, -1
  %i.oa = add i32 %.273892, 1
  %12 = or disjoint i8 %i.np, 8
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ea, %bb.ed
  %.283893 = phi i32 [ %i.oa, %bb.ed ], [ %.273892, %bb.ea ] ; 5 uses
  %.283756 = phi i32 [ %i.nz, %bb.ed ], [ %.273755, %bb.ea ] ; 4 uses
  %.283592 = phi i32 [ %i.ny, %bb.ed ], [ %i.nn, %bb.ea ]
  %.283552 = phi i8 [ %12, %bb.ed ], [ %i.np, %bb.ea ] ; 2 uses
  %i.ob = load i32, ptr @hf_gsm_a_gm_rac_gprs_multi_slot_class, align 4
  %i.oc = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.ob, ptr noundef %0, i32 noundef %i.ng, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.od = add i32 %.83711, 6                      ; 2 uses
  %i.oe = shl i32 %.283592, 5                     ; 3 uses
  %i.of = add i8 %.283552, -5                     ; 2 uses
  %i.og = icmp eq i32 %.7, 6
  br i1 %i.og, label %.thread, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.oh = icmp eq i8 %i.of, 0
  br i1 %i.oh, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  %i.oi = icmp eq i32 %.283756, 0
  br i1 %i.oi, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.oj = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.283893, i32 noundef 1) ; 0 uses
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.ok = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.283893)
  %i.ol = zext i8 %i.ok to i32
  %i.om = shl nuw i32 %i.ol, 24
  %i.on = or i32 %i.om, %i.oe
  %i.oo = add i32 %.283756, -1
  %i.op = add i32 %.283893, 1
  br label %bb.ek

bb.ej:                                            ; preds = %bb.ef
  %i.oq = add i8 %.283552, -6
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.293894 = phi i32 [ %i.op, %bb.ei ], [ %.283893, %bb.ej ]
  %.293757 = phi i32 [ %i.oo, %bb.ei ], [ %.283756, %bb.ej ]
  %.293593 = phi i32 [ %i.on, %bb.ei ], [ %i.oe, %bb.ej ]
  %.293553 = phi i8 [ 7, %bb.ei ], [ %i.oq, %bb.ej ]
  %i.or = load i32, ptr @hf_gsm_a_gm_rac_gprs_ext_dyn_alloc_cap, align 4
  %i.os = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.or, ptr noundef %0, i32 noundef %i.od, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ot = add i32 %.83711, 7
  %i.ou = add nsw i32 %.7, -7
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.dy
  %.303895 = phi i32 [ %.273892, %bb.dy ], [ %.293894, %bb.ek ] ; 5 uses
  %.303758 = phi i32 [ %.273755, %bb.dy ], [ %.293757, %bb.ek ] ; 4 uses
  %.93712 = phi i32 [ %i.ng, %bb.dy ], [ %i.ot, %bb.ek ] ; 4 uses
  %.303594.in = phi i32 [ %.273591, %bb.dy ], [ %.293593, %bb.ek ]
  %.303554 = phi i8 [ %i.nm, %bb.dy ], [ %.293553, %bb.ek ] ; 3 uses
  %.8 = phi i32 [ %i.nk, %bb.dy ], [ %i.ou, %bb.ek ] ; 5 uses
  %.303594 = shl i32 %.303594.in, 1               ; 3 uses
  %i.ov = icmp eq i32 %.8, 0
  br i1 %i.ov, label %.thread, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ow = icmp eq i8 %.303554, 0
  br i1 %i.ow, label %bb.en, label %bb.eq

bb.en:                                            ; preds = %bb.em
  %i.ox = icmp eq i32 %.303758, 0
  br i1 %i.ox, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.oy = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.303895, i32 noundef 1) ; 0 uses
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.oz = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.303895)
  %i.pa = zext i8 %i.oz to i32
  %i.pb = shl nuw i32 %i.pa, 24
  %i.pc = or i32 %i.pb, %.303594
  %i.pd = add i32 %.303758, -1
  %i.pe = add i32 %.303895, 1
  br label %bb.er

bb.eq:                                            ; preds = %bb.em
  %i.pf = zext i8 %.303554 to i32
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.313896 = phi i32 [ %i.pe, %bb.ep ], [ %.303895, %bb.eq ] ; 7 uses
  %.313759 = phi i32 [ %i.pd, %bb.ep ], [ %.303758, %bb.eq ] ; 5 uses
  %.313595 = phi i32 [ %i.pc, %bb.ep ], [ %.303594, %bb.eq ] ; 3 uses
  %.313555 = phi i32 [ 8, %bb.ep ], [ %i.pf, %bb.eq ] ; 3 uses
  %i.pg = icmp sgt i32 %.313595, -1
  %i.ph = add i32 %.93712, 1                      ; 3 uses
  br i1 %i.pg, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.pi = load i32, ptr @hf_gsm_a_gm_sms_value, align 4
  %i.pj = add i32 %.313896, -1
  %i.pk = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.ld, i32 noundef %i.pi, ptr noundef %0, i32 noundef %i.pj, i32 noundef 1, i32 noundef 255, ptr noundef nonnull @.str.77, i32 noundef 0) ; 0 uses
  %i.pl = add nsw i32 %.8, -1
  %i.pm = shl nuw i32 %.313595, 1
  %i.pn = trunc nuw i32 %.313555 to i8
  %i.po = add i8 %i.pn, -1
  br label %bb.fe

bb.et:                                            ; preds = %bb.er
  %i.pp = shl i32 %.313595, 1                     ; 3 uses
  %i.pq = trunc nuw i32 %.313555 to i8
  %i.pr = add i8 %i.pq, -1                        ; 4 uses
  %i.ps = icmp ult i32 %.8, 5
  br i1 %i.ps, label %.thread, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.pt = icmp ult i8 %i.pr, 4
  br i1 %i.pt, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  %i.pu = icmp eq i32 %.313759, 0
  br i1 %i.pu, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.pv = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.313896, i32 noundef 1) ; 0 uses
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.pw = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.313896)
  %i.px = zext i8 %i.pw to i32
  %narrow4233 = sub nsw i32 25, %.313555
  %i.py = and i32 %narrow4233, 255
  %i.pz = shl nuw i32 %i.px, %i.py
  %i.qa = or i32 %i.pz, %i.pp
  %i.qb = add i32 %.313759, -1
  %i.qc = add i32 %.313896, 1
  %13 = or disjoint i8 %i.pr, 8
  br label %bb.ey

bb.ey:                                            ; preds = %bb.eu, %bb.ex
  %.323897 = phi i32 [ %i.qc, %bb.ex ], [ %.313896, %bb.eu ] ; 5 uses
  %.323760 = phi i32 [ %i.qb, %bb.ex ], [ %.313759, %bb.eu ] ; 4 uses
  %.323596 = phi i32 [ %i.qa, %bb.ex ], [ %i.pp, %bb.eu ]
  %.323556 = phi i8 [ %13, %bb.ex ], [ %i.pr, %bb.eu ] ; 2 uses
  %i.qd = load i32, ptr @hf_gsm_a_gm_sms_value, align 4
  %i.qe = call ptr @proto_tree_add_bits_item(ptr noundef %i.ld, i32 noundef %i.qd, ptr noundef %0, i32 noundef %i.ph, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.qf = add i32 %.93712, 5                      ; 2 uses
  %i.qg = add nsw i32 %.8, -5
  %i.qh = shl i32 %.323596, 4                     ; 3 uses
  %i.qi = add i8 %.323556, -4                     ; 4 uses
  %i.qj = icmp ult i32 %i.qg, 4
  br i1 %i.qj, label %.thread, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.qk = icmp ult i8 %i.qi, 4
  br i1 %i.qk, label %bb.fa, label %bb.fd

bb.fa:                                            ; preds = %bb.ez
  %i.ql = icmp eq i32 %.323760, 0
  br i1 %i.ql, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.qm = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.323897, i32 noundef 1) ; 0 uses
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.qn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.323897)
  %i.qo = zext i8 %i.qn to i32
  %narrow4235 = sub nuw nsw i8 28, %.323556
  %i.qp = zext nneg i8 %narrow4235 to i32
  %i.qq = shl nuw i32 %i.qo, %i.qp
  %i.qr = or i32 %i.qq, %i.qh
  %i.qs = add i32 %.323760, -1
  %i.qt = add i32 %.323897, 1
  %14 = or disjoint i8 %i.qi, 8
  br label %bb.fd

bb.fd:                                            ; preds = %bb.ez, %bb.fc
  %.333898 = phi i32 [ %i.qt, %bb.fc ], [ %.323897, %bb.ez ]
  %.333761 = phi i32 [ %i.qs, %bb.fc ], [ %.323760, %bb.ez ]
  %.333597 = phi i32 [ %i.qr, %bb.fc ], [ %i.qh, %bb.ez ]
  %.333557 = phi i8 [ %14, %bb.fc ], [ %i.qi, %bb.ez ]
  %i.qu = load i32, ptr @hf_gsm_a_gm_sm_value, align 4
  %i.qv = call ptr @proto_tree_add_bits_item(ptr noundef %i.ld, i32 noundef %i.qu, ptr noundef %0, i32 noundef %i.qf, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.qw = add i32 %.93712, 9
  %i.qx = add nsw i32 %.8, -9
  %i.qy = shl i32 %.333597, 4
  %15 = add i8 %.333557, -4
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.es
  %.343899 = phi i32 [ %.313896, %bb.es ], [ %.333898, %bb.fd ] ; 5 uses
  %.343762 = phi i32 [ %.313759, %bb.es ], [ %.333761, %bb.fd ] ; 4 uses
  %.103713 = phi i32 [ %i.ph, %bb.es ], [ %i.qw, %bb.fd ] ; 3 uses
  %.343598 = phi i32 [ %i.pm, %bb.es ], [ %i.qy, %bb.fd ] ; 3 uses
  %.343558 = phi i8 [ %i.po, %bb.es ], [ %15, %bb.fd ] ; 3 uses
  %.9 = phi i32 [ %i.pl, %bb.es ], [ %i.qx, %bb.fd ] ; 4 uses
  %i.qz = icmp eq i32 %.9, 0
  br i1 %i.qz, label %.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ra = icmp eq i8 %.343558, 0
  br i1 %i.ra, label %bb.fg, label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  %i.rb = icmp eq i32 %.343762, 0
  br i1 %i.rb, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.rc = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.343899, i32 noundef 1) ; 0 uses
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.rd = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.343899)
  %i.re = zext i8 %i.rd to i32
  %i.rf = shl nuw i32 %i.re, 24
  %i.rg = or i32 %i.rf, %.343598
  %i.rh = add i32 %.343762, -1
  %i.ri = add i32 %.343899, 1
  br label %bb.fk

bb.fj:                                            ; preds = %bb.ff
  %i.rj = zext i8 %.343558 to i32
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.353900 = phi i32 [ %i.ri, %bb.fi ], [ %.343899, %bb.fj ] ; 7 uses
  %.353763 = phi i32 [ %i.rh, %bb.fi ], [ %.343762, %bb.fj ] ; 5 uses
  %.353599 = phi i32 [ %i.rg, %bb.fi ], [ %.343598, %bb.fj ] ; 3 uses
  %.353559 = phi i32 [ 8, %bb.fi ], [ %i.rj, %bb.fj ] ; 3 uses
  %i.rk = icmp sgt i32 %.353599, -1
  %i.rl = add i32 %.103713, 1                     ; 3 uses
  br i1 %i.rk, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.rm = load i32, ptr @hf_gsm_a_gm_rac_ecsd_multi_slot_class, align 4
  %i.rn = add i32 %.353900, -1
  %i.ro = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.ld, i32 noundef %i.rm, ptr noundef %0, i32 noundef %i.rn, i32 noundef 1, i32 noundef 255, ptr noundef nonnull @.str.77, i32 noundef 0) ; 0 uses
  %i.rp = add nsw i32 %.9, -1
  %i.rq = shl nuw i32 %.353599, 1
  %i.rr = trunc nuw i32 %.353559 to i8
  %i.rs = add i8 %i.rr, -1
  br label %bb.fs

bb.fm:                                            ; preds = %bb.fk
  %i.rt = shl i32 %.353599, 1                     ; 3 uses
  %i.ru = trunc nuw i32 %.353559 to i8
  %i.rv = add i8 %i.ru, -1                        ; 4 uses
  %i.rw = icmp ult i32 %.9, 6
  br i1 %i.rw, label %.thread, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.rx = icmp ult i8 %i.rv, 5
  br i1 %i.rx, label %bb.fo, label %bb.fr

bb.fo:                                            ; preds = %bb.fn
  %i.ry = icmp eq i32 %.353763, 0
  br i1 %i.ry, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.rz = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.353900, i32 noundef 1) ; 0 uses
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.sa = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.353900)
  %i.sb = zext i8 %i.sa to i32
  %narrow4237 = sub nsw i32 25, %.353559
  %i.sc = and i32 %narrow4237, 255
  %i.sd = shl nuw i32 %i.sb, %i.sc
  %i.se = or i32 %i.sd, %i.rt
  %i.sf = add i32 %.353763, -1
  %i.sg = add i32 %.353900, 1
  %16 = or disjoint i8 %i.rv, 8
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fn, %bb.fq
  %.363901 = phi i32 [ %i.sg, %bb.fq ], [ %.353900, %bb.fn ]
  %.363764 = phi i32 [ %i.sf, %bb.fq ], [ %.353763, %bb.fn ]
  %.363600 = phi i32 [ %i.se, %bb.fq ], [ %i.rt, %bb.fn ]
  %.363560 = phi i8 [ %16, %bb.fq ], [ %i.rv, %bb.fn ]
  %i.sh = load i32, ptr @hf_gsm_a_gm_rac_ecsd_multi_slot_class, align 4
  %i.si = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.sh, ptr noundef %0, i32 noundef %i.rl, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.sj = add i32 %.103713, 6
  %i.sk = add nsw i32 %.9, -6
  %i.sl = shl i32 %.363600, 5
  %i.sm = add i8 %.363560, -5
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fl
  %.373902 = phi i32 [ %.353900, %bb.fl ], [ %.363901, %bb.fr ] ; 5 uses
  %.373765 = phi i32 [ %.353763, %bb.fl ], [ %.363764, %bb.fr ] ; 4 uses
  %.113714 = phi i32 [ %i.rl, %bb.fl ], [ %i.sj, %bb.fr ] ; 5 uses
  %.373601 = phi i32 [ %i.rq, %bb.fl ], [ %i.sl, %bb.fr ] ; 3 uses
  %.373561 = phi i8 [ %i.rs, %bb.fl ], [ %i.sm, %bb.fr ] ; 3 uses
  %.10 = phi i32 [ %i.rp, %bb.fl ], [ %i.sk, %bb.fr ] ; 5 uses
  %i.sn = icmp eq i32 %.10, 0
  br i1 %i.sn, label %.thread, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.so = icmp eq i8 %.373561, 0
  br i1 %i.so, label %bb.fu, label %bb.fx

bb.fu:                                            ; preds = %bb.ft
  %i.sp = icmp eq i32 %.373765, 0
  br i1 %i.sp, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.sq = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.373902, i32 noundef 1) ; 0 uses
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.sr = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.373902)
  %i.ss = zext i8 %i.sr to i32
  %i.st = shl nuw i32 %i.ss, 24
  %i.su = or i32 %i.st, %.373601
  %i.sv = add i32 %.373765, -1
  %i.sw = add i32 %.373902, 1
  br label %bb.fy

bb.fx:                                            ; preds = %bb.ft
  %i.sx = zext i8 %.373561 to i32
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.383903 = phi i32 [ %i.sw, %bb.fw ], [ %.373902, %bb.fx ] ; 7 uses
  %.383766 = phi i32 [ %i.sv, %bb.fw ], [ %.373765, %bb.fx ] ; 5 uses
  %.383602 = phi i32 [ %i.su, %bb.fw ], [ %.373601, %bb.fx ] ; 3 uses
  %.383562 = phi i32 [ 8, %bb.fw ], [ %i.sx, %bb.fx ] ; 3 uses
  %i.sy = icmp sgt i32 %.383602, -1
  br i1 %i.sy, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.sz = load i32, ptr @hf_gsm_a_gm_rac_egprs_multi_slot_class, align 4
  %i.ta = add i32 %.383903, -1
  %i.tb = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.ld, i32 noundef %i.sz, ptr noundef %0, i32 noundef %i.ta, i32 noundef 1, i32 noundef 255, ptr noundef nonnull @.str.77, i32 noundef 0) ; 0 uses
  %i.tc = add nsw i32 %.10, -1
  %i.td = trunc nuw i32 %.383562 to i8
  %i.te = add i8 %i.td, -1
  %i.tf = add i32 %.113714, 1
  br label %bb.gm

bb.ga:                                            ; preds = %bb.fy
  %i.tg = shl i32 %.383602, 1                     ; 3 uses
  %i.th = trunc nuw i32 %.383562 to i8
  %i.ti = add i8 %i.th, -1                        ; 4 uses
  %i.tj = add i32 %.113714, 1                     ; 2 uses
  %i.tk = icmp ult i32 %.10, 6
  br i1 %i.tk, label %.thread, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.tl = icmp ult i8 %i.ti, 5
  br i1 %i.tl, label %bb.gc, label %bb.gf

bb.gc:                                            ; preds = %bb.gb
  %i.tm = icmp eq i32 %.383766, 0
  br i1 %i.tm, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.tn = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.383903, i32 noundef 1) ; 0 uses
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.to = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.383903)
  %i.tp = zext i8 %i.to to i32
  %narrow4239 = sub nsw i32 25, %.383562
  %i.tq = and i32 %narrow4239, 255
  %i.tr = shl nuw i32 %i.tp, %i.tq
  %i.ts = or i32 %i.tr, %i.tg
  %i.tt = add i32 %.383766, -1
  %i.tu = add i32 %.383903, 1
  %17 = or disjoint i8 %i.ti, 8
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gb, %bb.ge
  %.393904 = phi i32 [ %i.tu, %bb.ge ], [ %.383903, %bb.gb ] ; 5 uses
  %.393767 = phi i32 [ %i.tt, %bb.ge ], [ %.383766, %bb.gb ] ; 4 uses
  %.393603 = phi i32 [ %i.ts, %bb.ge ], [ %i.tg, %bb.gb ]
  %.393563 = phi i8 [ %17, %bb.ge ], [ %i.ti, %bb.gb ] ; 2 uses
  %i.tv = load i32, ptr @hf_gsm_a_gm_rac_egprs_multi_slot_class, align 4
  %i.tw = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.tv, ptr noundef %0, i32 noundef %i.tj, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.tx = add i32 %.113714, 6                     ; 2 uses
  %i.ty = shl i32 %.393603, 5                     ; 3 uses
  %i.tz = add i8 %.393563, -5                     ; 2 uses
  %i.ua = icmp eq i32 %.10, 6
  br i1 %i.ua, label %.thread, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ub = icmp eq i8 %i.tz, 0
  br i1 %i.ub, label %bb.gh, label %bb.gk

bb.gh:                                            ; preds = %bb.gg
  %i.uc = icmp eq i32 %.393767, 0
  br i1 %i.uc, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.ud = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.393904, i32 noundef 1) ; 0 uses
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %i.ue = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.393904)
  %i.uf = zext i8 %i.ue to i32
  %i.ug = shl nuw i32 %i.uf, 24
  %i.uh = or i32 %i.ug, %i.ty
  %i.ui = add i32 %.393767, -1
  %i.uj = add i32 %.393904, 1
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gg
  %i.uk = add i8 %.393563, -6
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %.403905 = phi i32 [ %i.uj, %bb.gj ], [ %.393904, %bb.gk ]
  %.403768 = phi i32 [ %i.ui, %bb.gj ], [ %.393767, %bb.gk ]
  %.403604 = phi i32 [ %i.uh, %bb.gj ], [ %i.ty, %bb.gk ]
  %.40 = phi i8 [ 7, %bb.gj ], [ %i.uk, %bb.gk ]
  %i.ul = load i32, ptr @hf_gsm_a_gm_rac_egprs_ext_dyn_alloc_cap, align 4
  %i.um = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.ul, ptr noundef %0, i32 noundef %i.tx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.un = add i32 %.113714, 7
  %i.uo = add nsw i32 %.10, -7
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.fz
  %.413906 = phi i32 [ %.383903, %bb.fz ], [ %.403905, %bb.gl ] ; 5 uses
  %.413769 = phi i32 [ %.383766, %bb.fz ], [ %.403768, %bb.gl ] ; 4 uses
  %.123715 = phi i32 [ %i.tf, %bb.fz ], [ %i.un, %bb.gl ] ; 6 uses
  %.413605.in = phi i32 [ %.383602, %bb.fz ], [ %.403604, %bb.gl ]
  %.41 = phi i8 [ %i.te, %bb.fz ], [ %.40, %bb.gl ] ; 3 uses
  %.11 = phi i32 [ %i.tc, %bb.fz ], [ %i.uo, %bb.gl ] ; 7 uses
  %.413605 = shl i32 %.413605.in, 1               ; 3 uses
  %i.up = icmp eq i32 %.11, 0
  br i1 %i.up, label %.thread, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.uq = icmp eq i8 %.41, 0
  br i1 %i.uq, label %bb.go, label %bb.gr

bb.go:                                            ; preds = %bb.gn
  %i.ur = icmp eq i32 %.413769, 0
  br i1 %i.ur, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.us = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.413906, i32 noundef 1) ; 0 uses
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.ut = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.413906)
  %i.uu = zext i8 %i.ut to i32
  %i.uv = shl nuw i32 %i.uu, 24
  %i.uw = or i32 %i.uv, %.413605
  %i.ux = add i32 %.413769, -1
  %i.uy = add i32 %.413906, 1
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gn
  %i.uz = zext i8 %.41 to i32
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.423907 = phi i32 [ %i.uy, %bb.gq ], [ %.413906, %bb.gr ] ; 7 uses
  %.423770 = phi i32 [ %i.ux, %bb.gq ], [ %.413769, %bb.gr ] ; 5 uses
  %.423606 = phi i32 [ %i.uw, %bb.gq ], [ %.413605, %bb.gr ] ; 3 uses
  %.42 = phi i32 [ 8, %bb.gq ], [ %i.uz, %bb.gr ] ; 3 uses
  %i.va = icmp sgt i32 %.423606, -1
  %i.vb = add i32 %.123715, 1                     ; 3 uses
  br i1 %i.va, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.vc = load i32, ptr @hf_gsm_a_gm_rac_dtm_gprs_multi_slot_class, align 4
  %i.vd = add i32 %.423907, -1
  %i.ve = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.ld, i32 noundef %i.vc, ptr noundef %0, i32 noundef %i.vd, i32 noundef 1, i32 noundef 255, ptr noundef nonnull @.str.77, i32 noundef 0) ; 0 uses
  %i.vf = add nsw i32 %.11, -1
  %i.vg = shl nuw i32 %.423606, 1
  %i.vh = trunc nuw i32 %.42 to i8
  %i.vi = add i8 %i.vh, -1
  br label %bb.hs

bb.gu:                                            ; preds = %bb.gs
  %i.vj = shl i32 %.423606, 1                     ; 3 uses
  %i.vk = trunc nuw i32 %.42 to i8
  %i.vl = add i8 %i.vk, -1                        ; 4 uses
  %i.vm = icmp ult i32 %.11, 3
  br i1 %i.vm, label %.thread, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.vn = icmp ult i8 %i.vl, 2
  br i1 %i.vn, label %bb.gw, label %bb.gz

bb.gw:                                            ; preds = %bb.gv
  %i.vo = icmp eq i32 %.423770, 0
  br i1 %i.vo, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.vp = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.423907, i32 noundef 1) ; 0 uses
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.vq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.423907)
  %i.vr = zext i8 %i.vq to i32
  %narrow4241 = sub nsw i32 25, %.42
  %i.vs = and i32 %narrow4241, 255
  %i.vt = shl nuw i32 %i.vr, %i.vs
  %i.vu = or i32 %i.vt, %i.vj
  %i.vv = add i32 %.423770, -1
  %i.vw = add i32 %.423907, 1
  %18 = or disjoint i8 %i.vl, 8
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gv, %bb.gy
  %.433908 = phi i32 [ %i.vw, %bb.gy ], [ %.423907, %bb.gv ] ; 5 uses
  %.433771 = phi i32 [ %i.vv, %bb.gy ], [ %.423770, %bb.gv ] ; 4 uses
  %.433607 = phi i32 [ %i.vu, %bb.gy ], [ %i.vj, %bb.gv ] ; 2 uses
  %.43 = phi i8 [ %18, %bb.gy ], [ %i.vl, %bb.gv ] ; 2 uses
  %i.vx = lshr i32 %.433607, 30
  %i.vy = trunc nuw nsw i32 %i.vx to i8           ; 5 uses
  %i.vz = load i32, ptr @hf_gsm_a_gm_rac_dtm_gprs_multi_slot_class, align 4
  %i.wa = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.vz, ptr noundef %0, i32 noundef %i.vb, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.wb = add i32 %.123715, 3                     ; 2 uses
  %i.wc = shl i32 %.433607, 2                     ; 3 uses
  %i.wd = add i8 %.43, -2                         ; 2 uses
  %i.we = icmp eq i32 %.11, 3
  br i1 %i.we, label %.thread, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.wf = icmp eq i8 %i.wd, 0
  br i1 %i.wf, label %bb.hb, label %bb.he

bb.hb:                                            ; preds = %bb.ha
  %i.wg = icmp eq i32 %.433771, 0
  br i1 %i.wg, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.wh = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.433908, i32 noundef 1) ; 0 uses
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.wi = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.433908)
  %i.wj = zext i8 %i.wi to i32
  %i.wk = shl nuw i32 %i.wj, 24
  %i.wl = or i32 %i.wk, %i.wc
  %i.wm = add i32 %.433771, -1
  %i.wn = add i32 %.433908, 1
  br label %bb.hf

bb.he:                                            ; preds = %bb.ha
  %i.wo = add i8 %.43, -3
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %.443909 = phi i32 [ %i.wn, %bb.hd ], [ %.433908, %bb.he ] ; 5 uses
  %.443772 = phi i32 [ %i.wm, %bb.hd ], [ %.433771, %bb.he ] ; 4 uses
  %.443608 = phi i32 [ %i.wl, %bb.hd ], [ %i.wc, %bb.he ]
  %.44 = phi i8 [ 7, %bb.hd ], [ %i.wo, %bb.he ]  ; 3 uses
  %i.wp = load i32, ptr @hf_gsm_a_gm_rac_single_slt_dtm, align 4
  %i.wq = call ptr @proto_tree_add_bits_item(ptr noundef %i.ld, i32 noundef %i.wp, ptr noundef %0, i32 noundef %i.wb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.wr = add i32 %.123715, 4                     ; 2 uses
  %i.ws = shl i32 %.443608, 1                     ; 3 uses
  %i.wt = icmp eq i32 %.11, 4
  br i1 %i.wt, label %.thread, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.wu = icmp eq i8 %.44, 0
  br i1 %i.wu, label %bb.hh, label %bb.hk

bb.hh:                                            ; preds = %bb.hg
  %i.wv = icmp eq i32 %.443772, 0
  br i1 %i.wv, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.ww = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.443909, i32 noundef 1) ; 0 uses
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.wx = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.443909)
  %i.wy = zext i8 %i.wx to i32
  %i.wz = shl nuw i32 %i.wy, 24
  %i.xa = or i32 %i.wz, %i.ws
  %i.xb = add i32 %.443772, -1
  %i.xc = add i32 %.443909, 1
  br label %bb.hl

bb.hk:                                            ; preds = %bb.hg
  %i.xd = add i8 %.44, -1
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %.453910 = phi i32 [ %i.xc, %bb.hj ], [ %.443909, %bb.hk ] ; 6 uses
  %.453773 = phi i32 [ %i.xb, %bb.hj ], [ %.443772, %bb.hk ] ; 5 uses
  %.453609 = phi i32 [ %i.xa, %bb.hj ], [ %i.ws, %bb.hk ] ; 2 uses
  %.45 = phi i8 [ 7, %bb.hj ], [ %i.xd, %bb.hk ]  ; 6 uses
  %i.xe = lshr i32 %.453609, 31
  %i.xf = trunc nuw nsw i32 %i.xe to i8           ; 3 uses
  %i.xg = load i32, ptr @hf_gsm_a_gm_rac_dtm_egprs_multi_slot_cls_pres, align 4
  %i.xh = call ptr @proto_tree_add_bits_item(ptr noundef %i.ld, i32 noundef %i.xg, ptr noundef %0, i32 noundef %i.wr, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xi = add i32 %.123715, 5                     ; 3 uses
  %i.xj = add nsw i32 %.11, -5                    ; 2 uses
  %i.xk = shl i32 %.453609, 1                     ; 5 uses
  %.not4242 = icmp sgt i32 %i.xk, -1
  br i1 %.not4242, label %bb.hs, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.xl = icmp ult i32 %i.xj, 2
  br i1 %i.xl, label %.thread, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.xm = icmp ult i8 %.45, 2
  br i1 %i.xm, label %bb.ho, label %bb.hr

bb.ho:                                            ; preds = %bb.hn
  %i.xn = icmp eq i32 %.453773, 0
  br i1 %i.xn, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.xo = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.453910, i32 noundef 1) ; 0 uses
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.xp = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.453910)
  %i.xq = zext i8 %i.xp to i32
  %narrow4244 = sub nuw nsw i8 24, %.45
  %i.xr = zext nneg i8 %narrow4244 to i32
  %i.xs = shl nuw i32 %i.xq, %i.xr
  %i.xt = or i32 %i.xs, %i.xk
  %i.xu = add i32 %.453773, -1
  %i.xv = add i32 %.453910, 1
  %i.xw = or disjoint i8 %.45, 8
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hn, %bb.hq
  %.463911 = phi i32 [ %i.xv, %bb.hq ], [ %.453910, %bb.hn ]
  %.463774 = phi i32 [ %i.xu, %bb.hq ], [ %.453773, %bb.hn ]
  %.463610 = phi i32 [ %i.xt, %bb.hq ], [ %i.xk, %bb.hn ]
  %.46 = phi i8 [ %i.xw, %bb.hq ], [ %.45, %bb.hn ]
  %i.xx = load i32, ptr @hf_gsm_a_gm_rac_dtm_egprs_multi_slot_class, align 4
  %i.xy = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.xx, ptr noundef %0, i32 noundef %i.xi, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.xz = add i32 %.123715, 7
  %i.ya = add nsw i32 %.11, -7
  %i.yb = shl i32 %.463610, 2
  %i.yc = add i8 %.46, -2
  br label %bb.hs

bb.hs:                                            ; preds = %bb.gt, %bb.hr, %bb.hl, %bb.dc
  %.473912 = phi i32 [ %.423907, %bb.gt ], [ %.463911, %bb.hr ], [ %.453910, %bb.hl ], [ %.233888, %bb.dc ] ; 5 uses
  %.473775 = phi i32 [ %.423770, %bb.gt ], [ %.463774, %bb.hr ], [ %.453773, %bb.hl ], [ %.233751, %bb.dc ] ; 4 uses
  %.133716 = phi i32 [ %i.vb, %bb.gt ], [ %i.xz, %bb.hr ], [ %i.xi, %bb.hl ], [ %i.kz, %bb.dc ] ; 4 uses
  %.473611 = phi i32 [ %i.vg, %bb.gt ], [ %i.yb, %bb.hr ], [ %i.xk, %bb.hl ], [ %i.lb, %bb.dc ] ; 3 uses
  %.47 = phi i8 [ %i.vi, %bb.gt ], [ %i.yc, %bb.hr ], [ %.45, %bb.hl ], [ %.233547, %bb.dc ] ; 3 uses
  %.12 = phi i32 [ %i.vf, %bb.gt ], [ %i.ya, %bb.hr ], [ %i.xj, %bb.hl ], [ %i.la, %bb.dc ] ; 4 uses
  %.13487 = phi i8 [ %.034864359, %bb.gt ], [ %i.vy, %bb.hr ], [ %i.vy, %bb.hl ], [ %.034864359, %bb.dc ] ; 79 uses
  %.13485 = phi i8 [ %.034844360, %bb.gt ], [ %i.xf, %bb.hr ], [ %i.xf, %bb.hl ], [ %.034844360, %bb.dc ] ; 80 uses
  %i.yd = icmp eq i32 %.12, 0
  br i1 %i.yd, label %.thread, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.ye = icmp eq i8 %.47, 0
  br i1 %i.ye, label %bb.hu, label %bb.hx

bb.hu:                                            ; preds = %bb.ht
  %i.yf = icmp eq i32 %.473775, 0
  br i1 %i.yf, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.yg = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.473912, i32 noundef 1) ; 0 uses
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %i.yh = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.473912)
  %i.yi = zext i8 %i.yh to i32
  %i.yj = shl nuw i32 %i.yi, 24
  %i.yk = or i32 %i.yj, %.473611
  %i.yl = add i32 %.473775, -1
  %i.ym = add i32 %.473912, 1
  br label %bb.hy

bb.hx:                                            ; preds = %bb.ht
  %i.yn = add i8 %.47, -1
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %.483913 = phi i32 [ %i.ym, %bb.hw ], [ %.473912, %bb.hx ] ; 6 uses
  %.483776 = phi i32 [ %i.yl, %bb.hw ], [ %.473775, %bb.hx ] ; 5 uses
  %.483612 = phi i32 [ %i.yk, %bb.hw ], [ %.473611, %bb.hx ] ; 2 uses
  %.48 = phi i8 [ 7, %bb.hw ], [ %i.yn, %bb.hx ]  ; 7 uses
  %i.yo = load i32, ptr @hf_gsm_a_gm_rac_8psk_pow_cap_pres, align 4
  %i.yp = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.yo, ptr noundef %0, i32 noundef %.133716, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.yq = add i32 %.133716, 1                     ; 2 uses
  %i.yr = add nsw i32 %.12, -1
  %i.ys = shl i32 %.483612, 1                     ; 4 uses
  %.not4245 = icmp sgt i32 %.483612, -1
  br i1 %.not4245, label %bb.if, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.yt = icmp ult i32 %.12, 3
  br i1 %i.yt, label %.thread, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.yu = icmp ult i8 %.48, 2
  br i1 %i.yu, label %bb.ib, label %bb.ie

bb.ib:                                            ; preds = %bb.ia
  %i.yv = icmp eq i32 %.483776, 0
  br i1 %i.yv, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.yw = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.483913, i32 noundef 1) ; 0 uses
  br label %bb.id
end_hunk_1
begin_hunk_2_@de_gmm_ms_radio_acc_cap:bb.a
  %i.abf = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.abe, ptr noundef %0, i32 noundef %i.aar, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.abg = add i32 %.143717, 3                    ; 2 uses
  %i.abh = shl i32 %.533617, 1                    ; 3 uses
  %i.abi = icmp eq i32 %.13, 3
  br i1 %i.abi, label %.thread, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.abj = icmp eq i8 %.53, 0
  br i1 %i.abj, label %bb.iz, label %bb.jc

bb.iz:                                            ; preds = %bb.iy
  %i.abk = icmp eq i32 %.533781, 0
  br i1 %i.abk, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.abl = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.533918, i32 noundef 1) ; 0 uses
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.abm = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.533918)
  %i.abn = zext i8 %i.abm to i32
  %i.abo = shl nuw i32 %i.abn, 24
  %i.abp = or i32 %i.abo, %i.abh
  %i.abq = add i32 %.533781, -1
  %i.abr = add i32 %.533918, 1
  br label %bb.jd

bb.jc:                                            ; preds = %bb.iy
  %i.abs = add i8 %.53, -1
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %.543919 = phi i32 [ %i.abr, %bb.jb ], [ %.533918, %bb.jc ] ; 5 uses
  %.543782 = phi i32 [ %i.abq, %bb.jb ], [ %.533781, %bb.jc ] ; 4 uses
  %.543618 = phi i32 [ %i.abp, %bb.jb ], [ %i.abh, %bb.jc ]
  %.54 = phi i8 [ 7, %bb.jb ], [ %i.abs, %bb.jc ] ; 3 uses
  %i.abt = load i32, ptr @hf_gsm_a_gm_rac_umts_384_tdd_ra_cap, align 4
  %i.abu = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.abt, ptr noundef %0, i32 noundef %i.abg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.abv = add i32 %.143717, 4                    ; 2 uses
  %i.abw = shl i32 %.543618, 1                    ; 3 uses
  %i.abx = icmp eq i32 %.13, 4
  br i1 %i.abx, label %.thread, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.aby = icmp eq i8 %.54, 0
  br i1 %i.aby, label %bb.jf, label %bb.ji

bb.jf:                                            ; preds = %bb.je
  %i.abz = icmp eq i32 %.543782, 0
  br i1 %i.abz, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.aca = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.543919, i32 noundef 1) ; 0 uses
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf
  %i.acb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.543919)
  %i.acc = zext i8 %i.acb to i32
  %i.acd = shl nuw i32 %i.acc, 24
  %i.ace = or i32 %i.acd, %i.abw
  %i.acf = add i32 %.543782, -1
  %i.acg = add i32 %.543919, 1
  br label %bb.jj

bb.ji:                                            ; preds = %bb.je
  %i.ach = add i8 %.54, -1
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jh
  %.553920 = phi i32 [ %i.acg, %bb.jh ], [ %.543919, %bb.ji ] ; 5 uses
  %.553783 = phi i32 [ %i.acf, %bb.jh ], [ %.543782, %bb.ji ] ; 4 uses
  %.553619 = phi i32 [ %i.ace, %bb.jh ], [ %i.abw, %bb.ji ]
  %.55 = phi i8 [ 7, %bb.jh ], [ %i.ach, %bb.ji ] ; 3 uses
  %i.aci = load i32, ptr @hf_gsm_a_gm_rac_cdma2000_cap, align 4
  %i.acj = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.aci, ptr noundef %0, i32 noundef %i.abv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ack = add i32 %.143717, 5                    ; 2 uses
  %i.acl = shl i32 %.553619, 1                    ; 3 uses
  %i.acm = icmp eq i32 %.13, 5
  br i1 %i.acm, label %.thread, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.acn = icmp eq i8 %.55, 0
  br i1 %i.acn, label %bb.jl, label %bb.jo

bb.jl:                                            ; preds = %bb.jk
  %i.aco = icmp eq i32 %.553783, 0
  br i1 %i.aco, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.acp = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.553920, i32 noundef 1) ; 0 uses
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.jl
  %i.acq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.553920)
  %i.acr = zext i8 %i.acq to i32
  %i.acs = shl nuw i32 %i.acr, 24
  %i.act = or i32 %i.acs, %i.acl
  %i.acu = add i32 %.553783, -1
  %i.acv = add i32 %.553920, 1
  br label %bb.jp

bb.jo:                                            ; preds = %bb.jk
  %i.acw = add i8 %.55, -1
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  %.563921 = phi i32 [ %i.acv, %bb.jn ], [ %.553920, %bb.jo ] ; 5 uses
  %.563784 = phi i32 [ %i.acu, %bb.jn ], [ %.553783, %bb.jo ] ; 4 uses
  %.563620 = phi i32 [ %i.act, %bb.jn ], [ %i.acl, %bb.jo ]
  %.56 = phi i8 [ 7, %bb.jn ], [ %i.acw, %bb.jo ] ; 3 uses
  %i.acx = load i32, ptr @hf_gsm_a_gm_rac_umts_128_tdd_ra_cap, align 4
  %i.acy = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.acx, ptr noundef %0, i32 noundef %i.ack, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acz = add i32 %.143717, 6                    ; 2 uses
  %i.ada = shl i32 %.563620, 1                    ; 3 uses
  %i.adb = icmp eq i32 %.13, 6
  br i1 %i.adb, label %.thread, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.adc = icmp eq i8 %.56, 0
  br i1 %i.adc, label %bb.jr, label %bb.ju

bb.jr:                                            ; preds = %bb.jq
  %i.add = icmp eq i32 %.563784, 0
  br i1 %i.add, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  %i.ade = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.563921, i32 noundef 1) ; 0 uses
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jr
  %i.adf = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.563921)
  %i.adg = zext i8 %i.adf to i32
  %i.adh = shl nuw i32 %i.adg, 24
  %i.adi = or i32 %i.adh, %i.ada
  %i.adj = add i32 %.563784, -1
  %i.adk = add i32 %.563921, 1
  br label %bb.jv

bb.ju:                                            ; preds = %bb.jq
  %i.adl = add i8 %.56, -1
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %.573922 = phi i32 [ %i.adk, %bb.jt ], [ %.563921, %bb.ju ] ; 5 uses
  %.573785 = phi i32 [ %i.adj, %bb.jt ], [ %.563784, %bb.ju ] ; 4 uses
  %.573621 = phi i32 [ %i.adi, %bb.jt ], [ %i.ada, %bb.ju ]
  %.57 = phi i8 [ 7, %bb.jt ], [ %i.adl, %bb.ju ] ; 3 uses
  %i.adm = load i32, ptr @hf_gsm_a_gm_rac_geran_feat_pkg, align 4
  %i.adn = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.adm, ptr noundef %0, i32 noundef %i.acz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ado = add i32 %.143717, 7
  %i.adp = shl i32 %.573621, 1                    ; 3 uses
  %i.adq = icmp eq i32 %.13, 7
  br i1 %i.adq, label %.thread, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.adr = icmp eq i8 %.57, 0
  br i1 %i.adr, label %bb.jx, label %bb.ka

bb.jx:                                            ; preds = %bb.jw
  %i.ads = icmp eq i32 %.573785, 0
  br i1 %i.ads, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.adt = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.573922, i32 noundef 1) ; 0 uses
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %bb.jx
  %i.adu = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.573922)
  %i.adv = zext i8 %i.adu to i32
  %i.adw = shl nuw i32 %i.adv, 24
  %i.adx = or i32 %i.adw, %i.adp
  %i.ady = add i32 %.573785, -1
  %i.adz = add i32 %.573922, 1
  br label %bb.kb

bb.ka:                                            ; preds = %bb.jw
  %i.aea = zext i8 %.57 to i32
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jz
  %.583923 = phi i32 [ %i.adz, %bb.jz ], [ %.573922, %bb.ka ] ; 7 uses
  %.583786 = phi i32 [ %i.ady, %bb.jz ], [ %.573785, %bb.ka ] ; 5 uses
  %.583622 = phi i32 [ %i.adx, %bb.jz ], [ %i.adp, %bb.ka ] ; 3 uses
  %.58 = phi i32 [ 8, %bb.jz ], [ %i.aea, %bb.ka ] ; 3 uses
  %i.aeb = icmp sgt i32 %.583622, -1
  br i1 %i.aeb, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.aec = load i32, ptr @hf_gsm_a_gm_extended_dtm_egprs_multi_slot_class, align 4
  %i.aed = add i32 %.583923, -1
  %i.aee = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.x, i32 noundef %i.aec, ptr noundef %0, i32 noundef %i.aed, i32 noundef 1, i32 noundef 255, ptr noundef nonnull @.str.77, i32 noundef 0) ; 0 uses
  %i.aef = add nsw i32 %.13, -8
  %i.aeg = shl nuw i32 %.583622, 1
  %i.aeh = trunc nuw i32 %.58 to i8
  %i.aei = add i8 %i.aeh, -1
  %i.aej = add i32 %.143717, 8
  br label %bb.kp

bb.kd:                                            ; preds = %bb.kb
  %i.aek = shl i32 %.583622, 1                    ; 3 uses
  %i.ael = trunc nuw i32 %.58 to i8
  %i.aem = add i8 %i.ael, -1                      ; 5 uses
  %i.aen = add i32 %.143717, 8
  %i.aeo = and i32 %.13, -2
  %i.aep = icmp eq i32 %i.aeo, 8
  br i1 %i.aep, label %.thread, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.aeq = icmp ult i8 %i.aem, 2
  br i1 %i.aeq, label %bb.kf, label %bb.ki

bb.kf:                                            ; preds = %bb.ke
  %i.aer = icmp eq i32 %.583786, 0
  br i1 %i.aer, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kf
  %i.aes = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.583923, i32 noundef 1) ; 0 uses
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf
  %i.aet = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.583923)
  %i.aeu = zext i8 %i.aet to i32
  %narrow4249 = sub nsw i32 25, %.58
  %i.aev = and i32 %narrow4249, 255
  %i.aew = shl nuw i32 %i.aeu, %i.aev
  %i.aex = or i32 %i.aew, %i.aek
  %i.aey = add i32 %.583786, -1
  %i.aez = add i32 %.583923, 1
  %.4308 = zext nneg i8 %i.aem to i32
  %19 = or disjoint i8 %i.aem, 8
  br label %bb.ki

bb.ki:                                            ; preds = %bb.ke, %bb.kh
  %.593924 = phi i32 [ %i.aez, %bb.kh ], [ %.583923, %bb.ke ] ; 7 uses
  %.593787 = phi i32 [ %i.aey, %bb.kh ], [ %.583786, %bb.ke ] ; 5 uses
  %.593623 = phi i32 [ %i.aex, %bb.kh ], [ %i.aek, %bb.ke ] ; 2 uses
  %.59 = phi i8 [ %19, %bb.kh ], [ %i.aem, %bb.ke ] ; 2 uses
  %.29 = phi i32 [ %.4308, %bb.kh ], [ 0, %bb.ke ] ; 2 uses
  %i.afa = load i32, ptr @hf_gsm_a_gm_extended_dtm_gprs_multi_slot_class, align 4
  %i.afb = xor i32 %.29, -1
  %i.afc = add i32 %.593924, %i.afb
  %i.afd = add nuw nsw i32 %.29, 1
  %i.afe = lshr i32 %.593623, 30
  %i.aff = zext i8 %.13487 to i32
  %i.afg = shl nuw nsw i32 %i.aff, 4
  %i.afh = or disjoint i32 %i.afe, %i.afg
  %i.afi = call ptr @proto_tree_add_uint(ptr noundef %i.x, i32 noundef %i.afa, ptr noundef %0, i32 noundef %i.afc, i32 noundef %i.afd, i32 noundef %i.afh) ; 0 uses
  %i.afj = add i32 %.143717, 10                   ; 2 uses
  %i.afk = add nsw i32 %.13, -10                  ; 2 uses
  %i.afl = shl i32 %.593623, 2                    ; 4 uses
  %i.afm = add i8 %.59, -2                        ; 6 uses
  %i.afn = icmp ult i8 %.13485, 4
  br i1 %i.afn, label %bb.kj, label %bb.kp

bb.kj:                                            ; preds = %bb.ki
  %i.afo = icmp ult i32 %i.afk, 2
  br i1 %i.afo, label %.thread, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.afp = icmp ult i8 %i.afm, 2
  br i1 %i.afp, label %bb.kl, label %bb.ko

bb.kl:                                            ; preds = %bb.kk
  %i.afq = icmp eq i32 %.593787, 0
  br i1 %i.afq, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  %i.afr = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.593924, i32 noundef 1) ; 0 uses
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %bb.kl
  %i.afs = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.593924)
  %i.aft = zext i8 %i.afs to i32
  %narrow4251 = sub nuw nsw i8 26, %.59
  %i.afu = zext nneg i8 %narrow4251 to i32
  %i.afv = shl nuw i32 %i.aft, %i.afu
  %i.afw = or i32 %i.afv, %i.afl
  %i.afx = add i32 %.593787, -1
  %i.afy = add i32 %.593924, 1
  %.4309 = zext nneg i8 %i.afm to i32
  %20 = or disjoint i8 %i.afm, 8
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kk, %bb.kn
  %.603925 = phi i32 [ %i.afy, %bb.kn ], [ %.593924, %bb.kk ] ; 2 uses
  %.603788 = phi i32 [ %i.afx, %bb.kn ], [ %.593787, %bb.kk ]
  %.603624 = phi i32 [ %i.afw, %bb.kn ], [ %i.afl, %bb.kk ] ; 2 uses
  %.60 = phi i8 [ %20, %bb.kn ], [ %i.afm, %bb.kk ]
  %.31 = phi i32 [ %.4309, %bb.kn ], [ 0, %bb.kk ] ; 2 uses
  %i.afz = load i32, ptr @hf_gsm_a_gm_extended_dtm_egprs_multi_slot_class, align 4
  %i.aga = xor i32 %.31, -1
  %i.agb = add i32 %.603925, %i.aga
  %i.agc = add nuw nsw i32 %.31, 1
  %i.agd = lshr i32 %.603624, 30
  %i.age = shl nuw nsw i8 %.13485, 4
  %i.agf = zext nneg i8 %i.age to i32
  %i.agg = or disjoint i32 %i.agd, %i.agf
  %i.agh = call ptr @proto_tree_add_uint(ptr noundef %i.x, i32 noundef %i.afz, ptr noundef %0, i32 noundef %i.agb, i32 noundef %i.agc, i32 noundef %i.agg) ; 0 uses
  %i.agi = add i32 %.143717, 12
  %i.agj = add nsw i32 %.13, -12
  %i.agk = shl i32 %.603624, 2
  %i.agl = add i8 %.60, -2
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ki, %bb.ko, %bb.kc
  %.613926 = phi i32 [ %.583923, %bb.kc ], [ %.603925, %bb.ko ], [ %.593924, %bb.ki ] ; 5 uses
  %.613789 = phi i32 [ %.583786, %bb.kc ], [ %.603788, %bb.ko ], [ %.593787, %bb.ki ] ; 4 uses
  %.153718 = phi i32 [ %i.aej, %bb.kc ], [ %i.agi, %bb.ko ], [ %i.afj, %bb.ki ] ; 5 uses
  %.613625 = phi i32 [ %i.aeg, %bb.kc ], [ %i.agk, %bb.ko ], [ %i.afl, %bb.ki ] ; 3 uses
  %.61 = phi i8 [ %i.aei, %bb.kc ], [ %i.agl, %bb.ko ], [ %i.afm, %bb.ki ] ; 3 uses
  %.14 = phi i32 [ %i.aef, %bb.kc ], [ %i.agj, %bb.ko ], [ %i.afk, %bb.ki ] ; 5 uses
  %i.agm = icmp eq i32 %.14, 0
  br i1 %i.agm, label %.thread, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.agn = icmp eq i8 %.61, 0
  br i1 %i.agn, label %bb.kr, label %bb.ku

bb.kr:                                            ; preds = %bb.kq
  %i.ago = icmp eq i32 %.613789, 0
  br i1 %i.ago, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.agp = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.613926, i32 noundef 1) ; 0 uses
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr
  %i.agq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.613926)
  %i.agr = zext i8 %i.agq to i32
  %i.ags = shl nuw i32 %i.agr, 24
  %i.agt = or i32 %i.ags, %.613625
  %i.agu = add i32 %.613789, -1
  %i.agv = add i32 %.613926, 1
  br label %bb.kv

bb.ku:                                            ; preds = %bb.kq
  %i.agw = add i8 %.61, -1
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %bb.kt
  %.623927 = phi i32 [ %i.agv, %bb.kt ], [ %.613926, %bb.ku ] ; 5 uses
  %.623790 = phi i32 [ %i.agu, %bb.kt ], [ %.613789, %bb.ku ] ; 4 uses
  %.623626 = phi i32 [ %i.agt, %bb.kt ], [ %.613625, %bb.ku ]
  %.62 = phi i8 [ 7, %bb.kt ], [ %i.agw, %bb.ku ] ; 3 uses
  %i.agx = load i32, ptr @hf_gsm_a_gm_rac_mod_based_multi_slot_class_support, align 4
  %i.agy = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.agx, ptr noundef %0, i32 noundef %.153718, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.agz = add i32 %.153718, 1
  %i.aha = shl i32 %.623626, 1                    ; 3 uses
  %i.ahb = icmp eq i32 %.14, 1
  br i1 %i.ahb, label %.thread, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.ahc = icmp eq i8 %.62, 0
  br i1 %i.ahc, label %bb.kx, label %bb.la

bb.kx:                                            ; preds = %bb.kw
  %i.ahd = icmp eq i32 %.623790, 0
  br i1 %i.ahd, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kx
  %i.ahe = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.623927, i32 noundef 1) ; 0 uses
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  %i.ahf = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.623927)
  %i.ahg = zext i8 %i.ahf to i32
  %i.ahh = shl nuw i32 %i.ahg, 24
  %i.ahi = or i32 %i.ahh, %i.aha
  %i.ahj = add i32 %.623790, -1
  %i.ahk = add i32 %.623927, 1
  br label %bb.lb

bb.la:                                            ; preds = %bb.kw
  %i.ahl = zext i8 %.62 to i32
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %bb.kz
  %.633928 = phi i32 [ %i.ahk, %bb.kz ], [ %.623927, %bb.la ] ; 7 uses
  %.633791 = phi i32 [ %i.ahj, %bb.kz ], [ %.623790, %bb.la ] ; 5 uses
  %.633627 = phi i32 [ %i.ahi, %bb.kz ], [ %i.aha, %bb.la ] ; 3 uses
  %.63 = phi i32 [ 8, %bb.kz ], [ %i.ahl, %bb.la ] ; 3 uses
  %i.ahm = icmp sgt i32 %.633627, -1
  %i.ahn = add i32 %.153718, 2                    ; 2 uses
  br i1 %i.ahm, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %bb.lb
  %i.aho = load i32, ptr @hf_gsm_a_gm_high_multislot_capability, align 4
  %i.ahp = add i32 %.633928, -1
  %i.ahq = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.x, i32 noundef %i.aho, ptr noundef %0, i32 noundef %i.ahp, i32 noundef 1, i32 noundef 255, ptr noundef nonnull @.str.77, i32 noundef 0) ; 0 uses
  %i.ahr = add nsw i32 %.14, -2
  %i.ahs = shl nuw i32 %.633627, 1
  %i.aht = trunc nuw i32 %.63 to i8
  %i.ahu = add i8 %i.aht, -1
  br label %bb.lj

bb.ld:                                            ; preds = %bb.lb
  %i.ahv = shl i32 %.633627, 1                    ; 3 uses
  %i.ahw = trunc nuw i32 %.63 to i8
  %i.ahx = add i8 %i.ahw, -1                      ; 5 uses
  %i.ahy = and i32 %.14, -2
  %i.ahz = icmp eq i32 %i.ahy, 2
  br i1 %i.ahz, label %.thread, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.aia = icmp ult i8 %i.ahx, 2
  br i1 %i.aia, label %bb.lf, label %bb.li

bb.lf:                                            ; preds = %bb.le
  %i.aib = icmp eq i32 %.633791, 0
  br i1 %i.aib, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.aic = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.633928, i32 noundef 1) ; 0 uses
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.aid = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.633928)
  %i.aie = zext i8 %i.aid to i32
  %narrow4253 = sub nsw i32 25, %.63
  %i.aif = and i32 %narrow4253, 255
  %i.aig = shl nuw i32 %i.aie, %i.aif
  %i.aih = or i32 %i.aig, %i.ahv
  %i.aii = add i32 %.633791, -1
  %i.aij = add i32 %.633928, 1
  %.4310 = zext nneg i8 %i.ahx to i32
  %21 = or disjoint i8 %i.ahx, 8
  br label %bb.li

bb.li:                                            ; preds = %bb.le, %bb.lh
  %.643929 = phi i32 [ %i.aij, %bb.lh ], [ %.633928, %bb.le ] ; 2 uses
  %.643792 = phi i32 [ %i.aii, %bb.lh ], [ %.633791, %bb.le ]
  %.643628 = phi i32 [ %i.aih, %bb.lh ], [ %i.ahv, %bb.le ] ; 2 uses
  %.64 = phi i8 [ %21, %bb.lh ], [ %i.ahx, %bb.le ]
  %.35 = phi i32 [ %.4310, %bb.lh ], [ 0, %bb.le ] ; 2 uses
  %i.aik = load i32, ptr @hf_gsm_a_gm_high_multislot_capability, align 4
  %i.ail = xor i32 %.35, -1
  %i.aim = add i32 %.643929, %i.ail
  %i.ain = add nuw nsw i32 %.35, 1
  %i.aio = lshr i32 %.643628, 30
  %i.aip = call ptr @proto_tree_add_uint(ptr noundef %i.x, i32 noundef %i.aik, ptr noundef %0, i32 noundef %i.aim, i32 noundef %i.ain, i32 noundef %i.aio)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aip, ptr noundef nonnull @.str.78)
  %i.aiq = add i32 %.153718, 4
  %i.air = add nsw i32 %.14, -4
  %i.ais = shl i32 %.643628, 2
  %i.ait = add i8 %.64, -2
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lc
  %.653930 = phi i32 [ %.633928, %bb.lc ], [ %.643929, %bb.li ] ; 5 uses
  %.653793 = phi i32 [ %.633791, %bb.lc ], [ %.643792, %bb.li ] ; 4 uses
  %.163719 = phi i32 [ %i.ahn, %bb.lc ], [ %i.aiq, %bb.li ] ; 6 uses
  %.653629 = phi i32 [ %i.ahs, %bb.lc ], [ %i.ais, %bb.li ] ; 3 uses
  %.65 = phi i8 [ %i.ahu, %bb.lc ], [ %i.ait, %bb.li ] ; 3 uses
  %.15 = phi i32 [ %i.ahr, %bb.lc ], [ %i.air, %bb.li ] ; 5 uses
  %i.aiu = icmp eq i32 %.15, 0
  br i1 %i.aiu, label %.thread, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.aiv = icmp eq i8 %.65, 0
  br i1 %i.aiv, label %bb.ll, label %bb.lo

bb.ll:                                            ; preds = %bb.lk
  %i.aiw = icmp eq i32 %.653793, 0
  br i1 %i.aiw, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  %i.aix = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.653930, i32 noundef 1) ; 0 uses
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll
  %i.aiy = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.653930)
  %i.aiz = zext i8 %i.aiy to i32
  %i.aja = shl nuw i32 %i.aiz, 24
  %i.ajb = or i32 %i.aja, %.653629
  %i.ajc = add i32 %.653793, -1
  %i.ajd = add i32 %.653930, 1
  br label %bb.lp

bb.lo:                                            ; preds = %bb.lk
  %i.aje = add i8 %.65, -1
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  %.663931 = phi i32 [ %i.ajd, %bb.ln ], [ %.653930, %bb.lo ] ; 6 uses
  %.663794 = phi i32 [ %i.ajc, %bb.ln ], [ %.653793, %bb.lo ] ; 5 uses
  %.663630 = phi i32 [ %i.ajb, %bb.ln ], [ %.653629, %bb.lo ]
  %.66 = phi i8 [ 7, %bb.ln ], [ %i.aje, %bb.lo ] ; 6 uses
  %i.ajf = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %.163719, i32 noundef 1)
  %i.ajg = load i32, ptr @hf_gsm_a_gm_rac_geran_iu_mode_cap, align 4
  %i.ajh = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.ajg, ptr noundef %0, i32 noundef %.163719, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aji = add i32 %.163719, 1                    ; 3 uses
  %i.ajj = add nsw i32 %.15, -1
  %i.ajk = shl i32 %.663630, 1                    ; 4 uses
  %.not4254 = icmp eq i8 %i.ajf, 0
  br i1 %.not4254, label %bb.md, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.ajl = icmp ult i32 %.15, 5
  br i1 %i.ajl, label %.thread, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.ajm = icmp ult i8 %.66, 4
  br i1 %i.ajm, label %bb.ls, label %bb.lv

bb.ls:                                            ; preds = %bb.lr
  %i.ajn = icmp eq i32 %.663794, 0
  br i1 %i.ajn, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.ajo = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.663931, i32 noundef 1) ; 0 uses
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %i.ajp = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.663931)
  %i.ajq = zext i8 %i.ajp to i32
  %narrow4256 = sub nuw nsw i8 24, %.66
  %i.ajr = zext nneg i8 %narrow4256 to i32
  %i.ajs = shl nuw i32 %i.ajq, %i.ajr
  %i.ajt = or i32 %i.ajs, %i.ajk
  %i.aju = add i32 %.663794, -1
  %i.ajv = add i32 %.663931, 1
  %i.ajw = or disjoint i8 %.66, 8
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lr, %bb.lu
  %.673932 = phi i32 [ %i.ajv, %bb.lu ], [ %.663931, %bb.lr ] ; 6 uses
  %.673795 = phi i32 [ %i.aju, %bb.lu ], [ %.663794, %bb.lr ] ; 5 uses
  %.673631 = phi i32 [ %i.ajt, %bb.lu ], [ %i.ajk, %bb.lr ]
  %.67 = phi i8 [ %i.ajw, %bb.lu ], [ %.66, %bb.lr ] ; 2 uses
  %i.ajx = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.aji, i32 noundef 4) ; 2 uses
  %i.ajy = zext i8 %i.ajx to i32                  ; 2 uses
  %i.ajz = add i32 %.163719, 5                    ; 3 uses
  %i.aka = add nsw i32 %.15, -5                   ; 2 uses
  %i.akb = shl i32 %.673631, 4                    ; 4 uses
  %i.akc = add i8 %.67, -4                        ; 3 uses
  %.not4257 = icmp eq i8 %i.ajx, 0
  br i1 %.not4257, label %bb.md, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.akd = icmp eq i32 %i.aka, 0
  br i1 %i.akd, label %.thread, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.ake = icmp eq i8 %i.akc, 0
  br i1 %i.ake, label %bb.ly, label %bb.mb

bb.ly:                                            ; preds = %bb.lx
  %i.akf = icmp eq i32 %.673795, 0
  br i1 %i.akf, label %bb.lz, label %bb.ma

bb.lz:                                            ; preds = %bb.ly
  %i.akg = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.673932, i32 noundef 1) ; 0 uses
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %bb.ly
  %i.akh = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.673932)
  %i.aki = zext i8 %i.akh to i32
  %i.akj = shl nuw i32 %i.aki, 24
  %i.akk = or i32 %i.akj, %i.akb
  %i.akl = add i32 %.673795, -1
  %i.akm = add i32 %.673932, 1
  br label %bb.mc

bb.mb:                                            ; preds = %bb.lx
  %i.akn = add i8 %.67, -5
  %i.ako = zext i8 %i.akn to i32
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mb, %bb.ma
  %.683933 = phi i32 [ %i.akm, %bb.ma ], [ %.673932, %bb.mb ]
  %.683796 = phi i32 [ %i.akl, %bb.ma ], [ %.673795, %bb.mb ]
  %.683632 = phi i32 [ %i.akk, %bb.ma ], [ %i.akb, %bb.mb ]
  %.68 = phi i32 [ 7, %bb.ma ], [ %i.ako, %bb.mb ]
  %i.akp = load i32, ptr @hf_gsm_a_gm_rac_flo_iu_cap, align 4
  %i.akq = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.akp, ptr noundef %0, i32 noundef %i.ajz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.akr = add i32 %.163719, 6
  %i.aks = shl i32 %.683632, 1
  %i.akt = add nsw i32 %i.ajy, -1                 ; 3 uses
  %i.aku = add i32 %i.akr, %i.akt
  %i.akv = sub i32 %.15, %i.ajy
  %i.akw = add i32 %i.akv, -5
  %i.akx = shl i32 %i.aks, %i.akt
  %i.aky = sub nsw i32 %.68, %i.akt
  %i.akz = trunc i32 %i.aky to i8
  br label %bb.md

bb.md:                                            ; preds = %bb.lv, %bb.mc, %bb.lp
  %.693934 = phi i32 [ %.683933, %bb.mc ], [ %.673932, %bb.lv ], [ %.663931, %bb.lp ] ; 5 uses
  %.693797 = phi i32 [ %.683796, %bb.mc ], [ %.673795, %bb.lv ], [ %.663794, %bb.lp ] ; 4 uses
  %.173720 = phi i32 [ %i.aku, %bb.mc ], [ %i.ajz, %bb.lv ], [ %i.aji, %bb.lp ] ; 11 uses
  %.693633 = phi i32 [ %i.akx, %bb.mc ], [ %i.akb, %bb.lv ], [ %i.ajk, %bb.lp ] ; 3 uses
  %.69 = phi i8 [ %i.akz, %bb.mc ], [ %i.akc, %bb.lv ], [ %.66, %bb.lp ] ; 6 uses
  %.16 = phi i32 [ %i.akw, %bb.mc ], [ %i.aka, %bb.lv ], [ %i.ajj, %bb.lp ] ; 11 uses
  %i.ala = icmp ult i32 %.16, 2
  br i1 %i.ala, label %.thread, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.alb = icmp ult i8 %.69, 2
  br i1 %i.alb, label %bb.mf, label %bb.mi

bb.mf:                                            ; preds = %bb.me
  %i.alc = icmp eq i32 %.693797, 0
  br i1 %i.alc, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %bb.mf
  %i.ald = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.693934, i32 noundef 1) ; 0 uses
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mf
  %i.ale = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.693934)
  %i.alf = zext i8 %i.ale to i32
  %narrow4259 = sub nuw nsw i8 24, %.69
  %i.alg = zext nneg i8 %narrow4259 to i32
  %i.alh = shl nuw i32 %i.alf, %i.alg
  %i.ali = or i32 %i.alh, %.693633
  %i.alj = add i32 %.693797, -1
  %i.alk = add i32 %.693934, 1
  %.4311 = zext nneg i8 %.69 to i32
  %i.all = or disjoint i8 %.69, 8
  br label %bb.mi

bb.mi:                                            ; preds = %bb.me, %bb.mh
  %.703935 = phi i32 [ %i.alk, %bb.mh ], [ %.693934, %bb.me ] ; 6 uses
  %.703798 = phi i32 [ %i.alj, %bb.mh ], [ %.693797, %bb.me ] ; 4 uses
  %.703634 = phi i32 [ %i.ali, %bb.mh ], [ %.693633, %bb.me ] ; 2 uses
  %.70 = phi i8 [ %i.all, %bb.mh ], [ %.69, %bb.me ] ; 2 uses
  %.37 = phi i32 [ %.4311, %bb.mh ], [ 0, %bb.me ] ; 2 uses
  %i.alm = load i32, ptr @hf_gsm_a_gm_gmsk_multislot_power_profile, align 4
  %i.aln = xor i32 %.37, -1
  %i.alo = add i32 %.703935, %i.aln
  %i.alp = add nuw nsw i32 %.37, 1
  %i.alq = lshr i32 %.703634, 30
  %i.alr = call ptr @proto_tree_add_uint(ptr noundef %i.x, i32 noundef %i.alm, ptr noundef %0, i32 noundef %i.alo, i32 noundef %i.alp, i32 noundef %i.alq) ; 0 uses
  %i.als = add i32 %.173720, 2
  %i.alt = shl i32 %.703634, 2                    ; 3 uses
  %i.alu = add i8 %.70, -2                        ; 5 uses
  %i.alv = and i32 %.16, -2
  %i.alw = icmp eq i32 %i.alv, 2
  br i1 %i.alw, label %.thread, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.alx = icmp ult i8 %i.alu, 2
  br i1 %i.alx, label %bb.mk, label %bb.mn

bb.mk:                                            ; preds = %bb.mj
  %i.aly = icmp eq i32 %.703798, 0
  br i1 %i.aly, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %bb.mk
  %i.alz = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.703935, i32 noundef 1) ; 0 uses
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ml, %bb.mk
  %i.ama = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.703935)
  %i.amb = zext i8 %i.ama to i32
  %narrow4261 = sub nuw nsw i8 26, %.70
  %i.amc = zext nneg i8 %narrow4261 to i32
  %i.amd = shl nuw i32 %i.amb, %i.amc
  %i.ame = or i32 %i.amd, %i.alt
  %i.amf = add i32 %.703798, -1
  %i.amg = add i32 %.703935, 1
  %.4312 = zext nneg i8 %i.alu to i32
  %22 = or disjoint i8 %i.alu, 8
  br label %bb.mn

bb.mn:                                            ; preds = %bb.mj, %bb.mm
  %.713936 = phi i32 [ %i.amg, %bb.mm ], [ %.703935, %bb.mj ] ; 6 uses
  %.713799 = phi i32 [ %i.amf, %bb.mm ], [ %.703798, %bb.mj ] ; 4 uses
  %.713635 = phi i32 [ %i.ame, %bb.mm ], [ %i.alt, %bb.mj ] ; 2 uses
  %.71 = phi i8 [ %22, %bb.mm ], [ %i.alu, %bb.mj ] ; 2 uses
  %.39 = phi i32 [ %.4312, %bb.mm ], [ 0, %bb.mj ] ; 2 uses
  %i.amh = load i32, ptr @hf_gsm_a_gm_8psk_multislot_power_profile, align 4
  %i.ami = xor i32 %.39, -1
  %i.amj = add i32 %.713936, %i.ami
  %i.amk = add nuw nsw i32 %.39, 1
  %i.aml = lshr i32 %.713635, 30
  %i.amm = call ptr @proto_tree_add_uint(ptr noundef %i.x, i32 noundef %i.amh, ptr noundef %0, i32 noundef %i.amj, i32 noundef %i.amk, i32 noundef %i.aml) ; 0 uses
  %i.amn = add i32 %.173720, 4                    ; 2 uses
  %i.amo = shl i32 %.713635, 2                    ; 3 uses
  %i.amp = add i8 %.71, -2                        ; 2 uses
  %i.amq = icmp eq i32 %.16, 4
  br i1 %i.amq, label %.thread, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.amr = icmp eq i8 %i.amp, 0
  br i1 %i.amr, label %bb.mp, label %bb.ms

bb.mp:                                            ; preds = %bb.mo
  %i.ams = icmp eq i32 %.713799, 0
  br i1 %i.ams, label %bb.mq, label %bb.mr

bb.mq:                                            ; preds = %bb.mp
  %i.amt = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.713936, i32 noundef 1) ; 0 uses
  br label %bb.mr

bb.mr:                                            ; preds = %bb.mq, %bb.mp
  %i.amu = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.713936)
  %i.amv = zext i8 %i.amu to i32
  %i.amw = shl nuw i32 %i.amv, 24
  %i.amx = or i32 %i.amw, %i.amo
  %i.amy = add i32 %.713799, -1
  %i.amz = add i32 %.713936, 1
  br label %bb.mt

bb.ms:                                            ; preds = %bb.mo
  %i.ana = add i8 %.71, -3
  br label %bb.mt

bb.mt:                                            ; preds = %bb.ms, %bb.mr
  %.723937 = phi i32 [ %i.amz, %bb.mr ], [ %.713936, %bb.ms ] ; 5 uses
  %.723800 = phi i32 [ %i.amy, %bb.mr ], [ %.713799, %bb.ms ] ; 4 uses
  %.723636 = phi i32 [ %i.amx, %bb.mr ], [ %i.amo, %bb.ms ]
  %.72 = phi i8 [ 7, %bb.mr ], [ %i.ana, %bb.ms ] ; 5 uses
  %i.anb = load i32, ptr @hf_gsm_a_gm_rac_mult_tbf_cap, align 4
  %i.anc = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.anb, ptr noundef %0, i32 noundef %i.amn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.and = add i32 %.173720, 5                    ; 2 uses
  %i.ane = add nsw i32 %.16, -5
  %i.anf = shl i32 %.723636, 1                    ; 3 uses
  %i.ang = icmp ult i32 %i.ane, 2
  br i1 %i.ang, label %.thread, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.anh = icmp ult i8 %.72, 2
  br i1 %i.anh, label %bb.mv, label %bb.my

bb.mv:                                            ; preds = %bb.mu
  %i.ani = icmp eq i32 %.723800, 0
  br i1 %i.ani, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  %i.anj = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.723937, i32 noundef 1) ; 0 uses
  br label %bb.mx

bb.mx:                                            ; preds = %bb.mw, %bb.mv
  %i.ank = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.723937)
  %i.anl = zext i8 %i.ank to i32
  %narrow4263 = sub nuw nsw i8 24, %.72
  %i.anm = zext nneg i8 %narrow4263 to i32
  %i.ann = shl nuw i32 %i.anl, %i.anm
  %i.ano = or i32 %i.ann, %i.anf
  %i.anp = add i32 %.723800, -1
  %i.anq = add i32 %.723937, 1
  %i.anr = or disjoint i8 %.72, 8
  br label %bb.my

bb.my:                                            ; preds = %bb.mu, %bb.mx
  %.733938 = phi i32 [ %i.anq, %bb.mx ], [ %.723937, %bb.mu ] ; 5 uses
  %.733801 = phi i32 [ %i.anp, %bb.mx ], [ %.723800, %bb.mu ] ; 4 uses
  %.733637 = phi i32 [ %i.ano, %bb.mx ], [ %i.anf, %bb.mu ]
  %.73 = phi i8 [ %i.anr, %bb.mx ], [ %.72, %bb.mu ] ; 2 uses
  %i.ans = load i32, ptr @hf_gsm_a_gm_rac_down_adv_rec_perf, align 4
  %i.ant = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.ans, ptr noundef %0, i32 noundef %i.and, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.anu = add i32 %.173720, 7                    ; 2 uses
  %i.anv = shl i32 %.733637, 2                    ; 3 uses
  %i.anw = add i8 %.73, -2                        ; 2 uses
  %i.anx = icmp eq i32 %.16, 7
  br i1 %i.anx, label %.thread, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.any = icmp eq i8 %i.anw, 0
  br i1 %i.any, label %bb.na, label %bb.nd

bb.na:                                            ; preds = %bb.mz
  %i.anz = icmp eq i32 %.733801, 0
  br i1 %i.anz, label %bb.nb, label %bb.nc

bb.nb:                                            ; preds = %bb.na
  %i.aoa = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.733938, i32 noundef 1) ; 0 uses
  br label %bb.nc

bb.nc:                                            ; preds = %bb.nb, %bb.na
  %i.aob = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.733938)
  %i.aoc = zext i8 %i.aob to i32
  %i.aod = shl nuw i32 %i.aoc, 24
  %i.aoe = or i32 %i.aod, %i.anv
  %i.aof = add i32 %.733801, -1
  %i.aog = add i32 %.733938, 1
  br label %bb.ne

bb.nd:                                            ; preds = %bb.mz
  %i.aoh = add i8 %.73, -3
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nd, %bb.nc
  %.743939 = phi i32 [ %i.aog, %bb.nc ], [ %.733938, %bb.nd ] ; 5 uses
  %.743802 = phi i32 [ %i.aof, %bb.nc ], [ %.733801, %bb.nd ] ; 4 uses
  %.743638 = phi i32 [ %i.aoe, %bb.nc ], [ %i.anv, %bb.nd ]
  %.74 = phi i8 [ 7, %bb.nc ], [ %i.aoh, %bb.nd ] ; 3 uses
  %i.aoi = load i32, ptr @hf_gsm_a_gm_rac_ext_rlc_mac_ctrl_msg_seg_cap, align 4
  %i.aoj = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.aoi, ptr noundef %0, i32 noundef %i.anu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aok = add i32 %.173720, 8                    ; 2 uses
  %i.aol = shl i32 %.743638, 1                    ; 3 uses
  %i.aom = icmp eq i32 %.16, 8
  br i1 %i.aom, label %.thread, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.aon = icmp eq i8 %.74, 0
  br i1 %i.aon, label %bb.ng, label %bb.nj

bb.ng:                                            ; preds = %bb.nf
  %i.aoo = icmp eq i32 %.743802, 0
  br i1 %i.aoo, label %bb.nh, label %bb.ni

bb.nh:                                            ; preds = %bb.ng
  %i.aop = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.743939, i32 noundef 1) ; 0 uses
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %bb.ng
  %i.aoq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.743939)
  %i.aor = zext i8 %i.aoq to i32
  %i.aos = shl nuw i32 %i.aor, 24
  %i.aot = or i32 %i.aos, %i.aol
  %i.aou = add i32 %.743802, -1
  %i.aov = add i32 %.743939, 1
  br label %bb.nk

bb.nj:                                            ; preds = %bb.nf
  %i.aow = add i8 %.74, -1
  br label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %.753940 = phi i32 [ %i.aov, %bb.ni ], [ %.743939, %bb.nj ] ; 5 uses
  %.753803 = phi i32 [ %i.aou, %bb.ni ], [ %.743802, %bb.nj ] ; 4 uses
  %.753639 = phi i32 [ %i.aot, %bb.ni ], [ %i.aol, %bb.nj ]
  %.75 = phi i8 [ 7, %bb.ni ], [ %i.aow, %bb.nj ] ; 3 uses
  %i.aox = load i32, ptr @hf_gsm_a_gm_rac_dtm_enh_cap, align 4
  %i.aoy = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.aox, ptr noundef %0, i32 noundef %i.aok, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aoz = add i32 %.173720, 9
  %i.apa = shl i32 %.753639, 1                    ; 3 uses
  %i.apb = icmp eq i32 %.16, 9
  br i1 %i.apb, label %.thread, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.apc = icmp eq i8 %.75, 0
  br i1 %i.apc, label %bb.nm, label %bb.np

bb.nm:                                            ; preds = %bb.nl
  %i.apd = icmp eq i32 %.753803, 0
  br i1 %i.apd, label %bb.nn, label %bb.no

bb.nn:                                            ; preds = %bb.nm
  %i.ape = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.753940, i32 noundef 1) ; 0 uses
  br label %bb.no

bb.no:                                            ; preds = %bb.nn, %bb.nm
  %i.apf = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.753940)
  %i.apg = zext i8 %i.apf to i32
  %i.aph = shl nuw i32 %i.apg, 24
  %i.api = or i32 %i.aph, %i.apa
  %i.apj = add i32 %.753803, -1
  %i.apk = add i32 %.753940, 1
  br label %bb.nq

bb.np:                                            ; preds = %bb.nl
  %i.apl = zext i8 %.75 to i32
  br label %bb.nq

bb.nq:                                            ; preds = %bb.np, %bb.no
  %.763941 = phi i32 [ %i.apk, %bb.no ], [ %.753940, %bb.np ] ; 6 uses
  %.763804 = phi i32 [ %i.apj, %bb.no ], [ %.753803, %bb.np ] ; 5 uses
  %.763640 = phi i32 [ %i.api, %bb.no ], [ %i.apa, %bb.np ] ; 2 uses
  %.76 = phi i32 [ 8, %bb.no ], [ %i.apl, %bb.np ] ; 2 uses
  %i.apm = icmp sgt i32 %.763640, -1
  %i.apn = add i32 %.173720, 10                   ; 3 uses
  %i.apo = add nsw i32 %.16, -10                  ; 2 uses
  %i.app = shl i32 %.763640, 1                    ; 4 uses
  %i.apq = trunc nuw i32 %.76 to i8
  %i.apr = add i8 %i.apq, -1                      ; 5 uses
  br i1 %i.apm, label %bb.oj, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.aps = icmp ult i32 %i.apo, 3
  br i1 %i.aps, label %.thread, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.apt = icmp ult i8 %i.apr, 3
  br i1 %i.apt, label %bb.nt, label %bb.nw

bb.nt:                                            ; preds = %bb.ns
  %i.apu = icmp eq i32 %.763804, 0
  br i1 %i.apu, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %bb.nt
  %i.apv = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.763941, i32 noundef 1) ; 0 uses
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nu, %bb.nt
  %i.apw = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.763941)
  %i.apx = zext i8 %i.apw to i32
  %narrow4265 = sub nsw i32 25, %.76
  %i.apy = and i32 %narrow4265, 255
  %i.apz = shl nuw i32 %i.apx, %i.apy
  %i.aqa = or i32 %i.apz, %i.app
  %i.aqb = add i32 %.763804, -1
  %i.aqc = add i32 %.763941, 1
  %23 = or disjoint i8 %i.apr, 8
  br label %bb.nw

bb.nw:                                            ; preds = %bb.ns, %bb.nv
  %.773942 = phi i32 [ %i.aqc, %bb.nv ], [ %.763941, %bb.ns ] ; 5 uses
  %.773805 = phi i32 [ %i.aqb, %bb.nv ], [ %.763804, %bb.ns ] ; 4 uses
  %.773641 = phi i32 [ %i.aqa, %bb.nv ], [ %i.app, %bb.ns ]
  %.77 = phi i8 [ %23, %bb.nv ], [ %i.apr, %bb.ns ]
  %i.aqd = load i32, ptr @hf_gsm_a_gm_rac_dtm_gprs_high_multi_slot_class, align 4
  %i.aqe = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.aqd, ptr noundef %0, i32 noundef %i.apn, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aqf = add i32 %.173720, 13
  %i.aqg = shl i32 %.773641, 3                    ; 3 uses
  %i.aqh = add i8 %.77, -3                        ; 3 uses
  %i.aqi = icmp eq i32 %.16, 13
  br i1 %i.aqi, label %.thread, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.aqj = icmp eq i8 %i.aqh, 0
  br i1 %i.aqj, label %bb.ny, label %bb.ob

bb.ny:                                            ; preds = %bb.nx
  %i.aqk = icmp eq i32 %.773805, 0
  br i1 %i.aqk, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %bb.ny
  %i.aql = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.773942, i32 noundef 1) ; 0 uses
  br label %bb.oa

bb.oa:                                            ; preds = %bb.nz, %bb.ny
  %i.aqm = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.773942)
  %i.aqn = zext i8 %i.aqm to i32
  %i.aqo = shl nuw i32 %i.aqn, 24
  %i.aqp = or i32 %i.aqo, %i.aqg
  %i.aqq = add i32 %.773805, -1
  %i.aqr = add i32 %.773942, 1
  br label %bb.oc

bb.ob:                                            ; preds = %bb.nx
  %i.aqs = zext i8 %i.aqh to i32
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %bb.oa
  %.783943 = phi i32 [ %i.aqr, %bb.oa ], [ %.773942, %bb.ob ] ; 6 uses
  %.783806 = phi i32 [ %i.aqq, %bb.oa ], [ %.773805, %bb.ob ] ; 5 uses
  %.783642 = phi i32 [ %i.aqp, %bb.oa ], [ %i.aqg, %bb.ob ] ; 2 uses
  %.78 = phi i32 [ 8, %bb.oa ], [ %i.aqs, %bb.ob ] ; 2 uses
  %i.aqt = icmp sgt i32 %.783642, -1
  %i.aqu = add i32 %.173720, 14                   ; 3 uses
  %i.aqv = add nsw i32 %.16, -14                  ; 2 uses
  %i.aqw = shl i32 %.783642, 1                    ; 4 uses
  %i.aqx = trunc nuw i32 %.78 to i8
  %i.aqy = add i8 %i.aqx, -1                      ; 5 uses
  br i1 %i.aqt, label %bb.oj, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.aqz = icmp ult i32 %i.aqv, 3
  br i1 %i.aqz, label %.thread, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.ara = icmp ult i8 %i.aqy, 3
  br i1 %i.ara, label %bb.of, label %bb.oi

bb.of:                                            ; preds = %bb.oe
  %i.arb = icmp eq i32 %.783806, 0
  br i1 %i.arb, label %bb.og, label %bb.oh

bb.og:                                            ; preds = %bb.of
  %i.arc = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.783943, i32 noundef 1) ; 0 uses
  br label %bb.oh

bb.oh:                                            ; preds = %bb.og, %bb.of
  %i.ard = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.783943)
  %i.are = zext i8 %i.ard to i32
  %narrow4267 = sub nsw i32 25, %.78
  %i.arf = and i32 %narrow4267, 255
  %i.arg = shl nuw i32 %i.are, %i.arf
  %i.arh = or i32 %i.arg, %i.aqw
  %i.ari = add i32 %.783806, -1
  %i.arj = add i32 %.783943, 1
  %24 = or disjoint i8 %i.aqy, 8
  br label %bb.oi

bb.oi:                                            ; preds = %bb.oe, %bb.oh
  %.793944 = phi i32 [ %i.arj, %bb.oh ], [ %.783943, %bb.oe ]
  %.793807 = phi i32 [ %i.ari, %bb.oh ], [ %.783806, %bb.oe ]
  %.793643 = phi i32 [ %i.arh, %bb.oh ], [ %i.aqw, %bb.oe ]
  %.79 = phi i8 [ %24, %bb.oh ], [ %i.aqy, %bb.oe ]
  %i.ark = load i32, ptr @hf_gsm_a_gm_rac_dtm_egprs_high_multi_slot_class, align 4
  %i.arl = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.ark, ptr noundef %0, i32 noundef %i.aqu, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.arm = add i32 %.173720, 17
  %i.arn = add nsw i32 %.16, -17
  %i.aro = shl i32 %.793643, 3
  %i.arp = add i8 %.79, -3
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oc, %bb.nq, %bb.oi
  %.803945 = phi i32 [ %.793944, %bb.oi ], [ %.763941, %bb.nq ], [ %.783943, %bb.oc ] ; 5 uses
  %.803808 = phi i32 [ %.793807, %bb.oi ], [ %.763804, %bb.nq ], [ %.783806, %bb.oc ] ; 4 uses
  %.183721 = phi i32 [ %i.arm, %bb.oi ], [ %i.apn, %bb.nq ], [ %i.aqu, %bb.oc ] ; 7 uses
  %.803644 = phi i32 [ %i.aro, %bb.oi ], [ %i.app, %bb.nq ], [ %i.aqw, %bb.oc ] ; 3 uses
  %.80 = phi i8 [ %i.arp, %bb.oi ], [ %i.apr, %bb.nq ], [ %i.aqy, %bb.oc ] ; 3 uses
  %.17 = phi i32 [ %i.arn, %bb.oi ], [ %i.apo, %bb.nq ], [ %i.aqv, %bb.oc ] ; 6 uses
  %i.arq = icmp eq i32 %.17, 0
  br i1 %i.arq, label %.thread, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.arr = icmp eq i8 %.80, 0
  br i1 %i.arr, label %bb.ol, label %bb.oo

bb.ol:                                            ; preds = %bb.ok
  %i.ars = icmp eq i32 %.803808, 0
  br i1 %i.ars, label %bb.om, label %bb.on

bb.om:                                            ; preds = %bb.ol
  %i.art = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.803945, i32 noundef 1) ; 0 uses
  br label %bb.on

bb.on:                                            ; preds = %bb.om, %bb.ol
  %i.aru = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.803945)
  %i.arv = zext i8 %i.aru to i32
  %i.arw = shl nuw i32 %i.arv, 24
  %i.arx = or i32 %i.arw, %.803644
  %i.ary = add i32 %.803808, -1
  %i.arz = add i32 %.803945, 1
  br label %bb.op

bb.oo:                                            ; preds = %bb.ok
  %i.asa = add i8 %.80, -1
  br label %bb.op

bb.op:                                            ; preds = %bb.oo, %bb.on
  %.813946 = phi i32 [ %i.arz, %bb.on ], [ %.803945, %bb.oo ] ; 5 uses
  %.813809 = phi i32 [ %i.ary, %bb.on ], [ %.803808, %bb.oo ] ; 4 uses
  %.813645 = phi i32 [ %i.arx, %bb.on ], [ %.803644, %bb.oo ]
  %.81 = phi i8 [ 7, %bb.on ], [ %i.asa, %bb.oo ] ; 3 uses
  %i.asb = load i32, ptr @hf_gsm_a_gm_rac_ps_ho_cap, align 4
  %i.asc = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.asb, ptr noundef %0, i32 noundef %.183721, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.asd = add i32 %.183721, 1                    ; 2 uses
  %i.ase = shl i32 %.813645, 1                    ; 3 uses
  %i.asf = icmp eq i32 %.17, 1
  br i1 %i.asf, label %.thread, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.asg = icmp eq i8 %.81, 0
  br i1 %i.asg, label %bb.or, label %bb.ou

bb.or:                                            ; preds = %bb.oq
  %i.ash = icmp eq i32 %.813809, 0
  br i1 %i.ash, label %bb.os, label %bb.ot

bb.os:                                            ; preds = %bb.or
  %i.asi = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.813946, i32 noundef 1) ; 0 uses
  br label %bb.ot

bb.ot:                                            ; preds = %bb.os, %bb.or
  %i.asj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.813946)
  %i.ask = zext i8 %i.asj to i32
  %i.asl = shl nuw i32 %i.ask, 24
  %i.asm = or i32 %i.asl, %i.ase
  %i.asn = add i32 %.813809, -1
  %i.aso = add i32 %.813946, 1
  br label %bb.ov

bb.ou:                                            ; preds = %bb.oq
  %i.asp = add i8 %.81, -1
  br label %bb.ov

bb.ov:                                            ; preds = %bb.ou, %bb.ot
  %.823947 = phi i32 [ %i.aso, %bb.ot ], [ %.813946, %bb.ou ] ; 5 uses
  %.823810 = phi i32 [ %i.asn, %bb.ot ], [ %.813809, %bb.ou ] ; 4 uses
  %.823646 = phi i32 [ %i.asm, %bb.ot ], [ %i.ase, %bb.ou ]
  %.82 = phi i8 [ 7, %bb.ot ], [ %i.asp, %bb.ou ] ; 3 uses
  %i.asq = load i32, ptr @hf_gsm_a_gm_rac_dtm_ho_cap, align 4
  %i.asr = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.asq, ptr noundef %0, i32 noundef %i.asd, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ass = add i32 %.183721, 2
  %i.ast = shl i32 %.823646, 1                    ; 3 uses
  %i.asu = icmp eq i32 %.17, 2
  br i1 %i.asu, label %.thread, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.asv = icmp eq i8 %.82, 0
  br i1 %i.asv, label %bb.ox, label %bb.pa

bb.ox:                                            ; preds = %bb.ow
  %i.asw = icmp eq i32 %.823810, 0
  br i1 %i.asw, label %bb.oy, label %bb.oz

bb.oy:                                            ; preds = %bb.ox
  %i.asx = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.823947, i32 noundef 1) ; 0 uses
  br label %bb.oz

bb.oz:                                            ; preds = %bb.oy, %bb.ox
  %i.asy = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.823947)
  %i.asz = zext i8 %i.asy to i32
  %i.ata = shl nuw i32 %i.asz, 24
  %i.atb = or i32 %i.ata, %i.ast
  %i.atc = add i32 %.823810, -1
  %i.atd = add i32 %.823947, 1
  br label %bb.pb

bb.pa:                                            ; preds = %bb.ow
  %i.ate = zext i8 %.82 to i32
  br label %bb.pb

bb.pb:                                            ; preds = %bb.pa, %bb.oz
  %.833948 = phi i32 [ %i.atd, %bb.oz ], [ %.823947, %bb.pa ] ; 6 uses
  %.833811 = phi i32 [ %i.atc, %bb.oz ], [ %.823810, %bb.pa ] ; 5 uses
  %.833647 = phi i32 [ %i.atb, %bb.oz ], [ %i.ast, %bb.pa ] ; 3 uses
  %.83 = phi i32 [ 8, %bb.oz ], [ %i.ate, %bb.pa ] ; 3 uses
  %i.atf = icmp sgt i32 %.833647, -1
  %i.atg = add i32 %.183721, 3                    ; 3 uses
  %i.ath = add nsw i32 %.17, -3                   ; 2 uses
  br i1 %i.atf, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  %i.ati = trunc nuw i32 %.83 to i8
  %i.atj = add i8 %i.ati, -1
  br label %bb.pp

bb.pd:                                            ; preds = %bb.pb
  %i.atk = shl i32 %.833647, 1                    ; 3 uses
  %i.atl = trunc nuw i32 %.83 to i8
  %i.atm = add i8 %i.atl, -1                      ; 4 uses
  %i.atn = icmp ult i32 %i.ath, 3
  br i1 %i.atn, label %.thread, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.ato = icmp ult i8 %i.atm, 3
  br i1 %i.ato, label %bb.pf, label %bb.pi

bb.pf:                                            ; preds = %bb.pe
  %i.atp = icmp eq i32 %.833811, 0
  br i1 %i.atp, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %bb.pf
  %i.atq = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.833948, i32 noundef 1) ; 0 uses
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %bb.pf
  %i.atr = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.833948)
  %i.ats = zext i8 %i.atr to i32
  %narrow4269 = sub nsw i32 25, %.83
  %i.att = and i32 %narrow4269, 255
  %i.atu = shl nuw i32 %i.ats, %i.att
  %i.atv = or i32 %i.atu, %i.atk
  %i.atw = add i32 %.833811, -1
  %i.atx = add i32 %.833948, 1
  %25 = or disjoint i8 %i.atm, 8
  br label %bb.pi

bb.pi:                                            ; preds = %bb.pe, %bb.ph
  %.843949 = phi i32 [ %i.atx, %bb.ph ], [ %.833948, %bb.pe ] ; 5 uses
  %.843812 = phi i32 [ %i.atw, %bb.ph ], [ %.833811, %bb.pe ] ; 4 uses
  %.843648 = phi i32 [ %i.atv, %bb.ph ], [ %i.atk, %bb.pe ]
  %.84 = phi i8 [ %25, %bb.ph ], [ %i.atm, %bb.pe ] ; 2 uses
  %i.aty = load i32, ptr @hf_gsm_a_gm_rac_multi_slot_cap_red_down_dual_carrier, align 4
  %i.atz = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.aty, ptr noundef %0, i32 noundef %i.atg, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aua = add i32 %.183721, 6                    ; 2 uses
  %i.aub = shl i32 %.843648, 3                    ; 3 uses
  %i.auc = add i8 %.84, -3                        ; 2 uses
  %i.aud = icmp eq i32 %.17, 6
  br i1 %i.aud, label %.thread, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.aue = icmp eq i8 %i.auc, 0
  br i1 %i.aue, label %bb.pk, label %bb.pn

bb.pk:                                            ; preds = %bb.pj
  %i.auf = icmp eq i32 %.843812, 0
  br i1 %i.auf, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  %i.aug = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.843949, i32 noundef 1) ; 0 uses
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pl, %bb.pk
  %i.auh = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.843949)
  %i.aui = zext i8 %i.auh to i32
  %i.auj = shl nuw i32 %i.aui, 24
  %i.auk = or i32 %i.auj, %i.aub
  %i.aul = add i32 %.843812, -1
  %i.aum = add i32 %.843949, 1
  br label %bb.po

bb.pn:                                            ; preds = %bb.pj
  %i.aun = add i8 %.84, -4
  br label %bb.po

bb.po:                                            ; preds = %bb.pn, %bb.pm
  %.853950 = phi i32 [ %i.aum, %bb.pm ], [ %.843949, %bb.pn ]
  %.853813 = phi i32 [ %i.aul, %bb.pm ], [ %.843812, %bb.pn ]
  %.853649 = phi i32 [ %i.auk, %bb.pm ], [ %i.aub, %bb.pn ]
  %.85 = phi i8 [ 7, %bb.pm ], [ %i.aun, %bb.pn ]
  %i.auo = load i32, ptr @hf_gsm_a_gm_rac_down_dual_carrier_dtm_cap, align 4
  %i.aup = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.auo, ptr noundef %0, i32 noundef %i.aua, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.auq = add i32 %.183721, 7
  %i.aur = add nsw i32 %.17, -7
  br label %bb.pp

bb.pp:                                            ; preds = %bb.po, %bb.pc
  %.863951 = phi i32 [ %.833948, %bb.pc ], [ %.853950, %bb.po ] ; 5 uses
  %.863814 = phi i32 [ %.833811, %bb.pc ], [ %.853813, %bb.po ] ; 4 uses
  %.193722 = phi i32 [ %i.atg, %bb.pc ], [ %i.auq, %bb.po ] ; 15 uses
  %.863650.in = phi i32 [ %.833647, %bb.pc ], [ %.853649, %bb.po ]
  %.86 = phi i8 [ %i.atj, %bb.pc ], [ %.85, %bb.po ] ; 3 uses
  %.18 = phi i32 [ %i.ath, %bb.pc ], [ %i.aur, %bb.po ] ; 12 uses
  %.863650 = shl i32 %.863650.in, 1               ; 3 uses
  %i.aus = icmp eq i32 %.18, 0
  br i1 %i.aus, label %.thread, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.aut = icmp eq i8 %.86, 0
  br i1 %i.aut, label %bb.pr, label %bb.pu

bb.pr:                                            ; preds = %bb.pq
  %i.auu = icmp eq i32 %.863814, 0
  br i1 %i.auu, label %bb.ps, label %bb.pt

bb.ps:                                            ; preds = %bb.pr
  %i.auv = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.863951, i32 noundef 1) ; 0 uses
  br label %bb.pt

bb.pt:                                            ; preds = %bb.ps, %bb.pr
  %i.auw = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.863951)
  %i.aux = zext i8 %i.auw to i32
  %i.auy = shl nuw i32 %i.aux, 24
  %i.auz = or i32 %i.auy, %.863650
  %i.ava = add i32 %.863814, -1
  %i.avb = add i32 %.863951, 1
  br label %bb.pv

bb.pu:                                            ; preds = %bb.pq
  %i.avc = add i8 %.86, -1
  br label %bb.pv

bb.pv:                                            ; preds = %bb.pu, %bb.pt
  %.873952 = phi i32 [ %i.avb, %bb.pt ], [ %.863951, %bb.pu ] ; 5 uses
  %.873815 = phi i32 [ %i.ava, %bb.pt ], [ %.863814, %bb.pu ] ; 4 uses
  %.873651 = phi i32 [ %i.auz, %bb.pt ], [ %.863650, %bb.pu ]
  %.87 = phi i8 [ 7, %bb.pt ], [ %i.avc, %bb.pu ] ; 3 uses
  %i.avd = load i32, ptr @hf_gsm_a_gm_rac_flex_ts_assign, align 4
  %i.ave = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.avd, ptr noundef %0, i32 noundef %.193722, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.avf = add i32 %.193722, 1                    ; 2 uses
  %i.avg = shl i32 %.873651, 1                    ; 3 uses
  %i.avh = icmp eq i32 %.18, 1
  br i1 %i.avh, label %.thread, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  %i.avi = icmp eq i8 %.87, 0
  br i1 %i.avi, label %bb.px, label %bb.qa

bb.px:                                            ; preds = %bb.pw
  %i.avj = icmp eq i32 %.873815, 0
  br i1 %i.avj, label %bb.py, label %bb.pz

bb.py:                                            ; preds = %bb.px
  %i.avk = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.873952, i32 noundef 1) ; 0 uses
  br label %bb.pz

bb.pz:                                            ; preds = %bb.py, %bb.px
  %i.avl = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.873952)
  %i.avm = zext i8 %i.avl to i32
  %i.avn = shl nuw i32 %i.avm, 24
  %i.avo = or i32 %i.avn, %i.avg
  %i.avp = add i32 %.873815, -1
  %i.avq = add i32 %.873952, 1
  br label %bb.qb

bb.qa:                                            ; preds = %bb.pw
  %i.avr = add i8 %.87, -1
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.pz
  %.883953 = phi i32 [ %i.avq, %bb.pz ], [ %.873952, %bb.qa ] ; 5 uses
  %.883816 = phi i32 [ %i.avp, %bb.pz ], [ %.873815, %bb.qa ] ; 4 uses
  %.883652 = phi i32 [ %i.avo, %bb.pz ], [ %i.avg, %bb.qa ]
  %.88 = phi i8 [ 7, %bb.pz ], [ %i.avr, %bb.qa ] ; 3 uses
  %i.avs = load i32, ptr @hf_gsm_a_gm_rac_gan_ps_ho_cap, align 4
  %i.avt = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.avs, ptr noundef %0, i32 noundef %i.avf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.avu = add i32 %.193722, 2                    ; 2 uses
  %i.avv = shl i32 %.883652, 1                    ; 3 uses
  %i.avw = icmp eq i32 %.18, 2
  br i1 %i.avw, label %.thread, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.avx = icmp eq i8 %.88, 0
  br i1 %i.avx, label %bb.qd, label %bb.qg

bb.qd:                                            ; preds = %bb.qc
  %i.avy = icmp eq i32 %.883816, 0
  br i1 %i.avy, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %bb.qd
  %i.avz = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.883953, i32 noundef 1) ; 0 uses
  br label %bb.qf

bb.qf:                                            ; preds = %bb.qe, %bb.qd
  %i.awa = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.883953)
  %i.awb = zext i8 %i.awa to i32
  %i.awc = shl nuw i32 %i.awb, 24
  %i.awd = or i32 %i.awc, %i.avv
  %i.awe = add i32 %.883816, -1
  %i.awf = add i32 %.883953, 1
  br label %bb.qh

bb.qg:                                            ; preds = %bb.qc
  %i.awg = add i8 %.88, -1
  br label %bb.qh

bb.qh:                                            ; preds = %bb.qg, %bb.qf
  %.893954 = phi i32 [ %i.awf, %bb.qf ], [ %.883953, %bb.qg ] ; 5 uses
  %.893817 = phi i32 [ %i.awe, %bb.qf ], [ %.883816, %bb.qg ] ; 4 uses
  %.893653 = phi i32 [ %i.awd, %bb.qf ], [ %i.avv, %bb.qg ]
  %.89 = phi i8 [ 7, %bb.qf ], [ %i.awg, %bb.qg ] ; 3 uses
  %i.awh = load i32, ptr @hf_gsm_a_gm_rac_rlc_non_pers_mode, align 4
  %i.awi = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.awh, ptr noundef %0, i32 noundef %i.avu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.awj = add i32 %.193722, 3                    ; 2 uses
  %i.awk = shl i32 %.893653, 1                    ; 3 uses
  %i.awl = icmp eq i32 %.18, 3
  br i1 %i.awl, label %.thread, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.awm = icmp eq i8 %.89, 0
  br i1 %i.awm, label %bb.qj, label %bb.qm

bb.qj:                                            ; preds = %bb.qi
  %i.awn = icmp eq i32 %.893817, 0
  br i1 %i.awn, label %bb.qk, label %bb.ql

bb.qk:                                            ; preds = %bb.qj
  %i.awo = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.893954, i32 noundef 1) ; 0 uses
  br label %bb.ql

bb.ql:                                            ; preds = %bb.qk, %bb.qj
  %i.awp = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.893954)
  %i.awq = zext i8 %i.awp to i32
  %i.awr = shl nuw i32 %i.awq, 24
  %i.aws = or i32 %i.awr, %i.awk
  %i.awt = add i32 %.893817, -1
  %i.awu = add i32 %.893954, 1
  br label %bb.qn

bb.qm:                                            ; preds = %bb.qi
  %i.awv = add i8 %.89, -1
  br label %bb.qn

bb.qn:                                            ; preds = %bb.qm, %bb.ql
  %.903955 = phi i32 [ %i.awu, %bb.ql ], [ %.893954, %bb.qm ] ; 5 uses
  %.903818 = phi i32 [ %i.awt, %bb.ql ], [ %.893817, %bb.qm ] ; 4 uses
  %.903654 = phi i32 [ %i.aws, %bb.ql ], [ %i.awk, %bb.qm ]
  %.90 = phi i8 [ 7, %bb.ql ], [ %i.awv, %bb.qm ] ; 5 uses
  %i.aww = load i32, ptr @hf_gsm_a_gm_rac_reduced_lat_cap, align 4
  %i.awx = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.aww, ptr noundef %0, i32 noundef %i.awj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.awy = add i32 %.193722, 4                    ; 2 uses
  %i.awz = shl i32 %.903654, 1                    ; 3 uses
  %i.axa = and i32 %.18, -2                       ; 3 uses
  %i.axb = icmp eq i32 %i.axa, 4
  br i1 %i.axb, label %.thread, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.axc = icmp ult i8 %.90, 2
  br i1 %i.axc, label %bb.qp, label %bb.qs

bb.qp:                                            ; preds = %bb.qo
  %i.axd = icmp eq i32 %.903818, 0
  br i1 %i.axd, label %bb.qq, label %bb.qr

bb.qq:                                            ; preds = %bb.qp
  %i.axe = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.903955, i32 noundef 1) ; 0 uses
  br label %bb.qr

bb.qr:                                            ; preds = %bb.qq, %bb.qp
  %i.axf = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.903955)
  %i.axg = zext i8 %i.axf to i32
  %narrow4271 = sub nuw nsw i8 24, %.90
  %i.axh = zext nneg i8 %narrow4271 to i32
  %i.axi = shl nuw i32 %i.axg, %i.axh
  %i.axj = or i32 %i.axi, %i.awz
  %i.axk = add i32 %.903818, -1
  %i.axl = add i32 %.903955, 1
  %i.axm = or disjoint i8 %.90, 8
  br label %bb.qs

bb.qs:                                            ; preds = %bb.qo, %bb.qr
  %.913956 = phi i32 [ %i.axl, %bb.qr ], [ %.903955, %bb.qo ] ; 5 uses
  %.913819 = phi i32 [ %i.axk, %bb.qr ], [ %.903818, %bb.qo ] ; 4 uses
  %.913655 = phi i32 [ %i.axj, %bb.qr ], [ %i.awz, %bb.qo ]
  %.91 = phi i8 [ %i.axm, %bb.qr ], [ %.90, %bb.qo ] ; 2 uses
  %i.axn = load i32, ptr @hf_gsm_a_gm_rac_ul_egprs2, align 4
  %i.axo = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.axn, ptr noundef %0, i32 noundef %i.awy, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.axp = add i32 %.193722, 6                    ; 2 uses
  %i.axq = shl i32 %.913655, 2                    ; 3 uses
  %i.axr = add i8 %.91, -2                        ; 4 uses
  %i.axs = icmp eq i32 %i.axa, 6
  br i1 %i.axs, label %.thread, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  %i.axt = icmp ult i8 %i.axr, 2
  br i1 %i.axt, label %bb.qu, label %bb.qx

bb.qu:                                            ; preds = %bb.qt
  %i.axu = icmp eq i32 %.913819, 0
  br i1 %i.axu, label %bb.qv, label %bb.qw

bb.qv:                                            ; preds = %bb.qu
  %i.axv = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.913956, i32 noundef 1) ; 0 uses
  br label %bb.qw

bb.qw:                                            ; preds = %bb.qv, %bb.qu
  %i.axw = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.913956)
  %i.axx = zext i8 %i.axw to i32
  %narrow4273 = sub nuw nsw i8 26, %.91
  %i.axy = zext nneg i8 %narrow4273 to i32
  %i.axz = shl nuw i32 %i.axx, %i.axy
  %i.aya = or i32 %i.axz, %i.axq
  %i.ayb = add i32 %.913819, -1
  %i.ayc = add i32 %.913956, 1
  %26 = or disjoint i8 %i.axr, 8
  br label %bb.qx

bb.qx:                                            ; preds = %bb.qt, %bb.qw
  %.923957 = phi i32 [ %i.ayc, %bb.qw ], [ %.913956, %bb.qt ] ; 5 uses
  %.923820 = phi i32 [ %i.ayb, %bb.qw ], [ %.913819, %bb.qt ] ; 4 uses
  %.923656 = phi i32 [ %i.aya, %bb.qw ], [ %i.axq, %bb.qt ]
  %.92 = phi i8 [ %26, %bb.qw ], [ %i.axr, %bb.qt ] ; 2 uses
  %i.ayd = load i32, ptr @hf_gsm_a_gm_rac_dl_egprs2, align 4
  %i.aye = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.ayd, ptr noundef %0, i32 noundef %i.axp, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ayf = add i32 %.193722, 8                    ; 2 uses
  %i.ayg = shl i32 %.923656, 2                    ; 3 uses
  %i.ayh = add i8 %.92, -2                        ; 2 uses
  %i.ayi = icmp eq i32 %.18, 8
  br i1 %i.ayi, label %.thread, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %i.ayj = icmp eq i8 %i.ayh, 0
  br i1 %i.ayj, label %bb.qz, label %bb.rc

bb.qz:                                            ; preds = %bb.qy
  %i.ayk = icmp eq i32 %.923820, 0
  br i1 %i.ayk, label %bb.ra, label %bb.rb

bb.ra:                                            ; preds = %bb.qz
  %i.ayl = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.923957, i32 noundef 1) ; 0 uses
  br label %bb.rb

bb.rb:                                            ; preds = %bb.ra, %bb.qz
  %i.aym = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.923957)
  %i.ayn = zext i8 %i.aym to i32
  %i.ayo = shl nuw i32 %i.ayn, 24
  %i.ayp = or i32 %i.ayo, %i.ayg
  %i.ayq = add i32 %.923820, -1
  %i.ayr = add i32 %.923957, 1
  br label %bb.rd

bb.rc:                                            ; preds = %bb.qy
  %i.ays = add i8 %.92, -3
  br label %bb.rd

bb.rd:                                            ; preds = %bb.rc, %bb.rb
  %.933958 = phi i32 [ %i.ayr, %bb.rb ], [ %.923957, %bb.rc ] ; 5 uses
  %.933821 = phi i32 [ %i.ayq, %bb.rb ], [ %.923820, %bb.rc ] ; 4 uses
  %.933657 = phi i32 [ %i.ayp, %bb.rb ], [ %i.ayg, %bb.rc ]
  %.93 = phi i8 [ 7, %bb.rb ], [ %i.ays, %bb.rc ] ; 3 uses
  %i.ayt = load i32, ptr @hf_gsm_a_gm_rac_eutra_fdd_support, align 4
  %i.ayu = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.ayt, ptr noundef %0, i32 noundef %i.ayf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ayv = add i32 %.193722, 9                    ; 2 uses
  %i.ayw = shl i32 %.933657, 1                    ; 3 uses
  %i.ayx = icmp eq i32 %.18, 9
  br i1 %i.ayx, label %.thread, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.ayy = icmp eq i8 %.93, 0
  br i1 %i.ayy, label %bb.rf, label %bb.ri

bb.rf:                                            ; preds = %bb.re
  %i.ayz = icmp eq i32 %.933821, 0
  br i1 %i.ayz, label %bb.rg, label %bb.rh

bb.rg:                                            ; preds = %bb.rf
  %i.aza = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.933958, i32 noundef 1) ; 0 uses
  br label %bb.rh

bb.rh:                                            ; preds = %bb.rg, %bb.rf
  %i.azb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.933958)
  %i.azc = zext i8 %i.azb to i32
  %i.azd = shl nuw i32 %i.azc, 24
  %i.aze = or i32 %i.azd, %i.ayw
  %i.azf = add i32 %.933821, -1
  %i.azg = add i32 %.933958, 1
  br label %bb.rj

bb.ri:                                            ; preds = %bb.re
  %i.azh = add i8 %.93, -1
  br label %bb.rj

bb.rj:                                            ; preds = %bb.ri, %bb.rh
  %.943959 = phi i32 [ %i.azg, %bb.rh ], [ %.933958, %bb.ri ] ; 5 uses
  %.943822 = phi i32 [ %i.azf, %bb.rh ], [ %.933821, %bb.ri ] ; 4 uses
  %.943658 = phi i32 [ %i.aze, %bb.rh ], [ %i.ayw, %bb.ri ]
  %.94 = phi i8 [ 7, %bb.rh ], [ %i.azh, %bb.ri ] ; 5 uses
  %i.azi = load i32, ptr @hf_gsm_a_gm_rac_eutra_tdd_support, align 4
  %i.azj = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.azi, ptr noundef %0, i32 noundef %i.ayv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.azk = add i32 %.193722, 10                   ; 2 uses
  %i.azl = shl i32 %.943658, 1                    ; 3 uses
  %i.azm = icmp eq i32 %i.axa, 10
  br i1 %i.azm, label %.thread, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.azn = icmp ult i8 %.94, 2
  br i1 %i.azn, label %bb.rl, label %bb.ro

bb.rl:                                            ; preds = %bb.rk
  %i.azo = icmp eq i32 %.943822, 0
  br i1 %i.azo, label %bb.rm, label %bb.rn

bb.rm:                                            ; preds = %bb.rl
  %i.azp = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.943959, i32 noundef 1) ; 0 uses
  br label %bb.rn

bb.rn:                                            ; preds = %bb.rm, %bb.rl
  %i.azq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.943959)
  %i.azr = zext i8 %i.azq to i32
  %narrow4275 = sub nuw nsw i8 24, %.94
  %i.azs = zext nneg i8 %narrow4275 to i32
  %i.azt = shl nuw i32 %i.azr, %i.azs
  %i.azu = or i32 %i.azt, %i.azl
  %i.azv = add i32 %.943822, -1
  %i.azw = add i32 %.943959, 1
  %i.azx = or disjoint i8 %.94, 8
  br label %bb.ro

bb.ro:                                            ; preds = %bb.rk, %bb.rn
  %.953960 = phi i32 [ %i.azw, %bb.rn ], [ %.943959, %bb.rk ] ; 5 uses
  %.953823 = phi i32 [ %i.azv, %bb.rn ], [ %.943822, %bb.rk ] ; 4 uses
  %.953659 = phi i32 [ %i.azu, %bb.rn ], [ %i.azl, %bb.rk ]
  %.95 = phi i8 [ %i.azx, %bb.rn ], [ %.94, %bb.rk ] ; 2 uses
  %i.azy = load i32, ptr @hf_gsm_a_gm_rac_geran_to_eutra_support_in_geran_ptm, align 4
  %i.azz = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.azy, ptr noundef %0, i32 noundef %i.azk, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.baa = add i32 %.193722, 12                   ; 2 uses
  %i.bab = shl i32 %.953659, 2                    ; 3 uses
  %i.bac = add i8 %.95, -2                        ; 2 uses
  %i.bad = icmp eq i32 %.18, 12
  br i1 %i.bad, label %.thread, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.bae = icmp eq i8 %i.bac, 0
  br i1 %i.bae, label %bb.rq, label %bb.rt

bb.rq:                                            ; preds = %bb.rp
  %i.baf = icmp eq i32 %.953823, 0
  br i1 %i.baf, label %bb.rr, label %bb.rs

bb.rr:                                            ; preds = %bb.rq
  %i.bag = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.953960, i32 noundef 1) ; 0 uses
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %bb.rq
  %i.bah = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.953960)
  %i.bai = zext i8 %i.bah to i32
  %i.baj = shl nuw i32 %i.bai, 24
  %i.bak = or i32 %i.baj, %i.bab
  %i.bal = add i32 %.953823, -1
  %i.bam = add i32 %.953960, 1
  br label %bb.ru

bb.rt:                                            ; preds = %bb.rp
  %i.ban = add i8 %.95, -3
  br label %bb.ru

bb.ru:                                            ; preds = %bb.rt, %bb.rs
  %.963961 = phi i32 [ %i.bam, %bb.rs ], [ %.953960, %bb.rt ] ; 5 uses
  %.963824 = phi i32 [ %i.bal, %bb.rs ], [ %.953823, %bb.rt ] ; 4 uses
  %.963660 = phi i32 [ %i.bak, %bb.rs ], [ %i.bab, %bb.rt ]
  %.96 = phi i8 [ 7, %bb.rs ], [ %i.ban, %bb.rt ] ; 3 uses
  %i.bao = load i32, ptr @hf_gsm_a_gm_rac_prio_based_resel_support, align 4
  %i.bap = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bao, ptr noundef %0, i32 noundef %i.baa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.baq = add i32 %.193722, 13
  %i.bar = shl i32 %.963660, 1                    ; 3 uses
  %i.bas = icmp eq i32 %.18, 13
  br i1 %i.bas, label %.thread, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.bat = icmp eq i8 %.96, 0
  br i1 %i.bat, label %bb.rw, label %bb.rz

bb.rw:                                            ; preds = %bb.rv
  %i.bau = icmp eq i32 %.963824, 0
  br i1 %i.bau, label %bb.rx, label %bb.ry

bb.rx:                                            ; preds = %bb.rw
  %i.bav = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.963961, i32 noundef 1) ; 0 uses
  br label %bb.ry

bb.ry:                                            ; preds = %bb.rx, %bb.rw
  %i.baw = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.963961)
  %i.bax = zext i8 %i.baw to i32
  %i.bay = shl nuw i32 %i.bax, 24
  %i.baz = or i32 %i.bay, %i.bar
  %i.bba = add i32 %.963824, -1
  %i.bbb = add i32 %.963961, 1
  br label %bb.sa

bb.rz:                                            ; preds = %bb.rv
  %i.bbc = zext i8 %.96 to i32
  br label %bb.sa

bb.sa:                                            ; preds = %bb.rz, %bb.ry
  %.973962 = phi i32 [ %i.bbb, %bb.ry ], [ %.963961, %bb.rz ] ; 6 uses
  %.973825 = phi i32 [ %i.bba, %bb.ry ], [ %.963824, %bb.rz ] ; 5 uses
  %.973661 = phi i32 [ %i.baz, %bb.ry ], [ %i.bar, %bb.rz ] ; 2 uses
  %.97 = phi i32 [ 8, %bb.ry ], [ %i.bbc, %bb.rz ] ; 2 uses
  %i.bbd = icmp sgt i32 %.973661, -1
  %i.bbe = add i32 %.193722, 14                   ; 3 uses
  %i.bbf = add nsw i32 %.18, -14                  ; 2 uses
  %i.bbg = shl i32 %.973661, 1                    ; 4 uses
  %i.bbh = trunc nuw i32 %.97 to i8
  %i.bbi = add i8 %i.bbh, -1                      ; 5 uses
  br i1 %i.bbd, label %bb.sm, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.bbj = icmp ult i32 %i.bbf, 4
  br i1 %i.bbj, label %.thread, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.bbk = icmp ult i8 %i.bbi, 4
  br i1 %i.bbk, label %bb.sd, label %bb.sg

bb.sd:                                            ; preds = %bb.sc
  %i.bbl = icmp eq i32 %.973825, 0
  br i1 %i.bbl, label %bb.se, label %bb.sf

bb.se:                                            ; preds = %bb.sd
  %i.bbm = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.973962, i32 noundef 1) ; 0 uses
  br label %bb.sf

bb.sf:                                            ; preds = %bb.se, %bb.sd
  %i.bbn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.973962)
  %i.bbo = zext i8 %i.bbn to i32
  %narrow4277 = sub nsw i32 25, %.97
  %i.bbp = and i32 %narrow4277, 255
  %i.bbq = shl nuw i32 %i.bbo, %i.bbp
  %i.bbr = or i32 %i.bbq, %i.bbg
  %i.bbs = add i32 %.973825, -1
  %i.bbt = add i32 %.973962, 1
  %27 = or disjoint i8 %i.bbi, 8
  br label %bb.sg

bb.sg:                                            ; preds = %bb.sc, %bb.sf
  %.983963 = phi i32 [ %i.bbt, %bb.sf ], [ %.973962, %bb.sc ] ; 5 uses
  %.983826 = phi i32 [ %i.bbs, %bb.sf ], [ %.973825, %bb.sc ] ; 4 uses
  %.983662 = phi i32 [ %i.bbr, %bb.sf ], [ %i.bbg, %bb.sc ]
  %.98 = phi i8 [ %27, %bb.sf ], [ %i.bbi, %bb.sc ] ; 2 uses
  %i.bbu = load i32, ptr @hf_gsm_a_gm_rac_alt_efta_multi_slot_class, align 4
  %i.bbv = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bbu, ptr noundef %0, i32 noundef %i.bbe, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bbw = add i32 %.193722, 18                   ; 2 uses
  %i.bbx = add nsw i32 %.18, -18
  %i.bby = shl i32 %.983662, 4                    ; 3 uses
  %i.bbz = add i8 %.98, -4                        ; 4 uses
  %i.bca = icmp ult i32 %i.bbx, 3
  br i1 %i.bca, label %.thread, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.bcb = icmp ult i8 %i.bbz, 3
  br i1 %i.bcb, label %bb.si, label %bb.sl

bb.si:                                            ; preds = %bb.sh
  %i.bcc = icmp eq i32 %.983826, 0
  br i1 %i.bcc, label %bb.sj, label %bb.sk

bb.sj:                                            ; preds = %bb.si
  %i.bcd = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.983963, i32 noundef 1) ; 0 uses
  br label %bb.sk

bb.sk:                                            ; preds = %bb.sj, %bb.si
  %i.bce = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.983963)
  %i.bcf = zext i8 %i.bce to i32
  %narrow4279 = sub nuw nsw i8 28, %.98
  %i.bcg = zext nneg i8 %narrow4279 to i32
  %i.bch = shl nuw i32 %i.bcf, %i.bcg
  %i.bci = or i32 %i.bch, %i.bby
  %i.bcj = add i32 %.983826, -1
  %i.bck = add i32 %.983963, 1
  %28 = or disjoint i8 %i.bbz, 8
  br label %bb.sl

bb.sl:                                            ; preds = %bb.sh, %bb.sk
  %.993964 = phi i32 [ %i.bck, %bb.sk ], [ %.983963, %bb.sh ]
  %.993827 = phi i32 [ %i.bcj, %bb.sk ], [ %.983826, %bb.sh ]
  %.993663 = phi i32 [ %i.bci, %bb.sk ], [ %i.bby, %bb.sh ]
  %.99 = phi i8 [ %28, %bb.sk ], [ %i.bbz, %bb.sh ]
  %i.bcl = load i32, ptr @hf_gsm_a_gm_rac_efta_multi_slot_cap_red_down_dual_carrier, align 4
  %i.bcm = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bcl, ptr noundef %0, i32 noundef %i.bbw, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bcn = add i32 %.193722, 21
  %i.bco = add nsw i32 %.18, -21
  %i.bcp = shl i32 %.993663, 3
  %i.bcq = add i8 %.99, -3
  br label %bb.sm

bb.sm:                                            ; preds = %bb.sa, %bb.sl
  %.1003965 = phi i32 [ %.993964, %bb.sl ], [ %.973962, %bb.sa ] ; 5 uses
  %.1003828 = phi i32 [ %.993827, %bb.sl ], [ %.973825, %bb.sa ] ; 4 uses
  %.203723 = phi i32 [ %i.bcn, %bb.sl ], [ %i.bbe, %bb.sa ] ; 21 uses
  %.1003664 = phi i32 [ %i.bcp, %bb.sl ], [ %i.bbg, %bb.sa ] ; 3 uses
  %.100 = phi i8 [ %i.bcq, %bb.sl ], [ %i.bbi, %bb.sa ] ; 3 uses
  %.19 = phi i32 [ %i.bco, %bb.sl ], [ %i.bbf, %bb.sa ] ; 20 uses
  %i.bcr = icmp eq i32 %.19, 0
  br i1 %i.bcr, label %.thread, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.bcs = icmp eq i8 %.100, 0
  br i1 %i.bcs, label %bb.so, label %bb.sr

bb.so:                                            ; preds = %bb.sn
  %i.bct = icmp eq i32 %.1003828, 0
  br i1 %i.bct, label %bb.sp, label %bb.sq

bb.sp:                                            ; preds = %bb.so
  %i.bcu = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1003965, i32 noundef 1) ; 0 uses
  br label %bb.sq

bb.sq:                                            ; preds = %bb.sp, %bb.so
  %i.bcv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1003965)
  %i.bcw = zext i8 %i.bcv to i32
  %i.bcx = shl nuw i32 %i.bcw, 24
  %i.bcy = or i32 %i.bcx, %.1003664
  %i.bcz = add i32 %.1003828, -1
  %i.bda = add i32 %.1003965, 1
  br label %bb.ss

bb.sr:                                            ; preds = %bb.sn
  %i.bdb = add i8 %.100, -1
  br label %bb.ss

bb.ss:                                            ; preds = %bb.sr, %bb.sq
  %.1013966 = phi i32 [ %i.bda, %bb.sq ], [ %.1003965, %bb.sr ] ; 5 uses
  %.1013829 = phi i32 [ %i.bcz, %bb.sq ], [ %.1003828, %bb.sr ] ; 4 uses
  %.1013665 = phi i32 [ %i.bcy, %bb.sq ], [ %.1003664, %bb.sr ]
  %.101 = phi i8 [ 7, %bb.sq ], [ %i.bdb, %bb.sr ] ; 3 uses
  %i.bdc = load i32, ptr @hf_gsm_a_gm_rac_ind_up_layer_pdu_start_cap_for_rlc_um, align 4
  %i.bdd = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bdc, ptr noundef %0, i32 noundef %.203723, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bde = add i32 %.203723, 1                    ; 2 uses
  %i.bdf = shl i32 %.1013665, 1                   ; 3 uses
  %i.bdg = icmp eq i32 %.19, 1
  br i1 %i.bdg, label %.thread, label %bb.st

bb.st:                                            ; preds = %bb.ss
  %i.bdh = icmp eq i8 %.101, 0
  br i1 %i.bdh, label %bb.su, label %bb.sx

bb.su:                                            ; preds = %bb.st
  %i.bdi = icmp eq i32 %.1013829, 0
  br i1 %i.bdi, label %bb.sv, label %bb.sw

bb.sv:                                            ; preds = %bb.su
  %i.bdj = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1013966, i32 noundef 1) ; 0 uses
  br label %bb.sw

bb.sw:                                            ; preds = %bb.sv, %bb.su
  %i.bdk = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1013966)
  %i.bdl = zext i8 %i.bdk to i32
  %i.bdm = shl nuw i32 %i.bdl, 24
  %i.bdn = or i32 %i.bdm, %i.bdf
  %i.bdo = add i32 %.1013829, -1
  %i.bdp = add i32 %.1013966, 1
  br label %bb.sy

bb.sx:                                            ; preds = %bb.st
  %i.bdq = add i8 %.101, -1
  br label %bb.sy

bb.sy:                                            ; preds = %bb.sx, %bb.sw
  %.1023967 = phi i32 [ %i.bdp, %bb.sw ], [ %.1013966, %bb.sx ] ; 5 uses
  %.1023830 = phi i32 [ %i.bdo, %bb.sw ], [ %.1013829, %bb.sx ] ; 4 uses
  %.1023666 = phi i32 [ %i.bdn, %bb.sw ], [ %i.bdf, %bb.sx ]
  %.102 = phi i8 [ 7, %bb.sw ], [ %i.bdq, %bb.sx ] ; 3 uses
  %i.bdr = load i32, ptr @hf_gsm_a_gm_rac_emst_cap, align 4
  %i.bds = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bdr, ptr noundef %0, i32 noundef %i.bde, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bdt = add i32 %.203723, 2                    ; 2 uses
  %i.bdu = shl i32 %.1023666, 1                   ; 3 uses
  %i.bdv = icmp eq i32 %.19, 2
  br i1 %i.bdv, label %.thread, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  %i.bdw = icmp eq i8 %.102, 0
  br i1 %i.bdw, label %bb.ta, label %bb.td

bb.ta:                                            ; preds = %bb.sz
  %i.bdx = icmp eq i32 %.1023830, 0
  br i1 %i.bdx, label %bb.tb, label %bb.tc

bb.tb:                                            ; preds = %bb.ta
  %i.bdy = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1023967, i32 noundef 1) ; 0 uses
  br label %bb.tc

bb.tc:                                            ; preds = %bb.tb, %bb.ta
  %i.bdz = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1023967)
  %i.bea = zext i8 %i.bdz to i32
  %i.beb = shl nuw i32 %i.bea, 24
  %i.bec = or i32 %i.beb, %i.bdu
  %i.bed = add i32 %.1023830, -1
  %i.bee = add i32 %.1023967, 1
  br label %bb.te

bb.td:                                            ; preds = %bb.sz
  %i.bef = add i8 %.102, -1
  br label %bb.te

bb.te:                                            ; preds = %bb.td, %bb.tc
  %.1033968 = phi i32 [ %i.bee, %bb.tc ], [ %.1023967, %bb.td ] ; 5 uses
  %.1033831 = phi i32 [ %i.bed, %bb.tc ], [ %.1023830, %bb.td ] ; 4 uses
  %.1033667 = phi i32 [ %i.bec, %bb.tc ], [ %i.bdu, %bb.td ]
  %.103 = phi i8 [ 7, %bb.tc ], [ %i.bef, %bb.td ] ; 3 uses
  %i.beg = load i32, ptr @hf_gsm_a_gm_rac_mtti_cap, align 4
  %i.beh = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.beg, ptr noundef %0, i32 noundef %i.bdt, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bei = add i32 %.203723, 3                    ; 2 uses
  %i.bej = shl i32 %.1033667, 1                   ; 3 uses
  %i.bek = icmp eq i32 %.19, 3
  br i1 %i.bek, label %.thread, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  %i.bel = icmp eq i8 %.103, 0
  br i1 %i.bel, label %bb.tg, label %bb.tj

bb.tg:                                            ; preds = %bb.tf
  %i.bem = icmp eq i32 %.1033831, 0
  br i1 %i.bem, label %bb.th, label %bb.ti

bb.th:                                            ; preds = %bb.tg
  %i.ben = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1033968, i32 noundef 1) ; 0 uses
  br label %bb.ti

bb.ti:                                            ; preds = %bb.th, %bb.tg
  %i.beo = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1033968)
  %i.bep = zext i8 %i.beo to i32
  %i.beq = shl nuw i32 %i.bep, 24
  %i.ber = or i32 %i.beq, %i.bej
  %i.bes = add i32 %.1033831, -1
  %i.bet = add i32 %.1033968, 1
  br label %bb.tk

bb.tj:                                            ; preds = %bb.tf
  %i.beu = add i8 %.103, -1
  br label %bb.tk

bb.tk:                                            ; preds = %bb.tj, %bb.ti
  %.1043969 = phi i32 [ %i.bet, %bb.ti ], [ %.1033968, %bb.tj ] ; 5 uses
  %.1043832 = phi i32 [ %i.bes, %bb.ti ], [ %.1033831, %bb.tj ] ; 4 uses
  %.1043668 = phi i32 [ %i.ber, %bb.ti ], [ %i.bej, %bb.tj ]
  %.104 = phi i8 [ 7, %bb.ti ], [ %i.beu, %bb.tj ] ; 3 uses
  %i.bev = load i32, ptr @hf_gsm_a_gm_rac_utra_csg_cell_report, align 4
  %i.bew = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bev, ptr noundef %0, i32 noundef %i.bei, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bex = add i32 %.203723, 4                    ; 2 uses
  %i.bey = shl i32 %.1043668, 1                   ; 3 uses
  %i.bez = icmp eq i32 %.19, 4
  br i1 %i.bez, label %.thread, label %bb.tl

bb.tl:                                            ; preds = %bb.tk
  %i.bfa = icmp eq i8 %.104, 0
  br i1 %i.bfa, label %bb.tm, label %bb.tp

bb.tm:                                            ; preds = %bb.tl
  %i.bfb = icmp eq i32 %.1043832, 0
  br i1 %i.bfb, label %bb.tn, label %bb.to

bb.tn:                                            ; preds = %bb.tm
  %i.bfc = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1043969, i32 noundef 1) ; 0 uses
  br label %bb.to

bb.to:                                            ; preds = %bb.tn, %bb.tm
  %i.bfd = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1043969)
  %i.bfe = zext i8 %i.bfd to i32
  %i.bff = shl nuw i32 %i.bfe, 24
  %i.bfg = or i32 %i.bff, %i.bey
  %i.bfh = add i32 %.1043832, -1
  %i.bfi = add i32 %.1043969, 1
  br label %bb.tq

bb.tp:                                            ; preds = %bb.tl
  %i.bfj = add i8 %.104, -1
  br label %bb.tq

bb.tq:                                            ; preds = %bb.tp, %bb.to
  %.1053970 = phi i32 [ %i.bfi, %bb.to ], [ %.1043969, %bb.tp ] ; 5 uses
end_hunk_2
begin_hunk_3_@de_gmm_ms_radio_acc_cap:bb.a

bb.vf:                                            ; preds = %bb.ve, %bb.vd
  %.1123977 = phi i32 [ %i.bjm, %bb.vd ], [ %.1113976, %bb.ve ] ; 5 uses
  %.1123840 = phi i32 [ %i.bjl, %bb.vd ], [ %.1113839, %bb.ve ] ; 4 uses
  %.1123676 = phi i32 [ %i.bjk, %bb.vd ], [ %i.bjc, %bb.ve ]
  %.112 = phi i8 [ 7, %bb.vd ], [ %i.bjn, %bb.ve ] ; 3 uses
  %i.bjo = load i32, ptr @hf_gsm_a_gm_rac_geran_nw_sharing_support, align 4
  %i.bjp = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bjo, ptr noundef %0, i32 noundef %i.bjb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bjq = add i32 %.203723, 13                   ; 2 uses
  %i.bjr = shl i32 %.1123676, 1                   ; 3 uses
  %i.bjs = icmp eq i32 %.19, 13
  br i1 %i.bjs, label %.thread, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.bjt = icmp eq i8 %.112, 0
  br i1 %i.bjt, label %bb.vh, label %bb.vk

bb.vh:                                            ; preds = %bb.vg
  %i.bju = icmp eq i32 %.1123840, 0
  br i1 %i.bju, label %bb.vi, label %bb.vj

bb.vi:                                            ; preds = %bb.vh
  %i.bjv = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1123977, i32 noundef 1) ; 0 uses
  br label %bb.vj

bb.vj:                                            ; preds = %bb.vi, %bb.vh
  %i.bjw = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1123977)
  %i.bjx = zext i8 %i.bjw to i32
  %i.bjy = shl nuw i32 %i.bjx, 24
  %i.bjz = or i32 %i.bjy, %i.bjr
  %i.bka = add i32 %.1123840, -1
  %i.bkb = add i32 %.1123977, 1
  br label %bb.vl

bb.vk:                                            ; preds = %bb.vg
  %i.bkc = add i8 %.112, -1
  br label %bb.vl

bb.vl:                                            ; preds = %bb.vk, %bb.vj
  %.1133978 = phi i32 [ %i.bkb, %bb.vj ], [ %.1123977, %bb.vk ] ; 5 uses
  %.1133841 = phi i32 [ %i.bka, %bb.vj ], [ %.1123840, %bb.vk ] ; 4 uses
  %.1133677 = phi i32 [ %i.bjz, %bb.vj ], [ %i.bjr, %bb.vk ]
  %.113 = phi i8 [ 7, %bb.vj ], [ %i.bkc, %bb.vk ] ; 3 uses
  %i.bkd = load i32, ptr @hf_gsm_a_gm_rac_eutra_wb_rsrq_support, align 4
  %i.bke = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bkd, ptr noundef %0, i32 noundef %i.bjq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bkf = add i32 %.203723, 14                   ; 2 uses
  %i.bkg = shl i32 %.1133677, 1                   ; 3 uses
  %i.bkh = icmp eq i32 %.19, 14
  br i1 %i.bkh, label %.thread, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %i.bki = icmp eq i8 %.113, 0
  br i1 %i.bki, label %bb.vn, label %bb.vq

bb.vn:                                            ; preds = %bb.vm
  %i.bkj = icmp eq i32 %.1133841, 0
  br i1 %i.bkj, label %bb.vo, label %bb.vp

bb.vo:                                            ; preds = %bb.vn
  %i.bkk = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1133978, i32 noundef 1) ; 0 uses
  br label %bb.vp

bb.vp:                                            ; preds = %bb.vo, %bb.vn
  %i.bkl = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1133978)
  %i.bkm = zext i8 %i.bkl to i32
  %i.bkn = shl nuw i32 %i.bkm, 24
  %i.bko = or i32 %i.bkn, %i.bkg
  %i.bkp = add i32 %.1133841, -1
  %i.bkq = add i32 %.1133978, 1
  br label %bb.vr

bb.vq:                                            ; preds = %bb.vm
  %i.bkr = add i8 %.113, -1
  br label %bb.vr

bb.vr:                                            ; preds = %bb.vq, %bb.vp
  %.1143979 = phi i32 [ %i.bkq, %bb.vp ], [ %.1133978, %bb.vq ] ; 5 uses
  %.1143842 = phi i32 [ %i.bkp, %bb.vp ], [ %.1133841, %bb.vq ] ; 4 uses
  %.1143678 = phi i32 [ %i.bko, %bb.vp ], [ %i.bkg, %bb.vq ]
  %.114 = phi i8 [ 7, %bb.vp ], [ %i.bkr, %bb.vq ] ; 3 uses
  %i.bks = load i32, ptr @hf_gsm_a_gm_rac_utra_mfbi_support, align 4
  %i.bkt = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bks, ptr noundef %0, i32 noundef %i.bkf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bku = add i32 %.203723, 15                   ; 2 uses
  %i.bkv = shl i32 %.1143678, 1                   ; 3 uses
  %i.bkw = icmp eq i32 %.19, 15
  br i1 %i.bkw, label %.thread, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  %i.bkx = icmp eq i8 %.114, 0
  br i1 %i.bkx, label %bb.vt, label %bb.vw

bb.vt:                                            ; preds = %bb.vs
  %i.bky = icmp eq i32 %.1143842, 0
  br i1 %i.bky, label %bb.vu, label %bb.vv

bb.vu:                                            ; preds = %bb.vt
  %i.bkz = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1143979, i32 noundef 1) ; 0 uses
  br label %bb.vv

bb.vv:                                            ; preds = %bb.vu, %bb.vt
  %i.bla = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1143979)
  %i.blb = zext i8 %i.bla to i32
  %i.blc = shl nuw i32 %i.blb, 24
  %i.bld = or i32 %i.blc, %i.bkv
  %i.ble = add i32 %.1143842, -1
  %i.blf = add i32 %.1143979, 1
  br label %bb.vx

bb.vw:                                            ; preds = %bb.vs
  %i.blg = add i8 %.114, -1
  br label %bb.vx

bb.vx:                                            ; preds = %bb.vw, %bb.vv
  %.1153980 = phi i32 [ %i.blf, %bb.vv ], [ %.1143979, %bb.vw ] ; 5 uses
  %.1153843 = phi i32 [ %i.ble, %bb.vv ], [ %.1143842, %bb.vw ] ; 4 uses
  %.1153679 = phi i32 [ %i.bld, %bb.vv ], [ %i.bkv, %bb.vw ]
  %.115 = phi i8 [ 7, %bb.vv ], [ %i.blg, %bb.vw ] ; 3 uses
  %i.blh = load i32, ptr @hf_gsm_a_gm_rac_eutra_mfbi_support, align 4
  %i.bli = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.blh, ptr noundef %0, i32 noundef %i.bku, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.blj = add i32 %.203723, 16
  %i.blk = shl i32 %.1153679, 1                   ; 3 uses
  %i.bll = icmp eq i32 %.19, 16
  br i1 %i.bll, label %.thread, label %bb.vy

bb.vy:                                            ; preds = %bb.vx
  %i.blm = icmp eq i8 %.115, 0
  br i1 %i.blm, label %bb.vz, label %bb.wc

bb.vz:                                            ; preds = %bb.vy
  %i.bln = icmp eq i32 %.1153843, 0
  br i1 %i.bln, label %bb.wa, label %bb.wb

bb.wa:                                            ; preds = %bb.vz
  %i.blo = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1153980, i32 noundef 1) ; 0 uses
  br label %bb.wb

bb.wb:                                            ; preds = %bb.wa, %bb.vz
  %i.blp = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1153980)
  %i.blq = zext i8 %i.blp to i32
  %i.blr = shl nuw i32 %i.blq, 24
  %i.bls = or i32 %i.blr, %i.blk
  %i.blt = add i32 %.1153843, -1
  %i.blu = add i32 %.1153980, 1
  br label %bb.wd

bb.wc:                                            ; preds = %bb.vy
  %i.blv = add i8 %.115, -1
  br label %bb.wd

bb.wd:                                            ; preds = %bb.wc, %bb.wb
  %.1163981 = phi i32 [ %i.blu, %bb.wb ], [ %.1153980, %bb.wc ] ; 6 uses
  %.1163844 = phi i32 [ %i.blt, %bb.wb ], [ %.1153843, %bb.wc ] ; 5 uses
  %.1163680 = phi i32 [ %i.bls, %bb.wb ], [ %i.blk, %bb.wc ] ; 3 uses
  %.116 = phi i8 [ 7, %bb.wb ], [ %i.blv, %bb.wc ] ; 4 uses
  %i.blw = icmp sgt i32 %.1163680, -1
  %i.blx = add i32 %.203723, 17                   ; 2 uses
  br i1 %i.blw, label %bb.we, label %bb.wf

bb.we:                                            ; preds = %bb.wd
  %i.bly = add nsw i32 %.19, -17
  %i.blz = shl nuw i32 %.1163680, 1
  br label %bb.xo

bb.wf:                                            ; preds = %bb.wd
  %i.bma = shl i32 %.1163680, 1                   ; 3 uses
  %i.bmb = icmp eq i32 %.19, 17
  br i1 %i.bmb, label %.thread, label %bb.wg

bb.wg:                                            ; preds = %bb.wf
  %i.bmc = icmp eq i8 %.116, 0
  br i1 %i.bmc, label %bb.wh, label %bb.wk

bb.wh:                                            ; preds = %bb.wg
  %i.bmd = icmp eq i32 %.1163844, 0
  br i1 %i.bmd, label %bb.wi, label %bb.wj

bb.wi:                                            ; preds = %bb.wh
  %i.bme = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1163981, i32 noundef 1) ; 0 uses
  br label %bb.wj

bb.wj:                                            ; preds = %bb.wi, %bb.wh
  %i.bmf = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1163981)
  %i.bmg = zext i8 %i.bmf to i32
  %i.bmh = shl nuw i32 %i.bmg, 24
  %i.bmi = or i32 %i.bmh, %i.bma
  %i.bmj = add i32 %.1163844, -1
  %i.bmk = add i32 %.1163981, 1
  br label %bb.wl

bb.wk:                                            ; preds = %bb.wg
  %i.bml = zext i8 %.116 to i32
  br label %bb.wl

bb.wl:                                            ; preds = %bb.wk, %bb.wj
  %.1173982 = phi i32 [ %i.bmk, %bb.wj ], [ %.1163981, %bb.wk ] ; 6 uses
  %.1173845 = phi i32 [ %i.bmj, %bb.wj ], [ %.1163844, %bb.wk ] ; 5 uses
  %.1173681 = phi i32 [ %i.bmi, %bb.wj ], [ %i.bma, %bb.wk ] ; 3 uses
  %.117 = phi i32 [ 8, %bb.wj ], [ %i.bml, %bb.wk ] ; 2 uses
  %i.bmm = icmp sgt i32 %.1173681, -1
  %i.bmn = add i32 %.203723, 18                   ; 3 uses
  %i.bmo = trunc nuw i32 %.117 to i8
  %i.bmp = add i8 %i.bmo, -1                      ; 5 uses
  br i1 %i.bmm, label %bb.wy, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.bmq = shl i32 %.1173681, 1                   ; 3 uses
  %i.bmr = icmp eq i32 %i.bhh, 18
  br i1 %i.bmr, label %.thread, label %bb.wn

bb.wn:                                            ; preds = %bb.wm
  %i.bms = icmp ult i8 %i.bmp, 2
  br i1 %i.bms, label %bb.wo, label %bb.wr

bb.wo:                                            ; preds = %bb.wn
  %i.bmt = icmp eq i32 %.1173845, 0
  br i1 %i.bmt, label %bb.wp, label %bb.wq

bb.wp:                                            ; preds = %bb.wo
  %i.bmu = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1173982, i32 noundef 1) ; 0 uses
  br label %bb.wq

bb.wq:                                            ; preds = %bb.wp, %bb.wo
  %i.bmv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1173982)
  %i.bmw = zext i8 %i.bmv to i32
  %narrow4283 = sub nsw i32 25, %.117
  %i.bmx = and i32 %narrow4283, 255
  %i.bmy = shl nuw i32 %i.bmw, %i.bmx
  %i.bmz = or i32 %i.bmy, %i.bmq
  %i.bna = add i32 %.1173845, -1
  %i.bnb = add i32 %.1173982, 1
  %29 = or disjoint i8 %i.bmp, 8
  br label %bb.wr

bb.wr:                                            ; preds = %bb.wn, %bb.wq
  %.1183983 = phi i32 [ %i.bnb, %bb.wq ], [ %.1173982, %bb.wn ] ; 5 uses
  %.1183846 = phi i32 [ %i.bna, %bb.wq ], [ %.1173845, %bb.wn ] ; 4 uses
  %.1183682 = phi i32 [ %i.bmz, %bb.wq ], [ %i.bmq, %bb.wn ]
  %.118 = phi i8 [ %29, %bb.wq ], [ %i.bmp, %bb.wn ] ; 2 uses
  %i.bnc = load i32, ptr @hf_gsm_a_gm_rac_dlmc_non_contig_intra_band_recep, align 4
  %i.bnd = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bnc, ptr noundef %0, i32 noundef %i.bmn, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bne = add i32 %.203723, 20                   ; 2 uses
  %i.bnf = shl i32 %.1183682, 2                   ; 3 uses
  %i.bng = add i8 %.118, -2                       ; 2 uses
  %i.bnh = icmp eq i32 %.19, 20
  br i1 %i.bnh, label %.thread, label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  %i.bni = icmp eq i8 %i.bng, 0
  br i1 %i.bni, label %bb.wt, label %bb.ww

bb.wt:                                            ; preds = %bb.ws
  %i.bnj = icmp eq i32 %.1183846, 0
  br i1 %i.bnj, label %bb.wu, label %bb.wv

bb.wu:                                            ; preds = %bb.wt
  %i.bnk = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1183983, i32 noundef 1) ; 0 uses
  br label %bb.wv

bb.wv:                                            ; preds = %bb.wu, %bb.wt
  %i.bnl = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1183983)
  %i.bnm = zext i8 %i.bnl to i32
  %i.bnn = shl nuw i32 %i.bnm, 24
  %i.bno = or i32 %i.bnn, %i.bnf
  %i.bnp = add i32 %.1183846, -1
  %i.bnq = add i32 %.1183983, 1
  br label %bb.wx

bb.ww:                                            ; preds = %bb.ws
  %i.bnr = add i8 %.118, -3
  br label %bb.wx

bb.wx:                                            ; preds = %bb.ww, %bb.wv
  %.1193984 = phi i32 [ %i.bnq, %bb.wv ], [ %.1183983, %bb.ww ]
  %.1193847 = phi i32 [ %i.bnp, %bb.wv ], [ %.1183846, %bb.ww ]
  %.1193683 = phi i32 [ %i.bno, %bb.wv ], [ %i.bnf, %bb.ww ]
  %.119 = phi i8 [ 7, %bb.wv ], [ %i.bnr, %bb.ww ]
  %i.bns = load i32, ptr @hf_gsm_a_gm_rac_dlmc_inter_band_recep, align 4
  %i.bnt = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bns, ptr noundef %0, i32 noundef %i.bne, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bnu = add i32 %.203723, 21
  br label %bb.wy

bb.wy:                                            ; preds = %bb.wl, %bb.wx
  %.sink = phi i32 [ -21, %bb.wx ], [ -18, %bb.wl ]
  %.1203985 = phi i32 [ %.1193984, %bb.wx ], [ %.1173982, %bb.wl ] ; 5 uses
  %.1203848 = phi i32 [ %.1193847, %bb.wx ], [ %.1173845, %bb.wl ] ; 4 uses
  %.213724 = phi i32 [ %i.bnu, %bb.wx ], [ %i.bmn, %bb.wl ] ; 5 uses
  %.1203684.in = phi i32 [ %.1193683, %bb.wx ], [ %.1173681, %bb.wl ]
  %.120 = phi i8 [ %.119, %bb.wx ], [ %i.bmp, %bb.wl ] ; 5 uses
  %i.bnv = add nsw i32 %.19, %.sink               ; 4 uses
  %.1203684 = shl i32 %.1203684.in, 1             ; 3 uses
  %i.bnw = icmp ult i32 %i.bnv, 2
  br i1 %i.bnw, label %.thread, label %bb.wz

bb.wz:                                            ; preds = %bb.wy
  %i.bnx = icmp ult i8 %.120, 2
  br i1 %i.bnx, label %bb.xa, label %bb.xd

bb.xa:                                            ; preds = %bb.wz
  %i.bny = icmp eq i32 %.1203848, 0
  br i1 %i.bny, label %bb.xb, label %bb.xc

bb.xb:                                            ; preds = %bb.xa
  %i.bnz = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1203985, i32 noundef 1) ; 0 uses
  br label %bb.xc

bb.xc:                                            ; preds = %bb.xb, %bb.xa
  %i.boa = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1203985)
  %i.bob = zext i8 %i.boa to i32
  %narrow4285 = sub nuw nsw i8 24, %.120
  %i.boc = zext nneg i8 %narrow4285 to i32
  %i.bod = shl nuw i32 %i.bob, %i.boc
  %i.boe = or i32 %i.bod, %.1203684
  %i.bof = add i32 %.1203848, -1
  %i.bog = add i32 %.1203985, 1
  %i.boh = or disjoint i8 %.120, 8
  br label %bb.xd

bb.xd:                                            ; preds = %bb.wz, %bb.xc
  %.1213986 = phi i32 [ %i.bog, %bb.xc ], [ %.1203985, %bb.wz ] ; 5 uses
  %.1213849 = phi i32 [ %i.bof, %bb.xc ], [ %.1203848, %bb.wz ] ; 4 uses
  %.1213685 = phi i32 [ %i.boe, %bb.xc ], [ %.1203684, %bb.wz ]
  %.121 = phi i8 [ %i.boh, %bb.xc ], [ %.120, %bb.wz ] ; 2 uses
  %i.boi = load i32, ptr @hf_gsm_a_gm_rac_dlmc_max_bandwidth, align 4
  %i.boj = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.boi, ptr noundef %0, i32 noundef %.213724, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bok = add i32 %.213724, 2                    ; 2 uses
  %i.bol = add nsw i32 %i.bnv, -2
  %i.bom = shl i32 %.1213685, 2                   ; 3 uses
  %i.bon = add i8 %.121, -2                       ; 4 uses
  %i.boo = icmp ult i32 %i.bol, 6
  br i1 %i.boo, label %.thread, label %bb.xe

bb.xe:                                            ; preds = %bb.xd
  %i.bop = icmp ult i8 %i.bon, 6
  br i1 %i.bop, label %bb.xf, label %bb.xi

bb.xf:                                            ; preds = %bb.xe
  %i.boq = icmp eq i32 %.1213849, 0
  br i1 %i.boq, label %bb.xg, label %bb.xh

bb.xg:                                            ; preds = %bb.xf
  %i.bor = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1213986, i32 noundef 1) ; 0 uses
  br label %bb.xh

bb.xh:                                            ; preds = %bb.xg, %bb.xf
  %i.bos = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1213986)
  %i.bot = zext i8 %i.bos to i32
  %narrow4287 = sub nuw nsw i8 26, %.121
  %i.bou = zext nneg i8 %narrow4287 to i32
  %i.bov = shl nuw i32 %i.bot, %i.bou
  %i.bow = or i32 %i.bov, %i.bom
  %i.box = add i32 %.1213849, -1
  %i.boy = add i32 %.1213986, 1
  %30 = or disjoint i8 %i.bon, 8
  br label %bb.xi

bb.xi:                                            ; preds = %bb.xe, %bb.xh
  %.1223987 = phi i32 [ %i.boy, %bb.xh ], [ %.1213986, %bb.xe ] ; 5 uses
  %.1223850 = phi i32 [ %i.box, %bb.xh ], [ %.1213849, %bb.xe ] ; 4 uses
  %.1223686 = phi i32 [ %i.bow, %bb.xh ], [ %i.bom, %bb.xe ]
  %.122 = phi i8 [ %30, %bb.xh ], [ %i.bon, %bb.xe ] ; 2 uses
  %i.boz = load i32, ptr @hf_gsm_a_gm_rac_dlmc_max_nb_dl_ts, align 4
  %i.bpa = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.boz, ptr noundef %0, i32 noundef %i.bok, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.bpb = add i32 %.213724, 8                    ; 2 uses
  %i.bpc = add nsw i32 %i.bnv, -8
  %i.bpd = shl i32 %.1223686, 6                   ; 3 uses
  %31 = add i8 %.122, -6                          ; 4 uses
  %i.bpe = icmp ult i32 %i.bpc, 3
  br i1 %i.bpe, label %.thread, label %bb.xj

bb.xj:                                            ; preds = %bb.xi
  %i.bpf = icmp ult i8 %31, 3
  br i1 %i.bpf, label %bb.xk, label %bb.xn

bb.xk:                                            ; preds = %bb.xj
  %i.bpg = icmp eq i32 %.1223850, 0
  br i1 %i.bpg, label %bb.xl, label %bb.xm

bb.xl:                                            ; preds = %bb.xk
  %i.bph = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1223987, i32 noundef 1) ; 0 uses
  br label %bb.xm

bb.xm:                                            ; preds = %bb.xl, %bb.xk
  %i.bpi = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1223987)
  %i.bpj = zext i8 %i.bpi to i32
  %narrow4289 = sub nuw nsw i8 30, %.122
  %i.bpk = zext nneg i8 %narrow4289 to i32
  %i.bpl = shl nuw i32 %i.bpj, %i.bpk
  %i.bpm = or i32 %i.bpl, %i.bpd
  %i.bpn = add i32 %.1223850, -1
  %i.bpo = add i32 %.1223987, 1
  %i.bpp = or disjoint i8 %31, 8
  br label %bb.xn

bb.xn:                                            ; preds = %bb.xj, %bb.xm
  %.1233988 = phi i32 [ %i.bpo, %bb.xm ], [ %.1223987, %bb.xj ]
  %.1233851 = phi i32 [ %i.bpn, %bb.xm ], [ %.1223850, %bb.xj ]
  %.1233687 = phi i32 [ %i.bpm, %bb.xm ], [ %i.bpd, %bb.xj ]
  %.123 = phi i8 [ %i.bpp, %bb.xm ], [ %31, %bb.xj ]
  %i.bpq = load i32, ptr @hf_gsm_a_gm_rac_dlmc_max_nb_dl_carriers, align 4
  %i.bpr = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bpq, ptr noundef %0, i32 noundef %i.bpb, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bps = add i32 %.213724, 11
  %i.bpt = add nsw i32 %i.bnv, -11
  %i.bpu = shl i32 %.1233687, 3
  %i.bpv = add i8 %.123, -3
  br label %bb.xo

bb.xo:                                            ; preds = %bb.xn, %bb.we
  %.1243989 = phi i32 [ %.1163981, %bb.we ], [ %.1233988, %bb.xn ] ; 5 uses
  %.1243852 = phi i32 [ %.1163844, %bb.we ], [ %.1233851, %bb.xn ] ; 4 uses
  %.223725 = phi i32 [ %i.blx, %bb.we ], [ %i.bps, %bb.xn ] ; 7 uses
  %.1243688 = phi i32 [ %i.blz, %bb.we ], [ %i.bpu, %bb.xn ] ; 3 uses
  %.124 = phi i8 [ %.116, %bb.we ], [ %i.bpv, %bb.xn ] ; 3 uses
  %.21 = phi i32 [ %i.bly, %bb.we ], [ %i.bpt, %bb.xn ] ; 6 uses
  %i.bpw = icmp eq i32 %.21, 0
  br i1 %i.bpw, label %.thread, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.bpx = icmp eq i8 %.124, 0
  br i1 %i.bpx, label %bb.xq, label %bb.xt

bb.xq:                                            ; preds = %bb.xp
  %i.bpy = icmp eq i32 %.1243852, 0
  br i1 %i.bpy, label %bb.xr, label %bb.xs

bb.xr:                                            ; preds = %bb.xq
  %i.bpz = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1243989, i32 noundef 1) ; 0 uses
  br label %bb.xs

bb.xs:                                            ; preds = %bb.xr, %bb.xq
  %i.bqa = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1243989)
  %i.bqb = zext i8 %i.bqa to i32
  %i.bqc = shl nuw i32 %i.bqb, 24
  %i.bqd = or i32 %i.bqc, %.1243688
  %i.bqe = add i32 %.1243852, -1
  %i.bqf = add i32 %.1243989, 1
  br label %bb.xu

bb.xt:                                            ; preds = %bb.xp
  %i.bqg = add i8 %.124, -1
  br label %bb.xu

bb.xu:                                            ; preds = %bb.xt, %bb.xs
  %.1253990 = phi i32 [ %i.bqf, %bb.xs ], [ %.1243989, %bb.xt ] ; 5 uses
  %.1253853 = phi i32 [ %i.bqe, %bb.xs ], [ %.1243852, %bb.xt ] ; 4 uses
  %.1253689 = phi i32 [ %i.bqd, %bb.xs ], [ %.1243688, %bb.xt ]
  %.125 = phi i8 [ 7, %bb.xs ], [ %i.bqg, %bb.xt ] ; 3 uses
  %i.bqh = load i32, ptr @hf_gsm_a_gm_rac_ext_tsc_set_cap_support, align 4
  %i.bqi = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bqh, ptr noundef %0, i32 noundef %.223725, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bqj = add i32 %.223725, 1                    ; 2 uses
  %i.bqk = shl i32 %.1253689, 1                   ; 3 uses
  %i.bql = icmp eq i32 %.21, 1
  br i1 %i.bql, label %.thread, label %bb.xv

bb.xv:                                            ; preds = %bb.xu
  %i.bqm = icmp eq i8 %.125, 0
  br i1 %i.bqm, label %bb.xw, label %bb.xz

bb.xw:                                            ; preds = %bb.xv
  %i.bqn = icmp eq i32 %.1253853, 0
  br i1 %i.bqn, label %bb.xx, label %bb.xy

bb.xx:                                            ; preds = %bb.xw
  %i.bqo = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1253990, i32 noundef 1) ; 0 uses
  br label %bb.xy

bb.xy:                                            ; preds = %bb.xx, %bb.xw
  %i.bqp = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1253990)
  %i.bqq = zext i8 %i.bqp to i32
  %i.bqr = shl nuw i32 %i.bqq, 24
  %i.bqs = or i32 %i.bqr, %i.bqk
  %i.bqt = add i32 %.1253853, -1
  %i.bqu = add i32 %.1253990, 1
  br label %bb.ya

bb.xz:                                            ; preds = %bb.xv
  %i.bqv = add i8 %.125, -1
  br label %bb.ya

bb.ya:                                            ; preds = %bb.xz, %bb.xy
  %.1263991 = phi i32 [ %i.bqu, %bb.xy ], [ %.1253990, %bb.xz ] ; 5 uses
  %.1263854 = phi i32 [ %i.bqt, %bb.xy ], [ %.1253853, %bb.xz ] ; 4 uses
  %.1263690 = phi i32 [ %i.bqs, %bb.xy ], [ %i.bqk, %bb.xz ]
  %.126 = phi i8 [ 7, %bb.xy ], [ %i.bqv, %bb.xz ] ; 5 uses
  %i.bqw = load i32, ptr @hf_gsm_a_gm_rac_ext_earfcn_value_range, align 4
  %i.bqx = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bqw, ptr noundef %0, i32 noundef %i.bqj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bqy = add i32 %.223725, 2                    ; 2 uses
  %i.bqz = shl i32 %.1263690, 1                   ; 3 uses
  %i.bra = and i32 %.21, -2
  %i.brb = icmp eq i32 %i.bra, 2
  br i1 %i.brb, label %.thread, label %bb.yb

bb.yb:                                            ; preds = %bb.ya
  %i.brc = icmp ult i8 %.126, 2
  br i1 %i.brc, label %bb.yc, label %bb.yf

bb.yc:                                            ; preds = %bb.yb
  %i.brd = icmp eq i32 %.1263854, 0
  br i1 %i.brd, label %bb.yd, label %bb.ye

bb.yd:                                            ; preds = %bb.yc
  %i.bre = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1263991, i32 noundef 1) ; 0 uses
  br label %bb.ye

bb.ye:                                            ; preds = %bb.yd, %bb.yc
  %i.brf = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1263991)
  %i.brg = zext i8 %i.brf to i32
  %narrow4291 = sub nuw nsw i8 24, %.126
  %i.brh = zext nneg i8 %narrow4291 to i32
  %i.bri = shl nuw i32 %i.brg, %i.brh
  %i.brj = or i32 %i.bri, %i.bqz
  %i.brk = add i32 %.1263854, -1
  %i.brl = add i32 %.1263991, 1
  %i.brm = or disjoint i8 %.126, 8
  br label %bb.yf

bb.yf:                                            ; preds = %bb.yb, %bb.ye
  %.1273992 = phi i32 [ %i.brl, %bb.ye ], [ %.1263991, %bb.yb ] ; 5 uses
  %.1273855 = phi i32 [ %i.brk, %bb.ye ], [ %.1263854, %bb.yb ] ; 4 uses
  %.1273691 = phi i32 [ %i.brj, %bb.ye ], [ %i.bqz, %bb.yb ]
  %.127 = phi i8 [ %i.brm, %bb.ye ], [ %.126, %bb.yb ]
  %i.brn = load i32, ptr @hf_gsm_a_gm_rac_ec_pch_mon_support, align 4
  %i.bro = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.brn, ptr noundef %0, i32 noundef %i.bqy, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.brp = add i32 %.223725, 4                    ; 3 uses
  %i.brq = add nsw i32 %.21, -4                   ; 2 uses
  %i.brr = shl i32 %.1273691, 2                   ; 3 uses
  %i.brs = add i8 %.127, -2                       ; 3 uses
  %i.brt = icmp eq i32 %i.brq, 0
  br i1 %i.brt, label %.thread, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.bru = icmp eq i8 %i.brs, 0
  br i1 %i.bru, label %bb.yh, label %bb.yk

bb.yh:                                            ; preds = %bb.yg
  %i.brv = icmp eq i32 %.1273855, 0
  br i1 %i.brv, label %bb.yi, label %bb.yj

bb.yi:                                            ; preds = %bb.yh
  %i.brw = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1273992, i32 noundef 1) ; 0 uses
  br label %bb.yj

bb.yj:                                            ; preds = %bb.yi, %bb.yh
  %i.brx = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1273992)
  %i.bry = zext i8 %i.brx to i32
  %i.brz = shl nuw i32 %i.bry, 24
  %i.bsa = or i32 %i.brz, %i.brr
  %i.bsb = add i32 %.1273855, -1
  %i.bsc = add i32 %.1273992, 1
  br label %bb.yk

bb.yk:                                            ; preds = %bb.yg, %bb.yj
  %.1283993 = phi i32 [ %i.bsc, %bb.yj ], [ %.1273992, %bb.yg ] ; 6 uses
  %.1283856 = phi i32 [ %i.bsb, %bb.yj ], [ %.1273855, %bb.yg ] ; 5 uses
  %.1283692 = phi i32 [ %i.bsa, %bb.yj ], [ %i.brr, %bb.yg ] ; 5 uses
  %.128 = phi i8 [ 8, %bb.yj ], [ %i.brs, %bb.yg ] ; 6 uses
  %i.bsd = icmp sgt i32 %.1283692, -1
  br i1 %i.bsd, label %bb.yl, label %bb.ym

bb.yl:                                            ; preds = %bb.yk
  %i.bse = add i32 %.223725, 5
  %i.bsf = add nsw i32 %.21, -5
  %i.bsg = shl nuw i32 %.1283692, 1
  %i.bsh = add i8 %.128, -1
  br label %bb.ys

bb.ym:                                            ; preds = %bb.yk
  %i.bsi = icmp ult i32 %i.brq, 4
  br i1 %i.bsi, label %.thread, label %bb.yn

bb.yn:                                            ; preds = %bb.ym
  %i.bsj = icmp ult i8 %.128, 4
  br i1 %i.bsj, label %bb.yo, label %bb.yr

bb.yo:                                            ; preds = %bb.yn
  %i.bsk = icmp eq i32 %.1283856, 0
  br i1 %i.bsk, label %bb.yp, label %bb.yq

bb.yp:                                            ; preds = %bb.yo
  %i.bsl = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1283993, i32 noundef 1) ; 0 uses
  br label %bb.yq

bb.yq:                                            ; preds = %bb.yp, %bb.yo
  %i.bsm = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1283993)
  %i.bsn = zext i8 %i.bsm to i32
  %narrow4292 = sub nuw nsw i8 24, %.128
  %i.bso = zext nneg i8 %narrow4292 to i32
  %i.bsp = shl nuw nsw i32 %i.bsn, %i.bso
  %i.bsq = or i32 %i.bsp, %.1283692
  %i.bsr = add i32 %.1283856, -1
  %i.bss = add i32 %.1283993, 1
  %i.bst = or disjoint i8 %.128, 8
  br label %bb.yr

bb.yr:                                            ; preds = %bb.yn, %bb.yq
  %.1293994 = phi i32 [ %i.bss, %bb.yq ], [ %.1283993, %bb.yn ]
  %.1293857 = phi i32 [ %i.bsr, %bb.yq ], [ %.1283856, %bb.yn ]
  %.1293693 = phi i32 [ %i.bsq, %bb.yq ], [ %.1283692, %bb.yn ]
  %.129 = phi i8 [ %i.bst, %bb.yq ], [ %.128, %bb.yn ]
  %i.bsu = load i32, ptr @hf_gsm_a_gm_rac_ms_sync_accuracy, align 4
  %i.bsv = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bsu, ptr noundef %0, i32 noundef %i.brp, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bsw = add i32 %.223725, 8
  %i.bsx = add nsw i32 %.21, -8
  %i.bsy = shl i32 %.1293693, 4
  %i.bsz = add i8 %.129, -4
  br label %bb.ys

bb.ys:                                            ; preds = %bb.yr, %bb.yl
  %.1303995 = phi i32 [ %.1283993, %bb.yl ], [ %.1293994, %bb.yr ] ; 5 uses
  %.1303858 = phi i32 [ %.1283856, %bb.yl ], [ %.1293857, %bb.yr ] ; 4 uses
  %.233726 = phi i32 [ %i.bse, %bb.yl ], [ %i.bsw, %bb.yr ] ; 5 uses
  %.1303694 = phi i32 [ %i.bsg, %bb.yl ], [ %i.bsy, %bb.yr ] ; 3 uses
  %.130 = phi i8 [ %i.bsh, %bb.yl ], [ %i.bsz, %bb.yr ] ; 3 uses
  %.22 = phi i32 [ %i.bsf, %bb.yl ], [ %i.bsx, %bb.yr ] ; 4 uses
  %i.bta = icmp eq i32 %.22, 0
  br i1 %i.bta, label %.thread, label %bb.yt

bb.yt:                                            ; preds = %bb.ys
  %i.btb = icmp eq i8 %.130, 0
  br i1 %i.btb, label %bb.yu, label %bb.yx

bb.yu:                                            ; preds = %bb.yt
  %i.btc = icmp eq i32 %.1303858, 0
  br i1 %i.btc, label %bb.yv, label %bb.yw

bb.yv:                                            ; preds = %bb.yu
  %i.btd = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1303995, i32 noundef 1) ; 0 uses
  br label %bb.yw

bb.yw:                                            ; preds = %bb.yv, %bb.yu
  %i.bte = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1303995)
  %i.btf = zext i8 %i.bte to i32
  %i.btg = shl nuw i32 %i.btf, 24
  %i.bth = or i32 %i.btg, %.1303694
  %i.bti = add i32 %.1303858, -1
  %i.btj = add i32 %.1303995, 1
  br label %bb.yy

bb.yx:                                            ; preds = %bb.yt
  %i.btk = add i8 %.130, -1
  br label %bb.yy

bb.yy:                                            ; preds = %bb.yx, %bb.yw
  %.1313996 = phi i32 [ %i.btj, %bb.yw ], [ %.1303995, %bb.yx ] ; 5 uses
  %.1313859 = phi i32 [ %i.bti, %bb.yw ], [ %.1303858, %bb.yx ] ; 4 uses
  %.1313695 = phi i32 [ %i.bth, %bb.yw ], [ %.1303694, %bb.yx ]
  %.131 = phi i8 [ 7, %bb.yw ], [ %i.btk, %bb.yx ] ; 3 uses
  %i.btl = load i32, ptr @hf_gsm_a_gm_rac_ec_ul_cov_enh_support, align 4
  %i.btm = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.btl, ptr noundef %0, i32 noundef %.233726, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.btn = add i32 %.233726, 1                    ; 2 uses
  %i.bto = shl i32 %.1313695, 1                   ; 3 uses
  %i.btp = icmp eq i32 %.22, 1
  br i1 %i.btp, label %.thread, label %bb.yz

bb.yz:                                            ; preds = %bb.yy
  %i.btq = icmp eq i8 %.131, 0
  br i1 %i.btq, label %bb.za, label %bb.zd

bb.za:                                            ; preds = %bb.yz
  %i.btr = icmp eq i32 %.1313859, 0
  br i1 %i.btr, label %bb.zb, label %bb.zc

bb.zb:                                            ; preds = %bb.za
  %i.bts = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1313996, i32 noundef 1) ; 0 uses
  br label %bb.zc

bb.zc:                                            ; preds = %bb.zb, %bb.za
  %i.btt = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1313996)
  %i.btu = zext i8 %i.btt to i32
  %i.btv = shl nuw i32 %i.btu, 24
  %i.btw = or i32 %i.btv, %i.bto
  %i.btx = add i32 %.1313859, -1
  %i.bty = add i32 %.1313996, 1
  br label %bb.ze

bb.zd:                                            ; preds = %bb.yz
  %i.btz = add i8 %.131, -1
  br label %bb.ze

bb.ze:                                            ; preds = %bb.zd, %bb.zc
  %.1323997 = phi i32 [ %i.bty, %bb.zc ], [ %.1313996, %bb.zd ] ; 5 uses
  %.1323860 = phi i32 [ %i.btx, %bb.zc ], [ %.1313859, %bb.zd ] ; 4 uses
  %.1323696 = phi i32 [ %i.btw, %bb.zc ], [ %i.bto, %bb.zd ]
  %.132 = phi i8 [ 7, %bb.zc ], [ %i.btz, %bb.zd ] ; 3 uses
  %i.bua = load i32, ptr @hf_gsm_a_gm_rac_mta_access_sec_support, align 4
  %i.bub = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bua, ptr noundef %0, i32 noundef %i.btn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.buc = add i32 %.233726, 2                    ; 2 uses
  %i.bud = shl i32 %.1323696, 1                   ; 3 uses
  %i.bue = icmp eq i32 %.22, 2
  br i1 %i.bue, label %.thread, label %bb.zf

bb.zf:                                            ; preds = %bb.ze
  %i.buf = icmp eq i8 %.132, 0
  br i1 %i.buf, label %bb.zg, label %bb.zj

bb.zg:                                            ; preds = %bb.zf
  %i.bug = icmp eq i32 %.1323860, 0
  br i1 %i.bug, label %bb.zh, label %bb.zi

bb.zh:                                            ; preds = %bb.zg
  %i.buh = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.1323997, i32 noundef 1) ; 0 uses
  br label %bb.zi

bb.zi:                                            ; preds = %bb.zh, %bb.zg
  %i.bui = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1323997)
  %i.buj = zext i8 %i.bui to i32
  %i.buk = shl nuw i32 %i.buj, 24
  %i.bul = or i32 %i.buk, %i.bud
  %i.bum = add i32 %.1323860, -1
  %i.bun = add i32 %.1323997, 1
  br label %bb.zk

bb.zj:                                            ; preds = %bb.zf
  %i.buo = add i8 %.132, -1
  br label %bb.zk

bb.zk:                                            ; preds = %bb.zj, %bb.zi
  %.1333998 = phi i32 [ %i.bun, %bb.zi ], [ %.1323997, %bb.zj ] ; 2 uses
  %.1333861 = phi i32 [ %i.bum, %bb.zi ], [ %.1323860, %bb.zj ] ; 2 uses
  %.1333697 = phi i32 [ %i.bul, %bb.zi ], [ %i.bud, %bb.zj ]
  %.133 = phi i8 [ 7, %bb.zi ], [ %i.buo, %bb.zj ] ; 2 uses
  %i.bup = load i32, ptr @hf_gsm_a_gm_rac_ec_paging_ind_chan_mon_support, align 4
  %i.buq = call ptr @proto_tree_add_bits_item(ptr noundef %i.x, i32 noundef %i.bup, ptr noundef %0, i32 noundef %i.buc, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bur = add i32 %.233726, 3                    ; 2 uses
  %i.bus = add nsw i32 %.22, -3                   ; 2 uses
  %i.but = shl i32 %.1333697, 1                   ; 2 uses
  %.not42934330 = icmp eq i32 %i.bus, 0
  br i1 %.not42934330, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.zk, %bb.zo
  %.234335 = phi i32 [ %i.bvg, %bb.zo ], [ %i.bus, %bb.zk ] ; 2 uses
  %.1344334 = phi i8 [ %i.bvj, %bb.zo ], [ %.133, %bb.zk ] ; 3 uses
  %.13436984333 = phi i32 [ %i.bvh, %bb.zo ], [ %i.but, %bb.zk ] ; 2 uses
  %.13438624332 = phi i32 [ %.1353863, %bb.zo ], [ %.1333861, %bb.zk ] ; 3 uses
  %.13439994331 = phi i32 [ %.1354000, %bb.zo ], [ %.1333998, %bb.zk ] ; 4 uses
  %..23 = call i32 @llvm.umin.i32(i32 %.234335, i32 8) ; 4 uses
  %i.buu = zext i8 %.1344334 to i32               ; 2 uses
  %i.buv = icmp samesign ugt i32 %..23, %i.buu
  br i1 %i.buv, label %bb.zl, label %bb.zo

bb.zl:                                            ; preds = %.lr.ph
  %i.buw = icmp eq i32 %.13438624332, 0
  br i1 %i.buw, label %bb.zm, label %bb.zn

bb.zm:                                            ; preds = %bb.zl
  %i.bux = call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_not_enough_data, ptr noundef %0, i32 noundef %.13439994331, i32 noundef 1) ; 0 uses
  br label %bb.zn

bb.zn:                                            ; preds = %bb.zm, %bb.zl
  %i.buy = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.13439994331)
  %i.buz = zext i8 %i.buy to i32
  %i.bva = sub nuw nsw i32 24, %i.buu
  %i.bvb = shl nuw i32 %i.buz, %i.bva
  %i.bvc = or i32 %i.bvb, %.13436984333
  %i.bvd = add i32 %.13438624332, -1
  %i.bve = add i32 %.13439994331, 1
  %i.bvf = add nuw i8 %.1344334, 8
  br label %bb.zo

bb.zo:                                            ; preds = %.lr.ph, %bb.zn
  %.1354000 = phi i32 [ %i.bve, %bb.zn ], [ %.13439994331, %.lr.ph ] ; 2 uses
  %.1353863 = phi i32 [ %i.bvd, %bb.zn ], [ %.13438624332, %.lr.ph ] ; 2 uses
  %.1353699 = phi i32 [ %i.bvc, %bb.zn ], [ %.13436984333, %.lr.ph ]
  %.135 = phi i8 [ %i.bvf, %bb.zn ], [ %.1344334, %.lr.ph ]
  %i.bvg = sub nuw i32 %.234335, %..23            ; 2 uses
  %i.bvh = shl i32 %.1353699, %..23               ; 2 uses
  %i.bvi = trunc nuw nsw i32 %..23 to i8
  %i.bvj = sub i8 %.135, %i.bvi                   ; 2 uses
  %.not4293 = icmp eq i32 %i.bvg, 0
  br i1 %.not4293, label %.thread, label %.lr.ph, !llvm.loop !10

.thread:                                          ; preds = %bb.zo, %.preheader, %.preheader4320, %.loopexit, %bb.zk, %bb.ze, %bb.yy, %bb.ys, %bb.ym, %bb.yf, %bb.ya, %bb.xu, %bb.xo, %bb.xi, %bb.xd, %bb.wy, %bb.wr, %bb.wm, %bb.wf, %bb.vx, %bb.vr, %bb.vl, %bb.vf, %bb.uz, %bb.ut, %bb.un, %bb.ui, %bb.uc, %bb.tw, %bb.tq, %bb.tk, %bb.te, %bb.sy, %bb.ss, %bb.sm, %bb.sg, %bb.sb, %bb.ru, %bb.ro, %bb.rj, %bb.rd, %bb.qx, %bb.qs, %bb.qn, %bb.qh, %bb.qb, %bb.pv, %bb.pp, %bb.pi, %bb.pd, %bb.ov, %bb.op, %bb.oj, %bb.od, %bb.nw, %bb.nr, %bb.nk, %bb.ne, %bb.my, %bb.mt, %bb.mn, %bb.mi, %bb.md, %bb.lw, %bb.lq, %bb.lj, %bb.ld, %bb.kv, %bb.kp, %bb.kj, %bb.kd, %bb.jv, %bb.jp, %bb.jj, %bb.jd, %bb.ix, %bb.ir, %bb.il, %bb.if, %bb.hz, %bb.hs, %bb.hm, %bb.hf, %bb.gz, %bb.gu, %bb.gm, %bb.gf, %bb.ga, %bb.fs, %bb.fm, %bb.fe, %bb.ey, %bb.et, %bb.el, %bb.ee, %bb.dz, %bb.dr, %bb.dl, %bb.dd, %bb.cw, %bb.cq, %bb.ck, %bb.ce, %.loopexit4322, %bb.bi, %bb.ay
  %.1364001 = phi i32 [ %.243889, %bb.dl ], [ %.283893, %bb.ee ], [ %.273892, %bb.dz ], [ %.323897, %bb.ey ], [ %.43869, %bb.ay ], [ %.133878, %bb.bi ], [ %.183883, %.loopexit4322 ], [ %.193884, %bb.ce ], [ %.203885, %bb.ck ], [ %.213886, %bb.cq ], [ %.223887, %bb.cw ], [ %.233888, %bb.dd ], [ %.263891, %bb.dr ], [ %.303895, %bb.el ], [ %.343899, %bb.fe ], [ %.373902, %bb.fs ], [ %.413906, %bb.gm ], [ %.473912, %bb.hs ], [ %.483913, %bb.hz ], [ %.503915, %bb.if ], [ %.513916, %bb.il ], [ %.523917, %bb.ir ], [ %.533918, %bb.ix ], [ %.543919, %bb.jd ], [ %.553920, %bb.jj ], [ %.563921, %bb.jp ], [ %.573922, %bb.jv ], [ %.613926, %bb.kp ], [ %.623927, %bb.kv ], [ %.653930, %bb.lj ], [ %.663931, %bb.lq ], [ %.673932, %bb.lw ], [ %.693934, %bb.md ], [ %.703935, %bb.mi ], [ %.713936, %bb.mn ], [ %.723937, %bb.mt ], [ %.733938, %bb.my ], [ %.743939, %bb.ne ], [ %.753940, %bb.nk ], [ %.803945, %bb.oj ], [ %.813946, %bb.op ], [ %.823947, %bb.ov ], [ %.863951, %bb.pp ], [ %.873952, %bb.pv ], [ %.883953, %bb.qb ], [ %.893954, %bb.qh ], [ %.903955, %bb.qn ], [ %.913956, %bb.qs ], [ %.923957, %bb.qx ], [ %.933958, %bb.rd ], [ %.943959, %bb.rj ], [ %.953960, %bb.ro ], [ %.963961, %bb.ru ], [ %.1003965, %bb.sm ], [ %.1013966, %bb.ss ], [ %.1023967, %bb.sy ], [ %.1033968, %bb.te ], [ %.1043969, %bb.tk ], [ %.1053970, %bb.tq ], [ %.1063971, %bb.tw ], [ %.1073972, %bb.uc ], [ %.1083973, %bb.ui ], [ %.1093974, %bb.un ], [ %.1103975, %bb.ut ], [ %.1113976, %bb.uz ], [ %.1123977, %bb.vf ], [ %.1133978, %bb.vl ], [ %.1143979, %bb.vr ], [ %.1153980, %bb.vx ], [ %.1243989, %bb.xo ], [ %.1253990, %bb.xu ], [ %.1263991, %bb.ya ], [ %.1273992, %bb.yf ], [ %.1303995, %bb.ys ], [ %.1313996, %bb.yy ], [ %.1323997, %bb.ze ], [ %.1333998, %bb.zk ], [ %.1283993, %bb.ym ], [ %.1163981, %bb.wf ], [ %.1203985, %bb.wy ], [ %.1213986, %bb.xd ], [ %.1223987, %bb.xi ], [ %.1173982, %bb.wm ], [ %.1183983, %bb.wr ], [ %.973962, %bb.sb ], [ %.983963, %bb.sg ], [ %.833948, %bb.pd ], [ %.843949, %bb.pi ], [ %.763941, %bb.nr ], [ %.773942, %bb.nw ], [ %.783943, %bb.od ], [ %.633928, %bb.ld ], [ %.583923, %bb.kd ], [ %.593924, %bb.kj ], [ %.423907, %bb.gu ], [ %.433908, %bb.gz ], [ %.443909, %bb.hf ], [ %.453910, %bb.hm ], [ %.383903, %bb.ga ], [ %.393904, %bb.gf ], [ %.353900, %bb.fm ], [ %.313896, %bb.et ], [ %.53870, %.preheader4320 ], [ %.63871, %.preheader ], [ %.123877, %.loopexit ], [ %.1354000, %bb.zo ] ; 2 uses
  %.1363864 = phi i32 [ %.243752, %bb.dl ], [ %.283756, %bb.ee ], [ %.273755, %bb.dz ], [ %.323760, %bb.ey ], [ %.43732, %bb.ay ], [ %.133741, %bb.bi ], [ %.183746, %.loopexit4322 ], [ %.193747, %bb.ce ], [ %.203748, %bb.ck ], [ %.213749, %bb.cq ], [ %.223750, %bb.cw ], [ %.233751, %bb.dd ], [ %.263754, %bb.dr ], [ %.303758, %bb.el ], [ %.343762, %bb.fe ], [ %.373765, %bb.fs ], [ %.413769, %bb.gm ], [ %.473775, %bb.hs ], [ %.483776, %bb.hz ], [ %.503778, %bb.if ], [ %.513779, %bb.il ], [ %.523780, %bb.ir ], [ %.533781, %bb.ix ], [ %.543782, %bb.jd ], [ %.553783, %bb.jj ], [ %.563784, %bb.jp ], [ %.573785, %bb.jv ], [ %.613789, %bb.kp ], [ %.623790, %bb.kv ], [ %.653793, %bb.lj ], [ %.663794, %bb.lq ], [ %.673795, %bb.lw ], [ %.693797, %bb.md ], [ %.703798, %bb.mi ], [ %.713799, %bb.mn ], [ %.723800, %bb.mt ], [ %.733801, %bb.my ], [ %.743802, %bb.ne ], [ %.753803, %bb.nk ], [ %.803808, %bb.oj ], [ %.813809, %bb.op ], [ %.823810, %bb.ov ], [ %.863814, %bb.pp ], [ %.873815, %bb.pv ], [ %.883816, %bb.qb ], [ %.893817, %bb.qh ], [ %.903818, %bb.qn ], [ %.913819, %bb.qs ], [ %.923820, %bb.qx ], [ %.933821, %bb.rd ], [ %.943822, %bb.rj ], [ %.953823, %bb.ro ], [ %.963824, %bb.ru ], [ %.1003828, %bb.sm ], [ %.1013829, %bb.ss ], [ %.1023830, %bb.sy ], [ %.1033831, %bb.te ], [ %.1043832, %bb.tk ], [ %.1053833, %bb.tq ], [ %.1063834, %bb.tw ], [ %.1073835, %bb.uc ], [ %.1083836, %bb.ui ], [ %.1093837, %bb.un ], [ %.1103838, %bb.ut ], [ %.1113839, %bb.uz ], [ %.1123840, %bb.vf ], [ %.1133841, %bb.vl ], [ %.1143842, %bb.vr ], [ %.1153843, %bb.vx ], [ %.1243852, %bb.xo ], [ %.1253853, %bb.xu ], [ %.1263854, %bb.ya ], [ %.1273855, %bb.yf ], [ %.1303858, %bb.ys ], [ %.1313859, %bb.yy ], [ %.1323860, %bb.ze ], [ %.1333861, %bb.zk ], [ %.1283856, %bb.ym ], [ %.1163844, %bb.wf ], [ %.1203848, %bb.wy ], [ %.1213849, %bb.xd ], [ %.1223850, %bb.xi ], [ %.1173845, %bb.wm ], [ %.1183846, %bb.wr ], [ %.973825, %bb.sb ], [ %.983826, %bb.sg ], [ %.833811, %bb.pd ], [ %.843812, %bb.pi ], [ %.763804, %bb.nr ], [ %.773805, %bb.nw ], [ %.783806, %bb.od ], [ %.633791, %bb.ld ], [ %.583786, %bb.kd ], [ %.593787, %bb.kj ], [ %.423770, %bb.gu ], [ %.433771, %bb.gz ], [ %.443772, %bb.hf ], [ %.453773, %bb.hm ], [ %.383766, %bb.ga ], [ %.393767, %bb.gf ], [ %.353763, %bb.fm ], [ %.313759, %bb.et ], [ %.53733, %.preheader4320 ], [ %.63734, %.preheader ], [ %.123740, %.loopexit ], [ %.1353863, %bb.zo ] ; 3 uses
  %.243727 = phi i32 [ %i.mc, %bb.dl ], [ %i.od, %bb.ee ], [ %i.ng, %bb.dz ], [ %i.qf, %bb.ey ], [ %i.bf, %bb.ay ], [ %i.gp, %bb.bi ], [ %.73710, %.loopexit4322 ], [ %i.ir, %bb.ce ], [ %i.jg, %bb.ck ], [ %i.jv, %bb.cq ], [ %i.kk, %bb.cw ], [ %i.kz, %bb.dd ], [ %.83711, %bb.dr ], [ %.93712, %bb.el ], [ %.103713, %bb.fe ], [ %.113714, %bb.fs ], [ %.123715, %bb.gm ], [ %.133716, %bb.hs ], [ %i.yq, %bb.hz ], [ %.143717, %bb.if ], [ %i.aac, %bb.il ], [ %i.aar, %bb.ir ], [ %i.abg, %bb.ix ], [ %i.abv, %bb.jd ], [ %i.ack, %bb.jj ], [ %i.acz, %bb.jp ], [ %i.ado, %bb.jv ], [ %.153718, %bb.kp ], [ %i.agz, %bb.kv ], [ %.163719, %bb.lj ], [ %i.aji, %bb.lq ], [ %i.ajz, %bb.lw ], [ %.173720, %bb.md ], [ %i.als, %bb.mi ], [ %i.amn, %bb.mn ], [ %i.and, %bb.mt ], [ %i.anu, %bb.my ], [ %i.aok, %bb.ne ], [ %i.aoz, %bb.nk ], [ %.183721, %bb.oj ], [ %i.asd, %bb.op ], [ %i.ass, %bb.ov ], [ %.193722, %bb.pp ], [ %i.avf, %bb.pv ], [ %i.avu, %bb.qb ], [ %i.awj, %bb.qh ], [ %i.awy, %bb.qn ], [ %i.axp, %bb.qs ], [ %i.ayf, %bb.qx ], [ %i.ayv, %bb.rd ], [ %i.azk, %bb.rj ], [ %i.baa, %bb.ro ], [ %i.baq, %bb.ru ], [ %.203723, %bb.sm ], [ %i.bde, %bb.ss ], [ %i.bdt, %bb.sy ], [ %i.bei, %bb.te ], [ %i.bex, %bb.tk ], [ %i.bfm, %bb.tq ], [ %i.bgb, %bb.tw ], [ %i.bgq, %bb.uc ], [ %i.bhf, %bb.ui ], [ %i.bhw, %bb.un ], [ %i.bim, %bb.ut ], [ %i.bjb, %bb.uz ], [ %i.bjq, %bb.vf ], [ %i.bkf, %bb.vl ], [ %i.bku, %bb.vr ], [ %i.blj, %bb.vx ], [ %.223725, %bb.xo ], [ %i.bqj, %bb.xu ], [ %i.bqy, %bb.ya ], [ %i.brp, %bb.yf ], [ %.233726, %bb.ys ], [ %i.btn, %bb.yy ], [ %i.buc, %bb.ze ], [ %i.bur, %bb.zk ], [ %i.brp, %bb.ym ], [ %i.blx, %bb.wf ], [ %.213724, %bb.wy ], [ %i.bok, %bb.xd ], [ %i.bpb, %bb.xi ], [ %i.bmn, %bb.wm ], [ %i.bne, %bb.wr ], [ %i.bbe, %bb.sb ], [ %i.bbw, %bb.sg ], [ %i.atg, %bb.pd ], [ %i.aua, %bb.pi ], [ %i.apn, %bb.nr ], [ %i.aqf, %bb.nw ], [ %i.aqu, %bb.od ], [ %i.ahn, %bb.ld ], [ %i.aen, %bb.kd ], [ %i.afj, %bb.kj ], [ %i.vb, %bb.gu ], [ %i.wb, %bb.gz ], [ %i.wr, %bb.hf ], [ %i.xi, %bb.hm ], [ %i.tj, %bb.ga ], [ %i.tx, %bb.gf ], [ %i.rl, %bb.fm ], [ %i.ph, %bb.et ], [ %.23705, %.preheader4320 ], [ %i.by, %.preheader ], [ %.43707, %.loopexit ], [ %i.bur, %bb.zo ]
  %.1363700 = phi i32 [ %i.lz, %bb.dl ], [ %i.oe, %bb.ee ], [ %i.nn, %bb.dz ], [ %i.qh, %bb.ey ], [ %i.bg, %bb.ay ], [ %i.gq, %bb.bi ], [ %.183582, %.loopexit4322 ], [ %i.is, %bb.ce ], [ %i.jh, %bb.ck ], [ %i.jw, %bb.cq ], [ %i.kl, %bb.cw ], [ %i.lb, %bb.dd ], [ %.263590, %bb.dr ], [ %.303594, %bb.el ], [ %.343598, %bb.fe ], [ %.373601, %bb.fs ], [ %.413605, %bb.gm ], [ %.473611, %bb.hs ], [ %i.ys, %bb.hz ], [ %.503614, %bb.if ], [ %i.aad, %bb.il ], [ %i.aas, %bb.ir ], [ %i.abh, %bb.ix ], [ %i.abw, %bb.jd ], [ %i.acl, %bb.jj ], [ %i.ada, %bb.jp ], [ %i.adp, %bb.jv ], [ %.613625, %bb.kp ], [ %i.aha, %bb.kv ], [ %.653629, %bb.lj ], [ %i.ajk, %bb.lq ], [ %i.akb, %bb.lw ], [ %.693633, %bb.md ], [ %i.alt, %bb.mi ], [ %i.amo, %bb.mn ], [ %i.anf, %bb.mt ], [ %i.anv, %bb.my ], [ %i.aol, %bb.ne ], [ %i.apa, %bb.nk ], [ %.803644, %bb.oj ], [ %i.ase, %bb.op ], [ %i.ast, %bb.ov ], [ %.863650, %bb.pp ], [ %i.avg, %bb.pv ], [ %i.avv, %bb.qb ], [ %i.awk, %bb.qh ], [ %i.awz, %bb.qn ], [ %i.axq, %bb.qs ], [ %i.ayg, %bb.qx ], [ %i.ayw, %bb.rd ], [ %i.azl, %bb.rj ], [ %i.bab, %bb.ro ], [ %i.bar, %bb.ru ], [ %.1003664, %bb.sm ], [ %i.bdf, %bb.ss ], [ %i.bdu, %bb.sy ], [ %i.bej, %bb.te ], [ %i.bey, %bb.tk ], [ %i.bfn, %bb.tq ], [ %i.bgc, %bb.tw ], [ %i.bgr, %bb.uc ], [ %i.bhg, %bb.ui ], [ %i.bhx, %bb.un ], [ %i.bin, %bb.ut ], [ %i.bjc, %bb.uz ], [ %i.bjr, %bb.vf ], [ %i.bkg, %bb.vl ], [ %i.bkv, %bb.vr ], [ %i.blk, %bb.vx ], [ %.1243688, %bb.xo ], [ %i.bqk, %bb.xu ], [ %i.bqz, %bb.ya ], [ %i.brr, %bb.yf ], [ %.1303694, %bb.ys ], [ %i.bto, %bb.yy ], [ %i.bud, %bb.ze ], [ %i.but, %bb.zk ], [ %.1283692, %bb.ym ], [ %i.bma, %bb.wf ], [ %.1203684, %bb.wy ], [ %i.bom, %bb.xd ], [ %i.bpd, %bb.xi ], [ %i.bmq, %bb.wm ], [ %i.bnf, %bb.wr ], [ %i.bbg, %bb.sb ], [ %i.bby, %bb.sg ], [ %i.atk, %bb.pd ], [ %i.aub, %bb.pi ], [ %i.app, %bb.nr ], [ %i.aqg, %bb.nw ], [ %i.aqw, %bb.od ], [ %i.ahv, %bb.ld ], [ %i.aek, %bb.kd ], [ %i.afl, %bb.kj ], [ %i.vj, %bb.gu ], [ %i.wc, %bb.gz ], [ %i.ws, %bb.hf ], [ %i.xk, %bb.hm ], [ %i.tg, %bb.ga ], [ %i.ty, %bb.gf ], [ %i.rt, %bb.fm ], [ %i.pp, %bb.et ], [ %.53569, %.preheader4320 ], [ %i.ca, %.preheader ], [ %.123576, %.loopexit ], [ %i.bvh, %bb.zo ]
  %.136 = phi i8 [ %i.mb, %bb.dl ], [ %i.of, %bb.ee ], [ %i.np, %bb.dz ], [ %i.qi, %bb.ey ], [ %i.bh, %bb.ay ], [ %i.gr, %bb.bi ], [ %.183542, %.loopexit4322 ], [ %.193543, %bb.ce ], [ %.203544, %bb.ck ], [ %.213545, %bb.cq ], [ %.223546, %bb.cw ], [ %.233547, %bb.dd ], [ %.263550, %bb.dr ], [ %.303554, %bb.el ], [ %.343558, %bb.fe ], [ %.373561, %bb.fs ], [ %.41, %bb.gm ], [ %.47, %bb.hs ], [ %.48, %bb.hz ], [ %.50, %bb.if ], [ %.51, %bb.il ], [ %.52, %bb.ir ], [ %.53, %bb.ix ], [ %.54, %bb.jd ], [ %.55, %bb.jj ], [ %.56, %bb.jp ], [ %.57, %bb.jv ], [ %.61, %bb.kp ], [ %.62, %bb.kv ], [ %.65, %bb.lj ], [ %.66, %bb.lq ], [ %i.akc, %bb.lw ], [ %.69, %bb.md ], [ %i.alu, %bb.mi ], [ %i.amp, %bb.mn ], [ %.72, %bb.mt ], [ %i.anw, %bb.my ], [ %.74, %bb.ne ], [ %.75, %bb.nk ], [ %.80, %bb.oj ], [ %.81, %bb.op ], [ %.82, %bb.ov ], [ %.86, %bb.pp ], [ %.87, %bb.pv ], [ %.88, %bb.qb ], [ %.89, %bb.qh ], [ %.90, %bb.qn ], [ %i.axr, %bb.qs ], [ %i.ayh, %bb.qx ], [ %.93, %bb.rd ], [ %.94, %bb.rj ], [ %i.bac, %bb.ro ], [ %.96, %bb.ru ], [ %.100, %bb.sm ], [ %.101, %bb.ss ], [ %.102, %bb.sy ], [ %.103, %bb.te ], [ %.104, %bb.tk ], [ %.105, %bb.tq ], [ %.106, %bb.tw ], [ %.107, %bb.uc ], [ %.108, %bb.ui ], [ %i.bhy, %bb.un ], [ %.110, %bb.ut ], [ %.111, %bb.uz ], [ %.112, %bb.vf ], [ %.113, %bb.vl ], [ %.114, %bb.vr ], [ %.115, %bb.vx ], [ %.124, %bb.xo ], [ %.125, %bb.xu ], [ %.126, %bb.ya ], [ %i.brs, %bb.yf ], [ %.130, %bb.ys ], [ %.131, %bb.yy ], [ %.132, %bb.ze ], [ %.133, %bb.zk ], [ %.128, %bb.ym ], [ %.116, %bb.wf ], [ %.120, %bb.wy ], [ %i.bon, %bb.xd ], [ %31, %bb.xi ], [ %i.bmp, %bb.wm ], [ %i.bng, %bb.wr ], [ %i.bbi, %bb.sb ], [ %i.bbz, %bb.sg ], [ %i.atm, %bb.pd ], [ %i.auc, %bb.pi ], [ %i.apr, %bb.nr ], [ %i.aqh, %bb.nw ], [ %i.aqy, %bb.od ], [ %i.ahx, %bb.ld ], [ %i.aem, %bb.kd ], [ %i.afm, %bb.kj ], [ %i.vl, %bb.gu ], [ %i.wd, %bb.gz ], [ %.44, %bb.hf ], [ %.45, %bb.hm ], [ %i.ti, %bb.ga ], [ %i.tz, %bb.gf ], [ %i.rv, %bb.fm ], [ %i.pr, %bb.et ], [ %.53529, %.preheader4320 ], [ %.63530, %.preheader ], [ %.123536, %.loopexit ], [ %i.bvj, %bb.zo ] ; 2 uses
  %.23488 = phi i8 [ %.034864359, %bb.dl ], [ %.034864359, %bb.ee ], [ %.034864359, %bb.dz ], [ %.034864359, %bb.ey ], [ %.034864359, %bb.ay ], [ %.034864359, %bb.bi ], [ %.034864359, %.loopexit4322 ], [ %.034864359, %bb.ce ], [ %.034864359, %bb.ck ], [ %.034864359, %bb.cq ], [ %.034864359, %bb.cw ], [ %.034864359, %bb.dd ], [ %.034864359, %bb.dr ], [ %.034864359, %bb.el ], [ %.034864359, %bb.fe ], [ %.034864359, %bb.fs ], [ %.034864359, %bb.gm ], [ %.13487, %bb.hs ], [ %.13487, %bb.hz ], [ %.13487, %bb.if ], [ %.13487, %bb.il ], [ %.13487, %bb.ir ], [ %.13487, %bb.ix ], [ %.13487, %bb.jd ], [ %.13487, %bb.jj ], [ %.13487, %bb.jp ], [ %.13487, %bb.jv ], [ %.13487, %bb.kp ], [ %.13487, %bb.kv ], [ %.13487, %bb.lj ], [ %.13487, %bb.lq ], [ %.13487, %bb.lw ], [ %.13487, %bb.md ], [ %.13487, %bb.mi ], [ %.13487, %bb.mn ], [ %.13487, %bb.mt ], [ %.13487, %bb.my ], [ %.13487, %bb.ne ], [ %.13487, %bb.nk ], [ %.13487, %bb.oj ], [ %.13487, %bb.op ], [ %.13487, %bb.ov ], [ %.13487, %bb.pp ], [ %.13487, %bb.pv ], [ %.13487, %bb.qb ], [ %.13487, %bb.qh ], [ %.13487, %bb.qn ], [ %.13487, %bb.qs ], [ %.13487, %bb.qx ], [ %.13487, %bb.rd ], [ %.13487, %bb.rj ], [ %.13487, %bb.ro ], [ %.13487, %bb.ru ], [ %.13487, %bb.sm ], [ %.13487, %bb.ss ], [ %.13487, %bb.sy ], [ %.13487, %bb.te ], [ %.13487, %bb.tk ], [ %.13487, %bb.tq ], [ %.13487, %bb.tw ], [ %.13487, %bb.uc ], [ %.13487, %bb.ui ], [ %.13487, %bb.un ], [ %.13487, %bb.ut ], [ %.13487, %bb.uz ], [ %.13487, %bb.vf ], [ %.13487, %bb.vl ], [ %.13487, %bb.vr ], [ %.13487, %bb.vx ], [ %.13487, %bb.xo ], [ %.13487, %bb.xu ], [ %.13487, %bb.ya ], [ %.13487, %bb.yf ], [ %.13487, %bb.ys ], [ %.13487, %bb.yy ], [ %.13487, %bb.ze ], [ %.13487, %bb.zk ], [ %.13487, %bb.ym ], [ %.13487, %bb.wf ], [ %.13487, %bb.wy ], [ %.13487, %bb.xd ], [ %.13487, %bb.xi ], [ %.13487, %bb.wm ], [ %.13487, %bb.wr ], [ %.13487, %bb.sb ], [ %.13487, %bb.sg ], [ %.13487, %bb.pd ], [ %.13487, %bb.pi ], [ %.13487, %bb.nr ], [ %.13487, %bb.nw ], [ %.13487, %bb.od ], [ %.13487, %bb.ld ], [ %.13487, %bb.kd ], [ %.13487, %bb.kj ], [ %.034864359, %bb.gu ], [ %i.vy, %bb.gz ], [ %i.vy, %bb.hf ], [ %i.vy, %bb.hm ], [ %.034864359, %bb.ga ], [ %.034864359, %bb.gf ], [ %.034864359, %bb.fm ], [ %.034864359, %bb.et ], [ %.034864359, %.preheader ], [ %.034864359, %.loopexit ], [ %.034864359, %.preheader4320 ], [ %.13487, %bb.zo ]
  %.2 = phi i8 [ %.034844360, %bb.dl ], [ %.034844360, %bb.ee ], [ %.034844360, %bb.dz ], [ %.034844360, %bb.ey ], [ %.034844360, %bb.ay ], [ %.034844360, %bb.bi ], [ %.034844360, %.loopexit4322 ], [ %.034844360, %bb.ce ], [ %.034844360, %bb.ck ], [ %.034844360, %bb.cq ], [ %.034844360, %bb.cw ], [ %.034844360, %bb.dd ], [ %.034844360, %bb.dr ], [ %.034844360, %bb.el ], [ %.034844360, %bb.fe ], [ %.034844360, %bb.fs ], [ %.034844360, %bb.gm ], [ %.13485, %bb.hs ], [ %.13485, %bb.hz ], [ %.13485, %bb.if ], [ %.13485, %bb.il ], [ %.13485, %bb.ir ], [ %.13485, %bb.ix ], [ %.13485, %bb.jd ], [ %.13485, %bb.jj ], [ %.13485, %bb.jp ], [ %.13485, %bb.jv ], [ %.13485, %bb.kp ], [ %.13485, %bb.kv ], [ %.13485, %bb.lj ], [ %.13485, %bb.lq ], [ %.13485, %bb.lw ], [ %.13485, %bb.md ], [ %.13485, %bb.mi ], [ %.13485, %bb.mn ], [ %.13485, %bb.mt ], [ %.13485, %bb.my ], [ %.13485, %bb.ne ], [ %.13485, %bb.nk ], [ %.13485, %bb.oj ], [ %.13485, %bb.op ], [ %.13485, %bb.ov ], [ %.13485, %bb.pp ], [ %.13485, %bb.pv ], [ %.13485, %bb.qb ], [ %.13485, %bb.qh ], [ %.13485, %bb.qn ], [ %.13485, %bb.qs ], [ %.13485, %bb.qx ], [ %.13485, %bb.rd ], [ %.13485, %bb.rj ], [ %.13485, %bb.ro ], [ %.13485, %bb.ru ], [ %.13485, %bb.sm ], [ %.13485, %bb.ss ], [ %.13485, %bb.sy ], [ %.13485, %bb.te ], [ %.13485, %bb.tk ], [ %.13485, %bb.tq ], [ %.13485, %bb.tw ], [ %.13485, %bb.uc ], [ %.13485, %bb.ui ], [ %.13485, %bb.un ], [ %.13485, %bb.ut ], [ %.13485, %bb.uz ], [ %.13485, %bb.vf ], [ %.13485, %bb.vl ], [ %.13485, %bb.vr ], [ %.13485, %bb.vx ], [ %.13485, %bb.xo ], [ %.13485, %bb.xu ], [ %.13485, %bb.ya ], [ %.13485, %bb.yf ], [ %.13485, %bb.ys ], [ %.13485, %bb.yy ], [ %.13485, %bb.ze ], [ %.13485, %bb.zk ], [ %.13485, %bb.ym ], [ %.13485, %bb.wf ], [ %.13485, %bb.wy ], [ %.13485, %bb.xd ], [ %.13485, %bb.xi ], [ %.13485, %bb.wm ], [ %.13485, %bb.wr ], [ %.13485, %bb.sb ], [ %.13485, %bb.sg ], [ %.13485, %bb.pd ], [ %.13485, %bb.pi ], [ %.13485, %bb.nr ], [ %.13485, %bb.nw ], [ %.13485, %bb.od ], [ %.13485, %bb.ld ], [ %.13485, %bb.kd ], [ %.13485, %bb.kj ], [ %.034844360, %bb.gu ], [ %.034844360, %bb.gz ], [ %.034844360, %bb.hf ], [ %i.xf, %bb.hm ], [ %.034844360, %bb.ga ], [ %.034844360, %bb.gf ], [ %.034844360, %bb.fm ], [ %.034844360, %bb.et ], [ %.034844360, %.preheader ], [ %.034844360, %.loopexit ], [ %.034844360, %.preheader4320 ], [ %.13485, %bb.zo ]
  %i.bvk = shl i32 %.1363864, 3
  %i.bvl = zext i8 %.136 to i32
  %i.bvm = add i32 %i.bvk, %i.bvl
  %i.bvn = icmp ult i32 %i.bvm, 11
  br i1 %i.bvn, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.thread, %bb.h, %bb.i, %bb.a
  %.1374002 = phi i32 [ %3, %bb.a ], [ %.13866, %bb.h ], [ %.13866, %bb.i ], [ %.1364001, %.thread ]
  %.137 = phi i32 [ %4, %bb.a ], [ %.13729, %bb.h ], [ %.13729, %bb.i ], [ %.1363864, %.thread ]
  %i.bvo = add i32 %.137, %.1374002               ; 3 uses
  %i.bvp = sub i32 %i.bvo, %3                     ; 3 uses
  %i.bvq = icmp ugt i32 %4, %i.bvp
  br i1 %i.bvq, label %bb.zp, label %bb.zq

bb.zp:                                            ; preds = %._crit_edge
  %i.bvr = sub nuw i32 %4, %i.bvp                 ; 2 uses
  %i.bvs = call ptr @proto_tree_add_expert(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_gsm_a_gm_extraneous_data, ptr noundef %0, i32 noundef %i.bvo, i32 noundef %i.bvr) ; 0 uses
  %i.bvt = add i32 %i.bvr, %i.bvo
  %.pre = sub i32 %i.bvt, %3
  br label %bb.zq

bb.zq:                                            ; preds = %bb.zp, %._crit_edge
  %.pre-phi = phi i32 [ %.pre, %bb.zp ], [ %i.bvp, %._crit_edge ]
  %i.bvu = trunc i32 %.pre-phi to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i16 %i.bvu
}

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bits_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_bits8(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @decode_bits_in_field(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i16 @de_gmm_rai(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 %4, ptr noundef %5, i32 noundef %6) #1 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.b = and i8 %i.a, 15
  %i.c = zext nneg i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 8
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.f = and i8 %i.e, -16
  %i.g = zext i8 %i.f to i32
  %i.h = or disjoint i32 %i.d, %i.g
  %i.i = add i32 %3, 1                            ; 2 uses
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.i)
  %i.k = and i8 %i.j, 15
  %i.l = zext nneg i8 %i.k to i32
  %i.m = or disjoint i32 %i.h, %i.l               ; 2 uses
  %i.n = add i32 %3, 2                            ; 2 uses
  %i.o = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.n)
  %i.p = and i8 %i.o, 15
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.n)
  %i.t = and i8 %i.s, -16
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.r, %i.u               ; 2 uses
  %i.w = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.i)
  %i.x = lshr i8 %i.w, 4                          ; 2 uses
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.v, %i.y
  %i.aa = icmp eq i8 %i.x, 15
  %i.ab = lshr exact i32 %i.v, 4
  %spec.select = select i1 %i.aa, i32 %i.ab, i32 %i.z ; 2 uses
  %i.ac = add i32 %3, 3                           ; 2 uses
  %i.ad = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ac)
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %i.af = add i32 %3, 5                           ; 2 uses
  %i.ag = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.af)
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %i.ai = load i32, ptr @ett_gmm_rai, align 4
  %i.aj = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %1, ptr noundef %0, i32 noundef %3, i32 noundef 6, i32 noundef %i.ai, ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef %i.m, i32 noundef %spec.select, i32 noundef %i.ae, i32 noundef %i.ah) ; 3 uses
  %i.ak = tail call i32 @dissect_e212_mcc_mnc(ptr noundef %0, ptr noundef %2, ptr noundef %i.aj, i32 noundef %3, i32 noundef 2, i1 noundef zeroext true) ; 0 uses
  %i.al = load i32, ptr @hf_gsm_a_lac, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.aj, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.ac, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.an = load i32, ptr @hf_gsm_a_gm_rac, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %i.aj, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.af, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = load i8, ptr %5, align 1
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ar = sext i32 %6 to i64
  %i.as = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %5, i64 noundef %i.ar, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.80, i32 noundef %i.m, i32 noundef %spec.select, i32 noundef %i.ae, i32 noundef %i.ah) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i16 6
}

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_e212_mcc_mnc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i16 @de_gmm_voice_domain_pref(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #1 {
bb.a:
  %i.a = shl i32 %3, 3                            ; 3 uses
  %i.b = load i32, ptr @hf_gsm_a_spare_bits, align 4
  %i.c = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef %i.a, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.d = or disjoint i32 %i.a, 5
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
  %i.g = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.e, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.f, ptr noundef nonnull @.str.84) ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.02329 = phi ptr [ @.str.83, %bb.d ], [ @.str.82, %bb.a ], [ @.str.81, %bb.b ], [ @.str.82, %bb.c ]
  %.024.in28 = phi i8 [ %i.b, %bb.d ], [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ %narrow, %bb.c ]
  %i.i = load i32, ptr @hf_gsm_a_gm_gprs_timer, align 4
  %i.j = zext i8 %.024.in28 to i32                ; 2 uses
  %i.k = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.i, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.j, ptr noundef nonnull @.str.85, i32 noundef %i.j, ptr noundef nonnull %.02329)
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
end_hunk_3
