Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-btmesh?download=true
inline.NumInlined: 30
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 20
begin_hunk_0_@proto_tree_add_item_ret_uint
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_btmesh_transport_control_message(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 7) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @val_to_str_const(i32 noundef %4, ptr noundef nonnull @btmesh_ctrl_opcode_vals, ptr noundef nonnull @.str.2225)
  tail call void @col_append_str(ptr noundef %i.b, i32 noundef 25, ptr noundef %i.c)
  %i.d = load i32, ptr @ett_btmesh_transp_ctrl_msg, align 4
  %i.e = tail call ptr @val_to_str_const(i32 noundef %4, ptr noundef nonnull @btmesh_ctrl_opcode_vals, ptr noundef nonnull @.str.1788)
  %i.f = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef nonnull %0, i32 noundef %3, i32 noundef -1, i32 noundef %i.d, ptr noundef null, ptr noundef nonnull @.str.2228, ptr noundef %i.e) ; 39 uses
  switch i32 %4, label %bb.l [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr @hf_btmesh_cntr_padding, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_btmesh_cntr_fsn, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.i, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr @hf_btmesh_cntr_key_refresh_flag, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.k, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_btmesh_cntr_iv_update_flag, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.m, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_btmesh_cntr_flags_rfu, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.o, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = add nuw nsw i32 %3, 1
  %i.r = load i32, ptr @hf_btmesh_cntr_iv_index, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.r, ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.t = add nuw nsw i32 %3, 5
  %i.u = load i32, ptr @hf_btmesh_cntr_md, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.u, ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.w = load i32, ptr @hf_btmesh_cntr_criteria_rfu, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.w, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_btmesh_cntr_criteria_rssifactor, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.y, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = load i32, ptr @hf_btmesh_cntr_criteria_receivewindowfactor, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.aa, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ac = load i32, ptr @hf_btmesh_cntr_criteria_minqueuesizelog, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ac, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ae = add nuw nsw i32 %3, 1
  %i.af = load i32, ptr @hf_btmesh_cntr_receivedelay, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.af, ptr noundef nonnull %0, i32 noundef %i.ae, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ah = add nuw nsw i32 %3, 2
  %i.ai = load i32, ptr @hf_btmesh_cntr_polltimeout, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ai, ptr noundef nonnull %0, i32 noundef %i.ah, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ak = add nuw nsw i32 %3, 5
  %i.al = load i32, ptr @hf_btmesh_cntr_previousaddress, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.al, ptr noundef nonnull %0, i32 noundef %i.ak, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.an = add nuw nsw i32 %3, 7
  %i.ao = load i32, ptr @hf_btmesh_cntr_numelements, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ao, ptr noundef nonnull %0, i32 noundef %i.an, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aq = or disjoint i32 %3, 8
  %i.ar = load i32, ptr @hf_btmesh_cntr_lpncounter, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ar, ptr noundef nonnull %0, i32 noundef %i.aq, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.at = load i32, ptr @hf_btmesh_cntr_receivewindow, align 4
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.at, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.av = add nuw nsw i32 %3, 1
  %i.aw = load i32, ptr @hf_btmesh_cntr_queuesize, align 4
  %i.ax = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.aw, ptr noundef nonnull %0, i32 noundef %i.av, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ay = add nuw nsw i32 %3, 2
  %i.az = load i32, ptr @hf_btmesh_cntr_subscriptionlistsize, align 4
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.az, ptr noundef nonnull %0, i32 noundef %i.ay, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bb = add nuw nsw i32 %3, 3
  %i.bc = load i32, ptr @hf_btmesh_cntr_rssi, align 4
  %i.bd = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.bc, ptr noundef nonnull %0, i32 noundef %i.bb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.be = add nuw nsw i32 %3, 4
  %i.bf = load i32, ptr @hf_btmesh_cntr_friendcounter, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.bf, ptr noundef nonnull %0, i32 noundef %i.be, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.bh = load i32, ptr @hf_btmesh_cntr_lpnaddress, align 4
  %i.bi = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.bh, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bj = add nuw nsw i32 %3, 2
  %i.bk = load i32, ptr @hf_btmesh_cntr_lpncounter, align 4
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.bk, ptr noundef nonnull %0, i32 noundef %i.bj, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.bm = load i32, ptr @hf_btmesh_cntr_lpnaddress, align 4
  %i.bn = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.bm, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bo = add nuw nsw i32 %3, 2
  %i.bp = load i32, ptr @hf_btmesh_cntr_lpncounter, align 4
  %i.bq = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.bp, ptr noundef nonnull %0, i32 noundef %i.bo, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.br = load i32, ptr @hf_btmesh_cntr_transactionnumber, align 4
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.br, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bt = add nuw nsw i32 %3, 1
  %i.bu = tail call ptr @proto_tree_add_expert_remaining(ptr noundef %i.f, ptr noundef %1, ptr noundef nonnull @ei_btmesh_not_decoded_yet, ptr noundef nonnull %0, i32 noundef %i.bt) ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.bv = load i32, ptr @hf_btmesh_cntr_transactionnumber, align 4
  %i.bw = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.bv, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bx = add nuw nsw i32 %3, 1
  %i.by = tail call ptr @proto_tree_add_expert_remaining(ptr noundef %i.f, ptr noundef %1, ptr noundef nonnull @ei_btmesh_not_decoded_yet, ptr noundef nonnull %0, i32 noundef %i.bx) ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.bz = load i32, ptr @hf_btmesh_cntr_transactionnumber, align 4
  %i.ca = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.bz, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.cb = load i32, ptr @hf_btmesh_cntr_heartbeat_rfu, align 4
  %i.cc = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.cb, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cd = load i32, ptr @hf_btmesh_cntr_init_ttl, align 4
  %i.ce = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.cd, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cf = add nuw nsw i32 %3, 1                   ; 5 uses
  %i.cg = load i32, ptr @hf_btmesh_cntr_feature_relay, align 4
  %i.ch = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.cg, ptr noundef nonnull %0, i32 noundef %i.cf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ci = load i32, ptr @hf_btmesh_cntr_feature_proxy, align 4
  %i.cj = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ci, ptr noundef nonnull %0, i32 noundef %i.cf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ck = load i32, ptr @hf_btmesh_cntr_feature_friend, align 4
  %i.cl = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ck, ptr noundef nonnull %0, i32 noundef %i.cf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cm = load i32, ptr @hf_btmesh_cntr_feature_low_power, align 4
  %i.cn = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.cm, ptr noundef nonnull %0, i32 noundef %i.cf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.co = load i32, ptr @hf_btmesh_cntr_feature_rfu, align 4
  %i.cp = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.co, ptr noundef nonnull %0, i32 noundef %i.cf, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.cq = load i32, ptr @hf_btmesh_cntr_unknown_payload, align 4
  %i.cr = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.cq, ptr noundef nonnull %0, i32 noundef %3, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.cs = tail call ptr @proto_tree_add_expert_remaining(ptr noundef %i.f, ptr noundef %1, ptr noundef nonnull @ei_btmesh_not_decoded_yet, ptr noundef nonnull %0, i32 noundef %3) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @fragment_set_tot_len(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_add(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @process_reassembled_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_btmesh_transport_access_message(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 7) %3, ptr nofree noundef captures(none) initializes((32, 36)) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %3) ; 2 uses
  %i.b = load i32, ptr @ett_btmesh_upper_transp_acc_pdu, align 4
  %i.c = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef nonnull %0, i32 noundef %3, i32 noundef -1, i32 noundef %i.b, ptr noundef null, ptr noundef nonnull @.str.2230) ; 2 uses
  %i.d = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef range(i32 0, 7) %3)
  %i.e = getelementptr i8, ptr %4, i64 48         ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = sub i32 %i.d, %i.f                       ; 9 uses
  %i.h = getelementptr i8, ptr %1, i64 416
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = sext i32 %i.g to i64
  %i.k = tail call noalias ptr @wmem_alloc(ptr noundef %i.i, i64 noundef %i.j) #15 ; 6 uses
  %i.l = getelementptr i8, ptr %4, i64 32         ; 3 uses
  store i32 -1, ptr %i.l, align 4
  %i.m = icmp slt i32 %i.g, 1
  br i1 %i.m, label %btmesh_access_find_key_and_decrypt.exit, label %5

5:                                                ; preds = %bb.a
  %6 = getelementptr i8, ptr %4, i64 24           ; 3 uses
  %7 = load i32, ptr %6, align 4                  ; 3 uses
  %8 = and i32 %7, 32768
  %.not.i.i = icmp eq i32 %8, 0
  br i1 %.not.i.i, label %11, label %9

9:                                                ; preds = %5
  %10 = and i32 %7, 16384
  %.not5.i.i = icmp eq i32 %10, 0
  %..i.i = select i1 %.not5.i.i, i32 2, i32 3
  br label %check_address_type.exit.i

11:                                               ; preds = %5
  %.not4.i.i = icmp ne i32 %7, 0
  %.6.i.i = zext i1 %.not4.i.i to i32
  br label %check_address_type.exit.i

check_address_type.exit.i:                        ; preds = %11, %9
  %.0.i.i = phi i32 [ %..i.i, %9 ], [ %.6.i.i, %11 ]
  %.0.i.fr.i = freeze i32 %.0.i.i                 ; 3 uses
  %i.n = getelementptr i8, ptr %4, i64 41         ; 2 uses
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %.preheader110.i, label %bb.l

.preheader110.i:                                  ; preds = %check_address_type.exit.i
  %i.q = load i32, ptr @num_btmesh_uat, align 4   ; 3 uses
  %.not127.i = icmp eq i32 %i.q, 0
  br i1 %.not127.i, label %thread-pre-split.i, label %.lr.ph113.i

.lr.ph113.i:                                      ; preds = %.preheader110.i
  %i.r = getelementptr i8, ptr %4, i64 20         ; 2 uses
  %i.s = getelementptr i8, ptr %4, i64 40         ; 2 uses
  %i.t = icmp eq i32 %.0.i.fr.i, 2
  br i1 %i.t, label %.lr.ph113.split.us.i, label %.lr.ph113.split.preheader.i

.lr.ph113.split.preheader.i:                      ; preds = %.lr.ph113.i
  %.pre147.i = load ptr, ptr @uat_btmesh_records, align 8
  br label %.lr.ph113.split.i

.lr.ph113.split.us.i:                             ; preds = %.lr.ph113.i, %.loopexit109.us.i
  %i.u = phi i32 [ %i.bc, %.loopexit109.us.i ], [ %i.q, %.lr.ph113.i ] ; 3 uses
  %indvars.iv135.i = phi i64 [ %indvars.iv.next136.i, %.loopexit109.us.i ], [ 0, %.lr.ph113.i ] ; 2 uses
  %i.v = load ptr, ptr @uat_btmesh_records, align 8
  %i.w = getelementptr [104 x i8], ptr %i.v, i64 %indvars.iv135.i ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 93
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, 4
  br i1 %i.z, label %bb.b, label %.loopexit109.us.i

bb.b:                                             ; preds = %.lr.ph113.split.us.i
  %i.aa = load i32, ptr %i.r, align 4
  %i.ab = getelementptr i8, ptr %i.w, i64 96
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.c, label %.loopexit109.us.i

bb.c:                                             ; preds = %bb.b
  %i.ae = load i8, ptr %i.s, align 4
  %i.af = getelementptr i8, ptr %i.w, i64 92
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = icmp eq i8 %i.ae, %i.ag
  %i.ai = load i32, ptr @num_btmesh_label_uuid_uat, align 4 ; 2 uses
  %i.aj = icmp ne i32 %i.ai, 0
  %or.cond.i = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond.i, label %.lr.ph.us.i, label %.loopexit109.us.i

bb.d:                                             ; preds = %.lr.ph.us.i, %bb.g
  %i.ak = phi i32 [ %i.ai, %.lr.ph.us.i ], [ %i.ay, %bb.g ] ; 2 uses
  %i.al = phi ptr [ %.pre150.i, %.lr.ph.us.i ], [ %i.az, %bb.g ] ; 3 uses
  %indvars.iv132.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next133.i, %bb.g ] ; 3 uses
  %i.am = getelementptr [24 x i8], ptr %i.al, i64 %indvars.iv132.i ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 22
  %i.ao = load i8, ptr %i.an, align 2
  %i.ap = icmp eq i8 %i.ao, 1
  br i1 %i.ap, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr i8, ptr %i.am, i64 20
  %i.ar = load i16, ptr %i.aq, align 4
  %i.as = zext i16 %i.ar to i32
  %i.at = load i32, ptr %6, align 4
  %i.au = icmp eq i32 %i.at, %i.as
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = trunc nuw i64 %indvars.iv132.i to i32
  store i32 %i.av, ptr %i.l, align 4
  %i.aw = load ptr, ptr %i.bf, align 8
  %i.ax = tail call fastcc zeroext i1 @try_access_decrypt(ptr noundef nonnull %0, ptr noundef readonly %1, i32 noundef range(i32 0, 7) %3, ptr noundef %i.k, i32 noundef %i.g, ptr noundef %i.aw, ptr noundef %4)
  br i1 %i.ax, label %.loopexit107.sink.split.i, label %._crit_edge151.i

._crit_edge151.i:                                 ; preds = %bb.f
  %.pre149.i = load ptr, ptr @uat_btmesh_label_uuid_records, align 8
  %.pre152.i = load i32, ptr @num_btmesh_label_uuid_uat, align 4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge151.i, %bb.e, %bb.d
  %i.ay = phi i32 [ %.pre152.i, %._crit_edge151.i ], [ %i.ak, %bb.e ], [ %i.ak, %bb.d ] ; 2 uses
  %i.az = phi ptr [ %.pre149.i, %._crit_edge151.i ], [ %i.al, %bb.e ], [ %i.al, %bb.d ]
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %i.ba = zext i32 %i.ay to i64
  %i.bb = icmp samesign ult i64 %indvars.iv.next133.i, %i.ba
  br i1 %i.bb, label %bb.d, label %.loopexit109.us.loopexit.i, !llvm.loop !9

.loopexit109.us.loopexit.i:                       ; preds = %bb.g
  %.pre153.i = load i32, ptr @num_btmesh_uat, align 4
  br label %.loopexit109.us.i

.loopexit109.us.i:                                ; preds = %.loopexit109.us.loopexit.i, %bb.c, %bb.b, %.lr.ph113.split.us.i
  %i.bc = phi i32 [ %.pre153.i, %.loopexit109.us.loopexit.i ], [ %i.u, %bb.c ], [ %i.u, %bb.b ], [ %i.u, %.lr.ph113.split.us.i ] ; 2 uses
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp samesign ult i64 %indvars.iv.next136.i, %i.bd
  br i1 %i.be, label %.lr.ph113.split.us.i, label %thread-pre-split.i, !llvm.loop !10

.lr.ph.us.i:                                      ; preds = %bb.c
  %i.bf = getelementptr i8, ptr %i.w, i64 80
  %.pre150.i = load ptr, ptr @uat_btmesh_label_uuid_records, align 8
  br label %bb.d

.lr.ph113.split.i:                                ; preds = %bb.k, %.lr.ph113.split.preheader.i
  %i.bg = phi i32 [ %i.q, %.lr.ph113.split.preheader.i ], [ %i.bx, %bb.k ] ; 3 uses
  %i.bh = phi ptr [ %.pre147.i, %.lr.ph113.split.preheader.i ], [ %i.by, %bb.k ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph113.split.preheader.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.bi = getelementptr [104 x i8], ptr %i.bh, i64 %indvars.iv.i ; 4 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 93
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = icmp eq i8 %i.bk, 4
  br i1 %i.bl, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.lr.ph113.split.i
  %i.bm = load i32, ptr %i.r, align 4
  %i.bn = getelementptr i8, ptr %i.bi, i64 96
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = icmp eq i32 %i.bm, %i.bo
  br i1 %i.bp, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bq = load i8, ptr %i.s, align 4
  %i.br = getelementptr i8, ptr %i.bi, i64 92
  %i.bs = load i8, ptr %i.br, align 4
  %i.bt = icmp eq i8 %i.bq, %i.bs
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr i8, ptr %i.bi, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call fastcc zeroext i1 @try_access_decrypt(ptr noundef nonnull %0, ptr noundef readonly %1, i32 noundef range(i32 0, 7) %3, ptr noundef %i.k, i32 noundef %i.g, ptr noundef %i.bv, ptr noundef %4)
  br i1 %i.bw, label %.loopexit107.sink.split.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j
  %.pre.i = load ptr, ptr @uat_btmesh_records, align 8
  %.pre148.i = load i32, ptr @num_btmesh_uat, align 4
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.i, %bb.h, %.lr.ph113.split.i
  %i.bx = phi i32 [ %i.bg, %.lr.ph113.split.i ], [ %.pre148.i, %._crit_edge.i ], [ %i.bg, %bb.i ], [ %i.bg, %bb.h ] ; 2 uses
  %i.by = phi ptr [ %i.bh, %.lr.ph113.split.i ], [ %.pre.i, %._crit_edge.i ], [ %i.bh, %bb.i ], [ %i.bh, %bb.h ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bz = zext i32 %i.bx to i64
  %i.ca = icmp samesign ult i64 %indvars.iv.next.i, %i.bz
  br i1 %i.ca, label %.lr.ph113.split.i, label %thread-pre-split.i, !llvm.loop !10

thread-pre-split.i:                               ; preds = %bb.k, %.loopexit109.us.i, %.preheader110.i
  %.pr.i = load i8, ptr %i.n, align 1
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split.i, %check_address_type.exit.i
  %i.cb = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.o, %check_address_type.exit.i ]
  %i.cc = icmp eq i8 %i.cb, 2
  %i.cd = load i32, ptr @num_btmesh_dev_key_uat, align 4 ; 2 uses
  %i.ce = icmp ne i32 %i.cd, 0
  %or.cond124.i = select i1 %i.cc, i1 %i.ce, i1 false
  br i1 %or.cond124.i, label %.lr.ph116.i, label %btmesh_access_find_key_and_decrypt.exit

.lr.ph116.i:                                      ; preds = %bb.l
  %i.cf = getelementptr i8, ptr %4, i64 11        ; 2 uses
  %i.cg = icmp eq i32 %.0.i.fr.i, 2
  %i.ch = icmp eq i32 %.0.i.fr.i, 1
  %i.ci = getelementptr i8, ptr %4, i64 28
  br i1 %i.cg, label %.lr.ph116.split.us.i, label %.lr.ph116.split.i

.lr.ph116.split.us.i:                             ; preds = %.lr.ph116.i, %.loopexit.us.i
  %i.cj = phi i32 [ %i.dp, %.loopexit.us.i ], [ %i.cd, %.lr.ph116.i ] ; 2 uses
  %indvars.iv144.i = phi i64 [ %indvars.iv.next145.i, %.loopexit.us.i ], [ 0, %.lr.ph116.i ] ; 2 uses
  %i.ck = load ptr, ptr @uat_btmesh_dev_key_records, align 8
  %i.cl = getelementptr [56 x i8], ptr %i.ck, i64 %indvars.iv144.i ; 3 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 48
  %i.cn = load i8, ptr %i.cm, align 8
  %i.co = icmp eq i8 %i.cn, 2
  br i1 %i.co, label %bb.m, label %.loopexit.us.i

bb.m:                                             ; preds = %.lr.ph116.split.us.i
  %i.cp = getelementptr i8, ptr %i.cl, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = load i16, ptr %i.cq, align 1
  %i.cs = load i16, ptr %i.cf, align 1
  %i.ct = icmp ne i16 %i.cr, %i.cs
  %i.cu = zext i1 %i.ct to i32
  %.not.us.i = icmp eq i32 %i.cu, 0
  %i.cv = load i32, ptr @num_btmesh_label_uuid_uat, align 4 ; 2 uses
  %i.cw = icmp ne i32 %i.cv, 0
  %or.cond126.i = select i1 %.not.us.i, i1 %i.cw, i1 false
  br i1 %or.cond126.i, label %.lr.ph.us117.i, label %.loopexit.us.i

bb.n:                                             ; preds = %.lr.ph.us117.i, %bb.q
  %i.cx = phi i32 [ %i.cv, %.lr.ph.us117.i ], [ %i.dl, %bb.q ] ; 2 uses
  %i.cy = phi ptr [ %.pre155.i, %.lr.ph.us117.i ], [ %i.dm, %bb.q ] ; 3 uses
  %indvars.iv141.i = phi i64 [ 0, %.lr.ph.us117.i ], [ %indvars.iv.next142.i, %bb.q ] ; 3 uses
  %i.cz = getelementptr [24 x i8], ptr %i.cy, i64 %indvars.iv141.i ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 22
  %i.db = load i8, ptr %i.da, align 2
  %i.dc = icmp eq i8 %i.db, 1
  br i1 %i.dc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr i8, ptr %i.cz, i64 20
  %i.de = load i16, ptr %i.dd, align 4
  %i.df = zext i16 %i.de to i32
  %i.dg = load i32, ptr %6, align 4
  %i.dh = icmp eq i32 %i.dg, %i.df
  br i1 %i.dh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.di = trunc nuw i64 %indvars.iv141.i to i32
  store i32 %i.di, ptr %i.l, align 4
  %i.dj = load ptr, ptr %i.ds, align 8
  %i.dk = tail call fastcc zeroext i1 @try_access_decrypt(ptr noundef nonnull %0, ptr noundef readonly %1, i32 noundef range(i32 0, 7) %3, ptr noundef %i.k, i32 noundef %i.g, ptr noundef %i.dj, ptr noundef %4)
  br i1 %i.dk, label %.loopexit107.sink.split.i, label %._crit_edge156.i

._crit_edge156.i:                                 ; preds = %bb.p
  %.pre154.i = load ptr, ptr @uat_btmesh_label_uuid_records, align 8
  %.pre157.i = load i32, ptr @num_btmesh_label_uuid_uat, align 4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge156.i, %bb.o, %bb.n
  %i.dl = phi i32 [ %.pre157.i, %._crit_edge156.i ], [ %i.cx, %bb.o ], [ %i.cx, %bb.n ] ; 2 uses
  %i.dm = phi ptr [ %.pre154.i, %._crit_edge156.i ], [ %i.cy, %bb.o ], [ %i.cy, %bb.n ]
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %i.dn = zext i32 %i.dl to i64
  %i.do = icmp samesign ult i64 %indvars.iv.next142.i, %i.dn
  br i1 %i.do, label %bb.n, label %.loopexit.us.i.loopexit, !llvm.loop !11

.loopexit.us.i.loopexit:                          ; preds = %bb.q
  %.pre = load i32, ptr @num_btmesh_dev_key_uat, align 4
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.loopexit.us.i.loopexit, %bb.m, %.lr.ph116.split.us.i
  %i.dp = phi i32 [ %.pre, %.loopexit.us.i.loopexit ], [ %i.cj, %bb.m ], [ %i.cj, %.lr.ph116.split.us.i ] ; 2 uses
  %indvars.iv.next145.i = add nuw nsw i64 %indvars.iv144.i, 1 ; 2 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp samesign ult i64 %indvars.iv.next145.i, %i.dq
  br i1 %i.dr, label %.lr.ph116.split.us.i, label %btmesh_access_find_key_and_decrypt.exit, !llvm.loop !12

.lr.ph.us117.i:                                   ; preds = %bb.m
  %i.ds = getelementptr i8, ptr %i.cl, i64 8
  %.pre155.i = load ptr, ptr @uat_btmesh_label_uuid_records, align 8
  br label %bb.n

.lr.ph116.split.i:                                ; preds = %.lr.ph116.i, %bb.w
  %indvars.iv138.i = phi i64 [ %indvars.iv.next139.i, %bb.w ], [ 0, %.lr.ph116.i ] ; 2 uses
  %i.dt = load ptr, ptr @uat_btmesh_dev_key_records, align 8
  %i.du = getelementptr [56 x i8], ptr %i.dt, i64 %indvars.iv138.i ; 4 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 48
  %i.dw = load i8, ptr %i.dv, align 8
  %i.dx = icmp eq i8 %i.dw, 2
  br i1 %i.dx, label %bb.r, label %bb.w

bb.r:                                             ; preds = %.lr.ph116.split.i
  %i.dy = getelementptr i8, ptr %i.du, i64 40     ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = load i16, ptr %i.dz, align 1
  %i.eb = load i16, ptr %i.cf, align 1
  %i.ec = icmp ne i16 %i.ea, %i.eb
  %i.ed = zext i1 %i.ec to i32
  %.not.i = icmp eq i32 %i.ed, 0
  br i1 %.not.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ee = getelementptr i8, ptr %i.du, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = tail call fastcc zeroext i1 @try_access_decrypt(ptr noundef nonnull %0, ptr noundef readonly %1, i32 noundef range(i32 0, 7) %3, ptr noundef %i.k, i32 noundef %i.g, ptr noundef %i.ef, ptr noundef %4)
  br i1 %i.eg, label %.loopexit107.sink.split.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %i.ch, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.eh = load ptr, ptr %i.dy, align 8
  %i.ei = load i16, ptr %i.eh, align 1
  %i.ej = load i16, ptr %i.ci, align 1
  %i.ek = icmp ne i16 %i.ei, %i.ej
  %i.el = zext i1 %i.ek to i32
  %.not105.i = icmp eq i32 %i.el, 0
  br i1 %.not105.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.em = getelementptr i8, ptr %i.du, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = tail call fastcc zeroext i1 @try_access_decrypt(ptr noundef nonnull %0, ptr noundef readonly %1, i32 noundef range(i32 0, 7) %3, ptr noundef %i.k, i32 noundef %i.g, ptr noundef %i.en, ptr noundef %4)
  br i1 %i.eo, label %.loopexit107.sink.split.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %.lr.ph116.split.i
  %indvars.iv.next139.i = add nuw nsw i64 %indvars.iv138.i, 1 ; 2 uses
  %i.ep = load i32, ptr @num_btmesh_dev_key_uat, align 4
  %i.eq = zext i32 %i.ep to i64
  %i.er = icmp samesign ult i64 %indvars.iv.next139.i, %i.eq
  br i1 %i.er, label %.lr.ph116.split.i, label %btmesh_access_find_key_and_decrypt.exit, !llvm.loop !12

.loopexit107.sink.split.i:                        ; preds = %bb.j, %bb.f, %bb.v, %bb.s, %bb.p
  %i.es = tail call ptr @tvb_new_child_real_data(ptr noundef nonnull %0, ptr noundef %i.k, i32 noundef %i.g, i32 noundef %i.g)
  br label %btmesh_access_find_key_and_decrypt.exit

btmesh_access_find_key_and_decrypt.exit:          ; preds = %bb.w, %.loopexit.us.i, %bb.a, %bb.l, %.loopexit107.sink.split.i
  %.0102.i = phi ptr [ null, %bb.a ], [ %i.es, %.loopexit107.sink.split.i ], [ null, %.loopexit.us.i ], [ null, %bb.l ], [ null, %bb.w ] ; 5 uses
  %i.et = load i32, ptr @hf_btmesh_enc_access_pld, align 4
  %i.eu = load i32, ptr %i.e, align 4
  %i.ev = sub i32 %i.a, %i.eu
  %i.ew = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.et, ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.ev, i32 noundef 0) ; 0 uses
  %i.ex = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ey = add i32 %i.a, %3
  %i.ez = sub i32 %i.ey, %i.ex
  %i.fa = load i32, ptr @hf_btmesh_transtmic, align 4
  %i.fb = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.fa, ptr noundef nonnull %0, i32 noundef %i.ez, i32 noundef %i.ex, i32 noundef 0) ; 0 uses
  %.not = icmp eq ptr %.0102.i, null
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %btmesh_access_find_key_and_decrypt.exit
  %i.fc = tail call ptr @add_new_data_source(ptr noundef %1, ptr noundef nonnull %.0102.i, ptr noundef nonnull @.str.2231) ; 0 uses
  %i.fd = load i32, ptr @ett_btmesh_access_pdu, align 4
  %i.fe = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef nonnull %.0102.i, i32 noundef 0, i32 noundef -1, i32 noundef %i.fd, ptr noundef null, ptr noundef nonnull @.str.2232)
  %i.ff = load i32, ptr @hf_btmesh_decrypted_access, align 4
  %i.fg = tail call ptr @proto_tree_add_item(ptr noundef %i.fe, i32 noundef %i.ff, ptr noundef nonnull %.0102.i, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  tail call fastcc void @dissect_btmesh_model_layer(ptr noundef nonnull %.0102.i, ptr noundef %1, ptr noundef %2)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %btmesh_access_find_key_and_decrypt.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_remaining(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @try_access_decrypt(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 7) %2, ptr noundef %3, i32 noundef range(i32 1, -2147483648) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [13 x i8], align 1                ; 10 uses
  %i.b = alloca ptr, align 8                      ; 14 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.d = getelementptr i8, ptr %6, i64 41
  %i.e = load i8, ptr %i.d, align 1
  store i8 %i.e, ptr %i.a, align 1
  %i.f = getelementptr i8, ptr %6, i64 48         ; 6 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 4
  %i.i = select i1 %i.h, i8 0, i8 -128
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.i, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.l = getelementptr i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.k, ptr noundef align 4 dereferenceable(5) %i.l, i64 noundef 5, i1 noundef false) #14
  %i.m = getelementptr i8, ptr %6, i64 36
  %i.n = load i32, ptr %i.m, align 4
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %6, i64 44
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %i.q = lshr i32 %i.p, 16
  %i.r = trunc i32 %i.q to i8
  store i8 %i.r, ptr %i.k, align 1
  %i.s = lshr i32 %i.p, 8
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.t, ptr %i.u, align 1
  %i.v = trunc i32 %i.p to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.v, ptr %i.w, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.y = getelementptr i8, ptr %6, i64 28
  %i.z = load i16, ptr %i.y, align 4
  store i16 %i.z, ptr %i.x, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.ab = getelementptr i8, ptr %6, i64 13
  %i.ac = load i32, ptr %i.ab, align 1
  store i32 %i.ac, ptr %i.aa, align 1
  %i.ad = call i32 @gcry_cipher_open(ptr noundef nonnull %i.b, i32 noundef 7, i32 noundef 8, i32 noundef 0)
  %.not38 = icmp eq i32 %i.ad, 0
  br i1 %.not38, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.b, align 8
  %i.af = call i32 @gcry_cipher_setkey(ptr noundef %i.ae, ptr noundef %5, i64 noundef 16)
  %.not39 = icmp eq i32 %i.af, 0
  %i.ag = load ptr, ptr %i.b, align 8             ; 2 uses
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @gcry_cipher_close(ptr noundef %i.ag)
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  %i.ah = call i32 @gcry_cipher_setiv(ptr noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 13)
  %.not40 = icmp eq i32 %i.ah, 0
  br i1 %.not40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_0
