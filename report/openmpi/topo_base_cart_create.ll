Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topo_base_cart_create?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
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
@.str = private unnamed_addr constant [32 x i8] c"mca_topo_base_comm_cart_2_2_0_t\00", align 1
@opal_object_t_class = external global %struct.opal_class_t, align 8
@mca_topo_base_comm_cart_2_2_0_t_class = global %struct.opal_class_t { ptr @.str, ptr @opal_object_t_class, ptr @mca_topo_base_comm_cart_2_2_0_construct, ptr @mca_topo_base_comm_cart_2_2_0_destruct, i32 0, i32 0, ptr null, ptr null, i64 48 }, align 8
@opal_class_init_epoch = external local_unnamed_addr global i32, align 4
@opal_uses_threads = external local_unnamed_addr global i8, align 1

; Function Attrs: nounwind uwtable
define i32 @mca_topo_base_cart_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i1 noundef zeroext %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = zext i1 %5 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_topo_base_comm_cart_2_2_0_t_class, i64 56), align 8, !tbaa !50
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #10 ; 24 uses
  %i.h = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !51
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_topo_base_comm_cart_2_2_0_t_class, i64 32), align 8, !tbaa !52
  %.not.i.i = icmp eq i32 %i.h, %i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @opal_class_initialize(ptr noundef nonnull @mca_topo_base_comm_cart_2_2_0_t_class) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %mca_topo_base_cart_allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @mca_topo_base_comm_cart_2_2_0_t_class, ptr %i.g, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 17 uses
  store volatile i32 1, ptr %i.j, align 8, !tbaa !54
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_topo_base_comm_cart_2_2_0_t_class, i64 40), align 8, !tbaa !55 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56   ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not6.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.l, %bb.d ]
  %.07.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %i.k, %bb.d ]
  tail call void %i.m(ptr noundef nonnull %i.g) #9, !inline_history !17
  %i.n = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !18

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !61   ; 3 uses
  %.not111.i = icmp sgt i32 %2, 0                 ; 2 uses
  br i1 %.not111.i, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.loopexit.i
  %wide.trip.count.i = zext nneg i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %.075112.i = phi i32 [ 1, %.lr.ph.preheader.i ], [ %i.al, %bb.i ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !51   ; 2 uses
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = load i8, ptr @opal_uses_threads, align 1, !tbaa !62, !range !63, !noundef !64
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.g, !prof !65

bb.f:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.j, i32 -1 monotonic, align 4
  %i.z = add i32 %i.y, -1
  br label %opal_thread_add_fetch_32.exit.i

bb.g:                                             ; preds = %bb.e
  %i.aa = load volatile i32, ptr %i.j, align 8, !tbaa !51
  %i.ab = add nsw i32 %i.aa, -1
  store volatile i32 %i.ab, ptr %i.j, align 8, !tbaa !51
  %i.ac = load volatile i32, ptr %i.j, align 8, !tbaa !51
  br label %opal_thread_add_fetch_32.exit.i

opal_thread_add_fetch_32.exit.i:                  ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %i.z, %bb.f ], [ %i.ac, %bb.g ]
  %i.ad = icmp eq i32 %.0.i.i, 0
  br i1 %i.ad, label %bb.h, label %mca_topo_base_cart_allocate.exit.thread

bb.h:                                             ; preds = %opal_thread_add_fetch_32.exit.i
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !66 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ah, null
  br i1 %.not6.i.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %i.ah, %bb.h ]
  %.07.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.ag, %bb.h ]
  tail call void %i.ai(ptr noundef nonnull %i.g) #9, !inline_history !19
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56 ; 2 uses
  %.not.i86.i = icmp eq ptr %i.ak, null
  br i1 %.not.i86.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i.i, !llvm.loop !20

opal_obj_run_destructors.exit.i:                  ; preds = %.lr.ph.i.i, %bb.h
  tail call void @free(ptr noundef nonnull %i.g) #9
  br label %mca_topo_base_cart_allocate.exit.thread

bb.i:                                             ; preds = %.lr.ph.i
  %i.al = mul nuw nsw i32 %i.u, %.075112.i        ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !21

._crit_edge.i:                                    ; preds = %bb.i, %.loopexit.i
  %.075.lcssa.i = phi i32 [ 1, %.loopexit.i ], [ %i.al, %bb.i ] ; 5 uses
  %i.am = icmp slt i32 %i.q, %.075.lcssa.i
  br i1 %i.am, label %bb.j, label %bb.n, !prof !65

bb.j:                                             ; preds = %._crit_edge.i
  %i.an = load i8, ptr @opal_uses_threads, align 1, !tbaa !62, !range !63, !noundef !64
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.k, label %bb.l, !prof !65

bb.k:                                             ; preds = %bb.j
  %i.ap = atomicrmw volatile add ptr %i.j, i32 -1 monotonic, align 4
  %i.aq = add i32 %i.ap, -1
  br label %opal_thread_add_fetch_32.exit88.i

bb.l:                                             ; preds = %bb.j
  %i.ar = load volatile i32, ptr %i.j, align 8, !tbaa !51
  %i.as = add nsw i32 %i.ar, -1
  store volatile i32 %i.as, ptr %i.j, align 8, !tbaa !51
  %i.at = load volatile i32, ptr %i.j, align 8, !tbaa !51
  br label %opal_thread_add_fetch_32.exit88.i

opal_thread_add_fetch_32.exit88.i:                ; preds = %bb.l, %bb.k
  %.0.i87.i = phi i32 [ %i.aq, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i32 %.0.i87.i, 0
  br i1 %i.au, label %bb.m, label %mca_topo_base_cart_allocate.exit.thread

bb.m:                                             ; preds = %opal_thread_add_fetch_32.exit88.i
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !66 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !56 ; 2 uses
  %.not6.i89.i = icmp eq ptr %i.ay, null
  br i1 %.not6.i89.i, label %opal_obj_run_destructors.exit93.i, label %.lr.ph.i90.i

.lr.ph.i90.i:                                     ; preds = %bb.m, %.lr.ph.i90.i
  %i.az = phi ptr [ %i.bb, %.lr.ph.i90.i ], [ %i.ay, %bb.m ]
  %.07.i91.i = phi ptr [ %i.ba, %.lr.ph.i90.i ], [ %i.ax, %bb.m ]
  tail call void %i.az(ptr noundef nonnull %i.g) #9, !inline_history !19
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i91.i, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !56 ; 2 uses
  %.not.i92.i = icmp eq ptr %i.bb, null
  br i1 %.not.i92.i, label %opal_obj_run_destructors.exit93.i, label %.lr.ph.i90.i, !llvm.loop !20

opal_obj_run_destructors.exit93.i:                ; preds = %.lr.ph.i90.i, %bb.m
  tail call void @free(ptr noundef nonnull %i.g) #9
  br label %mca_topo_base_cart_allocate.exit.thread

bb.n:                                             ; preds = %._crit_edge.i
  %.not85.i = icmp sge i32 %i.s, %.075.lcssa.i    ; 2 uses
  %.040 = select i1 %.not85.i, i32 -32766, i32 %i.s ; 2 uses
  %i.bc = icmp eq i32 %i.s, -32766
  %or.cond = or i1 %i.bc, %.not85.i
  br i1 %or.cond, label %.thread109.i, label %bb.r

.thread109.i:                                     ; preds = %bb.n
  %i.bd = load i8, ptr @opal_uses_threads, align 1, !tbaa !62, !range !63, !noundef !64
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.o, label %bb.p, !prof !65

bb.o:                                             ; preds = %.thread109.i
  %i.bf = atomicrmw volatile add ptr %i.j, i32 -1 monotonic, align 4
  %i.bg = add i32 %i.bf, -1
  br label %opal_thread_add_fetch_32.exit95.i

bb.p:                                             ; preds = %.thread109.i
  %i.bh = load volatile i32, ptr %i.j, align 8, !tbaa !51
  %i.bi = add nsw i32 %i.bh, -1
  store volatile i32 %i.bi, ptr %i.j, align 8, !tbaa !51
  %i.bj = load volatile i32, ptr %i.j, align 8, !tbaa !51
  br label %opal_thread_add_fetch_32.exit95.i

opal_thread_add_fetch_32.exit95.i:                ; preds = %bb.p, %bb.o
  %.0.i94.i = phi i32 [ %i.bg, %bb.o ], [ %i.bj, %bb.p ]
  %i.bk = icmp eq i32 %.0.i94.i, 0
  br i1 %i.bk, label %bb.q, label %mca_topo_base_cart_allocate.exit

bb.q:                                             ; preds = %opal_thread_add_fetch_32.exit95.i
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !66 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !56 ; 2 uses
  %.not6.i96.i = icmp eq ptr %i.bo, null
  br i1 %.not6.i96.i, label %opal_obj_run_destructors.exit100.i, label %.lr.ph.i97.i

.lr.ph.i97.i:                                     ; preds = %bb.q, %.lr.ph.i97.i
  %i.bp = phi ptr [ %i.br, %.lr.ph.i97.i ], [ %i.bo, %bb.q ]
  %.07.i98.i = phi ptr [ %i.bq, %.lr.ph.i97.i ], [ %i.bn, %bb.q ]
  tail call void %i.bp(ptr noundef nonnull %i.g) #9, !inline_history !19
  %i.bq = getelementptr inbounds nuw i8, ptr %.07.i98.i, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !56 ; 2 uses
  %.not.i99.i = icmp eq ptr %i.br, null
  br i1 %.not.i99.i, label %opal_obj_run_destructors.exit100.i, label %.lr.ph.i97.i, !llvm.loop !20

opal_obj_run_destructors.exit100.i:               ; preds = %.lr.ph.i97.i, %bb.q
  tail call void @free(ptr noundef nonnull %i.g) #9
  br label %mca_topo_base_cart_allocate.exit

bb.r:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 %2, ptr %i.bs, align 8, !tbaa !13
  %i.bt = icmp eq i32 %2, 0
  br i1 %i.bt, label %mca_topo_base_cart_allocate.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = sext i32 %2 to i64
  %i.bv = shl nsw i64 %i.bu, 2                    ; 5 uses
  %i.bw = tail call noalias ptr @malloc(i64 noundef %i.bv) #10 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !14
  %i.by = tail call noalias ptr @malloc(i64 noundef %i.bv) #10 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !15
  %i.ca = tail call noalias ptr @malloc(i64 noundef %i.bv) #10 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !16
  %i.cc = icmp eq ptr %i.bw, null
  br i1 %i.cc, label %.critedge.i, label %bb.t, !prof !65

bb.t:                                             ; preds = %bb.s
  %i.cd = icmp eq ptr %i.by, null
  %i.ce = icmp eq ptr %i.ca, null
  %spec.select.i = or i1 %i.cd, %i.ce
  br i1 %spec.select.i, label %.critedge.i, label %bb.x, !prof !65

.critedge.i:                                      ; preds = %bb.t, %bb.s
  %i.cf = load i8, ptr @opal_uses_threads, align 1, !tbaa !62, !range !63, !noundef !64
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.u, label %bb.v, !prof !65

bb.u:                                             ; preds = %.critedge.i
  %i.ch = atomicrmw volatile add ptr %i.j, i32 -1 monotonic, align 4
  %i.ci = add i32 %i.ch, -1
  br label %opal_thread_add_fetch_32.exit102.i

bb.v:                                             ; preds = %.critedge.i
  %i.cj = load volatile i32, ptr %i.j, align 8, !tbaa !51
  %i.ck = add nsw i32 %i.cj, -1
  store volatile i32 %i.ck, ptr %i.j, align 8, !tbaa !51
  %i.cl = load volatile i32, ptr %i.j, align 8, !tbaa !51
  br label %opal_thread_add_fetch_32.exit102.i

opal_thread_add_fetch_32.exit102.i:               ; preds = %bb.v, %bb.u
  %.0.i101.i = phi i32 [ %i.ci, %bb.u ], [ %i.cl, %bb.v ]
  %i.cm = icmp eq i32 %.0.i101.i, 0
  br i1 %i.cm, label %bb.w, label %mca_topo_base_cart_allocate.exit.thread

bb.w:                                             ; preds = %opal_thread_add_fetch_32.exit102.i
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !66 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !56 ; 2 uses
  %.not6.i103.i = icmp eq ptr %i.cq, null
  br i1 %.not6.i103.i, label %opal_obj_run_destructors.exit107.i, label %.lr.ph.i104.i

.lr.ph.i104.i:                                    ; preds = %bb.w, %.lr.ph.i104.i
  %i.cr = phi ptr [ %i.ct, %.lr.ph.i104.i ], [ %i.cq, %bb.w ]
  %.07.i105.i = phi ptr [ %i.cs, %.lr.ph.i104.i ], [ %i.cp, %bb.w ]
  tail call void %i.cr(ptr noundef nonnull %i.g) #9, !inline_history !19
  %i.cs = getelementptr inbounds nuw i8, ptr %.07.i105.i, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !56 ; 2 uses
  %.not.i106.i = icmp eq ptr %i.ct, null
  br i1 %.not.i106.i, label %opal_obj_run_destructors.exit107.i, label %.lr.ph.i104.i, !llvm.loop !20

opal_obj_run_destructors.exit107.i:               ; preds = %.lr.ph.i104.i, %bb.w
  tail call void @free(ptr noundef nonnull %i.g) #9
  br label %mca_topo_base_cart_allocate.exit.thread

bb.x:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bw, ptr readonly align 4 %3, i64 %i.bv, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.by, ptr readonly align 4 %4, i64 %i.bv, i1 false)
  br i1 %.not111.i, label %.lr.ph118.preheader.i, label %mca_topo_base_cart_allocate.exit

.lr.ph118.preheader.i:                            ; preds = %bb.x
  %wide.trip.count124.i = zext nneg i32 %2 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count124.i, 1
  %i.cu = icmp eq i32 %2, 1
  br i1 %i.cu, label %.lr.ph118.i.epil.preheader, label %.lr.ph118.preheader.i.new

.lr.ph118.preheader.i.new:                        ; preds = %.lr.ph118.preheader.i
  %unroll_iter = and i64 %wide.trip.count124.i, 2147483646
  br label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %.lr.ph118.i, %.lr.ph118.preheader.i.new
  %indvars.iv121.i = phi i64 [ 0, %.lr.ph118.preheader.i.new ], [ %indvars.iv.next122.i.1, %.lr.ph118.i ] ; 4 uses
  %.0116.i = phi i32 [ %.040, %.lr.ph118.preheader.i.new ], [ %i.dg, %.lr.ph118.i ] ; 2 uses
  %.1114.i = phi i32 [ %.075.lcssa.i, %.lr.ph118.preheader.i.new ], [ %i.dd, %.lr.ph118.i ]
  %niter = phi i64 [ 0, %.lr.ph118.preheader.i.new ], [ %niter.next.1, %.lr.ph118.i ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv121.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !51
  %i.cx = sdiv i32 %.1114.i, %i.cw                ; 3 uses
  %i.cy = sdiv i32 %.0116.i, %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv121.i
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !51
  %i.da = srem i32 %.0116.i, %i.cx                ; 2 uses
  %indvars.iv.next122.i = or disjoint i64 %indvars.iv121.i, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next122.i
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !51
  %i.dd = sdiv i32 %i.cx, %i.dc                   ; 4 uses
  %i.de = sdiv i32 %i.da, %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.next122.i
  store i32 %i.de, ptr %i.df, align 4, !tbaa !51
  %i.dg = srem i32 %i.da, %i.dd                   ; 2 uses
  %indvars.iv.next122.i.1 = add nuw nsw i64 %indvars.iv121.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mca_topo_base_cart_allocate.exit.loopexit.unr-lcssa, label %.lr.ph118.i, !llvm.loop !22

mca_topo_base_cart_allocate.exit.loopexit.unr-lcssa: ; preds = %.lr.ph118.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mca_topo_base_cart_allocate.exit, label %.lr.ph118.i.epil.preheader

.lr.ph118.i.epil.preheader:                       ; preds = %mca_topo_base_cart_allocate.exit.loopexit.unr-lcssa, %.lr.ph118.preheader.i
  %indvars.iv121.i.epil.init = phi i64 [ 0, %.lr.ph118.preheader.i ], [ %indvars.iv.next122.i.1, %mca_topo_base_cart_allocate.exit.loopexit.unr-lcssa ] ; 2 uses
  %.0116.i.epil.init = phi i32 [ %.040, %.lr.ph118.preheader.i ], [ %i.dg, %mca_topo_base_cart_allocate.exit.loopexit.unr-lcssa ]
  %.1114.i.epil.init = phi i32 [ %.075.lcssa.i, %.lr.ph118.preheader.i ], [ %i.dd, %mca_topo_base_cart_allocate.exit.loopexit.unr-lcssa ]
  %lcmp.mod61 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv121.i.epil.init
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !51
  %i.dj = sdiv i32 %.1114.i.epil.init, %i.di
  %i.dk = sdiv i32 %.0116.i.epil.init, %i.dj
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv121.i.epil.init
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !51
  br label %mca_topo_base_cart_allocate.exit

mca_topo_base_cart_allocate.exit:                 ; preds = %.lr.ph118.i.epil.preheader, %mca_topo_base_cart_allocate.exit.loopexit.unr-lcssa, %opal_obj_run_destructors.exit100.i, %opal_thread_add_fetch_32.exit95.i, %bb.r, %bb.x
  %.038 = phi ptr [ %i.g, %bb.r ], [ null, %opal_thread_add_fetch_32.exit95.i ], [ null, %opal_obj_run_destructors.exit100.i ], [ %i.g, %bb.x ], [ %i.g, %mca_topo_base_cart_allocate.exit.loopexit.unr-lcssa ], [ %i.g, %.lr.ph118.i.epil.preheader ] ; 9 uses
  %i.dm = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.dn = tail call ptr @ompi_group_flatten(ptr noundef %i.dm, i32 noundef %.075.lcssa.i) #9 ; 3 uses
  store ptr %i.dn, ptr %i.b, align 8, !tbaa !67
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.y, label %bb.ac, !prof !65

bb.y:                                             ; preds = %mca_topo_base_cart_allocate.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %.038, i64 8 ; 4 uses
  %i.dq = load i8, ptr @opal_uses_threads, align 1, !tbaa !62, !range !63, !noundef !64
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.z, label %bb.aa, !prof !65

bb.z:                                             ; preds = %bb.y
  %i.ds = atomicrmw volatile add ptr %i.dp, i32 -1 monotonic, align 4
  %i.dt = add i32 %i.ds, -1
  br label %opal_thread_add_fetch_32.exit

bb.aa:                                            ; preds = %bb.y
  %i.du = load volatile i32, ptr %i.dp, align 4, !tbaa !51
  %i.dv = add nsw i32 %i.du, -1
  store volatile i32 %i.dv, ptr %i.dp, align 4, !tbaa !51
  %i.dw = load volatile i32, ptr %i.dp, align 4, !tbaa !51
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.z, %bb.aa
  %.0.i = phi i32 [ %i.dt, %bb.z ], [ %i.dw, %bb.aa ]
  %i.dx = icmp eq i32 %.0.i, 0
  br i1 %i.dx, label %bb.ab, label %mca_topo_base_cart_allocate.exit.thread

bb.ab:                                            ; preds = %opal_thread_add_fetch_32.exit
  %i.dy = load ptr, ptr %.038, align 8, !tbaa !53
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !66 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !56 ; 2 uses
  %.not6.i = icmp eq ptr %i.eb, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %bb.ab, %.lr.ph.i18
  %i.ec = phi ptr [ %i.ee, %.lr.ph.i18 ], [ %i.eb, %bb.ab ]
  %.07.i = phi ptr [ %i.ed, %.lr.ph.i18 ], [ %i.ea, %bb.ab ]
  tail call void %i.ec(ptr noundef nonnull %.038) #9, !inline_history !23
  %i.ed = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !56 ; 2 uses
  %.not.i = icmp eq ptr %i.ee, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i18, !llvm.loop !20

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i18, %bb.ab
  tail call void @free(ptr noundef nonnull %.038) #9
  br label %mca_topo_base_cart_allocate.exit.thread

bb.ac:                                            ; preds = %mca_topo_base_cart_allocate.exit
  %i.ef = call i32 @ompi_comm_create(ptr noundef nonnull %1, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.a) #9 ; 3 uses
  %i.eg = call i32 @ompi_group_free(ptr noundef nonnull %i.b) #9 ; 0 uses
  %.not17 = icmp eq i32 %i.ef, 0
  br i1 %.not17, label %bb.ah, label %bb.ad, !prof !68

bb.ad:                                            ; preds = %bb.ac
  %i.eh = getelementptr inbounds nuw i8, ptr %.038, i64 8 ; 4 uses
  %i.ei = load i8, ptr @opal_uses_threads, align 1, !tbaa !62, !range !63, !noundef !64
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.ae, label %bb.af, !prof !65

bb.ae:                                            ; preds = %bb.ad
  %i.ek = atomicrmw volatile add ptr %i.eh, i32 -1 monotonic, align 4
  %i.el = add i32 %i.ek, -1
  br label %opal_thread_add_fetch_32.exit21

bb.af:                                            ; preds = %bb.ad
  %i.em = load volatile i32, ptr %i.eh, align 4, !tbaa !51
  %i.en = add nsw i32 %i.em, -1
  store volatile i32 %i.en, ptr %i.eh, align 4, !tbaa !51
  %i.eo = load volatile i32, ptr %i.eh, align 4, !tbaa !51
  br label %opal_thread_add_fetch_32.exit21

opal_thread_add_fetch_32.exit21:                  ; preds = %bb.ae, %bb.af
  %.0.i20 = phi i32 [ %i.el, %bb.ae ], [ %i.eo, %bb.af ]
  %i.ep = icmp eq i32 %.0.i20, 0
  br i1 %i.ep, label %bb.ag, label %mca_topo_base_cart_allocate.exit.thread

bb.ag:                                            ; preds = %opal_thread_add_fetch_32.exit21
  %i.eq = load ptr, ptr %.038, align 8, !tbaa !53
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !66 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !56 ; 2 uses
  %.not6.i22 = icmp eq ptr %i.et, null
  br i1 %.not6.i22, label %opal_obj_run_destructors.exit27, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %bb.ag, %.lr.ph.i23
  %i.eu = phi ptr [ %i.ew, %.lr.ph.i23 ], [ %i.et, %bb.ag ]
  %.07.i24 = phi ptr [ %i.ev, %.lr.ph.i23 ], [ %i.es, %bb.ag ]
  call void %i.eu(ptr noundef nonnull %.038) #9, !inline_history !23
  %i.ev = getelementptr inbounds nuw i8, ptr %.07.i24, i64 8 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !56 ; 2 uses
  %.not.i25 = icmp eq ptr %i.ew, null
  br i1 %.not.i25, label %opal_obj_run_destructors.exit27, label %.lr.ph.i23, !llvm.loop !20

opal_obj_run_destructors.exit27:                  ; preds = %.lr.ph.i23, %bb.ag
  call void @free(ptr noundef nonnull %.038) #9
  br label %mca_topo_base_cart_allocate.exit.thread

bb.ah:                                            ; preds = %bb.ac
  %i.ex = load ptr, ptr %i.a, align 8, !tbaa !69  ; 4 uses
  store ptr %i.ex, ptr %6, align 8, !tbaa !69
  %i.ey = icmp eq ptr %i.ex, @ompi_mpi_comm_null
  br i1 %i.ey, label %mca_topo_base_cart_allocate.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 296 ; 2 uses
  store ptr %0, ptr %i.ez, align 8, !tbaa !70
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.038, ptr %i.fa, align 8, !tbaa !71
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !70
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 20
  store i8 %i.c, ptr %i.fc, align 4, !tbaa !74
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 224 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !75
  %i.ff = or i32 %i.fe, 256
  store i32 %i.ff, ptr %i.fd, align 8, !tbaa !75
  br label %mca_topo_base_cart_allocate.exit.thread

mca_topo_base_cart_allocate.exit.thread:          ; preds = %opal_thread_add_fetch_32.exit.i, %opal_obj_run_destructors.exit107.i, %opal_obj_run_destructors.exit93.i, %opal_thread_add_fetch_32.exit88.i, %opal_obj_run_destructors.exit.i, %opal_thread_add_fetch_32.exit102.i, %bb.c, %bb.ah, %opal_thread_add_fetch_32.exit21, %opal_obj_run_destructors.exit27, %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit, %bb.ai
  %.0 = phi i32 [ 0, %bb.ai ], [ 0, %bb.ah ], [ -2, %opal_thread_add_fetch_32.exit ], [ %i.ef, %opal_thread_add_fetch_32.exit21 ], [ -2, %opal_obj_run_destructors.exit ], [ %i.ef, %opal_obj_run_destructors.exit27 ], [ -1, %opal_thread_add_fetch_32.exit.i ], [ -2, %opal_obj_run_destructors.exit107.i ], [ 12, %opal_obj_run_destructors.exit93.i ], [ 12, %opal_thread_add_fetch_32.exit88.i ], [ -1, %opal_obj_run_destructors.exit.i ], [ -2, %opal_thread_add_fetch_32.exit102.i ], [ -2, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @ompi_group_flatten(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare i32 @ompi_comm_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ompi_group_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @mca_topo_base_comm_cart_2_2_0_construct(ptr nofree noundef writeonly captures(none) initializes((16, 20), (24, 48)) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal void @mca_topo_base_comm_cart_2_2_0_destruct(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.f) #9
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS12opal_class_t", !8, i64 0}
!10 = !{!"opal_object_t", !9, i64 0, !5, i64 8}
!11 = !{!"p1 int", !8, i64 0}
!12 = !{!"mca_topo_base_comm_cart_2_2_0_t", !10, i64 0, !5, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!13 = !{!12, !5, i64 16}
!14 = !{!12, !11, i64 24}
!15 = !{!12, !11, i64 32}
!16 = !{!12, !11, i64 40}
!17 = distinct !{null, null, null}
!18 = distinct !{!18, !57}
!19 = distinct !{null, null}
!20 = distinct !{!20, !57}
!21 = distinct !{!21, !57}
!22 = distinct !{!22, !57}
!23 = distinct !{null}
!24 = !{!"p1 _ZTS19opal_hash_element_t", !8, i64 0}
!25 = !{!"long", !4, i64 0}
!26 = !{!"p1 _ZTS24opal_hash_type_methods_t", !8, i64 0}
!27 = !{!"opal_hash_table_t", !10, i64 0, !24, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !26, i64 64}
!28 = !{!"p1 _ZTS11opal_info_t", !8, i64 0}
!29 = !{!"opal_infosubscriber_t", !10, i64 0, !27, i64 16, !28, i64 88}
!30 = !{!"opal_mutex_t", !10, i64 0, !4, i64 16, !5, i64 56}
!31 = !{!"p1 omnipotent char", !8, i64 0}
!32 = !{!"ompi_comm_extended_cid_t", !25, i64 0, !4, i64 8}
!33 = !{!"ompi_comm_extended_cid_block_t", !32, i64 0, !25, i64 16, !4, i64 24, !4, i64 25}
!34 = !{!"p1 _ZTS12ompi_group_t", !8, i64 0}
!35 = !{!"p1 _ZTS19ompi_communicator_t", !8, i64 0}
!36 = !{!"p1 _ZTS17opal_hash_table_t", !8, i64 0}
!37 = !{!"p1 _ZTS22mca_topo_base_module_t", !8, i64 0}
!38 = !{!"any p2 pointer", !8, i64 0}
!39 = !{!"p2 _ZTS20ompi_peruse_handle_t", !38, i64 0}
!40 = !{!"p1 _ZTS17ompi_errhandler_t", !8, i64 0}
!41 = !{!"p1 _ZTS14mca_pml_comm_t", !8, i64 0}
!42 = !{!"p1 _ZTS14mca_mtl_comm_t", !8, i64 0}
!43 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !8, i64 0}
!44 = !{!"p1 _ZTS15ompi_instance_t", !8, i64 0}
!45 = !{!"p1 _ZTS13opal_object_t", !8, i64 0}
!46 = !{!"_Bool", !4, i64 0}
!47 = !{!"ompi_communicator_t", !29, i64 0, !30, i64 96, !31, i64 160, !32, i64 168, !33, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !11, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !34, i64 264, !34, i64 272, !35, i64 280, !36, i64 288, !37, i64 296, !39, i64 304, !40, i64 312, !5, i64 320, !41, i64 328, !42, i64 336, !43, i64 344, !44, i64 352, !45, i64 360, !5, i64 368, !5, i64 372, !46, i64 376, !46, i64 377, !46, i64 378}
!48 = !{!47, !34, i64 264}
!49 = !{!"opal_class_t", !31, i64 0, !9, i64 8, !8, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !38, i64 40, !38, i64 48, !25, i64 56}
!50 = !{!49, !25, i64 56}
!51 = !{!5, !5, i64 0}
!52 = !{!49, !5, i64 32}
!53 = !{!10, !9, i64 0}
!54 = !{!10, !5, i64 8}
!55 = !{!49, !38, i64 40}
!56 = !{!8, !8, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"p2 _ZTS11ompi_proc_t", !38, i64 0}
!59 = !{!"ompi_group_t", !10, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !58, i64 32, !5, i64 40, !34, i64 48, !4, i64 56, !44, i64 72}
!60 = !{!59, !5, i64 16}
!61 = !{!59, !5, i64 20}
!62 = !{!46, !46, i64 0}
!63 = !{i8 0, i8 2}
!64 = !{}
!65 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!66 = !{!49, !38, i64 48}
!67 = !{!34, !34, i64 0}
!68 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!69 = !{!35, !35, i64 0}
!70 = !{!47, !37, i64 296}
!71 = !{!4, !4, i64 0}
!72 = !{!"p1 _ZTS31mca_topo_base_component_2_2_0_t", !8, i64 0}
!73 = !{!"mca_topo_base_module_t", !10, i64 0, !5, i64 16, !46, i64 20, !72, i64 24, !4, i64 32, !4, i64 96}
!74 = !{!73, !46, i64 20}
!75 = !{!47, !5, i64 224}
end_hunk_0
