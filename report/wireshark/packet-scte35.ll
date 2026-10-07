Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-scte35?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
begin_hunk_0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_scte35_time_signal() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
  store i32 %i.a, ptr @proto_scte35_time, align 4
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_scte35_time_signal.ett, i32 noundef 2)
  %i.b = load i32, ptr @proto_scte35_time, align 4
  tail call void @proto_register_field_array(i32 noundef %i.b, ptr noundef nonnull @proto_register_scte35_time_signal.hf, i32 noundef 3)
  %i.c = load i32, ptr @proto_scte35_time, align 4
  %i.d = tail call ptr @register_dissector(ptr noundef nonnull @.str.8, ptr noundef nonnull @dissect_scte35_time_signal, i32 noundef %i.c)
  store ptr %i.d, ptr @scte35_time_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 6) i32 @dissect_scte35_time_signal(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %.not = icmp slt i8 %i.c, 0                     ; 3 uses
  %i.d = icmp samesign ult i32 %i.a, 5
  %spec.select = select i1 %.not, i1 %i.d, i1 false
  br i1 %spec.select, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = select i1 %.not, ptr @.str.174, ptr @.str.175
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.f, i32 noundef 25, ptr noundef nonnull @.str.173, ptr noundef nonnull %i.g)
  %i.h = load i32, ptr @proto_scte35_time, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.j = load i32, ptr @ett_scte35_time_signal, align 4
  %i.k = tail call ptr @proto_item_add_subtree(ptr noundef %i.i, i32 noundef %i.j) ; 3 uses
  %i.l = load i32, ptr @hf_time_specified, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_time_reserved, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.n, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr @hf_time_pts, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.p, ptr noundef %0, i32 noundef 0, i32 noundef 5, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.028 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 5, %bb.d ], [ 1, %bb.c ]
  ret i32 %.028
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_scte35_time_signal() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @scte35_time_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.9, i32 noundef 6, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_scte35_private_command() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16)
  store i32 %i.a, ptr @proto_private_command, align 4
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_scte35_private_command.ett, i32 noundef 1)
  %i.b = load i32, ptr @proto_private_command, align 4
  tail call void @proto_register_field_array(i32 noundef %i.b, ptr noundef nonnull @proto_register_scte35_private_command.hf, i32 noundef 2)
  %i.c = load i32, ptr @proto_private_command, align 4
  %i.d = tail call ptr @register_dissector_table(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.17, i32 noundef %i.c, i32 noundef 7, i32 noundef 2)
  store ptr %i.d, ptr @private_identifier_table, align 8
  %i.e = load i32, ptr @proto_private_command, align 4
  %i.f = tail call ptr @register_dissector(ptr noundef nonnull @.str.16, ptr noundef nonnull @dissect_scte35_private_command, i32 noundef %i.e)
  store ptr %i.f, ptr @scte35_private_command_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, -2147483648) i32 @dissect_scte35_private_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %i.c = icmp slt i32 %i.b, 4
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @proto_private_command, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.f = load i32, ptr @ett_private_command, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 2 uses
  %i.h = load i32, ptr @hf_identifier, align 4
  %i.i = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i32, ptr %i.a, align 4
  call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.k, i32 noundef 25, ptr noundef nonnull @.str.176, i32 noundef %i.l)
  %i.m = load i32, ptr @hf_private_byte, align 4
  %i.n = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.m, ptr noundef %0, i32 noundef 4, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.o = load ptr, ptr @private_identifier_table, align 8
  %i.p = load i32, ptr %i.a, align 4
  %i.q = call i32 @dissector_try_uint(ptr noundef %i.o, i32 noundef %i.p, ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_scte35_private_command() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @scte35_private_command_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.9, i32 noundef 255, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_scte35_splice_insert() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55)
  store i32 %i.a, ptr @proto_scte35_si, align 4
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_scte35_splice_insert.ett, i32 noundef 1)
  %i.b = load i32, ptr @proto_scte35_si, align 4
  tail call void @proto_register_field_array(i32 noundef %i.b, ptr noundef nonnull @proto_register_scte35_splice_insert.hf, i32 noundef 22)
  %i.c = load i32, ptr @proto_scte35_si, align 4
  %i.d = tail call ptr @register_dissector(ptr noundef nonnull @.str.55, ptr noundef nonnull @dissect_scte35_splice_insert, i32 noundef %i.c)
  store ptr %i.d, ptr @scte35_si_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_scte35_splice_insert(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.c = tail call i32 @tvb_reported_length(ptr noundef %0) ; 7 uses
  %i.d = icmp slt i32 %i.c, 5
  br i1 %i.d, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.f = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 0)
  %.not = icmp sgt i8 %i.e, -1                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i32 %i.c, 10
  br i1 %i.g, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ @.str.178, %bb.b ], [ @.str.179, %bb.c ]
  %.0123 = phi i32 [ 5, %bb.b ], [ 10, %bb.c ]    ; 6 uses
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.j, i32 noundef 25, ptr noundef nonnull @.str.177, ptr noundef nonnull %i.h, i32 noundef %i.f)
  %i.k = load i32, ptr @proto_scte35_si, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.m = load i32, ptr @ett_scte35_splice_insert, align 4
  %i.n = tail call ptr @proto_item_add_subtree(ptr noundef %i.l, i32 noundef %i.m) ; 14 uses
  %i.o = load i32, ptr @hf_splice_insert_event_id, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.o, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_splice_cancel_indicator, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.q, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @hf_reserved0, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.s, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  br i1 %.not, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.u = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  %i.v = and i8 %i.u, 64
  %i.w = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  %i.x = and i8 %i.w, 32
  %i.y = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  %.fr153 = freeze i8 %i.y
  %i.z = and i8 %.fr153, 16
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.n, ptr noundef %0, i32 noundef 5, i32 noundef 1, ptr noundef nonnull @dissect_scte35_splice_insert.new_event_fields, i32 noundef 0)
  %i.aa = icmp eq i8 %i.v, 0                      ; 2 uses
  %i.ab = icmp ne i8 %i.z, 0                      ; 4 uses
  %or.cond = or i1 %i.aa, %i.ab
  br i1 %or.cond, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not135 = icmp samesign ugt i32 %i.c, %.0123
  br i1 %.not135, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.ac = add nuw nsw i32 %.0123, 1
  %i.ad = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef 48, i32 noundef 1)
  %.not136 = icmp eq i8 %i.ad, 0                  ; 2 uses
  %i.ae = select i1 %.not136, i32 1, i32 5
  %i.af = call ptr @proto_tree_add_subtree(ptr noundef %i.n, ptr noundef %0, i32 noundef 6, i32 noundef %i.ae, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.180) ; 0 uses
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = load i32, ptr @hf_splice_time_specified_flag, align 4
  %i.ai = call ptr @proto_tree_add_item(ptr noundef %i.ag, i32 noundef %i.ah, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aj = load ptr, ptr %i.b, align 8
  %i.ak = load i32, ptr @hf_splice_time_reserved, align 4
  %i.al = call ptr @proto_tree_add_item(ptr noundef %i.aj, i32 noundef %i.ak, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  br i1 %.not136, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = add nuw nsw i32 %.0123, 5               ; 2 uses
  %i.an = icmp samesign ult i32 %i.c, %i.am
  br i1 %i.an, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.b, align 8
  %i.ap = load i32, ptr @hf_splice_time_pts_time, align 4
  %i.aq = call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.ap, ptr noundef %0, i32 noundef 6, i32 noundef 5, i32 noundef 0) ; 0 uses
  br label %.thread

bb.j:                                             ; preds = %bb.e
  br i1 %i.aa, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %.not139 = icmp samesign ugt i32 %i.c, %.0123
  br i1 %.not139, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ar = add nuw nsw i32 %.0123, 1
  %i.as = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 6) ; 2 uses
  %i.at = load i32, ptr @hf_component_count, align 4
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.at, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.av = zext i8 %i.as to i32                    ; 3 uses
  %.not160 = xor i1 %i.ab, true
  %i.aw = zext i1 %.not160 to i32
  %i.ax = shl nuw nsw i32 %i.av, %i.aw
  %i.ay = add nuw nsw i32 %i.ar, %i.ax            ; 4 uses
  %i.az = icmp samesign ult i32 %i.c, %i.ay
  br i1 %i.az, label %bb.u, label %.preheader

.preheader:                                       ; preds = %bb.l
  %.not152 = icmp eq i8 %i.as, 0
  br i1 %.not152, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %4 = select i1 %i.ab, i32 1, i32 2              ; 2 uses
  br i1 %i.ab, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.q
  %.2148.us = phi i32 [ %i.bu, %bb.q ], [ 7, %.lr.ph ] ; 4 uses
  %.0122147.us = phi i32 [ %i.bv, %bb.q ], [ 0, %.lr.ph ] ; 3 uses
  %i.ba = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.2148.us) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.bb = call i32 @tvb_reported_length(ptr noundef %i.ba) ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %4
  br i1 %i.bc, label %dissect_component.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us
  %i.bd = call zeroext i8 @tvb_get_uint8(ptr noundef %i.ba, i32 noundef 1)
  %.not43.i.us = icmp sgt i8 %i.bd, -1            ; 2 uses
  br i1 %.not43.i.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = icmp samesign ult i32 %i.bb, 6
  br i1 %i.be, label %dissect_component.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i.us = phi i32 [ 2, %bb.m ], [ 6, %bb.n ]
  %i.bf = call zeroext i8 @tvb_get_uint8(ptr noundef %i.ba, i32 noundef 0)
  %i.bg = zext i8 %i.bf to i32
  %i.bh = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.n, ptr noundef %i.ba, i32 noundef 0, i32 noundef %.0.i.us, i32 noundef range(i32 -2147483648, 255) %.0122147.us, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.181, i32 noundef range(i32 -2147483648, 255) %.0122147.us, i32 noundef %i.bg) ; 0 uses
  %i.bi = load ptr, ptr %i.a, align 8
  %i.bj = load i32, ptr @hf_component_tag, align 4
  %i.bk = call ptr @proto_tree_add_item(ptr noundef %i.bi, i32 noundef %i.bj, ptr noundef %i.ba, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bl = load ptr, ptr %i.a, align 8
  %i.bm = load i32, ptr @hf_component_splice_time_tsf, align 4
  %i.bn = call ptr @proto_tree_add_item(ptr noundef %i.bl, i32 noundef %i.bm, ptr noundef %i.ba, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bo = load ptr, ptr %i.a, align 8
  %i.bp = load i32, ptr @hf_component_splice_time_reserved, align 4
  %i.bq = call ptr @proto_tree_add_item(ptr noundef %i.bo, i32 noundef %i.bp, ptr noundef %i.ba, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  br i1 %.not43.i.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = load ptr, ptr %i.a, align 8
  %i.bs = load i32, ptr @hf_component_splice_time_pts_time, align 4
  %i.bt = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.bs, ptr noundef %i.ba, i32 noundef 1, i32 noundef 5, i32 noundef 0) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.036.i.ph.us = phi i32 [ 6, %bb.p ], [ 2, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %i.bu = add i32 %.036.i.ph.us, %.2148.us        ; 2 uses
  %i.bv = add nuw nsw i32 %.0122147.us, 1         ; 2 uses
  %exitcond159.not = icmp eq i32 %i.bv, %i.av
  br i1 %exitcond159.not, label %.thread, label %.lr.ph.split.us, !llvm.loop !7

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge.i
  %.2148 = phi i32 [ %i.cf, %.critedge.i ], [ 7, %.lr.ph ] ; 3 uses
  %.0122147 = phi i32 [ %i.cg, %.critedge.i ], [ 0, %.lr.ph ] ; 3 uses
  %i.bw = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.2148) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.bx = call i32 @tvb_reported_length(ptr noundef %i.bw)
  %i.by = icmp slt i32 %i.bx, %4
  br i1 %i.by, label %dissect_component.exit, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.split
  %i.bz = call zeroext i8 @tvb_get_uint8(ptr noundef %i.bw, i32 noundef 0)
  %i.ca = zext i8 %i.bz to i32
  %i.cb = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.n, ptr noundef %i.bw, i32 noundef 0, i32 noundef 1, i32 noundef range(i32 -2147483648, 255) %.0122147, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.181, i32 noundef range(i32 -2147483648, 255) %.0122147, i32 noundef %i.ca) ; 0 uses
  %i.cc = load ptr, ptr %i.a, align 8
  %i.cd = load i32, ptr @hf_component_tag, align 4
  %i.ce = call ptr @proto_tree_add_item(ptr noundef %i.cc, i32 noundef %i.cd, ptr noundef %i.bw, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %i.cf = add nuw nsw i32 %.2148, 1               ; 2 uses
  %i.cg = add nuw nsw i32 %.0122147, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cg, %i.av
  br i1 %exitcond.not, label %.thread, label %.lr.ph.split, !llvm.loop !7

dissect_component.exit:                           ; preds = %.lr.ph.split.us, %bb.n, %.lr.ph.split
  %.us-phi = phi i32 [ %.2148, %.lr.ph.split ], [ %.2148.us, %bb.n ], [ %.2148.us, %.lr.ph.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.u

.thread:                                          ; preds = %bb.q, %.critedge.i, %.preheader, %bb.i, %bb.g, %bb.j
  %.3126 = phi i32 [ %.0123, %bb.j ], [ %i.am, %bb.i ], [ %i.ac, %bb.g ], [ %i.ay, %.preheader ], [ %i.ay, %.critedge.i ], [ %i.ay, %bb.q ]
  %.3 = phi i32 [ 6, %bb.j ], [ 11, %bb.i ], [ 7, %bb.g ], [ 7, %.preheader ], [ %i.cf, %.critedge.i ], [ %i.bu, %bb.q ] ; 6 uses
  %.not141 = icmp eq i8 %i.x, 0
  br i1 %.not141, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.thread
  %i.ch = add nuw nsw i32 %.3126, 5
  %i.ci = icmp slt i32 %i.c, %i.ch
  br i1 %i.ci, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = load i32, ptr @hf_break_duration_auto_return, align 4
  %i.ck = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.cj, ptr noundef %0, i32 noundef %.3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cl = load i32, ptr @hf_break_duration_reserved, align 4
  %i.cm = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.cl, ptr noundef %0, i32 noundef %.3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cn = load i32, ptr @hf_break_duration_duration, align 4
  %i.co = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.cn, ptr noundef %0, i32 noundef %.3, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.cp = add i32 %.3, 5
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread
  %.4 = phi i32 [ %i.cp, %bb.s ], [ %.3, %.thread ] ; 4 uses
  %i.cq = load i32, ptr @hf_unique_program_id, align 4
  %i.cr = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.cq, ptr noundef %0, i32 noundef %.4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cs = add i32 %.4, 2
  %i.ct = load i32, ptr @hf_avail_num, align 4
  %i.cu = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.ct, ptr noundef %0, i32 noundef %i.cs, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cv = add i32 %.4, 3
  %i.cw = load i32, ptr @hf_avails_expected, align 4
  %i.cx = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.cw, ptr noundef %0, i32 noundef %i.cv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cy = add i32 %.4, 4
  br label %bb.u

bb.u:                                             ; preds = %dissect_component.exit, %bb.d, %bb.t, %bb.r, %bb.l, %bb.k, %bb.h, %bb.f, %bb.c, %bb.a
  %.0127 = phi i32 [ 0, %bb.a ], [ %.3, %bb.r ], [ %.us-phi, %dissect_component.exit ], [ 6, %bb.h ], [ 6, %bb.k ], [ 7, %bb.l ], [ 0, %bb.c ], [ 6, %bb.f ], [ 5, %bb.d ], [ %i.cy, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  ret i32 %.0127
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_scte35_splice_insert() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @scte35_si_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.9, i32 noundef 5, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_scte35_splice_schedule() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82)
  store i32 %i.a, ptr @proto_scte35_splice_schedule, align 4
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_scte35_splice_schedule.ett, i32 noundef 1)
  %i.b = load i32, ptr @proto_scte35_splice_schedule, align 4
  tail call void @proto_register_field_array(i32 noundef %i.b, ptr noundef nonnull @proto_register_scte35_splice_schedule.hf, i32 noundef 18)
  %i.c = load i32, ptr @proto_scte35_splice_schedule, align 4
  %i.d = tail call ptr @register_dissector(ptr noundef nonnull @.str.82, ptr noundef nonnull @dissect_scte35_splice_schedule, i32 noundef %i.c)
  store ptr %i.d, ptr @scte35_ss_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_scte35_splice_schedule(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.c = tail call i32 @tvb_reported_length(ptr noundef %0) ; 6 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %.loopexit165, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = mul nuw nsw i32 %i.f, 5                  ; 2 uses
  %.not = icmp samesign ugt i32 %i.c, %i.g
  br i1 %.not, label %bb.c, label %.loopexit165

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.i, i32 noundef 25, ptr noundef nonnull @.str.182, i32 noundef %i.f)
  %i.j = load i32, ptr @proto_scte35_splice_schedule, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.l = load i32, ptr @ett_scte35_splice_schedule, align 4
  %i.m = tail call ptr @proto_item_add_subtree(ptr noundef %i.k, i32 noundef %i.l) ; 14 uses
  %i.n = load i32, ptr @hf_splice_count, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.n, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not181 = icmp eq i8 %i.e, 0
  br i1 %.not181, label %.loopexit165, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.c
  %i.p = add nuw nsw i32 %i.g, 1
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %bb.m
  %.0144170 = phi i32 [ %i.cn, %bb.m ], [ 1, %.lr.ph171.preheader ] ; 9 uses
  %.0148169 = phi i32 [ %i.co, %bb.m ], [ 0, %.lr.ph171.preheader ] ; 3 uses
  %.0150168 = phi i32 [ %.2152, %bb.m ], [ %i.p, %.lr.ph171.preheader ] ; 2 uses
  %i.q = shl i32 %.0144170, 3                     ; 3 uses
  %i.r = add i32 %i.q, 32
  %i.s = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.r, i32 noundef 1)
  %.not160 = icmp eq i8 %i.s, 0                   ; 4 uses
  br i1 %.not160, label %bb.d, label %.thread162

bb.d:                                             ; preds = %.lr.ph171
  %i.t = add i32 %i.q, 41
  %i.u = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.t, i32 noundef 1)
  %.not164 = icmp eq i8 %i.u, 0
  %i.v = add i32 %i.q, 42
  %i.w = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.v, i32 noundef 1)
  %i.x = icmp ne i8 %i.w, 0                       ; 2 uses
  br i1 %.not164, label %bb.e, label %.thread162

bb.e:                                             ; preds = %bb.d
  %i.y = add i32 %.0144170, 6
  %i.z = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.y)
  %i.aa = zext i8 %i.z to i32
  %i.ab = mul nuw nsw i32 %i.aa, 5
  %i.ac = add nuw nsw i32 %i.ab, 1
  br label %.thread162

.thread162:                                       ; preds = %.lr.ph171, %bb.e, %bb.d
  %spec.select = phi i32 [ 10, %bb.d ], [ 10, %bb.e ], [ 5, %.lr.ph171 ] ; 2 uses
  %or.cond7 = phi i1 [ %i.x, %bb.d ], [ %i.x, %bb.e ], [ false, %.lr.ph171 ]
  %i.ad = phi i1 [ true, %bb.d ], [ false, %bb.e ], [ false, %.lr.ph171 ] ; 4 uses
  %i.ae = phi i32 [ 1, %bb.d ], [ %i.ac, %bb.e ], [ 1, %.lr.ph171 ]
  %.not160.not = xor i1 %.not160, true
  %or.cond = and i1 %.not160, %i.ad
  %i.af = add nuw nsw i32 %spec.select, 4
  %.1 = select i1 %or.cond, i32 %i.af, i32 %spec.select
  %or.cond4 = or i1 %i.ad, %.not160.not
  %i.ag = select i1 %or.cond4, i32 0, i32 %i.ae
  %.2 = add nuw nsw i32 %.1, %i.ag                ; 2 uses
  %i.ah = add nuw nsw i32 %.2, 5
  %cond.fr = freeze i1 %or.cond7
  %spec.select190 = select i1 %cond.fr, i32 %i.ah, i32 %.2
  %i.ai = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.m, ptr noundef %0, i32 noundef %.0144170, i32 noundef %spec.select190, i32 noundef %.0148169, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.183, i32 noundef %.0148169) ; 0 uses
  %i.aj = load i32, ptr @hf_splice_event_id, align 4
  %i.ak = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.aj, ptr noundef %0, i32 noundef %.0144170, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.al = add i32 %.0144170, 4                    ; 2 uses
  %i.am = load i32, ptr @hf_splice_event_cancel_indicator, align 4
  %i.an = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.al, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ao = load i32, ptr @hf_splice_reserved0, align 4
  %i.ap = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.al, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aq = add i32 %.0144170, 5                    ; 4 uses
  br i1 %.not160, label %bb.f, label %bb.m

bb.f:                                             ; preds = %.thread162
  %i.ar = add i32 %.0150168, 5                    ; 2 uses
  %i.as = icmp slt i32 %i.c, %i.ar
  br i1 %i.as, label %.loopexit165, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = shl i32 %i.aq, 3
  %i.au = or disjoint i32 %i.at, 2
  %i.av = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.au, i32 noundef 1)
  call void @proto_tree_add_bitmask_list(ptr noundef %i.m, ptr noundef %0, i32 noundef %i.aq, i32 noundef 1, ptr noundef nonnull @dissect_scte35_splice_schedule.splice_event_flags, i32 noundef 0)
  %i.aw = add i32 %.0144170, 6                    ; 4 uses
  %i.ax = select i1 %i.ad, i32 4, i32 1
  %i.ay = add i32 %i.ax, %i.ar                    ; 3 uses
  %i.az = icmp slt i32 %i.c, %i.ay
  br i1 %i.az, label %.loopexit165, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = load i32, ptr @hf_splice_utc_splice_time, align 4
  %i.bb = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ba, ptr noundef %0, i32 noundef %i.aw, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bc = add i32 %.0144170, 10
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bd = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aw) ; 2 uses
  %i.be = load i32, ptr @hf_splice_component_count, align 4
  %i.bf = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.be, ptr noundef %0, i32 noundef %i.aw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bg = add i32 %.0144170, 7                    ; 3 uses
end_hunk_0
