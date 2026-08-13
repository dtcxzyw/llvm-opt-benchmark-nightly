begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"char*\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"uintmax_t\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"intmax_t\00", align 1
@switch.table.extype = private unnamed_addr constant [4 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.1], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @extype(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = and i64 %0, -4
  %2 = icmp eq i64 %1, 260
  br i1 %2, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %switch.gep.a = getelementptr [8 x i8], ptr @switch.table.extype, i64 %0
  %switch.gep = getelementptr i8, ptr %switch.gep.a, i64 -2080
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.3, %bb.a ]
  ret ptr %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
