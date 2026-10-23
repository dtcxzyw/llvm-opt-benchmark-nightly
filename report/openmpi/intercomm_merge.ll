Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/intercomm_merge?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
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
%struct.ompi_predefined_group_t = type { %struct.ompi_group_t, [176 x i8] }
%struct.ompi_group_t = type { %struct.opal_object_t, i32, i32, i32, ptr, i32, ptr, %union.anon.0, ptr }
%union.anon.0 = type { %struct.ompi_group_sporadic_data_t }
%struct.ompi_group_sporadic_data_t = type { ptr, i32 }
%struct.opal_pointer_array_t = type { %struct.opal_object_t, %struct.opal_mutex_t, i32, i32, i32, i32, i32, ptr, ptr }

@ompi_mpi_comm_null = external global %struct.ompi_predefined_communicator_t, align 8
@ompi_mpi_param_check = external local_unnamed_addr global i8, align 1
@ompi_instance_count = external global i32, align 4
@FUNC_NAME = internal constant [20 x i8] c"MPI_Intercomm_merge\00", align 16
@ompi_mpi_comm_world = external global %struct.ompi_predefined_communicator_t, align 8
@ompi_mpi_group_null = external global %struct.ompi_predefined_group_t, align 8
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1

@MPI_Intercomm_merge = weak alias i32 (ptr, i32, ptr), ptr @PMPI_Intercomm_merge

; Function Attrs: nounwind uwtable
define i32 @PMPI_Intercomm_merge(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr @ompi_mpi_comm_null, ptr %i.a, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !12, !range !13, !noundef !14
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = icmp eq ptr %0, null
  %i.i = icmp eq ptr %0, @ompi_mpi_comm_null
  %or.cond.i = or i1 %i.h, %i.i
  br i1 %or.cond.i, label %ompi_comm_invalid.exit.thread, label %ompi_comm_invalid.exit

ompi_comm_invalid.exit:                           ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.k = load i32, ptr %i.j, align 8, !tbaa !56
  %i.l = and i32 %i.k, 49
  %or.cond94.not = icmp eq i32 %i.l, 1
  br i1 %or.cond94.not, label %bb.e, label %ompi_comm_invalid.exit.thread

ompi_comm_invalid.exit.thread:                    ; preds = %bb.d, %ompi_comm_invalid.exit
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 312), align 8, !tbaa !57
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 320), align 8, !tbaa !58
  %i.o = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.m, ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.n, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #7
  br label %bb.ae

bb.e:                                             ; preds = %ompi_comm_invalid.exit
  %i.p = icmp eq ptr %2, null
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.t = load i32, ptr %i.s, align 8, !tbaa !58
  %i.u = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.r, ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #7
  br label %bb.ae

bb.g:                                             ; preds = %bb.e, %bb.a
  %i.v = getelementptr i8, ptr %0, i64 377
  %.val.i.i = load i8, ptr %i.v, align 1, !tbaa !59, !range !13, !noundef !14
  %i.w = trunc nuw i8 %.val.i.i to i1
  br i1 %i.w, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %0, i64 378
  %.val5.i.i = load i8, ptr %i.x, align 2, !tbaa !60, !range !13, !noundef !14
  %i.y = trunc nuw i8 %.val5.i.i to i1
  br i1 %i.y, label %bb.i, label %ompi_comm_iface_create_check.exit, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.z = tail call i32 @opal_progress() #7        ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %.1.ph = phi i32 [ 77, %bb.g ], [ 75, %bb.i ]
  %3 = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.1.ph) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !58
  %i.ae = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.ab, ptr noundef nonnull %0, i32 noundef %i.ad, i32 noundef %3, ptr noundef nonnull @FUNC_NAME) #7 ; 0 uses
  br label %bb.ae

ompi_comm_iface_create_check.exit:                ; preds = %bb.h
  %i.af = getelementptr i8, ptr %0, i64 264       ; 3 uses
  %.val = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.ag = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.ag, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !56
  %i.aj = and i32 %i.ai, 1
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %ompi_comm_remote_size.exit, label %bb.k

bb.k:                                             ; preds = %ompi_comm_iface_create_check.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !65
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !64
  br label %ompi_comm_remote_size.exit

ompi_comm_remote_size.exit:                       ; preds = %ompi_comm_iface_create_check.exit, %bb.k
  %i.ao = phi i32 [ %i.an, %bb.k ], [ 0, %ompi_comm_iface_create_check.exit ]
  %i.ap = add nsw i32 %i.ao, %.val.val
  %i.aq = tail call i32 @ompi_comm_determine_first(ptr noundef nonnull %0, i32 noundef %1) #7
  switch i32 %i.aq, label %bb.l [
    i32 -32766, label %.thread
    i32 0, label %bb.m
  ]

bb.l:                                             ; preds = %ompi_comm_remote_size.exit
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65
  %i.au = call i32 @ompi_group_union(ptr noundef %i.ar, ptr noundef %i.at, ptr noundef nonnull %i.b) #7 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %ompi_comm_remote_size.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !65
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.ay = call i32 @ompi_group_union(ptr noundef %i.aw, ptr noundef %i.ax, ptr noundef nonnull %i.b) #7 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !57
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.bc = call i32 @ompi_comm_set(ptr noundef nonnull %i.a, ptr noundef nonnull %0, i32 noundef %i.ap, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %i.ba, ptr noundef %i.bb, ptr noundef null, i32 noundef 0) #7 ; 2 uses
  %.not46 = icmp eq i32 %i.bc, 0
  br i1 %.not46, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !66  ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load i8, ptr @opal_uses_threads, align 1, !tbaa !12, !range !13, !noundef !14
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.p, label %bb.q, !prof !16

bb.p:                                             ; preds = %bb.o
  %i.bh = atomicrmw volatile add ptr %i.be, i32 -1 monotonic, align 4
  %i.bi = add i32 %i.bh, -1
  br label %opal_thread_add_fetch_32.exit

bb.q:                                             ; preds = %bb.o
  %i.bj = load volatile i32, ptr %i.be, align 4, !tbaa !15
  %i.bk = add nsw i32 %i.bj, -1
  store volatile i32 %i.bk, ptr %i.be, align 4, !tbaa !15
  %i.bl = load volatile i32, ptr %i.be, align 4, !tbaa !15
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.p, %bb.q
  %.0.i50 = phi i32 [ %i.bi, %bb.p ], [ %i.bl, %bb.q ]
  %i.bm = icmp eq i32 %.0.i50, 0
  br i1 %i.bm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !67
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !69 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !21 ; 2 uses
  %.not6.i = icmp eq ptr %i.bq, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.i
  %i.br = phi ptr [ %i.bt, %.lr.ph.i ], [ %i.bq, %bb.r ]
  %.07.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %i.bp, %bb.r ]
  call void %i.br(ptr noundef nonnull %i.bd) #7, !inline_history !31
  %i.bs = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !21 ; 2 uses
  %.not.i51 = icmp eq ptr %i.bt, null
  br i1 %.not.i51, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !32

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !66
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.r
  %i.bu = phi ptr [ %.pre, %opal_obj_run_destructors.exit.loopexit ], [ %i.bd, %bb.r ]
  call void @free(ptr noundef %i.bu) #7
  br label %bb.s

bb.s:                                             ; preds = %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit
  store ptr @ompi_mpi_group_null, ptr %i.b, align 8, !tbaa !66
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.bw = call i32 @ompi_comm_nextcid(ptr noundef %i.bv, ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i32 noundef 64) #7 ; 2 uses
  %.not47 = icmp eq i32 %i.bw, 0
  br i1 %.not47, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bx = call i32 @ompi_comm_activate(ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i32 noundef 64) #7 ; 2 uses
  %.not48 = icmp eq i32 %i.bx, 0
  br i1 %.not48, label %bb.ad, label %.thread

.thread:                                          ; preds = %ompi_comm_remote_size.exit, %bb.n, %bb.s, %bb.t
  %.06472 = phi i32 [ %i.bx, %bb.t ], [ 17, %ompi_comm_remote_size.exit ], [ %i.bc, %bb.n ], [ %i.bw, %bb.s ] ; 4 uses
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !34  ; 6 uses
  %i.bz = icmp ne ptr %i.by, @ompi_mpi_comm_null
  %i.ca = icmp ne ptr %i.by, null
  %or.cond = and i1 %i.bz, %i.ca
  br i1 %or.cond, label %bb.u, label %bb.y

bb.u:                                             ; preds = %.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.cc = load i8, ptr @opal_uses_threads, align 1, !tbaa !12, !range !13, !noundef !14
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.v, label %bb.w, !prof !16

bb.v:                                             ; preds = %bb.u
  %i.ce = atomicrmw volatile add ptr %i.cb, i32 -1 monotonic, align 4
  %i.cf = add i32 %i.ce, -1
  br label %opal_thread_add_fetch_32.exit53

bb.w:                                             ; preds = %bb.u
  %i.cg = load volatile i32, ptr %i.cb, align 4, !tbaa !15
  %i.ch = add nsw i32 %i.cg, -1
  store volatile i32 %i.ch, ptr %i.cb, align 4, !tbaa !15
  %i.ci = load volatile i32, ptr %i.cb, align 4, !tbaa !15
  br label %opal_thread_add_fetch_32.exit53

opal_thread_add_fetch_32.exit53:                  ; preds = %bb.v, %bb.w
  %.0.i52 = phi i32 [ %i.cf, %bb.v ], [ %i.ci, %bb.w ]
  %i.cj = icmp eq i32 %.0.i52, 0
  br i1 %i.cj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %opal_thread_add_fetch_32.exit53
  %i.ck = load ptr, ptr %i.by, align 8, !tbaa !67
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !69 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !21 ; 2 uses
  %.not6.i54 = icmp eq ptr %i.cn, null
  br i1 %.not6.i54, label %opal_obj_run_destructors.exit58, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %bb.x, %.lr.ph.i55
  %i.co = phi ptr [ %i.cq, %.lr.ph.i55 ], [ %i.cn, %bb.x ]
  %.07.i56 = phi ptr [ %i.cp, %.lr.ph.i55 ], [ %i.cm, %bb.x ]
  call void %i.co(ptr noundef nonnull %i.by) #7, !inline_history !31
  %i.cp = getelementptr inbounds nuw i8, ptr %.07.i56, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !21 ; 2 uses
  %.not.i57 = icmp eq ptr %i.cq, null
  br i1 %.not.i57, label %opal_obj_run_destructors.exit58.loopexit, label %.lr.ph.i55, !llvm.loop !32

opal_obj_run_destructors.exit58.loopexit:         ; preds = %.lr.ph.i55
  %.pre81 = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %opal_obj_run_destructors.exit58

opal_obj_run_destructors.exit58:                  ; preds = %opal_obj_run_destructors.exit58.loopexit, %bb.x
  %i.cr = phi ptr [ %.pre81, %opal_obj_run_destructors.exit58.loopexit ], [ %i.by, %bb.x ]
  call void @free(ptr noundef %i.cr) #7
  store ptr null, ptr %i.a, align 8, !tbaa !34
  br label %bb.y

bb.y:                                             ; preds = %opal_thread_add_fetch_32.exit53, %opal_obj_run_destructors.exit58, %.thread
  store ptr @ompi_mpi_comm_null, ptr %2, align 8, !tbaa !34
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !57
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !58
  %i.cw = icmp sgt i32 %.06472, -1
  br i1 %i.cw, label %ompi_errcode_get_mpi_code.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.y
  %i.cx = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !15 ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.i59, label %ompi_errcode_get_mpi_code.exit

.lr.ph.i59:                                       ; preds = %.preheader.i
  %i.cz = load i8, ptr @opal_uses_threads, align 1, !tbaa !12, !range !13, !noundef !14
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %.lr.ph.split.i, label %.lr.ph.split.us.i, !prof !16

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i59
  %i.db = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !25
  %i.dd = sext i32 %i.db to i64
  %wide.trip.count.i = zext nneg i32 %i.cx to i64
  br label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.z, %.lr.ph.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.z ], [ 0, %.lr.ph.split.us.i ] ; 3 uses
  %.not.us.i = icmp slt i64 %indvars.iv.i, %i.dd
  call void @llvm.assume(i1 %.not.us.i)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !21 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !27
  %i.di = icmp eq i32 %i.dh, %.06472
  br i1 %i.di, label %.split.us.i, label %bb.z

bb.z:                                             ; preds = %.thread.i.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ompi_errcode_get_mpi_code.exit, label %.thread.i.us.i, !llvm.loop !0

bb.aa:                                            ; preds = %opal_pointer_array_get_item.exit.i
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %i.dj = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !15
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next19.i, %i.dk
  br i1 %i.dl, label %.lr.ph.split.i, label %ompi_errcode_get_mpi_code.exit, !llvm.loop !1

.lr.ph.split.i:                                   ; preds = %.lr.ph.i59, %bb.aa
  %i.dm = phi i8 [ %i.dz, %bb.aa ], [ 1, %.lr.ph.i59 ]
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %bb.aa ], [ 0, %.lr.ph.i59 ] ; 4 uses
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.do = sext i32 %i.dn to i64
  %.not.i60 = icmp slt i64 %indvars.iv18.i, %i.do
  call void @llvm.assume(i1 %.not.i60)
  %i.dp = trunc nuw i8 %i.dm to i1
  br i1 %i.dp, label %bb.ab, label %.thread.i.i, !prof !16

.thread.i.i:                                      ; preds = %.lr.ph.split.i
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !25
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv18.i
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !21
  br label %opal_pointer_array_get_item.exit.i

bb.ab:                                            ; preds = %.lr.ph.split.i
  %i.dt = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #7 ; 0 uses
  %.pre.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !12, !range !13
  %i.du = trunc nuw i8 %.pre.i.i to i1
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !25
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv18.i
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !21 ; 2 uses
  br i1 %i.du, label %bb.ac, label %opal_pointer_array_get_item.exit.i, !prof !29

bb.ac:                                            ; preds = %bb.ab
  %i.dy = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #7 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !12, !range !13
  br label %opal_pointer_array_get_item.exit.i

opal_pointer_array_get_item.exit.i:               ; preds = %bb.ac, %bb.ab, %.thread.i.i
  %i.dz = phi i8 [ 0, %.thread.i.i ], [ %.pre.i, %bb.ac ], [ 0, %bb.ab ]
  %.0.i.i61 = phi ptr [ %i.ds, %.thread.i.i ], [ %i.dx, %bb.ac ], [ %i.dx, %bb.ab ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i61, i64 16
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !27
  %i.ec = icmp eq i32 %i.eb, %.06472
  br i1 %i.ec, label %.split.us.i, label %bb.aa

.split.us.i:                                      ; preds = %.thread.i.us.i, %opal_pointer_array_get_item.exit.i
  %.us-phi.i = phi ptr [ %.0.i.i61, %opal_pointer_array_get_item.exit.i ], [ %i.df, %.thread.i.us.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 20
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !30
  br label %ompi_errcode_get_mpi_code.exit

ompi_errcode_get_mpi_code.exit:                   ; preds = %bb.z, %bb.aa, %bb.y, %.preheader.i, %.split.us.i
  %.010.i = phi i32 [ %.06472, %bb.y ], [ %i.ee, %.split.us.i ], [ 14, %bb.aa ], [ 14, %.preheader.i ], [ 14, %bb.z ]
  %i.ef = call i32 @ompi_errhandler_invoke(ptr noundef %i.ct, ptr noundef nonnull %0, i32 noundef %i.cv, i32 noundef %.010.i, ptr noundef nonnull @FUNC_NAME) #7
  br label %bb.ae

bb.ad:                                            ; preds = %bb.t
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !34
  store ptr %i.eg, ptr %2, align 8, !tbaa !34
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %ompi_errcode_get_mpi_code.exit, %bb.j, %bb.f, %ompi_comm_invalid.exit.thread
  %.0 = phi i32 [ %i.o, %ompi_comm_invalid.exit.thread ], [ %i.u, %bb.f ], [ %3, %bb.j ], [ 0, %bb.ad ], [ %i.ef, %ompi_errcode_get_mpi_code.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ompi_errhandler_invoke(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %0) unnamed_addr #3 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %1
  %3 = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !15 ; 2 uses
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %5 = load i8, ptr @opal_uses_threads, align 1, !tbaa !12, !range !13, !noundef !14
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %.lr.ph.split, label %.lr.ph.split.us, !prof !16

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %7 = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %8 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !25
  %9 = sext i32 %7 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %15, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.not.us = icmp slt i64 %indvars.iv, %9
  tail call void @llvm.assume(i1 %.not.us)
  %10 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv
  %11 = load ptr, ptr %10, align 8, !tbaa !21     ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %13 = load i32, ptr %12, align 8, !tbaa !27
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %.split.us, label %15

15:                                               ; preds = %.thread.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.thread.i.us, !llvm.loop !0

16:                                               ; preds = %opal_pointer_array_get_item.exit
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %17 = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !15
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %indvars.iv.next19, %18
  br i1 %19, label %.lr.ph.split, label %.loopexit, !llvm.loop !1

.lr.ph.split:                                     ; preds = %.lr.ph, %16
  %20 = phi i8 [ %35, %16 ], [ 1, %.lr.ph ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %16 ], [ 0, %.lr.ph ] ; 4 uses
  %21 = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %22 = sext i32 %21 to i64
  %.not = icmp slt i64 %indvars.iv18, %22
  tail call void @llvm.assume(i1 %.not)
  %23 = trunc nuw i8 %20 to i1
  br i1 %23, label %27, label %.thread.i, !prof !16

.thread.i:                                        ; preds = %.lr.ph.split
  %24 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !25
  %25 = getelementptr inbounds nuw [8 x i8], ptr %24, i64 %indvars.iv18
  %26 = load ptr, ptr %25, align 8, !tbaa !21
  br label %opal_pointer_array_get_item.exit

27:                                               ; preds = %.lr.ph.split
  %28 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #7 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !12, !range !13
  %29 = trunc nuw i8 %.pre.i to i1
  %30 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !25
  %31 = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %indvars.iv18
  %32 = load ptr, ptr %31, align 8, !tbaa !21     ; 2 uses
  br i1 %29, label %33, label %opal_pointer_array_get_item.exit, !prof !29

33:                                               ; preds = %27
  %34 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #7 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !12, !range !13
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %27, %33
  %35 = phi i8 [ 0, %.thread.i ], [ %.pre, %33 ], [ 0, %27 ]
  %.0.i = phi ptr [ %26, %.thread.i ], [ %32, %33 ], [ %32, %27 ] ; 2 uses
  %36 = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %37 = load i32, ptr %36, align 8, !tbaa !27
  %38 = icmp eq i32 %37, %0
  br i1 %38, label %.split.us, label %16

.split.us:                                        ; preds = %.thread.i.us, %opal_pointer_array_get_item.exit
  %.us-phi = phi ptr [ %.0.i, %opal_pointer_array_get_item.exit ], [ %11, %.thread.i.us ]
  %39 = getelementptr inbounds nuw i8, ptr %.us-phi, i64 20
  %40 = load i32, ptr %39, align 4, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %15, %16, %.preheader, %.split.us, %1
  %.010 = phi i32 [ %0, %1 ], [ %40, %.split.us ], [ 14, %16 ], [ 14, %.preheader ], [ 14, %15 ]
  ret i32 %.010
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @ompi_comm_determine_first(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ompi_group_union(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ompi_comm_set(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare i32 @ompi_comm_nextcid(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i32 @ompi_comm_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

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

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22, !28}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"_Bool", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{!7, !7, i64 0}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{!"p1 _ZTS12opal_class_t", !10, i64 0}
!18 = !{!"opal_object_t", !17, i64 0, !7, i64 8}
!19 = !{!"opal_mutex_t", !18, i64 0, !6, i64 16, !7, i64 56}
!20 = !{!"any p2 pointer", !10, i64 0}
!21 = !{!10, !10, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"p1 long", !10, i64 0}
!24 = !{!"opal_pointer_array_t", !18, i64 0, !19, i64 16, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !23, i64 104, !20, i64 112}
!25 = !{!24, !20, i64 112}
!26 = !{!"ompi_errcode_intern_t", !18, i64 0, !7, i64 16, !7, i64 20, !7, i64 24, !6, i64 28}
!27 = !{!26, !7, i64 16}
!28 = !{!"llvm.loop.unswitch.partial.disable"}
!29 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!30 = !{!26, !7, i64 20}
!31 = distinct !{null}
!32 = distinct !{!32, !22}
!33 = !{!"p1 _ZTS19ompi_communicator_t", !10, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"p1 _ZTS19opal_hash_element_t", !10, i64 0}
!36 = !{!"long", !6, i64 0}
!37 = !{!"p1 _ZTS24opal_hash_type_methods_t", !10, i64 0}
!38 = !{!"opal_hash_table_t", !18, i64 0, !35, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !37, i64 64}
!39 = !{!"p1 _ZTS11opal_info_t", !10, i64 0}
!40 = !{!"opal_infosubscriber_t", !18, i64 0, !38, i64 16, !39, i64 88}
!41 = !{!"p1 omnipotent char", !10, i64 0}
!42 = !{!"ompi_comm_extended_cid_t", !36, i64 0, !6, i64 8}
!43 = !{!"ompi_comm_extended_cid_block_t", !42, i64 0, !36, i64 16, !6, i64 24, !6, i64 25}
!44 = !{!"p1 int", !10, i64 0}
!45 = !{!"p1 _ZTS12ompi_group_t", !10, i64 0}
!46 = !{!"p1 _ZTS17opal_hash_table_t", !10, i64 0}
!47 = !{!"p1 _ZTS22mca_topo_base_module_t", !10, i64 0}
!48 = !{!"p2 _ZTS20ompi_peruse_handle_t", !20, i64 0}
!49 = !{!"p1 _ZTS17ompi_errhandler_t", !10, i64 0}
!50 = !{!"p1 _ZTS14mca_pml_comm_t", !10, i64 0}
!51 = !{!"p1 _ZTS14mca_mtl_comm_t", !10, i64 0}
!52 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !10, i64 0}
!53 = !{!"p1 _ZTS15ompi_instance_t", !10, i64 0}
!54 = !{!"p1 _ZTS13opal_object_t", !10, i64 0}
!55 = !{!"ompi_communicator_t", !40, i64 0, !19, i64 96, !41, i64 160, !42, i64 168, !43, i64 184, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !44, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !45, i64 264, !45, i64 272, !33, i64 280, !46, i64 288, !47, i64 296, !48, i64 304, !49, i64 312, !7, i64 320, !50, i64 328, !51, i64 336, !52, i64 344, !53, i64 352, !54, i64 360, !7, i64 368, !7, i64 372, !11, i64 376, !11, i64 377, !11, i64 378}
!56 = !{!55, !7, i64 224}
!57 = !{!55, !49, i64 312}
!58 = !{!55, !7, i64 320}
!59 = !{!55, !11, i64 377}
!60 = !{!55, !11, i64 378}
!61 = !{!55, !45, i64 264}
!62 = !{!"p2 _ZTS11ompi_proc_t", !20, i64 0}
!63 = !{!"ompi_group_t", !18, i64 0, !7, i64 16, !7, i64 20, !7, i64 24, !62, i64 32, !7, i64 40, !45, i64 48, !6, i64 56, !53, i64 72}
!64 = !{!63, !7, i64 16}
!65 = !{!55, !45, i64 272}
!66 = !{!45, !45, i64 0}
!67 = !{!18, !17, i64 0}
!68 = !{!"opal_class_t", !41, i64 0, !17, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !7, i64 36, !20, i64 40, !20, i64 48, !36, i64 56}
!69 = !{!68, !20, i64 48}
end_hunk_0
