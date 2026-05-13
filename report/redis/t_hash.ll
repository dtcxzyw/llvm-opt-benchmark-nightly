inline.NumInlined: 166
inline.NumDeleted: 15
begin_hunk_0_@hashTypeConvertListpackEx:bb.a

bb.j:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1332, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

hashTypeLength.exit:                              ; preds = %bb.g, %bb.i, %bb.h
  %.1.i = phi i64 [ %i.aa, %bb.g ], [ %i.al, %bb.i ], [ %i.af, %bb.h ]
  %i.am = tail call i32 @dictExpand(ptr noundef %i.t, i64 noundef %.1.i) #13 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !66
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 70 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = or i16 %i.aq, 256
  store i16 %i.ar, ptr %i.ap, align 2
  store ptr %1, ptr %3, align 8, !tbaa !127
  %i.as = load i64, ptr %1, align 8
  %i.at = trunc i64 %i.as to i32
  %i.au = lshr i32 %i.at, 4
  %i.av = and i32 %i.au, 15                       ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !130
  switch i32 %i.av, label %bb.m [
    i32 11, label %bb.k
    i32 12, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %hashTypeLength.exit, %hashTypeLength.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  store i64 281474976710656, ptr %i.ay, align 8, !tbaa !131
  br label %hashTypeInitIterator.exit

bb.l:                                             ; preds = %hashTypeLength.exit
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !15
  call void @dictInitIterator(ptr noundef nonnull %i.az, ptr noundef %i.ba) #13
  br label %hashTypeInitIterator.exit

bb.m:                                             ; preds = %hashTypeLength.exit
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1368, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

hashTypeInitIterator.exit:                        ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bb = call i32 @hashTypeNext(ptr noundef nonnull %3, i32 noundef 0)
  %.not4147 = icmp eq i32 %i.bb, -1
  br i1 %.not4147, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %hashTypeInitIterator.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.r
  %i.bd = call ptr @hashTypeCurrentObjectNewEntry(ptr noundef nonnull %3, ptr noundef nonnull %i.a) ; 3 uses
  %i.be = call i32 @dictAdd(ptr noundef nonnull %i.t, ptr noundef %i.bd, ptr noundef null) #13
  %.not43 = icmp eq i32 %i.be, 0
  br i1 %.not43, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @entryFree(ptr noundef %i.bd, ptr noundef null) #13
  call void @hashTypeResetIterator(ptr noundef nonnull %3)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !18 ; 2 uses
  %i.bh = call i64 @lpBytes(ptr noundef %i.bg) #13
  call void @serverLogHexDump(i32 noundef 3, ptr noundef nonnull @.str.26, ptr noundef %i.bg, i64 noundef %i.bh) #13
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1701, ptr noundef nonnull @.str.27) #13
  call void @abort() #14
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bj = load i64, ptr %i.an, align 8, !tbaa !13
  %i.bk = add i64 %i.bj, %i.bi
  store i64 %i.bk, ptr %i.an, align 8, !tbaa !13
  %i.bl = load i64, ptr %i.bc, align 8, !tbaa !131 ; 2 uses
  %.not44 = icmp eq i64 %i.bl, 281474976710656
  br i1 %.not44, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = call i32 @ebAdd(ptr noundef nonnull %i.ao, ptr noundef nonnull @hashFieldExpireBucketsType, ptr noundef %i.bd, i64 noundef %i.bl) #13 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bn = call i32 @hashTypeNext(ptr noundef nonnull %3, i32 noundef 0)
  %.not41 = icmp eq i32 %i.bn, -1
  br i1 %.not41, label %._crit_edge, label %bb.n, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.r, %hashTypeInitIterator.exit
  %i.bo = load i32, ptr %i.aw, align 8, !tbaa !130
  %i.bp = icmp eq i32 %i.bo, 2
  br i1 %i.bp, label %bb.s, label %hashTypeResetIterator.exit

bb.s:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @dictResetIterator(ptr noundef nonnull %i.bq) #13
  br label %hashTypeResetIterator.exit

hashTypeResetIterator.exit:                       ; preds = %._crit_edge, %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !18
  call void @lpFree(ptr noundef %i.bs) #13
  call void @zfree(ptr noundef %i.f) #13
  %i.bt = load i64, ptr %1, align 8
  %i.bu = and i64 %i.bt, -241
  %i.bv = or disjoint i64 %i.bu, 32
  store i64 %i.bv, ptr %1, align 8
  store ptr %i.t, ptr %i.e, align 8, !tbaa !15
  %.not42 = icmp eq i64 %.0, 281474976710656
  br i1 %.not42, label %bb.u, label %bb.t

bb.t:                                             ; preds = %hashTypeResetIterator.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !126
  call void @estoreAdd(ptr noundef %i.bx, i32 noundef %.036, ptr noundef nonnull %1, i64 noundef %.0) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %hashTypeResetIterator.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.w

bb.v:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1717, ptr noundef nonnull @.str.8, i32 noundef %2) #13
  tail call void @abort() #14
  unreachable

bb.w:                                             ; preds = %bb.c, %bb.u
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @hashTypeDup(ptr noundef %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.hashTypeIterator, align 8   ; 12 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.b = load i64, ptr %0, align 8                ; 2 uses
  %i.c = and i64 %i.b, 15
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 1743) #13
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.b to i32
  %i.f = lshr i32 %i.e, 4
  %i.g = and i32 %i.f, 15
  switch i32 %i.g, label %bb.ai [
    i32 11, label %bb.d
    i32 12, label %bb.e
    i32 2, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 2 uses
  %i.j = tail call i64 @lpBytes(ptr noundef %i.i) #13 ; 2 uses
  %i.k = tail call noalias ptr @zmalloc(i64 noundef %i.j) #15 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.i, i64 %i.j, i1 false)
  %i.l = tail call ptr @createObject(i32 noundef 4, ptr noundef %i.k) #13 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, -241
  %i.o = or disjoint i64 %i.n, 176
  store i64 %i.o, ptr %i.l, align 8
  br label %bb.aj

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.s = load i16, ptr %i.r, align 2
  %i.t = and i16 %i.s, 256
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val56 = load i32, ptr %i.q, align 8, !tbaa !79
  %i.v = getelementptr i8, ptr %i.q, i64 4
  %.val57 = load i16, ptr %i.v, align 4, !tbaa !80
  %i.w = zext i16 %.val57 to i64
  %i.x = shl nuw nsw i64 %i.w, 32
  %i.y = zext i32 %.val56 to i64
  %i.z = or disjoint i64 %i.x, %i.y
  store i64 %i.z, ptr %1, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = tail call noalias dereferenceable_or_null(24) ptr @zcalloc(i64 noundef 24) #15 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 6 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = or i16 %i.ac, 256
  store i16 %i.ad, ptr %i.ab, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.ah = tail call i64 @lpBytes(ptr noundef %i.ag) #13 ; 2 uses
  %i.ai = tail call ptr @lpNew(i64 noundef %i.ah) #13 ; 2 uses
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !18
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.aj, i64 %i.ah, i1 false)
  %i.ak = tail call ptr @createObject(i32 noundef 4, ptr noundef %i.aa) #13 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = and i64 %i.al, -241
  %i.an = or disjoint i64 %i.am, 192
  store i64 %i.an, ptr %i.ak, align 8
  br label %bb.aj

bb.h:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !15
  %.val = load ptr, ptr %i.ap, align 8, !tbaa !64
  %.not = icmp eq ptr %.val, @entryHashDictTypeWithHFE
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call ptr @dictCreate(ptr noundef nonnull @entryHashDictType) #13
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ar = tail call ptr @dictCreate(ptr noundef nonnull @entryHashDictTypeWithHFE) #13 ; 5 uses
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !15 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 56 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  store ptr null, ptr %i.au, align 8, !tbaa !66
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 70 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = or i16 %i.aw, 256
  store i16 %i.ax, ptr %i.av, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 70
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = and i16 %i.az, 256
  %i.bb = icmp eq i16 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %.val54 = load i32, ptr %i.bc, align 8, !tbaa !79
  %i.bd = getelementptr i8, ptr %i.as, i64 68
  %.val55 = load i16, ptr %i.bd, align 4, !tbaa !80
  %i.be = zext i16 %.val55 to i64
  %i.bf = shl nuw nsw i64 %i.be, 32
  %i.bg = zext i32 %.val54 to i64
  %i.bh = or disjoint i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %1, align 8, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.051 = phi ptr [ %i.ar, %bb.k ], [ %i.ar, %bb.j ], [ %i.aq, %bb.i ] ; 4 uses
  %.049 = phi ptr [ %i.at, %bb.k ], [ %i.at, %bb.j ], [ null, %bb.i ]
  %i.bi = load ptr, ptr %i.ao, align 8, !tbaa !15 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !13
  %i.bn = add i64 %i.bm, %i.bk
  %i.bo = tail call i32 @dictExpand(ptr noundef %.051, i64 noundef %i.bn) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bp = getelementptr inbounds nuw i8, ptr %.051, i64 56 ; 2 uses
  store ptr %0, ptr %2, align 8, !tbaa !127
  %i.bq = load i64, ptr %0, align 8
  %i.br = trunc i64 %i.bq to i32
  %i.bs = lshr i32 %i.br, 4
  %i.bt = and i32 %i.bs, 15                       ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !130
  switch i32 %i.bt, label %bb.o [
    i32 11, label %bb.m
    i32 12, label %bb.m
    i32 2, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  store i64 281474976710656, ptr %i.bw, align 8, !tbaa !131
  br label %hashTypeInitIterator.exit

bb.n:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.by = load ptr, ptr %i.ao, align 8, !tbaa !15
  call void @dictInitIterator(ptr noundef nonnull %i.bx, ptr noundef %i.by) #13
  br label %hashTypeInitIterator.exit

bb.o:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1368, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

hashTypeInitIterator.exit:                        ; preds = %bb.m, %bb.n
  %i.bz = call i32 @hashTypeNext(ptr noundef nonnull %2, i32 noundef 0)
  %.not5364 = icmp eq i32 %i.bz, -1
  br i1 %.not5364, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %hashTypeInitIterator.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %.049, i64 24
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.ag
  %i.cd = load i32, ptr %i.bu, align 8, !tbaa !130
  %i.ce = icmp eq i32 %i.cd, 2
  br i1 %i.ce, label %bb.r, label %bb.q, !prof !22

bb.q:                                             ; preds = %bb.p
  call void @_serverAssert(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 1497) #13
  call void @abort() #14
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !132
  %i.cg = call ptr @dictGetKey(ptr noundef %i.cf) #13 ; 6 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  %.val.i.i = load i8, ptr %i.ch, align 1, !tbaa !73 ; 2 uses
  %i.ci = and i8 %.val.i.i, 7
  switch i8 %i.ci, label %hashTypeCurrentFromHashTable.exit [
    i8 0, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.cj = lshr i8 %.val.i.i, 3
  %i.ck = zext nneg i8 %i.cj to i64
  br label %hashTypeCurrentFromHashTable.exit

bb.t:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds i8, ptr %i.cg, i64 -3
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !73
  %i.cn = zext i8 %i.cm to i64
  br label %hashTypeCurrentFromHashTable.exit

bb.u:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds i8, ptr %i.cg, i64 -5
  %i.cp = load i16, ptr %i.co, align 1, !tbaa !74
  %i.cq = zext i16 %i.cp to i64
  br label %hashTypeCurrentFromHashTable.exit

bb.v:                                             ; preds = %bb.r
  %i.cr = getelementptr inbounds i8, ptr %i.cg, i64 -9
  %i.cs = load i32, ptr %i.cr, align 1, !tbaa !9
  %i.ct = zext i32 %i.cs to i64
  br label %hashTypeCurrentFromHashTable.exit

bb.w:                                             ; preds = %bb.r
  %i.cu = getelementptr inbounds i8, ptr %i.cg, i64 -17
  %i.cv = load i64, ptr %i.cu, align 1, !tbaa !13
  br label %hashTypeCurrentFromHashTable.exit

hashTypeCurrentFromHashTable.exit:                ; preds = %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %storemerge.i = phi i64 [ 0, %bb.r ], [ %i.cv, %bb.w ], [ %i.ck, %bb.s ], [ %i.cn, %bb.t ], [ %i.cq, %bb.u ], [ %i.ct, %bb.v ]
  %i.cw = load i64, ptr %i.cb, align 8, !tbaa !131 ; 2 uses
  %i.cx = load i32, ptr %i.bu, align 8, !tbaa !130
  %i.cy = icmp eq i32 %i.cx, 2
  br i1 %i.cy, label %bb.y, label %bb.x, !prof !22

bb.x:                                             ; preds = %hashTypeCurrentFromHashTable.exit
  call void @_serverAssert(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 1497) #13
  call void @abort() #14
  unreachable

bb.y:                                             ; preds = %hashTypeCurrentFromHashTable.exit
  %i.cz = load ptr, ptr %i.ca, align 8, !tbaa !132
  %i.da = call ptr @dictGetKey(ptr noundef %i.cz) #13
  %i.db = call ptr @entryGetValue(ptr noundef %i.da) #13 ; 6 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 -1
  %.val.i16.i = load i8, ptr %i.dc, align 1, !tbaa !73 ; 2 uses
  %i.dd = and i8 %.val.i16.i, 7
  switch i8 %i.dd, label %hashTypeCurrentFromHashTable.exit59 [
    i8 0, label %bb.z
    i8 1, label %bb.aa
    i8 2, label %bb.ab
    i8 3, label %bb.ac
    i8 4, label %bb.ad
  ]

bb.z:                                             ; preds = %bb.y
  %i.de = lshr i8 %.val.i16.i, 3
  %i.df = zext nneg i8 %i.de to i64
  br label %hashTypeCurrentFromHashTable.exit59

bb.aa:                                            ; preds = %bb.y
  %i.dg = getelementptr inbounds i8, ptr %i.db, i64 -3
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !73
  %i.di = zext i8 %i.dh to i64
  br label %hashTypeCurrentFromHashTable.exit59

bb.ab:                                            ; preds = %bb.y
  %i.dj = getelementptr inbounds i8, ptr %i.db, i64 -5
  %i.dk = load i16, ptr %i.dj, align 1, !tbaa !74
end_hunk_0
begin_hunk_1_@parseHashFieldExpireArgs:bb.a
  store i32 %i.by, ptr %3, align 4, !tbaa !9
  br label %bb.bh

parseExpireTime.exit157.thread:                   ; preds = %bb.af, %bb.ah, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.thread173

bb.al:                                            ; preds = %bb.ac
  %i.ch = call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.67) #16
  %.not135 = icmp eq i32 %i.ch, 0
  br i1 %.not135, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.ci = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %i.cj = and i32 %i.ci, 63
  %.not136 = icmp eq i32 %i.cj, 0
  br i1 %.not136, label %bb.an, label %bb.bn

bb.an:                                            ; preds = %bb.am
  %i.ck = add nsw i32 %i.k, -1
  %.not137 = icmp slt i32 %.0111203, %i.ck
  br i1 %.not137, label %bb.ao, label %bb.bl

bb.ao:                                            ; preds = %bb.an
  %i.cl = or disjoint i32 %i.ci, 8
  store i32 %i.cl, ptr %1, align 4, !tbaa !9
  %i.cm = add nsw i32 %.0111203, 1                ; 3 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.cq = call i32 @getLongLongFromObjectOrReply(ptr noundef %0, ptr noundef %i.cp, ptr noundef nonnull %i.a, ptr noundef null) #13
  %.not.i158 = icmp eq i32 %i.cq, 0
  br i1 %.not.i158, label %bb.ap, label %parseExpireTime.exit160.thread

bb.ap:                                            ; preds = %bb.ao
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !27  ; 3 uses
  %i.cs = icmp slt i64 %i.cr, 0
  br i1 %i.cs, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.78) #13
  br label %parseExpireTime.exit160.thread

bb.ar:                                            ; preds = %bb.ap
  %i.ct = icmp samesign ugt i64 %i.cr, 70368744177663
  br i1 %i.ct, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @addReplyErrorExpireTime(ptr noundef %0) #13
  br label %parseExpireTime.exit160.thread

parseExpireTime.exit160.thread:                   ; preds = %bb.ao, %bb.aq, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.thread173

bb.at:                                            ; preds = %bb.ar
  store i64 %i.cr, ptr %2, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  store i32 %i.cm, ptr %3, align 4, !tbaa !9
  br label %bb.bh

bb.au:                                            ; preds = %bb.al
  %i.cu = call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.68) #16
  %.not139 = icmp eq i32 %i.cu, 0
  br i1 %.not139, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.cv = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %i.cw = and i32 %i.cv, 31
  %.not140 = icmp eq i32 %i.cw, 0
  br i1 %.not140, label %bb.aw, label %bb.bn

bb.aw:                                            ; preds = %bb.av
  %i.cx = or disjoint i32 %i.cv, 16
  store i32 %i.cx, ptr %1, align 4, !tbaa !9
  br label %bb.bh

bb.ax:                                            ; preds = %bb.au
  %i.cy = call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.69) #16
  %.not141 = icmp eq i32 %i.cy, 0
  br i1 %.not141, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.cz = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %i.da = and i32 %i.cz, 47
  %.not142 = icmp eq i32 %i.da, 0
  br i1 %.not142, label %bb.az, label %bb.bn

bb.az:                                            ; preds = %bb.ay
  %i.db = or disjoint i32 %i.cz, 32
  store i32 %i.db, ptr %1, align 4, !tbaa !9
  br label %bb.bh

bb.ba:                                            ; preds = %bb.ax
  %i.dc = call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.70) #16
  %.not143 = icmp eq i32 %i.dc, 0
  br i1 %.not143, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.dd = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %i.de = and i32 %i.dd, 192
  %.not144 = icmp eq i32 %i.de, 0
  br i1 %.not144, label %bb.bc, label %bb.bm

bb.bc:                                            ; preds = %bb.bb
  %i.df = or disjoint i32 %i.dd, 64
  store i32 %i.df, ptr %1, align 4, !tbaa !9
  br label %bb.bh

bb.bd:                                            ; preds = %bb.ba
  %i.dg = call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.71) #16
  %.not145 = icmp eq i32 %i.dg, 0
  br i1 %.not145, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.dh = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %i.di = and i32 %i.dh, 192
  %.not146 = icmp eq i32 %i.di, 0
  br i1 %.not146, label %bb.bf, label %bb.bm

bb.bf:                                            ; preds = %bb.be
  %i.dj = or disjoint i32 %i.dh, 128
  store i32 %i.dj, ptr %1, align 4, !tbaa !9
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bd
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef %0, ptr noundef nonnull @.str.72, ptr noundef %i.q) #13
  br label %.thread173

bb.bh:                                            ; preds = %bb.h, %bb.ab, %bb.at, %bb.az, %bb.bf, %bb.bc, %bb.aw, %bb.ak, %bb.s
  %.3114 = phi i32 [ %.0111203, %bb.bf ], [ %.0111203, %bb.bc ], [ %.0111203, %bb.az ], [ %.0111203, %bb.aw ], [ %i.cm, %bb.at ], [ %i.by, %bb.ak ], [ %i.bi, %bb.ab ], [ %i.aq, %bb.s ], [ %i.ak, %bb.h ]
  %i.dk = add nsw i32 %.3114, 1                   ; 2 uses
  %i.dl = load i32, ptr %i.f, align 8, !tbaa !153 ; 2 uses
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.b, label %._crit_edge, !llvm.loop !159

._crit_edge:                                      ; preds = %bb.bh, %bb.a
  %cond151 = icmp eq i32 %6, 0
  %i.dn = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  br i1 %cond151, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %._crit_edge
  %i.do = and i32 %i.dn, 224
  %.not148 = icmp eq i32 %i.do, 0
  br i1 %.not148, label %.thread173, label %bb.bk

bb.bj:                                            ; preds = %._crit_edge
  %i.dp = and i32 %i.dn, 16
  %.not150 = icmp eq i32 %i.dp, 0
  br i1 %.not150, label %.thread173, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.73) #13
  br label %.thread173

bb.bl:                                            ; preds = %bb.v, %bb.an, %bb.k, %bb.ae
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.74) #13
  br label %.thread173

bb.bm:                                            ; preds = %bb.be, %bb.bb
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.75) #13
  br label %.thread173

bb.bn:                                            ; preds = %bb.ay, %bb.av, %bb.j, %bb.am, %bb.ad, %bb.u
  %.not147 = icmp eq i32 %6, 0
  br i1 %.not147, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.76) #13
  br label %.thread173

bb.bp:                                            ; preds = %bb.bn
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.77) #13
  br label %.thread173

.thread173:                                       ; preds = %.thread, %parseExpireTime.exit.thread, %parseExpireTime.exit154.thread, %parseExpireTime.exit157.thread, %parseExpireTime.exit160.thread, %bb.bg, %bb.bi, %bb.bo, %bb.bp, %bb.bj, %bb.bm, %bb.bl, %bb.bk
  %.5 = phi i32 [ -1, %bb.bk ], [ -1, %bb.bm ], [ 0, %bb.bi ], [ -1, %bb.bo ], [ -1, %bb.bl ], [ 0, %bb.bj ], [ -1, %bb.bp ], [ -1, %bb.bg ], [ -1, %parseExpireTime.exit160.thread ], [ -1, %parseExpireTime.exit157.thread ], [ -1, %parseExpireTime.exit154.thread ], [ -1, %parseExpireTime.exit.thread ], [ -1, %.thread ]
  ret i32 %.5
}

declare ptr @lookupKeyWriteWithLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @checkType(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare ptr @dbAddByLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @preventCommandPropagation(ptr noundef) local_unnamed_addr #0

declare void @rewriteClientCommandArgument(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare i32 @dbDeleteSkipKeysizesUpdate(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @hincrbyCommand(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 11 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 10 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72
  %i.l = call i32 @getLongLongFromObjectOrReply(ptr noundef %0, ptr noundef %i.k, ptr noundef nonnull %i.d, ptr noundef null) #13
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !149
  %i.r = call ptr @lookupKeyWriteWithLink(ptr noundef %i.q, ptr noundef %i.o, ptr noundef nonnull %i.a) #13 ; 4 uses
  %i.s = call i32 @checkType(ptr noundef nonnull %0, ptr noundef %i.r, i32 noundef 4) #13
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.c, label %hashTypeLookupWriteOrCreate.exit.thread

hashTypeLookupWriteOrCreate.exit.thread:          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq ptr %i.r, null
  br i1 %i.t, label %hashTypeLookupWriteOrCreate.exit, label %hashTypeLookupWriteOrCreate.exit.thread53

hashTypeLookupWriteOrCreate.exit.thread53:        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  store ptr %i.r, ptr %i.e, align 8, !tbaa !72
  br label %bb.d

hashTypeLookupWriteOrCreate.exit:                 ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.u = call ptr @createHashObject() #13
  store ptr %i.u, ptr %i.b, align 8, !tbaa !72
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !149
  %i.w = call ptr @dbAddByLink(ptr noundef %i.v, ptr noundef %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  store ptr %i.w, ptr %i.e, align 8, !tbaa !72
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.v, label %bb.d

bb.d:                                             ; preds = %hashTypeLookupWriteOrCreate.exit.thread53, %hashTypeLookupWriteOrCreate.exit
  %i.y = phi ptr [ %i.r, %hashTypeLookupWriteOrCreate.exit.thread53 ], [ %i.w, %hashTypeLookupWriteOrCreate.exit ]
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !149
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !72
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15
  %i.af = call i32 @hashTypeGetValue(ptr noundef %i.z, ptr noundef nonnull %i.y, ptr noundef %i.ae, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef null)
  switch i32 %i.af, label %bb.h [
    i32 0, label %bb.e
    i32 3, label %bb.m
  ]

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !95  ; 2 uses
  %.not45 = icmp eq ptr %i.ag, null
  br i1 %.not45, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.g, align 4, !tbaa !9
  %i.ai = zext i32 %i.ah to i64
  %i.aj = call i32 @string2ll(ptr noundef nonnull %i.ag, i64 noundef %i.ai, ptr noundef nonnull %i.c) #13
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.36) #13
  br label %bb.v

bb.h:                                             ; preds = %bb.d
  store i64 0, ptr %i.c, align 8, !tbaa !27
  %1 = load ptr, ptr %i.e, align 8, !tbaa !72     ; 4 uses
  %i.al = load i64, ptr %1, align 8
  %i.am = trunc i64 %i.al to i32
  %i.an = lshr i32 %i.am, 4
  %i.ao = and i32 %i.an, 15
  switch i32 %i.ao, label %bb.l [
    i32 11, label %bb.i
    i32 12, label %bb.j
    i32 2, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.ar = call i64 @lpLength(ptr noundef %i.aq) #13
  %i.as = lshr i64 %i.ar, 1
  br label %hashTypeLength.exit

bb.j:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !18
  %i.ax = call i64 @lpLength(ptr noundef %i.aw) #13
  %i.ay = udiv i64 %i.ax, 3
  br label %hashTypeLength.exit

bb.k:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !15 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !13
  %i.bf = add i64 %i.be, %i.bc
  br label %hashTypeLength.exit

bb.l:                                             ; preds = %bb.h
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1332, ptr noundef nonnull @.str.10) #13
  call void @abort() #14
  unreachable

hashTypeLength.exit:                              ; preds = %bb.i, %bb.k, %bb.j
  %.1.i = phi i64 [ %i.as, %bb.i ], [ %i.bf, %bb.k ], [ %i.ay, %bb.j ] ; 2 uses
  %i.bg = load ptr, ptr %i.p, align 8, !tbaa !149
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !72
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !15
  %i.bm = call i32 @getKeySlot(ptr noundef %i.bl) #13
  %i.bn = add i64 %.1.i, 1
  call void @updateKeysizesHist(ptr noundef %i.bg, i32 noundef %i.bm, i32 noundef 4, i64 noundef %.1.i, i64 noundef %i.bn) #13
  br label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.bo = call ptr @createHashObject() #13
  store ptr %i.bo, ptr %i.e, align 8, !tbaa !72
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !149
  %i.bq = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !72
  %i.bt = call ptr @dbAdd(ptr noundef %i.bp, ptr noundef %i.bs, ptr noundef nonnull %i.e) #13 ; 0 uses
  store i64 0, ptr %i.c, align 8, !tbaa !27
  %i.bu = load ptr, ptr %i.p, align 8, !tbaa !149
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !72
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !15
  %i.ca = call i32 @getKeySlot(ptr noundef %i.bz) #13
  call void @updateKeysizesHist(ptr noundef %i.bu, i32 noundef %i.ca, i32 noundef 4, i64 noundef 0, i64 noundef 1) #13
  br label %bb.n

bb.n:                                             ; preds = %hashTypeLength.exit, %bb.m, %bb.e, %bb.f
  %i.cb = load i64, ptr %i.c, align 8, !tbaa !27  ; 5 uses
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !27  ; 5 uses
  %i.cd = icmp slt i64 %i.cc, 0
  %i.ce = icmp slt i64 %i.cb, 0
  %or.cond3 = select i1 %i.cd, i1 %i.ce, i1 false
  %i.cf = sub nsw i64 -9223372036854775808, %i.cb
  %i.cg = icmp slt i64 %i.cc, %i.cf
  %or.cond = select i1 %or.cond3, i1 %i.cg, i1 false
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = icmp sgt i64 %i.cc, 0
  %i.ci = icmp sgt i64 %i.cb, 0
  %or.cond5 = select i1 %i.ch, i1 %i.ci, i1 false
  %i.cj = sub nuw nsw i64 9223372036854775807, %i.cb
  %i.ck = icmp sgt i64 %i.cc, %i.cj
  %or.cond50 = select i1 %or.cond5, i1 %i.ck, i1 false
  br i1 %or.cond50, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.37) #13
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.cl = add nsw i64 %i.cc, %i.cb                ; 2 uses
  store i64 %i.cl, ptr %i.c, align 8, !tbaa !27
  %i.cm = call ptr @sdsfromlonglong(i64 noundef %i.cl) #13
  %i.cn = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !62
  %.not46 = icmp eq i32 %i.cn, 0
  br i1 %.not46, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.cp = call i64 @kvobjAllocSize(ptr noundef %i.co) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi i64 [ %i.cp, %bb.r ], [ 0, %bb.q ]
  %i.cq = load ptr, ptr %i.p, align 8, !tbaa !149
  %i.cr = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.cs = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !72
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !15
  %i.cx = call i32 @hashTypeSet(ptr noundef %i.cq, ptr noundef %i.cr, ptr noundef %i.cw, ptr noundef %i.cm, i32 noundef 6) ; 0 uses
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !62
  %.not47 = icmp eq i32 %i.cy, 0
  br i1 %.not47, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = load ptr, ptr %i.p, align 8, !tbaa !149
  %i.da = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !72
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !15
  %i.df = call i32 @getKeySlot(ptr noundef %i.de) #13
  %i.dg = load ptr, ptr %i.e, align 8, !tbaa !72  ; 2 uses
  %i.dh = call i64 @kvobjAllocSize(ptr noundef %i.dg) #13
  call void @updateSlotAllocSize(ptr noundef %i.cz, i32 noundef %i.df, ptr noundef %i.dg, i64 noundef %.0, i64 noundef %i.dh) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.di = load i64, ptr %i.c, align 8, !tbaa !27
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.di) #13
  %i.dj = load ptr, ptr %i.p, align 8, !tbaa !149
  %i.dk = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !72
  %i.dn = load ptr, ptr %i.e, align 8, !tbaa !72
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.dj, ptr noundef %i.dm, ptr noundef %i.dn, i32 noundef 1) #13
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !72
  %i.dr = load ptr, ptr %i.p, align 8, !tbaa !149
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 72
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !76
  call void @notifyKeyspaceEvent(i32 noundef 64, ptr noundef nonnull @.str.38, ptr noundef %i.dq, i32 noundef %i.dt) #13
  %i.du = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !152
  %i.dv = add nsw i64 %i.du, 1
  store i64 %i.dv, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !152
  br label %bb.v

bb.v:                                             ; preds = %hashTypeLookupWriteOrCreate.exit.thread, %bb.g, %bb.p, %bb.u, %hashTypeLookupWriteOrCreate.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret void
}

declare i32 @getLongLongFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @string2ll(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @hincrbyfloatCommand(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca x86_fp80, align 16                ; 8 uses
  %i.d = alloca x86_fp80, align 16                ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 11 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [5120 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 11 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72
  %i.n = call i32 @getLongDoubleFromObjectOrReply(ptr noundef %0, ptr noundef %i.m, ptr noundef nonnull %i.d, ptr noundef null) #13
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.o = load x86_fp80, ptr %i.d, align 16, !tbaa !160
  %i.p = call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.o)
  %or.cond = fcmp ueq x86_fp80 %i.p, +inf
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.39) #13
  br label %bb.x

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.v = call ptr @lookupKeyWriteWithLink(ptr noundef %i.u, ptr noundef %i.s, ptr noundef nonnull %i.a) #13 ; 4 uses
  %i.w = call i32 @checkType(ptr noundef nonnull %0, ptr noundef %i.v, i32 noundef 4) #13
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.e, label %hashTypeLookupWriteOrCreate.exit.thread

hashTypeLookupWriteOrCreate.exit.thread:          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %hashTypeLookupWriteOrCreate.exit, label %hashTypeLookupWriteOrCreate.exit.thread51

hashTypeLookupWriteOrCreate.exit.thread51:        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  store ptr %i.v, ptr %i.f, align 8, !tbaa !72
  br label %bb.f

hashTypeLookupWriteOrCreate.exit:                 ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.y = call ptr @createHashObject() #13
  store ptr %i.y, ptr %i.b, align 8, !tbaa !72
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.aa = call ptr @dbAddByLink(ptr noundef %i.z, ptr noundef %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  store ptr %i.aa, ptr %i.f, align 8, !tbaa !72
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.x, label %bb.f

bb.f:                                             ; preds = %hashTypeLookupWriteOrCreate.exit.thread51, %hashTypeLookupWriteOrCreate.exit
  %i.ac = phi ptr [ %i.v, %hashTypeLookupWriteOrCreate.exit.thread51 ], [ %i.aa, %hashTypeLookupWriteOrCreate.exit ]
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !72
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.aj = call i32 @hashTypeGetValue(ptr noundef %i.ad, ptr noundef nonnull %i.ac, ptr noundef %i.ai, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef null)
  switch i32 %i.aj, label %bb.k [
    i32 0, label %bb.g
    i32 3, label %bb.p
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !95  ; 2 uses
  %.not43 = icmp eq ptr %i.ak, null
  br i1 %.not43, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.h, align 4, !tbaa !9
  %i.am = zext i32 %i.al to i64
  %i.an = call i32 @string2ld(ptr noundef nonnull %i.ak, i64 noundef %i.am, ptr noundef nonnull %i.c) #13
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #13
  br label %bb.x

bb.j:                                             ; preds = %bb.g
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !27
  %i.aq = sitofp i64 %i.ap to x86_fp80
  store x86_fp80 %i.aq, ptr %i.c, align 16, !tbaa !160
  br label %bb.q

bb.k:                                             ; preds = %bb.f
  store x86_fp80 0.000000e+00, ptr %i.c, align 16, !tbaa !160
  %1 = load ptr, ptr %i.f, align 8, !tbaa !72     ; 4 uses
  %i.ar = load i64, ptr %1, align 8
  %i.as = trunc i64 %i.ar to i32
  %i.at = lshr i32 %i.as, 4
  %i.au = and i32 %i.at, 15
  switch i32 %i.au, label %bb.o [
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !15
  %i.ax = call i64 @lpLength(ptr noundef %i.aw) #13
  %i.ay = lshr i64 %i.ax, 1
  br label %hashTypeLength.exit

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !18
  %i.bd = call i64 @lpLength(ptr noundef %i.bc) #13
  %i.be = udiv i64 %i.bd, 3
  br label %hashTypeLength.exit

bb.n:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !13
  %i.bl = add i64 %i.bk, %i.bi
  br label %hashTypeLength.exit

bb.o:                                             ; preds = %bb.k
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1332, ptr noundef nonnull @.str.10) #13
  call void @abort() #14
  unreachable

hashTypeLength.exit:                              ; preds = %bb.l, %bb.n, %bb.m
  %.1.i = phi i64 [ %i.ay, %bb.l ], [ %i.bl, %bb.n ], [ %i.be, %bb.m ] ; 2 uses
  %i.bm = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !72
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !15
  %i.bs = call i32 @getKeySlot(ptr noundef %i.br) #13
  %i.bt = add i64 %.1.i, 1
  call void @updateKeysizesHist(ptr noundef %i.bm, i32 noundef %i.bs, i32 noundef 4, i64 noundef %.1.i, i64 noundef %i.bt) #13
  br label %bb.q

bb.p:                                             ; preds = %bb.f
  %i.bu = call ptr @createHashObject() #13
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !72
  %i.bv = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.bw = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !72
  %i.bz = call ptr @dbAdd(ptr noundef %i.bv, ptr noundef %i.by, ptr noundef nonnull %i.f) #13 ; 0 uses
  store x86_fp80 0.000000e+00, ptr %i.c, align 16, !tbaa !160
  %i.ca = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.cb = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !72
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !15
  %i.cg = call i32 @getKeySlot(ptr noundef %i.cf) #13
  call void @updateKeysizesHist(ptr noundef %i.ca, i32 noundef %i.cg, i32 noundef 4, i64 noundef 0, i64 noundef 1) #13
  br label %bb.q

bb.q:                                             ; preds = %hashTypeLength.exit, %bb.p, %bb.j, %bb.h
  %2 = load x86_fp80, ptr %i.d, align 16, !tbaa !160
  %i.ch = load x86_fp80, ptr %i.c, align 16, !tbaa !160
  %i.ci = fadd x86_fp80 %2, %i.ch                 ; 3 uses
  store x86_fp80 %i.ci, ptr %i.c, align 16, !tbaa !160
  %i.cj = call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.ci)
  %or.cond48 = fcmp ueq x86_fp80 %i.cj, +inf
  br i1 %or.cond48, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.41) #13
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.ck = call i32 @ld2string(ptr noundef nonnull %i.i, i64 noundef 5120, x86_fp80 noundef %i.ci, i32 noundef 1) #13
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %i.cm = call ptr @sdsnewlen(ptr noundef nonnull %i.i, i64 noundef %i.cl) #13
  %i.cn = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !62
  %.not44 = icmp eq i32 %i.cn, 0
  br i1 %.not44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.cp = call i64 @kvobjAllocSize(ptr noundef %i.co) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0 = phi i64 [ %i.cp, %bb.t ], [ 0, %bb.s ]
  %i.cq = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.cr = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.cs = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !72
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !15
  %i.cx = call i32 @hashTypeSet(ptr noundef %i.cq, ptr noundef %i.cr, ptr noundef %i.cw, ptr noundef %i.cm, i32 noundef 6) ; 0 uses
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !62
  %.not45 = icmp eq i32 %i.cy, 0
  br i1 %.not45, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.da = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !72
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !15
  %i.df = call i32 @getKeySlot(ptr noundef %i.de) #13
  %i.dg = load ptr, ptr %i.f, align 8, !tbaa !72  ; 2 uses
  %i.dh = call i64 @kvobjAllocSize(ptr noundef %i.dg) #13
  call void @updateSlotAllocSize(ptr noundef %i.cz, i32 noundef %i.df, ptr noundef %i.dg, i64 noundef %.0, i64 noundef %i.dh) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i64 noundef %i.cl) #13
  %i.di = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.dj = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !72
  %i.dm = load ptr, ptr %i.f, align 8, !tbaa !72
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.di, ptr noundef %i.dl, ptr noundef %i.dm, i32 noundef 1) #13
  %i.dn = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !72
  %i.dq = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !76
  call void @notifyKeyspaceEvent(i32 noundef 64, ptr noundef nonnull @.str.42, ptr noundef %i.dp, i32 noundef %i.ds) #13
  %i.dt = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !152
  %i.du = add nsw i64 %i.dt, 1
  store i64 %i.du, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !152
  %i.dv = call ptr @createRawStringObject(ptr noundef nonnull %i.i, i64 noundef %i.cl) #13 ; 2 uses
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 632), align 8, !tbaa !162
  %i.dx = load ptr, ptr %i.j, align 8, !tbaa !148 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !72
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 720), align 8, !tbaa !163
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 744), align 8, !tbaa !164
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 904), align 8, !tbaa !72
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !72
  call void (ptr, i32, ...) @rewriteClientCommandVector(ptr noundef nonnull %0, i32 noundef 7, ptr noundef %i.dw, ptr noundef %i.dz, ptr noundef %i.ea, ptr noundef %i.eb, ptr noundef %i.ec, ptr noundef %i.ee, ptr noundef %i.dv) #13
  call void @decrRefCount(ptr noundef %i.dv) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  br label %bb.x

bb.x:                                             ; preds = %hashTypeLookupWriteOrCreate.exit.thread, %bb.i, %bb.r, %bb.w, %hashTypeLookupWriteOrCreate.exit, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret void
}

declare i32 @getLongDoubleFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #9

declare i32 @string2ld(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

declare i32 @ld2string(ptr noundef, i64 noundef, x86_fp80 noundef, i32 noundef) local_unnamed_addr #0

declare ptr @createRawStringObject(ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @rewriteClientCommandVector(ptr noundef, i32 noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @hgetCommand(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !148
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !165
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72
  %i.m = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.g, ptr noundef %i.l) #13 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef 4) #13
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !148
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 -1, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 9223372036854775807, ptr %i.c, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !149
  %i.w = call i32 @hashTypeGetValue(ptr noundef %i.v, ptr noundef nonnull %i.m, ptr noundef %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef null)
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.b, align 4, !tbaa !9
  %i.aa = zext i32 %i.z to i64
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.y, i64 noundef %i.aa) #13
  br label %addHashFieldToReply.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !27
  call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.ab) #13
  br label %addHashFieldToReply.exit

bb.g:                                             ; preds = %bb.c
  call void @addReplyNull(ptr noundef nonnull %0) #13
  br label %addHashFieldToReply.exit

addHashFieldToReply.exit:                         ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %addHashFieldToReply.exit
  ret void
}

declare ptr @lookupKeyReadOrReply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @addHashFieldToReply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 111) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyNull(ptr noundef %0) #13
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 -1, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 9223372036854775807, ptr %i.c, align 8, !tbaa !27
end_hunk_1
