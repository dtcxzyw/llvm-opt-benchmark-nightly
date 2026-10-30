Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_list?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._lv_obj_class_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }

@lv_obj_class = external constant %struct._lv_obj_class_t, align 8
@.str = private unnamed_addr constant [8 x i8] c"lv_list\00", align 1
@lv_list_class = constant { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, [5 x i8] } { ptr @lv_obj_class, ptr null, ptr null, ptr null, ptr null, ptr @.str, i32 195, i32 260, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer }, align 8
@lv_button_class = external constant %struct._lv_obj_class_t, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"lv_list_button\00", align 1
@lv_list_button_class = constant { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, [5 x i8] } { ptr @lv_button_class, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, i32 536871012, i32 1073741823, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer }, align 8
@lv_label_class = external constant %struct._lv_obj_class_t, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"lv_list_text\00", align 1
@lv_list_text_class = constant { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, [5 x i8] } { ptr @lv_label_class, ptr null, ptr null, ptr null, ptr null, ptr @.str.2, i32 536871012, i32 1073741823, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define noundef ptr @lv_list_create(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_class_create_obj(ptr noundef nonnull @lv_list_class, ptr noundef %0) #2 ; 3 uses
  tail call void @lv_obj_class_init_obj(ptr noundef %i.a) #2
  tail call void @lv_obj_set_flex_flow(ptr noundef %i.a, i32 noundef 1) #2
  ret ptr %i.a
}

declare ptr @lv_obj_class_create_obj(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lv_obj_class_init_obj(ptr noundef) local_unnamed_addr #1

declare void @lv_obj_set_flex_flow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef ptr @lv_list_add_text(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_class_create_obj(ptr noundef nonnull @lv_list_text_class, ptr noundef %0) #2 ; 3 uses
  tail call void @lv_obj_class_init_obj(ptr noundef %i.a) #2
  tail call void @lv_label_set_text(ptr noundef %i.a, ptr noundef %1) #2
  ret ptr %i.a
}

declare void @lv_label_set_text(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef ptr @lv_list_add_button(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_class_create_obj(ptr noundef nonnull @lv_list_button_class, ptr noundef %0) #2 ; 5 uses
  tail call void @lv_obj_class_init_obj(ptr noundef %i.a) #2
  tail call void @lv_obj_set_flex_flow(ptr noundef %i.a, i32 noundef 0) #2
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @lv_image_create(ptr noundef %i.a) #2
  tail call void @lv_image_set_src(ptr noundef %i.b, ptr noundef nonnull %1) #2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not15 = icmp eq ptr %2, null
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @lv_label_create(ptr noundef %i.a) #2 ; 3 uses
  tail call void @lv_label_set_text(ptr noundef %i.c, ptr noundef nonnull %2) #2
  tail call void @lv_label_set_long_mode(ptr noundef %i.c, i32 noundef 3) #2
  tail call void @lv_obj_set_flex_grow(ptr noundef %i.c, i8 noundef zeroext 1) #2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret ptr %i.a
}

declare ptr @lv_image_create(ptr noundef) local_unnamed_addr #1

declare void @lv_image_set_src(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lv_label_create(ptr noundef) local_unnamed_addr #1

declare void @lv_label_set_long_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_obj_set_flex_grow(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @lv_list_get_button_text(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lv_obj_get_child_count(ptr noundef %1) #2
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %2
  %i.b = add nuw i32 %.0811, 1                    ; 2 uses
  %i.c = tail call i32 @lv_obj_get_child_count(ptr noundef %1) #2
  %i.d = icmp ult i32 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %.loopexit, !llvm.loop !9

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0811 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %.0910 = phi ptr [ %.1, %bb.b ], [ undef, %bb.a ]
  %i.e = tail call ptr @lv_obj_get_child(ptr noundef %1, i32 noundef %.0811) #2 ; 2 uses
  %i.f = tail call zeroext i1 @lv_obj_check_type(ptr noundef %i.e, ptr noundef nonnull @lv_label_class) #2 ; 2 uses
  br i1 %i.f, label %.thread, label %2

.thread:                                          ; preds = %.lr.ph
  %i.g = tail call ptr @lv_label_get_text(ptr noundef %i.e) #2
  br label %2

2:                                                ; preds = %.lr.ph, %.thread
  %.1 = phi ptr [ %i.g, %.thread ], [ %.0910, %.lr.ph ] ; 2 uses
  br i1 %i.f, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %2, %bb.b, %bb.a
  %.2 = phi ptr [ @.str.3, %bb.a ], [ @.str.3, %bb.b ], [ %.1, %2 ]
  ret ptr %.2
}

declare i32 @lv_obj_get_child_count(ptr noundef) local_unnamed_addr #1

declare ptr @lv_obj_get_child(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @lv_obj_check_type(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lv_label_get_text(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @lv_list_set_button_text(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lv_obj_get_child_count(ptr noundef %1) #2
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %.critedge

bb.b:                                             ; preds = %.critedge
  %i.b = add nuw i32 %.089, 1                     ; 2 uses
  %i.c = tail call i32 @lv_obj_get_child_count(ptr noundef %1) #2
  %i.d = icmp ult i32 %i.b, %i.c
  br i1 %i.d, label %.critedge, label %.loopexit, !llvm.loop !10

.critedge:                                        ; preds = %bb.a, %bb.b
  %.089 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.e = tail call ptr @lv_obj_get_child(ptr noundef %1, i32 noundef %.089) #2 ; 2 uses
  %i.f = tail call zeroext i1 @lv_obj_check_type(ptr noundef %i.e, ptr noundef nonnull @lv_label_class) #2
  br i1 %i.f, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.critedge
  tail call void @lv_label_set_text(ptr noundef %i.e, ptr noundef %2) #2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

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
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
end_hunk_0
