Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/neighbor_alltoall?download=true
inline.NumInlined: 27
inline.NumDeleted: 14
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
@FUNC_NAME = internal constant [22 x i8] c"MPI_Neighbor_alltoall\00", align 16
@ompi_mpi_datatype_null = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@ompi_mpi_comm_null = external global %struct.ompi_predefined_communicator_t, align 8

@MPI_Neighbor_alltoall = weak alias i32 (ptr, i32, ptr, ptr, i32, ptr, ptr), ptr @PMPI_Neighbor_alltoall

; Function Attrs: nounwind uwtable
define i32 @PMPI_Neighbor_alltoall(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.thread154

bb.b:                                             ; preds = %bb.a
  %i.d = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !12
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = icmp eq ptr %6, null
  %i.h = icmp eq ptr %6, @ompi_mpi_comm_null
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %ompi_comm_invalid.exit.thread, label %ompi_comm_invalid.exit

ompi_comm_invalid.exit:                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = and i32 %i.j, 49
  %or.cond170 = icmp eq i32 %i.k, 0
  br i1 %or.cond170, label %bb.e, label %ompi_comm_invalid.exit.thread

ompi_comm_invalid.exit.thread:                    ; preds = %bb.d, %ompi_comm_invalid.exit
  %i.l = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.ah

bb.e:                                             ; preds = %ompi_comm_invalid.exit
  %i.m = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.n = shufflevector <4 x i32> %i.m, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.o = and <4 x i32> %i.n, <i32 1792, i32 1024, i32 512, i32 256>
  %i.p = icmp eq <4 x i32> %i.o, zeroinitializer  ; 4 uses
  %i.q = extractelement <4 x i1> %i.p, i64 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 11, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.ah

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  %i.t = icmp eq ptr %3, inttoptr (i64 1 to ptr)
  %or.cond = or i1 %i.s, %i.t
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.ah

bb.i:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, null
  %i.w = icmp eq ptr %2, @ompi_mpi_datatype_null
  %or.cond5 = or i1 %i.v, %i.w
  br i1 %or.cond5, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp slt i32 %1, 0
  br i1 %i.x, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %2, i64 16
  %.val124 = load i16, ptr %i.y, align 8, !tbaa !47
  %i.z = and i16 %.val124, 5
  %or.cond163 = icmp eq i16 %i.z, 4
  br i1 %or.cond163, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.0140.ph = phi i32 [ 3, %bb.k ], [ 3, %bb.i ], [ 2, %bb.j ]
  %7 = icmp eq i32 %.0140.ph, 2
  %.finite173 = select i1 %7, i32 2, i32 3        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !49
  %i.ae = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.ab, ptr noundef nonnull %6, i32 noundef %i.ad, i32 noundef %.finite173, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.ah

bb.m:                                             ; preds = %bb.k
  %i.af = icmp eq ptr %5, null
  %i.ag = icmp eq ptr %5, @ompi_mpi_datatype_null
  %or.cond7 = or i1 %i.af, %i.ag
  br i1 %or.cond7, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = icmp slt i32 %4, 0
  br i1 %i.ah, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr i8, ptr %5, i64 16
  %.val = load i16, ptr %i.ai, align 8, !tbaa !47
  %i.aj = and i16 %.val, 5
  %or.cond164 = icmp eq i16 %i.aj, 4
  br i1 %or.cond164, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.1141.ph = phi i32 [ 3, %bb.o ], [ 3, %bb.m ], [ 2, %bb.n ]
  %8 = icmp eq i32 %.1141.ph, 2
  %.finite172 = select i1 %8, i32 2, i32 3        ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.an = load i32, ptr %i.am, align 8, !tbaa !49
  %i.ao = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.al, ptr noundef nonnull %6, i32 noundef %i.an, i32 noundef %.finite172, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.ah

bb.q:                                             ; preds = %bb.o
  %i.ap = getelementptr i8, ptr %2, i64 24
  %.val130 = load i64, ptr %i.ap, align 8, !tbaa !50
  %i.aq = getelementptr i8, ptr %5, i64 24
  %.val129 = load i64, ptr %i.aq, align 8, !tbaa !50
  %i.ar = zext nneg i32 %1 to i64
  %i.as = mul i64 %.val130, %i.ar
  %i.at = zext nneg i32 %4 to i64
  %i.au = mul i64 %.val129, %i.at
  %.not114 = icmp eq i64 %i.as, %i.au
  br i1 %.not114, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !48
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !49
  %i.az = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.aw, ptr noundef nonnull %6, i32 noundef %i.ay, i32 noundef 15, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.ah

bb.s:                                             ; preds = %bb.q
  %i.ba = extractelement <4 x i1> %i.p, i64 3
  br i1 %i.ba, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 296
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !52
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !54
  %i.bh = icmp sgt i32 %i.bg, -1
  br i1 %i.bh, label %.thread154, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !48
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !49
  %i.bm = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bj, ptr noundef nonnull %6, i32 noundef %i.bl, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.ah

bb.v:                                             ; preds = %bb.s
  %i.bn = extractelement <4 x i1> %i.p, i64 2
  br i1 %i.bn, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.bo = getelementptr i8, ptr %6, i64 220
  %.val131 = load i32, ptr %i.bo, align 4, !tbaa !55
  %i.bp = call i32 @mca_topo_base_graph_neighbors_count(ptr noundef nonnull %6, i32 noundef %.val131, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !12
  %i.br = icmp sgt i32 %i.bq, -1
  br i1 %i.br, label %.thread156, label %bb.x

.thread156:                                       ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.thread154

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !48
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !49
  %i.bw = call i32 @ompi_errhandler_invoke(ptr noundef %i.bt, ptr noundef nonnull %6, i32 noundef %i.bv, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.ah

bb.y:                                             ; preds = %bb.v
  %i.bx = extractelement <4 x i1> %i.p, i64 1
  br i1 %i.bx, label %.thread154, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 296
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !51
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !52 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !57
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 52
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !58
  %i.cg = icmp sgt i32 %i.cd, -1
  %i.ch = icmp sgt i32 %i.cf, -1
  %or.cond9.not = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond9.not, label %.thread154, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !48
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !49
  %i.cm = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.cj, ptr noundef nonnull %6, i32 noundef %i.cl, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.ah

.thread154:                                       ; preds = %bb.z, %bb.t, %.thread156, %bb.y, %bb.a
  %i.cn = getelementptr i8, ptr %2, i64 24
  %.val128 = load i64, ptr %i.cn, align 8, !tbaa !50
  %i.co = icmp eq i32 %1, 0
  %i.cp = icmp eq i64 %.val128, 0
  %or.cond11 = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond11, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.thread154
  %i.cq = getelementptr i8, ptr %5, i64 24
  %.val127 = load i64, ptr %i.cq, align 8, !tbaa !50
  %i.cr = icmp eq i32 %4, 0
  %i.cs = icmp eq i64 %.val127, 0
  %or.cond13 = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond13, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread154
  %i.ct = getelementptr i8, ptr %6, i64 377
  %.val.i = load i8, ptr %i.ct, align 1, !tbaa !59, !range !10, !noundef !11
  %i.cu = trunc nuw i8 %.val.i to i1
  br i1 %i.cu, label %bb.af, label %bb.ad, !prof !13

bb.ad:                                            ; preds = %bb.ac
  %i.cv = getelementptr i8, ptr %6, i64 378
  %.val5.i = load i8, ptr %i.cv, align 2, !tbaa !60, !range !10, !noundef !11
  %i.cw = trunc nuw i8 %.val5.i to i1
  br i1 %i.cw, label %bb.ae, label %ompi_comm_iface_coll_check.exit, !prof !13

bb.ae:                                            ; preds = %bb.ad
  %i.cx = call i32 @opal_progress() #6            ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ae
  %.3143.ph = phi i32 [ 77, %bb.ac ], [ 75, %bb.ae ] ; 2 uses
  %9 = icmp eq i32 %.3143.ph, 76
  %.finite = select i1 %9, i32 76, i32 77
  %10 = icmp eq i32 %.3143.ph, 75
  %.finite171 = select i1 %10, i32 75, i32 %.finite ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !48
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.db = load i32, ptr %i.da, align 8, !tbaa !49
  %i.dc = call i32 @ompi_errhandler_invoke(ptr noundef %i.cz, ptr noundef nonnull %6, i32 noundef %i.db, i32 noundef %.finite171, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.ah

ompi_comm_iface_coll_check.exit:                  ; preds = %bb.ad
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 344
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !61 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 848
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !65
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 856
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !66
  %i.dj = call i32 %i.dg(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %i.di) #6 ; 2 uses
  %.not120 = icmp eq i32 %i.dj, 0
  br i1 %.not120, label %bb.ah, label %bb.ag, !prof !67

bb.ag:                                            ; preds = %ompi_comm_iface_coll_check.exit
  %i.dk = call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.dj) ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !48
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !49
  %i.dp = call i32 @ompi_errhandler_invoke(ptr noundef %i.dm, ptr noundef nonnull %6, i32 noundef %i.do, i32 noundef %i.dk, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aa, %bb.x, %bb.u, %ompi_comm_iface_coll_check.exit, %bb.ab, %bb.ag, %bb.af, %bb.r, %bb.p, %bb.l, %bb.h, %bb.f, %ompi_comm_invalid.exit.thread
  %.3 = phi i32 [ %i.l, %ompi_comm_invalid.exit.thread ], [ %i.u, %bb.h ], [ %.finite173, %bb.l ], [ %.finite172, %bb.p ], [ %i.az, %bb.r ], [ %i.r, %bb.f ], [ %.finite171, %bb.af ], [ 0, %bb.ab ], [ %i.dk, %bb.ag ], [ 0, %ompi_comm_iface_coll_check.exit ], [ %i.bm, %bb.u ], [ %i.bw, %bb.x ], [ %i.cm, %bb.aa ]
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
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !71
  %i.h = sext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.not.us = icmp slt i64 %indvars.iv, %i.h
  tail call void @llvm.assume(i1 %.not.us)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !74
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.thread.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.thread.i.us, !llvm.loop !68

bb.c:                                             ; preds = %opal_pointer_array_get_item.exit
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.n = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next19, %i.o
  br i1 %i.p, label %.lr.ph.split, label %.loopexit, !llvm.loop !69

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
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv18
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72
  br label %opal_pointer_array_get_item.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  %i.y = trunc nuw i8 %.pre.i to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !71
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv18
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72 ; 2 uses
  br i1 %i.y, label %bb.e, label %opal_pointer_array_get_item.exit, !prof !77

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.d, %bb.e
  %i.ad = phi i8 [ 0, %.thread.i ], [ %.pre, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi ptr [ %i.w, %.thread.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !74
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
!20 = !{!"p1 _ZTS19opal_hash_element_t", !14, i64 0}
!21 = !{!"long", !4, i64 0}
!22 = !{!"p1 _ZTS24opal_hash_type_methods_t", !14, i64 0}
!23 = !{!"opal_hash_table_t", !16, i64 0, !20, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !22, i64 64}
!24 = !{!"p1 _ZTS11opal_info_t", !14, i64 0}
!25 = !{!"opal_infosubscriber_t", !16, i64 0, !23, i64 16, !24, i64 88}
!26 = !{!"p1 omnipotent char", !14, i64 0}
!27 = !{!"ompi_comm_extended_cid_t", !21, i64 0, !4, i64 8}
!28 = !{!"ompi_comm_extended_cid_block_t", !27, i64 0, !21, i64 16, !4, i64 24, !4, i64 25}
!29 = !{!"p1 int", !14, i64 0}
!30 = !{!"p1 _ZTS12ompi_group_t", !14, i64 0}
!31 = !{!"p1 _ZTS19ompi_communicator_t", !14, i64 0}
!32 = !{!"p1 _ZTS17opal_hash_table_t", !14, i64 0}
!33 = !{!"p1 _ZTS22mca_topo_base_module_t", !14, i64 0}
!34 = !{!"p2 _ZTS20ompi_peruse_handle_t", !18, i64 0}
!35 = !{!"p1 _ZTS17ompi_errhandler_t", !14, i64 0}
!36 = !{!"p1 _ZTS14mca_pml_comm_t", !14, i64 0}
!37 = !{!"p1 _ZTS14mca_mtl_comm_t", !14, i64 0}
!38 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !14, i64 0}
!39 = !{!"p1 _ZTS15ompi_instance_t", !14, i64 0}
!40 = !{!"p1 _ZTS13opal_object_t", !14, i64 0}
!41 = !{!"ompi_communicator_t", !25, i64 0, !17, i64 96, !26, i64 160, !27, i64 168, !28, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !29, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !30, i64 264, !30, i64 272, !31, i64 280, !32, i64 288, !33, i64 296, !34, i64 304, !35, i64 312, !5, i64 320, !36, i64 328, !37, i64 336, !38, i64 344, !39, i64 352, !40, i64 360, !5, i64 368, !5, i64 372, !8, i64 376, !8, i64 377, !8, i64 378}
!42 = !{!41, !5, i64 224}
!43 = !{!"short", !4, i64 0}
!44 = !{!"p1 _ZTS12dt_elem_desc", !14, i64 0}
!45 = !{!"dt_type_desc_t", !21, i64 0, !21, i64 8, !44, i64 16}
!46 = !{!"opal_datatype_t", !16, i64 0, !43, i64 16, !43, i64 18, !5, i64 20, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !5, i64 72, !5, i64 76, !4, i64 80, !45, i64 144, !45, i64 168, !19, i64 192}
!47 = !{!46, !43, i64 16}
!48 = !{!41, !35, i64 312}
!49 = !{!41, !5, i64 320}
!50 = !{!46, !21, i64 24}
!51 = !{!41, !33, i64 296}
!52 = !{!4, !4, i64 0}
!53 = !{!"mca_topo_base_comm_cart_2_2_0_t", !16, i64 0, !5, i64 16, !29, i64 24, !29, i64 32, !29, i64 40}
!54 = !{!53, !5, i64 16}
!55 = !{!41, !5, i64 220}
!56 = !{!"mca_topo_base_comm_dist_graph_2_2_0_t", !16, i64 0, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !5, i64 48, !5, i64 52, !8, i64 56}
!57 = !{!56, !5, i64 48}
!58 = !{!56, !5, i64 52}
!59 = !{!41, !8, i64 377}
!60 = !{!41, !8, i64 378}
!61 = !{!41, !38, i64 344}
!62 = !{!"p1 _ZTS28mca_coll_base_module_2_4_0_t", !14, i64 0}
!63 = !{!"p1 _ZTS11opal_list_t", !14, i64 0}
!64 = !{!"mca_coll_base_comm_coll_t", !14, i64 0, !62, i64 8, !14, i64 16, !62, i64 24, !14, i64 32, !62, i64 40, !14, i64 48, !62, i64 56, !14, i64 64, !62, i64 72, !14, i64 80, !62, i64 88, !14, i64 96, !62, i64 104, !14, i64 112, !62, i64 120, !14, i64 128, !62, i64 136, !14, i64 144, !62, i64 152, !14, i64 160, !62, i64 168, !14, i64 176, !62, i64 184, !14, i64 192, !62, i64 200, !14, i64 208, !62, i64 216, !14, i64 224, !62, i64 232, !14, i64 240, !62, i64 248, !14, i64 256, !62, i64 264, !14, i64 272, !62, i64 280, !14, i64 288, !62, i64 296, !14, i64 304, !62, i64 312, !14, i64 320, !62, i64 328, !14, i64 336, !62, i64 344, !14, i64 352, !62, i64 360, !14, i64 368, !62, i64 376, !14, i64 384, !62, i64 392, !14, i64 400, !62, i64 408, !14, i64 416, !62, i64 424, !14, i64 432, !62, i64 440, !14, i64 448, !62, i64 456, !14, i64 464, !62, i64 472, !14, i64 480, !62, i64 488, !14, i64 496, !62, i64 504, !14, i64 512, !62, i64 520, !14, i64 528, !62, i64 536, !14, i64 544, !62, i64 552, !14, i64 560, !62, i64 568, !14, i64 576, !62, i64 584, !14, i64 592, !62, i64 600, !14, i64 608, !62, i64 616, !14, i64 624, !62, i64 632, !14, i64 640, !62, i64 648, !14, i64 656, !62, i64 664, !14, i64 672, !62, i64 680, !14, i64 688, !62, i64 696, !14, i64 704, !62, i64 712, !14, i64 720, !62, i64 728, !14, i64 736, !62, i64 744, !14, i64 752, !62, i64 760, !14, i64 768, !62, i64 776, !14, i64 784, !62, i64 792, !14, i64 800, !62, i64 808, !14, i64 816, !62, i64 824, !14, i64 832, !62, i64 840, !14, i64 848, !62, i64 856, !14, i64 864, !62, i64 872, !14, i64 880, !62, i64 888, !14, i64 896, !62, i64 904, !14, i64 912, !62, i64 920, !14, i64 928, !62, i64 936, !14, i64 944, !62, i64 952, !14, i64 960, !62, i64 968, !14, i64 976, !62, i64 984, !14, i64 992, !62, i64 1000, !14, i64 1008, !62, i64 1016, !14, i64 1024, !62, i64 1032, !14, i64 1040, !62, i64 1048, !14, i64 1056, !62, i64 1064, !14, i64 1072, !62, i64 1080, !14, i64 1088, !62, i64 1096, !14, i64 1104, !63, i64 1112}
!65 = !{!64, !14, i64 848}
!66 = !{!64, !62, i64 856}
!67 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!68 = distinct !{!68, !75}
end_hunk_0
