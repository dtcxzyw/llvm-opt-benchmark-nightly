Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-esio?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@proto_register_esio:bb.a
  store i32 %i.a, ptr @proto_esio, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_esio.hf, i32 noundef 18)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_esio.ett, i32 noundef 5)
  %i.b = load i32, ptr @proto_esio, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_esio.ei, i32 noundef 1)
  %i.d = load i32, ptr @proto_esio, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef nonnull @.str.40, ptr noundef nonnull @dissect_esio, i32 noundef %i.d)
  store ptr %i.e, ptr @esio_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_esio(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.b = icmp ult i32 %i.a, 20
  br i1 %i.b, label %is_esio_pdu.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @tvb_strneql(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.39, i64 noundef 4)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %is_esio_pdu.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %.not7.i = icmp eq i8 %i.d, 0
  br i1 %.not7.i, label %bb.d, label %is_esio_pdu.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  %i.f = icmp ugt i8 %i.e, 2
  br i1 %i.f, label %is_esio_pdu.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 6)
  %.not8.i = icmp eq i8 %i.g, 0
  br i1 %.not8.i, label %is_esio_pdu.exit, label %is_esio_pdu.exit.thread

is_esio_pdu.exit:                                 ; preds = %bb.e
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 7)
  %.not9.i = icmp eq i8 %i.h, 0
  br i1 %.not9.i, label %bb.f, label %is_esio_pdu.exit.thread

bb.f:                                             ; preds = %is_esio_pdu.exit
  %i.i = getelementptr i8, ptr %1, i64 8          ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @col_set_str(ptr noundef %i.j, i32 noundef 35, ptr noundef nonnull @.str.39)
  %i.k = load ptr, ptr %i.i, align 8
  tail call void @col_clear(ptr noundef %i.k, i32 noundef 25)
  %i.l = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  switch i8 %i.l, label %bb.j [
    i8 1, label %bb.g
    i8 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 16)
  %i.n = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 20)
  %i.o = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 26)
  %i.p = load ptr, ptr %i.i, align 8
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.p, i32 noundef 25, ptr noundef nonnull @.str.48, i32 noundef %i.m, i32 noundef %i.o)
  %i.q = icmp ugt i8 %i.n, 1
  br i1 %i.q, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.i, align 8
  tail call void @col_append_str(ptr noundef %i.r, i32 noundef 25, ptr noundef nonnull @.str.49)
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.s = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 16)
  %i.t = load ptr, ptr %i.i, align 8
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.t, i32 noundef 25, ptr noundef nonnull @.str.50, i32 noundef %i.s)
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.i, align 8
  tail call void @col_set_str(ptr noundef %i.u, i32 noundef 25, ptr noundef nonnull @.str.51)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.j, %bb.i
  %i.v = load i32, ptr @proto_esio, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.v, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.x = load i32, ptr @ett_esio, align 4
  %i.y = tail call ptr @proto_item_add_subtree(ptr noundef %i.w, i32 noundef %i.x) ; 10 uses
  %i.z = load i32, ptr @ett_esio_header, align 4
  %i.aa = tail call ptr @proto_tree_add_subtree(ptr noundef %i.y, ptr noundef %0, i32 noundef 0, i32 noundef 12, i32 noundef %i.z, ptr noundef null, ptr noundef nonnull @.str.52) ; 4 uses
  %i.ab = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 4)
  %i.ac = load i32, ptr @hf_esio_type, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.ac, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ae = load i32, ptr @hf_esio_version, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.ae, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ag = load i32, ptr @hf_esio_length, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.ag, ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ai = load i32, ptr @hf_esio_transaction_id, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.ai, ptr noundef %0, i32 noundef 10, i32 noundef 2, i32 noundef 0) ; 0 uses
  switch i16 %i.ab, label %.loopexit135 [
    i16 1, label %bb.l
    i16 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %.not133 = icmp eq ptr %2, null
  br i1 %.not133, label %.loopexit135, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load i32, ptr @ett_esio_transfer_header, align 4
  %i.al = tail call ptr @proto_tree_add_subtree(ptr noundef %i.y, ptr noundef %0, i32 noundef 12, i32 noundef 12, i32 noundef %i.ak, ptr noundef null, ptr noundef nonnull @.str.53) ; 4 uses
  %i.am = load i32, ptr @hf_esio_tlg_id, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.am, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ao = load i32, ptr @hf_esio_src_stn_id, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.ao, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 20)
  %i.ar = load i32, ptr @hf_esio_data_nbr, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.ar, ptr noundef %0, i32 noundef 20, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.at = load i32, ptr @hf_esio_data_flags, align 4
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.at, ptr noundef %0, i32 noundef 21, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not140 = icmp eq i8 %i.aq, 0
  br i1 %.not140, label %.loopexit135, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.m
  %i.av = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 26)
  %i.aw = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 30) ; 2 uses
  %i.ax = zext i16 %i.aw to i32                   ; 3 uses
  %i.ay = add nuw nsw i32 %i.ax, 10
  %i.az = load i32, ptr @ett_esio_transfer_data, align 4
  %i.ba = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.y, ptr noundef %0, i32 noundef 22, i32 noundef %i.ay, i32 noundef %i.az, ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef %i.av) ; 4 uses
  %i.bb = load i32, ptr @hf_esio_data_transfer_id, align 4
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef %i.ba, i32 noundef %i.bb, ptr noundef %0, i32 noundef 22, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bd = load i32, ptr @hf_esio_data_dest_id, align 4
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %i.ba, i32 noundef %i.bd, ptr noundef %0, i32 noundef 26, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bf = load i32, ptr @hf_esio_data_length, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %i.ba, i32 noundef %i.bf, ptr noundef %0, i32 noundef 30, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bh = load i32, ptr @ett_esio_data, align 4
  %i.bi = tail call ptr @proto_tree_add_subtree(ptr noundef %i.ba, ptr noundef %0, i32 noundef 32, i32 noundef %i.ax, i32 noundef %i.bh, ptr noundef null, ptr noundef nonnull @.str.55)
  %.not141 = icmp eq i16 %i.aw, 0
  br i1 %.not141, label %.loopexit135, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph139
  %i.bj = add nuw nsw i32 %i.ax, 31
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1137 = phi i32 [ %i.bm, %.lr.ph ], [ 32, %.lr.ph.preheader ] ; 3 uses
  %i.bk = load i32, ptr @hf_esio_data, align 4
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %i.bi, i32 noundef %i.bk, ptr noundef %0, i32 noundef %.1137, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bm = add nuw nsw i32 %.1137, 1
  %exitcond.not = icmp eq i32 %.1137, %i.bj
  br i1 %exitcond.not, label %.loopexit135, label %.lr.ph, !llvm.loop !6

bb.n:                                             ; preds = %bb.k
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = load i32, ptr @hf_esio_sts_type, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.bn, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bp = load i32, ptr @hf_esio_sts_size, align 4
  %i.bq = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.bp, ptr noundef %0, i32 noundef 14, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.br = load i32, ptr @hf_esio_src_stn_id, align 4
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.br, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bt = load i32, ptr @hf_esio_rio_sts, align 4
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.bt, ptr noundef %0, i32 noundef 20, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bv = load i32, ptr @hf_esio_rio_tlgs_lost, align 4
  %i.bw = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.bv, ptr noundef %0, i32 noundef 21, i32 noundef 1, i32 noundef 0)
  %i.bx = load i32, ptr @hf_esio_rio_diag, align 4
  %i.by = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.bx, ptr noundef %0, i32 noundef 22, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bz = load i32, ptr @hf_esio_rio_flags, align 4
  %i.ca = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.bz, ptr noundef %0, i32 noundef 23, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi ptr [ %i.bw, %bb.o ], [ null, %bb.n ]
  %i.cb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 21)
  %.not132 = icmp eq i8 %i.cb, 0
  br i1 %.not132, label %.loopexit135, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %.0, ptr noundef nonnull @ei_esio_telegram_lost) ; 0 uses
  br label %.loopexit135

.loopexit135:                                     ; preds = %.lr.ph, %.lr.ph139, %bb.p, %bb.q, %bb.k, %bb.l, %bb.m
  %i.cd = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %is_esio_pdu.exit.thread

is_esio_pdu.exit.thread:                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e, %is_esio_pdu.exit, %.loopexit135
  %.0131 = phi i32 [ %i.cd, %.loopexit135 ], [ 0, %is_esio_pdu.exit ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0131
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_esio() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @esio_handle, align 8
  tail call void @dissector_add_uint_with_preference(ptr noundef nonnull @.str.41, i32 noundef 6060, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_with_preference(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_strneql(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
end_hunk_0
