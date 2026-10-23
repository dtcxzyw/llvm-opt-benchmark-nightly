Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/graph_create?download=true
inline.NumInlined: 22
inline.NumDeleted: 14
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

@ompi_mpi_param_check = external local_unnamed_addr global i8, align 1
@ompi_instance_count = external global i32, align 4
@FUNC_NAME = internal constant [17 x i8] c"MPI_Graph_create\00", align 16
@ompi_mpi_comm_world = external global %struct.ompi_predefined_communicator_t, align 8
@ompi_mpi_comm_null = external global %struct.ompi_predefined_communicator_t, align 8
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1

@MPI_Graph_create = weak alias i32 (ptr, i32, ptr, ptr, i32, ptr), ptr @PMPI_Graph_create

; Function Attrs: nounwind uwtable
define i32 @PMPI_Graph_create(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !13, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !16
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = icmp eq ptr %0, null
  %i.h = icmp eq ptr %0, @ompi_mpi_comm_null
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %ompi_comm_invalid.exit.thread, label %ompi_comm_invalid.exit

ompi_comm_invalid.exit:                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = load i32, ptr %i.i, align 8, !tbaa !45   ; 2 uses
  %i.k = and i32 %i.j, 48
  %or.cond7.i.not = icmp eq i32 %i.k, 0
  br i1 %or.cond7.i.not, label %bb.e, label %ompi_comm_invalid.exit.thread

ompi_comm_invalid.exit.thread:                    ; preds = %bb.d, %ompi_comm_invalid.exit
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 312), align 8, !tbaa !46
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 320), align 8, !tbaa !47
  %i.n = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.l, ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.m, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.af

bb.e:                                             ; preds = %ompi_comm_invalid.exit
  %i.o = and i32 %i.j, 1
  %.not44 = icmp eq i32 %i.o, 0
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.af

bb.g:                                             ; preds = %bb.e
  %i.q = icmp slt i32 %1, 0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.u = load i32, ptr %i.t, align 8, !tbaa !47
  %i.v = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.s, ptr noundef nonnull %0, i32 noundef %i.u, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.af

bb.i:                                             ; preds = %bb.g
  %.not45 = icmp eq i32 %1, 0
  br i1 %.not45, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = icmp eq ptr %2, null
  %i.x = icmp eq ptr %3, null
  %or.cond = or i1 %i.w, %i.x
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.ac = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.z, ptr noundef nonnull %0, i32 noundef %i.ab, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.af

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.ad = getelementptr i8, ptr %0, i64 264
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !48
  %i.ae = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.ae, align 8, !tbaa !51
  %i.af = icmp sgt i32 %1, %.val.val
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !47
  %i.ak = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.ah, ptr noundef nonnull %0, i32 noundef %i.aj, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.af

bb.n:                                             ; preds = %bb.l, %bb.a
  %i.al = icmp eq i32 %1, 0
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr @ompi_mpi_comm_null, ptr %5, align 8, !tbaa !52
  br label %bb.af

bb.p:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !51
  %i.aq = icmp sgt i32 %1, %i.ap
  br i1 %i.aq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.au = load i32, ptr %i.at, align 8, !tbaa !47
  %i.av = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.as, ptr noundef nonnull %0, i32 noundef %i.au, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.af

bb.r:                                             ; preds = %bb.p
  %i.aw = call i32 @mca_topo_base_comm_select(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 512) #6 ; 2 uses
  %.not46 = icmp eq i32 %i.aw, 0
  br i1 %.not46, label %bb.s, label %bb.af

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr i8, ptr %0, i64 377
  %.val.i.i = load i8, ptr %i.ax, align 1, !tbaa !53, !range !14, !noundef !15
  %i.ay = trunc nuw i8 %.val.i.i to i1
  br i1 %i.ay, label %bb.v, label %bb.t, !prof !17

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr i8, ptr %0, i64 378
  %.val5.i.i = load i8, ptr %i.az, align 2, !tbaa !54, !range !14, !noundef !15
  %i.ba = trunc nuw i8 %.val5.i.i to i1
  br i1 %i.ba, label %bb.u, label %ompi_comm_iface_create_check.exit, !prof !17

bb.u:                                             ; preds = %bb.t
  %i.bb = call i32 @opal_progress() #6            ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u
  %.054.ph = phi i32 [ 77, %bb.s ], [ 75, %bb.u ] ; 2 uses
  %6 = icmp eq i32 %.054.ph, 76
  %.finite = select i1 %6, i32 76, i32 77
  %7 = icmp eq i32 %.054.ph, 75
  %.finite88 = select i1 %7, i32 75, i32 %.finite ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !46
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !47
  %i.bg = call i32 @ompi_errhandler_invoke(ptr noundef %i.bd, ptr noundef nonnull %0, i32 noundef %i.bf, i32 noundef %.finite88, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.af

ompi_comm_iface_create_check.exit:                ; preds = %bb.t
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !56
  %i.bk = icmp ne i32 %4, 0
  %i.bl = call i32 %i.bj(ptr noundef %i.bh, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %i.bk, ptr noundef %5) #6 ; 5 uses
  %.not47 = icmp eq i32 %i.bl, 0
  br i1 %.not47, label %bb.af, label %bb.w

bb.w:                                             ; preds = %ompi_comm_iface_create_check.exit
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !55  ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load i8, ptr @opal_uses_threads, align 1, !tbaa !13, !range !14, !noundef !15
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.x, label %bb.y, !prof !17

bb.x:                                             ; preds = %bb.w
  %i.bq = atomicrmw volatile add ptr %i.bn, i32 -1 monotonic, align 4
  %i.br = add i32 %i.bq, -1
  br label %opal_thread_add_fetch_32.exit

bb.y:                                             ; preds = %bb.w
  %i.bs = load volatile i32, ptr %i.bn, align 4, !tbaa !16
  %i.bt = add nsw i32 %i.bs, -1
  store volatile i32 %i.bt, ptr %i.bn, align 4, !tbaa !16
  %i.bu = load volatile i32, ptr %i.bn, align 4, !tbaa !16
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.x, %bb.y
  %.0.i49 = phi i32 [ %i.br, %bb.x ], [ %i.bu, %bb.y ]
  %i.bv = icmp eq i32 %.0.i49, 0
  br i1 %i.bv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.bw = load ptr, ptr %i.bm, align 8, !tbaa !57
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !59 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !60 ; 2 uses
  %.not6.i = icmp eq ptr %i.bz, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z, %.lr.ph.i
  %i.ca = phi ptr [ %i.cc, %.lr.ph.i ], [ %i.bz, %bb.z ]
  %.07.i = phi ptr [ %i.cb, %.lr.ph.i ], [ %i.by, %bb.z ]
  call void %i.ca(ptr noundef nonnull %i.bm) #6, !inline_history !8
  %i.cb = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !60 ; 2 uses
  %.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !9

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !55
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.z
  %i.cd = phi ptr [ %.pre, %opal_obj_run_destructors.exit.loopexit ], [ %i.bm, %bb.z ]
  call void @free(ptr noundef %i.cd) #6
  store ptr null, ptr %i.a, align 8, !tbaa !55
  br label %bb.aa

bb.aa:                                            ; preds = %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !46
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !47
  %i.ci = icmp sgt i32 %i.bl, -1
  br i1 %i.ci, label %ompi_errcode_get_mpi_code.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa
  %i.cj = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !16 ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph.i50, label %ompi_errcode_get_mpi_code.exit

.lr.ph.i50:                                       ; preds = %.preheader.i
  %i.cl = load i8, ptr @opal_uses_threads, align 1, !tbaa !13, !range !14, !noundef !15
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %.lr.ph.split.i, label %.lr.ph.split.us.i, !prof !17

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i50
  %i.cn = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !64
  %i.cp = sext i32 %i.cn to i64
  %wide.trip.count.i = zext nneg i32 %i.cj to i64
  br label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.ab, %.lr.ph.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ab ], [ 0, %.lr.ph.split.us.i ] ; 3 uses
  %.not.us.i = icmp slt i64 %indvars.iv.i, %i.cp
  call void @llvm.assume(i1 %.not.us.i)
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.i
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !60 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !66
  %i.cu = icmp eq i32 %i.ct, %i.bl
  br i1 %i.cu, label %.split.us.i, label %bb.ab

bb.ab:                                            ; preds = %.thread.i.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ompi_errcode_get_mpi_code.exit, label %.thread.i.us.i, !llvm.loop !10

bb.ac:                                            ; preds = %opal_pointer_array_get_item.exit.i
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %i.cv = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !16
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next19.i, %i.cw
  br i1 %i.cx, label %.lr.ph.split.i, label %ompi_errcode_get_mpi_code.exit, !llvm.loop !11

.lr.ph.split.i:                                   ; preds = %.lr.ph.i50, %bb.ac
  %i.cy = phi i8 [ %i.dl, %bb.ac ], [ 1, %.lr.ph.i50 ]
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %bb.ac ], [ 0, %.lr.ph.i50 ] ; 4 uses
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.da = sext i32 %i.cz to i64
  %.not.i51 = icmp slt i64 %indvars.iv18.i, %i.da
  call void @llvm.assume(i1 %.not.i51)
  %i.db = trunc nuw i8 %i.cy to i1
  br i1 %i.db, label %bb.ad, label %.thread.i.i, !prof !17

.thread.i.i:                                      ; preds = %.lr.ph.split.i
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv18.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !60
  br label %opal_pointer_array_get_item.exit.i

bb.ad:                                            ; preds = %.lr.ph.split.i
  %i.df = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !13, !range !14
  %i.dg = trunc nuw i8 %.pre.i.i to i1
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv18.i
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !60 ; 2 uses
  br i1 %i.dg, label %bb.ae, label %opal_pointer_array_get_item.exit.i, !prof !68

bb.ae:                                            ; preds = %bb.ad
  %i.dk = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !13, !range !14
  br label %opal_pointer_array_get_item.exit.i

opal_pointer_array_get_item.exit.i:               ; preds = %bb.ae, %bb.ad, %.thread.i.i
  %i.dl = phi i8 [ 0, %.thread.i.i ], [ %.pre.i, %bb.ae ], [ 0, %bb.ad ]
  %.0.i.i52 = phi ptr [ %i.de, %.thread.i.i ], [ %i.dj, %bb.ae ], [ %i.dj, %bb.ad ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 16
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !66
  %i.do = icmp eq i32 %i.dn, %i.bl
  br i1 %i.do, label %.split.us.i, label %bb.ac

.split.us.i:                                      ; preds = %.thread.i.us.i, %opal_pointer_array_get_item.exit.i
  %.us-phi.i = phi ptr [ %.0.i.i52, %opal_pointer_array_get_item.exit.i ], [ %i.cr, %.thread.i.us.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 20
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !69
  br label %ompi_errcode_get_mpi_code.exit

ompi_errcode_get_mpi_code.exit:                   ; preds = %bb.ab, %bb.ac, %bb.aa, %.preheader.i, %.split.us.i
  %.010.i = phi i32 [ %i.bl, %bb.aa ], [ %i.dq, %.split.us.i ], [ 14, %bb.ac ], [ 14, %.preheader.i ], [ 14, %bb.ab ]
  %i.dr = call i32 @ompi_errhandler_invoke(ptr noundef %i.cf, ptr noundef %0, i32 noundef %i.ch, i32 noundef %.010.i, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.af

bb.af:                                            ; preds = %ompi_comm_iface_create_check.exit, %bb.r, %ompi_errcode_get_mpi_code.exit, %bb.v, %bb.q, %bb.o, %bb.m, %bb.k, %bb.h, %bb.f, %ompi_comm_invalid.exit.thread
  %.0 = phi i32 [ %i.n, %ompi_comm_invalid.exit.thread ], [ %i.p, %bb.f ], [ %i.v, %bb.h ], [ %i.ac, %bb.k ], [ %i.ak, %bb.m ], [ 0, %bb.o ], [ %i.av, %bb.q ], [ 0, %ompi_comm_iface_create_check.exit ], [ %.finite88, %bb.v ], [ %i.aw, %bb.r ], [ %i.dr, %ompi_errcode_get_mpi_code.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ompi_errhandler_invoke(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mca_topo_base_comm_select(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

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
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{null}
!9 = distinct !{!9, !61}
!10 = distinct !{!10, !61}
!11 = distinct !{!11, !61, !67}
!12 = !{!"_Bool", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!5, !5, i64 0}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{!"any pointer", !4, i64 0}
!19 = !{!"p1 _ZTS12opal_class_t", !18, i64 0}
!20 = !{!"opal_object_t", !19, i64 0, !5, i64 8}
!21 = !{!"p1 _ZTS19opal_hash_element_t", !18, i64 0}
!22 = !{!"long", !4, i64 0}
!23 = !{!"p1 _ZTS24opal_hash_type_methods_t", !18, i64 0}
!24 = !{!"opal_hash_table_t", !20, i64 0, !21, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !23, i64 64}
!25 = !{!"p1 _ZTS11opal_info_t", !18, i64 0}
!26 = !{!"opal_infosubscriber_t", !20, i64 0, !24, i64 16, !25, i64 88}
!27 = !{!"opal_mutex_t", !20, i64 0, !4, i64 16, !5, i64 56}
!28 = !{!"p1 omnipotent char", !18, i64 0}
!29 = !{!"ompi_comm_extended_cid_t", !22, i64 0, !4, i64 8}
!30 = !{!"ompi_comm_extended_cid_block_t", !29, i64 0, !22, i64 16, !4, i64 24, !4, i64 25}
!31 = !{!"p1 int", !18, i64 0}
!32 = !{!"p1 _ZTS12ompi_group_t", !18, i64 0}
!33 = !{!"p1 _ZTS19ompi_communicator_t", !18, i64 0}
!34 = !{!"p1 _ZTS17opal_hash_table_t", !18, i64 0}
!35 = !{!"p1 _ZTS22mca_topo_base_module_t", !18, i64 0}
!36 = !{!"any p2 pointer", !18, i64 0}
!37 = !{!"p2 _ZTS20ompi_peruse_handle_t", !36, i64 0}
!38 = !{!"p1 _ZTS17ompi_errhandler_t", !18, i64 0}
!39 = !{!"p1 _ZTS14mca_pml_comm_t", !18, i64 0}
!40 = !{!"p1 _ZTS14mca_mtl_comm_t", !18, i64 0}
!41 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !18, i64 0}
!42 = !{!"p1 _ZTS15ompi_instance_t", !18, i64 0}
!43 = !{!"p1 _ZTS13opal_object_t", !18, i64 0}
!44 = !{!"ompi_communicator_t", !26, i64 0, !27, i64 96, !28, i64 160, !29, i64 168, !30, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !31, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !32, i64 264, !32, i64 272, !33, i64 280, !34, i64 288, !35, i64 296, !37, i64 304, !38, i64 312, !5, i64 320, !39, i64 328, !40, i64 336, !41, i64 344, !42, i64 352, !43, i64 360, !5, i64 368, !5, i64 372, !12, i64 376, !12, i64 377, !12, i64 378}
!45 = !{!44, !5, i64 224}
!46 = !{!44, !38, i64 312}
!47 = !{!44, !5, i64 320}
!48 = !{!44, !32, i64 264}
!49 = !{!"p2 _ZTS11ompi_proc_t", !36, i64 0}
!50 = !{!"ompi_group_t", !20, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !49, i64 32, !5, i64 40, !32, i64 48, !4, i64 56, !42, i64 72}
!51 = !{!50, !5, i64 16}
!52 = !{!33, !33, i64 0}
!53 = !{!44, !12, i64 377}
!54 = !{!44, !12, i64 378}
!55 = !{!35, !35, i64 0}
!56 = !{!4, !4, i64 0}
!57 = !{!20, !19, i64 0}
!58 = !{!"opal_class_t", !28, i64 0, !19, i64 8, !18, i64 16, !18, i64 24, !5, i64 32, !5, i64 36, !36, i64 40, !36, i64 48, !22, i64 56}
!59 = !{!58, !36, i64 48}
!60 = !{!18, !18, i64 0}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"p1 long", !18, i64 0}
!63 = !{!"opal_pointer_array_t", !20, i64 0, !27, i64 16, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !62, i64 104, !36, i64 112}
!64 = !{!63, !36, i64 112}
!65 = !{!"ompi_errcode_intern_t", !20, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28}
!66 = !{!65, !5, i64 16}
!67 = !{!"llvm.loop.unswitch.partial.disable"}
!68 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!69 = !{!65, !5, i64 20}
end_hunk_0
