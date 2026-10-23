Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/reduce_scatter_block?download=true
inline.NumInlined: 21
inline.NumDeleted: 17
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
@FUNC_NAME = internal constant [25 x i8] c"MPI_Reduce_scatter_block\00", align 16
@ompi_mpi_op_null = external global %struct.ompi_predefined_op_t, align 8
@ompi_mpi_datatype_null = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@ompi_mpi_comm_null = external global %struct.ompi_predefined_communicator_t, align 8
@ompi_op_ddt_map = external local_unnamed_addr global [52 x i32], align 16
@.str = private unnamed_addr constant [65 x i8] c"%s: the reduction operation %s is not defined on the %s datatype\00", align 1
@.str.1 = private unnamed_addr constant [111 x i8] c"%s: the reduction operation %s is not defined for non-intrinsic datatypes (attempted with datatype named \22%s\22)\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"%s: the reduction operation %s is not defined for non-intrinsic datatypes\00", align 1

@MPI_Reduce_scatter_block = weak alias i32 (ptr, ptr, i32, ptr, ptr, ptr), ptr @PMPI_Reduce_scatter_block

; Function Attrs: nounwind uwtable
define i32 @PMPI_Reduce_scatter_block(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.u

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
  %i.j = load i32, ptr %i.i, align 8, !tbaa !46
  %i.k = and i32 %i.j, 48
  %or.cond7.i.not = icmp eq i32 %i.k, 0
  br i1 %or.cond7.i.not, label %bb.e, label %ompi_comm_invalid.exit.thread

ompi_comm_invalid.exit.thread:                    ; preds = %bb.d, %ompi_comm_invalid.exit
  %i.l = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #7
  br label %.thread92

bb.e:                                             ; preds = %ompi_comm_invalid.exit
  %i.m = icmp eq ptr %4, @ompi_mpi_op_null
  %i.n = icmp eq ptr %4, null
  %or.cond = or i1 %i.m, %i.n
  br i1 %or.cond, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %4, i64 84
  %.val.i = load i32, ptr %i.o, align 4, !tbaa !49
  %i.p = trunc i32 %.val.i to i1
  br i1 %i.p, label %bb.g, label %ompi_op_is_valid.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %3, i64 16
  %.val20.i = load i16, ptr %i.q, align 8, !tbaa !55
  %i.r = and i16 %.val20.i, 512
  %.not.i = icmp eq i16 %i.r, 0
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.t = load i32, ptr %i.s, align 8, !tbaa !56
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr @ompi_op_ddt_map, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !12   ; 2 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %ompi_op_is_valid.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.af = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @FUNC_NAME, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae) #7 ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !57
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
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !59
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.aq = call i32 @ompi_errhandler_invoke(ptr noundef %i.am, ptr noundef nonnull %5, i32 noundef %i.ao, i32 noundef 10, ptr noundef %i.ap) #7
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !60
  call void @free(ptr noundef %i.ar) #7
  br label %.thread92

ompi_op_is_valid.exit:                            ; preds = %bb.i, %bb.f
  %i.as = icmp eq ptr %1, inttoptr (i64 1 to ptr)
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %ompi_op_is_valid.exit, %bb.e
  %.078.ph = phi i32 [ 10, %bb.e ], [ 13, %ompi_op_is_valid.exit ] ; 3 uses
  %6 = icmp eq i32 %.078.ph, 12
  %.finite108 = select i1 %6, i32 12, i32 13
  %7 = icmp eq i32 %.078.ph, 11
  %.finite109 = select i1 %7, i32 11, i32 %.finite108
  %8 = icmp eq i32 %.078.ph, 10
  %.finite110 = select i1 %8, i32 10, i32 %.finite109 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !58
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !59
  %i.ax = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.au, ptr noundef nonnull %5, i32 noundef %i.aw, i32 noundef %.finite110, ptr noundef nonnull @FUNC_NAME) #7 ; 0 uses
  br label %.thread92

bb.p:                                             ; preds = %ompi_op_is_valid.exit
  %i.ay = icmp eq ptr %3, null
  %i.az = icmp eq ptr %3, @ompi_mpi_datatype_null
  %or.cond3 = or i1 %i.ay, %i.az
  br i1 %or.cond3, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = icmp slt i32 %2, 0
  br i1 %i.ba, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr i8, ptr %3, i64 16
  %.val = load i16, ptr %i.bb, align 8, !tbaa !61
  %i.bc = and i16 %.val, 5
  %or.cond99 = icmp eq i16 %i.bc, 4
  br i1 %or.cond99, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.179.ph = phi i32 [ 3, %bb.r ], [ 3, %bb.p ], [ 2, %bb.q ]
  %9 = icmp eq i32 %.179.ph, 2
  %.finite107 = select i1 %9, i32 2, i32 3        ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !58
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !59
  %i.bh = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.be, ptr noundef nonnull %5, i32 noundef %i.bg, i32 noundef %.finite107, ptr noundef nonnull @FUNC_NAME) #7 ; 0 uses
  br label %.thread92

.thread92:                                        ; preds = %ompi_comm_invalid.exit.thread, %bb.o, %bb.s, %bb.n
  %.0.ph = phi i32 [ %i.aq, %bb.n ], [ %.finite107, %bb.s ], [ %.finite110, %bb.o ], [ %i.l, %ompi_comm_invalid.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.ag

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.a
  %i.bi = icmp eq i32 %2, 0
  br i1 %i.bi, label %bb.ag, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr i8, ptr %5, i64 377
  %.val.i69 = load i8, ptr %i.bj, align 1, !tbaa !62, !range !10, !noundef !11
  %i.bk = trunc nuw i8 %.val.i69 to i1
  br i1 %i.bk, label %bb.y, label %bb.w, !prof !13

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr i8, ptr %5, i64 378
  %.val5.i = load i8, ptr %i.bl, align 2, !tbaa !63, !range !10, !noundef !11
  %i.bm = trunc nuw i8 %.val5.i to i1
  br i1 %i.bm, label %bb.x, label %ompi_comm_iface_coll_check.exit, !prof !13

bb.x:                                             ; preds = %bb.w
  %i.bn = tail call i32 @opal_progress() #7       ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x
  %.4.ph = phi i32 [ 77, %bb.v ], [ 75, %bb.x ]   ; 2 uses
  %10 = icmp eq i32 %.4.ph, 76
  %.finite = select i1 %10, i32 76, i32 77
  %11 = icmp eq i32 %.4.ph, 75
  %.finite106 = select i1 %11, i32 75, i32 %.finite ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !58
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !59
  %i.bs = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bp, ptr noundef nonnull %5, i32 noundef %i.br, i32 noundef %.finite106, ptr noundef nonnull @FUNC_NAME) #7 ; 0 uses
  br label %bb.ag

ompi_comm_iface_coll_check.exit:                  ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.bu = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10, !noundef !11
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %ompi_comm_iface_coll_check.exit
  %i.bw = atomicrmw volatile add ptr %i.bt, i32 1 monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

bb.aa:                                            ; preds = %ompi_comm_iface_coll_check.exit
  %i.bx = load volatile i32, ptr %i.bt, align 4, !tbaa !12
  %i.by = add nsw i32 %i.bx, 1
  store volatile i32 %i.by, ptr %i.bt, align 4, !tbaa !12
  %i.bz = load volatile i32, ptr %i.bt, align 4, !tbaa !12 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.z, %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 344
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !64 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 208
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !68
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 216
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !69
  %i.cg = tail call i32 %i.cd(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %i.cf) #7 ; 2 uses
  %i.ch = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10, !noundef !11
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.ab, label %bb.ac, !prof !13

bb.ab:                                            ; preds = %opal_thread_add_fetch_32.exit
  %i.cj = atomicrmw volatile add ptr %i.bt, i32 -1 monotonic, align 4
  %i.ck = add i32 %i.cj, -1
  br label %opal_thread_add_fetch_32.exit73

bb.ac:                                            ; preds = %opal_thread_add_fetch_32.exit
  %i.cl = load volatile i32, ptr %i.bt, align 4, !tbaa !12
  %i.cm = add nsw i32 %i.cl, -1
  store volatile i32 %i.cm, ptr %i.bt, align 4, !tbaa !12
  %i.cn = load volatile i32, ptr %i.bt, align 4, !tbaa !12
  br label %opal_thread_add_fetch_32.exit73

opal_thread_add_fetch_32.exit73:                  ; preds = %bb.ab, %bb.ac
  %.0.i72 = phi i32 [ %i.ck, %bb.ab ], [ %i.cn, %bb.ac ]
  %i.co = icmp eq i32 %.0.i72, 0
  br i1 %i.co, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %opal_thread_add_fetch_32.exit73
  %i.cp = load ptr, ptr %4, align 8, !tbaa !70
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !72 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !20 ; 2 uses
  %.not6.i = icmp eq ptr %i.cs, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad, %.lr.ph.i
  %i.ct = phi ptr [ %i.cv, %.lr.ph.i ], [ %i.cs, %bb.ad ]
  %.07.i = phi ptr [ %i.cu, %.lr.ph.i ], [ %i.cr, %bb.ad ]
  tail call void %i.ct(ptr noundef nonnull %4) #7, !inline_history !22
  %i.cu = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !20 ; 2 uses
  %.not.i74 = icmp eq ptr %i.cv, null
  br i1 %.not.i74, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !23

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.ad
  tail call void @free(ptr noundef nonnull %4) #7
  br label %bb.ae

bb.ae:                                            ; preds = %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit73
  %.not65 = icmp eq i32 %i.cg, 0
  br i1 %.not65, label %bb.ag, label %bb.af, !prof !73

bb.af:                                            ; preds = %bb.ae
  %i.cw = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.cg) ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !58
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !59
  %i.db = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.cy, ptr noundef nonnull %5, i32 noundef %i.da, i32 noundef %i.cw, ptr noundef nonnull @FUNC_NAME) #7 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.thread92, %bb.ae, %bb.u, %bb.af, %bb.y
  %.1 = phi i32 [ %.0.ph, %.thread92 ], [ %.finite106, %bb.y ], [ 0, %bb.u ], [ %i.cw, %bb.af ], [ 0, %bb.ae ]
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
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !77
  %i.h = sext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.not.us = icmp slt i64 %indvars.iv, %i.h
  tail call void @llvm.assume(i1 %.not.us)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !79
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.thread.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.thread.i.us, !llvm.loop !74

bb.c:                                             ; preds = %opal_pointer_array_get_item.exit
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.n = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next19, %i.o
  br i1 %i.p, label %.lr.ph.split, label %.loopexit, !llvm.loop !75

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
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !77
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv18
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  br label %opal_pointer_array_get_item.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #7 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  %i.y = trunc nuw i8 %.pre.i to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !77
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv18
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  br i1 %i.y, label %bb.e, label %opal_pointer_array_get_item.exit, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #7 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.d, %bb.e
  %i.ad = phi i8 [ 0, %.thread.i ], [ %.pre, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi ptr [ %i.w, %.thread.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !79
  %i.ag = icmp eq i32 %i.af, %0
  br i1 %i.ag, label %.split.us, label %bb.c

.split.us:                                        ; preds = %.thread.i.us, %opal_pointer_array_get_item.exit
  %.us-phi = phi ptr [ %.0.i, %opal_pointer_array_get_item.exit ], [ %i.j, %.thread.i.us ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.us-phi, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !82
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %.split.us, %bb.a
  %.010 = phi i32 [ %0, %bb.a ], [ %i.ai, %.split.us ], [ 14, %bb.c ], [ 14, %.preheader ], [ 14, %bb.b ]
  ret i32 %.010
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare i32 @opal_asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @opal_progress() local_unnamed_addr #2

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
!20 = !{!14, !14, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{null}
!23 = distinct !{!23, !21}
!24 = !{!"p1 _ZTS19opal_hash_element_t", !14, i64 0}
!25 = !{!"long", !4, i64 0}
!26 = !{!"p1 _ZTS24opal_hash_type_methods_t", !14, i64 0}
!27 = !{!"opal_hash_table_t", !16, i64 0, !24, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !26, i64 64}
!28 = !{!"p1 _ZTS11opal_info_t", !14, i64 0}
!29 = !{!"opal_infosubscriber_t", !16, i64 0, !27, i64 16, !28, i64 88}
!30 = !{!"p1 omnipotent char", !14, i64 0}
!31 = !{!"ompi_comm_extended_cid_t", !25, i64 0, !4, i64 8}
!32 = !{!"ompi_comm_extended_cid_block_t", !31, i64 0, !25, i64 16, !4, i64 24, !4, i64 25}
!33 = !{!"p1 int", !14, i64 0}
!34 = !{!"p1 _ZTS12ompi_group_t", !14, i64 0}
!35 = !{!"p1 _ZTS19ompi_communicator_t", !14, i64 0}
!36 = !{!"p1 _ZTS17opal_hash_table_t", !14, i64 0}
!37 = !{!"p1 _ZTS22mca_topo_base_module_t", !14, i64 0}
!38 = !{!"p2 _ZTS20ompi_peruse_handle_t", !18, i64 0}
!39 = !{!"p1 _ZTS17ompi_errhandler_t", !14, i64 0}
!40 = !{!"p1 _ZTS14mca_pml_comm_t", !14, i64 0}
!41 = !{!"p1 _ZTS14mca_mtl_comm_t", !14, i64 0}
!42 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !14, i64 0}
!43 = !{!"p1 _ZTS15ompi_instance_t", !14, i64 0}
!44 = !{!"p1 _ZTS13opal_object_t", !14, i64 0}
!45 = !{!"ompi_communicator_t", !29, i64 0, !17, i64 96, !30, i64 160, !31, i64 168, !32, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !33, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !34, i64 264, !34, i64 272, !35, i64 280, !36, i64 288, !37, i64 296, !38, i64 304, !39, i64 312, !5, i64 320, !40, i64 328, !41, i64 336, !42, i64 344, !43, i64 352, !44, i64 360, !5, i64 368, !5, i64 372, !8, i64 376, !8, i64 377, !8, i64 378}
!46 = !{!45, !5, i64 224}
!47 = !{!"ompi_op_base_op_3buff_fns_1_0_0_t", !4, i64 0, !4, i64 344}
!48 = !{!"ompi_op_t", !16, i64 0, !4, i64 16, !5, i64 80, !5, i64 84, !5, i64 88, !4, i64 96, !47, i64 784}
!49 = !{!48, !5, i64 84}
!50 = !{!"short", !4, i64 0}
!51 = !{!"p1 _ZTS12dt_elem_desc", !14, i64 0}
!52 = !{!"dt_type_desc_t", !25, i64 0, !25, i64 8, !51, i64 16}
!53 = !{!"opal_datatype_t", !16, i64 0, !50, i64 16, !50, i64 18, !5, i64 20, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !25, i64 56, !25, i64 64, !5, i64 72, !5, i64 76, !4, i64 80, !52, i64 144, !52, i64 168, !19, i64 192}
!54 = !{!"ompi_datatype_t", !53, i64 0, !5, i64 200, !5, i64 204, !36, i64 208, !14, i64 216, !25, i64 224, !25, i64 232, !4, i64 240}
!55 = !{!54, !50, i64 16}
!56 = !{!54, !5, i64 200}
!57 = !{!4, !4, i64 0}
!58 = !{!45, !39, i64 312}
!59 = !{!45, !5, i64 320}
!60 = !{!30, !30, i64 0}
!61 = !{!53, !50, i64 16}
!62 = !{!45, !8, i64 377}
!63 = !{!45, !8, i64 378}
!64 = !{!45, !42, i64 344}
end_hunk_0
