Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/type_create_f90_real?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_datatype_t = type { %struct.ompi_datatype_t, [208 x i8] }
%struct.ompi_datatype_t = type { %struct.opal_datatype_t, i32, i32, ptr, ptr, i64, i64, [64 x i8] }
%struct.opal_datatype_t = type { %struct.opal_object_t, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, [64 x i8], %struct.dt_type_desc_t, %struct.dt_type_desc_t, ptr }
%struct.opal_object_t = type { ptr, i32 }
%struct.dt_type_desc_t = type { i64, i64, ptr }
%struct.opal_hash_table_t = type { %struct.opal_object_t, ptr, i64, i64, i64, i32, i32, i32, i32, ptr }
%struct.ompi_predefined_communicator_t = type { %struct.ompi_communicator_t, [128 x i8] }
%struct.ompi_communicator_t = type { %struct.opal_infosubscriber_t, %struct.opal_mutex_t, ptr, %struct.ompi_comm_extended_cid_t, %struct.ompi_comm_extended_cid_block_t, i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8 }
%struct.opal_infosubscriber_t = type { %struct.opal_object_t, %struct.opal_hash_table_t, ptr }
%struct.opal_mutex_t = type { %struct.opal_object_t, %union.pthread_mutex_t, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.ompi_comm_extended_cid_t = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.ompi_comm_extended_cid_block_t = type { %struct.ompi_comm_extended_cid_t, i64, i8, i8 }
%struct.opal_pointer_array_t = type { %struct.opal_object_t, %struct.opal_mutex_t, i32, i32, i32, i32, i32, ptr, ptr }

@ompi_mpi_param_check = external local_unnamed_addr global i8, align 1
@ompi_instance_count = external global i32, align 4
@FUNC_NAME = internal constant [25 x i8] c"MPI_Type_create_f90_real\00", align 16
@ompi_mpi_datatype_null = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_mpi_long_double = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_mpi_double = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_mpi_float = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_mpi_f90_real_hashtable = external global %struct.opal_hash_table_t, align 8
@ompi_mpi_comm_world = external global %struct.ompi_predefined_communicator_t, align 8
@.str = private unnamed_addr constant [12 x i8] c"COMBINER %s\00", align 1
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1

@MPI_Type_create_f90_real = weak alias i32 (i32, i32, ptr), ptr @PMPI_Type_create_f90_real

; Function Attrs: nounwind uwtable
define i32 @PMPI_Type_create_f90_real(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca [2 x ptr], align 16               ; 5 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !10
  store i32 %1, ptr %i.b, align 4, !tbaa !10
  %i.e = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !12, !range !13, !noundef !14
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !10
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = icmp eq i32 %0, -32766
  %i.k = icmp eq i32 %1, -32766
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.s

bb.f:                                             ; preds = %bb.d, %bb.a
  %3 = icmp eq i32 %0, -32766
  %spec.select = select i1 %3, i32 0, i32 %0
  %4 = icmp eq i32 %1, -32766
  %.030 = select i1 %4, i32 0, i32 %1
  %i.m = icmp sgt i32 %0, 18
  %i.n = icmp sgt i32 %1, 4931
  %or.cond5 = or i1 %i.m, %i.n
  br i1 %or.cond5, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  store ptr @ompi_mpi_datatype_null, ptr %2, align 8, !tbaa !18
  br label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.o = icmp sgt i32 %0, 15
  %i.p = icmp sgt i32 %1, 307
  %or.cond9 = or i1 %i.o, %i.p
  %i.q = icmp sgt i32 %0, 6
  %i.r = icmp sgt i32 %1, 37
  %or.cond13 = or i1 %i.q, %i.r
  %ompi_mpi_double.ompi_mpi_float = select i1 %or.cond13, ptr @ompi_mpi_double, ptr @ompi_mpi_float
  %ompi_mpi_long_double.sink = select i1 %or.cond9, ptr @ompi_mpi_long_double, ptr %ompi_mpi_double.ompi_mpi_float ; 2 uses
  store ptr %ompi_mpi_long_double.sink, ptr %2, align 8, !tbaa !18
  %i.s = icmp eq ptr %ompi_mpi_long_double.sink, @ompi_mpi_datatype_null
  br i1 %i.s, label %bb.r, label %5

5:                                                ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store ptr %i.a, ptr %i.d, align 16, !tbaa !20
  %6 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.b, ptr %6, align 8, !tbaa !20
  %7 = sext i32 %spec.select to i64
  %8 = shl nsw i64 %7, 32
  %9 = sext i32 %.030 to i64
  %10 = or i64 %8, %9                             ; 2 uses
  %11 = call i32 @opal_hash_table_get_value_uint64(ptr noundef nonnull @ompi_mpi_f90_real_hashtable, i64 noundef %10, ptr noundef nonnull %2) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %bb.q, label %bb.h

bb.h:                                             ; preds = %5
  %i.t = load ptr, ptr %2, align 8, !tbaa !18
  %i.u = call i32 @ompi_datatype_duplicate(ptr noundef %i.t, ptr noundef nonnull %i.c) #6
  %.not36 = icmp eq i32 %i.u, 0
  br i1 %.not36, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 312), align 8, !tbaa !46
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 320), align 8, !tbaa !47
  %i.x = call i32 @ompi_errhandler_invoke(ptr noundef %i.v, ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.w, i32 noundef 17, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !54
  %i.ab = or i16 %i.aa, 512
  store i16 %i.ab, ptr %i.z, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.ad = load ptr, ptr %2, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 240
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ac, i64 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull %i.ae) #6 ; 0 uses
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.ah = call i32 @ompi_datatype_set_args(ptr noundef %i.ag, i32 noundef 2, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 14) #6 ; 0 uses
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.aj = call i32 @opal_hash_table_set_value_uint64(ptr noundef nonnull @ompi_mpi_f90_real_hashtable, i64 noundef %10, ptr noundef %i.ai) #6 ; 5 uses
  %.not37 = icmp eq i32 %i.aj, 0
  br i1 %.not37, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %ompi_errcode_get_mpi_code.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k
  %i.al = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !10 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.i, label %ompi_errcode_get_mpi_code.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.an = load i8, ptr @opal_uses_threads, align 1, !tbaa !12, !range !13, !noundef !14
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.lr.ph.split.i, label %.lr.ph.split.us.i, !prof !15

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !56
  %i.ar = sext i32 %i.ap to i64
  %wide.trip.count.i = zext nneg i32 %i.al to i64
  br label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.l, %.lr.ph.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %.lr.ph.split.us.i ] ; 3 uses
  %.not.us.i = icmp slt i64 %indvars.iv.i, %i.ar
  call void @llvm.assume(i1 %.not.us.i)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !59
  %i.aw = icmp eq i32 %i.av, %i.aj
  br i1 %i.aw, label %.split.us.i, label %bb.l

bb.l:                                             ; preds = %.thread.i.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ompi_errcode_get_mpi_code.exit, label %.thread.i.us.i, !llvm.loop !8

bb.m:                                             ; preds = %opal_pointer_array_get_item.exit.i
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %i.ax = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !10
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next19.i, %i.ay
  br i1 %i.az, label %.lr.ph.split.i, label %ompi_errcode_get_mpi_code.exit, !llvm.loop !9

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.m
  %i.ba = phi i8 [ %i.bn, %bb.m ], [ 1, %.lr.ph.i ]
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %bb.m ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.bc = sext i32 %i.bb to i64
  %.not.i = icmp slt i64 %indvars.iv18.i, %i.bc
  call void @llvm.assume(i1 %.not.i)
  %i.bd = trunc nuw i8 %i.ba to i1
  br i1 %i.bd, label %bb.n, label %.thread.i.i, !prof !15

.thread.i.i:                                      ; preds = %.lr.ph.split.i
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !56
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv18.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !57
  br label %opal_pointer_array_get_item.exit.i

bb.n:                                             ; preds = %.lr.ph.split.i
  %i.bh = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !12, !range !13
  %i.bi = trunc nuw i8 %.pre.i.i to i1
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !56
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv18.i
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !57 ; 2 uses
  br i1 %i.bi, label %bb.o, label %opal_pointer_array_get_item.exit.i, !prof !62

bb.o:                                             ; preds = %bb.n
  %i.bm = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !12, !range !13
  br label %opal_pointer_array_get_item.exit.i

opal_pointer_array_get_item.exit.i:               ; preds = %bb.o, %bb.n, %.thread.i.i
  %i.bn = phi i8 [ 0, %.thread.i.i ], [ %.pre.i, %bb.o ], [ 0, %bb.n ]
  %.0.i.i = phi ptr [ %i.bg, %.thread.i.i ], [ %i.bl, %bb.o ], [ %i.bl, %bb.n ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !59
  %i.bq = icmp eq i32 %i.bp, %i.aj
  br i1 %i.bq, label %.split.us.i, label %bb.m

.split.us.i:                                      ; preds = %.thread.i.us.i, %opal_pointer_array_get_item.exit.i
  %.us-phi.i = phi ptr [ %.0.i.i, %opal_pointer_array_get_item.exit.i ], [ %i.at, %.thread.i.us.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 20
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !63
  br label %ompi_errcode_get_mpi_code.exit

ompi_errcode_get_mpi_code.exit:                   ; preds = %bb.l, %bb.m, %bb.k, %.preheader.i, %.split.us.i
  %.010.i = phi i32 [ %i.aj, %bb.k ], [ %i.bs, %.split.us.i ], [ 14, %bb.m ], [ 14, %.preheader.i ], [ 14, %bb.l ]
  %i.bt = call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef %.010.i, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !18
  store ptr %i.bu, ptr %2, align 8, !tbaa !18
  br label %bb.q

bb.q:                                             ; preds = %5, %bb.p, %ompi_errcode_get_mpi_code.exit, %bb.i
  %.0 = phi i32 [ 0, %bb.p ], [ 17, %bb.i ], [ %i.bt, %ompi_errcode_get_mpi_code.exit ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.s

bb.r:                                             ; preds = %.thread, %bb.g
  %i.bv = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.e
  %.1 = phi i32 [ %i.l, %bb.e ], [ %.0, %bb.q ], [ %i.bv, %bb.r ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ompi_errhandler_invoke(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @opal_hash_table_get_value_uint64(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ompi_datatype_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @ompi_datatype_set_args(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @opal_hash_table_set_value_uint64(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

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
!8 = distinct !{!8, !60}
!9 = distinct !{!9, !60, !61}
!10 = !{!5, !5, i64 0}
!11 = !{!"_Bool", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!"any pointer", !4, i64 0}
!17 = !{!"p1 _ZTS15ompi_datatype_t", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 int", !16, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTS12opal_class_t", !16, i64 0}
!22 = !{!"opal_object_t", !21, i64 0, !5, i64 8}
!23 = !{!"p1 _ZTS19opal_hash_element_t", !16, i64 0}
!24 = !{!"long", !4, i64 0}
!25 = !{!"p1 _ZTS24opal_hash_type_methods_t", !16, i64 0}
!26 = !{!"opal_hash_table_t", !22, i64 0, !23, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !25, i64 64}
!27 = !{!"p1 _ZTS11opal_info_t", !16, i64 0}
!28 = !{!"opal_infosubscriber_t", !22, i64 0, !26, i64 16, !27, i64 88}
!29 = !{!"opal_mutex_t", !22, i64 0, !4, i64 16, !5, i64 56}
!30 = !{!"p1 omnipotent char", !16, i64 0}
!31 = !{!"ompi_comm_extended_cid_t", !24, i64 0, !4, i64 8}
!32 = !{!"ompi_comm_extended_cid_block_t", !31, i64 0, !24, i64 16, !4, i64 24, !4, i64 25}
!33 = !{!"p1 _ZTS12ompi_group_t", !16, i64 0}
!34 = !{!"p1 _ZTS19ompi_communicator_t", !16, i64 0}
!35 = !{!"p1 _ZTS17opal_hash_table_t", !16, i64 0}
!36 = !{!"p1 _ZTS22mca_topo_base_module_t", !16, i64 0}
!37 = !{!"any p2 pointer", !16, i64 0}
!38 = !{!"p2 _ZTS20ompi_peruse_handle_t", !37, i64 0}
!39 = !{!"p1 _ZTS17ompi_errhandler_t", !16, i64 0}
!40 = !{!"p1 _ZTS14mca_pml_comm_t", !16, i64 0}
!41 = !{!"p1 _ZTS14mca_mtl_comm_t", !16, i64 0}
!42 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !16, i64 0}
!43 = !{!"p1 _ZTS15ompi_instance_t", !16, i64 0}
!44 = !{!"p1 _ZTS13opal_object_t", !16, i64 0}
!45 = !{!"ompi_communicator_t", !28, i64 0, !29, i64 96, !30, i64 160, !31, i64 168, !32, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !19, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !33, i64 264, !33, i64 272, !34, i64 280, !35, i64 288, !36, i64 296, !38, i64 304, !39, i64 312, !5, i64 320, !40, i64 328, !41, i64 336, !42, i64 344, !43, i64 352, !44, i64 360, !5, i64 368, !5, i64 372, !11, i64 376, !11, i64 377, !11, i64 378}
!46 = !{!45, !39, i64 312}
!47 = !{!45, !5, i64 320}
!48 = !{!"short", !4, i64 0}
!49 = !{!"p1 _ZTS12dt_elem_desc", !16, i64 0}
!50 = !{!"dt_type_desc_t", !24, i64 0, !24, i64 8, !49, i64 16}
!51 = !{!"p1 long", !16, i64 0}
!52 = !{!"opal_datatype_t", !22, i64 0, !48, i64 16, !48, i64 18, !5, i64 20, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64, !5, i64 72, !5, i64 76, !4, i64 80, !50, i64 144, !50, i64 168, !51, i64 192}
!53 = !{!"ompi_datatype_t", !52, i64 0, !5, i64 200, !5, i64 204, !35, i64 208, !16, i64 216, !24, i64 224, !24, i64 232, !4, i64 240}
!54 = !{!53, !48, i64 16}
!55 = !{!"opal_pointer_array_t", !22, i64 0, !29, i64 16, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !51, i64 104, !37, i64 112}
!56 = !{!55, !37, i64 112}
!57 = !{!16, !16, i64 0}
!58 = !{!"ompi_errcode_intern_t", !22, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28}
!59 = !{!58, !5, i64 16}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unswitch.partial.disable"}
!62 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!63 = !{!58, !5, i64 20}
end_hunk_0
