inline.NumInlined: 30
inline.NumDeleted: 9
begin_hunk_0_@processClientsFromIOThread:bb.a
  %.pre14.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8064), align 8, !tbaa !55 ; 4 uses
  br i1 %.not.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 344 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !78
  %i.bd = add nsw i64 %i.bc, 1000
  %.not9.i = icmp sgt i64 %i.bd, %.pre14.i
  br i1 %.not9.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.pre14.i, ptr %i.bb, align 8, !tbaa !78
  %i.be = tail call i32 @replicationCronRunMasterClient() #15
  %.not10.i = icmp eq i32 %i.be, 0
  br i1 %.not10.i, label %._crit_edge.i, label %sendPendingClientsToIOThreadIfNeeded.exit

._crit_edge.i:                                    ; preds = %bb.q
  %.pre.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8064), align 8, !tbaa !55
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i, %bb.p, %bb.o
  %i.bf = phi i64 [ %.pre.i, %._crit_edge.i ], [ %.pre14.i, %bb.p ], [ %.pre14.i, %bb.o ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 336 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !79
  %i.bi = add nsw i64 %i.bh, 1000
  %.not11.i = icmp sgt i64 %i.bi, %i.bf
  br i1 %.not11.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bj = load i8, ptr %i.ap, align 2, !tbaa !80
  %i.bk = and i8 %i.bj, 32
  %.not12.i = icmp eq i8 %i.bk, 0
  br i1 %.not12.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !79
  %i.bl = tail call i32 @clientsCronRunClient(ptr noundef nonnull %i.ao) #15
  %.not13.i = icmp eq i32 %i.bl, 0
  br i1 %.not13.i, label %runClientCronFromIOThread.exit, label %sendPendingClientsToIOThreadIfNeeded.exit

bb.u:                                             ; preds = %bb.s
  %i.bm = tail call i32 @updateClientMemUsageAndBucket(ptr noundef nonnull %i.ao) #15 ; 0 uses
  br label %runClientCronFromIOThread.exit

runClientCronFromIOThread.exit:                   ; preds = %bb.u, %bb.t
  %i.bn = tail call i32 @isClientReadErrorFatal(ptr noundef nonnull %i.ao) #15
  %.not60 = icmp eq i32 %i.bn, 0
  br i1 %.not60, label %bb.v, label %bb.x

bb.v:                                             ; preds = %runClientCronFromIOThread.exit
  %i.bo = load i8, ptr %i.ap, align 2, !tbaa !80
  %i.bp = and i8 %i.bo, 4
  %.not61 = icmp eq i8 %i.bp, 0
  br i1 %.not61, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = load i64, ptr %i.as, align 8, !tbaa !13
  %i.br = or i64 %i.bq, 1073741824
  store i64 %i.br, ptr %i.as, align 8, !tbaa !13
  %i.bs = tail call i32 @processPendingCommandAndInputBuffer(ptr noundef nonnull %i.ao) #15
  %i.bt = icmp eq i32 %i.bs, -1
  br i1 %i.bt, label %sendPendingClientsToIOThreadIfNeeded.exit, label %bb.x, !llvm.loop !140

bb.x:                                             ; preds = %bb.w, %bb.v, %runClientCronFromIOThread.exit
  %i.bu = load i64, ptr %i.as, align 8, !tbaa !13
  %i.bv = and i64 %i.bu, 2097152
  %.not62 = icmp eq i64 %i.bv, 0
  br i1 %.not62, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bw = tail call i32 @clientHasPendingReplies(ptr noundef nonnull %i.ao) #15
  %.not63 = icmp eq i32 %i.bw, 0
  br i1 %.not63, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @putClientInPendingWriteQueue(ptr noundef nonnull %i.ao) #15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.bx = load i64, ptr %i.as, align 8, !tbaa !13 ; 6 uses
  %i.by = and i64 %i.bx, 27021600012633236
  %.not.i67 = icmp eq i64 %i.by, 0
  br i1 %.not.i67, label %bb.ab, label %isClientMustHandledByMainThread.exit.thread81

bb.ab:                                            ; preds = %bb.aa
  %i.bz = and i64 %i.bx, 2
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7476), align 4
  %i.cc = icmp eq i32 %i.cb, 13
  %or.cond.i = select i1 %i.ca, i1 %i.cc, i1 false
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7480), align 8
  %i.ce = icmp eq i32 %i.cd, 0
  %or.cond3.i = select i1 %or.cond.i, i1 %i.ce, i1 false
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8692), align 4
  %i.cg = icmp eq i32 %i.cf, 0
  %or.cond5.i = select i1 %or.cond3.i, i1 %i.cg, i1 false
  %.pre89 = and i64 %i.bx, 1                      ; 2 uses
  br i1 %or.cond5.i, label %isClientMustHandledByMainThread.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not14.i = icmp eq i64 %.pre89, 0
  br i1 %.not14.i, label %isClientMustHandledByMainThread.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ao, i64 356
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !114
  switch i32 %i.ci, label %isClientMustHandledByMainThread.exit [
    i32 9, label %bb.ae
    i32 12, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ao, i64 360
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !115
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.af, label %isClientMustHandledByMainThread.exit

bb.af:                                            ; preds = %bb.ae
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ao, i64 832
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !50
  %.not15.i.not = icmp eq ptr %i.cn, null
  br i1 %.not15.i.not, label %isClientMustHandledByMainThread.exit.thread81, label %sendPendingClientsToIOThreadIfNeeded.exit

isClientMustHandledByMainThread.exit:             ; preds = %bb.ac, %bb.ad, %bb.ae
  %.old = and i64 %i.bx, 3
  %.not16.i.not.old = icmp eq i64 %.old, 0
  br i1 %.not16.i.not.old, label %isClientMustHandledByMainThread.exit.thread, label %isClientMustHandledByMainThread.exit.thread81

isClientMustHandledByMainThread.exit.thread81:    ; preds = %bb.af, %bb.aa, %isClientMustHandledByMainThread.exit
  tail call void @keepClientInMainThread(ptr noundef nonnull %i.ao)
  br label %sendPendingClientsToIOThreadIfNeeded.exit, !llvm.loop !140

isClientMustHandledByMainThread.exit.thread:      ; preds = %bb.ab, %isClientMustHandledByMainThread.exit
  %.not65 = icmp eq i64 %.pre89, 0
  br i1 %.not65, label %bb.ag, label %sendPendingClientsToIOThreadIfNeeded.exit, !llvm.loop !140

bb.ag:                                            ; preds = %isClientMustHandledByMainThread.exit.thread
  %i.co = and i64 %i.bx, 2097152
  %.not66 = icmp eq i64 %i.co, 0
  br i1 %.not66, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cp = and i64 %i.bx, -27021600014730390
  store i64 %i.cp, ptr %i.as, align 8, !tbaa !13
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1456), align 8, !tbaa !103
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ao, i64 880
  tail call void @listUnlinkNode(ptr noundef %i.cq, ptr noundef nonnull %i.cr) #15
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !39  ; 2 uses
  store i8 %i.ct, ptr %i.av, align 1, !tbaa !41
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClientsToIOThreads, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !100
  tail call void @listLinkNodeHead(ptr noundef %i.cw, ptr noundef nonnull %i.am) #15
  %i.cx = load i8, ptr %0, align 64, !tbaa !99
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClientsToIOThreads, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !100
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !97
  %i.dd = icmp ult i64 %i.dc, 16
  br i1 %i.dd, label %sendPendingClientsToIOThreadIfNeeded.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6672), align 8, !tbaa !141
  %i.df = icmp eq i32 %i.de, 1
  %i.dg = load i32, ptr @ProcessingEventsWhileBlocked, align 4
  %i.dh = icmp ne i32 %i.dg, 0
  %or.cond3.i70 = select i1 %i.df, i1 true, i1 %i.dh
  br i1 %or.cond3.i70, label %sendPendingClientsToIOThreadIfNeeded.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.di = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ab) #15 ; 0 uses
  %i.dj = load ptr, ptr %i.ac, align 32, !tbaa !113 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !97
  %i.dm = load i8, ptr %0, align 64, !tbaa !99
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClientsToIOThreads, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !100
  tail call void @listJoin(ptr noundef %i.dj, ptr noundef %i.dp) #15
  %i.dq = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ab) #15 ; 0 uses
  %i.dr = and i64 %i.dl, 4294967295
  %.not.i71 = icmp eq i64 %i.dr, 0
  br i1 %.not.i71, label %bb.al, label %sendPendingClientsToIOThreadIfNeeded.exit

bb.al:                                            ; preds = %bb.ak
  %i.ds = load atomic i32, ptr %i.ad seq_cst, align 4
  %.not21.i = icmp eq i32 %i.ds, 0
  br i1 %.not21.i, label %bb.am, label %sendPendingClientsToIOThreadIfNeeded.exit

bb.am:                                            ; preds = %bb.al
  %i.dt = load ptr, ptr %i.ae, align 16, !tbaa !128
  %i.du = tail call i32 @triggerEventNotifier(ptr noundef %i.dt) #15 ; 0 uses
  br label %sendPendingClientsToIOThreadIfNeeded.exit

sendPendingClientsToIOThreadIfNeeded.exit:        ; preds = %bb.af, %bb.t, %bb.q, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %isClientMustHandledByMainThread.exit.thread, %bb.w, %isClientMustHandledByMainThread.exit.thread81, %bb.n
  %.1 = phi ptr [ %i.am, %bb.n ], [ null, %bb.am ], [ %i.am, %isClientMustHandledByMainThread.exit.thread81 ], [ %i.am, %bb.w ], [ %i.am, %isClientMustHandledByMainThread.exit.thread ], [ null, %bb.ai ], [ %i.am, %bb.t ], [ null, %bb.aj ], [ null, %bb.ak ], [ null, %bb.al ], [ %i.am, %bb.q ], [ %i.am, %bb.af ] ; 3 uses
  %i.dv = load i8, ptr %0, align 64, !tbaa !99    ; 2 uses
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr @mainThreadProcessingClients, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !100
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !97
  %.not = icmp eq i64 %i.ea, 0
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %sendPendingClientsToIOThreadIfNeeded.exit
  %.not53 = icmp eq ptr %.1, null
  br i1 %.not53, label %._crit_edge.thread, label %bb.an

bb.an:                                            ; preds = %._crit_edge
  tail call void @zfree(ptr noundef nonnull %.1) #15
  %.pre = load i8, ptr %0, align 64, !tbaa !99
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %bb.an, %._crit_edge
  %i.eb = phi i8 [ %.pre, %bb.an ], [ %i.dv, %._crit_edge ], [ %i.v, %bb.b ]
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClientsToIOThreads, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !100
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !97
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %sendPendingClientsToIOThreadIfNeeded.exit76, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.thread
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6672), align 8, !tbaa !141
  %i.ej = icmp eq i32 %i.ei, 1
  %i.ek = load i32, ptr @ProcessingEventsWhileBlocked, align 4
  %i.el = icmp ne i32 %i.ek, 0
  %or.cond3.i73 = select i1 %i.ej, i1 true, i1 %i.el
  br i1 %or.cond3.i73, label %sendPendingClientsToIOThreadIfNeeded.exit76, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.en = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.em) #15 ; 0 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ep = load ptr, ptr %i.eo, align 32, !tbaa !113 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !97
  %i.es = load i8, ptr %0, align 64, !tbaa !99
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClientsToIOThreads, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !100
  tail call void @listJoin(ptr noundef %i.ep, ptr noundef %i.ev) #15
  %i.ew = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.em) #15 ; 0 uses
  %i.ex = and i64 %i.er, 4294967295
  %.not.i74 = icmp eq i64 %i.ex, 0
  br i1 %.not.i74, label %bb.aq, label %sendPendingClientsToIOThreadIfNeeded.exit76

bb.aq:                                            ; preds = %bb.ap
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ez = load atomic i32, ptr %i.ey seq_cst, align 4
  %.not21.i75 = icmp eq i32 %i.ez, 0
  br i1 %.not21.i75, label %bb.ar, label %sendPendingClientsToIOThreadIfNeeded.exit76

bb.ar:                                            ; preds = %bb.aq
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fb = load ptr, ptr %i.fa, align 16, !tbaa !128
  %i.fc = tail call i32 @triggerEventNotifier(ptr noundef %i.fb) #15 ; 0 uses
  br label %sendPendingClientsToIOThreadIfNeeded.exit76

sendPendingClientsToIOThreadIfNeeded.exit76:      ; preds = %._crit_edge.thread, %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %i.fd = trunc i64 %i.t to i32
  br label %bb.as

bb.as:                                            ; preds = %bb.a, %sendPendingClientsToIOThreadIfNeeded.exit76
  %.0 = phi i32 [ %i.fd, %sendPendingClientsToIOThreadIfNeeded.exit76 ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @resetCommandsBatch() local_unnamed_addr #1

declare void @zfree(ptr noundef) local_unnamed_addr #1

declare i32 @isClientReadErrorFatal(ptr noundef) local_unnamed_addr #1

declare void @handleClientReadError(ptr noundef) local_unnamed_addr #1

declare void @freeClient(ptr noundef) local_unnamed_addr #1

declare i32 @processPendingCommandAndInputBuffer(ptr noundef) local_unnamed_addr #1

declare i32 @clientHasPendingReplies(ptr noundef) local_unnamed_addr #1

declare void @putClientInPendingWriteQueue(ptr noundef) local_unnamed_addr #1

declare void @listLinkNodeHead(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @handleClientsFromIOThread(ptr readnone captures(none) %0, i32 noundef %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %i.a = load i8, ptr %2, align 64, !tbaa !99
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClientsNotifiers, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.e = tail call i32 @getReadEventFd(ptr noundef %i.d) #15
  %i.f = icmp eq i32 %1, %i.e
  br i1 %i.f, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 670) #15
  tail call void @abort() #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load i8, ptr %2, align 64, !tbaa !99
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClientsNotifiers, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
  %i.k = tail call i32 @handleEventNotifier(ptr noundef %i.j) #15 ; 0 uses
  %i.l = tail call i32 @processClientsFromIOThread(ptr noundef nonnull %2) ; 0 uses
  ret void
}

declare i32 @getReadEventFd(ptr noundef) local_unnamed_addr #1

declare i32 @handleEventNotifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @processClientsOfAllIOThreads() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !116
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.05.lcssa = phi i32 [ 0, %bb.a ], [ %i.e, %.lr.ph ]
  ret i32 %.05.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %.056 = phi i32 [ %i.e, %.lr.ph ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw [128 x i8], ptr @IOThreads, i64 %indvars.iv
  %i.d = tail call i32 @processClientsFromIOThread(ptr noundef nonnull %i.c)
  %i.e = add nsw i32 %i.d, %.056                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !116
  %i.g = sext i32 %i.f to i64
  %i.h = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !142
}

; Function Attrs: nounwind uwtable
define dso_local void @handleClientsFromMainThread(ptr readnone captures(none) %0, i32 noundef %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !128
  %i.c = tail call i32 @getReadEventFd(ptr noundef %i.b) #15
  %i.d = icmp eq i32 %1, %i.c
  br i1 %i.d, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 707) #15
  tail call void @abort() #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 16, !tbaa !128
  %i.f = tail call i32 @handleEventNotifier(ptr noundef %i.e) #15 ; 0 uses
  %i.g = tail call i32 @processClientsFromMainThread(ptr noundef nonnull %2) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @processClientsFromMainThread(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 32, !tbaa !113
  tail call void @listJoin(ptr noundef %i.d, ptr noundef %i.f) #15
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !143  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !97   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @listRewind(ptr noundef nonnull %i.h, ptr noundef nonnull %1) #15
  %i.l = call ptr @listNext(ptr noundef nonnull %1) #15 ; 2 uses
  %.not47 = icmp eq ptr %i.l, null
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.s
  %i.o = phi ptr [ %i.l, %.lr.ph ], [ %i.bh, %bb.s ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
end_hunk_0
