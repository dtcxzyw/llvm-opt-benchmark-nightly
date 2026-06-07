inline.NumInlined: 34
inline.NumDeleted: 4
begin_hunk_0_@dictGetVal

declare ptr @dictGetKey(ptr noundef) local_unnamed_addr #4

declare ptr @dictCreate(ptr noundef) local_unnamed_addr #4

declare void @kvstoreDictSetVal(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @incrRefCount(ptr noundef) local_unnamed_addr #4

declare i32 @dictAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare void @dictSetKeyAtLink(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @pubsubUnsubscribeChannel(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly byval(%struct.pubsubtype) align 8 captures(none) %3) local_unnamed_addr #2 {
bb.a:
  tail call void @incrRefCount(ptr noundef %1) #9
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = tail call ptr %i.b(ptr noundef %0) #9
  %i.d = tail call i32 @dictDelete(ptr noundef %i.c, ptr noundef %1) #9
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !81
  %i.g = icmp ne i32 %i.f, 0
  %i.h = load i32, ptr %3, align 8
  %i.i = icmp ne i32 %i.h, 0
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !82
  %i.l = tail call i32 @getKeySlot(ptr noundef %i.k) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.l, %bb.c ], [ 0, %bb.b ]     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !85
  %i.p = tail call ptr @kvstoreDictFind(ptr noundef %i.o, i32 noundef %.0, ptr noundef %1) #9 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.e, label %bb.f, !prof !87

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssertWithInfo(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 299) #9
  tail call void @abort() #10
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = tail call ptr @dictGetVal(ptr noundef nonnull %i.p) #9 ; 3 uses
  %i.r = tail call i32 @dictDelete(ptr noundef %i.q, ptr noundef %0) #9
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.g, !prof !89

bb.g:                                             ; preds = %bb.f
  tail call void @_serverAssertWithInfo(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 301) #9
  tail call void @abort() #10
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !40
  %i.x = sub i64 0, %i.w
  %i.y = icmp eq i64 %i.u, %i.x
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !85
  %i.aa = tail call i32 @kvstoreDictDelete(ptr noundef %i.z, i32 noundef %.0, ptr noundef %1) #9 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.a
  %.022 = phi i32 [ 1, %bb.i ], [ 1, %bb.h ], [ 0, %bb.a ]
  %.not24 = icmp eq i32 %2, 0
  br i1 %.not24, label %addReplyPubsubUnsubscribed.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.425.0.copyload = load ptr, ptr %.sroa.425.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.ad = or i64 %i.ac, 70368744177664
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !43
  %i.ag = icmp eq i32 %i.af, 2
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 80920), align 8, !tbaa !44
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ah) #9
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @addReplyPushLen(ptr noundef nonnull %0, i64 noundef 3) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ai = load ptr, ptr %.sroa.425.0.copyload, align 8, !tbaa !44
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ai) #9
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @addReplyBulk(ptr noundef nonnull %0, ptr noundef nonnull %1) #9
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  tail call void @addReplyNull(ptr noundef nonnull %0) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aj = tail call i32 %.sroa.3.0.copyload(ptr noundef nonnull %0) #9, !inline_history !90
  %i.ak = sext i32 %i.aj to i64
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.ak) #9
  %i.al = and i64 %i.ac, 70368744177664
  %.not13.i = icmp eq i64 %i.al, 0
  br i1 %.not13.i, label %bb.r, label %addReplyPubsubUnsubscribed.exit

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr %i.ab, align 8, !tbaa !42
  %i.an = and i64 %i.am, -70368744177665
  store i64 %i.an, ptr %i.ab, align 8, !tbaa !42
  br label %addReplyPubsubUnsubscribed.exit

addReplyPubsubUnsubscribed.exit:                  ; preds = %bb.r, %bb.q, %bb.j
  tail call void @decrRefCount(ptr noundef %1) #9
  ret i32 %.022
}

declare i32 @dictDelete(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @kvstoreDictFind(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_serverAssertWithInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @kvstoreDictDelete(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @decrRefCount(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @pubsubShardUnsubscribeAllChannelsInSlot(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct._kvstoreDictIterator, align 8 ; 6 uses
  %2 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8144), align 8, !tbaa !78
  %i.b = tail call i64 @kvstoreDictSize(ptr noundef %i.a, i32 noundef %0) #9
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8144), align 8, !tbaa !78
  call void @kvstoreInitDictSafeIterator(ptr noundef nonnull %1, ptr noundef %i.c, i32 noundef %0) #9
  %i.d = call ptr @kvstoreDictIteratorNext(ptr noundef nonnull %1) #9 ; 2 uses
  %.not1723 = icmp eq ptr %i.d, null
  br i1 %.not1723, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.b, %._crit_edge
  %i.e = phi ptr [ %i.be, %._crit_edge ], [ %i.d, %bb.b ] ; 2 uses
  %i.f = call ptr @dictGetKey(ptr noundef nonnull %i.e) #9 ; 5 uses
  %i.g = call ptr @dictGetVal(ptr noundef nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @dictInitIterator(ptr noundef nonnull %2, ptr noundef %i.g) #9
  %i.h = call ptr @dictNext(ptr noundef nonnull %2) #9 ; 2 uses
  %.not1822 = icmp eq ptr %i.h, null
  br i1 %.not1822, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %.not.i = icmp eq ptr %i.f, null
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %unmarkClientAsPubSub.exit
  %i.i = phi ptr [ %i.h, %.lr.ph ], [ %i.bb, %unmarkClientAsPubSub.exit ]
  %i.j = call ptr @dictGetKey(ptr noundef nonnull %i.i) #9 ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 696 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.m = call i32 @dictDelete(ptr noundef %i.l, ptr noundef %i.f) #9
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.d, !prof !89

bb.d:                                             ; preds = %bb.c
  call void @_serverAssertWithInfo(ptr noundef nonnull %i.j, ptr noundef %i.f, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 336) #9
  call void @abort() #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %pubSubShardType.sroa.3.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pubSubShardType, i64 16), align 8
  %pubSubShardType.sroa.420.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pubSubShardType, i64 40), align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 6 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %i.q = or i64 %i.p, 70368744177664
  store i64 %i.q, ptr %i.o, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !43
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 80920), align 8, !tbaa !44
  call void @addReply(ptr noundef nonnull %i.j, ptr noundef %i.u) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @addReplyPushLen(ptr noundef nonnull %i.j, i64 noundef 3) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = load ptr, ptr %pubSubShardType.sroa.420.0.copyload, align 8, !tbaa !44
  call void @addReply(ptr noundef nonnull %i.j, ptr noundef %i.v) #9
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @addReplyBulk(ptr noundef nonnull %i.j, ptr noundef nonnull %i.f) #9
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @addReplyNull(ptr noundef nonnull %i.j) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = call i32 %pubSubShardType.sroa.3.0.copyload(ptr noundef nonnull %i.j) #9, !inline_history !90
  %i.x = sext i32 %i.w to i64
  call void @addReplyLongLong(ptr noundef nonnull %i.j, i64 noundef %i.x) #9
  %i.y = and i64 %i.p, 70368744177664
  %.not13.i = icmp eq i64 %i.y, 0
  br i1 %.not13.i, label %bb.l, label %addReplyPubsubUnsubscribed.exit

bb.l:                                             ; preds = %bb.k
  %i.z = load i64, ptr %i.o, align 8, !tbaa !42
  %i.aa = and i64 %i.z, -70368744177665
  store i64 %i.aa, ptr %i.o, align 8, !tbaa !42
  br label %addReplyPubsubUnsubscribed.exit

addReplyPubsubUnsubscribed.exit:                  ; preds = %bb.k, %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 680
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 688
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load <2 x i64>, ptr %i.ad, align 8, !tbaa !40
  %i.ai = shufflevector <2 x i64> %i.ah, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.aj = load <2 x i64>, ptr %i.ag, align 8, !tbaa !40
  %i.ak = shufflevector <2 x i64> %i.aj, <2 x i64> %i.ai, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.al = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ak)
  %i.am = trunc i64 %i.al to i32
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !40
  %i.as = add i64 %i.ar, %i.ap
  %i.at = trunc i64 %i.as to i32
  %i.au = sub i32 0, %i.am
  %i.av = icmp eq i32 %i.at, %i.au
  br i1 %i.av, label %bb.m, label %unmarkClientAsPubSub.exit

bb.m:                                             ; preds = %addReplyPubsubUnsubscribed.exit
  %i.aw = load i64, ptr %i.o, align 8, !tbaa !42  ; 2 uses
  %i.ax = and i64 %i.aw, 262144
  %.not.i19 = icmp eq i64 %i.ax, 0
  br i1 %.not.i19, label %unmarkClientAsPubSub.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = and i64 %i.aw, -262145
  store i64 %i.ay, ptr %i.o, align 8, !tbaa !42
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8152), align 8, !tbaa !79
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8152), align 8, !tbaa !79
  br label %unmarkClientAsPubSub.exit

unmarkClientAsPubSub.exit:                        ; preds = %bb.n, %bb.m, %addReplyPubsubUnsubscribed.exit
  %i.bb = call ptr @dictNext(ptr noundef nonnull %2) #9 ; 2 uses
  %.not18 = icmp eq ptr %i.bb, null
  br i1 %.not18, label %._crit_edge, label %bb.c, !llvm.loop !91

._crit_edge:                                      ; preds = %unmarkClientAsPubSub.exit, %.lr.ph25
  call void @dictResetIterator(ptr noundef nonnull %2) #9
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8144), align 8, !tbaa !78
  %i.bd = call i32 @kvstoreDictDelete(ptr noundef %i.bc, i32 noundef %0, ptr noundef %i.f) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.be = call ptr @kvstoreDictIteratorNext(ptr noundef nonnull %1) #9 ; 2 uses
  %.not17 = icmp eq ptr %i.be, null
  br i1 %.not17, label %._crit_edge26, label %.lr.ph25, !llvm.loop !93

._crit_edge26:                                    ; preds = %._crit_edge, %bb.b
  call void @kvstoreResetDictIterator(ptr noundef nonnull %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %._crit_edge26
  ret void
}

declare i64 @kvstoreDictSize(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @kvstoreInitDictSafeIterator(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @kvstoreDictIteratorNext(ptr noundef) local_unnamed_addr #4

declare void @dictInitIterator(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @dictNext(ptr noundef) local_unnamed_addr #4

declare void @dictResetIterator(ptr noundef) local_unnamed_addr #4

declare void @kvstoreResetDictIterator(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @pubsubSubscribePattern(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = tail call i32 @dictAdd(ptr noundef %i.b, ptr noundef %1, ptr noundef null) #9
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @incrRefCount(ptr noundef %1) #9
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8128), align 8, !tbaa !77
  %i.f = tail call ptr @dictFind(ptr noundef %i.e, ptr noundef %1) #9 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @dictCreate(ptr noundef nonnull @clientDictType) #9 ; 2 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8128), align 8, !tbaa !77
  %i.j = tail call i32 @dictAdd(ptr noundef %i.i, ptr noundef %1, ptr noundef %i.h) #9 ; 0 uses
  tail call void @incrRefCount(ptr noundef %1) #9
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = tail call ptr @dictGetVal(ptr noundef nonnull %i.f) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.013 = phi ptr [ %i.h, %bb.c ], [ %i.k, %bb.d ]
  %i.l = tail call i32 @dictAdd(ptr noundef %.013, ptr noundef nonnull %0, ptr noundef null) #9
  %.not = icmp eq i32 %i.l, 1
  br i1 %.not, label %bb.f, label %bb.g, !prof !87

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 368) #9
  tail call void @abort() #10
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.a
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.a ]
  tail call void @addReplyPubsubPatSubscribed(ptr noundef nonnull %0, ptr noundef %1)
  ret i32 %.0
}

declare ptr @dictFind(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @pubsubUnsubscribePattern(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  tail call void @incrRefCount(ptr noundef %1) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = tail call i32 @dictDelete(ptr noundef %i.b, ptr noundef %1) #9
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8128), align 8, !tbaa !77
  %i.f = tail call ptr @dictFind(ptr noundef %i.e, ptr noundef %1) #9 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.d, !prof !87

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 387) #9
  tail call void @abort() #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = tail call ptr @dictGetVal(ptr noundef nonnull %i.f) #9 ; 3 uses
  %i.h = tail call i32 @dictDelete(ptr noundef %i.g, ptr noundef nonnull %0) #9
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.e, !prof !89

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 389) #9
  tail call void @abort() #10
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
end_hunk_0
