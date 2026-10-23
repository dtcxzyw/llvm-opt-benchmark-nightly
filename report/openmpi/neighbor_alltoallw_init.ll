Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/neighbor_alltoallw_init?download=true
inline.NumInlined: 18
inline.NumDeleted: 9
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
@FUNC_NAME = internal constant [28 x i8] c"MPI_Neighbor_alltoallw_init\00", align 16
@ompi_mpi_datatype_null = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@ompi_mpi_comm_null = external global %struct.ompi_predefined_communicator_t, align 8

@MPI_Neighbor_alltoallw_init = weak alias i32 (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @PMPI_Neighbor_alltoallw_init

; Function Attrs: nounwind uwtable
define i32 @PMPI_Neighbor_alltoallw_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.d = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !9, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %.thread179

bb.b:                                             ; preds = %bb.a
  %i.f = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !12
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = icmp eq ptr %8, null
  %i.j = icmp eq ptr %8, @ompi_mpi_comm_null
  %or.cond.i = or i1 %i.i, %i.j
  br i1 %or.cond.i, label %ompi_comm_invalid.exit.thread, label %ompi_comm_invalid.exit

ompi_comm_invalid.exit:                           ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 224 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !45   ; 2 uses
  %i.m = and i32 %i.l, 49
  %or.cond213 = icmp eq i32 %i.m, 0
  br i1 %or.cond213, label %bb.e, label %ompi_comm_invalid.exit.thread

ompi_comm_invalid.exit.thread:                    ; preds = %bb.d, %ompi_comm_invalid.exit
  %i.n = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.af

bb.e:                                             ; preds = %ompi_comm_invalid.exit
  %i.o = and i32 %i.l, 1792
  %or.cond154 = icmp eq i32 %i.o, 0
  br i1 %or.cond154, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 11, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.af

bb.g:                                             ; preds = %bb.e
  %i.q = call i32 @mca_topo_base_neighbor_count(ptr noundef nonnull %8, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6 ; 2 uses
  %.not140 = icmp eq i32 %i.q, 0
  br i1 %.not140, label %bb.i, label %bb.h, !prof !46

bb.h:                                             ; preds = %bb.g
  %i.r = call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.v = load i32, ptr %i.u, align 8, !tbaa !48
  %i.w = call i32 @ompi_errhandler_invoke(ptr noundef %i.t, ptr noundef nonnull %8, i32 noundef %i.v, i32 noundef %i.r, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.af

bb.i:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.b, align 4, !tbaa !12   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0                     ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = icmp eq ptr %1, null
  %i.aa = icmp eq ptr %2, null
  %or.cond = or i1 %i.z, %i.aa
  %i.ab = icmp eq ptr %3, null
  %or.cond5 = or i1 %or.cond, %i.ab
  br i1 %or.cond5, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !12  ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0                   ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = icmp eq ptr %5, null
  %i.af = icmp eq ptr %6, null
  %or.cond7 = or i1 %i.ae, %i.af
  %i.ag = icmp eq ptr %7, null
  %or.cond9 = or i1 %or.cond7, %i.ag
  %i.ah = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  %or.cond11 = or i1 %i.ah, %or.cond9
  %i.ai = icmp eq ptr %4, inttoptr (i64 1 to ptr)
  %or.cond155 = or i1 %i.ai, %or.cond11
  br i1 %or.cond155, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  %.old10 = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  %.old = icmp eq ptr %4, inttoptr (i64 1 to ptr)
  %or.cond156 = or i1 %.old10, %.old
  br i1 %or.cond156, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.am = load i32, ptr %i.al, align 8, !tbaa !48
  %i.an = call i32 @ompi_errhandler_invoke(ptr noundef %i.ak, ptr noundef nonnull %8, i32 noundef %i.am, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.af

bb.o:                                             ; preds = %bb.m, %bb.l
  br i1 %i.y, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %wide.trip.count = zext nneg i32 %i.x to i64
  br label %.lr.ph

bb.p:                                             ; preds = %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !21

.preheader:                                       ; preds = %bb.p, %bb.o
  br i1 %i.ad, label %.lr.ph199.preheader, label %._crit_edge

.lr.ph199.preheader:                              ; preds = %.preheader
  %wide.trip.count204 = zext nneg i32 %i.ac to i64
  br label %.lr.ph199

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !50 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = icmp eq ptr %i.ap, @ompi_mpi_datatype_null
  %or.cond158 = or i1 %i.aq, %i.ar
  br i1 %or.cond158, label %.thread, label %bb.q, !prof !51

bb.q:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !12
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %.thread, label %bb.r, !prof !51

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr i8, ptr %i.ap, i64 16
  %.val164 = load i16, ptr %i.av, align 8, !tbaa !56
  %i.aw = and i16 %.val164, 5
  %or.cond215 = icmp eq i16 %i.aw, 4
  br i1 %or.cond215, label %bb.p, label %.thread, !prof !57

.thread:                                          ; preds = %bb.q, %.lr.ph, %bb.r
  %.1125173 = phi i32 [ 3, %.lr.ph ], [ 2, %bb.q ], [ 3, %bb.r ]
  %11 = call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.1125173) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !48
  %i.bb = call i32 @ompi_errhandler_invoke(ptr noundef %i.ay, ptr noundef nonnull %8, i32 noundef %i.ba, i32 noundef %11, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.af

bb.s:                                             ; preds = %bb.u
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv.next202, %wide.trip.count204
  br i1 %exitcond205.not, label %._crit_edge, label %.lr.ph199, !llvm.loop !22

.lr.ph199:                                        ; preds = %.lr.ph199.preheader, %bb.s
  %indvars.iv201 = phi i64 [ 0, %.lr.ph199.preheader ], [ %indvars.iv.next202, %bb.s ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv201
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !50 ; 3 uses
  %i.be = icmp eq ptr %i.bd, null
  %i.bf = icmp eq ptr %i.bd, @ompi_mpi_datatype_null
  %or.cond161 = or i1 %i.be, %i.bf
  br i1 %or.cond161, label %.thread175, label %bb.t, !prof !51

bb.t:                                             ; preds = %.lr.ph199
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv201
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !12
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %.thread175, label %bb.u, !prof !51

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr i8, ptr %i.bd, i64 16
  %.val = load i16, ptr %i.bj, align 8, !tbaa !56
  %i.bk = and i16 %.val, 5
  %or.cond217 = icmp eq i16 %i.bk, 4
  br i1 %or.cond217, label %bb.s, label %.thread175, !prof !57

.thread175:                                       ; preds = %bb.t, %.lr.ph199, %bb.u
  %.3127178 = phi i32 [ 3, %.lr.ph199 ], [ 2, %bb.t ], [ 3, %bb.u ]
  %12 = call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.3127178) ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !47
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !48
  %i.bp = call i32 @ompi_errhandler_invoke(ptr noundef %i.bm, ptr noundef nonnull %8, i32 noundef %i.bo, i32 noundef %12, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.af

._crit_edge:                                      ; preds = %bb.s, %.preheader
  %i.bq = load i32, ptr %i.k, align 8, !tbaa !45  ; 3 uses
  %i.br = and i32 %i.bq, 256
  %.not141 = icmp eq i32 %i.br, 0
  br i1 %.not141, label %bb.x, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 296
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !58
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 96
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !59
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !61
  %i.by = icmp sgt i32 %i.bx, -1
  br i1 %i.by, label %.thread179, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !47
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !48
  %i.cd = call i32 @ompi_errhandler_invoke(ptr noundef %i.ca, ptr noundef nonnull %8, i32 noundef %i.cc, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.af

bb.x:                                             ; preds = %._crit_edge
  %i.ce = and i32 %i.bq, 512
  %.not142 = icmp eq i32 %i.ce, 0
  br i1 %.not142, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.cf = getelementptr i8, ptr %8, i64 220
  %.val167 = load i32, ptr %i.cf, align 4, !tbaa !62
  %i.cg = call i32 @mca_topo_base_graph_neighbors_count(ptr noundef nonnull %8, i32 noundef %.val167, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.ch = load i32, ptr %i.c, align 4, !tbaa !12
  %i.ci = icmp sgt i32 %i.ch, -1
  br i1 %i.ci, label %.thread181, label %bb.z

.thread181:                                       ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %.thread179

bb.z:                                             ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !47
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !48
  %i.cn = call i32 @ompi_errhandler_invoke(ptr noundef %i.ck, ptr noundef nonnull %8, i32 noundef %i.cm, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.af

bb.aa:                                            ; preds = %bb.x
  %i.co = and i32 %i.bq, 1024
  %.not143 = icmp eq i32 %i.co, 0
  br i1 %.not143, label %.thread179, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 296
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !58
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 96
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !59 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !64 ; 2 uses
  store i32 %i.cu, ptr %i.a, align 4, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 52
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !65 ; 2 uses
  store i32 %i.cw, ptr %i.b, align 4, !tbaa !12
  %i.cx = icmp sgt i32 %i.cu, -1
  %i.cy = icmp sgt i32 %i.cw, -1
  %or.cond14.not = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond14.not, label %.thread179, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !47
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !48
  %i.dd = call i32 @ompi_errhandler_invoke(ptr noundef %i.da, ptr noundef nonnull %8, i32 noundef %i.dc, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.af

.thread179:                                       ; preds = %bb.ab, %bb.v, %.thread181, %bb.aa, %bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 344
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !66 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1040
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !70
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 1048
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !71
  %i.dk = call i32 %i.dh(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %i.dj) #6 ; 2 uses
  %cond = icmp eq i32 %i.dk, 0
  br i1 %cond, label %bb.ad, label %bb.ae, !prof !72

bb.ad:                                            ; preds = %.thread179
  %i.dl = load ptr, ptr %10, align 8, !tbaa !74
  %i.dm = call i32 @ompi_coll_base_retain_datatypes_w(ptr noundef %i.dl, ptr noundef %3, ptr noundef %7, i1 noundef zeroext true) #6 ; 0 uses
  br label %bb.af

bb.ae:                                            ; preds = %.thread179
  %i.dn = call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.dk) ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !47
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !48
  %i.ds = call i32 @ompi_errhandler_invoke(ptr noundef %i.dp, ptr noundef nonnull %8, i32 noundef %i.dr, i32 noundef %i.dn, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.z, %bb.w, %bb.ad, %bb.ae, %.thread175, %.thread, %bb.n, %bb.h, %bb.f, %ompi_comm_invalid.exit.thread
  %.3 = phi i32 [ %i.n, %ompi_comm_invalid.exit.thread ], [ %i.r, %bb.h ], [ %i.an, %bb.n ], [ %11, %.thread ], [ %12, %.thread175 ], [ %i.dn, %bb.ae ], [ %i.p, %bb.f ], [ %i.cd, %bb.w ], [ %i.cn, %bb.z ], [ %i.dd, %bb.ac ], [ 0, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.3
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
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !78
  %i.h = sext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.not.us = icmp slt i64 %indvars.iv, %i.h
  tail call void @llvm.assume(i1 %.not.us)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !79   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !81
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.thread.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.thread.i.us, !llvm.loop !75

bb.c:                                             ; preds = %opal_pointer_array_get_item.exit
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.n = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next19, %i.o
  br i1 %i.p, label %.lr.ph.split, label %.loopexit, !llvm.loop !76

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
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !78
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv18
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79
  br label %opal_pointer_array_get_item.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  %i.y = trunc nuw i8 %.pre.i to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !78
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv18
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !79 ; 2 uses
  br i1 %i.y, label %bb.e, label %opal_pointer_array_get_item.exit, !prof !83

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.d, %bb.e
  %i.ad = phi i8 [ 0, %.thread.i ], [ %.pre, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi ptr [ %i.w, %.thread.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !81
  %i.ag = icmp eq i32 %i.af, %0
  br i1 %i.ag, label %.split.us, label %bb.c

.split.us:                                        ; preds = %.thread.i.us, %opal_pointer_array_get_item.exit
  %.us-phi = phi ptr [ %.0.i, %opal_pointer_array_get_item.exit ], [ %i.j, %.thread.i.us ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.us-phi, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !84
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %.split.us, %bb.a
  %.010 = phi i32 [ %0, %bb.a ], [ %i.ai, %.split.us ], [ 14, %bb.c ], [ 14, %.preheader ], [ 14, %bb.b ]
  ret i32 %.010
}

declare i32 @mca_topo_base_neighbor_count(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @mca_topo_base_graph_neighbors_count(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ompi_coll_base_retain_datatypes_w(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

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
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"p1 long", !14, i64 0}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = !{!"p1 _ZTS19opal_hash_element_t", !14, i64 0}
!24 = !{!"long", !4, i64 0}
!25 = !{!"p1 _ZTS24opal_hash_type_methods_t", !14, i64 0}
!26 = !{!"opal_hash_table_t", !16, i64 0, !23, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !25, i64 64}
!27 = !{!"p1 _ZTS11opal_info_t", !14, i64 0}
!28 = !{!"opal_infosubscriber_t", !16, i64 0, !26, i64 16, !27, i64 88}
!29 = !{!"p1 omnipotent char", !14, i64 0}
!30 = !{!"ompi_comm_extended_cid_t", !24, i64 0, !4, i64 8}
!31 = !{!"ompi_comm_extended_cid_block_t", !30, i64 0, !24, i64 16, !4, i64 24, !4, i64 25}
!32 = !{!"p1 int", !14, i64 0}
!33 = !{!"p1 _ZTS12ompi_group_t", !14, i64 0}
!34 = !{!"p1 _ZTS19ompi_communicator_t", !14, i64 0}
!35 = !{!"p1 _ZTS17opal_hash_table_t", !14, i64 0}
!36 = !{!"p1 _ZTS22mca_topo_base_module_t", !14, i64 0}
!37 = !{!"p2 _ZTS20ompi_peruse_handle_t", !18, i64 0}
!38 = !{!"p1 _ZTS17ompi_errhandler_t", !14, i64 0}
!39 = !{!"p1 _ZTS14mca_pml_comm_t", !14, i64 0}
!40 = !{!"p1 _ZTS14mca_mtl_comm_t", !14, i64 0}
!41 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !14, i64 0}
!42 = !{!"p1 _ZTS15ompi_instance_t", !14, i64 0}
!43 = !{!"p1 _ZTS13opal_object_t", !14, i64 0}
!44 = !{!"ompi_communicator_t", !28, i64 0, !17, i64 96, !29, i64 160, !30, i64 168, !31, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !32, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !33, i64 264, !33, i64 272, !34, i64 280, !35, i64 288, !36, i64 296, !37, i64 304, !38, i64 312, !5, i64 320, !39, i64 328, !40, i64 336, !41, i64 344, !42, i64 352, !43, i64 360, !5, i64 368, !5, i64 372, !8, i64 376, !8, i64 377, !8, i64 378}
!45 = !{!44, !5, i64 224}
!46 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!47 = !{!44, !38, i64 312}
!48 = !{!44, !5, i64 320}
!49 = !{!"p1 _ZTS15ompi_datatype_t", !14, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"branch_weights", i32 1073205, i32 2146410443}
!52 = !{!"short", !4, i64 0}
!53 = !{!"p1 _ZTS12dt_elem_desc", !14, i64 0}
!54 = !{!"dt_type_desc_t", !24, i64 0, !24, i64 8, !53, i64 16}
!55 = !{!"opal_datatype_t", !16, i64 0, !52, i64 16, !52, i64 18, !5, i64 20, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64, !5, i64 72, !5, i64 76, !4, i64 80, !54, i64 144, !54, i64 168, !20, i64 192}
!56 = !{!55, !52, i64 16}
!57 = !{!"branch_weights", i32 -2146410, i32 2146410}
!58 = !{!44, !36, i64 296}
!59 = !{!4, !4, i64 0}
!60 = !{!"mca_topo_base_comm_cart_2_2_0_t", !16, i64 0, !5, i64 16, !32, i64 24, !32, i64 32, !32, i64 40}
!61 = !{!60, !5, i64 16}
!62 = !{!44, !5, i64 220}
!63 = !{!"mca_topo_base_comm_dist_graph_2_2_0_t", !16, i64 0, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !5, i64 48, !5, i64 52, !8, i64 56}
!64 = !{!63, !5, i64 48}
end_hunk_0
