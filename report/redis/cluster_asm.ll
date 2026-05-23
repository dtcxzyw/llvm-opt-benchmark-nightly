inline.NumInlined: 160
inline.NumDeleted: 30
begin_hunk_0_@asmLookupTaskBySlotRangeArray:bb.a
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %1) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = call ptr @listNext(ptr noundef nonnull %1) #20 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87
  %i.h = call i32 @slotRangeArrayIsEqual(ptr noundef %i.g, ptr noundef %0) #20
  %.not7 = icmp eq i32 %i.h, 0
  br i1 %.not7, label %bb.b, label %bb.d, !llvm.loop !104

bb.d:                                             ; preds = %bb.b, %bb.c
  %.2 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret ptr %.2
}

declare i32 @slotRangeArrayIsEqual(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @asmTaskGetSlotRanges(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @asmManager, align 8, !tbaa !13
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %1) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.c = call ptr @listNext(ptr noundef nonnull %1) #20 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %asmLookupTaskById.exit.thread, label %bb.d

asmLookupTaskById.exit.thread:                    ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91
  %i.g = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull readonly dereferenceable(1) %0) #21
  %.not8.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not8.not.i.i, label %bb.e, label %bb.c, !llvm.loop !103

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87
  br label %bb.f

bb.f:                                             ; preds = %asmLookupTaskById.exit.thread, %bb.a, %bb.e
  %.0 = phi ptr [ %i.i, %bb.e ], [ null, %asmLookupTaskById.exit.thread ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @asmMigrateInProgress() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.a = load ptr, ptr @asmManager, align 8, !tbaa !13 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %asmTaskInProgress.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %asmTaskInProgress.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @listRewind(ptr noundef nonnull %i.b, ptr noundef nonnull %0) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.f = call ptr @listNext(ptr noundef nonnull %0) #20 ; 2 uses
  %.not7.i = icmp eq ptr %i.f, null
  br i1 %.not7.i, label %asmTaskInProgress.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !71
  %.not8.i = icmp eq i32 %i.j, 4
  br i1 %.not8.i, label %asmTaskInProgress.exit, label %bb.d, !llvm.loop !105

asmTaskInProgress.exit:                           ; preds = %bb.d, %bb.e, %bb.a, %bb.b
  %.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @asmImportInProgress() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.a = load ptr, ptr @asmManager, align 8, !tbaa !13 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %asmTaskInProgress.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %asmTaskInProgress.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @listRewind(ptr noundef nonnull %i.b, ptr noundef nonnull %0) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.f = call ptr @listNext(ptr noundef nonnull %0) #20 ; 2 uses
  %.not7.i = icmp eq ptr %i.f, null
  br i1 %.not7.i, label %asmTaskInProgress.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !71
  %.not8.i = icmp eq i32 %i.j, 2
  br i1 %.not8.i, label %asmTaskInProgress.exit, label %bb.d, !llvm.loop !105

asmTaskInProgress.exit:                           ; preds = %bb.d, %bb.e, %bb.a, %bb.b
  %.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define dso_local void @asmFeedMigrationClient(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !93
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %asmCanFeedMigrationClient.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @asmManager, align 8, !tbaa !13
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !78
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %asmCanFeedMigrationClient.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69   ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !71
  %i.m = icmp eq i32 %i.l, 4
  br i1 %i.m, label %bb.d, label %asmCanFeedMigrationClient.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 160 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !106
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %asmCanFeedMigrationClient.exit, label %asmCanFeedMigrationClient.exit.thread

asmCanFeedMigrationClient.exit:                   ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !76
  %i.r = add i32 %i.q, -21
  %narrow = icmp ult i32 %i.r, -3
  br i1 %narrow, label %asmCanFeedMigrationClient.exit.thread, label %.preheader

.preheader:                                       ; preds = %asmCanFeedMigrationClient.exit
  %i.s = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %i.t = tail call ptr @lookupCommand(ptr noundef %0, i32 noundef %1) #20 ; 2 uses
  %.not47 = icmp eq ptr %i.t, null
  br i1 %.not47, label %bb.h, label %bb.i, !prof !107

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !94   ; 3 uses
  %i.w = load i64, ptr %i.v, align 8
  %2 = trunc i64 %i.w to i8
  %trunc = and i8 %2, -16
  switch i8 %trunc, label %bb.e [
    i8 0, label %bb.g
    i8 -128, label %bb.g
    i8 16, label %bb.f
  ], !prof !108

bb.e:                                             ; preds = %.lr.ph
  tail call void @_serverAssert(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 739) #20
  tail call void @abort() #22
  unreachable

bb.f:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !109
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = tail call ptr @createStringObjectFromLongLongWithSds(i64 noundef %i.z) #20
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !94
  tail call void @decrRefCount(ptr noundef nonnull %i.v) #20
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.lr.ph, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !111

bb.h:                                             ; preds = %._crit_edge
  tail call void @_serverAssert(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef 748) #20
  tail call void @abort() #22
  unreachable

bb.i:                                             ; preds = %._crit_edge
  %i.ab = tail call i32 @getSlotFromCommand(ptr noundef nonnull %i.t, ptr noundef %0, i32 noundef %1) #20 ; 2 uses
  switch i32 %i.ab, label %bb.k [
    i32 -1, label %asmCanFeedMigrationClient.exit.thread
    i32 -2, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.n, align 8, !tbaa !106
  br label %asmCanFeedMigrationClient.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ac = trunc i32 %i.ab to i16                  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !87 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !9  ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %asmCanFeedMigrationClient.exit.thread

.lr.ph.i:                                         ; preds = %bb.k
  %wide.trip.count.i = zext nneg i32 %i.ag to i64
  br label %bb.l

bb.l:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !112
  %.not.i50 = icmp ugt i16 %i.aj, %i.ac
  br i1 %.not.i50, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !114
  %.not14.i = icmp ult i16 %i.al, %i.ac
  br i1 %.not14.i, label %.critedge.i, label %slotRangeArrayOverlaps.exit

.critedge.i:                                      ; preds = %bb.m, %bb.l
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %asmCanFeedMigrationClient.exit.thread, label %bb.l, !llvm.loop !115

slotRangeArrayOverlaps.exit:                      ; preds = %bb.m
  %i.am = load i32, ptr %i.p, align 8, !tbaa !76  ; 3 uses
  %i.an = load ptr, ptr @asmManager, align 8, !tbaa !13 ; 3 uses
  %.not.i51 = icmp eq ptr %i.an, null
  br i1 %.not.i51, label %asmDebugIsFailPointActive.exit.thread, label %bb.n

bb.n:                                             ; preds = %slotRangeArrayOverlaps.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !59
  %i.aq = icmp eq i32 %i.ap, 3
  br i1 %i.aq, label %bb.o, label %asmDebugIsFailPointActive.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 60
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !60
  %i.at = icmp eq i32 %i.as, %i.am
  br i1 %i.at, label %bb.p, label %asmDebugIsFailPointActive.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !29
  %i.av = icmp sgt i32 %i.au, 2
  br i1 %i.av, label %asmDebugIsFailPointActive.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = icmp ult i32 %i.am, 26
  br i1 %i.aw, label %switch.lookup, label %asmTaskStateToString.exit.i

switch.lookup:                                    ; preds = %bb.q
  %i.ax = zext nneg i32 %i.am to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.replyTaskStatus, i64 %i.ax
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %asmTaskStateToString.exit.i

asmTaskStateToString.exit.i:                      ; preds = %bb.q, %switch.lookup
  %.0.i8.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.26, %bb.q ]
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.29, ptr noundef nonnull %.0.i8.i) #20
  br label %asmDebugIsFailPointActive.exit

asmDebugIsFailPointActive.exit:                   ; preds = %asmTaskStateToString.exit.i, %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !102
  tail call void @freeClientAsync(ptr noundef %i.az) #20
  br label %asmDebugIsFailPointActive.exit.thread

asmDebugIsFailPointActive.exit.thread:            ; preds = %bb.n, %bb.o, %slotRangeArrayOverlaps.exit, %asmDebugIsFailPointActive.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !102 ; 4 uses
  %i.bc = tail call i64 @getNormalClientPendingReplyBytes(ptr noundef %i.bb) #20
  %i.bd = sext i32 %1 to i64
  tail call void @addReplyArrayLen(ptr noundef %i.bb, i64 noundef %i.bd) #20
  br i1 %i.s, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %asmDebugIsFailPointActive.exit.thread
  %wide.trip.count64 = zext nneg i32 %1 to i64
  br label %.lr.ph58

._crit_edge59:                                    ; preds = %.lr.ph58, %asmDebugIsFailPointActive.exit.thread
  %i.be = tail call i64 @getNormalClientPendingReplyBytes(ptr noundef %i.bb) #20
  %i.bf = sub i64 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 152 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !116
  %i.bi = add i64 %i.bf, %i.bh
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !116
  br label %asmCanFeedMigrationClient.exit.thread

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
  %indvars.iv61 = phi i64 [ 0, %.lr.ph58.preheader ], [ %indvars.iv.next62, %.lr.ph58 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv61
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !94
  tail call void @addReplyBulk(ptr noundef %i.bb, ptr noundef %i.bk) #20
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %._crit_edge59, label %.lr.ph58, !llvm.loop !117

asmCanFeedMigrationClient.exit.thread:            ; preds = %.critedge.i, %bb.k, %bb.c, %bb.d, %._crit_edge59, %bb.j, %bb.i, %asmCanFeedMigrationClient.exit, %bb.a, %bb.b
  ret void
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

declare ptr @createStringObjectFromLongLongWithSds(i64 noundef) local_unnamed_addr #2

declare ptr @lookupCommand(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @getSlotFromCommand(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @freeClientAsync(ptr noundef) local_unnamed_addr #2

declare i64 @getNormalClientPendingReplyBytes(ptr noundef) local_unnamed_addr #2

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @addReplyBulk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @asmCreateImportTask(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  store ptr null, ptr %2, align 8, !tbaa !92
  %i.a = tail call fastcc ptr @validateImportSlotRanges(ptr noundef %1, ptr noundef nonnull %2, ptr noundef null) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @getMyClusterNode() #20
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @asmManager, align 8, !tbaa !13
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !78
  %.not31 = icmp eq i64 %i.g, 0
  br i1 %.not31, label %.thread37, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !76
  %i.m = icmp eq i32 %i.l, 4
  br i1 %i.m, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @asmTaskSetFailed(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.53)
  store i32 3, ptr %i.k, align 8, !tbaa !76
  tail call void @asmTaskFinalize(ptr noundef nonnull %i.j)
  %.pre = load ptr, ptr @asmManager, align 8, !tbaa !13
end_hunk_0
begin_hunk_1_@asmActiveTrimCycle:bb.a
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
  br label %bb.u

bb.u:                                             ; preds = %bb.g, %bb.f, %bb.e, %._crit_edge54.thread, %bb.t, %.thread, %bb.a, %bb.b
  ret void
}

declare i64 @ustime() local_unnamed_addr #2

declare i32 @slotRangeArrayGetCurrentSlot(ptr noundef) local_unnamed_addr #2

declare void @kvstoreInitDictSafeIterator(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @kvobjGetKey(ptr noundef) local_unnamed_addr #2

declare void @enterExecutionUnit(i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @exitExecutionUnit() local_unnamed_addr #2

declare void @postExecutionUnitOperations() local_unnamed_addr #2

declare i32 @slotRangeArrayNext(ptr noundef) local_unnamed_addr #2

declare i32 @jemalloc_purge() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @asmIsKeyInTrimJob(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !93
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %asmIsTrimInProgress.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @asmManager, align 8, !tbaa !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !78
  %.not1.i = icmp eq i64 %i.f, 0
  br i1 %.not1.i, label %asmIsTrimInProgress.exit, label %asmIsTrimInProgress.exit.thread4

asmIsTrimInProgress.exit:                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !78
  %.not7 = icmp eq i64 %i.j, 0
  br i1 %.not7, label %asmIsTrimInProgress.exit.thread, label %asmIsTrimInProgress.exit.thread4

asmIsTrimInProgress.exit.thread4:                 ; preds = %bb.b, %asmIsTrimInProgress.exit
  %i.k = tail call i32 @getKeySlot(ptr noundef %0) #20
  %i.l = tail call i32 @isSlotInTrimJob(i32 noundef %i.k)
  br label %asmIsTrimInProgress.exit.thread

asmIsTrimInProgress.exit.thread:                  ; preds = %bb.a, %asmIsTrimInProgress.exit.thread4, %asmIsTrimInProgress.exit
  %.0 = phi i32 [ 0, %asmIsTrimInProgress.exit ], [ %i.l, %asmIsTrimInProgress.exit.thread4 ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @getKeySlot(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @asmModulePropagateBeforeSlotSnapshot(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !93
  %i.b = icmp eq i32 %i.a, 0
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 56), align 8
  %i.d = icmp ne i32 %i.c, 1
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @asmManager, align 8, !tbaa !13
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !78
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call ptr @__errno_location() #23
  store i32 9, ptr %i.j, align 4, !tbaa !9
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !71
  %.not = icmp eq i32 %i.o, 4
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !76
  %.not45 = icmp eq i32 %i.q, 18
  br i1 %.not45, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 296 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !85
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.u = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.v = tail call ptr @__errno_location() #23
  store i32 9, ptr %i.v, align 4, !tbaa !9
  br label %bb.p

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %i.w = tail call i32 @getSlotFromCommand(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20 ; 3 uses
  %i.x = icmp eq i32 %i.w, -2
  br i1 %i.x, label %bb.k, label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !94   ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8
  %3 = trunc i64 %i.aa to i8
  %trunc = and i8 %3, -16
  switch i8 %trunc, label %bb.h [
    i8 0, label %bb.j
    i8 -128, label %bb.j
    i8 16, label %bb.i
  ], !prof !108

bb.h:                                             ; preds = %.lr.ph
  tail call void @_serverAssert(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 3573) #20
  tail call void @abort() #22
  unreachable

bb.i:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !109
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = tail call ptr @createStringObjectFromLongLongWithSds(i64 noundef %i.ad) #20
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !94
  tail call void @decrRefCount(ptr noundef nonnull %i.z) #20
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %.lr.ph, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !299

bb.k:                                             ; preds = %._crit_edge
  %i.af = tail call ptr @__errno_location() #23
  store i32 95, ptr %i.af, align 4, !tbaa !9
  br label %bb.p

bb.l:                                             ; preds = %._crit_edge
  %i.ag = trunc i32 %i.w to i16                   ; 2 uses
  %.not46 = icmp eq i32 %i.w, -1
  br i1 %.not46, label %slotRangeArrayOverlaps.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !87 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !9  ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.m
  %wide.trip.count.i = zext nneg i32 %i.ak to i64
  br label %bb.n

bb.n:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !112
  %.not.i = icmp ugt i16 %i.an, %i.ag
  br i1 %.not.i, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !114
  %.not14.i = icmp ult i16 %i.ap, %i.ag
  br i1 %.not14.i, label %.critedge.i, label %slotRangeArrayOverlaps.exit

.critedge.i:                                      ; preds = %bb.o, %bb.n
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.n, !llvm.loop !115

.loopexit:                                        ; preds = %.critedge.i, %bb.m
  %i.aq = tail call ptr @__errno_location() #23
  store i32 34, ptr %i.aq, align 4, !tbaa !9
  br label %bb.p

slotRangeArrayOverlaps.exit:                      ; preds = %bb.o, %bb.l
  %i.ar = sext i32 %2 to i64
  %i.as = shl nsw i64 %i.ar, 3
  %i.at = tail call noalias ptr @zmalloc(i64 noundef %i.as) #19 ; 2 uses
  br i1 %i.u, label %.lr.ph51.preheader, label %._crit_edge52

.lr.ph51.preheader:                               ; preds = %slotRangeArrayOverlaps.exit
  %wide.trip.count57 = zext nneg i32 %2 to i64
  br label %.lr.ph51

._crit_edge52:                                    ; preds = %.lr.ph51, %slotRangeArrayOverlaps.exit
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !85
  %i.av = tail call i32 @redisOpArrayAppend(ptr noundef %i.au, i32 noundef 0, ptr noundef %i.at, i32 noundef %2, i32 noundef 0) #20 ; 0 uses
  br label %bb.p

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %.lr.ph51
  %indvars.iv54 = phi i64 [ 0, %.lr.ph51.preheader ], [ %indvars.iv.next55, %.lr.ph51 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv54
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !94 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv54
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !94
  tail call void @incrRefCount(ptr noundef %i.ax) #20
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge52, label %.lr.ph51, !llvm.loop !300

bb.p:                                             ; preds = %.loopexit, %._crit_edge52, %bb.g, %bb.k, %bb.c
  %.3 = phi i32 [ -1, %bb.c ], [ -1, %bb.g ], [ -1, %bb.k ], [ 0, %._crit_edge52 ], [ -1, %.loopexit ]
  ret i32 %.3
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #1

declare void @incrRefCount(ptr noundef) local_unnamed_addr #2

declare i32 @redisOpArrayAppend(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @getImportingSlotSource(i32 noundef) local_unnamed_addr #2

declare ptr @getMigratingSlotDest(i32 noundef) local_unnamed_addr #2

declare ptr @getNodeBySlot(i32 noundef) local_unnamed_addr #2

declare void @addReplyBulkCString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @replyTaskStatus(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @addReplyMapLen(ptr noundef %0, i64 noundef 12) #20
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.222) #20
  %i.a = load ptr, ptr %1, align 8, !tbaa !91
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.a) #20
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.224) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.d = tail call ptr @slotRangeArrayToString(ptr noundef %i.c) #20
  tail call void @addReplyBulkSds(ptr noundef %0, ptr noundef %i.d) #20
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.225) #20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.e, i64 noundef 40) #20
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.226) #20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.f, i64 noundef 40) #20
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.227) #20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !71
  %i.i = icmp eq i32 %i.h, 2
  %i.j = select i1 %i.i, ptr @.str.42, ptr @.str.43
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull %i.j) #20
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.228) #20
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !76   ; 2 uses
  %i.m = icmp ult i32 %i.l, 26
  br i1 %i.m, label %switch.lookup, label %asmTaskStateToString.exit

switch.lookup:                                    ; preds = %bb.a
  %i.n = zext nneg i32 %i.l to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.replyTaskStatus, i64 %i.n
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %asmTaskStateToString.exit

asmTaskStateToString.exit:                        ; preds = %bb.a, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.26, %bb.a ]
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull %.0.i) #20
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.229) #20
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !86   ; 6 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %.val.i = load i8, ptr %i.q, align 1, !tbaa !61 ; 2 uses
  %i.r = and i8 %.val.i, 7
  switch i8 %i.r, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %asmTaskStateToString.exit
  %i.s = lshr i8 %.val.i, 3
  %i.t = zext nneg i8 %i.s to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %asmTaskStateToString.exit
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 -3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !61
  %i.w = zext i8 %i.v to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %asmTaskStateToString.exit
  %i.x = getelementptr inbounds i8, ptr %i.p, i64 -5
  %i.y = load i16, ptr %i.x, align 1, !tbaa !62
  %i.z = zext i16 %i.y to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %asmTaskStateToString.exit
  %i.aa = getelementptr inbounds i8, ptr %i.p, i64 -9
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !9
  %i.ac = zext i32 %i.ab to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %asmTaskStateToString.exit
  %i.ad = getelementptr inbounds i8, ptr %i.p, i64 -17
  %i.ae = load i64, ptr %i.ad, align 1, !tbaa !64
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %asmTaskStateToString.exit, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i41 = phi i64 [ %i.ae, %bb.f ], [ %i.t, %bb.b ], [ %i.w, %bb.c ], [ %i.z, %bb.d ], [ %i.ac, %bb.e ], [ 0, %asmTaskStateToString.exit ]
  tail call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.p, i64 noundef %.0.i41) #20
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.230) #20
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !196
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.ag) #20
end_hunk_1
