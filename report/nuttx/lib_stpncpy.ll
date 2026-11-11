Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_stpncpy?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nofree norecurse noredzone nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local ptr @stpncpy(ptr nofree noundef writeonly captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 3 uses
  %.not14 = icmp samesign eq i64 %2, 0
  br i1 %.not14, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.016 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ]  ; 3 uses
  %.01115 = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.c = load i8, ptr %.01115, align 1            ; 2 uses
  store i8 %i.c, ptr %.016, align 1
  %.not12 = icmp eq i8 %i.c, 0
  br i1 %.not12, label %.critedge.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.01115, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %.016, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.b
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !7

.critedge.loopexit:                               ; preds = %bb.b, %.lr.ph
  %.0.lcssa.ph = phi ptr [ %.016, %.lr.ph ], [ %i.b, %bb.b ] ; 2 uses
  %.pre = ptrtoaddr ptr %.0.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0.lcssa22.pre-phi = phi i64 [ %.pre, %.critedge.loopexit ], [ %i.a, %bb.a ]
  %.0.lcssa = phi ptr [ %.0.lcssa.ph, %.critedge.loopexit ], [ %0, %bb.a ] ; 3 uses
  %.not1319 = icmp eq ptr %.0.lcssa, %i.b
  br i1 %.not1319, label %._crit_edge, label %.lr.ph21.preheader

.lr.ph21.preheader:                               ; preds = %.critedge
  %i.f = add i64 %2, %i.a
  %i.g = sub i64 %i.f, %.0.lcssa22.pre-phi
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa, i8 0, i64 %i.g, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph21.preheader, %.critedge
  ret ptr %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse noredzone nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
end_hunk_0
