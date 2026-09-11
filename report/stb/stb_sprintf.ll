Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_sprintf?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@stbsp_vsprintfcb:bb.a
bb.n:                                             ; preds = %.preheader2423
  br label %.backedge

bb.o:                                             ; preds = %.preheader2423
  %i.cf = or i32 %.0778, 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.2868.pn, i64 2 ; 2 uses
  %.pr1284 = load i8, ptr %i.cg, align 1, !tbaa !9
  br label %.loopexit1488

.loopexit1488:                                    ; preds = %.preheader2423, %bb.o
  %i.ch = phi i8 [ %.pr1284, %bb.o ], [ %i.cb, %.preheader2423 ] ; 4 uses
  %.7873 = phi ptr [ %i.cg, %bb.o ], [ %.6872, %.preheader2423 ] ; 3 uses
  %.2780 = phi i32 [ %i.cf, %bb.o ], [ %.0778, %.preheader2423 ] ; 9 uses
  %i.ci = icmp eq i8 %i.ch, 42
  br i1 %i.ci, label %bb.p, label %.preheader1487

.preheader1487:                                   ; preds = %.loopexit1488
  %i.cj = add i8 %i.ch, -48
  %or.cond11841558 = icmp ult i8 %i.cj, 10
  br i1 %or.cond11841558, label %.lr.ph1561, label %.critedge

bb.p:                                             ; preds = %.loopexit1488
  %i.ck = load i32, ptr %4, align 8               ; 3 uses
  %i.cl = icmp ult i32 %i.ck, 41
  br i1 %i.cl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr %i.i, align 8
  %i.cn = zext nneg i32 %i.ck to i64
  %i.co = getelementptr i8, ptr %i.cm, i64 %i.cn
  %i.cp = add nuw nsw i32 %i.ck, 8
  store i32 %i.cp, ptr %4, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cq = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  store ptr %i.cr, ptr %i.h, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cs = phi ptr [ %i.co, %bb.q ], [ %i.cq, %bb.r ]
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %.7873, i64 1 ; 2 uses
  %.pr1285 = load i8, ptr %i.cu, align 1, !tbaa !9
  br label %.critedge

.lr.ph1561:                                       ; preds = %.preheader1487, %.lr.ph1561
  %i.cv = phi i8 [ %i.db, %.lr.ph1561 ], [ %i.ch, %.preheader1487 ]
  %.08171560 = phi i32 [ %i.cz, %.lr.ph1561 ], [ 0, %.preheader1487 ]
  %.88741559 = phi ptr [ %i.da, %.lr.ph1561 ], [ %.7873, %.preheader1487 ]
  %i.cw = zext nneg i8 %i.cv to i32
  %i.cx = mul nsw i32 %.08171560, 10
  %i.cy = add i32 %i.cx, -48
  %i.cz = add i32 %i.cy, %i.cw                    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.88741559, i64 1 ; 3 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !9   ; 3 uses
  %i.dc = add i8 %i.db, -48
  %or.cond1184 = icmp ult i8 %i.dc, 10
  br i1 %or.cond1184, label %.lr.ph1561, label %.critedge, !llvm.loop !29

.critedge:                                        ; preds = %.lr.ph1561, %.preheader1487, %bb.s
  %i.dd = phi i8 [ %.pr1285, %bb.s ], [ %i.ch, %.preheader1487 ], [ %i.db, %.lr.ph1561 ] ; 2 uses
  %.9875 = phi ptr [ %i.cu, %bb.s ], [ %.7873, %.preheader1487 ], [ %i.da, %.lr.ph1561 ] ; 3 uses
  %.1818 = phi i32 [ %i.ct, %bb.s ], [ 0, %.preheader1487 ], [ %i.cz, %.lr.ph1561 ] ; 9 uses
  %i.de = icmp eq i8 %i.dd, 46
  br i1 %i.de, label %bb.t, label %.critedge16

bb.t:                                             ; preds = %.critedge
  %i.df = getelementptr inbounds nuw i8, ptr %.9875, i64 1 ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !9   ; 4 uses
  %i.dh = icmp eq i8 %i.dg, 42
  br i1 %i.dh, label %bb.u, label %.preheader1486

.preheader1486:                                   ; preds = %bb.t
  %i.di = add i8 %i.dg, -48
  %or.cond11851565 = icmp ult i8 %i.di, 10
  br i1 %or.cond11851565, label %.lr.ph1568, label %.critedge16

bb.u:                                             ; preds = %bb.t
  %i.dj = load i32, ptr %4, align 8               ; 3 uses
  %i.dk = icmp ult i32 %i.dj, 41
  br i1 %i.dk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dl = load ptr, ptr %i.i, align 8
  %i.dm = zext nneg i32 %i.dj to i64
  %i.dn = getelementptr i8, ptr %i.dl, i64 %i.dm
  %i.do = add nuw nsw i32 %i.dj, 8
  store i32 %i.do, ptr %4, align 8
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dp = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  store ptr %i.dq, ptr %i.h, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dr = phi ptr [ %i.dn, %bb.v ], [ %i.dp, %bb.w ]
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %.9875, i64 2 ; 2 uses
  %.pr1286.pre = load i8, ptr %i.dt, align 1, !tbaa !9
  br label %.critedge16

.lr.ph1568:                                       ; preds = %.preheader1486, %.lr.ph1568
  %i.du = phi i8 [ %i.ea, %.lr.ph1568 ], [ %i.dg, %.preheader1486 ]
  %.08021567 = phi i32 [ %i.dy, %.lr.ph1568 ], [ 0, %.preheader1486 ]
  %.108761566 = phi ptr [ %i.dz, %.lr.ph1568 ], [ %i.df, %.preheader1486 ]
  %i.dv = zext nneg i8 %i.du to i32
  %i.dw = mul nsw i32 %.08021567, 10
  %i.dx = add i32 %i.dw, -48
  %i.dy = add i32 %i.dx, %i.dv                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.108761566, i64 1 ; 3 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !9   ; 3 uses
  %i.eb = add i8 %i.ea, -48
  %or.cond1185 = icmp ult i8 %i.eb, 10
  br i1 %or.cond1185, label %.lr.ph1568, label %.critedge16, !llvm.loop !30

.critedge16:                                      ; preds = %.lr.ph1568, %bb.x, %.critedge, %.preheader1486
  %i.ec = phi i8 [ %.pr1286.pre, %bb.x ], [ %i.dg, %.preheader1486 ], [ %i.dd, %.critedge ], [ %i.ea, %.lr.ph1568 ]
  %.11877 = phi ptr [ %i.dt, %bb.x ], [ %i.df, %.preheader1486 ], [ %.9875, %.critedge ], [ %i.dz, %.lr.ph1568 ] ; 13 uses
  %.1803 = phi i32 [ %i.ds, %bb.x ], [ 0, %.preheader1486 ], [ -1, %.critedge ], [ %i.dy, %.lr.ph1568 ] ; 17 uses
  switch i8 %i.ec, label %bb.ai [
    i8 104, label %bb.y
    i8 108, label %bb.z
    i8 106, label %bb.aa
    i8 122, label %bb.ab
    i8 116, label %bb.ac
    i8 73, label %bb.ad
  ]

bb.y:                                             ; preds = %.critedge16
  %i.ed = or i32 %.2780, 512
  %i.ee = getelementptr inbounds nuw i8, ptr %.11877, i64 1 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !9
  %i.eg = icmp eq i8 %i.ef, 104
  %i.eh = getelementptr inbounds nuw i8, ptr %.11877, i64 2
  %spec.select = select i1 %i.eg, ptr %i.eh, ptr %i.ee
  br label %bb.ai

bb.z:                                             ; preds = %.critedge16
  %i.ei = or i32 %.2780, 32
  %i.ej = getelementptr inbounds nuw i8, ptr %.11877, i64 1 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !9
  %i.el = icmp eq i8 %i.ek, 108
  %i.em = getelementptr inbounds nuw i8, ptr %.11877, i64 2
  %spec.select1186 = select i1 %i.el, ptr %i.em, ptr %i.ej
  br label %bb.ai

bb.aa:                                            ; preds = %.critedge16
  %i.en = or i32 %.2780, 32
  %i.eo = getelementptr inbounds nuw i8, ptr %.11877, i64 1
  br label %bb.ai

bb.ab:                                            ; preds = %.critedge16
  %i.ep = or i32 %.2780, 32
  %i.eq = getelementptr inbounds nuw i8, ptr %.11877, i64 1
  br label %bb.ai

bb.ac:                                            ; preds = %.critedge16
  %i.er = or i32 %.2780, 32
  %i.es = getelementptr inbounds nuw i8, ptr %.11877, i64 1
  br label %bb.ai

bb.ad:                                            ; preds = %.critedge16
  %i.et = getelementptr inbounds nuw i8, ptr %.11877, i64 1 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !9
  switch i8 %i.eu, label %.thread1287 [
    i8 54, label %bb.ae
    i8 51, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.ev = getelementptr inbounds nuw i8, ptr %.11877, i64 2
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !9
  %i.ex = icmp eq i8 %i.ew, 52
  br i1 %i.ex, label %bb.af, label %.thread1287

bb.af:                                            ; preds = %bb.ae
  %i.ey = or i32 %.2780, 32
  %i.ez = getelementptr inbounds nuw i8, ptr %.11877, i64 3
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  %i.fa = getelementptr inbounds nuw i8, ptr %.11877, i64 2
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !9
  %i.fc = icmp eq i8 %i.fb, 50
  br i1 %i.fc, label %bb.ah, label %.thread1287

bb.ah:                                            ; preds = %bb.ag
  %i.fd = getelementptr inbounds nuw i8, ptr %.11877, i64 3
  br label %bb.ai

.thread1287:                                      ; preds = %bb.ad, %bb.ae, %bb.ag
  %i.fe = or i32 %.2780, 32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.z, %bb.y, %.critedge16, %bb.af, %.thread1287, %bb.ah, %bb.ac, %bb.ab, %bb.aa
  %.12878 = phi ptr [ %.11877, %.critedge16 ], [ %i.et, %.thread1287 ], [ %i.fd, %bb.ah ], [ %spec.select, %bb.y ], [ %spec.select1186, %bb.z ], [ %i.eo, %bb.aa ], [ %i.eq, %bb.ab ], [ %i.es, %bb.ac ], [ %i.ez, %bb.af ] ; 6 uses
  %.3781 = phi i32 [ %.2780, %.critedge16 ], [ %i.fe, %.thread1287 ], [ %.2780, %bb.ah ], [ %i.ed, %bb.y ], [ %i.ei, %bb.z ], [ %i.en, %bb.aa ], [ %i.ep, %bb.ab ], [ %i.er, %bb.ac ], [ %i.ey, %bb.af ] ; 21 uses
  %i.ff = load i8, ptr %.12878, align 1, !tbaa !9 ; 7 uses
  switch i8 %i.ff, label %bb.hi [
    i8 115, label %bb.aj
    i8 99, label %bb.ap
    i8 110, label %bb.at
    i8 65, label %bb.ax
    i8 97, label %bb.ax
    i8 71, label %bb.bj
    i8 103, label %bb.bj
    i8 69, label %bb.bv
    i8 101, label %bb.bv
    i8 102, label %bb.cl
    i8 66, label %bb.eh
    i8 98, label %bb.eh
    i8 111, label %bb.ek
    i8 112, label %bb.en
    i8 88, label %bb.eo
    i8 120, label %bb.eo
    i8 117, label %bb.fg
    i8 105, label %bb.fg
    i8 100, label %bb.fg
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.fg = load i32, ptr %4, align 8               ; 3 uses
  %i.fh = icmp ult i32 %i.fg, 41
  br i1 %i.fh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fi = load ptr, ptr %i.i, align 8
  %i.fj = zext nneg i32 %i.fg to i64
  %i.fk = getelementptr i8, ptr %i.fi, i64 %i.fj
  %i.fl = add nuw nsw i32 %i.fg, 8
  store i32 %i.fl, ptr %4, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fm = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 8
  store ptr %i.fn, ptr %i.h, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fo = phi ptr [ %i.fk, %bb.ak ], [ %i.fm, %bb.al ]
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !14 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, null
  %spec.store.select = select i1 %i.fq, ptr @.str, ptr %i.fp ; 5 uses
  %i.fr = call i32 @llvm.smax.i32(i32 %.1803, i32 -1) ; 2 uses
  %i.fs = ptrtoint ptr %spec.store.select to i64  ; 4 uses
  %i.ft = and i64 %i.fs, 3
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.am
  %.not.i1693 = icmp eq i32 %.1803, 0
  br i1 %.not.i1693, label %stbsp__strlen_limited.exit, label %.lr.ph1696.preheader

.lr.ph1696.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.fv = load i8, ptr %spec.store.select, align 1, !tbaa !9
  %i.fw = icmp eq i8 %i.fv, 0
  br i1 %i.fw, label %stbsp__strlen_limited.exit, label %.lr.ph2355

.preheader.i:                                     ; preds = %.lr.ph2355, %bb.am
  %.022.lcssa.i = phi i32 [ %i.fr, %bb.am ], [ %i.gb, %.lr.ph2355 ] ; 3 uses
  %.021.lcssa.i = phi ptr [ %spec.store.select, %bb.am ], [ %i.ga, %.lr.ph2355 ] ; 2 uses
  %i.fx = icmp ugt i32 %.022.lcssa.i, 3
  br i1 %i.fx, label %.lr.ph2360, label %._crit_edge2361

.lr.ph.i:                                         ; preds = %.lr.ph2355
  %.not.i = icmp eq i32 %i.gb, 0
  br i1 %.not.i, label %stbsp__strlen_limited.exit, label %.lr.ph1696

.lr.ph1696:                                       ; preds = %.lr.ph.i
  %i.fy = load i8, ptr %i.ga, align 1, !tbaa !9
  %i.fz = icmp eq i8 %i.fy, 0
  br i1 %i.fz, label %stbsp__strlen_limited.exit, label %.lr.ph2355

.lr.ph2355:                                       ; preds = %.lr.ph1696.preheader, %.lr.ph1696
  %.02135.i16942354 = phi ptr [ %i.ga, %.lr.ph1696 ], [ %spec.store.select, %.lr.ph1696.preheader ]
  %.02234.i16952353 = phi i32 [ %i.gb, %.lr.ph1696 ], [ %i.fr, %.lr.ph1696.preheader ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.02135.i16942354, i64 1 ; 4 uses
  %i.gb = add i32 %.02234.i16952353, -1           ; 3 uses
  %i.gc = ptrtoint ptr %i.ga to i64               ; 3 uses
  %i.gd = and i64 %i.gc, 3
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %.preheader.i, label %.lr.ph.i

bb.an:                                            ; preds = %.lr.ph2360
  %i.gf = getelementptr inbounds nuw i8, ptr %.1.i2359, i64 4 ; 2 uses
  %i.gg = add i32 %.123.i2358, -4                 ; 3 uses
  %i.gh = icmp ugt i32 %i.gg, 3
  br i1 %i.gh, label %.lr.ph2360, label %._crit_edge2361

.lr.ph2360:                                       ; preds = %.preheader.i, %bb.an
  %.1.i2359 = phi ptr [ %i.gf, %bb.an ], [ %.021.lcssa.i, %.preheader.i ] ; 3 uses
  %.123.i2358 = phi i32 [ %i.gg, %bb.an ], [ %.022.lcssa.i, %.preheader.i ] ; 2 uses
  %i.gi = load i32, ptr %.1.i2359, align 4, !tbaa !10 ; 2 uses
  %i.gj = sub i32 16843008, %i.gi
  %i.gk = or i32 %i.gj, %i.gi
  %i.gl = and i32 %i.gk, -2139062144
  %.not28.i = icmp eq i32 %i.gl, -2139062144
  br i1 %.not28.i, label %bb.an, label %.lr.ph40.preheader.i

._crit_edge2361:                                  ; preds = %bb.an, %.preheader.i
  %.123.i.lcssa = phi i32 [ %.022.lcssa.i, %.preheader.i ], [ %i.gg, %bb.an ] ; 2 uses
  %.1.i.lcssa = phi ptr [ %.021.lcssa.i, %.preheader.i ], [ %i.gf, %bb.an ] ; 2 uses
  %.not2937.i = icmp eq i32 %.123.i.lcssa, 0
  br i1 %.not2937.i, label %.critedge.i, label %.lr.ph40.preheader.i

.lr.ph40.preheader.i:                             ; preds = %.lr.ph2360, %._crit_edge2361
  %.123.i2310 = phi i32 [ %.123.i.lcssa, %._crit_edge2361 ], [ %.123.i2358, %.lr.ph2360 ] ; 2 uses
  %.1.i2308 = phi ptr [ %.1.i.lcssa, %._crit_edge2361 ], [ %.1.i2359, %.lr.ph2360 ] ; 2 uses
  %scevgep2004 = getelementptr i8, ptr %.1.i2308, i64 1
  %i.gm = add i32 %.123.i2310, -1
  %i.gn = zext i32 %i.gm to i64
  %scevgep2005 = getelementptr i8, ptr %scevgep2004, i64 %i.gn
  br label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %bb.ao, %.lr.ph40.preheader.i
  %.439.i = phi ptr [ %i.gp, %bb.ao ], [ %.1.i2308, %.lr.ph40.preheader.i ] ; 3 uses
  %.42638.i = phi i32 [ %i.gq, %bb.ao ], [ %.123.i2310, %.lr.ph40.preheader.i ]
  %i.go = load i8, ptr %.439.i, align 1, !tbaa !9
  %.not30.i = icmp eq i8 %i.go, 0
  br i1 %.not30.i, label %.critedge.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph40.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.439.i, i64 1
  %i.gq = add i32 %.42638.i, -1                   ; 2 uses
  %.not29.i = icmp eq i32 %i.gq, 0
  br i1 %.not29.i, label %.critedge.i, label %.lr.ph40.i, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.ao, %.lr.ph40.i, %._crit_edge2361
  %.4.lcssa.i = phi ptr [ %.1.i.lcssa, %._crit_edge2361 ], [ %.439.i, %.lr.ph40.i ], [ %scevgep2005, %bb.ao ]
  %i.gr = ptrtoint ptr %.4.lcssa.i to i64
  br label %stbsp__strlen_limited.exit

stbsp__strlen_limited.exit:                       ; preds = %.lr.ph.i, %.lr.ph1696, %.lr.ph1696.preheader, %.lr.ph.i.preheader, %.critedge.i
  %.pn.i = phi i64 [ %i.gr, %.critedge.i ], [ %i.fs, %.lr.ph.i.preheader ], [ %i.fs, %.lr.ph1696.preheader ], [ %i.gc, %.lr.ph1696 ], [ %i.gc, %.lr.ph.i ]
  %.027.in.i = sub i64 %.pn.i, %i.fs
  %.027.i = trunc i64 %.027.in.i to i32
  store i32 %.027.i, ptr %i.e, align 4, !tbaa !10
  store i8 0, ptr %i.c, align 1, !tbaa !9
  store i8 0, ptr %i.d, align 1, !tbaa !9
  store i32 0, ptr %i.f, align 4, !tbaa !10
  br label %bb.gg

bb.ap:                                            ; preds = %bb.ai
  %i.gs = load i32, ptr %4, align 8               ; 3 uses
  %i.gt = icmp ult i32 %i.gs, 41
  br i1 %i.gt, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gu = load ptr, ptr %i.i, align 8
  %i.gv = zext nneg i32 %i.gs to i64
  %i.gw = getelementptr i8, ptr %i.gu, i64 %i.gv
  %i.gx = add nuw nsw i32 %i.gs, 8
  store i32 %i.gx, ptr %4, align 8
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.gy = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  store ptr %i.gz, ptr %i.h, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ha = phi ptr [ %i.gw, %bb.aq ], [ %i.gy, %bb.ar ]
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !10
  %i.hc = trunc i32 %i.hb to i8
  store i8 %i.hc, ptr %i.u, align 1, !tbaa !9
  store i32 1, ptr %i.e, align 4, !tbaa !10
  store i8 0, ptr %i.c, align 1, !tbaa !9
  store i8 0, ptr %i.d, align 1, !tbaa !9
  store i32 0, ptr %i.f, align 4, !tbaa !10
  br label %bb.gg

bb.at:                                            ; preds = %bb.ai
  %i.hd = load i32, ptr %4, align 8               ; 3 uses
  %i.he = icmp ult i32 %i.hd, 41
  br i1 %i.he, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hf = load ptr, ptr %i.i, align 8
  %i.hg = zext nneg i32 %i.hd to i64
  %i.hh = getelementptr i8, ptr %i.hf, i64 %i.hg
  %i.hi = add nuw nsw i32 %i.hd, 8
  store i32 %i.hi, ptr %4, align 8
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.hj = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 8
  store ptr %i.hk, ptr %i.h, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hl = phi ptr [ %i.hh, %bb.au ], [ %i.hj, %bb.av ]
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !72
  %i.hn = ptrtoint ptr %.2882 to i64
  %i.ho = ptrtoint ptr %.1932 to i64
end_hunk_0
begin_hunk_1_@stbsp_vsprintfcb:bb.a
  %i.je = lshr i64 %storemerge1134, 60
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !9
  store i8 %i.jg, ptr %i.o, align 16, !tbaa !9
  %.not1135 = icmp eq i32 %spec.store.select17, 0
  br i1 %.not1135, label %.thread2124, label %.lr.ph1683.preheader

.thread2124:                                      ; preds = %bb.bf
  store ptr %i.q, ptr %i.g, align 8, !tbaa !14
  br label %._crit_edge1684

.lr.ph1683.preheader:                             ; preds = %bb.bf
  %i.jh = load i8, ptr @stbsp__period, align 1, !tbaa !9
  store i8 %i.jh, ptr %i.q, align 1, !tbaa !9
  store ptr %i.r, ptr %i.g, align 8, !tbaa !14
  %spec.store.select18 = call i32 @llvm.umin.i32(i32 %spec.store.select17, i32 13) ; 5 uses
  %i.ji = icmp sgt i32 %spec.store.select17, %spec.store.select18
  %i.jj = sub i32 %spec.store.select17, %spec.store.select18
  %spec.select1188 = select i1 %i.ji, i32 %i.jj, i32 0 ; 2 uses
  %xtraiter2531 = and i32 %spec.store.select18, 3 ; 2 uses
  %lcmp.mod2532.not = icmp eq i32 %xtraiter2531, 0
  br i1 %lcmp.mod2532.not, label %.lr.ph1683.prol.loopexit, label %.lr.ph1683.prol

.lr.ph1683.prol:                                  ; preds = %.lr.ph1683.preheader, %.lr.ph1683.prol
  %.07201681.prol = phi i32 [ %i.jk, %.lr.ph1683.prol ], [ %spec.store.select18, %.lr.ph1683.preheader ]
  %.17391680.prol = phi ptr [ %i.jo, %.lr.ph1683.prol ], [ %i.r, %.lr.ph1683.preheader ] ; 2 uses
  %.11264.in1679.prol = phi i64 [ %.11264.prol, %.lr.ph1683.prol ], [ %storemerge1134, %.lr.ph1683.preheader ]
  %prol.iter2533 = phi i32 [ %prol.iter2533.next, %.lr.ph1683.prol ], [ 0, %.lr.ph1683.preheader ]
  %.11264.prol = shl i64 %.11264.in1679.prol, 4   ; 3 uses
  %i.jk = add nsw i32 %.07201681.prol, -1         ; 2 uses
  %i.jl = lshr i64 %.11264.prol, 60
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !9
  %i.jo = getelementptr inbounds nuw i8, ptr %.17391680.prol, i64 1 ; 3 uses
  store i8 %i.jn, ptr %.17391680.prol, align 1, !tbaa !9
  %prol.iter2533.next = add i32 %prol.iter2533, 1 ; 2 uses
  %prol.iter2533.cmp.not = icmp eq i32 %prol.iter2533.next, %xtraiter2531
  br i1 %prol.iter2533.cmp.not, label %.lr.ph1683.prol.loopexit, label %.lr.ph1683.prol, !llvm.loop !31

.lr.ph1683.prol.loopexit:                         ; preds = %.lr.ph1683.prol, %.lr.ph1683.preheader
  %.lcssa2467.unr = phi ptr [ poison, %.lr.ph1683.preheader ], [ %i.jo, %.lr.ph1683.prol ]
  %.07201681.unr = phi i32 [ %spec.store.select18, %.lr.ph1683.preheader ], [ %i.jk, %.lr.ph1683.prol ]
  %.17391680.unr = phi ptr [ %i.r, %.lr.ph1683.preheader ], [ %i.jo, %.lr.ph1683.prol ]
  %.11264.in1679.unr = phi i64 [ %storemerge1134, %.lr.ph1683.preheader ], [ %.11264.prol, %.lr.ph1683.prol ]
  %i.jp = icmp ult i32 %spec.store.select17, 4
  br i1 %i.jp, label %._crit_edge1684, label %.lr.ph1683

.lr.ph1683:                                       ; preds = %.lr.ph1683.prol.loopexit, %.lr.ph1683
  %.07201681 = phi i32 [ %i.kf, %.lr.ph1683 ], [ %.07201681.unr, %.lr.ph1683.prol.loopexit ]
  %.17391680 = phi ptr [ %i.kj, %.lr.ph1683 ], [ %.17391680.unr, %.lr.ph1683.prol.loopexit ] ; 5 uses
  %.11264.in1679 = phi i64 [ %.11264.3, %.lr.ph1683 ], [ %.11264.in1679.unr, %.lr.ph1683.prol.loopexit ] ; 4 uses
  %i.jq = lshr i64 %.11264.in1679, 56
  %i.jr = and i64 %i.jq, 15
  %i.js = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !9
  %i.ju = getelementptr inbounds nuw i8, ptr %.17391680, i64 1
  store i8 %i.jt, ptr %.17391680, align 1, !tbaa !9
  %i.jv = lshr i64 %.11264.in1679, 52
  %i.jw = and i64 %i.jv, 15
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !9
  %i.jz = getelementptr inbounds nuw i8, ptr %.17391680, i64 2
  store i8 %i.jy, ptr %i.ju, align 1, !tbaa !9
  %i.ka = lshr i64 %.11264.in1679, 48
  %i.kb = and i64 %i.ka, 15
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !9
  %i.ke = getelementptr inbounds nuw i8, ptr %.17391680, i64 3
  store i8 %i.kd, ptr %i.jz, align 1, !tbaa !9
  %.11264.3 = shl i64 %.11264.in1679, 16          ; 2 uses
  %i.kf = add nsw i32 %.07201681, -4              ; 2 uses
  %i.kg = lshr i64 %.11264.3, 60
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !9
  %i.kj = getelementptr inbounds nuw i8, ptr %.17391680, i64 4 ; 2 uses
  store i8 %i.ki, ptr %i.ke, align 1, !tbaa !9
  %.not1136.3 = icmp eq i32 %i.kf, 0
  br i1 %.not1136.3, label %._crit_edge1684, label %.lr.ph1683, !llvm.loop !32

._crit_edge1684:                                  ; preds = %.lr.ph1683.prol.loopexit, %.lr.ph1683, %.thread2124
  %spec.select11882129 = phi i32 [ 0, %.thread2124 ], [ %spec.select1188, %.lr.ph1683 ], [ %spec.select1188, %.lr.ph1683.prol.loopexit ]
  %.07382128 = phi ptr [ %i.q, %.thread2124 ], [ %i.r, %.lr.ph1683 ], [ %i.r, %.lr.ph1683.prol.loopexit ]
  %.1739.lcssa = phi ptr [ %i.q, %.thread2124 ], [ %.lcssa2467.unr, %.lr.ph1683.prol.loopexit ], [ %i.kj, %.lr.ph1683 ]
  %i.kk = select i1 %i.hs, i8 80, i8 112
  store i8 %i.kk, ptr %i.s, align 1, !tbaa !9
  %i.kl = icmp slt i32 %i.is, 0
  br i1 %i.kl, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %._crit_edge1684
  store i8 45, ptr %i.t, align 1, !tbaa !9
  %i.km = sub nsw i32 0, %i.is
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge1684
  store i8 43, ptr %i.t, align 1, !tbaa !9
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.promoted1686 = phi i32 [ %i.is, %bb.bh ], [ %i.km, %bb.bg ] ; 8 uses
  %i.kn = icmp samesign ult i32 %.promoted1686, 1000 ; 2 uses
  %i.ko = icmp samesign ugt i32 %.promoted1686, 99
  %i.kp = icmp samesign ugt i32 %.promoted1686, 9
  %i.kq = select i1 %i.kp, i32 4, i32 3
  %i.kr = select i1 %i.ko, i32 5, i32 %i.kq
  %i.ks = select i1 %i.kn, i32 %i.kr, i32 6       ; 4 uses
  %i.kt = trunc nuw nsw i32 %i.ks to i8
  store i8 %i.kt, ptr %i.d, align 1, !tbaa !9
  %.lhs.trunc = trunc nsw i32 %.promoted1686 to i16
  %i.ku = urem i16 %.lhs.trunc, 10
  %i.kv = trunc nuw nsw i16 %i.ku to i8
  %i.kw = or disjoint i8 %i.kv, 48
  %i.kx = zext nneg i32 %i.ks to i64              ; 5 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.kx
  store i8 %i.kw, ptr %i.ky, align 1, !tbaa !9
  %i.kz = icmp samesign ult i32 %i.ks, 4
  br i1 %i.kz, label %._crit_edge1691, label %.lr.ph1690

.lr.ph1690:                                       ; preds = %bb.bi
  %i.la = udiv i32 %.promoted1686, 10
  %i.lb = urem i32 %i.la, 10
  %i.lc = trunc nuw nsw i32 %i.lb to i8
  %i.ld = or disjoint i8 %i.lc, 48
  %i.le = getelementptr i8, ptr %i.d, i64 %i.kx
  %i.lf = getelementptr i8, ptr %i.le, i64 -1
  store i8 %i.ld, ptr %i.lf, align 1, !tbaa !9
  %i.lg = icmp eq i32 %i.ks, 4
  br i1 %i.lg, label %._crit_edge1691, label %.lr.ph1690.1

.lr.ph1690.1:                                     ; preds = %.lr.ph1690
  %i.lh = add nsw i64 %i.kx, -2                   ; 2 uses
  %i.li = udiv i32 %.promoted1686, 100
  %i.lj = urem i32 %i.li, 10
  %i.lk = trunc nuw nsw i32 %i.lj to i8
  %i.ll = or disjoint i8 %i.lk, 48
  %i.lm = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.lh
  store i8 %i.ll, ptr %i.lm, align 1, !tbaa !9
  br i1 %i.kn, label %._crit_edge1691, label %.lr.ph1690.2

.lr.ph1690.2:                                     ; preds = %.lr.ph1690.1
  %i.ln = udiv i32 %.promoted1686, 1000
  %i.lo = urem i32 %i.ln, 10
  %i.lp = trunc nuw nsw i32 %i.lo to i8
  %i.lq = or disjoint i8 %i.lp, 48
  %i.lr = getelementptr i8, ptr %i.d, i64 %i.kx
  %i.ls = getelementptr i8, ptr %i.lr, i64 -3
  store i8 %i.lq, ptr %i.ls, align 1, !tbaa !9
  %i.lt = icmp ult i64 %i.lh, 5
  br i1 %i.lt, label %._crit_edge1691, label %.lr.ph1690.3

.lr.ph1690.3:                                     ; preds = %.lr.ph1690.2
  %i.lu = udiv i32 %.promoted1686, 10000
  %i.lv = urem i32 %i.lu, 10
  %i.lw = trunc nuw nsw i32 %i.lv to i8
  %i.lx = or disjoint i8 %i.lw, 48
  %i.ly = getelementptr i8, ptr %i.d, i64 %i.kx
  %i.lz = getelementptr i8, ptr %i.ly, i64 -4
  store i8 %i.lx, ptr %i.lz, align 1, !tbaa !9
  br label %._crit_edge1691

._crit_edge1691:                                  ; preds = %.lr.ph1690, %.lr.ph1690.1, %.lr.ph1690.2, %.lr.ph1690.3, %bb.bi
  %i.ma = ptrtoint ptr %.1739.lcssa to i64        ; 2 uses
  %i.mb = ptrtoint ptr %.07382128 to i64
  %i.mc = sub i64 %i.ma, %i.mb
  %i.md = trunc i64 %i.mc to i32
  store i32 %i.md, ptr %i.f, align 4, !tbaa !10
  %i.me = sub i64 %i.ma, %i.p
  %i.mf = trunc i64 %i.me to i32
  store i32 %i.mf, ptr %i.e, align 4, !tbaa !10
  br label %bb.gg

bb.bj:                                            ; preds = %bb.ai, %bb.ai
  %i.mg = icmp eq i8 %i.ff, 71
  %i.mh = select i1 %i.mg, ptr @__const.stbsp_vsprintfcb.hexu, ptr @__const.stbsp_vsprintfcb.hex ; 2 uses
  %i.mi = load i32, ptr %i.n, align 4             ; 3 uses
  %i.mj = icmp ult i32 %i.mi, 161
  br i1 %i.mj, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.mk = load ptr, ptr %i.i, align 8
  %i.ml = zext nneg i32 %i.mi to i64
  %i.mm = getelementptr i8, ptr %i.mk, i64 %i.ml
  %i.mn = add nuw nsw i32 %i.mi, 16
  store i32 %i.mn, ptr %i.n, align 4
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.mo = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mo, i64 8
  store ptr %i.mp, ptr %i.h, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.mq = phi ptr [ %i.mm, %bb.bk ], [ %i.mo, %bb.bl ]
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !16
  %i.ms = icmp eq i32 %.1803, -1
  %spec.store.select19 = call i32 @llvm.umax.i32(i32 %.1803, i32 1)
  %.2804 = select i1 %i.ms, i32 6, i32 %spec.store.select19 ; 6 uses
  %i.mt = add i32 %.2804, 2147483647
  %i.mu = or i32 %i.mt, -2147483648
  %i.mv = call i32 @stbsp__real_to_str(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, double noundef %i.mr, i32 noundef %i.mu)
  %5 = shl nuw nsw i32 %i.mv, 7
  %i.mw = or i32 %5, %.3781                       ; 4 uses
  %i.mx = load i32, ptr %i.e, align 4, !tbaa !10  ; 2 uses
  %spec.store.select1442 = call i32 @llvm.umin.i32(i32 %i.mx, i32 %.2804) ; 2 uses
  %i.my = icmp ugt i32 %spec.store.select1442, 1
  br i1 %i.my, label %.lr.ph1609, label %.critedge22

.lr.ph1609:                                       ; preds = %bb.bm
  %i.mz = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.na = call i32 @llvm.umin.i32(i32 %.2804, i32 %i.mx)
  %umin = zext i32 %i.na to i64
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph1609, %bb.bo
  %indvars.iv = phi i64 [ %umin, %.lr.ph1609 ], [ %indvars.iv.next, %bb.bo ] ; 2 uses
  %.38051607 = phi i32 [ %.2804, %.lr.ph1609 ], [ %i.nh, %bb.bo ] ; 2 uses
  %i.nb = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.nc = add i32 %i.nb, -1                       ; 3 uses
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !9
  %i.ng = icmp eq i8 %i.nf, 48
  br i1 %i.ng, label %bb.bo, label %.critedge22

bb.bo:                                            ; preds = %bb.bn
  %i.nh = add nsw i32 %.38051607, -1              ; 3 uses
  %i.ni = icmp ugt i32 %i.nc, 1
  %i.nj = icmp ne i32 %i.nh, 0
  %or.cond = select i1 %i.ni, i1 %i.nj, i1 false
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %or.cond, label %bb.bn, label %.critedge22, !llvm.loop !33

.critedge22:                                      ; preds = %bb.bn, %bb.bo, %bb.bm
  %storemerge1443.lcssa1605 = phi i32 [ %spec.store.select1442, %bb.bm ], [ %i.nc, %bb.bo ], [ %i.nb, %bb.bn ] ; 6 uses
  %.3805.lcssa = phi i32 [ %.2804, %bb.bm ], [ %i.nh, %bb.bo ], [ %.38051607, %bb.bn ] ; 3 uses
  store i32 %storemerge1443.lcssa1605, ptr %i.e, align 4
  %i.nk = load i32, ptr %i.f, align 4, !tbaa !10  ; 6 uses
  %i.nl = icmp slt i32 %i.nk, -3
  %i.nm = icmp sgt i32 %i.nk, %.2804
  %or.cond1189 = or i1 %i.nl, %i.nm
  br i1 %or.cond1189, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %.critedge22
  %i.nn = icmp sgt i32 %.3805.lcssa, %storemerge1443.lcssa1605
  br i1 %i.nn, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.no = add i32 %storemerge1443.lcssa1605, -1
  br label %bb.bz

bb.br:                                            ; preds = %bb.bp
  %spec.select1190 = call i32 @llvm.usub.sat.i32(i32 %.3805.lcssa, i32 1)
  br label %bb.bz

bb.bs:                                            ; preds = %.critedge22
  %i.np = icmp sgt i32 %i.nk, 0
  br i1 %i.np, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.nq = icmp slt i32 %i.nk, %storemerge1443.lcssa1605
  %i.nr = sub i32 %storemerge1443.lcssa1605, %i.nk
  %i.ns = select i1 %i.nq, i32 %i.nr, i32 0
  br label %bb.cx

bb.bu:                                            ; preds = %bb.bs
  %i.nt = call i32 @llvm.smin.i32(i32 %.3805.lcssa, i32 %storemerge1443.lcssa1605)
  %i.nu = sub nsw i32 %i.nt, %i.nk
  br label %bb.cx

bb.bv:                                            ; preds = %bb.ai, %bb.ai
  %i.nv = icmp eq i8 %i.ff, 69
  %i.nw = select i1 %i.nv, ptr @__const.stbsp_vsprintfcb.hexu, ptr @__const.stbsp_vsprintfcb.hex
  %i.nx = load i32, ptr %i.n, align 4             ; 3 uses
  %i.ny = icmp ult i32 %i.nx, 161
  br i1 %i.ny, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.nz = load ptr, ptr %i.i, align 8
  %i.oa = zext nneg i32 %i.nx to i64
  %i.ob = getelementptr i8, ptr %i.nz, i64 %i.oa
  %i.oc = add nuw nsw i32 %i.nx, 16
  store i32 %i.oc, ptr %i.n, align 4
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.od = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.oe = getelementptr i8, ptr %i.od, i64 8
  store ptr %i.oe, ptr %i.h, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.of = phi ptr [ %i.ob, %bb.bw ], [ %i.od, %bb.bx ]
  %i.og = load double, ptr %i.of, align 8, !tbaa !16
  %i.oh = icmp eq i32 %.1803, -1
  %spec.store.select23 = select i1 %i.oh, i32 6, i32 %.1803 ; 2 uses
  %i.oi = or i32 %spec.store.select23, -2147483648
  %i.oj = call i32 @stbsp__real_to_str(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, double noundef %i.og, i32 noundef %i.oi)
  %6 = shl nuw nsw i32 %i.oj, 7
  %i.ok = or i32 %6, %.3781
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.br, %bb.bq
  %.4806 = phi i32 [ %i.no, %bb.bq ], [ %spec.select1190, %bb.br ], [ %spec.store.select23, %bb.by ] ; 4 uses
  %.6784 = phi i32 [ %i.mw, %bb.bq ], [ %i.mw, %bb.br ], [ %i.ok, %bb.by ] ; 5 uses
  %.0736 = phi ptr [ %i.mh, %bb.bq ], [ %i.mh, %bb.br ], [ %i.nw, %bb.by ]
  store i8 0, ptr %i.d, align 1, !tbaa !9
  store i8 0, ptr %i.c, align 1, !tbaa !9
  %i.ol = and i32 %.6784, 128
  %.not.i1236 = icmp eq i32 %i.ol, 0
  br i1 %.not.i1236, label %bb.ca, label %.sink.split.i1237

bb.ca:                                            ; preds = %bb.bz
  %i.om = and i32 %.6784, 4
  %.not9.i1239 = icmp eq i32 %i.om, 0
  br i1 %.not9.i1239, label %bb.cb, label %.sink.split.i1237

bb.cb:                                            ; preds = %bb.ca
  %i.on = and i32 %.6784, 2
  %.not10.i1240 = icmp eq i32 %i.on, 0
  br i1 %.not10.i1240, label %stbsp__lead_sign.exit1241, label %.sink.split.i1237

.sink.split.i1237:                                ; preds = %bb.cb, %bb.ca, %bb.bz
  %.sink.i1238 = phi i8 [ 45, %bb.bz ], [ 32, %bb.ca ], [ 43, %bb.cb ]
  store i8 1, ptr %i.c, align 1, !tbaa !9
  store i8 %.sink.i1238, ptr %i.j, align 1, !tbaa !9
  br label %stbsp__lead_sign.exit1241

stbsp__lead_sign.exit1241:                        ; preds = %bb.cb, %.sink.split.i1237
  %i.oo = load i32, ptr %i.f, align 4, !tbaa !10  ; 4 uses
  %i.op = icmp eq i32 %i.oo, 28672
  %i.oq = load ptr, ptr %i.g, align 8, !tbaa !14  ; 14 uses
  %i.or = ptrtoaddr ptr %i.oq to i64
  br i1 %i.op, label %bb.gg, label %bb.cc

bb.cc:                                            ; preds = %stbsp__lead_sign.exit1241
  %i.os = load i8, ptr %i.oq, align 1, !tbaa !9
  store i8 %i.os, ptr %i.o, align 16, !tbaa !9
  %.not1131 = icmp eq i32 %.4806, 0
  br i1 %.not1131, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ot = load i8, ptr @stbsp__period, align 1, !tbaa !9
  store i8 %i.ot, ptr %i.q, align 1, !tbaa !9
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.2740 = phi ptr [ %i.r, %bb.cd ], [ %i.q, %bb.cc ] ; 8 uses
  %.27402382 = ptrtoaddr ptr %.2740 to i64
  %i.ou = load i32, ptr %i.e, align 4, !tbaa !10  ; 2 uses
  %i.ov = add i32 %i.ou, -1
  %i.ow = icmp ugt i32 %i.ov, %.4806
  br i1 %i.ow, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ox = add nuw nsw i32 %.4806, 1               ; 2 uses
  store i32 %i.ox, ptr %i.e, align 4, !tbaa !10
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.oy = phi i32 [ %i.ox, %bb.cf ], [ %i.ou, %bb.ce ] ; 5 uses
  %i.oz = icmp ugt i32 %i.oy, 1
  br i1 %i.oz, label %iter.check2399, label %._crit_edge1673

iter.check2399:                                   ; preds = %bb.cg
  %wide.trip.count = zext i32 %i.oy to i64        ; 4 uses
  %i.pa = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check2384 = icmp ult i32 %i.oy, 9
  br i1 %min.iters.check2384, label %.lr.ph1672.preheader, label %vector.memcheck2381

vector.memcheck2381:                              ; preds = %iter.check2399
  %i.pb = sub i64 %.27402382, %i.or
  %i.pc = add i64 %i.pb, -2
  %diff.check2383 = icmp ult i64 %i.pc, 31
  br i1 %diff.check2383, label %.lr.ph1672.preheader, label %vector.main.loop.iter.check2385

vector.main.loop.iter.check2385:                  ; preds = %vector.memcheck2381
  %min.iters.check2386 = icmp ult i32 %i.oy, 33
  br i1 %min.iters.check2386, label %vec.epilog.ph2403, label %vector.ph2387

vector.ph2387:                                    ; preds = %vector.main.loop.iter.check2385
  %i.pd = and i64 %i.pa, 24
  %n.vec2388 = and i64 %i.pa, -32                 ; 5 uses
  %i.pe = or disjoint i64 %n.vec2388, 1
  %i.pf = getelementptr i8, ptr %.2740, i64 %n.vec2388 ; 2 uses
  br label %vector.body2389

vector.body2389:                                  ; preds = %vector.body2389, %vector.ph2387
  %index2390 = phi i64 [ 0, %vector.ph2387 ], [ %index.next2394, %vector.body2389 ] ; 3 uses
  %next.gep2391 = getelementptr i8, ptr %.2740, i64 %index2390 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oq, i64 %index2390 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 1
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 17
  %wide.load2392 = load <16 x i8>, ptr %i.ph, align 1, !tbaa !9
  %wide.load2393 = load <16 x i8>, ptr %i.pi, align 1, !tbaa !9
  %i.pj = getelementptr i8, ptr %next.gep2391, i64 16
  store <16 x i8> %wide.load2392, ptr %next.gep2391, align 1, !tbaa !9
  store <16 x i8> %wide.load2393, ptr %i.pj, align 1, !tbaa !9
  %index.next2394 = add nuw i64 %index2390, 32    ; 2 uses
  %i.pk = icmp eq i64 %index.next2394, %n.vec2388
  br i1 %i.pk, label %middle.block2395, label %vector.body2389, !llvm.loop !34

middle.block2395:                                 ; preds = %vector.body2389
  %cmp.n2396 = icmp eq i64 %i.pa, %n.vec2388
  br i1 %cmp.n2396, label %._crit_edge1673, label %vec.epilog.iter.check2401

vec.epilog.iter.check2401:                        ; preds = %middle.block2395
  %min.epilog.iters.check2402 = icmp eq i64 %i.pd, 0
  br i1 %min.epilog.iters.check2402, label %.lr.ph1672.preheader, label %vec.epilog.ph2403, !prof !19

vec.epilog.ph2403:                                ; preds = %vector.main.loop.iter.check2385, %vec.epilog.iter.check2401
  %vec.epilog.resume.val2397 = phi i64 [ %n.vec2388, %vec.epilog.iter.check2401 ], [ 0, %vector.main.loop.iter.check2385 ]
  %n.vec2404 = and i64 %i.pa, -8                  ; 4 uses
  %i.pl = or disjoint i64 %n.vec2404, 1
  %i.pm = getelementptr i8, ptr %.2740, i64 %n.vec2404 ; 2 uses
  br label %vec.epilog.vector.body2405

vec.epilog.vector.body2405:                       ; preds = %vec.epilog.vector.body2405, %vec.epilog.ph2403
  %index2406 = phi i64 [ %vec.epilog.resume.val2397, %vec.epilog.ph2403 ], [ %index.next2409, %vec.epilog.vector.body2405 ] ; 3 uses
  %next.gep2407 = getelementptr i8, ptr %.2740, i64 %index2406
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oq, i64 %index2406
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 1
  %wide.load2408 = load <8 x i8>, ptr %i.po, align 1, !tbaa !9
  store <8 x i8> %wide.load2408, ptr %next.gep2407, align 1, !tbaa !9
  %index.next2409 = add nuw i64 %index2406, 8     ; 2 uses
  %i.pp = icmp eq i64 %index.next2409, %n.vec2404
  br i1 %i.pp, label %vec.epilog.middle.block2410, label %vec.epilog.vector.body2405, !llvm.loop !35

vec.epilog.middle.block2410:                      ; preds = %vec.epilog.vector.body2405
  %cmp.n2411 = icmp eq i64 %i.pa, %n.vec2404
  br i1 %cmp.n2411, label %._crit_edge1673, label %.lr.ph1672.preheader

.lr.ph1672.preheader:                             ; preds = %vector.memcheck2381, %iter.check2399, %vec.epilog.iter.check2401, %vec.epilog.middle.block2410
  %indvars.iv1995.ph = phi i64 [ 1, %iter.check2399 ], [ 1, %vector.memcheck2381 ], [ %i.pe, %vec.epilog.iter.check2401 ], [ %i.pl, %vec.epilog.middle.block2410 ] ; 4 uses
  %.37411669.ph = phi ptr [ %.2740, %iter.check2399 ], [ %.2740, %vector.memcheck2381 ], [ %i.pf, %vec.epilog.iter.check2401 ], [ %i.pm, %vec.epilog.middle.block2410 ] ; 2 uses
  %i.pq = sub nsw i64 %wide.trip.count, %indvars.iv1995.ph
  %xtraiter2528 = and i64 %i.pq, 7                ; 2 uses
  %lcmp.mod2529.not = icmp eq i64 %xtraiter2528, 0
  br i1 %lcmp.mod2529.not, label %.lr.ph1672.prol.loopexit, label %.lr.ph1672.prol

.lr.ph1672.prol:                                  ; preds = %.lr.ph1672.preheader, %.lr.ph1672.prol
  %indvars.iv1995.prol = phi i64 [ %indvars.iv.next1996.prol, %.lr.ph1672.prol ], [ %indvars.iv1995.ph, %.lr.ph1672.preheader ] ; 2 uses
  %.37411669.prol = phi ptr [ %i.pt, %.lr.ph1672.prol ], [ %.37411669.ph, %.lr.ph1672.preheader ] ; 2 uses
  %prol.iter2530 = phi i64 [ %prol.iter2530.next, %.lr.ph1672.prol ], [ 0, %.lr.ph1672.preheader ]
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oq, i64 %indvars.iv1995.prol
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !9
  %i.pt = getelementptr inbounds nuw i8, ptr %.37411669.prol, i64 1 ; 3 uses
  store i8 %i.ps, ptr %.37411669.prol, align 1, !tbaa !9
  %indvars.iv.next1996.prol = add nuw nsw i64 %indvars.iv1995.prol, 1 ; 2 uses
  %prol.iter2530.next = add i64 %prol.iter2530, 1 ; 2 uses
  %prol.iter2530.cmp.not = icmp eq i64 %prol.iter2530.next, %xtraiter2528
  br i1 %prol.iter2530.cmp.not, label %.lr.ph1672.prol.loopexit, label %.lr.ph1672.prol, !llvm.loop !36

.lr.ph1672.prol.loopexit:                         ; preds = %.lr.ph1672.prol, %.lr.ph1672.preheader
  %.lcssa2465.unr = phi ptr [ poison, %.lr.ph1672.preheader ], [ %i.pt, %.lr.ph1672.prol ]
  %indvars.iv1995.unr = phi i64 [ %indvars.iv1995.ph, %.lr.ph1672.preheader ], [ %indvars.iv.next1996.prol, %.lr.ph1672.prol ]
  %.37411669.unr = phi ptr [ %.37411669.ph, %.lr.ph1672.preheader ], [ %i.pt, %.lr.ph1672.prol ]
  %i.pu = sub nsw i64 %indvars.iv1995.ph, %wide.trip.count
  %i.pv = icmp ugt i64 %i.pu, -8
  br i1 %i.pv, label %._crit_edge1673, label %.lr.ph1672

.lr.ph1672:                                       ; preds = %.lr.ph1672.prol.loopexit, %.lr.ph1672
  %indvars.iv1995 = phi i64 [ %indvars.iv.next1996.7, %.lr.ph1672 ], [ %indvars.iv1995.unr, %.lr.ph1672.prol.loopexit ] ; 9 uses
  %.37411669 = phi ptr [ %i.ra, %.lr.ph1672 ], [ %.37411669.unr, %.lr.ph1672.prol.loopexit ] ; 9 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.oq, i64 %indvars.iv1995
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !9
  %i.py = getelementptr inbounds nuw i8, ptr %.37411669, i64 1
  store i8 %i.px, ptr %.37411669, align 1, !tbaa !9
  %i.pz = getelementptr inbounds nuw i8, ptr %i.oq, i64 %indvars.iv1995
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 1
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !9
  %i.qc = getelementptr inbounds nuw i8, ptr %.37411669, i64 2
  store i8 %i.qb, ptr %i.py, align 1, !tbaa !9
  %i.qd = getelementptr inbounds nuw i8, ptr %i.oq, i64 %indvars.iv1995
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 2
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !9
  %i.qg = getelementptr inbounds nuw i8, ptr %.37411669, i64 3
  store i8 %i.qf, ptr %i.qc, align 1, !tbaa !9
  %i.qh = getelementptr inbounds nuw i8, ptr %i.oq, i64 %indvars.iv1995
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 3
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !9
  %i.qk = getelementptr inbounds nuw i8, ptr %.37411669, i64 4
  store i8 %i.qj, ptr %i.qg, align 1, !tbaa !9
  %i.ql = getelementptr inbounds nuw i8, ptr %i.oq, i64 %indvars.iv1995
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !9
  %i.qo = getelementptr inbounds nuw i8, ptr %.37411669, i64 5
  store i8 %i.qn, ptr %i.qk, align 1, !tbaa !9
  %i.qp = getelementptr inbounds nuw i8, ptr %i.oq, i64 %indvars.iv1995
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 5
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !9
  %i.qs = getelementptr inbounds nuw i8, ptr %.37411669, i64 6
  store i8 %i.qr, ptr %i.qo, align 1, !tbaa !9
  %i.qt = getelementptr inbounds nuw i8, ptr %i.oq, i64 %indvars.iv1995
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 6
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !9
  %i.qw = getelementptr inbounds nuw i8, ptr %.37411669, i64 7
  store i8 %i.qv, ptr %i.qs, align 1, !tbaa !9
  %i.qx = getelementptr inbounds nuw i8, ptr %i.oq, i64 %indvars.iv1995
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 7
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !9
  %i.ra = getelementptr inbounds nuw i8, ptr %.37411669, i64 8 ; 2 uses
  store i8 %i.qz, ptr %i.qw, align 1, !tbaa !9
  %indvars.iv.next1996.7 = add nuw nsw i64 %indvars.iv1995, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next1996.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge1673, label %.lr.ph1672, !llvm.loop !37

._crit_edge1673:                                  ; preds = %.lr.ph1672.prol.loopexit, %.lr.ph1672, %middle.block2395, %vec.epilog.middle.block2410, %bb.cg
  %.3741.lcssa = phi ptr [ %.2740, %bb.cg ], [ %i.pm, %vec.epilog.middle.block2410 ], [ %i.pf, %middle.block2395 ], [ %.lcssa2465.unr, %.lr.ph1672.prol.loopexit ], [ %i.ra, %.lr.ph1672 ]
  %.neg1449 = add i32 %.4806, 1
  %i.rb = sub i32 %.neg1449, %i.oy
  %i.rc = getelementptr inbounds nuw i8, ptr %.0736, i64 14
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !9
  store i8 %i.rd, ptr %i.s, align 1, !tbaa !9
  %i.re = icmp slt i32 %i.oo, 1
  br i1 %i.re, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %._crit_edge1673
  store i8 45, ptr %i.t, align 1, !tbaa !9
  %i.rf = sub nsw i32 1, %i.oo
  br label %bb.cj

bb.ci:                                            ; preds = %._crit_edge1673
  %i.rg = add nsw i32 %i.oo, -1
  store i8 43, ptr %i.t, align 1, !tbaa !9
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.rh = phi i32 [ %i.rg, %bb.ci ], [ %i.rf, %bb.ch ] ; 4 uses
  %i.ri = icmp samesign ugt i32 %i.rh, 99         ; 2 uses
  %i.rj = select i1 %i.ri, i32 5, i32 4           ; 2 uses
  %i.rk = trunc nuw nsw i32 %i.rj to i8
  store i8 %i.rk, ptr %i.d, align 1, !tbaa !9
  %i.rl = urem i32 %i.rh, 10
  %i.rm = trunc nuw nsw i32 %i.rl to i8
  %i.rn = or disjoint i8 %i.rm, 48
  %i.ro = zext nneg i32 %i.rj to i64              ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ro
  store i8 %i.rn, ptr %i.rp, align 1, !tbaa !9
  %i.rq = sdiv i32 %i.rh, 10                      ; 2 uses
  %i.rr = srem i32 %i.rq, 10
  %i.rs = trunc nsw i32 %i.rr to i8
  %i.rt = add nsw i8 %i.rs, 48
  %i.ru = getelementptr i8, ptr %i.d, i64 %i.ro
  %i.rv = getelementptr i8, ptr %i.ru, i64 -1
  store i8 %i.rt, ptr %i.rv, align 1, !tbaa !9
  br i1 %i.ri, label %bb.ck, label %.loopexit1476

bb.ck:                                            ; preds = %bb.cj
  %i.rw = sdiv i32 %i.rh, 100                     ; 2 uses
  %i.rx = srem i32 %i.rw, 10
  %i.ry = trunc nsw i32 %i.rx to i8
  %i.rz = add nsw i8 %i.ry, 48
  %i.sa = getelementptr i8, ptr %i.d, i64 %i.ro
  %i.sb = getelementptr i8, ptr %i.sa, i64 -2
  store i8 %i.rz, ptr %i.sb, align 1, !tbaa !9
  br label %.loopexit1476

bb.cl:                                            ; preds = %bb.ai
  %i.sc = load i32, ptr %i.n, align 4             ; 3 uses
  %i.sd = icmp ult i32 %i.sc, 161
  br i1 %i.sd, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.se = load ptr, ptr %i.i, align 8
  %i.sf = zext nneg i32 %i.sc to i64
  %i.sg = getelementptr i8, ptr %i.se, i64 %i.sf
  %i.sh = add nuw nsw i32 %i.sc, 16
  store i32 %i.sh, ptr %i.n, align 4
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.si = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.sj = getelementptr i8, ptr %i.si, i64 8
  store ptr %i.sj, ptr %i.h, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %i.sk = phi ptr [ %i.sg, %bb.cm ], [ %i.si, %bb.cn ]
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !16 ; 2 uses
  %.pre2042 = and i32 %.3781, 256
  %i.sm = icmp eq i32 %.pre2042, 0
  br i1 %i.sm, label %.loopexit1485, label %bb.cp

bb.cp:                                            ; preds = %.thread2130, %bb.co
  %.07032138 = phi double [ %i.ads, %.thread2130 ], [ %i.sl, %bb.co ] ; 5 uses
  %.77852137 = phi i32 [ %.16794, %.thread2130 ], [ %.3781, %bb.co ] ; 11 uses
  %.58072135 = phi i32 [ %.10812, %.thread2130 ], [ %.1803, %bb.co ] ; 9 uses
  %i.sn = and i32 %.77852137, 2048
  %.not1108 = icmp eq i32 %i.sn, 0
  %spec.store.select24 = select i1 %.not1108, double 1.000000e+03, double 1.024000e+03 ; 9 uses
  %i.so = icmp ult i32 %.77852137, 67108864
  br i1 %i.so, label %.lr.ph1599, label %.loopexit1485

.lr.ph1599:                                       ; preds = %bb.cp
  %i.sp = fneg double %spec.store.select24        ; 4 uses
  %i.sq = fcmp olt double %.07032138, %spec.store.select24
  %i.sr = fcmp ogt double %.07032138, %i.sp
  %or.cond1193 = and i1 %i.sq, %i.sr
  br i1 %or.cond1193, label %.loopexit1485, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph1599
  %i.ss = fdiv double %.07032138, %spec.store.select24 ; 5 uses
  %i.st = add nuw nsw i32 %.77852137, 16777216    ; 2 uses
  %i.su = icmp ult i32 %.77852137, 50331648
  br i1 %i.su, label %bb.cr, label %.loopexit1485

bb.cr:                                            ; preds = %bb.cq
  %i.sv = fcmp olt double %i.ss, %spec.store.select24
  %i.sw = fcmp ogt double %i.ss, %i.sp
  %or.cond1193.1 = and i1 %i.sv, %i.sw
  br i1 %or.cond1193.1, label %.loopexit1485, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.sx = fdiv double %i.ss, %spec.store.select24 ; 5 uses
  %i.sy = add nuw nsw i32 %.77852137, 33554432    ; 2 uses
  %i.sz = icmp ult i32 %.77852137, 33554432
  br i1 %i.sz, label %bb.ct, label %.loopexit1485

bb.ct:                                            ; preds = %bb.cs
  %i.ta = fcmp olt double %i.sx, %spec.store.select24
  %i.tb = fcmp ogt double %i.sx, %i.sp
  %or.cond1193.2 = and i1 %i.ta, %i.tb
  br i1 %or.cond1193.2, label %.loopexit1485, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.tc = fdiv double %i.sx, %spec.store.select24 ; 5 uses
  %i.td = add nuw nsw i32 %.77852137, 50331648    ; 2 uses
  %i.te = icmp ult i32 %.77852137, 16777216
  br i1 %i.te, label %bb.cv, label %.loopexit1485

bb.cv:                                            ; preds = %bb.cu
  %i.tf = fcmp olt double %i.tc, %spec.store.select24
  %i.tg = fcmp ogt double %i.tc, %i.sp
  %or.cond1193.3 = and i1 %i.tf, %i.tg
  br i1 %or.cond1193.3, label %.loopexit1485, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.th = fdiv double %i.tc, %spec.store.select24
  %i.ti = or disjoint i32 %.77852137, 67108864
  br label %.loopexit1485

.loopexit1485:                                    ; preds = %.lr.ph1599, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cp, %bb.co
  %.58072136 = phi i32 [ %.1803, %bb.co ], [ %.58072135, %bb.cp ], [ %.58072135, %bb.cw ], [ %.58072135, %bb.cv ], [ %.58072135, %bb.cu ], [ %.58072135, %bb.ct ], [ %.58072135, %bb.cs ], [ %.58072135, %bb.cr ], [ %.58072135, %bb.cq ], [ %.58072135, %.lr.ph1599 ] ; 2 uses
  %.9787 = phi i32 [ %.3781, %bb.co ], [ %.77852137, %bb.cp ], [ %.77852137, %.lr.ph1599 ], [ %i.st, %bb.cq ], [ %i.st, %bb.cr ], [ %i.sy, %bb.cs ], [ %i.sy, %bb.ct ], [ %i.td, %bb.cu ], [ %i.td, %bb.cv ], [ %i.ti, %bb.cw ]
  %.2705 = phi double [ %i.sl, %bb.co ], [ %.07032138, %bb.cp ], [ %.07032138, %.lr.ph1599 ], [ %i.ss, %bb.cq ], [ %i.ss, %bb.cr ], [ %i.sx, %bb.cs ], [ %i.sx, %bb.ct ], [ %i.tc, %bb.cu ], [ %i.tc, %bb.cv ], [ %i.th, %bb.cw ]
  %i.tj = icmp eq i32 %.58072136, -1
  %spec.store.select25 = select i1 %i.tj, i32 6, i32 %.58072136 ; 2 uses
  %i.tk = call i32 @stbsp__real_to_str(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, double noundef %.2705, i32 noundef %spec.store.select25)
  %7 = shl nuw nsw i32 %i.tk, 7
  %i.tl = or i32 %7, %.9787
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit1485, %bb.bt, %bb.bu
  %.6808 = phi i32 [ %i.ns, %bb.bt ], [ %i.nu, %bb.bu ], [ %spec.store.select25, %.loopexit1485 ] ; 12 uses
  %.10788 = phi i32 [ %i.mw, %bb.bt ], [ %i.mw, %bb.bu ], [ %i.tl, %.loopexit1485 ] ; 13 uses
  store i8 0, ptr %i.d, align 1, !tbaa !9
  store i8 0, ptr %i.c, align 1, !tbaa !9
  %i.tm = and i32 %.10788, 128
  %.not.i1242 = icmp eq i32 %i.tm, 0
  br i1 %.not.i1242, label %bb.cy, label %.sink.split.i1243

bb.cy:                                            ; preds = %bb.cx
  %i.tn = and i32 %.10788, 4
  %.not9.i1245 = icmp eq i32 %i.tn, 0
  br i1 %.not9.i1245, label %bb.cz, label %.sink.split.i1243

bb.cz:                                            ; preds = %bb.cy
  %i.to = and i32 %.10788, 2
  %.not10.i1246 = icmp eq i32 %i.to, 0
  br i1 %.not10.i1246, label %stbsp__lead_sign.exit1247, label %.sink.split.i1243

.sink.split.i1243:                                ; preds = %bb.cz, %bb.cy, %bb.cx
  %.sink.i1244 = phi i8 [ 45, %bb.cx ], [ 32, %bb.cy ], [ 43, %bb.cz ]
  store i8 1, ptr %i.c, align 1, !tbaa !9
  store i8 %.sink.i1244, ptr %i.j, align 1, !tbaa !9
  br label %stbsp__lead_sign.exit1247

stbsp__lead_sign.exit1247:                        ; preds = %bb.cz, %.sink.split.i1243
  %i.tp = load i32, ptr %i.f, align 4, !tbaa !10  ; 5 uses
  %i.tq = icmp eq i32 %i.tp, 28672
  br i1 %i.tq, label %bb.da, label %bb.db

bb.da:                                            ; preds = %stbsp__lead_sign.exit1247
  %i.tr = load ptr, ptr %i.g, align 8, !tbaa !14
  br label %bb.gg

bb.db:                                            ; preds = %stbsp__lead_sign.exit1247
  %i.ts = icmp slt i32 %i.tp, 1
  br i1 %i.ts, label %bb.dc, label %bb.dh

bb.dc:                                            ; preds = %bb.db
  store i8 48, ptr %i.o, align 16, !tbaa !9
  %.not1121 = icmp eq i32 %.6808, 0
  br i1 %.not1121, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.tt = load i8, ptr @stbsp__period, align 1, !tbaa !9
  store i8 %i.tt, ptr %i.q, align 1, !tbaa !9
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.4742 = phi ptr [ %i.r, %bb.dd ], [ %i.q, %bb.dc ] ; 3 uses
  %i.tu = sub nsw i32 0, %i.tp
  %spec.select1195 = call i32 @llvm.smin.i32(i32 %.6808, i32 %i.tu) ; 7 uses
  %.not11221643 = icmp eq i32 %spec.select1195, 0
  %i.tv = ptrtoint ptr %.4742 to i64
  %i.tw = and i64 %i.tv, 3
  %i.tx = icmp eq i64 %i.tw, 0
  %or.cond11981644 = select i1 %.not11221643, i1 true, i1 %i.tx
  br i1 %or.cond11981644, label %.preheader1478, label %.lr.ph1648

.preheader1478:                                   ; preds = %.lr.ph1648, %bb.de
  %.5743.lcssa = phi ptr [ %.4742, %bb.de ], [ %i.uh, %.lr.ph1648 ] ; 3 uses
  %.0699.lcssa = phi i32 [ %spec.select1195, %bb.de ], [ %i.ui, %.lr.ph1648 ] ; 4 uses
  %i.ty = icmp sgt i32 %.0699.lcssa, 3
  br i1 %i.ty, label %.lr.ph1653.preheader, label %.preheader1477

.lr.ph1653.preheader:                             ; preds = %.preheader1478
  %i.tz = call i32 @llvm.usub.sat.i32(i32 %.0699.lcssa, i32 7)
  %i.ua = add nuw i32 %i.tz, 3                    ; 2 uses
  %i.ub = and i32 %i.ua, 2147483644
  %i.uc = zext nneg i32 %i.ub to i64              ; 2 uses
  %i.ud = add nuw nsw i64 %i.uc, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.5743.lcssa, i8 48, i64 %i.ud, i1 false), !tbaa !10
  %scevgep1989 = getelementptr i8, ptr %.5743.lcssa, i64 4
  %scevgep1991 = getelementptr i8, ptr %scevgep1989, i64 %i.uc
  %i.ue = add nsw i32 %.0699.lcssa, -4
  %i.uf = and i32 %i.ua, -4
  %i.ug = sub nsw i32 %i.ue, %i.uf
  br label %.preheader1477

.lr.ph1648:                                       ; preds = %bb.de, %.lr.ph1648
  %.06991646 = phi i32 [ %i.ui, %.lr.ph1648 ], [ %spec.select1195, %bb.de ]
  %.57431645 = phi ptr [ %i.uh, %.lr.ph1648 ], [ %.4742, %bb.de ] ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.57431645, i64 1 ; 3 uses
  store i8 48, ptr %.57431645, align 1, !tbaa !9
  %i.ui = add nsw i32 %.06991646, -1              ; 3 uses
  %.not1122 = icmp eq i32 %i.ui, 0
  %i.uj = ptrtoint ptr %i.uh to i64
  %i.uk = and i64 %i.uj, 3
  %i.ul = icmp eq i64 %i.uk, 0
  %or.cond1198 = select i1 %.not1122, i1 true, i1 %i.ul
  br i1 %or.cond1198, label %.preheader1478, label %.lr.ph1648, !llvm.loop !38

.preheader1477:                                   ; preds = %.lr.ph1653.preheader, %.preheader1478
  %.6744.lcssa = phi ptr [ %.5743.lcssa, %.preheader1478 ], [ %scevgep1991, %.lr.ph1653.preheader ] ; 3 uses
  %.1700.lcssa = phi i32 [ %.0699.lcssa, %.preheader1478 ], [ %i.ug, %.lr.ph1653.preheader ] ; 3 uses
  %.not11231656 = icmp eq i32 %.1700.lcssa, 0
  br i1 %.not11231656, label %._crit_edge1660, label %.lr.ph1659.preheader

.lr.ph1659.preheader:                             ; preds = %.preheader1477
  %i.um = zext i32 %.1700.lcssa to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.6744.lcssa, i8 48, i64 %i.um, i1 false), !tbaa !9
  %scevgep1992 = getelementptr i8, ptr %.6744.lcssa, i64 1
  %i.un = add i32 %.1700.lcssa, -1
  %i.uo = zext i32 %i.un to i64
  %scevgep1993 = getelementptr i8, ptr %scevgep1992, i64 %i.uo
  br label %._crit_edge1660

._crit_edge1660:                                  ; preds = %.lr.ph1659.preheader, %.preheader1477
  %.7745.lcssa = phi ptr [ %.6744.lcssa, %.preheader1477 ], [ %scevgep1993, %.lr.ph1659.preheader ] ; 3 uses
  %i.up = load i32, ptr %i.e, align 4, !tbaa !10  ; 2 uses
  %i.uq = add i32 %i.up, %spec.select1195         ; 2 uses
  %i.ur = icmp sgt i32 %i.uq, %.6808
  br i1 %i.ur, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %._crit_edge1660
  %i.us = sub i32 %.6808, %spec.select1195        ; 2 uses
  store i32 %i.us, ptr %i.e, align 4, !tbaa !10
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %._crit_edge1660
  %i.ut = phi i32 [ %i.us, %bb.df ], [ %i.up, %._crit_edge1660 ] ; 5 uses
  %.not11241662 = icmp eq i32 %i.ut, 0
  br i1 %.not11241662, label %._crit_edge1667, label %.lr.ph1666.preheader

.lr.ph1666.preheader:                             ; preds = %bb.dg
  %smin = call i32 @llvm.smin.i32(i32 %.6808, i32 %i.uq)
  %xtraiter = and i32 %i.ut, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1666.prol.loopexit, label %.lr.ph1666.prol

.lr.ph1666.prol:                                  ; preds = %.lr.ph1666.preheader, %.lr.ph1666.prol
  %.37021664.prol = phi i32 [ %i.uy, %.lr.ph1666.prol ], [ %i.ut, %.lr.ph1666.preheader ]
  %.87461663.prol = phi ptr [ %i.ux, %.lr.ph1666.prol ], [ %.7745.lcssa, %.lr.ph1666.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph1666.prol ], [ 0, %.lr.ph1666.preheader ]
  %i.uu = load ptr, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 1
  store ptr %i.uv, ptr %i.g, align 8, !tbaa !14
  %i.uw = load i8, ptr %i.uu, align 1, !tbaa !9
  %i.ux = getelementptr inbounds nuw i8, ptr %.87461663.prol, i64 1 ; 3 uses
  store i8 %i.uw, ptr %.87461663.prol, align 1, !tbaa !9
  %i.uy = add nsw i32 %.37021664.prol, -1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1666.prol.loopexit, label %.lr.ph1666.prol, !llvm.loop !39

.lr.ph1666.prol.loopexit:                         ; preds = %.lr.ph1666.prol, %.lr.ph1666.preheader
  %.lcssa2464.unr = phi ptr [ poison, %.lr.ph1666.preheader ], [ %i.ux, %.lr.ph1666.prol ]
  %.37021664.unr = phi i32 [ %i.ut, %.lr.ph1666.preheader ], [ %i.uy, %.lr.ph1666.prol ]
  %.87461663.unr = phi ptr [ %.7745.lcssa, %.lr.ph1666.preheader ], [ %i.ux, %.lr.ph1666.prol ]
  %i.uz = sub i32 %spec.select1195, %smin
  %i.va = icmp ugt i32 %i.uz, -4
  br i1 %i.va, label %._crit_edge1667, label %.lr.ph1666

.lr.ph1666:                                       ; preds = %.lr.ph1666.prol.loopexit, %.lr.ph1666
  %.37021664 = phi i32 [ %i.vr, %.lr.ph1666 ], [ %.37021664.unr, %.lr.ph1666.prol.loopexit ]
  %.87461663 = phi ptr [ %i.vq, %.lr.ph1666 ], [ %.87461663.unr, %.lr.ph1666.prol.loopexit ] ; 5 uses
  %i.vb = load ptr, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 1
  store ptr %i.vc, ptr %i.g, align 8, !tbaa !14
  %i.vd = load i8, ptr %i.vb, align 1, !tbaa !9
  %i.ve = getelementptr inbounds nuw i8, ptr %.87461663, i64 1
  store i8 %i.vd, ptr %.87461663, align 1, !tbaa !9
  %i.vf = load ptr, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 1
  store ptr %i.vg, ptr %i.g, align 8, !tbaa !14
  %i.vh = load i8, ptr %i.vf, align 1, !tbaa !9
  %i.vi = getelementptr inbounds nuw i8, ptr %.87461663, i64 2
  store i8 %i.vh, ptr %i.ve, align 1, !tbaa !9
  %i.vj = load ptr, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 1
  store ptr %i.vk, ptr %i.g, align 8, !tbaa !14
  %i.vl = load i8, ptr %i.vj, align 1, !tbaa !9
  %i.vm = getelementptr inbounds nuw i8, ptr %.87461663, i64 3
  store i8 %i.vl, ptr %i.vi, align 1, !tbaa !9
  %i.vn = load ptr, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 1
  store ptr %i.vo, ptr %i.g, align 8, !tbaa !14
  %i.vp = load i8, ptr %i.vn, align 1, !tbaa !9
  %i.vq = getelementptr inbounds nuw i8, ptr %.87461663, i64 4 ; 2 uses
  store i8 %i.vp, ptr %i.vm, align 1, !tbaa !9
  %i.vr = add nsw i32 %.37021664, -4              ; 2 uses
  %.not1124.3 = icmp eq i32 %i.vr, 0
  br i1 %.not1124.3, label %._crit_edge1667, label %.lr.ph1666, !llvm.loop !40

._crit_edge1667:                                  ; preds = %.lr.ph1666.prol.loopexit, %.lr.ph1666, %bb.dg
  %.8746.lcssa = phi ptr [ %.7745.lcssa, %bb.dg ], [ %.lcssa2464.unr, %.lr.ph1666.prol.loopexit ], [ %i.vq, %.lr.ph1666 ]
  %i.vs = add i32 %spec.select1195, %i.ut
  %i.vt = sub i32 %.6808, %i.vs
  br label %bb.ea

bb.dh:                                            ; preds = %bb.db
  %i.vu = and i32 %.10788, 64
  %.not1112 = icmp eq i32 %i.vu, 0                ; 5 uses
  br i1 %.not1112, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.vv = sub nsw i32 600, %i.tp
  %i.vw = urem i32 %i.vv, 3
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di
  %i.vx = phi i32 [ %i.vw, %bb.di ], [ 0, %bb.dh ] ; 2 uses
  %i.vy = load i32, ptr %i.e, align 4, !tbaa !10
end_hunk_1
