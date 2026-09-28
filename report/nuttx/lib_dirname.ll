Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_dirname?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local noundef ptr @dirname(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull %0) #5 ; 2 uses
  %sext = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext, 32
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -1       ; 2 uses
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 47
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %sext26 = shl i64 %i.c, 32
  %1 = ashr exact i64 %sext26, 32                 ; 2 uses
  %i.i = icmp sgt i64 %1, 1
  br i1 %i.i, label %.lr.ph30, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph30
  %i.j = icmp sgt i64 %indvars.iv29, 2
  br i1 %i.j, label %.lr.ph30, label %.loopexit, !llvm.loop !7

.lr.ph30:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.k = phi ptr [ %i.m, %.lr.ph ], [ %i.f, %.lr.ph.preheader ]
  %indvars.iv29 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  store i8 0, ptr %i.k, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv29, -1 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 %indvars.iv.next
  %i.m = getelementptr i8, ptr %i.l, i64 -1       ; 2 uses
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp eq i8 %i.n, 47
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph30, %bb.c
  %i.p = tail call ptr @strrchr(ptr noundef nonnull %0, i32 noundef 47) #5 ; 3 uses
  %.not20 = icmp eq ptr %i.p, null
  br i1 %.not20, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %i.q = icmp eq ptr %i.p, %0
  br i1 %i.q, label %.loopexit, label %.lr.ph32

.preheader:                                       ; preds = %.lr.ph32
  %i.r = icmp eq ptr %i.s, %0
  br i1 %i.r, label %.loopexit, label %.lr.ph32, !llvm.loop !8

.lr.ph32:                                         ; preds = %.preheader.preheader, %.preheader
  %.01631 = phi ptr [ %i.s, %.preheader ], [ %i.p, %.preheader.preheader ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.01631, i64 -1 ; 3 uses
  store i8 0, ptr %.01631, align 1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 47
  br i1 %i.u, label %.preheader, label %..loopexit.loopexit_crit_edge, !llvm.loop !8

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph32
  br label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %.lr.ph.preheader, %.preheader.preheader, %..loopexit.loopexit_crit_edge, %._crit_edge, %bb.a, %bb.b
  %.017 = phi ptr [ @.str, %bb.b ], [ @.str, %bb.a ], [ @.str.1, %.lr.ph.preheader ], [ @.str, %._crit_edge ], [ @.str.1, %.preheader.preheader ], [ %0, %..loopexit.loopexit_crit_edge ], [ @.str.1, %.preheader ], [ @.str.1, %.lr.ph ]
  ret ptr %.017
}

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-strlen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-strrchr" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !9}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
