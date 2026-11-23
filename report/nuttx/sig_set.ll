Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/sig_set?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sigset_s = type { [2 x i32] }

@.str = private unnamed_addr constant [28 x i8] c"/libs/libc/signal/sig_set.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"func != ((_sa_handler_t)-1)\00", align 1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local ptr @sigset(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.sigset_s, align 4           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.a = icmp ugt i32 %0, 63
  br i1 %i.a, label %bb.i, label %switch.early.test

switch.early.test:                                ; preds = %bb.a
  switch i32 %0, label %bb.b [
    i32 19, label %bb.i
    i32 9, label %bb.i
  ]

bb.b:                                             ; preds = %switch.early.test
  %.not = icmp eq ptr %1, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 111, ptr noundef nonnull @.str.1) #5
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = call i32 @sigemptyset(ptr noundef nonnull %2) #6 ; 0 uses
  %i.c = call i32 @sigaddset(ptr noundef nonnull %2, i32 noundef %0) #6 ; 0 uses
  %i.d = icmp eq ptr %1, inttoptr (i64 2 to ptr)
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = call i32 @sigprocmask(i32 noundef 1, ptr noundef nonnull %2, ptr noundef null) #6 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.i, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.g = call ptr @signal(i32 noundef %0, ptr noundef %1) #6 ; 3 uses
  %.not25 = icmp eq ptr %i.g, inttoptr (i64 -1 to ptr)
  br i1 %.not25, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %2, ptr noundef null) #6 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.j = call ptr @signal(i32 noundef %0, ptr noundef %i.g) #6 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %switch.early.test, %switch.early.test, %bb.a, %bb.h, %bb.e
  %.0 = phi i32 [ -22, %switch.early.test ], [ %i.e, %bb.e ], [ %i.h, %bb.h ], [ -22, %bb.a ], [ -22, %switch.early.test ]
  %i.k = call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #4, !srcloc !8
  %i.l = trunc i8 %i.k to i1
  br i1 %i.l, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = sub nsw i32 0, %.0
  %i.n = call ptr @__errno() #6
  store i32 %i.m, ptr %i.n, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g, %bb.f, %bb.e
  %.019 = phi ptr [ inttoptr (i64 2 to ptr), %bb.e ], [ inttoptr (i64 -1 to ptr), %bb.f ], [ %i.g, %bb.g ], [ inttoptr (i64 -1 to ptr), %bb.j ], [ inttoptr (i64 -1 to ptr), %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  ret ptr %.019
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare dso_local i32 @sigemptyset(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local ptr @__errno() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone noreturn nounwind optsize }
attributes #6 = { noredzone nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i64 192120}
end_hunk_0
