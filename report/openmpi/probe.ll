Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/probe?download=true
inline.NumInlined: 10
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mca_pml_base_module_2_1_0_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
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
%struct.ompi_predefined_communicator_t = type { %struct.ompi_communicator_t, [128 x i8] }
%struct.ompi_communicator_t = type { %struct.opal_infosubscriber_t, %struct.opal_mutex_t, ptr, %struct.ompi_comm_extended_cid_t, %struct.ompi_comm_extended_cid_block_t, i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8 }
%struct.opal_infosubscriber_t = type { %struct.opal_object_t, %struct.opal_hash_table_t, ptr }
%struct.opal_hash_table_t = type { %struct.opal_object_t, ptr, i64, i64, i64, i32, i32, i32, i32, ptr }
%struct.ompi_comm_extended_cid_t = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.ompi_comm_extended_cid_block_t = type { %struct.ompi_comm_extended_cid_t, i64, i8, i8 }

@ompi_mpi_param_check = external local_unnamed_addr global i8, align 1
@ompi_instance_count = external global i32, align 4
@mca_pml = external local_unnamed_addr global %struct.mca_pml_base_module_2_1_0_t, align 8
@.str = private constant [10 x i8] c"MPI_Probe\00", align 1
@ompi_request_empty = external local_unnamed_addr global %struct.ompi_request_t, align 8
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@ompi_mpi_comm_null = external global %struct.ompi_predefined_communicator_t, align 8

@MPI_Probe = weak alias i32 (i32, i32, ptr, ptr), ptr @PMPI_Probe

; Function Attrs: nounwind uwtable
define noundef i32 @PMPI_Probe(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !12
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @.str) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %or.cond = icmp slt i32 %1, -1
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 172), align 4
  %i.g = icmp sgt i32 %1, %i.f
  %or.cond54 = select i1 %or.cond, i1 true, i1 %i.g
  br i1 %or.cond54, label %ompi_comm_invalid.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq ptr %2, null
  %i.i = icmp eq ptr %2, @ompi_mpi_comm_null
  %or.cond.i = or i1 %i.h, %i.i
  br i1 %or.cond.i, label %ompi_comm_invalid.exit.thread, label %ompi_comm_invalid.exit

ompi_comm_invalid.exit:                           ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.k = load i32, ptr %i.j, align 8, !tbaa !41
  %i.l = and i32 %i.k, 48
  %or.cond7.i.not = icmp eq i32 %i.l, 0
  br i1 %or.cond7.i.not, label %bb.f, label %ompi_comm_invalid.exit.thread

bb.f:                                             ; preds = %ompi_comm_invalid.exit
  %or.cond3 = icmp ult i32 %0, -2
  br i1 %or.cond3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = icmp slt i32 %0, 0
  br i1 %i.m, label %ompi_comm_invalid.exit.thread, label %ompi_comm_peer_invalid.exit

ompi_comm_peer_invalid.exit:                      ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !45
  %.not.i.not = icmp slt i32 %0, %i.q
  br i1 %.not.i.not, label %.thread65, label %ompi_comm_invalid.exit.thread

ompi_comm_invalid.exit.thread:                    ; preds = %ompi_comm_peer_invalid.exit, %bb.g, %bb.e, %bb.d, %ompi_comm_invalid.exit
  %.058.ph = phi i32 [ 5, %ompi_comm_invalid.exit ], [ 4, %bb.d ], [ 5, %bb.e ], [ 6, %bb.g ], [ 6, %ompi_comm_peer_invalid.exit ]
  %4 = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.058.ph) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.u = load i32, ptr %i.t, align 8, !tbaa !47
  %i.v = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.s, ptr noundef %2, i32 noundef %i.u, i32 noundef %4, ptr noundef nonnull @.str) #5 ; 0 uses
  br label %bb.q

bb.h:                                             ; preds = %bb.f, %bb.a
  %i.w = icmp eq i32 %0, -2
  br i1 %i.w, label %bb.i, label %.thread65

bb.i:                                             ; preds = %bb.h
  %.not52 = icmp eq ptr %3, null
  br i1 %.not52, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_empty, i64 64), align 8, !tbaa !12
  store <2 x i32> %i.x, ptr %3, align 8, !tbaa !12
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_empty, i64 80), align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.y, ptr %i.z, align 8, !tbaa !55
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_empty, i64 76), align 4, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !57
  br label %bb.q

.thread65:                                        ; preds = %ompi_comm_peer_invalid.exit, %bb.h
  %i.ac = getelementptr i8, ptr %2, i64 377
  %.val.i = load i8, ptr %i.ac, align 1, !tbaa !58, !range !10, !noundef !11
  %i.ad = trunc nuw i8 %.val.i to i1
  br i1 %i.ad, label %bb.m, label %bb.k, !prof !13

bb.k:                                             ; preds = %.thread65
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !41
  %i.ag = trunc i32 %i.af to i1
  %i.ah = tail call zeroext i1 @ompi_comm_is_proc_active(ptr noundef nonnull %2, i32 noundef range(i32 -1, -2) %0, i1 noundef zeroext %i.ag) #5
  br i1 %i.ah, label %ompi_comm_iface_p2p_check_proc.exit, label %bb.l, !prof !59

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call i32 @opal_progress() #5       ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread65
  %.2.ph = phi i32 [ 77, %.thread65 ], [ 75, %bb.l ]
  %.not50 = icmp eq ptr %3, null
  br i1 %.not50, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %0, ptr %3, align 8, !tbaa !60
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %i.aj, align 4, !tbaa !61
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %5 = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.2.ph) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.an = load i32, ptr %i.am, align 8, !tbaa !47
  %i.ao = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.al, ptr noundef nonnull %2, i32 noundef %i.an, i32 noundef %5, ptr noundef nonnull @.str) #5 ; 0 uses
  br label %bb.q

ompi_comm_iface_p2p_check_proc.exit:              ; preds = %bb.k
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 112), align 8, !tbaa !63
  %i.aq = tail call i32 %i.ap(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) #5 ; 2 uses
  %.not49 = icmp eq i32 %i.aq, 0
  br i1 %.not49, label %bb.q, label %bb.p, !prof !59

bb.p:                                             ; preds = %ompi_comm_iface_p2p_check_proc.exit
  %i.ar = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.aq) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.av = load i32, ptr %i.au, align 8, !tbaa !47
  %i.aw = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.at, ptr noundef nonnull %2, i32 noundef %i.av, i32 noundef %i.ar, ptr noundef nonnull @.str) #5 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %ompi_comm_iface_p2p_check_proc.exit, %bb.i, %bb.j, %bb.p, %bb.o, %ompi_comm_invalid.exit.thread
  %.0 = phi i32 [ %4, %ompi_comm_invalid.exit.thread ], [ 0, %ompi_comm_iface_p2p_check_proc.exit ], [ %5, %bb.o ], [ 0, %bb.i ], [ %i.ar, %bb.p ], [ 0, %bb.j ]
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
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !68
  %i.h = sext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.not.us = icmp slt i64 %indvars.iv, %i.h
  tail call void @llvm.assume(i1 %.not.us)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !71
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.thread.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.thread.i.us, !llvm.loop !64

bb.c:                                             ; preds = %opal_pointer_array_get_item.exit
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.n = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next19, %i.o
  br i1 %i.p, label %.lr.ph.split, label %.loopexit, !llvm.loop !65

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
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv18
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !69
  br label %opal_pointer_array_get_item.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #5 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  %i.y = trunc nuw i8 %.pre.i to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !68
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv18
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69 ; 2 uses
  br i1 %i.y, label %bb.e, label %opal_pointer_array_get_item.exit, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #5 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.d, %bb.e
  %i.ad = phi i8 [ 0, %.thread.i ], [ %.pre, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi ptr [ %i.w, %.thread.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !71
  %i.ag = icmp eq i32 %i.af, %0
  br i1 %i.ag, label %.split.us, label %bb.c

.split.us:                                        ; preds = %.thread.i.us, %opal_pointer_array_get_item.exit
  %.us-phi = phi ptr [ %.0.i, %opal_pointer_array_get_item.exit ], [ %i.j, %.thread.i.us ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.us-phi, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !75
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %.split.us, %bb.a
  %.010 = phi i32 [ %0, %bb.a ], [ %i.ai, %.split.us ], [ 14, %bb.c ], [ 14, %.preheader ], [ 14, %bb.b ]
  ret i32 %.010
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @ompi_comm_is_proc_active(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @opal_progress() local_unnamed_addr #1

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
!17 = !{!"opal_mutex_t", !16, i64 0, !4, i64 16, !5, i64 56}
!18 = !{!"any p2 pointer", !14, i64 0}
!19 = !{!"p1 _ZTS19opal_hash_element_t", !14, i64 0}
!20 = !{!"long", !4, i64 0}
!21 = !{!"p1 _ZTS24opal_hash_type_methods_t", !14, i64 0}
!22 = !{!"opal_hash_table_t", !16, i64 0, !19, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !21, i64 64}
!23 = !{!"p1 _ZTS11opal_info_t", !14, i64 0}
!24 = !{!"opal_infosubscriber_t", !16, i64 0, !22, i64 16, !23, i64 88}
!25 = !{!"p1 omnipotent char", !14, i64 0}
!26 = !{!"ompi_comm_extended_cid_t", !20, i64 0, !4, i64 8}
!27 = !{!"ompi_comm_extended_cid_block_t", !26, i64 0, !20, i64 16, !4, i64 24, !4, i64 25}
!28 = !{!"p1 int", !14, i64 0}
!29 = !{!"p1 _ZTS12ompi_group_t", !14, i64 0}
!30 = !{!"p1 _ZTS19ompi_communicator_t", !14, i64 0}
!31 = !{!"p1 _ZTS17opal_hash_table_t", !14, i64 0}
!32 = !{!"p1 _ZTS22mca_topo_base_module_t", !14, i64 0}
!33 = !{!"p2 _ZTS20ompi_peruse_handle_t", !18, i64 0}
!34 = !{!"p1 _ZTS17ompi_errhandler_t", !14, i64 0}
!35 = !{!"p1 _ZTS14mca_pml_comm_t", !14, i64 0}
!36 = !{!"p1 _ZTS14mca_mtl_comm_t", !14, i64 0}
!37 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !14, i64 0}
!38 = !{!"p1 _ZTS15ompi_instance_t", !14, i64 0}
!39 = !{!"p1 _ZTS13opal_object_t", !14, i64 0}
!40 = !{!"ompi_communicator_t", !24, i64 0, !17, i64 96, !25, i64 160, !26, i64 168, !27, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !28, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !29, i64 264, !29, i64 272, !30, i64 280, !31, i64 288, !32, i64 296, !33, i64 304, !34, i64 312, !5, i64 320, !35, i64 328, !36, i64 336, !37, i64 344, !38, i64 352, !39, i64 360, !5, i64 368, !5, i64 372, !8, i64 376, !8, i64 377, !8, i64 378}
!41 = !{!40, !5, i64 224}
!42 = !{!40, !29, i64 272}
!43 = !{!"p2 _ZTS11ompi_proc_t", !18, i64 0}
!44 = !{!"ompi_group_t", !16, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !43, i64 32, !5, i64 40, !29, i64 48, !4, i64 56, !38, i64 72}
!45 = !{!44, !5, i64 16}
!46 = !{!40, !34, i64 312}
!47 = !{!40, !5, i64 320}
!48 = !{!"p1 _ZTS16opal_list_item_t", !14, i64 0}
!49 = !{!"opal_list_item_t", !16, i64 0, !48, i64 16, !48, i64 24, !5, i64 32}
!50 = !{!"p1 _ZTS30mca_rcache_base_registration_t", !14, i64 0}
!51 = !{!"opal_free_list_item_t", !49, i64 0, !50, i64 40, !14, i64 48}
!52 = !{!"ompi_status_public_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !20, i64 16}
!53 = !{!"ompi_request_t", !51, i64 0, !5, i64 56, !52, i64 64, !14, i64 88, !5, i64 96, !8, i64 100, !5, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !4, i64 152}
!54 = !{!53, !20, i64 80}
!55 = !{!52, !20, i64 16}
!56 = !{!53, !5, i64 76}
!57 = !{!52, !5, i64 12}
!58 = !{!40, !8, i64 377}
!59 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!60 = !{!52, !5, i64 0}
!61 = !{!52, !5, i64 4}
!62 = !{!"mca_pml_base_module_2_1_0_t", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !14, i64 184}
!63 = !{!62, !14, i64 112}
!64 = distinct !{!64, !72}
!65 = distinct !{!65, !72, !73}
!66 = !{!"p1 long", !14, i64 0}
!67 = !{!"opal_pointer_array_t", !16, i64 0, !17, i64 16, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !66, i64 104, !18, i64 112}
!68 = !{!67, !18, i64 112}
!69 = !{!14, !14, i64 0}
!70 = !{!"ompi_errcode_intern_t", !16, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28}
!71 = !{!70, !5, i64 16}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"llvm.loop.unswitch.partial.disable"}
!74 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!75 = !{!70, !5, i64 20}
end_hunk_0
