inline.NumInlined: 160
inline.NumDeleted: 30
begin_hunk_0_@asmGetTrimmingSlotForCommand:bb.a

asmIsTrimInProgress.exit:                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !78
  %.not40 = icmp eq i64 %i.j, 0
  br i1 %.not40, label %asmIsTrimInProgress.exit.thread, label %asmIsTrimInProgress.exit.thread28

asmIsTrimInProgress.exit.thread28:                ; preds = %bb.b, %asmIsTrimInProgress.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 6, ptr %i.k, align 4
  %i.l = call i32 @getKeysFromCommand(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3) #20 ; 2 uses
  %.not2443 = icmp sgt i32 %i.l, 0
  br i1 %.not2443, label %.lr.ph, label %.thread38

.lr.ph:                                           ; preds = %asmIsTrimInProgress.exit.thread28
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %.01745 = phi i32 [ -1, %.lr.ph ], [ %.118.ph, %bb.n ] ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !289
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !291
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !94
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !109  ; 10 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %.val.i = load i8, ptr %i.v, align 1, !tbaa !61 ; 2 uses
  %i.w = and i8 %.val.i, 7
  switch i8 %i.w, label %._crit_edge.thread.i [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.x = lshr i8 %.val.i, 3
  %i.y = zext nneg i8 %i.x to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 -3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !61
  %i.ab = zext i8 %i.aa to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds i8, ptr %i.u, i64 -5
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !62
  %i.ae = zext i16 %i.ad to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.u, i64 -9
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !9
  %i.ah = zext i32 %i.ag to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds i8, ptr %i.u, i64 -17
  %i.aj = load i64, ptr %i.ai, align 1, !tbaa !64
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i25 = phi i64 [ %i.aj, %bb.h ], [ %i.y, %bb.d ], [ %i.ab, %bb.e ], [ %i.ae, %bb.f ], [ %i.ah, %bb.g ] ; 2 uses
  %i.ak = trunc i64 %.0.i25 to i32                ; 8 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %sdslen.exit
  %wide.trip.count.i = and i64 %.0.i25, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !61
  %i.ao = icmp eq i8 %i.an, 123
  br i1 %i.ao, label %._crit_edge.loopexit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !293

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.ap = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %sdslen.exit
  %.025.lcssa.i = phi i32 [ 0, %sdslen.exit ], [ %i.ap, %._crit_edge.loopexit.i ] ; 4 uses
  %i.aq = icmp eq i32 %.025.lcssa.i, %i.ak
  br i1 %i.aq, label %._crit_edge.thread.i, label %bb.j, !prof !294

._crit_edge.thread.i:                             ; preds = %bb.i, %bb.c, %._crit_edge.i
  %i.ar = phi i32 [ %i.ak, %._crit_edge.i ], [ 0, %bb.c ], [ %i.ak, %bb.i ]
  %i.as = call zeroext i16 @crc16(ptr noundef nonnull %i.u, i32 noundef %i.ar) #20
  br label %keyHashSlot.exit

bb.j:                                             ; preds = %._crit_edge.i
  %i.at = add nuw nsw i32 %.025.lcssa.i, 1        ; 3 uses
  %i.au = icmp slt i32 %i.at, %i.ak
  br i1 %i.au, label %.lr.ph33.preheader.i, label %._crit_edge34.thread.i

.lr.ph33.preheader.i:                             ; preds = %bb.j
  %i.av = zext i32 %i.at to i64
  br label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %bb.k, %.lr.ph33.preheader.i
  %indvars.iv39.i = phi i64 [ %i.av, %.lr.ph33.preheader.i ], [ %indvars.iv.next40.i, %bb.k ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv39.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !61
  %i.ay = icmp eq i8 %i.ax, 125
  br i1 %i.ay, label %._crit_edge34.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph33.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %i.az = trunc nuw i64 %indvars.iv.next40.i to i32
  %i.ba = icmp sgt i32 %i.ak, %i.az
  br i1 %i.ba, label %.lr.ph33.i, label %._crit_edge34.thread.i, !llvm.loop !295

._crit_edge34.i:                                  ; preds = %.lr.ph33.i
  %i.bb = trunc nuw i64 %indvars.iv39.i to i32    ; 3 uses
  %i.bc = icmp eq i32 %i.ak, %i.bb
  %i.bd = icmp eq i32 %i.at, %i.bb
  %or.cond.i = or i1 %i.bc, %i.bd
  br i1 %or.cond.i, label %._crit_edge34.thread.i, label %bb.l

._crit_edge34.thread.i:                           ; preds = %bb.k, %._crit_edge34.i, %bb.j
  %i.be = call zeroext i16 @crc16(ptr noundef nonnull %i.u, i32 noundef %i.ak) #20
  br label %keyHashSlot.exit

bb.l:                                             ; preds = %._crit_edge34.i
  %i.bf = zext nneg i32 %.025.lcssa.i to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = xor i32 %.025.lcssa.i, -1
  %i.bj = add nsw i32 %i.bb, %i.bi
  %i.bk = call zeroext i16 @crc16(ptr noundef nonnull %i.bh, i32 noundef %i.bj) #20
  br label %keyHashSlot.exit

keyHashSlot.exit:                                 ; preds = %._crit_edge.thread.i, %._crit_edge34.thread.i, %bb.l
  %.026.in.in.i = phi i16 [ %i.as, %._crit_edge.thread.i ], [ %i.be, %._crit_edge34.thread.i ], [ %i.bk, %bb.l ]
  %.026.in.i = and i16 %.026.in.in.i, 16383
  %.026.i = zext nneg i16 %.026.in.i to i32       ; 4 uses
  %i.bl = icmp eq i32 %.01745, %.026.i
  br i1 %i.bl, label %bb.n, label %bb.m

bb.m:                                             ; preds = %keyHashSlot.exit
  %i.bm = call i32 @isSlotInTrimJob(i32 noundef %.026.i)
  %.not23 = icmp eq i32 %i.bm, 0
  br i1 %.not23, label %bb.n, label %.thread38

bb.n:                                             ; preds = %keyHashSlot.exit, %bb.m
  %.118.ph = phi i32 [ %.026.i, %bb.m ], [ %.01745, %keyHashSlot.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread38, label %bb.c, !llvm.loop !296

.thread38:                                        ; preds = %bb.n, %bb.m, %asmIsTrimInProgress.exit.thread28
  %.3 = phi i32 [ -1, %asmIsTrimInProgress.exit.thread28 ], [ %.026.i, %bb.m ], [ -1, %bb.n ]
  call void @getKeysFreeResult(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %asmIsTrimInProgress.exit.thread

asmIsTrimInProgress.exit.thread:                  ; preds = %bb.a, %asmIsTrimInProgress.exit, %.thread38
  %.4 = phi i32 [ %.3, %.thread38 ], [ -1, %asmIsTrimInProgress.exit ], [ -1, %bb.a ]
  ret i32 %.4
}

declare i32 @getKeysFromCommand(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @getKeysFreeResult(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @asmActiveTrimDeleteKey(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @asmManager, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !68   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @debugDelay(i32 noundef %i.c) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i64, ptr %1, align 8
  %i.f = and i64 %i.e, 2147483392
  %i.g = icmp eq i64 %i.f, 2147483136
  br i1 %i.g, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109  ; 6 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %.val.i = load i8, ptr %i.j, align 1, !tbaa !61 ; 2 uses
  %i.k = and i8 %.val.i, 7
  switch i8 %i.k, label %sdslen.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = lshr i8 %.val.i, 3
  %i.m = zext nneg i8 %i.l to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 -3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !61
  %i.p = zext i8 %i.o to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 -5
  %i.r = load i16, ptr %i.q, align 1, !tbaa !62
  %i.s = zext i16 %i.r to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -9
  %i.u = load i32, ptr %i.t, align 1, !tbaa !9
  %i.v = zext i32 %i.u to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds i8, ptr %i.i, i64 -17
  %i.x = load i64, ptr %i.w, align 1, !tbaa !64
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.x, %bb.i ], [ %i.m, %bb.e ], [ %i.p, %bb.f ], [ %i.s, %bb.g ], [ %i.v, %bb.h ], [ 0, %bb.d ]
  %i.y = tail call ptr @createStringObject(ptr noundef nonnull %i.i, i64 noundef %.0.i) #20 ; 4 uses
  %2 = tail call i32 @dbDelete(ptr noundef %0, ptr noundef %i.y) #20 ; 0 uses
  tail call void @keyModified(ptr noundef null, ptr noundef %0, ptr noundef %i.y, ptr noundef null, i32 noundef 1) #20
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %4 = load i32, ptr %3, align 8, !tbaa !209
  tail call void @moduleNotifyKeyspaceEvent(i32 noundef 131072, ptr noundef nonnull @.str.213, ptr noundef %i.y, i32 noundef %4) #20
  %5 = load ptr, ptr @asmManager, align 8, !tbaa !13
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %7 = load i64, ptr %6, align 8, !tbaa !80
  %8 = add i64 %7, 1
  store i64 %8, ptr %6, align 8, !tbaa !80
  tail call void @decrRefCount(ptr noundef %i.y) #20
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  %i.z = tail call i32 @dbDelete(ptr noundef %0, ptr noundef nonnull %1) #20 ; 0 uses
  tail call void @keyModified(ptr noundef null, ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, i32 noundef 1) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !209
  tail call void @moduleNotifyKeyspaceEvent(i32 noundef 131072, ptr noundef nonnull @.str.213, ptr noundef nonnull %1, i32 noundef %i.ab) #20
  %i.ac = load ptr, ptr @asmManager, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !80
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !80
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %sdslen.exit
  ret void
}

declare i32 @dbDelete(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @keyModified(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @moduleNotifyKeyspaceEvent(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @asmActiveTrimCycle() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct._kvstoreDictIterator, align 8 ; 8 uses
  %i.a = load ptr, ptr @asmManager, align 8, !tbaa !13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !68
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !78
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8300), align 4, !tbaa !195
  %i.k = icmp sgt i32 %i.j, 0                     ; 2 uses
  %i.l = tail call i32 @isPausedActions(i32 noundef 2) #20
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @isPausedActions(i32 noundef 1) #20
  %i.n = icmp ne i32 %i.m, 0
  %or.cond = select i1 %i.n, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %.b30 = load i1, ptr @asmActiveTrimCycle.blocked, align 4
  br i1 %.b30, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i1 true, ptr @asmActiveTrimCycle.blocked, align 4
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !29
  %i.p = icmp sgt i32 %i.o, 2
  br i1 %i.p, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = select i1 %i.k, ptr @.str.195, ptr @.str.196
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.214, ptr noundef nonnull %i.q) #20
  br label %bb.u

bb.h:                                             ; preds = %bb.d
  %.b = load i1, ptr @asmActiveTrimCycle.blocked, align 4
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.s = icmp slt i32 %i.r, 3
  %or.cond3.not = select i1 %.b, i1 %i.s, i1 false
  br i1 %or.cond3.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.215) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i1 false, ptr @asmActiveTrimCycle.blocked, align 4
  %i.t = tail call i64 @ustime() #20
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !297
  %i.v = sdiv i32 25000000, %i.u
  %i.w = sdiv i32 %i.v, 100
  %i.x = tail call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  %spec.store.select = zext nneg i32 %i.x to i64
  %i.y = load ptr, ptr @asmManager, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !279 ; 2 uses
  %.not32 = icmp eq ptr %i.aa, null
  br i1 %.not32, label %bb.k, label %bb.l, !prof !107

bb.k:                                             ; preds = %bb.j
  tail call void @_serverAssert(ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.50, i32 noundef 3495) #20
  tail call void @abort() #22
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ab = tail call i32 @slotRangeArrayGetCurrentSlot(ptr noundef nonnull %i.aa) #20 ; 2 uses
  %.not56 = icmp eq i32 %i.ab, -1
  br i1 %.not56, label %._crit_edge54.thread, label %.lr.ph53

.lr.ph53:                                         ; preds = %bb.l, %.loopexit
  %.02351 = phi i64 [ %.124.lcssa, %.loopexit ], [ 0, %bb.l ] ; 2 uses
  %.02650 = phi i32 [ %i.bk, %.loopexit ], [ %i.ab, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !138
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !139
  call void @kvstoreInitDictSafeIterator(ptr noundef nonnull %0, ptr noundef %i.ad, i32 noundef %.02650) #20
  %i.ae = call ptr @kvstoreDictIteratorNext(ptr noundef nonnull %0) #20 ; 2 uses
  %.not3548 = icmp eq ptr %i.ae, null
  br i1 %.not3548, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph53, %bb.s
  %i.af = phi ptr [ %i.bf, %bb.s ], [ %i.ae, %.lr.ph53 ]
  %.12449 = phi i64 [ %i.az, %bb.s ], [ %.02351, %.lr.ph53 ]
  %i.ag = call ptr @dictGetKey(ptr noundef nonnull %i.af) #20
  %i.ah = call ptr @kvobjGetKey(ptr noundef %i.ag) #20 ; 6 uses
  call void @enterExecutionUnit(i32 noundef 1, i64 noundef 0) #20
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1
  %.val.i = load i8, ptr %i.ai, align 1, !tbaa !61 ; 2 uses
  %i.aj = and i8 %.val.i, 7
  switch i8 %i.aj, label %sdslen.exit [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.p
    i8 4, label %bb.q
  ]

bb.m:                                             ; preds = %.lr.ph
  %i.ak = lshr i8 %.val.i, 3
  %i.al = zext nneg i8 %i.ak to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 -3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !61
  %i.ao = zext i8 %i.an to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds i8, ptr %i.ah, i64 -5
  %i.aq = load i16, ptr %i.ap, align 1, !tbaa !62
  %i.ar = zext i16 %i.aq to i64
  br label %sdslen.exit

bb.p:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds i8, ptr %i.ah, i64 -9
  %i.at = load i32, ptr %i.as, align 1, !tbaa !9
  %i.au = zext i32 %i.at to i64
  br label %sdslen.exit

bb.q:                                             ; preds = %.lr.ph
  %i.av = getelementptr inbounds i8, ptr %i.ah, i64 -17
  %i.aw = load i64, ptr %i.av, align 1, !tbaa !64
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.lr.ph, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i = phi i64 [ %i.aw, %bb.q ], [ %i.al, %bb.m ], [ %i.ao, %bb.n ], [ %i.ar, %bb.o ], [ %i.au, %bb.p ], [ 0, %.lr.ph ]
  %i.ax = call ptr @createStringObject(ptr noundef nonnull %i.ah, i64 noundef %.0.i) #20 ; 2 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !138
  call void @asmActiveTrimDeleteKey(ptr noundef %i.ay, ptr noundef %i.ax)
  call void @decrRefCount(ptr noundef %i.ax) #20
  call void @exitExecutionUnit() #20
  call void @postExecutionUnitOperations() #20
  %i.az = add i64 %.12449, 1                      ; 3 uses
  %i.ba = and i64 %i.az, 31
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %sdslen.exit
  %i.bc = call i64 @ustime() #20
  %i.bd = sub nsw i64 %i.bc, %i.t
  %i.be = icmp sgt i64 %i.bd, %spec.store.select
  br i1 %i.be, label %.thread, label %bb.s

bb.s:                                             ; preds = %sdslen.exit, %bb.r
  %i.bf = call ptr @kvstoreDictIteratorNext(ptr noundef nonnull %0) #20 ; 2 uses
  %.not35 = icmp eq ptr %i.bf, null
  br i1 %.not35, label %.loopexit, label %.lr.ph

.thread:                                          ; preds = %bb.r
  call void @kvstoreResetDictIterator(ptr noundef nonnull %0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  %i.bg = icmp eq i32 %.02650, -1
  br i1 %i.bg, label %._crit_edge54.thread, label %bb.u

.loopexit:                                        ; preds = %bb.s, %.lr.ph53
  %.124.lcssa = phi i64 [ %.02351, %.lr.ph53 ], [ %i.az, %bb.s ]
  call void @kvstoreResetDictIterator(ptr noundef nonnull %0) #20
  %i.bh = load ptr, ptr @asmManager, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !279
  %i.bk = call i32 @slotRangeArrayNext(ptr noundef %i.bj) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  %.not68 = icmp eq i32 %i.bk, -1
  br i1 %.not68, label %._crit_edge54.thread, label %.lr.ph53, !llvm.loop !298

._crit_edge54.thread:                             ; preds = %.loopexit, %bb.l, %.thread
  %i.bl = call i32 @jemalloc_purge() #20          ; 0 uses
  call void @asmActiveTrimEnd()
  %i.bm = load ptr, ptr @asmManager, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !78
  %.not34 = icmp eq i64 %i.bq, 0
  br i1 %.not34, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge54.thread
  call void @asmActiveTrimStart()
end_hunk_0
