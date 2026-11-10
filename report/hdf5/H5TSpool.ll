Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5TSpool?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"H5TS_pool_t\00", align 1
@H5_H5TS_pool_t_reg_free_list = internal global { i8, [3 x i8], i32, i32, [4 x i8], ptr, i64, ptr } { i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, ptr @.str, i64 112, ptr null }, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"H5TS_thread_t_seq\00", align 1
@H5_H5TS_thread_t_seq_free_list = internal global { { i8, [3 x i8], i32, i32, [4 x i8], i64, ptr, ptr }, i64 } { { i8, [3 x i8], i32, i32, [4 x i8], i64, ptr, ptr } { i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @.str.2, ptr null }, i64 8 }, align 8

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5TS_pool_create(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i32 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.i, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5TS_pool_t_reg_free_list) #6 ; 11 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.i, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, i8 0, i64 112, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = tail call i32 @H5TS_mutex_init(ptr noundef nonnull %i.e, i32 noundef 0) #6
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.h, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @H5TS_semaphore_init(ptr noundef nonnull %i.c, i32 noundef 0) #6
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.j = zext i32 %1 to i64                       ; 2 uses
  %i.k = tail call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_H5TS_thread_t_seq_free_list, i64 noundef %i.j) #6 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !15
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.h, label %.lr.ph, !prof !9

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.e ] ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = tail call i32 @H5TS_thread_create(ptr noundef %i.o, ptr noundef nonnull @H5TS__pool_do, ptr noundef nonnull %i.c) #6
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %.lr.ph
  %i.r = trunc nuw i64 %indvars.iv to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i32 %i.r, ptr %i.s, align 8, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i32 %1, ptr %i.t, align 8, !tbaa !16
  store ptr %i.c, ptr %0, align 8, !tbaa !25
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i8 1, ptr %i.u, align 8, !tbaa !18
  tail call fastcc void @H5TS__pool_free(ptr noundef %i.c)
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %._crit_edge, %bb.h
  %.031 = phi i32 [ 0, %._crit_edge ], [ -1, %bb.h ], [ -1, %bb.a ], [ -1, %bb.b ]
  ret i32 %.031
}

declare noalias ptr @H5FL_reg_malloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @H5TS_mutex_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @H5TS_semaphore_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noalias ptr @H5FL_seq_malloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @H5TS_thread_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef ptr @H5TS__pool_do(ptr noundef %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %.preheader.i.preheader.lr.ph, !prof !26

.preheader.i.preheader.lr.ph:                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.backedge, %.preheader.i.preheader.lr.ph
  %i.e = tail call i32 @sem_wait(ptr noundef nonnull %0) #6
  switch i32 %i.e, label %.thread [
    i32 -1, label %bb.b
    i32 0, label %H5TS_semaphore_wait.exit
  ], !prof !27

bb.b:                                             ; preds = %.preheader.i
  %i.f = tail call ptr @__errno_location() #7
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %.preheader.i.backedge, label %.thread

.preheader.i.backedge:                            ; preds = %bb.b, %bb.g
  br label %.preheader.i

H5TS_semaphore_wait.exit:                         ; preds = %.preheader.i
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.b) #6
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %.thread, !prof !19

bb.c:                                             ; preds = %H5TS_semaphore_wait.exit
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !29   ; 5 uses
  %.not20 = icmp eq ptr %i.j, null
  br i1 %.not20, label %.split.us, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31   ; 2 uses
  %.not22 = icmp eq ptr %i.l, null
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.d, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  store ptr %i.l, ptr %i.c, align 8, !tbaa !29
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #6
  %.not23 = icmp eq i32 %i.m, 0
  br i1 %.not23, label %bb.g, label %.thread, !prof !19

.split.us:                                        ; preds = %bb.c
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #6
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %bb.h, label %.thread, !prof !19

.thread:                                          ; preds = %H5TS_semaphore_wait.exit, %bb.f, %.preheader.i, %bb.b, %bb.a, %.split.us
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = tail call ptr %i.o(ptr noundef %i.q) #6  ; 0 uses
  tail call void @free(ptr noundef nonnull %i.j) #6
  br label %.preheader.i.backedge

bb.h:                                             ; preds = %.split.us, %.thread
  %.2 = phi ptr [ inttoptr (i64 -1 to ptr), %.thread ], [ null, %.split.us ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @H5TS__pool_free(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16
  %.not20 = icmp eq i32 %i.b, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !16
  %i.e = zext i32 %i.d to i64
  %i.f = icmp samesign ult i64 %indvars.iv.next, %i.e
  br i1 %i.f, label %bb.c, label %._crit_edge, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21
  %i.j = tail call i32 @H5TS_thread_join(i64 noundef %i.i, ptr noundef null) #6
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.b, !prof !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.l = tail call i32 @H5TS_semaphore_destroy(ptr noundef nonnull %0) #6
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.loopexit, label %bb.d, !prof !9

bb.d:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = tail call i32 @H5TS_mutex_destroy(ptr noundef nonnull %i.n) #6
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.loopexit, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @H5FL_seq_free(ptr noundef nonnull @H5_H5TS_thread_t_seq_free_list, ptr noundef nonnull %i.r) #6 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5TS_pool_t_reg_free_list, ptr noundef nonnull %0) #6 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.g, %._crit_edge, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5TS_pool_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.b) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %.thread, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.d, align 8, !tbaa !18
  %i.e = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #6
  %.not18 = icmp eq i32 %i.e, 0
  br i1 %.not18, label %.preheader, label %bb.j, !prof !19

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16
  %.not30 = icmp eq i32 %i.g, 0
  br i1 %.not30, label %._crit_edge.i, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.h = add nuw i32 %.01329, 1                   ; 2 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !35

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.01329 = phi i32 [ %i.h, %bb.d ], [ 0, %.preheader ]
  %i.k = tail call i32 @sem_post(ptr noundef nonnull %0) #6
  %.not.i.not = icmp eq i32 %i.k, 0
  br i1 %.not.i.not, label %bb.d, label %.thread, !prof !19

._crit_edge:                                      ; preds = %bb.d
  %i.l = icmp eq i32 %i.i, 0
  br i1 %i.l, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.n = load i32, ptr %i.f, align 8, !tbaa !16
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %i.p, label %bb.f, label %._crit_edge.i, !llvm.loop !0

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21
  %i.t = tail call i32 @H5TS_thread_join(i64 noundef %i.s, ptr noundef null) #6
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.thread, label %bb.e, !prof !9

._crit_edge.i:                                    ; preds = %bb.e, %.preheader, %._crit_edge
  %i.v = tail call i32 @H5TS_semaphore_destroy(ptr noundef nonnull %0) #6
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread, label %bb.g, !prof !9

bb.g:                                             ; preds = %._crit_edge.i
  %i.x = tail call i32 @H5TS_mutex_destroy(ptr noundef nonnull %i.b) #6
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %.thread, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %.not.i20 = icmp eq ptr %i.aa, null
  br i1 %.not.i20, label %H5TS__pool_free.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call ptr @H5FL_seq_free(ptr noundef nonnull @H5_H5TS_thread_t_seq_free_list, ptr noundef nonnull %i.aa) #6 ; 0 uses
  br label %H5TS__pool_free.exit

H5TS__pool_free.exit:                             ; preds = %bb.h, %bb.i
  %i.ac = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5TS_pool_t_reg_free_list, ptr noundef nonnull %0) #6 ; 0 uses
  br label %.thread

bb.j:                                             ; preds = %bb.c
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #6 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.f, %bb.j, %._crit_edge.i, %bb.g, %H5TS__pool_free.exit, %bb.b, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ -1, %bb.j ], [ -1, %bb.b ], [ -1, %._crit_edge.i ], [ -1, %bb.g ], [ 0, %H5TS__pool_free.exit ], [ -1, %bb.f ], [ -1, %.lr.ph ]
  ret i32 %.2
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare i32 @sem_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare i32 @H5TS_thread_join(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @H5TS_semaphore_destroy(ptr noundef) local_unnamed_addr #1

declare i32 @H5TS_mutex_destroy(ptr noundef) local_unnamed_addr #1

declare ptr @H5FL_seq_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @H5FL_reg_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @sem_post(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !17}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!"_Bool", !5, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS16H5TS_pool_task_t", !11, i64 0}
!13 = !{!"p1 long", !11, i64 0}
!14 = !{!"H5TS_pool_t", !5, i64 0, !5, i64 32, !10, i64 72, !12, i64 80, !12, i64 88, !6, i64 96, !13, i64 104}
!15 = !{!14, !13, i64 104}
!16 = !{!14, !6, i64 96}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!14, !10, i64 72}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = !{!"long", !5, i64 0}
!21 = !{!20, !20, i64 0}
!22 = distinct !{!22, !17}
!23 = !{!"branch_weights", i32 4001, i32 4000000}
!24 = !{!"p1 _ZTS11H5TS_pool_t", !11, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"branch_weights", i32 1, i32 127}
!27 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!28 = !{!6, !6, i64 0}
!29 = !{!14, !12, i64 80}
!30 = !{!"H5TS_pool_task_t", !11, i64 0, !11, i64 8, !12, i64 16}
!31 = !{!30, !12, i64 16}
!32 = !{!14, !12, i64 88}
!33 = !{!30, !11, i64 0}
!34 = !{!30, !11, i64 8}
!35 = distinct !{!35, !17}
end_hunk_0
