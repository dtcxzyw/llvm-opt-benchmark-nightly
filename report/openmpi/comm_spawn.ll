Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/comm_spawn?download=true
inline.NumInlined: 22
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_communicator_t = type { %struct.ompi_communicator_t, [128 x i8] }
%struct.ompi_communicator_t = type { %struct.opal_infosubscriber_t, %struct.opal_mutex_t, ptr, %struct.ompi_comm_extended_cid_t, %struct.ompi_comm_extended_cid_block_t, i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8 }
%struct.opal_infosubscriber_t = type { %struct.opal_object_t, %struct.opal_hash_table_t, ptr }
%struct.opal_object_t = type { ptr, i32 }
%struct.opal_hash_table_t = type { %struct.opal_object_t, ptr, i64, i64, i64, i32, i32, i32, i32, ptr }
%struct.opal_mutex_t = type { %struct.opal_object_t, %union.pthread_mutex_t, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.ompi_comm_extended_cid_t = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.ompi_comm_extended_cid_block_t = type { %struct.ompi_comm_extended_cid_t, i64, i8, i8 }
%struct.opal_pointer_array_t = type { %struct.opal_object_t, %struct.opal_mutex_t, i32, i32, i32, i32, i32, ptr, ptr }

@ompi_mpi_comm_null = external global %struct.ompi_predefined_communicator_t, align 8
@ompi_mpi_param_check = external local_unnamed_addr global i8, align 1
@ompi_instance_count = external global i32, align 4
@FUNC_NAME = internal constant [15 x i8] c"MPI_Comm_spawn\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"ompi_non_mpi\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s:error=%d\00", align 1
@opal_show_help = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"help-mpi-api.txt\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"MPI function not supported\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"Underlying runtime environment does not support spawn functionality\00", align 1
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1

@MPI_Comm_spawn = weak alias i32 (ptr, ptr, i32, ptr, i32, ptr, ptr, ptr), ptr @PMPI_Comm_spawn

; Function Attrs: nounwind uwtable
define i32 @PMPI_Comm_spawn(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca [1024 x i8], align 16             ; 9 uses
  %i.h = alloca ptr, align 8                      ; 7 uses
  %i.i = alloca i8, align 1                       ; 7 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !34
  store ptr %1, ptr %i.b, align 8, !tbaa !36
  store i32 %2, ptr %i.c, align 4, !tbaa !12
  store ptr %3, ptr %i.d, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store ptr @ompi_mpi_comm_null, ptr %i.f, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  store ptr null, ptr %i.h, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  store i8 0, ptr %i.i, align 1, !tbaa !14
  %i.j = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !14, !range !15, !noundef !16
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.l = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !12
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = icmp eq ptr %5, null
  %i.p = icmp eq ptr %5, @ompi_mpi_comm_null
  %or.cond.i = or i1 %i.o, %i.p
  br i1 %or.cond.i, label %ompi_comm_invalid.exit.thread, label %ompi_comm_invalid.exit

ompi_comm_invalid.exit:                           ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.r = load i32, ptr %i.q, align 8, !tbaa !61   ; 2 uses
  %i.s = and i32 %i.r, 48
  %or.cond7.i.not = icmp eq i32 %i.s, 0
  br i1 %or.cond7.i.not, label %bb.e, label %ompi_comm_invalid.exit.thread

ompi_comm_invalid.exit.thread:                    ; preds = %bb.d, %ompi_comm_invalid.exit
  %i.t = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.ar

bb.e:                                             ; preds = %ompi_comm_invalid.exit
  %i.u = and i32 %i.r, 1
  %.not60 = icmp eq i32 %i.u, 0
  br i1 %.not60, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.y = load i32, ptr %i.x, align 8, !tbaa !63
  %i.z = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.w, ptr noundef nonnull %5, i32 noundef %i.y, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.ar

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp slt i32 %4, 0
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %5, i64 264
  %.val68 = load ptr, ptr %i.ab, align 8, !tbaa !64
  %i.ac = getelementptr i8, ptr %.val68, i64 16
  %.val68.val = load i32, ptr %i.ac, align 8, !tbaa !67
  %.not61 = icmp sgt i32 %.val68.val, %4
  br i1 %.not61, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !63
  %i.ah = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.ae, ptr noundef nonnull %5, i32 noundef %i.ag, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.ar

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp eq ptr %6, null
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.am = load i32, ptr %i.al, align 8, !tbaa !63
  %i.an = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.ak, ptr noundef nonnull %5, i32 noundef %i.am, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.ar

bb.l:                                             ; preds = %bb.j, %bb.a
  %i.ao = getelementptr i8, ptr %5, i64 377
  %.val.i = load i8, ptr %i.ao, align 1, !tbaa !68, !range !15, !noundef !16
  %i.ap = trunc nuw i8 %.val.i to i1
  br i1 %i.ap, label %bb.o, label %bb.m, !prof !17

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr i8, ptr %5, i64 378
  %.val5.i = load i8, ptr %i.aq, align 2, !tbaa !69, !range !15, !noundef !16
  %i.ar = trunc nuw i8 %.val5.i to i1
  br i1 %i.ar, label %bb.n, label %ompi_comm_iface_coll_check.exit, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.as = tail call i32 @opal_progress() #8       ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.2.ph = phi i32 [ 77, %bb.l ], [ 75, %bb.n ]   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !63
  %8 = icmp eq i32 %.2.ph, 76
  %.finite = select i1 %8, i32 76, i32 77
  %9 = icmp eq i32 %.2.ph, 75
  %.finite124 = select i1 %9, i32 75, i32 %.finite
  %i.ax = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.au, ptr noundef nonnull %5, i32 noundef %i.aw, i32 noundef %.finite124, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.ar

ompi_comm_iface_coll_check.exit:                  ; preds = %bb.m
  %i.ay = getelementptr i8, ptr %5, i64 220
  %.val69 = load i32, ptr %i.ay, align 4, !tbaa !70
  %i.az = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !14, !range !15, !noundef !16
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = icmp eq i32 %.val69, %4                 ; 3 uses
  %or.cond67 = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond67, label %bb.p, label %bb.w

bb.p:                                             ; preds = %ompi_comm_iface_coll_check.exit
  %i.bc = icmp eq ptr %0, null
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !62
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !63
  %i.bh = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.be, ptr noundef nonnull %5, i32 noundef %i.bg, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.ar

bb.r:                                             ; preds = %bb.p
  %i.bi = icmp slt i32 %2, 0
  br i1 %i.bi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !63
  %i.bn = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bk, ptr noundef nonnull %5, i32 noundef %i.bm, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.ar

bb.t:                                             ; preds = %bb.r
  %i.bo = icmp eq ptr %3, null
  br i1 %i.bo, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr i8, ptr %3, i64 76
  %.val70 = load i8, ptr %i.bp, align 4, !tbaa !77, !range !15, !noundef !16
  %i.bq = trunc nuw i8 %.val70 to i1
  br i1 %i.bq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.br = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 34, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.ar

bb.w:                                             ; preds = %bb.u, %ompi_comm_iface_coll_check.exit
  %i.bs = tail call zeroext i1 @ompi_mpi_dynamics_is_enabled(ptr noundef nonnull @FUNC_NAME) #8
  br i1 %i.bs, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !63
  %i.bx = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12 ; 2 uses
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i, label %ompi_errcode_get_mpi_code.exit

.lr.ph.i:                                         ; preds = %bb.x
  %i.bz = load i8, ptr @opal_uses_threads, align 1, !tbaa !14, !range !15, !noundef !16
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %.lr.ph.split.i, label %.lr.ph.split.us.i, !prof !17

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.cb = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !23
  %i.cd = sext i32 %i.cb to i64
  %wide.trip.count.i = zext nneg i32 %i.bx to i64
  br label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.y, %.lr.ph.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.y ], [ 0, %.lr.ph.split.us.i ] ; 3 uses
  %.not.us.i = icmp slt i64 %indvars.iv.i, %i.cd
  tail call void @llvm.assume(i1 %.not.us.i)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !26
  %i.ci = icmp eq i32 %i.ch, -8
  br i1 %i.ci, label %.split.us.i, label %bb.y

bb.y:                                             ; preds = %.thread.i.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ompi_errcode_get_mpi_code.exit, label %.thread.i.us.i, !llvm.loop !0

bb.z:                                             ; preds = %opal_pointer_array_get_item.exit.i
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %i.cj = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %indvars.iv.next19.i, %i.ck
  br i1 %i.cl, label %.lr.ph.split.i, label %ompi_errcode_get_mpi_code.exit, !llvm.loop !1

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.z
  %i.cm = phi i8 [ %i.cz, %bb.z ], [ 1, %.lr.ph.i ]
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %bb.z ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.cn = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.co = sext i32 %i.cn to i64
  %.not.i = icmp slt i64 %indvars.iv18.i, %i.co
  tail call void @llvm.assume(i1 %.not.i)
  %i.cp = trunc nuw i8 %i.cm to i1
  br i1 %i.cp, label %bb.aa, label %.thread.i.i, !prof !17

.thread.i.i:                                      ; preds = %.lr.ph.split.i
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !23
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv18.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !24
  br label %opal_pointer_array_get_item.exit.i

bb.aa:                                            ; preds = %.lr.ph.split.i
  %i.ct = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #8 ; 0 uses
  %.pre.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !14, !range !15
  %i.cu = trunc nuw i8 %.pre.i.i to i1
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !23
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv18.i
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !24 ; 2 uses
  br i1 %i.cu, label %bb.ab, label %opal_pointer_array_get_item.exit.i, !prof !29

bb.ab:                                            ; preds = %bb.aa
  %i.cy = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #8 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !14, !range !15
  br label %opal_pointer_array_get_item.exit.i

opal_pointer_array_get_item.exit.i:               ; preds = %bb.ab, %bb.aa, %.thread.i.i
  %i.cz = phi i8 [ 0, %.thread.i.i ], [ %.pre.i, %bb.ab ], [ 0, %bb.aa ]
  %.0.i.i = phi ptr [ %i.cs, %.thread.i.i ], [ %i.cx, %bb.ab ], [ %i.cx, %bb.aa ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.db = load i32, ptr %i.da, align 8, !tbaa !26
  %i.dc = icmp eq i32 %i.db, -8
  br i1 %i.dc, label %.split.us.i, label %bb.z

.split.us.i:                                      ; preds = %.thread.i.us.i, %opal_pointer_array_get_item.exit.i
  %.us-phi.i = phi ptr [ %.0.i.i, %opal_pointer_array_get_item.exit.i ], [ %i.cf, %.thread.i.us.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 20
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !30
  br label %ompi_errcode_get_mpi_code.exit

ompi_errcode_get_mpi_code.exit:                   ; preds = %bb.y, %bb.z, %bb.x, %.split.us.i
  %.010.i = phi i32 [ 14, %bb.z ], [ %i.de, %.split.us.i ], [ 14, %bb.x ], [ 14, %bb.y ]
  %i.df = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bu, ptr noundef %5, i32 noundef %i.bw, i32 noundef %.010.i, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.ar

bb.ac:                                            ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.g, i8 0, i64 1024, i1 false)
  br i1 %i.bb, label %bb.ad, label %.critedge.thread86

bb.ad:                                            ; preds = %bb.ac
  %i.dg = call i32 @ompi_info_get_bool(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e) #8 ; 0 uses
  %i.dh = load i8, ptr %i.i, align 1, !tbaa !14, !range !15, !noundef !16
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dj = call i32 @ompi_dpm_open_port(ptr noundef nonnull %i.g) #8 ; 2 uses
  %.not62 = icmp eq i32 %i.dj, 0
  br i1 %.not62, label %.critedge, label %.critedge.thread

bb.af:                                            ; preds = %bb.ad
  %i.dk = getelementptr i8, ptr %5, i64 264
  %.val = load ptr, ptr %i.dk, align 8, !tbaa !64
  %i.dl = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.dl, align 8, !tbaa !67
  %i.dm = icmp sgt i32 %.val.val, 1
  br i1 %i.dm, label %.critedge.thread, label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.af
  %i.dn = call i32 @ompi_dpm_spawn(i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g) #8 ; 2 uses
  %.not63 = icmp eq i32 %i.dn, 0
  br i1 %.not63, label %.critedge.thread86, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.af, %bb.ae, %.critedge
  %.07684 = phi i32 [ %i.dn, %.critedge ], [ -8, %bb.af ], [ %i.dj, %bb.ae ] ; 2 uses
  %i.do = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.g, i32 noundef %.07684) #8 ; 0 uses
  br label %bb.ag

.critedge.thread86:                               ; preds = %bb.ac, %.critedge
  store ptr %i.g, ptr %i.h, align 8, !tbaa !34
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge.thread86, %.critedge.thread
  %.07685 = phi i32 [ 0, %.critedge.thread86 ], [ %.07684, %.critedge.thread ]
  %i.dp = load i8, ptr %i.i, align 1, !tbaa !14, !range !15, !noundef !16
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr @ompi_mpi_comm_null, ptr %i.f, align 8, !tbaa !40
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.dr = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.ds = call i32 @ompi_dpm_connect_accept(ptr noundef nonnull %5, i32 noundef %4, ptr noundef %i.dr, i1 noundef zeroext false, ptr noundef nonnull %i.f) #8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1 = phi i32 [ %.07685, %bb.ah ], [ %i.ds, %bb.ai ] ; 5 uses
end_hunk_0
