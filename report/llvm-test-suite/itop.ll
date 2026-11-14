Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/itop?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local ptr @itop(i32 noundef %0) local_unnamed_addr #0 !guid !8 {
bb.a:
  %i.a = tail call ptr (i32, ...) @palloc(i32 noundef 2) #3 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.lobit = lshr i32 %0, 31
  %i.c = trunc nuw nsw i32 %.lobit to i8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.c, ptr %i.d, align 2, !tbaa !11
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %spec.select = tail call i32 @llvm.abs.i32(i32 %0, i1 true) ; 2 uses
  %2 = trunc i32 %spec.select to i16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  store i16 %2, ptr %1, align 2, !tbaa !12
  %3 = lshr i32 %spec.select, 16                  ; 2 uses
  %.not18 = icmp eq i32 %3, 0
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = trunc nuw nsw i32 %3 to i16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.f, ptr %i.e, align 2, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.lcssa = phi ptr [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = ptrtoint ptr %.lcssa to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 1
  %i.l = trunc i64 %i.k to i16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.l, ptr %i.m, align 2, !tbaa !13
  %i.n = tail call ptr @presult(ptr noundef nonnull %i.a) #3
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.015 = phi ptr [ %i.n, %bb.d ], [ null, %bb.a ]
  ret ptr %.015
}

declare ptr @palloc(...) local_unnamed_addr #1

declare ptr @presult(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!8 = !{i64 8986344026423167094}
!9 = !{!"short", !5, i64 0}
!10 = !{!"", !9, i64 0, !9, i64 2, !9, i64 4, !5, i64 6, !5, i64 8}
!11 = !{!10, !5, i64 6}
!12 = !{!9, !9, i64 0}
!13 = !{!10, !9, i64 4}
end_hunk_0
