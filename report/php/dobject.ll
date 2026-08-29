Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/dobject?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local ptr @lexbor_dobject_create() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lexbor_calloc(i64 noundef 1, i64 noundef 32) #7
  ret ptr %i.a
}

declare ptr @lexbor_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lexbor_dobject_init(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  %i.c = icmp eq i64 %2, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 %2, ptr %i.e, align 8, !tbaa !17
  %i.f = tail call ptr @lexbor_mem_create() #7    ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !18
  %i.g = load i64, ptr %i.e, align 8, !tbaa !17
  %i.h = mul i64 %i.g, %1
  %.biased.i = add i64 %i.h, 7
  %i.i = and i64 %.biased.i, -8
  %i.j = tail call i32 @lexbor_mem_init(ptr noundef %i.f, i64 noundef %i.i) #7 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @lexbor_array_create() #7  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !19
  %i.m = tail call i32 @lexbor_array_init(ptr noundef %i.k, i64 noundef %1) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.j, %bb.c ], [ 3, %bb.a ], [ 9, %bb.b ], [ %i.m, %bb.d ]
  ret i32 %.0
}

declare ptr @lexbor_mem_create() local_unnamed_addr #1

declare i32 @lexbor_mem_init(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @lexbor_array_create() local_unnamed_addr #1

declare i32 @lexbor_array_init(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lexbor_dobject_clean(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8, !tbaa !12
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @lexbor_mem_clean(ptr noundef %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  tail call void @lexbor_array_clean(ptr noundef %i.d) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @lexbor_mem_clean(ptr noundef) local_unnamed_addr #1

declare void @lexbor_array_clean(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @lexbor_dobject_destroy(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  %i.c = tail call ptr @lexbor_mem_destroy(ptr noundef %i.b, i1 noundef zeroext true) #7
  store ptr %i.c, ptr %0, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = tail call ptr @lexbor_array_destroy(ptr noundef %i.e, i1 noundef zeroext true) #7
  store ptr %i.f, ptr %i.d, align 8, !tbaa !19
  br i1 %1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @lexbor_free(ptr noundef nonnull %0) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ %i.g, %bb.c ], [ %0, %bb.b ]
  ret ptr %.0
}

declare ptr @lexbor_mem_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @lexbor_array_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @lexbor_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @lexbor_dobject_alloc(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !12
  %i.g = tail call ptr @lexbor_array_pop(ptr noundef nonnull %i.b) #7
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17
  %i.k = tail call ptr @lexbor_mem_alloc(ptr noundef %i.h, i64 noundef %i.j) #7 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !12
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.k, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

declare ptr @lexbor_array_pop(ptr noundef) local_unnamed_addr #1

declare ptr @lexbor_mem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @lexbor_dobject_calloc(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load i64, ptr %i.c, align 8, !tbaa !20
  %.not.i = icmp eq i64 %.val.i, 0
  br i1 %.not.i, label %bb.b, label %lexbor_dobject_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = tail call ptr @lexbor_mem_alloc(ptr noundef %i.d, i64 noundef %i.f) #7 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %lexbor_dobject_alloc.exit.thread, label %lexbor_dobject_alloc.exit.thread8

lexbor_dobject_alloc.exit.thread8:                ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !12
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !12
  br label %bb.c

lexbor_dobject_alloc.exit:                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !12
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !12
  %i.o = tail call ptr @lexbor_array_pop(ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %lexbor_dobject_alloc.exit.thread, label %bb.c

bb.c:                                             ; preds = %lexbor_dobject_alloc.exit.thread8, %lexbor_dobject_alloc.exit
  %.0.i11 = phi ptr [ %i.g, %lexbor_dobject_alloc.exit.thread8 ], [ %i.o, %lexbor_dobject_alloc.exit ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i11, i8 0, i64 %i.q, i1 false)
  br label %lexbor_dobject_alloc.exit.thread

lexbor_dobject_alloc.exit.thread:                 ; preds = %bb.b, %bb.c, %lexbor_dobject_alloc.exit
  %.0.i7 = phi ptr [ null, %lexbor_dobject_alloc.exit ], [ %.0.i11, %bb.c ], [ null, %bb.b ]
  ret ptr %.0.i7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @lexbor_dobject_free(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = tail call i32 @lexbor_array_push(ptr noundef %i.c, ptr noundef nonnull %1) #7
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !12
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %1, %bb.b ]
  ret ptr %.0
}

declare i32 @lexbor_array_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @lexbor_dobject_by_absolute_position(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %.not = icmp ult i64 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = mul i64 %i.f, %1                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %2 = udiv i64 %i.g, %i.i                        ; 3 uses
  %.017 = load ptr, ptr %i.d, align 8, !tbaa !26  ; 3 uses
  %.not20 = icmp ugt i64 %i.i, %i.g
  br i1 %.not20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %3 = add i64 %2, -1
  %xtraiter = and i64 %2, 7                       ; 3 uses
  %i.j = icmp ult i64 %3, 7
  br i1 %i.j, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.019 = phi ptr [ %.017, %.lr.ph.preheader.new ], [ %.0.7, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.k = getelementptr inbounds nuw i8, ptr %.019, i64 24
  %.0 = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %.0.1 = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %.0.1, i64 24
  %.0.2 = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %.0.2, i64 24
  %.0.3 = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %.0.3, i64 24
  %.0.4 = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %.0.4, i64 24
  %.0.5 = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %.0.5, i64 24
  %.0.6 = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %.0.6, i64 24
  %.0.7 = load ptr, ptr %i.r, align 8, !tbaa !26  ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !27

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.019.epil.init = phi ptr [ %.017, %.lr.ph.preheader ], [ %.0.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod27 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.019.epil = phi ptr [ %.0.epil, %.lr.ph.epil ], [ %.019.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %.019.epil, i64 24
  %.0.epil = load ptr, ptr %i.s, align 8, !tbaa !26 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !29

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.b
  %.0.lcssa = phi ptr [ %.017, %bb.b ], [ %.0.7, %._crit_edge.loopexit.unr-lcssa ], [ %.0.epil, %.lr.ph.epil ] ; 2 uses
  %i.t = load ptr, ptr %.0.lcssa, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !34
  %i.w = urem i64 %i.g, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.015 = phi ptr [ %i.x, %._crit_edge ], [ null, %bb.a ]
  ret ptr %.015
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @lexbor_dobject_allocated_noi(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !12
  ret i64 %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @lexbor_dobject_cache_length_noi(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i64, ptr %i.b, align 8, !tbaa !20
  ret i64 %.val.val
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !16, i64 16}
!13 = !{!"", !14, i64 0, !15, i64 8, !16, i64 16, !16, i64 24}
!14 = !{!"p1 _ZTS10lexbor_mem", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"long", !10, i64 0}
!17 = !{!13, !16, i64 24}
!18 = !{!13, !14, i64 0}
!19 = !{!13, !15, i64 8}
!20 = !{!21, !16, i64 16}
!21 = !{!"", !22, i64 0, !16, i64 8, !16, i64 16}
!22 = !{!"any p2 pointer", !15, i64 0}
!23 = !{!24, !16, i64 16}
!24 = !{!"lexbor_mem", !25, i64 0, !25, i64 8, !16, i64 16, !16, i64 24}
!25 = !{!"p1 _ZTS16lexbor_mem_chunk", !15, i64 0}
!26 = !{!25, !25, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!32, !33, i64 0}
!32 = !{!"lexbor_mem_chunk", !33, i64 0, !16, i64 8, !16, i64 16, !25, i64 24, !25, i64 32}
!33 = !{!"p1 omnipotent char", !15, i64 0}
!34 = !{!32, !16, i64 16}
end_hunk_0
