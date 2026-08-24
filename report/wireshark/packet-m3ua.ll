Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-m3ua?download=true
inline.NumInlined: 96
inline.NumDeleted: 47
begin_hunk_0_@tvb_get_ntohs

; Function Attrs: null_pointer_is_valid
declare void @increment_dissection_depth(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @decrement_dissection_depth(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_affected_destinations_parameter(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2)
  %i.b = zext i16 %i.a to i32
  %i.c = add nuw nsw i32 %i.b, 262140
  %i.d = lshr i32 %i.c, 2
  %i.e = and i32 %i.d, 65535                      ; 4 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 416
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i32 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ]
  %.020 = phi i32 [ 4, %.lr.ph ], [ %i.p, %bb.d ] ; 3 uses
  %i.g = load i32, ptr @hf_affected_point_code_mask, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef %.020, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_affected_point_code_pc, align 4
  %i.j = or disjoint i32 %.020, 1                 ; 2 uses
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.j, i32 noundef 3, i32 noundef 0)
  %i.l = tail call zeroext i1 @mtp3_pc_structured()
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = tail call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef %i.j)
  %i.o = tail call ptr @mtp3_pc_to_str(ptr noundef %i.m, i32 noundef %i.n)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.k, ptr noundef nonnull @.str.344, ptr noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = add nuw nsw i32 %.020, 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.q = icmp eq i32 %i.e, 1
  %i.r = select i1 %i.q, ptr @.str.342, ptr @.str.343
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %3, ptr noundef nonnull @.str.345, i32 noundef %i.e, ptr noundef nonnull %i.r)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_format_text(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @mtp3_pc_structured() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @mtp3_pc_to_str(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntoh24(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_concerned_destination_parameter(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_concerned_dest_reserved, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_concerned_dest_pc, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 5, i32 noundef 3, i32 noundef 0)
  %i.e = tail call zeroext i1 @mtp3_pc_structured()
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 416
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef 5)
  %i.i = tail call ptr @mtp3_pc_to_str(ptr noundef %i.g, i32 noundef %i.h)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.d, ptr noundef nonnull @.str.344, ptr noundef %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr i8, ptr %1, i64 416
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef 5)
  %i.m = tail call ptr @mtp3_pc_to_str(ptr noundef %i.k, i32 noundef %i.l)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %3, ptr noundef nonnull @.str.344, ptr noundef %i.m)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_destination_point_code_parameter(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_dpc_mask, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_dpc_pc, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 5, i32 noundef 3, i32 noundef 0)
  %i.e = tail call zeroext i1 @mtp3_pc_structured()
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 416
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef 5)
  %i.i = tail call ptr @mtp3_pc_to_str(ptr noundef %i.g, i32 noundef %i.h)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.d, ptr noundef nonnull @.str.344, ptr noundef %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr i8, ptr %1, i64 416
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef 5)
  %i.m = tail call ptr @mtp3_pc_to_str(ptr noundef %i.k, i32 noundef %i.l)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %3, ptr noundef nonnull @.str.344, ptr noundef %i.m)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_originating_point_code_list_parameter(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2)
  %i.b = zext i16 %i.a to i32
  %i.c = add nsw i32 %i.b, -4
  %i.d = sdiv i32 %i.c, 4
  %i.e = and i32 %i.d, 65535                      ; 4 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 416
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i32 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ]
  %.021 = phi i32 [ 4, %.lr.ph ], [ %i.p, %bb.d ] ; 3 uses
  %i.g = load i32, ptr @hf_opc_list_mask, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef %.021, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_opc_list_pc, align 4
  %i.j = or disjoint i32 %.021, 1                 ; 2 uses
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.j, i32 noundef 3, i32 noundef 0)
  %i.l = tail call zeroext i1 @mtp3_pc_structured()
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = tail call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef %i.j)
  %i.o = tail call ptr @mtp3_pc_to_str(ptr noundef %i.m, i32 noundef %i.n)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.k, ptr noundef nonnull @.str.344, ptr noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = add nuw nsw i32 %.021, 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.q = icmp eq i32 %i.e, 1
  %i.r = select i1 %i.q, ptr @.str.342, ptr @.str.343
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %3, ptr noundef nonnull @.str.362, i32 noundef %i.e, ptr noundef nonnull %i.r)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_circuit_range_parameter(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.c = zext i16 %i.b to i32
  %i.d = add nsw i32 %i.c, -4
  %i.e = sdiv i32 %i.d, 8                         ; 2 uses
  %.not = icmp ult i16 %i.b, 12
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 416
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.039.a = phi i32 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ]
  %.039 = phi i32 [ 4, %.lr.ph ], [ %i.ac, %bb.d ] ; 6 uses
  %i.g = load i32, ptr @ett_parameter, align 4
  %i.h = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %.039, i32 noundef 8, i32 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.363) ; 4 uses
  %i.i = load i32, ptr @hf_cic_range_mask, align 4
  %i.j = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %0, i32 noundef %.039, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = or disjoint i32 %.039, 1                 ; 2 uses
  %i.l = call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef %i.k)
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = call ptr @mtp3_pc_to_str(ptr noundef %i.m, i32 noundef %i.l) ; 2 uses
  %i.o = load i32, ptr @hf_cic_range_pc, align 4
  %i.p = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.o, ptr noundef %0, i32 noundef %i.k, i32 noundef 3, i32 noundef 0)
  %i.q = call zeroext i1 @mtp3_pc_structured()
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.p, ptr noundef nonnull @.str.344, ptr noundef %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = add nuw nsw i32 %.039, 4                 ; 2 uses
  %i.s = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.r)
  %i.t = load i32, ptr @hf_cic_range_lower, align 4
  %i.u = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.r, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.v = add nuw nsw i32 %.039, 6                 ; 2 uses
  %i.w = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.v)
  %i.x = load i32, ptr @hf_cic_range_upper, align 4
  %i.y = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.v, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.z = load ptr, ptr %i.a, align 8
  %i.aa = zext i16 %i.s to i32
  %i.ab = zext i16 %i.w to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.z, ptr noundef nonnull @.str.364, ptr noundef %i.n, i32 noundef %i.aa, i32 noundef %i.ab)
  %i.ac = add nuw nsw i32 %.039, 8
  %indvars.iv.next = add nuw nsw i32 %.039.a, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.ad = add i16 %i.b, -12
  %i.ae = icmp ult i16 %i.ad, 8
  %i.af = select i1 %i.ae, ptr @.str.342, ptr @.str.343
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %3, ptr noundef nonnull @.str.365, i32 noundef %i.e, ptr noundef nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @register_frame_end_routine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @m3ua_reset_mtp3_standard() #4 {
bb.a:
  %i.a = load i32, ptr @m3ua_pref_mtp3_standard, align 4
  store i32 %i.a, ptr @mtp3_standard, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @tap_queue_packet(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @analyze_q708_ispc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @dissector_try_uint(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @looks_like_valid_sccp(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @tcp_dissect_pdus(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @get_dissect_m3ua_tcp_len(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = add i32 %2, 4
  %i.b = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { allocsize(1) }

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
!10 = distinct !{null}
!11 = distinct !{null, null}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{null, null}
!15 = distinct !{null, null}
!16 = distinct !{null}
!17 = distinct !{null, null}
!18 = distinct !{null, null}
!19 = distinct !{null, null}
!20 = distinct !{null}
!21 = distinct !{null, null}
!22 = distinct !{null, null}
!23 = distinct !{null, null}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
end_hunk_0
