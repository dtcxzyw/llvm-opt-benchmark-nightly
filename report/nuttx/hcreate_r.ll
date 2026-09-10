Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/hcreate_r?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@g_default_hash = external dso_local local_unnamed_addr global ptr, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nofree noredzone nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @hcreate_r(i64 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %0, i64 16)
  %spec.store.select1 = tail call i64 @llvm.umin.i64(i64 %spec.store.select, i64 288230376151711744) ; 3 uses
  %i.b = tail call range(i64 1, 60) i64 @llvm.ctpop.i64(i64 %spec.store.select1)
  %.not25 = icmp samesign ult i64 %i.b, 2
  br i1 %.not25, label %bb.c, label %.preheader27

.preheader27:                                     ; preds = %bb.b
  %2 = tail call range(i64 5, 65) i64 @llvm.ctlz.i64(i64 %spec.store.select1, i1 true)
  %3 = trunc nuw nsw i64 %2 to i32
  %4 = sub nuw nsw i32 64, %3
  %5 = shl nuw i32 1, %4
  %6 = sext i32 %5 to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader27, %bb.b
  %i.c = phi i64 [ %6, %.preheader27 ], [ %spec.store.select1, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.c, ptr %i.d, align 8
  %i.e = shl nsw i64 %i.c, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #11 ; 2 uses
  store ptr %i.f, ptr %1, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.02230 = phi i64 [ %i.j, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02230
  store ptr null, ptr %i.i, align 8
  %i.j = add nuw i64 %.02230, 1                   ; 2 uses
  %i.k = load i64, ptr %i.d, align 8
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  store ptr @hfree_r, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d, %bb.c, %bb.a
  %.023 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %._crit_edge ]
  ret i32 %.023
}

; Function Attrs: mustprogress nofree noredzone nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noredzone nounwind optsize willreturn memory(readwrite, target_mem: none) uwtable
define internal void @hfree_r(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @free(ptr noundef %i.c) #12
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @hdestroy_r(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.preheader16

.preheader16:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not20 = icmp eq i64 %i.d, 0
  br i1 %.not20, label %._crit_edge19, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.f = phi i64 [ %i.d, %.preheader.lr.ph ], [ %i.r, %._crit_edge ]
  %i.g = phi ptr [ %i.a, %.preheader.lr.ph ], [ %i.s, %._crit_edge ] ; 2 uses
  %.018 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.t, %._crit_edge ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.018 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not17 = icmp eq ptr %i.i, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.j = phi ptr [ %i.q, %.lr.ph ], [ %i.i, %.preheader ] ; 3 uses
  %i.k = phi ptr [ %i.p, %.lr.ph ], [ %i.h, %.preheader ]
  %i.l = load ptr, ptr %i.j, align 8
  store ptr %i.l, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  tail call void %i.m(ptr noundef nonnull %i.n) #13
  tail call void @free(ptr noundef nonnull %i.j) #12
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.018 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !9

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i64, ptr %i.c, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.r = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.f, %.preheader ] ; 2 uses
  %i.s = phi ptr [ %i.o, %._crit_edge.loopexit ], [ %i.g, %.preheader ] ; 2 uses
  %i.t = add nuw i64 %.018, 1                     ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %.preheader, label %._crit_edge19, !llvm.loop !10

._crit_edge19:                                    ; preds = %._crit_edge, %.preheader16
  %i.v = phi ptr [ %i.a, %.preheader16 ], [ %i.s, %._crit_edge ]
  tail call void @free(ptr noundef nonnull %i.v) #12
  store ptr null, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge19
  ret void
}

; Function Attrs: mustprogress noredzone nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 0, 2) i32 @hsearch_r(ptr %0, ptr %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef %0) #12
  %i.b = load ptr, ptr @g_default_hash, align 8
  %i.c = tail call i32 %i.b(ptr noundef %0, i64 noundef %i.a) #13
  %i.d = load ptr, ptr %4, align 8
  %i.e = zext i32 %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 4294967295
  %i.i = and i64 %i.h, %i.e
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.i ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.041.in = phi ptr [ %i.j, %bb.a ], [ %.041, %bb.c ]
  %.041 = load ptr, ptr %.041.in, align 8         ; 7 uses
  %.not = icmp eq ptr %.041, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.041, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 @strcmp(ptr noundef %i.l, ptr noundef %0) #12
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.b, !llvm.loop !11

bb.d:                                             ; preds = %bb.b
  switch i32 %2, label %bb.k [
    i32 2, label %bb.n
    i32 0, label %bb.j
  ]

.thread:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.041, i64 8 ; 2 uses
  %i.p = icmp eq i32 %2, 2
  br i1 %i.p, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.thread
  %i.q = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.r = icmp eq ptr %i.q, %.041
  br i1 %i.r, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.q, align 8
  store ptr %i.s, ptr %i.j, align 8
  br label %bb.h

.preheader:                                       ; preds = %bb.e, %.preheader
  %.0 = phi ptr [ %i.t, %.preheader ], [ %i.q, %bb.e ] ; 2 uses
  %i.t = load ptr, ptr %.0, align 8               ; 3 uses
  %.not48 = icmp eq ptr %i.t, %.041
  br i1 %.not48, label %bb.g, label %.preheader, !llvm.loop !12

bb.g:                                             ; preds = %.preheader
  %i.u = load ptr, ptr %i.t, align 8
  store ptr %i.u, ptr %.0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull %i.o) #13
  tail call void @free(ptr noundef nonnull %.041) #12
  br label %bb.n

bb.i:                                             ; preds = %.thread
  store ptr %i.o, ptr %3, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.d
  store ptr null, ptr %3, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.d
  %i.x = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #11 ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %3, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %1, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %i.j, align 8
  store ptr %i.ab, ptr %i.x, align 8
  store ptr %i.x, ptr %i.j, align 8
  store ptr %i.z, ptr %3, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h
  %.042 = phi i32 [ 1, %bb.h ], [ 1, %bb.m ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.d ]
  ret i32 %.042
}

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local i64 @strlen(ptr noundef) local_unnamed_addr #7

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @hforeach_r(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not19 = icmp eq i64 %i.b, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %.critedge
  %i.c = phi i64 [ %i.j, %.critedge ], [ %i.b, %bb.a ]
  %.017 = phi i64 [ %i.k, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %2, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.017
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not15 = icmp eq ptr %i.f, null
  br i1 %.not15, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18, %bb.c
  %.01316 = phi ptr [ %i.g, %bb.c ], [ %i.f, %.lr.ph18 ] ; 2 uses
  %i.g = load ptr, ptr %.01316, align 8           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01316, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.not14 = icmp eq ptr %i.i, null
  br i1 %.not14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void %0(ptr noundef nonnull %i.h, ptr noundef %1) #13
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !13

.critedge.loopexit:                               ; preds = %bb.c
  %.pre = load i64, ptr %i.a, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph18
  %i.j = phi i64 [ %.pre, %.critedge.loopexit ], [ %i.c, %.lr.ph18 ] ; 2 uses
  %i.k = add nuw i64 %.017, 1                     ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  br i1 %i.l, label %.lr.ph18, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %.critedge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noredzone nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noredzone nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noredzone nounwind optsize willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noredzone nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-strlen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-strcmp" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noredzone optsize allocsize(0) }
attributes #12 = { noredzone optsize }
attributes #13 = { noredzone nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
end_hunk_0
