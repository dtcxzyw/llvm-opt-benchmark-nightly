Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-s7comm?download=true
inline.NumInlined: 30
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@s7comm_decode_pi_service:bb.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @s7comm_decode_plc_controls_param_hex29(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 10, 13) %2) unnamed_addr #0 {
bb.a:
  %i.a = add nuw nsw i32 %2, 1
  %i.b = load i32, ptr @hf_s7comm_piservice_unknown1, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef %i.a, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.d = add nuw nsw i32 %2, 6                    ; 2 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.d)
  %i.f = load i32, ptr @hf_s7comm_data_plccontrol_part2_len, align 4
  %i.g = zext i8 %i.e to i32                      ; 2 uses
  %i.h = tail call ptr @proto_tree_add_uint(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.d, i32 noundef 1, i32 noundef %i.g) ; 0 uses
  %i.i = add nuw nsw i32 %2, 7
  %i.j = load i32, ptr @hf_s7comm_piservice_servicename, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.i, i32 noundef %i.g, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @s7comm_decode_response_write_data(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef range(i32 12, 15) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 416
  %wide.trip.count = zext i8 %3 to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i32 [ 0, %.lr.ph ], [ %i.g, %bb.b ]
  %.01820 = phi i32 [ %4, %.lr.ph ], [ %i.m, %bb.b ] ; 4 uses
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.01820)
  %i.c = load i32, ptr @hf_s7comm_data_item, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef %.01820, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.e = load i32, ptr @ett_s7comm_data_item, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e)
  %i.g = add nuw nsw i32 %indvars.iv, 1           ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = zext i8 %i.b to i32                      ; 2 uses
  %i.j = tail call ptr @val_to_str(ptr noundef %i.h, i32 noundef %i.i, ptr noundef nonnull @s7comm_item_return_valuenames, ptr noundef nonnull @.str.2173)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.d, ptr noundef nonnull @.str.2172, i32 noundef %i.g, ptr noundef %i.j)
  %i.k = load i32, ptr @hf_s7comm_data_returncode, align 4
  %i.l = tail call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.k, ptr noundef %0, i32 noundef %.01820, i32 noundef 1, i32 noundef %i.i) ; 0 uses
  %i.m = add nuw nsw i32 %.01820, 1
  %exitcond.not = icmp eq i32 %i.g, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 19, 277) i32 @s7comm_decode_plc_controls_filename(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 18, 21) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3) ; 2 uses
  %i.d = load i32, ptr @hf_s7comm_data_blockcontrol_filename_len, align 4
  %i.e = zext i8 %i.c to i32                      ; 4 uses
  %i.f = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.e) ; 0 uses
  %i.g = add nuw nsw i32 %3, 1                    ; 6 uses
  %i.h = load i32, ptr @hf_s7comm_data_blockcontrol_filename, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.g, i32 noundef %i.e, i32 noundef 0)
  %i.j = icmp eq i8 %i.c, 9
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = add nuw nsw i32 %3, 2                    ; 2 uses
  %i.l = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.k) ; 2 uses
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.g)
  %i.n = icmp eq i8 %i.m, 95
  %i.o = add i16 %i.l, -12344
  %i.p = icmp ult i16 %i.o, 15
  %or.cond5 = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond5, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.q = zext nneg i16 %i.l to i32                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 1, ptr %i.b, align 4
  %i.r = load i32, ptr @ett_s7comm_plcfilename, align 4
  %i.s = tail call ptr @proto_item_add_subtree(ptr noundef %i.i, i32 noundef %i.r) ; 8 uses
  %i.t = load i32, ptr @hf_s7comm_data_blockcontrol_file_ident, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.g, i32 noundef 1, i32 noundef 0)
  %i.v = getelementptr i8, ptr %1, i64 416        ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.g)
  %i.y = zext i8 %i.x to i32
  %i.z = tail call ptr @val_to_str(ptr noundef %i.w, i32 noundef %i.y, ptr noundef nonnull @blocktype_attribute1_names, ptr noundef nonnull @.str.2175)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.u, ptr noundef nonnull @.str.2174, ptr noundef %i.z)
  %i.aa = load i32, ptr @hf_s7comm_data_blockcontrol_block_type, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.k, i32 noundef 2, i32 noundef 0)
  %i.ac = load ptr, ptr %i.v, align 8
  %i.ad = tail call ptr @val_to_str(ptr noundef %i.ac, i32 noundef %i.q, ptr noundef nonnull @blocktype_names, ptr noundef nonnull @.str.2176)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ab, ptr noundef nonnull @.str.2174, ptr noundef %i.ad)
  %i.ae = add nuw nsw i32 %3, 4
  %i.af = load i32, ptr @hf_s7comm_data_blockcontrol_block_num, align 4
  %i.ag = load ptr, ptr %i.v, align 8
  %i.ah = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.s, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.ae, i32 noundef 5, i32 noundef 0, ptr noundef %i.ag, ptr noundef nonnull %i.a) ; 0 uses
  %i.ai = add nuw nsw i32 %3, 9                   ; 2 uses
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = call zeroext i1 @ws_strtoi32(ptr noundef %i.aj, ptr noundef null, ptr noundef nonnull %i.b)
  %i.al = load ptr, ptr %i.v, align 8
  %i.am = call ptr @val_to_str(ptr noundef %i.al, i32 noundef %i.q, ptr noundef nonnull @blocktype_names, ptr noundef nonnull @.str.2176)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.s, ptr noundef nonnull @.str.2177, ptr noundef %i.am)
  %i.an = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = load ptr, ptr %i.v, align 8
  %i.aq = call ptr @val_to_str(ptr noundef %i.ap, i32 noundef %i.q, ptr noundef nonnull @blocktype_names, ptr noundef nonnull @.str.2176)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ao, i32 noundef 25, ptr noundef nonnull @.str.2178, ptr noundef %i.aq)
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = load i32, ptr %i.b, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.s, ptr noundef nonnull @.str.2179, i32 noundef %i.ar)
  %i.as = load ptr, ptr %i.an, align 8
  %i.at = load i32, ptr %i.b, align 4
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.as, i32 noundef 25, ptr noundef nonnull @.str.2179, i32 noundef %i.at)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.au = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.s, ptr noundef nonnull @ei_s7comm_data_blockcontrol_block_num_invalid) ; 0 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.s, ptr noundef nonnull @.str.2180)
  %i.av = load ptr, ptr %i.an, align 8
  call void @col_append_str(ptr noundef %i.av, i32 noundef 25, ptr noundef nonnull @.str.2180)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aw = load i32, ptr @hf_s7comm_data_blockcontrol_dest_filesys, align 4
  %i.ax = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.ai, i32 noundef 1, i32 noundef 0)
  %i.ay = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ai)
  %i.az = zext i8 %i.ay to i32
  %i.ba = call ptr @val_to_str_const(i32 noundef %i.az, ptr noundef nonnull @blocktype_attribute2_names, ptr noundef nonnull @.str.2181)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ax, ptr noundef nonnull @.str.2174, ptr noundef %i.ba)
  %i.bb = add nuw nsw i32 %3, 10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.bc = getelementptr i8, ptr %1, i64 416
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call ptr @tvb_get_string_enc(ptr noundef %i.bd, ptr noundef %0, i32 noundef %i.g, i32 noundef %i.e, i32 noundef 0)
  %i.bf = getelementptr i8, ptr %1, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.bg, i32 noundef 25, ptr noundef nonnull @.str.2182, ptr noundef %i.be)
  %i.bh = add nuw nsw i32 %i.g, %i.e
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.1 = phi i32 [ %i.bh, %bb.g ], [ %i.bb, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtoi32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_string_enc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dissector_try_heuristic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @try_str_to_str_idx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @s7comm_decode_pistart_parameters(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext range(i8 1, 14) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef range(i32 20, 23) %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 416        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @wmem_strbuf_new(ptr noundef %i.b, ptr noundef nonnull @.str.2126) ; 6 uses
  %i.d = zext nneg i8 %5 to i64
  %i.e = add nuw nsw i64 %i.d, 4294967295
  %zext = and i64 %i.e, 4294967295
  %wide.trip.count = zext nneg i8 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.03841 = phi i32 [ %7, %bb.a ], [ %i.r, %bb.b ] ; 3 uses
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.03841)
  %i.g = load i32, ptr @hf_s7comm_piservice_string_len, align 4
  %i.h = zext i8 %i.f to i32                      ; 4 uses
  %i.i = tail call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %i.g, ptr noundef %0, i32 noundef %.03841, i32 noundef 1, i32 noundef %i.h) ; 0 uses
  %i.j = add i32 %.03841, 1                       ; 3 uses
  %i.k = getelementptr [4 x i8], ptr %6, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.j, i32 noundef %i.h, i32 noundef 0) ; 0 uses
  tail call void @wmem_strbuf_append(ptr noundef %i.c, ptr noundef nonnull @.str.2341)
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = tail call ptr @tvb_format_text(ptr noundef %i.n, ptr noundef %0, i32 noundef %i.j, i32 noundef %i.h)
  tail call void @wmem_strbuf_append(ptr noundef %i.c, ptr noundef %i.o)
  %i.p = icmp samesign ult i64 %indvars.iv, %zext
  %.str.2342..str.2341 = select i1 %i.p, ptr @.str.2342, ptr @.str.2341
  tail call void @wmem_strbuf_append(ptr noundef %i.c, ptr noundef nonnull %.str.2342..str.2341)
  %i.q = or i32 %i.h, 1
  %i.r = add i32 %i.q, %i.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !18

bb.c:                                             ; preds = %bb.b
  %i.s = tail call ptr @wmem_strbuf_get_str(ptr noundef %i.c)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %3, ptr noundef nonnull @.str.2129, ptr noundef %i.s)
  %i.t = tail call ptr @wmem_strbuf_get_str(ptr noundef %i.c)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef nonnull @.str.2343, ptr noundef %4, ptr noundef %i.t)
  %i.u = getelementptr i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call ptr @wmem_strbuf_get_str(ptr noundef %i.c)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.v, i32 noundef 25, ptr noundef nonnull @.str.2343, ptr noundef %4, ptr noundef %i.w)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_format_text(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_get_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_add_seq_next(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @process_reassembled_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @s7comm_decode_ud_tis_subfunc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i8 noundef zeroext range(i8 0, 4) %3, i8 noundef zeroext %4, i32 noundef range(i32 0, 65560) %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %5)
  %i.b = load i32, ptr @hf_s7comm_tis_parametersize, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %5, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.d = add nuw nsw i32 %5, 2                    ; 2 uses
  %i.e = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.d)
  %i.f = load i32, ptr @hf_s7comm_tis_datasize, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.d, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.h = add nuw nsw i32 %5, 4
  %i.i = tail call fastcc i32 @s7comm_decode_ud_tis_param(ptr noundef %0, ptr noundef %2, i8 noundef zeroext %3, i16 noundef zeroext %i.a, i32 noundef %i.h)
  %i.j = tail call fastcc i32 @s7comm_decode_ud_tis_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i16 noundef zeroext %i.e, i32 noundef %i.i)
  ret i32 %i.j
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @s7comm_decode_ud_cyclic_subfunc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext %2, ptr noundef %3, i8 noundef zeroext range(i8 0, 4) %4, i8 noundef zeroext %5, i32 noundef range(i32 1, 0) %6, i32 noundef range(i32 0, 65560) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  switch i8 %5, label %bb.x [
    i8 7, label %bb.b
    i8 1, label %bb.d
    i8 5, label %bb.d
    i8 4, label %bb.i
    i8 8, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %4, 1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = zext i8 %2 to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.f, i32 noundef 25, ptr noundef nonnull @.str.2403, i32 noundef %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.a
  %i.h = add nuw nsw i32 %7, 1
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.h) ; 3 uses
  %i.j = load i32, ptr @hf_s7comm_param_itemcount, align 4
  %i.k = zext i8 %i.i to i32                      ; 3 uses
  %i.l = tail call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %i.j, ptr noundef %0, i32 noundef %7, i32 noundef 2, i32 noundef %i.k) ; 0 uses
  %i.m = add nuw nsw i32 %7, 2                    ; 3 uses
  %i.n = icmp eq i8 %4, 1
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr @hf_s7comm_cycl_interval_timebase, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.o, ptr noundef %0, i32 noundef %i.m, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = add nuw nsw i32 %7, 3
  %i.r = load i32, ptr @hf_s7comm_cycl_interval_time, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.r, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = add nuw nsw i32 %7, 4                    ; 2 uses
  %.not89 = icmp eq i8 %i.i, 0
  br i1 %.not89, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.u = add nsw i32 %i.k, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i32 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.07887 = phi i32 [ %i.t, %.lr.ph ], [ %.1, %bb.f ] ; 2 uses
  %i.v = trunc nuw i32 %indvars.iv to i8
  %i.w = tail call fastcc i32 @s7comm_decode_param_item(ptr noundef %0, ptr noundef %1, i32 noundef %.07887, ptr noundef %3, i8 noundef zeroext %i.v) ; 2 uses
  %i.x = sub i32 %i.w, %.07887
  %.not = trunc i32 %i.x to i1
  %i.y = icmp samesign ugt i32 %i.u, %indvars.iv
  %or.cond85 = select i1 %.not, i1 %i.y, i1 false
  %i.z = zext i1 %or.cond85 to i32
  %.1 = add i32 %i.w, %i.z                        ; 2 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %.thread, label %bb.f, !llvm.loop !19

bb.g:                                             ; preds = %bb.d
  %i.aa = and i8 %4, 1
  %or.cond = icmp eq i8 %i.aa, 0
  br i1 %or.cond, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = zext i8 %2 to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ac, i32 noundef 25, ptr noundef nonnull @.str.2403, i32 noundef %i.ad)
  %i.ae = tail call fastcc i32 @s7comm_decode_response_read_data(ptr noundef %0, ptr noundef %1, ptr noundef %3, i8 noundef zeroext %i.i, i32 noundef %i.m)
  br label %.thread

bb.i:                                             ; preds = %bb.a
  switch i8 %4, label %bb.x [
    i8 1, label %bb.j
    i8 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr @hf_s7comm_cycl_function, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.af, ptr noundef %0, i32 noundef %7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ah = add nuw nsw i32 %7, 1                   ; 2 uses
  %i.ai = load i32, ptr @hf_s7comm_cycl_jobid, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.ah, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ak = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ah)
  %i.al = getelementptr i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = zext i8 %i.ak to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.am, i32 noundef 25, ptr noundef nonnull @.str.2403, i32 noundef %i.an)
  %i.ao = add nuw nsw i32 %7, 2
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = zext i8 %2 to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.aq, i32 noundef 25, ptr noundef nonnull @.str.2403, i32 noundef %i.ar)
  br label %bb.x

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  switch i8 %4, label %s7comm_decode_ud_readrec.exit [
    i8 1, label %bb.m
    i8 2, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.as = load i32, ptr @hf_s7comm_rdrec_reserved1, align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.as, ptr noundef %0, i32 noundef range(i32 0, 65560) %7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.au = add nuw nsw i32 %7, 1                   ; 2 uses
  %i.av = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.au) ; 2 uses
  %i.aw = load i32, ptr @hf_s7comm_param_itemcount, align 4
  %i.ax = zext i8 %i.av to i32
  %i.ay = tail call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.au, i32 noundef 1, i32 noundef %i.ax) ; 0 uses
  %i.az = add nuw nsw i32 %7, 2                   ; 2 uses
  %.not60.i = icmp eq i8 %i.av, 0
  br i1 %.not60.i, label %s7comm_decode_ud_readrec.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = tail call fastcc i32 @s7comm_decode_param_item(ptr noundef %0, ptr noundef readonly %1, i32 noundef %i.az, ptr noundef %3, i8 noundef zeroext 0)
  br label %s7comm_decode_ud_readrec.exit

bb.o:                                             ; preds = %bb.l
  %i.bb = load i32, ptr @hf_s7comm_rdrec_reserved1, align 4
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bb, ptr noundef %0, i32 noundef range(i32 0, 65560) %7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bd = add nuw nsw i32 %7, 1                   ; 2 uses
  %i.be = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bd) ; 2 uses
  %i.bf = load i32, ptr @hf_s7comm_param_itemcount, align 4
  %i.bg = zext i8 %i.be to i32
  %i.bh = tail call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %i.bf, ptr noundef %0, i32 noundef %i.bd, i32 noundef 1, i32 noundef %i.bg) ; 0 uses
  %i.bi = add nuw nsw i32 %7, 2                   ; 2 uses
  %.not.i = icmp eq i8 %i.be, 0
  br i1 %.not.i, label %s7comm_decode_ud_readrec.exit, label %bb.p
end_hunk_0
