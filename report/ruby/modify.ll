inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"modify!\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"modify_expand!\00", align 1

; Function Attrs: nounwind uwtable
define noundef i64 @bug_str_modify(i64 noundef returned %0) #0 {
bb.a:
  tail call void @rb_str_modify(i64 noundef %0) #2
  ret i64 %0
}

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef i64 @bug_str_modify_expand(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %2, label %bb.b

2:                                                ; preds = %bb.a
  %3 = ashr i64 %1, 1
  br label %rb_num2long_inline.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_num2long(i64 noundef %1) #2
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %2, %bb.b
  %.0.i = phi i64 [ %3, %2 ], [ %i.b, %bb.b ]
  tail call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %.0.i) #2
  ret i64 %0
}

declare void @rb_str_modify_expand(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @Init_string_modify(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @rb_define_method(i64 noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @bug_str_modify, i32 noundef 0) #2
  tail call void @rb_define_method(i64 noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @bug_str_modify_expand, i32 noundef 1) #2
  ret void
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
end_hunk_0
