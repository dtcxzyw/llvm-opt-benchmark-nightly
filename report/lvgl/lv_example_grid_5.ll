loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._lv_anim_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union._lv_anim_path_para_t, i32, i32, i32, i8 }
%union._lv_anim_path_para_t = type { %struct.lv_anim_bezier3_para_t }
%struct.lv_anim_bezier3_para_t = type { i16, i16, i16, i16 }

@lv_example_grid_5.col_dsc = internal global [4 x i32] [i32 60, i32 60, i32 60, i32 536870911], align 16
@lv_example_grid_5.row_dsc = internal global [4 x i32] [i32 45, i32 45, i32 45, i32 536870911], align 16
@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1

; Function Attrs: nounwind uwtable
define void @lv_example_grid_5() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct._lv_anim_t, align 8         ; 14 uses
  %1 = tail call ptr @lv_screen_active() #3
  %2 = tail call ptr @lv_obj_create(ptr noundef %1) #3 ; 13 uses
  tail call void @lv_obj_set_size(ptr noundef %2, i32 noundef 300, i32 noundef 220) #3
  tail call void @lv_obj_center(ptr noundef %2) #3
  tail call void @lv_obj_set_grid_dsc_array(ptr noundef %2, ptr noundef nonnull @lv_example_grid_5.col_dsc, ptr noundef nonnull @lv_example_grid_5.row_dsc) #3
  %3 = tail call ptr @lv_obj_create(ptr noundef %2) #3 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %3, i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 3, i32 noundef 0, i32 noundef 1) #3
  %4 = tail call ptr @lv_label_create(ptr noundef %3) #3 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #3
  tail call void @lv_obj_center(ptr noundef %4) #3
  %5 = tail call ptr @lv_obj_create(ptr noundef %2) #3 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 3, i32 noundef 0, i32 noundef 1) #3
  %6 = tail call ptr @lv_label_create(ptr noundef %5) #3 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 0) #3
  tail call void @lv_obj_center(ptr noundef %6) #3
  %7 = tail call ptr @lv_obj_create(ptr noundef %2) #3 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %7, i32 noundef 3, i32 noundef 2, i32 noundef 1, i32 noundef 3, i32 noundef 0, i32 noundef 1) #3
  %8 = tail call ptr @lv_label_create(ptr noundef %7) #3 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef 2, i32 noundef 0) #3
  tail call void @lv_obj_center(ptr noundef %8) #3
  %9 = tail call ptr @lv_obj_create(ptr noundef %2) #3 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %9, i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 3, i32 noundef 1, i32 noundef 1) #3
  %10 = tail call ptr @lv_label_create(ptr noundef %9) #3 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 1) #3
  tail call void @lv_obj_center(ptr noundef %10) #3
  %11 = tail call ptr @lv_obj_create(ptr noundef %2) #3 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %11, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 3, i32 noundef 1, i32 noundef 1) #3
  %12 = tail call ptr @lv_label_create(ptr noundef %11) #3 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %12, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 1) #3
  tail call void @lv_obj_center(ptr noundef %12) #3
  %13 = tail call ptr @lv_obj_create(ptr noundef %2) #3 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %13, i32 noundef 3, i32 noundef 2, i32 noundef 1, i32 noundef 3, i32 noundef 1, i32 noundef 1) #3
  %14 = tail call ptr @lv_label_create(ptr noundef %13) #3 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef 2, i32 noundef 1) #3
  tail call void @lv_obj_center(ptr noundef %14) #3
  %15 = tail call ptr @lv_obj_create(ptr noundef %2) #3 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %15, i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 3, i32 noundef 2, i32 noundef 1) #3
  %16 = tail call ptr @lv_label_create(ptr noundef %15) #3 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %16, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 2) #3
  tail call void @lv_obj_center(ptr noundef %16) #3
  %17 = tail call ptr @lv_obj_create(ptr noundef %2) #3 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %17, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 3, i32 noundef 2, i32 noundef 1) #3
  %18 = tail call ptr @lv_label_create(ptr noundef %17) #3 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %18, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 2) #3
  tail call void @lv_obj_center(ptr noundef %18) #3
  %19 = tail call ptr @lv_obj_create(ptr noundef %2) #3 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %19, i32 noundef 3, i32 noundef 2, i32 noundef 1, i32 noundef 3, i32 noundef 2, i32 noundef 1) #3
  %20 = tail call ptr @lv_label_create(ptr noundef %19) #3 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef 2, i32 noundef 2) #3
  tail call void @lv_obj_center(ptr noundef %20) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #3
  call void @lv_anim_init(ptr noundef nonnull %0) #3
  call void @lv_anim_set_var(ptr noundef nonnull %0, ptr noundef %2) #3
  call void @lv_anim_set_values(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 10) #3
  call void @lv_anim_set_repeat_count(ptr noundef nonnull %0, i32 noundef -1) #3
  call void @lv_anim_set_exec_cb(ptr noundef nonnull %0, ptr noundef nonnull @row_gap_anim) #3
  call void @lv_anim_set_duration(ptr noundef nonnull %0, i32 noundef 500) #3
  call void @lv_anim_set_reverse_duration(ptr noundef nonnull %0, i32 noundef 500) #3
  %i.a = call ptr @lv_anim_start(ptr noundef nonnull %0) #3 ; 0 uses
  call void @lv_anim_set_exec_cb(ptr noundef nonnull %0, ptr noundef nonnull @column_gap_anim) #3
  call void @lv_anim_set_duration(ptr noundef nonnull %0, i32 noundef 3000) #3
  call void @lv_anim_set_reverse_duration(ptr noundef nonnull %0, i32 noundef 3000) #3
  %i.b = call ptr @lv_anim_start(ptr noundef nonnull %0) #3 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @lv_obj_create(ptr noundef) local_unnamed_addr #2

declare ptr @lv_screen_active() local_unnamed_addr #2

declare void @lv_obj_set_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_center(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_set_grid_dsc_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_obj_set_grid_cell(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_label_create(ptr noundef) local_unnamed_addr #2

declare void @lv_label_set_text_fmt(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @lv_anim_init(ptr noundef) local_unnamed_addr #2

declare void @lv_anim_set_var(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_anim_set_values(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_repeat_count(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_exec_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @row_gap_anim(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  tail call void @lv_obj_set_style_pad_row(ptr noundef %0, i32 noundef %1, i32 noundef 0) #3
  ret void
}

declare void @lv_anim_set_duration(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_reverse_duration(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_anim_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @column_gap_anim(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  tail call void @lv_obj_set_style_pad_column(ptr noundef %0, i32 noundef %1, i32 noundef 0) #3
  ret void
}

declare void @lv_obj_set_style_pad_row(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_style_pad_column(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
end_hunk_0
