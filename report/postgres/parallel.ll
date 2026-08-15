inline.NumInlined: 29
inline.NumDeleted: 21
begin_hunk_0_@ParallelBackupEnd:bb.a
  %i.i = load i32, ptr %i.h, align 8
  %i.j = tail call i32 @close(i32 noundef %i.i) #17 ; 0 uses
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.n = load i32, ptr %i.m, align 4
  %i.o = tail call i32 @close(i32 noundef %i.n) #17 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.pr = load i32, ptr %1, align 8                ; 3 uses
  %i.p = sext i32 %.pr to i64
  %i.q = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.b
  %i.r = icmp slt i32 %.pr, 1
  br i1 %i.r, label %WaitForTerminatingWorkers.exit, label %.lr.ph.i.lr.ph.i

.lr.ph.i.lr.ph.i:                                 ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i, %.lr.ph.i.lr.ph.i
  %i.u = phi i32 [ %.pr, %.lr.ph.i.lr.ph.i ], [ %i.ao, %.loopexit.i ]
  %i.v = load ptr, ptr %i.s, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.u to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %WaitForTerminatingWorkers.exit, label %bb.d, !llvm.loop !8

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %indvars.iv.i.i
  %i.x = load i32, ptr %i.w, align 8
  %i.y = add i32 %i.x, -3
  %switch.i.i = icmp ult i32 %i.y, -2
  br i1 %switch.i.i, label %bb.c, label %HasEveryWorkerTerminated.exit.i

HasEveryWorkerTerminated.exit.i:                  ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.z = call i32 @wait(ptr noundef nonnull %i.a) #17
  %i.aa = load i32, ptr %1, align 8               ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  call void @llvm.assume(i1 %i.ab)
  %i.ac = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ad = add nsw i32 %i.aa, -1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = mul nuw nsw i64 %i.ae, 56
  %scevgep.i = getelementptr i8, ptr %i.ac, i64 %i.af
  %wide.trip.count.i = zext nneg i32 %i.aa to i64 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %HasEveryWorkerTerminated.exit.i
  %indvars.iv.i = phi i64 [ 0, %HasEveryWorkerTerminated.exit.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [56 x i8], ptr %i.ac, i64 %indvars.iv.i ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp eq i32 %i.ai, %i.z
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i32 0, ptr %i.ak, align 8
  br label %.loopexit.i

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.e, !llvm.loop !9

.loopexit.i:                                      ; preds = %bb.g, %bb.f
  %i.al = phi ptr [ %i.ag, %bb.f ], [ %scevgep.i, %bb.g ]
  %.01117.i = phi i64 [ %indvars.iv.i, %bb.f ], [ %wide.trip.count.i, %bb.g ]
  store i32 3, ptr %i.al, align 8
  %i.am = load ptr, ptr %i.t, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.01117.i
  store ptr null, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ao = load i32, ptr %1, align 8               ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 1
  br i1 %i.ap, label %WaitForTerminatingWorkers.exit, label %.lr.ph.i.i, !llvm.loop !10

WaitForTerminatingWorkers.exit:                   ; preds = %.loopexit.i, %bb.c, %.preheader, %._crit_edge
  store ptr null, ptr @shutdown_info, align 8
  store volatile ptr null, ptr getelementptr inbounds nuw (i8, ptr @signal_info, i64 8), align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void @free(ptr noundef %i.ar) #17
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void @free(ptr noundef %i.at) #17
  call void @free(ptr noundef %1) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %WaitForTerminatingWorkers.exit
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @DispatchJobForTocEntry(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr i8, ptr %1, i64 16         ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %GetIdleWorker.exit.thread, %bb.a
  %i.c = load i32, ptr %1, align 8                ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %GetIdleWorker.exit.thread

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 7 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %GetIdleWorker.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %GetIdleWorker.exit.thread, label %bb.c, !llvm.loop !17

GetIdleWorker.exit.thread:                        ; preds = %bb.d, %bb.b
  tail call void @WaitForWorkers(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 2)
  br label %bb.b, !llvm.loop !18

GetIdleWorker.exit:                               ; preds = %bb.c
  switch i32 %3, label %buildWorkerCommand.exit [
    i32 0, label %.sink.split.i
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %GetIdleWorker.exit
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %GetIdleWorker.exit
  %.str.15.sink.i = phi ptr [ @.str.15, %bb.e ], [ @.str.14, %GetIdleWorker.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i32, ptr %i.i, align 8
  %i.k = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull %.str.15.sink.i, i32 noundef %i.j) #17 ; 0 uses
  %.val.pre = load ptr, ptr %i.b, align 8
  br label %buildWorkerCommand.exit

buildWorkerCommand.exit:                          ; preds = %GetIdleWorker.exit, %.sink.split.i
  %.val = phi ptr [ %i.e, %GetIdleWorker.exit ], [ %.val.pre, %.sink.split.i ]
  %i.l = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #19
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.o = load i32, ptr %i.n, align 4
  %i.p = shl i64 %i.l, 32
  %sext.i = add i64 %i.p, 4294967296
  %i.q = ashr exact i64 %sext.i, 32               ; 2 uses
  %i.r = call i64 @write(i32 noundef %i.o, ptr noundef nonnull readonly %i.a, i64 noundef %i.q) #17
  %.not.i = icmp eq i64 %i.r, %i.q
  br i1 %.not.i, label %sendMessageToWorker.exit, label %bb.f

bb.f:                                             ; preds = %buildWorkerCommand.exit
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.13) #17
  call void @exit_nicely(i32 noundef 1) #18
  unreachable

sendMessageToWorker.exit:                         ; preds = %buildWorkerCommand.exit
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %indvars.iv.i
  store i32 2, ptr %i.t, align 8
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %4, ptr %i.w, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %5, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  store ptr %2, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WaitForWorkers(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.fd_set, align 8             ; 10 uses
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  %i.e = icmp eq i32 %2, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %cond = icmp eq i32 %2, 3
  br label %IsEveryWorkerIdle.exit

IsEveryWorkerIdle.exit:                           ; preds = %IsEveryWorkerIdle.exit.backedge, %bb.a
  %.0 = phi i1 [ %i.e, %bb.a ], [ true, %IsEveryWorkerIdle.exit.backedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false)
  %i.i = load i32, ptr %1, align 8                ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %IsEveryWorkerIdle.exit
  %i.k = load ptr, ptr %i.f, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 2 uses
  %.04664.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.147.i.i, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %indvars.iv.i.i ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %.off.i.i = add i32 %i.m, -1
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = load i32, ptr %i.n, align 8              ; 3 uses
  %i.p = srem i32 %i.o, 64
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw i64 1, %i.q
  %i.s = sdiv i32 %i.o, 64
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %3, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = or i64 %i.r, %i.v
  store i64 %i.w, ptr %i.u, align 8
  %spec.select.i.i = call i32 @llvm.smax.i32(i32 %i.o, i32 %.04664.i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.147.i.i = phi i32 [ %.04664.i.i, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %bb.b, !llvm.loop !19

._crit_edge.loopexit.i.i:                         ; preds = %bb.d
  %i.x = add i32 %.147.i.i, 1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %IsEveryWorkerIdle.exit
  %.046.lcssa.i.i = phi i32 [ 0, %IsEveryWorkerIdle.exit ], [ %i.x, %._crit_edge.loopexit.i.i ] ; 2 uses
  br i1 %.0, label %bb.e, label %bb.h

bb.e:                                             ; preds = %._crit_edge.i.i
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <16 x i64>, ptr %3, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  store <16 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %3, align 8
  %i.y = call i32 @select(i32 noundef %.046.lcssa.i.i, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null) #17 ; 3 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call ptr @__errno_location() #20
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.ab, 4
  br i1 %i.ac, label %bb.f, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ad = call i32 @select(i32 noundef %.046.lcssa.i.i, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef nonnull %4) #17 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %getMessageFromWorker.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.143.i.i = phi i32 [ %i.ad, %bb.h ], [ %i.y, %bb.g ], [ %i.y, %bb.f ]
  %i.af = icmp slt i32 %.143.i.i, 0
  br i1 %i.af, label %bb.j, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.i
  %i.ag = load i32, ptr %1, align 8               ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph67.i.i, label %getMessageFromWorker.exit.thread.i

.lr.ph67.i.i:                                     ; preds = %.preheader.i.i
  %i.ai = load ptr, ptr %i.f, align 8
  %wide.trip.count76.i.i = zext nneg i32 %i.ag to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #17
  call void @exit_nicely(i32 noundef 1) #18
  unreachable

bb.k:                                             ; preds = %bb.q, %.lr.ph67.i.i
  %indvars.iv73.i.i = phi i64 [ 0, %.lr.ph67.i.i ], [ %indvars.iv.next74.i.i, %bb.q ] ; 5 uses
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.ai, i64 %indvars.iv73.i.i ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %.off53.i.i = add i32 %i.ak, -1
  %switch54.i.i = icmp ult i32 %.off53.i.i, 2
  br i1 %switch54.i.i, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.am = load i32, ptr %i.al, align 8            ; 4 uses
  %i.an = sdiv i32 %i.am, 64
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = srem i32 %i.am, 64
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.aq
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = call ptr @pg_malloc(i64 noundef 64) #17 ; 4 uses
  %i.aw = call i64 @read(i32 noundef %i.am, ptr noundef %i.av, i64 noundef 1) #17
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = icmp slt i32 %i.ax, 1
  br i1 %i.ay, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %bb.p
  %i.az = phi ptr [ %i.bi, %bb.p ], [ %i.av, %bb.m ]
  %.01522.i.i.i = phi i32 [ %.1.i.i.i, %bb.p ], [ 64, %bb.m ] ; 3 uses
  %.01621.i.i.i = phi i32 [ %i.bc, %bb.p ], [ 0, %bb.m ]
  %.01720.i.i.i = phi ptr [ %.118.i.i.i, %bb.p ], [ %i.av, %bb.m ] ; 11 uses
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %getMessageFromWorker.exit.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = add i32 %.01621.i.i.i, 1                ; 3 uses
  %i.bd = icmp eq i32 %i.bc, %.01522.i.i.i
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = add i32 %.01522.i.i.i, 16               ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = call ptr @pg_realloc(ptr noundef nonnull %.01720.i.i.i, i64 noundef %i.bf) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.118.i.i.i = phi ptr [ %i.bg, %bb.o ], [ %.01720.i.i.i, %bb.n ] ; 3 uses
  %.1.i.i.i = phi i32 [ %i.be, %bb.o ], [ %.01522.i.i.i, %bb.n ]
  %i.bh = sext i32 %i.bc to i64
  %i.bi = getelementptr inbounds i8, ptr %.118.i.i.i, i64 %i.bh ; 2 uses
  %i.bj = call i64 @read(i32 noundef %i.am, ptr noundef %i.bi, i64 noundef 1) #17
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.p, %bb.m
  %.017.lcssa.i.i.i = phi ptr [ %i.av, %bb.m ], [ %.118.i.i.i, %bb.p ]
  call void @pg_free(ptr noundef %.017.lcssa.i.i.i) #17
  br label %getMessageFromWorker.exit.thread.i

bb.q:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next74.i.i = add nuw nsw i64 %indvars.iv73.i.i, 1 ; 2 uses
  %exitcond77.not.i.i = icmp eq i64 %indvars.iv.next74.i.i, %wide.trip.count76.i.i
  br i1 %exitcond77.not.i.i, label %getMessageFromWorker.exit.thread.i, label %bb.k, !llvm.loop !20

getMessageFromWorker.exit.thread.i:               ; preds = %bb.q, %._crit_edge.i.i.i, %.preheader.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.r

getMessageFromWorker.exit.i:                      ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not.not.i = icmp eq ptr %.01720.i.i.i, null
  br i1 %.not.not.i, label %bb.r, label %sub_0.i

bb.r:                                             ; preds = %getMessageFromWorker.exit.i, %getMessageFromWorker.exit.thread.i
  br i1 %.0, label %bb.s, label %ListenToWorkers.exit.thread

bb.s:                                             ; preds = %bb.r
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.16) #17
  call void @exit_nicely(i32 noundef 1) #18
  unreachable

sub_0.i:                                          ; preds = %getMessageFromWorker.exit.i
  %i.bm = load i8, ptr %.01720.i.i.i, align 1
  %.not.i = icmp eq i8 %i.bm, 79
  br i1 %.not.i, label %sub_1.i, label %.tail.thread.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.01720.i.i.i, i64 1 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1
  %.not30.i = icmp eq i8 %i.bo, 75
  br i1 %.not30.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_1.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.01720.i.i.i, i64 2 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = icmp eq i8 %i.bq, 32
  br i1 %i.br, label %bb.t, label %.tail.thread.i

bb.t:                                             ; preds = %.tail.i
  %i.bs = load ptr, ptr %i.f, align 8
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %i.bs, i64 %indvars.iv73.i.i ; 3 uses
  %i.bu = load ptr, ptr %i.g, align 8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv73.i.i
  %i.bw = load ptr, ptr %i.bv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4
  %i.bx = load i8, ptr %.01720.i.i.i, align 1
  %.not.i20.i = icmp eq i8 %i.bx, 79
  br i1 %.not.i20.i, label %sub_1.i.i, label %.tail.thread.i.i

sub_1.i.i:                                        ; preds = %bb.t
  %i.by = load i8, ptr %i.bn, align 1
  %.not1.i.i = icmp eq i8 %i.by, 75
  br i1 %.not1.i.i, label %.tail.i.i, label %.tail.thread.i.i

.tail.i.i:                                        ; preds = %sub_1.i.i
  %i.bz = load i8, ptr %i.bp, align 1
  %i.ca = icmp eq i8 %i.bz, 32
  br i1 %i.ca, label %ListenToWorkers.exit, label %.tail.thread.i.i

.tail.thread.i.i:                                 ; preds = %.tail.i.i, %sub_1.i.i, %bb.t
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull %.01720.i.i.i) #17
  call void @exit_nicely(i32 noundef 1) #18
  unreachable

.tail.thread.i:                                   ; preds = %.tail.i, %sub_1.i, %sub_0.i
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull %.01720.i.i.i) #17
  call void @exit_nicely(i32 noundef 1) #18
  unreachable

ListenToWorkers.exit:                             ; preds = %.tail.i.i
  %i.cb = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.01720.i.i.i, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #17 ; 0 uses
  %i.cc = load i32, ptr %i.c, align 4
  %i.cd = load i32, ptr %i.h, align 4
  %i.ce = add i32 %i.cd, %i.cc
  store i32 %i.ce, ptr %i.h, align 4
  %i.cf = load i32, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.ch(ptr noundef %0, ptr noundef %i.bw, i32 noundef %i.cf, ptr noundef %i.cj) #17, !inline_history !21
  store i32 1, ptr %i.bt, align 8
  %i.ck = load ptr, ptr %i.g, align 8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv73.i.i
  store ptr null, ptr %i.cl, align 8
  call void @free(ptr noundef nonnull %.01720.i.i.i) #17
  br i1 %cond, label %bb.x, label %IsEveryWorkerIdle.exit.thread

ListenToWorkers.exit.thread:                      ; preds = %bb.r
  switch i32 %2, label %IsEveryWorkerIdle.exit.backedge [
    i32 0, label %IsEveryWorkerIdle.exit.thread
    i32 3, label %bb.x
    i32 2, label %bb.u
  ]

bb.u:                                             ; preds = %ListenToWorkers.exit.thread
  %i.cm = load i32, ptr %1, align 8               ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph.i, label %IsEveryWorkerIdle.exit.backedge

IsEveryWorkerIdle.exit.backedge:                  ; preds = %bb.w, %bb.z, %bb.u, %ListenToWorkers.exit.thread
  br label %IsEveryWorkerIdle.exit

.lr.ph.i:                                         ; preds = %bb.u
  %i.co = load ptr, ptr %i.f, align 8
  %wide.trip.count.i = zext nneg i32 %i.cm to i64
  br label %bb.v
end_hunk_0
begin_hunk_1_@WaitForWorkers:bb.a

bb.y:                                             ; preds = %bb.z
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i10, 1 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %indvars.iv.next.i12, %wide.trip.count.i9
  br i1 %exitcond.not.i13, label %IsEveryWorkerIdle.exit.thread, label %bb.z, !llvm.loop !22

bb.z:                                             ; preds = %bb.y, %.lr.ph.i8
  %indvars.iv.i10 = phi i64 [ 0, %.lr.ph.i8 ], [ %indvars.iv.next.i12, %bb.y ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [56 x i8], ptr %i.cu, i64 %indvars.iv.i10
  %i.cw = load i32, ptr %i.cv, align 8
  %.not.i11 = icmp eq i32 %i.cw, 1
  br i1 %.not.i11, label %bb.y, label %IsEveryWorkerIdle.exit.backedge

IsEveryWorkerIdle.exit.thread:                    ; preds = %ListenToWorkers.exit, %bb.x, %ListenToWorkers.exit.thread, %bb.v, %bb.y
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @IsEveryWorkerIdle(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp eq i32 %i.f, 1                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %bb.b ]
  ret i1 %.lcssa
}

declare void @DisconnectDatabase(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind uwtable
define internal void @sigTermHandler(i32 %0, ptr nofree readnone captures(none) %1) #10 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  tail call void @pqsignal_fe(i32 noundef 2, ptr noundef nonnull inttoptr (i64 1 to ptr)) #17
  tail call void @pqsignal_fe(i32 noundef 15, ptr noundef nonnull inttoptr (i64 1 to ptr)) #17
  tail call void @pqsignal_fe(i32 noundef 3, ptr noundef nonnull inttoptr (i64 1 to ptr)) #17
  %i.b = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @signal_info, i64 8), align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @signal_info, i64 8), align 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.f = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @signal_info, i64 8), align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %.not15 = icmp eq i32 %i.k, 0
  br i1 %.not15, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = tail call i32 @kill(i32 noundef %i.k, i32 noundef 15) #17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @signal_info, i64 8), align 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %.lr.ph, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.a
  %i.q = load volatile ptr, ptr @signal_info, align 8
  %.not12 = icmp eq ptr %i.q, null
  br i1 %.not12, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.r = load volatile ptr, ptr @signal_info, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 448
  %i.t = load volatile ptr, ptr %i.s, align 8
  %.not13 = icmp eq ptr %i.t, null
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load volatile ptr, ptr @signal_info, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 448
  %i.w = load volatile ptr, ptr %i.v, align 8
  %i.x = call i32 @PQcancel(ptr noundef %i.w, ptr noundef nonnull %i.a, i32 noundef 1) #17 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.loopexit
  %i.y = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @signal_info, i64 17), align 1, !range !11, !noundef !12
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr @progname, align 8        ; 3 uses
  %.not14 = icmp eq ptr %i.aa, null
  br i1 %.not14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr @stderr, align 8
  %i.ac = call i32 @fileno(ptr noundef %i.ab) #17
  %i.ad = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #19
  %i.ae = call i64 @write(i32 noundef %i.ac, ptr noundef nonnull %i.aa, i64 noundef %i.ad) #17 ; 0 uses
  %i.af = load ptr, ptr @stderr, align 8
  %i.ag = call i32 @fileno(ptr noundef %i.af) #17
  %i.ah = call i64 @write(i32 noundef %i.ag, ptr noundef nonnull @.str.2, i64 noundef 2) #17 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ai = load ptr, ptr @stderr, align 8
  %i.aj = call i32 @fileno(ptr noundef %i.ai) #17
  %i.ak = call i64 @write(i32 noundef %i.aj, ptr noundef nonnull @.str.3, i64 noundef 19) #17 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  call void @_exit(i32 noundef 1) #18
  unreachable
}

declare i32 @PQcancel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

declare ptr @CloneArchive(ptr noundef) local_unnamed_addr #2

declare void @DeCloneArchive(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

declare ptr @pg_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @pg_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare ptr @getTocEntryByDumpId(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare ptr @createPQExpBuffer() local_unnamed_addr #2

declare ptr @fmtQualifiedId(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @appendPQExpBuffer(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @PQexec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PQresultStatus(ptr noundef) local_unnamed_addr #2

declare void @PQclear(ptr noundef) local_unnamed_addr #2

declare void @destroyPQExpBuffer(ptr noundef) local_unnamed_addr #2

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{null}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{null}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
end_hunk_1
