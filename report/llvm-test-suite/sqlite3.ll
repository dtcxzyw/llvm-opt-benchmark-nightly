Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 106
begin_hunk_0_@pager_write_pagelist:bb.a

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeCommitPhaseOne(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !636
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.b, label %sqlite3PagerCommitPhaseOne.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !350  ; 14 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !349
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !434
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 38
  %i.k = load i8, ptr %i.j, align 2, !tbaa !690
  %.not = icmp eq i8 %i.k, 0
  %.pre49 = load ptr, ptr %i.g, align 8, !tbaa !441 ; 2 uses
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0.in4.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.05.i.i = load ptr, ptr %.0.in4.i.i, align 8, !tbaa !351 ; 2 uses
  %.not6.i.i = icmp eq ptr %.05.i.i, null
  br i1 %.not6.i.i, label %invalidateAllOverflowCache.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %mem.5.promoted.i.i = load i64, ptr @mem.5, align 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %invalidateOverflowCache.exit.i.i, %.lr.ph.preheader.i.i
  %.07.i.i = phi ptr [ %.0.i.i, %invalidateOverflowCache.exit.i.i ], [ %.05.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.l = phi i64 [ %i.t, %invalidateOverflowCache.exit.i.i ], [ %mem.5.promoted.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 136 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !553  ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %invalidateOverflowCache.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !130
  %sext.i.i.i.i = shl i64 %i.q, 32
  %i.r = ashr exact i64 %sext.i.i.i.i, 32
  %i.s = sub nsw i64 %i.l, %i.r                   ; 2 uses
  store i64 %i.s, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.p) #43
  br label %invalidateOverflowCache.exit.i.i

invalidateOverflowCache.exit.i.i:                 ; preds = %bb.d, %.lr.ph.i.i
  %i.t = phi i64 [ %i.l, %.lr.ph.i.i ], [ %i.s, %bb.d ]
  store ptr null, ptr %i.m, align 8, !tbaa !553
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !351 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %invalidateAllOverflowCache.exit.i, label %.lr.ph.i.i, !llvm.loop !57

invalidateAllOverflowCache.exit.i:                ; preds = %invalidateOverflowCache.exit.i.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 39
  %i.v = load i8, ptr %i.u, align 1, !tbaa !712
  %.not.i = icmp eq i8 %i.v, 0
  br i1 %.not.i, label %bb.e, label %autoVacuumCommit.exit

bb.e:                                             ; preds = %invalidateAllOverflowCache.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !652
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.f, label %.loopexit94.i

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 44 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !681
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !441
  %i.ac = tail call fastcc i32 @sqlite3PagerPagecount(ptr noundef %i.ab) ; 4 uses
  %.val78.i = load i16, ptr %i.z, align 4, !tbaa !681
  %i.ad = getelementptr i8, ptr %i.g, i64 46
  %.val79.i = load i16, ptr %i.ad, align 2, !tbaa !680
  %i.ae = udiv i16 %.val79.i, 5
  %narrow.i.i = add nuw nsw i16 %i.ae, 1
  %i.af = zext nneg i16 %narrow.i.i to i32        ; 3 uses
  %i.ag = add i32 %i.ac, -2                       ; 2 uses
  %i.ah = urem i32 %i.ag, %i.af
  %i.ai = sub nuw i32 %i.ag, %i.ah                ; 2 uses
  %i.aj = zext i16 %.val78.i to i32
  %i.ak = udiv i32 1073741824, %i.aj              ; 4 uses
  %i.al = add nsw i32 %i.ai, 1
  %i.am = icmp eq i32 %i.al, %i.ak
  %spec.select.v.i.i = select i1 %i.am, i32 3, i32 2
  %spec.select.i.i = add nsw i32 %spec.select.v.i.i, %i.ai
  %.not69.i = icmp eq i32 %spec.select.i.i, %i.ac
  br i1 %.not69.i, label %sqlite3PagerCommitPhaseOne.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = add nuw nsw i32 %i.ak, 1                ; 4 uses
  %i.ao = icmp eq i32 %i.ac, %i.an
  %i.ap = sext i1 %i.ao to i32
  %spec.select.i = add nsw i32 %i.ac, %i.ap       ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !550
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !653
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 36
  %i.av = load i32, ptr %i.au, align 1
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.av) ; 2 uses
  %i.ax = add i32 %spec.select.i, -2              ; 2 uses
  %i.ay = urem i32 %i.ax, %i.af
  %i.az = sub nuw i32 %i.ax, %i.ay                ; 2 uses
  %i.ba = add nsw i32 %i.az, 1
  %i.bb = icmp eq i32 %i.ba, %i.ak
  %spec.select.v.i81.i = select i1 %i.bb, i32 3, i32 2
  %i.bc = udiv i16 %i.aa, 5
  %i.bd = zext nneg i16 %i.bc to i32              ; 2 uses
  %spec.select.i82.i = sub i32 %i.bd, %spec.select.i
  %i.be = add i32 %spec.select.i82.i, %i.az
  %i.bf = add i32 %i.be, %i.aw
  %i.bg = add i32 %i.bf, %spec.select.v.i81.i
  %i.bh = udiv i32 %i.bg, %i.bd
  %i.bi = add i32 %i.bh, %i.aw
  %i.bj = sub i32 %spec.select.i, %i.bi           ; 2 uses
  %i.bk = icmp ugt i32 %spec.select.i, %i.an
  %.not68.i = icmp ule i32 %i.bj, %i.an
  %or.cond.not.i = select i1 %i.bk, i1 %.not68.i, i1 false
  %i.bl = sext i1 %or.cond.not.i to i32
  %.054.i = add nsw i32 %i.bj, %i.bl
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i, %bb.g
  %.155.i = phi i32 [ %.054.i, %bb.g ], [ %i.bt, %.critedge.i ] ; 5 uses
  %i.bm = add i32 %.155.i, -2                     ; 2 uses
  %i.bn = urem i32 %i.bm, %i.af
  %i.bo = sub nuw i32 %i.bm, %i.bn                ; 2 uses
  %i.bp = add nsw i32 %i.bo, 1
  %i.bq = icmp eq i32 %i.bp, %i.ak
  %spec.select.v.i84.i = select i1 %i.bq, i32 3, i32 2
  %spec.select.i85.i = add nsw i32 %spec.select.v.i84.i, %i.bo
  %i.br = icmp eq i32 %spec.select.i85.i, %.155.i
  %i.bs = icmp eq i32 %.155.i, %i.an
  %or.cond90.i = select i1 %i.br, i1 true, i1 %i.bs
  %i.bt = add i32 %.155.i, -1
  br i1 %or.cond90.i, label %.critedge.i, label %.loopexit94.i, !llvm.loop !1300

.loopexit94.i:                                    ; preds = %.critedge.i, %bb.e
  %.3.i = phi i32 [ 0, %bb.e ], [ %.155.i, %.critedge.i ] ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.loopexit94.i
  %.056.i = phi i32 [ 0, %.loopexit94.i ], [ %i.bu, %bb.i ] ; 2 uses
  switch i32 %.056.i, label %.loopexit.i [
    i32 0, label %bb.i
    i32 101, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.bu = tail call fastcc i32 @incrVacuumStep(ptr noundef nonnull %i.g, i32 noundef %.3.i)
  br label %bb.h, !llvm.loop !1301

bb.j:                                             ; preds = %bb.h
  %i.bv = load i32, ptr %i.w, align 8, !tbaa !652
  %.not70.i = icmp eq i32 %i.bv, 0
  br i1 %.not70.i, label %autoVacuumCommit.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !550
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 120
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !548
  %i.ca = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.bz)
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !550
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 112
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !653
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store i32 0, ptr %i.ce, align 1
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !550
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 112
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !653
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 36
  store i32 0, ptr %i.ci, align 1
  store i32 %.3.i, ptr %i.w, align 8, !tbaa !652
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.h, %bb.k
  %.157.i = phi i32 [ %i.ca, %bb.k ], [ %.056.i, %bb.h ] ; 2 uses
  %.not71.i = icmp eq i32 %.157.i, 0
  br i1 %.not71.i, label %autoVacuumCommit.exit, label %.critedge73.i

.critedge73.i:                                    ; preds = %.loopexit.i
  %i.cj = tail call fastcc i32 @sqlite3PagerRollback(ptr noundef %.pre49) ; 0 uses
  br label %sqlite3PagerCommitPhaseOne.exit

autoVacuumCommit.exit:                            ; preds = %invalidateAllOverflowCache.exit.i, %bb.j, %.loopexit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !652
  store i32 0, ptr %i.ck, align 8, !tbaa !652
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !441
  br label %bb.l

bb.l:                                             ; preds = %autoVacuumCommit.exit, %bb.b
  %i.cm = phi ptr [ %.pre49, %bb.b ], [ %.pre, %autoVacuumCommit.exit ] ; 22 uses
  %.0 = phi i32 [ 0, %bb.b ], [ %i.cl, %autoVacuumCommit.exit ] ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 18 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !569
  %.not.i17 = icmp eq i8 %i.co, 5
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %.pre106.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !570 ; 2 uses
  br i1 %.not.i17, label %._crit_edge.i, label %bb.m

._crit_edge.i:                                    ; preds = %bb.l
  %i.cp = icmp ne i8 %.pre106.i, 0
  br label %bb.ak

bb.m:                                             ; preds = %bb.l
  %.not61.i = icmp eq i8 %.pre106.i, 0
  br i1 %.not61.i, label %bb.n, label %bb.ak

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 22
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !583
  %.not62.i = icmp eq i8 %i.cr, 0
  br i1 %.not62.i, label %sqlite3PagerCommitPhaseOne.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 25
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !609
  %.not63.i = icmp eq i8 %i.ct, 0
  br i1 %.not63.i, label %bb.p, label %.thread86.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 28 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 4, !tbaa !594
  %.not.i.i20 = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i20, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.cw = call fastcc i32 @sqlite3PagerAcquire(ptr noundef nonnull %i.cm, i32 noundef 1, ptr noundef %i.a, i32 noundef 0) ; 2 uses
  %.not22.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not22.i.i, label %bb.r, label %pager_incr_changecounter.exit.i

bb.r:                                             ; preds = %bb.q
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !571 ; 4 uses
  %i.cy = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.cx) ; 2 uses
  %.not23.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not23.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.cx)
  br label %pager_incr_changecounter.exit.i

bb.t:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 304
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !139
  %i.db = zext i8 %i.da to i32
  %i.dc = shl nuw i32 %i.db, 24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cm, i64 305
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !139
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 16
  %i.dh = or disjoint i32 %i.dg, %i.dc
  %i.di = getelementptr inbounds nuw i8, ptr %i.cm, i64 306
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !139
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 8
  %i.dm = or disjoint i32 %i.dh, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cm, i64 307
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !139
  %i.dp = zext i8 %i.do to i32
  %i.dq = or disjoint i32 %i.dm, %i.dp
  %i.dr = add i32 %i.dq, 1                        ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cx, i64 80
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !576 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = lshr i32 %i.dr, 24
  %i.dw = trunc nuw i32 %i.dv to i8
  store i8 %i.dw, ptr %i.du, align 1, !tbaa !139
  %i.dx = lshr i32 %i.dr, 16
  %i.dy = trunc i32 %i.dx to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 25
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !139
  %i.ea = lshr i32 %i.dr, 8
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 26
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !139
  %i.ed = trunc i32 %i.dr to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 27
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !139
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.cx)
  store i8 1, ptr %i.cu, align 4, !tbaa !594
  br label %bb.u

pager_incr_changecounter.exit.i:                  ; preds = %bb.s, %bb.q
  %.0.i.i27 = phi i32 [ %i.cw, %bb.q ], [ %i.cy, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %.loopexit.i19

bb.u:                                             ; preds = %bb.t, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %.not65.i = icmp eq i32 %.0, 0
  br i1 %.not65.i, label %.thread.i25, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cm, i64 68
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !565
  %i.eh = sdiv i32 1073741824, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cm, i64 44 ; 2 uses
  %.04597.i = add i32 %.0, 1                      ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !580 ; 2 uses
  %.not6698.i = icmp ugt i32 %.04597.i, %i.ej
  br i1 %.not6698.i, label %.thread.i25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
  br label %bb.w

bb.w:                                             ; preds = %sqlite3BitvecTest.exit.thread.i, %.lr.ph.i
  %i.el = phi i32 [ %i.ej, %.lr.ph.i ], [ %i.gc, %sqlite3BitvecTest.exit.thread.i ] ; 2 uses
  %.045100.i = phi i32 [ %.04597.i, %.lr.ph.i ], [ %.045.i, %sqlite3BitvecTest.exit.thread.i ] ; 4 uses
  %.045.in99.i = phi i32 [ %.0, %.lr.ph.i ], [ %.045100.i, %sqlite3BitvecTest.exit.thread.i ]
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !591 ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %sqlite3BitvecTest.exit.i, label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %bb.w, %tailrecurse.i.i
  %.tr3138.i.i = phi i32 [ %i.fg, %tailrecurse.i.i ], [ %.045100.i, %bb.w ] ; 5 uses
  %.tr37.i.i = phi ptr [ %i.fk, %tailrecurse.i.i ], [ %i.em, %bb.w ] ; 5 uses
  %i.eo = load i32, ptr %.tr37.i.i, align 8, !tbaa !703 ; 2 uses
  %i.ep = icmp ugt i32 %.tr3138.i.i, %i.eo
  br i1 %i.ep, label %sqlite3BitvecTest.exit.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i21
  %i.eq = icmp ult i32 %i.eo, 3969
  br i1 %i.eq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.er = add i32 %.tr3138.i.i, -1                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.tr37.i.i, i64 16
  %i.et = lshr i32 %i.er, 3
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !139
  %i.ex = zext i8 %i.ew to i32
  %i.ey = and i32 %i.er, 7
  %i.ez = lshr i32 %i.ex, %i.ey
  %i.fa = trunc i32 %i.ez to i1
  br label %sqlite3BitvecTest.exit.i

bb.z:                                             ; preds = %bb.x
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr37.i.i, i64 8
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !629 ; 3 uses
  %.not.i78.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i78.i, label %bb.aa, label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %bb.z
  %i.fd = add i32 %.tr3138.i.i, -1                ; 2 uses
  %i.fe = udiv i32 %i.fd, %i.fc
  %i.ff = urem i32 %i.fd, %i.fc
  %i.fg = add nuw i32 %i.ff, 1
  %i.fh = getelementptr inbounds nuw i8, ptr %.tr37.i.i, i64 16
  %i.fi = zext i32 %i.fe to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fi
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !139 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %sqlite3BitvecTest.exit.i, label %.lr.ph.i.i21

bb.aa:                                            ; preds = %bb.z
  %i.fm = mul i32 %.tr3138.i.i, 37
  %i.fn = urem i32 %i.fm, 124                     ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr37.i.i, i64 16 ; 2 uses
  %i.fp = zext nneg i32 %i.fn to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !139 ; 2 uses
  %.not3039.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not3039.i.i, label %sqlite3BitvecTest.exit.i, label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %bb.aa, %bb.ab
  %i.fs = phi i32 [ %i.fy, %bb.ab ], [ %i.fr, %bb.aa ]
  %.040.i.i = phi i32 [ %spec.store.select.i.i, %bb.ab ], [ %i.fn, %bb.aa ]
  %i.ft = icmp eq i32 %i.fs, %.tr3138.i.i
  br i1 %i.ft, label %sqlite3BitvecTest.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph41.i.i
  %i.fu = add i32 %.040.i.i, 1                    ; 2 uses
  %i.fv = icmp ugt i32 %i.fu, 123
  %spec.store.select.i.i = select i1 %i.fv, i32 0, i32 %i.fu ; 2 uses
  %i.fw = zext i32 %spec.store.select.i.i to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !139 ; 2 uses
  %.not30.i.i = icmp eq i32 %i.fy, 0
  br i1 %.not30.i.i, label %sqlite3BitvecTest.exit.i, label %.lr.ph41.i.i, !llvm.loop !52

sqlite3BitvecTest.exit.i:                         ; preds = %tailrecurse.i.i, %.lr.ph.i.i21, %bb.ab, %bb.aa, %bb.y, %bb.w
  %.1.i.i = phi i1 [ %i.fa, %bb.y ], [ false, %bb.ab ], [ false, %bb.w ], [ false, %bb.aa ], [ false, %.lr.ph.i.i21 ], [ false, %tailrecurse.i.i ]
  %.not68.i22 = icmp eq i32 %.045.in99.i, %i.eh
  %or.cond77.i = or i1 %.not68.i22, %.1.i.i
  br i1 %or.cond77.i, label %sqlite3BitvecTest.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %sqlite3BitvecTest.exit.i
  %i.fz = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.cm, i32 noundef %.045100.i, ptr noundef %i.b, i32 noundef 0) ; 2 uses
  %.not69.i23 = icmp eq i32 %i.fz, 0
  br i1 %.not69.i23, label %bb.ad, label %.loopexit.i19

bb.ad:                                            ; preds = %bb.ac
  %i.ga = load ptr, ptr %i.b, align 8, !tbaa !571 ; 2 uses
  %i.gb = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.ga) ; 2 uses
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.ga)
  %.not70.i24 = icmp eq i32 %i.gb, 0
  br i1 %.not70.i24, label %.sqlite3BitvecTest.exit.thread_crit_edge.i, label %.loopexit.i19

.sqlite3BitvecTest.exit.thread_crit_edge.i:       ; preds = %bb.ad
  %.pre.i = load i32, ptr %i.ei, align 4, !tbaa !580
  br label %sqlite3BitvecTest.exit.thread.i

sqlite3BitvecTest.exit.thread.i:                  ; preds = %.lr.ph41.i.i, %.sqlite3BitvecTest.exit.thread_crit_edge.i, %sqlite3BitvecTest.exit.i
  %i.gc = phi i32 [ %.pre.i, %.sqlite3BitvecTest.exit.thread_crit_edge.i ], [ %i.el, %sqlite3BitvecTest.exit.i ], [ %i.el, %.lr.ph41.i.i ] ; 2 uses
  %.045.i = add i32 %.045100.i, 1                 ; 2 uses
  %.not66.i = icmp ugt i32 %.045.i, %i.gc
  br i1 %.not66.i, label %.thread.i25, label %bb.w, !llvm.loop !1302

.thread.i25:                                      ; preds = %sqlite3BitvecTest.exit.thread.i, %bb.v, %bb.u
  %i.gd = tail call fastcc i32 @writeMasterJournal(ptr noundef %i.cm, ptr noundef %1) ; 2 uses
  %.not71.i26 = icmp eq i32 %i.gd, 0
  br i1 %.not71.i26, label %bb.ae, label %.loopexit.i19

bb.ae:                                            ; preds = %.thread.i25
  %i.ge = tail call fastcc i32 @syncJournal(ptr noundef %i.cm) ; 2 uses
  %.not72.i = icmp eq i32 %i.ge, 0
  br i1 %.not72.i, label %.thread86.i, label %.loopexit.i19

.thread86.i:                                      ; preds = %bb.ae, %bb.o
  %.not73.i = icmp eq i32 %.0, 0
  br i1 %.not73.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.thread86.i
  %i.gf = tail call fastcc i32 @sqlite3PagerTruncate(ptr noundef %i.cm, i32 noundef %.0) ; 2 uses
  %.not74.i = icmp eq i32 %i.gf, 0
  br i1 %.not74.i, label %bb.ag, label %.loopexit.i19

bb.ag:                                            ; preds = %bb.af, %.thread86.i
  %i.gg = getelementptr i8, ptr %i.cm, i64 208    ; 2 uses
  %.val.i = load ptr, ptr %i.gg, align 8, !tbaa !599
  %i.gh = tail call fastcc i32 @pager_write_pagelist(ptr noundef %.val.i) ; 2 uses
  %.not75.i = icmp eq i32 %i.gh, 0
  br i1 %.not75.i, label %bb.ah, label %.loopexit.i19

bb.ah:                                            ; preds = %bb.ag
  store ptr null, ptr %i.gg, align 8, !tbaa !599
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cm, i64 15
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !638
  %.not76.i = icmp eq i8 %i.gj, 0
  br i1 %.not76.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cm, i64 136
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !499 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cm, i64 17
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !710
  %i.go = zext i8 %i.gn to i32
  %i.gp = load ptr, ptr %i.gl, align 8, !tbaa !502
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !640
  %i.gs = tail call i32 %i.gr(ptr noundef nonnull %i.gl, i32 noundef range(i32 0, 256) %i.go) #43, !inline_history !1303
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.4.i = phi i32 [ 0, %bb.ah ], [ %i.gs, %bb.ai ]
  store i8 5, ptr %i.cn, align 2, !tbaa !569
  br label %.loopexit.i19

.loopexit.i19:                                    ; preds = %bb.ad, %bb.ac, %bb.aj, %bb.ag, %bb.af, %bb.ae, %.thread.i25, %pager_incr_changecounter.exit.i
  %.5.i = phi i32 [ %i.gd, %.thread.i25 ], [ %i.ge, %bb.ae ], [ %i.gf, %bb.af ], [ %.4.i, %bb.aj ], [ %i.gh, %bb.ag ], [ %.0.i.i27, %pager_incr_changecounter.exit.i ], [ %i.gb, %bb.ad ], [ %i.fz, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br label %bb.am

bb.ak:                                            ; preds = %bb.m, %._crit_edge.i
  %i.gt = phi i1 [ %i.cp, %._crit_edge.i ], [ true, %bb.m ]
  %i.gu = icmp ne i32 %.0, 0
  %or.cond.i = and i1 %i.gu, %i.gt
  br i1 %or.cond.i, label %bb.al, label %sqlite3PagerCommitPhaseOne.exit

bb.al:                                            ; preds = %bb.ak
  %i.gv = tail call fastcc i32 @sqlite3PagerTruncate(ptr noundef nonnull %i.cm, i32 noundef %.0)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.loopexit.i19
  %.6.i = phi i32 [ %i.gv, %bb.al ], [ %.5.i, %.loopexit.i19 ]
  %.6.fr.i = freeze i32 %.6.i                     ; 2 uses
  %i.gw = icmp eq i32 %.6.fr.i, 2826
  %spec.select.i18 = select i1 %i.gw, i32 5, i32 %.6.fr.i
  br label %sqlite3PagerCommitPhaseOne.exit

sqlite3PagerCommitPhaseOne.exit:                  ; preds = %.critedge73.i, %bb.f, %bb.n, %bb.ak, %bb.am, %bb.a
  %.114 = phi i32 [ 0, %bb.a ], [ %.157.i, %.critedge73.i ], [ 11, %bb.f ], [ 0, %bb.n ], [ %spec.select.i18, %bb.am ], [ 0, %bb.ak ]
  ret i32 %.114
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeCommitPhaseTwo(ptr nofree noundef captures(address) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !350  ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !349
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !434
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !636
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !441  ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !568  ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 18 ; 3 uses
  %i.l = load i8, ptr %i.k, align 2, !tbaa !569
  %i.m = icmp ult i8 %i.l, 2
  br i1 %i.m, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.o = load i8, ptr %i.n, align 8, !tbaa !570
  %.not25.i = icmp eq i8 %i.o, 0
  br i1 %.not25.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.h, i64 208
  %.02327.i = load ptr, ptr %i.p, align 8, !tbaa !571 ; 2 uses
  %.not2628.i = icmp eq ptr %.02327.i, null
  br i1 %.not2628.i, label %sqlite3PagerCommitPhaseTwo.exit.thread25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %mem.5.promoted.i = load i64, ptr @mem.5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  br label %bb.f

bb.f:                                             ; preds = %clearHistory.exit.i, %.lr.ph.i
  %.02329.i = phi ptr [ %.02327.i, %.lr.ph.i ], [ %.023.i, %clearHistory.exit.i ] ; 5 uses
  %i.r = phi i64 [ %mem.5.promoted.i, %.lr.ph.i ], [ %i.ak, %clearHistory.exit.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.02329.i, i64 88
  %i.t = load i32, ptr %i.q, align 8, !tbaa !573
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !575  ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %sqlite3_free.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !130
  %sext.i.i.i = shl i64 %i.z, 32
  %i.aa = ashr exact i64 %sext.i.i.i, 32
  %i.ab = sub nsw i64 %i.r, %i.aa                 ; 2 uses
  store i64 %i.ab, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.y) #43
  br label %sqlite3_free.exit.i.i

sqlite3_free.exit.i.i:                            ; preds = %bb.g, %bb.f
  %i.ac = phi i64 [ %i.ab, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !577 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %clearHistory.exit.i, label %bb.h

bb.h:                                             ; preds = %sqlite3_free.exit.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !130
  %sext.i4.i.i = shl i64 %i.ah, 32
  %i.ai = ashr exact i64 %sext.i4.i.i, 32
  %i.aj = sub nsw i64 %i.ac, %i.ai                ; 2 uses
  store i64 %i.aj, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.ag) #43
  br label %clearHistory.exit.i

clearHistory.exit.i:                              ; preds = %bb.h, %sqlite3_free.exit.i.i
  %i.ak = phi i64 [ %i.ac, %sqlite3_free.exit.i.i ], [ %i.aj, %bb.h ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.02329.i, i64 57
  store i8 0, ptr %i.al, align 1, !tbaa !572
  %i.am = getelementptr inbounds nuw i8, ptr %.02329.i, i64 56
  store i8 0, ptr %i.am, align 8, !tbaa !578
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i8 0, ptr %i.an, align 8, !tbaa !707
  %i.ao = getelementptr inbounds nuw i8, ptr %.02329.i, i64 58
  store i8 0, ptr %i.ao, align 2, !tbaa !563
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.02329.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %.023.i = load ptr, ptr %i.aq, align 8, !tbaa !571 ; 2 uses
  %.not26.i = icmp eq ptr %.023.i, null
  br i1 %.not26.i, label %sqlite3PagerCommitPhaseTwo.exit.thread25, label %bb.f, !llvm.loop !1304
end_hunk_0
begin_hunk_1_@clearSelect:bb.a
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !819
  tail call fastcc void @sqlite3SelectDelete(ptr noundef %i.cv)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !820
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.cx)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !821
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.cz)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3SrcListDelete(ptr noundef captures(address_is_null) %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 8, !tbaa !823
  %i.c = icmp sgt i16 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %sqlite3_free.exit20

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %sqlite3IdListDelete.exit
  %.022 = phi ptr [ %i.bo, %sqlite3IdListDelete.exit ], [ %i.d, %.lr.ph.preheader ] ; 8 uses
  %.01321 = phi i32 [ %i.bn, %sqlite3IdListDelete.exit ], [ 0, %.lr.ph.preheader ]
  %i.e = load ptr, ptr %.022, align 8, !tbaa !161 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %sqlite3_free.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !130
  %sext.i = shl i64 %i.h, 32
  %i.i = ashr exact i64 %sext.i, 32
  %i.j = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.k = sub nsw i64 %i.j, %i.i
  store i64 %i.k, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.g) #43
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %.lr.ph, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.022, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !162  ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %sqlite3_free.exit16, label %bb.d

bb.d:                                             ; preds = %sqlite3_free.exit
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !130
  %sext.i15 = shl i64 %i.p, 32
  %i.q = ashr exact i64 %sext.i15, 32
  %i.r = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.s = sub nsw i64 %i.r, %i.q
  store i64 %i.s, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.o) #43
  br label %sqlite3_free.exit16

sqlite3_free.exit16:                              ; preds = %sqlite3_free.exit, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.022, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !824  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %sqlite3_free.exit18, label %bb.e

bb.e:                                             ; preds = %sqlite3_free.exit16
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !130
  %sext.i17 = shl i64 %i.x, 32
  %i.y = ashr exact i64 %sext.i17, 32
  %i.z = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.aa = sub nsw i64 %i.z, %i.y
  store i64 %i.aa, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.w) #43
  br label %sqlite3_free.exit18

sqlite3_free.exit18:                              ; preds = %sqlite3_free.exit16, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.022, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !825
  tail call fastcc void @sqlite3DeleteTable(ptr noundef %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %.022, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !826
  tail call fastcc void @sqlite3SelectDelete(ptr noundef %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %.022, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !827
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %.022, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !828 ; 5 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %sqlite3IdListDelete.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sqlite3_free.exit18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %mem.5.promoted.i = load i64, ptr @mem.5, align 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !784 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %sqlite3_free.exit.i
  %i.an = phi i32 [ %i.ax, %sqlite3_free.exit.i ], [ %i.al, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %sqlite3_free.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.ao = phi i64 [ %i.ay, %sqlite3_free.exit.i ], [ %mem.5.promoted.i, %.preheader.i ] ; 2 uses
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !785
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !787 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %sqlite3_free.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !130
  %sext.i.i = shl i64 %i.au, 32
  %i.av = ashr exact i64 %sext.i.i, 32
  %i.aw = sub nsw i64 %i.ao, %i.av
  tail call void @free(ptr noundef nonnull %i.at) #43
  %.pre.i = load i32, ptr %i.ak, align 8, !tbaa !784
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.f, %.lr.ph.i
  %i.ax = phi i32 [ %i.an, %.lr.ph.i ], [ %.pre.i, %bb.f ] ; 2 uses
  %i.ay = phi i64 [ %i.ao, %.lr.ph.i ], [ %i.aw, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.az = sext i32 %i.ax to i64
  %i.ba = icmp slt i64 %indvars.iv.next.i, %i.az
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !72

._crit_edge.i:                                    ; preds = %sqlite3_free.exit.i, %.preheader.i
  %i.bb = phi i64 [ %mem.5.promoted.i, %.preheader.i ], [ %i.ay, %sqlite3_free.exit.i ] ; 2 uses
  %i.bc = load ptr, ptr %i.ai, align 8, !tbaa !785 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %sqlite3_free.exit11.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !130
  %sext.i8.i = shl i64 %i.bf, 32
  %i.bg = ashr exact i64 %sext.i8.i, 32
  %i.bh = sub nsw i64 %i.bb, %i.bg
  tail call void @free(ptr noundef nonnull %i.be) #43
  br label %sqlite3_free.exit11.i

sqlite3_free.exit11.i:                            ; preds = %bb.g, %._crit_edge.i
  %i.bi = phi i64 [ %i.bb, %._crit_edge.i ], [ %i.bh, %bb.g ]
  %i.bj = getelementptr inbounds i8, ptr %i.ai, i64 -8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !130
  %sext.i10.i = shl i64 %i.bk, 32
  %i.bl = ashr exact i64 %sext.i10.i, 32
  %i.bm = sub nsw i64 %i.bi, %i.bl
  store i64 %i.bm, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.bj) #43
  br label %sqlite3IdListDelete.exit

sqlite3IdListDelete.exit:                         ; preds = %sqlite3_free.exit18, %sqlite3_free.exit11.i
  %i.bn = add nuw nsw i32 %.01321, 1              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.022, i64 72
  %i.bp = load i16, ptr %0, align 8, !tbaa !823
  %i.bq = sext i16 %i.bp to i32
  %i.br = icmp slt i32 %i.bn, %i.bq
  br i1 %i.br, label %.lr.ph, label %sqlite3_free.exit20, !llvm.loop !1488

sqlite3_free.exit20:                              ; preds = %sqlite3IdListDelete.exit, %bb.b
  %i.bs = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !130
  %sext.i19 = shl i64 %i.bt, 32
  %i.bu = ashr exact i64 %sext.i19, 32
  %i.bv = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.bw = sub nsw i64 %i.bv, %i.bu
  store i64 %i.bw, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.bs) #43
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %sqlite3_free.exit20
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @checkList(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 2) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 9 uses
  %i.h = icmp sgt i32 %3, 0
  br i1 %i.h, label %.lr.ph98, label %.critedge

.lr.ph98:                                         ; preds = %bb.a
  %i.i = add nsw i32 %3, -1                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not61 = icmp eq i32 %1, 0
  br i1 %.not61, label %.lr.ph98.split.us, label %.lr.ph98.split

.lr.ph98.split.us:                                ; preds = %.lr.ph98, %bb.k
  %5 = phi i32 [ %i.ap, %bb.k ], [ %i.i, %.lr.ph98 ] ; 3 uses
  %.05495.us.a = phi i32 [ %i.ao, %bb.k ], [ %2, %.lr.ph98 ] ; 9 uses
  %.05594.us = phi i32 [ %5, %bb.k ], [ %3, %.lr.ph98 ] ; 2 uses
  %i.n = load i32, ptr %i.j, align 8, !tbaa !765
  %.not.us = icmp eq i32 %i.n, 0
  br i1 %.not.us, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph98.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #43
  %i.o = icmp slt i32 %.05495.us.a, 1
  br i1 %i.o, label %.split.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.k, align 8, !tbaa !764
  %i.q = icmp sgt i32 %.05495.us.a, %i.p
  br i1 %i.q, label %.split101.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !767
  %i.s = zext nneg i32 %.05495.us.a to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !112  ; 3 uses
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %.split104.us, label %checkRef.exit.us

checkRef.exit.us:                                 ; preds = %bb.d
  %i.w = add nsw i32 %i.u, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !112
  %i.x = icmp slt i32 %i.u, 2
  br i1 %i.x, label %bb.e, label %.thread

bb.e:                                             ; preds = %checkRef.exit.us
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !763
  %i.z = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.y, i32 noundef %.05495.us.a, ptr noundef %i.g, i32 noundef 0)
  %.not60.us = icmp eq i32 %i.z, 0
  br i1 %.not60.us, label %bb.f, label %.split107.us

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !571 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 80
  %.val.us = load ptr, ptr %i.ab, align 8, !tbaa !576 ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !762   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 38
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !690
  %i.af = icmp ne i8 %i.ae, 0
  %i.ag = icmp ne i32 %.05594.us, 1
  %or.cond.us = and i1 %i.ag, %i.af
  br i1 %or.cond.us, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ah = load i32, ptr %.val.us, align 1
  %i.ai = call i32 @llvm.bswap.i32(i32 %i.ah)     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.aj = call fastcc i32 @ptrmapGet(ptr noundef nonnull %i.ac, i32 noundef %i.ai, ptr noundef %i.a, ptr noundef nonnull %i.b)
  %.not.i73.us = icmp eq i32 %i.aj, 0
  br i1 %.not.i73.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull @.str.225, i32 noundef %i.ai)
  br label %checkPtrmap.exit77.us

bb.i:                                             ; preds = %bb.g
  %i.ak = load i8, ptr %i.a, align 1, !tbaa !139  ; 2 uses
  %.not12.i74.us = icmp eq i8 %i.ak, 4
  %i.al = load i32, ptr %i.b, align 4             ; 2 uses
  %.not13.i75.us = icmp eq i32 %i.al, %.05495.us.a
  %or.cond.i76.us = select i1 %.not12.i74.us, i1 %.not13.i75.us, i1 false
  br i1 %or.cond.i76.us, label %checkPtrmap.exit77.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = zext i8 %i.ak to i32
  call void (ptr, ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull @.str.226, i32 noundef %i.ai, i32 noundef 4, i32 noundef %.05495.us.a, i32 noundef %i.am, i32 noundef %i.al)
  br label %checkPtrmap.exit77.us

checkPtrmap.exit77.us:                            ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.k

bb.k:                                             ; preds = %checkPtrmap.exit77.us, %bb.f
  %i.an = load i32, ptr %.val.us, align 1
  %i.ao = call i32 @llvm.bswap.i32(i32 %i.an)
  call fastcc void @sqlite3PagerUnref(ptr noundef nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #43
  %i.ap = add nsw i32 %5, -1
  %.not168 = icmp eq i32 %5, 0
  br i1 %.not168, label %.critedge, label %.lr.ph98.split.us

.lr.ph98.split:                                   ; preds = %.lr.ph98, %bb.ag
  %i.aq = phi i32 [ %i.ef, %bb.ag ], [ %i.i, %.lr.ph98 ]
  %.05495 = phi i32 [ %i.ee, %bb.ag ], [ %2, %.lr.ph98 ] ; 11 uses
  %.05594 = phi i32 [ %.2, %bb.ag ], [ %3, %.lr.ph98 ] ; 2 uses
  %i.ar = load i32, ptr %i.j, align 8, !tbaa !765
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %.lr.ph98.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #43
  %i.as = icmp slt i32 %.05495, 1
  br i1 %i.as, label %.split.us, label %bb.m

.split.us:                                        ; preds = %bb.l, %bb.b
  %.us-phi = phi i32 [ %.05594.us, %bb.b ], [ %.05594, %bb.l ]
  call void (ptr, ptr, ptr, ...) @checkAppendMsg(ptr noundef %0, ptr noundef %4, ptr noundef nonnull @.str.220, i32 noundef %.us-phi, i32 noundef %3, i32 noundef %2)
  br label %.thread

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.k, align 8, !tbaa !764
  %i.au = icmp sgt i32 %.05495, %i.at
  br i1 %i.au, label %.split101.us, label %bb.n

.split101.us:                                     ; preds = %bb.m, %bb.c
  %.us-phi102 = phi i32 [ %.05495.us.a, %bb.c ], [ %.05495, %bb.m ]
  call void (ptr, ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull @.str.223, i32 noundef %.us-phi102)
  br label %.thread

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !767
  %i.aw = zext nneg i32 %.05495 to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !112 ; 3 uses
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %.split104.us, label %checkRef.exit

.split104.us:                                     ; preds = %bb.n, %bb.d
  %.us-phi105 = phi i32 [ %.05495.us.a, %bb.d ], [ %.05495, %bb.n ]
  call void (ptr, ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull @.str.224, i32 noundef %.us-phi105)
  br label %.thread

checkRef.exit:                                    ; preds = %bb.n
  %i.ba = add nsw i32 %i.ay, 1
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !112
  %i.bb = icmp slt i32 %i.ay, 2
  br i1 %i.bb, label %bb.o, label %.thread

bb.o:                                             ; preds = %checkRef.exit
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !763
  %i.bd = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.bc, i32 noundef %.05495, ptr noundef %i.g, i32 noundef 0)
  %.not60 = icmp eq i32 %i.bd, 0
  br i1 %.not60, label %bb.p, label %.split107.us

.split107.us:                                     ; preds = %bb.o, %bb.e
  %.us-phi108 = phi i32 [ %.05495.us.a, %bb.e ], [ %.05495, %bb.o ]
  call void (ptr, ptr, ptr, ...) @checkAppendMsg(ptr noundef %0, ptr noundef %4, ptr noundef nonnull @.str.221, i32 noundef %.us-phi108)
  br label %.thread

bb.p:                                             ; preds = %bb.o
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !571 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 80
  %.val = load ptr, ptr %i.bf, align 8, !tbaa !576 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !139
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw i32 %i.bi, 24                   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 5
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !139
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 16               ; 2 uses
  %i.bo = or disjoint i32 %i.bn, %i.bj
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 6
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !139
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 8                ; 2 uses
  %i.bt = or disjoint i32 %i.bo, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 7
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !139
  %i.bw = zext i8 %i.bv to i32                    ; 2 uses
  %i.bx = or disjoint i32 %i.bt, %i.bw            ; 3 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !762   ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 38
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !690
  %.not62 = icmp eq i8 %i.ca, 0
  br i1 %.not62, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #43
  %i.cb = call fastcc i32 @ptrmapGet(ptr noundef nonnull %i.by, i32 noundef %.05495, ptr noundef %i.e, ptr noundef nonnull %i.f)
  %.not.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull @.str.225, i32 noundef %.05495)
  br label %checkPtrmap.exit

bb.s:                                             ; preds = %bb.q
  %i.cc = load i8, ptr %i.e, align 1, !tbaa !139  ; 2 uses
  %.not12.i = icmp eq i8 %i.cc, 2
  %i.cd = load i32, ptr %i.f, align 4             ; 2 uses
  %.not13.i = icmp eq i32 %i.cd, 0
  %or.cond.i64 = select i1 %.not12.i, i1 %.not13.i, i1 false
  br i1 %or.cond.i64, label %checkPtrmap.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = zext i8 %i.cc to i32
  call void (ptr, ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull @.str.226, i32 noundef %.05495, i32 noundef 2, i32 noundef 0, i32 noundef %i.ce, i32 noundef %i.cd)
  br label %checkPtrmap.exit

checkPtrmap.exit:                                 ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  %.pre = load ptr, ptr %0, align 8, !tbaa !762
  br label %bb.u

bb.u:                                             ; preds = %checkPtrmap.exit, %bb.p
  %i.cf = phi ptr [ %.pre, %checkPtrmap.exit ], [ %i.by, %bb.p ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 46
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !680
  %i.ci = lshr i16 %i.ch, 2
  %i.cj = zext nneg i16 %i.ci to i32
  %i.ck = add nsw i32 %i.cj, -8
  %i.cl = icmp sgt i32 %i.bx, %i.ck
  br i1 %i.cl, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.u
  %i.cm = icmp sgt i32 %i.bx, 0
  br i1 %i.cm, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cn = or disjoint i32 %i.bj, %i.bn
  %i.co = or disjoint i32 %i.cn, %i.bs
  %i.cp = or disjoint i32 %i.co, %i.bw
  %wide.trip.count = zext i32 %i.cp to i64
  br label %.lr.ph

bb.v:                                             ; preds = %bb.u
  call void (ptr, ptr, ptr, ...) @checkAppendMsg(ptr noundef %0, ptr noundef %4, ptr noundef nonnull @.str.222, i32 noundef %.05495)
  %i.cq = add nsw i32 %.05594, -2
  br label %bb.ag

.lr.ph:                                           ; preds = %.lr.ph.preheader, %checkRef.exit72
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %checkRef.exit72 ] ; 2 uses
  %i.cr = shl nuw nsw i64 %indvars.iv, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cr ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !139
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw i32 %i.cv, 24                   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 9
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !139
  %i.cz = zext i8 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 10
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !139
  %i.dd = zext i8 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 11
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !139
  %i.dh = zext i8 %i.dg to i32
  %i.di = or disjoint i32 %i.da, %i.dh
  %i.dj = or disjoint i32 %i.di, %i.de
  %i.dk = or disjoint i32 %i.dj, %i.cw            ; 8 uses
  %i.dl = load ptr, ptr %0, align 8, !tbaa !762   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 38
  %i.dn = load i8, ptr %i.dm, align 2, !tbaa !690
  %.not63 = icmp eq i8 %i.dn, 0
  br i1 %.not63, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #43
  %i.do = call fastcc i32 @ptrmapGet(ptr noundef nonnull %i.dl, i32 noundef %i.dk, ptr noundef %i.c, ptr noundef nonnull %i.d)
  %.not.i65 = icmp eq i32 %i.do, 0
  br i1 %.not.i65, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull @.str.225, i32 noundef %i.dk)
  br label %checkPtrmap.exit69

bb.y:                                             ; preds = %bb.w
  %i.dp = load i8, ptr %i.c, align 1, !tbaa !139  ; 2 uses
  %.not12.i66 = icmp eq i8 %i.dp, 2
  %i.dq = load i32, ptr %i.d, align 4             ; 2 uses
  %.not13.i67 = icmp eq i32 %i.dq, 0
  %or.cond.i68 = select i1 %.not12.i66, i1 %.not13.i67, i1 false
  br i1 %or.cond.i68, label %checkPtrmap.exit69, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dr = zext i8 %i.dp to i32
  call void (ptr, ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull @.str.226, i32 noundef %i.dk, i32 noundef 2, i32 noundef 0, i32 noundef %i.dr, i32 noundef %i.dq)
  br label %checkPtrmap.exit69

checkPtrmap.exit69:                               ; preds = %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  br label %bb.aa

bb.aa:                                            ; preds = %checkPtrmap.exit69, %.lr.ph
  %i.ds = icmp eq i32 %i.dk, 0
  br i1 %i.ds, label %checkRef.exit72, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = load i32, ptr %i.k, align 8, !tbaa !764
  %i.du = icmp sgt i32 %i.dk, %i.dt
  %i.dv = icmp slt i32 %i.cw, 0
  %or.cond.i70 = or i1 %i.dv, %i.du
  br i1 %or.cond.i70, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull @.str.223, i32 noundef %i.dk)
  br label %checkRef.exit72

bb.ad:                                            ; preds = %bb.ab
  %i.dw = load ptr, ptr %i.l, align 8, !tbaa !767
  %i.dx = zext nneg i32 %i.dk to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !112 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 1
  br i1 %i.ea, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull @.str.224, i32 noundef %i.dk)
  br label %checkRef.exit72

bb.af:                                            ; preds = %bb.ad
  %i.eb = add nsw i32 %i.dz, 1
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !112
  br label %checkRef.exit72

checkRef.exit72:                                  ; preds = %bb.aa, %bb.ac, %bb.ae, %bb.af
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1489

._crit_edge:                                      ; preds = %checkRef.exit72, %.preheader
  %i.ec = sub nsw i32 %i.aq, %i.bx
  br label %bb.ag

.thread:                                          ; preds = %checkRef.exit, %checkRef.exit.us, %.split.us, %.split107.us, %.split101.us, %.split104.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #43
  br label %.critedge

bb.ag:                                            ; preds = %._crit_edge, %bb.v
  %.2 = phi i32 [ %i.cq, %bb.v ], [ %i.ec, %._crit_edge ] ; 3 uses
  %i.ed = load i32, ptr %.val, align 1
  %i.ee = call i32 @llvm.bswap.i32(i32 %i.ed)
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #43
  %i.ef = add nsw i32 %.2, -1
  %i.eg = icmp sgt i32 %.2, 0
  br i1 %i.eg, label %.lr.ph98.split, label %.critedge

.critedge:                                        ; preds = %.lr.ph98.split, %bb.ag, %.lr.ph98.split.us, %bb.k, %bb.a, %.thread
end_hunk_1
begin_hunk_2_@sqlite3BtreeSetPageSize:bb.a
; Function Attrs: nounwind uwtable
define internal fastcc i32 @execExecSql(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %sqlite3_finalize.exit, label %sqlite3SafetyCheckOk.exit.i

sqlite3SafetyCheckOk.exit.i:                      ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !260
  switch i32 %i.e, label %sqlite3_finalize.exit [
    i32 -264537850, label %sqlite3LockAndPrepare.exit
    i32 -1607883113, label %sqlite3LockAndPrepare.exit
  ]

sqlite3LockAndPrepare.exit:                       ; preds = %sqlite3SafetyCheckOk.exit.i, %sqlite3SafetyCheckOk.exit.i
  %i.f = call fastcc i32 @sqlite3Prepare(ptr noundef nonnull %0, ptr noundef %1, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef null), !inline_history !14 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.preheader, label %sqlite3_finalize.exit

.preheader:                                       ; preds = %sqlite3LockAndPrepare.exit
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !262  ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %execSql.exit
  %i.k = tail call i32 @sqlite3_step(ptr noundef %i.g)
  %i.l = icmp eq i32 %i.k, 100
  br i1 %i.l, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @sqlite3_column_text(ptr noundef %i.g, i32 noundef 0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %execSql.exit.thread, label %sqlite3SafetyCheckOk.exit

sqlite3SafetyCheckOk.exit:                        ; preds = %bb.c
  %i.n = load i32, ptr %i.d, align 8, !tbaa !260  ; 2 uses
  switch i32 %i.n, label %.thread [
    i32 -264537850, label %sqlite3_prepare.exit
    i32 -1607883113, label %sqlite3_prepare.exit
  ]

sqlite3_prepare.exit:                             ; preds = %sqlite3SafetyCheckOk.exit, %sqlite3SafetyCheckOk.exit
  %i.o = call fastcc i32 @sqlite3Prepare(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null), !inline_history !67
  %.not5.i = icmp eq i32 %i.o, 0
  br i1 %.not5.i, label %thread-pre-split, label %sqlite3_prepare.exit..thread_crit_edge

sqlite3_prepare.exit..thread_crit_edge:           ; preds = %sqlite3_prepare.exit
  %.val.i.pre = load i32, ptr %i.d, align 8, !tbaa !260
  br label %.thread

.thread:                                          ; preds = %sqlite3_prepare.exit..thread_crit_edge, %sqlite3SafetyCheckOk.exit
  %.val.i = phi i32 [ %.val.i.pre, %sqlite3_prepare.exit..thread_crit_edge ], [ %i.n, %sqlite3SafetyCheckOk.exit ]
  switch i32 %.val.i, label %execSql.exit.thread [
    i32 -264537850, label %bb.d
    i32 -1607883113, label %bb.d
    i32 1266094736, label %bb.d
  ]

bb.d:                                             ; preds = %.thread, %.thread, %.thread
  %i.p = load i8, ptr %i.h, align 2, !tbaa !202
  %.not8.i = icmp eq i8 %i.p, 0
  br i1 %.not8.i, label %bb.e, label %execSql.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.i, align 8, !tbaa !201
  %i.r = load i32, ptr %i.j, align 4, !tbaa !205
  %i.s = and i32 %i.r, %i.q
  br label %execSql.exit

thread-pre-split:                                 ; preds = %sqlite3_prepare.exit
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !262  ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.f
  %i.t = tail call i32 @sqlite3_step(ptr noundef %.pr), !inline_history !773
  %i.u = icmp eq i32 %i.t, 100
  br i1 %i.u, label %bb.f, label %bb.g, !llvm.loop !68

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq ptr %.pr, null
  br i1 %i.v, label %execSql.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.pr, i64 116
  %i.x = load i32, ptr %i.w, align 4, !tbaa !178
  switch i32 %i.x, label %execSql.exit.thread [
    i32 -1108210269, label %bb.i
    i32 1369188723, label %bb.i
    i32 649915045, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.y = tail call fastcc i32 @sqlite3VdbeReset(ptr noundef nonnull %.pr)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i17 = phi i32 [ %i.y, %bb.i ], [ 0, %bb.h ]
  tail call fastcc void @sqlite3VdbeDelete(ptr noundef nonnull %.pr)
  br label %execSql.exit

execSql.exit.thread:                              ; preds = %bb.c, %bb.d, %.thread, %bb.h
  %.0.i.ph = phi i32 [ 21, %bb.h ], [ 7, %bb.c ], [ 21, %.thread ], [ 7, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %.loopexit

execSql.exit:                                     ; preds = %bb.j, %bb.g, %bb.e
  %.0.i = phi i32 [ %i.s, %bb.e ], [ %.0.i.i17, %bb.j ], [ 0, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %.not9 = icmp eq i32 %.0.i, 0
  br i1 %.not9, label %bb.b, label %.loopexit, !llvm.loop !1500

.loopexit:                                        ; preds = %execSql.exit, %execSql.exit.thread
  %.0.i35 = phi i32 [ %.0.i.ph, %execSql.exit.thread ], [ %.0.i, %execSql.exit ] ; 4 uses
  %i.z = icmp eq ptr %i.g, null
  br i1 %i.z, label %sqlite3_finalize.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !178
  switch i32 %i.ab, label %sqlite3_finalize.exit [
    i32 -1108210269, label %bb.l
    i32 1369188723, label %bb.l
    i32 649915045, label %sqlite3_finalize.exit.sink.split
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.ac = tail call fastcc i32 @sqlite3VdbeReset(ptr noundef nonnull %i.g) ; 0 uses
  br label %sqlite3_finalize.exit.sink.split

bb.m:                                             ; preds = %bb.b
  %i.ad = icmp eq ptr %i.g, null
  br i1 %i.ad, label %sqlite3_finalize.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !178
  switch i32 %i.af, label %sqlite3_finalize.exit [
    i32 -1108210269, label %bb.o
    i32 1369188723, label %bb.o
    i32 649915045, label %sqlite3_finalize.exit.sink.split
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.ag = tail call fastcc i32 @sqlite3VdbeReset(ptr noundef nonnull %i.g)
  br label %sqlite3_finalize.exit.sink.split

sqlite3_finalize.exit.sink.split:                 ; preds = %bb.n, %bb.o, %bb.k, %bb.l
  %.0.ph = phi i32 [ %.0.i35, %bb.k ], [ %.0.i35, %bb.l ], [ %i.ag, %bb.o ], [ 0, %bb.n ]
  tail call fastcc void @sqlite3VdbeDelete(ptr noundef nonnull %i.g)
  br label %sqlite3_finalize.exit

sqlite3_finalize.exit:                            ; preds = %sqlite3_finalize.exit.sink.split, %sqlite3SafetyCheckOk.exit.i, %bb.a, %bb.n, %bb.m, %bb.k, %.loopexit, %sqlite3LockAndPrepare.exit
  %.0 = phi i32 [ 21, %sqlite3SafetyCheckOk.exit.i ], [ 21, %bb.n ], [ %i.f, %sqlite3LockAndPrepare.exit ], [ %.0.i35, %.loopexit ], [ %.0.i35, %bb.k ], [ 0, %bb.m ], [ 21, %bb.a ], [ %.0.ph, %sqlite3_finalize.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeCopyFile(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !350  ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !350  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !349
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !434
  %i.j = load ptr, ptr %1, align 8, !tbaa !349
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !434
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i8, ptr %i.l, align 8, !tbaa !636
  %.not.i = icmp eq i8 %i.m, 2
  br i1 %.not.i, label %bb.b, label %btreeCopyFile.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i8, ptr %i.n, align 8, !tbaa !636
  %.not51.i = icmp eq i8 %i.o, 2
  br i1 %.not51.i, label %bb.c, label %btreeCopyFile.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !435
  %.not52.i = icmp eq ptr %i.q, null
  br i1 %.not52.i, label %bb.d, label %btreeCopyFile.exit

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !441
  %i.s = tail call fastcc i32 @sqlite3PagerPagecount(ptr noundef %i.r) ; 3 uses
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !441
  %i.u = tail call fastcc i32 @sqlite3PagerPagecount(ptr noundef %i.t) ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.w = load i16, ptr %i.v, align 4, !tbaa !681
  %i.x = zext i16 %i.w to i32
  %i.y = udiv i32 1073741824, %i.x                ; 2 uses
  %i.z = add nuw nsw i32 %i.y, 1
  %.not83.i = icmp eq i32 %i.u, 0
  br i1 %.not83.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.j
  %.04377.i = phi i32 [ %i.ap, %bb.j ], [ 1, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.aa = icmp eq i32 %.04377.i, %i.z
  br i1 %i.aa, label %bb.j, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !441
  %i.ac = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.ab, i32 noundef %.04377.i, ptr noundef %i.b, i32 noundef 0) ; 2 uses
  %.not53.i = icmp eq i32 %i.ac, 0
  br i1 %.not53.i, label %bb.f, label %._crit_edge.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !441 ; 2 uses
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !571 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 80
  %.val.i = load ptr, ptr %i.af, align 8, !tbaa !576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.ag = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.ad, i32 noundef %.04377.i, ptr noundef %i.a, i32 noundef 0) ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %sqlite3PagerOverwrite.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !571 ; 3 uses
  %i.aj = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.ai) ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr i8, ptr %i.ai, i64 80
  %.val.i.i = load ptr, ptr %i.al, align 8, !tbaa !576
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %i.an = load i32, ptr %i.am, align 4, !tbaa !565
  %i.ao = sext i32 %i.an to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.val.i.i, ptr readonly align 1 %.val.i, i64 %i.ao, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.ai)
  br label %sqlite3PagerOverwrite.exit.i

sqlite3PagerOverwrite.exit.i:                     ; preds = %bb.i, %bb.f
  %.0.i.i = phi i32 [ %i.aj, %bb.i ], [ %i.ag, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  tail call fastcc void @sqlite3PagerUnref(ptr noundef nonnull %i.ae)
  br label %bb.j

._crit_edge.thread.i:                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br label %.thread67.i

bb.j:                                             ; preds = %sqlite3PagerOverwrite.exit.i, %.lr.ph.i
  %.146.ph.i = phi i32 [ 0, %.lr.ph.i ], [ %.0.i.i, %sqlite3PagerOverwrite.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  %i.ap = add i32 %.04377.i, 1                    ; 2 uses
  %i.aq = icmp eq i32 %.146.ph.i, 0
  %i.ar = icmp ule i32 %i.ap, %i.u
  %i.as = and i1 %i.ar, %i.aq
  br i1 %i.as, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1501

.loopexit.i:                                      ; preds = %bb.j, %bb.d
  %.2.i = phi i32 [ 0, %bb.d ], [ %.146.ph.i, %bb.j ] ; 2 uses
  %.14478.i = add i32 %i.u, 1                     ; 2 uses
  %i.at = icmp eq i32 %.2.i, 0
  %i.au = icmp ule i32 %.14478.i, %i.s
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %.lr.ph81.i, label %._crit_edge.i

.lr.ph81.i:                                       ; preds = %.loopexit.i, %bb.u
  %.14480.i = phi i32 [ %.144.i, %bb.u ], [ %.14478.i, %.loopexit.i ] ; 3 uses
  %.144.in79.i = phi i32 [ %.14480.i, %bb.u ], [ %i.u, %.loopexit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  %i.aw = icmp eq i32 %.144.in79.i, %i.y
  br i1 %i.aw, label %bb.u, label %bb.k

bb.k:                                             ; preds = %.lr.ph81.i
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !441
  %i.ay = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.ax, i32 noundef %.14480.i, ptr noundef %i.c, i32 noundef 0) ; 2 uses
  %.not54.i = icmp eq i32 %i.ay, 0
  br i1 %.not54.i, label %bb.l, label %.thread63.i

.thread63.i:                                      ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  br label %.thread67.i

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !571 ; 8 uses
  %i.ba = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.az)
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !556 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !570
  %.not.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i, label %bb.m, label %sqlite3PagerDontWrite.exit.i

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 59
  store i8 1, ptr %i.be, align 1, !tbaa !701
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 57 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !572
  %.not11.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not11.i.i, label %sqlite3PagerDontWrite.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 13
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !582
  %.not12.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not12.i.i, label %bb.o, label %sqlite3PagerDontWrite.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !581 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !595
  %i.bn = icmp eq i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 44
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !580
  %i.bq = icmp slt i32 %i.bp, %i.bk
  br i1 %i.bq, label %sqlite3PagerDontWrite.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i8 0, ptr %i.bf, align 1, !tbaa !572
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !597 ; 4 uses
  %.not11.i.i.i = icmp eq ptr %i.bs, null
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !598 ; 3 uses
  br i1 %.not11.i.i.i, label %._crit_edge.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  store ptr %.pre.i.i.i, ptr %i.bt, align 8, !tbaa !598
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.r, %bb.q
  %.not12.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not12.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 64
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !597
  br label %sqlite3PagerDontWrite.exit.i

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bb, i64 208
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !599
  br label %sqlite3PagerDontWrite.exit.i

sqlite3PagerDontWrite.exit.i:                     ; preds = %bb.t, %bb.s, %bb.p, %bb.n, %bb.m, %bb.l
  tail call fastcc void @sqlite3PagerUnref(ptr noundef nonnull %i.az)
  br label %bb.u

bb.u:                                             ; preds = %sqlite3PagerDontWrite.exit.i, %.lr.ph81.i
  %.4.i = phi i32 [ %i.ba, %sqlite3PagerDontWrite.exit.i ], [ 0, %.lr.ph81.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  %.144.i = add i32 %.14480.i, 1                  ; 2 uses
  %i.bw = icmp eq i32 %.4.i, 0
  %i.bx = icmp ule i32 %.144.i, %i.s
  %i.by = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %i.by, label %.lr.ph81.i, label %._crit_edge.i, !llvm.loop !1502

._crit_edge.i:                                    ; preds = %bb.u, %.loopexit.i
  %.3.lcssa.i = phi i32 [ %.2.i, %.loopexit.i ], [ %.4.i, %bb.u ] ; 2 uses
  %.not55.i = icmp eq i32 %.3.lcssa.i, 0
  br i1 %.not55.i, label %bb.v, label %.thread67.i

bb.v:                                             ; preds = %._crit_edge.i
  %i.bz = icmp ult i32 %i.u, %i.s
  br i1 %i.bz, label %bb.w, label %btreeCopyFile.exit

bb.w:                                             ; preds = %bb.v
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !441
  %i.cb = tail call fastcc i32 @sqlite3PagerTruncate(ptr noundef %i.ca, i32 noundef %i.u) ; 2 uses
  %.not56.i = icmp eq i32 %i.cb, 0
  br i1 %.not56.i, label %btreeCopyFile.exit, label %.thread67.i

.thread67.i:                                      ; preds = %bb.w, %._crit_edge.i, %.thread63.i, %._crit_edge.thread.i
  %.670.i = phi i32 [ %i.cb, %bb.w ], [ %i.ay, %.thread63.i ], [ %.3.lcssa.i, %._crit_edge.i ], [ %i.ac, %._crit_edge.thread.i ]
  tail call fastcc void @sqlite3BtreeRollback(ptr noundef nonnull %0)
  br label %btreeCopyFile.exit

btreeCopyFile.exit:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.v, %bb.w, %.thread67.i
  %.047.i = phi i32 [ 5, %bb.c ], [ 1, %bb.a ], [ 1, %bb.b ], [ %.670.i, %.thread67.i ], [ 0, %bb.w ], [ 0, %bb.v ]
  ret i32 %.047.i
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeCommit(ptr nofree noundef captures(address) %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc i32 @sqlite3BtreeCommitPhaseOne(ptr noundef %0, ptr noundef null) ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @sqlite3BtreeCommitPhaseTwo(ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @vtabCallConstructor(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store ptr null, ptr %i.a, align 8, !tbaa !420
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !413
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  store ptr null, ptr %i.b, align 8, !tbaa !150
  %i.g = load ptr, ptr %1, align 8, !tbaa !406
  %i.h = tail call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %i.g) ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.loopexit110, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  store ptr %1, ptr %i.i, align 8, !tbaa !374
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !372
  %i.l = call i32 %3(ptr noundef %0, ptr noundef %i.k, i32 noundef %i.f, ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #43 ; 4 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.o = icmp ne ptr %i.n, null
  %or.cond = select i1 %i.m, i1 %i.o, i1 false
  br i1 %or.cond, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !371
  store ptr %i.p, ptr %i.n, align 8, !tbaa !257
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 1, ptr %i.q, align 8, !tbaa !410
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.n, ptr %i.r, align 8, !tbaa !409
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !150  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.249, ptr noundef nonnull %i.h)
  store ptr %i.u, ptr %4, align 8, !tbaa !150
  br label %sqlite3_free.exit100

bb.f:                                             ; preds = %bb.d
  %i.v = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull %i.s)
  store ptr %i.v, ptr %4, align 8, !tbaa !150
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !150  ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %sqlite3_free.exit100, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !130
  %sext.i = shl i64 %i.z, 32
  %i.aa = ashr exact i64 %sext.i, 32
  %i.ab = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.ac = sub nsw i64 %i.ab, %i.aa
  store i64 %i.ac, ptr @mem.5, align 8, !tbaa !125
  call void @free(ptr noundef nonnull %i.y) #43
  br label %sqlite3_free.exit100
end_hunk_2
begin_hunk_3_@sqlite3Pragma:bb.a
  br i1 %.not6801027, label %sqlite3VdbeChangeP2.exit871.thread, label %.lr.ph1031

.lr.ph1031:                                       ; preds = %bb.fy, %.lr.ph1031
  %.06071029 = phi ptr [ %.0607, %.lr.ph1031 ], [ %.06071026, %bb.fy ] ; 2 uses
  %.06081028 = phi i32 [ %i.abf, %.lr.ph1031 ], [ 0, %bb.fy ] ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.06071029, i64 16
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !425
  %i.abf = add nuw nsw i32 %.06081028, 1
  %i.abg = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i11.i.i, i32 noundef 46, i32 noundef %.06081028, i32 noundef 1) ; 0 uses
  %i.abh = load ptr, ptr %i.abe, align 8, !tbaa !251
  %i.abi = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef nonnull %.0.i11.i.i, i32 noundef 88, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef %i.abh, i32 noundef 0) ; 0 uses
  %i.abj = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i11.i.i, i32 noundef 85, i32 noundef 1, i32 noundef 2) ; 0 uses
  %.0607 = load ptr, ptr %.06071029, align 8, !tbaa !423 ; 2 uses
  %.not680 = icmp eq ptr %.0607, null
  br i1 %.not680, label %sqlite3VdbeChangeP2.exit871.thread, label %.lr.ph1031, !llvm.loop !1665

bb.fz:                                            ; preds = %bb.fx
  %i.abk = tail call fastcc i32 @sqlite3StrICmp(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.467)
  %i.abl = icmp eq i32 %i.abk, 0
  %or.cond13 = select i1 %i.abl, i1 %i.wo, i1 false
  br i1 %or.cond13, label %bb.ga, label %bb.gf

bb.ga:                                            ; preds = %bb.fz
  %i.abm = tail call fastcc i32 @sqlite3ReadSchema(ptr noundef nonnull %0)
  %.not675 = icmp eq i32 %i.abm, 0
  br i1 %.not675, label %bb.gb, label %sqlite3_free.exit887

bb.gb:                                            ; preds = %bb.ga
  %i.abn = tail call fastcc ptr @sqlite3FindTable(ptr noundef %i.b, ptr noundef nonnull %.0, ptr noundef %i.db) ; 3 uses
  %.not676 = icmp eq ptr %i.abn, null
  br i1 %.not676, label %sqlite3VdbeChangeP2.exit871.thread, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.abo = tail call fastcc ptr @sqlite3GetVdbe(ptr noundef nonnull %0) ; 14 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 72
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !399 ; 2 uses
  %.not677 = icmp eq ptr %i.abq, null
  br i1 %.not677, label %sqlite3VdbeChangeP2.exit871, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  tail call fastcc void @sqlite3VdbeSetNumCols(ptr noundef %i.abo, i32 noundef 5)
  store i32 5, ptr %i.q, align 8, !tbaa !841
  tail call fastcc void @sqlite3VdbeSetColName(ptr noundef %i.abo, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.468, i32 noundef -2)
  tail call fastcc void @sqlite3VdbeSetColName(ptr noundef %i.abo, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.462, i32 noundef -2)
  tail call fastcc void @sqlite3VdbeSetColName(ptr noundef %i.abo, i32 noundef 2, i32 noundef 0, ptr noundef nonnull @.str.295, i32 noundef -2)
  tail call fastcc void @sqlite3VdbeSetColName(ptr noundef %i.abo, i32 noundef 3, i32 noundef 0, ptr noundef nonnull @.str.264, i32 noundef -2)
  tail call fastcc void @sqlite3VdbeSetColName(ptr noundef %i.abo, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.469, i32 noundef -2)
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abn, i64 16
  br label %.preheader977

.preheader977:                                    ; preds = %bb.gd, %._crit_edge1023
  %.06051025 = phi i32 [ 0, %bb.gd ], [ %i.acu, %._crit_edge1023 ] ; 2 uses
  %.06061024 = phi ptr [ %i.abq, %bb.gd ], [ %i.acw, %._crit_edge1023 ] ; 4 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.06061024, i64 32 ; 2 uses
  %i.abt = load i32, ptr %i.abs, align 8, !tbaa !903
  %i.abu = icmp sgt i32 %i.abt, 0
  br i1 %i.abu, label %.lr.ph1022, label %._crit_edge1023

.lr.ph1022:                                       ; preds = %.preheader977
  %i.abv = getelementptr inbounds nuw i8, ptr %.06061024, i64 40 ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %.06061024, i64 16
  br label %bb.ge

bb.ge:                                            ; preds = %.lr.ph1022, %bb.ge
  %indvars.iv1058 = phi i64 [ 0, %.lr.ph1022 ], [ %indvars.iv.next1059, %bb.ge ] ; 4 uses
  %i.abx = load ptr, ptr %i.abv, align 8, !tbaa !902
  %i.aby = getelementptr inbounds nuw [16 x i8], ptr %i.abx, i64 %indvars.iv1058
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !906 ; 2 uses
  %i.acb = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.abo, i32 noundef 46, i32 noundef %.06051025, i32 noundef 1) ; 0 uses
  %i.acc = trunc nuw nsw i64 %indvars.iv1058 to i32
  %i.acd = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.abo, i32 noundef 46, i32 noundef %i.acc, i32 noundef 2) ; 0 uses
  %i.ace = load ptr, ptr %i.abw, align 8, !tbaa !752
  %i.acf = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %i.abo, i32 noundef 88, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef %i.ace, i32 noundef 0) ; 0 uses
  %i.acg = load ptr, ptr %i.abr, align 8, !tbaa !302
  %i.ach = load ptr, ptr %i.abv, align 8, !tbaa !902
  %i.aci = getelementptr inbounds nuw [16 x i8], ptr %i.ach, i64 %indvars.iv1058
  %i.acj = load i32, ptr %i.aci, align 8, !tbaa !905
  %i.ack = sext i32 %i.acj to i64
  %i.acl = getelementptr inbounds [40 x i8], ptr %i.acg, i64 %i.ack
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !306
  %i.acn = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %i.abo, i32 noundef 88, i32 noundef 0, i32 noundef 4, i32 noundef 0, ptr noundef %i.acm, i32 noundef 0) ; 0 uses
  %.not679 = icmp eq ptr %i.aca, null
  %i.aco = select i1 %.not679, i32 112, i32 88
  %i.acp = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %i.abo, i32 noundef %i.aco, i32 noundef 0, i32 noundef 5, i32 noundef 0, ptr noundef %i.aca, i32 noundef 0) ; 0 uses
  %i.acq = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.abo, i32 noundef 85, i32 noundef 1, i32 noundef 5) ; 0 uses
  %indvars.iv.next1059 = add nuw nsw i64 %indvars.iv1058, 1 ; 2 uses
  %i.acr = load i32, ptr %i.abs, align 8, !tbaa !903
  %i.acs = sext i32 %i.acr to i64
  %i.act = icmp slt i64 %indvars.iv.next1059, %i.acs
  br i1 %i.act, label %bb.ge, label %._crit_edge1023, !llvm.loop !1666

._crit_edge1023:                                  ; preds = %bb.ge, %.preheader977
  %i.acu = add nuw nsw i32 %.06051025, 1
  %i.acv = getelementptr inbounds nuw i8, ptr %.06061024, i64 8
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !402 ; 2 uses
  %.not678 = icmp eq ptr %i.acw, null
  br i1 %.not678, label %sqlite3VdbeChangeP2.exit871, label %.preheader977, !llvm.loop !1667

bb.gf:                                            ; preds = %bb.fz
  %i.acx = tail call fastcc i32 @sqlite3StrICmp(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.470)
  %i.acy = icmp eq i32 %i.acx, 0
  br i1 %i.acy, label %bb.gg, label %bb.gi

bb.gg:                                            ; preds = %bb.gf
  br i1 %i.wo, label %bb.gh, label %sqlite3VdbeChangeP2.exit871.thread

bb.gh:                                            ; preds = %bb.gg
  %i.acz = tail call fastcc i32 @getSafetyLevel(ptr noundef nonnull %.0)
  %i.ada = and i32 %i.acz, 1
  tail call fastcc void @sqlite3RegisterLikeFunctions(ptr noundef %i.b, i32 noundef %i.ada)
  br label %sqlite3VdbeChangeP2.exit871.thread

bb.gi:                                            ; preds = %bb.gf
  %i.adb = tail call fastcc i32 @sqlite3StrICmp(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.471)
  %i.adc = icmp eq i32 %i.adb, 0
  br i1 %i.adc, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.add = tail call fastcc i32 @sqlite3StrICmp(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.472)
  %i.ade = icmp eq i32 %i.add, 0
  br i1 %i.ade, label %bb.gk, label %bb.hy

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.adf = load i8, ptr %i.ax, align 1, !tbaa !139
  %.not671 = icmp eq i8 %i.adf, 113
  %i.adg = tail call fastcc i32 @sqlite3ReadSchema(ptr noundef nonnull %0)
  %.not668 = icmp eq i32 %i.adg, 0
  br i1 %.not668, label %bb.gl, label %sqlite3_free.exit887

bb.gl:                                            ; preds = %bb.gk
  store i32 6, ptr %i.q, align 8, !tbaa !841
  tail call fastcc void @sqlite3VdbeSetNumCols(ptr noundef nonnull %.0.i11.i.i, i32 noundef 1)
  tail call fastcc void @sqlite3VdbeSetColName(ptr noundef nonnull %.0.i11.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.471, i32 noundef -2)
  br i1 %i.wo, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.adh = tail call i64 @__isoc23_strtol(ptr noundef nonnull %.0, ptr noundef null, i32 noundef 10) #43, !inline_history !64
  %i.adi = trunc i64 %i.adh to i32                ; 2 uses
  %i.adj = icmp slt i32 %i.adi, 1
  %spec.store.select = select i1 %i.adj, i32 100, i32 %i.adi
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %.0599 = phi i32 [ %spec.store.select, %bb.gm ], [ 100, %bb.gl ] ; 2 uses
  %i.adk = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i11.i.i, i32 noundef 46, i32 noundef %.0599, i32 noundef 1) ; 0 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.adm = load i32, ptr %i.adl, align 8, !tbaa !315
  %i.adn = icmp sgt i32 %i.adm, 0
  br i1 %i.adn, label %.lr.ph1019, label %._crit_edge1020

.lr.ph1019:                                       ; preds = %bb.gn
  %i.ado = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 24 ; 12 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 32 ; 13 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 28 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 339
  br label %bb.go

bb.go:                                            ; preds = %.lr.ph1019, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph1019 ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %i.ads = trunc nuw nsw i64 %indvars.iv to i32
  tail call fastcc void @sqlite3CodeVerifySchema(ptr noundef nonnull %0, i32 noundef %i.ads)
  %i.adt = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %.0.i11.i.i, i32 noundef 122, i32 noundef 1) ; 3 uses
  %i.adu = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i11.i.i, i32 noundef 37, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.adv = load i32, ptr %i.ado, align 8, !tbaa !208 ; 2 uses
  %i.adw = icmp sgt i32 %i.adt, -1
  %i.adx = icmp sgt i32 %i.adv, %i.adt
  %or.cond.i815 = select i1 %i.adw, i1 %i.adx, i1 false
  br i1 %or.cond.i815, label %bb.gp, label %sqlite3VdbeJumpHere.exit817

bb.gp:                                            ; preds = %bb.go
  %i.ady = load ptr, ptr %i.adp, align 8, !tbaa !209 ; 2 uses
  %.not.i.i816 = icmp eq ptr %i.ady, null
  br i1 %.not.i.i816, label %sqlite3VdbeJumpHere.exit817, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.adz = zext nneg i32 %i.adt to i64
  %i.aea = getelementptr inbounds nuw [24 x i8], ptr %i.ady, i64 %i.adz
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 8
  store i32 %i.adv, ptr %i.aeb, align 8, !tbaa !213
  br label %sqlite3VdbeJumpHere.exit817

sqlite3VdbeJumpHere.exit817:                      ; preds = %bb.go, %bb.gp, %bb.gq
  %i.aec = load ptr, ptr %i.ac, align 8, !tbaa !279
  %i.aed = getelementptr inbounds nuw [48 x i8], ptr %i.aec, i64 %indvars.iv
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 40
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !283
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 24 ; 2 uses
  %.0597995 = load ptr, ptr %i.aeg, align 8, !tbaa !423 ; 2 uses
  %.not669996 = icmp eq ptr %.0597995, null
  br i1 %.not669996, label %.critedge, label %.lr.ph999

.loopexit979:                                     ; preds = %sqlite3VdbeAddOp2.exit, %.lr.ph999
  %.1596.lcssa = phi i32 [ %.1596990, %.lr.ph999 ], [ %.1596, %sqlite3VdbeAddOp2.exit ] ; 4 uses
  %.0597 = load ptr, ptr %.0597998, align 8, !tbaa !423 ; 2 uses
  %.not669 = icmp eq ptr %.0597, null
  br i1 %.not669, label %._crit_edge, label %.lr.ph999, !llvm.loop !1668

.lr.ph999:                                        ; preds = %sqlite3VdbeJumpHere.exit817, %.loopexit979
  %.0597998 = phi ptr [ %.0597, %.loopexit979 ], [ %.0597995, %sqlite3VdbeJumpHere.exit817 ] ; 2 uses
  %.0595997 = phi i32 [ %.1596.lcssa, %.loopexit979 ], [ 0, %sqlite3VdbeJumpHere.exit817 ] ; 3 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %.0597998, i64 16
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !425 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 40
  %i.aek = load i32, ptr %i.aej, align 8, !tbaa !318
  %i.ael = add nsw i32 %.0595997, 2
  %i.aem = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i11.i.i, i32 noundef 46, i32 noundef %i.aek, i32 noundef %i.ael) ; 0 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aei, i64 32
  %.0594989 = load ptr, ptr %i.aen, align 8, !tbaa !307 ; 2 uses
  %.1596990 = add nsw i32 %.0595997, 1            ; 2 uses
  %.not674991 = icmp eq ptr %.0594989, null
  br i1 %.not674991, label %.loopexit979, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph999, %sqlite3VdbeAddOp2.exit
  %.1596994 = phi i32 [ %.1596, %sqlite3VdbeAddOp2.exit ], [ %.1596990, %.lr.ph999 ] ; 2 uses
  %.0594993 = phi ptr [ %.0594, %sqlite3VdbeAddOp2.exit ], [ %.0594989, %.lr.ph999 ] ; 2 uses
  %.1596.in992 = phi i32 [ %.1596994, %sqlite3VdbeAddOp2.exit ], [ %.0595997, %.lr.ph999 ]
  %i.aeo = getelementptr inbounds nuw i8, ptr %.0594993, i64 40
  %i.aep = load i32, ptr %i.aeo, align 8, !tbaa !742
  %i.aeq = add nsw i32 %.1596.in992, 3
  %i.aer = load i32, ptr %i.ado, align 8, !tbaa !208 ; 3 uses
  %i.aes = load i32, ptr %i.adq, align 4, !tbaa !215 ; 6 uses
  %.not.i.i818 = icmp sgt i32 %i.aes, %i.aer
  br i1 %.not.i.i818, label %bb.gv, label %bb.gr

bb.gr:                                            ; preds = %.lr.ph
  %.not23.i.i = icmp eq i32 %i.aes, 0
  %i.aet = shl nsw i32 %i.aes, 1
  %spec.select.i.i819 = select i1 %.not23.i.i, i32 42, i32 %i.aet ; 4 uses
  %i.aeu = load ptr, ptr %.0.i11.i.i, align 8, !tbaa !179
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 42 ; 2 uses
  %i.aew = load i8, ptr %i.aev, align 2, !tbaa !202
  %i.aex = icmp eq i8 %i.aew, 0
  br i1 %i.aex, label %bb.gs, label %resizeOpArray.exit.i.i

bb.gs:                                            ; preds = %bb.gr
  %i.aey = mul i32 %spec.select.i.i819, 24
  %i.aez = load ptr, ptr %i.adp, align 8, !tbaa !209
  %i.afa = tail call ptr @sqlite3_realloc(ptr noundef %i.aez, i32 noundef %i.aey) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.afa, null
  br i1 %.not.i.i.i.i, label %bb.gt, label %sqlite3DbRealloc.exit.i.i.i

bb.gt:                                            ; preds = %bb.gs
  store i8 1, ptr %i.aev, align 2, !tbaa !202
  br label %resizeOpArray.exit.i.i

sqlite3DbRealloc.exit.i.i.i:                      ; preds = %bb.gs
  store i32 %spec.select.i.i819, ptr %i.adq, align 4, !tbaa !215
  store ptr %i.afa, ptr %i.adp, align 8, !tbaa !209
  %i.afb = icmp sgt i32 %spec.select.i.i819, %i.aes
  br i1 %i.afb, label %bb.gu, label %resizeOpArray.exit.i.i

bb.gu:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i
  %i.afc = sext i32 %i.aes to i64
  %i.afd = getelementptr inbounds [24 x i8], ptr %i.afa, i64 %i.afc
  %i.afe = sub nsw i32 %spec.select.i.i819, %i.aes
  %i.aff = zext nneg i32 %i.afe to i64
  %i.afg = mul nuw nsw i64 %i.aff, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.afd, i8 0, i64 %i.afg, i1 false)
  br label %resizeOpArray.exit.i.i

resizeOpArray.exit.i.i:                           ; preds = %bb.gu, %sqlite3DbRealloc.exit.i.i.i, %bb.gt, %bb.gr
  %i.afh = load ptr, ptr %.0.i11.i.i, align 8, !tbaa !179
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 42
  %i.afj = load i8, ptr %i.afi, align 2, !tbaa !202
  %.not24.i.i = icmp eq i8 %i.afj, 0
  br i1 %.not24.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %sqlite3VdbeAddOp2.exit

resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i
  %.pre.i.i = load i32, ptr %i.ado, align 8, !tbaa !208
  br label %bb.gv

bb.gv:                                            ; preds = %resizeOpArray.exit._crit_edge.i.i, %.lr.ph
  %i.afk = phi i32 [ %.pre.i.i, %resizeOpArray.exit._crit_edge.i.i ], [ %i.aer, %.lr.ph ]
  %i.afl = add nsw i32 %i.afk, 1
  store i32 %i.afl, ptr %i.ado, align 8, !tbaa !208
  %i.afm = load ptr, ptr %i.adp, align 8, !tbaa !209
  %i.afn = sext i32 %i.aer to i64
  %i.afo = getelementptr inbounds [24 x i8], ptr %i.afm, i64 %i.afn ; 6 uses
  store i8 46, ptr %i.afo, align 8, !tbaa !211
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 4
  store i32 %i.aep, ptr %i.afp, align 4, !tbaa !214
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  store i32 %i.aeq, ptr %i.afq, align 8, !tbaa !213
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afo, i64 12
  store i32 0, ptr %i.afr, align 4, !tbaa !245
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afo, i64 16
  store ptr null, ptr %i.afs, align 8, !tbaa !139
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afo, i64 1
  store i8 0, ptr %i.aft, align 1, !tbaa !246
  store i8 0, ptr %i.adr, align 1, !tbaa !177
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %resizeOpArray.exit.i.i, %bb.gv
  %i.afu = getelementptr inbounds nuw i8, ptr %.0594993, i64 56
  %.0594 = load ptr, ptr %i.afu, align 8, !tbaa !307 ; 2 uses
  %.1596 = add nsw i32 %.1596994, 1               ; 2 uses
  %.not674 = icmp eq ptr %.0594, null
  br i1 %.not674, label %.loopexit979, label %.lr.ph, !llvm.loop !1669

._crit_edge:                                      ; preds = %.loopexit979
  %i.afv = icmp eq i32 %.1596.lcssa, 0
  br i1 %i.afv, label %.critedge, label %bb.gw

bb.gw:                                            ; preds = %._crit_edge
  %i.afw = load i32, ptr %i.q, align 8, !tbaa !841
  %i.afx = add nsw i32 %.1596.lcssa, 4            ; 2 uses
  %i.afy = icmp slt i32 %i.afw, %i.afx
  br i1 %i.afy, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  store i32 %i.afx, ptr %i.q, align 8, !tbaa !841
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gw, %bb.gx
  %i.afz = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i11.i.i, i32 noundef 15, i32 noundef 2, i32 noundef %.1596.lcssa, i32 noundef 1) ; 0 uses
  %i.aga = load ptr, ptr %i.adp, align 8, !tbaa !209 ; 2 uses
  %.not5.i = icmp eq ptr %i.aga, null
  br i1 %.not5.i, label %sqlite3VdbeChangeP5.exit, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.agb = trunc i64 %indvars.iv to i8
  %i.agc = load i32, ptr %i.ado, align 8, !tbaa !208
  %i.agd = sext i32 %i.agc to i64
  %i.age = getelementptr [24 x i8], ptr %i.aga, i64 %i.agd
  %i.agf = getelementptr i8, ptr %i.age, i64 -21
  store i8 %i.agb, ptr %i.agf, align 1, !tbaa !212
  br label %sqlite3VdbeChangeP5.exit

sqlite3VdbeChangeP5.exit:                         ; preds = %bb.gy, %bb.gz
  %i.agg = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %.0.i11.i.i, i32 noundef 65, i32 noundef 2) ; 3 uses
  %i.agh = load ptr, ptr %i.ac, align 8, !tbaa !279
  %i.agi = getelementptr inbounds nuw [48 x i8], ptr %i.agh, i64 %indvars.iv
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !429
  %i.agk = tail call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %i.b, ptr noundef nonnull @.str.473, ptr noundef %i.agj)
  %i.agl = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef nonnull %.0.i11.i.i, i32 noundef 88, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef %i.agk, i32 noundef -1) ; 0 uses
  %i.agm = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i11.i.i, i32 noundef 113, i32 noundef 2, i32 noundef 4) ; 0 uses
  %i.agn = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i11.i.i, i32 noundef 83, i32 noundef 4, i32 noundef 3, i32 noundef 2) ; 0 uses
  %i.ago = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i11.i.i, i32 noundef 85, i32 noundef 2, i32 noundef 1) ; 0 uses
  %i.agp = load i32, ptr %i.ado, align 8, !tbaa !208 ; 2 uses
  %i.agq = icmp sgt i32 %i.agg, -1
  %i.agr = icmp sgt i32 %i.agp, %i.agg
  %or.cond.i822 = select i1 %i.agq, i1 %i.agr, i1 false
  br i1 %or.cond.i822, label %bb.ha, label %sqlite3VdbeJumpHere.exit824

bb.ha:                                            ; preds = %sqlite3VdbeChangeP5.exit
  %i.ags = load ptr, ptr %i.adp, align 8, !tbaa !209 ; 2 uses
  %.not.i.i823 = icmp eq ptr %i.ags, null
  br i1 %.not.i.i823, label %sqlite3VdbeJumpHere.exit824, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.agt = zext nneg i32 %i.agg to i64
  %i.agu = getelementptr inbounds nuw [24 x i8], ptr %i.ags, i64 %i.agt
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  store i32 %i.agp, ptr %i.agv, align 8, !tbaa !213
  br label %sqlite3VdbeJumpHere.exit824

sqlite3VdbeJumpHere.exit824:                      ; preds = %sqlite3VdbeChangeP5.exit, %bb.ha, %bb.hb
  %.15981012 = load ptr, ptr %i.aeg, align 8, !tbaa !423 ; 2 uses
  %.not6701013 = icmp eq ptr %.15981012, null
  %brmerge1014 = select i1 %.not6701013, i1 true, i1 %.not671
  br i1 %brmerge1014, label %.critedge, label %.lr.ph1016

.lr.ph1016:                                       ; preds = %sqlite3VdbeJumpHere.exit824, %.loopexit
  %.15981015 = phi ptr [ %.1598, %.loopexit ], [ %.15981012, %sqlite3VdbeJumpHere.exit824 ] ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.15981015, i64 16
  %i.agx = load ptr, ptr %i.agw, align 8, !tbaa !425 ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 32 ; 3 uses
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !394
  %i.aha = icmp eq ptr %i.agz, null
  br i1 %i.aha, label %.loopexit, label %bb.hc

bb.hc:                                            ; preds = %.lr.ph1016
  %i.ahb = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %.0.i11.i.i, i32 noundef 122, i32 noundef 1) ; 3 uses
  %i.ahc = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i11.i.i, i32 noundef 37, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.ahd = load i32, ptr %i.ado, align 8, !tbaa !208 ; 2 uses
  %i.ahe = icmp sgt i32 %i.ahb, -1
  %i.ahf = icmp sgt i32 %i.ahd, %i.ahb
  %or.cond.i826 = select i1 %i.ahe, i1 %i.ahf, i1 false
  br i1 %or.cond.i826, label %bb.hd, label %sqlite3VdbeJumpHere.exit828

bb.hd:                                            ; preds = %bb.hc
  %i.ahg = load ptr, ptr %i.adp, align 8, !tbaa !209 ; 2 uses
  %.not.i.i827 = icmp eq ptr %i.ahg, null
  br i1 %.not.i.i827, label %sqlite3VdbeJumpHere.exit828, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.ahh = zext nneg i32 %i.ahb to i64
  %i.ahi = getelementptr inbounds nuw [24 x i8], ptr %i.ahg, i64 %i.ahh
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  store i32 %i.ahd, ptr %i.ahj, align 8, !tbaa !213
  br label %sqlite3VdbeJumpHere.exit828

sqlite3VdbeJumpHere.exit828:                      ; preds = %bb.hc, %bb.hd, %bb.he
  %i.ahk = tail call fastcc i32 @sqlite3OpenTableAndIndices(ptr noundef nonnull %0, ptr noundef nonnull %i.agx, i32 noundef 1, i32 noundef 12) ; 0 uses
  %i.ahl = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i11.i.i, i32 noundef 46, i32 noundef 0, i32 noundef 2) ; 0 uses
  %i.ahm = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i11.i.i, i32 noundef 115, i32 noundef 1, i32 noundef 0) ; 4 uses
  %i.ahn = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i11.i.i, i32 noundef 40, i32 noundef 2, i32 noundef 1) ; 0 uses
  %.05921001 = load ptr, ptr %i.agy, align 8, !tbaa !307 ; 2 uses
  %.not6721002 = icmp eq ptr %.05921001, null
  br i1 %.not6721002, label %._crit_edge1006, label %.lr.ph1005

.lr.ph1005:                                       ; preds = %sqlite3VdbeJumpHere.exit828, %sqlite3VdbeJumpHere.exit832
  %.05921004 = phi ptr [ %.0592, %sqlite3VdbeJumpHere.exit832 ], [ %.05921001, %sqlite3VdbeJumpHere.exit828 ] ; 3 uses
  %.06001003 = phi i32 [ %i.aie, %sqlite3VdbeJumpHere.exit832 ], [ 0, %sqlite3VdbeJumpHere.exit828 ] ; 2 uses
  %i.aho = tail call fastcc i32 @sqlite3GenerateIndexKey(ptr noundef nonnull %0, ptr noundef nonnull %.05921004, i32 noundef 1, i32 noundef 3) ; 0 uses
  %i.ahp = add nuw nsw i32 %.06001003, 2
  %i.ahq = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i11.i.i, i32 noundef 121, i32 noundef %i.ahp, i32 noundef 0, i32 noundef 3) ; 3 uses
  %i.ahr = tail call fastcc i32 @sqlite3VdbeAddOpList(ptr noundef %.0.i11.i.i, i32 noundef 9, ptr noundef nonnull @sqlite3Pragma.idxErr) ; 3 uses
  %i.ahs = add nsw i32 %i.ahr, 1
  tail call fastcc void @sqlite3VdbeChangeP4(ptr noundef nonnull %.0.i11.i.i, i32 noundef %i.ahs, ptr noundef nonnull @.str.474, i32 noundef -2)
  %i.aht = add nsw i32 %i.ahr, 3
  tail call fastcc void @sqlite3VdbeChangeP4(ptr noundef nonnull %.0.i11.i.i, i32 noundef %i.aht, ptr noundef nonnull @.str.475, i32 noundef -2)
  %i.ahu = add nsw i32 %i.ahr, 4
  %i.ahv = load ptr, ptr %.05921004, align 8, !tbaa !396
  tail call fastcc void @sqlite3VdbeChangeP4(ptr noundef nonnull %.0.i11.i.i, i32 noundef %i.ahu, ptr noundef %i.ahv, i32 noundef -2)
  %i.ahw = load i32, ptr %i.ado, align 8, !tbaa !208 ; 2 uses
  %i.ahx = icmp sgt i32 %i.ahq, -1
  %i.ahy = icmp sgt i32 %i.ahw, %i.ahq
  %or.cond.i830 = select i1 %i.ahx, i1 %i.ahy, i1 false
end_hunk_3
