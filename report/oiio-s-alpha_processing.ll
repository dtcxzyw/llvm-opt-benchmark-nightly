begin_hunk_0
; ModuleID = '/opt-bench/work/_work/llvm-opt-benchmark-nightly/llvm-opt-benchmark-nightly/data/oiio/optimized/alpha_processing.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
; [#uses=1]
; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @HasAlpha8b_C(ptr noundef readonly captures(none) %0, i32 noundef %1) #3 {
  br label %3

3:                                                ; preds = %5, %2
  %.02 = phi ptr [ %0, %2 ], [ %7, %5 ]           ; [#uses=2 type=ptr]
  %.0 = phi i32 [ %1, %2 ], [ %6, %5 ]            ; [#uses=2 type=i32]
  %4 = icmp sgt i32 %.0, 0                        ; [#uses=1 type=i1]
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = add nsw i32 %.0, -1                        ; [#uses=1 type=i32]
  %7 = getelementptr inbounds nuw i8, ptr %.02, i64 1 ; [#uses=1 type=ptr]
  %8 = load i8, ptr %.02, align 1, !tbaa !9       ; [#uses=1 type=i8]
  %.not = icmp eq i8 %8, -1                       ; [#uses=1 type=i1]
  br i1 %.not, label %3, label %9, !llvm.loop !38

9:                                                ; preds = %3, %5
  %.03 = phi i32 [ 1, %5 ], [ 0, %3 ]             ; [#uses=1 type=i32]
  ret i32 %.03
}

end_hunk_1
