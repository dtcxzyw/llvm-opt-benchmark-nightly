inline.NumInlined: 146
inline.NumDeleted: 13
begin_hunk_0_@expireIfNeeded:bb.a

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6660), align 4, !tbaa !98
  %.not.i = icmp eq i32 %i.ah, 0
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1528), align 8
  %i.aj = icmp sgt i32 %i.ai, 1
  %or.cond.i41 = select i1 %.not.i, i1 %i.aj, i1 false
  br i1 %or.cond.i41, label %bb.r, label %confAllowsExpireDel.exit

bb.r:                                             ; preds = %bb.q
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1504), align 8, !tbaa !99
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !84
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !100
  %i.ap = and i64 %i.ao, 268435456
  %i.aq = icmp eq i64 %i.ap, 0
  br label %confAllowsExpireDel.exit

confAllowsExpireDel.exit:                         ; preds = %bb.q, %bb.r
  %.0.i = phi i1 [ true, %bb.q ], [ %i.aq, %bb.r ]
  %i.ar = and i32 %3, 2
  %.not34 = icmp eq i32 %i.ar, 0
  %or.cond40 = and i1 %.not34, %.0.i
  br i1 %or.cond40, label %bb.t, label %keyIsExpired.exit.thread

bb.s:                                             ; preds = %bb.p
  %.old = and i32 %3, 2
  %.not34.old = icmp eq i32 %.old, 0
  br i1 %.not34.old, label %bb.t, label %keyIsExpired.exit.thread

bb.t:                                             ; preds = %confAllowsExpireDel.exit, %bb.s
  %i.as = tail call i32 @isPausedActionsWithUpdate(i32 noundef 4) #20
  %.not35 = icmp eq i32 %i.as, 0
  br i1 %.not35, label %bb.u, label %keyIsExpired.exit.thread

bb.u:                                             ; preds = %bb.t
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @deleteKeyAndPropagate(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 256, ptr noundef null)
  br label %keyIsExpired.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.at = tail call ptr @kvobjGetKey(ptr noundef %2) #20 ; 2 uses
  %i.au = tail call fastcc i64 @sdslen(ptr noundef %i.at)
  %i.av = tail call ptr @createStringObject(ptr noundef %i.at, i64 noundef %i.au) #20 ; 2 uses
  tail call fastcc void @deleteKeyAndPropagate(ptr noundef %0, ptr noundef %i.av, i32 noundef 256, ptr noundef null)
  tail call void @decrRefCount(ptr noundef %i.av) #20
  br label %keyIsExpired.exit.thread

keyIsExpired.exit.thread:                         ; preds = %bb.k, %dbFindExpires.exit.i.i, %getExpire.exit.i, %bb.i, %bb.e, %bb.v, %bb.w, %bb.t, %bb.s, %confAllowsExpireDel.exit, %bb.o, %bb.n, %bb.f, %keyIsExpired.exit
  %.0 = phi i32 [ 0, %bb.n ], [ 2, %bb.v ], [ %spec.select, %bb.e ], [ 0, %bb.f ], [ 1, %confAllowsExpireDel.exit ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.o ], [ 0, %keyIsExpired.exit ], [ 2, %bb.w ], [ 0, %bb.i ], [ 0, %getExpire.exit.i ], [ 0, %dbFindExpires.exit.i.i ], [ 0, %bb.k ]
  ret i32 %.0
}

declare void @touchCommand(ptr noundef) #2

declare i32 @hasActiveChildProcess() local_unnamed_addr #2

declare void @notifyKeyspaceEvent(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @lookupKeyReadWithFlags(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !101

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 345) #20
  tail call void @abort() #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @lookupKey(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null)
  ret ptr %i.b
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @lookupKeyRead(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lookupKey(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lookupKeyWriteWithFlags(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = or i32 %2, 8
  %i.b = tail call ptr @lookupKey(ptr noundef %0, ptr noundef %1, i32 noundef %i.a, ptr noundef null)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lookupKeyWrite(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lookupKey(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lookupKeyWriteWithLink(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lookupKey(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.c = tail call ptr @lookupKey(ptr noundef %i.b, ptr noundef %1, i32 noundef 0, ptr noundef null) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyOrErrorObject(ptr noundef nonnull %0, ptr noundef %2) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.c
}

declare void @addReplyOrErrorObject(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @lookupKeyWriteOrReply(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.c = tail call ptr @lookupKey(ptr noundef %i.b, ptr noundef %1, i32 noundef 8, ptr noundef null) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyOrErrorObject(ptr noundef nonnull %0, ptr noundef %2) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @dbAddInternal(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = tail call i32 @getKeySlot(ptr noundef %i.c) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !66
  %i.e = icmp eq ptr %3, null
  %spec.store.select = select i1 %i.e, ptr %i.a, ptr %3 ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !103
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 3 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !104
  %i.j = zext i16 %i.i to i32
  %i.k = tail call ptr @kvobjSet(ptr noundef %i.g, ptr noundef %i.f, i32 noundef %i.j) #20 ; 12 uses
  tail call void @initObjectLRUOrLFU(ptr noundef %i.k) #20
  %i.l = load ptr, ptr %0, align 8, !tbaa !49
  call void @kvstoreDictSetAtLink(ptr noundef %i.l, i32 noundef %i.d, ptr noundef %i.k, ptr noundef nonnull %spec.store.select, i32 noundef 1) #20
  %i.m = load i16, ptr %i.h, align 2, !tbaa !104  ; 3 uses
  %.not = icmp eq i16 %i.m, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = and i16 %i.m, 1
  %.not40 = icmp eq i16 %i.n, 0
  br i1 %.not40, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.r = load ptr, ptr %spec.store.select, align 8, !tbaa !66
  %i.s = call ptr @setExpireByLink(ptr noundef null, ptr noundef nonnull %0, ptr noundef %i.q, i64 noundef %i.p, ptr noundef %i.r)
  %i.t = icmp eq ptr %i.s, %i.k
  br i1 %i.t, label %._crit_edge, label %bb.d, !prof !101

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i16, ptr %i.h, align 2, !tbaa !104
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 428) #20
  call void @abort() #21
  unreachable

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %i.u = phi i16 [ %.pre, %._crit_edge ], [ %i.m, %bb.b ]
  %i.v = and i16 %i.u, 254
  %.not41 = icmp eq i16 %i.v, 0
  br i1 %.not41, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %5 = load i64, ptr %i.k, align 8
  %6 = lshr i64 %5, 32
  %7 = trunc nuw i64 %6 to i32
  %i.w = and i32 %7, 255
  %i.x = call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.w)
  %i.y = shl nuw nsw i32 %i.x, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.k, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ad = load i16, ptr %4, align 8, !tbaa !107
  %i.ae = zext i16 %i.ad to i64                   ; 2 uses
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.af
  %i.ah = shl nuw nsw i64 %i.ae, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull align 8 %i.ag, i64 %i.ah, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  %i.ai = load i64, ptr %i.k, align 8
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 15
  call void @signalKeyAsReady(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.ak) #20
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load i32, ptr %i.al, align 8, !tbaa !92
  call void @notifyKeyspaceEvent(i32 noundef 16384, ptr noundef nonnull @.str.7, ptr noundef nonnull %1, i32 noundef %i.am) #20
  %i.an = load i64, ptr %i.k, align 8
  %i.ao = call i64 @getObjectLength(ptr noundef nonnull %i.k) #20 ; 3 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !49
  %i.aq = call ptr @kvstoreGetMetadata(ptr noundef %i.ap) #20 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !49
  %i.as = call ptr @kvstoreGetDictMeta(ptr noundef %i.ar, i32 noundef %i.d, i32 noundef 0) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.as, null               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 2 uses
  %i.au = and i64 %i.an, 15                       ; 5 uses
  %i.av = icmp samesign ugt i64 %i.au, 4
  br i1 %i.av, label %updateKeysizesHist.exit, label %bb.h, !prof !47

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp sgt i64 %i.ao, 0
  br i1 %i.aw, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ax = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ao, i1 true)
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = sub nuw nsw i32 64, %i.ay               ; 2 uses
  br i1 %.not.i, label %._crit_edge39.i.i, label %bb.j

._crit_edge39.i.i:                                ; preds = %bb.i
  %.pre45.i.i = zext nneg i32 %i.az to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw [480 x i8], ptr %i.at, i64 %i.au
  %i.bb = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !48
  %i.be = add nsw i64 %i.bd, 1
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !48
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge39.i.i
  %.pre-phi46.i.i = phi i64 [ %.pre45.i.i, %._crit_edge39.i.i ], [ %i.bb, %bb.j ]
  %i.bf = getelementptr inbounds nuw [480 x i8], ptr %i.aq, i64 %i.au
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.pre-phi46.i.i ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !48
  %i.bi = add nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !48
  br label %updateKeysizesHist.exit

bb.l:                                             ; preds = %bb.h
  %i.bj = icmp eq i64 %i.ao, 0
  br i1 %i.bj, label %bb.m, label %updateKeysizesHist.exit

bb.m:                                             ; preds = %bb.l
  br i1 %.not.i, label %._crit_edge38.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw [480 x i8], ptr %i.at, i64 %i.au ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !48
  %i.bm = add nsw i64 %i.bl, 1
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !48
  br label %._crit_edge38.i.i

._crit_edge38.i.i:                                ; preds = %bb.n, %bb.m
  %i.bn = getelementptr inbounds nuw [480 x i8], ptr %i.aq, i64 %i.au ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !48
  %i.bp = add nsw i64 %i.bo, 1
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !48
  br label %updateKeysizesHist.exit

updateKeysizesHist.exit:                          ; preds = %bb.g, %bb.k, %bb.l, %._crit_edge38.i.i
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !56
  %.not42 = icmp eq i32 %i.bq, 0
  br i1 %.not42, label %updateSlotAllocSize.exit, label %bb.o

bb.o:                                             ; preds = %updateKeysizesHist.exit
  %i.br = call i64 @kvobjAllocSize(ptr noundef nonnull %i.k) #20 ; 6 uses
  %i.bs = load ptr, ptr %0, align 8, !tbaa !49
  %i.bt = call ptr @kvstoreGetMetadata(ptr noundef %i.bs) #20
  %i.bu = load ptr, ptr %0, align 8, !tbaa !49
  %i.bv = call ptr @kvstoreGetDictMeta(ptr noundef %i.bu, i32 noundef %i.d, i32 noundef 0) #20 ; 2 uses
  %i.bw = icmp eq i64 %i.br, -1
  br i1 %i.bw, label %updateSlotAllocSize.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i43 = icmp ne ptr %i.bv, null
  %i.bx = icmp sgt i64 %i.br, -1
  %or.cond = select i1 %.not.i43, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !52
  %i.ca = add i64 %i.bz, %i.br
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !52
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 2400 ; 2 uses
  %i.cc = load i64, ptr %i.k, align 8
  %i.cd = and i64 %i.cc, 15                       ; 3 uses
  %i.ce = icmp samesign ugt i64 %i.cd, 4
  br i1 %i.ce, label %updateSlotAllocSize.exit, label %bb.s, !prof !47

bb.s:                                             ; preds = %bb.r
  %i.cf = icmp sgt i64 %i.br, 0
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.br, i1 true)
  %.pre45.i.i44 = sub nuw nsw i64 64, %i.cg
  %i.ch = getelementptr inbounds nuw [480 x i8], ptr %i.cb, i64 %i.cd
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.pre45.i.i44 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !48
  %i.ck = add nsw i64 %i.cj, 1
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !48
  br label %updateSlotAllocSize.exit

bb.u:                                             ; preds = %bb.s
  %i.cl = icmp eq i64 %i.br, 0
  br i1 %i.cl, label %bb.v, label %updateSlotAllocSize.exit

bb.v:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw [480 x i8], ptr %i.cb, i64 %i.cd ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !48
  %i.co = add nsw i64 %i.cn, 1
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !48
  br label %updateSlotAllocSize.exit

updateSlotAllocSize.exit:                         ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.o, %updateKeysizesHist.exit
  store ptr %i.k, ptr %2, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @getKeySlot(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !108
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8, !tbaa !97 ; 3 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.d = load i32, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !71
  %i.h = and i64 %i.g, 536870912
  %.not6 = icmp eq i64 %i.h, 0
  br i1 %.not6, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr i8, ptr %0, i64 -1
  %.val.i = load i8, ptr %i.i, align 1, !tbaa !110 ; 2 uses
  %i.j = and i8 %.val.i, 7
  switch i8 %i.j, label %._crit_edge.thread.i [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = lshr i8 %.val.i, 3
  %i.l = zext nneg i8 %i.k to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds i8, ptr %0, i64 -3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !110
  %i.o = zext i8 %i.n to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds i8, ptr %0, i64 -5
  %i.q = load i16, ptr %i.p, align 1, !tbaa !111
  %i.r = zext i16 %i.q to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %0, i64 -9
  %i.t = load i32, ptr %i.s, align 1, !tbaa !9
  %i.u = zext i32 %i.t to i64
  br label %sdslen.exit

end_hunk_0
begin_hunk_1_@sdslen:bb.a
  %i.c = lshr i8 %.val, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !110
  %i.g = zext i8 %i.f to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !111
  %i.j = zext i16 %i.i to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @getSlotFromCommand(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.getKeysResult, align 8      ; 10 uses
  %i.a = icmp ne ptr %0, null
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8
  %i.c = icmp ne i32 %i.b, 0
  %or.cond = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 6, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !100
  %i.g = and i64 %i.f, 2097152
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 @moduleGetCommandKeysViaAPI(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3) #20 ; 0 uses
  br label %getKeysFromCommand.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !116  ; 2 uses
  %.not16.i = icmp eq ptr %i.j, null
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = call i32 %i.j(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3) #20, !inline_history !117 ; 0 uses
  br label %getKeysFromCommand.exit

bb.f:                                             ; preds = %bb.d
  %i.l = call i32 @getKeysUsingLegacyRangeSpec(ptr noundef nonnull %0, ptr poison, i32 noundef %2, ptr noundef nonnull %3) ; 0 uses
  br label %getKeysFromCommand.exit

getKeysFromCommand.exit:                          ; preds = %bb.c, %bb.e, %bb.f
  %i.m = call i32 @extractSlotFromKeysResult(ptr noundef %1, ptr noundef nonnull %3) #20
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !118  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not5.i = icmp eq ptr %i.o, %i.p
  br i1 %.not5.i, label %getKeysFreeResult.exit, label %bb.g

bb.g:                                             ; preds = %getKeysFromCommand.exit
  call void @zfree(ptr noundef %i.o) #20
  br label %getKeysFreeResult.exit

getKeysFreeResult.exit:                           ; preds = %getKeysFromCommand.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %getKeysFreeResult.exit
  %.0 = phi i32 [ %i.m, %getKeysFreeResult.exit ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @getKeysFromCommand(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100
  %i.c = and i64 %i.b, 2097152
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @moduleGetCommandKeysViaAPI(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #20
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116  ; 2 uses
  %.not16 = icmp eq ptr %i.f, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i32 @getKeysUsingLegacyRangeSpec(ptr noundef nonnull %0, ptr poison, i32 noundef %2, ptr noundef %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  ret i32 %.0
}

declare i32 @extractSlotFromKeysResult(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @getKeysFreeResult(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not5 = icmp eq ptr %i.b, %i.c
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @zfree(ptr noundef %i.b) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @dbAddRDBLoad(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call i32 @getKeySlot(ptr noundef %1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.c = load ptr, ptr %0, align 8, !tbaa !49
  %i.d = call ptr @kvstoreDictFindLink(ptr noundef %i.c, i32 noundef %i.b, ptr noundef %1, ptr noundef nonnull %i.a) #20
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !104
  %i.h = zext i16 %i.g to i32
  %i.i = call ptr @kvobjSet(ptr noundef %1, ptr noundef %i.e, i32 noundef %i.h) #20 ; 11 uses
  call void @initObjectLRUOrLFU(ptr noundef %i.i) #20
  %i.j = load ptr, ptr %0, align 8, !tbaa !49
  call void @kvstoreDictSetAtLink(ptr noundef %i.j, i32 noundef %i.b, ptr noundef %i.i, ptr noundef nonnull %i.a, i32 noundef 1) #20
  %i.k = load i16, ptr %i.f, align 2, !tbaa !104  ; 3 uses
  %.not37 = icmp eq i16 %i.k, 0
  br i1 %.not37, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = and i16 %i.k, 1
  %.not38 = icmp eq i16 %i.l, 0
  br i1 %.not38, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.p = call ptr @setExpireByLink(ptr noundef null, ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.n, ptr noundef %i.o)
  %i.q = icmp eq ptr %i.p, %i.i
  br i1 %i.q, label %._crit_edge, label %bb.e, !prof !101

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i16, ptr %i.f, align 2, !tbaa !104
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 536) #20
  call void @abort() #21
  unreachable

bb.f:                                             ; preds = %._crit_edge, %bb.c
  %i.r = phi i16 [ %.pre, %._crit_edge ], [ %i.k, %bb.c ]
  %i.s = and i16 %i.r, 254
  %.not39 = icmp eq i16 %i.s, 0
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %4 = load i64, ptr %i.i, align 8
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  %i.t = and i32 %6, 255
  %i.u = call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.t)
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.i, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.aa = load i16, ptr %3, align 8, !tbaa !107
  %i.ab = zext i16 %i.aa to i64                   ; 2 uses
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ac
  %i.ae = shl nuw nsw i64 %i.ab, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 8 %i.ad, i64 %i.ae, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b
  %i.af = load i64, ptr %i.i, align 8
  %i.ag = call i64 @getObjectLength(ptr noundef nonnull %i.i) #20 ; 3 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !49
  %i.ai = call ptr @kvstoreGetMetadata(ptr noundef %i.ah) #20 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !49
  %i.ak = call ptr @kvstoreGetDictMeta(ptr noundef %i.aj, i32 noundef %i.b, i32 noundef 0) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  %i.am = and i64 %i.af, 15                       ; 5 uses
  %i.an = icmp samesign ugt i64 %i.am, 4
  br i1 %i.an, label %updateKeysizesHist.exit, label %bb.i, !prof !47

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp sgt i64 %i.ag, 0
  br i1 %i.ao, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ap = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ag, i1 true)
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = sub nuw nsw i32 64, %i.aq               ; 2 uses
  br i1 %.not.i, label %._crit_edge39.i.i, label %bb.k

._crit_edge39.i.i:                                ; preds = %bb.j
  %.pre45.i.i = zext nneg i32 %i.ar to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw [480 x i8], ptr %i.al, i64 %i.am
  %i.at = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !48
  %i.aw = add nsw i64 %i.av, 1
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge39.i.i
  %.pre-phi46.i.i = phi i64 [ %.pre45.i.i, %._crit_edge39.i.i ], [ %i.at, %bb.k ]
  %i.ax = getelementptr inbounds nuw [480 x i8], ptr %i.ai, i64 %i.am
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.pre-phi46.i.i ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !48
  %i.ba = add nsw i64 %i.az, 1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !48
  br label %updateKeysizesHist.exit

bb.m:                                             ; preds = %bb.i
  %i.bb = icmp eq i64 %i.ag, 0
  br i1 %i.bb, label %bb.n, label %updateKeysizesHist.exit

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i, label %._crit_edge38.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw [480 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !48
  %i.be = add nsw i64 %i.bd, 1
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !48
  br label %._crit_edge38.i.i

._crit_edge38.i.i:                                ; preds = %bb.o, %bb.n
  %i.bf = getelementptr inbounds nuw [480 x i8], ptr %i.ai, i64 %i.am ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !48
  %i.bh = add nsw i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !48
  br label %updateKeysizesHist.exit

updateKeysizesHist.exit:                          ; preds = %bb.h, %bb.l, %bb.m, %._crit_edge38.i.i
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !56
  %.not40 = icmp eq i32 %i.bi, 0
  br i1 %.not40, label %updateSlotAllocSize.exit, label %bb.p

bb.p:                                             ; preds = %updateKeysizesHist.exit
  %i.bj = call i64 @kvobjAllocSize(ptr noundef nonnull %i.i) #20 ; 6 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !49
  %i.bl = call ptr @kvstoreGetMetadata(ptr noundef %i.bk) #20
  %i.bm = load ptr, ptr %0, align 8, !tbaa !49
  %i.bn = call ptr @kvstoreGetDictMeta(ptr noundef %i.bm, i32 noundef %i.b, i32 noundef 0) #20 ; 2 uses
  %i.bo = icmp eq i64 %i.bj, -1
  br i1 %i.bo, label %updateSlotAllocSize.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i41 = icmp ne ptr %i.bn, null
  %i.bp = icmp sgt i64 %i.bj, -1
  %or.cond = select i1 %.not.i41, i1 %i.bp, i1 false
  br i1 %or.cond, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !52
  %i.bs = add i64 %i.br, %i.bj
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !52
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 2400 ; 2 uses
  %i.bu = load i64, ptr %i.i, align 8
  %i.bv = and i64 %i.bu, 15                       ; 3 uses
  %i.bw = icmp samesign ugt i64 %i.bv, 4
  br i1 %i.bw, label %updateSlotAllocSize.exit, label %bb.t, !prof !47

bb.t:                                             ; preds = %bb.s
  %i.bx = icmp sgt i64 %i.bj, 0
  br i1 %i.bx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.by = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.bj, i1 true)
  %.pre45.i.i42 = sub nuw nsw i64 64, %i.by
  %i.bz = getelementptr inbounds nuw [480 x i8], ptr %i.bt, i64 %i.bv
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.pre45.i.i42 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !48
  %i.cc = add nsw i64 %i.cb, 1
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !48
  br label %updateSlotAllocSize.exit

bb.v:                                             ; preds = %bb.t
  %i.cd = icmp eq i64 %i.bj, 0
  br i1 %i.cd, label %bb.w, label %updateSlotAllocSize.exit

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw [480 x i8], ptr %i.bt, i64 %i.bv ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !48
  %i.cg = add nsw i64 %i.cf, 1
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !48
  br label %updateSlotAllocSize.exit

updateSlotAllocSize.exit:                         ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.p, %updateKeysizesHist.exit
  store ptr %i.i, ptr %2, align 8, !tbaa !103
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %updateSlotAllocSize.exit
  %.0 = phi ptr [ %i.i, %updateSlotAllocSize.exit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %.0
}

declare ptr @kvstoreDictFindLink(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @dbReplaceValue(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @dbSetValue(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i32 noundef 0, i32 noundef %3, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dbSetValue(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !66
  %i.c = load ptr, ptr %2, align 8, !tbaa !103    ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = tail call i32 @getKeySlot(ptr noundef %i.e) ; 12 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !49
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.i = tail call ptr @kvstoreDictFindLink(ptr noundef %i.g, i32 noundef %i.f, ptr noundef %i.h, ptr noundef null) #20 ; 3 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !66
  %.not136 = icmp eq ptr %i.i, null
  br i1 %.not136, label %bb.c, label %bb.d, !prof !47

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.2, i32 noundef 578) #20
  tail call void @abort() #21
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %i.i, %bb.b ], [ %3, %bb.a ]   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = tail call ptr @dictGetKey(ptr noundef %i.k) #20 ; 12 uses
  %i.m = tail call i64 @getObjectLength(ptr noundef %i.l) #20 ; 4 uses
  %i.n = load i64, ptr %i.l, align 8              ; 3 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 15                         ; 5 uses
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %bb.e, label %getExpire.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !115
  %i.t = tail call i64 @estoreRemove(ptr noundef %i.s, i32 noundef %i.f, ptr noundef nonnull %i.l) #20 ; 0 uses
  br label %getExpire.exit

getExpire.exit:                                   ; preds = %bb.e, %bb.d
  %i.u = tail call i64 @kvobjGetExpire(ptr noundef nonnull %i.l) #20 ; 3 uses
  %7 = load i64, ptr %i.l, align 8
  %8 = lshr i64 %7, 32
  %9 = trunc nuw i64 %8 to i32
  %i.v = icmp eq i32 %6, 0                        ; 3 uses
  %i.w = icmp eq i64 %i.u, -1                     ; 2 uses
  %or.cond = select i1 %i.v, i1 true, i1 %i.w
  %spec.select.v = select i1 %or.cond, i32 254, i32 255
  %spec.select = and i32 %spec.select.v, %9       ; 2 uses
  %.not137 = icmp eq i32 %4, 0
  br i1 %.not137, label %bb.i, label %bb.f

bb.f:                                             ; preds = %getExpire.exit
  %i.x = and i32 %spec.select, 1
  tail call void @incrRefCount(ptr noundef nonnull %i.l) #20
  %10 = load i64, ptr %i.l, align 8
  %11 = and i64 %10, 1090921693184
  %.not138 = icmp ne i64 %11, 0                   ; 2 uses
  br i1 %.not138, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @keyMetaOnUnlink(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.l) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !92
  tail call void @moduleNotifyKeyUnlink(ptr noundef nonnull %1, ptr noundef nonnull %i.l, i32 noundef %i.z, i32 noundef 8) #20
  %i.aa = load i64, ptr %i.l, align 8
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 15
  tail call void @signalDeletedKeyAsReady(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.ac) #20
  tail call void @decrRefCount(ptr noundef nonnull %i.l) #20
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.ae = tail call ptr @dictGetKey(ptr noundef %i.ad) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %getExpire.exit
  %.1130 = phi i32 [ %i.x, %bb.h ], [ %spec.select, %getExpire.exit ] ; 2 uses
  %.0127 = phi ptr [ %i.ae, %bb.h ], [ %i.l, %getExpire.exit ] ; 10 uses
  %.1 = phi i1 [ %.not138, %bb.h ], [ false, %getExpire.exit ]
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !56
  %.not139 = icmp eq i32 %i.af, 0
  br i1 %.not139, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call i64 @kvobjAllocSize(ptr noundef %.0127) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0126 = phi i64 [ %i.ag, %bb.j ], [ 0, %bb.i ] ; 7 uses
  %i.ah = load i64, ptr %.0127, align 8           ; 5 uses
  %i.ai = and i64 %i.ah, 2147483392
  %i.aj = icmp eq i64 %i.ai, 256
  br i1 %i.aj, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load i64, ptr %i.c, align 8
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ak = trunc i64 %i.ah to i32
  %i.al = lshr i32 %i.ak, 4
  %i.am = and i32 %i.al, 15                       ; 2 uses
  %.not140 = icmp ne i32 %i.am, 8
  %.pre159 = load i64, ptr %i.c, align 8          ; 5 uses
  %i.an = and i64 %.pre159, 2147483392
  %i.ao = icmp eq i64 %i.an, 256
  %or.cond176 = select i1 %.not140, i1 %i.ao, i1 false
  br i1 %or.cond176, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ap = and i64 %.pre159, 240
  %i.aq = icmp eq i64 %i.ap, 128
  %or.cond3 = or i1 %.1, %i.aq
  br i1 %or.cond3, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0127, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !120
  %i.ar = and i64 %.pre159, 15
  %i.as = and i64 %i.ah, -2147483152
  %i.at = or disjoint i64 %i.ar, %i.as            ; 2 uses
  store i64 %i.at, ptr %.0127, align 8
  %i.au = load i64, ptr %i.c, align 8
  %i.av = and i64 %i.au, 240
  %i.aw = and i64 %i.at, -2147483377
  %i.ax = or disjoint i64 %i.av, %i.aw
  store i64 %i.ax, ptr %.0127, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !64
  store ptr %i.az, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !64
  %i.ba = and i64 %i.ah, 15
  %i.bb = load i64, ptr %i.c, align 8
  %i.bc = and i64 %i.bb, -256
  %i.bd = shl nuw nsw i32 %i.am, 4
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = or disjoint i64 %i.ba, %i.be
  %i.bg = or disjoint i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.c, align 8
  store ptr %.sroa.5.0.copyload, ptr %i.ay, align 8, !tbaa !64
  %i.bh = icmp sgt i64 %i.u, -1
  %or.cond5 = select i1 %i.v, i1 %i.bh, i1 false
  br i1 %or.cond5, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.bi = tail call i32 @removeExpire(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  br label %bb.x

bb.p:                                             ; preds = %._crit_edge, %bb.m, %bb.l
  %i.bj = phi i64 [ %.pre, %._crit_edge ], [ %.pre159, %bb.m ], [ %.pre159, %bb.l ]
  %i.bk = and i64 %i.ah, -1099511627776
  %i.bl = and i64 %i.bj, 1099511627775
  %i.bm = or disjoint i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %i.c, align 8
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.bo = tail call ptr @kvobjSet(ptr noundef %i.bn, ptr noundef nonnull %i.c, i32 noundef %.1130) #20 ; 6 uses
  %i.bp = load ptr, ptr %0, align 8, !tbaa !49
  call void @kvstoreDictSetAtLink(ptr noundef %i.bp, i32 noundef %i.f, ptr noundef %i.bo, ptr noundef nonnull %i.a, i32 noundef 0) #20
  br i1 %i.w, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.v, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = call ptr @kvobjSetExpire(ptr noundef %i.bo, i64 noundef %i.u) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !96
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.bu = call ptr @kvstoreDictFindLink(ptr noundef %i.bs, i32 noundef %i.f, ptr noundef %i.bt, ptr noundef null) #20 ; 2 uses
  store ptr %i.bu, ptr %i.b, align 8, !tbaa !66
  %.not143 = icmp eq ptr %i.bu, null
  br i1 %.not143, label %bb.s, label %bb.t, !prof !47

bb.s:                                             ; preds = %bb.r
  call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.2, i32 noundef 657) #20
  call void @abort() #21
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !96
  call void @kvstoreDictSetAtLink(ptr noundef %i.bv, i32 noundef %i.f, ptr noundef %i.bo, ptr noundef nonnull %i.b, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !96
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.bz = call i32 @kvstoreDictDelete(ptr noundef %i.bx, i32 noundef %i.f, ptr noundef %i.by) #20 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.p
  %i.ca = and i32 %.1130, 254
  %.not144 = icmp eq i32 %i.ca, 0
  br i1 %.not144, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @keyMetaTransition(ptr noundef nonnull %.0127, ptr noundef %i.bo) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.n, %bb.o, %bb.v, %bb.w
  %.0131 = phi ptr [ %i.bo, %bb.w ], [ %i.bo, %bb.v ], [ %.0127, %bb.o ], [ %.0127, %bb.n ] ; 9 uses
  %.1128 = phi ptr [ %.0127, %bb.w ], [ %.0127, %bb.v ], [ %i.c, %bb.o ], [ %i.c, %bb.n ] ; 5 uses
  %i.cb = call i64 @getObjectLength(ptr noundef %.0131) #20 ; 4 uses
  %.not145 = icmp eq i32 %5, 0
  br i1 %.not145, label %updateKeysizesHist.exit151, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = load i64, ptr %.0131, align 8
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = and i32 %i.cd, 15
  %i.cf = icmp eq i32 %i.p, %i.ce
  br i1 %i.cf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @updateKeysizesHist(ptr noundef %0, i32 noundef %i.f, i32 noundef %i.p, i64 noundef %i.m, i64 noundef %i.cb)
  br label %updateKeysizesHist.exit151

bb.aa:                                            ; preds = %bb.y
  %i.cg = load ptr, ptr %0, align 8, !tbaa !49
  %i.ch = call ptr @kvstoreGetMetadata(ptr noundef %i.cg) #20 ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !49
  %i.cj = call ptr @kvstoreGetDictMeta(ptr noundef %i.ci, i32 noundef %i.f, i32 noundef 0) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.cj, null               ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40 ; 2 uses
  %i.cl = icmp samesign ugt i32 %i.p, 4
  br i1 %i.cl, label %updateKeysizesHist.exit, label %bb.ab, !prof !47

bb.ab:                                            ; preds = %bb.aa
  %i.cm = icmp sgt i64 %i.m, 0
  br i1 %i.cm, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.cn = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.m, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = sub nuw nsw i32 64, %i.co               ; 2 uses
  %.pre.i.i = and i64 %i.n, 15                    ; 2 uses
  br i1 %.not.i, label %._crit_edge40.i.i, label %bb.ad

._crit_edge40.i.i:                                ; preds = %bb.ac
  %.pre41.i.i = zext nneg i32 %i.cp to i64
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw [480 x i8], ptr %i.ck, i64 %.pre.i.i
  %i.cr = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !48
  %i.cu = add nsw i64 %i.ct, -1
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !48
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge40.i.i
  %.pre-phi42.i.i = phi i64 [ %.pre41.i.i, %._crit_edge40.i.i ], [ %i.cr, %bb.ad ]
  %i.cv = getelementptr inbounds nuw [480 x i8], ptr %i.ch, i64 %.pre.i.i
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.pre-phi42.i.i ; 2 uses
end_hunk_1
begin_hunk_2_@dbRandomKey:bb.a
  br i1 %i.m, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.n = tail call ptr @dictGetKey(ptr noundef nonnull %i.l) #20 ; 2 uses
  %i.o = tail call ptr @kvobjGetKey(ptr noundef %i.n) #20 ; 6 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %.val.i.us = load i8, ptr %i.p, align 1, !tbaa !110 ; 2 uses
  %i.q = and i8 %.val.i.us, 7
  switch i8 %i.q, label %sdslen.exit.us [
    i8 0, label %bb.g
    i8 1, label %bb.f
    i8 2, label %bb.e
    i8 3, label %bb.d
    i8 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -17
  %i.s = load i64, ptr %i.r, align 1, !tbaa !48
  br label %sdslen.exit.us

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 -9
  %i.u = load i32, ptr %i.t, align 1, !tbaa !9
  %i.v = zext i32 %i.u to i64
  br label %sdslen.exit.us

bb.e:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds i8, ptr %i.o, i64 -5
  %i.x = load i16, ptr %i.w, align 1, !tbaa !111
  %i.y = zext i16 %i.x to i64
  br label %sdslen.exit.us

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %i.o, i64 -3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !110
  %i.ab = zext i8 %i.aa to i64
  br label %sdslen.exit.us

bb.g:                                             ; preds = %bb.b
  %i.ac = lshr i8 %.val.i.us, 3
  %i.ad = zext nneg i8 %i.ac to i64
  br label %sdslen.exit.us

sdslen.exit.us:                                   ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i.us = phi i64 [ %i.s, %bb.c ], [ %i.ad, %bb.g ], [ %i.ab, %bb.f ], [ %i.y, %bb.e ], [ %i.v, %bb.d ], [ 0, %bb.b ]
  %i.ae = tail call ptr @createStringObject(ptr noundef nonnull %i.o, i64 noundef %.0.i.us) #20 ; 4 uses
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !70
  %.not.us = icmp eq ptr %i.af, null
  br i1 %.not.us, label %bb.h, label %bb.i

bb.h:                                             ; preds = %sdslen.exit.us
  %i.ag = tail call i32 @isPausedActions(i32 noundef 4) #20
  %.not29.us = icmp eq i32 %i.ag, 0
  br i1 %.not29.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %sdslen.exit.us
  %i.ah = add nsw i32 %.02035.us, -1              ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.121.us = phi i32 [ %i.ah, %bb.i ], [ %.02035.us, %bb.h ]
  %i.aj = tail call fastcc i32 @expireIfNeeded(ptr noundef nonnull %0, ptr noundef %i.ae, ptr noundef %i.n, i32 noundef 0)
  %.not30.us = icmp eq i32 %i.aj, 0
  br i1 %.not30.us, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @decrRefCount(ptr noundef %i.ae) #20
  %i.ak = load ptr, ptr %0, align 8, !tbaa !49
  %i.al = tail call i32 @kvstoreGetFairRandomDictIndex(ptr noundef %i.ak, ptr noundef nonnull @accessKeysShouldSkipDictIndex, i32 noundef 16, i32 noundef 1) #20 ; 2 uses
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.r
  %i.an = phi i32 [ %i.bl, %bb.r ], [ %i.g, %.lr.ph ]
  %i.ao = load ptr, ptr %0, align 8, !tbaa !49
  %i.ap = tail call ptr @kvstoreDictGetFairRandomKey(ptr noundef %i.ao, i32 noundef %i.an) #20 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split
  %i.ar = tail call ptr @dictGetKey(ptr noundef nonnull %i.ap) #20 ; 2 uses
  %i.as = tail call ptr @kvobjGetKey(ptr noundef %i.ar) #20 ; 6 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -1
  %.val.i = load i8, ptr %i.at, align 1, !tbaa !110 ; 2 uses
  %i.au = and i8 %.val.i, 7
  switch i8 %i.au, label %sdslen.exit [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.p
    i8 4, label %bb.q
  ]

bb.m:                                             ; preds = %bb.l
  %i.av = lshr i8 %.val.i, 3
  %i.aw = zext nneg i8 %i.av to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 -3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !110
  %i.az = zext i8 %i.ay to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds i8, ptr %i.as, i64 -5
  %i.bb = load i16, ptr %i.ba, align 1, !tbaa !111
  %i.bc = zext i16 %i.bb to i64
  br label %sdslen.exit

bb.p:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds i8, ptr %i.as, i64 -9
  %i.be = load i32, ptr %i.bd, align 1, !tbaa !9
  %i.bf = zext i32 %i.be to i64
  br label %sdslen.exit

bb.q:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds i8, ptr %i.as, i64 -17
  %i.bh = load i64, ptr %i.bg, align 1, !tbaa !48
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i = phi i64 [ %i.bh, %bb.q ], [ %i.aw, %bb.m ], [ %i.az, %bb.n ], [ %i.bc, %bb.o ], [ %i.bf, %bb.p ], [ 0, %bb.l ]
  %i.bi = tail call ptr @createStringObject(ptr noundef nonnull %i.as, i64 noundef %.0.i) #20 ; 3 uses
  %i.bj = tail call fastcc i32 @expireIfNeeded(ptr noundef nonnull %0, ptr noundef %i.bi, ptr noundef %i.ar, i32 noundef 0)
  %.not30 = icmp eq i32 %i.bj, 0
  br i1 %.not30, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %sdslen.exit
  tail call void @decrRefCount(ptr noundef %i.bi) #20
  %i.bk = load ptr, ptr %0, align 8, !tbaa !49
  %i.bl = tail call i32 @kvstoreGetFairRandomDictIndex(ptr noundef %i.bk, ptr noundef nonnull @accessKeysShouldSkipDictIndex, i32 noundef 16, i32 noundef 1) #20 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %sdslen.exit, %bb.r, %.lr.ph.split, %bb.j, %bb.i, %bb.k, %.lr.ph.split.us, %bb.a
  %.2.ph = phi ptr [ %i.ae, %bb.i ], [ null, %bb.a ], [ null, %.lr.ph.split.us ], [ null, %bb.k ], [ %i.ae, %bb.j ], [ null, %bb.r ], [ null, %.lr.ph.split ], [ %i.bi, %sdslen.exit ]
  ret ptr %.2.ph
}

declare i64 @kvstoreSize(ptr noundef) local_unnamed_addr #2

declare i32 @kvstoreGetFairRandomDictIndex(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @accessKeysShouldSkipDictIndex(i32 noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @clusterCanAccessKeysInSlot(i32 noundef %0) #20
  %.not = icmp eq i32 %i.a, 0
  %i.b = zext i1 %.not to i32
  ret i32 %i.b
}

declare ptr @kvstoreDictGetFairRandomKey(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @kvobjGetKey(ptr noundef) local_unnamed_addr #2

declare ptr @createStringObject(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @isPausedActions(i32 noundef) local_unnamed_addr #2

declare void @decrRefCount(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @dbGenericDelete(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = tail call i32 @getKeySlot(ptr noundef %i.d) ; 7 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.h = call ptr @kvstoreDictTwoPhaseUnlinkFind(ptr noundef %i.f, i32 noundef %i.e, ptr noundef %i.g, ptr noundef nonnull %i.b) #20 ; 5 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !66
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %updateKeysizesHist.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = call ptr @dictGetKey(ptr noundef %i.i) #20 ; 8 uses
  %i.k = call i64 @getObjectLength(ptr noundef %i.j) #20 ; 3 uses
  %i.l = load i64, ptr %i.j, align 8              ; 3 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 15                         ; 3 uses
  %i.o = icmp eq i32 %i.n, 4
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !115
  %i.r = call i64 @estoreRemove(ptr noundef %i.q, i32 noundef %i.e, ptr noundef nonnull %i.j) #20 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @incrRefCount(ptr noundef nonnull %i.j) #20
  %4 = load i64, ptr %i.j, align 8
  %5 = and i64 %4, 1090921693184
  %.not45 = icmp eq i64 %5, 0
  br i1 %.not45, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @keyMetaOnUnlink(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.j) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !92
  call void @moduleNotifyKeyUnlink(ptr noundef nonnull %1, ptr noundef nonnull %i.j, i32 noundef %i.t, i32 noundef %3) #20
  call void @signalDeletedKeyAsReady(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.n) #20
  call void @decrRefCount(ptr noundef nonnull %i.j) #20
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.v = call ptr @dictGetKey(ptr noundef %i.u) #20 ; 4 uses
  %i.w = call i64 @kvobjGetExpire(ptr noundef %i.v) #20
  %.not46 = icmp eq i64 %i.w, -1
  br i1 %.not46, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !96
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.aa = call i32 @kvstoreDictDelete(ptr noundef %i.y, i32 noundef %i.e, ptr noundef %i.z) #20 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not47 = icmp eq i32 %2, 0
  br i1 %.not47, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !56
  %.not48 = icmp eq i32 %i.ab, 0
  br i1 %.not48, label %updateSlotAllocSize.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = call i64 @kvobjAllocSize(ptr noundef %i.v) #20 ; 6 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !49
  %i.ae = call ptr @kvstoreGetMetadata(ptr noundef %i.ad) #20
  %i.af = load ptr, ptr %0, align 8, !tbaa !49
  %i.ag = call ptr @kvstoreGetDictMeta(ptr noundef %i.af, i32 noundef %i.e, i32 noundef 0) #20 ; 2 uses
  %i.ah = icmp eq i64 %i.ac, -1
  br i1 %i.ah, label %updateSlotAllocSize.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ne ptr %i.ag, null
  %i.ai = icmp sgt i64 %i.ac, -1
  %or.cond = select i1 %.not.i, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !52
  %i.al = sub i64 %i.ak, %i.ac
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !52
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 2400 ; 2 uses
  %i.an = load i64, ptr %i.v, align 8
  %i.ao = and i64 %i.an, 15                       ; 3 uses
  %i.ap = icmp samesign ugt i64 %i.ao, 4
  br i1 %i.ap, label %updateSlotAllocSize.exit, label %bb.n, !prof !47

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp sgt i64 %i.ac, 0
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ac, i1 true)
  %.pre41.i.i = sub nuw nsw i64 64, %i.ar
  %i.as = getelementptr inbounds nuw [480 x i8], ptr %i.am, i64 %i.ao
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.pre41.i.i ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !48
  %i.av = add nsw i64 %i.au, -1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !48
  br label %updateSlotAllocSize.exit

bb.p:                                             ; preds = %bb.n
  %i.aw = icmp eq i64 %i.ac, 0
  br i1 %i.aw, label %bb.q, label %updateSlotAllocSize.exit

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw [480 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !48
  %i.az = add nsw i64 %i.ay, -1
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !48
  br label %updateSlotAllocSize.exit

updateSlotAllocSize.exit:                         ; preds = %bb.m, %bb.j, %bb.q, %bb.p, %bb.o, %bb.i
  %i.ba = load i32, ptr %i.s, align 8, !tbaa !92
  call void @freeObjAsync(ptr noundef nonnull %1, ptr noundef %i.v, i32 noundef %i.ba) #20
  %i.bb = load ptr, ptr %0, align 8, !tbaa !49
  call void @kvstoreDictSetAtLink(ptr noundef %i.bb, i32 noundef %i.e, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 0) #20
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !66
  br label %bb.r

bb.r:                                             ; preds = %updateSlotAllocSize.exit, %bb.h
  %i.bc = phi ptr [ %.pre, %updateSlotAllocSize.exit ], [ %i.h, %bb.h ]
  %i.bd = load ptr, ptr %0, align 8, !tbaa !49
  %i.be = load i32, ptr %i.b, align 4, !tbaa !9
  call void @kvstoreDictTwoPhaseUnlinkFree(ptr noundef %i.bd, i32 noundef %i.e, ptr noundef %i.bc, i32 noundef %i.be) #20
  %i.bf = and i32 %3, 16
  %.not49 = icmp eq i32 %i.bf, 0
  br i1 %.not49, label %bb.s, label %updateKeysizesHist.exit

bb.s:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr %0, align 8, !tbaa !49
  %i.bh = call ptr @kvstoreGetMetadata(ptr noundef %i.bg) #20 ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !tbaa !49
  %i.bj = call ptr @kvstoreGetDictMeta(ptr noundef %i.bi, i32 noundef %i.e, i32 noundef 0) #20 ; 2 uses
  %.not.i50 = icmp eq ptr %i.bj, null             ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 2 uses
  %i.bl = icmp samesign ugt i32 %i.n, 4
  br i1 %i.bl, label %updateKeysizesHist.exit, label %bb.t, !prof !47

bb.t:                                             ; preds = %bb.s
  %i.bm = icmp sgt i64 %i.k, 0
  br i1 %i.bm, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bn = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.k, i1 true)
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = sub nuw nsw i32 64, %i.bo               ; 2 uses
  %.pre.i.i = and i64 %i.l, 15                    ; 2 uses
  br i1 %.not.i50, label %._crit_edge40.i.i, label %bb.v

._crit_edge40.i.i:                                ; preds = %bb.u
  %.pre41.i.i51 = zext nneg i32 %i.bp to i64
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw [480 x i8], ptr %i.bk, i64 %.pre.i.i
  %i.br = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.br ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !48
  %i.bu = add nsw i64 %i.bt, -1
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !48
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge40.i.i
  %.pre-phi42.i.i = phi i64 [ %.pre41.i.i51, %._crit_edge40.i.i ], [ %i.br, %bb.v ]
  %i.bv = getelementptr inbounds nuw [480 x i8], ptr %i.bh, i64 %.pre.i.i
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.pre-phi42.i.i ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !48
  %i.by = add nsw i64 %i.bx, -1
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !48
  br label %updateKeysizesHist.exit

bb.x:                                             ; preds = %bb.t
  %i.bz = icmp eq i64 %i.k, 0
  br i1 %i.bz, label %bb.y, label %updateKeysizesHist.exit

bb.y:                                             ; preds = %bb.x
  %.pre49.i.i = and i64 %i.l, 15                  ; 2 uses
  br i1 %.not.i50, label %._crit_edge.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw [480 x i8], ptr %i.bk, i64 %.pre49.i.i ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !48
  %i.cc = add nsw i64 %i.cb, -1
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !48
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.z, %bb.y
  %i.cd = getelementptr inbounds nuw [480 x i8], ptr %i.bh, i64 %.pre49.i.i ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !48
  %i.cf = add nsw i64 %i.ce, -1
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !48
  br label %updateKeysizesHist.exit

updateKeysizesHist.exit:                          ; preds = %bb.s, %._crit_edge.i.i, %bb.x, %bb.w, %bb.a, %bb.r
  %.0 = phi i32 [ 1, %bb.r ], [ 0, %bb.a ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %._crit_edge.i.i ], [ 1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

declare ptr @kvstoreDictTwoPhaseUnlinkFind(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @estoreRemove(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @incrRefCount(ptr noundef) local_unnamed_addr #2

declare void @keyMetaOnUnlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @moduleNotifyKeyUnlink(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @signalDeletedKeyAsReady(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @kvobjGetExpire(ptr noundef) local_unnamed_addr #2

declare i32 @kvstoreDictDelete(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @freeObjAsync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @kvstoreDictTwoPhaseUnlinkFree(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @dbSyncDelete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
end_hunk_2
begin_hunk_3_@shutdownCommand:bb.a
  %i.v = and i32 %.142, 3
  %or.cond55.not = icmp eq i32 %i.v, 3
  br i1 %or.cond55.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %.critedge
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !139
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.w) #20
  br label %bb.af

bb.o:                                             ; preds = %bb.m
  br i1 %i.s, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.x = tail call i32 @abortShutdown() #20
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.z = load ptr, ptr @shared, align 8, !tbaa !147
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.z) #20
  br label %bb.af

bb.r:                                             ; preds = %bb.p
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.49) #20
  br label %bb.af

bb.s:                                             ; preds = %bb.o
  %i.aa = and i32 %.142, 4
  %.not51 = icmp eq i32 %i.aa, 0
  br i1 %.not51, label %.thread83, label %bb.u

.thread83:                                        ; preds = %bb.a, %bb.s
  %.not49768190 = phi i1 [ %.not49, %bb.s ], [ true, %bb.a ]
  %.041.lcssa68758288 = phi i32 [ %.142, %bb.s ], [ 0, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !71
  %i.ad = and i64 %i.ac, 2199023255552
  %.not52 = icmp eq i64 %i.ad, 0
  br i1 %.not52, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread83
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.50) #20
  br label %bb.af

bb.u:                                             ; preds = %.thread83, %bb.s
  %.not49768189 = phi i1 [ %.not49768190, %.thread83 ], [ %.not49, %bb.s ]
  %.041.lcssa68758287 = phi i32 [ %.041.lcssa68758288, %.thread83 ], [ %.142, %bb.s ]
  br i1 %.not49768189, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.ae = tail call i32 @isInsideYieldingLongCommand() #20
  %.not53 = icmp eq i32 %i.ae, 0
  br i1 %.not53, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 224), align 8, !tbaa !190
  %i.ag = icmp ne i32 %i.af, 0                    ; 2 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 232), align 8 ; 2 uses
  %i.ai = icmp ne ptr %i.ah, null
  %or.cond3 = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond3, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.51, ptr noundef nonnull %i.ah) #20
  br label %bb.af

bb.y:                                             ; preds = %bb.w
  br i1 %i.ag, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 272), align 8, !tbaa !191
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.aj) #20
  br label %bb.af

bb.aa:                                            ; preds = %bb.y
  %i.ak = tail call i32 @scriptIsEval() #20
  %.not54 = icmp eq i32 %i.ak, 0
  br i1 %.not54, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 256), align 8, !tbaa !192
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.al) #20
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 264), align 8, !tbaa !193
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.am) #20
  br label %bb.af

bb.ad:                                            ; preds = %bb.v, %bb.u
  tail call void @blockClientShutdown(ptr noundef nonnull %0) #20
  %i.an = tail call i32 @prepareForShutdown(i32 noundef %.041.lcssa68758287) #20
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @exit(i32 noundef 0) #21
  unreachable

bb.af:                                            ; preds = %bb.k, %bb.ad, %bb.x, %bb.ab, %bb.ac, %bb.z, %bb.q, %bb.r, %bb.t, %bb.n
  ret void
}

declare i32 @abortShutdown() local_unnamed_addr #2

declare i32 @isInsideYieldingLongCommand() local_unnamed_addr #2

declare void @addReplyErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @scriptIsEval() local_unnamed_addr #2

declare void @blockClientShutdown(ptr noundef) local_unnamed_addr #2

declare i32 @prepareForShutdown(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @renameGenericCommand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.KeyMetaSpec, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 15 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !137  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.l = tail call i32 @sdscmp(ptr noundef %i.g, ptr noundef %i.k) #20
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 208), align 8, !tbaa !194
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.s = tail call ptr @lookupKey(ptr noundef %i.r, ptr noundef %i.o, i32 noundef 8, ptr noundef null) ; 8 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %lookupKeyWriteOrReply.exit.thread, label %bb.b

lookupKeyWriteOrReply.exit.thread:                ; preds = %bb.a
  tail call void @addReplyOrErrorObject(ptr noundef nonnull %0, ptr noundef %i.p) #20
  br label %bb.r

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.l, 0
  store ptr %i.s, ptr %i.a, align 8, !tbaa !103
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not59 = icmp eq i32 %1, 0
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8
  %i.u = load ptr, ptr @shared, align 8
  %i.v = select i1 %.not59, ptr %i.u, ptr %i.t
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.v) #20
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  tail call void @incrRefCount(ptr noundef nonnull %i.s) #20
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !103
  %i.aa = tail call ptr @lookupKey(ptr noundef %i.w, ptr noundef %i.z, i32 noundef 8, ptr noundef null) ; 2 uses
  %.not52 = icmp eq ptr %i.aa, null               ; 2 uses
  br i1 %.not52, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not53 = icmp eq i32 %1, 0
  br i1 %.not53, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @decrRefCount(ptr noundef nonnull %i.s) #20
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !195
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ab) #20
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 15
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !103
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8368), align 8, !tbaa !122
  %i.ak = tail call range(i32 0, 2) i32 @dbGenericDelete(ptr noundef %i.af, ptr noundef %i.ai, i32 noundef %i.aj, i32 noundef 1) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.047 = phi i32 [ %i.ae, %bb.g ], [ -1, %bb.d ]
  %i.al = load i64, ptr %i.s, align 8             ; 2 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.am, 15                       ; 2 uses
  %i.ao = icmp eq i32 %i.an, 4
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !115
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !103
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !64
  %i.ax = tail call i32 @getKeySlot(ptr noundef %i.aw)
  %i.ay = tail call i64 @estoreRemove(ptr noundef %i.ar, i32 noundef %i.ax, ptr noundef nonnull %i.s) #20
  %.pre = load i64, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %3 = phi i64 [ %.pre, %bb.i ], [ %i.al, %bb.h ]
  %.049 = phi i64 [ %i.ay, %bb.i ], [ 281474976710656, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 0, ptr %i.az, align 2, !tbaa !104
  store i16 0, ptr %2, align 8, !tbaa !107
  %4 = and i64 %3, 1095216660480
  %.not54 = icmp eq i64 %4, 0
  br i1 %.not54, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !137 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !103
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !103
  call void @keyMetaOnRename(ptr noundef %i.ba, ptr noundef nonnull %i.s, ptr noundef %i.bd, ptr noundef %i.bf, ptr noundef nonnull %2) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !103
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8368), align 8, !tbaa !122
  %i.bl = call range(i32 0, 2) i32 @dbGenericDelete(ptr noundef %i.bg, ptr noundef %i.bj, i32 noundef %i.bk, i32 noundef 1) ; 0 uses
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !103
  %i.bq = call ptr @dbAddInternal(ptr noundef %i.bm, ptr noundef %i.bp, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %2) ; 0 uses
  %.not55 = icmp eq i64 %.049, 281474976710656
  br i1 %.not55, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !115
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !103
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !64
  %i.bz = call i32 @getKeySlot(ptr noundef %i.by)
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !103
  call void @estoreAdd(ptr noundef %i.bt, i32 noundef %i.bz, ptr noundef %i.ca, i64 noundef %.049) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !103 ; 2 uses
  call void @touchWatchedKey(ptr noundef %i.cb, ptr noundef %i.ce) #20
  call void @trackingInvalidateKey(ptr noundef nonnull %0, ptr noundef %i.ce, i32 noundef 1) #20
  %i.cf = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !103 ; 2 uses
  call void @touchWatchedKey(ptr noundef %i.cf, ptr noundef %i.ci) #20
  call void @trackingInvalidateKey(ptr noundef nonnull %0, ptr noundef %i.ci, i32 noundef 1) #20
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !103
  %i.cm = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !92
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.52, ptr noundef %i.cl, i32 noundef %i.co) #20
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !103
  %i.cs = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !92
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.53, ptr noundef %i.cr, i32 noundef %i.cu) #20
  br i1 %.not52, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !103
  %i.cy = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !92
  call void @notifyKeyspaceEvent(i32 noundef 32768, ptr noundef nonnull @.str.8, ptr noundef %i.cx, i32 noundef %i.da) #20
  %.not57 = icmp eq i32 %.047, %i.an
  br i1 %.not57, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !103
  %i.de = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !92
  call void @notifyKeyspaceEvent(i32 noundef 65536, ptr noundef nonnull @.str.9, ptr noundef %i.dd, i32 noundef %i.dg) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.dh = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !141
  %i.di = add nsw i64 %i.dh, 1
  store i64 %i.di, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !141
  %.not58 = icmp eq i32 %1, 0
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 32), align 8
  %i.dk = load ptr, ptr @shared, align 8
  %i.dl = select i1 %.not58, ptr %i.dk, ptr %i.dj
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.dl) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.r

bb.r:                                             ; preds = %lookupKeyWriteOrReply.exit.thread, %bb.f, %bb.q, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

declare void @keyMetaOnRename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @estoreAdd(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @renameCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @renameGenericCommand(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @renamenxCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @renameGenericCommand(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @moveCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %struct.KeyMetaSpec, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !108
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.54) #20
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !92   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 11 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !137
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !103
  %i.m = call i32 @getIntFromObjectOrReply(ptr noundef %0, ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef null) #20
  %.not44 = icmp eq i32 %i.m, 0
  br i1 %.not44, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.a, align 4, !tbaa !9    ; 3 uses
  %i.o = icmp sgt i32 %i.n, -1
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4
  %.not.i = icmp slt i32 %i.n, %i.p
  %or.cond.i = select i1 %i.o, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #20
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !128 ; 2 uses
  %i.r = zext nneg i32 %i.n to i64
  %i.s = getelementptr inbounds nuw [96 x i8], ptr %i.q, i64 %i.r ; 8 uses
  store ptr %i.s, ptr %i.e, align 8, !tbaa !102
  %i.t = icmp sgt i32 %i.h, -1
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4
  %.not.i48 = icmp slt i32 %i.h, %i.u
  %or.cond.i49 = select i1 %i.t, i1 %.not.i48, i1 false
  br i1 %or.cond.i49, label %bb.g, label %selectDb.exit51

bb.g:                                             ; preds = %bb.f
  %i.v = zext nneg i32 %i.h to i64
  %i.w = getelementptr inbounds nuw [96 x i8], ptr %i.q, i64 %i.v ; 2 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !102
  br label %selectDb.exit51

selectDb.exit51:                                  ; preds = %bb.f, %bb.g
  %i.x = phi ptr [ %i.s, %bb.f ], [ %i.w, %bb.g ]
  %i.y = icmp eq ptr %i.f, %i.s
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %selectDb.exit51
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 224), align 8, !tbaa !196
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.z) #20
  br label %bb.t

bb.i:                                             ; preds = %selectDb.exit51
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !155
  %i.ab = add nsw i64 %i.aa, 1
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !137
end_hunk_3
begin_hunk_4_@copyCommand:bb.a
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4
  %.not.i = icmp slt i32 %i.bh, %i.bj
  %or.cond.i = select i1 %i.bi, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.j, label %.split134.us

.split134.us:                                     ; preds = %bb.d, %bb.i
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #20
  br label %selectDb.exit114

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !128 ; 2 uses
  %i.bl = zext nneg i32 %i.bh to i64
  %i.bm = getelementptr inbounds nuw [96 x i8], ptr %i.bk, i64 %i.bl ; 3 uses
  store ptr %i.bm, ptr %i.d, align 8, !tbaa !102
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4
  %.not.i111 = icmp slt i32 %.fr136, %i.bn
  br i1 %.not.i111, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw [96 x i8], ptr %i.bk, i64 %i.m
  store ptr %i.bo, ptr %i.d, align 8, !tbaa !102
  br label %bb.l

.split.us:                                        ; preds = %bb.b, %bb.g
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !139
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.bp) #20
  br label %selectDb.exit114

bb.l:                                             ; preds = %.lr.ph.split, %bb.j, %bb.k
  %i.bq = phi i32 [ %i.bh, %bb.k ], [ %i.bh, %bb.j ], [ %i.ap, %.lr.ph.split ] ; 2 uses
  %.296.ph = phi i32 [ %.094129, %bb.k ], [ %.094129, %bb.j ], [ 1, %.lr.ph.split ] ; 2 uses
  %.293.ph = phi i32 [ %i.bc, %bb.k ], [ %i.bc, %bb.j ], [ %.091130, %.lr.ph.split ]
  %.2.ph = phi ptr [ %i.bm, %bb.k ], [ %i.bm, %bb.j ], [ %.0131, %.lr.ph.split ] ; 2 uses
  %i.br = add nsw i32 %.293.ph, 1                 ; 2 uses
  %i.bs = load i32, ptr %i.h, align 8, !tbaa !136 ; 2 uses
  %i.bt = icmp slt i32 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph.split, label %._crit_edge, !llvm.loop !198

._crit_edge:                                      ; preds = %bb.f, %bb.l, %bb.a
  %i.bu = phi i32 [ %.fr136, %bb.a ], [ %i.bq, %bb.l ], [ %i.al, %bb.f ] ; 2 uses
  %.094.lcssa = phi i32 [ 0, %bb.a ], [ %.296.ph, %bb.l ], [ %.296.ph.us, %bb.f ]
  %.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.2.ph, %bb.l ], [ %.2.ph.us, %bb.f ] ; 9 uses
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !108
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %._crit_edge
  %i.bx = icmp ne i32 %.fr136, 0
  %i.by = icmp ne i32 %i.bu, 0
  %or.cond3 = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %or.cond3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.59) #20
  br label %selectDb.exit114

bb.o:                                             ; preds = %bb.m, %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !137 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !103 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !103 ; 7 uses
  %i.cf = icmp eq ptr %i.e, %.0.lcssa
  br i1 %i.cf, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !64
  %i.ck = call i32 @sdscmp(ptr noundef %i.ch, ptr noundef %i.cj) #20
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.q, label %._crit_edge141

._crit_edge141:                                   ; preds = %bb.p
  %.pre142 = load i32, ptr %i.a, align 4
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 224), align 8, !tbaa !196
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.cm) #20
  br label %selectDb.exit114

bb.r:                                             ; preds = %._crit_edge141, %bb.o
  %i.cn = phi i32 [ %.pre142, %._crit_edge141 ], [ %i.bu, %bb.o ]
  %i.co = icmp ne i32 %.fr136, 0
  %i.cp = icmp ne i32 %i.cn, 0
  %or.cond5 = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond5, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !155
  %i.cr = add nsw i64 %i.cq, 1
  store i64 %i.cr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !155
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.ct = call ptr @lookupKey(ptr noundef %i.cs, ptr noundef %i.cc, i32 noundef 0, ptr noundef null) ; 11 uses
  %.not = icmp eq ptr %i.ct, null
  br i1 %.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !195
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.cu) #20
  br label %selectDb.exit114

bb.v:                                             ; preds = %bb.t
  %i.cv = call ptr @lookupKey(ptr noundef %.0.lcssa, ptr noundef %i.ce, i32 noundef 8, ptr noundef null) ; 2 uses
  %.not102 = icmp eq ptr %i.cv, null              ; 3 uses
  br i1 %.not102, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not103 = icmp eq i32 %.094.lcssa, 0
  br i1 %.not103, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !195
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.cw) #20
  br label %selectDb.exit114

bb.y:                                             ; preds = %bb.w
  %i.cx = load i64, ptr %i.cv, align 8
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = and i32 %i.cy, 15
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.y
  %i.da = phi i32 [ %i.cz, %bb.y ], [ -1, %bb.v ]
  %i.db = load i64, ptr %i.ct, align 8
  %i.dc = trunc i64 %i.db to i32
  %i.dd = and i32 %i.dc, 15                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 281474976710656, ptr %i.c, align 8, !tbaa !48
  switch i32 %i.dd, label %bb.ag [
    i32 0, label %bb.z
    i32 1, label %bb.aa
    i32 2, label %bb.ab
    i32 3, label %bb.ac
    i32 4, label %bb.ad
    i32 6, label %bb.ae
    i32 5, label %bb.af
  ]

bb.z:                                             ; preds = %.critedge
  %i.de = call ptr @dupStringObject(ptr noundef nonnull %i.ct) #20
  br label %.sink.split

bb.aa:                                            ; preds = %.critedge
  %i.df = call ptr @listTypeDup(ptr noundef nonnull %i.ct) #20
  br label %.sink.split

bb.ab:                                            ; preds = %.critedge
  %i.dg = call ptr @setTypeDup(ptr noundef nonnull %i.ct) #20
  br label %.sink.split

bb.ac:                                            ; preds = %.critedge
  %i.dh = call ptr @zsetDup(ptr noundef nonnull %i.ct) #20
  br label %.sink.split

bb.ad:                                            ; preds = %.critedge
  %i.di = call ptr @hashTypeDup(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.c) #20
  br label %.sink.split

bb.ae:                                            ; preds = %.critedge
  %i.dj = call ptr @streamDup(ptr noundef nonnull %i.ct) #20
  br label %.sink.split

bb.af:                                            ; preds = %.critedge
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 72
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !92
  %i.dm = call ptr @moduleTypeDupOrReply(ptr noundef nonnull %0, ptr noundef %i.cc, ptr noundef %i.ce, i32 noundef %i.dl, ptr noundef nonnull %i.ct) #20 ; 2 uses
  store ptr %i.dm, ptr %i.b, align 8, !tbaa !103
  %.not104 = icmp eq ptr %i.dm, null
  br i1 %.not104, label %bb.ar, label %bb.ah

bb.ag:                                            ; preds = %.critedge
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.60) #20
  br label %bb.ar

.sink.split:                                      ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.sink = phi ptr [ %i.dj, %bb.ae ], [ %i.di, %bb.ad ], [ %i.dh, %bb.ac ], [ %i.dg, %bb.ab ], [ %i.df, %bb.aa ], [ %i.de, %bb.z ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !103
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.af
  br i1 %.not102, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8368), align 8, !tbaa !122
  %i.do = call range(i32 0, 2) i32 @dbGenericDelete(ptr noundef %.0.lcssa, ptr noundef %i.ce, i32 noundef %i.dn, i32 noundef 1) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 0, ptr %i.dp, align 2, !tbaa !104
  store i16 0, ptr %1, align 8, !tbaa !107
  %2 = load i64, ptr %i.ct, align 8
  %3 = and i64 %2, 1095216660480
  %.not106 = icmp eq i64 %3, 0
  br i1 %.not106, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dq = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !92
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 72
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !92
  call void @keyMetaOnCopy(ptr noundef nonnull %i.ct, ptr noundef %i.cc, ptr noundef %i.ce, i32 noundef %i.ds, i32 noundef %i.du, ptr noundef nonnull %1) #20
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dv = call ptr @dbAddInternal(ptr noundef %.0.lcssa, ptr noundef %i.ce, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull %1)
  %i.dw = load i64, ptr %i.c, align 8, !tbaa !48
  %.not107 = icmp eq i64 %i.dw, 281474976710656
  br i1 %.not107, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !115
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !64
  %i.eb = call i32 @getKeySlot(ptr noundef %i.ea)
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !48
  call void @estoreAdd(ptr noundef %i.dy, i32 noundef %i.eb, ptr noundef %i.dv, i64 noundef %i.ec) #20
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ed = load ptr, ptr %i.bz, align 8, !tbaa !137
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !103 ; 2 uses
  call void @touchWatchedKey(ptr noundef %.0.lcssa, ptr noundef %i.ef) #20
  call void @trackingInvalidateKey(ptr noundef nonnull %0, ptr noundef %i.ef, i32 noundef 1) #20
  %i.eg = load ptr, ptr %i.bz, align 8, !tbaa !137
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !103
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 72 ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !92
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.61, ptr noundef %i.ei, i32 noundef %i.ek) #20
  br i1 %.not102, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.el = load ptr, ptr %i.bz, align 8, !tbaa !137
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !103
  %i.eo = load i32, ptr %i.ej, align 8, !tbaa !92
  call void @notifyKeyspaceEvent(i32 noundef 32768, ptr noundef nonnull @.str.8, ptr noundef %i.en, i32 noundef %i.eo) #20
  %.not108 = icmp eq i32 %i.da, %i.dd
  br i1 %.not108, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ep = load ptr, ptr %i.bz, align 8, !tbaa !137
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !103
  %i.es = load i32, ptr %i.ej, align 8, !tbaa !92
  call void @notifyKeyspaceEvent(i32 noundef 65536, ptr noundef nonnull @.str.9, ptr noundef %i.er, i32 noundef %i.es) #20
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.an
  %i.et = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !141
  %i.eu = add nsw i64 %i.et, 1
  store i64 %i.eu, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !141
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 32), align 8, !tbaa !197
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ev) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.af, %bb.aq, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %selectDb.exit114

selectDb.exit114:                                 ; preds = %bb.c, %bb.h, %.split134.us, %.split.us, %bb.q, %bb.u, %bb.ar, %bb.x, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

declare ptr @dupStringObject(ptr noundef) local_unnamed_addr #2

declare ptr @listTypeDup(ptr noundef) local_unnamed_addr #2

declare ptr @setTypeDup(ptr noundef) local_unnamed_addr #2

declare ptr @zsetDup(ptr noundef) local_unnamed_addr #2

declare ptr @hashTypeDup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @streamDup(ptr noundef) local_unnamed_addr #2

declare ptr @moduleTypeDupOrReply(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @keyMetaOnCopy(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @scanDatabaseForReadyKeys(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  call void @dictInitSafeIterator(ptr noundef nonnull %1, ptr noundef %i.b) #20
  %i.c = call ptr @dictNext(ptr noundef nonnull %1) #20 ; 2 uses
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %dbFind.exit.thread
  %i.d = phi ptr [ %i.o, %dbFind.exit.thread ], [ %i.c, %bb.a ]
  %i.e = call ptr @dictGetKey(ptr noundef nonnull %i.d) #20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !49
  %i.i = call i32 @getKeySlot(ptr noundef %i.g)
  %i.j = call ptr @kvstoreDictFind(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %i.g) #20 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %dbFind.exit.thread, label %dbFind.exit

dbFind.exit:                                      ; preds = %.lr.ph
  %i.k = call ptr @dictGetKey(ptr noundef nonnull %i.j) #20 ; 2 uses
  %.not9 = icmp eq ptr %i.k, null
  br i1 %.not9, label %dbFind.exit.thread, label %bb.b

bb.b:                                             ; preds = %dbFind.exit
  %i.l = load i64, ptr %i.k, align 8
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 15
  call void @signalKeyAsReady(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i32 noundef %i.n) #20
  br label %dbFind.exit.thread

dbFind.exit.thread:                               ; preds = %.lr.ph, %bb.b, %dbFind.exit
  %i.o = call ptr @dictNext(ptr noundef nonnull %1) #20 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !199

._crit_edge:                                      ; preds = %dbFind.exit.thread, %bb.a
  call void @dictResetIterator(ptr noundef nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void
}

declare void @dictInitSafeIterator(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dictNext(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @dbFind(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49
  %i.b = tail call i32 @getKeySlot(ptr noundef %1)
  %i.c = tail call ptr @kvstoreDictFind(ptr noundef %i.a, i32 noundef %i.b, ptr noundef %1) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %dbFindGeneric.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @dictGetKey(ptr noundef nonnull %i.c) #20
  br label %dbFindGeneric.exit

dbFindGeneric.exit:                               ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %i.e
}

declare void @dictResetIterator(ptr noundef) local_unnamed_addr #2

declare i32 @slotRangeArrayContains(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @dbSwapDatabases(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !130 ; 2 uses
  %i.c = icmp slt i32 %0, %i.b
  %i.d = icmp sgt i32 %1, -1
  %or.cond.not42 = and i1 %i.d, %i.c
  %.not = icmp slt i32 %1, %i.b
  %or.cond39 = and i1 %.not, %or.cond.not42
  br i1 %or.cond39, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %0, %1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !128 ; 2 uses
  %i.g = zext nneg i32 %0 to i64
  %i.h = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %i.g ; 9 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !200
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.i = zext nneg i32 %1 to i64
  %i.j = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %i.i ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 2 uses
  %i.m = load <2 x i64>, ptr %.sroa.626.0..sroa_idx, align 8, !tbaa !110
  %i.n = load <2 x ptr>, ptr %i.h, align 8, !tbaa !201
  tail call void @touchAllWatchedKeysInDb(ptr noundef nonnull %i.h, ptr noundef %i.j, ptr noundef null) #20
  tail call void @touchAllWatchedKeysInDb(ptr noundef %i.j, ptr noundef nonnull %i.h, ptr noundef null) #20
  tail call void @scanDatabaseForDeletedKeys(ptr noundef nonnull %i.h, ptr noundef %i.j, ptr noundef null)
end_hunk_4
