Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/iseq_load?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"RubyVM::InstructionSequence\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"iseq_load\00", align 1

; Function Attrs: nounwind uwtable
define void @Init_iseq_load() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_path2class(ptr noundef nonnull @.str) #3
  tail call void @rb_define_singleton_method(i64 noundef %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull @iseq_load, i32 noundef -1) #3
  ret void
}

declare i64 @rb_path2class(ptr noundef) local_unnamed_addr #1

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i64 @iseq_load(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !11
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %rb_scan_args_set.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = icmp eq i32 %0, 2
  br i1 %i.e, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #4
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader, %bb.b
  %3 = phi i64 [ %i.d, %bb.b ], [ 4, %.preheader ]
  %i.f = tail call i64 @rb_iseq_load(i64 noundef %i.b, i64 noundef 0, i64 noundef %3) #3
  ret i64 %i.f
}

declare i64 @rb_iseq_load(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

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
!10 = !{!"long", !7, i64 0}
!11 = !{!10, !10, i64 0}
end_hunk_0
