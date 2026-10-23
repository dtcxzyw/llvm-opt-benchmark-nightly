Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/ireduce_scatter_block?download=true
inline.NumInlined: 14
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_op_t = type { %struct.ompi_op_t, [576 x i8] }
%struct.ompi_op_t = type { %struct.opal_object_t, [64 x i8], i32, i32, i32, %union.anon, %struct.ompi_op_base_op_3buff_fns_1_0_0_t }
%struct.opal_object_t = type { ptr, i32 }
%union.anon = type { %struct.ompi_op_base_op_fns_1_0_0_t }
%struct.ompi_op_base_op_fns_1_0_0_t = type { [43 x ptr], [43 x ptr] }
%struct.ompi_op_base_op_3buff_fns_1_0_0_t = type { [43 x ptr], [43 x ptr] }
%struct.ompi_predefined_datatype_t = type { %struct.ompi_datatype_t, [208 x i8] }
%struct.ompi_datatype_t = type { %struct.opal_datatype_t, i32, i32, ptr, ptr, i64, i64, [64 x i8] }
%struct.opal_datatype_t = type { %struct.opal_object_t, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, [64 x i8], %struct.dt_type_desc_t, %struct.dt_type_desc_t, ptr }
%struct.dt_type_desc_t = type { i64, i64, ptr }
%struct.ompi_request_t = type { %struct.opal_free_list_item_t, i32, %struct.ompi_status_public_t, ptr, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, %union.ompi_mpi_object_t }
%struct.opal_free_list_item_t = type { %struct.opal_list_item_t, ptr, ptr }
%struct.opal_list_item_t = type { %struct.opal_object_t, ptr, ptr, i32 }
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
%struct.ompi_comm_extended_cid_t = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.ompi_comm_extended_cid_block_t = type { %struct.ompi_comm_extended_cid_t, i64, i8, i8 }

@ompi_mpi_param_check = external local_unnamed_addr global i8, align 1
@ompi_instance_count = external global i32, align 4
@FUNC_NAME = internal constant [26 x i8] c"MPI_Ireduce_scatter_block\00", align 16
@ompi_mpi_op_null = external global %struct.ompi_predefined_op_t, align 8
@ompi_mpi_datatype_null = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_request_empty = external global %struct.ompi_request_t, align 8
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@ompi_mpi_comm_null = external global %struct.ompi_predefined_communicator_t, align 8
@ompi_op_ddt_map = external local_unnamed_addr global [52 x i32], align 16
@.str = private unnamed_addr constant [65 x i8] c"%s: the reduction operation %s is not defined on the %s datatype\00", align 1
@.str.1 = private unnamed_addr constant [111 x i8] c"%s: the reduction operation %s is not defined for non-intrinsic datatypes (attempted with datatype named \22%s\22)\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"%s: the reduction operation %s is not defined for non-intrinsic datatypes\00", align 1

@MPI_Ireduce_scatter_block = weak alias i32 (ptr, ptr, i32, ptr, ptr, ptr, ptr), ptr @PMPI_Ireduce_scatter_block

; Function Attrs: nounwind uwtable
define i32 @PMPI_Ireduce_scatter_block(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.d = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !12
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = icmp eq ptr %5, null
  %i.h = icmp eq ptr %5, @ompi_mpi_comm_null
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %ompi_comm_invalid.exit.thread, label %ompi_comm_invalid.exit

ompi_comm_invalid.exit:                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42
  %i.k = and i32 %i.j, 48
  %or.cond7.i.not = icmp eq i32 %i.k, 0
  br i1 %or.cond7.i.not, label %bb.e, label %ompi_comm_invalid.exit.thread

ompi_comm_invalid.exit.thread:                    ; preds = %bb.d, %ompi_comm_invalid.exit
  %i.l = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #7
  br label %.thread84

bb.e:                                             ; preds = %ompi_comm_invalid.exit
  %i.m = icmp eq ptr %4, @ompi_mpi_op_null
  %i.n = icmp eq ptr %4, null
  %or.cond = or i1 %i.m, %i.n
  br i1 %or.cond, label %.thread, label %bb.f, !prof !43

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %4, i64 84
  %.val.i = load i32, ptr %i.o, align 4, !tbaa !46
  %i.p = trunc i32 %.val.i to i1
  br i1 %i.p, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %3, i64 16
  %.val20.i = load i16, ptr %i.q, align 8, !tbaa !52
  %i.r = and i16 %.val20.i, 512
  %.not.i = icmp eq i16 %i.r, 0
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.t = load i32, ptr %i.s, align 8, !tbaa !53
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr @ompi_op_ddt_map, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !12   ; 2 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.af = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @FUNC_NAME, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae) #7 ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !54
  %.not19.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %.not19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull @FUNC_NAME, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ag) #7 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ak = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.2, ptr noundef nonnull @FUNC_NAME, ptr noundef nonnull %i.ai) #7 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.l, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !56
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.aq = call i32 @ompi_errhandler_invoke(ptr noundef %i.am, ptr noundef nonnull %5, i32 noundef %i.ao, i32 noundef 10, ptr noundef %i.ap) #7
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !57
  call void @free(ptr noundef %i.ar) #7
  br label %.thread84

bb.o:                                             ; preds = %bb.f, %bb.i
  %.not = icmp eq ptr %1, inttoptr (i64 1 to ptr)
  br i1 %.not, label %.thread, label %bb.p, !prof !58

.thread:                                          ; preds = %bb.e, %bb.o
  %.05578 = phi i32 [ 13, %bb.o ], [ 10, %bb.e ]
  %7 = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.05578) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.av = load i32, ptr %i.au, align 8, !tbaa !56
  %i.aw = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.at, ptr noundef nonnull %5, i32 noundef %i.av, i32 noundef %7, ptr noundef nonnull @FUNC_NAME) #7 ; 0 uses
  br label %.thread84

bb.p:                                             ; preds = %bb.o
  %i.ax = icmp eq ptr %3, null
  %i.ay = icmp eq ptr %3, @ompi_mpi_datatype_null
  %or.cond3 = or i1 %i.ax, %i.ay
  br i1 %or.cond3, label %.thread79, label %bb.q, !prof !43

bb.q:                                             ; preds = %bb.p
  %i.az = icmp slt i32 %2, 0
  br i1 %i.az, label %.thread79, label %bb.r, !prof !43

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr i8, ptr %3, i64 16
  %.val = load i16, ptr %i.ba, align 8, !tbaa !59
  %i.bb = and i16 %.val, 5
  %or.cond92 = icmp eq i16 %i.bb, 4
  br i1 %or.cond92, label %bb.s, label %.thread79, !prof !60

.thread79:                                        ; preds = %bb.r, %bb.p, %bb.q
  %.15682 = phi i32 [ 2, %bb.q ], [ 3, %bb.r ], [ 3, %bb.p ]
  %8 = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.15682) ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !55
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !56
  %i.bg = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bd, ptr noundef nonnull %5, i32 noundef %i.bf, i32 noundef %8, ptr noundef nonnull @FUNC_NAME) #7 ; 0 uses
  br label %.thread84

.thread84:                                        ; preds = %ompi_comm_invalid.exit.thread, %.thread, %.thread79, %bb.n
  %.0.ph = phi i32 [ %i.aq, %bb.n ], [ %8, %.thread79 ], [ %7, %.thread ], [ %i.l, %ompi_comm_invalid.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.y

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.a
  %i.bh = icmp eq i32 %2, 0
  br i1 %i.bh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr @ompi_request_empty, ptr %6, align 8, !tbaa !62
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 344
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !63 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 480
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !67
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 488
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !68
  %i.bo = tail call i32 %i.bl(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %i.bn) #7 ; 2 uses
  %cond70 = icmp eq i32 %i.bo, 0
  br i1 %cond70, label %bb.w, label %bb.x, !prof !69

bb.w:                                             ; preds = %bb.v
  %i.bp = load ptr, ptr %6, align 8, !tbaa !62
  %i.bq = tail call i32 @ompi_coll_base_retain_op(ptr noundef %i.bp, ptr noundef %4, ptr noundef %3) #7 ; 0 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.br = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.bo) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !55
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !56
  %i.bw = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bt, ptr noundef nonnull %5, i32 noundef %i.bv, i32 noundef %i.br, ptr noundef nonnull @FUNC_NAME) #7 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %.thread84, %bb.w, %bb.x, %bb.u
  %.1 = phi i32 [ 0, %bb.u ], [ %i.br, %bb.x ], [ %.0.ph, %.thread84 ], [ 0, %bb.w ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ompi_errhandler_invoke(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef range(i32 1, 0) %0) unnamed_addr #3 {
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
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !73
  %i.h = sext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.not.us = icmp slt i64 %indvars.iv, %i.h
  tail call void @llvm.assume(i1 %.not.us)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !76
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.thread.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.thread.i.us, !llvm.loop !70

bb.c:                                             ; preds = %opal_pointer_array_get_item.exit
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.n = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next19, %i.o
  br i1 %i.p, label %.lr.ph.split, label %.loopexit, !llvm.loop !71

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
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv18
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74
  br label %opal_pointer_array_get_item.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #7 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  %i.y = trunc nuw i8 %.pre.i to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !73
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv18
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !74 ; 2 uses
  br i1 %i.y, label %bb.e, label %opal_pointer_array_get_item.exit, !prof !79

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #7 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.d, %bb.e
  %i.ad = phi i8 [ 0, %.thread.i ], [ %.pre, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi ptr [ %i.w, %.thread.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !76
  %i.ag = icmp eq i32 %i.af, %0
  br i1 %i.ag, label %.split.us, label %bb.c

.split.us:                                        ; preds = %.thread.i.us, %opal_pointer_array_get_item.exit
  %.us-phi = phi ptr [ %.0.i, %opal_pointer_array_get_item.exit ], [ %i.j, %.thread.i.us ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.us-phi, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !80
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %.split.us, %bb.a
  %.010 = phi i32 [ %0, %bb.a ], [ %i.ai, %.split.us ], [ 14, %bb.c ], [ 14, %.preheader ], [ 14, %bb.b ]
  ret i32 %.010
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @ompi_coll_base_retain_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare i32 @opal_asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

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
!19 = !{!"p1 long", !14, i64 0}
!20 = !{!"p1 _ZTS19opal_hash_element_t", !14, i64 0}
!21 = !{!"long", !4, i64 0}
!22 = !{!"p1 _ZTS24opal_hash_type_methods_t", !14, i64 0}
end_hunk_0
