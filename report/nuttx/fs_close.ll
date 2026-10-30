Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/fs_close?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"/fs/vfs/fs_close.c\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"filep != ((void*)0)\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @file_close(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 101, ptr noundef nonnull @.str.1) #5
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not13 = icmp eq ptr %i.b, null
  br i1 %.not13, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not15 = icmp eq ptr %i.f, null
  br i1 %.not15, label %bb.f, label %1

1:                                                ; preds = %bb.e
  %2 = tail call i32 %i.f(ptr noundef nonnull %0) #6
  br label %bb.f

bb.f:                                             ; preds = %1, %bb.e, %bb.d
  %.0 = phi i32 [ %2, %1 ], [ 0, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.g = icmp sgt i32 %.0, -1
  br i1 %i.g, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  tail call void @inode_release(ptr noundef nonnull %i.b) #6
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  store ptr null, ptr %i.a, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.1 = phi i32 [ %.0, %bb.g ], [ 0, %bb.c ]
  ret i32 %.1
}

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local void @inode_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @nx_close(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr asm sideeffect "movq %gs:(${1:c}), $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(i64 8) #7, !srcloc !7
  %i.b = tail call ptr @nxsched_get_fdlist_from_tcb(ptr noundef %i.a) #6
  %i.c = tail call i32 @fdlist_close(ptr noundef %i.b, i32 noundef %0) #6
  ret i32 %i.c
}

; Function Attrs: noredzone optsize
declare dso_local i32 @fdlist_close(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local ptr @nxsched_get_fdlist_from_tcb(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -1, -2147483648) i32 @close(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr asm sideeffect "movq %gs:(${1:c}), $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(i64 8) #7, !srcloc !7
  %i.b = tail call ptr @nxsched_get_fdlist_from_tcb(ptr noundef %i.a) #6
  %i.c = tail call i32 @fdlist_close(ptr noundef %i.b, i32 noundef %0) #6 ; 3 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #7, !srcloc !9
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub nsw i32 0, %i.c
  %i.h = tail call ptr @__errno() #6
  store i32 %i.g, ptr %i.h, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %i.c, %bb.a ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone optsize
declare dso_local ptr @__errno() local_unnamed_addr #4

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noredzone noreturn nounwind optsize }
attributes #6 = { noredzone nounwind optsize }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{i64 2148774969}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{i64 232604}
end_hunk_0
