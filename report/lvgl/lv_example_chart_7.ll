Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_example_chart_7?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @lv_example_chart_7() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_screen_active() #2
  %i.b = tail call ptr @lv_chart_create(ptr noundef %i.a) #2 ; 12 uses
  tail call void @lv_obj_set_size(ptr noundef %i.b, i32 noundef 200, i32 noundef 150) #2
  tail call void @lv_obj_align(ptr noundef %i.b, i32 noundef 9, i32 noundef 0, i32 noundef 0) #2
  %i.c = tail call ptr @lv_obj_add_event_cb(ptr noundef %i.b, ptr noundef nonnull @draw_event_cb, i32 noundef 34, ptr noundef null) #2 ; 0 uses
  tail call void @lv_obj_add_flag(ptr noundef %i.b, i32 noundef 524288) #2
  tail call void @lv_obj_set_style_line_width(ptr noundef %i.b, i32 noundef 0, i32 noundef 327680) #2
  tail call void @lv_chart_set_type(ptr noundef %i.b, i32 noundef 5) #2
  tail call void @lv_chart_set_axis_range(ptr noundef %i.b, i32 noundef 2, i32 noundef 0, i32 noundef 200) #2
  tail call void @lv_chart_set_axis_range(ptr noundef %i.b, i32 noundef 0, i32 noundef 0, i32 noundef 1000) #2
  tail call void @lv_chart_set_point_count(ptr noundef %i.b, i32 noundef 50) #2
  %i.d = tail call i24 @lv_palette_main(i32 noundef 0) #2
  %i.e = tail call ptr @lv_chart_add_series(ptr noundef %i.b, i24 %i.d, i32 noundef 0) #2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.015 = phi i32 [ 0, %bb.a ], [ %i.h, %bb.b ]
  %i.f = tail call i32 @lv_rand(i32 noundef 0, i32 noundef 200) #2
  %i.g = tail call i32 @lv_rand(i32 noundef 0, i32 noundef 1000) #2
  tail call void @lv_chart_set_next_value2(ptr noundef %i.b, ptr noundef %i.e, i32 noundef %i.f, i32 noundef %i.g) #2
  %i.h = add nuw nsw i32 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.h, 50
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !8

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @lv_timer_create(ptr noundef nonnull @add_data, i32 noundef 100, ptr noundef %i.b) #2 ; 0 uses
  ret void
}

declare ptr @lv_chart_create(ptr noundef) local_unnamed_addr #1

declare ptr @lv_screen_active() local_unnamed_addr #1

declare void @lv_obj_set_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_obj_align(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lv_obj_add_event_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @draw_event_cb(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lv_event_get_draw_task(ptr noundef %0) #2 ; 2 uses
  %i.b = tail call ptr @lv_draw_task_get_draw_dsc(ptr noundef %i.a) #2 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17
  %.not = icmp eq i32 %i.d, 131072
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @lv_event_get_target_obj(ptr noundef %0) #2 ; 5 uses
  %i.f = tail call ptr @lv_chart_get_series_next(ptr noundef %i.e, ptr noundef null) #2 ; 3 uses
  %i.g = tail call ptr @lv_draw_task_get_fill_dsc(ptr noundef %i.a) #2 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @lv_chart_get_point_count(ptr noundef %i.e) #2 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !18
  %i.l = mul i32 %i.k, 255
  %i.m = add i32 %i.i, -1
  %i.n = udiv i32 %i.l, %i.m
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  store i8 %i.o, ptr %i.p, align 4, !tbaa !21
  %i.q = tail call ptr @lv_chart_get_series_x_array(ptr noundef %i.e, ptr noundef %i.f) #2
  %i.r = tail call ptr @lv_chart_get_series_y_array(ptr noundef %i.e, ptr noundef %i.f) #2
  %i.s = tail call i32 @lv_chart_get_x_start_point(ptr noundef %i.e, ptr noundef %i.f) #2
  %i.t = load i32, ptr %i.j, align 8, !tbaa !18
  %i.u = add i32 %i.t, %i.s
  %i.v = urem i32 %i.u, %i.i
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !22
  %i.z = mul nsw i32 %i.y, 127
  %i.aa = sdiv i32 %i.z, 200
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.w
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22
  %i.ad = mul nsw i32 %i.ac, 127
  %i.ae = sdiv i32 %i.ad, 1000
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 69
  %i.ag = tail call i24 @lv_palette_main(i32 noundef 0) #2
  %i.ah = tail call i24 @lv_palette_main(i32 noundef 5) #2
  %i.ai = add nsw i32 %i.ae, %i.aa
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = tail call i24 @lv_color_mix(i24 %i.ag, i24 %i.ah, i8 noundef zeroext %i.aj) #2
  store i24 %i.ak, ptr %i.af, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @lv_obj_add_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_obj_set_style_line_width(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_chart_set_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_chart_set_axis_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_chart_set_point_count(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lv_chart_add_series(ptr noundef, i24, i32 noundef) local_unnamed_addr #1

declare i24 @lv_palette_main(i32 noundef) local_unnamed_addr #1

declare void @lv_chart_set_next_value2(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lv_rand(i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lv_timer_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @add_data(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lv_timer_get_user_data(ptr noundef %0) #2 ; 2 uses
  %i.b = tail call ptr @lv_chart_get_series_next(ptr noundef %i.a, ptr noundef null) #2
  %i.c = tail call i32 @lv_rand(i32 noundef 0, i32 noundef 200) #2
  %i.d = tail call i32 @lv_rand(i32 noundef 0, i32 noundef 1000) #2
  tail call void @lv_chart_set_next_value2(ptr noundef %i.a, ptr noundef %i.b, i32 noundef %i.c, i32 noundef %i.d) #2
  ret void
}

declare ptr @lv_event_get_draw_task(ptr noundef) local_unnamed_addr #1

declare ptr @lv_draw_task_get_draw_dsc(ptr noundef) local_unnamed_addr #1

declare ptr @lv_event_get_target_obj(ptr noundef) local_unnamed_addr #1

declare ptr @lv_chart_get_series_next(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lv_draw_task_get_fill_dsc(ptr noundef) local_unnamed_addr #1

declare i32 @lv_chart_get_point_count(ptr noundef) local_unnamed_addr #1

declare ptr @lv_chart_get_series_x_array(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lv_chart_get_series_y_array(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lv_chart_get_x_start_point(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i24 @lv_color_mix(i24, i24, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @lv_timer_get_user_data(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS9_lv_obj_t", !10, i64 0}
!12 = !{!"p1 _ZTS11_lv_layer_t", !10, i64 0}
!13 = !{!"short", !4, i64 0}
!14 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!15 = !{!"long", !4, i64 0}
!16 = !{!"", !11, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !12, i64 24, !13, i64 32, !13, i64 34, !14, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !15, i64 48, !10, i64 56}
!17 = !{!16, !5, i64 8}
!18 = !{!16, !5, i64 16}
!19 = !{!"", !4, i64 0, !4, i64 10, !5, i64 11, !5, i64 11, !4, i64 12, !10, i64 48}
!20 = !{!"", !16, i64 0, !5, i64 64, !4, i64 68, !14, i64 69, !19, i64 72}
!21 = !{!20, !4, i64 68}
!22 = !{!5, !5, i64 0}
end_hunk_0
