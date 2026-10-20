Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topo_base_graph_create?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
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
%struct.opal_class_t = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }

@ompi_mpi_comm_null = external global %struct.ompi_predefined_communicator_t, align 8
@.str = private unnamed_addr constant [33 x i8] c"mca_topo_base_comm_graph_2_2_0_t\00", align 1
@opal_object_t_class = external global %struct.opal_class_t, align 8
@mca_topo_base_comm_graph_2_2_0_t_class = global %struct.opal_class_t { ptr @.str, ptr @opal_object_t_class, ptr @mca_topo_base_comm_graph_2_2_0_construct, ptr @mca_topo_base_comm_graph_2_2_0_destruct, i32 0, i32 0, ptr null, ptr null, i64 40 }, align 8
@opal_class_init_epoch = external local_unnamed_addr global i32, align 4
@opal_uses_threads = external local_unnamed_addr global i8, align 1

; Function Attrs: nounwind uwtable
define i32 @mca_topo_base_graph_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i1 noundef zeroext %5, ptr noundef initializes((0, 8)) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %5 to i8
  store ptr @ompi_mpi_comm_null, ptr %6, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !49
  %i.f = icmp slt i32 %i.e, %2
  br i1 %i.f, label %mca_topo_base_graph_allocate.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !50   ; 2 uses
  %.not.i = icmp sge i32 %i.h, %2
  %i.i = icmp eq i32 %i.h, -32766
  %or.cond.i = or i1 %.not.i, %i.i
  br i1 %or.cond.i, label %mca_topo_base_graph_allocate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_topo_base_comm_graph_2_2_0_t_class, i64 56), align 8, !tbaa !52
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #8 ; 11 uses
  %i.l = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !53
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_topo_base_comm_graph_2_2_0_t_class, i64 32), align 8, !tbaa !54
  %.not.i.i = icmp eq i32 %i.l, %i.m
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @opal_class_initialize(ptr noundef nonnull @mca_topo_base_comm_graph_2_2_0_t_class) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not9.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i, label %mca_topo_base_graph_allocate.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @mca_topo_base_comm_graph_2_2_0_t_class, ptr %i.k, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  store volatile i32 1, ptr %i.n, align 8, !tbaa !56
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_topo_base_comm_graph_2_2_0_t_class, i64 40), align 8, !tbaa !57 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58   ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %i.q = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %bb.f ]
  %.07.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.o, %bb.f ]
  tail call void %i.q(ptr noundef nonnull %i.k) #9, !inline_history !16
  %i.r = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !17

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 %2, ptr %i.t, align 8, !tbaa !13
  %i.u = sext i32 %2 to i64                       ; 2 uses
  %i.v = shl nsw i64 %i.u, 2                      ; 2 uses
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !14
  %7 = getelementptr [4 x i8], ptr %3, i64 %i.u
  %8 = getelementptr i8, ptr %7, i64 -4           ; 2 uses
  %i.y = load i32, ptr %8, align 4, !tbaa !53
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 2
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !15
  %i.ad = icmp eq ptr %i.w, null
  %i.ae = icmp eq ptr %i.ab, null
  %spec.select.i = or i1 %i.ad, %i.ae
  br i1 %spec.select.i, label %bb.g, label %bb.k, !prof !60

bb.g:                                             ; preds = %.loopexit.i
  %i.af = load i8, ptr @opal_uses_threads, align 1, !tbaa !61, !range !62, !noundef !63
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.h, label %bb.i, !prof !60

bb.h:                                             ; preds = %bb.g
  %i.ah = atomicrmw volatile add ptr %i.n, i32 -1 monotonic, align 4
  %i.ai = add i32 %i.ah, -1
  br label %opal_thread_add_fetch_32.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aj = load volatile i32, ptr %i.n, align 8, !tbaa !53
  %i.ak = add nsw i32 %i.aj, -1
  store volatile i32 %i.ak, ptr %i.n, align 8, !tbaa !53
  %i.al = load volatile i32, ptr %i.n, align 8, !tbaa !53
  br label %opal_thread_add_fetch_32.exit.i

opal_thread_add_fetch_32.exit.i:                  ; preds = %bb.i, %bb.h
  %.0.i.i = phi i32 [ %i.ai, %bb.h ], [ %i.al, %bb.i ]
  %i.am = icmp eq i32 %.0.i.i, 0
  br i1 %i.am, label %bb.j, label %mca_topo_base_graph_allocate.exit.thread

bb.j:                                             ; preds = %opal_thread_add_fetch_32.exit.i
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !64 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !58 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.aq, null
  br i1 %.not6.i.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %i.ar = phi ptr [ %i.at, %.lr.ph.i.i ], [ %i.aq, %bb.j ]
  %.07.i.i = phi ptr [ %i.as, %.lr.ph.i.i ], [ %i.ap, %bb.j ]
  tail call void %i.ar(ptr noundef nonnull %i.k) #9, !inline_history !18
  %i.as = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i39.i = icmp eq ptr %i.at, null
  br i1 %.not.i39.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i.i, !llvm.loop !19

opal_obj_run_destructors.exit.i:                  ; preds = %.lr.ph.i.i, %bb.j
  tail call void @free(ptr noundef nonnull %i.k) #9
  br label %mca_topo_base_graph_allocate.exit.thread

bb.k:                                             ; preds = %.loopexit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull readonly align 4 %3, i64 %i.v, i1 false)
  %i.au = load i32, ptr %8, align 4, !tbaa !53
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr readonly align 4 %4, i64 %i.aw, i1 false)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !46
  br label %mca_topo_base_graph_allocate.exit

mca_topo_base_graph_allocate.exit:                ; preds = %bb.k, %bb.b
  %i.ax = phi ptr [ %i.c, %bb.b ], [ %.pre, %bb.k ]
  %.043 = phi ptr [ null, %bb.b ], [ %i.k, %bb.k ] ; 9 uses
  %i.ay = tail call ptr @ompi_group_flatten(ptr noundef %i.ax, i32 noundef %2) #9 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.l, label %bb.p, !prof !60

bb.l:                                             ; preds = %mca_topo_base_graph_allocate.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.043, i64 8 ; 4 uses
  %i.bb = load i8, ptr @opal_uses_threads, align 1, !tbaa !61, !range !62, !noundef !63
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.m, label %bb.n, !prof !60

bb.m:                                             ; preds = %bb.l
  %i.bd = atomicrmw volatile add ptr %i.ba, i32 -1 monotonic, align 4
  %i.be = add i32 %i.bd, -1
  br label %opal_thread_add_fetch_32.exit

bb.n:                                             ; preds = %bb.l
  %i.bf = load volatile i32, ptr %i.ba, align 4, !tbaa !53
  %i.bg = add nsw i32 %i.bf, -1
  store volatile i32 %i.bg, ptr %i.ba, align 4, !tbaa !53
  %i.bh = load volatile i32, ptr %i.ba, align 4, !tbaa !53
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.m, %bb.n
  %.0.i28 = phi i32 [ %i.be, %bb.m ], [ %i.bh, %bb.n ]
  %i.bi = icmp eq i32 %.0.i28, 0
  br i1 %i.bi, label %bb.o, label %mca_topo_base_graph_allocate.exit.thread

bb.o:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.bj = load ptr, ptr %.043, align 8, !tbaa !55
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !64 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !58 ; 2 uses
  %.not6.i = icmp eq ptr %i.bm, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %i.bn = phi ptr [ %i.bp, %.lr.ph.i ], [ %i.bm, %bb.o ]
  %.07.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %i.bl, %bb.o ]
  tail call void %i.bn(ptr noundef nonnull %.043) #9, !inline_history !20
  %i.bo = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !58 ; 2 uses
  %.not.i29 = icmp eq ptr %i.bp, null
  br i1 %.not.i29, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !19

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.o
  tail call void @free(ptr noundef nonnull %.043) #9
  br label %mca_topo_base_graph_allocate.exit.thread

bb.p:                                             ; preds = %mca_topo_base_graph_allocate.exit
  %i.bq = tail call i32 @ompi_comm_create(ptr noundef nonnull %1, ptr noundef nonnull %i.ay, ptr noundef nonnull %6) #9 ; 3 uses
  %.not26 = icmp eq i32 %i.bq, 0
  br i1 %.not26, label %bb.u, label %bb.q, !prof !65

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.043, i64 8 ; 4 uses
  %i.bs = load i8, ptr @opal_uses_threads, align 1, !tbaa !61, !range !62, !noundef !63
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.r, label %bb.s, !prof !60

bb.r:                                             ; preds = %bb.q
  %i.bu = atomicrmw volatile add ptr %i.br, i32 -1 monotonic, align 4
  %i.bv = add i32 %i.bu, -1
  br label %opal_thread_add_fetch_32.exit31

bb.s:                                             ; preds = %bb.q
  %i.bw = load volatile i32, ptr %i.br, align 4, !tbaa !53
  %i.bx = add nsw i32 %i.bw, -1
  store volatile i32 %i.bx, ptr %i.br, align 4, !tbaa !53
  %i.by = load volatile i32, ptr %i.br, align 4, !tbaa !53
  br label %opal_thread_add_fetch_32.exit31

opal_thread_add_fetch_32.exit31:                  ; preds = %bb.r, %bb.s
  %.0.i30 = phi i32 [ %i.bv, %bb.r ], [ %i.by, %bb.s ]
  %i.bz = icmp eq i32 %.0.i30, 0
  br i1 %i.bz, label %bb.t, label %mca_topo_base_graph_allocate.exit.thread

bb.t:                                             ; preds = %opal_thread_add_fetch_32.exit31
  %i.ca = load ptr, ptr %.043, align 8, !tbaa !55
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !64 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !58 ; 2 uses
  %.not6.i32 = icmp eq ptr %i.cd, null
  br i1 %.not6.i32, label %opal_obj_run_destructors.exit36, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.t, %.lr.ph.i33
  %i.ce = phi ptr [ %i.cg, %.lr.ph.i33 ], [ %i.cd, %bb.t ]
  %.07.i34 = phi ptr [ %i.cf, %.lr.ph.i33 ], [ %i.cc, %bb.t ]
  tail call void %i.ce(ptr noundef nonnull %.043) #9, !inline_history !20
  %i.cf = getelementptr inbounds nuw i8, ptr %.07.i34, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !58 ; 2 uses
  %.not.i35 = icmp eq ptr %i.cg, null
  br i1 %.not.i35, label %opal_obj_run_destructors.exit36, label %.lr.ph.i33, !llvm.loop !19

opal_obj_run_destructors.exit36:                  ; preds = %.lr.ph.i33, %bb.t
  tail call void @free(ptr noundef nonnull %.043) #9
  br label %mca_topo_base_graph_allocate.exit.thread

bb.u:                                             ; preds = %bb.p
  %i.ch = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %.not27 = icmp eq ptr %i.ch, @ompi_mpi_comm_null
  br i1 %.not27, label %mca_topo_base_graph_allocate.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 296
  store ptr %0, ptr %i.ci, align 8, !tbaa !66
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.043, ptr %i.cj, align 8, !tbaa !67
  %i.ck = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 224 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !68
  %i.cn = or i32 %i.cm, 512
  store i32 %i.cn, ptr %i.cl, align 8, !tbaa !68
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 296
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !66
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  store i8 %i.a, ptr %i.cq, align 4, !tbaa !71
  br label %mca_topo_base_graph_allocate.exit.thread

mca_topo_base_graph_allocate.exit.thread:         ; preds = %opal_obj_run_destructors.exit.i, %opal_thread_add_fetch_32.exit.i, %bb.a, %bb.e, %bb.u, %bb.v, %opal_thread_add_fetch_32.exit31, %opal_obj_run_destructors.exit36, %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit
  %.0 = phi i32 [ %i.bq, %opal_thread_add_fetch_32.exit31 ], [ 0, %bb.u ], [ -2, %opal_thread_add_fetch_32.exit ], [ -2, %opal_obj_run_destructors.exit ], [ %i.bq, %opal_obj_run_destructors.exit36 ], [ 0, %bb.v ], [ -2, %opal_obj_run_destructors.exit.i ], [ -2, %opal_thread_add_fetch_32.exit.i ], [ 12, %bb.a ], [ -2, %bb.e ]
  ret i32 %.0
}

declare ptr @ompi_group_flatten(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

declare i32 @ompi_comm_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @mca_topo_base_comm_graph_2_2_0_construct(ptr nofree noundef writeonly captures(none) initializes((16, 20), (24, 40)) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal void @mca_topo_base_comm_graph_2_2_0_destruct(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}
end_hunk_0
