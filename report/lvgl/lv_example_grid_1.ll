loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lv_example_grid_1.col_dsc = internal global [4 x i32] [i32 70, i32 70, i32 70, i32 536870911], align 16
@lv_example_grid_1.row_dsc = internal global [4 x i32] [i32 50, i32 50, i32 50, i32 536870911], align 16
@.str = private unnamed_addr constant [9 x i8] c"c%d, r%d\00", align 1

; Function Attrs: nounwind uwtable
define void @lv_example_grid_1() local_unnamed_addr #0 {
bb.a:
  %0 = tail call ptr @lv_screen_active() #2
  %1 = tail call ptr @lv_obj_create(ptr noundef %0) #2 ; 14 uses
  tail call void @lv_obj_set_style_grid_column_dsc_array(ptr noundef %1, ptr noundef nonnull @lv_example_grid_1.col_dsc, i32 noundef 0) #2
  tail call void @lv_obj_set_style_grid_row_dsc_array(ptr noundef %1, ptr noundef nonnull @lv_example_grid_1.row_dsc, i32 noundef 0) #2
  tail call void @lv_obj_set_size(ptr noundef %1, i32 noundef 300, i32 noundef 220) #2
  tail call void @lv_obj_center(ptr noundef %1) #2
  tail call void @lv_obj_set_layout(ptr noundef %1, i32 noundef 2) #2
  %2 = tail call ptr @lv_button_create(ptr noundef %1) #2 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %2, i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 3, i32 noundef 0, i32 noundef 1) #2
  %3 = tail call ptr @lv_label_create(ptr noundef %2) #2 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #2
  tail call void @lv_obj_center(ptr noundef %3) #2
  %4 = tail call ptr @lv_button_create(ptr noundef %1) #2 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %4, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 3, i32 noundef 0, i32 noundef 1) #2
  %5 = tail call ptr @lv_label_create(ptr noundef %4) #2 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 0) #2
  tail call void @lv_obj_center(ptr noundef %5) #2
  %6 = tail call ptr @lv_button_create(ptr noundef %1) #2 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %6, i32 noundef 3, i32 noundef 2, i32 noundef 1, i32 noundef 3, i32 noundef 0, i32 noundef 1) #2
  %7 = tail call ptr @lv_label_create(ptr noundef %6) #2 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef 2, i32 noundef 0) #2
  tail call void @lv_obj_center(ptr noundef %7) #2
  %8 = tail call ptr @lv_button_create(ptr noundef %1) #2 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %8, i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 3, i32 noundef 1, i32 noundef 1) #2
  %9 = tail call ptr @lv_label_create(ptr noundef %8) #2 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 1) #2
  tail call void @lv_obj_center(ptr noundef %9) #2
  %10 = tail call ptr @lv_button_create(ptr noundef %1) #2 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %10, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 3, i32 noundef 1, i32 noundef 1) #2
  %11 = tail call ptr @lv_label_create(ptr noundef %10) #2 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 1) #2
  tail call void @lv_obj_center(ptr noundef %11) #2
  %12 = tail call ptr @lv_button_create(ptr noundef %1) #2 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %12, i32 noundef 3, i32 noundef 2, i32 noundef 1, i32 noundef 3, i32 noundef 1, i32 noundef 1) #2
  %13 = tail call ptr @lv_label_create(ptr noundef %12) #2 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef 2, i32 noundef 1) #2
  tail call void @lv_obj_center(ptr noundef %13) #2
  %14 = tail call ptr @lv_button_create(ptr noundef %1) #2 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %14, i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 3, i32 noundef 2, i32 noundef 1) #2
  %i.a = tail call ptr @lv_label_create(ptr noundef %14) #2 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %i.a, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 2) #2
  tail call void @lv_obj_center(ptr noundef %i.a) #2
  %15 = tail call ptr @lv_button_create(ptr noundef %1) #2 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %15, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 3, i32 noundef 2, i32 noundef 1) #2
  %i.b = tail call ptr @lv_label_create(ptr noundef %15) #2 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 2) #2
  tail call void @lv_obj_center(ptr noundef %i.b) #2
  %16 = tail call ptr @lv_button_create(ptr noundef %1) #2 ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %16, i32 noundef 3, i32 noundef 2, i32 noundef 1, i32 noundef 3, i32 noundef 2, i32 noundef 1) #2
  %17 = tail call ptr @lv_label_create(ptr noundef %16) #2 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %17, ptr noundef nonnull @.str, i32 noundef 2, i32 noundef 2) #2
  tail call void @lv_obj_center(ptr noundef %17) #2
  ret void
}

declare ptr @lv_obj_create(ptr noundef) local_unnamed_addr #1

declare ptr @lv_screen_active() local_unnamed_addr #1

declare void @lv_obj_set_style_grid_column_dsc_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_obj_set_style_grid_row_dsc_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_obj_set_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_obj_center(ptr noundef) local_unnamed_addr #1

declare void @lv_obj_set_layout(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lv_button_create(ptr noundef) local_unnamed_addr #1

declare void @lv_obj_set_grid_cell(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lv_label_create(ptr noundef) local_unnamed_addr #1

declare void @lv_label_set_text_fmt(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
end_hunk_0
