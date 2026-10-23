Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/cart_create?download=true
inline.NumInlined: 21
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
@FUNC_NAME = internal constant [16 x i8] c"MPI_Cart_create\00", align 16
@ompi_mpi_comm_world = external global %struct.ompi_predefined_communicator_t, align 8
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@ompi_mpi_comm_null = external global %struct.ompi_predefined_communicator_t, align 8

@MPI_Cart_create = weak alias i32 (ptr, i32, ptr, ptr, i32, ptr), ptr @PMPI_Cart_create

; Function Attrs: nounwind uwtable
define i32 @PMPI_Cart_create(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !11, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !14
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = icmp eq ptr %0, null
  %i.h = icmp eq ptr %0, @ompi_mpi_comm_null
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %ompi_comm_invalid.exit.thread, label %ompi_comm_invalid.exit

ompi_comm_invalid.exit:                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = load i32, ptr %i.i, align 8, !tbaa !57   ; 2 uses
  %i.k = and i32 %i.j, 48
  %or.cond7.i.not = icmp eq i32 %i.k, 0
  br i1 %or.cond7.i.not, label %bb.e, label %ompi_comm_invalid.exit.thread

ompi_comm_invalid.exit.thread:                    ; preds = %bb.d, %ompi_comm_invalid.exit
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 312), align 8, !tbaa !58
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 320), align 8, !tbaa !59
  %i.n = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.l, ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.m, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.z

bb.e:                                             ; preds = %ompi_comm_invalid.exit
  %i.o = and i32 %i.j, 1
  %.not53 = icmp eq i32 %i.o, 0
  br i1 %.not53, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.z

bb.g:                                             ; preds = %bb.e
  %i.q = icmp slt i32 %1, 0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.u = load i32, ptr %i.t, align 8, !tbaa !59
  %i.v = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.s, ptr noundef nonnull %0, i32 noundef %i.u, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.z

bb.i:                                             ; preds = %bb.g
  %.not54 = icmp eq i32 %1, 0
  br i1 %.not54, label %.thread88, label %bb.j

.thread88:                                        ; preds = %bb.i
  %i.w = getelementptr i8, ptr %0, i64 264
  %.val89 = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.x = getelementptr i8, ptr %.val89, i64 16
  %.val.val90 = load i32, ptr %i.x, align 8, !tbaa !63
  br label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.y = icmp eq ptr %2, null
  %i.z = icmp eq ptr %3, null
  %or.cond = or i1 %i.y, %i.z
  %i.aa = icmp eq ptr %5, null
  %or.cond3 = or i1 %or.cond, %i.aa
  br i1 %or.cond3, label %bb.k, label %.lr.ph.preheader

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !59
  %i.af = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.ac, ptr noundef nonnull %0, i32 noundef %i.ae, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.z

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %0, i64 264
  %.val = load ptr, ptr %i.ag, align 8, !tbaa !60
  %i.ah = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.ah, align 8, !tbaa !63 ; 2 uses
  %i.ai = zext nneg i32 %1 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ai, 2147483640              ; 4 uses
  %i.aj = shl nuw nsw i64 %n.vec, 2
  %i.ak = getelementptr i8, ptr %2, i64 %i.aj
  %i.al = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi102 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ap, %vector.body ]
  %i.am = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !14
  %wide.load103 = load <4 x i32>, ptr %i.an, align 4, !tbaa !14
  %i.ao = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ap = mul <4 x i32> %wide.load103, %vec.phi102 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ai
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader109

.lr.ph.preheader109:                              ; preds = %.lr.ph.preheader, %middle.block
  %.04677.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  %.04776.ph = phi i32 [ 1, %.lr.ph.preheader ], [ %i.ar, %middle.block ]
  %.04875.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader109, %.lr.ph
  %.04677 = phi ptr [ %i.av, %.lr.ph ], [ %.04677.ph, %.lr.ph.preheader109 ] ; 2 uses
  %.04776 = phi i32 [ %i.at, %.lr.ph ], [ %.04776.ph, %.lr.ph.preheader109 ]
  %.04875 = phi i32 [ %i.au, %.lr.ph ], [ %.04875.ph, %.lr.ph.preheader109 ]
  %i.as = load i32, ptr %.04677, align 4, !tbaa !14
  %i.at = mul nsw i32 %i.as, %.04776              ; 2 uses
  %i.au = add nuw nsw i32 %.04875, 1              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.04677, i64 4
  %exitcond.not = icmp eq i32 %i.au, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.thread88
  %.val.val91 = phi i32 [ %.val.val90, %.thread88 ], [ %.val.val, %middle.block ], [ %.val.val, %.lr.ph ]
  %.047.lcssa = phi i32 [ 1, %.thread88 ], [ %i.ar, %middle.block ], [ %i.at, %.lr.ph ]
  %.not55 = icmp slt i32 %.val.val91, %.047.lcssa
  br i1 %.not55, label %.thread, label %bb.l

.thread:                                          ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !59
  %i.ba = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.ax, ptr noundef nonnull %0, i32 noundef %i.az, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.z

bb.l:                                             ; preds = %._crit_edge, %bb.a
  %i.bb = call i32 @mca_topo_base_comm_select(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 256) #8 ; 2 uses
  %.not56 = icmp eq i32 %i.bb, 0
  br i1 %.not56, label %bb.m, label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr i8, ptr %0, i64 377
  %.val.i.i = load i8, ptr %i.bc, align 1, !tbaa !66, !range !12, !noundef !13
  %i.bd = trunc nuw i8 %.val.i.i to i1
  br i1 %i.bd, label %bb.p, label %bb.n, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr i8, ptr %0, i64 378
  %.val5.i.i = load i8, ptr %i.be, align 2, !tbaa !67, !range !12, !noundef !13
  %i.bf = trunc nuw i8 %.val5.i.i to i1
  br i1 %i.bf, label %bb.o, label %ompi_comm_iface_create_check.exit, !prof !15

bb.o:                                             ; preds = %bb.n
  %i.bg = call i32 @opal_progress() #8            ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o
  %.064.ph = phi i32 [ 77, %bb.m ], [ 75, %bb.o ]
  %6 = call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.064.ph) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !58
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !59
  %i.bl = call i32 @ompi_errhandler_invoke(ptr noundef %i.bi, ptr noundef nonnull %0, i32 noundef %i.bk, i32 noundef %6, ptr noundef nonnull @FUNC_NAME) #8 ; 0 uses
  br label %bb.z

ompi_comm_iface_create_check.exit:                ; preds = %bb.n
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !69
  %i.bp = icmp ne i32 %4, 0
  %i.bq = call i32 %i.bo(ptr noundef %i.bm, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %i.bp, ptr noundef %5) #8 ; 5 uses
  %.not57 = icmp eq i32 %i.bq, 0
  br i1 %.not57, label %bb.z, label %bb.q

bb.q:                                             ; preds = %ompi_comm_iface_create_check.exit
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !68  ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load i8, ptr @opal_uses_threads, align 1, !tbaa !11, !range !12, !noundef !13
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.r, label %bb.s, !prof !15

bb.r:                                             ; preds = %bb.q
  %i.bv = atomicrmw volatile add ptr %i.bs, i32 -1 monotonic, align 4
  %i.bw = add i32 %i.bv, -1
  br label %opal_thread_add_fetch_32.exit

bb.s:                                             ; preds = %bb.q
  %i.bx = load volatile i32, ptr %i.bs, align 4, !tbaa !14
  %i.by = add nsw i32 %i.bx, -1
  store volatile i32 %i.by, ptr %i.bs, align 4, !tbaa !14
  %i.bz = load volatile i32, ptr %i.bs, align 4, !tbaa !14
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.r, %bb.s
  %.0.i59 = phi i32 [ %i.bw, %bb.r ], [ %i.bz, %bb.s ]
  %i.ca = icmp eq i32 %.0.i59, 0
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.cb = load ptr, ptr %i.br, align 8, !tbaa !70
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !72 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !22 ; 2 uses
  %.not6.i = icmp eq ptr %i.ce, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %i.cf = phi ptr [ %i.ch, %.lr.ph.i ], [ %i.ce, %bb.t ]
  %.07.i = phi ptr [ %i.cg, %.lr.ph.i ], [ %i.cd, %bb.t ]
  call void %i.cf(ptr noundef nonnull %i.br) #8, !inline_history !33
  %i.cg = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !22 ; 2 uses
  %.not.i = icmp eq ptr %i.ch, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !34

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !68
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.t
  %i.ci = phi ptr [ %.pre, %opal_obj_run_destructors.exit.loopexit ], [ %i.br, %bb.t ]
  call void @free(ptr noundef %i.ci) #8
  store ptr null, ptr %i.a, align 8, !tbaa !68
  br label %bb.u

bb.u:                                             ; preds = %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !58
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !59
  %i.cn = icmp sgt i32 %i.bq, -1
  br i1 %i.cn, label %ompi_errcode_get_mpi_code.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.u
  %i.co = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !14 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i60, label %ompi_errcode_get_mpi_code.exit

.lr.ph.i60:                                       ; preds = %.preheader.i
  %i.cq = load i8, ptr @opal_uses_threads, align 1, !tbaa !11, !range !12, !noundef !13
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %.lr.ph.split.i, label %.lr.ph.split.us.i, !prof !15

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i60
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !25
  %i.cu = sext i32 %i.cs to i64
  %wide.trip.count.i = zext nneg i32 %i.co to i64
  br label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.v, %.lr.ph.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.v ], [ 0, %.lr.ph.split.us.i ] ; 3 uses
  %.not.us.i = icmp slt i64 %indvars.iv.i, %i.cu
  call void @llvm.assume(i1 %.not.us.i)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.i
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !22 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !27
  %i.cz = icmp eq i32 %i.cy, %i.bq
  br i1 %i.cz, label %.split.us.i, label %bb.v

bb.v:                                             ; preds = %.thread.i.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ompi_errcode_get_mpi_code.exit, label %.thread.i.us.i, !llvm.loop !0

bb.w:                                             ; preds = %opal_pointer_array_get_item.exit.i
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %i.da = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !14
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next19.i, %i.db
  br i1 %i.dc, label %.lr.ph.split.i, label %ompi_errcode_get_mpi_code.exit, !llvm.loop !1

.lr.ph.split.i:                                   ; preds = %.lr.ph.i60, %bb.w
  %i.dd = phi i8 [ %i.dq, %bb.w ], [ 1, %.lr.ph.i60 ]
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %bb.w ], [ 0, %.lr.ph.i60 ] ; 4 uses
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.df = sext i32 %i.de to i64
  %.not.i61 = icmp slt i64 %indvars.iv18.i, %i.df
  call void @llvm.assume(i1 %.not.i61)
  %i.dg = trunc nuw i8 %i.dd to i1
  br i1 %i.dg, label %bb.x, label %.thread.i.i, !prof !15

.thread.i.i:                                      ; preds = %.lr.ph.split.i
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !25
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv18.i
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !22
  br label %opal_pointer_array_get_item.exit.i

bb.x:                                             ; preds = %.lr.ph.split.i
  %i.dk = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #8 ; 0 uses
  %.pre.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !11, !range !12
  %i.dl = trunc nuw i8 %.pre.i.i to i1
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !25
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv18.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !22 ; 2 uses
  br i1 %i.dl, label %bb.y, label %opal_pointer_array_get_item.exit.i, !prof !29

bb.y:                                             ; preds = %bb.x
  %i.dp = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #8 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !11, !range !12
  br label %opal_pointer_array_get_item.exit.i

opal_pointer_array_get_item.exit.i:               ; preds = %bb.y, %bb.x, %.thread.i.i
  %i.dq = phi i8 [ 0, %.thread.i.i ], [ %.pre.i, %bb.y ], [ 0, %bb.x ]
  %.0.i.i62 = phi ptr [ %i.dj, %.thread.i.i ], [ %i.do, %bb.y ], [ %i.do, %bb.x ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i62, i64 16
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !27
  %i.dt = icmp eq i32 %i.ds, %i.bq
  br i1 %i.dt, label %.split.us.i, label %bb.w

.split.us.i:                                      ; preds = %.thread.i.us.i, %opal_pointer_array_get_item.exit.i
  %.us-phi.i = phi ptr [ %.0.i.i62, %opal_pointer_array_get_item.exit.i ], [ %i.cw, %.thread.i.us.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 20
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !30
  br label %ompi_errcode_get_mpi_code.exit

ompi_errcode_get_mpi_code.exit:                   ; preds = %bb.v, %bb.w, %bb.u, %.preheader.i, %.split.us.i
  %.010.i = phi i32 [ %i.bq, %bb.u ], [ %i.dv, %.split.us.i ], [ 14, %bb.w ], [ 14, %.preheader.i ], [ 14, %bb.v ]
  %i.dw = call i32 @ompi_errhandler_invoke(ptr noundef %i.ck, ptr noundef %0, i32 noundef %i.cm, i32 noundef %.010.i, ptr noundef nonnull @FUNC_NAME) #8
  br label %bb.z

bb.z:                                             ; preds = %.thread, %ompi_comm_iface_create_check.exit, %bb.l, %ompi_errcode_get_mpi_code.exit, %bb.p, %bb.k, %bb.h, %bb.f, %ompi_comm_invalid.exit.thread
  %.1 = phi i32 [ %i.n, %ompi_comm_invalid.exit.thread ], [ %i.p, %bb.f ], [ %i.v, %bb.h ], [ %i.af, %bb.k ], [ %i.ba, %.thread ], [ %6, %bb.p ], [ %i.bb, %bb.l ], [ %i.dw, %ompi_errcode_get_mpi_code.exit ], [ 0, %ompi_comm_iface_create_check.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ompi_errhandler_invoke(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %0) unnamed_addr #3 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %1
  %3 = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !14 ; 2 uses
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %5 = load i8, ptr @opal_uses_threads, align 1, !tbaa !11, !range !12, !noundef !13
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %.lr.ph.split, label %.lr.ph.split.us, !prof !15

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
  %11 = load ptr, ptr %10, align 8, !tbaa !22     ; 2 uses
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
  %17 = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !14
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
  br i1 %23, label %27, label %.thread.i, !prof !15

.thread.i:                                        ; preds = %.lr.ph.split
  %24 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !25
  %25 = getelementptr inbounds nuw [8 x i8], ptr %24, i64 %indvars.iv18
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  br label %opal_pointer_array_get_item.exit

27:                                               ; preds = %.lr.ph.split
  %28 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #8 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !11, !range !12
  %29 = trunc nuw i8 %.pre.i to i1
  %30 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !25
  %31 = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %indvars.iv18
  %32 = load ptr, ptr %31, align 8, !tbaa !22     ; 2 uses
  br i1 %29, label %33, label %opal_pointer_array_get_item.exit, !prof !29

33:                                               ; preds = %27
  %34 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #8 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !11, !range !12
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

declare i32 @mca_topo_base_comm_select(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare i32 @opal_progress() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21, !28}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"_Bool", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!7, !7, i64 0}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"p1 _ZTS12opal_class_t", !16, i64 0}
!18 = !{!"opal_object_t", !17, i64 0, !7, i64 8}
!19 = !{!"opal_mutex_t", !18, i64 0, !6, i64 16, !7, i64 56}
!20 = !{!"any p2 pointer", !16, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!16, !16, i64 0}
!23 = !{!"p1 long", !16, i64 0}
!24 = !{!"opal_pointer_array_t", !18, i64 0, !19, i64 16, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !23, i64 104, !20, i64 112}
!25 = !{!24, !20, i64 112}
!26 = !{!"ompi_errcode_intern_t", !18, i64 0, !7, i64 16, !7, i64 20, !7, i64 24, !6, i64 28}
!27 = !{!26, !7, i64 16}
!28 = !{!"llvm.loop.unswitch.partial.disable"}
!29 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!30 = !{!26, !7, i64 20}
!31 = distinct !{!31, !21, !64, !65}
!32 = distinct !{!32, !21, !65, !64}
!33 = distinct !{null}
!34 = distinct !{!34, !21}
!35 = !{!"p1 _ZTS19opal_hash_element_t", !16, i64 0}
!36 = !{!"long", !6, i64 0}
!37 = !{!"p1 _ZTS24opal_hash_type_methods_t", !16, i64 0}
!38 = !{!"opal_hash_table_t", !18, i64 0, !35, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !37, i64 64}
!39 = !{!"p1 _ZTS11opal_info_t", !16, i64 0}
!40 = !{!"opal_infosubscriber_t", !18, i64 0, !38, i64 16, !39, i64 88}
!41 = !{!"p1 omnipotent char", !16, i64 0}
!42 = !{!"ompi_comm_extended_cid_t", !36, i64 0, !6, i64 8}
!43 = !{!"ompi_comm_extended_cid_block_t", !42, i64 0, !36, i64 16, !6, i64 24, !6, i64 25}
!44 = !{!"p1 int", !16, i64 0}
!45 = !{!"p1 _ZTS12ompi_group_t", !16, i64 0}
!46 = !{!"p1 _ZTS19ompi_communicator_t", !16, i64 0}
!47 = !{!"p1 _ZTS17opal_hash_table_t", !16, i64 0}
!48 = !{!"p1 _ZTS22mca_topo_base_module_t", !16, i64 0}
!49 = !{!"p2 _ZTS20ompi_peruse_handle_t", !20, i64 0}
!50 = !{!"p1 _ZTS17ompi_errhandler_t", !16, i64 0}
!51 = !{!"p1 _ZTS14mca_pml_comm_t", !16, i64 0}
!52 = !{!"p1 _ZTS14mca_mtl_comm_t", !16, i64 0}
!53 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !16, i64 0}
!54 = !{!"p1 _ZTS15ompi_instance_t", !16, i64 0}
!55 = !{!"p1 _ZTS13opal_object_t", !16, i64 0}
!56 = !{!"ompi_communicator_t", !40, i64 0, !19, i64 96, !41, i64 160, !42, i64 168, !43, i64 184, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !44, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !45, i64 264, !45, i64 272, !46, i64 280, !47, i64 288, !48, i64 296, !49, i64 304, !50, i64 312, !7, i64 320, !51, i64 328, !52, i64 336, !53, i64 344, !54, i64 352, !55, i64 360, !7, i64 368, !7, i64 372, !10, i64 376, !10, i64 377, !10, i64 378}
!57 = !{!56, !7, i64 224}
!58 = !{!56, !50, i64 312}
!59 = !{!56, !7, i64 320}
!60 = !{!56, !45, i64 264}
!61 = !{!"p2 _ZTS11ompi_proc_t", !20, i64 0}
!62 = !{!"ompi_group_t", !18, i64 0, !7, i64 16, !7, i64 20, !7, i64 24, !61, i64 32, !7, i64 40, !45, i64 48, !6, i64 56, !54, i64 72}
!63 = !{!62, !7, i64 16}
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = !{!56, !10, i64 377}
!67 = !{!56, !10, i64 378}
!68 = !{!48, !48, i64 0}
!69 = !{!6, !6, i64 0}
!70 = !{!18, !17, i64 0}
!71 = !{!"opal_class_t", !41, i64 0, !17, i64 8, !16, i64 16, !16, i64 24, !7, i64 32, !7, i64 36, !20, i64 40, !20, i64 48, !36, i64 56}
!72 = !{!71, !20, i64 48}
end_hunk_0
