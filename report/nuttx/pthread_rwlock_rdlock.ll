Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/pthread_rwlock_rdlock?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @pthread_rwlock_tryrdlock(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef %0) #4 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.c = load i32, ptr %i.b, align 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %tryrdlock.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i8, ptr %i.d, align 8, !range !7, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %tryrdlock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %tryrdlock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw i32 %i.h, 1
  store i32 %i.j, ptr %i.g, align 8
  br label %tryrdlock.exit

tryrdlock.exit:                                   ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 0, %bb.e ], [ 16, %bb.b ], [ 16, %bb.c ], [ 11, %bb.d ]
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %tryrdlock.exit
  %.0 = phi i32 [ %.0.i, %tryrdlock.exit ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone optsize
declare dso_local i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @pthread_rwlock_clockrdlock(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef %0) #4 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.not18 = icmp eq ptr %2, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.i
  %i.e = load i32, ptr %i.b, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.c, align 8, !range !7, !noundef !8
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load i32, ptr %3, align 8                ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %tryrdlock.exit.a, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw i32 %i.h, 1
  store i32 %i.j, ptr %3, align 8
  br label %tryrdlock.exit.a

bb.f:                                             ; preds = %bb.b, %bb.c
  br i1 %.not18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i32 @pthread_cond_clockwait(ptr noundef nonnull %i.d, ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2) #4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.l = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.d, ptr noundef nonnull %0) #4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i32 [ %i.k, %bb.g ], [ %i.l, %bb.h ]  ; 2 uses
  %.not19 = icmp eq i32 %.0, 0
  br i1 %.not19, label %bb.b, label %tryrdlock.exit.a, !llvm.loop !9

tryrdlock.exit.a:                                 ; preds = %bb.i, %bb.e, %bb.d
  %.1 = phi i32 [ 11, %bb.d ], [ 0, %bb.e ], [ %.0, %bb.i ]
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %tryrdlock.exit.a
  %.014 = phi i32 [ %.1, %tryrdlock.exit.a ], [ %i.a, %bb.a ]
  ret i32 %.014
}

; Function Attrs: noredzone optsize
declare dso_local i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local i32 @pthread_cond_clockwait(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @pthread_rwlock_timedrdlock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_rwlock_clockrdlock(ptr noundef %0, i32 noundef 0, ptr noundef %1) #5
  ret i32 %i.a
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @pthread_rwlock_rdlock(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_rwlock_clockrdlock(ptr noundef %0, i32 noundef 0, ptr noundef null) #5
  ret i32 %i.a
}

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noredzone nounwind optsize }
attributes #5 = { noredzone optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
