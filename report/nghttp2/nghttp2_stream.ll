Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_stream?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@nghttp2_stream_shutdown:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 117 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !15
  %i.c = or i8 %i.b, %1
  store i8 %i.c, ptr %i.a, align 1, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_stream_attach_item(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load i8, ptr %i.a, align 4, !tbaa !16
  %i.c = and i8 %i.b, 12
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 63, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_stream_attach_item) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 64, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_stream_attach_item) #7
  unreachable

bb.e:                                             ; preds = %bb.c
  store ptr %1, ptr %i.e, align 8, !tbaa !17
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @nghttp2_stream_detach_item(ptr nofree noundef captures(none) initializes((64, 72)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !16
  %i.d = and i8 %i.c, -13
  store i8 %i.d, ptr %i.b, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_stream_defer_item(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_stream_defer_item) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !16
  %i.e = or i8 %i.d, %1
  store i8 %i.e, ptr %i.c, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_stream_resume_deferred_item(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 89, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_stream_resume_deferred_item) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !16
  %i.e = xor i8 %1, -1
  %i.f = and i8 %i.d, %i.e
  store i8 %i.f, ptr %i.c, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @nghttp2_stream_check_deferred_item(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.d = load i8, ptr %i.c, align 4, !tbaa !16
  %i.e = and i8 %i.d, 12
  %i.f = icmp ne i8 %i.e, 0
  %i.g = zext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ 0, %bb.a ], [ %i.g, %bb.b ]
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @nghttp2_stream_check_deferred_by_flow_control(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.d = load i8, ptr %i.c, align 4, !tbaa !16
  %i.e = lshr i8 %i.d, 2
  %.lobit = and i8 %i.e, 1
  %i.f = zext nneg i8 %.lobit to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ 0, %bb.a ], [ %i.f, %bb.b ]
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -1, 1) i32 @nghttp2_stream_update_remote_initial_window_size(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = sext i32 %i.b to i64
  %i.d = sext i32 %1 to i64
  %i.e = sext i32 %2 to i64
  %i.f = sub nsw i64 %i.d, %i.e
  %i.g = add nsw i64 %i.f, %i.c                   ; 2 uses
  %i.h = add nsw i64 %i.g, -2147483648
  %or.cond.i = icmp ult i64 %i.h, -4294967296
  br i1 %or.cond.i, label %update_initial_window_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc nsw i64 %i.g to i32
  store i32 %i.i, ptr %i.a, align 4, !tbaa !8
  br label %update_initial_window_size.exit

update_initial_window_size.exit:                  ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -1, 1) i32 @nghttp2_stream_update_local_initial_window_size(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = sext i32 %i.b to i64
  %i.d = sext i32 %1 to i64
  %i.e = sext i32 %2 to i64
  %i.f = sub nsw i64 %i.d, %i.e
  %i.g = add nsw i64 %i.f, %i.c                   ; 2 uses
  %i.h = add nsw i64 %i.g, -2147483648
  %or.cond.i = icmp ult i64 %i.h, -4294967296
  br i1 %or.cond.i, label %update_initial_window_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc nsw i64 %i.g to i32
  store i32 %i.i, ptr %i.a, align 4, !tbaa !8
  br label %update_initial_window_size.exit

update_initial_window_size.exit:                  ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @nghttp2_stream_promise_fulfilled(ptr nofree noundef captures(none) initializes((0, 4)) %0) local_unnamed_addr #3 {
bb.a:
  store i32 2, ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !16
  %i.c = and i8 %i.b, -2
  store i8 %i.c, ptr %i.a, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 1, 8) i32 @nghttp2_stream_get_state(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, @nghttp2_stream_root
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.c = load i8, ptr %i.b, align 4, !tbaa !16
  %1 = zext i8 %i.c to i32                        ; 2 uses
  %2 = and i32 %1, 2
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %3 = and i32 %1, 1
  %.not9 = icmp eq i32 %3, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 117
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !15
  %.pre14 = zext i8 %.pre to i32                  ; 4 uses
  br i1 %.not9, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %4 = and i32 %.pre14, 1
  %.not10 = icmp eq i32 %4, 0
  br i1 %.not10, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %5 = and i32 %.pre14, 2
  %.not11 = icmp eq i32 %5, 0
  br i1 %.not11, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.c, %bb.e
  %6 = and i32 %.pre14, 1
  %.not12 = icmp eq i32 %6, 0
  br i1 %.not12, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %7 = and i32 %.pre14, 2
  %.not13 = icmp eq i32 %7, 0
  br i1 %.not13, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.d = load i32, ptr %0, align 8, !tbaa !18
  %i.e = icmp eq i32 %i.d, 5
  %. = select i1 %i.e, i32 1, i32 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge, %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 5, %bb.f ], [ 1, %bb.a ], [ 7, %bb.b ], [ 3, %bb.d ], [ 4, %bb.e ], [ 6, %._crit_edge ], [ %., %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @nghttp2_stream_get_parent(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @nghttp2_stream_get_next_sibling(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @nghttp2_stream_get_previous_sibling(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @nghttp2_stream_get_first_child(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @nghttp2_stream_get_weight(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret i32 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @nghttp2_stream_get_sum_dependency_weight(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @nghttp2_stream_get_stream_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  ret i32 %i.b
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"", !9, i64 0}
!12 = !{!"p1 _ZTS14nghttp2_stream", !10, i64 0}
!13 = !{!"p1 _ZTS21nghttp2_outbound_item", !10, i64 0}
!14 = !{!"nghttp2_stream", !5, i64 0, !11, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !12, i64 48, !10, i64 56, !13, i64 64, !9, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !4, i64 116, !4, i64 117, !4, i64 118, !4, i64 119, !4, i64 120, !4, i64 121}
!15 = !{!14, !4, i64 117}
!16 = !{!14, !4, i64 116}
!17 = !{!14, !13, i64 64}
!18 = !{!14, !5, i64 0}
!19 = !{!9, !9, i64 0}
!20 = !{!10, !10, i64 0}
!21 = !{!4, !4, i64 0}
!22 = !{!14, !5, i64 80}
end_hunk_0
