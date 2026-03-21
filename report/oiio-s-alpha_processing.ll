begin_hunk_0
; ModuleID = '/opt-bench/work/_work/llvm-opt-benchmark-nightly/llvm-opt-benchmark-nightly/work/opt-out/oiio-s-alpha_processing.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
; [#uses=1]
; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @HasAlpha8b_C(ptr noundef readonly captures(none) %0, i32 noundef %1) #3 {
  %3 = icmp sgt i32 %1, 0                         ; [#uses=1 type=i1]
  br i1 %3, label %.lr.ph, label %._crit_edge

4:                                                ; preds = %.lr.ph
  %5 = add nsw i32 %.05, -1                       ; [#uses=1 type=i32]
  %6 = getelementptr inbounds nuw i8, ptr %.024, i64 1 ; [#uses=1 type=ptr]
  %7 = icmp sgt i32 %.05, 1                       ; [#uses=1 type=i1]
  br i1 %7, label %.lr.ph, label %._crit_edge, !llvm.loop !38

.lr.ph:                                           ; preds = %2, %4
  %.05 = phi i32 [ %5, %4 ], [ %1, %2 ]           ; [#uses=2 type=i32]
  %.024 = phi ptr [ %6, %4 ], [ %0, %2 ]          ; [#uses=2 type=ptr]
  %8 = load i8, ptr %.024, align 1, !tbaa !9      ; [#uses=1 type=i8]
  %.not = icmp eq i8 %8, -1                       ; [#uses=1 type=i1]
  br i1 %.not, label %4, label %._crit_edge6, !llvm.loop !38

._crit_edge6:                                     ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %4, %._crit_edge6, %2
  %.03 = phi i32 [ 1, %._crit_edge6 ], [ 0, %2 ], [ 0, %4 ] ; [#uses=1 type=i32]
  ret i32 %.03
}

end_hunk_1
