Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Libgen?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN5folly11portabilityL10mutableDotE = internal global [2 x i8] c".\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5folly11portability16internal_dirnameEPc(ptr nofree noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %strcmpload = load i8, ptr %0, align 1          ; 2 uses
  switch i8 %strcmpload, label %.tail29.thread [
    i8 0, label %bb.h
    i8 47, label %.tail
    i8 92, label %.tail29
  ]

.tail:                                            ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.h, label %sub_030

sub_030:                                          ; preds = %.tail
  %.not34 = icmp eq i8 %strcmpload, 92
  br i1 %.not34, label %.tail29, label %.tail29.thread

.tail29:                                          ; preds = %bb.b, %sub_030
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.h, label %.tail29.thread

.tail29.thread:                                   ; preds = %bb.b, %sub_030, %.tail29
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #2
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -1       ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  switch i8 %i.k, label %bb.d [
    i8 47, label %bb.c
    i8 92, label %bb.c
  ]

bb.c:                                             ; preds = %.tail29.thread, %.tail29.thread
  store i8 0, ptr %i.j, align 1, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %.tail29.thread, %bb.c
  %i.l = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #2 ; 2 uses
  %i.m = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #2 ; 2 uses
  %i.n = icmp ugt ptr %i.m, %i.l
  %spec.select = select i1 %i.n, ptr %i.m, ptr %i.l ; 4 uses
  %i.o = icmp eq ptr %spec.select, null
  br i1 %i.o, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq ptr %spec.select, %0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  store i8 0, ptr %i.q, align 1, !tbaa !12
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %spec.select, align 1, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.g, %bb.f, %.tail, %.tail29, %bb.a
  %.1 = phi ptr [ @_ZN5folly11portabilityL10mutableDotE, %bb.a ], [ %0, %.tail ], [ @_ZN5folly11portabilityL10mutableDotE, %bb.b ], [ %0, %.tail29 ], [ @_ZN5folly11portabilityL10mutableDotE, %bb.d ], [ %0, %bb.g ], [ %0, %bb.f ]
  ret ptr %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
end_hunk_0
