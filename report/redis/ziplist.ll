inline.NumInlined: 60
inline.NumDeleted: 6
begin_hunk_0_@__ziplistCascadeUpdate:bb.a
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !9
  %i.bk = getelementptr i8, ptr %i.bi, i64 %i.be
  %i.bl = getelementptr i8, ptr %i.bk, i64 -1
  store i8 -1, ptr %i.bl, align 1, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.083117 ; 3 uses
  %i.bo = xor i64 %i.bh, -1
  %i.bp = add i64 %i.bo, %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull align 1 %i.bm, i64 %i.bp, i1 false)
  %.not94151 = icmp eq i64 %.081113, 0
  br i1 %.not94151, label %.loopexit, label %.lr.ph155

.lr.ph155:                                        ; preds = %ziplistResize.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.br = trunc nuw i32 %.fr156 to i8
  br i1 %i.o, label %.lr.ph155.split.us, label %.lr.ph155.split

.lr.ph155.split.us:                               ; preds = %.lr.ph155, %zipStorePrevEntryLength.exit98.us
  %.1154.us = phi ptr [ %i.ce, %zipStorePrevEntryLength.exit98.us ], [ %i.bn, %.lr.ph155 ] ; 2 uses
  %.182153.us = phi i64 [ %i.cn, %zipStorePrevEntryLength.exit98.us ], [ %.081113, %.lr.ph155 ]
  %.187152.us = phi i64 [ %i.cm, %zipStorePrevEntryLength.exit98.us ], [ %.086105, %.lr.ph155 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.187152.us ; 2 uses
  call fastcc void @zipEntry(ptr noundef nonnull %i.bs, ptr noundef %2)
  %i.bt = load i32, ptr %i.i, align 8, !tbaa !19
  %i.bu = load i32, ptr %i.k, align 4, !tbaa !23
  %i.bv = add i32 %i.bu, %i.bt
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = load i32, ptr %2, align 8, !tbaa !26
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = sub nsw i64 %i.bw, %i.by                ; 2 uses
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds i8, ptr %.1154.us, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.by
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cb, ptr nonnull align 1 %i.cc, i64 %i.bz, i1 false)
  %i.cd = sub nuw nsw i64 -4, %i.bw
  %i.ce = getelementptr inbounds i8, ptr %.1154.us, i64 %i.cd ; 5 uses
  %i.cf = load i32, ptr %i.bq, align 4, !tbaa !25 ; 3 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph155.split.us
  %i.ch = add i32 %i.cf, 4                        ; 3 uses
  %i.ci = icmp ult i32 %i.ch, 254
  br i1 %i.ci, label %bb.t, label %zipStorePrevEntryLengthLarge.exit.i99.us

zipStorePrevEntryLengthLarge.exit.i99.us:         ; preds = %bb.s
  store i8 -2, ptr %i.ce, align 1, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  store i32 %i.ch, ptr %i.cj, align 1
  br label %zipStorePrevEntryLength.exit98.us

bb.t:                                             ; preds = %bb.s
  %i.ck = trunc nuw i32 %i.ch to i8
  store i8 %i.ck, ptr %i.ce, align 1, !tbaa !13
  br label %zipStorePrevEntryLength.exit98.us

bb.u:                                             ; preds = %.lr.ph155.split.us
  store i8 %i.br, ptr %i.ce, align 1, !tbaa !13
  br label %zipStorePrevEntryLength.exit98.us

zipStorePrevEntryLength.exit98.us:                ; preds = %bb.u, %bb.t, %zipStorePrevEntryLengthLarge.exit.i99.us
  %i.cl = zext i32 %i.cf to i64
  %i.cm = sub i64 %.187152.us, %i.cl
  %i.cn = add i64 %.182153.us, -1                 ; 2 uses
  %.not94.us = icmp eq i64 %i.cn, 0
  br i1 %.not94.us, label %.loopexit, label %.lr.ph155.split.us, !llvm.loop !29

.lr.ph155.split:                                  ; preds = %.lr.ph155, %zipStorePrevEntryLength.exit98
  %.1154 = phi ptr [ %i.da, %zipStorePrevEntryLength.exit98 ], [ %i.bn, %.lr.ph155 ] ; 2 uses
  %.182153 = phi i64 [ %i.dk, %zipStorePrevEntryLength.exit98 ], [ %.081113, %.lr.ph155 ]
  %.187152 = phi i64 [ %i.dj, %zipStorePrevEntryLength.exit98 ], [ %.086105, %.lr.ph155 ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.187152 ; 2 uses
  call fastcc void @zipEntry(ptr noundef nonnull %i.co, ptr noundef %2)
  %i.cp = load i32, ptr %i.i, align 8, !tbaa !19
  %i.cq = load i32, ptr %i.k, align 4, !tbaa !23
  %i.cr = add i32 %i.cq, %i.cp
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = load i32, ptr %2, align 8, !tbaa !26
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  %i.cv = sub nsw i64 %i.cs, %i.cu                ; 2 uses
  %i.cw = sub nsw i64 0, %i.cv
  %i.cx = getelementptr inbounds i8, ptr %.1154, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cu
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cx, ptr nonnull align 1 %i.cy, i64 %i.cv, i1 false)
  %i.cz = sub nuw nsw i64 -4, %i.cs
  %i.da = getelementptr inbounds i8, ptr %.1154, i64 %i.cz ; 6 uses
  %i.db = load i32, ptr %i.bq, align 4, !tbaa !25 ; 3 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %zipStorePrevEntryLengthLarge.exit.i96, label %bb.v

zipStorePrevEntryLengthLarge.exit.i96:            ; preds = %.lr.ph155.split
  store i8 -2, ptr %i.da, align 1, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  store i32 %.fr156, ptr %i.dd, align 1
  br label %zipStorePrevEntryLength.exit98

bb.v:                                             ; preds = %.lr.ph155.split
  %i.de = add i32 %i.db, 4                        ; 3 uses
  %i.df = icmp ult i32 %i.de, 254
  br i1 %i.df, label %bb.w, label %zipStorePrevEntryLengthLarge.exit.i99

bb.w:                                             ; preds = %bb.v
  %i.dg = trunc nuw i32 %i.de to i8
  store i8 %i.dg, ptr %i.da, align 1, !tbaa !13
  br label %zipStorePrevEntryLength.exit98

zipStorePrevEntryLengthLarge.exit.i99:            ; preds = %bb.v
  store i8 -2, ptr %i.da, align 1, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  store i32 %i.de, ptr %i.dh, align 1
  br label %zipStorePrevEntryLength.exit98

zipStorePrevEntryLength.exit98:                   ; preds = %zipStorePrevEntryLengthLarge.exit.i99, %bb.w, %zipStorePrevEntryLengthLarge.exit.i96
  %i.di = zext i32 %i.db to i64
  %i.dj = sub i64 %.187152, %i.di
  %i.dk = add i64 %.182153, -1                    ; 2 uses
  %.not94 = icmp eq i64 %i.dk, 0
  br i1 %.not94, label %.loopexit, label %.lr.ph155.split, !llvm.loop !29

.loopexit:                                        ; preds = %zipStorePrevEntryLength.exit98, %zipStorePrevEntryLength.exit98.us, %bb.b, %ziplistResize.exit, %zipStorePrevEntryLength.exit, %bb.a
  %.0 = phi ptr [ %0, %zipStorePrevEntryLength.exit ], [ %0, %bb.a ], [ %i.bi, %ziplistResize.exit ], [ %i.bi, %zipStorePrevEntryLength.exit98.us ], [ %0, %bb.b ], [ %i.bi, %zipStorePrevEntryLength.exit98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @zipEntry(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8), (20, 21)) %1) unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !13
  %i.b = icmp ult i8 %i.a, -2                     ; 2 uses
  %. = select i1 %i.b, i32 1, i32 5               ; 3 uses
  store i32 %., ptr %1, align 8, !tbaa !26
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !13
  %i.d = zext i8 %i.c to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 1
  %i.f = load i32, ptr %i.e, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.sink, ptr %i.g, align 4, !tbaa !25
  %i.h = zext nneg i32 %. to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h ; 5 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13    ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = icmp ult i8 %i.j, -64                    ; 2 uses
  %i.m = and i8 %i.j, -64
  %spec.select = select i1 %i.l, i8 %i.m, i8 %i.j
  store i8 %spec.select, ptr %i.k, align 4, !tbaa !30
  br i1 %i.l, label %bb.e, label %bb.j, !prof !31

bb.e:                                             ; preds = %bb.d
  %i.n = lshr i8 %i.j, 6
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  switch i8 %i.n, label %.unreachabledefault [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.o, align 8, !tbaa !32
  %i.p = load i8, ptr %i.i, align 1, !tbaa !13
  %i.q = and i8 %i.p, 63
  %i.r = zext nneg i8 %i.q to i32
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  store i32 2, ptr %i.o, align 8, !tbaa !32
  %i.s = load i8, ptr %i.i, align 1, !tbaa !13
  %i.t = and i8 %i.s, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %i.y = zext i8 %i.x to i32
  %i.z = or disjoint i32 %i.v, %i.y
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  store i32 5, ptr %i.o, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  br label %.sink.split

.unreachabledefault:                              ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.e
  store i32 0, ptr %i.o, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !23
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 1, ptr %i.ae, align 8, !tbaa !32
  %i.af = add nsw i8 %i.j, 64                     ; 2 uses
  %i.ag = tail call i8 @llvm.fshl.i8(i8 %i.af, i8 %i.af, i8 7) ; 3 uses
  %i.ah = icmp ult i8 %i.ag, 32
  br i1 %i.ah, label %switch.hole_check, label %bb.k

bb.k:                                             ; preds = %switch.hole_check, %bb.j
  %i.ai = add nsw i8 %i.j, 1
  %or.cond = icmp ult i8 %i.ai, -14
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !23
  br i1 %or.cond, label %2, label %bb.m, !prof !31

2:                                                ; preds = %bb.k
  store i32 0, ptr %i.ae, align 8, !tbaa !32
  br label %bb.l

bb.l:                                             ; preds = %2, %bb.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 619) #18
  tail call void @abort() #19
  unreachable

switch.hole_check:                                ; preds = %bb.j
  %switch.maskindex = zext nneg i8 %i.ag to i32
  %switch.shifted = lshr i32 -2130640639, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.k

switch.lookup:                                    ; preds = %switch.hole_check
  %i.ak = zext nneg i8 %i.ag to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.__ziplistInsert, i64 %i.ak
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup, %bb.f, %bb.h, %bb.g
  %.sink70.a = phi i32 [ %i.z, %bb.g ], [ %i.ac, %bb.h ], [ %i.r, %bb.f ], [ %switch.ext, %switch.lookup ]
  %.ph.ph = phi i32 [ 2, %bb.g ], [ 5, %bb.h ], [ 1, %bb.f ], [ 1, %switch.lookup ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.sink70.a, ptr %i.al, align 4, !tbaa !23
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.k
  %.ph = phi i32 [ 1, %bb.k ], [ %.ph.ph, %.sink.split ]
  %i.am = add nuw nsw i32 %.ph, %.
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.am, ptr %i.an, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %0, ptr %i.ao, align 8, !tbaa !33
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @zipEntrySafe(ptr nofree noundef readnone captures(address) %0, i64 noundef range(i64 -2, 8589934605) %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 8 uses
  %.not = icmp uge ptr %2, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.e = icmp ult ptr %i.d, %i.c
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %2, align 1, !tbaa !13
  %i.g = icmp ult i8 %i.f, -2                     ; 2 uses
  %. = select i1 %i.g, i32 1, i32 5               ; 4 uses
  store i32 %., ptr %3, align 8, !tbaa !26
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %2, align 1, !tbaa !13
  %i.i = zext i8 %i.h to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %2, i64 1
  %i.k = load i32, ptr %i.j, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = phi i32 [ %i.i, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.l, ptr %i.m, align 4, !tbaa !25
  %i.n = zext nneg i32 %. to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.n ; 5 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13    ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.r = icmp ult i8 %i.p, -64                    ; 2 uses
  %i.s = and i8 %i.p, -64
  %spec.select = select i1 %i.r, i8 %i.s, i8 %i.p
  store i8 %spec.select, ptr %i.q, align 4, !tbaa !30
  br i1 %i.r, label %bb.f, label %bb.k, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.t = lshr i8 %i.p, 6
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  switch i8 %i.t, label %.unreachabledefault [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.u, align 8, !tbaa !32
  %i.v = load i8, ptr %i.o, align 1, !tbaa !13
  %i.w = and i8 %i.v, 63
  %i.x = zext nneg i8 %i.w to i32
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  store i32 2, ptr %i.u, align 8, !tbaa !32
  %i.y = load i8, ptr %i.o, align 1, !tbaa !13
  %i.z = and i8 %i.y, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  store i32 5, ptr %i.u, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ah)
  br label %.sink.split

.unreachabledefault:                              ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %bb.f
  store i32 0, ptr %i.u, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !23
  br label %bb.n

bb.k:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 1, ptr %i.ak, align 8, !tbaa !32
  %i.al = add nsw i8 %i.p, 64                     ; 2 uses
  %i.am = tail call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.al, i8 7) ; 3 uses
  %i.an = icmp ult i8 %i.am, 32
  br i1 %i.an, label %switch.hole_check, label %bb.l

bb.l:                                             ; preds = %switch.hole_check, %bb.k
  %i.ao = add nsw i8 %i.p, 1
  %or.cond215 = icmp ult i8 %i.ao, -14
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !23
  br i1 %or.cond215, label %bb.m, label %bb.o, !prof !31

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ak, align 8, !tbaa !32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %., ptr %i.aq, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.ar, align 8, !tbaa !33
  br label %bb.au

switch.hole_check:                                ; preds = %bb.k
  %switch.maskindex = zext nneg i8 %i.am to i32
  %switch.shifted = lshr i32 -2130640639, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.l

switch.lookup:                                    ; preds = %switch.hole_check
  %i.as = zext nneg i8 %i.am to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.__ziplistInsert, i64 %i.as
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup, %bb.h, %bb.i, %bb.g
  %.sink = phi i32 [ %i.af, %bb.h ], [ %i.ai, %bb.i ], [ %switch.ext, %switch.lookup ], [ %i.x, %bb.g ] ; 2 uses
  %.ph233.ph = phi i32 [ 2, %bb.h ], [ 5, %bb.i ], [ 1, %switch.lookup ], [ 1, %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sink, ptr %i.at, align 4, !tbaa !23
  %i.au = zext i32 %.sink to i64
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.l
  %.ph = phi i64 [ 0, %bb.l ], [ %i.au, %.sink.split ]
  %.ph233 = phi i32 [ 1, %bb.l ], [ %.ph233.ph, %.sink.split ]
  %i.av = add nuw nsw i32 %.ph233, %.             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !19
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.ax, align 8, !tbaa !33
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.ph ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %i.a
  %i.bc = icmp ugt ptr %i.ba, %i.c
  %spec.select216 = select i1 %i.bb, i1 true, i1 %i.bc, !prof !24
  br i1 %spec.select216, label %bb.au, label %bb.p, !prof !24

bb.p:                                             ; preds = %bb.o
  %.not213 = icmp eq i32 %4, 0
  br i1 %.not213, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = zext i32 %i.l to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.be ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.a
  %i.bh = icmp ugt ptr %i.bf, %i.c
  %spec.select217 = select i1 %i.bg, i1 true, i1 %i.bh, !prof !24
  br i1 %spec.select217, label %bb.au, label %bb.r, !prof !24

bb.r:                                             ; preds = %bb.q, %bb.p
  br label %bb.au
end_hunk_0
