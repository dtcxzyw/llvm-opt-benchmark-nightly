Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/mq_initialize?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.msgpool_s = type { [896 x i8], [8 x %struct.msgbuf_s] }
%struct.msgbuf_s = type { %struct.list_node, i16, i64, [32 x i8] }
%struct.list_node = type { ptr, ptr }

@g_msgfreelock = dso_local local_unnamed_addr global i8 0, align 1
@g_msgpool = internal global %struct.msgpool_s zeroinitializer, align 8
@g_msgfree = dso_local global %struct.list_node zeroinitializer, align 8
@g_msgfreeirq = dso_local global %struct.list_node zeroinitializer, align 8
@g_msgfreelist = external dso_local global %struct.list_node, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nofree norecurse noredzone nosync nounwind optsize memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @nxmq_initialize() local_unnamed_addr #2 {
bb.a:
  store ptr @g_msgfree, ptr @g_msgfree, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.a = phi ptr [ @g_msgfree, %bb.a ], [ %.019.i, %bb.b ] ; 2 uses
  %.019.i = phi ptr [ @g_msgpool, %bb.a ], [ %i.d, %bb.b ] ; 7 uses
  %.01718.i = phi i32 [ 0, %bb.a ], [ %i.e, %bb.b ]
  %i.b = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %.019.i, i64 8
  store ptr %i.a, ptr %i.c, align 8
  store ptr @g_msgfree, ptr %.019.i, align 8
  store ptr %.019.i, ptr %i.a, align 8
  store ptr %.019.i, ptr getelementptr inbounds nuw (i8, ptr @g_msgfree, i64 8), align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.019.i, i64 56 ; 2 uses
  %i.e = add nuw nsw i32 %.01718.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.e, 8
  br i1 %exitcond.not.i, label %mq_msgblockinit.exit, label %bb.b, !llvm.loop !7

mq_msgblockinit.exit:                             ; preds = %bb.b
  store ptr @g_msgfreeirq, ptr @g_msgfreeirq, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %mq_msgblockinit.exit
  %i.f = phi ptr [ @g_msgfreeirq, %mq_msgblockinit.exit ], [ %.019.i12, %bb.c ] ; 2 uses
  %.019.i12 = phi ptr [ %i.d, %mq_msgblockinit.exit ], [ %i.i, %bb.c ] ; 7 uses
  %.01718.i13 = phi i32 [ 0, %mq_msgblockinit.exit ], [ %i.j, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %.019.i12, i64 16
  store i8 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.019.i12, i64 8
  store ptr %i.f, ptr %i.h, align 8
  store ptr @g_msgfreeirq, ptr %.019.i12, align 8
  store ptr %.019.i12, ptr %i.f, align 8
  store ptr %.019.i12, ptr getelementptr inbounds nuw (i8, ptr @g_msgfreeirq, i64 8), align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.019.i12, i64 56 ; 2 uses
  %i.j = add nuw nsw i32 %.01718.i13, 1           ; 2 uses
  %exitcond.not.i14 = icmp eq i32 %i.j, 8
  br i1 %exitcond.not.i14, label %mq_msgblockinit.exit15, label %bb.c, !llvm.loop !7

mq_msgblockinit.exit15:                           ; preds = %bb.c
  store ptr @g_msgfreelist, ptr @g_msgfreelist, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %mq_msgblockinit.exit15
  %i.k = phi ptr [ @g_msgfreelist, %mq_msgblockinit.exit15 ], [ %.02.i, %bb.d ] ; 2 uses
  %.02.i = phi ptr [ %i.i, %mq_msgblockinit.exit15 ], [ %i.m, %bb.d ] ; 6 uses
  %.0141.i = phi i32 [ 0, %mq_msgblockinit.exit15 ], [ %i.n, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.02.i, i64 8
  store ptr %i.k, ptr %i.l, align 8
  store ptr @g_msgfreelist, ptr %.02.i, align 8
  store ptr %.02.i, ptr %i.k, align 8
  store ptr %.02.i, ptr getelementptr inbounds nuw (i8, ptr @g_msgfreelist, i64 8), align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.02.i, i64 64
  %i.n = add nuw nsw i32 %.0141.i, 1              ; 2 uses
  %exitcond.not.i16 = icmp eq i32 %i.n, 8
  br i1 %exitcond.not.i16, label %sysv_msgblockinit.exit, label %bb.d, !llvm.loop !8

sysv_msgblockinit.exit:                           ; preds = %bb.d
  ret void
}

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse noredzone nosync nounwind optsize memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = distinct !{!7, !9}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
