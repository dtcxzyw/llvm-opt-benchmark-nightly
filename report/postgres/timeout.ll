inline.NumInlined: 8
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@RegisterTimeout:bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 608), align 16
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 648), align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 688), align 16
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 728), align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 768), align 16
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 808), align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.loopexit, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 848), align 16
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.loopexit, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @all_timeouts, i64 888), align 8
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader.9
  %i.v = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #9 ; 0 uses
  %i.w = tail call i32 @errcode(i32 noundef 16581) #8 ; 0 uses
  %i.x = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 520, ptr noundef nonnull @__func__.RegisterTimeout) #8
  unreachable

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %bb.a
  %.1 = phi i32 [ %0, %bb.a ], [ 13, %.preheader.preheader ], [ 14, %.preheader.1 ], [ 15, %.preheader.2 ], [ 16, %.preheader.3 ], [ 17, %.preheader.4 ], [ 18, %.preheader.5 ], [ 19, %.preheader.6 ], [ 20, %.preheader.7 ], [ 21, %.preheader.8 ], [ 22, %.preheader.9 ] ; 2 uses
  %i.y = zext nneg i32 %.1 to i64
  %i.z = getelementptr inbounds nuw [40 x i8], ptr @all_timeouts, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %1, ptr %i.aa, align 8
  ret i32 %.1
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @reschedule_timeouts() local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @all_timeouts_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store volatile i32 0, ptr @alarm_enabled, align 4
  %i.a = load volatile i32, ptr @num_active_timeouts, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @GetCurrentTimestamp() #8
  tail call fastcc void @schedule_alarm(i64 noundef %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @schedule_alarm(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.itimerval, align 8          ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load volatile i32, ptr @num_active_timeouts, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  %i.e = load volatile i32, ptr @signal_pending, align 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load volatile i64, ptr @signal_due_at, align 8
  %i.g = add i64 %i.f, 10000
  %i.h = icmp sgt i64 %0, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store volatile i32 0, ptr @signal_pending, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load volatile ptr, ptr @active_timeouts, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8              ; 4 uses
  %i.l = icmp sgt i64 %0, %i.k
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store volatile i32 0, ptr @signal_pending, align 4
  store i64 0, ptr %i.a, align 8
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  call void @TimestampDifference(i64 noundef %0, i64 noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %i.m = load i64, ptr %i.a, align 8              ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = load i32, ptr %i.b, align 4              ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %or.cond5 = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond5, label %.sink.split, label %bb.h

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
  br i1 %i.n, label %.lr.ph.i, label %find_active_timeout.exit.thread, !llvm.loop !9

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
  br i1 %i.ae, label %.lr.ph.i23, label %remove_timeout_index.exit, !llvm.loop !4

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
  %4 = load volatile i32, ptr @num_active_timeouts, align 4
  %5 = icmp sgt i32 %.020.lcssa, %4
  br i1 %5, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.ay = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #9 ; 0 uses
  %i.az = load volatile i32, ptr @num_active_timeouts, align 4
  %i.ba = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %.020.lcssa, i32 noundef %i.az) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 120, ptr noundef nonnull @__func__.insert_timeout) #8
  unreachable

bb.j:                                             ; preds = %.thread
  store volatile i8 1, ptr %i.c, align 4
  %i.bb = load volatile i32, ptr @num_active_timeouts, align 4 ; 2 uses
  %.012.i = add i32 %i.bb, -1                     ; 2 uses
  %.not13.i = icmp slt i32 %.012.i, %.020.lcssa
  br i1 %.not13.i, label %insert_timeout.exit, label %.lr.ph.i26.preheader

.lr.ph.i26.preheader:                             ; preds = %bb.j
  %6 = sext i32 %.012.i to i64
  %7 = sext i32 %.020.lcssa to i64
  %i.bc = sext i32 %i.bb to i64
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26.preheader, %.lr.ph.i26
  %indvars.iv38 = phi i64 [ %6, %.lr.ph.i26.preheader ], [ %indvars.iv.next39, %.lr.ph.i26 ] ; 4 uses
  %.0.in14.i = phi i64 [ %i.bc, %.lr.ph.i26.preheader ], [ %indvars.iv38, %.lr.ph.i26 ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %indvars.iv38
  %i.be = load volatile ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds [8 x i8], ptr @active_timeouts, i64 %.0.in14.i
  store volatile ptr %i.be, ptr %i.bf, align 8
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, -1
  %.not.not.i = icmp samesign ugt i64 %indvars.iv38, %7
  br i1 %.not.not.i, label %.lr.ph.i26, label %insert_timeout.exit, !llvm.loop !11

insert_timeout.exit:                              ; preds = %.lr.ph.i26, %bb.j
  %i.bg = zext nneg i32 %.020.lcssa to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @active_timeouts, i64 %i.bg
  store volatile ptr %i.b, ptr %i.bh, align 8
  %i.bi = load volatile i32, ptr @num_active_timeouts, align 4
  %i.bj = add i32 %i.bi, 1
  store volatile i32 %i.bj, ptr @num_active_timeouts, align 4
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
  br i1 %i.n, label %.lr.ph.i, label %find_active_timeout.exit.thread, !llvm.loop !9

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
  br i1 %i.ae, label %.lr.ph.i4, label %remove_timeout_index.exit, !llvm.loop !4

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
end_hunk_0
