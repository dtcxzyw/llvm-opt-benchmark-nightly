Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/scatterv_init?download=true
inline.NumInlined: 31
inline.NumDeleted: 11
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
@FUNC_NAME = internal constant [18 x i8] c"MPI_Scatterv_init\00", align 16
@ompi_mpi_datatype_null = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@ompi_mpi_comm_null = external global %struct.ompi_predefined_communicator_t, align 8

@MPI_Scatterv_init = weak alias i32 (ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr), ptr @PMPI_Scatterv_init

; Function Attrs: nounwind uwtable
define i32 @PMPI_Scatterv_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #0 {
bb.a:
  %i.a = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !12
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = icmp eq ptr %8, null
  %i.g = icmp eq ptr %8, @ompi_mpi_comm_null
  %or.cond.i = or i1 %i.f, %i.g
  br i1 %or.cond.i, label %ompi_comm_invalid.exit.thread, label %ompi_comm_invalid.exit

ompi_comm_invalid.exit:                           ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.i = load i32, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %i.j = and i32 %i.i, 48
  %or.cond7.i.not = icmp eq i32 %i.j, 0
  br i1 %or.cond7.i.not, label %bb.e, label %ompi_comm_invalid.exit.thread

ompi_comm_invalid.exit.thread:                    ; preds = %bb.d, %ompi_comm_invalid.exit
  %i.k = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.as

bb.e:                                             ; preds = %ompi_comm_invalid.exit
  %i.l = getelementptr i8, ptr %8, i64 220
  %.val181 = load i32, ptr %i.l, align 4, !tbaa !46
  %.not = icmp eq i32 %.val181, %7                ; 2 uses
  %.not235 = icmp eq ptr %4, inttoptr (i64 1 to ptr)
  %or.cond232.v = select i1 %.not, ptr %0, ptr %4
  %or.cond232.not = icmp eq ptr %or.cond232.v, inttoptr (i64 1 to ptr)
  br i1 %or.cond232.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.p = load i32, ptr %i.o, align 8, !tbaa !48
  %i.q = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.n, ptr noundef nonnull %8, i32 noundef %i.p, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.as

bb.g:                                             ; preds = %bb.e
  %i.r = and i32 %i.i, 1
  %.not163 = icmp eq i32 %i.r, 0
  br i1 %.not163, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %8, i64 264
  %.val183 = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.t = getelementptr i8, ptr %.val183, i64 16
  %.val183.val = load i32, ptr %i.t, align 8, !tbaa !52 ; 3 uses
  %i.u = icmp sge i32 %7, %.val183.val
  %i.v = icmp slt i32 %7, 0
  %or.cond5 = or i1 %i.v, %i.u
  br i1 %or.cond5, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.z = load i32, ptr %i.y, align 8, !tbaa !48
  %i.aa = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.x, ptr noundef nonnull %8, i32 noundef %i.z, i32 noundef 8, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.as

bb.j:                                             ; preds = %bb.h
  br i1 %.not235, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = icmp slt i32 %5, 0
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !48
  %i.ag = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.ad, ptr noundef nonnull %8, i32 noundef %i.af, i32 noundef 2, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.as

bb.m:                                             ; preds = %bb.k
  %i.ah = icmp eq ptr %6, @ompi_mpi_datatype_null
  %i.ai = icmp eq ptr %6, null
  %or.cond7 = or i1 %i.ah, %i.ai
  br i1 %or.cond7, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.am = load i32, ptr %i.al, align 8, !tbaa !48
  %i.an = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.ak, ptr noundef nonnull %8, i32 noundef %i.am, i32 noundef 3, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.as

bb.o:                                             ; preds = %bb.m, %bb.j
  br i1 %.not, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ao = icmp eq ptr %2, null
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !48
  %i.at = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.aq, ptr noundef nonnull %8, i32 noundef %i.as, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.as

bb.r:                                             ; preds = %bb.p
  %i.au = icmp eq ptr %1, null
  br i1 %i.au, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.r
  %i.av = icmp sgt i32 %.val183.val, 0
  br i1 %i.av, label %.lr.ph216, label %.loopexit

.lr.ph216:                                        ; preds = %.preheader
  %i.aw = icmp eq ptr %3, null
  %i.ax = icmp eq ptr %3, @ompi_mpi_datatype_null
  %or.cond9 = or i1 %i.aw, %i.ax
  %i.ay = getelementptr i8, ptr %3, i64 16
  br i1 %or.cond9, label %.thread, label %.lr.ph216.split.preheader, !prof !53

.lr.ph216.split.preheader:                        ; preds = %.lr.ph216
  %wide.trip.count222 = zext nneg i32 %.val183.val to i64
  br label %.lr.ph216.split

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !48
  %i.bd = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.ba, ptr noundef nonnull %8, i32 noundef %i.bc, i32 noundef 2, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.as

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %exitcond223.not = icmp eq i64 %indvars.iv.next220, %wide.trip.count222
  br i1 %exitcond223.not, label %.loopexit, label %.lr.ph216.split, !llvm.loop !21

.lr.ph216.split:                                  ; preds = %.lr.ph216.split.preheader, %bb.t
  %indvars.iv219 = phi i64 [ 0, %.lr.ph216.split.preheader ], [ %indvars.iv.next220, %bb.t ] ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv219
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !12
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %.thread, label %bb.u, !prof !53

bb.u:                                             ; preds = %.lr.ph216.split
  %.val185 = load i16, ptr %i.ay, align 8, !tbaa !58
  %i.bh = and i16 %.val185, 5
  %or.cond233 = icmp eq i16 %i.bh, 4
  br i1 %or.cond233, label %bb.t, label %.thread, !prof !59

.thread:                                          ; preds = %.lr.ph216.split, %bb.u, %.lr.ph216
  %.1195 = phi i32 [ 3, %.lr.ph216 ], [ 3, %bb.u ], [ 2, %.lr.ph216.split ]
  %11 = icmp eq i32 %.1195, 2
  %.finite238 = select i1 %11, i32 2, i32 3       ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !48
  %i.bm = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bj, ptr noundef %8, i32 noundef %i.bl, i32 noundef %.finite238, ptr noundef nonnull @FUNC_NAME) #5 ; 0 uses
  br label %bb.as

bb.v:                                             ; preds = %bb.g
  %i.bn = icmp sgt i32 %7, -1
  br i1 %i.bn, label %ompi_comm_remote_size.exit, label %bb.w

ompi_comm_remote_size.exit:                       ; preds = %bb.v
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 272
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !52
  %i.bs = icmp slt i32 %7, %i.br
  br i1 %i.bs, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.v
  switch i32 %7, label %bb.x [
    i32 -4, label %bb.y
    i32 -2, label %bb.y
  ]

bb.x:                                             ; preds = %ompi_comm_remote_size.exit, %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !47
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !48
  %i.bx = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bu, ptr noundef nonnull %8, i32 noundef %i.bw, i32 noundef 8, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.as

bb.y:                                             ; preds = %bb.w, %bb.w, %ompi_comm_remote_size.exit
  %i.by = and i32 %7, -3
  %or.cond14.not = icmp eq i32 %i.by, -4
  br i1 %or.cond14.not, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = icmp slt i32 %5, 0
  br i1 %i.bz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !47
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !48
  %i.ce = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.cb, ptr noundef nonnull %8, i32 noundef %i.cd, i32 noundef 2, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.as

bb.ab:                                            ; preds = %bb.z
  %i.cf = icmp eq ptr %6, @ompi_mpi_datatype_null
  %i.cg = icmp eq ptr %6, null
  %or.cond17 = or i1 %i.cf, %i.cg
  br i1 %or.cond17, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !47
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !48
  %i.cl = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.ci, ptr noundef nonnull %8, i32 noundef %i.ck, i32 noundef 3, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.as

bb.ad:                                            ; preds = %bb.y
  %i.cm = icmp eq i32 %7, -4
  br i1 %i.cm, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.cn = icmp eq ptr %2, null
  br i1 %i.cn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !47
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !48
  %i.cs = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.cp, ptr noundef nonnull %8, i32 noundef %i.cr, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.as

bb.ag:                                            ; preds = %bb.ae
  %i.ct = icmp eq ptr %1, null
  br i1 %i.ct, label %bb.ah, label %ompi_comm_remote_size.exit189

bb.ah:                                            ; preds = %bb.ag
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !47
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !48
  %i.cy = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.cv, ptr noundef nonnull %8, i32 noundef %i.cx, i32 noundef 2, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.as

ompi_comm_remote_size.exit189:                    ; preds = %bb.ag
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 272
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !60
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !52 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %ompi_comm_remote_size.exit189
  %i.de = icmp eq ptr %3, null
  %i.df = icmp eq ptr %3, @ompi_mpi_datatype_null
  %or.cond20 = or i1 %i.de, %i.df
  %i.dg = getelementptr i8, ptr %3, i64 16
  br i1 %or.cond20, label %.thread197, label %.lr.ph.split.preheader, !prof !53

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.dc to i64
  br label %.lr.ph.split

bb.ai:                                            ; preds = %bb.aj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !22

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.ai
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.ai ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !12
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %.thread197, label %bb.aj, !prof !53

bb.aj:                                            ; preds = %.lr.ph.split
  %.val184 = load i16, ptr %i.dg, align 8, !tbaa !58
  %i.dk = and i16 %.val184, 5
  %or.cond234 = icmp eq i16 %i.dk, 4
  br i1 %or.cond234, label %bb.ai, label %.thread197, !prof !59

.thread197:                                       ; preds = %.lr.ph.split, %bb.aj, %.lr.ph
  %.3200 = phi i32 [ 3, %.lr.ph ], [ 3, %bb.aj ], [ 2, %.lr.ph.split ]
  %12 = icmp eq i32 %.3200, 2
  %.finite = select i1 %12, i32 2, i32 3          ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !47
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !48
  %i.dp = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.dm, ptr noundef %8, i32 noundef %i.do, i32 noundef %.finite, ptr noundef nonnull @FUNC_NAME) #5 ; 0 uses
  br label %bb.as

.loopexit:                                        ; preds = %bb.ai, %bb.t, %ompi_comm_remote_size.exit189, %.preheader, %bb.o, %bb.ad, %bb.ab, %bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 344
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !61 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 800
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !65
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 808
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !66
  %i.dw = tail call i32 %i.dt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %i.dv) #5 ; 2 uses
  %cond = icmp eq i32 %i.dw, 0
  br i1 %cond, label %bb.ak, label %bb.ar, !prof !67

bb.ak:                                            ; preds = %.loopexit
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !45
  %i.dz = and i32 %i.dy, 1
  %.not171 = icmp eq i32 %i.dz, 0
  br i1 %.not171, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.ea = icmp eq ptr %4, inttoptr (i64 1 to ptr)
  br i1 %i.ea, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eb = getelementptr i8, ptr %8, i64 220
  %.val = load i32, ptr %i.eb, align 4, !tbaa !46
  %.not172 = icmp eq i32 %.val, %7
  %spec.select178 = select i1 %.not172, ptr %3, ptr null
  br label %bb.aq

bb.an:                                            ; preds = %bb.ak
  switch i32 %7, label %bb.ap [
    i32 -4, label %bb.aq
    i32 -2, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  br label %bb.aq

bb.aq:                                            ; preds = %bb.am, %bb.an, %bb.al, %bb.ap, %bb.ao
  %.0151 = phi ptr [ null, %bb.an ], [ null, %bb.ao ], [ %6, %bb.ap ], [ %6, %bb.am ], [ null, %bb.al ]
  %.0150 = phi ptr [ %3, %bb.an ], [ null, %bb.ao ], [ null, %bb.ap ], [ %spec.select178, %bb.am ], [ %3, %bb.al ]
  %i.ec = load ptr, ptr %10, align 8, !tbaa !69
  %i.ed = tail call i32 @ompi_coll_base_retain_datatypes(ptr noundef %i.ec, ptr noundef %.0150, ptr noundef %.0151) #5 ; 0 uses
  br label %bb.as

bb.ar:                                            ; preds = %.loopexit
  %i.ee = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.dw) ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !47
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !48
  %i.ej = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.eg, ptr noundef nonnull %8, i32 noundef %i.ei, i32 noundef %i.ee, ptr noundef nonnull @FUNC_NAME) #5 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %.thread197, %bb.ah, %bb.af, %bb.ac, %bb.aa, %bb.x, %.thread, %bb.s, %bb.q, %bb.n, %bb.l, %bb.i, %bb.f, %ompi_comm_invalid.exit.thread
  %.0 = phi i32 [ %i.k, %ompi_comm_invalid.exit.thread ], [ %i.q, %bb.f ], [ %i.ce, %bb.aa ], [ %i.cl, %bb.ac ], [ %i.ee, %bb.ar ], [ %.finite238, %.thread ], [ %i.cs, %bb.af ], [ %i.cy, %bb.ah ], [ %.finite, %.thread197 ], [ %i.bx, %bb.x ], [ %i.aa, %bb.i ], [ %i.ag, %bb.l ], [ %i.an, %bb.n ], [ %i.at, %bb.q ], [ %i.bd, %bb.s ], [ 0, %bb.aq ]
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
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #5 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  %i.y = trunc nuw i8 %.pre.i to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !73
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv18
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !74 ; 2 uses
  br i1 %i.y, label %bb.e, label %opal_pointer_array_get_item.exit, !prof !78

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #5 ; 0 uses
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
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !79
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %.split.us, %bb.a
  %.010 = phi i32 [ %0, %bb.a ], [ %i.ai, %.split.us ], [ 14, %bb.c ], [ 14, %.preheader ], [ 14, %bb.b ]
  ret i32 %.010
}

declare i32 @ompi_coll_base_retain_datatypes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
!46 = !{!44, !5, i64 220}
!47 = !{!44, !38, i64 312}
!48 = !{!44, !5, i64 320}
!49 = !{!44, !33, i64 264}
!50 = !{!"p2 _ZTS11ompi_proc_t", !18, i64 0}
!51 = !{!"ompi_group_t", !16, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !50, i64 32, !5, i64 40, !33, i64 48, !4, i64 56, !42, i64 72}
!52 = !{!51, !5, i64 16}
!53 = !{!"branch_weights", i32 1073205, i32 2146410443}
!54 = !{!"short", !4, i64 0}
!55 = !{!"p1 _ZTS12dt_elem_desc", !14, i64 0}
!56 = !{!"dt_type_desc_t", !24, i64 0, !24, i64 8, !55, i64 16}
!57 = !{!"opal_datatype_t", !16, i64 0, !54, i64 16, !54, i64 18, !5, i64 20, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64, !5, i64 72, !5, i64 76, !4, i64 80, !56, i64 144, !56, i64 168, !20, i64 192}
!58 = !{!57, !54, i64 16}
!59 = !{!"branch_weights", i32 -2146410, i32 2146410}
!60 = !{!44, !33, i64 272}
!61 = !{!44, !41, i64 344}
!62 = !{!"p1 _ZTS28mca_coll_base_module_2_4_0_t", !14, i64 0}
!63 = !{!"p1 _ZTS11opal_list_t", !14, i64 0}
!64 = !{!"mca_coll_base_comm_coll_t", !14, i64 0, !62, i64 8, !14, i64 16, !62, i64 24, !14, i64 32, !62, i64 40, !14, i64 48, !62, i64 56, !14, i64 64, !62, i64 72, !14, i64 80, !62, i64 88, !14, i64 96, !62, i64 104, !14, i64 112, !62, i64 120, !14, i64 128, !62, i64 136, !14, i64 144, !62, i64 152, !14, i64 160, !62, i64 168, !14, i64 176, !62, i64 184, !14, i64 192, !62, i64 200, !14, i64 208, !62, i64 216, !14, i64 224, !62, i64 232, !14, i64 240, !62, i64 248, !14, i64 256, !62, i64 264, !14, i64 272, !62, i64 280, !14, i64 288, !62, i64 296, !14, i64 304, !62, i64 312, !14, i64 320, !62, i64 328, !14, i64 336, !62, i64 344, !14, i64 352, !62, i64 360, !14, i64 368, !62, i64 376, !14, i64 384, !62, i64 392, !14, i64 400, !62, i64 408, !14, i64 416, !62, i64 424, !14, i64 432, !62, i64 440, !14, i64 448, !62, i64 456, !14, i64 464, !62, i64 472, !14, i64 480, !62, i64 488, !14, i64 496, !62, i64 504, !14, i64 512, !62, i64 520, !14, i64 528, !62, i64 536, !14, i64 544, !62, i64 552, !14, i64 560, !62, i64 568, !14, i64 576, !62, i64 584, !14, i64 592, !62, i64 600, !14, i64 608, !62, i64 616, !14, i64 624, !62, i64 632, !14, i64 640, !62, i64 648, !14, i64 656, !62, i64 664, !14, i64 672, !62, i64 680, !14, i64 688, !62, i64 696, !14, i64 704, !62, i64 712, !14, i64 720, !62, i64 728, !14, i64 736, !62, i64 744, !14, i64 752, !62, i64 760, !14, i64 768, !62, i64 776, !14, i64 784, !62, i64 792, !14, i64 800, !62, i64 808, !14, i64 816, !62, i64 824, !14, i64 832, !62, i64 840, !14, i64 848, !62, i64 856, !14, i64 864, !62, i64 872, !14, i64 880, !62, i64 888, !14, i64 896, !62, i64 904, !14, i64 912, !62, i64 920, !14, i64 928, !62, i64 936, !14, i64 944, !62, i64 952, !14, i64 960, !62, i64 968, !14, i64 976, !62, i64 984, !14, i64 992, !62, i64 1000, !14, i64 1008, !62, i64 1016, !14, i64 1024, !62, i64 1032, !14, i64 1040, !62, i64 1048, !14, i64 1056, !62, i64 1064, !14, i64 1072, !62, i64 1080, !14, i64 1088, !62, i64 1096, !14, i64 1104, !63, i64 1112}
!65 = !{!64, !14, i64 800}
!66 = !{!64, !62, i64 808}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{!"p1 _ZTS14ompi_request_t", !14, i64 0}
!69 = !{!68, !68, i64 0}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19, !77}
!72 = !{!"opal_pointer_array_t", !16, i64 0, !17, i64 16, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !20, i64 104, !18, i64 112}
!73 = !{!72, !18, i64 112}
!74 = !{!14, !14, i64 0}
!75 = !{!"ompi_errcode_intern_t", !16, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28}
!76 = !{!75, !5, i64 16}
!77 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
