inline.NumInlined: 24
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@cuddSifting:bb.a
bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.p, align 8, !tbaa !80
  br label %ddSiftingAux.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !41
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [56 x i8], ptr %i.n, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %i.v, ptr %i.w, align 4, !tbaa !41
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.y, ptr %i.x, align 4, !tbaa !41
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !41
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [56 x i8], ptr %i.n, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !87
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !41
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.ah = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !41
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !88

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod148 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod148)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.epil.init
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [56 x i8], ptr %i.n, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !87
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !41
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.epil.init
  %i.aq = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !41
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  tail call void @qsort(ptr noundef nonnull %i.h, i64 noundef %i.c, i64 noundef 4, ptr noundef nonnull @ddUniqueCompare) #13
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !89
  %.83 = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.as)
  %i.at = icmp sgt i32 %.83, 0
  br i1 %i.at, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 8 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph86, %ddSiftingAux.exit.thread
  %indvars.iv101 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next102, %ddSiftingAux.exit.thread ] ; 2 uses
  %i.ba = load i32, ptr @ddTotalNumberSwapping, align 4, !tbaa !41
  %i.bb = load i32, ptr %i.au, align 4, !tbaa !90
  %.not = icmp slt i32 %i.ba, %i.bb
  br i1 %.not, label %bb.f, label %._crit_edge87

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !59
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv101
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !41
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !41 ; 11 uses
  %i.bi = icmp slt i32 %i.bh, %1
  %i.bj = icmp sgt i32 %i.bh, %2
  %or.cond = or i1 %i.bi, %i.bj
  br i1 %or.cond, label %ddSiftingAux.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !76
  %i.bl = sext i32 %i.bh to i64
  %i.bm = getelementptr inbounds [56 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !91
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %ddSiftingAux.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = load i32, ptr %i.ax, align 4, !tbaa !8
  %i.br = load i32, ptr %i.ay, align 8, !tbaa !35
  %i.bs = sub i32 %i.bq, %i.br                    ; 4 uses
  %i.bt = icmp eq i32 %i.bh, %1
  br i1 %i.bt, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bu = tail call fastcc ptr @ddSiftingDown(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) ; 6 uses
  %magicptr173.i = ptrtoint ptr %i.bu to i64
  switch i64 %magicptr173.i, label %.lr.ph.i.i [
    i64 -1, label %ddSiftingBackward.exit.i
    i64 0, label %ddSiftingAux.exit.thread
  ]

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %.01523.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %i.bu, %bb.i ] ; 2 uses
  %.01622.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.bs, %bb.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.01523.i.i, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !92
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.bw, i32 %.01622.i.i) ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01523.i.i, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !95 ; 2 uses
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %.lr.ph26.i.i, label %.lr.ph.i.i, !llvm.loop !96

.lr.ph26.i.i:                                     ; preds = %.lr.ph.i.i, %bb.k
  %.125.i.i = phi ptr [ %i.ch, %bb.k ], [ %i.bu, %.lr.ph.i.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.125.i.i, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !92
  %i.cb = icmp eq i32 %i.ca, %spec.select.i.i
  br i1 %i.cb, label %ddSiftingBackward.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph26.i.i
  %i.cc = load i32, ptr %.125.i.i, align 8, !tbaa !97
  %i.cd = getelementptr inbounds nuw i8, ptr %.125.i.i, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !98
  %i.cf = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.cc, i32 noundef %i.ce)
  %.not20.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not20.i.i, label %ddSiftingBackward.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %.125.i.i, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !95 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.ch, null
  br i1 %.not19.i.i, label %ddSiftingBackward.exit.thread.i, label %.lr.ph26.i.i, !llvm.loop !99

bb.l:                                             ; preds = %bb.h
  %i.ci = icmp eq i32 %i.bh, %2
  br i1 %i.ci, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.cj = tail call fastcc ptr @ddSiftingUp(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %1) ; 6 uses
  %magicptr174.i = ptrtoint ptr %i.cj to i64
  switch i64 %magicptr174.i, label %.lr.ph.i127.i [
    i64 -1, label %ddSiftingBackward.exit.i
    i64 0, label %ddSiftingAux.exit.thread
  ]

.lr.ph.i127.i:                                    ; preds = %bb.m, %.lr.ph.i127.i
  %.01523.i128.i = phi ptr [ %i.cn, %.lr.ph.i127.i ], [ %i.cj, %bb.m ] ; 2 uses
  %.01622.i129.i = phi i32 [ %spec.select.i130.i, %.lr.ph.i127.i ], [ %i.bs, %bb.m ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.01523.i128.i, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !92
  %spec.select.i130.i = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %.01622.i129.i) ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.01523.i128.i, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !95 ; 2 uses
  %.not.i131.i = icmp eq ptr %i.cn, null
  br i1 %.not.i131.i, label %.lr.ph26.i133.i, label %.lr.ph.i127.i, !llvm.loop !96

.lr.ph26.i133.i:                                  ; preds = %.lr.ph.i127.i, %bb.o
  %.125.i134.i = phi ptr [ %i.cw, %bb.o ], [ %i.cj, %.lr.ph.i127.i ] ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.125.i134.i, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !92
  %i.cq = icmp eq i32 %i.cp, %spec.select.i130.i
  br i1 %i.cq, label %.preheader.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph26.i133.i
  %i.cr = load i32, ptr %.125.i134.i, align 8, !tbaa !97
  %i.cs = getelementptr inbounds nuw i8, ptr %.125.i134.i, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !98
  %i.cu = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.cr, i32 noundef %i.ct)
  %.not20.i135.i = icmp eq i32 %i.cu, 0
  br i1 %.not20.i135.i, label %ddSiftingBackward.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = getelementptr inbounds nuw i8, ptr %.125.i134.i, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !95 ; 2 uses
  %.not19.i136.i = icmp eq ptr %i.cw, null
  br i1 %.not19.i136.i, label %.preheader.i, label %.lr.ph26.i133.i, !llvm.loop !99

bb.p:                                             ; preds = %bb.l
  %i.cx = sub nsw i32 %i.bh, %1
  %i.cy = sub nsw i32 %2, %i.bh
  %i.cz = icmp sgt i32 %i.cx, %i.cy
  br i1 %i.cz, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.da = tail call fastcc ptr @ddSiftingDown(ptr noundef nonnull %0, i32 noundef %i.bh, i32 noundef %2) ; 8 uses
  %magicptr.i = ptrtoint ptr %i.da to i64
  switch i64 %magicptr.i, label %bb.r [
    i64 -1, label %ddSiftingBackward.exit.i
    i64 0, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !98
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.097.i = phi i32 [ %i.dc, %bb.r ], [ %i.bh, %bb.q ]
  %i.dd = tail call fastcc ptr @ddSiftingUp(ptr noundef nonnull %0, i32 noundef %.097.i, i32 noundef %1) ; 6 uses
  %magicptr175.i = ptrtoint ptr %i.dd to i64
  switch i64 %magicptr175.i, label %.lr.ph.i140.i [
    i64 -1, label %ddSiftingBackward.exit.i
    i64 0, label %ddSiftingBackward.exit.thread.i
  ]

.lr.ph.i140.i:                                    ; preds = %bb.s, %.lr.ph.i140.i
  %.01523.i141.i = phi ptr [ %i.dh, %.lr.ph.i140.i ], [ %i.dd, %bb.s ] ; 2 uses
  %.01622.i142.i = phi i32 [ %spec.select.i143.i, %.lr.ph.i140.i ], [ %i.bs, %bb.s ]
  %i.de = getelementptr inbounds nuw i8, ptr %.01523.i141.i, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !92
  %spec.select.i143.i = tail call i32 @llvm.smin.i32(i32 %i.df, i32 %.01622.i142.i) ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.01523.i141.i, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !95 ; 2 uses
  %.not.i144.i = icmp eq ptr %i.dh, null
  br i1 %.not.i144.i, label %.lr.ph26.i146.i, label %.lr.ph.i140.i, !llvm.loop !96

.lr.ph26.i146.i:                                  ; preds = %.lr.ph.i140.i, %bb.u
  %.125.i147.i = phi ptr [ %i.dq, %bb.u ], [ %i.dd, %.lr.ph.i140.i ] ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.125.i147.i, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !92
  %i.dk = icmp eq i32 %i.dj, %spec.select.i143.i
  br i1 %i.dk, label %ddSiftingBackward.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph26.i146.i
  %i.dl = load i32, ptr %.125.i147.i, align 8, !tbaa !97
  %i.dm = getelementptr inbounds nuw i8, ptr %.125.i147.i, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !98
  %i.do = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.dl, i32 noundef %i.dn)
  %.not20.i148.i = icmp eq i32 %i.do, 0
  br i1 %.not20.i148.i, label %ddSiftingBackward.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %.125.i147.i, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !95 ; 2 uses
  %.not19.i149.i = icmp eq ptr %i.dq, null
  br i1 %.not19.i149.i, label %ddSiftingBackward.exit.thread.i, label %.lr.ph26.i146.i, !llvm.loop !99

bb.v:                                             ; preds = %bb.p
  %i.dr = tail call fastcc ptr @ddSiftingUp(ptr noundef nonnull %0, i32 noundef %i.bh, i32 noundef %1) ; 8 uses
  %magicptr122.i = ptrtoint ptr %i.dr to i64
  switch i64 %magicptr122.i, label %bb.w [
    i64 -1, label %ddSiftingBackward.exit.i
    i64 0, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !97
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.198.i = phi i32 [ %i.ds, %bb.w ], [ %i.bh, %bb.v ]
  %i.dt = tail call fastcc ptr @ddSiftingDown(ptr noundef nonnull %0, i32 noundef %.198.i, i32 noundef %2) ; 6 uses
  %magicptr176.i = ptrtoint ptr %i.dt to i64
  switch i64 %magicptr176.i, label %.lr.ph.i153.i [
    i64 -1, label %ddSiftingBackward.exit.i
    i64 0, label %.preheader.i
  ]

.lr.ph.i153.i:                                    ; preds = %bb.x, %.lr.ph.i153.i
  %.01523.i154.i = phi ptr [ %i.dx, %.lr.ph.i153.i ], [ %i.dt, %bb.x ] ; 2 uses
  %.01622.i155.i = phi i32 [ %spec.select.i156.i, %.lr.ph.i153.i ], [ %i.bs, %bb.x ]
  %i.du = getelementptr inbounds nuw i8, ptr %.01523.i154.i, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !92
  %spec.select.i156.i = tail call i32 @llvm.smin.i32(i32 %i.dv, i32 %.01622.i155.i) ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.01523.i154.i, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !95 ; 2 uses
  %.not.i157.i = icmp eq ptr %i.dx, null
  br i1 %.not.i157.i, label %.lr.ph26.i159.i, label %.lr.ph.i153.i, !llvm.loop !96

.lr.ph26.i159.i:                                  ; preds = %.lr.ph.i153.i, %bb.z
  %.125.i160.i = phi ptr [ %i.eg, %bb.z ], [ %i.dt, %.lr.ph.i153.i ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.125.i160.i, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !92
  %i.ea = icmp eq i32 %i.dz, %spec.select.i156.i
  br i1 %i.ea, label %ddSiftingBackward.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph26.i159.i
  %i.eb = load i32, ptr %.125.i160.i, align 8, !tbaa !97
  %i.ec = getelementptr inbounds nuw i8, ptr %.125.i160.i, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !98
  %i.ee = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.eb, i32 noundef %i.ed)
  %.not20.i161.i = icmp eq i32 %i.ee, 0
  br i1 %.not20.i161.i, label %ddSiftingBackward.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ef = getelementptr inbounds nuw i8, ptr %.125.i160.i, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !95 ; 2 uses
  %.not19.i162.i = icmp eq ptr %i.eg, null
  br i1 %.not19.i162.i, label %ddSiftingBackward.exit.thread.i, label %.lr.ph26.i159.i, !llvm.loop !99

ddSiftingBackward.exit.thread.i:                  ; preds = %bb.z, %.lr.ph26.i159.i, %bb.u, %.lr.ph26.i146.i, %bb.k, %.lr.ph26.i.i, %bb.s
  %.093.i = phi ptr [ %i.dd, %bb.u ], [ null, %bb.s ], [ null, %bb.k ], [ null, %.lr.ph26.i.i ], [ %i.dd, %.lr.ph26.i146.i ], [ %i.dr, %.lr.ph26.i159.i ], [ %i.dr, %bb.z ] ; 2 uses
  %.092.i = phi ptr [ %i.da, %bb.u ], [ %i.da, %bb.s ], [ %i.bu, %bb.k ], [ %i.bu, %.lr.ph26.i.i ], [ %i.da, %.lr.ph26.i146.i ], [ %i.dt, %.lr.ph26.i159.i ], [ %i.dt, %bb.z ] ; 2 uses
  %.not120188.i = icmp eq ptr %.092.i, null
  br i1 %.not120188.i, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ddSiftingBackward.exit.thread.i
  %.promoted190.i = load ptr, ptr %i.az, align 8, !tbaa !70
  br label %bb.aa

..preheader_crit_edge.i:                          ; preds = %bb.aa
  store ptr %.1189.i, ptr %i.az, align 8, !tbaa !70
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.o, %.lr.ph26.i133.i, %..preheader_crit_edge.i, %ddSiftingBackward.exit.thread.i, %bb.x
  %.093211.i = phi ptr [ %.093.i, %ddSiftingBackward.exit.thread.i ], [ %.093.i, %..preheader_crit_edge.i ], [ %i.dr, %bb.x ], [ %i.cj, %.lr.ph26.i133.i ], [ %i.cj, %bb.o ] ; 2 uses
  %.not121191.i = icmp eq ptr %.093211.i, null
  br i1 %.not121191.i, label %ddSiftingAux.exit.thread, label %.lr.ph193.i

.lr.ph193.i:                                      ; preds = %.preheader.i
  %.promoted194.i = load ptr, ptr %i.az, align 8, !tbaa !70
  br label %bb.ab

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i
  %i.eh = phi ptr [ %.promoted190.i, %.lr.ph.i ], [ %.1189.i, %bb.aa ]
  %.1189.i = phi ptr [ %.092.i, %.lr.ph.i ], [ %i.ej, %bb.aa ] ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.1189.i, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !95 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.1189.i, i64 4
  store i32 0, ptr %i.ek, align 4, !tbaa !39
  %i.el = getelementptr inbounds nuw i8, ptr %.1189.i, i64 8
  store ptr %i.eh, ptr %i.el, align 8, !tbaa !83
  %.not120.i = icmp eq ptr %i.ej, null
  br i1 %.not120.i, label %..preheader_crit_edge.i, label %bb.aa, !llvm.loop !100

bb.ab:                                            ; preds = %bb.ab, %.lr.ph193.i
  %i.em = phi ptr [ %.promoted194.i, %.lr.ph193.i ], [ %.194192.i, %bb.ab ]
  %.194192.i = phi ptr [ %.093211.i, %.lr.ph193.i ], [ %i.eo, %bb.ab ] ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.194192.i, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !95 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.194192.i, i64 4
  store i32 0, ptr %i.ep, align 4, !tbaa !39
  %i.eq = getelementptr inbounds nuw i8, ptr %.194192.i, i64 8
  store ptr %i.em, ptr %i.eq, align 8, !tbaa !83
  %.not121.i = icmp eq ptr %i.eo, null
  br i1 %.not121.i, label %..loopexit_crit_edge.i, label %bb.ab, !llvm.loop !101

ddSiftingBackward.exit.i:                         ; preds = %bb.x, %bb.v, %bb.s, %bb.q, %bb.m, %bb.i, %bb.y, %bb.t, %bb.n, %bb.j
  %.295.i = phi ptr [ %i.dr, %bb.y ], [ null, %bb.j ], [ %i.dd, %bb.t ], [ %i.cj, %bb.n ], [ %i.dr, %bb.x ], [ %i.dr, %bb.v ], [ inttoptr (i64 -1 to ptr), %bb.s ], [ null, %bb.q ], [ inttoptr (i64 -1 to ptr), %bb.m ], [ null, %bb.i ] ; 2 uses
  %.2.i = phi ptr [ %i.dt, %bb.y ], [ %i.bu, %bb.j ], [ %i.da, %bb.t ], [ null, %bb.n ], [ inttoptr (i64 -1 to ptr), %bb.x ], [ null, %bb.v ], [ %i.da, %bb.s ], [ %i.da, %bb.q ], [ null, %bb.m ], [ inttoptr (i64 -1 to ptr), %bb.i ] ; 2 uses
  %magicptr123.i = ptrtoint ptr %.2.i to i64
  %magicptr123.off.i = add i64 %magicptr123.i, -1
  %switch.i = icmp ult i64 %magicptr123.off.i, -2
  br i1 %switch.i, label %.preheader179.i, label %bb.ad

.preheader179.i:                                  ; preds = %ddSiftingBackward.exit.i
  %.promoted.i = load ptr, ptr %i.az, align 8, !tbaa !70
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.preheader179.i
  %i.er = phi ptr [ %.3.i, %bb.ac ], [ %.promoted.i, %.preheader179.i ]
  %.3.i = phi ptr [ %i.et, %bb.ac ], [ %.2.i, %.preheader179.i ] ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.3.i, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !95 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.3.i, i64 4
  store i32 0, ptr %i.eu, align 4, !tbaa !39
  %i.ev = getelementptr inbounds nuw i8, ptr %.3.i, i64 8
  store ptr %i.er, ptr %i.ev, align 8, !tbaa !83
  %.old1.not.i = icmp eq ptr %i.et, null
  br i1 %.old1.not.i, label %.loopexit180.i, label %bb.ac

.loopexit180.i:                                   ; preds = %bb.ac
  store ptr %.3.i, ptr %i.az, align 8, !tbaa !70
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit180.i, %ddSiftingBackward.exit.i
  %magicptr124.i = ptrtoint ptr %.295.i to i64
  %magicptr124.off.i = add i64 %magicptr124.i, -1
  %switch125.i = icmp ult i64 %magicptr124.off.i, -2
  br i1 %switch125.i, label %.preheader177.i, label %ddSiftingAux.exit

.preheader177.i:                                  ; preds = %bb.ad
  %.promoted187.i = load ptr, ptr %i.az, align 8, !tbaa !70
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.preheader177.i
  %i.ew = phi ptr [ %.396.i, %bb.ae ], [ %.promoted187.i, %.preheader177.i ]
  %.396.i = phi ptr [ %i.ey, %bb.ae ], [ %.295.i, %.preheader177.i ] ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.396.i, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !95 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.396.i, i64 4
  store i32 0, ptr %i.ez, align 4, !tbaa !39
  %i.fa = getelementptr inbounds nuw i8, ptr %.396.i, i64 8
  store ptr %i.ew, ptr %i.fa, align 8, !tbaa !83
  %.old3.not.i = icmp eq ptr %i.ey, null
  br i1 %.old3.not.i, label %.loopexit178.i, label %bb.ae

..loopexit_crit_edge.i:                           ; preds = %bb.ab
  store ptr %.194192.i, ptr %i.az, align 8, !tbaa !70
  br label %ddSiftingAux.exit.thread

.loopexit178.i:                                   ; preds = %bb.ae
  store ptr %.396.i, ptr %i.az, align 8, !tbaa !70
  br label %ddSiftingAux.exit

ddSiftingAux.exit.thread:                         ; preds = %bb.i, %bb.m, %.preheader.i, %..loopexit_crit_edge.i, %bb.f, %bb.g
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.fb = load i32, ptr %i.ar, align 8, !tbaa !89
  %. = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.fb)
  %i.fc = sext i32 %. to i64
  %i.fd = icmp slt i64 %indvars.iv.next102, %i.fc
  br i1 %i.fd, label %bb.e, label %._crit_edge87, !llvm.loop !102

._crit_edge87:                                    ; preds = %bb.e, %ddSiftingAux.exit.thread, %._crit_edge
  tail call void @free(ptr noundef %i.h) #13
  %i.fe = load ptr, ptr @entry, align 8, !tbaa !86 ; 2 uses
  %.not60 = icmp eq ptr %i.fe, null
  br i1 %.not60, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %._crit_edge87
  tail call void @free(ptr noundef nonnull %i.fe) #13
  store ptr null, ptr @entry, align 8, !tbaa !86
  br label %bb.aj

ddSiftingAux.exit:                                ; preds = %.loopexit178.i, %bb.ad, %bb.c
  %.pr = load ptr, ptr @entry, align 8, !tbaa !86 ; 2 uses
  %.not61 = icmp eq ptr %.pr, null
  br i1 %.not61, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %ddSiftingAux.exit
  tail call void @free(ptr noundef nonnull %.pr) #13
  store ptr null, ptr @entry, align 8, !tbaa !86
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %ddSiftingAux.exit
  br i1 %i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @free(ptr noundef nonnull %i.h) #13
  br label %bb.aj

bb.aj:                                            ; preds = %.thread, %bb.ah, %bb.ai, %bb.af, %._crit_edge87
  %.0 = phi i32 [ 1, %bb.af ], [ 1, %._crit_edge87 ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ 0, %.thread ]
  ret i32 %.0
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @ddUniqueCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load ptr, ptr @entry, align 8, !tbaa !86 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !41     ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !41   ; 2 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !41   ; 2 uses
  %i.j = icmp eq i32 %i.e, %i.i
  %i.k = sub nsw i32 %i.f, %i.b
  %i.l = sub nsw i32 %i.e, %i.i
  %.0 = select i1 %i.j, i32 %i.k, i32 %i.l
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cuddSwapping(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i32 %2, %1                       ; 4 uses
  %i.b = add i32 %i.a, 1                          ; 4 uses
  %.not109 = icmp slt i32 %i.a, 0
  br i1 %.not109, label %.loopexit, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.d = icmp eq i32 %3, 3
  %.not81104 = icmp sgt i32 %1, %2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = xor i32 %1, -1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 5 uses
  %i.k = sext i32 %1 to i64                       ; 2 uses
  %i.l = icmp eq i32 %2, %1
  %unroll_iter = and i32 %i.b, -2
  %i.m = and i32 %i.a, 1
  %lcmp.mod.not.not = icmp eq i32 %i.m, 0
  %lcmp.mod171 = trunc i32 %i.b to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph113, %bb.aj
  %.062111 = phi i32 [ -1, %.lr.ph113 ], [ %.3, %bb.aj ] ; 4 uses
  %.065110 = phi i32 [ 0, %.lr.ph113 ], [ %i.dz, %bb.aj ] ; 2 uses
  %i.n = load i32, ptr @ddTotalNumberSwapping, align 4, !tbaa !41
  %i.o = load i32, ptr %i.c, align 4, !tbaa !90
  %.not80 = icmp slt i32 %i.n, %i.o
  br i1 %.not80, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %.preheader94, label %bb.f

.preheader94:                                     ; preds = %bb.c
  br i1 %.not81104, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader94
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !76   ; 3 uses
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %i.k, %.lr.ph ] ; 4 uses
  %.1107 = phi i32 [ %spec.select85.1, %.lr.ph.new ], [ %.062111, %.lr.ph ]
  %.070105 = phi i32 [ %spec.select.1, %.lr.ph.new ], [ -1, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.q = getelementptr inbounds [56 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !87   ; 2 uses
  %i.t = icmp sgt i32 %i.s, %.070105
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.s, i32 %.070105) ; 2 uses
  %i.u = trunc nsw i64 %indvars.iv to i32
  %spec.select85 = select i1 %i.t, i32 %i.u, i32 %.1107
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.v = getelementptr inbounds [56 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !87   ; 2 uses
  %i.y = icmp sgt i32 %i.x, %spec.select
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %i.x, i32 %spec.select) ; 2 uses
  %i.z = trunc nsw i64 %indvars.iv.next to i32
  %spec.select85.1 = select i1 %i.y, i32 %i.z, i32 %spec.select85 ; 3 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.new, !llvm.loop !103

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.1107.epil.init = phi i32 [ %.062111, %.lr.ph ], [ %spec.select85.1, %._crit_edge.loopexit.unr-lcssa ]
  %.070105.epil.init = phi i32 [ -1, %.lr.ph ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %i.aa = getelementptr inbounds [56 x i8], ptr %i.p, i64 %indvars.iv.epil.init
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !87
  %i.ad = icmp sgt i32 %i.ac, %.070105.epil.init
  %i.ae = trunc nsw i64 %indvars.iv.epil.init to i32
end_hunk_0
