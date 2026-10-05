Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/type_create_f90_integer?download=true
inline.NumInlined: 9
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
@FUNC_NAME = internal constant [28 x i8] c"MPI_Type_create_f90_integer\00", align 16
@ompi_mpi_datatype_null = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_mpi_long = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_mpi_int = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_mpi_short = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_mpi_byte = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_mpi_f90_integer_hashtable = external global %struct.opal_hash_table_t, align 8
@ompi_mpi_comm_world = external global %struct.ompi_predefined_communicator_t, align 8
@.str = private unnamed_addr constant [12 x i8] c"COMBINER %s\00", align 1
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1

@MPI_Type_create_f90_integer = weak alias i32 (i32, ptr), ptr @PMPI_Type_create_f90_integer

; Function Attrs: nounwind uwtable
define i32 @PMPI_Type_create_f90_integer(i32 noundef %0, ptr noundef initializes((0, 8)) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [1 x ptr], align 8                ; 4 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !10
  %i.d = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !12, !range !13, !noundef !14
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %thread-pre-split

bb.b:                                             ; preds = %bb.a
  %i.f = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !10
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %thread-pre-split, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.b, %bb.c, %bb.a
  %i.i = icmp sgt i32 %0, 18
  br i1 %i.i, label %bb.r, label %bb.d

bb.d:                                             ; preds = %thread-pre-split
  %i.j = icmp sgt i32 %0, 9
  br i1 %i.j, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp sgt i32 %0, 4
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = icmp sgt i32 %0, 2
  %ompi_mpi_short.ompi_mpi_byte = select i1 %i.l, ptr @ompi_mpi_short, ptr @ompi_mpi_byte
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %ompi_mpi_int.sink = phi ptr [ @ompi_mpi_long, %bb.d ], [ @ompi_mpi_int, %bb.e ], [ %ompi_mpi_short.ompi_mpi_byte, %bb.f ]
  store ptr %ompi_mpi_int.sink, ptr %1, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.m = tail call i32 @opal_hash_table_get_value_uint32(ptr noundef nonnull @ompi_mpi_f90_integer_hashtable, i32 noundef %0, ptr noundef nonnull %1) #6
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %1, align 8, !tbaa !18
  %i.p = call i32 @ompi_datatype_duplicate(ptr noundef %i.o, ptr noundef nonnull %i.b) #6
  %.not17 = icmp eq i32 %i.p, 0
  br i1 %.not17, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 312), align 8, !tbaa !45
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 320), align 8, !tbaa !46
  %i.s = call i32 @ompi_errhandler_invoke(ptr noundef %i.q, ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.r, i32 noundef 17, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !53
  %i.w = or i16 %i.v, 512
  store i16 %i.w, ptr %i.u, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.y = load ptr, ptr %1, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull %i.z) #6 ; 0 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !54
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ac = call i32 @ompi_datatype_set_args(ptr noundef %i.ab, i32 noundef 1, ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 16) #6 ; 0 uses
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !10
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.af = call i32 @opal_hash_table_set_value_uint32(ptr noundef nonnull @ompi_mpi_f90_integer_hashtable, i32 noundef %i.ad, ptr noundef %i.ae) #6 ; 5 uses
  %.not18 = icmp eq i32 %i.af, 0
  br i1 %.not18, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %ompi_errcode_get_mpi_code.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k
  %i.ah = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !10 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i, label %ompi_errcode_get_mpi_code.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aj = load i8, ptr @opal_uses_threads, align 1, !tbaa !12, !range !13, !noundef !14
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.split.i, label %.lr.ph.split.us.i, !prof !15

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !56
  %i.an = sext i32 %i.al to i64
  %wide.trip.count.i = zext nneg i32 %i.ah to i64
  br label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.l, %.lr.ph.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %.lr.ph.split.us.i ] ; 3 uses
  %.not.us.i = icmp slt i64 %indvars.iv.i, %i.an
  call void @llvm.assume(i1 %.not.us.i)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !59
  %i.as = icmp eq i32 %i.ar, %i.af
  br i1 %i.as, label %.split.us.i, label %bb.l

bb.l:                                             ; preds = %.thread.i.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ompi_errcode_get_mpi_code.exit, label %.thread.i.us.i, !llvm.loop !8

bb.m:                                             ; preds = %opal_pointer_array_get_item.exit.i
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %i.at = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !10
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next19.i, %i.au
  br i1 %i.av, label %.lr.ph.split.i, label %ompi_errcode_get_mpi_code.exit, !llvm.loop !9

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.m
  %i.aw = phi i8 [ %i.bj, %bb.m ], [ 1, %.lr.ph.i ]
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %bb.m ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.ay = sext i32 %i.ax to i64
  %.not.i = icmp slt i64 %indvars.iv18.i, %i.ay
  call void @llvm.assume(i1 %.not.i)
  %i.az = trunc nuw i8 %i.aw to i1
  br i1 %i.az, label %bb.n, label %.thread.i.i, !prof !15

.thread.i.i:                                      ; preds = %.lr.ph.split.i
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !56
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv18.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !57
  br label %opal_pointer_array_get_item.exit.i

bb.n:                                             ; preds = %.lr.ph.split.i
  %i.bd = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !12, !range !13
  %i.be = trunc nuw i8 %.pre.i.i to i1
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !56
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv18.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !57 ; 2 uses
  br i1 %i.be, label %bb.o, label %opal_pointer_array_get_item.exit.i, !prof !62

bb.o:                                             ; preds = %bb.n
  %i.bi = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !12, !range !13
  br label %opal_pointer_array_get_item.exit.i

opal_pointer_array_get_item.exit.i:               ; preds = %bb.o, %bb.n, %.thread.i.i
  %i.bj = phi i8 [ 0, %.thread.i.i ], [ %.pre.i, %bb.o ], [ 0, %bb.n ]
  %.0.i.i = phi ptr [ %i.bc, %.thread.i.i ], [ %i.bh, %bb.o ], [ %i.bh, %bb.n ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !59
  %i.bm = icmp eq i32 %i.bl, %i.af
  br i1 %i.bm, label %.split.us.i, label %bb.m

.split.us.i:                                      ; preds = %.thread.i.us.i, %opal_pointer_array_get_item.exit.i
  %.us-phi.i = phi ptr [ %.0.i.i, %opal_pointer_array_get_item.exit.i ], [ %i.ap, %.thread.i.us.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 20
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !63
  br label %ompi_errcode_get_mpi_code.exit

ompi_errcode_get_mpi_code.exit:                   ; preds = %bb.l, %bb.m, %bb.k, %.preheader.i, %.split.us.i
  %.010.i = phi i32 [ %i.af, %bb.k ], [ %i.bo, %.split.us.i ], [ 14, %bb.m ], [ 14, %.preheader.i ], [ 14, %bb.l ]
  %i.bp = call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef %.010.i, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !18
  store ptr %i.bq, ptr %1, align 8, !tbaa !18
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %bb.p, %ompi_errcode_get_mpi_code.exit, %bb.i
  %.0 = phi i32 [ 0, %bb.p ], [ 17, %bb.i ], [ %i.bp, %ompi_errcode_get_mpi_code.exit ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.s

bb.r:                                             ; preds = %thread-pre-split
  store ptr @ompi_mpi_datatype_null, ptr %1, align 8, !tbaa !18
  %i.br = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1 = phi i32 [ %.0, %bb.q ], [ %i.br, %bb.r ]
  ret i32 %.1
}

declare i32 @ompi_errhandler_invoke(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @opal_hash_table_get_value_uint32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ompi_datatype_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @ompi_datatype_set_args(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @opal_hash_table_set_value_uint32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!19 = !{!"p1 _ZTS12opal_class_t", !16, i64 0}
!20 = !{!"opal_object_t", !19, i64 0, !5, i64 8}
!21 = !{!"p1 _ZTS19opal_hash_element_t", !16, i64 0}
!22 = !{!"long", !4, i64 0}
!23 = !{!"p1 _ZTS24opal_hash_type_methods_t", !16, i64 0}
!24 = !{!"opal_hash_table_t", !20, i64 0, !21, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !23, i64 64}
!25 = !{!"p1 _ZTS11opal_info_t", !16, i64 0}
!26 = !{!"opal_infosubscriber_t", !20, i64 0, !24, i64 16, !25, i64 88}
!27 = !{!"opal_mutex_t", !20, i64 0, !4, i64 16, !5, i64 56}
!28 = !{!"p1 omnipotent char", !16, i64 0}
!29 = !{!"ompi_comm_extended_cid_t", !22, i64 0, !4, i64 8}
!30 = !{!"ompi_comm_extended_cid_block_t", !29, i64 0, !22, i64 16, !4, i64 24, !4, i64 25}
!31 = !{!"p1 int", !16, i64 0}
!32 = !{!"p1 _ZTS12ompi_group_t", !16, i64 0}
!33 = !{!"p1 _ZTS19ompi_communicator_t", !16, i64 0}
!34 = !{!"p1 _ZTS17opal_hash_table_t", !16, i64 0}
!35 = !{!"p1 _ZTS22mca_topo_base_module_t", !16, i64 0}
!36 = !{!"any p2 pointer", !16, i64 0}
!37 = !{!"p2 _ZTS20ompi_peruse_handle_t", !36, i64 0}
!38 = !{!"p1 _ZTS17ompi_errhandler_t", !16, i64 0}
!39 = !{!"p1 _ZTS14mca_pml_comm_t", !16, i64 0}
!40 = !{!"p1 _ZTS14mca_mtl_comm_t", !16, i64 0}
!41 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !16, i64 0}
!42 = !{!"p1 _ZTS15ompi_instance_t", !16, i64 0}
!43 = !{!"p1 _ZTS13opal_object_t", !16, i64 0}
!44 = !{!"ompi_communicator_t", !26, i64 0, !27, i64 96, !28, i64 160, !29, i64 168, !30, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !31, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !32, i64 264, !32, i64 272, !33, i64 280, !34, i64 288, !35, i64 296, !37, i64 304, !38, i64 312, !5, i64 320, !39, i64 328, !40, i64 336, !41, i64 344, !42, i64 352, !43, i64 360, !5, i64 368, !5, i64 372, !11, i64 376, !11, i64 377, !11, i64 378}
!45 = !{!44, !38, i64 312}
!46 = !{!44, !5, i64 320}
!47 = !{!"short", !4, i64 0}
!48 = !{!"p1 _ZTS12dt_elem_desc", !16, i64 0}
!49 = !{!"dt_type_desc_t", !22, i64 0, !22, i64 8, !48, i64 16}
!50 = !{!"p1 long", !16, i64 0}
!51 = !{!"opal_datatype_t", !20, i64 0, !47, i64 16, !47, i64 18, !5, i64 20, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !5, i64 72, !5, i64 76, !4, i64 80, !49, i64 144, !49, i64 168, !50, i64 192}
!52 = !{!"ompi_datatype_t", !51, i64 0, !5, i64 200, !5, i64 204, !34, i64 208, !16, i64 216, !22, i64 224, !22, i64 232, !4, i64 240}
!53 = !{!52, !47, i64 16}
!54 = !{!31, !31, i64 0}
!55 = !{!"opal_pointer_array_t", !20, i64 0, !27, i64 16, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !50, i64 104, !36, i64 112}
!56 = !{!55, !36, i64 112}
!57 = !{!16, !16, i64 0}
!58 = !{!"ompi_errcode_intern_t", !20, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28}
!59 = !{!58, !5, i64 16}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unswitch.partial.disable"}
!62 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!63 = !{!58, !5, i64 20}
end_hunk_0
