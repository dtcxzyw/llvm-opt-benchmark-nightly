Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/len?download=true
inline.NumInlined: 7
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"rstruct_len\00", align 1, !guid !10

; Function Attrs: nounwind uwtable
define void @Init_len(i64 noundef %0) local_unnamed_addr #0 !guid !11 {
bb.a:
  tail call void @rb_define_method(i64 noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @bug_struct_len, i32 noundef 0) #2
  ret void
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i64 @bug_struct_len(i64 noundef %0) #0 !guid !12 {
bb.a:
  %i.a = tail call i64 @rb_struct_size(i64 noundef %0) #2 ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = ashr i64 %i.a, 1
  br label %RSTRUCT_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_num2long(i64 noundef %i.a) #2
  br label %RSTRUCT_LEN.exit

RSTRUCT_LEN.exit:                                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %i.e = add i64 %.0.i.i, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.e, -1
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %RSTRUCT_LEN.exit
  %i.f = shl nsw i64 %.0.i.i, 1
  %i.g = or disjoint i64 %i.f, 1
  br label %rb_long2num_inline.exit

bb.e:                                             ; preds = %RSTRUCT_LEN.exit
  %i.h = tail call i64 @rb_int2big(i64 noundef %.0.i.i) #2
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  ret i64 %.0.i
}

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #1

declare i64 @rb_struct_size(i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i64 -4845947544677067042}
!11 = !{i64 -6001414196867273376}
!12 = !{i64 -205338825236539890}
end_hunk_0
