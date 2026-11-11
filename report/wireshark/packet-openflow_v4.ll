Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-openflow_v4?download=true
inline.NumInlined: 78
inline.NumDeleted: 52
begin_hunk_0_@dissect_openflow_action_v4:bb.a
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.ay, ptr noundef %0, i32 noundef %.0.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ba = add i32 %.0.i, 2
  %i.bb = load i32, ptr @hf_openflow_v4_action_push_mpls_pad, align 4
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.bb, ptr noundef %0, i32 noundef %i.ba, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bd = add i32 %.0.i, 4
  br label %bb.v

bb.k:                                             ; preds = %dissect_openflow_action_header_v4.exit
  %i.be = load i32, ptr @hf_openflow_v4_action_pop_mpls_ethertype, align 4
  %i.bf = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.be, ptr noundef %0, i32 noundef %.0.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bg = add i32 %.0.i, 2
  %i.bh = load i32, ptr @hf_openflow_v4_action_pop_mpls_pad, align 4
  %i.bi = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.bh, ptr noundef %0, i32 noundef %i.bg, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bj = add i32 %.0.i, 4
  br label %bb.v

bb.l:                                             ; preds = %dissect_openflow_action_header_v4.exit
  %i.bk = load i32, ptr @hf_openflow_v4_action_set_queue_queue_id, align 4
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.bk, ptr noundef %0, i32 noundef %.0.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bm = add i32 %.0.i, 4
  br label %bb.v

bb.m:                                             ; preds = %dissect_openflow_action_header_v4.exit
  %i.bn = load i32, ptr @hf_openflow_v4_action_group_group_id, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.bn, ptr noundef %0, i32 noundef %.0.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bp = add i32 %.0.i, 4
  br label %bb.v

bb.n:                                             ; preds = %dissect_openflow_action_header_v4.exit
  %i.bq = load i32, ptr @hf_openflow_v4_action_set_nw_ttl_ttl, align 4
  %i.br = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.bq, ptr noundef %0, i32 noundef %.0.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bs = add i32 %.0.i, 1
  %i.bt = load i32, ptr @hf_openflow_v4_action_set_nw_ttl_pad, align 4
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.bt, ptr noundef %0, i32 noundef %i.bs, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bv = add i32 %.0.i, 4
  br label %bb.v

bb.o:                                             ; preds = %dissect_openflow_action_header_v4.exit
  %i.bw = load i32, ptr @hf_openflow_v4_action_dec_nw_ttl_pad, align 4
  %i.bx = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.bw, ptr noundef %0, i32 noundef %.0.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.by = add i32 %.0.i, 4
  br label %bb.v

bb.p:                                             ; preds = %dissect_openflow_action_header_v4.exit
  %i.bz = tail call fastcc i32 @dissect_openflow_oxm_v4(ptr noundef %0, ptr noundef %1, ptr noundef %i.g, i32 noundef %.0.i) ; 4 uses
  %i.ca = icmp slt i32 %i.bz, %i.e
  br i1 %i.ca, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.cb = load i32, ptr @hf_openflow_v4_action_set_field_pad, align 4
  %i.cc = sub i32 %i.e, %i.bz
  %i.cd = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.cb, ptr noundef %0, i32 noundef %i.bz, i32 noundef %i.cc, i32 noundef 0) ; 0 uses
  br label %bb.v

bb.r:                                             ; preds = %dissect_openflow_action_header_v4.exit
  %i.ce = load i32, ptr @hf_openflow_v4_action_push_pbb_ethertype, align 4
  %i.cf = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.ce, ptr noundef %0, i32 noundef %.0.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cg = add i32 %.0.i, 2
  %i.ch = load i32, ptr @hf_openflow_v4_action_push_pbb_pad, align 4
  %i.ci = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.ch, ptr noundef %0, i32 noundef %i.cg, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cj = add i32 %.0.i, 4
  br label %bb.v

bb.s:                                             ; preds = %dissect_openflow_action_header_v4.exit
  %i.ck = load i32, ptr @hf_openflow_v4_action_pop_pbb_pad, align 4
  %i.cl = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.ck, ptr noundef %0, i32 noundef %.0.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.cm = add i32 %.0.i, 4
  br label %bb.v

bb.t:                                             ; preds = %dissect_openflow_action_header_v4.exit
  %i.cn = add nsw i32 %i.d, -8                    ; 2 uses
  %i.co = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.g, ptr noundef %1, ptr noundef @ei_openflow_v4_action_undecoded, ptr noundef %0, i32 noundef %.0.i, i32 noundef %i.cn, ptr noundef @.str.1127) ; 0 uses
  %i.cp = icmp ugt i16 %i.c, 8
  %i.cq = select i1 %i.cp, i32 %i.cn, i32 0
  %spec.select = add i32 %.0.i, %i.cq
  br label %bb.v

bb.u:                                             ; preds = %dissect_openflow_action_header_v4.exit
  %i.cr = add nsw i32 %i.d, -4                    ; 2 uses
  %i.cs = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.g, ptr noundef %1, ptr noundef @ei_openflow_v4_action_undecoded, ptr noundef %0, i32 noundef %.0.i, i32 noundef %i.cr, ptr noundef @.str.759) ; 0 uses
  %i.ct = icmp ugt i16 %i.c, 4
  %i.cu = select i1 %i.ct, i32 %i.cr, i32 0
  %spec.select139 = add i32 %.0.i, %i.cu
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.p, %bb.q, %bb.s, %bb.r, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ %spec.select, %bb.t ], [ %spec.select139, %bb.u ], [ %i.z, %bb.c ], [ %i.ac, %bb.d ], [ %i.af, %bb.e ], [ %i.al, %bb.f ], [ %i.ao, %bb.g ], [ %i.au, %bb.h ], [ %i.ax, %bb.i ], [ %i.bd, %bb.j ], [ %i.bj, %bb.k ], [ %i.bm, %bb.l ], [ %i.bp, %bb.m ], [ %i.bv, %bb.n ], [ %i.by, %bb.o ], [ %i.e, %bb.q ], [ %i.bz, %bb.p ], [ %i.cj, %bb.r ], [ %i.cm, %bb.s ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -2147483644, -2147483648) i32 @dissect_openflow_instruction_v4(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -2147483648, 131069) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %3)
  %i.b = add nsw i32 %3, 2                        ; 2 uses
  %i.c = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.b) ; 2 uses
  %spec.store.select = tail call i16 @llvm.umax.i16(i16 %i.c, i16 8)
  %i.d = zext i16 %spec.store.select to i32       ; 4 uses
  %i.e = load i32, ptr @ett_openflow_v4_instruction, align 4
  %i.f = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef %i.d, i32 noundef %i.e, ptr noundef null, ptr noundef @.str.1128) ; 13 uses
  %i.g = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef range(i32 -2147483648, 196603) %3)
  %i.h = load i32, ptr @hf_openflow_v4_instruction_type, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.h, ptr noundef %0, i32 noundef range(i32 -2147483648, 196603) %3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_openflow_v4_instruction_length, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.b, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.l = add nsw i32 %3, 4                        ; 2 uses
  %i.m = icmp eq i16 %i.g, -1
  br i1 %i.m, label %bb.b, label %dissect_openflow_instruction_header_v4.exit

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr @hf_openflow_v4_instruction_experimenter_experimenter, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.l, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.p = add nsw i32 %3, 8
  br label %dissect_openflow_instruction_header_v4.exit

dissect_openflow_instruction_header_v4.exit:      ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 15 uses
  switch i16 %i.a, label %bb.h [
    i16 1, label %bb.c
    i16 2, label %bb.d
    i16 3, label %bb.e
    i16 4, label %bb.e
    i16 5, label %bb.e
    i16 6, label %bb.f
    i16 -1, label %bb.g
  ]

bb.c:                                             ; preds = %dissect_openflow_instruction_header_v4.exit
  %i.q = load i32, ptr @hf_openflow_v4_instruction_goto_table_table_id, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.q, ptr noundef %0, i32 noundef %.0.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.s = add nsw i32 %.0.i, 1
  %i.t = load i32, ptr @hf_openflow_v4_instruction_goto_table_pad, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.s, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.v = add nsw i32 %.0.i, 4
  br label %.loopexit

bb.d:                                             ; preds = %dissect_openflow_instruction_header_v4.exit
  %i.w = load i32, ptr @hf_openflow_v4_instruction_write_metadata_pad, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.w, ptr noundef %0, i32 noundef %.0.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.y = add nsw i32 %.0.i, 4
  %i.z = load i32, ptr @hf_openflow_v4_instruction_write_metadata_value, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.y, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.ab = add nsw i32 %.0.i, 12
  %i.ac = load i32, ptr @hf_openflow_v4_instruction_write_metadata_mask, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.ab, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.ae = add nsw i32 %.0.i, 20
  br label %.loopexit

bb.e:                                             ; preds = %dissect_openflow_instruction_header_v4.exit, %dissect_openflow_instruction_header_v4.exit, %dissect_openflow_instruction_header_v4.exit
  %i.af = load i32, ptr @hf_openflow_v4_instruction_actions_pad, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.af, ptr noundef %0, i32 noundef %.0.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ah = add nsw i32 %.0.i, 4                    ; 3 uses
  %i.ai = add nsw i32 %i.d, -8
  %i.aj = add nsw i32 %i.ai, %i.ah
  %i.ak = icmp ugt i16 %i.c, 8
  br i1 %i.ak, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.066 = phi i32 [ %i.al, %.lr.ph ], [ %i.ah, %bb.e ]
  %i.al = tail call fastcc i32 @dissect_openflow_action_v4(ptr noundef %0, ptr noundef %1, ptr noundef %i.f, i32 noundef %.066) ; 3 uses
  %i.am = icmp slt i32 %i.al, %i.aj
  br i1 %i.am, label %.lr.ph, label %.loopexit, !llvm.loop !32

bb.f:                                             ; preds = %dissect_openflow_instruction_header_v4.exit
  %i.an = load i32, ptr @hf_openflow_v4_instruction_meter_meter_id, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.an, ptr noundef %0, i32 noundef %.0.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ap = add nsw i32 %.0.i, 4
  br label %.loopexit

bb.g:                                             ; preds = %dissect_openflow_instruction_header_v4.exit
  %i.aq = add nsw i32 %i.d, -8                    ; 2 uses
  %i.ar = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.f, ptr noundef %1, ptr noundef @ei_openflow_v4_instruction_undecoded, ptr noundef %0, i32 noundef %.0.i, i32 noundef %i.aq, ptr noundef @.str.1129) ; 0 uses
  %i.as = add nsw i32 %.0.i, %i.aq
  br label %.loopexit

bb.h:                                             ; preds = %dissect_openflow_instruction_header_v4.exit
  %i.at = add nsw i32 %i.d, -4                    ; 2 uses
  %i.au = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.f, ptr noundef %1, ptr noundef @ei_openflow_v4_instruction_undecoded, ptr noundef %0, i32 noundef %.0.i, i32 noundef %i.at, ptr noundef @.str.761) ; 0 uses
  %i.av = add nsw i32 %.0.i, %i.at
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %.1 = phi i32 [ %i.av, %bb.h ], [ %i.v, %bb.c ], [ %i.ae, %bb.d ], [ %i.as, %bb.g ], [ %i.ap, %bb.f ], [ %i.ah, %bb.e ], [ %i.al, %.lr.ph ]
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -2147483632, -2147483648) i32 @dissect_openflow_bucket_v4(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -2147483648, 131069) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = load i32, ptr @ett_openflow_v4_bucket, align 4
  %i.c = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef -1, i32 noundef %i.b, ptr noundef nonnull %i.a, ptr noundef @.str.1130) ; 6 uses
  %i.d = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %3) ; 3 uses
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = zext i16 %i.d to i32
  call void @proto_item_set_len(ptr noundef %i.e, i32 noundef %i.f)
  %i.g = load i32, ptr @hf_openflow_v4_bucket_length, align 4
  %i.h = call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.g, ptr noundef %0, i32 noundef %3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.i = add nsw i32 %3, 2
  %i.j = load i32, ptr @hf_openflow_v4_bucket_weight, align 4
  %i.k = call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.l = add nsw i32 %3, 4
  %i.m = load i32, ptr @hf_openflow_v4_bucket_watch_port, align 4
  %i.n = call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.l, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.o = add nsw i32 %3, 8
  %i.p = load i32, ptr @hf_openflow_v4_bucket_watch_group, align 4
  %i.q = call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.o, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.r = add nsw i32 %3, 12
  %i.s = load i32, ptr @hf_openflow_v4_bucket_pad, align 4
  %i.t = call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.r, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.u = add nsw i32 %3, 16                       ; 2 uses
  %i.v = zext i16 %i.d to i32
  %i.w = add nsw i32 %3, %i.v
  %i.x = icmp ugt i16 %i.d, 16
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.036 = phi i32 [ %i.y, %.lr.ph ], [ %i.u, %bb.a ]
  %i.y = call fastcc i32 @dissect_openflow_action_v4(ptr noundef %0, ptr noundef %1, ptr noundef %i.c, i32 noundef %.036) ; 3 uses
  %i.z = icmp slt i32 %i.y, %i.w
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ %i.u, %bb.a ], [ %i.y, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_openflow_table_features_v4(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -2147483648, 65535) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.e = load i32, ptr @ett_openflow_v4_table_features, align 4
  %i.f = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef -1, i32 noundef %i.e, ptr noundef nonnull %i.d, ptr noundef @.str.1134) ; 9 uses
  %i.g = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %3) ; 2 uses
  %i.h = zext i16 %i.g to i32                     ; 2 uses
  %i.i = add nsw i32 %3, %i.h
  %i.j = load ptr, ptr %i.d, align 8
  call void @proto_item_set_len(ptr noundef %i.j, i32 noundef %i.h)
  %i.k = load i32, ptr @hf_openflow_v4_table_features_length, align 4
  %i.l = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.k, ptr noundef %0, i32 noundef %3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.m = add nsw i32 %3, 2
  %i.n = load i32, ptr @hf_openflow_v4_table_features_table_id, align 4
  %i.o = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.m, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.p = add nsw i32 %3, 3
  %i.q = load i32, ptr @hf_openflow_v4_table_features_pad, align 4
  %i.r = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.s = add nsw i32 %3, 8
  %i.t = load i32, ptr @hf_openflow_v4_table_features_name, align 4
  %i.u = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.s, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.v = add nsw i32 %3, 40
  %i.w = load i32, ptr @hf_openflow_v4_table_features_metadata_match, align 4
  %i.x = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.v, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.y = add nsw i32 %3, 48
  %i.z = load i32, ptr @hf_openflow_v4_table_features_metadata_write, align 4
  %i.aa = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.y, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.ab = add nsw i32 %3, 56
  %i.ac = load i32, ptr @hf_openflow_v4_table_features_config, align 4
  %i.ad = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.ab, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ae = add nsw i32 %3, 60
  %i.af = load i32, ptr @hf_openflow_v4_table_features_max_entries, align 4
  %i.ag = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.ae, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ah = add nsw i32 %3, 64                      ; 2 uses
  %i.ai = icmp ugt i16 %i.g, 64
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %dissect_openflow_table_feature_prop_v4.exit
  %.051 = phi i32 [ %.0.i, %dissect_openflow_table_feature_prop_v4.exit ], [ %i.ah, %bb.a ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.aj = load i32, ptr @ett_openflow_v4_table_feature_prop, align 4
  %i.ak = call ptr @proto_tree_add_subtree(ptr noundef %i.f, ptr noundef %0, i32 noundef range(i32 -2147483648, 131069) %.051, i32 noundef -1, i32 noundef %i.aj, ptr noundef nonnull %i.b, ptr noundef @.str.1135) ; 11 uses
  %i.al = load i32, ptr @hf_openflow_v4_table_feature_prop_type, align 4
  %i.am = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.ak, i32 noundef %i.al, ptr noundef %0, i32 noundef range(i32 -2147483648, 131069) %.051, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.an = add nsw i32 %.051, 2                    ; 2 uses
  %i.ao = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.an) ; 9 uses
  %i.ap = load ptr, ptr %i.b, align 8
  %i.aq = zext i16 %i.ao to i32                   ; 4 uses
  call void @proto_item_set_len(ptr noundef %i.ap, i32 noundef %i.aq)
  %i.ar = load i32, ptr @hf_openflow_v4_table_feature_prop_length, align 4
  %i.as = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.at = add nsw i32 %.051, 4                    ; 11 uses
  %i.au = icmp ult i16 %i.ao, 4
  br i1 %i.au, label %dissect_openflow_table_feature_prop_v4.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.av = add nsw i32 %.051, %i.aq                ; 6 uses
  %i.aw = load i16, ptr %i.c, align 2
  switch i16 %i.aw, label %bb.j [
    i16 0, label %bb.c
    i16 1, label %bb.c
    i16 2, label %bb.e
    i16 3, label %bb.e
    i16 4, label %bb.f
    i16 5, label %bb.f
    i16 6, label %bb.f
    i16 7, label %bb.f
    i16 8, label %bb.h
    i16 10, label %bb.h
    i16 12, label %bb.h
    i16 13, label %bb.h
    i16 14, label %bb.h
    i16 15, label %bb.h
    i16 -2, label %bb.i
    i16 -1, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not115.i = icmp eq i16 %i.ao, 4
  br i1 %.not115.i, label %.loopexit.i, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %bb.c, %dissect_openflow_instruction_header_v4.exit.i
  %.095109.i = phi i32 [ %.0.i.i, %dissect_openflow_instruction_header_v4.exit.i ], [ %i.at, %bb.c ] ; 7 uses
  %i.ax = load i32, ptr @ett_openflow_v4_table_feature_prop_instruction_id, align 4
  %i.ay = call ptr @proto_tree_add_subtree(ptr noundef %i.ak, ptr noundef %0, i32 noundef %.095109.i, i32 noundef -1, i32 noundef %i.ax, ptr noundef nonnull %i.b, ptr noundef @.str.1136) ; 3 uses
  %i.az = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef range(i32 -2147483648, 196603) %.095109.i)
  %i.ba = load i32, ptr @hf_openflow_v4_instruction_type, align 4
  %i.bb = call ptr @proto_tree_add_item(ptr noundef %i.ay, i32 noundef %i.ba, ptr noundef %0, i32 noundef range(i32 -2147483648, 196603) %.095109.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bc = add nsw i32 %.095109.i, 2
  %i.bd = load i32, ptr @hf_openflow_v4_instruction_length, align 4
  %i.be = call ptr @proto_tree_add_item(ptr noundef %i.ay, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.bc, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bf = add nsw i32 %.095109.i, 4               ; 2 uses
  %i.bg = icmp eq i16 %i.az, -1
  br i1 %i.bg, label %bb.d, label %dissect_openflow_instruction_header_v4.exit.i

bb.d:                                             ; preds = %.lr.ph110.i
  %i.bh = load i32, ptr @hf_openflow_v4_instruction_experimenter_experimenter, align 4
  %i.bi = call ptr @proto_tree_add_item(ptr noundef %i.ay, i32 noundef %i.bh, ptr noundef %0, i32 noundef %i.bf, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bj = add nsw i32 %.095109.i, 8
  br label %dissect_openflow_instruction_header_v4.exit.i

dissect_openflow_instruction_header_v4.exit.i:    ; preds = %bb.d, %.lr.ph110.i
  %.0.i.i = phi i32 [ %i.bj, %bb.d ], [ %i.bf, %.lr.ph110.i ] ; 4 uses
  %i.bk = load ptr, ptr %i.b, align 8
  %i.bl = and i32 %.095109.i, 65535
  %i.bm = sub i32 %.0.i.i, %i.bl
  call void @proto_item_set_len(ptr noundef %i.bk, i32 noundef %i.bm)
  %i.bn = icmp slt i32 %.0.i.i, %i.av
  br i1 %i.bn, label %.lr.ph110.i, label %.loopexit.i, !llvm.loop !34

bb.e:                                             ; preds = %bb.b, %bb.b
  %.not114.i = icmp eq i16 %i.ao, 4
  br i1 %.not114.i, label %.loopexit.i, label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %bb.e, %.lr.ph107.i
  %.1106.i = phi i32 [ %i.bq, %.lr.ph107.i ], [ %i.at, %bb.e ] ; 2 uses
  %i.bo = load i32, ptr @hf_openflow_v4_table_feature_prop_next_tables_next_table_id, align 4
  %i.bp = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.bo, ptr noundef %0, i32 noundef %.1106.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bq = add nsw i32 %.1106.i, 1                 ; 3 uses
  %i.br = icmp slt i32 %i.bq, %i.av
  br i1 %i.br, label %.lr.ph107.i, label %.loopexit.i, !llvm.loop !35

bb.f:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %.not113.i = icmp eq i16 %i.ao, 4
  br i1 %.not113.i, label %.loopexit.i, label %.lr.ph104.i

.lr.ph104.i:                                      ; preds = %bb.f, %dissect_openflow_action_header_v4.exit.i
  %.2103.i = phi i32 [ %.0.i98.i, %dissect_openflow_action_header_v4.exit.i ], [ %i.at, %bb.f ] ; 7 uses
  %i.bs = load i32, ptr @ett_openflow_v4_table_feature_prop_action_id, align 4
  %i.bt = call ptr @proto_tree_add_subtree(ptr noundef %i.ak, ptr noundef %0, i32 noundef %.2103.i, i32 noundef -1, i32 noundef %i.bs, ptr noundef nonnull %i.b, ptr noundef @.str.1137) ; 3 uses
  %i.bu = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.2103.i)
  %i.bv = load i32, ptr @hf_openflow_v4_action_type, align 4
  %i.bw = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.bv, ptr noundef %0, i32 noundef %.2103.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bx = add i32 %.2103.i, 2
  %i.by = load i32, ptr @hf_openflow_v4_action_length, align 4
  %i.bz = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.by, ptr noundef %0, i32 noundef %i.bx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ca = add i32 %.2103.i, 4                     ; 2 uses
  %i.cb = icmp eq i16 %i.bu, -1
  br i1 %i.cb, label %bb.g, label %dissect_openflow_action_header_v4.exit.i

bb.g:                                             ; preds = %.lr.ph104.i
  %i.cc = load i32, ptr @hf_openflow_v4_action_experimenter_experimenter, align 4
  %i.cd = call ptr @proto_tree_add_item(ptr noundef %i.bt, i32 noundef %i.cc, ptr noundef %0, i32 noundef %i.ca, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ce = add i32 %.2103.i, 8
  br label %dissect_openflow_action_header_v4.exit.i

dissect_openflow_action_header_v4.exit.i:         ; preds = %bb.g, %.lr.ph104.i
  %.0.i98.i = phi i32 [ %i.ce, %bb.g ], [ %i.ca, %.lr.ph104.i ] ; 4 uses
  %i.cf = load ptr, ptr %i.b, align 8
  %i.cg = and i32 %.2103.i, 65535
  %i.ch = sub i32 %.0.i98.i, %i.cg
  call void @proto_item_set_len(ptr noundef %i.cf, i32 noundef %i.ch)
  %i.ci = icmp slt i32 %.0.i98.i, %i.av
  br i1 %i.ci, label %.lr.ph104.i, label %.loopexit.i, !llvm.loop !36

bb.h:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.not112.i = icmp eq i16 %i.ao, 4
  br i1 %.not112.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.3102.i = phi i32 [ %i.cz, %.lr.ph.i ], [ %i.at, %bb.h ] ; 6 uses
  %i.cj = load i32, ptr @ett_openflow_v4_table_feature_prop_oxm_id, align 4
  %i.ck = call ptr @proto_tree_add_subtree(ptr noundef %i.ak, ptr noundef %0, i32 noundef %.3102.i, i32 noundef -1, i32 noundef %i.cj, ptr noundef nonnull %i.b, ptr noundef @.str.1138) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.cl = load i32, ptr @hf_openflow_v4_oxm_class, align 4
  %i.cm = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.ck, i32 noundef %i.cl, ptr noundef %0, i32 noundef %.3102.i, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.cn = load i16, ptr %i.a, align 2
  %i.co = icmp eq i16 %i.cn, -32768
  %i.cp = shl i32 %.3102.i, 3
  %i.cq = add i32 %i.cp, 16                       ; 2 uses
  %hf_openflow_v4_oxm_field_basic.val.i.i = load i32, ptr @hf_openflow_v4_oxm_field_basic, align 4
  %hf_openflow_v4_oxm_field.val.i.i = load i32, ptr @hf_openflow_v4_oxm_field, align 4
  %i.cr = select i1 %i.co, i32 %hf_openflow_v4_oxm_field_basic.val.i.i, i32 %hf_openflow_v4_oxm_field.val.i.i
  %i.cs = call ptr @proto_tree_add_bits_item(ptr noundef %i.ck, i32 noundef %i.cr, ptr noundef %0, i32 noundef %i.cq, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.ct = load i32, ptr @hf_openflow_v4_oxm_hm, align 4
end_hunk_0
