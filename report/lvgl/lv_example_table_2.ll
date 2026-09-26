Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_example_table_2?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lv_mem_monitor_t = type { i64, i64, i64, i64, i64, i64, i8, i8 }
%struct.lv_draw_rect_dsc_t = type { %struct.lv_draw_dsc_base_t, i32, ptr, ptr, %struct.lv_color_t, i8, i8, i8, i8, i8, i8, i8, %struct.lv_color_t, %struct.lv_grad_dsc_t, ptr, %struct.lv_color_t, i32, i8, %struct.lv_color_t, i32, i32, %struct.lv_color_t, i32, i32, i32, i32 }
%struct.lv_draw_dsc_base_t = type { ptr, i32, i32, i32, ptr, i16, i16, %struct.lv_color_t, i8, i32, i64, ptr }
%struct.lv_grad_dsc_t = type { [2 x %struct.lv_grad_stop_t], i8, i8, %union.anon, ptr }
%struct.lv_grad_stop_t = type { %struct.lv_color_t, i8, i8 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.lv_point_t, %struct.lv_point_t, %struct.lv_point_t, %struct.lv_point_t }
%struct.lv_point_t = type { i32, i32 }
%struct.lv_color_t = type { i8, i8, i8 }
%struct.lv_area_t = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"Item %u\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"%u items were created in %u ms\0Ausing %zu bytes of memory\00", align 1

; Function Attrs: nounwind uwtable
define void @lv_example_table_2() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.lv_mem_monitor_t, align 8   ; 4 uses
  %1 = alloca %struct.lv_mem_monitor_t, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #3
  call void @lv_mem_monitor(ptr noundef nonnull %0) #3
  %i.a = call i32 @lv_tick_get() #3
  %i.b = call ptr @lv_screen_active() #3
  %i.c = call ptr @lv_table_create(ptr noundef %i.b) #3 ; 10 uses
  call void @lv_obj_set_size(ptr noundef %i.c, i32 noundef 1073741823, i32 noundef 200) #3
  call void @lv_table_set_column_width(ptr noundef %i.c, i32 noundef 0, i32 noundef 150) #3
  call void @lv_table_set_row_count(ptr noundef %i.c, i32 noundef 200) #3
  call void @lv_table_set_column_count(ptr noundef %i.c, i32 noundef 1) #3
  call void @lv_obj_remove_style(ptr noundef %i.c, ptr noundef null, i32 noundef 327808) #3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.018 = phi i32 [ 0, %bb.a ], [ %i.d, %bb.b ]   ; 2 uses
  %i.d = add nuw nsw i32 %.018, 1                 ; 3 uses
  call void (ptr, i32, i32, ptr, ...) @lv_table_set_cell_value_fmt(ptr noundef %i.c, i32 noundef %.018, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %i.d) #3
  %exitcond.not = icmp eq i32 %i.d, 200
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  call void @lv_obj_align(ptr noundef %i.c, i32 noundef 9, i32 noundef 0, i32 noundef -20) #3
  %i.e = call ptr @lv_obj_add_event_cb(ptr noundef %i.c, ptr noundef nonnull @draw_event_cb, i32 noundef 34, ptr noundef null) #3 ; 0 uses
  %i.f = call ptr @lv_obj_add_event_cb(ptr noundef %i.c, ptr noundef nonnull @change_event_cb, i32 noundef 35, ptr noundef null) #3 ; 0 uses
  call void @lv_obj_add_flag(ptr noundef %i.c, i32 noundef 524288) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  call void @lv_mem_monitor(ptr noundef nonnull %1) #3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %i.k = sub i64 %i.h, %i.j
  %i.l = call i32 @lv_tick_elaps(i32 noundef %i.a) #3
  %i.m = call ptr @lv_screen_active() #3
  %i.n = call ptr @lv_label_create(ptr noundef %i.m) #3 ; 2 uses
  call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %i.n, ptr noundef nonnull @.str.1, i32 noundef 200, i32 noundef %i.l, i64 noundef %i.k) #3
  call void @lv_obj_align(ptr noundef %i.n, i32 noundef 5, i32 noundef 0, i32 noundef -10) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @lv_mem_monitor(ptr noundef) local_unnamed_addr #2

declare i32 @lv_tick_get() local_unnamed_addr #2

declare ptr @lv_table_create(ptr noundef) local_unnamed_addr #2

declare ptr @lv_screen_active() local_unnamed_addr #2

declare void @lv_obj_set_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_table_set_column_width(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_table_set_row_count(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_table_set_column_count(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_remove_style(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_table_set_cell_value_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @lv_obj_align(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_obj_add_event_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @draw_event_cb(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.lv_draw_rect_dsc_t, align 8 ; 7 uses
  %2 = alloca %struct.lv_area_t, align 16         ; 7 uses
  %3 = alloca %struct.lv_area_t, align 4          ; 4 uses
  %4 = alloca %struct.lv_area_t, align 16         ; 6 uses
  %i.a = tail call ptr @lv_event_get_target_obj(ptr noundef %0) #3 ; 2 uses
  %i.b = tail call ptr @lv_event_get_draw_task(ptr noundef %0) #3 ; 3 uses
  %i.c = tail call ptr @lv_draw_task_get_draw_dsc(ptr noundef %i.b) #3 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20
  %i.f = icmp eq i32 %i.e, 327680
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @lv_draw_task_get_type(ptr noundef %i.b) #3
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21
  %i.k = tail call zeroext i1 @lv_table_has_cell_ctrl(ptr noundef %i.a, i32 noundef %i.j, i32 noundef 0, i32 noundef 16) #3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  call void @lv_draw_rect_dsc_init(ptr noundef nonnull %1) #3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 98 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = call i24 @lv_theme_get_color_primary(ptr noundef %i.a) #3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = call i24 @lv_palette_lighten(i32 noundef 18, i8 noundef zeroext 2) #3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi i24 [ %i.n, %bb.e ], [ %i.m, %bb.d ]
  store i24 %storemerge, ptr %i.l, align 2, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 32767, ptr %i.o, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  store <4 x i32> <i32 0, i32 0, i32 40, i32 24>, ptr %2, align 16, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  call void @lv_draw_task_get_area(ptr noundef %i.b, ptr noundef nonnull %3) #3
  call void @lv_area_align(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 8, i32 noundef -15, i32 noundef 0) #3
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  call void @lv_draw_rect(ptr noundef %i.q, ptr noundef nonnull %1, ptr noundef nonnull %2) #3
  %i.r = call i24 @lv_color_white() #3
  store i24 %i.r, ptr %i.l, align 2, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  store <4 x i32> <i32 0, i32 0, i32 18, i32 18>, ptr %4, align 16, !tbaa !9
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @lv_area_align(ptr noundef nonnull %2, ptr noundef nonnull %4, i32 noundef 8, i32 noundef -3, i32 noundef 0) #3
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @lv_area_align(ptr noundef nonnull %2, ptr noundef nonnull %4, i32 noundef 7, i32 noundef 3, i32 noundef 0) #3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !26
  call void @lv_draw_rect(ptr noundef %i.s, ptr noundef nonnull %1, ptr noundef nonnull %4) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @change_event_cb(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = tail call ptr @lv_event_get_target_obj(ptr noundef %0) #3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @lv_table_get_selected_cell(ptr noundef %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #3
  %i.d = load i32, ptr %i.b, align 4, !tbaa !9
  %i.e = call zeroext i1 @lv_table_has_cell_ctrl(ptr noundef %i.c, i32 noundef %i.d, i32 noundef 0, i32 noundef 16) #3
  %i.f = load i32, ptr %i.b, align 4, !tbaa !9    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @lv_table_clear_cell_ctrl(ptr noundef %i.c, i32 noundef %i.f, i32 noundef 0, i32 noundef 16) #3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @lv_table_set_cell_ctrl(ptr noundef %i.c, i32 noundef %i.f, i32 noundef 0, i32 noundef 16) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

declare void @lv_obj_add_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_tick_elaps(i32 noundef) local_unnamed_addr #2

declare ptr @lv_label_create(ptr noundef) local_unnamed_addr #2

declare void @lv_label_set_text_fmt(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @lv_event_get_target_obj(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_draw_task(ptr noundef) local_unnamed_addr #2

declare ptr @lv_draw_task_get_draw_dsc(ptr noundef) local_unnamed_addr #2

declare i32 @lv_draw_task_get_type(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_table_has_cell_ctrl(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_draw_rect_dsc_init(ptr noundef) local_unnamed_addr #2

declare i24 @lv_theme_get_color_primary(ptr noundef) local_unnamed_addr #2

declare i24 @lv_palette_lighten(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @lv_draw_task_get_area(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_area_align(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_draw_rect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i24 @lv_color_white() local_unnamed_addr #2

declare void @lv_table_get_selected_cell(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_table_clear_cell_ctrl(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_table_set_cell_ctrl(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!8 = !{!"long", !4, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !4, i64 48, !4, i64 49}
!13 = !{!12, !8, i64 16}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"p1 _ZTS9_lv_obj_t", !14, i64 0}
!16 = !{!"p1 _ZTS11_lv_layer_t", !14, i64 0}
!17 = !{!"short", !4, i64 0}
!18 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!19 = !{!"", !15, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !16, i64 24, !17, i64 32, !17, i64 34, !18, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !8, i64 48, !14, i64 56}
!20 = !{!19, !5, i64 8}
!21 = !{!19, !5, i64 12}
!22 = !{!4, !4, i64 0}
!23 = !{!"", !4, i64 0, !4, i64 10, !5, i64 11, !5, i64 11, !4, i64 12, !14, i64 48}
!24 = !{!"", !19, i64 0, !5, i64 64, !14, i64 72, !14, i64 80, !18, i64 88, !4, i64 91, !4, i64 92, !4, i64 93, !4, i64 94, !4, i64 95, !4, i64 96, !4, i64 97, !18, i64 98, !23, i64 104, !14, i64 160, !18, i64 168, !5, i64 172, !5, i64 176, !4, i64 176, !18, i64 177, !5, i64 180, !5, i64 184, !18, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204}
!25 = !{!24, !5, i64 64}
!26 = !{!19, !16, i64 24}
end_hunk_0
