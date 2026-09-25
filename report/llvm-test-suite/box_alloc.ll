Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/box_alloc?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@s_at_a_time = internal unnamed_addr global i32 1000, align 4
@s_finalize = internal unnamed_addr global ptr null, align 8
@s_free = internal unnamed_addr global ptr null, align 8
@s_count = internal unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @hypre_BoxInitializeMemory(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %0, ptr @s_at_a_time, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_BoxFinalizeMemory() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @s_finalize, align 8, !tbaa !11 ; 2 uses
  %.not1 = icmp eq ptr %i.a, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  store ptr %i.c, ptr @s_finalize, align 8, !tbaa !11
  tail call void @hypre_Free(ptr noundef nonnull %i.b) #3
  %i.d = load ptr, ptr @s_finalize, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  store ptr null, ptr @s_finalize, align 8, !tbaa !11
  store ptr null, ptr @s_free, align 8, !tbaa !11
  ret i32 0
}

declare void @hypre_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @hypre_BoxAlloc() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @s_free, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %hypre_AllocateBoxBlock.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @s_at_a_time, align 4, !tbaa !8
  %i.c = mul i32 %i.b, 24
  %i.d = tail call ptr @hypre_MAlloc(i32 noundef %i.c) #3 ; 7 uses
  %i.e = load ptr, ptr @s_finalize, align 8, !tbaa !11
  store ptr %i.e, ptr %i.d, align 8, !tbaa !12
  store ptr %i.d, ptr @s_finalize, align 8, !tbaa !11
  %i.f = load i32, ptr @s_at_a_time, align 4, !tbaa !8 ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  %s_free.promoted.i = load ptr, ptr @s_free, align 8 ; 3 uses
  br i1 %i.g, label %.lr.ph.preheader.i, label %hypre_AllocateBoxBlock.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.h = zext nneg i32 %i.f to i64                ; 3 uses
  %0 = add nuw nsw i64 %i.h, 3
  %xtraiter = and i64 %0, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.h, %.lr.ph.preheader.i ]
  %1 = phi ptr [ %2, %.lr.ph.i.prol ], [ %s_free.promoted.i, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 3 uses
  %2 = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv.next.i.prol ; 4 uses
  store ptr %1, ptr %2, align 8, !tbaa !12
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !14

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.h, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.unr = phi ptr [ %s_free.promoted.i, %.lr.ph.preheader.i ], [ %2, %.lr.ph.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i ], [ %2, %.lr.ph.i.prol ]
  %3 = add nsw i32 %i.f, -2
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %hypre_AllocateBoxBlock.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.i = phi ptr [ %i.j, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %5 = getelementptr [24 x i8], ptr %i.d, i64 %indvars.iv.i
  %6 = getelementptr i8, ptr %5, i64 -24          ; 2 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !12
  %7 = getelementptr [24 x i8], ptr %i.d, i64 %indvars.iv.i
  %8 = getelementptr i8, ptr %7, i64 -48          ; 2 uses
  store ptr %6, ptr %8, align 8, !tbaa !12
  %9 = getelementptr [24 x i8], ptr %i.d, i64 %indvars.iv.i
  %10 = getelementptr i8, ptr %9, i64 -72         ; 2 uses
  store ptr %8, ptr %10, align 8, !tbaa !12
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv.next.i ; 3 uses
  store ptr %10, ptr %i.j, align 8, !tbaa !12
  %11 = icmp sgt i64 %indvars.iv.i, 5
  br i1 %11, label %.lr.ph.i, label %hypre_AllocateBoxBlock.exit, !llvm.loop !15

hypre_AllocateBoxBlock.exit:                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b, %bb.a
  %12 = phi ptr [ %s_free.promoted.i, %bb.b ], [ %i.a, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.j, %.lr.ph.i ] ; 2 uses
  %i.k = load ptr, ptr %12, align 8, !tbaa !12
  store ptr %i.k, ptr @s_free, align 8, !tbaa !11
  %i.l = load i32, ptr @s_count, align 4, !tbaa !8
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr @s_count, align 4, !tbaa !8
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_BoxFree(ptr noundef initializes((0, 8)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @s_free, align 8, !tbaa !11
  store ptr %i.a, ptr %0, align 8, !tbaa !12
  store ptr %0, ptr @s_free, align 8, !tbaa !11
  %i.b = load i32, ptr @s_count, align 4, !tbaa !8
  %i.c = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.c, ptr @s_count, align 4, !tbaa !8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @s_finalize, align 8, !tbaa !11 ; 2 uses
  %.not1.i = icmp eq ptr %i.d, null
  br i1 %.not1.i, label %hypre_BoxFinalizeMemory.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.e = phi ptr [ %i.g, %.lr.ph.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  store ptr %i.f, ptr @s_finalize, align 8, !tbaa !11
  tail call void @hypre_Free(ptr noundef nonnull %i.e) #3
  %i.g = load ptr, ptr @s_finalize, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %hypre_BoxFinalizeMemory.exit, label %.lr.ph.i, !llvm.loop !0

hypre_BoxFinalizeMemory.exit:                     ; preds = %.lr.ph.i, %bb.b
  store ptr null, ptr @s_finalize, align 8, !tbaa !11
  store ptr null, ptr @s_free, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %hypre_BoxFinalizeMemory.exit, %bb.a
  ret i32 0
}

declare ptr @hypre_MAlloc(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !13}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"p1 _ZTS10box_memory", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !16}
!15 = distinct !{!15, !13}
!16 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
