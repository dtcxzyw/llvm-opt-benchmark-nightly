Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 368
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3PagerRollback:bb.a
  store ptr @getPageError, ptr %i.x, align 8, !tbaa !891
  br label %pager_error.exit

bb.i:                                             ; preds = %bb.f
  %i.y = tail call fastcc i32 @pager_playback(ptr noundef nonnull %0, i32 noundef 0)
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.i, %bb.e
  %.1 = phi i32 [ %spec.select, %bb.e ], [ %i.y, %bb.i ], [ %i.s, %bb.g ] ; 5 uses
  %trunc.i = trunc i32 %.1 to i8
  switch i8 %trunc.i, label %pager_error.exit [
    i8 13, label %bb.j
    i8 10, label %bb.j
  ]

bb.j:                                             ; preds = %.thread, %.thread
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.1, ptr %i.z, align 8, !tbaa !1003
  store i8 6, ptr %i.a, align 1, !tbaa !1037
  %.not.i.i = icmp eq i32 %.1, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr @getPageError, ptr %i.aa, align 8, !tbaa !891
  br label %pager_error.exit

bb.l:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1051
  %.not5.i.i = icmp eq i8 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  br i1 %.not5.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr @getPageMMap, ptr %i.ad, align 8, !tbaa !891
  br label %pager_error.exit

bb.n:                                             ; preds = %bb.l
  store ptr @getPageNormal, ptr %i.ad, align 8, !tbaa !891
  br label %pager_error.exit

pager_error.exit:                                 ; preds = %bb.n, %bb.m, %bb.k, %.thread, %bb.h, %bb.c, %bb.b
  %.126 = phi i32 [ %i.e, %bb.b ], [ %i.s, %bb.h ], [ 0, %bb.c ], [ %.1, %.thread ], [ %.1, %bb.k ], [ 0, %bb.m ], [ 0, %bb.n ]
  ret i32 %.126
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3PagerSavepoint(ptr noundef %0, i32 noundef range(i32 1, 0) %1, i32 noundef range(i32 -2147483648, 2147483647) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.WalHashLoc, align 8         ; 3 uses
  %4 = alloca %struct.WalHashLoc, align 8         ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1003 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %pagerPlaybackSavepoint.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !991  ; 2 uses
  %i.i = icmp slt i32 %2, %i.h
  br i1 %i.i, label %bb.c, label %pagerPlaybackSavepoint.exit

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ne i32 %1, 1                        ; 3 uses
  %i.k = zext i1 %i.j to i32
  %i.l = add nsw i32 %2, %i.k                     ; 5 uses
  %i.m = icmp slt i32 %i.l, %i.h
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = sext i32 %2 to i64
  %i.p = zext i1 %i.j to i64
  %i.q = add nsw i64 %i.o, %i.p
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.q, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !1546
  %i.s = getelementptr inbounds [56 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1548
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.u)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.v = load i32, ptr %i.g, align 8, !tbaa !991
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.d, label %._crit_edge, !llvm.loop !3633

._crit_edge:                                      ; preds = %bb.d, %bb.c
  store i32 %i.l, ptr %i.g, align 8, !tbaa !991
  br i1 %i.j, label %bb.j, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1546
  %i.aa = sext i32 %i.l to i64
  %i.ab = getelementptr inbounds [56 x i8], ptr %i.z, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1570
  %.not39 = icmp eq i32 %i.ad, 0
  br i1 %.not39, label %pagerPlaybackSavepoint.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1549 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !863 ; 2 uses
  %.not40 = icmp eq ptr %i.ag, null
  br i1 %.not40, label %pagerPlaybackSavepoint.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not47 = icmp eq ptr %i.ag, @MemJournalMethods
  br i1 %.not47, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !630
  %i.aj = add nsw i64 %i.ai, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !1571
  %i.am = zext i32 %i.al to i64
  %i.an = mul nsw i64 %i.aj, %i.am
  %i.ao = tail call i32 @memjrnlTruncate(ptr noundef nonnull %i.af, i64 noundef %i.an) #58, !inline_history !164
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i32 [ %i.ao, %bb.h ], [ 0, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !1571
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !1550
  br label %pagerPlaybackSavepoint.exit

bb.j:                                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !938 ; 8 uses
  %.not = icmp eq ptr %i.at, null                 ; 2 uses
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1503
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !863
  %.not38 = icmp eq ptr %i.aw, null
  br i1 %.not38, label %pagerPlaybackSavepoint.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ax = icmp eq i32 %i.l, 0
  br i1 %i.ax, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1546
  %i.ba = sext i32 %i.l to i64
  %i.bb = getelementptr [56 x i8], ptr %i.az, i64 %i.ba ; 3 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -56    ; 5 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr i8, ptr %i.bb, i64 -32    ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1567
  %i.bf = tail call fastcc ptr @sqlite3Malloc(i64 noundef 512), !inline_history !3634 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %pagerPlaybackSavepoint.exit, label %bb.ad

.thread:                                          ; preds = %bb.l, %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !570
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !1001
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !994
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !1524
  br i1 %.not, label %.thread98.i, label %bb.o

.thread98.i:                                      ; preds = %.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !1485
  br label %bb.ah

bb.o:                                             ; preds = %.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !1479
  %.not.i.i89.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i89.i, label %sqlite3WalUndo.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 88 ; 4 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !1560 ; 3 uses
  %i.bt = getelementptr i8, ptr %i.at, i64 48     ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.bt, align 8, !tbaa !1480
  %.val.val.i.i.i = load ptr, ptr %.val.i.i.i, align 8, !tbaa !786
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 1 dereferenceable(48) %.val.val.i.i.i, i64 48, i1 false)
  %i.bu = load i32, ptr %i.br, align 8, !tbaa !1560 ; 3 uses
  %.05.i.i.i = add i32 %i.bu, 1                   ; 2 uses
  %.not8.i.i.i = icmp ugt i32 %.05.i.i.i, %i.bs
  br i1 %.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %walFramePgno.exit.i.i.i
  %.07.i.i.i = phi i32 [ %.0.i.i.i, %walFramePgno.exit.i.i.i ], [ %.05.i.i.i, %bb.p ] ; 3 uses
  %.0.in6.i.i.i = phi i32 [ %.07.i.i.i, %walFramePgno.exit.i.i.i ], [ %i.bu, %bb.p ] ; 2 uses
  %i.bv = add i32 %.0.in6.i.i.i, 4097
  %i.bw = zext i32 %i.bv to i64
  %i.bx = add nuw nsw i64 %i.bw, 17592186040353   ; 2 uses
  %i.by = and i64 %i.bx, 17592186040320
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = load ptr, ptr %i.bt, align 8, !tbaa !1480 ; 2 uses
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !786
  %i.cc = zext i32 %.07.i.i.i to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 132
  %i.cf = load volatile i32, ptr %i.ce, align 4, !tbaa !570
  br label %walFramePgno.exit.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.cg = shl i64 %i.bx, 20
  %i.ch = ashr i64 %i.cg, 32
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !786
  %i.ck = add i32 %.0.in6.i.i.i, 34
  %i.cl = and i32 %i.ck, 4095
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cm
  %i.co = load volatile i32, ptr %i.cn, align 4, !tbaa !570
  br label %walFramePgno.exit.i.i.i

walFramePgno.exit.i.i.i:                          ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.cf, %bb.q ], [ %i.co, %bb.r ]
  %i.cp = tail call fastcc i32 @pagerUndoCallback(ptr noundef readonly %0, i32 noundef %.0.i.i.i.i), !inline_history !3635 ; 2 uses
  %.0.i.i.i = add i32 %.07.i.i.i, 1               ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  %i.cr = icmp ule i32 %.0.i.i.i, %i.bs
  %5 = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %5, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !3636

._crit_edge.loopexit.i.i.i:                       ; preds = %walFramePgno.exit.i.i.i
  %.pre.i.i.i = load i32, ptr %i.br, align 8, !tbaa !1560
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.p
  %i.cs = phi i32 [ %i.bu, %bb.p ], [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ] ; 4 uses
  %.017.lcssa.i.i.i = phi i32 [ 0, %bb.p ], [ %i.cp, %._crit_edge.loopexit.i.i.i ]
  %.not18.i.i.i = icmp eq i32 %i.bs, %i.cs
  br i1 %.not18.i.i.i, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %walCleanupHash.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = add i32 %i.cs, 4096
  %i.cv = zext i32 %i.cu to i64
  %i.cw = add nuw nsw i64 %i.cv, 17592186040353
  %i.cx = lshr i64 %i.cw, 12                      ; 2 uses
  %i.cy = trunc i64 %i.cx to i32                  ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.db = load i32, ptr %i.da, align 8, !tbaa !1563
  %.not.i.i.i.i.i.i = icmp sgt i32 %i.db, %i.cy
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %walIndexPage.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.dc = load ptr, ptr %i.bt, align 8, !tbaa !1480
  %sext15.i.i.i.i = shl i64 %i.cx, 32
  %i.dd = ashr exact i64 %sext15.i.i.i.i, 29
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !786 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %walIndexPage.exit.i.i.i.i.i, label %walIndexPage.exit.thread.i.i.thread.i.i.i

walIndexPage.exit.thread.i.i.thread.i.i.i:        ; preds = %bb.u
  %i.dh = icmp eq i32 %i.cy, 0                    ; 2 uses
  %.idx.i2.i.i.i = select i1 %i.dh, i64 136, i64 0
  br label %bb.v

walIndexPage.exit.i.i.i.i.i:                      ; preds = %bb.u, %bb.t
  %i.di = call fastcc i32 @walIndexPageRealloc(ptr noundef nonnull %i.at, i32 noundef %i.cy, ptr noundef nonnull %i.cz), !inline_history !3635
  %.pr.i.i.i.i.i = load ptr, ptr %i.cz, align 8, !tbaa !1565 ; 2 uses
  %.not.i.i.i.i.i = icmp ne ptr %.pr.i.i.i.i.i, null
  %.not.i.i.i.i = icmp eq i32 %i.di, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %walIndexPage.exit.thread.i.i._crit_edge.i.i.i, label %walCleanupHash.exit.i.i.i

walIndexPage.exit.thread.i.i._crit_edge.i.i.i:    ; preds = %walIndexPage.exit.i.i.i.i.i
  %i.dj = icmp eq i32 %i.cy, 0                    ; 2 uses
  %.idx.i.i.i.i = select i1 %i.dj, i64 136, i64 0
  %.pre9.i.i.i = load i32, ptr %i.br, align 8, !tbaa !1560
  br label %bb.v

bb.v:                                             ; preds = %walIndexPage.exit.thread.i.i._crit_edge.i.i.i, %walIndexPage.exit.thread.i.i.thread.i.i.i
  %i.dk = phi i32 [ %i.cs, %walIndexPage.exit.thread.i.i.thread.i.i.i ], [ %.pre9.i.i.i, %walIndexPage.exit.thread.i.i._crit_edge.i.i.i ]
  %.idx.i4.i.i.i = phi i64 [ %.idx.i2.i.i.i, %walIndexPage.exit.thread.i.i.thread.i.i.i ], [ %.idx.i.i.i.i, %walIndexPage.exit.thread.i.i._crit_edge.i.i.i ]
  %i.dl = phi i1 [ %i.dh, %walIndexPage.exit.thread.i.i.thread.i.i.i ], [ %i.dj, %walIndexPage.exit.thread.i.i._crit_edge.i.i.i ]
  %i.dm = phi ptr [ %i.df, %walIndexPage.exit.thread.i.i.thread.i.i.i ], [ %.pr.i.i.i.i.i, %walIndexPage.exit.thread.i.i._crit_edge.i.i.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16384 ; 2 uses
  %i.do = shl i32 %i.cy, 12
  %i.dp = add i32 %i.do, -34
  %i.dq = select i1 %i.dl, i32 0, i32 %i.dp
  %i.dr = sub i32 %i.dk, %i.dq                    ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.aa, %bb.v
  %indvars.iv.i.i.i.i = phi i64 [ 0, %bb.v ], [ %indvars.iv.next.i.i.i.i.1, %bb.aa ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.dt = load volatile i16, ptr %i.ds, align 2, !tbaa !783
  %i.du = zext i16 %i.dt to i32
  %i.dv = icmp slt i32 %i.dr, %i.du
  br i1 %i.dv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store volatile i16 0, ptr %i.ds, align 2, !tbaa !783
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %indvars.iv.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 2 ; 2 uses
  %i.dy = load volatile i16, ptr %i.dx, align 2, !tbaa !783
  %i.dz = zext i16 %i.dy to i32
  %i.ea = icmp slt i32 %i.dr, %i.dz
  br i1 %i.ea, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store volatile i16 0, ptr %i.dx, align 2, !tbaa !783
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 8192
  br i1 %exitcond.not.i.i.i.i.1, label %bb.ab, label %bb.w, !llvm.loop !182

bb.ab:                                            ; preds = %bb.aa
  %i.eb = sext i32 %i.dr to i64
  %.idx20.i.i.i.i = shl nsw i64 %i.eb, 2
  %i.ec = add nsw i64 %.idx20.i.i.i.i, %.idx.i4.i.i.i ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.dm, i64 %i.ec
  %i.ee = shl i64 %i.ec, 32
  %sext.i.i.i.i = sub i64 70368744177664, %i.ee
  %i.ef = ashr exact i64 %sext.i.i.i.i, 32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ed, i8 0, i64 %i.ef, i1 false)
  br label %walCleanupHash.exit.i.i.i

walCleanupHash.exit.i.i.i:                        ; preds = %bb.ab, %walIndexPage.exit.i.i.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %bb.ac

bb.ac:                                            ; preds = %walCleanupHash.exit.i.i.i, %._crit_edge.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.at, i64 124
  store i32 0, ptr %i.eg, align 4, !tbaa !1512
  br label %sqlite3WalUndo.exit.i.i

sqlite3WalUndo.exit.i.i:                          ; preds = %bb.ac, %bb.o
  %.1.i.i.i = phi i32 [ %.017.lcssa.i.i.i, %bb.ac ], [ 0, %bb.o ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !632
  %i.ej = tail call fastcc ptr @sqlite3PcacheDirtyList(ptr noundef %i.ei), !inline_history !3637 ; 2 uses
  %i.ek = icmp ne ptr %i.ej, null
  %i.el = icmp eq i32 %.1.i.i.i, 0
  %i.em = and i1 %i.el, %i.ek
  br i1 %i.em, label %.lr.ph.i.i, label %pagerPlaybackSavepoint.exit

.lr.ph.i.i:                                       ; preds = %sqlite3WalUndo.exit.i.i, %.lr.ph.i.i
  %.01112.i.i = phi ptr [ %i.eo, %.lr.ph.i.i ], [ %i.ej, %sqlite3WalUndo.exit.i.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !899 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 48
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !901
  %i.er = tail call fastcc i32 @pagerUndoCallback(ptr noundef nonnull %0, i32 noundef %i.eq), !inline_history !3637 ; 2 uses
  %i.es = icmp ne ptr %i.eo, null
  %i.et = icmp eq i32 %i.er, 0
  %i.eu = select i1 %i.es, i1 %i.et, i1 false
  br i1 %i.eu, label %.lr.ph.i.i, label %pagerPlaybackSavepoint.exit, !llvm.loop !3638

bb.ad:                                            ; preds = %bb.n
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(508) %i.ev, i8 0, i64 508, i1 false)
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !1370
  %i.ew = load i32, ptr %i.bd, align 8, !tbaa !570
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ew, ptr %i.ex, align 8, !tbaa !1001
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !994
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !1524
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !1485 ; 4 uses
  %i.fd = load ptr, ptr %i.as, align 8, !tbaa !938
  %.not85.i = icmp eq ptr %i.fd, null
  br i1 %.not85.i, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.fe = getelementptr i8, ptr %i.bb, i64 -48
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !1572 ; 2 uses
  %.not86.i = icmp eq i64 %i.ff, 0
  %..i = select i1 %.not86.i, i64 %i.fc, i64 %i.ff
  %i.fg = load i64, ptr %i.bc, align 8, !tbaa !1573
  store i64 %i.fg, ptr %i.fb, align 8, !tbaa !1485
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.fh = load i64, ptr %i.fb, align 8, !tbaa !1485
  %i.fi = icmp slt i64 %i.fh, %..i
  br i1 %i.fi, label %bb.ag, label %.lr.ph109.i

bb.ag:                                            ; preds = %bb.af
  %i.fj = tail call fastcc i32 @pager_playback_one_page(ptr noundef nonnull %0, ptr noundef nonnull %i.fb, ptr noundef nonnull %i.bf, i32 noundef 1, i32 noundef 1), !inline_history !3634 ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.af, label %.critedge2.i.thread, !llvm.loop !3639

bb.ah:                                            ; preds = %bb.ad, %.thread98.i
  %.not.i45 = phi i1 [ true, %.thread98.i ], [ false, %bb.ad ]
  %i.fl = phi ptr [ null, %.thread98.i ], [ %i.bc, %bb.ad ]
  %i.fm = phi i64 [ %i.bn, %.thread98.i ], [ %i.fc, %bb.ad ]
  %i.fn = phi ptr [ %i.bm, %.thread98.i ], [ %i.fb, %bb.ad ] ; 2 uses
  %.07195101.i = phi ptr [ null, %.thread98.i ], [ %i.bf, %bb.ad ]
  store i64 0, ptr %i.fn, align 8, !tbaa !1485
  br label %.lr.ph109.i

.lr.ph109.i:                                      ; preds = %bb.af, %bb.ah
  %.not.i44 = phi i1 [ %.not.i45, %bb.ah ], [ false, %bb.af ]
  %i.fo = phi ptr [ %i.fl, %bb.ah ], [ %i.bc, %bb.af ]
  %.ph.i = phi i64 [ %i.fm, %bb.ah ], [ %i.fc, %bb.af ] ; 6 uses
  %.ph140.i = phi ptr [ %i.fn, %bb.ah ], [ %i.fb, %bb.af ] ; 6 uses
  %.07195100.ph.i = phi ptr [ %.07195101.i, %bb.ah ], [ %i.bf, %bb.af ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge4.i, %.lr.ph109.i
  %i.fs = load i64, ptr %.ph140.i, align 8, !tbaa !1485
  %i.ft = icmp slt i64 %i.fs, %.ph.i
  br i1 %i.ft, label %bb.aj, label %.critedge2.i
end_hunk_0
begin_hunk_1_@sqlite3VdbeExec:bb.a
  br i1 %.not3891, label %.critedge52, label %bb.bgh

bb.bgh:                                           ; preds = %bb.bgg
  %i.iza = load i32, ptr %i.iyx, align 8, !tbaa !1334
  %i.izb = zext i32 %i.iza to i64
  %i.izc = add i64 %.63058, %i.izb
  %i.izd = load ptr, ptr %i.iyy, align 8, !tbaa !1335
  %i.ize = call i32 %i.iyz(ptr noundef %i.izd) #58
  %.not3893 = icmp eq i32 %i.ize, 0
  br i1 %.not3893, label %bb.bgf, label %sqlite3VdbeMemSetNull.exit4225, !llvm.loop !4075

.critedge52:                                      ; preds = %bb.bgf, %bb.bgg
  %i.izf = trunc i64 %.23049 to i32
  %i.izg = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.izh = load i32, ptr %i.izg, align 4, !tbaa !570
  %i.izi = add i32 %i.izh, %i.izf
  store i32 %i.izi, ptr %i.izg, align 4, !tbaa !570
  %i.izj = load i32, ptr %i.at, align 8, !tbaa !1169
  %.not3892 = icmp eq i32 %i.izj, 0
  br i1 %.not3892, label %bb.bgn, label %sqlite3VdbeLeave.exit

sqlite3VdbeLeave.exit:                            ; preds = %.critedge52
  call fastcc void @vdbeLeave(ptr noundef nonnull readonly %0)
  br label %bb.bgn

sqlite3VdbeMemSetNull.exit4137.sink.split:        ; preds = %sqlite3VdbeSerialTypeLen.exit4246.thread, %bb.ox
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %sqlite3VdbeMemSetNull.exit4137

sqlite3VdbeMemSetNull.exit4137:                   ; preds = %out2Prerelease.exit4348, %bb.sb, %bb.dv, %sqlite3VdbeMemTooBig.exit, %bb.az, %bb.at, %sqlite3VdbeMemSetNull.exit4137.sink.split
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %0, ptr noundef nonnull @.str.22)
  br label %sqlite3VdbeMemSetNull.exit4225

sqlite3VdbeMemSetNull.exit4137.thread:            ; preds = %sqlite3DbMallocRaw.exit.i8634, %bb.bba, %sqlite3_malloc64.exit, %bb.afu, %bb.yd, %bb.xp, %bb.sc, %bb.ds, %bb.du, %bb.dq, %bb.do, %bb.dw, %bb.auh, %bb.ase, %bb.agh, %bb.yg, %bb.xj, %bb.art, %bb.xg, %bb.bm, %sqlite3VdbeChangeEncoding.exit, %bb.ri, %bb.co, %bb.cr, %bb.ca, %bb.cd, %bb.anu, %sqlite3VdbeMemSetNull.exit4231.thread5394, %.thread5363, %.thread5321, %.thread5212, %.thread4982, %sqlite3VdbeMemSetNull.exit4231.thread4798, %bb.df, %bb.e
  %.73059 = phi i64 [ %.03052, %bb.e ], [ %.13053, %.thread5212 ], [ %.13053, %bb.co ], [ %.13053, %.thread4982 ], [ %.13053, %.thread5321 ], [ %.13053, %bb.df ], [ %.13053, %.thread5363 ], [ %.13053, %sqlite3VdbeMemSetNull.exit4231.thread5394 ], [ %.13053, %bb.anu ], [ %.13053, %bb.ca ], [ %.13053, %sqlite3VdbeMemSetNull.exit4231.thread4798 ], [ %.13053, %bb.ri ], [ %.13053, %bb.cd ], [ %.13053, %bb.cr ], [ %.13053, %sqlite3VdbeChangeEncoding.exit ], [ %.13053, %bb.bm ], [ %.13053, %bb.xg ], [ %.13053, %bb.art ], [ %.13053, %bb.xj ], [ %.13053, %bb.yg ], [ %.13053, %bb.agh ], [ %.13053, %bb.ase ], [ %.13053, %bb.auh ], [ %.13053, %bb.dw ], [ %.13053, %bb.do ], [ %.13053, %bb.dq ], [ %.13053, %bb.du ], [ %.13053, %bb.ds ], [ %.13053, %bb.sc ], [ %.13053, %bb.xp ], [ %.13053, %bb.yd ], [ %.13053, %bb.afu ], [ %.13053, %sqlite3_malloc64.exit ], [ %.13053, %bb.bba ], [ %.13053, %sqlite3DbMallocRaw.exit.i8634 ]
  %.33050 = phi i64 [ 0, %bb.e ], [ %i.hp, %.thread5212 ], [ %i.hp, %bb.co ], [ %i.hp, %.thread4982 ], [ %i.hp, %.thread5321 ], [ %i.hp, %bb.df ], [ %i.hp, %.thread5363 ], [ %i.hp, %sqlite3VdbeMemSetNull.exit4231.thread5394 ], [ %i.hp, %bb.anu ], [ %i.hp, %bb.ca ], [ %i.hp, %sqlite3VdbeMemSetNull.exit4231.thread4798 ], [ %i.hp, %bb.ri ], [ %i.hp, %bb.cd ], [ %i.hp, %bb.cr ], [ %i.hp, %sqlite3VdbeChangeEncoding.exit ], [ %i.hp, %bb.bm ], [ %i.hp, %bb.xg ], [ %i.hp, %bb.art ], [ %i.hp, %bb.xj ], [ %i.hp, %bb.yg ], [ %i.hp, %bb.agh ], [ %i.hp, %bb.ase ], [ %i.hp, %bb.auh ], [ %i.hp, %bb.dw ], [ %i.hp, %bb.do ], [ %i.hp, %bb.dq ], [ %i.hp, %bb.du ], [ %i.hp, %bb.ds ], [ %i.hp, %bb.sc ], [ %i.hp, %bb.xp ], [ %i.hp, %bb.yd ], [ %i.hp, %bb.afu ], [ %i.hp, %sqlite3_malloc64.exit ], [ %i.hp, %bb.bba ], [ %i.hp, %sqlite3DbMallocRaw.exit.i8634 ]
  %.63007 = phi i8 [ 0, %bb.e ], [ %.03001, %.thread5212 ], [ %.03001, %bb.co ], [ %.03001, %.thread4982 ], [ %.03001, %.thread5321 ], [ %.03001, %bb.df ], [ %.03001, %.thread5363 ], [ %.03001, %sqlite3VdbeMemSetNull.exit4231.thread5394 ], [ %.03001, %bb.anu ], [ %.03001, %bb.ca ], [ %.03001, %sqlite3VdbeMemSetNull.exit4231.thread4798 ], [ %.03001, %bb.ri ], [ %.03001, %bb.cd ], [ %.03001, %bb.cr ], [ %.03001, %sqlite3VdbeChangeEncoding.exit ], [ %.03001, %bb.bm ], [ %.03001, %bb.xg ], [ %.03001, %bb.art ], [ %.03001, %bb.xj ], [ %.03001, %bb.yg ], [ %.03001, %bb.agh ], [ %.03001, %bb.ase ], [ %.03001, %bb.auh ], [ %.03001, %bb.dw ], [ %.03001, %bb.do ], [ %.03001, %bb.dq ], [ %.03001, %bb.du ], [ %.03001, %bb.ds ], [ %.03001, %bb.sc ], [ %.03001, %bb.xp ], [ %.03001, %bb.yd ], [ %.03001, %bb.afu ], [ %.03001, %sqlite3_malloc64.exit ], [ %.03001, %bb.bba ], [ %.03001, %sqlite3DbMallocRaw.exit.i8634 ]
  %.13 = phi ptr [ %i.an, %bb.e ], [ %.02972, %.thread5212 ], [ %.02972, %bb.co ], [ %.02972, %.thread4982 ], [ %.02972, %.thread5321 ], [ %.02972, %bb.df ], [ %.02972, %.thread5363 ], [ %.02972, %sqlite3VdbeMemSetNull.exit4231.thread5394 ], [ %.02972, %bb.anu ], [ %.02972, %bb.ca ], [ %.02972, %sqlite3VdbeMemSetNull.exit4231.thread4798 ], [ %.02972, %bb.ri ], [ %.02972, %bb.cd ], [ %.02972, %bb.cr ], [ %.02972, %sqlite3VdbeChangeEncoding.exit ], [ %.02972, %bb.bm ], [ %.02972, %bb.xg ], [ %.02972, %bb.art ], [ %.02972, %bb.xj ], [ %.02972, %bb.yg ], [ %.02972, %bb.agh ], [ %.02972, %bb.ase ], [ %.02972, %bb.auh ], [ %.02972, %bb.dw ], [ %.02972, %bb.do ], [ %.02972, %bb.dq ], [ %.02972, %bb.du ], [ %.02972, %bb.ds ], [ %.02972, %bb.sc ], [ %.02972, %bb.xp ], [ %.02972, %bb.yd ], [ %.02972, %bb.afu ], [ %.02972, %sqlite3_malloc64.exit ], [ %.02972, %bb.bba ], [ %.02972, %sqlite3DbMallocRaw.exit.i8634 ]
  %.7 = phi ptr [ %i.an, %bb.e ], [ %.02970, %.thread5212 ], [ %.02970, %bb.co ], [ %.02970, %.thread4982 ], [ %.02970, %.thread5321 ], [ %.02970, %bb.df ], [ %.02970, %.thread5363 ], [ %.02970, %sqlite3VdbeMemSetNull.exit4231.thread5394 ], [ %.02970, %bb.anu ], [ %.02970, %bb.ca ], [ %.02970, %sqlite3VdbeMemSetNull.exit4231.thread4798 ], [ %.02970, %bb.ri ], [ %.02970, %bb.cd ], [ %.02970, %bb.cr ], [ %.02970, %sqlite3VdbeChangeEncoding.exit ], [ %.02970, %bb.bm ], [ %.02970, %bb.xg ], [ %.02970, %bb.art ], [ %.02970, %bb.xj ], [ %.02970, %bb.yg ], [ %.02970, %bb.agh ], [ %.02970, %bb.ase ], [ %.02970, %bb.auh ], [ %.02970, %bb.dw ], [ %.02970, %bb.do ], [ %.02970, %bb.dq ], [ %.02970, %bb.du ], [ %.02970, %bb.ds ], [ %.02970, %bb.sc ], [ %.02970, %bb.xp ], [ %.02970, %bb.yd ], [ %.02970, %bb.afu ], [ %.02970, %sqlite3_malloc64.exit ], [ %.02970, %bb.bba ], [ %.02970, %sqlite3DbMallocRaw.exit.i8634 ]
  %i.izk = getelementptr inbounds nuw i8, ptr %i.ao, i64 103 ; 2 uses
  %i.izl = load i8, ptr %i.izk, align 1, !tbaa !918
  %i.izm = icmp eq i8 %i.izl, 0
  br i1 %i.izm, label %bb.bgi, label %sqlite3OomFault.exit4672

bb.bgi:                                           ; preds = %sqlite3VdbeMemSetNull.exit4137.thread
  %i.izn = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.izo = load i8, ptr %i.izn, align 8, !tbaa !919
  %i.izp = icmp eq i8 %i.izo, 0
  br i1 %i.izp, label %bb.bgj, label %sqlite3OomFault.exit4672

bb.bgj:                                           ; preds = %bb.bgi
  store i8 1, ptr %i.izk, align 1, !tbaa !918
  %i.izq = getelementptr inbounds nuw i8, ptr %i.ao, i64 220
  %i.izr = load i32, ptr %i.izq, align 4, !tbaa !920
  %i.izs = icmp sgt i32 %i.izr, 0
  br i1 %i.izs, label %bb.bgk, label %bb.bgl

bb.bgk:                                           ; preds = %bb.bgj
  %i.izt = getelementptr inbounds nuw i8, ptr %i.ao, i64 400
  store atomic volatile i32 1, ptr %i.izt monotonic, align 8
  br label %bb.bgl

bb.bgl:                                           ; preds = %bb.bgk, %bb.bgj
  %i.izu = getelementptr inbounds nuw i8, ptr %i.ao, i64 408 ; 2 uses
  %i.izv = load i32, ptr %i.izu, align 8, !tbaa !921
  %i.izw = add i32 %i.izv, 1
  store i32 %i.izw, ptr %i.izu, align 8, !tbaa !921
  %i.izx = getelementptr inbounds nuw i8, ptr %i.ao, i64 412
  store i16 0, ptr %i.izx, align 4, !tbaa !922
  %i.izy = getelementptr inbounds nuw i8, ptr %i.ao, i64 344 ; 2 uses
  %i.izz = load ptr, ptr %i.izy, align 8, !tbaa !768 ; 2 uses
  %.not.i4663 = icmp eq ptr %i.izz, null
  br i1 %.not.i4663, label %sqlite3OomFault.exit4672, label %bb.bgm

bb.bgm:                                           ; preds = %bb.bgl
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.izz, ptr noundef nonnull @.str.125), !inline_history !48
  %i.jaa = load ptr, ptr %i.izy, align 8, !tbaa !768 ; 2 uses
  %i.jab = getelementptr inbounds nuw i8, ptr %i.jaa, i64 24
  store i32 7, ptr %i.jab, align 8, !tbaa !779
  %.0.in17.i4664 = getelementptr inbounds nuw i8, ptr %i.jaa, i64 224
  %.018.i4665 = load ptr, ptr %.0.in17.i4664, align 8, !tbaa !923 ; 2 uses
  %.not1619.i4666 = icmp eq ptr %.018.i4665, null
  br i1 %.not1619.i4666, label %sqlite3OomFault.exit4672, label %.lr.ph.i4667

.lr.ph.i4667:                                     ; preds = %bb.bgm, %.lr.ph.i4667
  %.020.i4668 = phi ptr [ %.0.i4670, %.lr.ph.i4667 ], [ %.018.i4665, %bb.bgm ] ; 3 uses
  %i.jac = getelementptr inbounds nuw i8, ptr %.020.i4668, i64 52 ; 2 uses
  %i.jad = load i32, ptr %i.jac, align 4, !tbaa !780
  %i.jae = add nsw i32 %i.jad, 1
  store i32 %i.jae, ptr %i.jac, align 4, !tbaa !780
  %i.jaf = getelementptr inbounds nuw i8, ptr %.020.i4668, i64 24
  store i32 7, ptr %i.jaf, align 8, !tbaa !779
  %.0.in.i4669 = getelementptr inbounds nuw i8, ptr %.020.i4668, i64 224
  %.0.i4670 = load ptr, ptr %.0.in.i4669, align 8, !tbaa !923 ; 2 uses
  %.not16.i4671 = icmp eq ptr %.0.i4670, null
  br i1 %.not16.i4671, label %sqlite3OomFault.exit4672, label %.lr.ph.i4667, !llvm.loop !36

sqlite3OomFault.exit4672:                         ; preds = %.lr.ph.i4667, %sqlite3VdbeMemSetNull.exit4137.thread, %bb.bgi, %bb.bgl, %bb.bgm
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %0, ptr noundef nonnull @.str.125)
  br label %sqlite3VdbeMemSetNull.exit4225

bb.bgn:                                           ; preds = %.critedge52, %sqlite3VdbeLeave.exit
  ret i32 %.113
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 102) i32 @sqlite3VdbeNextOpcode(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !703  ; 14 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit130.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i16, ptr %i.c, align 4, !tbaa !686
  %i.e = and i16 %i.d, 16
  %.not117 = icmp eq i16 %i.e, 0
  br i1 %.not117, label %.loopexit130, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1093
  %i.h = ashr i32 %i.g, 3                         ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !762  ; 8 uses
  %i.k = icmp sgt i32 %i.h, 0
  br i1 %i.k, label %.lr.ph.preheader, label %.loopexit130

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.l = icmp ult i32 %i.h, 4
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0104135 = phi i32 [ %i.b, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1109
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !691
  %i.q = add nsw i32 %i.p, %.0104135
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1109
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !691
  %i.w = add nsw i32 %i.v, %i.q
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1109
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !691
  %i.ac = add nsw i32 %i.ab, %i.w
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1109
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !691
  %i.ai = add nsw i32 %i.ah, %i.ac                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit130.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !4095

.loopexit130.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit130, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit130.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit130.loopexit.unr-lcssa ]
  %.0104135.epil.init = phi i32 [ %i.b, %.lr.ph.preheader ], [ %i.ai, %.loopexit130.loopexit.unr-lcssa ]
  %lcmp.mod372 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod372)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.0104135.epil = phi i32 [ %.0104135.epil.init, %.lr.ph.epil.preheader ], [ %i.an, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.epil
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1109
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !691
  %i.an = add nsw i32 %i.am, %.0104135.epil       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit130, label %.lr.ph.epil, !llvm.loop !4096

.loopexit130:                                     ; preds = %.loopexit130.loopexit.unr-lcssa, %.lr.ph.epil, %bb.b, %bb.c
  %.1105 = phi i32 [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ %i.ai, %.loopexit130.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.epil ] ; 2 uses
  %.199 = phi i32 [ 0, %bb.b ], [ %i.h, %bb.c ], [ %i.h, %.lr.ph.epil ], [ %i.h, %.loopexit130.loopexit.unr-lcssa ]
  %.195 = phi ptr [ null, %bb.b ], [ %i.j, %bb.c ], [ %i.j, %.lr.ph.epil ], [ %i.j, %.loopexit130.loopexit.unr-lcssa ]
  %i.ao = load i32, ptr %3, align 4, !tbaa !570   ; 4 uses
  %i.ap = add nsw i32 %i.ao, 1                    ; 3 uses
  %.not118148 = icmp slt i32 %i.ao, %.1105
  br i1 %.not118148, label %.lr.ph154, label %._crit_edge155

.loopexit130.thread:                              ; preds = %bb.a
  %i.aq = load i32, ptr %3, align 4, !tbaa !570   ; 7 uses
  %i.ar = add nsw i32 %i.aq, 1                    ; 4 uses
  %.not118148292 = icmp slt i32 %i.aq, %i.b
  br i1 %.not118148292, label %.lr.ph154.thread, label %._crit_edge155

.lr.ph154.thread:                                 ; preds = %.loopexit130.thread
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  switch i32 %2, label %.lr.ph154.split.us.split.preheader [
    i32 0, label %.lr.ph154.split.us.split.us
    i32 2, label %.lr.ph154.split.us.split.us172.preheader
  ]

.lr.ph154:                                        ; preds = %.loopexit130
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph154.split

.lr.ph154.split.us.split.us172.preheader:         ; preds = %.lr.ph154.thread
  %i.ay = add i32 %i.b, 1
  %.186.us.us188 = load ptr, ptr %i.as, align 8, !tbaa !924 ; 5 uses
  br label %.lr.ph154.split.us.split.us172

.lr.ph154.split.us.split.preheader:               ; preds = %.lr.ph154.thread
  %i.az = add i32 %i.b, 1
  %.186.us = load ptr, ptr %i.as, align 8, !tbaa !924 ; 4 uses
  br label %.lr.ph154.split.us.split

.lr.ph154.split.us.split.us:                      ; preds = %.lr.ph154.thread
  %i.ba = icmp slt i32 %i.aq, %i.b
  tail call void @llvm.assume(i1 %i.ba)
  %.186.us.us = load ptr, ptr %i.as, align 8, !tbaa !924
  br label %.thread127

.lr.ph154.split.us.split.us172:                   ; preds = %.lr.ph154.split.us.split.us172.preheader, %.thread129.us.us189
  %i.bb = phi i32 [ %i.bj, %.thread129.us.us189 ], [ %i.ar, %.lr.ph154.split.us.split.us172.preheader ] ; 6 uses
  %.084152.us.us173 = phi i32 [ %i.bb, %.thread129.us.us189 ], [ %i.aq, %.lr.ph154.split.us.split.us172.preheader ] ; 5 uses
  %6 = icmp slt i32 %.084152.us.us173, %i.b
  tail call void @llvm.assume(i1 %6)
  %i.bc = sext i32 %.084152.us.us173 to i64
  %i.bd = getelementptr inbounds [32 x i8], ptr %.186.us.us188, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !929
  switch i8 %i.be, label %.thread129.us.us189 [
    i8 114, label %.thread127
    i8 116, label %bb.d
    i8 113, label %.thread127
  ]

bb.d:                                             ; preds = %.lr.ph154.split.us.split.us172
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !930
  %i.bh = and i16 %i.bg, 16
  %i.bi = icmp eq i16 %i.bh, 0
  br i1 %i.bi, label %.thread127, label %.thread129.us.us189

.thread129.us.us189:                              ; preds = %bb.d, %.lr.ph154.split.us.split.us172
  %i.bj = add i32 %i.bb, 1
  %exitcond248.not = icmp eq i32 %i.bb, %i.b
  br i1 %exitcond248.not, label %._crit_edge155, label %.lr.ph154.split.us.split.us172

.lr.ph154.split.us.split:                         ; preds = %.lr.ph154.split.us.split.preheader, %.thread129.us
  %i.bk = phi i32 [ %i.br, %.thread129.us ], [ %i.ar, %.lr.ph154.split.us.split.preheader ] ; 5 uses
  %.084152.us = phi i32 [ %i.bk, %.thread129.us ], [ %i.aq, %.lr.ph154.split.us.split.preheader ] ; 5 uses
  %7 = icmp slt i32 %.084152.us, %i.b
  tail call void @llvm.assume(i1 %7)
  %i.bl = sext i32 %.084152.us to i64
  %i.bm = getelementptr inbounds [32 x i8], ptr %.186.us, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !929 ; 2 uses
  %i.bo = icmp eq i8 %i.bn, -66
  br i1 %i.bo, label %.thread127, label %bb.e

bb.e:                                             ; preds = %.lr.ph154.split.us.split
  %i.bp = icmp eq i8 %i.bn, 8
  %i.bq = icmp sgt i32 %.084152.us, 0
  %or.cond.us = and i1 %i.bq, %i.bp
  br i1 %or.cond.us, label %.thread127, label %.thread129.us

.thread129.us:                                    ; preds = %bb.e
  %i.br = add i32 %i.bk, 1
  %exitcond255.not = icmp eq i32 %i.bk, %i.b
  br i1 %exitcond255.not, label %._crit_edge155, label %.lr.ph154.split.us.split

._crit_edge155:                                   ; preds = %.thread129, %.thread129.us.us189, %.thread129.us, %.loopexit130.thread, %.loopexit130
  %.085.lcssa = phi ptr [ null, %.loopexit130 ], [ %.186.us, %.thread129.us ], [ null, %.loopexit130.thread ], [ %.186.us.us188, %.thread129.us.us189 ], [ %.186, %.thread129 ]
  %.084.lcssa = phi i32 [ %i.ao, %.loopexit130 ], [ %i.b, %.thread129.us ], [ %i.aq, %.loopexit130.thread ], [ %i.b, %.thread129.us.us189 ], [ %i.bt, %.thread129 ]
  %.lcssa131 = phi i32 [ %i.ap, %.loopexit130 ], [ %i.az, %.thread129.us ], [ %i.ar, %.loopexit130.thread ], [ %i.ay, %.thread129.us.us189 ], [ %i.ds, %.thread129 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.bs, align 4, !tbaa !904
  br label %.thread127

.lr.ph154.split:                                  ; preds = %.lr.ph154, %.thread129
  %i.bt = phi i32 [ %i.ds, %.thread129 ], [ %i.ap, %.lr.ph154 ] ; 10 uses
  %.084152 = phi i32 [ %i.bt, %.thread129 ], [ %i.ao, %.lr.ph154 ] ; 4 uses
  %.296151 = phi ptr [ %.5, %.thread129 ], [ %.195, %.lr.ph154 ] ; 5 uses
  %.2100150.a = phi i32 [ %.5103, %.thread129 ], [ %.199, %.lr.ph154 ] ; 8 uses
  %.2106149 = phi i32 [ %.5109, %.thread129 ], [ %.1105, %.lr.ph154 ] ; 3 uses
  %i.bu = load i32, ptr %i.a, align 8, !tbaa !703 ; 2 uses
  %8 = icmp slt i32 %.084152, %i.bu
  br i1 %8, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph154.split
  %i.bv = sub nsw i32 %.084152, %i.bu             ; 3 uses
  %i.bw = load ptr, ptr %.296151, align 8, !tbaa !1109 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !691 ; 2 uses
  %.not119137 = icmp slt i32 %i.bv, %i.by
  br i1 %.not119137, label %.loopexit, label %.lr.ph140

.lr.ph140:                                        ; preds = %bb.f, %.lr.ph140
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %.lr.ph140 ], [ 0, %bb.f ]
  %i.bz = phi i32 [ %i.ce, %.lr.ph140 ], [ %i.by, %bb.f ]
  %.191138 = phi i32 [ %i.ca, %.lr.ph140 ], [ %i.bv, %bb.f ]
  %i.ca = sub nsw i32 %.191138, %i.bz             ; 3 uses
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.296151, i64 %indvars.iv.next238
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1109 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !691 ; 2 uses
  %.not119 = icmp slt i32 %i.ca, %i.ce
  br i1 %.not119, label %.loopexit, label %.lr.ph140, !llvm.loop !4097

.loopexit:                                        ; preds = %.lr.ph140, %bb.f, %.lr.ph154.split
  %.292 = phi i32 [ %.084152, %.lr.ph154.split ], [ %i.bv, %bb.f ], [ %i.ca, %.lr.ph140 ] ; 8 uses
  %.186.in = phi ptr [ %i.at, %.lr.ph154.split ], [ %i.bw, %bb.f ], [ %i.cc, %.lr.ph140 ]
  %.186 = load ptr, ptr %.186.in, align 8, !tbaa !924 ; 9 uses
  %i.cf = sext i32 %.292 to i64
  %i.cg = getelementptr inbounds [32 x i8], ptr %.186, i64 %i.cf ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !1166
  %i.cj = icmp eq i8 %i.ci, -4
  br i1 %i.cj, label %bb.g, label %.thread

bb.g:                                             ; preds = %.loopexit
  %i.ck = add nsw i32 %.2100150.a, 1              ; 2 uses
  %i.cl = shl i32 %i.ck, 3                        ; 2 uses
  %i.cm = icmp sgt i32 %.2100150.a, 0
  br i1 %i.cm, label %.lr.ph144, label %._crit_edge

.lr.ph144:                                        ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !733
  %wide.trip.count243 = zext nneg i32 %.2100150.a to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph144, %bb.i
  %indvars.iv240 = phi i64 [ 0, %.lr.ph144 ], [ %indvars.iv.next241, %bb.i ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.296151, i64 %indvars.iv240
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1109
  %i.cr = icmp eq ptr %i.cq, %i.co
  br i1 %i.cr, label %._crit_edge.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond244.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count243
  br i1 %exitcond244.not, label %._crit_edge.thread, label %bb.h, !llvm.loop !4098

._crit_edge.loopexit:                             ; preds = %bb.h
  %i.cs = trunc nuw nsw i64 %indvars.iv240 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.082.lcssa = phi i32 [ 0, %bb.g ], [ %i.cs, %._crit_edge.loopexit ]
  %i.ct = icmp eq i32 %.082.lcssa, %.2100150.a
  br i1 %i.ct, label %._crit_edge.thread, label %.thread

._crit_edge.thread:                               ; preds = %bb.i, %._crit_edge
  %i.cu = icmp ne i32 %.2100150.a, 0
  %i.cv = zext i1 %i.cu to i32
  %i.cw = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %1, i32 noundef %i.cl, i32 noundef %i.cv) ; 2 uses
  store i32 %i.cw, ptr %i.au, align 4, !tbaa !904
  %.not120 = icmp eq i32 %i.cw, 0
  br i1 %.not120, label %bb.j, label %.thread127

bb.j:                                             ; preds = %._crit_edge.thread
  %i.cx = load ptr, ptr %i.av, align 8, !tbaa !762 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !733
  %i.da = sext i32 %.2100150.a to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.da
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !1109
  %i.dc = load i16, ptr %i.aw, align 4, !tbaa !686
  %i.dd = and i16 %i.dc, -3520
  %i.de = or disjoint i16 %i.dd, 16
  store i16 %i.de, ptr %i.aw, align 4, !tbaa !686
  store i32 %i.cl, ptr %i.ax, align 8, !tbaa !1093
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !733
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !691
  %i.di = add nsw i32 %i.dh, %.2106149
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.j, %.loopexit
  %.5109 = phi i32 [ %i.di, %bb.j ], [ %.2106149, %.loopexit ], [ %.2106149, %._crit_edge ] ; 2 uses
  %.5103 = phi i32 [ %i.ck, %bb.j ], [ %.2100150.a, %.loopexit ], [ %.2100150.a, %._crit_edge ]
  %.5 = phi ptr [ %i.cx, %bb.j ], [ %.296151, %.loopexit ], [ %.296151, %._crit_edge ]
  switch i32 %2, label %bb.m [
    i32 0, label %.thread127
    i32 2, label %bb.k
  ]

bb.k:                                             ; preds = %.thread
  %i.dj = load i8, ptr %i.cg, align 8, !tbaa !929
  switch i8 %i.dj, label %.thread129 [
    i8 114, label %.thread127
    i8 116, label %bb.l
    i8 113, label %.thread127
  ]

bb.l:                                             ; preds = %bb.k
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !930
  %i.dm = and i16 %i.dl, 16
  %i.dn = icmp eq i16 %i.dm, 0
  br i1 %i.dn, label %.thread127, label %.thread129

bb.m:                                             ; preds = %.thread
  %i.do = load i8, ptr %i.cg, align 8, !tbaa !929 ; 2 uses
  %i.dp = icmp eq i8 %i.do, -66
  br i1 %i.dp, label %.thread127, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = icmp eq i8 %i.do, 8
  %i.dr = icmp sgt i32 %.084152, 0
  %or.cond = and i1 %i.dr, %i.dq
  br i1 %or.cond, label %.thread127, label %.thread129

.thread129:                                       ; preds = %bb.k, %bb.l, %bb.n
  %i.ds = add nsw i32 %i.bt, 1                    ; 2 uses
  %.not118 = icmp slt i32 %i.bt, %.5109
  br i1 %.not118, label %.lr.ph154.split, label %._crit_edge155

.thread127:                                       ; preds = %bb.m, %bb.n, %.thread, %._crit_edge.thread, %bb.l, %bb.k, %bb.k, %bb.d, %.lr.ph154.split.us.split.us172, %.lr.ph154.split.us.split.us172, %bb.e, %.lr.ph154.split.us.split, %.lr.ph154.split.us.split.us, %._crit_edge155
  %i.dt = phi i32 [ %.lcssa131, %._crit_edge155 ], [ %i.bb, %bb.d ], [ %i.ar, %.lr.ph154.split.us.split.us ], [ %i.bk, %bb.e ], [ %i.bk, %.lr.ph154.split.us.split ], [ %i.bb, %.lr.ph154.split.us.split.us172 ], [ %i.bb, %.lr.ph154.split.us.split.us172 ], [ %i.bt, %bb.l ], [ %i.bt, %bb.k ], [ %i.bt, %bb.k ], [ %i.bt, %bb.n ], [ %i.ap, %.thread ], [ %i.bt, %._crit_edge.thread ], [ %i.bt, %bb.m ]
  %.393 = phi i32 [ %.084.lcssa, %._crit_edge155 ], [ %.084152.us.us173, %bb.d ], [ %i.aq, %.lr.ph154.split.us.split.us ], [ %.084152.us, %bb.e ], [ %.084152.us, %.lr.ph154.split.us.split ], [ %.084152.us.us173, %.lr.ph154.split.us.split.us172 ], [ %.084152.us.us173, %.lr.ph154.split.us.split.us172 ], [ %.292, %bb.k ], [ %.292, %bb.k ], [ %.292, %bb.l ], [ %.292, %._crit_edge.thread ], [ %.292, %.thread ], [ %.292, %bb.n ], [ %.292, %bb.m ]
  %.3 = phi i32 [ 101, %._crit_edge155 ], [ 0, %bb.d ], [ 0, %.lr.ph154.split.us.split.us ], [ 0, %bb.e ], [ 0, %.lr.ph154.split.us.split ], [ 0, %.lr.ph154.split.us.split.us172 ], [ 0, %.lr.ph154.split.us.split.us172 ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.k ], [ 0, %bb.n ], [ %2, %.thread ], [ 1, %._crit_edge.thread ], [ 0, %bb.m ]
  %.2 = phi ptr [ %.085.lcssa, %._crit_edge155 ], [ %.186.us.us188, %bb.d ], [ %.186.us.us, %.lr.ph154.split.us.split.us ], [ %.186.us, %bb.e ], [ %.186.us, %.lr.ph154.split.us.split ], [ %.186.us.us188, %.lr.ph154.split.us.split.us172 ], [ %.186.us.us188, %.lr.ph154.split.us.split.us172 ], [ %.186, %bb.k ], [ %.186, %bb.k ], [ %.186, %bb.l ], [ %.186, %._crit_edge.thread ], [ %.186, %.thread ], [ %.186, %bb.n ], [ %.186, %bb.m ]
  store i32 %i.dt, ptr %3, align 4, !tbaa !570
  store i32 %.393, ptr %4, align 4, !tbaa !570
  store ptr %.2, ptr %5, align 8, !tbaa !924
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3VdbeDisplayP4(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.sqlite3_str, align 8        ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  store i32 1000000000, ptr %i.c, align 4, !tbaa !766
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  store i32 0, ptr %i.d, align 8, !tbaa !753
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  store i8 0, ptr %i.e, align 4, !tbaa !765
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 29 ; 2 uses
  store i8 0, ptr %i.f, align 1, !tbaa !752
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !1166
  switch i8 %i.h, label %bb.aa [
    i8 -9, label %bb.b
    i8 -2, label %bb.h
    i8 -8, label %bb.i
    i8 -16, label %bb.j
    i8 -14, label %bb.k
    i8 -3, label %bb.l
    i8 -13, label %bb.m
    i8 -11, label %bb.n
    i8 -12, label %bb.u
    i8 -15, label %bb.v
    i8 -4, label %sqlite3Strlen30.exit.i
    i8 -5, label %bb.x
    i8 -6, label %bb.y
    i8 -18, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !733  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 6 ; 3 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !783
  %i.m = zext i16 %i.l to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %2, ptr noundef nonnull @.str.127, i32 noundef %i.m)
  %i.n = load i16, ptr %i.k, align 2, !tbaa !783
  %.not84 = icmp eq i16 %i.n, 0
  br i1 %.not84, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph82, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph82 ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1715 ; 2 uses
  %.not61 = icmp eq ptr %i.r, null
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1289
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.t = phi ptr [ %i.s, %bb.d ], [ @.str.4, %bb.c ] ; 2 uses
  %i.u = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(7) @.str.128) #59
  %i.v = icmp eq i32 %i.u, 0
  %spec.store.select = select i1 %i.v, ptr @.str.129, ptr %i.t
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !741
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1, !tbaa !733
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = and i32 %i.z, 1
  %.not62 = icmp eq i32 %i.aa, 0
  %i.ab = select i1 %.not62, ptr @.str.4, ptr @.str.131
  %i.ac = and i32 %i.z, 2
  %.not63 = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not63, ptr @.str.4, ptr @.str.132
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %2, ptr noundef nonnull @.str.130, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ad, ptr noundef nonnull %spec.store.select)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i16, ptr %i.k, align 2, !tbaa !783
  %i.af = zext i16 %i.ae to i64
  %i.ag = icmp samesign ult i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.c, label %._crit_edge83, !llvm.loop !4099

._crit_edge83:                                    ; preds = %bb.e, %bb.b
  %i.ah = load i32, ptr %i.d, align 8, !tbaa !753 ; 2 uses
  %i.ai = add i32 %i.ah, 1                        ; 2 uses
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !754
  %.not.i = icmp ult i32 %i.ai, %i.aj
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge83
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %2, ptr noundef nonnull @.str.133, i32 noundef 1), !inline_history !755
  br label %sqlite3_str_appendall.exit

bb.g:                                             ; preds = %._crit_edge83
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !753
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !756
  %i.al = zext i32 %i.ah to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  store i8 41, ptr %i.am, align 1
  br label %sqlite3_str_appendall.exit

bb.h:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !733 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1289
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !1359
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @sqlite3VdbeDisplayP4.encnames, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !741
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %2, ptr noundef nonnull @.str.138, ptr noundef %i.ap, ptr noundef %i.au)
  br label %sqlite3_str_appendall.exit

bb.i:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !733 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !732
  %i.az = load i16, ptr %i.aw, align 8, !tbaa !1337
  %i.ba = sext i16 %i.az to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %2, ptr noundef nonnull @.str.139, ptr noundef %i.ay, i32 noundef %i.ba)
  br label %sqlite3_str_appendall.exit

bb.j:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !733
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !735 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !732
  %i.bh = load i16, ptr %i.be, align 8, !tbaa !1337
  %i.bi = sext i16 %i.bh to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %2, ptr noundef nonnull @.str.139, ptr noundef %i.bg, i32 noundef %i.bi)
  br label %sqlite3_str_appendall.exit

bb.k:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !733
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !565
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %2, ptr noundef nonnull @.str.140, i64 noundef %i.bl)
  br label %sqlite3_str_appendall.exit

bb.l:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !733
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %2, ptr noundef nonnull @.str.141, i32 noundef %i.bn)
  br label %sqlite3_str_appendall.exit

bb.m:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !733
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !782
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %2, ptr noundef nonnull @.str.142, double noundef %i.bq)
  br label %sqlite3_str_appendall.exit

bb.n:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !733 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !686
  %i.bv = zext i16 %i.bu to i32                   ; 4 uses
  %i.bw = and i32 %i.bv, 2
  %.not57 = icmp eq i32 %i.bw, 0
  br i1 %.not57, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  br label %sqlite3_str_append.exit

bb.p:                                             ; preds = %bb.n
  %i.by = and i32 %i.bv, 36
  %.not58 = icmp eq i32 %i.by, 0
  br i1 %.not58, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = load i64, ptr %i.bs, align 8, !tbaa !733
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %2, ptr noundef nonnull @.str.140, i64 noundef %i.bz)
  br label %sqlite3_str_appendall.exit

bb.r:                                             ; preds = %bb.p
  %i.ca = and i32 %i.bv, 8
  %.not59 = icmp eq i32 %i.ca, 0
  br i1 %.not59, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = load double, ptr %i.bs, align 8, !tbaa !733
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %2, ptr noundef nonnull @.str.142, double noundef %i.cb)
  br label %sqlite3_str_appendall.exit

bb.t:                                             ; preds = %bb.r
end_hunk_1
begin_hunk_2_@sqlite3Select:bb.a
  %i.ayz = and i8 %i.ayy, 1
  %i.aza = getelementptr inbounds nuw [24 x i8], ptr %i.axn, i64 %indvars.iv.next.i1094.2
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 24
  store i8 %i.ayz, ptr %i.azb, align 8, !tbaa !2010
  %indvars.iv.next.i1094.3 = add nuw nsw i64 %indvars.iv.i1093, 4 ; 2 uses
  %niter1833.next.3 = add i64 %niter1833, 4       ; 2 uses
  %niter1833.ncmp.3 = icmp eq i64 %niter1833.next.3, %unroll_iter1832
  br i1 %niter1833.ncmp.3, label %sqlite3CopySortOrder.exit.loopexit.unr-lcssa, label %.lr.ph.i1092, !llvm.loop !4656

sqlite3CopySortOrder.exit.loopexit.unr-lcssa:     ; preds = %.lr.ph.i1092
  %lcmp.mod1830.not = icmp eq i64 %xtraiter1828, 0
  br i1 %lcmp.mod1830.not, label %sqlite3CopySortOrder.exit, label %.lr.ph.i1092.epil.preheader

.lr.ph.i1092.epil.preheader:                      ; preds = %sqlite3CopySortOrder.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i1093.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i1094.3, %sqlite3CopySortOrder.exit.loopexit.unr-lcssa ]
  %lcmp.mod1831 = icmp ne i64 %xtraiter1828, 0
  call void @llvm.assume(i1 %lcmp.mod1831)
  br label %.lr.ph.i1092.epil

.lr.ph.i1092.epil:                                ; preds = %.lr.ph.i1092.epil, %.lr.ph.i1092.epil.preheader
  %indvars.iv.i1093.epil = phi i64 [ %indvars.iv.i1093.epil.init, %.lr.ph.i1092.epil.preheader ], [ %indvars.iv.next.i1094.epil, %.lr.ph.i1092.epil ] ; 3 uses
  %epil.iter1829 = phi i64 [ 0, %.lr.ph.i1092.epil.preheader ], [ %epil.iter1829.next, %.lr.ph.i1092.epil ]
  %i.azc = getelementptr inbounds nuw [24 x i8], ptr %i.axy, i64 %indvars.iv.i1093.epil
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 24
  %i.aze = load i8, ptr %i.azd, align 8, !tbaa !2010
  %i.azf = and i8 %i.aze, 1
  %i.azg = getelementptr inbounds nuw [24 x i8], ptr %i.axn, i64 %indvars.iv.i1093.epil
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 24
  store i8 %i.azf, ptr %i.azh, align 8, !tbaa !2010
  %indvars.iv.next.i1094.epil = add nuw nsw i64 %indvars.iv.i1093.epil, 1
  %epil.iter1829.next = add i64 %epil.iter1829, 1 ; 2 uses
  %epil.iter1829.cmp.not = icmp eq i64 %epil.iter1829.next, %xtraiter1828
  br i1 %epil.iter1829.cmp.not, label %sqlite3CopySortOrder.exit, label %.lr.ph.i1092.epil, !llvm.loop !4657

sqlite3CopySortOrder.exit:                        ; preds = %sqlite3CopySortOrder.exit.loopexit.unr-lcssa, %.lr.ph.i1092.epil, %.preheader.i1091
  %i.azi = call fastcc i32 @sqlite3ExprListCompare(ptr noundef nonnull %i.axn, ptr noundef nonnull %i.axy, i32 noundef -1)
  %i.azj = icmp eq i32 %i.azi, 0
  br i1 %i.azj, label %bb.mw, label %sqlite3CopySortOrder.exit.thread

bb.mw:                                            ; preds = %sqlite3CopySortOrder.exit
  %i.azk = load i32, ptr %i.nh, align 8, !tbaa !1373
  %i.azl = and i32 %i.azk, 4
  %i.azm = icmp eq i32 %i.azl, 0
  br i1 %i.azm, label %bb.mx, label %sqlite3CopySortOrder.exit.thread

bb.mx:                                            ; preds = %bb.mw
  %i.azn = load ptr, ptr %i.cp, align 8, !tbaa !1856
  %i.azo = icmp eq ptr %i.azn, null
  br i1 %i.azo, label %bb.my, label %sqlite3CopySortOrder.exit.thread

bb.my:                                            ; preds = %bb.mx
  %i.azp = load i32, ptr %i.bz, align 4, !tbaa !813
  %i.azq = and i32 %i.azp, -2
  store i32 %i.azq, ptr %i.bz, align 4, !tbaa !813
  %i.azr = call fastcc ptr @sqlite3ExprListDup(ptr noundef nonnull %i.e, ptr noundef nonnull %i.axn, i32 noundef 0) ; 13 uses
  store ptr %i.azr, ptr %i.axp, align 8, !tbaa !1845
  %.not982 = icmp eq ptr %i.azr, null
  br i1 %.not982, label %.loopexit1201, label %.preheader1200

.preheader1200:                                   ; preds = %bb.my
  %i.azs = load i32, ptr %i.azr, align 8, !tbaa !570 ; 3 uses
  %i.azt = icmp sgt i32 %i.azs, 0
  br i1 %i.azt, label %.lr.ph1227.preheader, label %.loopexit1201

.lr.ph1227.preheader:                             ; preds = %.preheader1200
  %i.azu = zext nneg i32 %i.azs to i64            ; 2 uses
  %xtraiter1834 = and i64 %i.azu, 7               ; 3 uses
  %i.azv = icmp ult i32 %i.azs, 8
  br i1 %i.azv, label %.lr.ph1227.epil.preheader, label %.lr.ph1227.preheader.new

.lr.ph1227.preheader.new:                         ; preds = %.lr.ph1227.preheader
  %unroll_iter1838 = and i64 %i.azu, 2147483640
  br label %.lr.ph1227

.lr.ph1227:                                       ; preds = %.lr.ph1227, %.lr.ph1227.preheader.new
  %indvars.iv1305 = phi i64 [ 0, %.lr.ph1227.preheader.new ], [ %indvars.iv.next1306.7, %.lr.ph1227 ] ; 9 uses
  %niter1839 = phi i64 [ 0, %.lr.ph1227.preheader.new ], [ %niter1839.next.7, %.lr.ph1227 ]
  %indvars.iv.next1306 = or disjoint i64 %indvars.iv1305, 1 ; 2 uses
  %i.azw = trunc i64 %indvars.iv.next1306 to i16
  %i.azx = getelementptr inbounds nuw [24 x i8], ptr %i.azr, i64 %indvars.iv1305
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 28
  store i16 %i.azw, ptr %i.azy, align 4, !tbaa !733
  %indvars.iv.next1306.1 = or disjoint i64 %indvars.iv1305, 2 ; 2 uses
  %i.azz = trunc i64 %indvars.iv.next1306.1 to i16
  %i.baa = getelementptr inbounds nuw [24 x i8], ptr %i.azr, i64 %indvars.iv.next1306
  %i.bab = getelementptr inbounds nuw i8, ptr %i.baa, i64 28
  store i16 %i.azz, ptr %i.bab, align 4, !tbaa !733
  %indvars.iv.next1306.2 = or disjoint i64 %indvars.iv1305, 3 ; 2 uses
  %i.bac = trunc i64 %indvars.iv.next1306.2 to i16
  %i.bad = getelementptr inbounds nuw [24 x i8], ptr %i.azr, i64 %indvars.iv.next1306.1
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 28
  store i16 %i.bac, ptr %i.bae, align 4, !tbaa !733
  %indvars.iv.next1306.3 = or disjoint i64 %indvars.iv1305, 4 ; 2 uses
  %i.baf = trunc i64 %indvars.iv.next1306.3 to i16
  %i.bag = getelementptr inbounds nuw [24 x i8], ptr %i.azr, i64 %indvars.iv.next1306.2
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 28
  store i16 %i.baf, ptr %i.bah, align 4, !tbaa !733
  %indvars.iv.next1306.4 = or disjoint i64 %indvars.iv1305, 5 ; 2 uses
  %i.bai = trunc i64 %indvars.iv.next1306.4 to i16
  %i.baj = getelementptr inbounds nuw [24 x i8], ptr %i.azr, i64 %indvars.iv.next1306.3
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 28
  store i16 %i.bai, ptr %i.bak, align 4, !tbaa !733
  %indvars.iv.next1306.5 = or disjoint i64 %indvars.iv1305, 6 ; 2 uses
  %i.bal = trunc i64 %indvars.iv.next1306.5 to i16
  %i.bam = getelementptr inbounds nuw [24 x i8], ptr %i.azr, i64 %indvars.iv.next1306.4
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bam, i64 28
  store i16 %i.bal, ptr %i.ban, align 4, !tbaa !733
  %indvars.iv.next1306.6 = or disjoint i64 %indvars.iv1305, 7 ; 2 uses
  %i.bao = trunc i64 %indvars.iv.next1306.6 to i16
  %i.bap = getelementptr inbounds nuw [24 x i8], ptr %i.azr, i64 %indvars.iv.next1306.5
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bap, i64 28
  store i16 %i.bao, ptr %i.baq, align 4, !tbaa !733
  %indvars.iv.next1306.7 = add nuw nsw i64 %indvars.iv1305, 8 ; 3 uses
  %i.bar = trunc i64 %indvars.iv.next1306.7 to i16
  %i.bas = getelementptr inbounds nuw [24 x i8], ptr %i.azr, i64 %indvars.iv.next1306.6
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bas, i64 28
  store i16 %i.bar, ptr %i.bat, align 4, !tbaa !733
  %niter1839.next.7 = add i64 %niter1839, 8       ; 2 uses
  %niter1839.ncmp.7 = icmp eq i64 %niter1839.next.7, %unroll_iter1838
  br i1 %niter1839.ncmp.7, label %.loopexit1201.loopexit.unr-lcssa, label %.lr.ph1227, !llvm.loop !4658

.loopexit1201.loopexit.unr-lcssa:                 ; preds = %.lr.ph1227
  %lcmp.mod1836.not = icmp eq i64 %xtraiter1834, 0
  br i1 %lcmp.mod1836.not, label %.loopexit1201, label %.lr.ph1227.epil.preheader

.lr.ph1227.epil.preheader:                        ; preds = %.loopexit1201.loopexit.unr-lcssa, %.lr.ph1227.preheader
  %indvars.iv1305.epil.init = phi i64 [ 0, %.lr.ph1227.preheader ], [ %indvars.iv.next1306.7, %.loopexit1201.loopexit.unr-lcssa ]
  %lcmp.mod1837 = icmp ne i64 %xtraiter1834, 0
  call void @llvm.assume(i1 %lcmp.mod1837)
  br label %.lr.ph1227.epil

.lr.ph1227.epil:                                  ; preds = %.lr.ph1227.epil, %.lr.ph1227.epil.preheader
  %indvars.iv1305.epil = phi i64 [ %indvars.iv1305.epil.init, %.lr.ph1227.epil.preheader ], [ %indvars.iv.next1306.epil, %.lr.ph1227.epil ] ; 2 uses
  %epil.iter1835 = phi i64 [ 0, %.lr.ph1227.epil.preheader ], [ %epil.iter1835.next, %.lr.ph1227.epil ]
  %indvars.iv.next1306.epil = add nuw nsw i64 %indvars.iv1305.epil, 1 ; 2 uses
  %i.bau = trunc i64 %indvars.iv.next1306.epil to i16
  %i.bav = getelementptr inbounds nuw [24 x i8], ptr %i.azr, i64 %indvars.iv1305.epil
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bav, i64 28
  store i16 %i.bau, ptr %i.baw, align 4, !tbaa !733
  %epil.iter1835.next = add i64 %epil.iter1835, 1 ; 2 uses
  %epil.iter1835.cmp.not = icmp eq i64 %epil.iter1835.next, %xtraiter1834
  br i1 %epil.iter1835.cmp.not, label %.loopexit1201, label %.lr.ph1227.epil, !llvm.loop !4659

.loopexit1201:                                    ; preds = %.loopexit1201.loopexit.unr-lcssa, %.lr.ph1227.epil, %.preheader1200, %bb.my
  %i.bax = load i32, ptr %i.bz, align 4, !tbaa !813
  %i.bay = or i32 %i.bax, 8
  store i32 %i.bay, ptr %i.bz, align 4, !tbaa !813
  store i8 2, ptr %16, align 4, !tbaa !4679
  br label %sqlite3CopySortOrder.exit.thread

sqlite3CopySortOrder.exit.thread:                 ; preds = %bb.mv, %.loopexit1201, %bb.mx, %bb.mw, %sqlite3CopySortOrder.exit, %._crit_edge
  %.ph = phi i8 [ %i.axv, %bb.mv ], [ %i.axv, %._crit_edge ], [ %i.axv, %sqlite3CopySortOrder.exit ], [ %i.axv, %bb.mw ], [ %i.axv, %bb.mx ], [ 2, %.loopexit1201 ] ; 2 uses
  %.0904.ph = phi ptr [ %i.axq, %bb.mv ], [ %i.axq, %._crit_edge ], [ %i.axq, %sqlite3CopySortOrder.exit ], [ %i.axq, %bb.mw ], [ %i.axq, %bb.mx ], [ %i.azr, %.loopexit1201 ] ; 2 uses
  %.pr = load ptr, ptr %17, align 8, !tbaa !2112  ; 4 uses
  %.not983 = icmp eq ptr %.pr, null
  br i1 %.not983, label %sqlite3CopySortOrder.exit.thread.thread, label %bb.mz

bb.mz:                                            ; preds = %sqlite3CopySortOrder.exit.thread
  %i.baz = load i32, ptr %i.axn, align 8, !tbaa !570
  %i.bba = call fastcc ptr @sqlite3KeyInfoFromExprList(ptr noundef nonnull %0, ptr noundef nonnull %.pr, i32 noundef 0, i32 noundef %i.baz)
  %i.bbb = load i32, ptr %i.no, align 8, !tbaa !1175 ; 3 uses
  %i.bbc = add nsw i32 %i.bbb, 1
  store i32 %i.bbc, ptr %i.no, align 8, !tbaa !1175
  %i.bbd = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 %i.bbb, ptr %i.bbd, align 4, !tbaa !2140
  %i.bbe = load i32, ptr %.pr, align 8, !tbaa !570
  %i.bbf = add nsw i32 %i.bbe, 1
  %i.bbg = load i32, ptr %i.axn, align 8, !tbaa !570
  %i.bbh = add nsw i32 %i.bbf, %i.bbg
  %i.bbi = call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %.0.i, i32 noundef 120, i32 noundef %i.bbb, i32 noundef %i.bbh, i32 noundef 0, ptr noundef %i.bba, i32 noundef -9)
  br label %sqlite3CopySortOrder.exit.thread.thread

sqlite3CopySortOrder.exit.thread.thread:          ; preds = %sqlite3CopySortOrder.exit.thread, %bb.mu, %bb.mz
  %i.bbj = phi ptr [ %.pr, %bb.mz ], [ null, %bb.mu ], [ null, %sqlite3CopySortOrder.exit.thread ] ; 10 uses
  %.sink = phi i32 [ %i.bbi, %bb.mz ], [ -1, %bb.mu ], [ -1, %sqlite3CopySortOrder.exit.thread ] ; 3 uses
  %.09041194 = phi ptr [ %.0904.ph, %bb.mz ], [ %i.axq, %bb.mu ], [ %.0904.ph, %sqlite3CopySortOrder.exit.thread ] ; 26 uses
  %i.bbk = phi i8 [ %.ph, %bb.mz ], [ %i.axv, %bb.mu ], [ %.ph, %sqlite3CopySortOrder.exit.thread ] ; 3 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 3 uses
  store i32 %.sink, ptr %i.bbl, align 8, !tbaa !2141
  %i.bbm = load i8, ptr %2, align 8, !tbaa !2065
  %i.bbn = icmp eq i8 %i.bbm, 10
  br i1 %i.bbn, label %bb.na, label %.loopexit1199

bb.na:                                            ; preds = %sqlite3CopySortOrder.exit.thread.thread
  %i.bbo = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bbp = load i32, ptr %i.bbo, align 4, !tbaa !2066
  %i.bbq = load i32, ptr %i.axn, align 8, !tbaa !570
  %i.bbr = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %.0.i, i32 noundef 120, i32 noundef %i.bbp, i32 noundef %i.bbq) ; 0 uses
  %i.bbs = load i32, ptr %i.bz, align 4, !tbaa !813
  %i.bbt = and i32 %i.bbs, 2048
  %.not984 = icmp eq i32 %i.bbt, 0
  br i1 %.not984, label %.loopexit1199, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.bbu = load i32, ptr %i.axn, align 8, !tbaa !570 ; 4 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.axn, i64 8 ; 5 uses
  %i.bbw = icmp sgt i32 %i.bbu, 1
  br i1 %i.bbw, label %.lr.ph1231.preheader, label %.critedge5

.lr.ph1231.preheader:                             ; preds = %bb.nb
  %i.bbx = zext nneg i32 %i.bbu to i64            ; 2 uses
  %indvars.iv.next13091552 = add nsw i64 %i.bbx, -1 ; 2 uses
  %i.bby = getelementptr inbounds nuw [24 x i8], ptr %i.bbv, i64 %indvars.iv.next13091552 ; 2 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 17
  %i.bca = load i16, ptr %i.bbz, align 1
  %i.bcb = and i16 %i.bca, 64
  %i.bcc = icmp eq i16 %i.bcb, 0
  br i1 %i.bcc, label %.lr.ph1555, label %.lr.ph1234

.lr.ph1231:                                       ; preds = %sqlite3DbFree.exit
  %indvars.iv.next1309 = add nsw i64 %indvars.iv.next13091554, -1 ; 2 uses
  %i.bcd = getelementptr inbounds nuw [24 x i8], ptr %i.bbv, i64 %indvars.iv.next1309 ; 2 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcd, i64 17
  %i.bcf = load i16, ptr %i.bce, align 1
  %i.bcg = and i16 %i.bcf, 64
  %i.bch = icmp eq i16 %i.bcg, 0
  br i1 %i.bch, label %.lr.ph1555, label %.critedge5, !llvm.loop !4660

.lr.ph1555:                                       ; preds = %.lr.ph1231.preheader, %.lr.ph1231
  %i.bci = phi ptr [ %i.bcd, %.lr.ph1231 ], [ %i.bby, %.lr.ph1231.preheader ] ; 2 uses
  %indvars.iv.next13091554 = phi i64 [ %indvars.iv.next1309, %.lr.ph1231 ], [ %indvars.iv.next13091552, %.lr.ph1231.preheader ] ; 2 uses
  %indvars.iv13081553 = phi i64 [ %indvars.iv.next13091554, %.lr.ph1231 ], [ %i.bbx, %.lr.ph1231.preheader ]
  %i.bcj = load ptr, ptr %i.bci, align 8, !tbaa !1998 ; 2 uses
  %.not.i1095 = icmp eq ptr %i.bcj, null
  br i1 %.not.i1095, label %sqlite3ExprDelete.exit, label %bb.nc

bb.nc:                                            ; preds = %.lr.ph1555
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.e, ptr noundef %i.bcj), !inline_history !3
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %.lr.ph1555, %bb.nc
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bci, i64 8
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !1999 ; 2 uses
  %.not.i1096 = icmp eq ptr %i.bcl, null
  br i1 %.not.i1096, label %sqlite3DbFree.exit, label %bb.nd

bb.nd:                                            ; preds = %sqlite3ExprDelete.exit
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.e, ptr noundef nonnull %i.bcl)
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %sqlite3ExprDelete.exit, %bb.nd
  %i.bcm = load i32, ptr %i.axn, align 8, !tbaa !570
  %i.bcn = add nsw i32 %i.bcm, -1                 ; 3 uses
  store i32 %i.bcn, ptr %i.axn, align 8, !tbaa !570
  %20 = icmp samesign ugt i64 %indvars.iv13081553, 2
  br i1 %20, label %.lr.ph1231, label %sqlite3DbFree.exit..critedge5.loopexit_crit_edge, !llvm.loop !4660

sqlite3DbFree.exit..critedge5.loopexit_crit_edge: ; preds = %sqlite3DbFree.exit
  br label %.critedge5, !llvm.loop !4660

.critedge5:                                       ; preds = %.lr.ph1231, %sqlite3DbFree.exit..critedge5.loopexit_crit_edge, %bb.nb
  %i.bco = phi i32 [ %i.bbu, %bb.nb ], [ %i.bcn, %sqlite3DbFree.exit..critedge5.loopexit_crit_edge ], [ %i.bcn, %.lr.ph1231 ] ; 2 uses
  %i.bcp = icmp sgt i32 %i.bco, 0
  br i1 %i.bcp, label %.lr.ph1234, label %.loopexit1199

.lr.ph1234:                                       ; preds = %.lr.ph1231.preheader, %.critedge5
  %i.bcq = phi i32 [ %i.bco, %.critedge5 ], [ %i.bbu, %.lr.ph1231.preheader ] ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bcq to i64  ; 2 uses
  %xtraiter1840 = and i64 %wide.trip.count, 1
  %i.bcr = icmp eq i32 %i.bcq, 1
  br i1 %i.bcr, label %.epil.preheader, label %.lr.ph1234.new

.lr.ph1234.new:                                   ; preds = %.lr.ph1234
  %unroll_iter1844 = and i64 %wide.trip.count, 2147483646
  br label %bb.ne

bb.ne:                                            ; preds = %bb.ni, %.lr.ph1234.new
  %indvars.iv1311 = phi i64 [ 0, %.lr.ph1234.new ], [ %indvars.iv.next1312.1, %bb.ni ] ; 3 uses
  %niter1845 = phi i64 [ 0, %.lr.ph1234.new ], [ %niter1845.next.1, %bb.ni ]
  %i.bcs = getelementptr inbounds nuw [24 x i8], ptr %i.bbv, i64 %indvars.iv1311 ; 2 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcs, i64 17
  %i.bcu = load i16, ptr %i.bct, align 1
  %i.bcv = and i16 %i.bcu, 64
  %i.bcw = icmp eq i16 %i.bcv, 0
  br i1 %i.bcw, label %bb.nf, label %bb.ng

bb.nf:                                            ; preds = %bb.ne
  %i.bcx = load ptr, ptr %i.bcs, align 8, !tbaa !1998
  store i8 122, ptr %i.bcx, align 8, !tbaa !1828
  br label %bb.ng

bb.ng:                                            ; preds = %bb.ne, %bb.nf
  %i.bcy = getelementptr inbounds nuw [24 x i8], ptr %i.bbv, i64 %indvars.iv1311 ; 2 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcy, i64 41
  %i.bda = load i16, ptr %i.bcz, align 1
  %i.bdb = and i16 %i.bda, 64
  %i.bdc = icmp eq i16 %i.bdb, 0
  br i1 %i.bdc, label %bb.nh, label %bb.ni

bb.nh:                                            ; preds = %bb.ng
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bcy, i64 24
  %i.bde = load ptr, ptr %i.bdd, align 8, !tbaa !1998
  store i8 122, ptr %i.bde, align 8, !tbaa !1828
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %bb.ng
  %indvars.iv.next1312.1 = add nuw nsw i64 %indvars.iv1311, 2 ; 2 uses
  %niter1845.next.1 = add i64 %niter1845, 2       ; 2 uses
  %niter1845.ncmp.1 = icmp eq i64 %niter1845.next.1, %unroll_iter1844
  br i1 %niter1845.ncmp.1, label %.loopexit1199.loopexit.unr-lcssa, label %bb.ne, !llvm.loop !4661

.loopexit1199.loopexit.unr-lcssa:                 ; preds = %bb.ni
  %lcmp.mod1842.not = icmp eq i64 %xtraiter1840, 0
  br i1 %lcmp.mod1842.not, label %.loopexit1199, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit1199.loopexit.unr-lcssa, %.lr.ph1234
  %indvars.iv1311.epil.init = phi i64 [ 0, %.lr.ph1234 ], [ %indvars.iv.next1312.1, %.loopexit1199.loopexit.unr-lcssa ]
  %lcmp.mod1843 = trunc i32 %i.bcq to i1
  call void @llvm.assume(i1 %lcmp.mod1843)
  %i.bdf = getelementptr inbounds nuw [24 x i8], ptr %i.bbv, i64 %indvars.iv1311.epil.init ; 2 uses
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bdf, i64 17
  %i.bdh = load i16, ptr %i.bdg, align 1
  %i.bdi = and i16 %i.bdh, 64
  %i.bdj = icmp eq i16 %i.bdi, 0
  br i1 %i.bdj, label %bb.nj, label %.loopexit1199

bb.nj:                                            ; preds = %.epil.preheader
  %i.bdk = load ptr, ptr %i.bdf, align 8, !tbaa !1998
  store i8 122, ptr %i.bdk, align 8, !tbaa !1828
  br label %.loopexit1199

.loopexit1199:                                    ; preds = %.loopexit1199.loopexit.unr-lcssa, %bb.nj, %.epil.preheader, %.critedge5, %bb.na, %sqlite3CopySortOrder.exit.thread.thread
  %i.bdl = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 8 uses
  %i.bdm = load i32, ptr %i.bdl, align 4, !tbaa !1881
  %i.bdn = add nsw i32 %i.bdm, -1                 ; 3 uses
  store i32 %i.bdn, ptr %i.bdl, align 4, !tbaa !1881
  %i.bdo = load i32, ptr %i.bz, align 4, !tbaa !813
  %i.bdp = and i32 %i.bdo, 16384
  %i.bdq = icmp eq i32 %i.bdp, 0
  br i1 %i.bdq, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %.loopexit1199
  %i.bdr = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 320, ptr %i.bdr, align 2, !tbaa !2126
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %.loopexit1199
  %i.bds = load ptr, ptr %i.nk, align 8, !tbaa !1848
  %.not985 = icmp eq ptr %i.bds, null
  br i1 %.not985, label %bb.nn, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  call fastcc void @computeLimitRegisters(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.bdn)
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nm, %bb.nl
  %i.bdt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bdu = load i32, ptr %i.bdt, align 8, !tbaa !2127
  %i.bdv = icmp eq i32 %i.bdu, 0
  %i.bdw = icmp sgt i32 %.sink, -1
  %or.cond8 = select i1 %i.bdv, i1 %i.bdw, i1 false
  br i1 %or.cond8, label %bb.no, label %bb.nq

bb.no:                                            ; preds = %bb.nn
  %i.bdx = load ptr, ptr %.0.i, align 8, !tbaa !679
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 103
  %i.bdz = load i8, ptr %i.bdy, align 1, !tbaa !918
  %.not.i.i1097 = icmp eq i8 %i.bdz, 0
  br i1 %.not.i.i1097, label %bb.np, label %sqlite3VdbeChangeOpcode.exit

bb.np:                                            ; preds = %bb.no
  %i.bea = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.beb = load ptr, ptr %i.bea, align 8, !tbaa !702
  %i.bec = zext nneg i32 %.sink to i64
  %i.bed = getelementptr inbounds nuw [32 x i8], ptr %i.beb, i64 %i.bec
  br label %sqlite3VdbeChangeOpcode.exit

sqlite3VdbeChangeOpcode.exit:                     ; preds = %bb.no, %bb.np
  %.0.i.i1098 = phi ptr [ %i.bed, %bb.np ], [ @sqlite3VdbeGetOp.dummy, %bb.no ]
  store i8 121, ptr %.0.i.i1098, align 8, !tbaa !929
  %i.bee = getelementptr inbounds nuw i8, ptr %17, i64 36 ; 2 uses
  %i.bef = load i8, ptr %i.bee, align 4, !tbaa !2142
  %i.beg = or i8 %i.bef, 1
  store i8 %i.beg, ptr %i.bee, align 4, !tbaa !2142
  br label %bb.nq

bb.nq:                                            ; preds = %sqlite3VdbeChangeOpcode.exit, %bb.nn
  %i.beh = load i32, ptr %i.bz, align 4, !tbaa !813
  %i.bei = and i32 %i.beh, 1
  %.not986 = icmp eq i32 %i.bei, 0
  br i1 %.not986, label %sqlite3VdbeChangeP5.exit, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.bej = load i32, ptr %i.no, align 8, !tbaa !1175 ; 3 uses
  %i.bek = add nsw i32 %i.bej, 1
  store i32 %i.bek, ptr %i.no, align 8, !tbaa !1175
  %i.bel = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 %i.bej, ptr %i.bel, align 4, !tbaa !2143
  %i.bem = load ptr, ptr %i.axm, align 8, !tbaa !1842
  %i.ben = call fastcc ptr @sqlite3KeyInfoFromExprList(ptr noundef nonnull %0, ptr noundef %i.bem, i32 noundef 0, i32 noundef 0)
  %i.beo = call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %.0.i, i32 noundef 120, i32 noundef %i.bej, i32 noundef 0, i32 noundef 0, ptr noundef %i.ben, i32 noundef -9)
  %i.bep = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.beo, ptr %i.bep, align 4, !tbaa !2144
  %i.beq = getelementptr inbounds nuw i8, ptr %.0.i, i64 144
  %i.ber = load i32, ptr %i.beq, align 8, !tbaa !703 ; 2 uses
  %i.bes = icmp sgt i32 %i.ber, 0
  br i1 %i.bes, label %bb.ns, label %sqlite3VdbeChangeP5.exit

bb.ns:                                            ; preds = %bb.nr
  %i.bet = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.beu = load ptr, ptr %i.bet, align 8, !tbaa !702
  %i.bev = zext nneg i32 %i.ber to i64
  %i.bew = getelementptr [32 x i8], ptr %i.beu, i64 %i.bev
  %i.bex = getelementptr i8, ptr %i.bew, i64 -30
  store i16 8, ptr %i.bex, align 2, !tbaa !930
  br label %sqlite3VdbeChangeP5.exit

sqlite3VdbeChangeP5.exit:                         ; preds = %bb.nq, %bb.ns, %bb.nr
  %.sink1463 = phi i8 [ 3, %bb.ns ], [ 3, %bb.nr ], [ 0, %bb.nq ] ; 4 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %16, i64 1 ; 2 uses
  store i8 %.sink1463, ptr %i.bey, align 1, !tbaa !2145
  %i.bez = and i32 %i.na, 8
  %i.bfa = icmp eq i32 %i.bez, 0
  %i.bfb = icmp eq ptr %.09041194, null           ; 5 uses
  %or.cond10 = select i1 %i.bfa, i1 %i.bfb, i1 false
  br i1 %or.cond10, label %bb.nt, label %bb.ol

bb.nt:                                            ; preds = %sqlite3VdbeChangeP5.exit
  %.not1025 = icmp eq i8 %i.bbk, 0                ; 2 uses
  %i.bfc = select i1 %.not1025, i32 0, i32 256
  %i.bfd = load i32, ptr %i.bz, align 4, !tbaa !813
  %i.bfe = and i32 %i.bfd, 16384
  %i.bff = or disjoint i32 %i.bfe, %i.bfc
  %i.bfg = trunc nuw nsw i32 %i.bff to i16
  %i.bfh = load ptr, ptr %i.cp, align 8, !tbaa !1856 ; 2 uses
  %.not1026 = icmp eq ptr %i.bfh, null            ; 2 uses
  br i1 %.not1026, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %.val1068 = load ptr, ptr %i.my, align 8, !tbaa !1843
  %i.bfi = getelementptr i8, ptr %.val1068, i64 72
  %.val1068.val = load ptr, ptr %i.bfi, align 8, !tbaa !733
  %.val1068.val.val = load ptr, ptr %.val1068.val, align 8, !tbaa !809
  %i.bfj = getelementptr i8, ptr %.val1068.val.val, i64 24
  %.val1068.val.val.val = load ptr, ptr %i.bfj, align 8, !tbaa !1842
  %.val1068.val.val.val.val = load i32, ptr %.val1068.val.val.val, align 8, !tbaa !570
  call fastcc void @sqlite3WindowCodeInit(ptr noundef nonnull %0, i32 %.val1068.val.val.val.val, ptr nonnull %i.bfh)
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nu, %bb.nt
  %i.bfk = load ptr, ptr %i.axm, align 8, !tbaa !1842
  %i.bfl = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 4 uses
  %i.bfm = load i16, ptr %i.bfl, align 2, !tbaa !2126
  %i.bfn = sext i16 %i.bfm to i32
  %i.bfo = call fastcc ptr @sqlite3WhereBegin(ptr noundef nonnull %0, ptr noundef nonnull %.3900, ptr noundef %i.axo, ptr noundef %i.bbj, ptr noundef %i.bfk, ptr noundef nonnull %1, i16 noundef zeroext %i.bfg, i32 noundef %i.bfn) ; 13 uses
end_hunk_2
