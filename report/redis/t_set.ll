inline.NumInlined: 81
inline.NumDeleted: 6
begin_hunk_0_@spopCommand:bb.a
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.o, align 8
  %i.s = trunc i64 %i.r to i32
  %i.t = lshr i32 %i.s, 4
  %i.u = and i32 %i.t, 15
  switch i32 %i.u, label %bb.k [
    i32 2, label %bb.h
    i32 6, label %bb.i
    i32 11, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !58
  %i.ab = add i64 %i.aa, %i.y
  br label %setTypeSize.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = tail call i32 @intsetLen(ptr noundef %i.ad) #11
  %i.af = zext i32 %i.ae to i64
  br label %setTypeSize.exit

bb.j:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.ai = tail call i64 @lpLength(ptr noundef %i.ah) #11
  br label %setTypeSize.exit

bb.k:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit:                                 ; preds = %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.ab, %bb.h ], [ %i.af, %bb.i ], [ %i.ai, %bb.j ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !70
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !47
  %i.aq = tail call i32 @getKeySlot(ptr noundef %i.ap) #11
  %i.ar = add i64 %.0.i, -1
  tail call void @updateKeysizesHist(ptr noundef %i.ak, i32 noundef %i.aq, i32 noundef 2, i64 noundef %.0.i, i64 noundef %i.ar) #11
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not42 = icmp eq i32 %i.as, 0
  br i1 %.not42, label %bb.m, label %bb.l

bb.l:                                             ; preds = %setTypeSize.exit
  %i.at = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.o) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %setTypeSize.exit
  %.039 = phi i64 [ %i.at, %bb.l ], [ 0, %setTypeSize.exit ]
  %i.au = tail call ptr @setTypePopRandom(ptr noundef nonnull %i.o) ; 3 uses
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not43 = icmp eq i32 %i.av, 0
  br i1 %.not43, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !70
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !84
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.bc = tail call i32 @getKeySlot(ptr noundef %i.bb) #11
  %i.bd = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.o) #11
  tail call void @updateSlotAllocSize(ptr noundef %i.aw, i32 noundef %i.bc, ptr noundef nonnull %i.o, i64 noundef %.039, i64 noundef %i.bd) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !84
  %i.bh = load ptr, ptr %i.aj, align 8, !tbaa !70
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !88
  tail call void @notifyKeyspaceEvent(i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef %i.bg, i32 noundef %i.bj) #11
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 528), align 8, !tbaa !99
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !84
  tail call void (ptr, i32, ...) @rewriteClientCommandVector(ptr noundef nonnull %0, i32 noundef 3, ptr noundef %i.bk, ptr noundef %i.bn, ptr noundef %i.au) #11
  tail call void @addReplyBulk(ptr noundef nonnull %0, ptr noundef %i.au) #11
  tail call void @decrRefCount(ptr noundef %i.au) #11
  %i.bo = load i64, ptr %i.o, align 8
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = lshr i32 %i.bp, 4
  %i.br = and i32 %i.bq, 15
  switch i32 %i.br, label %bb.s [
    i32 2, label %bb.p
    i32 6, label %bb.q
    i32 11, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !47 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !58
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !58
  %i.by = add i64 %i.bx, %i.bv
  br label %setTypeSize.exit47

bb.q:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !47
  %i.cb = tail call i32 @intsetLen(ptr noundef %i.ca) #11
  %i.cc = zext i32 %i.cb to i64
  br label %setTypeSize.exit47

bb.r:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !47
  %i.cf = tail call i64 @lpLength(ptr noundef %i.ce) #11
  br label %setTypeSize.exit47

bb.s:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit47:                               ; preds = %bb.p, %bb.q, %bb.r
  %.0.i46 = phi i64 [ %i.by, %bb.p ], [ %i.cc, %bb.q ], [ %i.cf, %bb.r ]
  %.not45 = icmp eq i64 %.0.i46, 0
  br i1 %.not45, label %bb.t, label %bb.u

bb.t:                                             ; preds = %setTypeSize.exit47
  %i.cg = load ptr, ptr %i.aj, align 8, !tbaa !70
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !84
  %i.ck = tail call i32 @dbDelete(ptr noundef %i.cg, ptr noundef %i.cj) #11 ; 0 uses
  %i.cl = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !84
  %i.co = load ptr, ptr %i.aj, align 8, !tbaa !70
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !88
  tail call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef %i.cn, i32 noundef %i.cq) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %setTypeSize.exit47
  %i.cr = phi ptr [ null, %bb.t ], [ %i.o, %setTypeSize.exit47 ]
  %i.cs = load ptr, ptr %i.aj, align 8, !tbaa !70
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !84
  tail call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.cs, ptr noundef %i.cv, ptr noundef %i.cr, i32 noundef 1) #11
  %i.cw = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  %i.cx = add nsw i64 %i.cw, 1
  store i64 %i.cx, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

declare void @addReplyErrorObject(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @srandmemberWithCountCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = alloca i64, align 8                      ; 12 uses
  %i.d = alloca i64, align 8                      ; 14 uses
  %1 = alloca %struct.setTypeIterator, align 8    ; 7 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.setTypeIterator, align 8    ; 6 uses
  %3 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 0, ptr %i.c, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i64 0, ptr %i.d, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !84
  %i.k = call i32 @getRangeLongFromObjectOrReply(ptr noundef %0, ptr noundef %i.j, i64 noundef -9223372036854775807, i64 noundef 9223372036854775807, ptr noundef nonnull %i.a, ptr noundef null) #11
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.a, align 8, !tbaa !58   ; 7 uses
  %.0 = call i64 @llvm.abs.i64(i64 %i.l, i1 false) ; 11 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !84
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !124
  %i.q = call ptr @lookupKeyReadOrReply(ptr noundef nonnull %0, ptr noundef %i.o, ptr noundef %i.p) #11 ; 14 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.q, i32 noundef 2) #11
  %.not133 = icmp eq i32 %i.s, 0
  br i1 %.not133, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.q, align 8
  %i.u = trunc i64 %i.t to i32
  %i.v = lshr i32 %i.u, 4
  %i.w = and i32 %i.v, 15
  switch i32 %i.w, label %bb.h [
    i32 2, label %bb.e
    i32 6, label %bb.f
    i32 11, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !58
  %i.ad = add i64 %i.ac, %i.aa
  br label %setTypeSize.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47
  %i.ag = call i32 @intsetLen(ptr noundef %i.af) #11
  %i.ah = zext i32 %i.ag to i64
  br label %setTypeSize.exit

bb.g:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47
  %i.ak = call i64 @lpLength(ptr noundef %i.aj) #11
  br label %setTypeSize.exit

bb.h:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  call void @abort() #12
  unreachable

setTypeSize.exit:                                 ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.ad, %bb.e ], [ %i.ah, %bb.f ], [ %i.ak, %bb.g ] ; 9 uses
  %i.al = icmp eq i64 %i.l, 0
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %setTypeSize.exit
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !124
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.am) #11
  br label %.loopexit

bb.j:                                             ; preds = %setTypeSize.exit
  %i.an = icmp eq i64 %.0, 1
  %.narrow = icmp slt i64 %i.l, -1
  %or.cond = or i1 %.narrow, %i.an
  br i1 %or.cond, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %.0) #11
  %i.ao = load i64, ptr %i.q, align 8
  %i.ap = and i64 %i.ao, 240
  %i.aq = icmp eq i64 %i.ap, 176
  %i.ar = icmp ne i64 %.0, 1
  %or.cond3 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond3, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.at = call i64 @llvm.umin.i64(i64 %.0, i64 1000) ; 2 uses
  %i.au = mul nuw nsw i64 %i.at, 24
  %i.av = call noalias ptr @zmalloc(i64 noundef %i.au) #13 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge160
  %.1 = phi i64 [ %.0, %bb.l ], [ %i.az, %._crit_edge160 ] ; 3 uses
  %i.ay = call i64 @llvm.umin.i64(i64 %.1, i64 %i.at) ; 3 uses
  %i.az = sub i64 %.1, %i.ay                      ; 2 uses
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !47
  %i.bb = trunc nuw nsw i64 %i.ay to i32
  call void @lpRandomEntries(ptr noundef %i.ba, i32 noundef %i.bb, ptr noundef %i.av) #11
  %.not161 = icmp eq i64 %.1, 0
  br i1 %.not161, label %._crit_edge160, label %.lr.ph159

._crit_edge160:                                   ; preds = %bb.p, %bb.m
  %i.bc = load i64, ptr %i.ax, align 8, !tbaa !125
  %i.bd = and i64 %i.bc, 1024
  %i.be = icmp eq i64 %i.bd, 0
  %i.bf = icmp ne i64 %i.az, 0
  %or.cond5 = and i1 %i.bf, %i.be
  br i1 %or.cond5, label %bb.m, label %bb.q, !llvm.loop !126

.lr.ph159:                                        ; preds = %bb.m, %bb.p
  %.0119157 = phi i64 [ %i.bn, %bb.p ], [ 0, %bb.m ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.0119157 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !127 ; 2 uses
  %.not141 = icmp eq ptr %i.bh, null
  br i1 %.not141, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph159
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !129
  %i.bk = zext i32 %i.bj to i64
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.bh, i64 noundef %i.bk) #11
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph159
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !130
  call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.bm) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bn = add nuw nsw i64 %.0119157, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %i.ay
  br i1 %exitcond.not, label %._crit_edge160, label %.lr.ph159, !llvm.loop !131

bb.q:                                             ; preds = %._crit_edge160
  call void @zfree(ptr noundef %i.av) #11
  br label %.loopexit

bb.r:                                             ; preds = %bb.u, %.preheader
  %.in = phi i64 [ %.0, %.preheader ], [ %i.bo, %bb.u ]
  %i.bo = add i64 %.in, -1                        ; 2 uses
  %i.bp = call i32 @setTypeRandomElement(ptr noundef nonnull %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = load i64, ptr %i.d, align 8, !tbaa !58
  call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.bs) #11
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bt = load i64, ptr %i.c, align 8, !tbaa !58
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.bq, i64 noundef %i.bt) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bu = load i64, ptr %i.as, align 8, !tbaa !125
  %i.bv = and i64 %i.bu, 1024
  %.not140 = icmp ne i64 %i.bv, 0
  %.not139 = icmp eq i64 %i.bo, 0
  %or.cond175 = select i1 %.not140, i1 true, i1 %.not139
  br i1 %or.cond175, label %.loopexit, label %bb.r, !llvm.loop !132

bb.v:                                             ; preds = %bb.j
  %.not134 = icmp ult i64 %i.l, %.0.i
  br i1 %.not134, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %.0.i) #11
  call void @setTypeInitIterator(ptr noundef nonnull %1, ptr noundef nonnull %i.q)
  %i.bw = call i32 @setTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not138145 = icmp eq i32 %i.bw, -1
  br i1 %.not138145, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w, %bb.z
  %.0114146 = phi i64 [ %i.cb, %bb.z ], [ %.0.i, %bb.w ]
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph
  %i.bz = load i64, ptr %i.d, align 8, !tbaa !58
  call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.bz) #11
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !58
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.bx, i64 noundef %i.ca) #11
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cb = add i64 %.0114146, -1                   ; 2 uses
  %i.cc = call i32 @setTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not138 = icmp eq i32 %i.cc, -1
  br i1 %.not138, label %._crit_edge, label %.lr.ph, !llvm.loop !133

._crit_edge:                                      ; preds = %bb.z, %bb.w
  %.0114.lcssa = phi i64 [ %.0.i, %bb.w ], [ %i.cb, %bb.z ]
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !55
  %i.cf = icmp eq i32 %i.ce, 2
  br i1 %i.cf, label %bb.aa, label %setTypeResetIterator.exit

bb.aa:                                            ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @dictResetIterator(ptr noundef nonnull %i.cg) #11
  br label %setTypeResetIterator.exit

setTypeResetIterator.exit:                        ; preds = %._crit_edge, %bb.aa
  %i.ch = icmp eq i64 %.0114.lcssa, 0
  br i1 %i.ch, label %bb.ac, label %bb.ab, !prof !49

bb.ab:                                            ; preds = %setTypeResetIterator.exit
  call void @_serverAssert(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1199) #11
  call void @abort() #12
  unreachable

bb.ac:                                            ; preds = %setTypeResetIterator.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %.loopexit

bb.ad:                                            ; preds = %bb.v
  %i.ci = load i64, ptr %i.q, align 8
  %i.cj = and i64 %i.ci, 240
  %i.ck = icmp eq i64 %i.cj, 176
  br i1 %i.ck, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !47 ; 3 uses
  %i.cn = call ptr @lpFirst(ptr noundef %i.cm) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i32 0, ptr %i.e, align 4, !tbaa !9
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.l) #11
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ai
  %.3156 = phi i64 [ %.0, %bb.ae ], [ %i.co, %bb.ai ] ; 2 uses
  %.0117155 = phi ptr [ %i.cn, %bb.ae ], [ %i.cw, %bb.ai ]
  %i.co = add nsw i64 %.3156, -1                  ; 2 uses
  %i.cp = trunc i64 %.3156 to i32
  %i.cq = call ptr @lpNextRandom(ptr noundef %i.cm, ptr noundef %.0117155, ptr noundef nonnull %i.e, i32 noundef %i.cp, i32 noundef 1) #11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.cr = call ptr @lpGetValue(ptr noundef %i.cq, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d) #11 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i64, ptr %i.d, align 8, !tbaa !58
  call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.ct) #11
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.cu = load i32, ptr %i.f, align 4, !tbaa !9
  %i.cv = zext i32 %i.cu to i64
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.cr, i64 noundef %i.cv) #11
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cw = call ptr @lpNext(ptr noundef %i.cm, ptr noundef %i.cq) #11
  %i.cx = load i32, ptr %i.e, align 4, !tbaa !9
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  %.not137 = icmp eq i64 %i.co, 0
  br i1 %.not137, label %bb.aj, label %bb.af, !llvm.loop !134
end_hunk_0
