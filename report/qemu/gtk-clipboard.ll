Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/gtk-clipboard?download=true
inline.NumInlined: 8
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@gd_clipboard_notify:bb.a

bb.e:                                             ; preds = %bb.d
  tail call void @gtk_target_list_add_text_targets(ptr noundef %i.p, i32 noundef 0) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = call ptr @gtk_target_table_new_from_list(ptr noundef %i.p, ptr noundef nonnull %i.a) #5 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.n ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  call void @gtk_clipboard_clear(ptr noundef %i.w) #5
  %.not20.i = icmp eq ptr %i.t, null
  br i1 %.not20.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.n
  store i8 1, ptr %i.y, align 1
  %i.z = load ptr, ptr %i.v, align 8
  %i.aa = load i32, ptr %i.a, align 4
  %i.ab = call i32 @gtk_clipboard_set_with_data(ptr noundef %i.z, ptr noundef nonnull %i.t, i32 noundef %i.aa, ptr noundef nonnull @gd_clipboard_get_data, ptr noundef nonnull @gd_clipboard_clear, ptr noundef nonnull %i.c) #5
  %.not21.i = icmp eq i32 %i.ab, 0
  br i1 %.not21.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @warn_report(ptr noundef nonnull @.str.2) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = load i32, ptr %i.a, align 4
  call void @gtk_target_table_free(ptr noundef nonnull %i.t, i32 noundef %i.ac) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %gd_clipboard_update_info.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @gtk_target_list_unref(ptr noundef nonnull %i.p) #5
  br label %gd_clipboard_update_info.exit

gd_clipboard_update_info.exit:                    ; preds = %bb.k, %bb.j, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gd_clipboard_request(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @qemu_clipboard_info_ref(ptr noundef %0) #5 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @gtk_clipboard_request_text(ptr noundef %i.i, ptr noundef nonnull @gd_clipboard_request_text_received_callback, ptr noundef %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @qemu_clipboard_peer_register(ptr noundef) local_unnamed_addr #1

declare ptr @gtk_clipboard_get(ptr noundef) local_unnamed_addr #1

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @gd_owner_change(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 392
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, %0
  br i1 %i.c, label %gd_find_selection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 400
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %gd_find_selection.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, %0
  %spec.select.i = select i1 %i.i, i32 2, i32 0
  br label %gd_find_selection.exit

gd_find_selection.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %.06.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.k = zext nneg i32 %.06.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !range !7, !noundef !8
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %bb.d

bb.d:                                             ; preds = %gd_find_selection.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i32, ptr %i.o, align 8
  %cond = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  br i1 %cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @qemu_clipboard_info_new(ptr noundef nonnull %i.q, i32 noundef %.06.i) #5
  tail call void @gtk_clipboard_request_targets(ptr noundef %0, ptr noundef nonnull @gd_clipboard_owner_change_targets_received_callback, ptr noundef %i.r) #5
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @qemu_clipboard_peer_release(ptr noundef nonnull %i.q, i32 noundef %.06.i) #5
  store i8 0, ptr %i.l, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %gd_find_selection.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gd_clipboard_cleanup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @qemu_clipboard_peer_unregister(ptr noundef nonnull %i.a) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @g_signal_handlers_disconnect_matched(ptr noundef %i.d, i32 noundef 16, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %0) #5 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @g_signal_handlers_disconnect_matched(ptr noundef %i.g, i32 noundef 16, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %0) #5 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 @g_signal_handlers_disconnect_matched(ptr noundef %i.j, i32 noundef 16, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %0) #5 ; 0 uses
  store ptr null, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @qemu_clipboard_peer_unregister(ptr noundef) local_unnamed_addr #1

declare i32 @g_signal_handlers_disconnect_matched(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @qemu_clipboard_info(i32 noundef) local_unnamed_addr #1

declare ptr @gtk_target_list_new(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_target_list_add_text_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @gtk_target_table_new_from_list(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gtk_clipboard_clear(ptr noundef) local_unnamed_addr #1

declare i32 @gtk_clipboard_set_with_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @gd_clipboard_get_data(ptr nofree noundef readnone captures(address) %0, ptr noundef %1, i32 %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 392
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, %0
  br i1 %i.c, label %gd_find_selection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 400
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %gd_find_selection.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 408
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, %0
  %spec.select.i = select i1 %i.i, i32 2, i32 0
  br label %gd_find_selection.exit

gd_find_selection.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %.06.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %bb.c ], [ 1, %bb.b ] ; 5 uses
  %i.j = tail call ptr @qemu_clipboard_info(i32 noundef %.06.i) #5
  %i.k = tail call ptr @qemu_clipboard_info_ref(ptr noundef %i.j) #5 ; 9 uses
  tail call void @qemu_clipboard_request(ptr noundef %i.k, i32 noundef 0) #5
  %4 = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.m = tail call ptr @qemu_clipboard_info(i32 noundef %.06.i) #5
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.d, label %.critedge

bb.d:                                             ; preds = %gd_find_selection.exit, %bb.f
  %i.o = load i8, ptr %4, align 8, !range !7, !noundef !8
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  tail call void @main_loop_wait(i32 noundef 0) #5
  %i.s = tail call ptr @qemu_clipboard_info(i32 noundef %.06.i) #5
  %i.t = icmp eq ptr %i.k, %i.s
  br i1 %i.t, label %bb.d, label %.critedge, !llvm.loop !10

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.d, %gd_find_selection.exit
  %i.u = tail call ptr @qemu_clipboard_info(i32 noundef %.06.i) #5
  %i.v = icmp eq ptr %i.k, %i.u
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 416
  %i.x = zext nneg i32 %.06.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !range !7, !noundef !8
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = tail call i32 @gtk_selection_data_set_text(ptr noundef %1, ptr noundef %i.ab, i32 noundef %i.ad) #5 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %.critedge, %bb.g
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %glib_autoptr_cleanup_QemuClipboardInfo.exit, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  tail call void @qemu_clipboard_info_unref(ptr noundef nonnull %i.k) #5
  br label %glib_autoptr_cleanup_QemuClipboardInfo.exit

glib_autoptr_cleanup_QemuClipboardInfo.exit:      ; preds = %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @gd_clipboard_clear(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, %0
  br i1 %i.c, label %gd_find_selection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %gd_find_selection.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, %0
  %i.j = select i1 %i.i, i64 2, i64 0
  br label %gd_find_selection.exit

gd_find_selection.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %.06.i = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ], [ 1, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.06.i
  store i8 0, ptr %i.l, align 1
  ret void
}

declare void @warn_report(ptr noundef, ...) local_unnamed_addr #1

declare void @gtk_target_table_free(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_target_list_unref(ptr noundef) local_unnamed_addr #1

declare ptr @qemu_clipboard_info_ref(ptr noundef) local_unnamed_addr #1

declare void @qemu_clipboard_request(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @main_loop_wait(i32 noundef) local_unnamed_addr #1

declare i32 @gtk_selection_data_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @qemu_clipboard_info_unref(ptr noundef) local_unnamed_addr #1

declare void @gtk_clipboard_request_text(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @gd_clipboard_request_text_received_callback(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #6
  %i.d = trunc i64 %i.c to i32
  tail call void @qemu_clipboard_set_data(ptr noundef %i.b, ptr noundef %2, i32 noundef 0, i32 noundef %i.d, ptr noundef nonnull %1, i1 noundef zeroext true) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @qemu_clipboard_info_unref(ptr noundef %2) #5
  ret void
}

declare void @qemu_clipboard_set_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @qemu_clipboard_info_new(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_clipboard_request_targets(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @gd_clipboard_owner_change_targets_received_callback(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @gtk_targets_include_text(ptr noundef nonnull %1, i32 noundef %2) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  tail call void @qemu_clipboard_update(ptr noundef %3) #5
  tail call void @qemu_clipboard_info_unref(ptr noundef %3) #5
  ret void
}

declare void @qemu_clipboard_peer_release(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gtk_targets_include_text(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @qemu_clipboard_update(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"auto-init"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
end_hunk_0
