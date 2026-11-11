Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-openflow_v6?download=true
inline.NumInlined: 102
inline.NumDeleted: 72
begin_hunk_0_@dissect_openflow_action_v6:bb.a
bb.p:                                             ; preds = %dissect_openflow_action_header_v6.exit
  %i.by = call fastcc i32 @dissect_openflow_oxm_v6(ptr noundef %i.f, ptr noundef %1, ptr noundef %i.h, i32 noundef %.0.i) ; 4 uses
  %i.bz = icmp slt i32 %i.by, %i.e
  br i1 %i.bz, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ca = load i32, ptr @hf_openflow_v6_action_set_field_pad, align 4
  %i.cb = sub i32 %i.e, %i.by
  %i.cc = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.ca, ptr noundef %i.f, i32 noundef %i.by, i32 noundef %i.cb, i32 noundef 0) ; 0 uses
  br label %bb.x

bb.r:                                             ; preds = %dissect_openflow_action_header_v6.exit
  %i.cd = load i32, ptr @hf_openflow_v6_action_push_pbb_ethertype, align 4
  %i.ce = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.cd, ptr noundef %i.f, i32 noundef %.0.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cf = or disjoint i32 %.0.i, 2
  %i.cg = load i32, ptr @hf_openflow_v6_action_push_pbb_pad, align 4
  %i.ch = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.cg, ptr noundef %i.f, i32 noundef %i.cf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ci = add nuw nsw i32 %.0.i, 4
  br label %bb.x

bb.s:                                             ; preds = %dissect_openflow_action_header_v6.exit
  %i.cj = load i32, ptr @hf_openflow_v6_action_pop_pbb_pad, align 4
  %i.ck = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.cj, ptr noundef %i.f, i32 noundef %.0.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.cl = add nuw nsw i32 %.0.i, 4
  br label %bb.x

bb.t:                                             ; preds = %dissect_openflow_action_header_v6.exit
  %i.cm = load i32, ptr @hf_openflow_v6_action_copy_field_n_bits, align 4
  %i.cn = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.cm, ptr noundef %i.f, i32 noundef %.0.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.co = or disjoint i32 %.0.i, 2
  %i.cp = load i32, ptr @hf_openflow_v6_action_copy_field_src_offset, align 4
  %i.cq = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.cp, ptr noundef %i.f, i32 noundef %i.co, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cr = add nuw nsw i32 %.0.i, 4
  %i.cs = load i32, ptr @hf_openflow_v6_action_copy_field_dst_offset, align 4
  %i.ct = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.cs, ptr noundef %i.f, i32 noundef %i.cr, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cu = add nuw nsw i32 %.0.i, 6
  %i.cv = load i32, ptr @hf_openflow_v6_action_copy_field_pad, align 4
  %i.cw = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.cv, ptr noundef %i.f, i32 noundef %i.cu, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cx = add nuw nsw i32 %.0.i, 8
  br label %bb.x

bb.u:                                             ; preds = %dissect_openflow_action_header_v6.exit
  %i.cy = load i32, ptr @hf_openflow_v6_action_meter_id, align 4
  %i.cz = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.cy, ptr noundef %i.f, i32 noundef %.0.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.da = add nuw nsw i32 %.0.i, 4
  br label %bb.x

bb.v:                                             ; preds = %dissect_openflow_action_header_v6.exit
  %i.db = add nsw i32 %i.e, -8                    ; 2 uses
  %i.dc = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.h, ptr noundef %1, ptr noundef @ei_openflow_v6_action_undecoded, ptr noundef %i.f, i32 noundef %.0.i, i32 noundef %i.db, ptr noundef @.str.1600) ; 0 uses
  %i.dd = add nsw i32 %.0.i, %i.db
  br label %bb.x

bb.w:                                             ; preds = %dissect_openflow_action_header_v6.exit
  %i.de = add nsw i32 %i.e, -4                    ; 2 uses
  %i.df = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.h, ptr noundef %1, ptr noundef @ei_openflow_v6_action_undecoded, ptr noundef %i.f, i32 noundef %.0.i, i32 noundef %i.de, ptr noundef @.str.1033) ; 0 uses
  %i.dg = add nsw i32 %.0.i, %i.de
  br label %bb.x

bb.x:                                             ; preds = %bb.p, %bb.q, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ %i.dg, %bb.w ], [ %i.y, %bb.c ], [ %i.ab, %bb.d ], [ %i.ae, %bb.e ], [ %i.ak, %bb.f ], [ %i.an, %bb.g ], [ %i.at, %bb.h ], [ %i.aw, %bb.i ], [ %i.bc, %bb.j ], [ %i.bi, %bb.k ], [ %i.bl, %bb.l ], [ %i.bo, %bb.m ], [ %i.bu, %bb.n ], [ %i.bx, %bb.o ], [ %i.e, %bb.q ], [ %i.by, %bb.p ], [ %i.ci, %bb.r ], [ %i.cl, %bb.s ], [ %i.cx, %bb.t ], [ %i.da, %bb.u ], [ %i.dd, %bb.v ]
  %i.dh = add i32 %.0, %3
  ret i32 %i.dh
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_openflow_instruction_v6(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.d = load i32, ptr @ett_openflow_v6_instruction, align 4
  %i.e = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef -1, i32 noundef %i.d, ptr noundef nonnull %i.c, ptr noundef @.str.1601) ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.f = load i32, ptr @hf_openflow_v6_instruction_type, align 4
  %i.g = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, i32 noundef %3, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.h = add i32 %3, 2
  %i.i = load i32, ptr @hf_openflow_v6_instruction_length, align 4
  %i.j = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.e, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.h, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.k = add i32 %3, 4                            ; 2 uses
  %i.l = load i32, ptr %i.a, align 4              ; 2 uses
  %i.m = icmp eq i32 %i.l, 65535
  br i1 %i.m, label %bb.b, label %dissect_openflow_instruction_header_v6.exit

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr @hf_openflow_v6_instruction_experimenter_experimenter, align 4
  %i.o = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.k, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.p = add i32 %3, 8
  %.pr = load i32, ptr %i.a, align 4
  br label %dissect_openflow_instruction_header_v6.exit

dissect_openflow_instruction_header_v6.exit:      ; preds = %bb.a, %bb.b
  %i.q = phi i32 [ %i.l, %bb.a ], [ %.pr, %bb.b ]
  %.0.i = phi i32 [ %i.k, %bb.a ], [ %i.p, %bb.b ] ; 18 uses
  %i.r = load i32, ptr %i.b, align 4              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.s = load ptr, ptr %i.c, align 8
  call void @proto_item_set_len(ptr noundef %i.s, i32 noundef %i.r)
  %spec.select = call i32 @llvm.umax.i32(i32 %i.r, i32 8) ; 2 uses
  %i.t = add i32 %spec.select, -4                 ; 2 uses
  %i.u = add i32 %i.t, %.0.i                      ; 5 uses
  switch i32 %i.q, label %bb.h [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.e
    i32 5, label %bb.e
    i32 7, label %bb.f
    i32 65535, label %bb.g
  ]

bb.c:                                             ; preds = %dissect_openflow_instruction_header_v6.exit
  %i.v = load i32, ptr @hf_openflow_v6_instruction_goto_table_table_id, align 4
  %i.w = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.v, ptr noundef %0, i32 noundef %.0.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = add i32 %.0.i, 1
  %i.y = load i32, ptr @hf_openflow_v6_instruction_goto_table_pad, align 4
  %i.z = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aa = add i32 %.0.i, 4
  br label %.loopexit

bb.d:                                             ; preds = %dissect_openflow_instruction_header_v6.exit
  %i.ab = load i32, ptr @hf_openflow_v6_instruction_write_metadata_pad, align 4
  %i.ac = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ab, ptr noundef %0, i32 noundef %.0.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ad = add i32 %.0.i, 4
  %i.ae = load i32, ptr @hf_openflow_v6_instruction_write_metadata_value, align 4
  %i.af = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.ad, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.ag = add i32 %.0.i, 12
  %i.ah = load i32, ptr @hf_openflow_v6_instruction_write_metadata_mask, align 4
  %i.ai = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.ag, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.aj = add i32 %.0.i, 20
  br label %.loopexit

bb.e:                                             ; preds = %dissect_openflow_instruction_header_v6.exit, %dissect_openflow_instruction_header_v6.exit, %dissect_openflow_instruction_header_v6.exit
  %i.ak = load i32, ptr @hf_openflow_v6_instruction_actions_pad, align 4
  %i.al = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ak, ptr noundef %0, i32 noundef %.0.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.am = add i32 %.0.i, 4                        ; 3 uses
  %i.an = icmp slt i32 %i.am, %i.u
  br i1 %i.an, label %.lr.ph77, label %.loopexit

.lr.ph77:                                         ; preds = %bb.e, %.lr.ph77
  %.076 = phi i32 [ %i.ao, %.lr.ph77 ], [ %i.am, %bb.e ]
  %i.ao = call fastcc i32 @dissect_openflow_action_v6(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %.076) ; 3 uses
  %i.ap = icmp slt i32 %i.ao, %i.u
  br i1 %i.ap, label %.lr.ph77, label %.loopexit, !llvm.loop !50

bb.f:                                             ; preds = %dissect_openflow_instruction_header_v6.exit
  %i.aq = load i32, ptr @hf_openflow_v6_instruction_stat_trigger_flags, align 4
  %i.ar = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.aq, ptr noundef %0, i32 noundef %.0.i, i32 noundef 4, i32 noundef 0) ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8
  %i.as = load i32, ptr @ett_openflow_v6_instruction_stat_trigger_flags, align 4
  %i.at = call ptr @proto_item_add_subtree(ptr noundef %i.ar, i32 noundef %i.as) ; 3 uses
  %i.au = load i32, ptr @hf_openflow_v6_instruction_stat_triffer_flags_periodic, align 4
  %i.av = call ptr @proto_tree_add_item(ptr noundef %i.at, i32 noundef %i.au, ptr noundef %0, i32 noundef %.0.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aw = load i32, ptr @hf_openflow_v6_instruction_stat_triffer_flags_only_first, align 4
  %i.ax = call ptr @proto_tree_add_item(ptr noundef %i.at, i32 noundef %i.aw, ptr noundef %0, i32 noundef %.0.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ay = load i32, ptr @hf_openflow_v6_instruction_stat_triffer_flags_reserved, align 4
  %i.az = call ptr @proto_tree_add_item(ptr noundef %i.at, i32 noundef %i.ay, ptr noundef %0, i32 noundef %.0.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ba = add i32 %.0.i, 4                        ; 3 uses
  %i.bb = icmp slt i32 %i.ba, %i.u
  br i1 %i.bb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.175 = phi i32 [ %i.bc, %.lr.ph ], [ %i.ba, %bb.f ]
  %i.bc = call fastcc i32 @dissect_openflow_stats_v6(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %.175) ; 3 uses
  %i.bd = icmp slt i32 %i.bc, %i.u
  br i1 %i.bd, label %.lr.ph, label %.loopexit, !llvm.loop !51

bb.g:                                             ; preds = %dissect_openflow_instruction_header_v6.exit
  %i.be = add i32 %spec.select, -8                ; 2 uses
  %i.bf = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.e, ptr noundef %1, ptr noundef @ei_openflow_v6_instruction_undecoded, ptr noundef %0, i32 noundef %.0.i, i32 noundef %i.be, ptr noundef @.str.1602) ; 0 uses
  %i.bg = add i32 %i.be, %.0.i
  br label %.loopexit

bb.h:                                             ; preds = %dissect_openflow_instruction_header_v6.exit
  %i.bh = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.e, ptr noundef %1, ptr noundef @ei_openflow_v6_instruction_undecoded, ptr noundef %0, i32 noundef %.0.i, i32 noundef %i.t, ptr noundef @.str.1035) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph77, %bb.f, %bb.e, %bb.h, %bb.g, %bb.d, %bb.c
  %.2 = phi i32 [ %i.u, %bb.h ], [ %i.aa, %bb.c ], [ %i.aj, %bb.d ], [ %i.bg, %bb.g ], [ %i.ao, %.lr.ph77 ], [ %i.am, %bb.e ], [ %i.ba, %bb.f ], [ %i.bc, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  ret i32 %.2
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -2147483632, -2147483648) i32 @dissect_openflow_bucket_v6(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -2147483648, 131069) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = load i32, ptr @ett_openflow_v6_bucket, align 4
  %i.c = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef -1, i32 noundef %i.b, ptr noundef nonnull %i.a, ptr noundef @.str.1603) ; 6 uses
  %i.d = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %3) ; 3 uses
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = zext i16 %i.d to i32
  call void @proto_item_set_len(ptr noundef %i.e, i32 noundef %i.f)
  %i.g = load i32, ptr @hf_openflow_v6_bucket_length, align 4
  %i.h = call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.g, ptr noundef %0, i32 noundef %3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.i = add nsw i32 %3, 2
  %i.j = load i32, ptr @hf_openflow_v6_bucket_weight, align 4
  %i.k = call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.l = add nsw i32 %3, 4
  %i.m = load i32, ptr @hf_openflow_v6_bucket_watch_port, align 4
  %i.n = call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.l, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.o = add nsw i32 %3, 8
  %i.p = load i32, ptr @hf_openflow_v6_bucket_watch_group, align 4
  %i.q = call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.o, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.r = add nsw i32 %3, 12
  %i.s = load i32, ptr @hf_openflow_v6_bucket_pad, align 4
  %i.t = call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.r, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.u = add nsw i32 %3, 16                       ; 2 uses
  %i.v = zext i16 %i.d to i32
  %i.w = add nsw i32 %3, %i.v
  %i.x = icmp ugt i16 %i.d, 16
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.036 = phi i32 [ %i.y, %.lr.ph ], [ %i.u, %bb.a ]
  %i.y = call fastcc i32 @dissect_openflow_action_v6(ptr noundef %0, ptr noundef %1, ptr noundef %i.c, i32 noundef %.036) ; 3 uses
  %i.z = icmp slt i32 %i.y, %i.w
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ %i.u, %bb.a ], [ %i.y, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_openflow_tablemod_prop_v6(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.d = add i32 %3, 2                            ; 2 uses
  %i.e = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.d)
  %i.f = zext i16 %i.e to i32
  store i32 %i.f, ptr %i.c, align 4
  %i.g = load i32, ptr @ett_openflow_v6_tablemod_prop, align 4
  %i.h = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef -1, i32 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef @.str.1605) ; 3 uses
  %i.i = load i32, ptr @hf_openflow_v6_tablemod_prop_type, align 4
  %i.j = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %0, i32 noundef %3, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.k = load i32, ptr @hf_openflow_v6_tablemod_prop_length, align 4
  %i.l = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.h, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.d, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.c) ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = load i32, ptr %i.c, align 4
  call void @proto_item_set_len(ptr noundef %i.m, i32 noundef %i.n)
  %i.o = add i32 %3, 4                            ; 7 uses
  %i.p = load i32, ptr %i.b, align 4
  switch i32 %i.p, label %bb.g [
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 65535, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.q = load i32, ptr @hf_openflow_v6_tablemod_prop_eviction_flags, align 4
  %i.r = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.o, i32 noundef 4, i32 noundef 0) ; 2 uses
  store ptr %i.r, ptr %i.a, align 8
  %i.s = load i32, ptr @ett_openflow_v6_tablemod_prop_eviction_flags, align 4
  %i.t = call ptr @proto_item_add_subtree(ptr noundef %i.r, i32 noundef %i.s) ; 3 uses
  %i.u = load i32, ptr @hf_openflow_v6_tablemod_prop_eviction_flags_other, align 4
  %i.v = call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.o, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr @hf_openflow_v6_tablemod_prop_eviction_flags_importance, align 4
  %i.x = call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.o, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_openflow_v6_tablemod_prop_eviction_flags_lifetime, align 4
  %i.z = call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.o, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aa = add i32 %3, 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.ab = load i32, ptr @hf_openflow_v6_tablemod_prop_vacancy_vacancy_down, align 4
  %i.ac = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.o, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = add i32 %3, 5
  %i.ae = load i32, ptr @hf_openflow_v6_tablemod_prop_vacancy_vacancy_up, align 4
  %i.af = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.ad, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ag = add i32 %3, 6
  %i.ah = load i32, ptr @hf_openflow_v6_tablemod_prop_vacancy_vacancy, align 4
  %i.ai = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.ag, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aj = add i32 %3, 7
  %i.ak = load i32, ptr @hf_openflow_v6_tablemod_prop_vacancy_pad, align 4
  %i.al = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ak, ptr noundef %0, i32 noundef %i.aj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.am = add i32 %3, 8
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.an = load i32, ptr %i.c, align 4
  %i.ao = icmp ult i32 %i.an, 13
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.l, ptr noundef @ei_openflow_v6_length_too_short) ; 0 uses
  %i.aq = zext i16 %4 to i32
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ar = load i32, ptr @hf_openflow_v6_tablemod_prop_experimenter_experimenter, align 4
  %i.as = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.o, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.at = add i32 %3, 8
  %i.au = load i32, ptr @hf_openflow_v6_tablemod_prop_experimenter_exp_type, align 4
  %i.av = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.au, ptr noundef %0, i32 noundef %i.at, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aw = add i32 %3, 12
  %i.ax = load i32, ptr %i.c, align 4
  %i.ay = add i32 %i.ax, -12
  %i.az = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef @ei_openflow_v6_tablemod_prop_undecoded, ptr noundef %0, i32 noundef %i.aw, i32 noundef %i.ay, ptr noundef @.str.1606) ; 0 uses
  %i.ba = load i32, ptr %i.c, align 4
  %i.bb = add i32 %i.ba, %3
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bc = load i32, ptr %i.c, align 4             ; 2 uses
  %i.bd = icmp ult i32 %i.bc, 5
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.l, ptr noundef @ei_openflow_v6_length_too_short) ; 0 uses
  %i.bf = zext i16 %4 to i32
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bg = add i32 %i.bc, -4
  %i.bh = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef @ei_openflow_v6_tablemod_prop_undecoded, ptr noundef %0, i32 noundef %i.o, i32 noundef %i.bg, ptr noundef @.str.1607) ; 0 uses
  %i.bi = load i32, ptr %i.c, align 4
  %i.bj = add i32 %i.bi, %3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %bb.b
  %.0 = phi i32 [ %i.bf, %bb.h ], [ %i.bj, %bb.i ], [ %i.aa, %bb.b ], [ %i.am, %bb.c ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_openflow_flow_stats_request_v6(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_openflow_v6_flow_stats_request_table_id, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = add i32 %3, 1
  %i.d = load i32, ptr @hf_openflow_v6_flow_stats_request_pad, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef %i.c, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.f = add i32 %3, 4
  %i.g = load i32, ptr @hf_openflow_v6_flow_stats_request_out_port, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.f, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.i = add i32 %3, 8
  %i.j = load i32, ptr @hf_openflow_v6_flow_stats_request_out_group, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.l = add i32 %3, 12
  %i.m = load i32, ptr @hf_openflow_v6_flow_stats_request_pad2, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.l, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.o = add i32 %3, 16
  %i.p = load i32, ptr @hf_openflow_v6_flow_stats_request_cookie, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.o, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.r = add i32 %3, 24
  %i.s = load i32, ptr @hf_openflow_v6_flow_stats_request_cookie_mask, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.r, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.u = add i32 %3, 32
  %i.v = tail call fastcc i32 @dissect_openflow_match_v6(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.u) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -2147483584, -2147483648) i32 @dissect_openflow_table_features_v6(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -2147483648, 65535) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca ptr, align 8                      ; 12 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  %i.m = load i32, ptr @ett_openflow_v6_table_features, align 4
  %i.n = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef -1, i32 noundef %i.m, ptr noundef nonnull %i.k, ptr noundef @.str.1609) ; 9 uses
  %i.o = load i32, ptr @hf_openflow_v6_table_features_length, align 4
  %i.p = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.n, i32 noundef %i.o, ptr noundef %0, i32 noundef %3, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.l) ; 0 uses
  %i.q = load i32, ptr %i.l, align 4              ; 2 uses
  %i.r = add i32 %i.q, %3                         ; 2 uses
  %i.s = load ptr, ptr %i.k, align 8
  call void @proto_item_set_len(ptr noundef %i.s, i32 noundef %i.q)
  %i.t = add nsw i32 %3, 2
  %i.u = load i32, ptr @hf_openflow_v6_table_features_table_id, align 4
  %i.v = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.t, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.w = add nsw i32 %3, 3
  %i.x = load i32, ptr @hf_openflow_v6_table_features_pad, align 4
  %i.y = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.w, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.z = add nsw i32 %3, 8
  %i.aa = load i32, ptr @hf_openflow_v6_table_features_name, align 4
  %i.ab = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.z, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.ac = add nsw i32 %3, 40
  %i.ad = load i32, ptr @hf_openflow_v6_table_features_metadata_match, align 4
  %i.ae = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.ac, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.af = add nsw i32 %3, 48
  %i.ag = load i32, ptr @hf_openflow_v6_table_features_metadata_write, align 4
  %i.ah = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.af, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.ai = add nsw i32 %3, 56                      ; 3 uses
  %i.aj = load i32, ptr @hf_openflow_v6_table_features_capabilities, align 4
  %i.ak = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.ai, i32 noundef 4, i32 noundef 0) ; 2 uses
  store ptr %i.ak, ptr %i.k, align 8
  %i.al = load i32, ptr @ett_openflow_v6_table_features_capabilities, align 4
  %i.am = call ptr @proto_item_add_subtree(ptr noundef %i.ak, i32 noundef %i.al) ; 2 uses
  %i.an = load i32, ptr @hf_openflow_v6_table_features_capabilities_eviction, align 4
end_hunk_0
begin_hunk_1_@dissect_openflow_table_desc_v6:bb.a
  %i.t = load i32, ptr @ett_openflow_v6_table_desc_config, align 4
  %i.u = call ptr @proto_item_add_subtree(ptr noundef %i.s, i32 noundef %i.t) ; 2 uses
  %i.v = load i32, ptr @hf_openflow_v6_table_desc_config_eviction, align 4
  %i.w = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.q, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.x = load i32, ptr @hf_openflow_v6_table_desc_config_vacancy_events, align 4
  %i.y = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.q, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.z = add i32 %3, 8                            ; 3 uses
  %i.aa = icmp slt i32 %i.z, %i.j
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.033 = phi i32 [ %i.ab, %.lr.ph ], [ %i.z, %bb.a ]
  %i.ab = call fastcc i32 @dissect_openflow_tablemod_prop_v6(ptr noundef %0, ptr noundef %1, ptr noundef %i.d, i32 noundef %.033, i16 noundef zeroext %4) ; 3 uses
  %i.ac = icmp slt i32 %i.ab, %i.j
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ %i.z, %bb.a ], [ %i.ab, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -2147483636, 196604) i32 @dissect_openflow_meter_band_v6(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -2147483648, 131069) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = load i32, ptr @ett_openflow_v6_meter_band, align 4
  %i.d = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef -1, i32 noundef %i.c, ptr noundef nonnull %i.a, ptr noundef @.str.1635) ; 10 uses
  %i.e = load i32, ptr @hf_openflow_v6_meter_band_type, align 4
  %i.f = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %0, i32 noundef %3, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.g = add nsw i32 %3, 2                        ; 2 uses
  %i.h = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.g) ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = zext i16 %i.h to i32                     ; 5 uses
  call void @proto_item_set_len(ptr noundef %i.i, i32 noundef %i.j)
  %i.k = load i32, ptr @hf_openflow_v6_meter_band_len, align 4
  %i.l = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.g, i32 noundef 2, i32 noundef 0)
  store ptr %i.l, ptr %i.a, align 8
  %i.m = add nsw i32 %3, 4
  %i.n = load i32, ptr @hf_openflow_v6_meter_band_rate, align 4
  %i.o = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.m, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.p = add nsw i32 %3, 8
  %i.q = load i32, ptr @hf_openflow_v6_meter_band_burst_size, align 4
  %i.r = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.s = add nsw i32 %3, 12                       ; 5 uses
  %i.t = icmp ult i16 %i.h, 12
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.u, ptr noundef @ei_openflow_v6_length_too_short) ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.w = load i32, ptr %i.b, align 4
  switch i32 %i.w, label %bb.g [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 65535, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr @hf_openflow_v6_meter_band_drop_pad, align 4
  %i.y = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.s, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.z = load i32, ptr @hf_openflow_v6_meter_band_dscp_remark_prec_level, align 4
  %i.aa = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.s, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ab = add nsw i32 %3, 13
  %i.ac = load i32, ptr @hf_openflow_v6_meter_band_dscp_remark_pad, align 4
  %i.ad = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.ab, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.ae = load i32, ptr @hf_openflow_v6_meter_band_experimenter_experimenter, align 4
  %i.af = call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.s, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ag = add nsw i32 %3, 16
  %i.ah = add nsw i32 %3, %i.j
  %i.ai = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.d, ptr noundef %1, ptr noundef @ei_openflow_v6_meter_band_undecoded, ptr noundef %0, i32 noundef %i.ag, i32 noundef %i.ah, ptr noundef @.str.1636) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.aj = add nsw i32 %3, %i.j
  %i.ak = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.d, ptr noundef %1, ptr noundef @ei_openflow_v6_meter_band_undecoded, ptr noundef %0, i32 noundef %i.s, i32 noundef %i.aj, ptr noundef @.str.1041) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.pn = phi i32 [ %i.j, %bb.g ], [ 16, %bb.d ], [ 16, %bb.e ], [ %i.j, %bb.f ]
  %.058 = add nsw i32 %.pn, %3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.0 = phi i32 [ %i.s, %bb.b ], [ %.058, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_openflow_bundle_prop_v6(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -2147483648, 65535) %3, i16 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.d = load i32, ptr @ett_openflow_v6_bundle_prop, align 4
  %i.e = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef -1, i32 noundef %i.d, ptr noundef nonnull %i.a, ptr noundef @.str.1647) ; 2 uses
  %i.f = load i32, ptr @hf_openflow_v6_bundle_prop_type, align 4
  %i.g = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, i32 noundef %3, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.h = add nsw i32 %3, 2
  %i.i = load i32, ptr @hf_openflow_v6_bundle_prop_length, align 4
  %i.j = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.e, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.h, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.c) ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = load i32, ptr %i.c, align 4
  call void @proto_item_set_len(ptr noundef %i.k, i32 noundef %i.l)
  %i.m = add nsw i32 %3, 4                        ; 3 uses
  %i.n = load i32, ptr %i.b, align 4
  %i.o = load i32, ptr %i.c, align 4              ; 4 uses
  switch i32 %i.n, label %bb.h [
    i32 1, label %bb.b
    i32 65535, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ult i32 %i.o, 5
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.j, ptr noundef @ei_openflow_v6_length_too_short) ; 0 uses
  %i.r = zext i16 %4 to i32
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.s = load i32, ptr @hf_openflow_v6_time_seconds, align 4
  %i.t = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.m, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.u = add nsw i32 %3, 12
  %i.v = load i32, ptr @hf_openflow_v6_time_nanoseconds, align 4
  %i.w = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.u, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.x = add nsw i32 %3, 16
  %i.y = load i32, ptr @hf_openflow_v6_time_pad, align 4
  %i.z = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aa = load i32, ptr %i.c, align 4
  %i.ab = add i32 %i.aa, %3
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.ac = icmp ult i32 %i.o, 13
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.j, ptr noundef @ei_openflow_v6_length_too_short) ; 0 uses
  %i.ae = zext i16 %4 to i32
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.af = load i32, ptr @hf_openflow_v6_bundle_prop_experimenter_experimenter, align 4
  %i.ag = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.m, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ah = add nsw i32 %3, 8
  %i.ai = load i32, ptr @hf_openflow_v6_bundle_prop_experimenter_exp_type, align 4
  %i.aj = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.ah, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ak = add nsw i32 %3, 12
  %i.al = load i32, ptr %i.c, align 4
  %i.am = add i32 %i.al, -12
  %i.an = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef @ei_openflow_v6_bundle_prop_undecoded, ptr noundef %0, i32 noundef %i.ak, i32 noundef %i.am, ptr noundef @.str.1648) ; 0 uses
  %i.ao = load i32, ptr %i.c, align 4
  %i.ap = add i32 %i.ao, %3
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.aq = icmp ult i32 %i.o, 5
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.j, ptr noundef @ei_openflow_v6_length_too_short) ; 0 uses
  %i.as = zext i16 %4 to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.at = add i32 %i.o, -4
  %i.au = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef @ei_openflow_v6_bundle_prop_undecoded, ptr noundef %0, i32 noundef %i.m, i32 noundef %i.at, ptr noundef @.str.1067) ; 0 uses
  %i.av = load i32, ptr %i.c, align 4
  %i.aw = add i32 %i.av, %3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c
  %.0 = phi i32 [ %i.as, %bb.i ], [ %i.aw, %bb.j ], [ %i.r, %bb.c ], [ %i.ab, %bb.d ], [ %i.ae, %bb.f ], [ %i.ap, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !6}
!10 = distinct !{null}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{null}
!21 = distinct !{!21, !6}
!22 = distinct !{null}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = distinct !{!52, !6}
!53 = distinct !{!53, !6}
!54 = distinct !{!54, !6}
!55 = distinct !{!55, !6}
!56 = distinct !{!56, !6}
!57 = distinct !{!57, !6}
!58 = distinct !{!58, !6}
!59 = distinct !{!59, !6}
!60 = distinct !{!60, !6}
!61 = distinct !{!61, !6}
end_hunk_1
