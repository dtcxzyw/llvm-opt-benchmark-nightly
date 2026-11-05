Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/timeout?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@schedule_alarm:bb.a

.sink.split:                                      ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.b, align 4
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
  br i1 %.not13.i, label %.insert_timeout.exit_crit_edge, label %.lr.ph.i26.preheader

.insert_timeout.exit_crit_edge:                   ; preds = %bb.j
  %.pre = zext nneg i32 %.020.lcssa to i64
  br label %insert_timeout.exit

.lr.ph.i26.preheader:                             ; preds = %bb.j
  %4 = zext nneg i32 %.012.i to i64
  %5 = zext nneg i32 %.020.lcssa to i64           ; 2 uses
  %i.be = sext i32 %i.bd to i64
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26, %.lr.ph.i26.preheader
  %indvars.iv38 = phi i64 [ %4, %.lr.ph.i26.preheader ], [ %indvars.iv.next39, %.lr.ph.i26 ] ; 4 uses
  %.0.in14.i = phi i64 [ %i.be, %.lr.ph.i26.preheader ], [ %indvars.iv38, %.lr.ph.i26 ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv38
  %i.bg = load volatile ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds [8 x i8], ptr @active_timeouts, i64 %.0.in14.i
  store volatile ptr %i.bg, ptr %i.bh, align 8
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, -1
  %.not.not.i = icmp samesign ugt i64 %indvars.iv38, %5
  br i1 %.not.not.i, label %.lr.ph.i26, label %insert_timeout.exit, !llvm.loop !11

insert_timeout.exit:                              ; preds = %.lr.ph.i26, %.insert_timeout.exit_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.insert_timeout.exit_crit_edge ], [ %5, %.lr.ph.i26 ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %.pre-phi
  store volatile ptr %i.b, ptr %i.bi, align 8
  %i.bj = load volatile i32, ptr @num_active_timeouts, align 4
  %i.bk = add i32 %i.bj, 1
  store volatile i32 %i.bk, ptr @num_active_timeouts, align 4
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

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
end_hunk_0
