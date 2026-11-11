Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/s_roundToUI32?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@softfloat_exceptionFlags = external local_unnamed_addr global i8, align 1

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 4294967296) i64 @softfloat_roundToUI32(i1 noundef zeroext %0, i64 noundef %1, i8 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = and i8 %2, -5                            ; 2 uses
  %or.cond.not = icmp eq i8 %i.a, 0
  br i1 %or.cond.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %0, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %or.cond10 = icmp eq i8 %i.a, 2
  br i1 %or.cond10, label %bb.k, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.b = icmp eq i8 %2, 3
  %spec.select = select i1 %i.b, i64 4095, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %.034 = phi i64 [ 0, %bb.d ], [ 2048, %bb.a ], [ %spec.select, %bb.e ]
  %i.c = and i64 %1, 4095                         ; 2 uses
  %i.d = add i64 %.034, %1                        ; 2 uses
  %.not37 = icmp ult i64 %i.d, 17592186044416
  br i1 %.not37, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.e = lshr i64 %i.d, 12                        ; 2 uses
  %i.f = icmp eq i64 %i.c, 2048
  %i.g = icmp eq i8 %2, 0
  %or.cond5 = and i1 %i.f, %i.g
  %i.h = and i64 %i.e, 4294967294
  %spec.select39 = select i1 %or.cond5, i64 %i.h, i64 %i.e ; 3 uses
  %i.i = icmp ne i64 %spec.select39, 0
  %or.cond7 = and i1 %0, %i.i
  br i1 %or.cond7, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not38 = icmp eq i64 %i.c, 0
  br i1 %.not38, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = icmp eq i8 %2, 6
  %4 = zext i1 %i.j to i64
  %spec.select40 = or i64 %spec.select39, %4      ; 2 uses
  br i1 %3, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.k = load i8, ptr @softfloat_exceptionFlags, align 1, !tbaa !12
  %i.l = or i8 %i.k, 1
  store i8 %i.l, ptr @softfloat_exceptionFlags, align 1, !tbaa !12
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.d
  tail call void @softfloat_raiseFlags(i8 noundef zeroext 16) #2
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.c, %bb.k
  %.035 = phi i64 [ 4294967295, %bb.k ], [ 0, %bb.c ], [ %spec.select40, %bb.j ], [ %spec.select40, %bb.i ], [ %spec.select39, %bb.h ]
  ret i64 %.035
}

declare void @softfloat_raiseFlags(i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
end_hunk_0
