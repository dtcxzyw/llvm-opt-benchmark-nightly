Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ansi_637?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@tele_param_srvc_cat_prog_data:bb.a
bb.e:                                             ; preds = %bb.c
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.f, %bb.e, %bb.d
  %.084 = phi i32 [ 7, %bb.d ], [ 16, %bb.e ], [ 7, %bb.f ], [ 8, %bb.c ], [ 8, %bb.c ], [ 8, %bb.c ], [ 8, %bb.c ], [ 8, %bb.c ], [ 8, %bb.c ] ; 2 uses
  %cond = phi i1 [ false, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.c ]
  %i.i = shl i32 %3, 3
  %i.j = add i32 %i.i, 65531                      ; 3 uses
  %i.k = and i32 %i.j, 65531                      ; 2 uses
  %i.l = icmp samesign ugt i32 %i.k, 7
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.m = or disjoint i32 %i.e, 5
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.08399 = phi i32 [ %.1, %bb.i ], [ %i.j, %.lr.ph.preheader ]
  %.08598 = phi i32 [ %.186, %bb.i ], [ %i.m, %.lr.ph.preheader ] ; 8 uses
  %i.n = load i32, ptr @hf_ansi_637_tele_srvc_cat_prog_data_operation_code, align 4
  %i.o = call ptr @proto_tree_add_bits_item(ptr noundef %2, i32 noundef %i.n, ptr noundef %0, i32 noundef %.08598, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.p = add i32 %.08598, 4
  %i.q = load i32, ptr @hf_ansi_637_tele_srvc_cat_prog_data_category, align 4
  %i.r = call ptr @proto_tree_add_bits_item(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.s = add i32 %.08598, 20
  %i.t = load i32, ptr @hf_ansi_637_tele_srvc_cat_prog_data_language, align 4
  %i.u = call ptr @proto_tree_add_bits_item(ptr noundef %2, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.s, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.v = add i32 %.08598, 28
  %i.w = load i32, ptr @hf_ansi_637_tele_srvc_cat_prog_data_max_messages, align 4
  %i.x = call ptr @proto_tree_add_bits_item(ptr noundef %2, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.v, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.y = add i32 %.08598, 36
  %i.z = load i32, ptr @hf_ansi_637_tele_srvc_cat_prog_data_alert_option, align 4
  %i.aa = call ptr @proto_tree_add_bits_item(ptr noundef %2, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.y, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ab = add i32 %.08598, 40
  %i.ac = load i32, ptr @hf_ansi_637_tele_srvc_cat_prog_data_num_fields, align 4
  %i.ad = call ptr @proto_tree_add_bits_ret_val(ptr noundef %2, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.ab, i32 noundef 8, ptr noundef nonnull %i.b, i32 noundef 0) ; 0 uses
  %i.ae = add i32 %.08598, 48                     ; 3 uses
  %i.af = add i32 %.08399, 65488                  ; 2 uses
  %i.ag = load i64, ptr %i.b, align 8             ; 3 uses
  %.not93 = icmp eq i64 %i.ag, 0
  br i1 %.not93, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ah = and i32 %.08598, 7                      ; 2 uses
  %.not92 = icmp eq i32 %i.ah, 0
  %i.ai = trunc nuw nsw i32 %i.ah to i8
  %i.aj = sub nuw nsw i8 8, %i.ai
  %i.ak = select i1 %.not92, i8 0, i8 %i.aj
  %i.al = lshr i32 %i.ae, 3
  %i.am = load i64, ptr %i.a, align 8
  %i.an = trunc i64 %i.am to i8
  %i.ao = trunc i64 %i.ag to i8
  %i.ap = trunc i64 %i.ag to i32
  %i.aq = and i32 %i.ap, 255
  %i.ar = mul nuw nsw i32 %i.aq, %.084
  %i.as = trunc nuw nsw i32 %i.ar to i16
  %i.at = load i32, ptr @hf_ansi_637_tele_srvc_cat_prog_data_text, align 4
  call fastcc void @text_decoder(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.al, i8 noundef zeroext %i.an, i8 noundef zeroext %i.ao, i16 noundef zeroext %i.as, i8 noundef zeroext %i.ak, i8 noundef zeroext 0, i32 noundef %i.at)
  %i.au = load i64, ptr %i.b, align 8
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.av, 255
  %i.ax = mul nuw nsw i32 %i.aw, %.084            ; 2 uses
  %i.ay = add i32 %i.ax, %i.ae
  %i.az = sub i32 %i.af, %i.ax
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.186 = phi i32 [ %i.ay, %bb.h ], [ %i.ae, %.lr.ph ]
  %.1 = phi i32 [ %i.az, %bb.h ], [ %i.af, %.lr.ph ] ; 3 uses
  %i.ba = and i32 %.1, 65535                      ; 3 uses
  %i.bb = icmp samesign ugt i32 %i.ba, 7
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.i
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.o, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge
  %.lcssa111 = phi i32 [ %i.ba, %._crit_edge ], [ %i.k, %bb.g ] ; 3 uses
  %.083.lcssa110 = phi i32 [ %.1, %._crit_edge ], [ %i.j, %bb.g ]
  br i1 %cond, label %bb.j, label %bb.n

bb.j:                                             ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.bc = icmp samesign ugt i32 %.lcssa111, 3
  %i.bd = add i32 %4, %3
  %i.be = shl i32 %i.bd, 3                        ; 2 uses
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = add i32 %i.be, -11
  %i.bg = trunc i32 %.083.lcssa110 to i8
  %i.bh = add i8 %i.bg, -3
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 %i.bh, ptr %i.bi, align 4
  store i32 8, ptr %.081.sroa.gep, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bj = add i32 %i.be, -3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.081.sroa.phi = phi ptr [ %.081.sroa.gep, %bb.k ], [ %6, %bb.l ] ; 3 uses
  %.0 = phi i32 [ %i.bf, %bb.k ], [ %i.bj, %bb.l ]
  store i32 0, ptr %6, align 16
  %i.bk = getelementptr i8, ptr %.081.sroa.phi, i64 4
  store i8 3, ptr %i.bk, align 4
  %i.bl = getelementptr i8, ptr %.081.sroa.phi, i64 8
  store i32 0, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %.081.sroa.phi, i64 12
  store i8 0, ptr %i.bm, align 4
  %i.bn = load i32, ptr @hf_ansi_637_reserved_bits_16_generic, align 4
  %i.bo = call ptr @proto_tree_add_split_bits_item_ret_val(ptr noundef %2, i32 noundef %i.bn, ptr noundef %0, i32 noundef %.0, ptr noundef nonnull %6, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.thread
  %i.bp = load i32, ptr @hf_ansi_637_reserved_bits_8_generic, align 4
  %i.bq = add i32 %4, %3
  %i.br = shl i32 %i.bq, 3
  %i.bs = sub i32 %i.br, %.lcssa111
  %i.bt = call ptr @proto_tree_add_bits_item(ptr noundef %2, i32 noundef %i.bp, ptr noundef %0, i32 noundef %i.bs, i32 noundef %.lcssa111, i32 noundef 0) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.n, %bb.m, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @tele_param_srvc_cat_prog_results(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = icmp ugt i32 %3, 2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.032 = phi i32 [ %i.l, %.lr.ph ], [ %4, %bb.a ] ; 4 uses
  %i.b = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.032)
  %i.c = zext i16 %i.b to i32                     ; 3 uses
  %i.d = tail call ptr @val_to_str_const(i32 noundef %i.c, ptr noundef @ansi_tsb58_srvc_cat_vals, ptr noundef @.str.43)
  %i.e = load i32, ptr @hf_ansi_637_tele_srvc_cat_prog_results_srvc_cat, align 4
  %i.f = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef %.032, i32 noundef 2, i32 noundef %i.c, ptr noundef @.str.341, ptr noundef %i.d, i32 noundef %i.c) ; 0 uses
  %i.g = add i32 %.032, 2                         ; 2 uses
  %i.h = load i32, ptr @hf_ansi_637_tele_srvc_cat_prog_results_result, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.g, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_ansi_637_reserved_bits_8_0f, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.g, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.l = add i32 %.032, 3                         ; 2 uses
  %i.m = sub i32 %i.l, %4                         ; 2 uses
  %i.n = sub i32 %3, %i.m                         ; 2 uses
  %i.o = icmp ugt i32 %i.n, 2
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa31 = phi i32 [ 0, %bb.a ], [ %i.m, %.lr.ph ]
  %.lcssa = phi i32 [ %3, %bb.a ], [ %i.n, %.lr.ph ]
  %i.p = icmp ugt i32 %3, %.lcssa31
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.q = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef @ei_ansi_637_extraneous_data, ptr noundef %0, i32 noundef %4, i32 noundef %.lcssa) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @tele_param_msg_status(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef @ei_ansi_637_unexpected_length, ptr noundef %0, i32 noundef %4, i32 noundef %3) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_ansi_637_tele_msg_status, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_ansi_637_tele_msg_status_error_class, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef %4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %4) ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i8 %i.f, 63                          ; 5 uses
  %i.i = lshr i32 %i.g, 6
  switch i32 %i.i, label %default.unreachable26 [
    i32 0, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 1, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i8 %i.h, 4
  br i1 %i.j, label %switch.lookup31, label %bb.g

bb.e:                                             ; preds = %bb.c
  %switch.tableidx = add nsw i8 %i.h, -4          ; 2 uses
  %i.k = icmp ult i8 %switch.tableidx, 28
  br i1 %i.k, label %switch.lookup31, label %bb.g

bb.f:                                             ; preds = %bb.c
  %switch.tableidx30 = add nsw i8 %i.h, -4        ; 2 uses
  %i.l = icmp ult i8 %switch.tableidx30, 28
  br i1 %i.l, label %switch.lookup31, label %bb.g

default.unreachable26:                            ; preds = %bb.c
  unreachable

switch.lookup31:                                  ; preds = %bb.f, %bb.e, %bb.d
  %switch.tableidx30.sink = phi i8 [ %switch.tableidx, %bb.e ], [ %i.h, %bb.d ], [ %switch.tableidx30, %bb.f ]
  %switch.table.tele_param_msg_status.4.sink = phi ptr [ @switch.table.tele_param_msg_status.3, %bb.e ], [ @switch.table.tele_param_msg_status, %bb.d ], [ @switch.table.tele_param_msg_status.4, %bb.f ]
  %i.m = zext nneg i8 %switch.tableidx30.sink to i64
  %switch.gep32 = getelementptr inbounds nuw [8 x i8], ptr %switch.table.tele_param_msg_status.4.sink, i64 %i.m
  %switch.load33 = load ptr, ptr %switch.gep32, align 8
  br label %bb.g

bb.g:                                             ; preds = %switch.lookup31, %bb.d, %bb.e, %bb.f, %bb.c
  %.0 = phi ptr [ @.str.43, %bb.c ], [ @.str.43, %bb.f ], [ @.str.43, %bb.e ], [ @.str.43, %bb.d ], [ %switch.load33, %switch.lookup31 ]
  %i.n = load i32, ptr @hf_ansi_637_tele_msg_status_code, align 4
  %i.o = zext nneg i8 %i.h to i32
  %i.p = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.n, ptr noundef %0, i32 noundef %4, i32 noundef 1, i32 noundef %i.g, ptr noundef @.str.341, ptr noundef nonnull %.0, i32 noundef %i.o) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @tele_param_tp_failure_cause(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef @ei_ansi_637_unexpected_length, ptr noundef %0, i32 noundef %4, i32 noundef %3) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_ansi_637_tele_tp_failure_cause_value, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %4, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_octet_aligned(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dis_field_udh(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @text_decoder(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i16 noundef zeroext range(i16 -5, 4081) %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i32 noundef %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8
  %i.b = zext i16 %6 to i32
  %i.c = zext i8 %8 to i32                        ; 2 uses
  %i.d = add nuw nsw i32 %i.b, 7
  %i.e = add nuw nsw i32 %i.d, %i.c               ; 2 uses
  %i.f = lshr i32 %i.e, 3                         ; 6 uses
  %i.g = shl i32 %3, 3
  %i.h = zext i8 %7 to i32
  %reass.sub = add i32 %i.g, 8
  %i.i = sub i32 %reass.sub, %i.h
  %i.j = and i32 %i.e, 262136
  %i.k = tail call ptr @tvb_new_octet_aligned(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.j) ; 12 uses
  %i.l = tail call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.k, ptr noundef @.str.344) ; 0 uses
  switch i8 %4, label %bb.b [
    i8 0, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 7, label %bb.g
    i8 8, label %bb.h
    i8 9, label %bb.i
    i8 16, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef @ei_ansi_637_unknown_encoding, ptr noundef %0, i32 noundef %3, i32 noundef %i.f) ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %1, i64 416
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr @tvb_bytes_to_str(ptr noundef %i.o, ptr noundef %i.k, i32 noundef 0, i32 noundef %i.f)
  %i.q = tail call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %9, ptr noundef %i.k, i32 noundef 0, i32 noundef %i.f, ptr noundef %i.p) ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.r = zext i8 %5 to i32
  %i.s = tail call ptr @proto_tree_add_ascii_7bits_item(ptr noundef %2, i32 noundef %9, ptr noundef %i.k, i32 noundef 0, i32 noundef %i.r) ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr i8, ptr %1, i64 416
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = zext i8 %5 to i32                        ; 2 uses
  %i.w = tail call ptr @tvb_get_ascii_7bits_string(ptr noundef %i.u, ptr noundef %i.k, i32 noundef 0, i32 noundef %i.v)
  tail call void @IA5_7BIT_decode(ptr noundef @ansi_637_bigbuf, ptr noundef %i.w, i32 noundef %i.v)
  %i.x = tail call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %9, ptr noundef %i.k, i32 noundef 0, i32 noundef %i.f, ptr noundef @ansi_637_bigbuf) ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.y = zext i8 %5 to i32
  %i.z = shl nuw nsw i32 %i.y, 1
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %9, ptr noundef %i.k, i32 noundef 0, i32 noundef %i.z, i32 noundef 6) ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ab = zext i8 %5 to i32
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %9, ptr noundef %i.k, i32 noundef 0, i32 noundef %i.ab, i32 noundef 24) ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.ad = zext i8 %5 to i32
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %9, ptr noundef %i.k, i32 noundef 0, i32 noundef %i.ad, i32 noundef 10) ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.af = zext i8 %5 to i32
  %i.ag = tail call ptr @proto_tree_add_ts_23_038_7bits_packed_item(ptr noundef %2, i32 noundef %9, ptr noundef %i.k, i32 noundef %i.c, i32 noundef %i.af) ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.ah = getelementptr i8, ptr %1, i64 416
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call ptr @proto_tree_add_item_ret_string(ptr noundef %2, i32 noundef %9, ptr noundef %i.k, i32 noundef 0, i32 noundef %i.f, i32 noundef 82, ptr noundef %i.ai, ptr noundef nonnull %i.a) ; 0 uses
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef @ei_ansi_637_failed_conversion, ptr noundef %i.k, i32 noundef 0, i32 noundef %i.f, ptr noundef @.str.345) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.k, %bb.j, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_split_bits_item_ret_val(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bits_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_bytes_to_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_ascii_7bits_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ascii_7bits_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @IA5_7BIT_decode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_ts_23_038_7bits_packed_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @tele_param_timestamp(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %2)
  %i.b = zext i8 %i.a to i32                      ; 4 uses
  %i.c = lshr i32 %i.b, 4
  %i.d = mul nuw nsw i32 %i.c, 65530
  %i.e = add nuw nsw i32 %i.d, %i.b               ; 2 uses
  %i.f = and i32 %i.e, 65504
  %i.g = icmp samesign ult i32 %i.f, 96
  %i.h = select i1 %i.g, i32 2000, i32 1900
  %i.i = add nuw nsw i32 %i.h, %i.e
  %i.j = and i32 %i.i, 65535
  %i.k = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %3, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef %i.b, ptr noundef @.str.346, i32 noundef %i.j, i32 noundef %i.b) ; 0 uses
  %i.l = add i32 %2, 1                            ; 2 uses
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.l)
  %i.n = zext i8 %i.m to i32                      ; 4 uses
  %i.o = lshr i32 %i.n, 4
  %i.p = mul nuw nsw i32 %i.o, 10
  %i.q = and i32 %i.n, 15
  %i.r = add nuw nsw i32 %i.q, 65535
  %i.s = add nuw nsw i32 %i.r, %i.p
  %i.t = and i32 %i.s, 65535
  %i.u = tail call ptr @val_to_str_const(i32 noundef %i.t, ptr noundef @ansi_tele_month_strings, ptr noundef @.str.347)
  %i.v = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %4, ptr noundef %0, i32 noundef %i.l, i32 noundef 1, i32 noundef %i.n, ptr noundef @.str.348, ptr noundef %i.u, i32 noundef %i.n) ; 0 uses
  %i.w = add i32 %2, 2                            ; 2 uses
end_hunk_0
