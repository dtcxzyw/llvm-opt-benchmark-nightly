Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/timeout?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@schedule_alarm:bb.a
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %i.q = phi i32 [ %i.o, %bb.g ], [ 1, %.sink.split ]
  %i.r = phi i64 [ %i.m, %bb.g ], [ 0, %.sink.split ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.r, ptr %i.s, align 8
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.t, ptr %i.u, align 8
  store volatile i32 1, ptr @alarm_enabled, align 4
  %i.v = load volatile i32, ptr @signal_pending, align 4
  %.not26 = icmp eq i32 %i.v, 0
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load volatile i64, ptr @signal_due_at, align 8
  %.not27 = icmp slt i64 %i.k, %i.w
  br i1 %.not27, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  store volatile i64 %i.k, ptr @signal_due_at, align 8
  store volatile i32 1, ptr @signal_pending, align 4
  %i.x = call i32 @setitimer(i32 noundef 0, ptr noundef nonnull %1, ptr noundef null) #8
  %.not28 = icmp eq i32 %i.x, 0
  br i1 %.not28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store volatile i32 0, ptr @signal_pending, align 4
  %i.y = call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #9 ; 0 uses
  %i.z = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull @__func__.schedule_alarm) #8
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a
  ret void
}

declare i64 @GetCurrentTimestamp() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @enable_timeout_after(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  store volatile i32 0, ptr @alarm_enabled, align 4
  %i.a = tail call i64 @GetCurrentTimestamp() #8  ; 3 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul nsw i64 %i.b, 1000
  %i.d = add i64 %i.a, %i.c
  tail call fastcc void @enable_timeout(i32 noundef %0, i64 noundef %i.a, i64 noundef %i.d, i32 noundef 0)
  tail call fastcc void @schedule_alarm(i64 noundef %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @enable_timeout(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @all_timeouts, i64 %i.a ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = load volatile i8, ptr %i.c, align 4, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load volatile i32, ptr @num_active_timeouts, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %find_active_timeout.exit.thread

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i
  %i.i = load volatile ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, %0
  %i.l = load volatile i32, ptr @num_active_timeouts, align 4 ; 2 uses
  br i1 %i.k, label %find_active_timeout.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next.i, %i.m
  br i1 %i.n, label %.lr.ph.i, label %find_active_timeout.exit.thread, !llvm.loop !1

find_active_timeout.exit:                         ; preds = %.lr.ph.i
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32   ; 3 uses
  %.not.i = icmp sgt i32 %i.l, %i.o
  br i1 %.not.i, label %bb.d, label %find_active_timeout.exit.thread

find_active_timeout.exit.thread:                  ; preds = %bb.c, %bb.b, %find_active_timeout.exit
  %.06.i28 = phi i32 [ -1, %bb.b ], [ %i.o, %find_active_timeout.exit ], [ -1, %bb.c ]
  %i.p = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #9 ; 0 uses
  %i.q = load volatile i32, ptr @num_active_timeouts, align 4
  %i.r = add i32 %i.q, -1
  %i.s = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %.06.i28, i32 noundef %i.r) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @__func__.remove_timeout_index) #8
  unreachable

bb.d:                                             ; preds = %find_active_timeout.exit
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i
  %i.u = load volatile ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store volatile i8 0, ptr %i.v, align 4
  %.010.i = add nuw nsw i32 %i.o, 1               ; 2 uses
  %i.w = load volatile i32, ptr @num_active_timeouts, align 4
  %i.x = icmp slt i32 %.010.i, %i.w
  br i1 %i.x, label %.lr.ph.preheader.i, label %remove_timeout_index.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.y = zext nneg i32 %.010.i to i64
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23, %.lr.ph.preheader.i
  %indvars.iv.i24 = phi i64 [ %i.y, %.lr.ph.preheader.i ], [ %indvars.iv.next.i25, %.lr.ph.i23 ] ; 3 uses
  %.0.in11.i = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.i24, %.lr.ph.i23 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i24
  %i.aa = load volatile ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds [8 x i8], ptr @active_timeouts, i64 %.0.in11.i
  store volatile ptr %i.aa, ptr %i.ab, align 8
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i24, 1 ; 2 uses
  %i.ac = load volatile i32, ptr @num_active_timeouts, align 4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next.i25, %i.ad
  br i1 %i.ae, label %.lr.ph.i23, label %remove_timeout_index.exit, !llvm.loop !0

remove_timeout_index.exit:                        ; preds = %.lr.ph.i23, %bb.d
  %i.af = load volatile i32, ptr @num_active_timeouts, align 4
  %i.ag = add i32 %i.af, -1
  store volatile i32 %i.ag, ptr @num_active_timeouts, align 4
  br label %bb.e

bb.e:                                             ; preds = %remove_timeout_index.exit, %bb.a
  %i.ah = load volatile i32, ptr @num_active_timeouts, align 4
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %bb.e ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv
  %i.ak = load volatile ptr, ptr %i.aj, align 8   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp slt i64 %2, %i.am
  br i1 %i.an, label %.thread.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ao = icmp eq i64 %2, %i.am
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = load i32, ptr %i.ak, align 8
  %i.aq = icmp ult i32 %0, %i.ap
  br i1 %i.aq, label %.thread.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ar = load volatile i32, ptr @num_active_timeouts, align 4
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %.lr.ph, label %.thread.loopexit, !llvm.loop !10

.thread.loopexit:                                 ; preds = %bb.g, %.lr.ph, %bb.h
  %.020.lcssa.ph.in = phi i64 [ %indvars.iv.next, %bb.h ], [ %indvars.iv, %.lr.ph ], [ %indvars.iv, %bb.g ]
  %.020.lcssa.ph = trunc i64 %.020.lcssa.ph.in to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.e
  %.020.lcssa = phi i32 [ 0, %bb.e ], [ %.020.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store volatile i8 0, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %2, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %3, ptr %i.ax, align 8
  %i.ay = load volatile i32, ptr @num_active_timeouts, align 4
  %i.az = icmp sgt i32 %.020.lcssa, %i.ay
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.ba = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #9 ; 0 uses
  %i.bb = load volatile i32, ptr @num_active_timeouts, align 4
  %i.bc = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %.020.lcssa, i32 noundef %i.bb) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 120, ptr noundef nonnull @__func__.insert_timeout) #8
  unreachable

bb.j:                                             ; preds = %.thread
  store volatile i8 1, ptr %i.c, align 4
  %i.bd = load volatile i32, ptr @num_active_timeouts, align 4 ; 2 uses
  %.012.i = add i32 %i.bd, -1                     ; 2 uses
  %.not13.i = icmp slt i32 %.012.i, %.020.lcssa
  br i1 %.not13.i, label %insert_timeout.exit, label %.lr.ph.i26.preheader

.lr.ph.i26.preheader:                             ; preds = %bb.j
  %i.be = sext i32 %.012.i to i64                 ; 3 uses
  %i.bf = sext i32 %.020.lcssa to i64             ; 2 uses
  %i.bg = sext i32 %i.bd to i64                   ; 2 uses
  %4 = add nsw i64 %i.be, 1
  %5 = sub nsw i64 %4, %i.bf
  %6 = freeze i64 %5                              ; 2 uses
  %7 = add i64 %6, -1
  %xtraiter = and i64 %6, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i26.prol.loopexit, label %.lr.ph.i26.prol

.lr.ph.i26.prol:                                  ; preds = %.lr.ph.i26.preheader, %.lr.ph.i26.prol
  %indvars.iv38.prol = phi i64 [ %indvars.iv.next39.prol, %.lr.ph.i26.prol ], [ %i.be, %.lr.ph.i26.preheader ] ; 4 uses
  %.0.in14.i.prol = phi i64 [ %indvars.iv38.prol, %.lr.ph.i26.prol ], [ %i.bg, %.lr.ph.i26.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i26.prol ], [ 0, %.lr.ph.i26.preheader ]
  %8 = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv38.prol
  %9 = load volatile ptr, ptr %8, align 8
  %10 = getelementptr inbounds [8 x i8], ptr @active_timeouts, i64 %.0.in14.i.prol
  store volatile ptr %9, ptr %10, align 8
  %indvars.iv.next39.prol = add nsw i64 %indvars.iv38.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i26.prol.loopexit, label %.lr.ph.i26.prol, !llvm.loop !11

.lr.ph.i26.prol.loopexit:                         ; preds = %.lr.ph.i26.prol, %.lr.ph.i26.preheader
  %indvars.iv38.unr = phi i64 [ %i.be, %.lr.ph.i26.preheader ], [ %indvars.iv.next39.prol, %.lr.ph.i26.prol ]
  %.0.in14.i.unr = phi i64 [ %i.bg, %.lr.ph.i26.preheader ], [ %indvars.iv38.prol, %.lr.ph.i26.prol ]
  %11 = icmp ult i64 %7, 3
  br i1 %11, label %insert_timeout.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26.prol.loopexit, %.lr.ph.i26
  %indvars.iv38 = phi i64 [ %indvars.iv.next39.a, %.lr.ph.i26 ], [ %indvars.iv38.unr, %.lr.ph.i26.prol.loopexit ] ; 6 uses
  %.0.in14.i = phi i64 [ %indvars.iv.next39.2, %.lr.ph.i26 ], [ %.0.in14.i.unr, %.lr.ph.i26.prol.loopexit ]
  %12 = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv38
  %13 = load volatile ptr, ptr %12, align 8
  %14 = getelementptr inbounds [8 x i8], ptr @active_timeouts, i64 %.0.in14.i
  store volatile ptr %13, ptr %14, align 8
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, -1 ; 2 uses
  %15 = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.next39
  %16 = load volatile ptr, ptr %15, align 8
  %17 = getelementptr inbounds [8 x i8], ptr @active_timeouts, i64 %indvars.iv38
  store volatile ptr %16, ptr %17, align 8
  %indvars.iv.next39.1 = add nsw i64 %indvars.iv38, -2 ; 2 uses
  %18 = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.next39.1
  %19 = load volatile ptr, ptr %18, align 8
  %20 = getelementptr inbounds [8 x i8], ptr @active_timeouts, i64 %indvars.iv.next39
  store volatile ptr %19, ptr %20, align 8
  %indvars.iv.next39.2 = add nsw i64 %indvars.iv38, -3 ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.next39.2
  %i.bi = load volatile ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds [8 x i8], ptr @active_timeouts, i64 %indvars.iv.next39.1
  store volatile ptr %i.bi, ptr %i.bj, align 8
  %indvars.iv.next39.a = add nsw i64 %indvars.iv38, -4
  %.not.not.i = icmp samesign ugt i64 %indvars.iv.next39.2, %i.bf
  br i1 %.not.not.i, label %.lr.ph.i26, label %insert_timeout.exit, !llvm.loop !12

insert_timeout.exit:                              ; preds = %.lr.ph.i26.prol.loopexit, %.lr.ph.i26, %bb.j
  %i.bk = zext nneg i32 %.020.lcssa to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %i.bk
  store volatile ptr %i.b, ptr %i.bl, align 8
  %i.bm = load volatile i32, ptr @num_active_timeouts, align 4
  %i.bn = add i32 %i.bm, 1
  store volatile i32 %i.bn, ptr @num_active_timeouts, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @enable_timeout_every(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  store volatile i32 0, ptr @alarm_enabled, align 4
  %i.a = tail call i64 @GetCurrentTimestamp() #8  ; 2 uses
  tail call fastcc void @enable_timeout(i32 noundef %0, i64 noundef %i.a, i64 noundef %1, i32 noundef %2)
  tail call fastcc void @schedule_alarm(i64 noundef %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @enable_timeout_at(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  store volatile i32 0, ptr @alarm_enabled, align 4
  %i.a = tail call i64 @GetCurrentTimestamp() #8  ; 2 uses
  tail call fastcc void @enable_timeout(i32 noundef %0, i64 noundef %i.a, i64 noundef %1, i32 noundef 0)
  tail call fastcc void @schedule_alarm(i64 noundef %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @enable_timeouts(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  store volatile i32 0, ptr @alarm_enabled, align 4
  %i.a = tail call i64 @GetCurrentTimestamp() #8  ; 6 uses
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvars.iv ; 6 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4
  switch i32 %i.f, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.i, 1000
  %i.k = add i64 %i.j, %i.a
  tail call fastcc void @enable_timeout(i32 noundef %i.d, i64 noundef %i.a, i64 noundef %i.k, i32 noundef 0)
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load i64, ptr %i.l, align 8
  tail call fastcc void @enable_timeout(i32 noundef %i.d, i64 noundef %i.a, i64 noundef %i.m, i32 noundef 0)
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.p, 1000
  %i.r = add i64 %i.q, %i.a
  tail call fastcc void @enable_timeout(i32 noundef %i.d, i64 noundef %i.a, i64 noundef %i.r, i32 noundef %i.o)
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.u = load i32, ptr %i.s, align 4
  %i.v = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %i.u) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 666, ptr noundef nonnull @__func__.enable_timeouts) #8
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.f, %bb.a
  tail call fastcc void @schedule_alarm(i64 noundef %i.a)
  ret void
}

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @disable_timeout(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  store volatile i32 0, ptr @alarm_enabled, align 4
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @all_timeouts, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load volatile i8, ptr %i.c, align 4, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load volatile i32, ptr @num_active_timeouts, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %find_active_timeout.exit.thread

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i
  %i.i = load volatile ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, %0
  %i.l = load volatile i32, ptr @num_active_timeouts, align 4 ; 2 uses
  br i1 %i.k, label %find_active_timeout.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next.i, %i.m
  br i1 %i.n, label %.lr.ph.i, label %find_active_timeout.exit.thread, !llvm.loop !1

find_active_timeout.exit:                         ; preds = %.lr.ph.i
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32   ; 3 uses
  %.not.i = icmp sgt i32 %i.l, %i.o
  br i1 %.not.i, label %bb.d, label %find_active_timeout.exit.thread

find_active_timeout.exit.thread:                  ; preds = %bb.c, %bb.b, %find_active_timeout.exit
  %.06.i8 = phi i32 [ -1, %bb.b ], [ %i.o, %find_active_timeout.exit ], [ -1, %bb.c ]
  %i.p = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #9 ; 0 uses
  %i.q = load volatile i32, ptr @num_active_timeouts, align 4
  %i.r = add i32 %i.q, -1
  %i.s = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %.06.i8, i32 noundef %i.r) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @__func__.remove_timeout_index) #8
  unreachable

bb.d:                                             ; preds = %find_active_timeout.exit
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i
  %i.u = load volatile ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store volatile i8 0, ptr %i.v, align 4
  %.010.i = add nuw nsw i32 %i.o, 1               ; 2 uses
  %i.w = load volatile i32, ptr @num_active_timeouts, align 4
  %i.x = icmp slt i32 %.010.i, %i.w
  br i1 %i.x, label %.lr.ph.preheader.i, label %remove_timeout_index.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.y = zext nneg i32 %.010.i to i64
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.lr.ph.i4, %.lr.ph.preheader.i
  %indvars.iv.i5 = phi i64 [ %i.y, %.lr.ph.preheader.i ], [ %indvars.iv.next.i6, %.lr.ph.i4 ] ; 3 uses
  %.0.in11.i = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.i5, %.lr.ph.i4 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i5
  %i.aa = load volatile ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds [8 x i8], ptr @active_timeouts, i64 %.0.in11.i
  store volatile ptr %i.aa, ptr %i.ab, align 8
  %indvars.iv.next.i6 = add nuw nsw i64 %indvars.iv.i5, 1 ; 2 uses
  %i.ac = load volatile i32, ptr @num_active_timeouts, align 4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next.i6, %i.ad
  br i1 %i.ae, label %.lr.ph.i4, label %remove_timeout_index.exit, !llvm.loop !0

remove_timeout_index.exit:                        ; preds = %.lr.ph.i4, %bb.d
  %i.af = load volatile i32, ptr @num_active_timeouts, align 4
  %i.ag = add i32 %i.af, -1
  store volatile i32 %i.ag, ptr @num_active_timeouts, align 4
  br label %bb.e

bb.e:                                             ; preds = %remove_timeout_index.exit, %bb.a
  br i1 %1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store volatile i8 0, ptr %i.ah, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = load volatile i32, ptr @num_active_timeouts, align 4
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = tail call i64 @GetCurrentTimestamp() #8
  tail call fastcc void @schedule_alarm(i64 noundef %i.ak)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @disable_timeouts(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  store volatile i32 0, ptr @alarm_enabled, align 4
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [40 x i8], ptr @all_timeouts, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load volatile i8, ptr %i.f, align 4, !range !7, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.i = load volatile i32, ptr @num_active_timeouts, align 4
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %find_active_timeout.exit.thread

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i
  %i.l = load volatile ptr, ptr %i.k, align 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, %i.c
  %i.o = load volatile i32, ptr @num_active_timeouts, align 4 ; 2 uses
  br i1 %i.n, label %find_active_timeout.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next.i, %i.p
  br i1 %i.q, label %.lr.ph.i, label %find_active_timeout.exit.thread, !llvm.loop !1

find_active_timeout.exit:                         ; preds = %.lr.ph.i
  %i.r = trunc nuw nsw i64 %indvars.iv.i to i32   ; 3 uses
  %.not.i = icmp sgt i32 %i.o, %i.r
  br i1 %.not.i, label %bb.d, label %find_active_timeout.exit.thread

find_active_timeout.exit.thread:                  ; preds = %bb.b, %find_active_timeout.exit, %bb.c
  %.06.i13 = phi i32 [ -1, %bb.c ], [ %i.r, %find_active_timeout.exit ], [ -1, %bb.b ]
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #9 ; 0 uses
  %i.t = load volatile i32, ptr @num_active_timeouts, align 4
  %i.u = add i32 %i.t, -1
  %i.v = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %.06.i13, i32 noundef %i.u) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @__func__.remove_timeout_index) #8
  unreachable

bb.d:                                             ; preds = %find_active_timeout.exit
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i
  %i.x = load volatile ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store volatile i8 0, ptr %i.y, align 4
  %.010.i = add nuw nsw i32 %i.r, 1               ; 2 uses
  %i.z = load volatile i32, ptr @num_active_timeouts, align 4
  %i.aa = icmp slt i32 %.010.i, %i.z
  br i1 %i.aa, label %.lr.ph.preheader.i, label %remove_timeout_index.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.ab = zext nneg i32 %.010.i to i64
  br label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph.i9, %.lr.ph.preheader.i
  %indvars.iv.i10 = phi i64 [ %i.ab, %.lr.ph.preheader.i ], [ %indvars.iv.next.i11, %.lr.ph.i9 ] ; 3 uses
  %.0.in11.i = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.i10, %.lr.ph.i9 ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv.i10
  %i.ad = load volatile ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds [8 x i8], ptr @active_timeouts, i64 %.0.in11.i
  store volatile ptr %i.ad, ptr %i.ae, align 8
  %indvars.iv.next.i11 = add nuw nsw i64 %indvars.iv.i10, 1 ; 2 uses
  %i.af = load volatile i32, ptr @num_active_timeouts, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next.i11, %i.ag
  br i1 %i.ah, label %.lr.ph.i9, label %remove_timeout_index.exit, !llvm.loop !0

remove_timeout_index.exit:                        ; preds = %.lr.ph.i9, %bb.d
  %i.ai = load volatile i32, ptr @num_active_timeouts, align 4
  %i.aj = add i32 %i.ai, -1
  store volatile i32 %i.aj, ptr @num_active_timeouts, align 4
  br label %bb.e

bb.e:                                             ; preds = %remove_timeout_index.exit, %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.al = load i8, ptr %i.ak, align 4, !range !7, !noundef !8
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  store volatile i8 0, ptr %i.an, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %i.ao = load volatile i32, ptr @num_active_timeouts, align 4
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.aq = tail call i64 @GetCurrentTimestamp() #8
  tail call fastcc void @schedule_alarm(i64 noundef %i.aq)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local void @disable_all_timeouts(i1 noundef zeroext %0) local_unnamed_addr #4 {
bb.a:
  store volatile i32 0, ptr @alarm_enabled, align 4
  store volatile i32 0, ptr @num_active_timeouts, align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 4), align 4
  br i1 %0, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 5), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 44), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 45), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 84), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 85), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 124), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 125), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 164), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 165), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 204), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 205), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 244), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 245), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 284), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 285), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 324), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 325), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 364), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 365), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 404), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 405), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 444), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 445), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 484), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 485), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 524), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 525), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 564), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 565), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 604), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 605), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 644), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 645), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 684), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 685), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 724), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 725), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 764), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 765), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 804), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 805), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 844), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 845), align 1
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 884), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 885), align 1
  br label %.split7.us

.split.us.preheader:                              ; preds = %bb.a
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 44), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 84), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 124), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 164), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 204), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 244), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 284), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 324), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 364), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 404), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 444), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 484), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 524), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 564), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 604), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 644), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 684), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 724), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 764), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 804), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 844), align 4
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 884), align 4
  br label %.split7.us

.split7.us:                                       ; preds = %.split.preheader, %.split.us.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local zeroext i1 @get_timeout_active(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @all_timeouts, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load volatile i8, ptr %i.c, align 4, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local zeroext i1 @get_timeout_indicator(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @all_timeouts, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  %i.d = load volatile i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %brmerge.demorgan = and i1 %1, %i.e
  br i1 %brmerge.demorgan, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store volatile i8 0, ptr %i.c, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @get_timeout_start_time(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @all_timeouts, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @get_timeout_finish_time(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @all_timeouts, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  ret i64 %i.d
}

declare void @SetLatch(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @TimestampDifference(i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i32 @setitimer(i32 noundef, ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, !6}
!1 = distinct !{!1, !6}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !13}
!12 = distinct !{!12, !6}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
end_hunk_0
