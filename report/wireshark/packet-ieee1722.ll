Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ieee1722?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
begin_hunk_0_@dissect_1722_cvf:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = phi i32 [ %i.ac, %bb.e ], [ %i.ad, %bb.d ]
  %i.ah = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 24, i32 noundef %i.ag) ; 5 uses
  %i.ai = load i32, ptr %i.b, align 4
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ak = load i32, ptr %i.c, align 4
  switch i32 %i.ak, label %bb.k [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr @jpeg_handle, align 8
  %i.am = call i32 @call_dissector(ptr noundef %i.al, ptr noundef %i.ah, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.an = load i32, ptr @hf_1722_cvf_h264_timestamp, align 4
  %i.ao = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.an, ptr noundef %0, i32 noundef 24, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ap = load ptr, ptr @h264_handle, align 8
  %i.aq = call ptr @tvb_new_subset_remaining(ptr noundef %i.ah, i32 noundef 4)
  %i.ar = call i32 @call_dissector(ptr noundef %i.ap, ptr noundef %i.aq, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.as = call ptr @expert_add_info(ptr noundef %1, ptr noundef %.0, ptr noundef nonnull @ei_cvf_jpeg2000_format) ; 0 uses
  %i.at = call i32 @call_data_dissector(ptr noundef %i.ah, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.au = call ptr @expert_add_info(ptr noundef %1, ptr noundef %.0, ptr noundef nonnull @ei_cvf_reserved_format) ; 0 uses
  %i.av = call i32 @call_data_dissector(ptr noundef %i.ah, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.aw = call i32 @call_data_dissector(ptr noundef %i.ah, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %i.ax = load i32, ptr %i.a, align 4
  %i.ay = add i32 %i.ax, 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.ay
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_1722_cvf() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @avb1722_cvf_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.4, i32 noundef 3, ptr noundef %i.a)
  %i.b = load i32, ptr @proto_1722_cvf, align 4
  %i.c = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.181, i32 noundef %i.b)
  store ptr %i.c, ptr @jpeg_handle, align 8
  %i.d = load i32, ptr @proto_1722_cvf, align 4
  %i.e = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.182, i32 noundef %i.d)
  store ptr %i.e, ptr @h264_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_1722_crf() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.207) ; 2 uses
  store i32 %i.a, ptr @proto_1722_crf, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_1722_crf.hf, i32 noundef 12)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_1722_crf.ett, i32 noundef 2)
  %i.b = load i32, ptr @proto_1722_crf, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_1722_crf.ei, i32 noundef 1)
  %i.d = load i32, ptr @proto_1722_crf, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef nonnull @.str.207, ptr noundef nonnull @dissect_1722_crf, i32 noundef %i.d)
  store ptr %i.e, ptr @avb1722_crf_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_1722_crf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4
  %i.b = load i32, ptr @proto_1722_crf, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.d = load i32, ptr @ett_1722_crf, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 8 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.e, ptr noundef %0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @dissect_1722_crf.fields, i32 noundef 0)
  %i.f = load i32, ptr @hf_1722_crf_seqnum, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr @hf_1722_crf_type, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.h, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_1722_crf_stream_id, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.j, ptr noundef %0, i32 noundef 4, i32 noundef 8, i32 noundef 0) ; 0 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.e, ptr noundef %0, i32 noundef 12, i32 noundef 4, ptr noundef nonnull @dissect_1722_crf.pull_frequency, i32 noundef 0)
  %i.l = load i32, ptr @hf_1722_crf_data_length, align 4
  %i.m = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.e, i32 noundef %i.l, ptr noundef %0, i32 noundef 16, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.n = load i32, ptr @hf_1722_crf_timestamp_interval, align 4
  %i.o = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.n, ptr noundef %0, i32 noundef 18, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_1722_crf_timestamp_data, align 4
  %i.q = load i32, ptr %i.a, align 4
  %i.r = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.p, ptr noundef %0, i32 noundef 20, i32 noundef %i.q, i32 noundef 0) ; 2 uses
  %i.s = load i32, ptr @ett_1722_crf_timestamp, align 4
  %i.t = call ptr @proto_item_add_subtree(ptr noundef %i.r, i32 noundef %i.s)
  %i.u = load i32, ptr %i.a, align 4              ; 2 uses
  %i.v = and i32 %i.u, 7
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not48 = icmp ult i32 %i.u, 8
  br i1 %.not48, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.w = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.r, ptr noundef nonnull @ei_crf_datalen) ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.047 = phi i32 [ %i.aa, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %.04546 = phi i32 [ %i.z, %.lr.ph ], [ 20, %.preheader ] ; 2 uses
  %i.x = load i32, ptr @hf_1722_crf_timestamp, align 4
  %i.y = call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.x, ptr noundef %0, i32 noundef %.04546, i32 noundef 8, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.y, ptr noundef nonnull @.str.400, i32 noundef %.047)
  %i.z = add i32 %.04546, 8
  %i.aa = add nuw nsw i32 %.047, 1                ; 2 uses
  %i.ab = load i32, ptr %i.a, align 4
  %i.ac = lshr i32 %i.ab, 3
  %i.ad = icmp samesign ult i32 %i.aa, %i.ac
  br i1 %i.ad, label %.lr.ph, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.b
  %i.ae = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.ae
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_1722_crf() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @avb1722_crf_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.4, i32 noundef 4, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_1722_ntscf() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218) ; 2 uses
  store i32 %i.a, ptr @proto_1722_ntscf, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_1722_ntscf.hf, i32 noundef 4)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_1722_ntscf.ett, i32 noundef 1)
  %i.b = load i32, ptr @proto_1722_ntscf, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_1722_ntscf.ei, i32 noundef 2)
  %i.d = load i32, ptr @proto_1722_ntscf, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef nonnull @.str.218, ptr noundef nonnull @dissect_1722_ntscf, i32 noundef %i.d)
  store ptr %i.e, ptr @avb1722_ntscf_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_1722_ntscf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4
  %i.b = tail call i32 @tvb_captured_length(ptr noundef %0) ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @col_set_str(ptr noundef %i.d, i32 noundef 35, ptr noundef nonnull @.str.217)
  %i.e = load ptr, ptr %i.c, align 8
  tail call void @col_set_str(ptr noundef %i.e, i32 noundef 25, ptr noundef nonnull @.str.401)
  %i.f = load i32, ptr @proto_1722_ntscf, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 3 uses
  %i.h = load i32, ptr @ett_1722_ntscf, align 4
  %i.i = tail call ptr @proto_item_add_subtree(ptr noundef %i.g, i32 noundef %i.h) ; 4 uses
  %i.j = icmp ult i32 %i.b, 12
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.g, ptr noundef nonnull @ei_1722_ntscf_no_space_for_header) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.i, ptr noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @dissect_1722_ntscf.fields, i32 noundef 0)
  %i.l = load i32, ptr @hf_1722_ntscf_data_length, align 4
  %i.m = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.i, i32 noundef %i.l, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.n = load i32, ptr @hf_1722_ntscf_seqnum, align 4
  %i.o = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.n, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_1722_ntscf_stream_id, align 4
  %i.q = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.p, ptr noundef %0, i32 noundef 4, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.r = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef 12) ; 4 uses
  %i.s = icmp slt i32 %i.r, 0
  %i.t = load i32, ptr %i.a, align 4              ; 2 uses
  %i.u = icmp sgt i32 %i.t, %i.r
  %or.cond = select i1 %i.s, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %4 = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.m, ptr noundef nonnull @ei_1722_ntscf_invalid_data_length) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4             ; 2 uses
  %i.v = icmp sgt i32 %.pre, %i.r
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = call i32 @llvm.smax.i32(i32 %i.r, i32 0) ; 2 uses
  store i32 %i.w, ptr %i.a, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.pr = phi i32 [ %i.w, %bb.e ], [ %.pre, %bb.d ], [ %i.t, %bb.c ] ; 2 uses
  %.not61 = icmp eq i32 %.pr, 0
  br i1 %.not61, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.05062 = phi i32 [ %i.ad, %bb.g ], [ 12, %bb.f ] ; 3 uses
  %i.x = phi i32 [ %storemerge, %bb.g ], [ %.pr, %bb.f ]
  %i.y = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.05062, i32 noundef %i.x) ; 2 uses
  %i.z = load ptr, ptr @avb1722_acf_handle, align 8
  %i.aa = call i32 @call_dissector(ptr noundef %i.z, ptr noundef %i.y, ptr noundef %1, ptr noundef %2)
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ac = call i32 @tvb_reported_length(ptr noundef %i.y) ; 3 uses
  %i.ad = add i32 %i.ac, %.05062                  ; 2 uses
  %i.ae = load i32, ptr %i.a, align 4             ; 2 uses
  %storemerge = call i32 @llvm.usub.sat.i32(i32 %i.ae, i32 %i.ac) ; 2 uses
  store i32 %storemerge, ptr %i.a, align 4
  %.not.not = icmp ugt i32 %i.ae, %i.ac
  br i1 %.not.not, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.g, %.lr.ph, %bb.f
  %.050.lcssa = phi i32 [ 12, %bb.f ], [ %.05062, %.lr.ph ], [ %i.ad, %bb.g ] ; 2 uses
  call void @set_actual_length(ptr noundef %0, i32 noundef %.050.lcssa)
  call void @proto_item_set_len(ptr noundef %i.g, i32 noundef %.050.lcssa)
  %i.af = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.b
  %.051 = phi i32 [ %i.b, %bb.b ], [ %i.af, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.051
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_1722_ntscf() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @avb1722_ntscf_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.4, i32 noundef 130, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_1722_tscf() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.237) ; 2 uses
  store i32 %i.a, ptr @proto_1722_tscf, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_1722_tscf.hf, i32 noundef 11)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_1722_tscf.ett, i32 noundef 3)
  %i.b = load i32, ptr @proto_1722_tscf, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_1722_tscf.ei, i32 noundef 2)
  %i.d = load i32, ptr @proto_1722_tscf, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef nonnull @.str.237, ptr noundef nonnull @dissect_1722_tscf, i32 noundef %i.d)
  store ptr %i.e, ptr @avb1722_tscf_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_1722_tscf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store i32 0, ptr %i.e, align 4
  %i.f = tail call i32 @tvb_captured_length(ptr noundef %0) ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @col_set_str(ptr noundef %i.h, i32 noundef 35, ptr noundef nonnull @.str.236)
  %i.i = load ptr, ptr %i.g, align 8
  tail call void @col_set_str(ptr noundef %i.i, i32 noundef 25, ptr noundef nonnull @.str.402)
  %i.j = load i32, ptr @proto_1722_tscf, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 3 uses
  %i.l = load i32, ptr @ett_1722_tscf, align 4
  %i.m = tail call ptr @proto_item_add_subtree(ptr noundef %i.k, i32 noundef %i.l) ; 8 uses
  %i.n = icmp ult i32 %i.f, 24
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.k, ptr noundef nonnull @ei_1722_tscf_no_space_for_header) ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.p = load i32, ptr @ett_1722_tscf_flags, align 4
  %i.q = call ptr @proto_tree_add_subtree(ptr noundef %i.m, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.250) ; 3 uses
  %i.r = load i32, ptr @hf_1722_tscf_mr, align 4
  %i.s = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.q, i32 noundef %i.r, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.t = load i32, ptr @hf_1722_tscf_rsv1, align 4
  %i.u = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.t, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_1722_tscf_tv, align 4
  %i.w = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.q, i32 noundef %i.v, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = load i32, ptr %i.b, align 4
  %i.z = load i32, ptr %i.c, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.x, ptr noundef nonnull @.str.403, i32 noundef %i.y, i32 noundef %i.z)
  %i.aa = load i32, ptr @hf_1722_tscf_seqnum, align 4
  %i.ab = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.aa, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ac = load i32, ptr @ett_1722_tscf_tu, align 4
  %i.ad = call ptr @proto_tree_add_subtree(ptr noundef %i.m, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef %i.ac, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.29) ; 2 uses
  %i.ae = load i32, ptr @hf_1722_tscf_rsv2, align 4
  %i.af = call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.ae, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ag = load i32, ptr @hf_1722_tscf_tu, align 4
  %i.ah = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ad, i32 noundef %i.ag, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = load i32, ptr %i.d, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ai, ptr noundef nonnull @.str.404, i32 noundef %i.aj)
  %i.ak = load i32, ptr @hf_1722_tscf_stream_id, align 4
  %i.al = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ak, ptr noundef %0, i32 noundef 4, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.am = load i32, ptr @hf_1722_tscf_avtp_timestamp, align 4
  %i.an = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.am, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ao = load i32, ptr @hf_1722_tscf_rsv3, align 4
  %i.ap = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ao, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aq = load i32, ptr @hf_1722_tscf_data_length, align 4
  %i.ar = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.m, i32 noundef %i.aq, ptr noundef %0, i32 noundef 20, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.e)
  store ptr %i.ar, ptr %i.a, align 8
  %i.as = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef 20) ; 4 uses
  %i.at = icmp slt i32 %i.as, 0
  %i.au = load i32, ptr %i.e, align 4
  %i.av = icmp sgt i32 %i.au, %i.as
  %or.cond = select i1 %i.at, i1 true, i1 %i.av
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aw = load ptr, ptr %i.a, align 8
  %i.ax = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.aw, ptr noundef nonnull @ei_1722_tscf_invalid_data_length) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ay = load i32, ptr @hf_1722_tscf_rsv4, align 4
  %i.az = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ay, ptr noundef %0, i32 noundef 22, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ba = load i32, ptr %i.e, align 4             ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, %i.as
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = call i32 @llvm.smax.i32(i32 %i.as, i32 0) ; 2 uses
  store i32 %i.bc, ptr %i.e, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pr = phi i32 [ %i.bc, %bb.f ], [ %i.ba, %bb.e ] ; 2 uses
  %.not91 = icmp eq i32 %.pr, 0
  br i1 %.not91, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.08192 = phi i32 [ %i.bj, %bb.h ], [ 24, %bb.g ] ; 3 uses
  %i.bd = phi i32 [ %storemerge, %bb.h ], [ %.pr, %bb.g ]
  %i.be = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.08192, i32 noundef %i.bd) ; 2 uses
  %i.bf = load ptr, ptr @avb1722_acf_handle, align 8
  %i.bg = call i32 @call_dissector(ptr noundef %i.bf, ptr noundef %i.be, ptr noundef %1, ptr noundef %2)
  %i.bh = icmp slt i32 %i.bg, 1
  br i1 %i.bh, label %.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bi = call i32 @tvb_reported_length(ptr noundef %i.be) ; 3 uses
  %i.bj = add i32 %i.bi, %.08192                  ; 2 uses
  %i.bk = load i32, ptr %i.e, align 4             ; 2 uses
  %storemerge = call i32 @llvm.usub.sat.i32(i32 %i.bk, i32 %i.bi) ; 2 uses
  store i32 %storemerge, ptr %i.e, align 4
  %.not.not = icmp ugt i32 %i.bk, %i.bi
  br i1 %.not.not, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.h, %.lr.ph, %bb.g
  %.081.lcssa = phi i32 [ 24, %bb.g ], [ %.08192, %.lr.ph ], [ %i.bj, %bb.h ] ; 2 uses
  call void @set_actual_length(ptr noundef %0, i32 noundef %.081.lcssa)
  call void @proto_item_set_len(ptr noundef %i.k, i32 noundef %.081.lcssa)
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.f
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_1722_tscf() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @avb1722_tscf_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.4, i32 noundef 5, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_1722_acf() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.248) ; 2 uses
  store i32 %i.a, ptr @proto_1722_acf, align 4
  %i.b = tail call ptr @register_dissector(ptr noundef nonnull @.str.248, ptr noundef nonnull @dissect_1722_acf, i32 noundef %i.a)
  store ptr %i.b, ptr @avb1722_acf_handle, align 8
  %i.c = load i32, ptr @proto_1722_acf, align 4
end_hunk_0
