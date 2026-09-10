Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/nbc_ialltoallv?download=true
inline.NumInlined: 40
inline.NumDeleted: 19
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
define i32 @ompi_coll_libnbc_ialltoallv(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_alltoallv_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i1 noundef zeroext false) ; 2 uses
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
define internal fastcc i32 @nbc_alltoallv_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i1 noundef zeroext %11) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, %0
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne ptr %4, inttoptr (i64 1 to ptr)  ; 2 uses
  %spec.select = select i1 %i.d, ptr %4, ptr %0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0125 = phi ptr [ %spec.select, %bb.c ], [ %4, %bb.a ], [ %4, %bb.b ] ; 6 uses
  %.0120 = phi ptr [ %0, %bb.c ], [ %0, %bb.a ], [ %4, %bb.b ] ; 3 uses
  %.not = phi i1 [ %i.d, %bb.c ], [ false, %bb.a ], [ false, %bb.b ] ; 2 uses
  %i.e = getelementptr i8, ptr %8, i64 220
  %.val = load i32, ptr %i.e, align 4, !tbaa !74  ; 6 uses
  %i.f = getelementptr i8, ptr %8, i64 264
  %.val146 = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.g = getelementptr i8, ptr %.val146, i64 16
  %.val146.val = load i32, ptr %i.g, align 8, !tbaa !47 ; 14 uses
  %i.h = getelementptr i8, ptr %7, i64 24
  %.val148 = load i64, ptr %i.h, align 8, !tbaa !53 ; 4 uses
  %i.i = getelementptr i8, ptr %7, i64 48
  %.val151 = load i64, ptr %i.i, align 8, !tbaa !54
  %i.j = getelementptr i8, ptr %7, i64 56
  %.val152 = load i64, ptr %i.j, align 8, !tbaa !55
  %i.k = sub nsw i64 %.val152, %.val151           ; 8 uses
  br i1 %.not, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.l = icmp sgt i32 %.val146.val, 0
  br i1 %i.l, label %.lr.ph.preheader, label %opal_datatype_span.exit.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.val146.val to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val146.val, 8
  br i1 %min.iters.check, label %.lr.ph.preheader295, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi286 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <4 x i32>, ptr %i.m, align 4, !tbaa !56
  %wide.load287 = load <4 x i32>, ptr %i.n, align 4, !tbaa !56
  %i.o = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.p = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load287, <4 x i32> %vec.phi286) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.o, <4 x i32> %i.p)
  %i.r = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader295

.lr.ph.preheader295:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0112225.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select145.lcssa = phi i32 [ %i.r, %middle.block ], [ %spec.select145, %.lr.ph ] ; 2 uses
  %i.s = icmp eq i64 %.val148, 0
  %i.t = icmp eq i32 %spec.select145.lcssa, 0
  %or.cond.i = or i1 %i.s, %i.t
  br i1 %or.cond.i, label %opal_datatype_span.exit.thread, label %opal_datatype_span.exit, !prof !78

opal_datatype_span.exit:                          ; preds = %._crit_edge
  %i.u = zext nneg i32 %spec.select145.lcssa to i64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !79   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !80
  %i.z = sub i64 %i.y, %i.w
  %i.aa = add nsw i64 %i.u, -1
  %i.ab = mul i64 %i.aa, %i.k
  %i.ac = add i64 %i.z, %i.ab                     ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %opal_datatype_span.exit.thread, label %bb.g, !prof !81

.lr.ph:                                           ; preds = %.lr.ph.preheader295, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader295 ] ; 2 uses
  %.0112225 = phi i32 [ %spec.select145, %.lr.ph ], [ %.0112225.ph, %.lr.ph.preheader295 ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !56
  %spec.select145 = tail call i32 @llvm.smax.i32(i32 %i.af, i32 %.0112225) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !71

opal_datatype_span.exit.thread:                   ; preds = %.preheader, %._crit_edge, %opal_datatype_span.exit
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 248 ; 4 uses
  br label %opal_thread_compare_exchange_strong_32.exit.i

opal_thread_compare_exchange_strong_32.exit.i:    ; preds = %opal_thread_compare_exchange_strong_32.exit.i.backedge, %opal_datatype_span.exit.thread
  %13 = load volatile i32, ptr %12, align 8, !tbaa !82 ; 4 uses
  %14 = icmp slt i32 %13, -1073741821
  %15 = add nsw i32 %13, -1
  %16 = select i1 %14, i32 -34, i32 %15           ; 2 uses
  %17 = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %18 = trunc nuw i8 %17 to i1
  br i1 %18, label %19, label %opal_datatype_span.exit.thread.a, !prof !61

19:                                               ; preds = %opal_thread_compare_exchange_strong_32.exit.i
  %20 = cmpxchg volatile ptr %12, i32 %13, i32 %16 acquire monotonic, align 4
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %ompi_coll_base_nbc_reserve_tags.exit, label %opal_thread_compare_exchange_strong_32.exit.i.backedge

opal_datatype_span.exit.thread.a:                 ; preds = %opal_thread_compare_exchange_strong_32.exit.i
  %22 = load volatile i32, ptr %12, align 8, !tbaa !56
  %23 = icmp eq i32 %22, %13
  br i1 %23, label %24, label %opal_thread_compare_exchange_strong_32.exit.i.backedge

opal_thread_compare_exchange_strong_32.exit.i.backedge: ; preds = %opal_datatype_span.exit.thread.a, %19
  br label %opal_thread_compare_exchange_strong_32.exit.i

24:                                               ; preds = %opal_datatype_span.exit.thread.a
  store i32 %16, ptr %12, align 8, !tbaa !56
  br label %ompi_coll_base_nbc_reserve_tags.exit

ompi_coll_base_nbc_reserve_tags.exit:             ; preds = %19, %24
  br i1 %11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %ompi_coll_base_nbc_reserve_tags.exit
  %i.ag = tail call i32 @ompi_request_persistent_noop_create(ptr noundef %9) #5
  br label %nbc_get_noop_request.exit.thread

bb.f:                                             ; preds = %ompi_coll_base_nbc_reserve_tags.exit
  store ptr @ompi_request_empty, ptr %9, align 8, !tbaa !17
  br label %nbc_get_noop_request.exit.thread

bb.g:                                             ; preds = %opal_datatype_span.exit
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ac) #6 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %nbc_get_noop_request.exit.thread, label %nbc_get_noop_request.exit, !prof !61

bb.h:                                             ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %3, i64 24
  %.val147 = load i64, ptr %i.aj, align 8, !tbaa !53
  %i.ak = getelementptr i8, ptr %3, i64 48
  %.val149 = load i64, ptr %i.ak, align 8, !tbaa !54
  %i.al = getelementptr i8, ptr %3, i64 56
  %.val150 = load i64, ptr %i.al, align 8, !tbaa !55
  %i.am = sub nsw i64 %.val150, %.val149
  br label %nbc_get_noop_request.exit

nbc_get_noop_request.exit:                        ; preds = %bb.g, %bb.h
  %.1202 = phi i64 [ %.val147, %bb.h ], [ %.val148, %bb.g ] ; 2 uses
  %.1200 = phi i64 [ %i.am, %bb.h ], [ %i.k, %bb.g ] ; 3 uses
  %.0198 = phi i64 [ 0, %bb.h ], [ %i.w, %bb.g ]  ; 2 uses
  %.1124 = phi ptr [ %2, %bb.h ], [ %6, %bb.g ]   ; 3 uses
  %.1122 = phi ptr [ %1, %bb.h ], [ %5, %bb.g ]   ; 3 uses
  %.1115 = phi ptr [ null, %bb.h ], [ %i.ah, %bb.g ] ; 5 uses
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 56), align 8, !tbaa !63
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.an) #6 ; 31 uses
  %i.ap = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !56
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 32), align 8, !tbaa !64
  %.not.i = icmp eq i32 %i.ap, %i.aq
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %nbc_get_noop_request.exit
  tail call void @opal_class_initialize(ptr noundef nonnull @NBC_Schedule_class) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %nbc_get_noop_request.exit
  %.not9.i = icmp eq ptr %i.ao, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr @NBC_Schedule_class, ptr %i.ao, align 8, !tbaa !65
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 17 uses
  store volatile i32 1, ptr %i.ar, align 8, !tbaa !66
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 40), align 8, !tbaa !67 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !68 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.at, null
  br i1 %.not6.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.au = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.at, %bb.k ]
  %.07.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %i.as, %bb.k ]
  tail call void %i.au(ptr noundef nonnull %i.ao) #5, !inline_history !0
  %i.av = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !68 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !1

opal_obj_new.exit:                                ; preds = %bb.j
  tail call void @free(ptr noundef %.1115) #5
  br label %nbc_get_noop_request.exit.thread

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.k
  br i1 %.not, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.loopexit
  %i.ax = sext i32 %.val to i64                   ; 4 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %.1122, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !56 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  %i.bb = icmp ne i64 %.1202, 0
  %or.cond3 = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond3, label %bb.m, label %bb.af

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ax
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !56
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul nsw i64 %i.k, %i.be
  %i.bg = getelementptr inbounds i8, ptr %.0125, i64 %i.bf
  %i.bh = getelementptr inbounds [4 x i8], ptr %.1124, i64 %i.ax
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !56
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul nsw i64 %.1200, %i.bj
  %i.bl = getelementptr inbounds i8, ptr %.0120, i64 %i.bk
  %i.bm = zext nneg i32 %i.az to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ax
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !56
  %i.bp = sext i32 %i.bo to i64
  %i.bq = tail call i32 @NBC_Sched_copy(ptr noundef %i.bl, i8 noundef signext 0, i64 noundef %i.bm, ptr noundef %3, ptr noundef %i.bg, i8 noundef signext 0, i64 noundef %i.bp, ptr noundef nonnull %7, ptr noundef nonnull %i.ao, i1 noundef zeroext false) #5 ; 3 uses
  %.not140 = icmp eq i32 %i.bq, 0
  br i1 %.not140, label %bb.af, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  %i.br = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.o, label %bb.p, !prof !61

bb.o:                                             ; preds = %bb.n
  %i.bt = atomicrmw volatile add ptr %i.ar, i32 -1 monotonic, align 4
  %i.bu = add i32 %i.bt, -1
  br label %opal_thread_add_fetch_32.exit

bb.p:                                             ; preds = %bb.n
  %i.bv = load volatile i32, ptr %i.ar, align 8, !tbaa !56
  %i.bw = add nsw i32 %i.bv, -1
  store volatile i32 %i.bw, ptr %i.ar, align 8, !tbaa !56
  %i.bx = load volatile i32, ptr %i.ar, align 8, !tbaa !56
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.o, %bb.p
  %.0.i154 = phi i32 [ %i.bu, %bb.o ], [ %i.bx, %bb.p ]
  %i.by = icmp eq i32 %.0.i154, 0
  br i1 %i.by, label %bb.q, label %nbc_get_noop_request.exit.thread

bb.q:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !65
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !69 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !68 ; 2 uses
  %.not6.i = icmp eq ptr %i.cc, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.i
  %i.cd = phi ptr [ %i.cf, %.lr.ph.i ], [ %i.cc, %bb.q ]
  %.07.i = phi ptr [ %i.ce, %.lr.ph.i ], [ %i.cb, %bb.q ]
  tail call void %i.cd(ptr noundef nonnull %i.ao) #5, !inline_history !2
  %i.ce = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !68 ; 2 uses
  %.not.i155 = icmp eq ptr %i.cf, null
  br i1 %.not.i155, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !3

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.q
  tail call void @free(ptr noundef nonnull %i.ao) #5
  br label %nbc_get_noop_request.exit.thread

.critedge:                                        ; preds = %.loopexit
  %i.cg = add nuw nsw i32 %.val146.val, 1
  %i.ch = sdiv i32 %i.cg, 2
  %.not139155.i = icmp sgt i32 %.val146.val, 2
  br i1 %.not139155.i, label %.lr.ph.i156, label %._crit_edge.i

.lr.ph.i156:                                      ; preds = %.critedge
  %i.ci = add nsw i32 %.val146.val, %.val
  %i.cj = icmp eq i64 %.val148, 0
  %i.ck = sub nsw i64 0, %.0198
  %i.cl = inttoptr i64 %i.ck to ptr               ; 2 uses
  br i1 %i.cj, label %a2av_sched_inplace.exit, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i156
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 2)
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.split.preheader.i
  %.0116156.i = phi i32 [ %i.dx, %bb.z ], [ 1, %.lr.ph.split.preheader.i ] ; 3 uses
  %i.cm = add nsw i32 %.0116156.i, %.val
  %i.cn = srem i32 %i.cm, %.val146.val            ; 3 uses
  %i.co = sub i32 %i.ci, %.0116156.i
  %i.cp = srem i32 %i.co, %.val146.val            ; 3 uses
  %i.cq = sext i32 %i.cn to i64                   ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %6, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !56
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i64 %i.k, %i.ct
  %i.cv = getelementptr inbounds i8, ptr %.0125, i64 %i.cu ; 2 uses
  %i.cw = sext i32 %i.cp to i64                   ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %6, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !56
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul nsw i64 %i.k, %i.cz
  %i.db = getelementptr inbounds i8, ptr %.0125, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.cw ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !56 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.split.i
  %i.df = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.dg = tail call i32 @NBC_Sched_copy(ptr noundef %i.db, i8 noundef signext 0, i64 noundef %i.df, ptr noundef %7, ptr noundef %i.cl, i8 noundef signext 1, i64 noundef %i.df, ptr noundef %7, ptr noundef nonnull %i.ao, i1 noundef zeroext true) #5 ; 2 uses
  %.not.i157 = icmp eq i32 %i.dg, 0
  br i1 %.not.i157, label %bb.s, label %.thread152.i, !prof !12

bb.s:                                             ; preds = %bb.r, %.lr.ph.split.i
  %i.dh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.cq ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !56 ; 2 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dk = zext nneg i32 %i.di to i64
  %i.dl = tail call i32 @NBC_Sched_send(ptr noundef %i.cv, i8 noundef signext 0, i64 noundef %i.dk, ptr noundef %7, i32 noundef %i.cn, ptr noundef nonnull %i.ao, i1 noundef zeroext false) #5 ; 2 uses
  %.not135.i = icmp eq i32 %i.dl, 0
  br i1 %.not135.i, label %bb.u, label %.thread152.i, !prof !12

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dm = load i32, ptr %i.dc, align 4, !tbaa !56 ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %bb.u
  %i.do = zext nneg i32 %i.dm to i64
  %i.dp = tail call i32 @NBC_Sched_recv(ptr noundef %i.db, i8 noundef signext 0, i64 noundef %i.do, ptr noundef %7, i32 noundef %i.cp, ptr noundef nonnull %i.ao, i1 noundef zeroext true) #5 ; 2 uses
  %.not136.i = icmp eq i32 %i.dp, 0
  br i1 %.not136.i, label %bb.w, label %.thread152.i, !prof !12

bb.w:                                             ; preds = %bb.v
  %.pr.i = load i32, ptr %i.dc, align 4, !tbaa !56 ; 2 uses
  %i.dq = icmp sgt i32 %.pr.i, 0
  br i1 %i.dq, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %bb.w
  %i.dr = zext nneg i32 %.pr.i to i64
  %i.ds = tail call i32 @NBC_Sched_send(ptr noundef %i.cl, i8 noundef signext 1, i64 noundef %i.dr, ptr noundef %7, i32 noundef %i.cp, ptr noundef nonnull %i.ao, i1 noundef zeroext false) #5 ; 2 uses
  %.not137.i = icmp eq i32 %i.ds, 0
  br i1 %.not137.i, label %.thread.i, label %.thread152.i, !prof !12

.thread.i:                                        ; preds = %bb.x, %bb.w, %bb.u
  %i.dt = load i32, ptr %i.dh, align 4, !tbaa !56 ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread.i
  %i.dv = zext nneg i32 %i.dt to i64
  %i.dw = tail call i32 @NBC_Sched_recv(ptr noundef %i.cv, i8 noundef signext 0, i64 noundef %i.dv, ptr noundef %7, i32 noundef %i.cn, ptr noundef nonnull %i.ao, i1 noundef zeroext true) #5 ; 2 uses
  %.not138.i = icmp eq i32 %i.dw, 0
  br i1 %.not138.i, label %bb.z, label %.thread152.i, !prof !12

bb.z:                                             ; preds = %bb.y, %.thread.i
  %i.dx = add nuw nsw i32 %.0116156.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dx, %smax.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !72

._crit_edge.i:                                    ; preds = %bb.z, %.critedge
  %i.dy = and i32 %.val146.val, 1
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.aa, label %a2av_sched_inplace.exit

bb.aa:                                            ; preds = %._crit_edge.i
  %i.ea = ashr exact i32 %.val146.val, 1
  %i.eb = add nsw i32 %i.ea, %.val
  %i.ec = srem i32 %i.eb, %.val146.val            ; 3 uses
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !56
  %i.eg = sext i32 %i.ef to i64
  %i.eh = mul nsw i64 %i.k, %i.eg
  %i.ei = getelementptr inbounds i8, ptr %.0125, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ed ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !56 ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %bb.ab, label %a2av_sched_inplace.exit

bb.ab:                                            ; preds = %bb.aa
  %i.em = zext nneg i32 %i.ek to i64              ; 2 uses
  %i.en = sub nsw i64 0, %.0198
  %i.eo = inttoptr i64 %i.en to ptr               ; 2 uses
  %i.ep = tail call i32 @NBC_Sched_copy(ptr noundef %i.ei, i8 noundef signext 0, i64 noundef %i.em, ptr noundef %7, ptr noundef %i.eo, i8 noundef signext 1, i64 noundef %i.em, ptr noundef %7, ptr noundef nonnull %i.ao, i1 noundef zeroext true) #5 ; 2 uses
  %.not140.i = icmp eq i32 %i.ep, 0
  br i1 %.not140.i, label %bb.ac, label %.thread152.i, !prof !12

bb.ac:                                            ; preds = %bb.ab
  %.pr149.i = load i32, ptr %i.ej, align 4, !tbaa !56 ; 2 uses
  %i.eq = icmp sgt i32 %.pr149.i, 0
  br i1 %i.eq, label %bb.ad, label %a2av_sched_inplace.exit

bb.ad:                                            ; preds = %bb.ac
  %i.er = zext nneg i32 %.pr149.i to i64
  %i.es = tail call i32 @NBC_Sched_send(ptr noundef %i.eo, i8 noundef signext 1, i64 noundef %i.er, ptr noundef %7, i32 noundef %i.ec, ptr noundef nonnull %i.ao, i1 noundef zeroext false) #5 ; 2 uses
  %.not141.i = icmp eq i32 %i.es, 0
  br i1 %.not141.i, label %bb.ae, label %.thread152.i, !prof !12

bb.ae:                                            ; preds = %bb.ad
  %i.et = load i32, ptr %i.ej, align 4, !tbaa !56
  %i.eu = sext i32 %i.et to i64
  %i.ev = tail call i32 @NBC_Sched_recv(ptr noundef %i.ei, i8 noundef signext 0, i64 noundef %i.eu, ptr noundef %7, i32 noundef %i.ec, ptr noundef nonnull %i.ao, i1 noundef zeroext true) #5 ; 2 uses
  %.not142.i = icmp eq i32 %i.ev, 0
  br i1 %.not142.i, label %a2av_sched_inplace.exit, label %.thread152.i, !prof !12

bb.af:                                            ; preds = %bb.l, %bb.m
  %.not5253.i = icmp sgt i32 %.val146.val, 0
  br i1 %.not5253.i, label %.lr.ph.i159, label %a2av_sched_inplace.exit

.lr.ph.i159:                                      ; preds = %bb.af
  %.not67.i = icmp eq i64 %.1202, 0
  %.not68.i = icmp eq i64 %.val148, 0             ; 2 uses
  br i1 %.not67.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i160

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i159
  br i1 %.not68.i, label %a2av_sched_inplace.exit, label %.lr.ph.split.us.split.preheader.i

.lr.ph.split.us.split.preheader.i:                ; preds = %.lr.ph.split.us.i
  %i.ew = zext i32 %.val to i64
  %wide.trip.count83.i = zext nneg i32 %.val146.val to i64
  br label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.i:                          ; preds = %bb.ai, %.lr.ph.split.us.split.preheader.i
  %indvars.iv80.i = phi i64 [ 0, %.lr.ph.split.us.split.preheader.i ], [ %indvars.iv.next81.i, %bb.ai ] ; 5 uses
  %i.ex = icmp eq i64 %indvars.iv80.i, %i.ew
  br i1 %i.ex, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.split.us.split.i
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv80.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !56 ; 2 uses
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv80.i
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !56
  %i.fd = sext i32 %i.fc to i64
  %i.fe = mul nsw i64 %i.k, %i.fd
  %i.ff = getelementptr inbounds i8, ptr %.0125, i64 %i.fe
  %i.fg = zext nneg i32 %i.ez to i64
  %i.fh = trunc nuw nsw i64 %indvars.iv80.i to i32
  %i.fi = tail call i32 @NBC_Sched_recv(ptr noundef %i.ff, i8 noundef signext 0, i64 noundef %i.fg, ptr noundef %7, i32 noundef %i.fh, ptr noundef nonnull %i.ao, i1 noundef zeroext false) #5 ; 2 uses
  %.not51.us.i = icmp eq i32 %i.fi, 0
  br i1 %.not51.us.i, label %bb.ai, label %.thread152.i

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %.lr.ph.split.us.split.i
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %exitcond84.not.i = icmp eq i64 %indvars.iv.next81.i, %wide.trip.count83.i
  br i1 %exitcond84.not.i, label %a2av_sched_inplace.exit, label %.lr.ph.split.us.split.i, !llvm.loop !73

.lr.ph.split.i160:                                ; preds = %.lr.ph.i159
  %i.fj = zext i32 %.val to i64                   ; 2 uses
  %wide.trip.count78.i = zext nneg i32 %.val146.val to i64 ; 2 uses
  br i1 %.not68.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i160, %bb.al
  %indvars.iv75.i = phi i64 [ %indvars.iv.next76.i, %bb.al ], [ 0, %.lr.ph.split.i160 ] ; 5 uses
  %i.fk = icmp eq i64 %indvars.iv75.i, %i.fj
  br i1 %i.fk, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.split.split.us.i
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.1122, i64 %indvars.iv75.i
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !56 ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.1124, i64 %indvars.iv75.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !56
  %i.fq = sext i32 %i.fp to i64
  %i.fr = mul nsw i64 %.1200, %i.fq
  %i.fs = getelementptr inbounds i8, ptr %.0120, i64 %i.fr
  %i.ft = zext nneg i32 %i.fm to i64
  %i.fu = trunc nuw nsw i64 %indvars.iv75.i to i32
  %i.fv = tail call i32 @NBC_Sched_send(ptr noundef %i.fs, i8 noundef signext 0, i64 noundef %i.ft, ptr noundef %3, i32 noundef %i.fu, ptr noundef nonnull %i.ao, i1 noundef zeroext false) #5 ; 2 uses
  %.not.us.i = icmp eq i32 %i.fv, 0
  br i1 %.not.us.i, label %bb.al, label %.thread152.i

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.lr.ph.split.split.us.i
  %indvars.iv.next76.i = add nuw nsw i64 %indvars.iv75.i, 1 ; 2 uses
  %exitcond79.not.i = icmp eq i64 %indvars.iv.next76.i, %wide.trip.count78.i
  br i1 %exitcond79.not.i, label %a2av_sched_inplace.exit, label %.lr.ph.split.split.us.i, !llvm.loop !73

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i160, %bb.aq
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.aq ], [ 0, %.lr.ph.split.i160 ] ; 8 uses
  %i.fw = icmp eq i64 %indvars.iv.i, %i.fj
  br i1 %i.fw, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %.lr.ph.split.split.i
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.1122, i64 %indvars.iv.i
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !56 ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.1124, i64 %indvars.iv.i
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !56
  %i.gc = sext i32 %i.gb to i64
  %i.gd = mul nsw i64 %.1200, %i.gc
  %i.ge = getelementptr inbounds i8, ptr %.0120, i64 %i.gd
  %i.gf = zext nneg i32 %i.fy to i64
  %i.gg = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.gh = tail call i32 @NBC_Sched_send(ptr noundef %i.ge, i8 noundef signext 0, i64 noundef %i.gf, ptr noundef %3, i32 noundef %i.gg, ptr noundef nonnull %i.ao, i1 noundef zeroext false) #5 ; 2 uses
  %.not.i162 = icmp eq i32 %i.gh, 0
  br i1 %.not.i162, label %bb.ao, label %.thread152.i

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !56 ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !56
  %i.gn = sext i32 %i.gm to i64
  %i.go = mul nsw i64 %i.k, %i.gn
  %i.gp = getelementptr inbounds i8, ptr %.0125, i64 %i.go
  %i.gq = zext nneg i32 %i.gj to i64
  %i.gr = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.gs = tail call i32 @NBC_Sched_recv(ptr noundef %i.gp, i8 noundef signext 0, i64 noundef %i.gq, ptr noundef %7, i32 noundef %i.gr, ptr noundef nonnull %i.ao, i1 noundef zeroext false) #5 ; 2 uses
  %.not51.i = icmp eq i32 %i.gs, 0
  br i1 %.not51.i, label %bb.aq, label %.thread152.i

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %.lr.ph.split.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i161 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count78.i
  br i1 %exitcond.not.i161, label %a2av_sched_inplace.exit, label %.lr.ph.split.split.i, !llvm.loop !73

.thread152.i:                                     ; preds = %bb.y, %bb.r, %bb.t, %bb.v, %bb.x, %bb.an, %bb.ap, %bb.ak, %bb.ah, %bb.ae, %bb.ad, %bb.ab
  %.0117.ph = phi i32 [ %i.es, %bb.ad ], [ %i.fi, %bb.ah ], [ %i.gs, %bb.ap ], [ %i.ev, %bb.ae ], [ %i.fv, %bb.ak ], [ %i.ep, %bb.ab ], [ %i.gh, %bb.an ], [ %i.dw, %bb.y ], [ %i.dg, %bb.r ], [ %i.dl, %bb.t ], [ %i.dp, %bb.v ], [ %i.ds, %bb.x ]
  %i.gt = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.ar, label %bb.as, !prof !61

bb.ar:                                            ; preds = %.thread152.i
  %i.gv = atomicrmw volatile add ptr %i.ar, i32 -1 monotonic, align 4
  %i.gw = add i32 %i.gv, -1
  br label %opal_thread_add_fetch_32.exit164

bb.as:                                            ; preds = %.thread152.i
  %i.gx = load volatile i32, ptr %i.ar, align 8, !tbaa !56
  %i.gy = add nsw i32 %i.gx, -1
  store volatile i32 %i.gy, ptr %i.ar, align 8, !tbaa !56
  %i.gz = load volatile i32, ptr %i.ar, align 8, !tbaa !56
  br label %opal_thread_add_fetch_32.exit164

opal_thread_add_fetch_32.exit164:                 ; preds = %bb.ar, %bb.as
  %.0.i163 = phi i32 [ %i.gw, %bb.ar ], [ %i.gz, %bb.as ]
  %i.ha = icmp eq i32 %.0.i163, 0
  br i1 %i.ha, label %bb.at, label %bb.au

bb.at:                                            ; preds = %opal_thread_add_fetch_32.exit164
  %i.hb = load ptr, ptr %i.ao, align 8, !tbaa !65
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !69 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !68 ; 2 uses
  %.not6.i165 = icmp eq ptr %i.he, null
  br i1 %.not6.i165, label %opal_obj_run_destructors.exit170, label %.lr.ph.i166

.lr.ph.i166:                                      ; preds = %bb.at, %.lr.ph.i166
  %i.hf = phi ptr [ %i.hh, %.lr.ph.i166 ], [ %i.he, %bb.at ]
  %.07.i167 = phi ptr [ %i.hg, %.lr.ph.i166 ], [ %i.hd, %bb.at ]
  tail call void %i.hf(ptr noundef nonnull %i.ao) #5, !inline_history !2
  %i.hg = getelementptr inbounds nuw i8, ptr %.07.i167, i64 8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !68 ; 2 uses
  %.not.i168 = icmp eq ptr %i.hh, null
  br i1 %.not.i168, label %opal_obj_run_destructors.exit170, label %.lr.ph.i166, !llvm.loop !3

opal_obj_run_destructors.exit170:                 ; preds = %.lr.ph.i166, %bb.at
  tail call void @free(ptr noundef nonnull %i.ao) #5
  br label %bb.au

bb.au:                                            ; preds = %opal_obj_run_destructors.exit170, %opal_thread_add_fetch_32.exit164
  tail call void @free(ptr noundef %.1115) #5
  br label %nbc_get_noop_request.exit.thread

a2av_sched_inplace.exit:                          ; preds = %bb.aq, %bb.al, %bb.ai, %.lr.ph.i156, %._crit_edge.i, %bb.aa, %bb.ac, %bb.ae, %bb.af, %.lr.ph.split.us.i
  %i.hi = tail call i32 @NBC_Sched_commit(ptr noundef nonnull %i.ao) #5 ; 2 uses
  %.not142 = icmp eq i32 %i.hi, 0
  br i1 %.not142, label %bb.ba, label %bb.av, !prof !12

bb.av:                                            ; preds = %a2av_sched_inplace.exit
  %i.hj = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.aw, label %bb.ax, !prof !61

bb.aw:                                            ; preds = %bb.av
  %i.hl = atomicrmw volatile add ptr %i.ar, i32 -1 monotonic, align 4
  %i.hm = add i32 %i.hl, -1
  br label %opal_thread_add_fetch_32.exit172

bb.ax:                                            ; preds = %bb.av
  %i.hn = load volatile i32, ptr %i.ar, align 8, !tbaa !56
  %i.ho = add nsw i32 %i.hn, -1
  store volatile i32 %i.ho, ptr %i.ar, align 8, !tbaa !56
  %i.hp = load volatile i32, ptr %i.ar, align 8, !tbaa !56
  br label %opal_thread_add_fetch_32.exit172

opal_thread_add_fetch_32.exit172:                 ; preds = %bb.aw, %bb.ax
  %.0.i171 = phi i32 [ %i.hm, %bb.aw ], [ %i.hp, %bb.ax ]
  %i.hq = icmp eq i32 %.0.i171, 0
  br i1 %i.hq, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %opal_thread_add_fetch_32.exit172
  %i.hr = load ptr, ptr %i.ao, align 8, !tbaa !65
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 48
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !69 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !68 ; 2 uses
  %.not6.i173 = icmp eq ptr %i.hu, null
  br i1 %.not6.i173, label %opal_obj_run_destructors.exit178, label %.lr.ph.i174

.lr.ph.i174:                                      ; preds = %bb.ay, %.lr.ph.i174
  %i.hv = phi ptr [ %i.hx, %.lr.ph.i174 ], [ %i.hu, %bb.ay ]
  %.07.i175 = phi ptr [ %i.hw, %.lr.ph.i174 ], [ %i.ht, %bb.ay ]
  tail call void %i.hv(ptr noundef nonnull %i.ao) #5, !inline_history !2
  %i.hw = getelementptr inbounds nuw i8, ptr %.07.i175, i64 8 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !68 ; 2 uses
  %.not.i176 = icmp eq ptr %i.hx, null
  br i1 %.not.i176, label %opal_obj_run_destructors.exit178, label %.lr.ph.i174, !llvm.loop !3

opal_obj_run_destructors.exit178:                 ; preds = %.lr.ph.i174, %bb.ay
  tail call void @free(ptr noundef nonnull %i.ao) #5
  br label %bb.az

bb.az:                                            ; preds = %opal_obj_run_destructors.exit178, %opal_thread_add_fetch_32.exit172
  tail call void @free(ptr noundef %.1115) #5
  br label %nbc_get_noop_request.exit.thread

bb.ba:                                            ; preds = %a2av_sched_inplace.exit
  %i.hy = tail call i32 @NBC_Schedule_request(ptr noundef nonnull %i.ao, ptr noundef %8, ptr noundef %10, i1 noundef zeroext %11, ptr noundef %9, ptr noundef %.1115) #5 ; 2 uses
  %.not143 = icmp eq i32 %i.hy, 0
  br i1 %.not143, label %nbc_get_noop_request.exit.thread, label %bb.bb, !prof !12

bb.bb:                                            ; preds = %bb.ba
  %i.hz = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.bc, label %bb.bd, !prof !61

bb.bc:                                            ; preds = %bb.bb
  %i.ib = atomicrmw volatile add ptr %i.ar, i32 -1 monotonic, align 4
  %i.ic = add i32 %i.ib, -1
  br label %opal_thread_add_fetch_32.exit180

bb.bd:                                            ; preds = %bb.bb
  %i.id = load volatile i32, ptr %i.ar, align 8, !tbaa !56
  %i.ie = add nsw i32 %i.id, -1
  store volatile i32 %i.ie, ptr %i.ar, align 8, !tbaa !56
  %i.if = load volatile i32, ptr %i.ar, align 8, !tbaa !56
  br label %opal_thread_add_fetch_32.exit180

opal_thread_add_fetch_32.exit180:                 ; preds = %bb.bc, %bb.bd
  %.0.i179 = phi i32 [ %i.ic, %bb.bc ], [ %i.if, %bb.bd ]
  %i.ig = icmp eq i32 %.0.i179, 0
  br i1 %i.ig, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %opal_thread_add_fetch_32.exit180
  %i.ih = load ptr, ptr %i.ao, align 8, !tbaa !65
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !69 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !68 ; 2 uses
  %.not6.i181 = icmp eq ptr %i.ik, null
  br i1 %.not6.i181, label %opal_obj_run_destructors.exit186, label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %bb.be, %.lr.ph.i182
  %i.il = phi ptr [ %i.in, %.lr.ph.i182 ], [ %i.ik, %bb.be ]
  %.07.i183 = phi ptr [ %i.im, %.lr.ph.i182 ], [ %i.ij, %bb.be ]
  tail call void %i.il(ptr noundef nonnull %i.ao) #5, !inline_history !2
  %i.im = getelementptr inbounds nuw i8, ptr %.07.i183, i64 8 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !68 ; 2 uses
  %.not.i184 = icmp eq ptr %i.in, null
  br i1 %.not.i184, label %opal_obj_run_destructors.exit186, label %.lr.ph.i182, !llvm.loop !3

opal_obj_run_destructors.exit186:                 ; preds = %.lr.ph.i182, %bb.be
  tail call void @free(ptr noundef nonnull %i.ao) #5
  br label %bb.bf

bb.bf:                                            ; preds = %opal_obj_run_destructors.exit186, %opal_thread_add_fetch_32.exit180
  tail call void @free(ptr noundef %.1115) #5
  br label %nbc_get_noop_request.exit.thread

nbc_get_noop_request.exit.thread:                 ; preds = %bb.f, %bb.e, %bb.g, %bb.ba, %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit, %bb.bf, %bb.az, %bb.au, %opal_obj_new.exit
  %.1119 = phi i32 [ 0, %bb.ba ], [ -2, %opal_obj_new.exit ], [ %.0117.ph, %bb.au ], [ %i.hi, %bb.az ], [ %i.hy, %bb.bf ], [ %i.bq, %opal_thread_add_fetch_32.exit ], [ %i.bq, %opal_obj_run_destructors.exit ], [ 0, %bb.f ], [ %i.ag, %bb.e ], [ -2, %bb.g ]
  ret i32 %.1119
}

declare i32 @NBC_Start(ptr noundef) local_unnamed_addr #1

declare void @NBC_Return_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_libnbc_ialltoallv_inter(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_alltoallv_inter_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i1 noundef zeroext false) ; 2 uses
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
define internal fastcc i32 @nbc_alltoallv_inter_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i1 noundef zeroext %11) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 24
  %.val96 = load i64, ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr i8, ptr %7, i64 24
  %.val = load i64, ptr %i.b, align 8, !tbaa !53
  %i.c = getelementptr i8, ptr %3, i64 48
  %.val99 = load i64, ptr %i.c, align 8, !tbaa !54
  %i.d = getelementptr i8, ptr %3, i64 56
  %.val100 = load i64, ptr %i.d, align 8, !tbaa !55
  %i.e = sub nsw i64 %.val100, %.val99
  %i.f = getelementptr i8, ptr %7, i64 48
  %.val97 = load i64, ptr %i.f, align 8, !tbaa !54
  %i.g = getelementptr i8, ptr %7, i64 56
  %.val98 = load i64, ptr %i.g, align 8, !tbaa !55
  %i.h = sub nsw i64 %.val98, %.val97
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.j = load i32, ptr %i.i, align 8, !tbaa !84
  %i.k = and i32 %i.j, 1
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %ompi_comm_remote_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 272
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !85
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !47
  br label %ompi_comm_remote_size.exit

ompi_comm_remote_size.exit:                       ; preds = %bb.a, %bb.b
  %i.p = phi i32 [ %i.o, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 56), align 8, !tbaa !63
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #6 ; 17 uses
  %i.s = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !56
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 32), align 8, !tbaa !64
  %.not.i101 = icmp eq i32 %i.s, %i.t
  br i1 %.not.i101, label %bb.d, label %bb.c

bb.c:                                             ; preds = %ompi_comm_remote_size.exit
  tail call void @opal_class_initialize(ptr noundef nonnull @NBC_Schedule_class) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %ompi_comm_remote_size.exit
  %.not9.i = icmp eq ptr %i.r, null
  br i1 %.not9.i, label %opal_obj_new.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @NBC_Schedule_class, ptr %i.r, align 8, !tbaa !65
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 17 uses
  store volatile i32 1, ptr %i.u, align 8, !tbaa !66
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 40), align 8, !tbaa !67 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !68   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.w, null
  br i1 %.not6.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.x = phi ptr [ %i.z, %.lr.ph.i.i ], [ %i.w, %bb.e ]
  %.07.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.v, %bb.e ]
  tail call void %i.x(ptr noundef nonnull %i.r) #5, !inline_history !0
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !68   ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i, !llvm.loop !1

opal_obj_new.exit:                                ; preds = %.lr.ph.i.i, %bb.e
  %.not93138 = icmp sgt i32 %i.p, 0
  br i1 %.not93138, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %opal_obj_new.exit
  %i.aa = icmp ne i64 %.val96, 0
  %i.ab = icmp ne i64 %.val, 0
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 7 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !56 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %or.cond = select i1 %i.ae, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !56
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul nsw i64 %i.e, %i.ah
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = zext nneg i32 %i.ad to i64
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %i.am = tail call i32 @NBC_Sched_send(ptr noundef %i.aj, i8 noundef signext 0, i64 noundef %i.ak, ptr noundef %3, i32 noundef %i.al, ptr noundef nonnull %i.r, i1 noundef zeroext false) #5 ; 4 uses
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.l, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.an = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %bb.j, !prof !61

bb.i:                                             ; preds = %bb.h
  %i.ap = atomicrmw volatile add ptr %i.u, i32 -1 monotonic, align 4
  %i.aq = add i32 %i.ap, -1
  br label %opal_thread_add_fetch_32.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = load volatile i32, ptr %i.u, align 8, !tbaa !56
  %i.as = add nsw i32 %i.ar, -1
  store volatile i32 %i.as, ptr %i.u, align 8, !tbaa !56
  %i.at = load volatile i32, ptr %i.u, align 8, !tbaa !56
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.aq, %bb.i ], [ %i.at, %bb.j ]
  %i.au = icmp eq i32 %.0.i, 0
  br i1 %i.au, label %bb.k, label %opal_obj_new.exit.thread

bb.k:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.av = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !69 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !68 ; 2 uses
  %.not6.i = icmp eq ptr %i.ay, null
  br i1 %.not6.i, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %i.az = phi ptr [ %i.bb, %.lr.ph.i ], [ %i.ay, %bb.k ]
  %.07.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %i.ax, %bb.k ]
  tail call void %i.az(ptr noundef nonnull %i.r) #5, !inline_history !2
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !68 ; 2 uses
  %.not.i102 = icmp eq ptr %i.bb, null
  br i1 %.not.i102, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i, !llvm.loop !3

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !56 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  %or.cond5 = select i1 %i.be, i1 %i.ab, i1 false
  br i1 %or.cond5, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !56
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %i.h, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %4, i64 %i.bi
  %i.bk = zext nneg i32 %i.bd to i64
  %i.bl = trunc nuw nsw i64 %indvars.iv to i32
  %i.bm = tail call i32 @NBC_Sched_recv(ptr noundef %i.bj, i8 noundef signext 0, i64 noundef %i.bk, ptr noundef %7, i32 noundef %i.bl, ptr noundef nonnull %i.r, i1 noundef zeroext false) #5 ; 4 uses
  %.not92 = icmp eq i32 %i.bm, 0
  br i1 %.not92, label %bb.r, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  %i.bn = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.o, label %bb.p, !prof !61

bb.o:                                             ; preds = %bb.n
  %i.bp = atomicrmw volatile add ptr %i.u, i32 -1 monotonic, align 4
  %i.bq = add i32 %i.bp, -1
  br label %opal_thread_add_fetch_32.exit104

bb.p:                                             ; preds = %bb.n
  %i.br = load volatile i32, ptr %i.u, align 8, !tbaa !56
  %i.bs = add nsw i32 %i.br, -1
  store volatile i32 %i.bs, ptr %i.u, align 8, !tbaa !56
  %i.bt = load volatile i32, ptr %i.u, align 8, !tbaa !56
  br label %opal_thread_add_fetch_32.exit104

opal_thread_add_fetch_32.exit104:                 ; preds = %bb.o, %bb.p
  %.0.i103 = phi i32 [ %i.bq, %bb.o ], [ %i.bt, %bb.p ]
  %i.bu = icmp eq i32 %.0.i103, 0
  br i1 %i.bu, label %bb.q, label %opal_obj_new.exit.thread

bb.q:                                             ; preds = %opal_thread_add_fetch_32.exit104
  %i.bv = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !69 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !68 ; 2 uses
  %.not6.i105 = icmp eq ptr %i.by, null
  br i1 %.not6.i105, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %bb.q, %.lr.ph.i106
  %i.bz = phi ptr [ %i.cb, %.lr.ph.i106 ], [ %i.by, %bb.q ]
  %.07.i107 = phi ptr [ %i.ca, %.lr.ph.i106 ], [ %i.bx, %bb.q ]
  tail call void %i.bz(ptr noundef nonnull %i.r) #5, !inline_history !2
  %i.ca = getelementptr inbounds nuw i8, ptr %.07.i107, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !68 ; 2 uses
  %.not.i108 = icmp eq ptr %i.cb, null
  br i1 %.not.i108, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i106, !llvm.loop !3

bb.r:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.r, %opal_obj_new.exit
  %i.cc = tail call i32 @NBC_Sched_commit(ptr noundef nonnull %i.r) #5 ; 4 uses
  %.not94 = icmp eq i32 %i.cc, 0
  br i1 %.not94, label %bb.w, label %bb.s, !prof !12

bb.s:                                             ; preds = %._crit_edge
  %i.cd = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.t, label %bb.u, !prof !61

bb.t:                                             ; preds = %bb.s
  %i.cf = atomicrmw volatile add ptr %i.u, i32 -1 monotonic, align 4
  %i.cg = add i32 %i.cf, -1
  br label %opal_thread_add_fetch_32.exit111

bb.u:                                             ; preds = %bb.s
  %i.ch = load volatile i32, ptr %i.u, align 8, !tbaa !56
  %i.ci = add nsw i32 %i.ch, -1
  store volatile i32 %i.ci, ptr %i.u, align 8, !tbaa !56
  %i.cj = load volatile i32, ptr %i.u, align 8, !tbaa !56
  br label %opal_thread_add_fetch_32.exit111

opal_thread_add_fetch_32.exit111:                 ; preds = %bb.t, %bb.u
  %.0.i110 = phi i32 [ %i.cg, %bb.t ], [ %i.cj, %bb.u ]
  %i.ck = icmp eq i32 %.0.i110, 0
  br i1 %i.ck, label %bb.v, label %opal_obj_new.exit.thread

bb.v:                                             ; preds = %opal_thread_add_fetch_32.exit111
  %i.cl = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !69 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !68 ; 2 uses
  %.not6.i112 = icmp eq ptr %i.co, null
  br i1 %.not6.i112, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.v, %.lr.ph.i113
  %i.cp = phi ptr [ %i.cr, %.lr.ph.i113 ], [ %i.co, %bb.v ]
  %.07.i114 = phi ptr [ %i.cq, %.lr.ph.i113 ], [ %i.cn, %bb.v ]
  tail call void %i.cp(ptr noundef nonnull %i.r) #5, !inline_history !2
  %i.cq = getelementptr inbounds nuw i8, ptr %.07.i114, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !68 ; 2 uses
  %.not.i115 = icmp eq ptr %i.cr, null
  br i1 %.not.i115, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i113, !llvm.loop !3

bb.w:                                             ; preds = %._crit_edge
  %i.cs = tail call i32 @NBC_Schedule_request(ptr noundef nonnull %i.r, ptr noundef %8, ptr noundef %10, i1 noundef zeroext %11, ptr noundef %9, ptr noundef null) #5 ; 4 uses
  %.not95 = icmp eq i32 %i.cs, 0
  br i1 %.not95, label %opal_obj_new.exit.thread, label %bb.x, !prof !12

bb.x:                                             ; preds = %bb.w
  %i.ct = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.y, label %bb.z, !prof !61

bb.y:                                             ; preds = %bb.x
  %i.cv = atomicrmw volatile add ptr %i.u, i32 -1 monotonic, align 4
  %i.cw = add i32 %i.cv, -1
  br label %opal_thread_add_fetch_32.exit118

bb.z:                                             ; preds = %bb.x
  %i.cx = load volatile i32, ptr %i.u, align 8, !tbaa !56
  %i.cy = add nsw i32 %i.cx, -1
  store volatile i32 %i.cy, ptr %i.u, align 8, !tbaa !56
  %i.cz = load volatile i32, ptr %i.u, align 8, !tbaa !56
  br label %opal_thread_add_fetch_32.exit118

opal_thread_add_fetch_32.exit118:                 ; preds = %bb.y, %bb.z
  %.0.i117 = phi i32 [ %i.cw, %bb.y ], [ %i.cz, %bb.z ]
  %i.da = icmp eq i32 %.0.i117, 0
  br i1 %i.da, label %bb.aa, label %opal_obj_new.exit.thread

bb.aa:                                            ; preds = %opal_thread_add_fetch_32.exit118
  %i.db = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !69 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !68 ; 2 uses
  %.not6.i119 = icmp eq ptr %i.de, null
  br i1 %.not6.i119, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %bb.aa, %.lr.ph.i120
  %i.df = phi ptr [ %i.dh, %.lr.ph.i120 ], [ %i.de, %bb.aa ]
  %.07.i121 = phi ptr [ %i.dg, %.lr.ph.i120 ], [ %i.dd, %bb.aa ]
  tail call void %i.df(ptr noundef nonnull %i.r) #5, !inline_history !2
  %i.dg = getelementptr inbounds nuw i8, ptr %.07.i121, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !68 ; 2 uses
  %.not.i122 = icmp eq ptr %i.dh, null
  br i1 %.not.i122, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i120, !llvm.loop !3

opal_obj_new.exit.thread.sink.split:              ; preds = %.lr.ph.i, %.lr.ph.i106, %.lr.ph.i113, %.lr.ph.i120, %bb.aa, %bb.v, %bb.q, %bb.k
  %.682.ph = phi i32 [ %i.am, %bb.k ], [ %i.bm, %bb.q ], [ %i.cc, %bb.v ], [ %i.bm, %.lr.ph.i106 ], [ %i.cc, %.lr.ph.i113 ], [ %i.cs, %.lr.ph.i120 ], [ %i.cs, %bb.aa ], [ %i.am, %.lr.ph.i ]
  tail call void @free(ptr noundef nonnull %i.r) #5
  br label %opal_obj_new.exit.thread

opal_obj_new.exit.thread:                         ; preds = %opal_obj_new.exit.thread.sink.split, %opal_thread_add_fetch_32.exit104, %opal_thread_add_fetch_32.exit, %bb.d, %bb.w, %opal_thread_add_fetch_32.exit118, %opal_thread_add_fetch_32.exit111
  %.682 = phi i32 [ -2, %bb.d ], [ %i.cs, %opal_thread_add_fetch_32.exit118 ], [ %i.cc, %opal_thread_add_fetch_32.exit111 ], [ 0, %bb.w ], [ %i.bm, %opal_thread_add_fetch_32.exit104 ], [ %i.am, %opal_thread_add_fetch_32.exit ], [ %.682.ph, %opal_obj_new.exit.thread.sink.split ]
  ret i32 %.682
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_libnbc_alltoallv_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readnone captures(none) %9, ptr noundef %10, ptr noundef %11) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_alltoallv_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %10, ptr noundef %11, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_libnbc_alltoallv_inter_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readnone captures(none) %9, ptr noundef %10, ptr noundef %11) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_alltoallv_inter_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %10, ptr noundef %11, i1 noundef zeroext true)
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
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #4

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
!1 = distinct !{!1, !57}
!2 = distinct !{null}
!3 = distinct !{!3, !57}
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
!48 = !{!"short", !8, i64 0}
!49 = !{!"p1 _ZTS12dt_elem_desc", !13, i64 0}
!50 = !{!"dt_type_desc_t", !21, i64 0, !21, i64 8, !49, i64 16}
!51 = !{!"p1 long", !13, i64 0}
!52 = !{!"opal_datatype_t", !19, i64 0, !48, i64 16, !48, i64 18, !9, i64 20, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !9, i64 72, !9, i64 76, !8, i64 80, !50, i64 144, !50, i64 168, !51, i64 192}
!53 = !{!52, !21, i64 24}
!54 = !{!52, !21, i64 48}
!55 = !{!52, !21, i64 56}
!56 = !{!9, !9, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!43, !43, i64 0}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!62 = !{!"opal_class_t", !27, i64 0, !18, i64 8, !13, i64 16, !13, i64 24, !9, i64 32, !9, i64 36, !35, i64 40, !35, i64 48, !21, i64 56}
!63 = !{!62, !21, i64 56}
!64 = !{!62, !9, i64 32}
!65 = !{!19, !18, i64 0}
!66 = !{!19, !9, i64 8}
!67 = !{!62, !35, i64 40}
!68 = !{!13, !13, i64 0}
!69 = !{!62, !35, i64 48}
!70 = distinct !{!70, !57, !76, !77}
!71 = distinct !{!71, !57, !77, !76}
!72 = distinct !{!72, !57}
!73 = distinct !{!73, !57}
!74 = !{!44, !9, i64 220}
!75 = !{!44, !31, i64 264}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = !{!"branch_weights", i32 430355294, i32 1717128354}
!79 = !{!52, !21, i64 32}
!80 = !{!52, !21, i64 40}
!81 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!82 = !{!44, !9, i64 248}
!83 = distinct !{!83, !57}
!84 = !{!44, !9, i64 224}
!85 = !{!44, !31, i64 272}
end_hunk_0
