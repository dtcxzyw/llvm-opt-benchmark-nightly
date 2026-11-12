Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/BorrowedAnnotation?download=true
inline.NumInlined: 38
inline.NumDeleted: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_markBorrowed___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_markBorrowed___closed__0_value, ptr inttoptr (i64 5493537939071954145 to ptr)] }, align 8
@l_Lean_markBorrowed___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [9 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 9, i64 9, i64 8, [9 x i8] c"borrowed\00" }>, align 8

; Function Attrs: nounwind uwtable
define ptr @l_Lean_markBorrowed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_mkAnnotation(ptr noundef nonnull @l_Lean_markBorrowed___closed__1_value, ptr noundef %0) #3
  ret ptr %i.a
}

declare ptr @l_Lean_mkAnnotation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 2) i8 @l_Lean_isMarkedBorrowed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_annotation_x3f(ptr noundef nonnull @l_Lean_markBorrowed___closed__1_value, ptr noundef %0) #3 ; 7 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 7
  %.val.i = load i8, ptr %i.f, align 1
  %1 = zext i8 %.val.i to i32
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %1, %bb.c ]
  %i.g = icmp eq i32 %.0.i, 0
  br i1 %i.g, label %lean_dec_ref_known.exit, label %bb.d

bb.d:                                             ; preds = %lean_obj_tag.exit
  %.val.i6 = load i32, ptr %i.a, align 4, !tbaa !10 ; 4 uses
  %i.h = icmp eq i32 %.val.i6, 1
  br i1 %i.h, label %.critedge.i, label %bb.i

.critedge.i:                                      ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.a, i64 8
  %.val8.i = load ptr, ptr %i.i, align 8, !tbaa !12 ; 4 uses
  %i.j = ptrtoint ptr %.val8.i to i64
  %i.k = and i64 %i.j, 1
  %.not.i7.i = icmp eq i64 %i.k, 0
  br i1 %.not.i7.i, label %bb.e, label %lean_dec.exit.i

bb.e:                                             ; preds = %.critedge.i
  %i.l = load i32, ptr %.val8.i, align 4, !tbaa !10 ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %.val8.i, align 4, !tbaa !10
  br label %lean_dec.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.val8.i) #3
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.h, %bb.g, %bb.f, %.critedge.i
  tail call void @lean_free_object(ptr noundef nonnull %i.a) #3
  br label %lean_dec_ref_known.exit

bb.i:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %.val.i6, 1
  br i1 %i.o, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.p = add nsw i32 %.val.i6, -1
  store i32 %i.p, ptr %i.a, align 4, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.k:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i32 %.val.i6, 0
  br i1 %.not.i.i, label %lean_dec_ref_known.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #3
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %bb.l, %bb.k, %bb.j, %lean_dec.exit.i, %lean_obj_tag.exit
  %.0 = phi i8 [ 0, %lean_obj_tag.exit ], [ 1, %lean_dec.exit.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ]
  ret i8 %.0
}

declare ptr @l_Lean_annotation_x3f(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l_Lean_isMarkedBorrowed___boxed(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @l_Lean_annotation_x3f(ptr noundef nonnull @l_Lean_markBorrowed___closed__1_value, ptr noundef %0) #3 ; 7 uses
  %3 = ptrtoint ptr %2 to i64                     ; 2 uses
  %4 = and i64 %3, 1
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %8, label %5

5:                                                ; preds = %1
  %6 = lshr i64 %3, 1
  %7 = trunc i64 %6 to i32
  br label %lean_obj_tag.exit.i

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %2, i64 7
  %.val.i.i = load i8, ptr %9, align 1
  %10 = zext i8 %.val.i.i to i32
  br label %lean_obj_tag.exit.i

lean_obj_tag.exit.i:                              ; preds = %8, %5
  %.0.i.i = phi i32 [ %7, %5 ], [ %10, %8 ]
  %11 = icmp eq i32 %.0.i.i, 0
  br i1 %11, label %bb.a, label %12

12:                                               ; preds = %lean_obj_tag.exit.i
  %.val.i6.i = load i32, ptr %2, align 4, !tbaa !10 ; 4 uses
  %13 = icmp eq i32 %.val.i6.i, 1
  br i1 %13, label %.critedge.i.i, label %24

.critedge.i.i:                                    ; preds = %12
  %14 = getelementptr i8, ptr %2, i64 8
  %.val8.i.i = load ptr, ptr %14, align 8, !tbaa !12 ; 4 uses
  %15 = ptrtoint ptr %.val8.i.i to i64
  %16 = and i64 %15, 1
  %.not.i7.i.i = icmp eq i64 %16, 0
  br i1 %.not.i7.i.i, label %17, label %lean_dec.exit.i.i

17:                                               ; preds = %.critedge.i.i
  %18 = load i32, ptr %.val8.i.i, align 4, !tbaa !10 ; 3 uses
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %22, !prof !13

20:                                               ; preds = %17
  %21 = add nsw i32 %18, -1
  store i32 %21, ptr %.val8.i.i, align 4, !tbaa !10
  br label %lean_dec.exit.i.i

22:                                               ; preds = %17
  %.not.i.i.i.i = icmp eq i32 %18, 0
  br i1 %.not.i.i.i.i, label %lean_dec.exit.i.i, label %23

23:                                               ; preds = %22
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.val8.i.i) #3
  br label %lean_dec.exit.i.i

lean_dec.exit.i.i:                                ; preds = %23, %22, %20, %.critedge.i.i
  tail call void @lean_free_object(ptr noundef nonnull %2) #3
  br label %bb.a

24:                                               ; preds = %12
  %25 = icmp sgt i32 %.val.i6.i, 1
  br i1 %25, label %26, label %28, !prof !13

26:                                               ; preds = %24
  %27 = add nsw i32 %.val.i6.i, -1
  store i32 %27, ptr %2, align 4, !tbaa !10
  br label %bb.a

28:                                               ; preds = %24
  %.not.i.i.i = icmp eq i32 %.val.i6.i, 0
  br i1 %.not.i.i.i, label %bb.a, label %29

29:                                               ; preds = %28
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #3
  br label %bb.a

bb.a:                                             ; preds = %lean_obj_tag.exit.i, %lean_dec.exit.i.i, %26, %28, %29
  %.0.i = phi i64 [ 1, %lean_obj_tag.exit.i ], [ 3, %lean_dec.exit.i.i ], [ 3, %26 ], [ 3, %28 ], [ 3, %29 ]
  %i.a = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -1
  store i32 %i.c, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #3
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %i.d = inttoptr i64 %.0.i to ptr
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @runtime_initialize_Lean_Compiler_BorrowedAnnotation(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @_G_runtime_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @lean_inc_heartbeat() #3
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

bb.d:                                             ; preds = %bb.a
  store i1 true, ptr @_G_runtime_initialized, align 1
  %i.c = tail call ptr @runtime_initialize_Lean_Expr(i8 noundef zeroext %0) #3 ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 7
  %.val = load i8, ptr %i.d, align 1
  %i.e = icmp eq i8 %.val, 1
  br i1 %i.e, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr %i.c, align 4, !tbaa !10   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %i.c, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #3
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.f, %bb.g, %bb.h
  tail call void @lean_inc_heartbeat() #3
  %i.i = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %lean_dec_ref.exit
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

.sink.split:                                      ; preds = %lean_dec_ref.exit, %bb.b
  %.sink10 = phi ptr [ %i.a, %bb.b ], [ %i.i, %lean_dec_ref.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sink10, i64 4
  store i32 1, ptr %.sink10, align 4, !tbaa !10
  store i32 65552, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.sink10, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.l, align 8, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.d
  %.0 = phi ptr [ %i.c, %bb.d ], [ %.sink10, %.sink.split ]
  ret ptr %.0
}

declare ptr @runtime_initialize_Lean_Expr(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noalias noundef nonnull ptr @meta_initialize_Lean_Compiler_BorrowedAnnotation(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @_G_meta_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @lean_inc_heartbeat() #3
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %lean_io_result_mk_ok.exit

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

bb.d:                                             ; preds = %bb.a
  store i1 true, ptr @_G_meta_initialized, align 1
  tail call void @lean_inc_heartbeat() #3
  %i.c = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %lean_io_result_mk_ok.exit

bb.e:                                             ; preds = %bb.d
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

lean_io_result_mk_ok.exit:                        ; preds = %bb.d, %bb.b
  %.sink6 = phi ptr [ %i.a, %bb.b ], [ %i.c, %bb.d ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sink6, i64 4
  store i32 1, ptr %.sink6, align 4, !tbaa !10
  store i32 65552, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %.sink6, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !tbaa !12
  ret ptr %.sink6
}

; Function Attrs: nounwind uwtable
define ptr @initialize_Lean_Compiler_BorrowedAnnotation(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.b21 = load i1, ptr @_G_initialized, align 1
  br i1 %.b21, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %lean_dec_ref.exit, %bb.a
  tail call void @lean_inc_heartbeat() #3
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %lean_io_result_mk_ok.exit

bb.b:                                             ; preds = %tailrecurse._crit_edge
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

lean_io_result_mk_ok.exit:                        ; preds = %tailrecurse._crit_edge
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !10
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !tbaa !12
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  store i1 true, ptr @_G_initialized, align 1
  %i.e = tail call ptr @initialize_Lean_Expr(i8 noundef zeroext %0) #3 ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 7
  %.val18 = load i8, ptr %i.f, align 1
  %i.g = icmp eq i8 %.val18, 1
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.e, align 4, !tbaa !10   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !10
  br label %lean_dec_ref.exit16

bb.e:                                             ; preds = %bb.c
  %.not.i15 = icmp eq i32 %i.h, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #3
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.d, %bb.e, %bb.f
  %i.k = tail call ptr @runtime_initialize_Lean_Compiler_BorrowedAnnotation(i8 noundef zeroext %0) ; 5 uses
  %i.l = getelementptr i8, ptr %i.k, i64 7
  %.val17 = load i8, ptr %i.l, align 1
  %i.m = icmp eq i8 %.val17, 1
  br i1 %i.m, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %lean_dec_ref.exit16
  %i.n = load i32, ptr %i.k, align 4, !tbaa !10   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !10
  br label %lean_dec_ref.exit14

bb.i:                                             ; preds = %bb.g
  %.not.i13 = icmp eq i32 %i.n, 0
  br i1 %.not.i13, label %lean_dec_ref.exit14, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #3
  br label %lean_dec_ref.exit14

lean_dec_ref.exit14:                              ; preds = %bb.h, %bb.i, %bb.j
  %.b.i = load i1, ptr @_G_meta_initialized, align 1
  br i1 %.b.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %lean_dec_ref.exit14
  tail call void @lean_inc_heartbeat() #3
  %i.q = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.l, label %lean_dec_ref.exit

bb.l:                                             ; preds = %bb.k
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

bb.m:                                             ; preds = %lean_dec_ref.exit14
  store i1 true, ptr @_G_meta_initialized, align 1
  tail call void @lean_inc_heartbeat() #3
  %i.s = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.n, label %lean_dec_ref.exit

bb.n:                                             ; preds = %bb.m
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

lean_dec_ref.exit:                                ; preds = %bb.m, %bb.k
  %.sink6.i = phi ptr [ %i.q, %bb.k ], [ %i.s, %bb.m ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4
  store i32 1, ptr %.sink6.i, align 4, !tbaa !10
  store i32 65552, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8, !tbaa !12
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.sink6.i) #3
  br label %tailrecurse._crit_edge

.loopexit:                                        ; preds = %lean_dec_ref.exit16, %.lr.ph, %lean_io_result_mk_ok.exit
  %.0 = phi ptr [ %i.a, %lean_io_result_mk_ok.exit ], [ %i.e, %.lr.ph ], [ %i.k, %lean_dec_ref.exit16 ]
  ret ptr %.0
}

declare ptr @initialize_Lean_Expr(i8 noundef zeroext) local_unnamed_addr #1

declare void @lean_free_object(ptr noundef) local_unnamed_addr #1

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #1

declare void @lean_inc_heartbeat() local_unnamed_addr #1

declare noalias ptr @mi_malloc_small(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @lean_internal_panic_out_of_memory() local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 4, !"probe-stack", !"inline-asm"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"", !6, i64 0, !6, i64 4, !6, i64 6, !6, i64 7}
!10 = !{!9, !6, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
