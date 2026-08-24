Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-icmp?download=true
inline.NumInlined: 24
inline.NumDeleted: 12
begin_hunk_0_@proto_reg_handoff_icmp:bb.a
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @create_capture_dissector_handle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @capture_icmp(ptr nofree readnone captures(none) %0, i32 %1, i32 %2, ptr noundef %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = load i32, ptr @proto_icmp, align 4
  tail call void @capture_dissector_increment_count(ptr noundef %3, i32 noundef %i.a)
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare void @capture_dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @nstime_cmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @nstime_delta(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @nstime_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @sequence_analysis_create_sai_with_addresses(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @sequence_analysis_use_color_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @sequence_analysis_use_col_info_as_label_comment(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @p_get_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @g_queue_push_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @in_cksum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_checksum(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @signed_time_secs_to_str(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @set_actual_length(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @ip_checksum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dissector_try_heuristic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_time(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_mip_extensions(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.loopexit, label %.preheader73

.preheader73:                                     ; preds = %bb.a
  %i.b = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %2)
  %.not6780 = icmp eq i32 %i.b, 0
  br i1 %.not6780, label %.loopexit, label %.lr.ph82

.lr.ph82:                                         ; preds = %.preheader73
  %i.c = getelementptr i8, ptr %1, i64 416        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %.thread
  %.06481 = phi i32 [ %2, %.lr.ph82 ], [ %.4, %.thread ] ; 10 uses
  %i.d = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.06481) ; 4 uses
  %.not68 = icmp eq i8 %i.d, 0
  %.pre = add i32 %.06481, 1                      ; 3 uses
  br i1 %.not68, label %.thread.critedge, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %i.e = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.pre) ; 5 uses
  %i.f = zext i8 %i.e to i32                      ; 6 uses
  %i.g = load i32, ptr @ett_icmp_mip, align 4
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = zext i8 %i.d to i32
  %i.j = call ptr @val_to_str(ptr noundef %i.h, i32 noundef %i.i, ptr noundef nonnull @mip_extensions, ptr noundef nonnull @.str.343)
  %i.k = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %.06481, i32 noundef 1, i32 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.342, ptr noundef %i.j) ; 9 uses
  %i.l = load i32, ptr @hf_icmp_mip_type, align 4
  %i.m = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %0, i32 noundef %.06481, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = add nuw nsw i32 %i.f, 2
  call void @proto_item_set_len(ptr noundef %i.n, i32 noundef %i.o)
  %i.p = load i32, ptr @hf_icmp_mip_length, align 4
  %i.q = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.p, ptr noundef %0, i32 noundef %.pre, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.r = add i32 %.06481, 2                       ; 8 uses
  switch i8 %i.d, label %bb.e [
    i8 24, label %bb.d
    i8 16, label %bb.c
    i8 19, label %.preheader
  ]

.preheader:                                       ; preds = %._crit_edge
  %.not83 = icmp eq i8 %i.e, 0
  br i1 %.not83, label %.thread, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  %i.s = load i32, ptr @hf_icmp_mip_seq, align 4
  %i.t = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.r, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.u = add i32 %.06481, 4
  %i.v = load i32, ptr @hf_icmp_mip_life, align 4
  %i.w = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.x = add i32 %.06481, 6
  %i.y = load i32, ptr @hf_icmp_mip_flags, align 4
  %i.z = load i32, ptr @ett_icmp_mip_flags, align 4
  %i.aa = call ptr @proto_tree_add_bitmask(ptr noundef %i.k, ptr noundef %0, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.z, ptr noundef nonnull @dissect_mip_extensions.flags, i32 noundef 0) ; 0 uses
  %i.ab = add i32 %.06481, 8                      ; 2 uses
  %4 = zext i8 %i.e to i16
  %.lhs.trunc = add nsw i16 %4, -6
  %5 = sdiv i16 %.lhs.trunc, 4
  %.sext = sext i16 %5 to i32
  %i.ac = icmp ugt i8 %i.e, 9
  br i1 %i.ac, label %.lr.ph78, label %.thread

.lr.ph78:                                         ; preds = %bb.c, %.lr.ph78
  %.077 = phi i32 [ %i.ag, %.lr.ph78 ], [ 0, %bb.c ]
  %.276 = phi i32 [ %i.af, %.lr.ph78 ], [ %i.ab, %bb.c ] ; 2 uses
  %i.ad = load i32, ptr @hf_icmp_mip_coa, align 4
  %i.ae = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.ad, ptr noundef %0, i32 noundef %.276, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.af = add i32 %.276, 4                        ; 2 uses
  %i.ag = add nuw nsw i32 %.077, 1                ; 2 uses
  %6 = icmp slt i32 %i.ag, %.sext
  br i1 %6, label %.lr.ph78, label %.thread, !llvm.loop !13

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.175 = phi i32 [ %i.ak, %.lr.ph ], [ 0, %.preheader ]
  %.374 = phi i32 [ %i.aj, %.lr.ph ], [ %i.r, %.preheader ] ; 2 uses
  %i.ah = load i32, ptr @hf_icmp_mip_prefix_length, align 4
  %i.ai = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.ah, ptr noundef %0, i32 noundef %.374, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aj = add i32 %.374, 1                        ; 2 uses
  %i.ak = add nuw nsw i32 %.175, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ak, %i.f
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !14

bb.d:                                             ; preds = %._crit_edge
  %i.al = load i32, ptr @hf_icmp_mip_challenge, align 4
  %i.am = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.r, i32 noundef %i.f, i32 noundef 0) ; 0 uses
  %i.an = add i32 %i.r, %i.f
  br label %.thread

bb.e:                                             ; preds = %._crit_edge
  %.not70 = icmp eq i8 %i.e, 0
  br i1 %.not70, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i32, ptr @hf_icmp_mip_content, align 4
  %i.ap = add nsw i32 %i.f, -4
  %i.aq = call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.r, i32 noundef %i.ap, i32 noundef 0) ; 0 uses
  %i.ar = add i32 %i.r, %i.f
  br label %.thread

.thread.critedge:                                 ; preds = %bb.b
  %i.as = load i32, ptr @ett_icmp_mip, align 4
  %i.at = load ptr, ptr %i.c, align 8
  %i.au = zext nneg i8 %i.d to i32
  %i.av = call ptr @val_to_str(ptr noundef %i.at, i32 noundef %i.au, ptr noundef nonnull @mip_extensions, ptr noundef nonnull @.str.343)
  %i.aw = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %.06481, i32 noundef 1, i32 noundef %i.as, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.342, ptr noundef %i.av)
  %i.ax = load i32, ptr @hf_icmp_mip_type, align 4
  %i.ay = call ptr @proto_tree_add_item(ptr noundef %i.aw, i32 noundef %i.ax, ptr noundef %0, i32 noundef %.06481, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %.lr.ph78, %.thread.critedge, %.preheader, %bb.c, %bb.e, %bb.f, %bb.d
  %.4 = phi i32 [ %i.ar, %bb.f ], [ %i.r, %bb.e ], [ %.pre, %.thread.critedge ], [ %i.an, %bb.d ], [ %i.af, %.lr.ph78 ], [ %i.ab, %bb.c ], [ %i.r, %.preheader ], [ %i.aj, %.lr.ph ] ; 2 uses
  %i.az = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.4)
  %.not67 = icmp eq i32 %i.az, 0
  br i1 %.not67, label %.loopexit, label %bb.b, !llvm.loop !15

.loopexit:                                        ; preds = %.thread, %.preheader73, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @signed_time_msecs_to_str(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @p_add_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @tap_queue_packet(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @find_conversation(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @conversation_pt_to_conversation_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32_array(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wmem_tree_insert32_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_double_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, double noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_frame_number(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @nstime_set_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_new(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_none_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @ip_checksum_tvb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @capture_dissector_increment_count(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #4

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
end_hunk_0
