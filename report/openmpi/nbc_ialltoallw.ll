Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/nbc_ialltoallw?download=true
inline.NumInlined: 32
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_request_t = type { %struct.ompi_request_t, [96 x i8] }
%struct.ompi_request_t = type { %struct.opal_free_list_item_t, i32, %struct.ompi_status_public_t, ptr, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, %union.ompi_mpi_object_t }
%struct.opal_free_list_item_t = type { %struct.opal_list_item_t, ptr, ptr }
%struct.opal_list_item_t = type { %struct.opal_object_t, ptr, ptr, i32 }
%struct.opal_object_t = type { ptr, i32 }
%struct.ompi_status_public_t = type { i32, i32, i32, i32, i64 }
%union.ompi_mpi_object_t = type { ptr }
%struct.opal_class_t = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }

@ompi_request_null = external global %struct.ompi_predefined_request_t, align 8
@NBC_Schedule_class = external global %struct.opal_class_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@ompi_request_empty = external global %struct.ompi_request_t, align 8
@opal_class_init_epoch = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_libnbc_ialltoallw(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_alltoallw_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i1 noundef zeroext false) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %9, align 8, !tbaa !15
  %i.c = tail call i32 @NBC_Start(ptr noundef %i.b) #5 ; 2 uses
  %.not20 = icmp eq i32 %i.c, 0
  br i1 %.not20, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %9, align 8, !tbaa !15
  tail call void @NBC_Return_handle(ptr noundef %i.d) #5
  store ptr @ompi_request_null, ptr %9, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.c, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @nbc_alltoallw_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i1 noundef zeroext %11) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, %0
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.c, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %.0108.ph = phi ptr [ %4, %bb.b ], [ %0, %bb.a ]
  %i.d = getelementptr i8, ptr %8, i64 220
  %.val170 = load i32, ptr %i.d, align 4, !tbaa !67
  %i.e = getelementptr i8, ptr %8, i64 264
  %.val139171 = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr i8, ptr %.val139171, i64 16
  %.val139.val172 = load i32, ptr %i.f, align 8, !tbaa !47
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %4, inttoptr (i64 1 to ptr)
  %i.g = getelementptr i8, ptr %8, i64 220
  %.val = load i32, ptr %i.g, align 4, !tbaa !67  ; 2 uses
  %i.h = getelementptr i8, ptr %8, i64 264
  %.val139 = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.i = getelementptr i8, ptr %.val139, i64 16
  %.val139.val = load i32, ptr %i.i, align 8, !tbaa !47 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.thread, %bb.c
  %.val139.val182 = phi i32 [ %.val139.val172, %.thread ], [ %.val139.val, %bb.c ] ; 3 uses
  %.val180 = phi i32 [ %.val170, %.thread ], [ %.val, %bb.c ]
  %.0108176 = phi ptr [ %.0108.ph, %.thread ], [ %0, %bb.c ]
  %.0115173 = phi ptr [ %4, %.thread ], [ %0, %bb.c ]
  %i.j = icmp sgt i32 %.val139.val182, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %.val139.val182 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %opal_datatype_span.exit
  %i.k = icmp eq i64 %spec.select133, 0
  br i1 %i.k, label %._crit_edge.thread, label %nbc_get_noop_request.exit, !prof !69

.lr.ph:                                           ; preds = %.lr.ph.preheader, %opal_datatype_span.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %opal_datatype_span.exit ] ; 3 uses
  %.0102199 = phi i64 [ 0, %.lr.ph.preheader ], [ %spec.select133, %opal_datatype_span.exit ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49   ; 5 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !50   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !75
  %i.r = icmp eq i64 %i.q, 0
  %i.s = icmp eq i32 %i.o, 0
  %or.cond.i = or i1 %i.s, %i.r
  br i1 %or.cond.i, label %opal_datatype_span.exit, label %bb.e, !prof !76

bb.e:                                             ; preds = %.lr.ph
  %i.t = sext i32 %i.o to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.x = load i64, ptr %i.w, align 8, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !79
  %i.aa = sub nsw i64 %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !80
  %i.ad = sub i64 %i.ac, %i.v
  %i.ae = add nsw i64 %i.t, -1
  %i.af = mul i64 %i.aa, %i.ae
  %i.ag = add i64 %i.ad, %i.af
  br label %opal_datatype_span.exit

opal_datatype_span.exit:                          ; preds = %.lr.ph, %bb.e
  %.0.i = phi i64 [ %i.ag, %bb.e ], [ 0, %.lr.ph ]
  %spec.select133 = tail call i64 @llvm.smax.i64(i64 %.0.i, i64 %.0102199) ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 248 ; 4 uses
  br label %opal_thread_compare_exchange_strong_32.exit.i

opal_thread_compare_exchange_strong_32.exit.i:    ; preds = %opal_thread_compare_exchange_strong_32.exit.i.backedge, %._crit_edge.thread
  %13 = load volatile i32, ptr %12, align 8, !tbaa !81 ; 4 uses
  %14 = icmp slt i32 %13, -1073741821
  %15 = add nsw i32 %13, -1
  %16 = select i1 %14, i32 -34, i32 %15           ; 2 uses
  %17 = load i8, ptr @opal_uses_threads, align 1, !tbaa !52, !range !53, !noundef !54
  %18 = trunc nuw i8 %17 to i1
  br i1 %18, label %19, label %._crit_edge.thread.a, !prof !55

19:                                               ; preds = %opal_thread_compare_exchange_strong_32.exit.i
  %20 = cmpxchg volatile ptr %12, i32 %13, i32 %16 acquire monotonic, align 4
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %ompi_coll_base_nbc_reserve_tags.exit, label %opal_thread_compare_exchange_strong_32.exit.i.backedge

._crit_edge.thread.a:                             ; preds = %opal_thread_compare_exchange_strong_32.exit.i
  %22 = load volatile i32, ptr %12, align 8, !tbaa !50
  %23 = icmp eq i32 %22, %13
  br i1 %23, label %24, label %opal_thread_compare_exchange_strong_32.exit.i.backedge

opal_thread_compare_exchange_strong_32.exit.i.backedge: ; preds = %._crit_edge.thread.a, %19
  br label %opal_thread_compare_exchange_strong_32.exit.i

24:                                               ; preds = %._crit_edge.thread.a
  store i32 %16, ptr %12, align 8, !tbaa !50
  br label %ompi_coll_base_nbc_reserve_tags.exit

ompi_coll_base_nbc_reserve_tags.exit:             ; preds = %19, %24
  br i1 %11, label %bb.f, label %bb.g

bb.f:                                             ; preds = %ompi_coll_base_nbc_reserve_tags.exit
  %i.ah = tail call i32 @ompi_request_persistent_noop_create(ptr noundef %9) #5
  br label %nbc_get_noop_request.exit.thread

bb.g:                                             ; preds = %ompi_coll_base_nbc_reserve_tags.exit
  store ptr @ompi_request_empty, ptr %9, align 8, !tbaa !17
  br label %nbc_get_noop_request.exit.thread

nbc_get_noop_request.exit:                        ; preds = %._crit_edge
  %i.ai = tail call noalias ptr @malloc(i64 noundef %spec.select133) #6 ; 2 uses
  %.not193 = icmp eq ptr %i.ai, null
  br i1 %.not193, label %nbc_get_noop_request.exit.thread, label %bb.h

bb.h:                                             ; preds = %nbc_get_noop_request.exit, %bb.c
  %.val139.val183 = phi i32 [ %.val139.val182, %nbc_get_noop_request.exit ], [ %.val139.val, %bb.c ] ; 10 uses
  %.val181 = phi i32 [ %.val180, %nbc_get_noop_request.exit ], [ %.val, %bb.c ] ; 5 uses
  %.not179 = phi i1 [ false, %nbc_get_noop_request.exit ], [ true, %bb.c ]
  %.0108177 = phi ptr [ %.0108176, %nbc_get_noop_request.exit ], [ %0, %bb.c ] ; 2 uses
  %.0115174 = phi ptr [ %.0115173, %nbc_get_noop_request.exit ], [ %4, %bb.c ] ; 5 uses
  %.1114 = phi ptr [ %7, %nbc_get_noop_request.exit ], [ %3, %bb.c ] ; 2 uses
  %.1112 = phi ptr [ %6, %nbc_get_noop_request.exit ], [ %2, %bb.c ] ; 2 uses
  %.1110 = phi ptr [ %5, %nbc_get_noop_request.exit ], [ %1, %bb.c ] ; 2 uses
  %.1 = phi ptr [ %i.ai, %nbc_get_noop_request.exit ], [ null, %bb.c ] ; 5 uses
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 56), align 8, !tbaa !57
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.aj) #6 ; 26 uses
  %i.al = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !50
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 32), align 8, !tbaa !58
  %.not.i = icmp eq i32 %i.al, %i.am
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @opal_class_initialize(ptr noundef nonnull @NBC_Schedule_class) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not9.i = icmp eq ptr %i.ak, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr @NBC_Schedule_class, ptr %i.ak, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 13 uses
  store volatile i32 1, ptr %i.an, align 8, !tbaa !60
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 40), align 8, !tbaa !61 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !62 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ap, null
  br i1 %.not6.i.i, label %.loopexit198, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.aq = phi ptr [ %i.as, %.lr.ph.i.i ], [ %i.ap, %bb.k ]
  %.07.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %i.ao, %bb.k ]
  tail call void %i.aq(ptr noundef nonnull %i.ak) #5, !inline_history !0
  %i.ar = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !62 ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %.loopexit198, label %.lr.ph.i.i, !llvm.loop !1

opal_obj_new.exit:                                ; preds = %bb.j
  tail call void @free(ptr noundef %.1) #5
  br label %nbc_get_noop_request.exit.thread

.loopexit198:                                     ; preds = %.lr.ph.i.i, %bb.k
  br i1 %.not179, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.loopexit198
  %i.at = sext i32 %.val181 to i64                ; 6 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %.1110, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !50 ; 2 uses
  %.not127 = icmp eq i32 %i.av, 0
  br i1 %.not127, label %bb.ac, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds [4 x i8], ptr %6, i64 %i.at
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !50
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %.0115174, i64 %i.ay
  %i.ba = getelementptr inbounds [4 x i8], ptr %.1112, i64 %i.at
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !50
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %.0108177, i64 %i.bc
  %i.be = sext i32 %i.av to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %.1114, i64 %i.at
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !49
  %i.bh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.at
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !50
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %7, i64 %i.at
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !49
  %i.bm = tail call i32 @NBC_Sched_copy(ptr noundef %i.bd, i8 noundef signext 0, i64 noundef %i.be, ptr noundef %i.bg, ptr noundef %i.az, i8 noundef signext 0, i64 noundef %i.bj, ptr noundef %i.bl, ptr noundef nonnull %i.ak, i1 noundef zeroext false) #5 ; 2 uses
  %.not128 = icmp eq i32 %i.bm, 0
  br i1 %.not128, label %bb.ac, label %nbc_get_noop_request.exit.thread, !prof !12

.critedge:                                        ; preds = %.loopexit198
  %.not148171.i = icmp sgt i32 %.val139.val183, 2
  br i1 %.not148171.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.bn = add nuw nsw i32 %.val139.val183, 1
  %i.bo = lshr i32 %i.bn, 1
  %i.bp = add nsw i32 %.val181, %.val139.val183
  br label %bb.n

bb.n:                                             ; preds = %bb.x, %.lr.ph.i
  %.0122173.i = phi i32 [ 1, %.lr.ph.i ], [ %i.dm, %bb.x ] ; 3 uses
  %.0172.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.x ]
  %i.bq = add nsw i32 %.0122173.i, %.val181
  %i.br = srem i32 %i.bq, %.val139.val183         ; 3 uses
  %i.bs = sub i32 %i.bp, %.0122173.i
  %i.bt = srem i32 %i.bs, %.val139.val183         ; 3 uses
  %i.bu = sext i32 %i.br to i64                   ; 4 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !50
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %.0115174, i64 %i.bx ; 2 uses
  %i.bz = sext i32 %i.bt to i64                   ; 4 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !50
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %.0115174, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bz ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !50 ; 2 uses
  %.not.i141 = icmp eq i32 %i.cf, 0
  br i1 %.not.i141, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bz
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !49 ; 4 uses
  %i.ci = sext i32 %i.cf to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !75
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %opal_datatype_span.exit.i, label %bb.p, !prof !76

bb.p:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !77
  br label %opal_datatype_span.exit.i

opal_datatype_span.exit.i:                        ; preds = %bb.p, %bb.o
  %.3158.i = phi i64 [ %i.cn, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.co = sub nsw i64 0, %.3158.i
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = tail call i32 @NBC_Sched_copy(ptr noundef %i.cd, i8 noundef signext 0, i64 noundef %i.ci, ptr noundef nonnull %i.ch, ptr noundef %i.cp, i8 noundef signext 1, i64 noundef %i.ci, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.ak, i1 noundef zeroext true) #5 ; 2 uses
  %.not139.i = icmp eq i32 %i.cq, 0
  br i1 %.not139.i, label %bb.q, label %.loopexit, !prof !12

bb.q:                                             ; preds = %opal_datatype_span.exit.i, %bb.n
  %.1.i = phi i64 [ %.0172.i, %bb.n ], [ %.3158.i, %opal_datatype_span.exit.i ] ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bu ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !50 ; 2 uses
  %.not140.i = icmp eq i32 %i.cs, 0
  br i1 %.not140.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bu
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !49
  %i.cw = tail call i32 @NBC_Sched_send(ptr noundef %i.by, i8 noundef signext 0, i64 noundef %i.ct, ptr noundef %i.cv, i32 noundef %i.br, ptr noundef nonnull %i.ak, i1 noundef zeroext false) #5 ; 2 uses
  %.not141.i = icmp eq i32 %i.cw, 0
  br i1 %.not141.i, label %bb.s, label %.loopexit, !prof !12

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cx = load i32, ptr %i.ce, align 4, !tbaa !50 ; 2 uses
  %.not142.i = icmp eq i32 %i.cx, 0
  br i1 %.not142.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bz ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !49
  %i.db = tail call i32 @NBC_Sched_recv(ptr noundef %i.cd, i8 noundef signext 0, i64 noundef %i.cy, ptr noundef %i.da, i32 noundef %i.bt, ptr noundef nonnull %i.ak, i1 noundef zeroext true) #5 ; 2 uses
  %.not143.i = icmp eq i32 %i.db, 0
  br i1 %.not143.i, label %bb.u, label %.loopexit, !prof !12

bb.u:                                             ; preds = %bb.t
  %.pr.i = load i32, ptr %i.ce, align 4, !tbaa !50 ; 2 uses
  %.not144.i = icmp eq i32 %.pr.i, 0
  br i1 %.not144.i, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = sub nsw i64 0, %.1.i
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = sext i32 %.pr.i to i64
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !49
  %i.dg = tail call i32 @NBC_Sched_send(ptr noundef %i.dd, i8 noundef signext 1, i64 noundef %i.de, ptr noundef %i.df, i32 noundef %i.bt, ptr noundef nonnull %i.ak, i1 noundef zeroext false) #5 ; 2 uses
  %.not145.i = icmp eq i32 %i.dg, 0
  br i1 %.not145.i, label %.thread.i, label %.loopexit, !prof !12

.thread.i:                                        ; preds = %bb.v, %bb.u, %bb.s
  %i.dh = load i32, ptr %i.cr, align 4, !tbaa !50 ; 2 uses
  %.not146.i = icmp eq i32 %i.dh, 0
  br i1 %.not146.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread.i
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bu
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !49
  %i.dl = tail call i32 @NBC_Sched_recv(ptr noundef %i.by, i8 noundef signext 0, i64 noundef %i.di, ptr noundef %i.dk, i32 noundef %i.br, ptr noundef nonnull %i.ak, i1 noundef zeroext true) #5 ; 2 uses
  %.not147.i = icmp eq i32 %i.dl, 0
  br i1 %.not147.i, label %bb.x, label %.loopexit, !prof !12

bb.x:                                             ; preds = %bb.w, %.thread.i
  %i.dm = add nuw nsw i32 %.0122173.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dm, %i.bo
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.n, !llvm.loop !65

._crit_edge.i:                                    ; preds = %bb.x, %.critedge
  %i.dn = and i32 %.val139.val183, 1
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.y, label %a2aw_sched_inplace.exit

bb.y:                                             ; preds = %._crit_edge.i
  %i.dp = ashr exact i32 %.val139.val183, 1
  %i.dq = add nsw i32 %i.dp, %.val181
  %i.dr = srem i32 %i.dq, %.val139.val183         ; 3 uses
  %i.ds = sext i32 %i.dr to i64                   ; 3 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !50
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %.0115174, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ds ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !49 ; 4 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ds ; 3 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !50 ; 2 uses
  %i.eb = sext i32 %i.ea to i64                   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !75
  %i.ee = icmp eq i64 %i.ed, 0
  %i.ef = icmp eq i32 %i.ea, 0
  %or.cond.i152.i = or i1 %i.ef, %i.ee
  br i1 %or.cond.i152.i, label %opal_datatype_span.exit154.i, label %bb.z, !prof !76

bb.z:                                             ; preds = %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !77
  br label %opal_datatype_span.exit154.i

opal_datatype_span.exit154.i:                     ; preds = %bb.z, %bb.y
  %.4159.i = phi i64 [ %i.eh, %bb.z ], [ 0, %bb.y ]
  %i.ei = sub nsw i64 0, %.4159.i
  %i.ej = inttoptr i64 %i.ei to ptr               ; 2 uses
  %i.ek = tail call i32 @NBC_Sched_copy(ptr noundef %i.dw, i8 noundef signext 0, i64 noundef %i.eb, ptr noundef nonnull %i.dy, ptr noundef %i.ej, i8 noundef signext 1, i64 noundef %i.eb, ptr noundef nonnull %i.dy, ptr noundef nonnull %i.ak, i1 noundef zeroext true) #5 ; 2 uses
  %.not149.i = icmp eq i32 %i.ek, 0
  br i1 %.not149.i, label %bb.aa, label %.loopexit, !prof !12

bb.aa:                                            ; preds = %opal_datatype_span.exit154.i
  %i.el = load i32, ptr %i.dz, align 4, !tbaa !50
  %i.em = sext i32 %i.el to i64
  %i.en = load ptr, ptr %i.dx, align 8, !tbaa !49
  %i.eo = tail call i32 @NBC_Sched_send(ptr noundef %i.ej, i8 noundef signext 1, i64 noundef %i.em, ptr noundef %i.en, i32 noundef %i.dr, ptr noundef nonnull %i.ak, i1 noundef zeroext false) #5 ; 2 uses
  %.not150.i = icmp eq i32 %i.eo, 0
  br i1 %.not150.i, label %bb.ab, label %.loopexit, !prof !12

bb.ab:                                            ; preds = %bb.aa
  %i.ep = load i32, ptr %i.dz, align 4, !tbaa !50
  %i.eq = sext i32 %i.ep to i64
  %i.er = load ptr, ptr %i.dx, align 8, !tbaa !49
  %i.es = tail call i32 @NBC_Sched_recv(ptr noundef %i.dw, i8 noundef signext 0, i64 noundef %i.eq, ptr noundef %i.er, i32 noundef %i.dr, ptr noundef nonnull %i.ak, i1 noundef zeroext true) #5 ; 2 uses
  %.not151.i = icmp eq i32 %i.es, 0
  br i1 %.not151.i, label %a2aw_sched_inplace.exit, label %.loopexit

bb.ac:                                            ; preds = %bb.l, %bb.m
  %.not5364.i = icmp sgt i32 %.val139.val183, 0
  br i1 %.not5364.i, label %.lr.ph.preheader.i, label %a2aw_sched_inplace.exit

.lr.ph.preheader.i:                               ; preds = %bb.ac
  %i.et = zext i32 %.val181 to i64
  %wide.trip.count.i = zext nneg i32 %.val139.val183 to i64
  br label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %opal_datatype_span.exit57.thread.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %opal_datatype_span.exit57.thread.i ] ; 10 uses
  %i.eu = icmp eq i64 %indvars.iv.i, %i.et
  br i1 %i.eu, label %opal_datatype_span.exit57.thread.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i143
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.1114, i64 %indvars.iv.i
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !49 ; 6 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.1110, i64 %indvars.iv.i
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !50 ; 2 uses
  %i.ez = sext i32 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !75
  %i.fc = icmp eq i64 %i.fb, 0
  %i.fd = icmp eq i32 %i.ey, 0
  %or.cond.i.i = or i1 %i.fd, %i.fc
  br i1 %or.cond.i.i, label %opal_datatype_span.exit.thread.i, label %opal_datatype_span.exit.i144, !prof !76

opal_datatype_span.exit.i144:                     ; preds = %bb.ad
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !77
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 56
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !78
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !79
  %i.fk = sub nsw i64 %i.fh, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !80
  %i.fn = sub i64 %i.fm, %i.ff
  %i.fo = add nsw i64 %i.ez, -1
  %i.fp = mul i64 %i.fk, %i.fo
  %i.fq = add i64 %i.fn, %i.fp
  %i.fr = icmp sgt i64 %i.fq, 0
  br i1 %i.fr, label %bb.ae, label %opal_datatype_span.exit.thread.i, !prof !82

bb.ae:                                            ; preds = %opal_datatype_span.exit.i144
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.1112, i64 %indvars.iv.i
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !50
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds i8, ptr %.0108177, i64 %i.fu
  %i.fw = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.fx = tail call i32 @NBC_Sched_send(ptr noundef %i.fv, i8 noundef signext 0, i64 noundef %i.ez, ptr noundef nonnull %i.ew, i32 noundef %i.fw, ptr noundef nonnull %i.ak, i1 noundef zeroext false) #5 ; 2 uses
  %.not.i146 = icmp eq i32 %i.fx, 0
  br i1 %.not.i146, label %opal_datatype_span.exit.thread.i, label %.loopexit

opal_datatype_span.exit.thread.i:                 ; preds = %bb.ae, %opal_datatype_span.exit.i144, %bb.ad
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !49 ; 6 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !50 ; 2 uses
  %i.gc = sext i32 %i.gb to i64                   ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !75
  %i.gf = icmp eq i64 %i.ge, 0
  %i.gg = icmp eq i32 %i.gb, 0
  %or.cond.i55.i = or i1 %i.gg, %i.gf
  br i1 %or.cond.i55.i, label %opal_datatype_span.exit57.thread.i, label %opal_datatype_span.exit57.i, !prof !76

opal_datatype_span.exit57.i:                      ; preds = %opal_datatype_span.exit.thread.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !77
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fz, i64 56
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !78
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !79
  %i.gn = sub nsw i64 %i.gk, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !80
  %i.gq = sub i64 %i.gp, %i.gi
  %i.gr = add nsw i64 %i.gc, -1
  %i.gs = mul i64 %i.gn, %i.gr
  %i.gt = add i64 %i.gq, %i.gs
  %i.gu = icmp sgt i64 %i.gt, 0
  br i1 %i.gu, label %bb.af, label %opal_datatype_span.exit57.thread.i, !prof !82

bb.af:                                            ; preds = %opal_datatype_span.exit57.i
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !50
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds i8, ptr %.0115174, i64 %i.gx
  %i.gz = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ha = tail call i32 @NBC_Sched_recv(ptr noundef %i.gy, i8 noundef signext 0, i64 noundef %i.gc, ptr noundef nonnull %i.fz, i32 noundef %i.gz, ptr noundef nonnull %i.ak, i1 noundef zeroext false) #5 ; 2 uses
  %.not52.i = icmp eq i32 %i.ha, 0
  br i1 %.not52.i, label %opal_datatype_span.exit57.thread.i, label %.loopexit

opal_datatype_span.exit57.thread.i:               ; preds = %bb.af, %opal_datatype_span.exit57.i, %opal_datatype_span.exit.thread.i, %.lr.ph.i143
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i145, label %a2aw_sched_inplace.exit, label %.lr.ph.i143, !llvm.loop !66

.loopexit:                                        ; preds = %opal_datatype_span.exit.i, %bb.r, %bb.t, %bb.v, %bb.w, %bb.af, %bb.ae, %bb.ab, %bb.aa, %opal_datatype_span.exit154.i
  %.0105.ph = phi i32 [ %i.es, %bb.ab ], [ %i.eo, %bb.aa ], [ %i.fx, %bb.ae ], [ %i.ek, %opal_datatype_span.exit154.i ], [ %i.ha, %bb.af ], [ %i.cw, %bb.r ], [ %i.db, %bb.t ], [ %i.dg, %bb.v ], [ %i.dl, %bb.w ], [ %i.cq, %opal_datatype_span.exit.i ]
  %i.hb = load i8, ptr @opal_uses_threads, align 1, !tbaa !52, !range !53, !noundef !54
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.ag, label %bb.ah, !prof !55

bb.ag:                                            ; preds = %.loopexit
  %i.hd = atomicrmw volatile add ptr %i.an, i32 -1 monotonic, align 4
  %i.he = add i32 %i.hd, -1
  br label %opal_thread_add_fetch_32.exit

bb.ah:                                            ; preds = %.loopexit
  %i.hf = load volatile i32, ptr %i.an, align 8, !tbaa !50
  %i.hg = add nsw i32 %i.hf, -1
  store volatile i32 %i.hg, ptr %i.an, align 8, !tbaa !50
  %i.hh = load volatile i32, ptr %i.an, align 8, !tbaa !50
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.ag, %bb.ah
  %.0.i147 = phi i32 [ %i.he, %bb.ag ], [ %i.hh, %bb.ah ]
  %i.hi = icmp eq i32 %.0.i147, 0
  br i1 %i.hi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %opal_thread_add_fetch_32.exit
  %i.hj = load ptr, ptr %i.ak, align 8, !tbaa !59
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 48
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !63 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !62 ; 2 uses
  %.not6.i = icmp eq ptr %i.hm, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %bb.ai, %.lr.ph.i148
  %i.hn = phi ptr [ %i.hp, %.lr.ph.i148 ], [ %i.hm, %bb.ai ]
  %.07.i = phi ptr [ %i.ho, %.lr.ph.i148 ], [ %i.hl, %bb.ai ]
  tail call void %i.hn(ptr noundef nonnull %i.ak) #5, !inline_history !2
  %i.ho = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !62 ; 2 uses
  %.not.i149 = icmp eq ptr %i.hp, null
  br i1 %.not.i149, label %opal_obj_run_destructors.exit, label %.lr.ph.i148, !llvm.loop !3

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i148, %bb.ai
  tail call void @free(ptr noundef nonnull %i.ak) #5
  br label %bb.aj

bb.aj:                                            ; preds = %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit
  tail call void @free(ptr noundef %.1) #5
  br label %nbc_get_noop_request.exit.thread

a2aw_sched_inplace.exit:                          ; preds = %opal_datatype_span.exit57.thread.i, %._crit_edge.i, %bb.ab, %bb.ac
  %i.hq = tail call i32 @NBC_Sched_commit(ptr noundef nonnull %i.ak) #5 ; 2 uses
  %.not130 = icmp eq i32 %i.hq, 0
  br i1 %.not130, label %bb.ap, label %bb.ak, !prof !12

bb.ak:                                            ; preds = %a2aw_sched_inplace.exit
  %i.hr = load i8, ptr @opal_uses_threads, align 1, !tbaa !52, !range !53, !noundef !54
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.al, label %bb.am, !prof !55

bb.al:                                            ; preds = %bb.ak
  %i.ht = atomicrmw volatile add ptr %i.an, i32 -1 monotonic, align 4
  %i.hu = add i32 %i.ht, -1
  br label %opal_thread_add_fetch_32.exit152

bb.am:                                            ; preds = %bb.ak
  %i.hv = load volatile i32, ptr %i.an, align 8, !tbaa !50
  %i.hw = add nsw i32 %i.hv, -1
  store volatile i32 %i.hw, ptr %i.an, align 8, !tbaa !50
  %i.hx = load volatile i32, ptr %i.an, align 8, !tbaa !50
  br label %opal_thread_add_fetch_32.exit152

opal_thread_add_fetch_32.exit152:                 ; preds = %bb.al, %bb.am
  %.0.i151 = phi i32 [ %i.hu, %bb.al ], [ %i.hx, %bb.am ]
  %i.hy = icmp eq i32 %.0.i151, 0
  br i1 %i.hy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %opal_thread_add_fetch_32.exit152
  %i.hz = load ptr, ptr %i.ak, align 8, !tbaa !59
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !63 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !62 ; 2 uses
  %.not6.i153 = icmp eq ptr %i.ic, null
  br i1 %.not6.i153, label %opal_obj_run_destructors.exit158, label %.lr.ph.i154

.lr.ph.i154:                                      ; preds = %bb.an, %.lr.ph.i154
  %i.id = phi ptr [ %i.if, %.lr.ph.i154 ], [ %i.ic, %bb.an ]
  %.07.i155 = phi ptr [ %i.ie, %.lr.ph.i154 ], [ %i.ib, %bb.an ]
  tail call void %i.id(ptr noundef nonnull %i.ak) #5, !inline_history !2
  %i.ie = getelementptr inbounds nuw i8, ptr %.07.i155, i64 8 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !62 ; 2 uses
  %.not.i156 = icmp eq ptr %i.if, null
  br i1 %.not.i156, label %opal_obj_run_destructors.exit158, label %.lr.ph.i154, !llvm.loop !3

opal_obj_run_destructors.exit158:                 ; preds = %.lr.ph.i154, %bb.an
  tail call void @free(ptr noundef nonnull %i.ak) #5
  br label %bb.ao

bb.ao:                                            ; preds = %opal_obj_run_destructors.exit158, %opal_thread_add_fetch_32.exit152
  tail call void @free(ptr noundef %.1) #5
  br label %nbc_get_noop_request.exit.thread

bb.ap:                                            ; preds = %a2aw_sched_inplace.exit
  %i.ig = tail call i32 @NBC_Schedule_request(ptr noundef nonnull %i.ak, ptr noundef %8, ptr noundef %10, i1 noundef zeroext %11, ptr noundef %9, ptr noundef %.1) #5 ; 2 uses
  %.not131 = icmp eq i32 %i.ig, 0
  br i1 %.not131, label %nbc_get_noop_request.exit.thread, label %bb.aq, !prof !12

bb.aq:                                            ; preds = %bb.ap
  %i.ih = load i8, ptr @opal_uses_threads, align 1, !tbaa !52, !range !53, !noundef !54
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %bb.ar, label %bb.as, !prof !55

bb.ar:                                            ; preds = %bb.aq
  %i.ij = atomicrmw volatile add ptr %i.an, i32 -1 monotonic, align 4
  %i.ik = add i32 %i.ij, -1
  br label %opal_thread_add_fetch_32.exit160

bb.as:                                            ; preds = %bb.aq
  %i.il = load volatile i32, ptr %i.an, align 8, !tbaa !50
  %i.im = add nsw i32 %i.il, -1
  store volatile i32 %i.im, ptr %i.an, align 8, !tbaa !50
  %i.in = load volatile i32, ptr %i.an, align 8, !tbaa !50
  br label %opal_thread_add_fetch_32.exit160

opal_thread_add_fetch_32.exit160:                 ; preds = %bb.ar, %bb.as
  %.0.i159 = phi i32 [ %i.ik, %bb.ar ], [ %i.in, %bb.as ]
  %i.io = icmp eq i32 %.0.i159, 0
  br i1 %i.io, label %bb.at, label %bb.au

bb.at:                                            ; preds = %opal_thread_add_fetch_32.exit160
  %i.ip = load ptr, ptr %i.ak, align 8, !tbaa !59
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 48
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !63 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !62 ; 2 uses
  %.not6.i161 = icmp eq ptr %i.is, null
  br i1 %.not6.i161, label %opal_obj_run_destructors.exit166, label %.lr.ph.i162

.lr.ph.i162:                                      ; preds = %bb.at, %.lr.ph.i162
  %i.it = phi ptr [ %i.iv, %.lr.ph.i162 ], [ %i.is, %bb.at ]
  %.07.i163 = phi ptr [ %i.iu, %.lr.ph.i162 ], [ %i.ir, %bb.at ]
  tail call void %i.it(ptr noundef nonnull %i.ak) #5, !inline_history !2
  %i.iu = getelementptr inbounds nuw i8, ptr %.07.i163, i64 8 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !62 ; 2 uses
  %.not.i164 = icmp eq ptr %i.iv, null
  br i1 %.not.i164, label %opal_obj_run_destructors.exit166, label %.lr.ph.i162, !llvm.loop !3

opal_obj_run_destructors.exit166:                 ; preds = %.lr.ph.i162, %bb.at
  tail call void @free(ptr noundef nonnull %i.ak) #5
  br label %bb.au

bb.au:                                            ; preds = %opal_obj_run_destructors.exit166, %opal_thread_add_fetch_32.exit160
  tail call void @free(ptr noundef %.1) #5
  br label %nbc_get_noop_request.exit.thread

nbc_get_noop_request.exit.thread:                 ; preds = %bb.g, %bb.f, %bb.ap, %bb.m, %nbc_get_noop_request.exit, %bb.au, %bb.ao, %bb.aj, %opal_obj_new.exit
  %.1107 = phi i32 [ -2, %opal_obj_new.exit ], [ %.0105.ph, %bb.aj ], [ %i.hq, %bb.ao ], [ %i.ig, %bb.au ], [ %i.bm, %bb.m ], [ -2, %nbc_get_noop_request.exit ], [ 0, %bb.ap ], [ 0, %bb.g ], [ %i.ah, %bb.f ]
  ret i32 %.1107
}

declare i32 @NBC_Start(ptr noundef) local_unnamed_addr #1

declare void @NBC_Return_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_libnbc_ialltoallw_inter(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_alltoallw_inter_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i1 noundef zeroext false) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %9, align 8, !tbaa !15
  %i.c = tail call i32 @NBC_Start(ptr noundef %i.b) #5 ; 2 uses
  %.not20 = icmp eq i32 %i.c, 0
  br i1 %.not20, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %9, align 8, !tbaa !15
  tail call void @NBC_Return_handle(ptr noundef %i.d) #5
  store ptr @ompi_request_null, ptr %9, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.c, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @nbc_alltoallw_inter_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i1 noundef zeroext %11) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.b = load i32, ptr %i.a, align 8, !tbaa !84
  %i.c = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %ompi_comm_remote_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !47
  br label %ompi_comm_remote_size.exit

ompi_comm_remote_size.exit:                       ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 56), align 8, !tbaa !57
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #6 ; 17 uses
  %i.k = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !50
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 32), align 8, !tbaa !58
  %.not.i74 = icmp eq i32 %i.k, %i.l
  br i1 %.not.i74, label %bb.d, label %bb.c

bb.c:                                             ; preds = %ompi_comm_remote_size.exit
  tail call void @opal_class_initialize(ptr noundef nonnull @NBC_Schedule_class) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %ompi_comm_remote_size.exit
  %.not9.i = icmp eq ptr %i.j, null
  br i1 %.not9.i, label %opal_obj_new.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @NBC_Schedule_class, ptr %i.j, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 17 uses
  store volatile i32 1, ptr %i.m, align 8, !tbaa !60
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 40), align 8, !tbaa !61 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.o, null
  br i1 %.not6.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.p = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.e ]
  %.07.i.i = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.n, %bb.e ]
  tail call void %i.p(ptr noundef nonnull %i.j) #5, !inline_history !0
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62   ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i, !llvm.loop !1

opal_obj_new.exit:                                ; preds = %.lr.ph.i.i, %bb.e
  %.not71100 = icmp sgt i32 %i.h, 0
  br i1 %.not71100, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %opal_obj_new.exit
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.q ] ; 9 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !50   ; 2 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !50
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = sext i32 %i.t to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = tail call i32 @NBC_Sched_send(ptr noundef %i.x, i8 noundef signext 0, i64 noundef %i.y, ptr noundef %i.aa, i32 noundef %i.ab, ptr noundef nonnull %i.j, i1 noundef zeroext false) #5 ; 4 uses
  %.not68 = icmp eq i32 %i.ac, 0
  br i1 %.not68, label %bb.k, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.ad = load i8, ptr @opal_uses_threads, align 1, !tbaa !52, !range !53, !noundef !54
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %bb.i, !prof !55

bb.h:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.m, i32 -1 monotonic, align 4
  %i.ag = add i32 %i.af, -1
  br label %opal_thread_add_fetch_32.exit

bb.i:                                             ; preds = %bb.g
  %i.ah = load volatile i32, ptr %i.m, align 8, !tbaa !50
  %i.ai = add nsw i32 %i.ah, -1
  store volatile i32 %i.ai, ptr %i.m, align 8, !tbaa !50
  %i.aj = load volatile i32, ptr %i.m, align 8, !tbaa !50
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ %i.ag, %bb.h ], [ %i.aj, %bb.i ]
  %i.ak = icmp eq i32 %.0.i, 0
  br i1 %i.ak, label %bb.j, label %opal_obj_new.exit.thread

bb.j:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !63 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !62 ; 2 uses
  %.not6.i = icmp eq ptr %i.ao, null
  br i1 %.not6.i, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %i.ap = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.ao, %bb.j ]
  %.07.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.an, %bb.j ]
  tail call void %i.ap(ptr noundef nonnull %i.j) #5, !inline_history !2
  %i.aq = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !62 ; 2 uses
  %.not.i75 = icmp eq ptr %i.ar, null
  br i1 %.not.i75, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i, !llvm.loop !3

bb.k:                                             ; preds = %bb.f, %.lr.ph
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !50 ; 2 uses
  %.not69 = icmp eq i32 %i.at, 0
  br i1 %.not69, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !50
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %4, i64 %i.aw
  %i.ay = sext i32 %i.at to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !49
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32
  %i.bc = tail call i32 @NBC_Sched_recv(ptr noundef %i.ax, i8 noundef signext 0, i64 noundef %i.ay, ptr noundef %i.ba, i32 noundef %i.bb, ptr noundef nonnull %i.j, i1 noundef zeroext false) #5 ; 4 uses
  %.not70 = icmp eq i32 %i.bc, 0
  br i1 %.not70, label %bb.q, label %bb.m, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.bd = load i8, ptr @opal_uses_threads, align 1, !tbaa !52, !range !53, !noundef !54
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.n, label %bb.o, !prof !55

bb.n:                                             ; preds = %bb.m
  %i.bf = atomicrmw volatile add ptr %i.m, i32 -1 monotonic, align 4
  %i.bg = add i32 %i.bf, -1
  br label %opal_thread_add_fetch_32.exit77

bb.o:                                             ; preds = %bb.m
  %i.bh = load volatile i32, ptr %i.m, align 8, !tbaa !50
  %i.bi = add nsw i32 %i.bh, -1
  store volatile i32 %i.bi, ptr %i.m, align 8, !tbaa !50
  %i.bj = load volatile i32, ptr %i.m, align 8, !tbaa !50
  br label %opal_thread_add_fetch_32.exit77

opal_thread_add_fetch_32.exit77:                  ; preds = %bb.n, %bb.o
  %.0.i76 = phi i32 [ %i.bg, %bb.n ], [ %i.bj, %bb.o ]
  %i.bk = icmp eq i32 %.0.i76, 0
  br i1 %i.bk, label %bb.p, label %opal_obj_new.exit.thread

bb.p:                                             ; preds = %opal_thread_add_fetch_32.exit77
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !63 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !62 ; 2 uses
  %.not6.i78 = icmp eq ptr %i.bo, null
  br i1 %.not6.i78, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.p, %.lr.ph.i79
  %i.bp = phi ptr [ %i.br, %.lr.ph.i79 ], [ %i.bo, %bb.p ]
  %.07.i80 = phi ptr [ %i.bq, %.lr.ph.i79 ], [ %i.bn, %bb.p ]
  tail call void %i.bp(ptr noundef nonnull %i.j) #5, !inline_history !2
  %i.bq = getelementptr inbounds nuw i8, ptr %.07.i80, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !62 ; 2 uses
  %.not.i81 = icmp eq ptr %i.br, null
  br i1 %.not.i81, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i79, !llvm.loop !3

bb.q:                                             ; preds = %bb.k, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.q, %opal_obj_new.exit
  %i.bs = tail call i32 @NBC_Sched_commit(ptr noundef nonnull %i.j) #5 ; 4 uses
  %.not72 = icmp eq i32 %i.bs, 0
  br i1 %.not72, label %bb.v, label %bb.r, !prof !12

bb.r:                                             ; preds = %._crit_edge
  %i.bt = load i8, ptr @opal_uses_threads, align 1, !tbaa !52, !range !53, !noundef !54
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.s, label %bb.t, !prof !55

bb.s:                                             ; preds = %bb.r
  %i.bv = atomicrmw volatile add ptr %i.m, i32 -1 monotonic, align 4
  %i.bw = add i32 %i.bv, -1
  br label %opal_thread_add_fetch_32.exit84

bb.t:                                             ; preds = %bb.r
  %i.bx = load volatile i32, ptr %i.m, align 8, !tbaa !50
  %i.by = add nsw i32 %i.bx, -1
  store volatile i32 %i.by, ptr %i.m, align 8, !tbaa !50
  %i.bz = load volatile i32, ptr %i.m, align 8, !tbaa !50
  br label %opal_thread_add_fetch_32.exit84

opal_thread_add_fetch_32.exit84:                  ; preds = %bb.s, %bb.t
  %.0.i83 = phi i32 [ %i.bw, %bb.s ], [ %i.bz, %bb.t ]
  %i.ca = icmp eq i32 %.0.i83, 0
  br i1 %i.ca, label %bb.u, label %opal_obj_new.exit.thread

bb.u:                                             ; preds = %opal_thread_add_fetch_32.exit84
  %i.cb = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !63 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !62 ; 2 uses
  %.not6.i85 = icmp eq ptr %i.ce, null
  br i1 %.not6.i85, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.u, %.lr.ph.i86
  %i.cf = phi ptr [ %i.ch, %.lr.ph.i86 ], [ %i.ce, %bb.u ]
  %.07.i87 = phi ptr [ %i.cg, %.lr.ph.i86 ], [ %i.cd, %bb.u ]
  tail call void %i.cf(ptr noundef nonnull %i.j) #5, !inline_history !2
  %i.cg = getelementptr inbounds nuw i8, ptr %.07.i87, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !62 ; 2 uses
  %.not.i88 = icmp eq ptr %i.ch, null
  br i1 %.not.i88, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i86, !llvm.loop !3

bb.v:                                             ; preds = %._crit_edge
  %i.ci = tail call i32 @NBC_Schedule_request(ptr noundef nonnull %i.j, ptr noundef %8, ptr noundef %10, i1 noundef zeroext %11, ptr noundef %9, ptr noundef null) #5 ; 4 uses
  %.not73 = icmp eq i32 %i.ci, 0
  br i1 %.not73, label %opal_obj_new.exit.thread, label %bb.w, !prof !12

bb.w:                                             ; preds = %bb.v
  %i.cj = load i8, ptr @opal_uses_threads, align 1, !tbaa !52, !range !53, !noundef !54
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.x, label %bb.y, !prof !55

bb.x:                                             ; preds = %bb.w
  %i.cl = atomicrmw volatile add ptr %i.m, i32 -1 monotonic, align 4
  %i.cm = add i32 %i.cl, -1
  br label %opal_thread_add_fetch_32.exit91

bb.y:                                             ; preds = %bb.w
  %i.cn = load volatile i32, ptr %i.m, align 8, !tbaa !50
  %i.co = add nsw i32 %i.cn, -1
  store volatile i32 %i.co, ptr %i.m, align 8, !tbaa !50
  %i.cp = load volatile i32, ptr %i.m, align 8, !tbaa !50
  br label %opal_thread_add_fetch_32.exit91

opal_thread_add_fetch_32.exit91:                  ; preds = %bb.x, %bb.y
  %.0.i90 = phi i32 [ %i.cm, %bb.x ], [ %i.cp, %bb.y ]
  %i.cq = icmp eq i32 %.0.i90, 0
  br i1 %i.cq, label %bb.z, label %opal_obj_new.exit.thread

bb.z:                                             ; preds = %opal_thread_add_fetch_32.exit91
  %i.cr = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !63 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !62 ; 2 uses
  %.not6.i92 = icmp eq ptr %i.cu, null
  br i1 %.not6.i92, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %bb.z, %.lr.ph.i93
  %i.cv = phi ptr [ %i.cx, %.lr.ph.i93 ], [ %i.cu, %bb.z ]
  %.07.i94 = phi ptr [ %i.cw, %.lr.ph.i93 ], [ %i.ct, %bb.z ]
  tail call void %i.cv(ptr noundef nonnull %i.j) #5, !inline_history !2
  %i.cw = getelementptr inbounds nuw i8, ptr %.07.i94, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !62 ; 2 uses
  %.not.i95 = icmp eq ptr %i.cx, null
  br i1 %.not.i95, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i93, !llvm.loop !3

opal_obj_new.exit.thread.sink.split:              ; preds = %.lr.ph.i, %.lr.ph.i79, %.lr.ph.i86, %.lr.ph.i93, %bb.z, %bb.u, %bb.p, %bb.j
  %.160.ph = phi i32 [ %i.bc, %bb.p ], [ %i.ac, %bb.j ], [ %i.bs, %bb.u ], [ %i.bc, %.lr.ph.i79 ], [ %i.bs, %.lr.ph.i86 ], [ %i.ci, %.lr.ph.i93 ], [ %i.ci, %bb.z ], [ %i.ac, %.lr.ph.i ]
  tail call void @free(ptr noundef nonnull %i.j) #5
  br label %opal_obj_new.exit.thread

opal_obj_new.exit.thread:                         ; preds = %opal_obj_new.exit.thread.sink.split, %opal_thread_add_fetch_32.exit, %opal_thread_add_fetch_32.exit77, %bb.d, %bb.v, %opal_thread_add_fetch_32.exit91, %opal_thread_add_fetch_32.exit84
  %.160 = phi i32 [ -2, %bb.d ], [ 0, %bb.v ], [ %i.bs, %opal_thread_add_fetch_32.exit84 ], [ %i.ci, %opal_thread_add_fetch_32.exit91 ], [ %i.bc, %opal_thread_add_fetch_32.exit77 ], [ %i.ac, %opal_thread_add_fetch_32.exit ], [ %.160.ph, %opal_obj_new.exit.thread.sink.split ]
  ret i32 %.160
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_libnbc_alltoallw_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr nofree noundef readnone captures(none) %9, ptr noundef %10, ptr noundef %11) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_alltoallw_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %10, ptr noundef %11, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_libnbc_alltoallw_inter_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr nofree noundef readnone captures(none) %9, ptr noundef %10, ptr noundef %11) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_alltoallw_inter_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %10, ptr noundef %11, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare i32 @NBC_Sched_copy(ptr noundef, i8 noundef signext, i64 noundef, ptr noundef, ptr noundef, i8 noundef signext, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @NBC_Sched_commit(ptr noundef) local_unnamed_addr #1

declare i32 @NBC_Schedule_request(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ompi_request_persistent_noop_create(ptr noundef) local_unnamed_addr #1

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #1

declare i32 @NBC_Sched_send(ptr noundef, i8 noundef signext, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @NBC_Sched_recv(ptr noundef, i8 noundef signext, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null, null}
!1 = distinct !{!1, !51}
!2 = distinct !{null}
!3 = distinct !{!3, !51}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS26ompi_coll_libnbc_request_t", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 _ZTS14ompi_request_t", !13, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 _ZTS12opal_class_t", !13, i64 0}
!19 = !{!"opal_object_t", !18, i64 0, !9, i64 8}
!20 = !{!"p1 _ZTS19opal_hash_element_t", !13, i64 0}
!21 = !{!"long", !8, i64 0}
!22 = !{!"p1 _ZTS24opal_hash_type_methods_t", !13, i64 0}
!23 = !{!"opal_hash_table_t", !19, i64 0, !20, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !22, i64 64}
!24 = !{!"p1 _ZTS11opal_info_t", !13, i64 0}
!25 = !{!"opal_infosubscriber_t", !19, i64 0, !23, i64 16, !24, i64 88}
!26 = !{!"opal_mutex_t", !19, i64 0, !8, i64 16, !9, i64 56}
!27 = !{!"p1 omnipotent char", !13, i64 0}
!28 = !{!"ompi_comm_extended_cid_t", !21, i64 0, !8, i64 8}
!29 = !{!"ompi_comm_extended_cid_block_t", !28, i64 0, !21, i64 16, !8, i64 24, !8, i64 25}
!30 = !{!"p1 int", !13, i64 0}
!31 = !{!"p1 _ZTS12ompi_group_t", !13, i64 0}
!32 = !{!"p1 _ZTS19ompi_communicator_t", !13, i64 0}
!33 = !{!"p1 _ZTS17opal_hash_table_t", !13, i64 0}
!34 = !{!"p1 _ZTS22mca_topo_base_module_t", !13, i64 0}
!35 = !{!"any p2 pointer", !13, i64 0}
!36 = !{!"p2 _ZTS20ompi_peruse_handle_t", !35, i64 0}
!37 = !{!"p1 _ZTS17ompi_errhandler_t", !13, i64 0}
!38 = !{!"p1 _ZTS14mca_pml_comm_t", !13, i64 0}
!39 = !{!"p1 _ZTS14mca_mtl_comm_t", !13, i64 0}
!40 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !13, i64 0}
!41 = !{!"p1 _ZTS15ompi_instance_t", !13, i64 0}
!42 = !{!"p1 _ZTS13opal_object_t", !13, i64 0}
!43 = !{!"_Bool", !8, i64 0}
!44 = !{!"ompi_communicator_t", !25, i64 0, !26, i64 96, !27, i64 160, !28, i64 168, !29, i64 184, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !9, i64 232, !30, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !31, i64 264, !31, i64 272, !32, i64 280, !33, i64 288, !34, i64 296, !36, i64 304, !37, i64 312, !9, i64 320, !38, i64 328, !39, i64 336, !40, i64 344, !41, i64 352, !42, i64 360, !9, i64 368, !9, i64 372, !43, i64 376, !43, i64 377, !43, i64 378}
!45 = !{!"p2 _ZTS11ompi_proc_t", !35, i64 0}
!46 = !{!"ompi_group_t", !19, i64 0, !9, i64 16, !9, i64 20, !9, i64 24, !45, i64 32, !9, i64 40, !31, i64 48, !8, i64 56, !41, i64 72}
!47 = !{!46, !9, i64 16}
!48 = !{!"p1 _ZTS15ompi_datatype_t", !13, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!9, !9, i64 0}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!43, !43, i64 0}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!56 = !{!"opal_class_t", !27, i64 0, !18, i64 8, !13, i64 16, !13, i64 24, !9, i64 32, !9, i64 36, !35, i64 40, !35, i64 48, !21, i64 56}
!57 = !{!56, !21, i64 56}
!58 = !{!56, !9, i64 32}
!59 = !{!19, !18, i64 0}
!60 = !{!19, !9, i64 8}
!61 = !{!56, !35, i64 40}
!62 = !{!13, !13, i64 0}
!63 = !{!56, !35, i64 48}
!64 = distinct !{!64, !51}
!65 = distinct !{!65, !51}
!66 = distinct !{!66, !51}
!67 = !{!44, !9, i64 220}
!68 = !{!44, !31, i64 264}
!69 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!70 = !{!"short", !8, i64 0}
!71 = !{!"p1 _ZTS12dt_elem_desc", !13, i64 0}
!72 = !{!"dt_type_desc_t", !21, i64 0, !21, i64 8, !71, i64 16}
!73 = !{!"p1 long", !13, i64 0}
!74 = !{!"opal_datatype_t", !19, i64 0, !70, i64 16, !70, i64 18, !9, i64 20, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !9, i64 72, !9, i64 76, !8, i64 80, !72, i64 144, !72, i64 168, !73, i64 192}
!75 = !{!74, !21, i64 24}
!76 = !{!"branch_weights", i32 2002, i32 2000}
!77 = !{!74, !21, i64 32}
!78 = !{!74, !21, i64 56}
!79 = !{!74, !21, i64 48}
!80 = !{!74, !21, i64 40}
!81 = !{!44, !9, i64 248}
!82 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!83 = distinct !{!83, !51}
!84 = !{!44, !9, i64 224}
!85 = !{!44, !31, i64 272}
end_hunk_0
