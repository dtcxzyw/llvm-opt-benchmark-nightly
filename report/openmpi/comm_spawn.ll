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
  %i.g = alloca [1024 x i8], align 16             ; 10 uses
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
  %.2.ph = phi i32 [ 77, %bb.l ], [ 75, %bb.n ]
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !63
  %i.ax = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.2.ph)
  %i.ay = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.au, ptr noundef nonnull %5, i32 noundef %i.aw, i32 noundef %i.ax, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.ar

ompi_comm_iface_coll_check.exit:                  ; preds = %bb.m
  %i.az = getelementptr i8, ptr %5, i64 220
  %.val69 = load i32, ptr %i.az, align 4, !tbaa !70
  %i.ba = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !14, !range !15, !noundef !16
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = icmp eq i32 %.val69, %4                 ; 3 uses
  %or.cond67 = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond67, label %bb.p, label %8

bb.p:                                             ; preds = %ompi_comm_iface_coll_check.exit
  %i.bd = icmp eq ptr %0, null
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !62
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !63
  %i.bi = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bf, ptr noundef nonnull %5, i32 noundef %i.bh, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.ar

bb.r:                                             ; preds = %bb.p
  %i.bj = icmp slt i32 %2, 0
  br i1 %i.bj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !63
  %i.bo = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bl, ptr noundef nonnull %5, i32 noundef %i.bn, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.ar

bb.t:                                             ; preds = %bb.r
  %i.bp = icmp eq ptr %3, null
  br i1 %i.bp, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr i8, ptr %3, i64 76
  %.val70 = load i8, ptr %i.bq, align 4, !tbaa !77, !range !15, !noundef !16
  %i.br = trunc nuw i8 %.val70 to i1
  br i1 %i.br, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bs = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 34, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.ar

8:                                                ; preds = %ompi_comm_iface_coll_check.exit
  %9 = tail call zeroext i1 @ompi_mpi_dynamics_is_enabled(ptr noundef nonnull @FUNC_NAME) #8
  br i1 %9, label %bb.ac, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bt = tail call zeroext i1 @ompi_mpi_dynamics_is_enabled(ptr noundef nonnull @FUNC_NAME) #8
  br i1 %i.bt, label %.thread82, label %bb.x

.thread82:                                        ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.g, i8 0, i64 1024, i1 false)
  br label %bb.ad

bb.x:                                             ; preds = %bb.w, %8
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !62
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !63
  %i.by = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12 ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i, label %ompi_errcode_get_mpi_code.exit

.lr.ph.i:                                         ; preds = %bb.x
  %i.ca = load i8, ptr @opal_uses_threads, align 1, !tbaa !14, !range !15, !noundef !16
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %.lr.ph.split.i, label %.lr.ph.split.us.i, !prof !17

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !23
  %i.ce = sext i32 %i.cc to i64
  %wide.trip.count.i = zext nneg i32 %i.by to i64
  br label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.y, %.lr.ph.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.y ], [ 0, %.lr.ph.split.us.i ] ; 3 uses
  %.not.us.i = icmp slt i64 %indvars.iv.i, %i.ce
  tail call void @llvm.assume(i1 %.not.us.i)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !24 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !26
  %i.cj = icmp eq i32 %i.ci, -8
  br i1 %i.cj, label %.split.us.i, label %bb.y

bb.y:                                             ; preds = %.thread.i.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ompi_errcode_get_mpi_code.exit, label %.thread.i.us.i, !llvm.loop !0

bb.z:                                             ; preds = %opal_pointer_array_get_item.exit.i
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %i.ck = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp slt i64 %indvars.iv.next19.i, %i.cl
  br i1 %i.cm, label %.lr.ph.split.i, label %ompi_errcode_get_mpi_code.exit, !llvm.loop !1

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.z
  %i.cn = phi i8 [ %i.da, %bb.z ], [ 1, %.lr.ph.i ]
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %bb.z ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.cp = sext i32 %i.co to i64
  %.not.i = icmp slt i64 %indvars.iv18.i, %i.cp
  tail call void @llvm.assume(i1 %.not.i)
  %i.cq = trunc nuw i8 %i.cn to i1
  br i1 %i.cq, label %bb.aa, label %.thread.i.i, !prof !17

.thread.i.i:                                      ; preds = %.lr.ph.split.i
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !23
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv18.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !24
  br label %opal_pointer_array_get_item.exit.i

bb.aa:                                            ; preds = %.lr.ph.split.i
  %i.cu = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #8 ; 0 uses
  %.pre.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !14, !range !15
  %i.cv = trunc nuw i8 %.pre.i.i to i1
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !23
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv18.i
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !24 ; 2 uses
  br i1 %i.cv, label %bb.ab, label %opal_pointer_array_get_item.exit.i, !prof !29

bb.ab:                                            ; preds = %bb.aa
  %i.cz = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #8 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !14, !range !15
  br label %opal_pointer_array_get_item.exit.i

opal_pointer_array_get_item.exit.i:               ; preds = %bb.ab, %bb.aa, %.thread.i.i
  %i.da = phi i8 [ 0, %.thread.i.i ], [ %.pre.i, %bb.ab ], [ 0, %bb.aa ]
  %.0.i.i = phi ptr [ %i.ct, %.thread.i.i ], [ %i.cy, %bb.ab ], [ %i.cy, %bb.aa ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !26
  %i.dd = icmp eq i32 %i.dc, -8
  br i1 %i.dd, label %.split.us.i, label %bb.z

.split.us.i:                                      ; preds = %.thread.i.us.i, %opal_pointer_array_get_item.exit.i
  %.us-phi.i = phi ptr [ %.0.i.i, %opal_pointer_array_get_item.exit.i ], [ %i.cg, %.thread.i.us.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 20
  %i.df = load i32, ptr %i.de, align 4, !tbaa !30
  br label %ompi_errcode_get_mpi_code.exit

ompi_errcode_get_mpi_code.exit:                   ; preds = %bb.y, %bb.z, %bb.x, %.split.us.i
  %.010.i = phi i32 [ 14, %bb.z ], [ %i.df, %.split.us.i ], [ 14, %bb.x ], [ 14, %bb.y ]
  %i.dg = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bv, ptr noundef %5, i32 noundef %i.bx, i32 noundef %.010.i, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.ar

bb.ac:                                            ; preds = %8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.g, i8 0, i64 1024, i1 false)
  br i1 %i.bc, label %bb.ad, label %.critedge.thread86

bb.ad:                                            ; preds = %.thread82, %bb.ac
  %i.dh = call i32 @ompi_info_get_bool(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e) #8 ; 0 uses
  %i.di = load i8, ptr %i.i, align 1, !tbaa !14, !range !15, !noundef !16
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dk = call i32 @ompi_dpm_open_port(ptr noundef nonnull %i.g) #8 ; 2 uses
  %.not62 = icmp eq i32 %i.dk, 0
  br i1 %.not62, label %.critedge, label %.critedge.thread

bb.af:                                            ; preds = %bb.ad
  %i.dl = getelementptr i8, ptr %5, i64 264
  %.val = load ptr, ptr %i.dl, align 8, !tbaa !64
  %i.dm = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.dm, align 8, !tbaa !67
  %i.dn = icmp sgt i32 %.val.val, 1
  br i1 %i.dn, label %.critedge.thread, label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.af
  %i.do = call i32 @ompi_dpm_spawn(i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g) #8 ; 2 uses
  %.not63 = icmp eq i32 %i.do, 0
  br i1 %.not63, label %.critedge.thread86, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.af, %bb.ae, %.critedge
  %.07684 = phi i32 [ %i.do, %.critedge ], [ -8, %bb.af ], [ %i.dk, %bb.ae ] ; 2 uses
  %i.dp = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.g, i32 noundef %.07684) #8 ; 0 uses
  br label %bb.ag

.critedge.thread86:                               ; preds = %bb.ac, %.critedge
  store ptr %i.g, ptr %i.h, align 8, !tbaa !34
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge.thread86, %.critedge.thread
  %.07685 = phi i32 [ 0, %.critedge.thread86 ], [ %.07684, %.critedge.thread ]
  %i.dq = load i8, ptr %i.i, align 1, !tbaa !14, !range !15, !noundef !16
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr @ompi_mpi_comm_null, ptr %i.f, align 8, !tbaa !40
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ds = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.dt = call i32 @ompi_dpm_connect_accept(ptr noundef nonnull %5, i32 noundef %4, ptr noundef %i.ds, i1 noundef zeroext false, ptr noundef nonnull %i.f) #8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1 = phi i32 [ %.07685, %bb.ah ], [ %i.dt, %bb.ai ] ; 5 uses
  %i.du = icmp eq i32 %.1, -8
  br i1 %i.du, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dv = load ptr, ptr @opal_show_help, align 8, !tbaa !24
  %i.dw = call i32 (ptr, ptr, i32, ...) %i.dv(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @FUNC_NAME, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dx = load ptr, ptr %i.h, align 8, !tbaa !34  ; 2 uses
  %.not64 = icmp eq ptr %i.dx, %i.g
  br i1 %.not64, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef %i.dx) #8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.not = xor i1 %i.bc, true
  %i.dy = load i8, ptr %i.i, align 1, !range !15
  %i.dz = trunc nuw i8 %i.dy to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.dz
  br i1 %or.cond, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ea = call i32 @ompi_dpm_close_port(ptr noundef nonnull %i.g) #8 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.not65 = icmp eq ptr %7, null
  br i1 %.not65, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ap
  %i.eb = load i32, ptr %i.c, align 4, !tbaa !12  ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.eb to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.eb, 8
  br i1 %min.iters.check, label %.lr.ph.preheader117, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ed, align 4, !tbaa !12
  store <4 x i32> %broadcast.splat, ptr %i.ee, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader117

.lr.ph.preheader117:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader117, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader117 ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  store i32 %.1, ptr %i.eg, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !32

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %.preheader, %bb.ap
  %i.eh = load ptr, ptr %i.f, align 8, !tbaa !40
  store ptr %i.eh, ptr %6, align 8, !tbaa !40
  %.not66 = icmp eq i32 %.1, 0
  br i1 %.not66, label %bb.ar, label %bb.aq, !prof !80

bb.aq:                                            ; preds = %.loopexit
  %i.ei = call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.1) ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !62
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.em = load i32, ptr %i.el, align 8, !tbaa !63
  %i.en = call i32 @ompi_errhandler_invoke(ptr noundef %i.ek, ptr noundef nonnull %5, i32 noundef %i.em, i32 noundef %i.ei, ptr noundef nonnull @FUNC_NAME) #8 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit, %bb.aq, %ompi_errcode_get_mpi_code.exit, %bb.v, %bb.s, %bb.q, %bb.o, %bb.k, %bb.i, %bb.f, %ompi_comm_invalid.exit.thread
  %.0 = phi i32 [ %i.t, %ompi_comm_invalid.exit.thread ], [ %i.z, %bb.f ], [ %i.ah, %bb.i ], [ %i.an, %bb.k ], [ %i.ay, %bb.o ], [ %i.bi, %bb.q ], [ %i.bo, %bb.s ], [ %i.bs, %bb.v ], [ %i.ei, %bb.aq ], [ %i.dg, %ompi_errcode_get_mpi_code.exit ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ompi_errhandler_invoke(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.d = load i8, ptr @opal_uses_threads, align 1, !tbaa !14, !range !15, !noundef !16
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.lr.ph.split, label %.lr.ph.split.us, !prof !17

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !23
  %i.h = sext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.not.us = icmp slt i64 %indvars.iv, %i.h
  tail call void @llvm.assume(i1 %.not.us)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !26
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.thread.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.thread.i.us, !llvm.loop !0

bb.c:                                             ; preds = %opal_pointer_array_get_item.exit
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.n = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next19, %i.o
  br i1 %i.p, label %.lr.ph.split, label %.loopexit, !llvm.loop !1

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.c
end_hunk_0
