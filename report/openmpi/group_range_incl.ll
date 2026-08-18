inline.NumInlined: 10
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_group_t = type { %struct.ompi_group_t, [176 x i8] }
%struct.ompi_group_t = type { %struct.opal_object_t, i32, i32, i32, ptr, i32, ptr, %union.anon, ptr }
%struct.opal_object_t = type { ptr, i32 }
%union.anon = type { %struct.ompi_group_sporadic_data_t }
%struct.ompi_group_sporadic_data_t = type { ptr, i32 }
%struct.opal_pointer_array_t = type { %struct.opal_object_t, %struct.opal_mutex_t, i32, i32, i32, i32, i32, ptr, ptr }
%struct.opal_mutex_t = type { %struct.opal_object_t, %union.pthread_mutex_t, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@ompi_mpi_param_check = external local_unnamed_addr global i8, align 1
@ompi_instance_count = external global i32, align 4
@FUNC_NAME = internal constant [21 x i8] c"MPI_Group_range_incl\00", align 16
@ompi_mpi_group_null = external global %struct.ompi_predefined_group_t, align 8
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1

@MPI_Group_range_incl = weak alias i32 (ptr, i32, ptr, ptr), ptr @PMPI_Group_range_incl

; Function Attrs: nounwind uwtable
define i32 @PMPI_Group_range_incl(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.c = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !12
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = icmp eq ptr %0, @ompi_mpi_group_null
  %i.g = icmp eq ptr %0, null
  %or.cond = or i1 %i.f, %i.g
  %i.h = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.h
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 9, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val = load i32, ptr %i.j, align 8, !tbaa !14  ; 5 uses
  %i.k = add nsw i32 %.val, 1
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #9 ; 7 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.preheader107

.preheader107:                                    ; preds = %bb.f
  %i.p = icmp sgt i32 %.val, 0
  br i1 %i.p, label %.lr.ph.preheader, label %.preheader105

.lr.ph.preheader:                                 ; preds = %.preheader107
  %i.q = zext nneg i32 %.val to i64
  %i.r = shl nuw nsw i64 %i.q, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.n, i8 -1, i64 %i.r, i1 false), !tbaa !12
  br label %.preheader105

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 16, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.t

.preheader105:                                    ; preds = %.lr.ph.preheader, %.preheader107
  %i.t = icmp sgt i32 %1, 0
  br i1 %i.t, label %.lr.ph117.preheader, label %._crit_edge

.lr.ph117.preheader:                              ; preds = %.preheader105
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %.loopexit
  %indvars.iv126 = phi i64 [ 0, %.lr.ph117.preheader ], [ %indvars.iv.next127, %.loopexit ] ; 5 uses
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv126 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12   ; 7 uses
  %i.w = icmp slt i32 %i.v, 0
  %i.x = icmp sgt i32 %i.v, %.val
  %or.cond99 = or i1 %i.w, %i.x
  br i1 %or.cond99, label %.loopexit101, label %bb.h

bb.h:                                             ; preds = %.lr.ph117
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !12   ; 6 uses
  %i.aa = icmp slt i32 %i.z, 0
  %i.ab = icmp sgt i32 %i.z, %.val
  %or.cond100 = or i1 %i.aa, %i.ab
  br i1 %or.cond100, label %.loopexit101, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !12 ; 5 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.loopexit101, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = icmp samesign ult i32 %i.v, %i.z
  br i1 %i.af, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ag = icmp slt i32 %i.ad, 0
  br i1 %i.ag, label %.loopexit101, label %.lr.ph114.preheader

.lr.ph114.preheader:                              ; preds = %bb.k
  %i.ah = zext nneg i32 %i.v to i64
  %i.ai = zext nneg i32 %i.ad to i64
  %i.aj = trunc nuw nsw i64 %indvars.iv126 to i32
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %bb.l
  %indvars.iv123 = phi i64 [ %i.ah, %.lr.ph114.preheader ], [ %indvars.iv.next124.a, %bb.l ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv123 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12
  %.not98 = icmp eq i32 %i.al, -1
  br i1 %.not98, label %bb.l, label %.loopexit101

bb.l:                                             ; preds = %.lr.ph114
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !12
  %indvars.iv.next124.a = add nuw nsw i64 %indvars.iv123, %i.ai ; 2 uses
  %i.am = trunc nuw i64 %indvars.iv.next124.a to i32
  %.not97 = icmp slt i32 %i.z, %i.am
  br i1 %.not97, label %.loopexit, label %.lr.ph114, !llvm.loop !23

bb.m:                                             ; preds = %bb.j
  %i.an = icmp samesign ugt i32 %i.v, %i.z
  br i1 %i.an, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ao = icmp sgt i32 %i.ad, 0
  br i1 %i.ao, label %.loopexit101, label %.lr.ph111.preheader

.lr.ph111.preheader:                              ; preds = %bb.n
  %i.ap = trunc nuw nsw i64 %indvars.iv126 to i32
  br label %.lr.ph111

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %bb.o
  %.1110 = phi i32 [ %5, %bb.o ], [ %i.v, %.lr.ph111.preheader ] ; 2 uses
  %4 = zext nneg i32 %.1110 to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12
  %.not96 = icmp eq i32 %i.ar, -1
  br i1 %.not96, label %bb.o, label %.loopexit101

bb.o:                                             ; preds = %.lr.ph111
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !12
  %5 = add nsw i32 %.1110, %i.ad                  ; 2 uses
  %.not95 = icmp slt i32 %5, %i.z
  br i1 %.not95, label %.loopexit, label %.lr.ph111, !llvm.loop !25

bb.p:                                             ; preds = %bb.m
  %i.as = zext nneg i32 %i.v to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !12
  %.not94 = icmp eq i32 %i.au, -1
  br i1 %.not94, label %bb.q, label %.loopexit101

bb.q:                                             ; preds = %bb.p
  %i.av = trunc nuw nsw i64 %indvars.iv126 to i32
  store i32 %i.av, ptr %i.at, align 4, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.l, %bb.q
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph117, !llvm.loop !26

._crit_edge:                                      ; preds = %.loopexit, %.preheader105
  tail call void @free(ptr noundef nonnull %i.n) #8
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  %i.aw = tail call i32 @ompi_group_range_incl(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #8 ; 2 uses
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.t, label %bb.s, !prof !27

bb.s:                                             ; preds = %bb.r
  %i.ax = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.aw) ; 2 uses
  %i.ay = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef %i.ax, ptr noundef nonnull @FUNC_NAME) #8 ; 0 uses
  br label %bb.t

.loopexit101:                                     ; preds = %bb.p, %bb.n, %bb.k, %bb.i, %bb.h, %.lr.ph117, %.lr.ph111, %.lr.ph114
  tail call void @free(ptr noundef %i.n) #8
  %i.az = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 6, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %.loopexit101, %bb.s, %bb.g, %bb.e
  %.0 = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.g ], [ %i.az, %.loopexit101 ], [ %i.ax, %bb.s ], [ 0, %bb.r ]
  ret i32 %.0
}

declare i32 @ompi_errhandler_invoke(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef range(i32 1, 0) %0) unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.d = load i8, ptr @opal_uses_threads, align 1, !tbaa !8, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.lr.ph.split, label %.lr.ph.split.us, !prof !13

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !28
  %i.h = sext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.not.us = icmp slt i64 %indvars.iv, %i.h
  tail call void @llvm.assume(i1 %.not.us)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !33
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.thread.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.thread.i.us, !llvm.loop !35

bb.c:                                             ; preds = %opal_pointer_array_get_item.exit
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.n = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next19, %i.o
  br i1 %i.p, label %.lr.ph.split, label %.loopexit, !llvm.loop !36

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.c
  %i.q = phi i8 [ %i.ad, %bb.c ], [ 1, %.lr.ph ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %bb.c ], [ 0, %.lr.ph ] ; 4 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.s = sext i32 %i.r to i64
  %.not = icmp slt i64 %indvars.iv18, %i.s
  tail call void @llvm.assume(i1 %.not)
  %i.t = trunc nuw i8 %i.q to i1
  br i1 %i.t, label %bb.d, label %.thread.i, !prof !13

.thread.i:                                        ; preds = %.lr.ph.split
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv18
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32
  br label %opal_pointer_array_get_item.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #8 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !8, !range !10
  %i.y = trunc nuw i8 %.pre.i to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv18
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32 ; 2 uses
  br i1 %i.y, label %bb.e, label %opal_pointer_array_get_item.exit, !prof !38

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #8 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !8, !range !10
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.d, %bb.e
  %i.ad = phi i8 [ 0, %.thread.i ], [ %.pre, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi ptr [ %i.w, %.thread.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !33
  %i.ag = icmp eq i32 %i.af, %0
  br i1 %i.ag, label %.split.us, label %bb.c

.split.us:                                        ; preds = %.thread.i.us, %opal_pointer_array_get_item.exit
  %.us-phi = phi ptr [ %.0.i, %opal_pointer_array_get_item.exit ], [ %i.j, %.thread.i.us ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.us-phi, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !39
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %.split.us, %bb.a
  %.010 = phi i32 [ %0, %bb.a ], [ %i.ai, %.split.us ], [ 14, %bb.c ], [ 14, %.preheader ], [ 14, %bb.b ]
  ret i32 %.010
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare i32 @ompi_group_range_incl(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"_Bool", !6, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!5, !5, i64 0}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!15, !5, i64 16}
!15 = !{!"ompi_group_t", !16, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !19, i64 32, !5, i64 40, !21, i64 48, !6, i64 56, !22, i64 72}
!16 = !{!"opal_object_t", !17, i64 0, !5, i64 8}
!17 = !{!"p1 _ZTS12opal_class_t", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"p2 _ZTS11ompi_proc_t", !20, i64 0}
!20 = !{!"any p2 pointer", !18, i64 0}
!21 = !{!"p1 _ZTS12ompi_group_t", !18, i64 0}
!22 = !{!"p1 _ZTS15ompi_instance_t", !18, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
end_hunk_0
