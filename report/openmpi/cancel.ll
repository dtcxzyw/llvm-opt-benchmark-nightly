Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/cancel?download=true
inline.NumInlined: 8
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_request_t = type { %struct.ompi_request_t, [96 x i8] }
%struct.ompi_request_t = type { %struct.opal_free_list_item_t, i32, %struct.ompi_status_public_t, ptr, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, %union.ompi_mpi_object_t }
%struct.opal_free_list_item_t = type { %struct.opal_list_item_t, ptr, ptr }
%struct.opal_list_item_t = type { %struct.opal_object_t, ptr, ptr, i32 }
%struct.opal_object_t = type { ptr, i32 }
%struct.ompi_status_public_t = type { i32, i32, i32, i32, i64 }
%union.ompi_mpi_object_t = type { ptr }
%struct.opal_pointer_array_t = type { %struct.opal_object_t, %struct.opal_mutex_t, i32, i32, i32, i32, i32, ptr, ptr }
%struct.opal_mutex_t = type { %struct.opal_object_t, %union.pthread_mutex_t, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@ompi_mpi_param_check = external local_unnamed_addr global i8, align 1
@ompi_instance_count = external global i32, align 4
@FUNC_NAME = internal constant [11 x i8] c"MPI_Cancel\00", align 1
@ompi_request_null = external global %struct.ompi_predefined_request_t, align 8
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1

@MPI_Cancel = weak alias i32 (ptr), ptr @PMPI_Cancel

; Function Attrs: nounwind uwtable
define noundef i32 @PMPI_Cancel(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %i.a = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !12
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %ompi_request_cancel.exit.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = icmp eq ptr %i.g, @ompi_request_null
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %ompi_request_cancel.exit.thread.sink.split, label %bb.g

bb.f:                                             ; preds = %bb.a
  %.pr = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.j = icmp eq ptr %.pr, @ompi_request_null
  br i1 %i.j, label %ompi_request_cancel.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %1 = phi ptr [ %.pr, %bb.f ], [ %i.g, %bb.e ]   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %ompi_request_cancel.exit.thread, label %ompi_request_cancel.exit

ompi_request_cancel.exit:                         ; preds = %bb.g
  %i.m = tail call i32 %i.l(ptr noundef nonnull %1, i32 noundef 1) #5, !inline_history !17 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %ompi_request_cancel.exit.thread, label %bb.h, !prof !28

bb.h:                                             ; preds = %ompi_request_cancel.exit
  %i.n = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.m)
  br label %ompi_request_cancel.exit.thread.sink.split

ompi_request_cancel.exit.thread.sink.split:       ; preds = %bb.d, %bb.e, %bb.h
  %.sink = phi i32 [ %i.n, %bb.h ], [ 7, %bb.e ], [ 7, %bb.d ] ; 2 uses
  %i.o = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef %.sink, ptr noundef nonnull @FUNC_NAME) #5 ; 0 uses
  br label %ompi_request_cancel.exit.thread

ompi_request_cancel.exit.thread:                  ; preds = %ompi_request_cancel.exit.thread.sink.split, %bb.g, %ompi_request_cancel.exit, %bb.f
  %.0 = phi i32 [ 0, %ompi_request_cancel.exit ], [ 0, %bb.f ], [ 0, %bb.g ], [ %.sink, %ompi_request_cancel.exit.thread.sink.split ]
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
  %i.d = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.lr.ph.split, label %.lr.ph.split.us, !prof !13

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !35
  %i.h = sext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.not.us = icmp slt i64 %indvars.iv, %i.h
  tail call void @llvm.assume(i1 %.not.us)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !38
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.thread.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.thread.i.us, !llvm.loop !29

bb.c:                                             ; preds = %opal_pointer_array_get_item.exit
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.n = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next19, %i.o
  br i1 %i.p, label %.lr.ph.split, label %.loopexit, !llvm.loop !30

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
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv18
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36
  br label %opal_pointer_array_get_item.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #5 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  %i.y = trunc nuw i8 %.pre.i to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv18
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  br i1 %i.y, label %bb.e, label %opal_pointer_array_get_item.exit, !prof !41

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #5 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.d, %bb.e
  %i.ad = phi i8 [ 0, %.thread.i ], [ %.pre, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi ptr [ %i.w, %.thread.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !38
  %i.ag = icmp eq i32 %i.af, %0
  br i1 %i.ag, label %.split.us, label %bb.c

.split.us:                                        ; preds = %.thread.i.us, %opal_pointer_array_get_item.exit
  %.us-phi = phi ptr [ %.0.i, %opal_pointer_array_get_item.exit ], [ %i.j, %.thread.i.us ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.us-phi, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !42
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %.split.us, %bb.a
  %.010 = phi i32 [ %0, %bb.a ], [ %i.ai, %.split.us ], [ 14, %bb.c ], [ 14, %.preheader ], [ 14, %bb.b ]
  ret i32 %.010
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!5, !5, i64 0}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"p1 _ZTS12opal_class_t", !14, i64 0}
!16 = !{!"opal_object_t", !15, i64 0, !5, i64 8}
!17 = distinct !{null}
!18 = !{!"p1 _ZTS14ompi_request_t", !14, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 _ZTS16opal_list_item_t", !14, i64 0}
!21 = !{!"opal_list_item_t", !16, i64 0, !20, i64 16, !20, i64 24, !5, i64 32}
!22 = !{!"p1 _ZTS30mca_rcache_base_registration_t", !14, i64 0}
!23 = !{!"opal_free_list_item_t", !21, i64 0, !22, i64 40, !14, i64 48}
!24 = !{!"long", !4, i64 0}
!25 = !{!"ompi_status_public_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !24, i64 16}
!26 = !{!"ompi_request_t", !23, i64 0, !5, i64 56, !25, i64 64, !14, i64 88, !5, i64 96, !8, i64 100, !5, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !4, i64 152}
!27 = !{!26, !14, i64 128}
!28 = !{!"branch_weights", !"expected", i32 2145766520, i32 1717128}
!29 = distinct !{!29, !39}
!30 = distinct !{!30, !39, !40}
!31 = !{!"opal_mutex_t", !16, i64 0, !4, i64 16, !5, i64 56}
!32 = !{!"p1 long", !14, i64 0}
!33 = !{!"any p2 pointer", !14, i64 0}
!34 = !{!"opal_pointer_array_t", !16, i64 0, !31, i64 16, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !32, i64 104, !33, i64 112}
!35 = !{!34, !33, i64 112}
!36 = !{!14, !14, i64 0}
!37 = !{!"ompi_errcode_intern_t", !16, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28}
!38 = !{!37, !5, i64 16}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unswitch.partial.disable"}
!41 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!42 = !{!37, !5, i64 20}
end_hunk_0
