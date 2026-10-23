Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/neighbor_allgatherv?download=true
inline.NumInlined: 22
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_datatype_t = type { %struct.ompi_datatype_t, [208 x i8] }
%struct.ompi_datatype_t = type { %struct.opal_datatype_t, i32, i32, ptr, ptr, i64, i64, [64 x i8] }
%struct.opal_datatype_t = type { %struct.opal_object_t, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, [64 x i8], %struct.dt_type_desc_t, %struct.dt_type_desc_t, ptr }
%struct.opal_object_t = type { ptr, i32 }
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
%struct.ompi_comm_extended_cid_t = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.ompi_comm_extended_cid_block_t = type { %struct.ompi_comm_extended_cid_t, i64, i8, i8 }

@ompi_mpi_param_check = external local_unnamed_addr global i8, align 1
@ompi_instance_count = external global i32, align 4
@FUNC_NAME = internal constant [24 x i8] c"MPI_Neighbor_allgatherv\00", align 16
@ompi_mpi_datatype_null = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@ompi_mpi_comm_null = external global %struct.ompi_predefined_communicator_t, align 8

@MPI_Neighbor_allgatherv = weak alias i32 (ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr), ptr @PMPI_Neighbor_allgatherv

; Function Attrs: nounwind uwtable
define i32 @PMPI_Neighbor_allgatherv(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.d = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !9, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %.thread130

bb.b:                                             ; preds = %bb.a
  %i.f = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !12
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = icmp eq ptr %7, null
  %i.j = icmp eq ptr %7, @ompi_mpi_comm_null
  %or.cond.i = or i1 %i.i, %i.j
  br i1 %or.cond.i, label %ompi_comm_invalid.exit.thread, label %ompi_comm_invalid.exit

ompi_comm_invalid.exit:                           ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 224 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !44   ; 2 uses
  %i.m = and i32 %i.l, 49
  %or.cond146 = icmp eq i32 %i.m, 0
  br i1 %or.cond146, label %bb.e, label %ompi_comm_invalid.exit.thread

ompi_comm_invalid.exit.thread:                    ; preds = %bb.d, %ompi_comm_invalid.exit
  %i.n = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.ae

bb.e:                                             ; preds = %ompi_comm_invalid.exit
  %i.o = and i32 %i.l, 1792
  %or.cond115 = icmp eq i32 %i.o, 0
  br i1 %or.cond115, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 11, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.ae

bb.g:                                             ; preds = %bb.e
  %i.q = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  %i.r = icmp eq ptr %3, inttoptr (i64 1 to ptr)
  %or.cond = or i1 %i.q, %i.r
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 312
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 320
  %i.v = load i32, ptr %i.u, align 8, !tbaa !46
  %i.w = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.t, ptr noundef nonnull %7, i32 noundef %i.v, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.ae

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq ptr %6, @ompi_mpi_datatype_null
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 312
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 320
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !46
  %i.ac = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.z, ptr noundef nonnull %7, i32 noundef %i.ab, i32 noundef 3, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.ae

bb.k:                                             ; preds = %bb.i
  %i.ad = icmp eq ptr %2, null
  %i.ae = icmp eq ptr %2, @ompi_mpi_datatype_null
  %or.cond6 = or i1 %i.ad, %i.ae
  br i1 %or.cond6, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = icmp slt i32 %1, 0
  br i1 %i.af, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr i8, ptr %2, i64 16
  %.val = load i16, ptr %i.ag, align 8, !tbaa !51
  %i.ah = and i16 %.val, 5
  %or.cond139 = icmp eq i16 %i.ah, 4
  br i1 %or.cond139, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.0120.ph = phi i32 [ 3, %bb.m ], [ 3, %bb.k ], [ 2, %bb.l ]
  %8 = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.0120.ph) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 312
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 320
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !46
  %i.am = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.aj, ptr noundef nonnull %7, i32 noundef %i.al, i32 noundef %8, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.ae

bb.o:                                             ; preds = %bb.m
  %i.an = call i32 @mca_topo_base_neighbor_count(ptr noundef nonnull %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !12  ; 2 uses
  %.not106140 = icmp sgt i32 %i.ao, 0
  br i1 %.not106140, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.o
  %wide.trip.count = zext nneg i32 %i.ao to i64
  br label %.lr.ph

bb.p:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !12
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %.thread128, label %bb.p

.thread128:                                       ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 312
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !45
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 320
  %i.av = load i32, ptr %i.au, align 8, !tbaa !46
  %i.aw = call i32 @ompi_errhandler_invoke(ptr noundef %i.at, ptr noundef nonnull %7, i32 noundef %i.av, i32 noundef 2, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.ae

._crit_edge:                                      ; preds = %bb.p, %bb.o
  %i.ax = icmp eq ptr %5, null
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 312
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !45
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 320
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !46
  %i.bc = call i32 @ompi_errhandler_invoke(ptr noundef %i.az, ptr noundef nonnull %7, i32 noundef %i.bb, i32 noundef 1, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.ae

bb.r:                                             ; preds = %._crit_edge
  %i.bd = load i32, ptr %i.k, align 8, !tbaa !44  ; 3 uses
  %i.be = and i32 %i.bd, 256
  %.not107 = icmp eq i32 %i.be, 0
  br i1 %.not107, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 296
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !52
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !53
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !55
  %i.bl = icmp sgt i32 %i.bk, -1
  br i1 %i.bl, label %.thread130, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 312
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !45
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 320
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !46
  %i.bq = call i32 @ompi_errhandler_invoke(ptr noundef %i.bn, ptr noundef nonnull %7, i32 noundef %i.bp, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.ae

bb.u:                                             ; preds = %bb.r
  %i.br = and i32 %i.bd, 512
  %.not108 = icmp eq i32 %i.br, 0
  br i1 %.not108, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.bs = getelementptr i8, ptr %7, i64 220
  %.val117 = load i32, ptr %i.bs, align 4, !tbaa !56
  %i.bt = call i32 @mca_topo_base_graph_neighbors_count(ptr noundef nonnull %7, i32 noundef %.val117, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.bu = load i32, ptr %i.c, align 4, !tbaa !12
  %i.bv = icmp sgt i32 %i.bu, -1
  br i1 %i.bv, label %.thread132, label %bb.w

.thread132:                                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %.thread130

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 312
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !45
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 320
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !46
  %i.ca = call i32 @ompi_errhandler_invoke(ptr noundef %i.bx, ptr noundef nonnull %7, i32 noundef %i.bz, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.ae

bb.x:                                             ; preds = %bb.u
  %i.cb = and i32 %i.bd, 1024
  %.not109 = icmp eq i32 %i.cb, 0
  br i1 %.not109, label %.thread130, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 296
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !52
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !53 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !58
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 52
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !59
  %i.ck = icmp sgt i32 %i.ch, -1
  %i.cl = icmp sgt i32 %i.cj, -1
  %or.cond8.not = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %or.cond8.not, label %.thread130, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 312
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !45
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 320
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !46
  %i.cq = call i32 @ompi_errhandler_invoke(ptr noundef %i.cn, ptr noundef nonnull %7, i32 noundef %i.cp, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.ae

.thread130:                                       ; preds = %bb.y, %bb.s, %.thread132, %bb.x, %bb.a
  %i.cr = getelementptr i8, ptr %7, i64 377
  %.val.i = load i8, ptr %i.cr, align 1, !tbaa !60, !range !10, !noundef !11
  %i.cs = trunc nuw i8 %.val.i to i1
  br i1 %i.cs, label %bb.ac, label %bb.aa, !prof !13

bb.aa:                                            ; preds = %.thread130
  %i.ct = getelementptr i8, ptr %7, i64 378
  %.val5.i = load i8, ptr %i.ct, align 2, !tbaa !61, !range !10, !noundef !11
  %i.cu = trunc nuw i8 %.val5.i to i1
  br i1 %i.cu, label %bb.ab, label %ompi_comm_iface_coll_check.exit, !prof !13

bb.ab:                                            ; preds = %bb.aa
  %i.cv = call i32 @opal_progress() #6            ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.thread130, %bb.ab
  %.2122.ph = phi i32 [ 77, %.thread130 ], [ 75, %bb.ab ]
  %9 = call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.2122.ph) ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 312
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !45
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 320
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !46
  %i.da = call i32 @ompi_errhandler_invoke(ptr noundef %i.cx, ptr noundef nonnull %7, i32 noundef %i.cz, i32 noundef %9, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.ae

ompi_comm_iface_coll_check.exit:                  ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 344
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !62 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 832
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !66
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 840
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !67
  %i.dh = call i32 %i.de(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.dg) #6 ; 2 uses
  %.not112 = icmp eq i32 %i.dh, 0
  br i1 %.not112, label %bb.ae, label %bb.ad, !prof !68

bb.ad:                                            ; preds = %ompi_comm_iface_coll_check.exit
  %i.di = call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.dh) ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 312
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !45
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 320
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !46
  %i.dn = call i32 @ompi_errhandler_invoke(ptr noundef %i.dk, ptr noundef nonnull %7, i32 noundef %i.dm, i32 noundef %i.di, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.z, %bb.w, %bb.t, %.thread128, %ompi_comm_iface_coll_check.exit, %bb.ad, %bb.ac, %bb.q, %bb.n, %bb.j, %bb.h, %bb.f, %ompi_comm_invalid.exit.thread
  %.4 = phi i32 [ %i.n, %ompi_comm_invalid.exit.thread ], [ %i.w, %bb.h ], [ %i.ac, %bb.j ], [ %8, %bb.n ], [ %i.bc, %bb.q ], [ %9, %bb.ac ], [ %i.p, %bb.f ], [ %i.di, %bb.ad ], [ 0, %ompi_comm_iface_coll_check.exit ], [ %i.bq, %bb.t ], [ %i.ca, %bb.w ], [ %i.cq, %bb.z ], [ %i.aw, %.thread128 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.4
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
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !72
  %i.h = sext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.not.us = icmp slt i64 %indvars.iv, %i.h
  tail call void @llvm.assume(i1 %.not.us)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !75
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.thread.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.thread.i.us, !llvm.loop !69

bb.c:                                             ; preds = %opal_pointer_array_get_item.exit
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.n = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next19, %i.o
  br i1 %i.p, label %.lr.ph.split, label %.loopexit, !llvm.loop !70

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
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv18
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  br label %opal_pointer_array_get_item.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  %i.y = trunc nuw i8 %.pre.i to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !72
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv18
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !73 ; 2 uses
  br i1 %i.y, label %bb.e, label %opal_pointer_array_get_item.exit, !prof !77

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.d, %bb.e
  %i.ad = phi i8 [ 0, %.thread.i ], [ %.pre, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi ptr [ %i.w, %.thread.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !75
  %i.ag = icmp eq i32 %i.af, %0
  br i1 %i.ag, label %.split.us, label %bb.c

.split.us:                                        ; preds = %.thread.i.us, %opal_pointer_array_get_item.exit
  %.us-phi = phi ptr [ %.0.i, %opal_pointer_array_get_item.exit ], [ %i.j, %.thread.i.us ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.us-phi, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !78
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %.split.us, %bb.a
  %.010 = phi i32 [ %0, %bb.a ], [ %i.ai, %.split.us ], [ 14, %bb.c ], [ 14, %.preheader ], [ 14, %bb.b ]
  ret i32 %.010
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @mca_topo_base_neighbor_count(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mca_topo_base_graph_neighbors_count(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

declare i32 @opal_progress() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = !{!"p1 _ZTS19opal_hash_element_t", !14, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"p1 _ZTS24opal_hash_type_methods_t", !14, i64 0}
!25 = !{!"opal_hash_table_t", !16, i64 0, !22, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !24, i64 64}
!26 = !{!"p1 _ZTS11opal_info_t", !14, i64 0}
!27 = !{!"opal_infosubscriber_t", !16, i64 0, !25, i64 16, !26, i64 88}
!28 = !{!"p1 omnipotent char", !14, i64 0}
!29 = !{!"ompi_comm_extended_cid_t", !23, i64 0, !4, i64 8}
!30 = !{!"ompi_comm_extended_cid_block_t", !29, i64 0, !23, i64 16, !4, i64 24, !4, i64 25}
!31 = !{!"p1 int", !14, i64 0}
!32 = !{!"p1 _ZTS12ompi_group_t", !14, i64 0}
!33 = !{!"p1 _ZTS19ompi_communicator_t", !14, i64 0}
!34 = !{!"p1 _ZTS17opal_hash_table_t", !14, i64 0}
!35 = !{!"p1 _ZTS22mca_topo_base_module_t", !14, i64 0}
!36 = !{!"p2 _ZTS20ompi_peruse_handle_t", !18, i64 0}
!37 = !{!"p1 _ZTS17ompi_errhandler_t", !14, i64 0}
!38 = !{!"p1 _ZTS14mca_pml_comm_t", !14, i64 0}
!39 = !{!"p1 _ZTS14mca_mtl_comm_t", !14, i64 0}
!40 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !14, i64 0}
!41 = !{!"p1 _ZTS15ompi_instance_t", !14, i64 0}
!42 = !{!"p1 _ZTS13opal_object_t", !14, i64 0}
!43 = !{!"ompi_communicator_t", !27, i64 0, !17, i64 96, !28, i64 160, !29, i64 168, !30, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !31, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !32, i64 264, !32, i64 272, !33, i64 280, !34, i64 288, !35, i64 296, !36, i64 304, !37, i64 312, !5, i64 320, !38, i64 328, !39, i64 336, !40, i64 344, !41, i64 352, !42, i64 360, !5, i64 368, !5, i64 372, !8, i64 376, !8, i64 377, !8, i64 378}
!44 = !{!43, !5, i64 224}
!45 = !{!43, !37, i64 312}
!46 = !{!43, !5, i64 320}
!47 = !{!"short", !4, i64 0}
!48 = !{!"p1 _ZTS12dt_elem_desc", !14, i64 0}
!49 = !{!"dt_type_desc_t", !23, i64 0, !23, i64 8, !48, i64 16}
!50 = !{!"opal_datatype_t", !16, i64 0, !47, i64 16, !47, i64 18, !5, i64 20, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !5, i64 72, !5, i64 76, !4, i64 80, !49, i64 144, !49, i64 168, !19, i64 192}
!51 = !{!50, !47, i64 16}
!52 = !{!43, !35, i64 296}
!53 = !{!4, !4, i64 0}
!54 = !{!"mca_topo_base_comm_cart_2_2_0_t", !16, i64 0, !5, i64 16, !31, i64 24, !31, i64 32, !31, i64 40}
!55 = !{!54, !5, i64 16}
!56 = !{!43, !5, i64 220}
!57 = !{!"mca_topo_base_comm_dist_graph_2_2_0_t", !16, i64 0, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !5, i64 48, !5, i64 52, !8, i64 56}
!58 = !{!57, !5, i64 48}
!59 = !{!57, !5, i64 52}
!60 = !{!43, !8, i64 377}
!61 = !{!43, !8, i64 378}
!62 = !{!43, !40, i64 344}
!63 = !{!"p1 _ZTS28mca_coll_base_module_2_4_0_t", !14, i64 0}
!64 = !{!"p1 _ZTS11opal_list_t", !14, i64 0}
end_hunk_0
