inline.NumInlined: 23
inline.NumDeleted: 6
begin_hunk_0_@handleClientsBlockedOnKeys:bb.a
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8, !tbaa !110
  store ptr %i.ae, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8, !tbaa !110
  %i.cp = load ptr, ptr @getMonotonicUs, align 8, !tbaa !112
  %i.cq = call i64 %i.cp() #5, !inline_history !113
  %i.cr = call i32 @moduleTryServeClientBlockedOnKey(ptr noundef nonnull %i.ae, ptr noundef %i.cm) #5
  %.not.i30.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i30.i, label %moduleUnblockClientOnKey.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cs = load ptr, ptr @getMonotonicUs, align 8, !tbaa !112
  %i.ct = call i64 %i.cs() #5, !inline_history !114
  %i.cu = sub i64 %i.ct, %i.cq                    ; 2 uses
  %i.cv = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3096), align 8, !tbaa !111
  %.not23 = icmp eq i64 %i.cv, %i.cn
end_hunk_0
begin_hunk_1_@handleClientsBlockedOnKeys:bb.a
  call void @listDelNode(ptr noundef nonnull %i.g, ptr noundef %i.j) #5
  %i.dv = load i64, ptr %i.f, align 8, !tbaa !83
  %.not11 = icmp eq i64 %i.dv, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph, !llvm.loop !115

._crit_edge:                                      ; preds = %handleClientsBlockedOnKey.exit, %.lr.ph26
  call void @listRelease(ptr noundef nonnull %i.g) #5
end_hunk_1
begin_hunk_2_@handleClientsBlockedOnKeys:bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !83
  %.not = icmp eq i64 %i.dy, 0
  br i1 %.not, label %._crit_edge27, label %.lr.ph26, !llvm.loop !116

._crit_edge27:                                    ; preds = %._crit_edge, %.preheader
  store i1 false, ptr @handleClientsBlockedOnKeys.in_handling_blocked_clients, align 4
end_hunk_2
begin_hunk_3_@blockForKeys:bb.a
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv59 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !117
  %i.l = call ptr @dictAddRaw(ptr noundef %i.i, ptr noundef %i.k, ptr noundef null) #5 ; 2 uses
  %.not46.us = icmp eq ptr %i.l, null
  br i1 %.not46.us, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !117
  call void @incrRefCount(ptr noundef %i.m) #5
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !117
  %i.r = call ptr @dictAddRaw(ptr noundef %i.p, ptr noundef %i.q, ptr noundef nonnull %i.a) #5 ; 2 uses
  %.not47.us = icmp eq ptr %i.r, null
  br i1 %.not47.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = call ptr @listCreate() #5                ; 2 uses
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !108
  call void @dictSetVal(ptr noundef %i.v, ptr noundef nonnull %i.r, ptr noundef %i.s) #5
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !117
  call void @incrRefCount(ptr noundef %i.w) #5
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.y = call ptr @dictGetVal(ptr noundef %i.x) #5
  br label %bb.g

end_hunk_3
begin_hunk_4_@blockForKeys:bb.a
  %i.z = call ptr @listAddNodeTail(ptr noundef %.038.us, ptr noundef nonnull %0) #5 ; 0 uses
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %.038.us, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !120
  call void @dictSetVal(ptr noundef %i.aa, ptr noundef nonnull %i.l, ptr noundef %i.ac) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.us
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !121

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %.lr.ph ] ; 2 uses
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 6 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !117
  %i.ag = call ptr @dictAddRaw(ptr noundef %i.ad, ptr noundef %i.af, ptr noundef null) #5 ; 2 uses
  %.not46 = icmp eq ptr %i.ag, null
  br i1 %.not46, label %bb.o, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !117
  call void @incrRefCount(ptr noundef %i.ah) #5
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !108
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !117
  %i.am = call ptr @dictAddRaw(ptr noundef %i.ak, ptr noundef %i.al, ptr noundef nonnull %i.a) #5 ; 2 uses
  %.not47 = icmp eq ptr %i.am, null
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @listCreate() #5               ; 2 uses
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !108
  call void @dictSetVal(ptr noundef %i.aq, ptr noundef nonnull %i.am, ptr noundef %i.an) #5
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !117
  call void @incrRefCount(ptr noundef %i.ar) #5
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.at = call ptr @dictGetVal(ptr noundef %i.as) #5
  br label %bb.l

end_hunk_4
begin_hunk_5_@blockForKeys:bb.a
  %i.au = call ptr @listAddNodeTail(ptr noundef %.038, ptr noundef nonnull %0) #5 ; 0 uses
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.aw = getelementptr inbounds nuw i8, ptr %.038, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !120
  call void @dictSetVal(ptr noundef %i.av, ptr noundef nonnull %i.ag, ptr noundef %i.ax) #5
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !122
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !117
  %i.bc = call ptr @dictAddRaw(ptr noundef %i.ba, ptr noundef %i.bb, ptr noundef nonnull %i.a) #5 ; 2 uses
  %.not49 = icmp eq ptr %i.bc, null
  br i1 %.not49, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !117
  call void @incrRefCount(ptr noundef %i.bd) #5
  call void @dictSetUnsignedIntegerVal(ptr noundef nonnull %i.bc, i64 noundef 1) #5
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.bf = call i64 @dictIncrUnsignedIntegerVal(ptr noundef %i.be, i64 noundef 1) #5 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count62
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !121

._crit_edge:                                      ; preds = %bb.o, %bb.h, %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 608
end_hunk_5
begin_hunk_6_@signalKeyAsReadyLogic:bb.a

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !122
  %i.k = tail call ptr @dictFind(ptr noundef %i.j, ptr noundef %1) #5
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %getBlockedTypeByType.exit, label %bb.e
end_hunk_6
begin_hunk_7_@blockForReplication:bb.a
  %i.c = trunc i64 %3 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i32 %i.c, ptr %i.d, align 8, !tbaa !41
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7696), align 8, !tbaa !123
  %i.f = tail call ptr @listAddNodeHead(ptr noundef %i.e, ptr noundef %0) #5 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45
end_hunk_7
begin_hunk_8_@blockForAofFsync:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i32 %i.c, ptr %i.d, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 628
  store i32 %3, ptr %i.e, align 4, !tbaa !124
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7696), align 8, !tbaa !123
  %i.g = tail call ptr @listAddNodeHead(ptr noundef %i.f, ptr noundef %0) #5 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !45
end_hunk_8
begin_hunk_9_@blockPostponeClientWithType:bb.a
  %i.p = tail call ptr @listAddNodeTail(ptr noundef %i.o, ptr noundef nonnull %0) #5 ; 0 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1552), align 8, !tbaa !90
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !120
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %i.s, ptr %i.t, align 8, !tbaa !91
  %i.u = load i64, ptr %i.d, align 8, !tbaa !45
end_hunk_9
begin_hunk_10_@blockPostponeClient:bb.a
  %i.l = tail call ptr @listAddNodeTail(ptr noundef %i.k, ptr noundef nonnull %0) #5 ; 0 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1552), align 8, !tbaa !90
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %i.o, ptr %i.p, align 8, !tbaa !91
  %i.q = load i64, ptr %i.b, align 8, !tbaa !45
end_hunk_10
begin_hunk_11_@blockedBeforeSleep:bb.a
bb.a:
  tail call void @handleBlockedClientsTimeout() #5
  tail call void @handleClaimableStreamEntries() #5
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7696), align 8, !tbaa !123
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !83
  %.not = icmp eq i64 %i.c, 0
end_hunk_11
begin_hunk_12_@releaseBlockedEntry:bb.a
  %i.a = tail call ptr @dictGetKey(ptr noundef %1) #5 ; 7 uses
  %i.b = tail call ptr @dictGetVal(ptr noundef %1) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.g = tail call ptr @dictFetchValue(ptr noundef %i.f, ptr noundef %i.a) #5 ; 3 uses
end_hunk_12
begin_hunk_13_@releaseBlockedEntry:bb.a
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !108
  %i.n = tail call i32 @dictDelete(ptr noundef %i.m, ptr noundef %i.a) #5 ; 0 uses
end_hunk_13
begin_hunk_14_@releaseBlockedEntry:bb.a
  br i1 %.not26, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !122
  %i.t = tail call ptr @dictFind(ptr noundef %i.s, ptr noundef %i.a) #5 ; 2 uses
  %.not27 = icmp eq ptr %i.t, null
  br i1 %.not27, label %bb.g, label %bb.h, !prof !86
end_hunk_14
begin_hunk_15_@releaseBlockedEntry:bb.a
  br i1 %.not28, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %bb.h, %bb.d
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.y = tail call i32 @dictDelete(ptr noundef %i.x, ptr noundef %i.a) #5 ; 0 uses
  br label %bb.i

end_hunk_15
begin_hunk_16_@moduleUnblockClient
!110 = !{!47, !52, i64 1496}
!111 = !{!47, !28, i64 3096}
!112 = !{!17, !17, i64 0}
!113 = distinct !{null, null, null}
!114 = distinct !{null, null, null}
!115 = distinct !{!115, !89}
!116 = distinct !{!116, !89}
!117 = !{!19, !19, i64 0}
!118 = !{!14, !18, i64 32}
!119 = !{!29, !29, i64 0}
!120 = !{!84, !34, i64 8}
!121 = distinct !{!121, !89}
!122 = !{!105, !33, i64 32}
!123 = !{!47, !27, i64 7696}
!124 = !{!14, !10, i64 628}
end_hunk_16
