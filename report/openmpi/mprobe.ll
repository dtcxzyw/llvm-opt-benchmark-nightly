Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/mprobe?download=true
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
%struct.ompi_predefined_message_t = type { %struct.ompi_message_t, [160 x i8] }
%struct.ompi_message_t = type { %struct.opal_free_list_item_t, i32, ptr, ptr, i32, i64 }
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
@FUNC_NAME = internal constant [11 x i8] c"MPI_Mprobe\00", align 1
@mca_pml = external local_unnamed_addr global %struct.mca_pml_base_module_2_1_0_t, align 8
@ompi_request_empty = external local_unnamed_addr global %struct.ompi_request_t, align 8
@ompi_message_no_proc = external global %struct.ompi_predefined_message_t, align 8
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@ompi_mpi_comm_null = external global %struct.ompi_predefined_communicator_t, align 8

@MPI_Mprobe = weak alias i32 (i32, i32, ptr, ptr, ptr), ptr @PMPI_Mprobe

; Function Attrs: nounwind uwtable
define noundef i32 @PMPI_Mprobe(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !12
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %or.cond = icmp slt i32 %1, -1
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 172), align 4
  %i.g = icmp sgt i32 %1, %i.f
  %or.cond58 = select i1 %or.cond, i1 true, i1 %i.g
  br i1 %or.cond58, label %ompi_comm_invalid.exit.thread, label %bb.e

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
  br i1 %.not.i.not, label %bb.h, label %ompi_comm_invalid.exit.thread

bb.h:                                             ; preds = %ompi_comm_peer_invalid.exit, %bb.f
  %i.r = icmp eq ptr %3, null
  br i1 %i.r, label %ompi_comm_invalid.exit.thread, label %bb.i

ompi_comm_invalid.exit.thread:                    ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %ompi_comm_invalid.exit, %ompi_comm_peer_invalid.exit
  %.062.ph = phi i32 [ 6, %ompi_comm_peer_invalid.exit ], [ 5, %bb.e ], [ 4, %bb.d ], [ 6, %bb.g ], [ 5, %ompi_comm_invalid.exit ], [ 7, %bb.h ]
  %5 = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.062.ph) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.v = load i32, ptr %i.u, align 8, !tbaa !47
  %i.w = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.t, ptr noundef %2, i32 noundef %i.v, i32 noundef %5, ptr noundef nonnull @FUNC_NAME) #5 ; 0 uses
  br label %bb.t

bb.i:                                             ; preds = %bb.h, %bb.a
  %i.x = icmp eq i32 %0, -2
  br i1 %i.x, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not56 = icmp eq ptr %4, null
  br i1 %.not56, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_empty, i64 64), align 8, !tbaa !12
  store <2 x i32> %i.y, ptr %4, align 8, !tbaa !12
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_empty, i64 80), align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !55
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_empty, i64 76), align 4, !tbaa !56
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !57
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr @ompi_message_no_proc, ptr %3, align 8, !tbaa !59
  br label %bb.t

bb.m:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %2, i64 377
  %.val.i = load i8, ptr %i.ad, align 1, !tbaa !60, !range !10, !noundef !11
  %i.ae = trunc nuw i8 %.val.i to i1
  br i1 %i.ae, label %bb.p, label %bb.n, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !41
  %i.ah = trunc i32 %i.ag to i1
  %i.ai = tail call zeroext i1 @ompi_comm_is_proc_active(ptr noundef nonnull %2, i32 noundef range(i32 -1, -2) %0, i1 noundef zeroext %i.ah) #5
  br i1 %i.ai, label %ompi_comm_iface_p2p_check_proc.exit, label %bb.o, !prof !61

bb.o:                                             ; preds = %bb.n
  %i.aj = tail call i32 @opal_progress() #5       ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.2.ph = phi i32 [ 77, %bb.m ], [ 75, %bb.o ]
  %.not54 = icmp eq ptr %4, null
  br i1 %.not54, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %0, ptr %4, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %1, ptr %i.ak, align 4, !tbaa !63
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  store ptr @ompi_message_no_proc, ptr %3, align 8, !tbaa !59
  %6 = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.2.ph) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !46
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !47
  %i.ap = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.am, ptr noundef nonnull %2, i32 noundef %i.ao, i32 noundef %6, ptr noundef nonnull @FUNC_NAME) #5 ; 0 uses
  br label %bb.t

ompi_comm_iface_p2p_check_proc.exit:              ; preds = %bb.n
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 136), align 8, !tbaa !65
  %i.ar = tail call i32 %i.aq(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #5 ; 2 uses
  %.not53 = icmp eq i32 %i.ar, 0
  br i1 %.not53, label %bb.t, label %bb.s, !prof !61

bb.s:                                             ; preds = %ompi_comm_iface_p2p_check_proc.exit
  %i.as = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.ar) ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !47
  %i.ax = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.au, ptr noundef nonnull %2, i32 noundef %i.aw, i32 noundef %i.as, ptr noundef nonnull @FUNC_NAME) #5 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %ompi_comm_iface_p2p_check_proc.exit, %bb.s, %bb.r, %bb.l, %ompi_comm_invalid.exit.thread
  %.0 = phi i32 [ %5, %ompi_comm_invalid.exit.thread ], [ 0, %bb.l ], [ %6, %bb.r ], [ 0, %ompi_comm_iface_p2p_check_proc.exit ], [ %i.as, %bb.s ]
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
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !70
  %i.h = sext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.not.us = icmp slt i64 %indvars.iv, %i.h
  tail call void @llvm.assume(i1 %.not.us)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !73
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.thread.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.thread.i.us, !llvm.loop !66

bb.c:                                             ; preds = %opal_pointer_array_get_item.exit
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.n = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next19, %i.o
  br i1 %i.p, label %.lr.ph.split, label %.loopexit, !llvm.loop !67

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
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !70
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv18
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !71
  br label %opal_pointer_array_get_item.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #5 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  %i.y = trunc nuw i8 %.pre.i to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv18
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 2 uses
  br i1 %i.y, label %bb.e, label %opal_pointer_array_get_item.exit, !prof !76

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #5 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.d, %bb.e
  %i.ad = phi i8 [ 0, %.thread.i ], [ %.pre, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi ptr [ %i.w, %.thread.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !73
  %i.ag = icmp eq i32 %i.af, %0
  br i1 %i.ag, label %.split.us, label %bb.c

.split.us:                                        ; preds = %.thread.i.us, %opal_pointer_array_get_item.exit
  %.us-phi = phi ptr [ %.0.i, %opal_pointer_array_get_item.exit ], [ %i.j, %.thread.i.us ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.us-phi, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !77
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
!58 = !{!"p1 _ZTS14ompi_message_t", !14, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!40, !8, i64 377}
!61 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!62 = !{!52, !5, i64 0}
!63 = !{!52, !5, i64 4}
!64 = !{!"mca_pml_base_module_2_1_0_t", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !14, i64 184}
!65 = !{!64, !14, i64 136}
!66 = distinct !{!66, !74}
!67 = distinct !{!67, !74, !75}
!68 = !{!"p1 long", !14, i64 0}
!69 = !{!"opal_pointer_array_t", !16, i64 0, !17, i64 16, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !68, i64 104, !18, i64 112}
!70 = !{!69, !18, i64 112}
!71 = !{!14, !14, i64 0}
!72 = !{!"ompi_errcode_intern_t", !16, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28}
!73 = !{!72, !5, i64 16}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
