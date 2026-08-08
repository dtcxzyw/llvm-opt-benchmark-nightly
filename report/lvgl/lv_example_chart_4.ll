loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @lv_example_chart_4() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_screen_active() #2
  %i.b = tail call ptr @lv_chart_create(ptr noundef %i.a) #2 ; 32 uses
  tail call void @lv_chart_set_type(ptr noundef %i.b, i32 noundef 3) #2
  tail call void @lv_chart_set_point_count(ptr noundef %i.b, i32 noundef 24) #2
  tail call void @lv_obj_set_style_pad_column(ptr noundef %i.b, i32 noundef 2, i32 noundef 0) #2
  tail call void @lv_obj_set_size(ptr noundef %i.b, i32 noundef 260, i32 noundef 160) #2
  tail call void @lv_obj_center(ptr noundef %i.b) #2
  %i.c = tail call i24 @lv_color_hex(i32 noundef 16711680) #2
  %i.d = tail call ptr @lv_chart_add_series(ptr noundef %i.b, i24 %i.c, i32 noundef 0) #2 ; 24 uses
  %i.e = tail call ptr @lv_obj_add_event_cb(ptr noundef %i.b, ptr noundef nonnull @draw_event_cb, i32 noundef 34, ptr noundef null) #2 ; 0 uses
  tail call void @lv_obj_add_flag(ptr noundef %i.b, i32 noundef 524288) #2
  %i.f = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.f) #2
  %i.g = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.g) #2
  %i.h = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.h) #2
  %i.i = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.i) #2
  %i.j = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.j) #2
  %i.k = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.k) #2
  %i.l = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.l) #2
  %i.m = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.m) #2
  %i.n = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.n) #2
  %i.o = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.o) #2
  %i.p = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.p) #2
  %i.q = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.q) #2
  %i.r = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.r) #2
  %i.s = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.s) #2
  %i.t = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.t) #2
  %i.u = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.u) #2
  %i.v = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.v) #2
  %i.w = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.w) #2
  %i.x = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.x) #2
  %i.y = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.y) #2
  %i.z = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.z) #2
  %i.aa = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.aa) #2
  %i.ab = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.ab) #2
  %i.ac = tail call i32 @lv_rand(i32 noundef 10, i32 noundef 90) #2
  tail call void @lv_chart_set_next_value(ptr noundef %i.b, ptr noundef %i.d, i32 noundef %i.ac) #2
  ret void
}

declare ptr @lv_chart_create(ptr noundef) local_unnamed_addr #1

declare ptr @lv_screen_active() local_unnamed_addr #1

declare void @lv_chart_set_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_chart_set_point_count(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_obj_set_style_pad_column(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_obj_set_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_obj_center(ptr noundef) local_unnamed_addr #1

declare ptr @lv_chart_add_series(ptr noundef, i24, i32 noundef) local_unnamed_addr #1

declare i24 @lv_color_hex(i32 noundef) local_unnamed_addr #1

declare ptr @lv_obj_add_event_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @draw_event_cb(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lv_event_get_draw_task(ptr noundef %0) #2 ; 2 uses
  %i.b = tail call ptr @lv_draw_task_get_draw_dsc(ptr noundef %i.a) #2 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8
  %.not = icmp eq i32 %i.d, 327680
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @lv_draw_task_get_fill_dsc(ptr noundef %i.a) #2 ; 2 uses
  %.not17 = icmp eq ptr %i.e, null
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @lv_event_get_target_obj(ptr noundef %0) #2 ; 2 uses
  %i.g = tail call ptr @lv_chart_get_series_next(ptr noundef %i.f, ptr noundef null) #2
  %i.h = tail call ptr @lv_chart_get_series_y_array(ptr noundef %i.f, ptr noundef %i.g) #2
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !16
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  %i.n = mul nsw i32 %i.m, 255
  %i.o = sdiv i32 %i.n, 100
  %i.p = trunc i32 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 69
  %i.r = tail call i24 @lv_palette_main(i32 noundef 9) #2
  %i.s = tail call i24 @lv_palette_main(i32 noundef 0) #2
  %i.t = tail call i24 @lv_color_mix(i24 %i.r, i24 %i.s, i8 noundef zeroext %i.p) #2
  store i24 %i.t, ptr %i.q, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

declare void @lv_obj_add_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_chart_set_next_value(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lv_rand(i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lv_event_get_draw_task(ptr noundef) local_unnamed_addr #1

declare ptr @lv_draw_task_get_draw_dsc(ptr noundef) local_unnamed_addr #1

declare ptr @lv_draw_task_get_fill_dsc(ptr noundef) local_unnamed_addr #1

declare ptr @lv_event_get_target_obj(ptr noundef) local_unnamed_addr #1

declare ptr @lv_chart_get_series_y_array(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lv_chart_get_series_next(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i24 @lv_color_mix(i24, i24, i8 noundef zeroext) local_unnamed_addr #1

declare i24 @lv_palette_main(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !12, i64 24, !13, i64 32, !13, i64 34, !14, i64 36, !6, i64 39, !5, i64 40, !5, i64 42, !15, i64 48, !11, i64 56}
!10 = !{!"p1 _ZTS9_lv_obj_t", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS11_lv_layer_t", !11, i64 0}
!13 = !{!"short", !6, i64 0}
!14 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2}
!15 = !{!"long", !6, i64 0}
!16 = !{!9, !5, i64 16}
!17 = !{!5, !5, i64 0}
end_hunk_0
