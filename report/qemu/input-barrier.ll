Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/input-barrier?download=true
inline.NumInlined: 64
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@input_barrier_event:bb.a
  %i.al = load i32, ptr %i.l, align 1
  %i.am = icmp ne i32 %i.al, 1313753411
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %thread-pre-split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %i.l, align 1
  %i.aq = icmp ne i32 %i.ap, 1414876995
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %thread-pre-split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load i32, ptr %i.l, align 1
  %i.au = icmp ne i32 %i.at, 1347175235
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load i32, ptr %i.l, align 1
  %i.ay = icmp ne i32 %i.ax, 1128616771
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = load i32, ptr %i.l, align 1
  %i.bc = icmp ne i32 %i.bb, 1347375683
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %thread-pre-split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.l, align 1
  %i.bg = icmp ne i32 %i.bf, 1262569795
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %thread-pre-split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = load i32, ptr %i.l, align 1
  %i.bk = icmp ne i32 %i.bj, 1447838019
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %thread-pre-split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = load i32, ptr %i.l, align 1
  %i.bo = icmp ne i32 %i.bn, 1313098564
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.av, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = load i32, ptr %i.l, align 1
  %i.bs = icmp ne i32 %i.br, 1347570500
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.az, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = load i32, ptr %i.l, align 1
  %i.bw = icmp ne i32 %i.bv, 1347767108
  %i.bx = zext i1 %i.bw to i32
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.av, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = load i32, ptr %i.l, align 1
  %i.ca = icmp ne i32 %i.bz, 1313099076
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.aq, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = load i32, ptr %i.l, align 1
  %i.ce = icmp ne i32 %i.cd, 1347767620
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.aq, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = load i32, ptr %i.l, align 1
  %i.ci = icmp ne i32 %i.ch, 1447906628
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.an, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = load i32, ptr %i.l, align 1
  %i.cm = icmp ne i32 %i.cl, 1297239364
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.an, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = load i32, ptr %i.l, align 1
  %i.cq = icmp ne i32 %i.cp, 1297567044
  %i.cr = zext i1 %i.cq to i32
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.as, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.l, align 1
  %i.cu = icmp ne i32 %i.ct, 1347175236
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %thread-pre-split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = load i32, ptr %i.l, align 1
  %i.cy = icmp ne i32 %i.cx, 1179535684
  %i.cz = zext i1 %i.cy to i32
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %thread-pre-split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.db = load i32, ptr %i.l, align 1
  %i.dc = icmp ne i32 %i.db, 1347375940
  %i.dd = zext i1 %i.dc to i32
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.ah, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = load i32, ptr %i.l, align 1
  %i.dg = icmp ne i32 %i.df, 1381254724
  %i.dh = zext i1 %i.dg to i32
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = load i32, ptr %i.l, align 1
  %i.dk = icmp ne i32 %i.dj, 1196573764
  %i.dl = zext i1 %i.dk to i32
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = load i32, ptr %i.l, align 1
  %i.do = icmp ne i32 %i.dn, 1179535697
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %thread-pre-split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = load i32, ptr %i.l, align 1
  %i.ds = icmp ne i32 %i.dr, 1447250245
  %i.dt = zext i1 %i.ds to i32
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.bd, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = load i32, ptr %i.l, align 1
  %i.dw = icmp ne i32 %i.dv, 1498628677
  %i.dx = zext i1 %i.dw to i32
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %thread-pre-split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dz = load i32, ptr %i.l, align 1
  %i.ea = icmp ne i32 %i.dz, 1263424837
  %i.eb = zext i1 %i.ea to i32
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %thread-pre-split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ed = load i32, ptr %i.l, align 1
  %i.ee = icmp ne i32 %i.ed, 1145127493
  %i.ef = zext i1 %i.ee to i32
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %thread-pre-split, label %.loopexit

bb.ag:                                            ; preds = %.thread287.i
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 143
  %i.ei = load i16, ptr %i.eh, align 2
  %rev.i.i = call noundef i16 @llvm.bswap.i16(i16 %i.ei)
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %rev.i.i, ptr %i.ej, align 4
  %i.ek = add i32 %i.q, -11
  %i.el = icmp ult i32 %i.ek, -2
  br i1 %i.el, label %thread-pre-split.thread39, label %.loopexit

thread-pre-split.thread39:                        ; preds = %bb.ag
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 145
  %i.en = load i16, ptr %i.em, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.eq = load i16, ptr %i.ep, align 4            ; 2 uses
  %i.er = icmp slt i16 %i.eq, 1
  br i1 %i.er, label %bb.bf, label %bb.be

bb.ah:                                            ; preds = %bb.y
  %i.es = add i32 %i.q, -4
  %i.et = icmp sgt i32 %i.es, 3
  br i1 %i.et, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.eu = add i32 %i.q, -8                        ; 2 uses
  %.not234299.i = icmp eq i32 %i.eu, 0
  br i1 %.not234299.i, label %thread-pre-split.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = call noundef i32 @llvm.bswap.i32(i32 %i.ew) ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, 65
  %i.ez = sdiv i32 %i.ex, 2
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fb = call i32 @llvm.smax.i32(i32 %i.ez, i32 0)
  %smax.i = select i1 %i.ey, i32 32, i32 %i.fb    ; 2 uses
  %wide.trip.count = zext nneg i32 %smax.i to i64
  %exitcond.not.i43 = icmp eq i32 %smax.i, 0
  br i1 %exitcond.not.i43, label %thread-pre-split.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 144
  br label %bb.ak

bb.aj:                                            ; preds = %bb.am
  %i.fd = getelementptr inbounds nuw i8, ptr %.3190301.i45, i64 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i44, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count
  br i1 %exitcond.not.i, label %thread-pre-split.thread, label %bb.ak, !llvm.loop !8

bb.ak:                                            ; preds = %.lr.ph, %bb.aj
  %i.fe = phi i32 [ %i.eu, %.lr.ph ], [ %i.fn, %bb.aj ] ; 3 uses
  %.3190301.i45 = phi ptr [ %i.fc, %.lr.ph ], [ %i.fd, %bb.aj ] ; 3 uses
  %indvars.iv.i44 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.i, %bb.aj ] ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, 3
  br i1 %i.ff, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.fg = load i32, ptr %.3190301.i45, align 4
  %i.fh = getelementptr inbounds nuw [12 x i8], ptr %i.fa, i64 %indvars.iv.i44 ; 3 uses
  store i32 %i.fg, ptr %i.fh, align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store i8 0, ptr %i.fi, align 4
  %4 = icmp samesign ugt i32 %i.fe, 7
  br i1 %4, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.fj = getelementptr inbounds nuw i8, ptr %.3190301.i45, i64 4
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = call noundef i32 @llvm.bswap.i32(i32 %i.fk)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i32 %i.fl, ptr %i.fm, align 4
  %i.fn = add nsw i32 %i.fe, -8                   ; 2 uses
  %.not234.i = icmp eq i32 %i.fn, 0
  br i1 %.not234.i, label %.thread-pre-split.thread.loopexit_crit_edge46, label %bb.aj, !llvm.loop !8

bb.an:                                            ; preds = %bb.u, %bb.t
  %.0201298.lcssa.wide.ph316.i = phi i32 [ 15, %bb.u ], [ 14, %bb.t ]
  %i.fo = add i32 %i.q, -4
  %i.fp = icmp sgt i32 %i.fo, 1
  br i1 %i.fp, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.fr = load i16, ptr %i.fq, align 4
  %rev.i274.i = call noundef i16 @llvm.bswap.i16(i16 %i.fr) ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %rev.i274.i, ptr %i.fs, align 4
  %i.ft = and i32 %i.q, -2
  %.not334.i = icmp eq i32 %i.ft, 6
  br i1 %.not334.i, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fu = trunc i16 %rev.i274.i to i8
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 142
  %i.fw = load i16, ptr %i.fv, align 2
  %rev.i275.i = call noundef i16 @llvm.bswap.i16(i16 %i.fw)
  br label %thread-pre-split

bb.aq:                                            ; preds = %bb.s, %bb.r
  %.0201298.lcssa.wide.ph320.i = phi i32 [ 12, %bb.r ], [ 13, %bb.s ]
  %i.fx = add i32 %i.q, -4
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.ga = load i8, ptr %i.fz, align 4             ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %i.ga, ptr %i.gb, align 4
  br label %thread-pre-split

bb.as:                                            ; preds = %bb.v
  %i.gc = add i32 %i.q, -4
  %i.gd = icmp sgt i32 %i.gc, 1
  br i1 %i.gd, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.gf = load i16, ptr %i.ge, align 4
  %rev.i276.i = call noundef i16 @llvm.bswap.i16(i16 %i.gf)
  switch i32 %i.q, label %bb.au [
    i32 6, label %thread-pre-split.thread35
    i32 7, label %.loopexit
  ]

bb.au:                                            ; preds = %bb.at
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 142
  %i.gh = load i16, ptr %i.gg, align 2
  %rev.i277.i = call noundef i16 @llvm.bswap.i16(i16 %i.gh)
  br label %thread-pre-split.thread35

bb.av:                                            ; preds = %bb.q, %bb.o
  %.0201298.lcssa.wide.ph324.i = phi i32 [ 11, %bb.q ], [ 9, %bb.o ] ; 2 uses
  %i.gi = add i32 %i.q, -4
  %i.gj = icmp sgt i32 %i.gi, 1
  br i1 %i.gj, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.gl = load i16, ptr %i.gk, align 4
  %rev.i278.i = call noundef i16 @llvm.bswap.i16(i16 %i.gl) ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %rev.i278.i, ptr %i.gm, align 4
  %i.gn = and i32 %i.q, -2
  %.not337.i = icmp eq i32 %i.gn, 6
  %i.go = trunc i16 %rev.i278.i to i8             ; 2 uses
  br i1 %.not337.i, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 142
  %i.gq = load i16, ptr %i.gp, align 2
  %rev.i279.i = call noundef i16 @llvm.bswap.i16(i16 %i.gq) ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i16 0, ptr %i.gr, align 4
  switch i32 %i.q, label %bb.ay [
    i32 8, label %thread-pre-split
    i32 9, label %.loopexit
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.gt = load i16, ptr %i.gs, align 8
  %rev.i280.i = call noundef i16 @llvm.bswap.i16(i16 %i.gt)
  store i16 %rev.i280.i, ptr %i.gr, align 4
  br label %thread-pre-split

bb.az:                                            ; preds = %bb.p
  %i.gu = add i32 %i.q, -4
  %i.gv = icmp sgt i32 %i.gu, 1
  br i1 %i.gv, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.gx = load i16, ptr %i.gw, align 4
  %rev.i281.i = call noundef i16 @llvm.bswap.i16(i16 %i.gx)
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %rev.i281.i, ptr %i.gy, align 4
  %i.gz = and i32 %i.q, -2
  switch i32 %i.gz, label %bb.bb [
    i32 6, label %.loopexit
    i32 8, label %.loopexit
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.hb = load i16, ptr %i.ha, align 8
  %rev.i283.i = call noundef i16 @llvm.bswap.i16(i16 %i.hb)
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 %rev.i283.i, ptr %i.hc, align 4
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  store i16 0, ptr %i.hd, align 2
  switch i32 %i.q, label %bb.bc [
    i32 10, label %thread-pre-split.thread37
    i32 11, label %.loopexit
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 146
  %i.hf = load i16, ptr %i.he, align 2
  %rev.i284.i = call noundef i16 @llvm.bswap.i16(i16 %i.hf)
  store i16 %rev.i284.i, ptr %i.hd, align 2
  br label %thread-pre-split.thread37

bb.bd:                                            ; preds = %bb.ac
  %i.hg = add i32 %i.q, 2147483644
  %or.cond41 = icmp ult i32 %i.hg, -2147483644
  br i1 %or.cond41, label %.loopexit, label %thread-pre-split.thread38

thread-pre-split.thread38:                        ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 140
  br label %bb.ce

.loopexit:                                        ; preds = %bb.ak, %bb.al, %bb.ba, %bb.ba, %bb.at, %bb.j, %bb.k, %bb.z, %bb.aa, %bb.c, %bb.a, %bb.b, %bb.bd, %bb.bb, %bb.az, %bb.aw, %bb.ax, %bb.av, %bb.as, %bb.an, %bb.ao, %bb.aq, %bb.ag, %bb.ah, %.thread287.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 0, ptr %i.hi, align 8
  br label %writecmd.exit

.thread-pre-split.thread.loopexit_crit_edge46:    ; preds = %bb.am
  br label %thread-pre-split.thread, !llvm.loop !8

thread-pre-split.thread:                          ; preds = %bb.aj, %.lr.ph.i, %.thread-pre-split.thread.loopexit_crit_edge46, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %writecmd.exit

thread-pre-split.thread35:                        ; preds = %bb.at, %bb.au
  %.ph = phi i16 [ %rev.i277.i, %bb.au ], [ %rev.i276.i, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.bo

thread-pre-split.thread37:                        ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.preheader.i

thread-pre-split:                                 ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.l, %bb.m, %bb.n, %bb.w, %bb.x, %bb.ab, %bb.ad, %bb.ae, %bb.af, %bb.ay, %bb.ax, %bb.ar, %bb.ap
  %i.hj = phi i16 [ %rev.i275.i, %bb.ap ], [ %rev.i279.i, %bb.ay ], [ 0, %bb.ar ], [ %rev.i279.i, %bb.ax ], [ 0, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ab ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.hk = phi i8 [ %i.fu, %bb.ap ], [ %i.go, %bb.ay ], [ %i.ga, %bb.ar ], [ %i.go, %bb.ax ], [ 0, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ab ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ] ; 4 uses
  %i.hl = phi i32 [ %.0201298.lcssa.wide.ph316.i, %bb.ap ], [ %.0201298.lcssa.wide.ph324.i, %bb.ay ], [ %.0201298.lcssa.wide.ph320.i, %bb.ar ], [ %.0201298.lcssa.wide.ph324.i, %bb.ax ], [ 26, %bb.af ], [ 25, %bb.ae ], [ 24, %bb.ad ], [ 22, %bb.ab ], [ 18, %bb.x ], [ 17, %bb.w ], [ 8, %bb.n ], [ 7, %bb.m ], [ 6, %bb.l ], [ 3, %bb.i ], [ 2, %bb.h ], [ 1, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 140 ; 3 uses
  switch i32 %i.hl, label %bb.ce [
    i32 11, label %bb.bz
    i32 1, label %bb.bh
    i32 22, label %bb.bi
    i32 7, label %writecmd.exit
    i32 6, label %writecmd.exit
    i32 19, label %writecmd.exit
    i32 2, label %writecmd.exit
    i32 17, label %writecmd.exit
    i32 8, label %bb.bj
    i32 3, label %writecmd.exit
    i32 14, label %bb.bk
    i32 15, label %bb.bl
    i32 12, label %bb.bm
    i32 13, label %bb.bn
    i32 16, label %bb.bo
    i32 9, label %bb.bp
    i32 10, label %.preheader.i
  ]

.preheader.i:                                     ; preds = %thread-pre-split.thread37, %thread-pre-split
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ho = load i16, ptr %i.hn, align 4            ; 2 uses
end_hunk_0
