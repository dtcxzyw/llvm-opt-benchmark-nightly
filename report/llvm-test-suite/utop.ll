Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/utop?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local ptr @utop(i32 noundef %0) local_unnamed_addr #0 !guid !8 {
bb.a:
  %i.a = tail call ptr (i32, ...) @palloc(i32 noundef 2) #2 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 0, ptr %i.c, align 2, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %1 = trunc i32 %0 to i16
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  store i16 %1, ptr %i.d, align 2, !tbaa !12
  %3 = lshr i32 %0, 16                            ; 2 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw i32 %3 to i16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.e, ptr %2, align 2, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.lcssa = phi ptr [ %2, %bb.b ], [ %i.f, %bb.c ]
  %i.g = ptrtoint ptr %.lcssa to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 1
  %i.k = trunc i64 %i.j to i16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.k, ptr %i.l, align 2, !tbaa !13
  %i.m = tail call ptr @presult(ptr noundef nonnull %i.a) #2
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.012 = phi ptr [ %i.m, %bb.d ], [ null, %bb.a ]
  ret ptr %.012
}

declare ptr @palloc(...) local_unnamed_addr #1

declare ptr @presult(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 -4557640203929904054}
!9 = !{!"short", !5, i64 0}
!10 = !{!"", !9, i64 0, !9, i64 2, !9, i64 4, !5, i64 6, !5, i64 8}
!11 = !{!10, !5, i64 6}
!12 = !{!9, !9, i64 0}
!13 = !{!10, !9, i64 4}
end_hunk_0
