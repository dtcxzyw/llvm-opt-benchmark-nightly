begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lv_example_grid_3.col_dsc = internal global [4 x i32] [i32 60, i32 536870812, i32 536870813, i32 536870911], align 16
@lv_example_grid_3.row_dsc = internal global [4 x i32] [i32 50, i32 536870812, i32 50, i32 536870911], align 16
@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1

; Function Attrs: nounwind uwtable
define void @lv_example_grid_3() local_unnamed_addr #0 {
  %1 = tail call ptr @lv_screen_active() #2
  %2 = tail call ptr @lv_obj_create(ptr noundef %1) #2 ; 4 uses
  tail call void @lv_obj_set_size(ptr noundef %2, i32 noundef 300, i32 noundef 220) #2
  tail call void @lv_obj_center(ptr noundef %2) #2
  tail call void @lv_obj_set_grid_dsc_array(ptr noundef %2, ptr noundef nonnull @lv_example_grid_3.col_dsc, ptr noundef nonnull @lv_example_grid_3.row_dsc) #2
  br label %bb.a

bb.a:                                             ; preds = %0, %bb.a
  %.016 = phi i8 [ 0, %0 ], [ %7, %bb.a ]         ; 3 uses
  %3 = urem i8 %.016, 3
  %4 = udiv i8 %.016, 3
  %i.a = tail call ptr @lv_obj_create(ptr noundef %2) #2 ; 2 uses
  %5 = zext nneg i8 %3 to i32                     ; 2 uses
  %6 = zext nneg i8 %4 to i32                     ; 2 uses
  tail call void @lv_obj_set_grid_cell(ptr noundef %i.a, i32 noundef 3, i32 noundef %5, i32 noundef 1, i32 noundef 3, i32 noundef %6, i32 noundef 1) #2
  %i.b = tail call ptr @lv_label_create(ptr noundef %i.a) #2 ; 2 uses
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %6) #2
  tail call void @lv_obj_center(ptr noundef %i.b) #2
  %7 = add nuw nsw i8 %.016, 1                    ; 2 uses
  %exitcond.not = icmp eq i8 %7, 9
  br i1 %exitcond.not, label %8, label %bb.a, !llvm.loop !8

8:                                                ; preds = %bb.a
  ret void
}

declare ptr @lv_obj_create(ptr noundef) local_unnamed_addr #1

declare ptr @lv_screen_active() local_unnamed_addr #1

declare void @lv_obj_set_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_obj_center(ptr noundef) local_unnamed_addr #1

declare void @lv_obj_set_grid_dsc_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
