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
  %.pr1284 = load i8, ptr %i.cg, align 1, !tbaa !8
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
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %.7873, i64 1 ; 2 uses
  %.pr1285 = load i8, ptr %i.cu, align 1, !tbaa !8
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
  %i.db = load i8, ptr %i.da, align 1, !tbaa !8   ; 3 uses
  %i.dc = add i8 %i.db, -48
  %or.cond1184 = icmp ult i8 %i.dc, 10
  br i1 %or.cond1184, label %.lr.ph1561, label %.critedge, !llvm.loop !13

.critedge:                                        ; preds = %.lr.ph1561, %.preheader1487, %bb.s
  %i.dd = phi i8 [ %.pr1285, %bb.s ], [ %i.ch, %.preheader1487 ], [ %i.db, %.lr.ph1561 ] ; 2 uses
  %.9875 = phi ptr [ %i.cu, %bb.s ], [ %.7873, %.preheader1487 ], [ %i.da, %.lr.ph1561 ] ; 3 uses
  %.1818 = phi i32 [ %i.ct, %bb.s ], [ 0, %.preheader1487 ], [ %i.cz, %.lr.ph1561 ] ; 9 uses
  %i.de = icmp eq i8 %i.dd, 46
  br i1 %i.de, label %bb.t, label %.critedge16

bb.t:                                             ; preds = %.critedge
  %i.df = getelementptr inbounds nuw i8, ptr %.9875, i64 1 ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !8   ; 4 uses
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
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !9
  %i.dt = getelementptr inbounds nuw i8, ptr %.9875, i64 2 ; 2 uses
  %.pr1286.pre = load i8, ptr %i.dt, align 1, !tbaa !8
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
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !8   ; 3 uses
  %i.eb = add i8 %i.ea, -48
  %or.cond1185 = icmp ult i8 %i.eb, 10
  br i1 %or.cond1185, label %.lr.ph1568, label %.critedge16, !llvm.loop !14

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
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !8
  %i.eg = icmp eq i8 %i.ef, 104
  %i.eh = getelementptr inbounds nuw i8, ptr %.11877, i64 2
  %spec.select = select i1 %i.eg, ptr %i.eh, ptr %i.ee
  br label %bb.ai

bb.z:                                             ; preds = %.critedge16
  %i.ei = or i32 %.2780, 32
  %i.ej = getelementptr inbounds nuw i8, ptr %.11877, i64 1 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !8
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
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !8
  switch i8 %i.eu, label %.thread1287 [
    i8 54, label %bb.ae
    i8 51, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.ev = getelementptr inbounds nuw i8, ptr %.11877, i64 2
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !8
  %i.ex = icmp eq i8 %i.ew, 52
  br i1 %i.ex, label %bb.af, label %.thread1287

bb.af:                                            ; preds = %bb.ae
  %i.ey = or i32 %.2780, 32
  %i.ez = getelementptr inbounds nuw i8, ptr %.11877, i64 3
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  %i.fa = getelementptr inbounds nuw i8, ptr %.11877, i64 2
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !8
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
  %.3781 = phi i32 [ %.2780, %.critedge16 ], [ %i.fe, %.thread1287 ], [ %.2780, %bb.ah ], [ %i.ed, %bb.y ], [ %i.ei, %bb.z ], [ %i.en, %bb.aa ], [ %i.ep, %bb.ab ], [ %i.er, %bb.ac ], [ %i.ey, %bb.af ] ; 23 uses
  %i.ff = load i8, ptr %.12878, align 1, !tbaa !8 ; 7 uses
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
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !15 ; 2 uses
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
  %i.fv = load i8, ptr %spec.store.select, align 1, !tbaa !8
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
  %i.fy = load i8, ptr %i.ga, align 1, !tbaa !8
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
  %i.gi = load i32, ptr %.1.i2359, align 4, !tbaa !9 ; 2 uses
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
  %scevgep2004.a = getelementptr i8, ptr %.1.i2308, i64 1
  %i.gm = add i32 %.123.i2310, -1
  %i.gn = zext i32 %i.gm to i64
  %scevgep2005 = getelementptr i8, ptr %scevgep2004.a, i64 %i.gn
  br label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %bb.ao, %.lr.ph40.preheader.i
  %.439.i = phi ptr [ %i.gp, %bb.ao ], [ %.1.i2308, %.lr.ph40.preheader.i ] ; 3 uses
  %.42638.i = phi i32 [ %i.gq, %bb.ao ], [ %.123.i2310, %.lr.ph40.preheader.i ]
  %i.go = load i8, ptr %.439.i, align 1, !tbaa !8
  %.not30.i = icmp eq i8 %i.go, 0
  br i1 %.not30.i, label %.critedge.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph40.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.439.i, i64 1
  %i.gq = add i32 %.42638.i, -1                   ; 2 uses
  %.not29.i = icmp eq i32 %i.gq, 0
  br i1 %.not29.i, label %.critedge.i, label %.lr.ph40.i, !llvm.loop !10

.critedge.i:                                      ; preds = %bb.ao, %.lr.ph40.i, %._crit_edge2361
  %.4.lcssa.i = phi ptr [ %.1.i.lcssa, %._crit_edge2361 ], [ %.439.i, %.lr.ph40.i ], [ %scevgep2005, %bb.ao ]
  %i.gr = ptrtoint ptr %.4.lcssa.i to i64
  br label %stbsp__strlen_limited.exit

stbsp__strlen_limited.exit:                       ; preds = %.lr.ph.i, %.lr.ph1696, %.lr.ph1696.preheader, %.lr.ph.i.preheader, %.critedge.i
  %.pn.i = phi i64 [ %i.gr, %.critedge.i ], [ %i.fs, %.lr.ph.i.preheader ], [ %i.fs, %.lr.ph1696.preheader ], [ %i.gc, %.lr.ph1696 ], [ %i.gc, %.lr.ph.i ]
  %.027.in.i = sub i64 %.pn.i, %i.fs
  %.027.i = trunc i64 %.027.in.i to i32
  store i32 %.027.i, ptr %i.e, align 4, !tbaa !9
  store i8 0, ptr %i.c, align 1, !tbaa !8
  store i8 0, ptr %i.d, align 1, !tbaa !8
  store i32 0, ptr %i.f, align 4, !tbaa !9
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
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !9
  %i.hc = trunc i32 %i.hb to i8
  store i8 %i.hc, ptr %i.u, align 1, !tbaa !8
  store i32 1, ptr %i.e, align 4, !tbaa !9
  store i8 0, ptr %i.c, align 1, !tbaa !8
  store i8 0, ptr %i.d, align 1, !tbaa !8
  store i32 0, ptr %i.f, align 4, !tbaa !9
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
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !18
  %i.hn = ptrtoint ptr %.2882 to i64
  %i.ho = ptrtoint ptr %.1932 to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = add nsw i32 %.1828, %i.hq
  store i32 %i.hr, ptr %i.hm, align 4, !tbaa !9
  br label %.backedge2427

bb.ax:                                            ; preds = %bb.ai, %bb.ai
  %i.hs = icmp eq i8 %i.ff, 65                    ; 2 uses
  %i.ht = select i1 %i.hs, ptr @__const.stbsp_vsprintfcb.hexu, ptr @__const.stbsp_vsprintfcb.hex ; 6 uses
  %i.hu = load i32, ptr %i.n, align 4             ; 3 uses
  %i.hv = icmp ult i32 %i.hu, 161
  br i1 %i.hv, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hw = load ptr, ptr %i.i, align 8
  %i.hx = zext nneg i32 %i.hu to i64
  %i.hy = getelementptr i8, ptr %i.hw, i64 %i.hx
  %i.hz = add nuw nsw i32 %i.hu, 16
  store i32 %i.hz, ptr %i.n, align 4
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.ia = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 8
  store ptr %i.ib, ptr %i.h, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ic = phi ptr [ %i.hy, %bb.ay ], [ %i.ia, %bb.az ]
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !20 ; 3 uses
  %i.ie = icmp eq i32 %.1803, -1
  %spec.store.select17 = select i1 %i.ie, i32 6, i32 %.1803 ; 7 uses
  %i.if = and i64 %i.id, 4503599627370495         ; 3 uses
  %i.ig = lshr i64 %i.id, 52
  %i.ih = trunc nuw nsw i64 %i.ig to i32
  %i.ii = and i32 %i.ih, 2047                     ; 2 uses
  %i.ij = add nsw i32 %i.ii, -1023
  %5 = or i32 %.3781, 128
  %.not11321444 = icmp slt i64 %i.id, 0
  %spec.select1187 = select i1 %.not11321444, i32 %5, i32 %.3781 ; 4 uses
  %i.ik = and i32 %spec.select1187, 128
  %.not.i1235 = icmp eq i32 %i.ik, 0
  br i1 %.not.i1235, label %bb.bb, label %.sink.split.i

bb.bb:                                            ; preds = %bb.ba
  %i.il = and i32 %spec.select1187, 4
  %.not9.i = icmp eq i32 %i.il, 0
  br i1 %.not9.i, label %bb.bc, label %.sink.split.i

bb.bc:                                            ; preds = %bb.bb
  %i.im = and i32 %spec.select1187, 2
  %.not10.i = icmp eq i32 %i.im, 0
  br i1 %.not10.i, label %stbsp__lead_sign.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bc, %bb.bb, %bb.ba
  %.sink.i = phi i8 [ 45, %bb.ba ], [ 32, %bb.bb ], [ 43, %bb.bc ]
  store i8 %.sink.i, ptr %i.j, align 1, !tbaa !8
  br label %stbsp__lead_sign.exit

stbsp__lead_sign.exit:                            ; preds = %bb.bc, %.sink.split.i
  %i.in = phi i8 [ 0, %bb.bc ], [ 1, %.sink.split.i ] ; 2 uses
  %i.io = icmp eq i32 %i.ii, 0
  br i1 %i.io, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %stbsp__lead_sign.exit
  %.not1133 = icmp eq i64 %i.if, 0
  %i.ip = select i1 %.not1133, i32 0, i32 -1022   ; 2 uses
  store i32 %i.ip, ptr %i.f, align 4, !tbaa !9
  br label %bb.bf

bb.be:                                            ; preds = %stbsp__lead_sign.exit
  %i.iq = or disjoint i64 %i.if, 4503599627370496
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ir = phi i32 [ %i.ip, %bb.bd ], [ %i.ij, %bb.be ] ; 3 uses
  %.0 = phi i64 [ %i.if, %bb.bd ], [ %i.iq, %bb.be ]
  %i.is = shl nuw nsw i64 %.0, 8
  %i.it = icmp slt i32 %spec.store.select17, 15
  %i.iu = shl nsw i32 %spec.store.select17, 2
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = lshr i64 576460752303423488, %i.iv
  %i.ix = select i1 %i.it, i64 %i.iw, i64 0
  %storemerge1134 = add nuw nsw i64 %i.is, %i.ix  ; 3 uses
  %i.iy = zext nneg i8 %i.in to i64
  %i.iz = getelementptr i8, ptr %i.c, i64 %i.iy   ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 1
  store i8 48, ptr %i.ja, align 1, !tbaa !8
  %i.jb = getelementptr i8, ptr %i.iz, i64 2
  store i8 120, ptr %i.jb, align 1, !tbaa !8
  %i.jc = or disjoint i8 %i.in, 2
  store i8 %i.jc, ptr %i.c, align 1, !tbaa !8
  %i.jd = lshr i64 %storemerge1134, 60
  %i.je = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !8
  store i8 %i.jf, ptr %i.o, align 16, !tbaa !8
  %.not1135 = icmp eq i32 %spec.store.select17, 0
  br i1 %.not1135, label %.thread2124, label %.lr.ph1683.preheader

.thread2124:                                      ; preds = %bb.bf
  store ptr %i.q, ptr %i.g, align 8, !tbaa !15
  br label %._crit_edge1684

.lr.ph1683.preheader:                             ; preds = %bb.bf
  %i.jg = load i8, ptr @stbsp__period, align 1, !tbaa !8
  store i8 %i.jg, ptr %i.q, align 1, !tbaa !8
  store ptr %i.r, ptr %i.g, align 8, !tbaa !15
  %spec.store.select18 = call i32 @llvm.umin.i32(i32 %spec.store.select17, i32 13) ; 5 uses
  %i.jh = icmp sgt i32 %spec.store.select17, %spec.store.select18
  %i.ji = sub i32 %spec.store.select17, %spec.store.select18
  %spec.select1188 = select i1 %i.jh, i32 %i.ji, i32 0 ; 2 uses
  %xtraiter2531 = and i32 %spec.store.select18, 3 ; 2 uses
  %lcmp.mod2532.not = icmp eq i32 %xtraiter2531, 0
  br i1 %lcmp.mod2532.not, label %.lr.ph1683.prol.loopexit, label %.lr.ph1683.prol

.lr.ph1683.prol:                                  ; preds = %.lr.ph1683.preheader, %.lr.ph1683.prol
  %.07201681.prol = phi i32 [ %i.jj, %.lr.ph1683.prol ], [ %spec.store.select18, %.lr.ph1683.preheader ]
  %.17391680.prol = phi ptr [ %i.jn, %.lr.ph1683.prol ], [ %i.r, %.lr.ph1683.preheader ] ; 2 uses
  %.11264.in1679.prol = phi i64 [ %.11264.prol, %.lr.ph1683.prol ], [ %storemerge1134, %.lr.ph1683.preheader ]
  %prol.iter2533 = phi i32 [ %prol.iter2533.next, %.lr.ph1683.prol ], [ 0, %.lr.ph1683.preheader ]
  %.11264.prol = shl i64 %.11264.in1679.prol, 4   ; 3 uses
  %i.jj = add nsw i32 %.07201681.prol, -1         ; 2 uses
  %i.jk = lshr i64 %.11264.prol, 60
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !8
  %i.jn = getelementptr inbounds nuw i8, ptr %.17391680.prol, i64 1 ; 3 uses
  store i8 %i.jm, ptr %.17391680.prol, align 1, !tbaa !8
  %prol.iter2533.next = add i32 %prol.iter2533, 1 ; 2 uses
  %prol.iter2533.cmp.not = icmp eq i32 %prol.iter2533.next, %xtraiter2531
  br i1 %prol.iter2533.cmp.not, label %.lr.ph1683.prol.loopexit, label %.lr.ph1683.prol, !llvm.loop !22

.lr.ph1683.prol.loopexit:                         ; preds = %.lr.ph1683.prol, %.lr.ph1683.preheader
  %.lcssa2467.unr = phi ptr [ poison, %.lr.ph1683.preheader ], [ %i.jn, %.lr.ph1683.prol ]
  %.07201681.unr = phi i32 [ %spec.store.select18, %.lr.ph1683.preheader ], [ %i.jj, %.lr.ph1683.prol ]
  %.17391680.unr = phi ptr [ %i.r, %.lr.ph1683.preheader ], [ %i.jn, %.lr.ph1683.prol ]
  %.11264.in1679.unr = phi i64 [ %storemerge1134, %.lr.ph1683.preheader ], [ %.11264.prol, %.lr.ph1683.prol ]
  %i.jo = icmp ult i32 %spec.store.select17, 4
  br i1 %i.jo, label %._crit_edge1684, label %.lr.ph1683

.lr.ph1683:                                       ; preds = %.lr.ph1683.prol.loopexit, %.lr.ph1683
  %.07201681 = phi i32 [ %i.ke, %.lr.ph1683 ], [ %.07201681.unr, %.lr.ph1683.prol.loopexit ]
  %.17391680 = phi ptr [ %i.ki, %.lr.ph1683 ], [ %.17391680.unr, %.lr.ph1683.prol.loopexit ] ; 5 uses
  %.11264.in1679 = phi i64 [ %.11264.3, %.lr.ph1683 ], [ %.11264.in1679.unr, %.lr.ph1683.prol.loopexit ] ; 4 uses
  %i.jp = lshr i64 %.11264.in1679, 56
  %i.jq = and i64 %i.jp, 15
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !8
  %i.jt = getelementptr inbounds nuw i8, ptr %.17391680, i64 1
  store i8 %i.js, ptr %.17391680, align 1, !tbaa !8
  %i.ju = lshr i64 %.11264.in1679, 52
  %i.jv = and i64 %i.ju, 15
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !8
  %i.jy = getelementptr inbounds nuw i8, ptr %.17391680, i64 2
  store i8 %i.jx, ptr %i.jt, align 1, !tbaa !8
  %i.jz = lshr i64 %.11264.in1679, 48
  %i.ka = and i64 %i.jz, 15
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !8
  %i.kd = getelementptr inbounds nuw i8, ptr %.17391680, i64 3
  store i8 %i.kc, ptr %i.jy, align 1, !tbaa !8
  %.11264.3 = shl i64 %.11264.in1679, 16          ; 2 uses
  %i.ke = add nsw i32 %.07201681, -4              ; 2 uses
  %i.kf = lshr i64 %.11264.3, 60
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !8
  %i.ki = getelementptr inbounds nuw i8, ptr %.17391680, i64 4 ; 2 uses
  store i8 %i.kh, ptr %i.kd, align 1, !tbaa !8
  %.not1136.3 = icmp eq i32 %i.ke, 0
  br i1 %.not1136.3, label %._crit_edge1684, label %.lr.ph1683, !llvm.loop !24

._crit_edge1684:                                  ; preds = %.lr.ph1683.prol.loopexit, %.lr.ph1683, %.thread2124
  %spec.select11882129 = phi i32 [ 0, %.thread2124 ], [ %spec.select1188, %.lr.ph1683 ], [ %spec.select1188, %.lr.ph1683.prol.loopexit ]
  %.07382128 = phi ptr [ %i.q, %.thread2124 ], [ %i.r, %.lr.ph1683 ], [ %i.r, %.lr.ph1683.prol.loopexit ]
  %.1739.lcssa = phi ptr [ %i.q, %.thread2124 ], [ %.lcssa2467.unr, %.lr.ph1683.prol.loopexit ], [ %i.ki, %.lr.ph1683 ]
  %i.kj = select i1 %i.hs, i8 80, i8 112
  store i8 %i.kj, ptr %i.s, align 1, !tbaa !8
  %i.kk = icmp slt i32 %i.ir, 0
  br i1 %i.kk, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %._crit_edge1684
  store i8 45, ptr %i.t, align 1, !tbaa !8
  %i.kl = sub nsw i32 0, %i.ir
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge1684
  store i8 43, ptr %i.t, align 1, !tbaa !8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.promoted1686 = phi i32 [ %i.ir, %bb.bh ], [ %i.kl, %bb.bg ] ; 8 uses
  %i.km = icmp samesign ult i32 %.promoted1686, 1000 ; 2 uses
  %i.kn = icmp samesign ugt i32 %.promoted1686, 99
  %i.ko = icmp samesign ugt i32 %.promoted1686, 9
  %i.kp = select i1 %i.ko, i32 4, i32 3
  %i.kq = select i1 %i.kn, i32 5, i32 %i.kp
  %i.kr = select i1 %i.km, i32 %i.kq, i32 6       ; 4 uses
  %i.ks = trunc nuw nsw i32 %i.kr to i8
  store i8 %i.ks, ptr %i.d, align 1, !tbaa !8
  %.lhs.trunc = trunc nsw i32 %.promoted1686 to i16
  %i.kt = urem i16 %.lhs.trunc, 10
  %i.ku = trunc nuw nsw i16 %i.kt to i8
  %i.kv = or disjoint i8 %i.ku, 48
  %i.kw = zext nneg i32 %i.kr to i64              ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.kw
  store i8 %i.kv, ptr %i.kx, align 1, !tbaa !8
  %i.ky = icmp samesign ult i32 %i.kr, 4
  br i1 %i.ky, label %._crit_edge1691, label %.lr.ph1690

.lr.ph1690:                                       ; preds = %bb.bi
  %i.kz = udiv i32 %.promoted1686, 10
  %i.la = urem i32 %i.kz, 10
  %i.lb = trunc nuw nsw i32 %i.la to i8
  %i.lc = or disjoint i8 %i.lb, 48
  %i.ld = getelementptr i8, ptr %i.d, i64 %i.kw
  %i.le = getelementptr i8, ptr %i.ld, i64 -1
  store i8 %i.lc, ptr %i.le, align 1, !tbaa !8
  %i.lf = icmp eq i32 %i.kr, 4
  br i1 %i.lf, label %._crit_edge1691, label %.lr.ph1690.1

.lr.ph1690.1:                                     ; preds = %.lr.ph1690
  %i.lg = add nsw i64 %i.kw, -2                   ; 2 uses
  %i.lh = udiv i32 %.promoted1686, 100
  %i.li = urem i32 %i.lh, 10
  %i.lj = trunc nuw nsw i32 %i.li to i8
  %i.lk = or disjoint i8 %i.lj, 48
  %i.ll = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.lg
  store i8 %i.lk, ptr %i.ll, align 1, !tbaa !8
  br i1 %i.km, label %._crit_edge1691, label %.lr.ph1690.2

.lr.ph1690.2:                                     ; preds = %.lr.ph1690.1
  %i.lm = udiv i32 %.promoted1686, 1000
  %i.ln = urem i32 %i.lm, 10
  %i.lo = trunc nuw nsw i32 %i.ln to i8
  %i.lp = or disjoint i8 %i.lo, 48
  %i.lq = getelementptr i8, ptr %i.d, i64 %i.kw
  %i.lr = getelementptr i8, ptr %i.lq, i64 -3
  store i8 %i.lp, ptr %i.lr, align 1, !tbaa !8
  %i.ls = icmp ult i64 %i.lg, 5
  br i1 %i.ls, label %._crit_edge1691, label %.lr.ph1690.3

.lr.ph1690.3:                                     ; preds = %.lr.ph1690.2
  %i.lt = udiv i32 %.promoted1686, 10000
  %i.lu = urem i32 %i.lt, 10
  %i.lv = trunc nuw nsw i32 %i.lu to i8
  %i.lw = or disjoint i8 %i.lv, 48
  %i.lx = getelementptr i8, ptr %i.d, i64 %i.kw
  %i.ly = getelementptr i8, ptr %i.lx, i64 -4
  store i8 %i.lw, ptr %i.ly, align 1, !tbaa !8
  br label %._crit_edge1691

._crit_edge1691:                                  ; preds = %.lr.ph1690, %.lr.ph1690.1, %.lr.ph1690.2, %.lr.ph1690.3, %bb.bi
  %i.lz = ptrtoint ptr %.1739.lcssa to i64        ; 2 uses
  %i.ma = ptrtoint ptr %.07382128 to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %i.mc = trunc i64 %i.mb to i32
  store i32 %i.mc, ptr %i.f, align 4, !tbaa !9
  %i.md = sub i64 %i.lz, %i.p
  %i.me = trunc i64 %i.md to i32
  store i32 %i.me, ptr %i.e, align 4, !tbaa !9
  br label %bb.gg

bb.bj:                                            ; preds = %bb.ai, %bb.ai
  %i.mf = icmp eq i8 %i.ff, 71
  %i.mg = select i1 %i.mf, ptr @__const.stbsp_vsprintfcb.hexu, ptr @__const.stbsp_vsprintfcb.hex ; 2 uses
  %i.mh = load i32, ptr %i.n, align 4             ; 3 uses
  %i.mi = icmp ult i32 %i.mh, 161
  br i1 %i.mi, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.mj = load ptr, ptr %i.i, align 8
  %i.mk = zext nneg i32 %i.mh to i64
  %i.ml = getelementptr i8, ptr %i.mj, i64 %i.mk
  %i.mm = add nuw nsw i32 %i.mh, 16
  store i32 %i.mm, ptr %i.n, align 4
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.mn = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.mo = getelementptr i8, ptr %i.mn, i64 8
  store ptr %i.mo, ptr %i.h, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.mp = phi ptr [ %i.ml, %bb.bk ], [ %i.mn, %bb.bl ]
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !20
  %i.mr = icmp eq i32 %.1803, -1
  %spec.store.select19 = call i32 @llvm.umax.i32(i32 %.1803, i32 1)
  %.2804 = select i1 %i.mr, i32 6, i32 %spec.store.select19 ; 6 uses
  %i.ms = add i32 %.2804, 2147483647
  %i.mt = or i32 %i.ms, -2147483648
  %i.mu = call i32 @stbsp__real_to_str(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, double noundef %i.mq, i32 noundef %i.mt)
  %.not1111 = icmp eq i32 %i.mu, 0
  %i.mv = or i32 %.3781, 128
  %.5783 = select i1 %.not1111, i32 %.3781, i32 %i.mv ; 4 uses
  %i.mw = load i32, ptr %i.e, align 4, !tbaa !9   ; 2 uses
  %spec.store.select1442 = call i32 @llvm.umin.i32(i32 %i.mw, i32 %.2804) ; 2 uses
  %i.mx = icmp ugt i32 %spec.store.select1442, 1
  br i1 %i.mx, label %.lr.ph1609, label %.critedge22

.lr.ph1609:                                       ; preds = %bb.bm
  %i.my = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.mz = call i32 @llvm.umin.i32(i32 %.2804, i32 %i.mw)
  %umin = zext i32 %i.mz to i64
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph1609, %bb.bo
  %indvars.iv = phi i64 [ %umin, %.lr.ph1609 ], [ %indvars.iv.next, %bb.bo ] ; 2 uses
  %.38051607 = phi i32 [ %.2804, %.lr.ph1609 ], [ %i.ng, %bb.bo ] ; 2 uses
  %i.na = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.nb = add i32 %i.na, -1                       ; 3 uses
  %i.nc = zext i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.nc
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !8
  %i.nf = icmp eq i8 %i.ne, 48
  br i1 %i.nf, label %bb.bo, label %.critedge22

bb.bo:                                            ; preds = %bb.bn
  %i.ng = add nsw i32 %.38051607, -1              ; 3 uses
  %i.nh = icmp ugt i32 %i.nb, 1
  %i.ni = icmp ne i32 %i.ng, 0
  %or.cond = select i1 %i.nh, i1 %i.ni, i1 false
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %or.cond, label %bb.bn, label %.critedge22, !llvm.loop !25

.critedge22:                                      ; preds = %bb.bn, %bb.bo, %bb.bm
  %storemerge1443.lcssa1605 = phi i32 [ %spec.store.select1442, %bb.bm ], [ %i.nb, %bb.bo ], [ %i.na, %bb.bn ] ; 6 uses
  %.3805.lcssa = phi i32 [ %.2804, %bb.bm ], [ %i.ng, %bb.bo ], [ %.38051607, %bb.bn ] ; 3 uses
  store i32 %storemerge1443.lcssa1605, ptr %i.e, align 4
  %i.nj = load i32, ptr %i.f, align 4, !tbaa !9   ; 6 uses
  %i.nk = icmp slt i32 %i.nj, -3
  %i.nl = icmp sgt i32 %i.nj, %.2804
  %or.cond1189 = or i1 %i.nk, %i.nl
  br i1 %or.cond1189, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %.critedge22
  %i.nm = icmp sgt i32 %.3805.lcssa, %storemerge1443.lcssa1605
  br i1 %i.nm, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nn = add i32 %storemerge1443.lcssa1605, -1
  br label %bb.bz

bb.br:                                            ; preds = %bb.bp
  %spec.select1190 = call i32 @llvm.usub.sat.i32(i32 %.3805.lcssa, i32 1)
  br label %bb.bz

bb.bs:                                            ; preds = %.critedge22
  %i.no = icmp sgt i32 %i.nj, 0
  br i1 %i.no, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.np = icmp slt i32 %i.nj, %storemerge1443.lcssa1605
  %i.nq = sub i32 %storemerge1443.lcssa1605, %i.nj
  %i.nr = select i1 %i.np, i32 %i.nq, i32 0
  br label %bb.cx

bb.bu:                                            ; preds = %bb.bs
  %i.ns = call i32 @llvm.smin.i32(i32 %.3805.lcssa, i32 %storemerge1443.lcssa1605)
  %i.nt = sub nsw i32 %i.ns, %i.nj
  br label %bb.cx

bb.bv:                                            ; preds = %bb.ai, %bb.ai
  %i.nu = icmp eq i8 %i.ff, 69
  %i.nv = select i1 %i.nu, ptr @__const.stbsp_vsprintfcb.hexu, ptr @__const.stbsp_vsprintfcb.hex
  %i.nw = load i32, ptr %i.n, align 4             ; 3 uses
  %i.nx = icmp ult i32 %i.nw, 161
  br i1 %i.nx, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ny = load ptr, ptr %i.i, align 8
  %i.nz = zext nneg i32 %i.nw to i64
  %i.oa = getelementptr i8, ptr %i.ny, i64 %i.nz
  %i.ob = add nuw nsw i32 %i.nw, 16
  store i32 %i.ob, ptr %i.n, align 4
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.oc = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.od = getelementptr i8, ptr %i.oc, i64 8
  store ptr %i.od, ptr %i.h, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.oe = phi ptr [ %i.oa, %bb.bw ], [ %i.oc, %bb.bx ]
  %i.of = load double, ptr %i.oe, align 8, !tbaa !20
  %i.og = icmp eq i32 %.1803, -1
  %spec.store.select23 = select i1 %i.og, i32 6, i32 %.1803 ; 2 uses
  %i.oh = or i32 %spec.store.select23, -2147483648
  %i.oi = call i32 @stbsp__real_to_str(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, double noundef %i.of, i32 noundef %i.oh)
  %.not1110 = icmp eq i32 %i.oi, 0
  %i.oj = or i32 %.3781, 128
  %spec.select1191 = select i1 %.not1110, i32 %.3781, i32 %i.oj
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.br, %bb.bq
  %.4806 = phi i32 [ %i.nn, %bb.bq ], [ %spec.select1190, %bb.br ], [ %spec.store.select23, %bb.by ] ; 4 uses
  %.6784 = phi i32 [ %.5783, %bb.bq ], [ %.5783, %bb.br ], [ %spec.select1191, %bb.by ] ; 5 uses
  %.0736 = phi ptr [ %i.mg, %bb.bq ], [ %i.mg, %bb.br ], [ %i.nv, %bb.by ]
  store i8 0, ptr %i.d, align 1, !tbaa !8
  store i8 0, ptr %i.c, align 1, !tbaa !8
  %i.ok = and i32 %.6784, 128
  %.not.i1236 = icmp eq i32 %i.ok, 0
  br i1 %.not.i1236, label %bb.ca, label %.sink.split.i1237

bb.ca:                                            ; preds = %bb.bz
  %i.ol = and i32 %.6784, 4
  %.not9.i1239 = icmp eq i32 %i.ol, 0
  br i1 %.not9.i1239, label %bb.cb, label %.sink.split.i1237

bb.cb:                                            ; preds = %bb.ca
  %i.om = and i32 %.6784, 2
  %.not10.i1240 = icmp eq i32 %i.om, 0
  br i1 %.not10.i1240, label %stbsp__lead_sign.exit1241, label %.sink.split.i1237

.sink.split.i1237:                                ; preds = %bb.cb, %bb.ca, %bb.bz
  %.sink.i1238 = phi i8 [ 45, %bb.bz ], [ 32, %bb.ca ], [ 43, %bb.cb ]
  store i8 1, ptr %i.c, align 1, !tbaa !8
  store i8 %.sink.i1238, ptr %i.j, align 1, !tbaa !8
  br label %stbsp__lead_sign.exit1241

stbsp__lead_sign.exit1241:                        ; preds = %bb.cb, %.sink.split.i1237
  %i.on = load i32, ptr %i.f, align 4, !tbaa !9   ; 4 uses
  %i.oo = icmp eq i32 %i.on, 28672
  %i.op = load ptr, ptr %i.g, align 8, !tbaa !15  ; 14 uses
  %i.oq = ptrtoaddr ptr %i.op to i64
  br i1 %i.oo, label %bb.gg, label %bb.cc

bb.cc:                                            ; preds = %stbsp__lead_sign.exit1241
  %i.or = load i8, ptr %i.op, align 1, !tbaa !8
  store i8 %i.or, ptr %i.o, align 16, !tbaa !8
  %.not1131 = icmp eq i32 %.4806, 0
  br i1 %.not1131, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.os = load i8, ptr @stbsp__period, align 1, !tbaa !8
  store i8 %i.os, ptr %i.q, align 1, !tbaa !8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.2740 = phi ptr [ %i.r, %bb.cd ], [ %i.q, %bb.cc ] ; 8 uses
  %.27402382 = ptrtoaddr ptr %.2740 to i64
  %i.ot = load i32, ptr %i.e, align 4, !tbaa !9   ; 2 uses
  %i.ou = add i32 %i.ot, -1
  %i.ov = icmp ugt i32 %i.ou, %.4806
  br i1 %i.ov, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ow = add nuw nsw i32 %.4806, 1               ; 2 uses
  store i32 %i.ow, ptr %i.e, align 4, !tbaa !9
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ox = phi i32 [ %i.ow, %bb.cf ], [ %i.ot, %bb.ce ] ; 5 uses
  %i.oy = icmp ugt i32 %i.ox, 1
  br i1 %i.oy, label %iter.check2399, label %._crit_edge1673

iter.check2399:                                   ; preds = %bb.cg
  %wide.trip.count = zext i32 %i.ox to i64        ; 4 uses
  %i.oz = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check2384 = icmp ult i32 %i.ox, 9
  br i1 %min.iters.check2384, label %.lr.ph1672.preheader, label %vector.memcheck2381

vector.memcheck2381:                              ; preds = %iter.check2399
  %i.pa = sub i64 %.27402382, %i.oq
  %i.pb = add i64 %i.pa, -2
  %diff.check2383 = icmp ult i64 %i.pb, 31
  br i1 %diff.check2383, label %.lr.ph1672.preheader, label %vector.main.loop.iter.check2385

vector.main.loop.iter.check2385:                  ; preds = %vector.memcheck2381
  %min.iters.check2386 = icmp ult i32 %i.ox, 33
  br i1 %min.iters.check2386, label %vec.epilog.ph2403, label %vector.ph2387

vector.ph2387:                                    ; preds = %vector.main.loop.iter.check2385
  %i.pc = and i64 %i.oz, 24
  %n.vec2388 = and i64 %i.oz, -32                 ; 5 uses
  %i.pd = or disjoint i64 %n.vec2388, 1
  %i.pe = getelementptr i8, ptr %.2740, i64 %n.vec2388 ; 2 uses
  br label %vector.body2389

vector.body2389:                                  ; preds = %vector.body2389, %vector.ph2387
  %index2390 = phi i64 [ 0, %vector.ph2387 ], [ %index.next2394, %vector.body2389 ] ; 3 uses
  %next.gep2391 = getelementptr i8, ptr %.2740, i64 %index2390 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.op, i64 %index2390 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 1
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 17
  %wide.load2392.a = load <16 x i8>, ptr %i.pg, align 1, !tbaa !8
  %wide.load2393 = load <16 x i8>, ptr %i.ph, align 1, !tbaa !8
  %i.pi = getelementptr i8, ptr %next.gep2391, i64 16
  store <16 x i8> %wide.load2392.a, ptr %next.gep2391, align 1, !tbaa !8
  store <16 x i8> %wide.load2393, ptr %i.pi, align 1, !tbaa !8
  %index.next2394 = add nuw i64 %index2390, 32    ; 2 uses
  %i.pj = icmp eq i64 %index.next2394, %n.vec2388
  br i1 %i.pj, label %middle.block2395, label %vector.body2389, !llvm.loop !26

middle.block2395:                                 ; preds = %vector.body2389
  %cmp.n2396 = icmp eq i64 %i.oz, %n.vec2388
  br i1 %cmp.n2396, label %._crit_edge1673, label %vec.epilog.iter.check2401

vec.epilog.iter.check2401:                        ; preds = %middle.block2395
  %min.epilog.iters.check2402 = icmp eq i64 %i.pc, 0
  br i1 %min.epilog.iters.check2402, label %.lr.ph1672.preheader, label %vec.epilog.ph2403, !prof !29

vec.epilog.ph2403:                                ; preds = %vector.main.loop.iter.check2385, %vec.epilog.iter.check2401
  %vec.epilog.resume.val2397 = phi i64 [ %n.vec2388, %vec.epilog.iter.check2401 ], [ 0, %vector.main.loop.iter.check2385 ]
  %n.vec2404 = and i64 %i.oz, -8                  ; 4 uses
  %i.pk = or disjoint i64 %n.vec2404, 1
  %i.pl = getelementptr i8, ptr %.2740, i64 %n.vec2404 ; 2 uses
  br label %vec.epilog.vector.body2405

vec.epilog.vector.body2405:                       ; preds = %vec.epilog.vector.body2405, %vec.epilog.ph2403
  %index2406 = phi i64 [ %vec.epilog.resume.val2397, %vec.epilog.ph2403 ], [ %index.next2409, %vec.epilog.vector.body2405 ] ; 3 uses
  %next.gep2407 = getelementptr i8, ptr %.2740, i64 %index2406
  %i.pm = getelementptr inbounds nuw i8, ptr %i.op, i64 %index2406
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 1
  %wide.load2408 = load <8 x i8>, ptr %i.pn, align 1, !tbaa !8
  store <8 x i8> %wide.load2408, ptr %next.gep2407, align 1, !tbaa !8
  %index.next2409 = add nuw i64 %index2406, 8     ; 2 uses
  %i.po = icmp eq i64 %index.next2409, %n.vec2404
  br i1 %i.po, label %vec.epilog.middle.block2410, label %vec.epilog.vector.body2405, !llvm.loop !30

vec.epilog.middle.block2410:                      ; preds = %vec.epilog.vector.body2405
  %cmp.n2411 = icmp eq i64 %i.oz, %n.vec2404
  br i1 %cmp.n2411, label %._crit_edge1673, label %.lr.ph1672.preheader

.lr.ph1672.preheader:                             ; preds = %vector.memcheck2381, %iter.check2399, %vec.epilog.iter.check2401, %vec.epilog.middle.block2410
  %indvars.iv1995.ph = phi i64 [ 1, %iter.check2399 ], [ 1, %vector.memcheck2381 ], [ %i.pd, %vec.epilog.iter.check2401 ], [ %i.pk, %vec.epilog.middle.block2410 ] ; 4 uses
  %.37411669.ph = phi ptr [ %.2740, %iter.check2399 ], [ %.2740, %vector.memcheck2381 ], [ %i.pe, %vec.epilog.iter.check2401 ], [ %i.pl, %vec.epilog.middle.block2410 ] ; 2 uses
  %i.pp = sub nsw i64 %wide.trip.count, %indvars.iv1995.ph
  %xtraiter2528 = and i64 %i.pp, 7                ; 2 uses
  %lcmp.mod2529.not = icmp eq i64 %xtraiter2528, 0
  br i1 %lcmp.mod2529.not, label %.lr.ph1672.prol.loopexit, label %.lr.ph1672.prol

.lr.ph1672.prol:                                  ; preds = %.lr.ph1672.preheader, %.lr.ph1672.prol
  %indvars.iv1995.prol = phi i64 [ %indvars.iv.next1996.prol, %.lr.ph1672.prol ], [ %indvars.iv1995.ph, %.lr.ph1672.preheader ] ; 2 uses
  %.37411669.prol = phi ptr [ %i.ps, %.lr.ph1672.prol ], [ %.37411669.ph, %.lr.ph1672.preheader ] ; 2 uses
  %prol.iter2530 = phi i64 [ %prol.iter2530.next, %.lr.ph1672.prol ], [ 0, %.lr.ph1672.preheader ]
  %i.pq = getelementptr inbounds nuw i8, ptr %i.op, i64 %indvars.iv1995.prol
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !8
  %i.ps = getelementptr inbounds nuw i8, ptr %.37411669.prol, i64 1 ; 3 uses
  store i8 %i.pr, ptr %.37411669.prol, align 1, !tbaa !8
  %indvars.iv.next1996.prol = add nuw nsw i64 %indvars.iv1995.prol, 1 ; 2 uses
  %prol.iter2530.next = add i64 %prol.iter2530, 1 ; 2 uses
  %prol.iter2530.cmp.not = icmp eq i64 %prol.iter2530.next, %xtraiter2528
  br i1 %prol.iter2530.cmp.not, label %.lr.ph1672.prol.loopexit, label %.lr.ph1672.prol, !llvm.loop !31

.lr.ph1672.prol.loopexit:                         ; preds = %.lr.ph1672.prol, %.lr.ph1672.preheader
  %.lcssa2465.unr = phi ptr [ poison, %.lr.ph1672.preheader ], [ %i.ps, %.lr.ph1672.prol ]
  %indvars.iv1995.unr = phi i64 [ %indvars.iv1995.ph, %.lr.ph1672.preheader ], [ %indvars.iv.next1996.prol, %.lr.ph1672.prol ]
  %.37411669.unr = phi ptr [ %.37411669.ph, %.lr.ph1672.preheader ], [ %i.ps, %.lr.ph1672.prol ]
  %i.pt = sub nsw i64 %indvars.iv1995.ph, %wide.trip.count
  %i.pu = icmp ugt i64 %i.pt, -8
  br i1 %i.pu, label %._crit_edge1673, label %.lr.ph1672

.lr.ph1672:                                       ; preds = %.lr.ph1672.prol.loopexit, %.lr.ph1672
  %indvars.iv1995 = phi i64 [ %indvars.iv.next1996.7, %.lr.ph1672 ], [ %indvars.iv1995.unr, %.lr.ph1672.prol.loopexit ] ; 9 uses
  %.37411669 = phi ptr [ %i.qz, %.lr.ph1672 ], [ %.37411669.unr, %.lr.ph1672.prol.loopexit ] ; 9 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.op, i64 %indvars.iv1995
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !8
  %i.px = getelementptr inbounds nuw i8, ptr %.37411669, i64 1
  store i8 %i.pw, ptr %.37411669, align 1, !tbaa !8
  %i.py = getelementptr inbounds nuw i8, ptr %i.op, i64 %indvars.iv1995
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 1
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !8
  %i.qb = getelementptr inbounds nuw i8, ptr %.37411669, i64 2
  store i8 %i.qa, ptr %i.px, align 1, !tbaa !8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.op, i64 %indvars.iv1995
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 2
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !8
  %i.qf = getelementptr inbounds nuw i8, ptr %.37411669, i64 3
  store i8 %i.qe, ptr %i.qb, align 1, !tbaa !8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.op, i64 %indvars.iv1995
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 3
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !8
  %i.qj = getelementptr inbounds nuw i8, ptr %.37411669, i64 4
  store i8 %i.qi, ptr %i.qf, align 1, !tbaa !8
  %i.qk = getelementptr inbounds nuw i8, ptr %i.op, i64 %indvars.iv1995
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !8
  %i.qn = getelementptr inbounds nuw i8, ptr %.37411669, i64 5
  store i8 %i.qm, ptr %i.qj, align 1, !tbaa !8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.op, i64 %indvars.iv1995
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 5
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !8
  %i.qr = getelementptr inbounds nuw i8, ptr %.37411669, i64 6
  store i8 %i.qq, ptr %i.qn, align 1, !tbaa !8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.op, i64 %indvars.iv1995
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 6
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !8
  %i.qv = getelementptr inbounds nuw i8, ptr %.37411669, i64 7
  store i8 %i.qu, ptr %i.qr, align 1, !tbaa !8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.op, i64 %indvars.iv1995
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 7
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !8
  %i.qz = getelementptr inbounds nuw i8, ptr %.37411669, i64 8 ; 2 uses
  store i8 %i.qy, ptr %i.qv, align 1, !tbaa !8
  %indvars.iv.next1996.7 = add nuw nsw i64 %indvars.iv1995, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next1996.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge1673, label %.lr.ph1672, !llvm.loop !32

._crit_edge1673:                                  ; preds = %.lr.ph1672.prol.loopexit, %.lr.ph1672, %middle.block2395, %vec.epilog.middle.block2410, %bb.cg
  %.3741.lcssa = phi ptr [ %.2740, %bb.cg ], [ %i.pl, %vec.epilog.middle.block2410 ], [ %i.pe, %middle.block2395 ], [ %.lcssa2465.unr, %.lr.ph1672.prol.loopexit ], [ %i.qz, %.lr.ph1672 ]
  %.neg1449 = add i32 %.4806, 1
  %i.ra = sub i32 %.neg1449, %i.ox
  %i.rb = getelementptr inbounds nuw i8, ptr %.0736, i64 14
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !8
  store i8 %i.rc, ptr %i.s, align 1, !tbaa !8
  %i.rd = icmp slt i32 %i.on, 1
  br i1 %i.rd, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %._crit_edge1673
  store i8 45, ptr %i.t, align 1, !tbaa !8
  %i.re = sub nsw i32 1, %i.on
  br label %bb.cj

bb.ci:                                            ; preds = %._crit_edge1673
  %i.rf = add nsw i32 %i.on, -1
  store i8 43, ptr %i.t, align 1, !tbaa !8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.rg = phi i32 [ %i.rf, %bb.ci ], [ %i.re, %bb.ch ] ; 4 uses
  %i.rh = icmp samesign ugt i32 %i.rg, 99         ; 2 uses
  %i.ri = select i1 %i.rh, i32 5, i32 4           ; 2 uses
  %i.rj = trunc nuw nsw i32 %i.ri to i8
  store i8 %i.rj, ptr %i.d, align 1, !tbaa !8
  %i.rk = urem i32 %i.rg, 10
  %i.rl = trunc nuw nsw i32 %i.rk to i8
  %i.rm = or disjoint i8 %i.rl, 48
  %i.rn = zext nneg i32 %i.ri to i64              ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.rn
  store i8 %i.rm, ptr %i.ro, align 1, !tbaa !8
  %i.rp = sdiv i32 %i.rg, 10                      ; 2 uses
  %i.rq = srem i32 %i.rp, 10
  %i.rr = trunc nsw i32 %i.rq to i8
  %i.rs = add nsw i8 %i.rr, 48
  %i.rt = getelementptr i8, ptr %i.d, i64 %i.rn
  %i.ru = getelementptr i8, ptr %i.rt, i64 -1
  store i8 %i.rs, ptr %i.ru, align 1, !tbaa !8
  br i1 %i.rh, label %bb.ck, label %.loopexit1476

bb.ck:                                            ; preds = %bb.cj
  %i.rv = sdiv i32 %i.rg, 100                     ; 2 uses
  %i.rw = srem i32 %i.rv, 10
  %i.rx = trunc nsw i32 %i.rw to i8
  %i.ry = add nsw i8 %i.rx, 48
  %i.rz = getelementptr i8, ptr %i.d, i64 %i.rn
  %i.sa = getelementptr i8, ptr %i.rz, i64 -2
  store i8 %i.ry, ptr %i.sa, align 1, !tbaa !8
  br label %.loopexit1476

bb.cl:                                            ; preds = %bb.ai
  %i.sb = load i32, ptr %i.n, align 4             ; 3 uses
  %i.sc = icmp ult i32 %i.sb, 161
  br i1 %i.sc, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.sd = load ptr, ptr %i.i, align 8
  %i.se = zext nneg i32 %i.sb to i64
  %i.sf = getelementptr i8, ptr %i.sd, i64 %i.se
  %i.sg = add nuw nsw i32 %i.sb, 16
  store i32 %i.sg, ptr %i.n, align 4
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.sh = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.si = getelementptr i8, ptr %i.sh, i64 8
  store ptr %i.si, ptr %i.h, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %i.sj = phi ptr [ %i.sf, %bb.cm ], [ %i.sh, %bb.cn ]
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !20 ; 2 uses
  %.pre2042 = and i32 %.3781, 256
  %i.sl = icmp eq i32 %.pre2042, 0
  br i1 %i.sl, label %.loopexit1485, label %bb.cp

bb.cp:                                            ; preds = %.thread2130, %bb.co
  %.07032138 = phi double [ %i.adr, %.thread2130 ], [ %i.sk, %bb.co ] ; 5 uses
  %.77852137 = phi i32 [ %.16794, %.thread2130 ], [ %.3781, %bb.co ] ; 11 uses
  %.58072135.a = phi i32 [ %.10812, %.thread2130 ], [ %.1803, %bb.co ] ; 9 uses
  %i.sm = and i32 %.77852137, 2048
  %.not1108 = icmp eq i32 %i.sm, 0
  %spec.store.select24 = select i1 %.not1108, double 1.000000e+03, double 1.024000e+03 ; 9 uses
  %i.sn = icmp ult i32 %.77852137, 67108864
  br i1 %i.sn, label %.lr.ph1599, label %.loopexit1485

.lr.ph1599:                                       ; preds = %bb.cp
  %i.so = fneg double %spec.store.select24        ; 4 uses
  %i.sp = fcmp olt double %.07032138, %spec.store.select24
  %i.sq = fcmp ogt double %.07032138, %i.so
  %or.cond1193 = and i1 %i.sp, %i.sq
  br i1 %or.cond1193, label %.loopexit1485, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph1599
  %i.sr = fdiv double %.07032138, %spec.store.select24 ; 5 uses
  %i.ss = add nuw nsw i32 %.77852137, 16777216    ; 2 uses
  %i.st = icmp ult i32 %.77852137, 50331648
  br i1 %i.st, label %bb.cr, label %.loopexit1485

bb.cr:                                            ; preds = %bb.cq
  %i.su = fcmp olt double %i.sr, %spec.store.select24
  %i.sv = fcmp ogt double %i.sr, %i.so
  %or.cond1193.1 = and i1 %i.su, %i.sv
  br i1 %or.cond1193.1, label %.loopexit1485, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.sw = fdiv double %i.sr, %spec.store.select24 ; 5 uses
  %i.sx = add nuw nsw i32 %.77852137, 33554432    ; 2 uses
  %i.sy = icmp ult i32 %.77852137, 33554432
  br i1 %i.sy, label %bb.ct, label %.loopexit1485

bb.ct:                                            ; preds = %bb.cs
  %i.sz = fcmp olt double %i.sw, %spec.store.select24
  %i.ta = fcmp ogt double %i.sw, %i.so
  %or.cond1193.2 = and i1 %i.sz, %i.ta
  br i1 %or.cond1193.2, label %.loopexit1485, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.tb = fdiv double %i.sw, %spec.store.select24 ; 5 uses
  %i.tc = add nuw nsw i32 %.77852137, 50331648    ; 2 uses
  %i.td = icmp ult i32 %.77852137, 16777216
  br i1 %i.td, label %bb.cv, label %.loopexit1485

bb.cv:                                            ; preds = %bb.cu
  %i.te = fcmp olt double %i.tb, %spec.store.select24
  %i.tf = fcmp ogt double %i.tb, %i.so
  %or.cond1193.3 = and i1 %i.te, %i.tf
  br i1 %or.cond1193.3, label %.loopexit1485, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.tg = fdiv double %i.tb, %spec.store.select24
  %i.th = or disjoint i32 %.77852137, 67108864
  br label %.loopexit1485

.loopexit1485:                                    ; preds = %.lr.ph1599, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cp, %bb.co
  %.58072136 = phi i32 [ %.1803, %bb.co ], [ %.58072135.a, %bb.cp ], [ %.58072135.a, %bb.cw ], [ %.58072135.a, %bb.cv ], [ %.58072135.a, %bb.cu ], [ %.58072135.a, %bb.ct ], [ %.58072135.a, %bb.cs ], [ %.58072135.a, %bb.cr ], [ %.58072135.a, %bb.cq ], [ %.58072135.a, %.lr.ph1599 ] ; 2 uses
  %.9787 = phi i32 [ %.3781, %bb.co ], [ %.77852137, %bb.cp ], [ %.77852137, %.lr.ph1599 ], [ %i.ss, %bb.cq ], [ %i.ss, %bb.cr ], [ %i.sx, %bb.cs ], [ %i.sx, %bb.ct ], [ %i.tc, %bb.cu ], [ %i.tc, %bb.cv ], [ %i.th, %bb.cw ] ; 2 uses
  %.2705 = phi double [ %i.sk, %bb.co ], [ %.07032138, %bb.cp ], [ %.07032138, %.lr.ph1599 ], [ %i.sr, %bb.cq ], [ %i.sr, %bb.cr ], [ %i.sw, %bb.cs ], [ %i.sw, %bb.ct ], [ %i.tb, %bb.cu ], [ %i.tb, %bb.cv ], [ %i.tg, %bb.cw ]
  %i.ti = icmp eq i32 %.58072136, -1
  %spec.store.select25 = select i1 %i.ti, i32 6, i32 %.58072136 ; 2 uses
  %i.tj = call i32 @stbsp__real_to_str(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, double noundef %.2705, i32 noundef %spec.store.select25)
  %.not1109 = icmp eq i32 %i.tj, 0
  %i.tk = or i32 %.9787, 128
  %spec.select1194 = select i1 %.not1109, i32 %.9787, i32 %i.tk
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit1485, %bb.bt, %bb.bu
  %.6808 = phi i32 [ %i.nr, %bb.bt ], [ %i.nt, %bb.bu ], [ %spec.store.select25, %.loopexit1485 ] ; 12 uses
  %.10788 = phi i32 [ %.5783, %bb.bt ], [ %.5783, %bb.bu ], [ %spec.select1194, %.loopexit1485 ] ; 13 uses
  store i8 0, ptr %i.d, align 1, !tbaa !8
  store i8 0, ptr %i.c, align 1, !tbaa !8
  %i.tl = and i32 %.10788, 128
  %.not.i1242 = icmp eq i32 %i.tl, 0
  br i1 %.not.i1242, label %bb.cy, label %.sink.split.i1243

bb.cy:                                            ; preds = %bb.cx
  %i.tm = and i32 %.10788, 4
  %.not9.i1245 = icmp eq i32 %i.tm, 0
  br i1 %.not9.i1245, label %bb.cz, label %.sink.split.i1243

bb.cz:                                            ; preds = %bb.cy
  %i.tn = and i32 %.10788, 2
  %.not10.i1246 = icmp eq i32 %i.tn, 0
  br i1 %.not10.i1246, label %stbsp__lead_sign.exit1247, label %.sink.split.i1243

.sink.split.i1243:                                ; preds = %bb.cz, %bb.cy, %bb.cx
  %.sink.i1244 = phi i8 [ 45, %bb.cx ], [ 32, %bb.cy ], [ 43, %bb.cz ]
  store i8 1, ptr %i.c, align 1, !tbaa !8
  store i8 %.sink.i1244, ptr %i.j, align 1, !tbaa !8
  br label %stbsp__lead_sign.exit1247

stbsp__lead_sign.exit1247:                        ; preds = %bb.cz, %.sink.split.i1243
  %i.to = load i32, ptr %i.f, align 4, !tbaa !9   ; 5 uses
  %i.tp = icmp eq i32 %i.to, 28672
  br i1 %i.tp, label %bb.da, label %bb.db

bb.da:                                            ; preds = %stbsp__lead_sign.exit1247
  %i.tq = load ptr, ptr %i.g, align 8, !tbaa !15
  br label %bb.gg

bb.db:                                            ; preds = %stbsp__lead_sign.exit1247
  %i.tr = icmp slt i32 %i.to, 1
  br i1 %i.tr, label %bb.dc, label %bb.dh

bb.dc:                                            ; preds = %bb.db
  store i8 48, ptr %i.o, align 16, !tbaa !8
  %.not1121 = icmp eq i32 %.6808, 0
  br i1 %.not1121, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ts = load i8, ptr @stbsp__period, align 1, !tbaa !8
  store i8 %i.ts, ptr %i.q, align 1, !tbaa !8
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.4742 = phi ptr [ %i.r, %bb.dd ], [ %i.q, %bb.dc ] ; 3 uses
  %i.tt = sub nsw i32 0, %i.to
  %spec.select1195 = call i32 @llvm.smin.i32(i32 %.6808, i32 %i.tt) ; 7 uses
  %.not11221643 = icmp eq i32 %spec.select1195, 0
  %i.tu = ptrtoint ptr %.4742 to i64
  %i.tv = and i64 %i.tu, 3
  %i.tw = icmp eq i64 %i.tv, 0
  %or.cond11981644 = select i1 %.not11221643, i1 true, i1 %i.tw
  br i1 %or.cond11981644, label %.preheader1478, label %.lr.ph1648

.preheader1478:                                   ; preds = %.lr.ph1648, %bb.de
  %.5743.lcssa = phi ptr [ %.4742, %bb.de ], [ %i.ug, %.lr.ph1648 ] ; 3 uses
  %.0699.lcssa = phi i32 [ %spec.select1195, %bb.de ], [ %i.uh, %.lr.ph1648 ] ; 4 uses
  %i.tx = icmp sgt i32 %.0699.lcssa, 3
  br i1 %i.tx, label %.lr.ph1653.preheader, label %.preheader1477

.lr.ph1653.preheader:                             ; preds = %.preheader1478
  %i.ty = call i32 @llvm.usub.sat.i32(i32 %.0699.lcssa, i32 7)
  %i.tz = add nuw i32 %i.ty, 3                    ; 2 uses
  %i.ua = and i32 %i.tz, 2147483644
  %i.ub = zext nneg i32 %i.ua to i64              ; 2 uses
  %i.uc = add nuw nsw i64 %i.ub, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.5743.lcssa, i8 48, i64 %i.uc, i1 false), !tbaa !9
  %scevgep1989 = getelementptr i8, ptr %.5743.lcssa, i64 4
  %scevgep1991.a = getelementptr i8, ptr %scevgep1989, i64 %i.ub
  %i.ud = add nsw i32 %.0699.lcssa, -4
  %i.ue = and i32 %i.tz, -4
  %i.uf = sub nsw i32 %i.ud, %i.ue
  br label %.preheader1477

.lr.ph1648:                                       ; preds = %bb.de, %.lr.ph1648
  %.06991646 = phi i32 [ %i.uh, %.lr.ph1648 ], [ %spec.select1195, %bb.de ]
  %.57431645 = phi ptr [ %i.ug, %.lr.ph1648 ], [ %.4742, %bb.de ] ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.57431645, i64 1 ; 3 uses
  store i8 48, ptr %.57431645, align 1, !tbaa !8
  %i.uh = add nsw i32 %.06991646, -1              ; 3 uses
  %.not1122 = icmp eq i32 %i.uh, 0
  %i.ui = ptrtoint ptr %i.ug to i64
  %i.uj = and i64 %i.ui, 3
  %i.uk = icmp eq i64 %i.uj, 0
  %or.cond1198 = select i1 %.not1122, i1 true, i1 %i.uk
  br i1 %or.cond1198, label %.preheader1478, label %.lr.ph1648, !llvm.loop !33

.preheader1477:                                   ; preds = %.lr.ph1653.preheader, %.preheader1478
  %.6744.lcssa = phi ptr [ %.5743.lcssa, %.preheader1478 ], [ %scevgep1991.a, %.lr.ph1653.preheader ] ; 3 uses
  %.1700.lcssa = phi i32 [ %.0699.lcssa, %.preheader1478 ], [ %i.uf, %.lr.ph1653.preheader ] ; 3 uses
  %.not11231656 = icmp eq i32 %.1700.lcssa, 0
  br i1 %.not11231656, label %._crit_edge1660, label %.lr.ph1659.preheader

.lr.ph1659.preheader:                             ; preds = %.preheader1477
  %i.ul = zext i32 %.1700.lcssa to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.6744.lcssa, i8 48, i64 %i.ul, i1 false), !tbaa !8
  %scevgep1992.a = getelementptr i8, ptr %.6744.lcssa, i64 1
  %i.um = add i32 %.1700.lcssa, -1
  %i.un = zext i32 %i.um to i64
  %scevgep1993 = getelementptr i8, ptr %scevgep1992.a, i64 %i.un
  br label %._crit_edge1660

._crit_edge1660:                                  ; preds = %.lr.ph1659.preheader, %.preheader1477
  %.7745.lcssa = phi ptr [ %.6744.lcssa, %.preheader1477 ], [ %scevgep1993, %.lr.ph1659.preheader ] ; 3 uses
  %i.uo = load i32, ptr %i.e, align 4, !tbaa !9   ; 2 uses
  %i.up = add i32 %i.uo, %spec.select1195         ; 2 uses
  %i.uq = icmp sgt i32 %i.up, %.6808
  br i1 %i.uq, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %._crit_edge1660
  %i.ur = sub i32 %.6808, %spec.select1195        ; 2 uses
  store i32 %i.ur, ptr %i.e, align 4, !tbaa !9
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %._crit_edge1660
  %i.us = phi i32 [ %i.ur, %bb.df ], [ %i.uo, %._crit_edge1660 ] ; 5 uses
  %.not11241662 = icmp eq i32 %i.us, 0
  br i1 %.not11241662, label %._crit_edge1667, label %.lr.ph1666.preheader

.lr.ph1666.preheader:                             ; preds = %bb.dg
  %smin = call i32 @llvm.smin.i32(i32 %.6808, i32 %i.up)
  %xtraiter = and i32 %i.us, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1666.prol.loopexit, label %.lr.ph1666.prol

.lr.ph1666.prol:                                  ; preds = %.lr.ph1666.preheader, %.lr.ph1666.prol
  %.37021664.prol = phi i32 [ %i.ux, %.lr.ph1666.prol ], [ %i.us, %.lr.ph1666.preheader ]
  %.87461663.prol = phi ptr [ %i.uw, %.lr.ph1666.prol ], [ %.7745.lcssa, %.lr.ph1666.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph1666.prol ], [ 0, %.lr.ph1666.preheader ]
  %i.ut = load ptr, ptr %i.g, align 8, !tbaa !15  ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 1
  store ptr %i.uu, ptr %i.g, align 8, !tbaa !15
  %i.uv = load i8, ptr %i.ut, align 1, !tbaa !8
  %i.uw = getelementptr inbounds nuw i8, ptr %.87461663.prol, i64 1 ; 3 uses
  store i8 %i.uv, ptr %.87461663.prol, align 1, !tbaa !8
  %i.ux = add nsw i32 %.37021664.prol, -1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1666.prol.loopexit, label %.lr.ph1666.prol, !llvm.loop !34

.lr.ph1666.prol.loopexit:                         ; preds = %.lr.ph1666.prol, %.lr.ph1666.preheader
  %.lcssa2464.unr = phi ptr [ poison, %.lr.ph1666.preheader ], [ %i.uw, %.lr.ph1666.prol ]
  %.37021664.unr = phi i32 [ %i.us, %.lr.ph1666.preheader ], [ %i.ux, %.lr.ph1666.prol ]
  %.87461663.unr = phi ptr [ %.7745.lcssa, %.lr.ph1666.preheader ], [ %i.uw, %.lr.ph1666.prol ]
  %i.uy = sub i32 %spec.select1195, %smin
  %i.uz = icmp ugt i32 %i.uy, -4
  br i1 %i.uz, label %._crit_edge1667, label %.lr.ph1666

.lr.ph1666:                                       ; preds = %.lr.ph1666.prol.loopexit, %.lr.ph1666
  %.37021664 = phi i32 [ %i.vq, %.lr.ph1666 ], [ %.37021664.unr, %.lr.ph1666.prol.loopexit ]
  %.87461663 = phi ptr [ %i.vp, %.lr.ph1666 ], [ %.87461663.unr, %.lr.ph1666.prol.loopexit ] ; 5 uses
  %i.va = load ptr, ptr %i.g, align 8, !tbaa !15  ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 1
  store ptr %i.vb, ptr %i.g, align 8, !tbaa !15
  %i.vc = load i8, ptr %i.va, align 1, !tbaa !8
  %i.vd = getelementptr inbounds nuw i8, ptr %.87461663, i64 1
  store i8 %i.vc, ptr %.87461663, align 1, !tbaa !8
  %i.ve = load ptr, ptr %i.g, align 8, !tbaa !15  ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 1
  store ptr %i.vf, ptr %i.g, align 8, !tbaa !15
  %i.vg = load i8, ptr %i.ve, align 1, !tbaa !8
  %i.vh = getelementptr inbounds nuw i8, ptr %.87461663, i64 2
  store i8 %i.vg, ptr %i.vd, align 1, !tbaa !8
  %i.vi = load ptr, ptr %i.g, align 8, !tbaa !15  ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 1
  store ptr %i.vj, ptr %i.g, align 8, !tbaa !15
  %i.vk = load i8, ptr %i.vi, align 1, !tbaa !8
  %i.vl = getelementptr inbounds nuw i8, ptr %.87461663, i64 3
  store i8 %i.vk, ptr %i.vh, align 1, !tbaa !8
  %i.vm = load ptr, ptr %i.g, align 8, !tbaa !15  ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 1
  store ptr %i.vn, ptr %i.g, align 8, !tbaa !15
  %i.vo = load i8, ptr %i.vm, align 1, !tbaa !8
  %i.vp = getelementptr inbounds nuw i8, ptr %.87461663, i64 4 ; 2 uses
  store i8 %i.vo, ptr %i.vl, align 1, !tbaa !8
  %i.vq = add nsw i32 %.37021664, -4              ; 2 uses
  %.not1124.3 = icmp eq i32 %i.vq, 0
  br i1 %.not1124.3, label %._crit_edge1667, label %.lr.ph1666, !llvm.loop !35

._crit_edge1667:                                  ; preds = %.lr.ph1666.prol.loopexit, %.lr.ph1666, %bb.dg
  %.8746.lcssa = phi ptr [ %.7745.lcssa, %bb.dg ], [ %.lcssa2464.unr, %.lr.ph1666.prol.loopexit ], [ %i.vp, %.lr.ph1666 ]
  %i.vr = add i32 %spec.select1195, %i.us
  %i.vs = sub i32 %.6808, %i.vr
  br label %bb.ea

bb.dh:                                            ; preds = %bb.db
  %i.vt = and i32 %.10788, 64
  %.not1112 = icmp eq i32 %i.vt, 0                ; 5 uses
  br i1 %.not1112, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.vu = sub nsw i32 600, %i.to
  %i.vv = urem i32 %i.vu, 3
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di
  %i.vw = phi i32 [ %i.vv, %bb.di ], [ 0, %bb.dh ] ; 2 uses
  %i.vx = load i32, ptr %i.e, align 4, !tbaa !9
end_hunk_0
begin_hunk_1_@stbsp_vsprintfcb:bb.a
.loopexit1459:                                    ; preds = %.loopexit1459.backedge, %bb.fs
  %.lcssa15841595 = phi i32 [ 0, %bb.fs ], [ %.lcssa15841595.be, %.loopexit1459.backedge ] ; 3 uses
  %.41267 = phi i64 [ %.31266, %bb.fs ], [ %storemerge, %.loopexit1459.backedge ] ; 4 uses
  %.25.idx = phi i64 [ 512, %bb.fs ], [ %.25.idx.be, %.loopexit1459.backedge ] ; 4 uses
  %.25.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.25.idx
  %i.adv = getelementptr inbounds i8, ptr %.25.ptr, i64 -8 ; 3 uses
  %i.adw = icmp ugt i64 %.41267, 99999999
  br i1 %i.adw, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %.loopexit1459
  %i.adx = urem i64 %.41267, 100000000
  %i.ady = udiv i64 %.41267, 100000000
  br label %bb.fu

bb.fu:                                            ; preds = %.loopexit1459, %bb.ft
  %storemerge = phi i64 [ %i.ady, %bb.ft ], [ 0, %.loopexit1459 ] ; 2 uses
  %.15735.in = phi i64 [ %i.adx, %bb.ft ], [ %.41267, %.loopexit1459 ] ; 2 uses
  %.15735 = trunc nuw nsw i64 %.15735.in to i32   ; 2 uses
  br i1 %i.adt, label %.preheader1460, label %.loopexit1461

.preheader1460:                                   ; preds = %bb.fu, %.preheader1460
  %.26.idx = phi i64 [ %.26.add, %.preheader1460 ], [ %.25.idx, %bb.fu ]
  %.16 = phi i32 [ %i.aee, %.preheader1460 ], [ %.15735, %bb.fu ] ; 3 uses
  %.26.add = add nsw i64 %.26.idx, -2             ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.26.add
  %i.adz = urem i32 %.16, 100
  %i.aea = shl nuw nsw i32 %i.adz, 1
  %i.aeb = zext nneg i32 %i.aea to i64
  %i.aec = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @stbsp__digitpair, i64 2), i64 %i.aeb
  %i.aed = load i16, ptr %i.aec, align 2, !tbaa !41
  store i16 %i.aed, ptr %.ptr, align 2, !tbaa !41
  %i.aee = udiv i32 %.16, 100
  %.not1084 = icmp samesign ult i32 %.16, 100
  br i1 %.not1084, label %._crit_edge, label %.preheader1460, !llvm.loop !43

.loopexit1461:                                    ; preds = %bb.fu
  %.not10851574 = icmp eq i64 %.15735.in, 0
  br i1 %.not10851574, label %._crit_edge, label %.lr.ph1578

.lr.ph1578:                                       ; preds = %.loopexit1461, %bb.fx
  %.06941577 = phi ptr [ %.1695, %bb.fx ], [ %i.adv, %.loopexit1461 ] ; 2 uses
  %.181576 = phi i32 [ %.19, %bb.fx ], [ %.15735, %.loopexit1461 ] ; 3 uses
  %.28.idx1575 = phi i64 [ %.29.idx, %bb.fx ], [ %.25.idx, %.loopexit1461 ] ; 2 uses
  %i.aef = phi i32 [ %i.aen, %bb.fx ], [ %.lcssa15841595, %.loopexit1461 ] ; 2 uses
  %i.aeg = icmp eq i32 %i.aef, 3
  br i1 %i.aeg, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %.lr.ph1578
  %.28.add1088 = add nsw i64 %.28.idx1575, -1     ; 2 uses
  %.ptr1092 = getelementptr inbounds i8, ptr %i.a, i64 %.28.add1088
  store i8 %i.adu, ptr %.ptr1092, align 1, !tbaa !8
  %i.aeh = getelementptr inbounds i8, ptr %.06941577, i64 -1
  br label %bb.fx

bb.fw:                                            ; preds = %.lr.ph1578
  %i.aei = add i32 %i.aef, 1
  %i.aej = urem i32 %.181576, 10
  %i.aek = trunc nuw nsw i32 %i.aej to i8
  %i.ael = or disjoint i8 %i.aek, 48
  %.28.add = add nsw i64 %.28.idx1575, -1         ; 2 uses
  %.ptr1091 = getelementptr inbounds i8, ptr %i.a, i64 %.28.add
  store i8 %i.ael, ptr %.ptr1091, align 1, !tbaa !8
  %i.aem = udiv i32 %.181576, 10
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.aen = phi i32 [ 0, %bb.fv ], [ %i.aei, %bb.fw ] ; 2 uses
  %.29.idx = phi i64 [ %.28.add1088, %bb.fv ], [ %.28.add, %bb.fw ] ; 2 uses
  %.19 = phi i32 [ %.181576, %bb.fv ], [ %i.aem, %bb.fw ] ; 2 uses
  %.1695 = phi ptr [ %i.aeh, %bb.fv ], [ %.06941577, %bb.fw ] ; 2 uses
  %.not1085 = icmp eq i32 %.19, 0
  br i1 %.not1085, label %._crit_edge, label %.lr.ph1578, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.fx, %.preheader1460, %.loopexit1461
  %.lcssa1573 = phi i32 [ %.lcssa15841595, %.loopexit1461 ], [ %.lcssa15841595, %.preheader1460 ], [ %i.aen, %bb.fx ] ; 3 uses
  %.28.idx.lcssa1572 = phi i64 [ %.25.idx, %.loopexit1461 ], [ %.26.add, %.preheader1460 ], [ %.29.idx, %bb.fx ] ; 6 uses
  %.0694.lcssa = phi ptr [ %i.adv, %.loopexit1461 ], [ %i.adv, %.preheader1460 ], [ %.1695, %bb.fx ] ; 3 uses
  %.0694.lcssa1982 = ptrtoaddr ptr %.0694.lcssa to i64 ; 3 uses
  %i.aeo = icmp eq i64 %storemerge, 0
  %.28.ptr.le.le = getelementptr inbounds i8, ptr %i.a, i64 %.28.idx.lcssa1572 ; 2 uses
  br i1 %i.aeo, label %bb.gb, label %.preheader1458

.preheader1458:                                   ; preds = %._crit_edge
  %.not10861586 = icmp eq ptr %.28.ptr.le.le, %.0694.lcssa
  br i1 %.not10861586, label %.loopexit1459.backedge, label %.lr.ph1589

.lr.ph1589:                                       ; preds = %.preheader1458
  br i1 %i.adt, label %.lr.ph1589.split.us.preheader, label %.lr.ph1589.split

.lr.ph1589.split.us.preheader:                    ; preds = %.lr.ph1589
  %scevgep1983 = getelementptr i8, ptr %scevgep, i64 %.0694.lcssa1982
  %i.aep = add i64 %.28.idx.lcssa1572, %i.b
  %i.aeq = sub i64 %i.aep, %.0694.lcssa1982
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep1983, i8 48, i64 %i.aeq, i1 false), !tbaa !8
  %i.aer = sub i64 %.0694.lcssa1982, %i.b
  br label %.loopexit1459.backedge

.loopexit1459.backedge:                           ; preds = %bb.ga, %.lr.ph1589.split.us.preheader, %.preheader1458
  %.lcssa15841595.be = phi i32 [ %.lcssa1573, %.preheader1458 ], [ %.lcssa1573, %.lr.ph1589.split.us.preheader ], [ %i.aew, %bb.ga ]
  %.25.idx.be = phi i64 [ %.28.idx.lcssa1572, %.preheader1458 ], [ %i.aer, %.lr.ph1589.split.us.preheader ], [ %.32.idx, %bb.ga ]
  br label %.loopexit1459

.lr.ph1589.split:                                 ; preds = %.lr.ph1589, %bb.ga
  %.26961588 = phi ptr [ %.3697, %bb.ga ], [ %.0694.lcssa, %.lr.ph1589 ] ; 2 uses
  %.31.idx1587 = phi i64 [ %.32.idx, %bb.ga ], [ %.28.idx.lcssa1572, %.lr.ph1589 ] ; 2 uses
  %i.aes = phi i32 [ %i.aew, %bb.ga ], [ %.lcssa1573, %.lr.ph1589 ] ; 2 uses
  %i.aet = icmp eq i32 %i.aes, 3
  br i1 %i.aet, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %.lr.ph1589.split
  %.31.add1090 = add nsw i64 %.31.idx1587, -1     ; 2 uses
  %.ptr1096 = getelementptr inbounds i8, ptr %i.a, i64 %.31.add1090
  store i8 %i.adu, ptr %.ptr1096, align 1, !tbaa !8
  %i.aeu = getelementptr inbounds i8, ptr %.26961588, i64 -1
  br label %bb.ga

bb.fz:                                            ; preds = %.lr.ph1589.split
  %i.aev = add i32 %i.aes, 1
  %.31.add = add nsw i64 %.31.idx1587, -1         ; 2 uses
  %.ptr1095 = getelementptr inbounds i8, ptr %i.a, i64 %.31.add
  store i8 48, ptr %.ptr1095, align 1, !tbaa !8
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %i.aew = phi i32 [ 0, %bb.fy ], [ %i.aev, %bb.fz ] ; 2 uses
  %.32.idx = phi i64 [ %.31.add1090, %bb.fy ], [ %.31.add, %bb.fz ] ; 3 uses
  %.3697 = phi ptr [ %i.aeu, %bb.fy ], [ %.26961588, %bb.fz ] ; 2 uses
  %.31.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.32.idx
  %.not1086 = icmp eq ptr %.31.ptr, %.3697
  br i1 %.not1086, label %.loopexit1459.backedge, label %.lr.ph1589.split, !llvm.loop !45

bb.gb:                                            ; preds = %._crit_edge
  %i.aex = load i8, ptr %.28.ptr.le.le, align 1, !tbaa !8
  %i.aey = icmp eq i8 %i.aex, 48
  %i.aez = icmp ne i64 %.28.idx.lcssa1572, 512
  %or.cond35 = and i1 %i.aez, %i.aey
  %.28.add1089 = zext i1 %or.cond35 to i64
  %spec.select1203 = add nsw i64 %.28.idx.lcssa1572, %.28.add1089 ; 2 uses
  %.33.ptr1295 = getelementptr inbounds i8, ptr %i.a, i64 %spec.select1203 ; 2 uses
  store i8 0, ptr %i.d, align 1, !tbaa !8
  store i8 0, ptr %i.c, align 1, !tbaa !8
  %i.afa = and i32 %.16794, 128
  %.not.i1248 = icmp eq i32 %i.afa, 0
  br i1 %.not.i1248, label %bb.gc, label %.sink.split.i1249

bb.gc:                                            ; preds = %bb.gb
  %i.afb = and i32 %.16794, 4
  %.not9.i1251 = icmp eq i32 %i.afb, 0
  br i1 %.not9.i1251, label %bb.gd, label %.sink.split.i1249

bb.gd:                                            ; preds = %bb.gc
  %i.afc = and i32 %.16794, 2
  %.not10.i1252 = icmp eq i32 %i.afc, 0
  br i1 %.not10.i1252, label %stbsp__lead_sign.exit1253, label %.sink.split.i1249

.sink.split.i1249:                                ; preds = %bb.gd, %bb.gc, %bb.gb
  %.sink.i1250 = phi i8 [ 45, %bb.gb ], [ 32, %bb.gc ], [ 43, %bb.gd ]
  store i8 1, ptr %i.c, align 1, !tbaa !8
  store i8 %.sink.i1250, ptr %i.j, align 1, !tbaa !8
  br label %stbsp__lead_sign.exit1253

stbsp__lead_sign.exit1253:                        ; preds = %bb.gd, %.sink.split.i1249
  %i.afd = trunc i64 %spec.select1203 to i32      ; 2 uses
  %i.afe = sub i32 512, %i.afd                    ; 2 uses
  store i32 %i.afe, ptr %i.e, align 4, !tbaa !9
  %i.aff = icmp eq i32 %i.afd, 512
  br i1 %i.aff, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %stbsp__lead_sign.exit1253
  %i.afg = getelementptr inbounds i8, ptr %.33.ptr1295, i64 -1 ; 2 uses
  store i8 48, ptr %i.afg, align 1, !tbaa !8
  store i32 1, ptr %i.e, align 4, !tbaa !9
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %stbsp__lead_sign.exit1253
  %i.afh = phi i32 [ 1, %bb.ge ], [ %i.afe, %stbsp__lead_sign.exit1253 ]
  %.34 = phi ptr [ %i.afg, %bb.ge ], [ %.33.ptr1295, %stbsp__lead_sign.exit1253 ]
  %i.afi = add i32 %i.afh, 50331648
  %spec.store.select36 = call i32 @llvm.smax.i32(i32 %.1803, i32 0)
  br label %bb.gg

bb.gg:                                            ; preds = %stbsp__lead_sign.exit1241, %bb.hi, %bb.gf, %._crit_edge2349, %bb.fb, %bb.eg, %bb.da, %._crit_edge1691, %bb.as, %stbsp__strlen_limited.exit
  %.2819 = phi i32 [ 0, %bb.hi ], [ %.1818, %stbsp__strlen_limited.exit ], [ %.1818, %bb.as ], [ %.1818, %._crit_edge1691 ], [ %.1818, %bb.gf ], [ %.1818, %bb.eg ], [ %.1818, %bb.da ], [ %.1818, %bb.fb ], [ %.1818, %._crit_edge2349 ], [ %.1818, %stbsp__lead_sign.exit1241 ]
  %.11813 = phi i32 [ 0, %bb.hi ], [ 0, %stbsp__strlen_limited.exit ], [ 0, %bb.as ], [ 0, %._crit_edge1691 ], [ %spec.store.select36, %bb.gf ], [ 0, %bb.eg ], [ 0, %bb.da ], [ 0, %bb.fb ], [ %.9811, %._crit_edge2349 ], [ 0, %stbsp__lead_sign.exit1241 ]
  %.3800 = phi i32 [ 0, %bb.hi ], [ 0, %stbsp__strlen_limited.exit ], [ 0, %bb.as ], [ %spec.select11882129, %._crit_edge1691 ], [ 0, %bb.gf ], [ %.2799, %bb.eg ], [ 0, %bb.da ], [ 0, %bb.fb ], [ 0, %._crit_edge2349 ], [ 0, %stbsp__lead_sign.exit1241 ] ; 3 uses
  %.17795 = phi i32 [ 0, %bb.hi ], [ %.3781, %stbsp__strlen_limited.exit ], [ %.3781, %bb.as ], [ %spec.select1187, %._crit_edge1691 ], [ %.16794, %bb.gf ], [ %.11789, %bb.eg ], [ %.10788, %bb.da ], [ %.13791, %bb.fb ], [ %.13791, %._crit_edge2349 ], [ %.6784, %stbsp__lead_sign.exit1241 ] ; 4 uses
  %.35 = phi ptr [ %i.u, %bb.hi ], [ %spec.store.select, %stbsp__strlen_limited.exit ], [ %i.u, %bb.as ], [ %i.o, %._crit_edge1691 ], [ %.34, %bb.gf ], [ %i.o, %bb.eg ], [ %i.tq, %bb.da ], [ %i.l, %bb.fb ], [ %.lcssa2289, %._crit_edge2349 ], [ %i.op, %stbsp__lead_sign.exit1241 ]
  %.11717 = phi i32 [ 0, %bb.hi ], [ 0, %stbsp__strlen_limited.exit ], [ 0, %bb.as ], [ 50331649, %._crit_edge1691 ], [ %i.afi, %bb.gf ], [ %.10716, %bb.eg ], [ 0, %bb.da ], [ 0, %bb.fb ], [ %i.aci, %._crit_edge2349 ], [ 0, %stbsp__lead_sign.exit1241 ] ; 2 uses
  %i.afj = load i32, ptr %i.e, align 4, !tbaa !9  ; 2 uses
  %spec.select1204 = call i32 @llvm.smax.i32(i32 %.11813, i32 %i.afj) ; 2 uses
  %i.afk = load i8, ptr %i.c, align 1, !tbaa !8   ; 3 uses
  %i.afl = sext i8 %i.afk to i32
  %i.afm = load i8, ptr %i.d, align 1, !tbaa !8
  %i.afn = sext i8 %i.afm to i32
  %i.afo = add i32 %spec.select1204, %.3800
  %i.afp = add i32 %i.afo, %i.afl
  %i.afq = add i32 %i.afp, %i.afn                 ; 2 uses
  %.3820 = call i32 @llvm.smax.i32(i32 %.2819, i32 %i.afq)
  %i.afr = sub i32 %.3820, %i.afq                 ; 3 uses
  %i.afs = sub i32 %spec.select1204, %i.afj       ; 3 uses
  %6 = and i32 %.17795, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %bb.gg
  %i.aft = and i32 %.17795, 16
  %.not1138 = icmp eq i32 %i.aft, 0
  br i1 %.not1138, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.afu = call i32 @llvm.smax.i32(i32 %i.afr, i32 %i.afs)
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gh, %bb.gi, %bb.gg
  %.4821 = phi i32 [ 0, %bb.gi ], [ %i.afr, %bb.gg ], [ %i.afr, %bb.gh ] ; 5 uses
  %.13815 = phi i32 [ %i.afu, %bb.gi ], [ %i.afs, %bb.gg ], [ %i.afs, %bb.gh ] ; 4 uses
  %.18796 = phi i32 [ %.17795, %bb.gi ], [ %.17795, %bb.gg ], [ 0, %bb.gh ] ; 3 uses
  %i.afv = sub i32 0, %.13815
  %.not1139 = icmp eq i32 %.4821, %i.afv
  br i1 %.not1139, label %.loopexit1470, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.afw = and i32 %.18796, 1
  %i.afx = icmp eq i32 %i.afw, 0
  %i.afy = icmp sgt i32 %.4821, 0
  %or.cond38 = and i1 %i.afy, %i.afx
  br i1 %or.cond38, label %.preheader1473, label %.loopexit1475

.preheader1473:                                   ; preds = %bb.gk, %.thread1299
  %.5936 = phi ptr [ %.8939, %.thread1299 ], [ %.1932, %bb.gk ] ; 4 uses
  %.9889 = phi ptr [ %.15895, %.thread1299 ], [ %.2882, %bb.gk ] ; 3 uses
  %.5832 = phi i32 [ %.8835, %.thread1299 ], [ %.1828, %bb.gk ] ; 3 uses
  %.5822 = phi i32 [ %i.agc, %.thread1299 ], [ %.4821, %bb.gk ] ; 3 uses
  %i.afz = ptrtoint ptr %.9889 to i64             ; 2 uses
  %i.aga = ptrtoint ptr %.5936 to i64             ; 2 uses
  %.neg1141 = sub i64 %i.aga, %i.afz
  %.neg1142 = trunc i64 %.neg1141 to i32
  %i.agb = add i32 %.neg1142, 512
  %spec.select1205 = call i32 @llvm.smin.i32(i32 %.5822, i32 %i.agb)
  %.1690 = select i1 %.not1077, i32 %.5822, i32 %spec.select1205 ; 4 uses
  %i.agc = sub nsw i32 %.5822, %.1690             ; 3 uses
  %.not11431699 = icmp eq i32 %.1690, 0
  %i.agd = and i64 %i.afz, 3
  %i.age = icmp eq i64 %i.agd, 0
  %or.cond12081700 = select i1 %.not11431699, i1 true, i1 %i.age
  br i1 %or.cond12081700, label %.preheader1457, label %.lr.ph1704

.preheader1457:                                   ; preds = %.lr.ph1704, %.preheader1473
  %.10890.lcssa = phi ptr [ %.9889, %.preheader1473 ], [ %i.ago, %.lr.ph1704 ] ; 3 uses
  %.2691.lcssa = phi i32 [ %.1690, %.preheader1473 ], [ %i.agp, %.lr.ph1704 ] ; 4 uses
  %i.agf = icmp sgt i32 %.2691.lcssa, 3
  br i1 %i.agf, label %.lr.ph1709.preheader, label %.preheader1456

.lr.ph1709.preheader:                             ; preds = %.preheader1457
  %i.agg = call i32 @llvm.usub.sat.i32(i32 %.2691.lcssa, i32 7)
  %i.agh = add nuw i32 %i.agg, 3                  ; 2 uses
  %i.agi = and i32 %i.agh, 2147483644
  %i.agj = zext nneg i32 %i.agi to i64            ; 2 uses
  %i.agk = add nuw nsw i64 %i.agj, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.10890.lcssa, i8 32, i64 %i.agk, i1 false), !tbaa !9
  %scevgep2007 = getelementptr i8, ptr %.10890.lcssa, i64 4
  %scevgep2009.a = getelementptr i8, ptr %scevgep2007, i64 %i.agj
  %i.agl = add nsw i32 %.2691.lcssa, -4
  %i.agm = and i32 %i.agh, -4
  %i.agn = sub nsw i32 %i.agl, %i.agm
  br label %.preheader1456

.lr.ph1704:                                       ; preds = %.preheader1473, %.lr.ph1704
  %.26911702 = phi i32 [ %i.agp, %.lr.ph1704 ], [ %.1690, %.preheader1473 ]
  %.108901701 = phi ptr [ %i.ago, %.lr.ph1704 ], [ %.9889, %.preheader1473 ] ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %.108901701, i64 1 ; 3 uses
  store i8 32, ptr %.108901701, align 1, !tbaa !8
  %i.agp = add nsw i32 %.26911702, -1             ; 3 uses
  %.not1143 = icmp eq i32 %i.agp, 0
  %i.agq = ptrtoint ptr %i.ago to i64
  %i.agr = and i64 %i.agq, 3
  %i.ags = icmp eq i64 %i.agr, 0
  %or.cond1208 = select i1 %.not1143, i1 true, i1 %i.ags
  br i1 %or.cond1208, label %.preheader1457, label %.lr.ph1704, !llvm.loop !46

.preheader1456:                                   ; preds = %.lr.ph1709.preheader, %.preheader1457
  %.11891.lcssa = phi ptr [ %.10890.lcssa, %.preheader1457 ], [ %scevgep2009.a, %.lr.ph1709.preheader ] ; 3 uses
  %.3692.lcssa = phi i32 [ %.2691.lcssa, %.preheader1457 ], [ %i.agn, %.lr.ph1709.preheader ] ; 3 uses
  %.not11441712 = icmp eq i32 %.3692.lcssa, 0
  br i1 %.not11441712, label %._crit_edge1716, label %.lr.ph1715.preheader

.lr.ph1715.preheader:                             ; preds = %.preheader1456
  %i.agt = zext i32 %.3692.lcssa to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.11891.lcssa, i8 32, i64 %i.agt, i1 false), !tbaa !8
  %scevgep2010.a = getelementptr i8, ptr %.11891.lcssa, i64 1
  %i.agu = add i32 %.3692.lcssa, -1
  %i.agv = zext i32 %i.agu to i64
  %scevgep2011 = getelementptr i8, ptr %scevgep2010.a, i64 %i.agv
  br label %._crit_edge1716

._crit_edge1716:                                  ; preds = %.lr.ph1715.preheader, %.preheader1456
  %.12892.lcssa = phi ptr [ %.11891.lcssa, %.preheader1456 ], [ %scevgep2011, %.lr.ph1715.preheader ] ; 3 uses
  br i1 %.not1077, label %.thread1299, label %bb.gl

bb.gl:                                            ; preds = %._crit_edge1716
  %i.agw = ptrtoint ptr %.12892.lcssa to i64
  %i.agx = sub i64 %i.agw, %i.aga
  %i.agy = trunc i64 %i.agx to i32                ; 3 uses
  %i.agz = icmp sgt i32 %i.agy, 510
  br i1 %i.agz, label %bb.gm, label %.thread1299

bb.gm:                                            ; preds = %bb.gl
  %i.aha = add nuw nsw i32 %.5832, %i.agy         ; 2 uses
  %i.ahb = call ptr %0(ptr noundef %.5936, ptr noundef %1, i32 noundef %i.agy) #13 ; 3 uses
  %i.ahc = icmp eq ptr %i.ahb, null
  br i1 %i.ahc, label %.thread1427, label %.thread1299

.thread1299:                                      ; preds = %bb.gm, %bb.gl, %._crit_edge1716
  %.8939 = phi ptr [ %.5936, %._crit_edge1716 ], [ %.5936, %bb.gl ], [ %i.ahb, %bb.gm ] ; 2 uses
  %.15895 = phi ptr [ %.12892.lcssa, %._crit_edge1716 ], [ %.12892.lcssa, %bb.gl ], [ %i.ahb, %bb.gm ] ; 2 uses
  %.8835 = phi i32 [ %.5832, %._crit_edge1716 ], [ %.5832, %bb.gl ], [ %i.aha, %bb.gm ] ; 2 uses
  %.old37 = icmp sgt i32 %i.agc, 0
  br i1 %.old37, label %.preheader1473, label %.loopexit1475.loopexit

.loopexit1475.loopexit:                           ; preds = %.thread1299
  %.pre2039.a = load i8, ptr %i.c, align 1, !tbaa !8
  br label %.loopexit1475

.loopexit1475:                                    ; preds = %.loopexit1475.loopexit, %bb.gk
  %i.ahd = phi i8 [ %i.afk, %bb.gk ], [ %.pre2039.a, %.loopexit1475.loopexit ] ; 2 uses
  %.9940 = phi ptr [ %.1932, %bb.gk ], [ %.8939, %.loopexit1475.loopexit ] ; 2 uses
  %.16896 = phi ptr [ %.2882, %bb.gk ], [ %.15895, %.loopexit1475.loopexit ] ; 2 uses
  %.9836 = phi i32 [ %.1828, %bb.gk ], [ %.8835, %.loopexit1475.loopexit ] ; 2 uses
  %.6823 = phi i32 [ %.4821, %bb.gk ], [ %i.agc, %.loopexit1475.loopexit ] ; 2 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !15
  %.not11451725 = icmp eq i8 %i.ahd, 0
  br i1 %.not11451725, label %._crit_edge1731, label %.lr.ph1730

.lr.ph1730:                                       ; preds = %.loopexit1475, %.thread1306
  %i.ahe = phi i8 [ %i.aip, %.thread1306 ], [ %i.ahd, %.loopexit1475 ] ; 2 uses
  %.108371728 = phi i32 [ %.13840, %.thread1306 ], [ %.9836, %.loopexit1475 ] ; 3 uses
  %.178971727 = phi ptr [ %.21901, %.thread1306 ], [ %.16896, %.loopexit1475 ] ; 4 uses
  %.109411726 = phi ptr [ %.13944, %.thread1306 ], [ %.9940, %.loopexit1475 ] ; 4 uses
  %i.ahf = sext i8 %i.ahe to i32                  ; 2 uses
  %i.ahg = ptrtoint ptr %.178971727 to i64
  %i.ahh = ptrtoint ptr %.109411726 to i64        ; 2 uses
  %.neg1154 = sub i64 %i.ahh, %i.ahg
  %.neg1155 = trunc i64 %.neg1154 to i32
  %i.ahi = add i32 %.neg1155, 512
  %spec.select1209 = call i32 @llvm.smin.i32(i32 %i.ahi, i32 %i.ahf)
  %.6 = select i1 %.not1077, i32 %i.ahf, i32 %spec.select1209 ; 6 uses
  %i.ahj = trunc i32 %.6 to i8
  %i.ahk = sub i8 %i.ahe, %i.ahj
  store i8 %i.ahk, ptr %i.c, align 1, !tbaa !8
  %.not11561718 = icmp eq i32 %.6, 0
  br i1 %.not11561718, label %._crit_edge1723, label %.lr.ph1722.preheader

.lr.ph1722.preheader:                             ; preds = %.lr.ph1730
  %xtraiter2534 = and i32 %.6, 3                  ; 2 uses
  %lcmp.mod2535.not = icmp eq i32 %xtraiter2534, 0
  br i1 %lcmp.mod2535.not, label %.lr.ph1722.prol.loopexit, label %.lr.ph1722.prol

.lr.ph1722.prol:                                  ; preds = %.lr.ph1722.preheader, %.lr.ph1722.prol
  %.71720.prol = phi i32 [ %i.ahp, %.lr.ph1722.prol ], [ %.6, %.lr.ph1722.preheader ]
  %.188981719.prol = phi ptr [ %i.aho, %.lr.ph1722.prol ], [ %.178971727, %.lr.ph1722.preheader ] ; 2 uses
  %prol.iter2536 = phi i32 [ %prol.iter2536.next, %.lr.ph1722.prol ], [ 0, %.lr.ph1722.preheader ]
  %i.ahl = load ptr, ptr %i.g, align 8, !tbaa !15 ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 1
  store ptr %i.ahm, ptr %i.g, align 8, !tbaa !15
  %i.ahn = load i8, ptr %i.ahl, align 1, !tbaa !8
  %i.aho = getelementptr inbounds nuw i8, ptr %.188981719.prol, i64 1 ; 3 uses
  store i8 %i.ahn, ptr %.188981719.prol, align 1, !tbaa !8
  %i.ahp = add nsw i32 %.71720.prol, -1           ; 2 uses
  %prol.iter2536.next = add i32 %prol.iter2536, 1 ; 2 uses
  %prol.iter2536.cmp.not = icmp eq i32 %prol.iter2536.next, %xtraiter2534
  br i1 %prol.iter2536.cmp.not, label %.lr.ph1722.prol.loopexit, label %.lr.ph1722.prol, !llvm.loop !47

.lr.ph1722.prol.loopexit:                         ; preds = %.lr.ph1722.prol, %.lr.ph1722.preheader
  %.lcssa2483.unr = phi ptr [ poison, %.lr.ph1722.preheader ], [ %i.aho, %.lr.ph1722.prol ]
  %.71720.unr = phi i32 [ %.6, %.lr.ph1722.preheader ], [ %i.ahp, %.lr.ph1722.prol ]
  %.188981719.unr = phi ptr [ %.178971727, %.lr.ph1722.preheader ], [ %i.aho, %.lr.ph1722.prol ]
  %i.ahq = icmp ult i32 %.6, 4
  br i1 %i.ahq, label %._crit_edge1723, label %.lr.ph1722

.lr.ph1722:                                       ; preds = %.lr.ph1722.prol.loopexit, %.lr.ph1722
  %.71720 = phi i32 [ %i.aih, %.lr.ph1722 ], [ %.71720.unr, %.lr.ph1722.prol.loopexit ]
  %.188981719 = phi ptr [ %i.aig, %.lr.ph1722 ], [ %.188981719.unr, %.lr.ph1722.prol.loopexit ] ; 5 uses
  %i.ahr = load ptr, ptr %i.g, align 8, !tbaa !15 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 1
  store ptr %i.ahs, ptr %i.g, align 8, !tbaa !15
  %i.aht = load i8, ptr %i.ahr, align 1, !tbaa !8
  %i.ahu = getelementptr inbounds nuw i8, ptr %.188981719, i64 1
  store i8 %i.aht, ptr %.188981719, align 1, !tbaa !8
  %i.ahv = load ptr, ptr %i.g, align 8, !tbaa !15 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 1
  store ptr %i.ahw, ptr %i.g, align 8, !tbaa !15
  %i.ahx = load i8, ptr %i.ahv, align 1, !tbaa !8
  %i.ahy = getelementptr inbounds nuw i8, ptr %.188981719, i64 2
  store i8 %i.ahx, ptr %i.ahu, align 1, !tbaa !8
  %i.ahz = load ptr, ptr %i.g, align 8, !tbaa !15 ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 1
  store ptr %i.aia, ptr %i.g, align 8, !tbaa !15
  %i.aib = load i8, ptr %i.ahz, align 1, !tbaa !8
  %i.aic = getelementptr inbounds nuw i8, ptr %.188981719, i64 3
  store i8 %i.aib, ptr %i.ahy, align 1, !tbaa !8
  %i.aid = load ptr, ptr %i.g, align 8, !tbaa !15 ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 1
  store ptr %i.aie, ptr %i.g, align 8, !tbaa !15
  %i.aif = load i8, ptr %i.aid, align 1, !tbaa !8
  %i.aig = getelementptr inbounds nuw i8, ptr %.188981719, i64 4 ; 2 uses
  store i8 %i.aif, ptr %i.aic, align 1, !tbaa !8
  %i.aih = add nsw i32 %.71720, -4                ; 2 uses
  %.not1156.3 = icmp eq i32 %i.aih, 0
  br i1 %.not1156.3, label %._crit_edge1723, label %.lr.ph1722, !llvm.loop !48

._crit_edge1723:                                  ; preds = %.lr.ph1722.prol.loopexit, %.lr.ph1722, %.lr.ph1730
  %.18898.lcssa = phi ptr [ %.178971727, %.lr.ph1730 ], [ %.lcssa2483.unr, %.lr.ph1722.prol.loopexit ], [ %i.aig, %.lr.ph1722 ] ; 3 uses
  br i1 %.not1077, label %.thread1306, label %bb.gn

bb.gn:                                            ; preds = %._crit_edge1723
  %i.aii = ptrtoint ptr %.18898.lcssa to i64
  %i.aij = sub i64 %i.aii, %i.ahh
  %i.aik = trunc i64 %i.aij to i32                ; 3 uses
  %i.ail = icmp sgt i32 %i.aik, 510
  br i1 %i.ail, label %bb.go, label %.thread1306

bb.go:                                            ; preds = %bb.gn
  %i.aim = add nuw nsw i32 %.108371728, %i.aik    ; 2 uses
  %i.ain = call ptr %0(ptr noundef %.109411726, ptr noundef %1, i32 noundef %i.aik) #13 ; 3 uses
  %i.aio = icmp eq ptr %i.ain, null
  br i1 %i.aio, label %.thread1427, label %.thread1306

.thread1306:                                      ; preds = %bb.go, %bb.gn, %._crit_edge1723
  %.13944 = phi ptr [ %.109411726, %._crit_edge1723 ], [ %.109411726, %bb.gn ], [ %i.ain, %bb.go ] ; 2 uses
  %.21901 = phi ptr [ %.18898.lcssa, %._crit_edge1723 ], [ %.18898.lcssa, %bb.gn ], [ %i.ain, %bb.go ] ; 2 uses
  %.13840 = phi i32 [ %.108371728, %._crit_edge1723 ], [ %.108371728, %bb.gn ], [ %i.aim, %bb.go ] ; 2 uses
  %i.aip = load i8, ptr %i.c, align 1, !tbaa !8   ; 2 uses
  %.not1145 = icmp eq i8 %i.aip, 0
  br i1 %.not1145, label %._crit_edge1731, label %.lr.ph1730, !llvm.loop !49

._crit_edge1731:                                  ; preds = %.thread1306, %.loopexit1475
  %.10941.lcssa = phi ptr [ %.9940, %.loopexit1475 ], [ %.13944, %.thread1306 ] ; 2 uses
  %.17897.lcssa = phi ptr [ %.16896, %.loopexit1475 ], [ %.21901, %.thread1306 ] ; 2 uses
  %.10837.lcssa = phi i32 [ %.9836, %.loopexit1475 ], [ %.13840, %.thread1306 ] ; 2 uses
  %i.aiq = lshr i32 %.11717, 24                   ; 5 uses
  %i.air = and i32 %.18796, 64
  %.not1146 = icmp eq i32 %i.air, 0               ; 2 uses
  br i1 %.not1146, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %._crit_edge1731
  %i.ais = and i32 %.11717, 16777215
  %i.ait = add i32 %.13815, %i.ais
  %i.aiu = add nuw nsw i32 %i.aiq, 1
  %i.aiv = urem i32 %i.ait, %i.aiu
  %i.aiw = sub nsw i32 %i.aiq, %i.aiv
  br label %bb.gq

bb.gq:                                            ; preds = %._crit_edge1731, %bb.gp
  %i.aix = phi i32 [ %i.aiw, %bb.gp ], [ 0, %._crit_edge1731 ]
  %i.aiy = icmp sgt i32 %.13815, 0
  br i1 %i.aiy, label %.lr.ph1764, label %.loopexit1470.thread

.loopexit1470.thread:                             ; preds = %bb.gq
  store ptr %i.j, ptr %i.g, align 8, !tbaa !15
  br label %._crit_edge1781

.lr.ph1764:                                       ; preds = %bb.gq, %.thread1313
  %.127181762 = phi i32 [ %.13719.lcssa, %.thread1313 ], [ %i.aix, %bb.gq ] ; 6 uses
  %.148161761 = phi i32 [ %i.ajc, %.thread1313 ], [ %.13815, %bb.gq ] ; 3 uses
  %.148411760 = phi i32 [ %.17844, %.thread1313 ], [ %.10837.lcssa, %bb.gq ] ; 3 uses
  %.229021759 = phi ptr [ %.30910, %.thread1313 ], [ %.17897.lcssa, %bb.gq ] ; 7 uses
  %.149451758 = phi ptr [ %.17948, %.thread1313 ], [ %.10941.lcssa, %bb.gq ] ; 4 uses
  %i.aiz = ptrtoint ptr %.229021759 to i64        ; 2 uses
  %i.aja = ptrtoint ptr %.149451758 to i64        ; 2 uses
  %.neg1148 = sub i64 %i.aja, %i.aiz
  %.neg1149 = trunc i64 %.neg1148 to i32
  %i.ajb = add i32 %.neg1149, 512
  %spec.select1210 = call i32 @llvm.smin.i32(i32 %.148161761, i32 %i.ajb)
  %.9 = select i1 %.not1077, i32 %.148161761, i32 %spec.select1210 ; 8 uses
  %i.ajc = sub nsw i32 %.148161761, %.9           ; 2 uses
  %.not11501735 = icmp eq i32 %.9, 0              ; 2 uses
  br i1 %.not1146, label %.preheader1455, label %.loopexit.thread

.preheader1455:                                   ; preds = %.lr.ph1764
  %i.ajd = and i64 %i.aiz, 3
  %i.aje = icmp eq i64 %i.ajd, 0
  %or.cond12131736 = select i1 %.not11501735, i1 true, i1 %i.aje
  br i1 %or.cond12131736, label %.preheader1454, label %.lr.ph1739

.preheader1454:                                   ; preds = %.lr.ph1739, %.preheader1455
  %.23903.lcssa = phi ptr [ %.229021759, %.preheader1455 ], [ %i.ajo, %.lr.ph1739 ] ; 3 uses
  %.10.lcssa = phi i32 [ %.9, %.preheader1455 ], [ %i.ajp, %.lr.ph1739 ] ; 4 uses
  %i.ajf = icmp sgt i32 %.10.lcssa, 3
  br i1 %i.ajf, label %.lr.ph1744.preheader, label %.loopexit

.lr.ph1744.preheader:                             ; preds = %.preheader1454
  %i.ajg = call i32 @llvm.usub.sat.i32(i32 %.10.lcssa, i32 7)
  %i.ajh = add nuw i32 %i.ajg, 3                  ; 2 uses
  %i.aji = and i32 %i.ajh, 2147483644
  %i.ajj = zext nneg i32 %i.aji to i64            ; 2 uses
  %i.ajk = add nuw nsw i64 %i.ajj, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.23903.lcssa, i8 48, i64 %i.ajk, i1 false), !tbaa !9
  %scevgep2013 = getelementptr i8, ptr %.23903.lcssa, i64 4
  %scevgep2015.a = getelementptr i8, ptr %scevgep2013, i64 %i.ajj
  %i.ajl = add nsw i32 %.10.lcssa, -4
  %i.ajm = and i32 %i.ajh, -4
  %i.ajn = sub nsw i32 %i.ajl, %i.ajm
  br label %.loopexit

.lr.ph1739:                                       ; preds = %.preheader1455, %.lr.ph1739
  %.101738 = phi i32 [ %i.ajp, %.lr.ph1739 ], [ %.9, %.preheader1455 ]
  %.239031737 = phi ptr [ %i.ajo, %.lr.ph1739 ], [ %.229021759, %.preheader1455 ] ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %.239031737, i64 1 ; 3 uses
  store i8 48, ptr %.239031737, align 1, !tbaa !8
  %i.ajp = add nsw i32 %.101738, -1               ; 3 uses
  %.not1150 = icmp eq i32 %i.ajp, 0
  %i.ajq = ptrtoint ptr %i.ajo to i64
  %i.ajr = and i64 %i.ajq, 3
  %i.ajs = icmp eq i64 %i.ajr, 0
  %or.cond1213 = select i1 %.not1150, i1 true, i1 %i.ajs
  br i1 %or.cond1213, label %.preheader1454, label %.lr.ph1739, !llvm.loop !50

.loopexit:                                        ; preds = %.lr.ph1744.preheader, %.preheader1454
  %.25905 = phi ptr [ %scevgep2015.a, %.lr.ph1744.preheader ], [ %.23903.lcssa, %.preheader1454 ] ; 3 uses
  %.12 = phi i32 [ %i.ajn, %.lr.ph1744.preheader ], [ %.10.lcssa, %.preheader1454 ] ; 3 uses
  %.not11511747 = icmp eq i32 %.12, 0
  br i1 %.not11511747, label %._crit_edge1753, label %.lr.ph1752.split.us.preheader

.loopexit.thread:                                 ; preds = %.lr.ph1764
  br i1 %.not11501735, label %._crit_edge1753, label %.lr.ph1752.split.preheader

.lr.ph1752.split.preheader:                       ; preds = %.loopexit.thread
  %xtraiter2537 = and i32 %.9, 1
  %lcmp.mod2538.not = icmp eq i32 %xtraiter2537, 0
  br i1 %lcmp.mod2538.not, label %.lr.ph1752.split.prol.loopexit, label %.lr.ph1752.split.prol

.lr.ph1752.split.prol:                            ; preds = %.lr.ph1752.split.preheader
  %i.ajt = add i32 %.127181762, 1
  %i.aju = icmp eq i32 %.127181762, %i.aiq        ; 2 uses
  %i.ajv = load i8, ptr @stbsp__comma, align 1
  %spec.select1226.prol = select i1 %i.aju, i8 %i.ajv, i8 48
  %spec.select1227.prol = select i1 %i.aju, i32 0, i32 %i.ajt ; 2 uses
  %.27907.prol = getelementptr inbounds nuw i8, ptr %.229021759, i64 1 ; 2 uses
  store i8 %spec.select1226.prol, ptr %.229021759, align 1, !tbaa !8
  %i.ajw = add nsw i32 %.9, -1
  br label %.lr.ph1752.split.prol.loopexit

.lr.ph1752.split.prol.loopexit:                   ; preds = %.lr.ph1752.split.prol, %.lr.ph1752.split.preheader
  %spec.select1227.lcssa.unr = phi i32 [ poison, %.lr.ph1752.split.preheader ], [ %spec.select1227.prol, %.lr.ph1752.split.prol ]
  %.27907.lcssa.unr = phi ptr [ poison, %.lr.ph1752.split.preheader ], [ %.27907.prol, %.lr.ph1752.split.prol ]
  %.131750.unr = phi i32 [ %.9, %.lr.ph1752.split.preheader ], [ %i.ajw, %.lr.ph1752.split.prol ]
  %.137191749.unr = phi i32 [ %.127181762, %.lr.ph1752.split.preheader ], [ %spec.select1227.prol, %.lr.ph1752.split.prol ]
  %.269061748.unr = phi ptr [ %.229021759, %.lr.ph1752.split.preheader ], [ %.27907.prol, %.lr.ph1752.split.prol ]
  %i.ajx = icmp eq i32 %.9, 1
  br i1 %i.ajx, label %._crit_edge1753, label %.lr.ph1752.split

.lr.ph1752.split.us.preheader:                    ; preds = %.loopexit
  %i.ajy = zext i32 %.12 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.25905, i8 48, i64 %i.ajy, i1 false), !tbaa !8
  %scevgep2016.a = getelementptr i8, ptr %.25905, i64 1
  %i.ajz = add i32 %.12, -1
  %i.aka = zext i32 %i.ajz to i64
  %scevgep2017 = getelementptr i8, ptr %scevgep2016.a, i64 %i.aka
  br label %._crit_edge1753

.lr.ph1752.split:                                 ; preds = %.lr.ph1752.split.prol.loopexit, %.lr.ph1752.split
  %.131750 = phi i32 [ %i.akh, %.lr.ph1752.split ], [ %.131750.unr, %.lr.ph1752.split.prol.loopexit ]
  %.137191749 = phi i32 [ %spec.select1227.1, %.lr.ph1752.split ], [ %.137191749.unr, %.lr.ph1752.split.prol.loopexit ] ; 2 uses
  %.269061748 = phi ptr [ %.27907.1, %.lr.ph1752.split ], [ %.269061748.unr, %.lr.ph1752.split.prol.loopexit ] ; 3 uses
  %i.akb = add i32 %.137191749, 1
  %i.akc = icmp eq i32 %.137191749, %i.aiq        ; 2 uses
  %i.akd = load i8, ptr @stbsp__comma, align 1
  %spec.select1226 = select i1 %i.akc, i8 %i.akd, i8 48
  %spec.select1227 = select i1 %i.akc, i32 0, i32 %i.akb ; 2 uses
  %.27907 = getelementptr inbounds nuw i8, ptr %.269061748, i64 1
  store i8 %spec.select1226, ptr %.269061748, align 1, !tbaa !8
  %i.ake = add i32 %spec.select1227, 1
  %i.akf = icmp eq i32 %spec.select1227, %i.aiq   ; 2 uses
  %i.akg = load i8, ptr @stbsp__comma, align 1
  %spec.select1226.1 = select i1 %i.akf, i8 %i.akg, i8 48
  %spec.select1227.1 = select i1 %i.akf, i32 0, i32 %i.ake ; 2 uses
  %.27907.1 = getelementptr inbounds nuw i8, ptr %.269061748, i64 2 ; 2 uses
  store i8 %spec.select1226.1, ptr %.27907, align 1, !tbaa !8
  %i.akh = add nsw i32 %.131750, -2               ; 2 uses
  %.not1151.1 = icmp eq i32 %i.akh, 0
  br i1 %.not1151.1, label %._crit_edge1753, label %.lr.ph1752.split, !llvm.loop !51

._crit_edge1753:                                  ; preds = %.lr.ph1752.split.prol.loopexit, %.lr.ph1752.split, %.loopexit.thread, %.lr.ph1752.split.us.preheader, %.loopexit
  %.26906.lcssa = phi ptr [ %.25905, %.loopexit ], [ %scevgep2017, %.lr.ph1752.split.us.preheader ], [ %.229021759, %.loopexit.thread ], [ %.27907.lcssa.unr, %.lr.ph1752.split.prol.loopexit ], [ %.27907.1, %.lr.ph1752.split ] ; 3 uses
  %.13719.lcssa = phi i32 [ %.127181762, %.loopexit ], [ %.127181762, %.lr.ph1752.split.us.preheader ], [ %.127181762, %.loopexit.thread ], [ %spec.select1227.lcssa.unr, %.lr.ph1752.split.prol.loopexit ], [ %spec.select1227.1, %.lr.ph1752.split ]
  br i1 %.not1077, label %.thread1313, label %bb.gr

bb.gr:                                            ; preds = %._crit_edge1753
  %i.aki = ptrtoint ptr %.26906.lcssa to i64
  %i.akj = sub i64 %i.aki, %i.aja
  %i.akk = trunc i64 %i.akj to i32                ; 3 uses
  %i.akl = icmp sgt i32 %i.akk, 510
  br i1 %i.akl, label %bb.gs, label %.thread1313

bb.gs:                                            ; preds = %bb.gr
  %i.akm = add nuw nsw i32 %.148411760, %i.akk    ; 2 uses
  %i.akn = call ptr %0(ptr noundef %.149451758, ptr noundef %1, i32 noundef %i.akk) #13 ; 3 uses
  %i.ako = icmp eq ptr %i.akn, null
  br i1 %i.ako, label %.thread1427, label %.thread1313

.thread1313:                                      ; preds = %bb.gs, %bb.gr, %._crit_edge1753
  %.17948 = phi ptr [ %.149451758, %._crit_edge1753 ], [ %.149451758, %bb.gr ], [ %i.akn, %bb.gs ] ; 2 uses
  %.30910 = phi ptr [ %.26906.lcssa, %._crit_edge1753 ], [ %.26906.lcssa, %bb.gr ], [ %i.akn, %bb.gs ] ; 2 uses
  %.17844 = phi i32 [ %.148411760, %._crit_edge1753 ], [ %.148411760, %bb.gr ], [ %i.akm, %bb.gs ] ; 2 uses
  %i.akp = icmp sgt i32 %i.ajc, 0
  br i1 %i.akp, label %.lr.ph1764, label %.loopexit1470.loopexit, !llvm.loop !52

.loopexit1470.loopexit:                           ; preds = %.thread1313
  %.pre2040 = load i8, ptr %i.c, align 1, !tbaa !8
  br label %.loopexit1470

.loopexit1470:                                    ; preds = %.loopexit1470.loopexit, %bb.gj
  %i.akq = phi i8 [ %i.afk, %bb.gj ], [ %.pre2040, %.loopexit1470.loopexit ] ; 2 uses
  %.19950 = phi ptr [ %.1932, %bb.gj ], [ %.17948, %.loopexit1470.loopexit ] ; 2 uses
  %.32912 = phi ptr [ %.2882, %bb.gj ], [ %.30910, %.loopexit1470.loopexit ] ; 2 uses
  %.19846 = phi i32 [ %.1828, %bb.gj ], [ %.17844, %.loopexit1470.loopexit ] ; 2 uses
  %.8825 = phi i32 [ %.4821, %bb.gj ], [ %.6823, %.loopexit1470.loopexit ] ; 2 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !15
  %.not11571775 = icmp eq i8 %i.akq, 0
  br i1 %.not11571775, label %._crit_edge1781, label %.lr.ph1780

.lr.ph1780:                                       ; preds = %.loopexit1470, %bb.gv
  %i.akr = phi i8 [ %i.amc, %bb.gv ], [ %i.akq, %.loopexit1470 ] ; 2 uses
  %.208471778 = phi i32 [ %.24851, %bb.gv ], [ %.19846, %.loopexit1470 ] ; 3 uses
  %.339131777 = phi ptr [ %.38918, %bb.gv ], [ %.32912, %.loopexit1470 ] ; 4 uses
  %.209511776 = phi ptr [ %.24955, %bb.gv ], [ %.19950, %.loopexit1470 ] ; 4 uses
  %i.aks = sext i8 %i.akr to i32                  ; 2 uses
  %i.akt = ptrtoint ptr %.339131777 to i64
  %i.aku = ptrtoint ptr %.209511776 to i64        ; 2 uses
  %.neg1180 = sub i64 %i.aku, %i.akt
  %.neg1181 = trunc i64 %.neg1180 to i32
  %i.akv = add i32 %.neg1181, 512
  %spec.select1214 = call i32 @llvm.smin.i32(i32 %i.akv, i32 %i.aks)
  %.1687 = select i1 %.not1077, i32 %i.aks, i32 %spec.select1214 ; 6 uses
  %i.akw = trunc i32 %.1687 to i8
  %i.akx = sub i8 %i.akr, %i.akw
  store i8 %i.akx, ptr %i.c, align 1, !tbaa !8
  %.not11821768 = icmp eq i32 %.1687, 0
  br i1 %.not11821768, label %._crit_edge1773, label %.lr.ph1772.preheader

.lr.ph1772.preheader:                             ; preds = %.lr.ph1780
  %xtraiter2540 = and i32 %.1687, 3               ; 2 uses
  %lcmp.mod2541.not = icmp eq i32 %xtraiter2540, 0
  br i1 %lcmp.mod2541.not, label %.lr.ph1772.prol.loopexit, label %.lr.ph1772.prol

.lr.ph1772.prol:                                  ; preds = %.lr.ph1772.preheader, %.lr.ph1772.prol
  %.26881770.prol = phi i32 [ %i.alc, %.lr.ph1772.prol ], [ %.1687, %.lr.ph1772.preheader ]
  %.349141769.prol = phi ptr [ %i.alb, %.lr.ph1772.prol ], [ %.339131777, %.lr.ph1772.preheader ] ; 2 uses
  %prol.iter2542 = phi i32 [ %prol.iter2542.next, %.lr.ph1772.prol ], [ 0, %.lr.ph1772.preheader ]
  %i.aky = load ptr, ptr %i.g, align 8, !tbaa !15 ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 1
  store ptr %i.akz, ptr %i.g, align 8, !tbaa !15
  %i.ala = load i8, ptr %i.aky, align 1, !tbaa !8
  %i.alb = getelementptr inbounds nuw i8, ptr %.349141769.prol, i64 1 ; 3 uses
  store i8 %i.ala, ptr %.349141769.prol, align 1, !tbaa !8
  %i.alc = add nsw i32 %.26881770.prol, -1        ; 2 uses
  %prol.iter2542.next = add i32 %prol.iter2542, 1 ; 2 uses
  %prol.iter2542.cmp.not = icmp eq i32 %prol.iter2542.next, %xtraiter2540
  br i1 %prol.iter2542.cmp.not, label %.lr.ph1772.prol.loopexit, label %.lr.ph1772.prol, !llvm.loop !53

.lr.ph1772.prol.loopexit:                         ; preds = %.lr.ph1772.prol, %.lr.ph1772.preheader
  %.lcssa2488.unr = phi ptr [ poison, %.lr.ph1772.preheader ], [ %i.alb, %.lr.ph1772.prol ]
  %.26881770.unr = phi i32 [ %.1687, %.lr.ph1772.preheader ], [ %i.alc, %.lr.ph1772.prol ]
  %.349141769.unr = phi ptr [ %.339131777, %.lr.ph1772.preheader ], [ %i.alb, %.lr.ph1772.prol ]
  %i.ald = icmp ult i32 %.1687, 4
  br i1 %i.ald, label %._crit_edge1773, label %.lr.ph1772

.lr.ph1772:                                       ; preds = %.lr.ph1772.prol.loopexit, %.lr.ph1772
  %.26881770 = phi i32 [ %i.alu, %.lr.ph1772 ], [ %.26881770.unr, %.lr.ph1772.prol.loopexit ]
  %.349141769 = phi ptr [ %i.alt, %.lr.ph1772 ], [ %.349141769.unr, %.lr.ph1772.prol.loopexit ] ; 5 uses
  %i.ale = load ptr, ptr %i.g, align 8, !tbaa !15 ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 1
  store ptr %i.alf, ptr %i.g, align 8, !tbaa !15
  %i.alg = load i8, ptr %i.ale, align 1, !tbaa !8
  %i.alh = getelementptr inbounds nuw i8, ptr %.349141769, i64 1
  store i8 %i.alg, ptr %.349141769, align 1, !tbaa !8
  %i.ali = load ptr, ptr %i.g, align 8, !tbaa !15 ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 1
  store ptr %i.alj, ptr %i.g, align 8, !tbaa !15
  %i.alk = load i8, ptr %i.ali, align 1, !tbaa !8
  %i.all = getelementptr inbounds nuw i8, ptr %.349141769, i64 2
  store i8 %i.alk, ptr %i.alh, align 1, !tbaa !8
  %i.alm = load ptr, ptr %i.g, align 8, !tbaa !15 ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 1
  store ptr %i.aln, ptr %i.g, align 8, !tbaa !15
  %i.alo = load i8, ptr %i.alm, align 1, !tbaa !8
  %i.alp = getelementptr inbounds nuw i8, ptr %.349141769, i64 3
  store i8 %i.alo, ptr %i.all, align 1, !tbaa !8
  %i.alq = load ptr, ptr %i.g, align 8, !tbaa !15 ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 1
  store ptr %i.alr, ptr %i.g, align 8, !tbaa !15
  %i.als = load i8, ptr %i.alq, align 1, !tbaa !8
  %i.alt = getelementptr inbounds nuw i8, ptr %.349141769, i64 4 ; 2 uses
  store i8 %i.als, ptr %i.alp, align 1, !tbaa !8
  %i.alu = add nsw i32 %.26881770, -4             ; 2 uses
  %.not1182.3 = icmp eq i32 %i.alu, 0
  br i1 %.not1182.3, label %._crit_edge1773, label %.lr.ph1772, !llvm.loop !54

._crit_edge1773:                                  ; preds = %.lr.ph1772.prol.loopexit, %.lr.ph1772, %.lr.ph1780
  %.34914.lcssa = phi ptr [ %.339131777, %.lr.ph1780 ], [ %.lcssa2488.unr, %.lr.ph1772.prol.loopexit ], [ %i.alt, %.lr.ph1772 ] ; 3 uses
  br i1 %.not1077, label %bb.gv, label %bb.gt

bb.gt:                                            ; preds = %._crit_edge1773
  %i.alv = ptrtoint ptr %.34914.lcssa to i64
  %i.alw = sub i64 %i.alv, %i.aku
  %i.alx = trunc i64 %i.alw to i32                ; 3 uses
  %i.aly = icmp sgt i32 %i.alx, 510
  br i1 %i.aly, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.alz = add nuw nsw i32 %.208471778, %i.alx    ; 2 uses
  %i.ama = call ptr %0(ptr noundef %.209511776, ptr noundef %1, i32 noundef %i.alx) #13 ; 3 uses
  %i.amb = icmp eq ptr %i.ama, null
  br i1 %i.amb, label %.thread1427, label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %._crit_edge1773
  %.24955 = phi ptr [ %.209511776, %._crit_edge1773 ], [ %.209511776, %bb.gt ], [ %i.ama, %bb.gu ] ; 2 uses
  %.38918 = phi ptr [ %.34914.lcssa, %._crit_edge1773 ], [ %.34914.lcssa, %bb.gt ], [ %i.ama, %bb.gu ] ; 2 uses
  %.24851 = phi i32 [ %.208471778, %._crit_edge1773 ], [ %.208471778, %bb.gt ], [ %i.alz, %bb.gu ] ; 2 uses
  %i.amc = load i8, ptr %i.c, align 1, !tbaa !8   ; 2 uses
  %.not1157 = icmp eq i8 %i.amc, 0
  br i1 %.not1157, label %._crit_edge1781, label %.lr.ph1780, !llvm.loop !55

._crit_edge1781:                                  ; preds = %bb.gv, %.loopexit1470.thread, %.loopexit1470
  %.88252156 = phi i32 [ %.8825, %.loopexit1470 ], [ %.6823, %.loopexit1470.thread ], [ %.8825, %bb.gv ] ; 2 uses
  %.20951.lcssa = phi ptr [ %.19950, %.loopexit1470 ], [ %.10941.lcssa, %.loopexit1470.thread ], [ %.24955, %bb.gv ] ; 2 uses
  %.33913.lcssa = phi ptr [ %.32912, %.loopexit1470 ], [ %.17897.lcssa, %.loopexit1470.thread ], [ %.38918, %bb.gv ] ; 2 uses
  %.20847.lcssa = phi i32 [ %.19846, %.loopexit1470 ], [ %.10837.lcssa, %.loopexit1470.thread ], [ %.24851, %bb.gv ] ; 2 uses
  %i.amd = load i32, ptr %i.e, align 4, !tbaa !9  ; 2 uses
  %.not11581801 = icmp eq i32 %i.amd, 0
end_hunk_1
