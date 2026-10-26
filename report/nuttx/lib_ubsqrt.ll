Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_ubsqrt?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse noredzone nosync nounwind optsize memory(none) uwtable
define dso_local i32 @ub32sqrtub16(i64 noundef %0) local_unnamed_addr #0 {
select.unfold.preheader:
  %i.a = icmp eq i64 %0, -1
  %spec.select = select i1 %i.a, i64 -9223372036854775808, i64 %0
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.preheader, %bb.a
  %.012 = phi i64 [ %i.d, %bb.a ], [ %spec.select, %select.unfold.preheader ] ; 5 uses
  %.not = icmp eq i64 %.012, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %select.unfold
  %i.b = udiv i64 %0, %.012
  %i.c = add i64 %i.b, %.012
  %i.d = lshr i64 %i.c, 1                         ; 2 uses
  %.not14 = icmp ult i64 %i.d, %.012
  br i1 %.not14, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a, %select.unfold
  %.012.lcssa = phi i64 [ %.012, %bb.a ], [ 0, %select.unfold ]
  %i.e = trunc i64 %.012.lcssa to i32
  ret i32 %i.e
}

; Function Attrs: nofree norecurse noredzone nosync nounwind optsize memory(none) uwtable
define dso_local zeroext i16 @ub16sqrtub8(i32 noundef %0) local_unnamed_addr #0 {
select.unfold.preheader:
  %i.a = icmp eq i32 %0, -1
  %spec.select = select i1 %i.a, i32 -2147483648, i32 %0
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.preheader, %bb.a
  %.012 = phi i32 [ %i.d, %bb.a ], [ %spec.select, %select.unfold.preheader ] ; 5 uses
  %.not = icmp eq i32 %.012, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %select.unfold
  %i.b = udiv i32 %0, %.012
  %i.c = add i32 %i.b, %.012
  %i.d = lshr i32 %i.c, 1                         ; 2 uses
  %.not14 = icmp ult i32 %i.d, %.012
  br i1 %.not14, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a, %select.unfold
  %.012.lcssa = phi i32 [ %.012, %bb.a ], [ 0, %select.unfold ]
  %i.e = trunc i32 %.012.lcssa to i16
  ret i16 %i.e
}

attributes #0 = { nofree norecurse noredzone nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
end_hunk_0
