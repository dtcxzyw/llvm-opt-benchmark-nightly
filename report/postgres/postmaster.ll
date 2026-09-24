Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/postmaster?download=true
inline.NumInlined: 125
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@maybe_start_io_workers:bb.a
  %i.m = load i64, ptr @io_worker_launch_next_time, align 8 ; 2 uses
  %.not = icmp ne i64 %i.m, 0
  %or.cond.not = select i1 %i.l, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.f, label %maybe_start_io_workers_scheduled_at.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i64 @GetCurrentTimestamp() #16 ; 2 uses
  %i.o = icmp sgt i64 %i.m, %i.n
  br i1 %i.o, label %maybe_start_io_workers_scheduled_at.exit.thread, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.p = phi i64 [ %i.k, %.thread ], [ %i.n, %bb.f ] ; 2 uses
  %i.q = load i64, ptr @io_worker_launch_next_time, align 8
  %i.r = load i32, ptr @io_worker_launch_interval, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.s, 1000                   ; 2 uses
  %i.u = add i64 %i.t, %i.q                       ; 2 uses
  %.not15 = icmp sgt i64 %i.u, %i.p
  %i.v = add i64 %i.t, %i.p
  %spec.select = select i1 %.not15, i64 %i.u, i64 %i.v
  store i64 %spec.select, ptr @io_worker_launch_next_time, align 8
  %i.w = load i32, ptr @io_worker_count, align 4
  %i.x = load i32, ptr @io_min_workers, align 4
  %.not16 = icmp slt i32 %i.w, %i.x
  br i1 %.not16, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = tail call zeroext i1 @pgaio_worker_pm_test_grow() #16
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @pgaio_worker_pm_clear_grow_signal_sent() #16
  br label %maybe_start_io_workers_scheduled_at.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.z = load ptr, ptr @io_worker_children, align 16
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.thread25, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 8), align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.thread25, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 16), align 16
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.thread25, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 24), align 8
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.thread25, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 32), align 16
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.thread25, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 40), align 8
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread25, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 48), align 16
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.thread25, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 56), align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.thread25, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 64), align 16
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.thread25, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 72), align 8
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.thread25, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 80), align 16
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.thread25, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 88), align 8
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.thread25, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 96), align 16
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.thread25, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 104), align 8
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.thread25, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 112), align 16
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.thread25, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 120), align 8
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %.thread25, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 128), align 16
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.thread25, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 136), align 8
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.thread25, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 144), align 16
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %.thread25, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 152), align 8
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %.thread25, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 160), align 16
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.thread25, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 168), align 8
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %.thread25, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 176), align 16
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.thread25, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 184), align 8
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.thread25, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 192), align 16
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.thread25, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 200), align 8
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.thread25, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 208), align 16
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %.thread25, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 216), align 8
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %.thread25, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 224), align 16
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %.thread25, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 232), align 8
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %.thread25, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 240), align 16
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.thread25, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @io_worker_children, i64 248), align 8
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %.thread25, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cl = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.cm = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.155) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 4526, ptr noundef nonnull @__func__.maybe_start_io_workers) #16
  unreachable

.thread25:                                        ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao
  %.01131.lcssa.wide = phi i64 [ 0, %bb.j ], [ 1, %bb.k ], [ 2, %bb.l ], [ 3, %bb.m ], [ 4, %bb.n ], [ 5, %bb.o ], [ 6, %bb.p ], [ 7, %bb.q ], [ 8, %bb.r ], [ 9, %bb.s ], [ 10, %bb.t ], [ 11, %bb.u ], [ 12, %bb.v ], [ 13, %bb.w ], [ 14, %bb.x ], [ 15, %bb.y ], [ 16, %bb.z ], [ 17, %bb.aa ], [ 18, %bb.ab ], [ 19, %bb.ac ], [ 20, %bb.ad ], [ 21, %bb.ae ], [ 22, %bb.af ], [ 23, %bb.ag ], [ 24, %bb.ah ], [ 25, %bb.ai ], [ 26, %bb.aj ], [ 27, %bb.ak ], [ 28, %bb.al ], [ 29, %bb.am ], [ 30, %bb.an ], [ 31, %bb.ao ]
  %i.cn = tail call fastcc ptr @StartChildProcess(i32 noundef 12) ; 2 uses
  %.not17 = icmp eq ptr %i.cn, null
  br i1 %.not17, label %maybe_start_io_workers_scheduled_at.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %.thread25
  %i.co = getelementptr inbounds nuw [8 x i8], ptr @io_worker_children, i64 %.01131.lcssa.wide
  store ptr %i.cn, ptr %i.co, align 8
  %i.cp = load i32, ptr @io_worker_count, align 4
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr @io_worker_count, align 4
  %i.cr = tail call zeroext i1 @pgaio_workers_enabled() #16
  br i1 %i.cr, label %.lr.ph, label %maybe_start_io_workers_scheduled_at.exit.thread

maybe_start_io_workers_scheduled_at.exit.thread:  ; preds = %bb.aq, %.lr.ph, %bb.e, %bb.b, %bb.c, %bb.f, %.thread25, %bb.a, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @StartChildProcess(i32 noundef range(i32 3, 17) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @AssignPostmasterChildSlot(i32 noundef %0) #16 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, 4
  %i.c = tail call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #16 ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @errcode(i32 noundef 16581) #16 ; 0 uses
  %i.e = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.143) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 4021, ptr noundef nonnull @__func__.StartChildProcess) #16
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.144) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 4025, ptr noundef nonnull @__func__.StartChildProcess) #16
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = tail call i32 @postmaster_child_launch(i32 noundef %0, i32 noundef %i.h, ptr noundef null, i64 noundef 0, ptr noundef null) #16 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.k = tail call zeroext i1 @ReleasePostmasterChildSlot(ptr noundef nonnull %i.a) #16 ; 0 uses
  %i.l = tail call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #16
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = tail call ptr @PostmasterChildName(i32 noundef %0) #16
  %i.n = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.145, ptr noundef %i.m) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 4036, ptr noundef nonnull @__func__.StartChildProcess) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = icmp eq i32 %0, 13
  br i1 %i.o, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @ExitPostmaster(i32 noundef 1) #18
  unreachable

bb.l:                                             ; preds = %bb.g
  store i32 %i.i, ptr %i.a, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.d, %bb.c, %bb.f, %bb.e, %bb.l
  %.0 = phi ptr [ null, %bb.d ], [ %i.a, %bb.l ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.c ], [ null, %bb.j ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @maybe_start_bgworkers() unnamed_addr #2 {
bb.a:
  %.b = load i1, ptr @FatalError, align 1
  store i1 true, ptr @StartWorkerNeeded, align 1
  store i1 false, ptr @HaveCrashedWorker, align 1
  br i1 %.b, label %bgworker_should_start_now.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @BackgroundWorkerList, i64 8), align 8 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  %.not315268 = icmp eq ptr %i.a, @BackgroundWorkerList
  %.not3152 = or i1 %.not, %.not315268
  br i1 %.not3152, label %bgworker_should_start_now.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %select.unfold
  %.sroa.0.055 = phi ptr [ %.sroa.8.056, %select.unfold ], [ %i.a, %bb.b ] ; 8 uses
  %.02354 = phi i64 [ %.3.ph, %select.unfold ], [ 0, %bb.b ] ; 7 uses
  %.02453 = phi i32 [ %.226.ph, %select.unfold ], [ 0, %bb.b ] ; 10 uses
  %.sroa.8.056.in = getelementptr inbounds nuw i8, ptr %.sroa.0.055, i64 8
  %.sroa.8.056 = load ptr, ptr %.sroa.8.056.in, align 8 ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %.sroa.0.055, i64 -1496 ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.055, i64 -24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not32 = icmp eq i32 %i.d, 0
  br i1 %.not32, label %bb.c, label %select.unfold

bb.c:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.055, i64 -4
  %i.f = load i8, ptr %i.e, align 4, !range !7, !noundef !8
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ForgetBackgroundWorker(ptr noundef nonnull %i.b) #16
  br label %select.unfold

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.055, i64 -16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %.not33 = icmp eq i64 %i.i, 0
  br i1 %.not33, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.055, i64 -1296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.055, i64 -32
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  tail call void @ForgetBackgroundWorker(ptr noundef nonnull %i.b) #16
  %.not34 = icmp eq i32 %i.n, 0
  br i1 %.not34, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @kill(i32 noundef %i.n, i32 noundef 10) #16 ; 0 uses
  br label %select.unfold

bb.i:                                             ; preds = %bb.f
  %i.p = icmp eq i64 %.02354, 0
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = tail call i64 @GetCurrentTimestamp() #16
  %.pre = load i64, ptr %i.h, align 8
  %.pre62 = load i32, ptr %i.j, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = phi i32 [ %.pre62, %bb.j ], [ %i.k, %bb.i ]
  %i.s = phi i64 [ %.pre, %bb.j ], [ %i.i, %bb.i ]
  %.1 = phi i64 [ %i.q, %bb.j ], [ %.02354, %bb.i ] ; 3 uses
  %i.t = mul i32 %i.r, 1000
  %i.u = tail call zeroext i1 @TimestampDifferenceExceeds(i64 noundef %i.s, i64 noundef %.1, i32 noundef %i.t) #16
  br i1 %i.u, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i1 true, ptr @HaveCrashedWorker, align 1
  br label %select.unfold

bb.m:                                             ; preds = %bb.k, %bb.e
  %.2 = phi i64 [ %.1, %bb.k ], [ %.02354, %bb.e ] ; 5 uses
  %i.v = getelementptr inbounds i8, ptr %.sroa.0.055, i64 -1300
  %i.w = load i32, ptr %i.v, align 4              ; 3 uses
  %i.x = load i32, ptr @pmState, align 4
  switch i32 %i.x, label %select.unfold [
    i32 0, label %bb.p
    i32 1, label %bb.p
    i32 2, label %bb.p
    i32 3, label %bb.o
    i32 4, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %switch.i = icmp ult i32 %i.w, 3
  br i1 %switch.i, label %bb.q, label %select.unfold

bb.o:                                             ; preds = %bb.m
  %switch3.i = icmp ult i32 %i.w, 2
  br i1 %switch3.i, label %bb.q, label %select.unfold

bb.p:                                             ; preds = %bb.m, %bb.m, %bb.m
  %i.y = icmp eq i32 %i.w, 0
  br i1 %i.y, label %bb.q, label %select.unfold

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o
  store i64 0, ptr %i.h, align 8
  %i.z = tail call ptr @AssignPostmasterChildSlot(i32 noundef 5) #16 ; 7 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ab = tail call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #16
  br i1 %i.ab, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
end_hunk_0
