inline.NumInlined: 81
inline.NumDeleted: 6
begin_hunk_0_@smembersCommand:bb.a

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !97
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 160), i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !84
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.p) #11
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.j, align 8
  %i.r = trunc i64 %i.q to i32
  %i.s = lshr i32 %i.r, 4
  %i.t = and i32 %i.s, 15
  switch i32 %i.t, label %bb.h [
    i32 2, label %bb.e
    i32 6, label %bb.f
    i32 11, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !58
  %i.aa = add i64 %i.z, %i.x
  br label %setTypeSize.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = tail call i32 @intsetLen(ptr noundef %i.ac) #11
  %i.ae = zext i32 %i.ad to i64
  br label %setTypeSize.exit

bb.g:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47
  %i.ah = tail call i64 @lpLength(ptr noundef %i.ag) #11
  br label %setTypeSize.exit

bb.h:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit:                                 ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.aa, %bb.e ], [ %i.ae, %bb.f ], [ %i.ah, %bb.g ] ; 3 uses
  tail call void @addReplySetLen(ptr noundef nonnull %0, i64 noundef %.0.i) #11
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not24 = icmp eq i32 %i.ai, 0
  br i1 %.not24, label %bb.j, label %bb.i

bb.i:                                             ; preds = %setTypeSize.exit
  %i.aj = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.j) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %setTypeSize.exit
  %.020 = phi i64 [ %i.aj, %bb.i ], [ 0, %setTypeSize.exit ]
  store ptr %i.j, ptr %1, align 8, !tbaa !50
  %i.ak = load i64, ptr %i.j, align 8
  %i.al = trunc i64 %i.ak to i32
  %i.am = lshr i32 %i.al, 4
  %i.an = and i32 %i.am, 15                       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !55
  switch i32 %i.an, label %bb.n [
    i32 2, label %bb.k
    i32 6, label %bb.l
    i32 11, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !47
  call void @dictInitIterator(ptr noundef nonnull %i.ap, ptr noundef %i.ar) #11
  br label %setTypeInitIterator.exit

bb.l:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !56
  br label %setTypeInitIterator.exit

bb.m:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.at, align 8, !tbaa !57
  br label %setTypeInitIterator.exit

bb.n:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 327, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeInitIterator.exit:                         ; preds = %bb.k, %bb.l, %bb.m
  %i.au = call i32 @setTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not2528 = icmp eq i32 %i.au, -1
  br i1 %.not2528, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %setTypeInitIterator.exit, %bb.q
  %.029 = phi i64 [ %i.ay, %bb.q ], [ %.0.i, %setTypeInitIterator.exit ]
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %.not27 = icmp eq ptr %i.av, null
  br i1 %.not27, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !58
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.av, i64 noundef %i.aw) #11
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !58
  call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.ax) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ay = add i64 %.029, -1                       ; 2 uses
  %i.az = call i32 @setTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not25 = icmp eq i32 %i.az, -1
  br i1 %.not25, label %._crit_edge, label %.lr.ph, !llvm.loop !145

._crit_edge:                                      ; preds = %bb.q, %setTypeInitIterator.exit
  %.0.lcssa = phi i64 [ %.0.i, %setTypeInitIterator.exit ], [ %i.ay, %bb.q ]
  %i.ba = load i32, ptr %i.ao, align 8, !tbaa !55
  %i.bb = icmp eq i32 %i.ba, 2
  br i1 %i.bb, label %bb.r, label %setTypeResetIterator.exit

bb.r:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @dictResetIterator(ptr noundef nonnull %i.bc) #11
  br label %setTypeResetIterator.exit

setTypeResetIterator.exit:                        ; preds = %._crit_edge, %bb.r
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not26 = icmp eq i32 %i.bd, 0
  br i1 %.not26, label %bb.t, label %bb.s

bb.s:                                             ; preds = %setTypeResetIterator.exit
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !84
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.bk = call i32 @getKeySlot(ptr noundef %i.bj) #11
  %i.bl = call i64 @kvobjAllocSize(ptr noundef nonnull %i.j) #11
  call void @updateSlotAllocSize(ptr noundef %i.be, i32 noundef %i.bk, ptr noundef nonnull %i.j, i64 noundef %.020, i64 noundef %i.bl) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %setTypeResetIterator.exit
  %i.bm = icmp eq i64 %.0.lcssa, 0
  br i1 %i.bm, label %bb.v, label %bb.u, !prof !49

bb.u:                                             ; preds = %bb.t
  call void @_serverAssert(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1589) #11
  call void @abort() #12
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sinterCardCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = call i32 @getRangeLongFromObjectOrReply(ptr noundef %0, ptr noundef %i.f, i64 noundef 1, i64 noundef 9223372036854775807, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.18) #11
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !85
  %i.k = add nsw i32 %i.j, -2
  %i.l = sext i32 %i.k to i64
  %i.m = icmp sgt i64 %i.h, %i.l
  br i1 %i.m, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #11
  br label %.loopexit

.preheader:                                       ; preds = %bb.b, %bb.e
  %.0.in = phi i64 [ %.0, %bb.e ], [ %i.h, %bb.b ]
  %.0 = add nsw i64 %.0.in, 2                     ; 4 uses
  %i.n = load i32, ptr %i.i, align 8, !tbaa !85   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %.0, %i.o
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !83   ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.preheader
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %.0 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.v = trunc i64 %.0 to i32
  %.neg = add i32 %i.v, 1
  %i.w = call i32 @strcasecmp(ptr noundef %i.u, ptr noundef nonnull @.str.20) #14
  %i.x = icmp eq i32 %i.w, 0
  %i.y = icmp ne i32 %i.n, %.neg
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %i.r, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !84
  %i.ab = call i32 @getPositiveLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.aa, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.21) #11
  %.not23 = icmp eq i32 %i.ab, 0
  br i1 %.not23, label %.preheader, label %.loopexit, !llvm.loop !146

.critedge:                                        ; preds = %bb.d
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !123
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ac) #11
  br label %.loopexit

bb.f:                                             ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !58
  %i.af = load i64, ptr %i.b, align 8, !tbaa !58
  call void @sinterGenericCommand(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, i64 noundef %i.ae, ptr noundef null, i32 noundef 1, i64 noundef %i.af)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.critedge, %bb.a, %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @sinterstoreCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !85
  %i.f = add nsw i32 %i.e, -2
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84
  tail call void @sinterGenericCommand(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef %i.g, ptr noundef %i.i, i32 noundef 0, i64 noundef 0)
  ret void
}

declare void @freeObjAsync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sunionCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !85
  %i.f = add nsw i32 %i.e, -1
  tail call void @sunionDiffGenericCommand(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %i.f, ptr noundef null, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sunionstoreCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !85
  %i.f = add nsw i32 %i.e, -2
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84
  tail call void @sunionDiffGenericCommand(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %i.f, ptr noundef %i.h, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sdiffCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !85
  %i.f = add nsw i32 %i.e, -1
  tail call void @sunionDiffGenericCommand(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %i.f, ptr noundef null, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sdiffstoreCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !85
  %i.f = add nsw i32 %i.e, -2
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84
  tail call void @sunionDiffGenericCommand(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %i.f, ptr noundef %i.h, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sscanCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.f = call i32 @parseScanCursorOrReply(ptr noundef %0, ptr noundef %i.e, ptr noundef nonnull %i.a) #11
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !84
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 480), align 8, !tbaa !147
  %i.l = call ptr @lookupKeyReadOrReply(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef %i.k) #11 ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef 2) #11
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not14 = icmp eq i32 %i.o, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = call i64 @kvobjAllocSize(ptr noundef nonnull %i.l) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.p, %bb.e ], [ 0, %bb.d ]
  %i.q = load i64, ptr %i.a, align 8, !tbaa !66
  call void @scanGenericCommand(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i64 noundef %i.q) #11
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not15 = icmp eq i32 %i.r, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !70
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !84
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47
  %i.z = call i32 @getKeySlot(ptr noundef %i.y) #11
  %i.aa = call i64 @kvobjAllocSize(ptr noundef nonnull %i.l) #11
  call void @updateSlotAllocSize(ptr noundef %i.t, i32 noundef %i.z, ptr noundef nonnull %i.l, i64 noundef %.0, i64 noundef %i.aa) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare i32 @parseScanCursorOrReply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @scanGenericCommand(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @intsetNew() local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
end_hunk_0
