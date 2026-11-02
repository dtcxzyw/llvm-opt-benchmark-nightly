Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ucnvisci?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL40UConverter_toUnicode_ISCII_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.bm = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not741 = icmp eq ptr %i.bm, null
  br i1 %.not741, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.a, align 8
  %i.bo = ptrtoint ptr %i.aa to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = xor i64 %i.bp, -1
  %i.br = add i64 %i.bq, %i.bo
  %i.bs = trunc i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store ptr %i.bt, ptr %i.x, align 8
  store i32 %i.bs, ptr %i.bm, align 4
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.bu = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 144
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 93 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1             ; 2 uses
  %i.by = add i8 %i.bx, 1
  store i8 %i.by, ptr %i.bw, align 1
  %i.bz = sext i8 %i.bx to i64
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.bv, i64 %i.bz
  store i16 %i.bk, ptr %i.ca, align 2
  store i32 15, ptr %1, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.1608 = phi ptr [ %i.bl, %bb.q ], [ %i.bl, %bb.p ], [ %.0607.ph872, %bb.r ]
  store i32 0, ptr %i.w, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.2609 = phi ptr [ %.1608, %bb.s ], [ %.0607.ph872, %bb.n ] ; 4 uses
  %i.cb = load i16, ptr %i.t, align 4
  %i.cc = load ptr, ptr %i.e, align 8
  %i.cd = icmp ult ptr %.2609, %i.cc
  %i.ce = trunc nuw nsw i32 %i.az to i16
  %i.cf = add i16 %i.cb, %i.ce                    ; 2 uses
  br i1 %i.cd, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %.2609, i64 2 ; 2 uses
  store i16 %i.cf, ptr %.2609, align 2
  %i.ch = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not742 = icmp eq ptr %i.ch, null
  br i1 %.not742, label %.outer.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = load ptr, ptr %i.a, align 8
  %i.cj = ptrtoint ptr %i.aa to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = add i32 %i.cm, -2
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store ptr %i.co, ptr %i.x, align 8
  store i32 %i.cn, ptr %i.ch, align 4
  br label %.outer.backedge

bb.w:                                             ; preds = %bb.t
  %i.cp = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 144
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 93 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1             ; 2 uses
  %i.ct = add i8 %i.cs, 1
  store i8 %i.ct, ptr %i.cr, align 1
  %i.cu = sext i8 %i.cs to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.cu
  store i16 %i.cf, ptr %i.cv, align 2
  store i32 15, ptr %1, align 4
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %.thread813.thread, %bb.dt, %bb.cm, %bb.cl, %bb.ck, %bb.ak, %bb.ax, %bb.w, %bb.v, %bb.u, %bb.da, %bb.bz
  %i.cw = phi ptr [ %i.eo, %.thread813.thread ], [ %i.eo, %bb.dt ], [ %i.eo, %bb.cm ], [ %i.eo, %bb.cl ], [ %i.eo, %bb.ck ], [ %i.eo, %bb.ak ], [ %i.eo, %bb.ax ], [ %i.aa, %bb.w ], [ %i.aa, %bb.v ], [ %i.aa, %bb.u ], [ %i.eo, %bb.da ], [ %i.eo, %bb.bz ] ; 3 uses
  %.0607.ph.be = phi ptr [ %.25830, %.thread813.thread ], [ %.25830, %bb.dt ], [ %.18, %bb.cm ], [ %i.mh, %bb.cl ], [ %i.mh, %bb.ck ], [ %.7614, %bb.ak ], [ %.10617, %bb.ax ], [ %.2609, %bb.w ], [ %i.cg, %bb.v ], [ %i.cg, %bb.u ], [ %.21, %bb.da ], [ %.16623, %bb.bz ] ; 2 uses
  %i.cx = load i32, ptr %1, align 4               ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 1
  %i.cz = icmp ult ptr %i.cw, %i.d
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %i.da, label %.lr.ph, label %.loopexit841, !llvm.loop !6

bb.x:                                             ; preds = %bb.l, %bb.m
  store i32 10, ptr %1, align 4
  br label %bb.dv

bb.y:                                             ; preds = %bb.k
  store i16 -2, ptr %i.m, align 2
  store i32 12, ptr %1, align 4
  br label %bb.dv

bb.z:                                             ; preds = %.lr.ph.split
  %.not670 = icmp eq i8 %i.ab, -24
  %i.db = load i32, ptr %i.w, align 4             ; 2 uses
  %.not = icmp eq i32 %i.db, 0
  %.pre907.a = load ptr, ptr %i.e, align 8        ; 2 uses
  br i1 %.not, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = icmp ult ptr %.0607.ph872, %.pre907.a
  %i.dd = trunc i32 %i.db to i16                  ; 2 uses
  br i1 %i.dc, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %.0607.ph872, i64 2 ; 2 uses
  store i16 %i.dd, ptr %.0607.ph872, align 2
  %i.df = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not669 = icmp eq ptr %i.df, null
  br i1 %.not669, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = load ptr, ptr %i.a, align 8
  %i.dh = ptrtoint ptr %i.aa to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = xor i64 %i.di, -1
  %i.dk = add i64 %i.dj, %i.dh
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store ptr %i.dm, ptr %i.x, align 8
  store i32 %i.dl, ptr %i.df, align 4
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.dn = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 144
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 93 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1             ; 2 uses
  %i.dr = add i8 %i.dq, 1
  store i8 %i.dr, ptr %i.dp, align 1
  %i.ds = sext i8 %i.dq to i64
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.do, i64 %i.ds
  store i16 %i.dd, ptr %i.dt, align 2
  store i32 15, ptr %1, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %.4611 = phi ptr [ %i.de, %bb.ac ], [ %i.de, %bb.ab ], [ %.0607.ph872, %bb.ad ]
  store i32 0, ptr %i.w, align 4
  %.pre906.a = load ptr, ptr %i.e, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.z
  %i.du = phi ptr [ %.pre906.a, %bb.ae ], [ %.pre907.a, %bb.z ]
  %.5612 = phi ptr [ %.4611, %bb.ae ], [ %.0607.ph872, %bb.z ] ; 4 uses
  %i.dv = icmp ult ptr %.5612, %i.du
  %i.dw = select i1 %.not670, i16 32, i16 8205    ; 2 uses
  br i1 %i.dv, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.dx = getelementptr inbounds nuw i8, ptr %.5612, i64 2 ; 2 uses
  store i16 %i.dw, ptr %.5612, align 2
  %i.dy = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not671 = icmp eq ptr %i.dy, null
  br i1 %.not671, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dz = load ptr, ptr %i.a, align 8
  %i.ea = ptrtoint ptr %i.aa to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = add i32 %i.ed, -2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store ptr %i.ef, ptr %i.x, align 8
  store i32 %i.ee, ptr %i.dy, align 4
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.eg = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 144
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 93 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1             ; 2 uses
  %i.ek = add i8 %i.ej, 1
  store i8 %i.ek, ptr %i.ei, align 1
  %i.el = sext i8 %i.ej to i64
  %i.em = getelementptr inbounds [2 x i8], ptr %i.eh, i64 %i.el
  store i16 %i.dw, ptr %i.em, align 2
  store i32 15, ptr %1, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ah, %bb.ai
  %.6613 = phi ptr [ %i.dx, %bb.ah ], [ %i.dx, %bb.ag ], [ %.5612, %bb.ai ]
  store i16 -2, ptr %i.m, align 4
  br label %.loopexit842

.loopexit842:                                     ; preds = %.lr.ph.split, %.lr.ph.split.jt65534, %bb.aj
  %i.en = phi i8 [ %i.ab, %bb.aj ], [ %i.ad, %.lr.ph.split.jt65534 ], [ %i.ab, %.lr.ph.split ] ; 10 uses
  %i.eo = phi ptr [ %i.aa, %bb.aj ], [ %i.ac, %.lr.ph.split.jt65534 ], [ %i.aa, %.lr.ph.split ] ; 22 uses
  %i.ep = phi i16 [ -2, %bb.aj ], [ -2, %.lr.ph.split.jt65534 ], [ %.pre, %.lr.ph.split ] ; 6 uses
  %.7614 = phi ptr [ %.6613, %bb.aj ], [ %.0607.ph872, %.lr.ph.split.jt65534 ], [ %.0607.ph872, %.lr.ph.split ] ; 28 uses
  switch i8 %i.en, label %.thread810 [
    i8 -39, label %bb.ak
    i8 -16, label %bb.ak
    i8 -17, label %bb.ak
    i8 -22, label %bb.ay
    i8 -24, label %bb.ba
    i8 10, label %bb.bc
    i8 13, label %bb.bc
    i8 -32, label %2
    i8 -23, label %bb.bd
  ]

bb.ak:                                            ; preds = %.loopexit842, %.loopexit842, %.loopexit842
  %i.eq = zext i8 %i.en to i16
  store i16 %i.eq, ptr %i.m, align 2
  %i.er = load i32, ptr %i.n, align 8             ; 2 uses
  %.not694 = icmp eq i32 %i.er, 65535
  br i1 %.not694, label %.outer.backedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.es = load i32, ptr %i.w, align 4             ; 2 uses
  %.not695 = icmp eq i32 %i.es, 0
  br i1 %.not695, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.et = load ptr, ptr %i.e, align 8
  %i.eu = icmp ult ptr %.7614, %i.et
  %i.ev = trunc i32 %i.es to i16                  ; 2 uses
  br i1 %i.eu, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ew = getelementptr inbounds nuw i8, ptr %.7614, i64 2 ; 2 uses
  store i16 %i.ev, ptr %.7614, align 2
  %i.ex = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not700 = icmp eq ptr %i.ex, null
  br i1 %.not700, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ey = load ptr, ptr %i.a, align 8
  %i.ez = ptrtoint ptr %i.eo to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = xor i64 %i.fa, -1
  %i.fc = add i64 %i.fb, %i.ez
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store ptr %i.fe, ptr %i.x, align 8
  store i32 %i.fd, ptr %i.ex, align 4
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  %i.ff = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 144
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 93 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1             ; 2 uses
  %i.fj = add i8 %i.fi, 1
  store i8 %i.fj, ptr %i.fh, align 1
  %i.fk = sext i8 %i.fi to i64
  %i.fl = getelementptr inbounds [2 x i8], ptr %i.fg, i64 %i.fk
  store i16 %i.ev, ptr %i.fl, align 2
  store i32 15, ptr %1, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.ao, %bb.ap
  %.8615 = phi ptr [ %i.ew, %bb.ao ], [ %i.ew, %bb.an ], [ %.7614, %bb.ap ]
  store i32 0, ptr %i.w, align 4
  %.pre911.a = load i32, ptr %i.n, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.al, %bb.aq
  %i.fm = phi i32 [ %.pre911.a, %bb.aq ], [ %i.er, %bb.al ]
  %.9616 = phi ptr [ %.8615, %bb.aq ], [ %.7614, %bb.al ] ; 4 uses
  %.fr = freeze i32 %i.fm                         ; 8 uses
  %i.fn = icmp slt i32 %.fr, 161
  br i1 %i.fn, label %bb.at, label %switch.early.test799

switch.early.test799:                             ; preds = %bb.ar
  switch i32 %.fr, label %bb.as [
    i32 8205, label %bb.at
    i32 8204, label %bb.at
    i32 2405, label %bb.at
    i32 2404, label %bb.at
  ]

bb.as:                                            ; preds = %switch.early.test799
  %i.fo = load i16, ptr %i.t, align 4
  %i.fp = zext i16 %i.fo to i32
  %i.fq = add nuw nsw i32 %.fr, %i.fp             ; 2 uses
  store i32 %i.fq, ptr %i.n, align 8
  br label %bb.at

bb.at:                                            ; preds = %switch.early.test799, %switch.early.test799, %switch.early.test799, %switch.early.test799, %bb.ar, %bb.as
  %i.fr = phi i32 [ %.fr, %switch.early.test799 ], [ %.fr, %switch.early.test799 ], [ %.fr, %switch.early.test799 ], [ %.fr, %switch.early.test799 ], [ %.fr, %bb.ar ], [ %i.fq, %bb.as ]
  %i.fs = load ptr, ptr %i.e, align 8
  %i.ft = icmp ult ptr %.9616, %i.fs
  %i.fu = trunc i32 %i.fr to i16                  ; 2 uses
  br i1 %i.ft, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.fv = getelementptr inbounds nuw i8, ptr %.9616, i64 2 ; 2 uses
  store i16 %i.fu, ptr %.9616, align 2
  %i.fw = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not705 = icmp eq ptr %i.fw, null
  br i1 %.not705, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fx = load ptr, ptr %i.a, align 8
  %i.fy = ptrtoint ptr %i.eo to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = add i32 %i.gb, -2
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store ptr %i.gd, ptr %i.x, align 8
  store i32 %i.gc, ptr %i.fw, align 4
  br label %bb.ax

bb.aw:                                            ; preds = %bb.at
  %i.ge = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 144
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 93 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1             ; 2 uses
  %i.gi = add i8 %i.gh, 1
  store i8 %i.gi, ptr %i.gg, align 1
  %i.gj = sext i8 %i.gh to i64
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.gj
  store i16 %i.fu, ptr %i.gk, align 2
  store i32 15, ptr %1, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.au, %bb.av, %bb.aw
  %.10617 = phi ptr [ %i.fv, %bb.av ], [ %i.fv, %bb.au ], [ %.9616, %bb.aw ]
  store i32 65535, ptr %i.n, align 8
  br label %.outer.backedge

bb.ay:                                            ; preds = %.loopexit842
  %i.gl = icmp eq i16 %i.ep, 234
  br i1 %i.gl, label %.thread813.thread.sink.split, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gm = load i32, ptr %i.v, align 4
  %i.gn = and i32 %i.gm, 128
  %i.go = icmp eq i32 %i.gn, 0
  %spec.select = select i1 %i.go, i32 65535, i32 2404
  br label %bb.cq

bb.ba:                                            ; preds = %.loopexit842
  %i.gp = icmp eq i16 %i.ep, 232
  br i1 %i.gp, label %bb.cq, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gq = load i32, ptr %i.v, align 4
  %i.gr = and i32 %i.gq, 255
  %i.gs = icmp eq i32 %i.gr, 0
  %spec.select832 = select i1 %i.gs, i32 65535, i32 2381
  br label %bb.cq

bb.bc:                                            ; preds = %.loopexit842, %.loopexit842
  store i8 1, ptr %i.y, align 1
  %i.gt = zext nneg i8 %i.en to i64
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr @_ZL14toUnicodeTable, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2
  %i.gw = zext i16 %i.gv to i32
  %i.gx = zext nneg i8 %i.en to i16
  br label %bb.cq

2:                                                ; preds = %.loopexit842
  %3 = and i16 %i.ep, 255
  %4 = icmp ne i16 %3, 164
  %.pre908 = load i32, ptr %i.v, align 4          ; 2 uses
  %5 = and i32 %.pre908, 128
  %.not693 = icmp eq i32 %5, 0
  %or.cond979 = select i1 %4, i1 true, i1 %.not693
  br i1 %or.cond979, label %.loopexit.a, label %.thread813.thread.sink.split, !llvm.loop !7

.loopexit.a:                                      ; preds = %2
  %i.gy = and i32 %.pre908, 135
  %i.gz = icmp eq i32 %i.gy, 0
  %spec.select875 = select i1 %i.gz, i32 65535, i32 2374
  br label %bb.cq

bb.bd:                                            ; preds = %.loopexit842
  %i.ha = icmp eq i16 %i.ep, 232
  br i1 %i.ha, label %bb.cq, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hb = load i16, ptr %i.t, align 4
  %i.hc = icmp eq i16 %i.hb, 256
  %i.hd = icmp eq i16 %i.ep, 192
  %or.cond767 = and i1 %i.hd, %i.hc
  br i1 %or.cond767, label %bb.bf, label %.preheader840

.preheader840:                                    ; preds = %bb.be
  %trunc = trunc i16 %i.ep to i8
  switch i8 %trunc, label %.thread810.thread [
    i8 -90, label %bb.ca
    i8 -22, label %.fold.split
    i8 -33, label %.fold.split981.a
    i8 -95, label %.fold.split982.a
    i8 -77, label %.fold.split983.a
    i8 -76, label %.fold.split984.a
    i8 -75, label %.fold.split985.a
    i8 -70, label %.fold.split986.a
    i8 -65, label %.fold.split987.a
    i8 -64, label %.fold.split988.a
    i8 -55, label %.fold.split989.a
    i8 -86, label %.fold.split990.a
    i8 -89, label %.fold.split991.a
    i8 -37, label %.fold.split992.a
    i8 -36, label %.fold.split993
  ]

bb.bf:                                            ; preds = %bb.be
  %i.he = load i32, ptr %i.w, align 4             ; 2 uses
  %.not681 = icmp eq i32 %i.he, 0
  %.pre909 = load ptr, ptr %i.e, align 8          ; 2 uses
  br i1 %.not681, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hf = icmp ult ptr %.7614, %.pre909
  %i.hg = trunc i32 %i.he to i16                  ; 2 uses
  br i1 %i.hf, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.hh = getelementptr inbounds nuw i8, ptr %.7614, i64 2 ; 2 uses
  store i16 %i.hg, ptr %.7614, align 2
  %i.hi = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not686 = icmp eq ptr %i.hi, null
  br i1 %.not686, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hj = load ptr, ptr %i.a, align 8
  %i.hk = ptrtoint ptr %i.eo to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = xor i64 %i.hl, -1
  %i.hn = add i64 %i.hm, %i.hk
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  store ptr %i.hp, ptr %i.x, align 8
  store i32 %i.ho, ptr %i.hi, align 4
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bg
  %i.hq = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 144
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 93 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1             ; 2 uses
  %i.hu = add i8 %i.ht, 1
  store i8 %i.hu, ptr %i.hs, align 1
  %i.hv = sext i8 %i.ht to i64
  %i.hw = getelementptr inbounds [2 x i8], ptr %i.hr, i64 %i.hv
  store i16 %i.hg, ptr %i.hw, align 2
  store i32 15, ptr %1, align 4
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bh, %bb.bi, %bb.bj
  %.12619 = phi ptr [ %i.hh, %bb.bi ], [ %i.hh, %bb.bh ], [ %.7614, %bb.bj ]
  store i32 0, ptr %i.w, align 4
  %.pre908.a = load ptr, ptr %i.e, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bf
  %i.hx = phi ptr [ %.pre908.a, %bb.bk ], [ %.pre909, %bb.bf ]
  %.13620 = phi ptr [ %.12619, %bb.bk ], [ %.7614, %bb.bf ] ; 6 uses
  %i.hy = icmp ult ptr %.13620, %i.hx
  br i1 %i.hy, label %bb.bm, label %.thread

bb.bm:                                            ; preds = %bb.bl
  %i.hz = getelementptr inbounds nuw i8, ptr %.13620, i64 2 ; 4 uses
  store i16 2652, ptr %.13620, align 2
  %i.ia = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not687 = icmp eq ptr %i.ia, null
  br i1 %.not687, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ib = load ptr, ptr %i.a, align 8
  %i.ic = ptrtoint ptr %i.eo to i64
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = trunc i64 %i.ie to i32
  %i.ig = add i32 %i.if, -2
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  store ptr %i.ih, ptr %i.x, align 8
  store i32 %i.ig, ptr %i.ia, align 4
  br label %bb.bo

.thread:                                          ; preds = %bb.bl
  %i.ii = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 144
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 93 ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1             ; 2 uses
  %i.im = add i8 %i.il, 1
  store i8 %i.im, ptr %i.ik, align 1
  %i.in = sext i8 %i.il to i64
  %i.io = getelementptr inbounds [2 x i8], ptr %i.ij, i64 %i.in
  store i16 2652, ptr %i.io, align 2
  store i32 15, ptr %1, align 4
  br label %bb.by

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %.pr948 = load i32, ptr %1, align 4
  %i.ip = icmp sgt i32 %.pr948, 0
  br i1 %i.ip, label %bb.by, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.iq = load ptr, ptr %i.e, align 8
  %i.ir = icmp ult ptr %i.hz, %i.iq
  br i1 %i.ir, label %bb.bq, label %.thread953

bb.bq:                                            ; preds = %bb.bp
  %i.is = getelementptr inbounds nuw i8, ptr %.13620, i64 4 ; 4 uses
  store i16 2637, ptr %i.hz, align 2
  %i.it = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not689 = icmp eq ptr %i.it, null
  br i1 %.not689, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.iu = load ptr, ptr %i.a, align 8
  %i.iv = ptrtoint ptr %i.eo to i64
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = sub i64 %i.iv, %i.iw
  %i.iy = trunc i64 %i.ix to i32
  %i.iz = add i32 %i.iy, -2
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  store ptr %i.ja, ptr %i.x, align 8
  store i32 %i.iz, ptr %i.it, align 4
  br label %bb.bs

.thread953:                                       ; preds = %bb.bp
  %i.jb = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 144
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 93 ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1             ; 2 uses
  %i.jf = add i8 %i.je, 1
  store i8 %i.jf, ptr %i.jd, align 1
  %i.jg = sext i8 %i.je to i64
  %i.jh = getelementptr inbounds [2 x i8], ptr %i.jc, i64 %i.jg
  store i16 2637, ptr %i.jh, align 2
  store i32 15, ptr %1, align 4
  br label %bb.bx

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %.pr952 = load i32, ptr %1, align 4
  %i.ji = icmp sgt i32 %.pr952, 0
  br i1 %i.ji, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jj = load ptr, ptr %i.e, align 8
  %i.jk = icmp ult ptr %i.is, %i.jj
  br i1 %i.jk, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.jl = getelementptr inbounds nuw i8, ptr %.13620, i64 6 ; 2 uses
  store i16 2617, ptr %i.is, align 2
  %i.jm = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not691 = icmp eq ptr %i.jm, null
  br i1 %.not691, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jn = load ptr, ptr %i.a, align 8
  %i.jo = ptrtoint ptr %i.eo to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = trunc i64 %i.jq to i32
  %i.js = add i32 %i.jr, -2
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  store ptr %i.jt, ptr %i.x, align 8
  store i32 %i.js, ptr %i.jm, align 4
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bt
  %i.ju = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 144
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 93 ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1             ; 2 uses
  %i.jy = add i8 %i.jx, 1
  store i8 %i.jy, ptr %i.jw, align 1
end_hunk_0
begin_hunk_1_@_ZL40UConverter_toUnicode_ISCII_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.pl = trunc i32 %.pre912 to i16               ; 2 uses
  br i1 %i.pk, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %_ZL14isPNJConsonanti.exit.thread.thread
  %i.pm = getelementptr inbounds nuw i8, ptr %.7614, i64 2 ; 2 uses
  store i16 %i.pl, ptr %.7614, align 2
  %i.pn = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not714 = icmp eq ptr %i.pn, null
  br i1 %.not714, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.po = load ptr, ptr %i.a, align 8
  %i.pp = ptrtoint ptr %i.eo to i64
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = xor i64 %i.pq, -1
  %i.ps = add i64 %i.pr, %i.pp
  %i.pt = trunc i64 %i.ps to i32
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  store ptr %i.pu, ptr %i.x, align 8
  store i32 %i.pt, ptr %i.pn, align 4
  br label %bb.de

bb.dd:                                            ; preds = %_ZL14isPNJConsonanti.exit.thread.thread
  %i.pv = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 144
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 93 ; 2 uses
  %i.py = load i8, ptr %i.px, align 1             ; 2 uses
  %i.pz = add i8 %i.py, 1
  store i8 %i.pz, ptr %i.px, align 1
  %i.qa = sext i8 %i.py to i64
  %i.qb = getelementptr inbounds [2 x i8], ptr %i.pw, i64 %i.qa
  store i16 %i.pl, ptr %i.qb, align 2
  store i32 15, ptr %1, align 4
  br label %bb.de

bb.de:                                            ; preds = %bb.db, %bb.dc, %bb.dd
  %.22 = phi ptr [ %i.pm, %bb.dc ], [ %i.pm, %bb.db ], [ %.7614, %bb.dd ]
  store i32 0, ptr %i.w, align 4
  %.pre913.a = load i16, ptr %i.t, align 4
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %_ZL14isPNJConsonanti.exit.thread
  %i.qc = phi i16 [ %.pre913.a, %bb.de ], [ %i.nt, %_ZL14isPNJConsonanti.exit.thread ] ; 2 uses
  %.23 = phi ptr [ %.22, %bb.de ], [ %.7614, %_ZL14isPNJConsonanti.exit.thread ] ; 9 uses
  %i.qd = icmp eq i16 %i.qc, 256                  ; 2 uses
  %i.qe = icmp eq i32 %.15.ph, 2306
  %or.cond784 = select i1 %i.qd, i1 %i.qe, i1 false
  br i1 %or.cond784, label %bb.dg, label %bb.dk

bb.dg:                                            ; preds = %bb.df
  %i.qf = load i32, ptr %i.n, align 8
  %.fr837 = freeze i32 %i.qf                      ; 4 uses
  %i.qg = add nsw i32 %.fr837, 256                ; 3 uses
  %i.qh = add i32 %.fr837, -2384
  %or.cond.i803 = icmp ult i32 %i.qh, -80
  br i1 %or.cond.i803, label %_ZL14isPNJConsonanti.exit807.thread, label %_ZL15isPNJBindiTippii.exit

_ZL15isPNJBindiTippii.exit:                       ; preds = %bb.dg
  %i.qi = zext nneg i32 %i.qg to i64
  %i.qj = getelementptr i8, ptr @_ZL6pnjMap, i64 %i.qi
  %i.qk = getelementptr i8, ptr %i.qj, i64 -2560
  %i.ql = load i8, ptr %i.qk, align 1
  %.not715 = icmp ult i8 %i.ql, 2
  br i1 %.not715, label %_ZL14isPNJConsonanti.exit807.thread, label %switch.early.test800

switch.early.test800:                             ; preds = %_ZL15isPNJBindiTippii.exit
  store i32 %i.qg, ptr %i.n, align 8
  %i.qm = load ptr, ptr %i.e, align 8
  %i.qn = icmp ult ptr %.23, %i.qm
  %i.qo = trunc nuw i32 %i.qg to i16              ; 2 uses
  br i1 %i.qn, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %switch.early.test800
  %i.qp = getelementptr inbounds nuw i8, ptr %.23, i64 2 ; 2 uses
  store i16 %i.qo, ptr %.23, align 2
  %i.qq = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not726 = icmp eq ptr %i.qq, null
  br i1 %.not726, label %bb.ds, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.qr = load ptr, ptr %i.a, align 8
  %i.qs = ptrtoint ptr %i.eo to i64
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = sub i64 %i.qs, %i.qt
  %i.qv = trunc i64 %i.qu to i32
  %i.qw = add i32 %i.qv, -2
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qq, i64 4
  store ptr %i.qx, ptr %i.x, align 8
  store i32 %i.qw, ptr %i.qq, align 4
  br label %bb.ds

bb.dj:                                            ; preds = %switch.early.test800
  %i.qy = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 144
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 93 ; 2 uses
  %i.rb = load i8, ptr %i.ra, align 1             ; 2 uses
  %i.rc = add i8 %i.rb, 1
  store i8 %i.rc, ptr %i.ra, align 1
  %i.rd = sext i8 %i.rb to i64
  %i.re = getelementptr inbounds [2 x i8], ptr %i.qz, i64 %i.rd
  store i16 %i.qo, ptr %i.re, align 2
  store i32 15, ptr %1, align 4
  br label %bb.ds

bb.dk:                                            ; preds = %bb.df
  %i.rf = icmp eq i32 %.15.ph, 2381
  %or.cond789 = select i1 %i.qd, i1 %i.rf, i1 false
  %.pr826.pre = load i32, ptr %i.n, align 8       ; 5 uses
  br i1 %or.cond789, label %bb.dl, label %_ZL14isPNJConsonanti.exit807.thread

bb.dl:                                            ; preds = %bb.dk
  %i.rg = add nuw nsw i32 %.pr826.pre, 256        ; 2 uses
  %i.rh = add i32 %.pr826.pre, -2384
  %or.cond.i805 = icmp ult i32 %i.rh, -80
  br i1 %or.cond.i805, label %_ZL14isPNJConsonanti.exit807.thread, label %_ZL14isPNJConsonanti.exit807

_ZL14isPNJConsonanti.exit807:                     ; preds = %bb.dl
  %i.ri = zext nneg i32 %i.rg to i64
  %i.rj = getelementptr i8, ptr @_ZL6pnjMap, i64 %i.ri
  %i.rk = getelementptr i8, ptr %i.rj, i64 -2560
  %i.rl = load i8, ptr %i.rk, align 1
  %i.rm = and i8 %i.rl, 1
  %.not716 = icmp eq i8 %i.rm, 0
  br i1 %.not716, label %_ZL14isPNJConsonanti.exit807.thread, label %bb.dm

bb.dm:                                            ; preds = %_ZL14isPNJConsonanti.exit807
  store i32 %i.rg, ptr %i.w, align 4
  br label %bb.ds

_ZL14isPNJConsonanti.exit807.thread:              ; preds = %bb.dk, %_ZL14isPNJConsonanti.exit807, %_ZL15isPNJBindiTippii.exit, %bb.dg, %bb.dl
  %i.rn = phi i32 [ %.pr826.pre, %bb.dl ], [ %.fr837, %bb.dg ], [ %.fr837, %_ZL15isPNJBindiTippii.exit ], [ %.pr826.pre, %_ZL14isPNJConsonanti.exit807 ], [ %.pr826.pre, %bb.dk ]
  %.fr838 = freeze i32 %i.rn                      ; 8 uses
  %i.ro = icmp slt i32 %.fr838, 161
  br i1 %i.ro, label %bb.do, label %switch.early.test801

switch.early.test801:                             ; preds = %_ZL14isPNJConsonanti.exit807.thread
  switch i32 %.fr838, label %bb.dn [
    i32 8205, label %bb.do
    i32 8204, label %bb.do
    i32 2405, label %bb.do
    i32 2404, label %bb.do
  ]

bb.dn:                                            ; preds = %switch.early.test801
  %i.rp = zext i16 %i.qc to i32
  %i.rq = add nuw nsw i32 %.fr838, %i.rp          ; 2 uses
  store i32 %i.rq, ptr %i.n, align 8
  br label %bb.do

bb.do:                                            ; preds = %switch.early.test801, %switch.early.test801, %switch.early.test801, %switch.early.test801, %_ZL14isPNJConsonanti.exit807.thread, %bb.dn
  %i.rr = phi i32 [ %.fr838, %switch.early.test801 ], [ %.fr838, %switch.early.test801 ], [ %.fr838, %switch.early.test801 ], [ %.fr838, %switch.early.test801 ], [ %.fr838, %_ZL14isPNJConsonanti.exit807.thread ], [ %i.rq, %bb.dn ]
  %i.rs = load ptr, ptr %i.e, align 8
  %i.rt = icmp ult ptr %.23, %i.rs
  %i.ru = trunc i32 %i.rr to i16                  ; 2 uses
  br i1 %i.rt, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %bb.do
  %i.rv = getelementptr inbounds nuw i8, ptr %.23, i64 2 ; 2 uses
  store i16 %i.ru, ptr %.23, align 2
  %i.rw = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not721 = icmp eq ptr %i.rw, null
  br i1 %.not721, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.rx = load ptr, ptr %i.a, align 8
  %i.ry = ptrtoint ptr %i.eo to i64
  %i.rz = ptrtoint ptr %i.rx to i64
  %i.sa = sub i64 %i.ry, %i.rz
  %i.sb = trunc i64 %i.sa to i32
  %i.sc = add i32 %i.sb, -2
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  store ptr %i.sd, ptr %i.x, align 8
  store i32 %i.sc, ptr %i.rw, align 4
  br label %bb.ds

bb.dr:                                            ; preds = %bb.do
  %i.se = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 144
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 93 ; 2 uses
  %i.sh = load i8, ptr %i.sg, align 1             ; 2 uses
  %i.si = add i8 %i.sh, 1
  store i8 %i.si, ptr %i.sg, align 1
  %i.sj = sext i8 %i.sh to i64
  %i.sk = getelementptr inbounds [2 x i8], ptr %i.sf, i64 %i.sj
  store i16 %i.ru, ptr %i.sk, align 2
  store i32 15, ptr %1, align 4
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dh, %bb.di, %bb.dj, %bb.dr, %bb.dq, %bb.dp, %bb.dm
  %.24 = phi ptr [ %i.qp, %bb.di ], [ %i.qp, %bb.dh ], [ %.23, %bb.dj ], [ %.23, %bb.dm ], [ %i.rv, %bb.dq ], [ %i.rv, %bb.dp ], [ %.23, %bb.dr ]
  %.16 = phi i32 [ 2416, %bb.di ], [ 2416, %bb.dh ], [ 2416, %bb.dj ], [ 2381, %bb.dm ], [ %.15.ph, %bb.dq ], [ %.15.ph, %bb.dp ], [ %.15.ph, %bb.dr ]
  store i32 65535, ptr %i.n, align 8
  br label %.thread813

.thread813:                                       ; preds = %bb.cb, %bb.ds, %bb.cq
  %.25 = phi ptr [ %.24, %bb.ds ], [ %.7614, %bb.cq ], [ %.7614, %bb.cb ] ; 2 uses
  %.17 = phi i32 [ %.16, %bb.ds ], [ %.15.ph, %bb.cq ], [ %i.kz, %bb.cb ] ; 2 uses
  %.not727 = icmp eq i32 %.17, 65535
  br i1 %.not727, label %bb.du, label %.thread813.thread

.thread813.thread.sink.split:                     ; preds = %2, %bb.ay
  %.17831.ph = phi i32 [ 2405, %bb.ay ], [ 2308, %2 ]
  store i16 -2, ptr %i.m, align 2
  br label %.thread813.thread

.thread813.thread:                                ; preds = %.thread813.thread.sink.split, %.thread813
  %.17831 = phi i32 [ %.17, %.thread813 ], [ %.17831.ph, %.thread813.thread.sink.split ]
  %.25830 = phi ptr [ %.25, %.thread813 ], [ %.7614, %.thread813.thread.sink.split ] ; 2 uses
  store i32 %.17831, ptr %i.n, align 8
  %i.sl = load i8, ptr %i.y, align 1
  %.not728 = icmp eq i8 %i.sl, 0
  br i1 %.not728, label %.outer.backedge, label %bb.dt

bb.dt:                                            ; preds = %.thread813.thread
  %i.sm = load i16, ptr %i.s, align 4
  store i16 %i.sm, ptr %i.t, align 4
  %i.sn = load i32, ptr %i.u, align 4
  store i32 %i.sn, ptr %i.v, align 4
  store i8 0, ptr %i.y, align 1
  br label %.outer.backedge

bb.du:                                            ; preds = %.thread813
  store i32 10, ptr %1, align 4
  br label %bb.dv

bb.dv:                                            ; preds = %bb.x, %bb.y, %bb.du, %bb.i
  %i.so = phi i8 [ %i.ab, %bb.x ], [ %i.ab, %bb.y ], [ %i.en, %bb.du ], [ %i.ab, %bb.i ]
  %i.sp = phi ptr [ %i.aa, %bb.x ], [ %i.aa, %bb.y ], [ %i.eo, %bb.du ], [ %i.aa, %bb.i ]
  %.26 = phi ptr [ %.0607.ph872, %bb.x ], [ %.0607.ph872, %bb.y ], [ %.25, %bb.du ], [ %.0607.ph872, %bb.i ]
  %i.sq = load ptr, ptr %i.g, align 8
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 65
  store i8 %i.so, ptr %i.sr, align 1
  %i.ss = load ptr, ptr %i.g, align 8
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 64
  store i8 1, ptr %i.st, align 8
  %.pre915 = load i32, ptr %1, align 4
  br label %.loopexit841

.loopexit841.thread:                              ; preds = %.lr.ph
  store i32 15, ptr %1, align 4
  br label %bb.ei

.loopexit841:                                     ; preds = %.outer.backedge, %bb.j, %bb.c, %bb.dv
  %i.su = phi i32 [ %.pre915, %bb.dv ], [ %i.o, %bb.c ], [ %i.as, %bb.j ], [ %i.cx, %.outer.backedge ]
  %.1626 = phi ptr [ %i.sp, %bb.dv ], [ %i.k, %bb.c ], [ %i.aa, %bb.j ], [ %i.cw, %.outer.backedge ] ; 5 uses
  %.27 = phi ptr [ %.26, %bb.dv ], [ %i.j, %bb.c ], [ %.0607.ph872, %bb.j ], [ %.0607.ph.be, %.outer.backedge ] ; 7 uses
  %i.sv = icmp sgt i32 %i.su, 0
  br i1 %i.sv, label %bb.ei, label %bb.dw

bb.dw:                                            ; preds = %.loopexit841
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.sx = load i8, ptr %i.sw, align 2
  %.not744 = icmp ne i8 %i.sx, 0
  %i.sy = icmp eq ptr %.1626, %i.d
  %or.cond794 = select i1 %.not744, i1 %i.sy, i1 false
  br i1 %or.cond794, label %bb.dx, label %bb.ei

bb.dx:                                            ; preds = %bb.dw
  %i.sz = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.ta = load i16, ptr %i.m, align 2             ; 2 uses
  switch i16 %i.ta, label %bb.dz [
    i16 239, label %bb.dy
    i16 240, label %bb.dy
    i16 217, label %bb.dy
  ]

bb.dy:                                            ; preds = %bb.dx, %bb.dx, %bb.dx
  %i.tb = trunc nuw i16 %i.ta to i8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 65
  store i8 %i.tb, ptr %i.tc, align 1
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 64
  store i8 1, ptr %i.td, align 8
  store i16 -2, ptr %i.m, align 2
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  %i.te = getelementptr inbounds nuw i8, ptr %i.sz, i64 64
  store i8 0, ptr %i.te, align 8
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.tf = load i32, ptr %i.n, align 8
  %.fr839 = freeze i32 %i.tf                      ; 9 uses
  %.not745 = icmp eq i32 %.fr839, 65535
  br i1 %.not745, label %bb.ei, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.tg = icmp slt i32 %.fr839, 161
  br i1 %i.tg, label %bb.ed, label %switch.early.test802

switch.early.test802:                             ; preds = %bb.eb
  switch i32 %.fr839, label %bb.ec [
    i32 8205, label %bb.ed
    i32 8204, label %bb.ed
    i32 2405, label %bb.ed
    i32 2404, label %bb.ed
  ]

bb.ec:                                            ; preds = %switch.early.test802
  %i.th = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ti = load i16, ptr %i.th, align 4
  %i.tj = zext i16 %i.ti to i32
  %i.tk = add nuw nsw i32 %.fr839, %i.tj          ; 2 uses
  store i32 %i.tk, ptr %i.n, align 8
  br label %bb.ed

bb.ed:                                            ; preds = %switch.early.test802, %switch.early.test802, %switch.early.test802, %switch.early.test802, %bb.eb, %bb.ec
  %i.tl = phi i32 [ %.fr839, %switch.early.test802 ], [ %.fr839, %switch.early.test802 ], [ %.fr839, %switch.early.test802 ], [ %.fr839, %switch.early.test802 ], [ %.fr839, %bb.eb ], [ %i.tk, %bb.ec ]
  %i.tm = load ptr, ptr %i.e, align 8
  %i.tn = icmp ult ptr %.27, %i.tm
  %i.to = trunc i32 %i.tl to i16                  ; 2 uses
  br i1 %i.tn, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %i.tp = getelementptr inbounds nuw i8, ptr %.27, i64 2 ; 2 uses
  store i16 %i.to, ptr %.27, align 2
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.tr = load ptr, ptr %i.tq, align 8            ; 3 uses
  %.not750 = icmp eq ptr %i.tr, null
  br i1 %.not750, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ts = load ptr, ptr %i.a, align 8
  %i.tt = ptrtoint ptr %i.d to i64
  %i.tu = ptrtoint ptr %i.ts to i64
  %i.tv = xor i64 %i.tu, -1
  %i.tw = add i64 %i.tv, %i.tt
  %i.tx = trunc i64 %i.tw to i32
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  store ptr %i.ty, ptr %i.tq, align 8
  store i32 %i.tx, ptr %i.tr, align 4
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ed
  %i.tz = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 144
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 93 ; 2 uses
  %i.uc = load i8, ptr %i.ub, align 1             ; 2 uses
  %i.ud = add i8 %i.uc, 1
  store i8 %i.ud, ptr %i.ub, align 1
  %i.ue = sext i8 %i.uc to i64
  %i.uf = getelementptr inbounds [2 x i8], ptr %i.ua, i64 %i.ue
  store i16 %i.to, ptr %i.uf, align 2
  store i32 15, ptr %1, align 4
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ee, %bb.ef, %bb.eg
  %.28 = phi ptr [ %i.tp, %bb.ef ], [ %i.tp, %bb.ee ], [ %.27, %bb.eg ]
  store i32 65535, ptr %i.n, align 8
  br label %bb.ei

bb.ei:                                            ; preds = %.loopexit841.thread, %bb.ea, %bb.eh, %bb.dw, %.loopexit841
  %.1626959 = phi ptr [ %.1626, %bb.dw ], [ %.1626, %.loopexit841 ], [ %.1626, %bb.eh ], [ %.1626, %bb.ea ], [ %.0625.ph871, %.loopexit841.thread ]
  %.30 = phi ptr [ %.27, %bb.dw ], [ %.27, %.loopexit841 ], [ %.28, %bb.eh ], [ %.27, %bb.ea ], [ %.0607.ph872, %.loopexit841.thread ]
  store ptr %.30, ptr %i.b, align 8
  store ptr %.1626959, ptr %i.a, align 8
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL42UConverter_fromUnicode_ISCII_OFFSETS_LOGICP25UConverterFromUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = icmp ult ptr %i.h, %i.f
  %or.cond472 = select i1 %i.k, i1 true, i1 %i.l
  %i.m = icmp ult ptr %i.d, %i.b
  %or.cond473 = select i1 %or.cond472, i1 true, i1 %i.m
  br i1 %or.cond473, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %1, align 4
  br label %bb.bu

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 6 ; 6 uses
  %i.s = load i16, ptr %i.r, align 2
  %i.t = lshr i16 %i.s, 7
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 84
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.preheader, label %bb.br

.preheader:                                       ; preds = %bb.c
  %i.w = icmp ult ptr %i.b, %i.d
  br i1 %i.w, label %.lr.ph.lr.ph, label %.loopexit

.lr.ph.lr.ph:                                     ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer.backedge
  %.0378.ph558 = phi i16 [ %i.t, %.lr.ph.lr.ph ], [ %.0378.ph.be, %.outer.backedge ] ; 5 uses
  %.0392.ph557 = phi ptr [ %i.o, %.lr.ph.lr.ph ], [ %.0392.ph.be, %.outer.backedge ]
  %.0399.ph556 = phi ptr [ %i.f, %.lr.ph.lr.ph ], [ %.0399.ph.be, %.outer.backedge ]
  %.0418.ph555 = phi ptr [ %i.b, %.lr.ph.lr.ph ], [ %i.bv, %.outer.backedge ]
  %i.aa = zext nneg i16 %.0378.ph558 to i64
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr @_ZL17lookupInitialData, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %.0392545 = phi ptr [ %.0392.ph557, %.lr.ph ], [ %.0392.be, %.backedge ] ; 5 uses
  %.0399544 = phi ptr [ %.0399.ph556, %.lr.ph ], [ %.0399.be, %.backedge ] ; 6 uses
  %.0418543 = phi ptr [ %.0418.ph555, %.lr.ph ], [ %i.bv, %.backedge ] ; 6 uses
  %i.ad = load ptr, ptr %i.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 80 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp eq i32 %i.af, 10
  br i1 %i.ag, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.ah = load i32, ptr %i.ac, align 4            ; 4 uses
  store i32 0, ptr %i.ae, align 8
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = ptrtoint ptr %.0418543 to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 1
  %i.an = trunc i64 %i.am to i32
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  %i.ap = icmp ult ptr %.0399544, %i.h
  br i1 %i.ap, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.0399544, i64 1 ; 5 uses
  store i8 -17, ptr %.0399544, align 1
  %.not447 = icmp eq ptr %.0392545, null
  br i1 %.not447, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.ao, ptr %.0392545, align 4
  %i.ar = icmp ult ptr %i.aq, %i.h
  br i1 %i.ar, label %bb.h, label %bb.i

.thread:                                          ; preds = %bb.f
  %i.as = icmp ult ptr %i.aq, %i.h
  br i1 %i.as, label %.thread479, label %bb.i

.thread479:                                       ; preds = %.thread
  %i.at = trunc i32 %i.ah to i8
  store i8 %i.at, ptr %i.aq, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.0392545, i64 4
  %i.av = trunc i32 %i.ah to i8
  store i8 %i.av, ptr %i.aq, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.0392545, i64 8
  store i32 %i.ao, ptr %i.au, align 4
  br label %bb.k

bb.i:                                             ; preds = %.thread, %bb.g
  %i.ax = trunc i32 %i.ah to i8
  %i.ay = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 91 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1             ; 2 uses
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.ba, align 1
  %i.bd = sext i8 %i.bb to i64
  %i.be = getelementptr inbounds i8, ptr %i.az, i64 %i.bd
  store i8 %i.ax, ptr %i.be, align 1
  store i32 15, ptr %1, align 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 91 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1             ; 2 uses
  %i.bj = add i8 %i.bi, 1
  store i8 %i.bj, ptr %i.bh, align 1
  %i.bk = sext i8 %i.bi to i64
  %i.bl = getelementptr inbounds i8, ptr %i.bg, i64 %i.bk
  store i8 -17, ptr %i.bl, align 1
  %i.bm = trunc i32 %i.ah to i8
  %i.bn = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 104
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 91 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1             ; 2 uses
  %i.br = add i8 %i.bq, 1
  store i8 %i.br, ptr %i.bp, align 1
  %i.bs = sext i8 %i.bq to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 %i.bs
  store i8 %i.bm, ptr %i.bt, align 1
  store i32 15, ptr %1, align 4
  br label %.loopexit

bb.k:                                             ; preds = %.thread479, %bb.h
  %.3395.ph = phi ptr [ null, %.thread479 ], [ %i.aw, %bb.h ]
  %.2401.ph = getelementptr inbounds nuw i8, ptr %.0399544, i64 2 ; 2 uses
  %.pr = load i32, ptr %1, align 4
  %i.bu = icmp slt i32 %.pr, 1
  br i1 %i.bu, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k, %bb.d
  %.3402 = phi ptr [ %.2401.ph, %bb.k ], [ %.0399544, %bb.d ] ; 14 uses
  %.4396 = phi ptr [ %.3395.ph, %bb.k ], [ %.0392545, %bb.d ] ; 13 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0418543, i64 2 ; 23 uses
  %i.bw = load i16, ptr %.0418543, align 2        ; 7 uses
  %i.bx = zext i16 %i.bw to i32                   ; 5 uses
  %i.by = load i16, ptr %i.x, align 2             ; 3 uses
  %i.bz = icmp ult i16 %i.bw, 161
  br i1 %i.bz, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ca = load ptr, ptr %i.i, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  store i32 %i.bx, ptr %i.cb, align 8
  %i.cc = load ptr, ptr %i.a, align 8
  %i.cd = ptrtoint ptr %i.bv to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = lshr exact i64 %i.cf, 1
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = add i32 %i.ch, -1
  %i.cj = icmp ult ptr %.3402, %i.h
  %i.ck = trunc nuw i16 %i.bw to i8               ; 2 uses
  br i1 %i.cj, label %bb.n, label %.thread610

bb.n:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %.3402, i64 1 ; 2 uses
  store i8 %i.ck, ptr %.3402, align 1
  %.not470 = icmp eq ptr %.4396, null
  br i1 %.not470, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %.4396, i64 4
  store i32 %i.ci, ptr %.4396, align 4
  br label %bb.p

.thread610:                                       ; preds = %bb.m
  %i.cn = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 104
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 91 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1             ; 2 uses
  %i.cr = add i8 %i.cq, 1
  store i8 %i.cr, ptr %i.cp, align 1
  %i.cs = sext i8 %i.cq to i64
  %i.ct = getelementptr inbounds i8, ptr %i.co, i64 %i.cs
  store i8 %i.ck, ptr %i.ct, align 1
  store i32 15, ptr %1, align 4
  br label %.loopexit

bb.p:                                             ; preds = %bb.o, %bb.n
  %.7.ph = phi ptr [ null, %bb.n ], [ %i.cm, %bb.o ]
  %.pr609 = load i32, ptr %1, align 4
  %i.cu = icmp slt i32 %.pr609, 1
  br i1 %i.cu, label %.backedge, label %.loopexit

bb.q:                                             ; preds = %bb.l
  switch i16 %i.bw, label %bb.u [
    i16 8204, label %bb.r
    i16 8205, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %.not451 = icmp eq i16 %i.by, 0
  br i1 %.not451, label %.backedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i16 0, ptr %i.x, align 2
  br label %.thread618

.backedge:                                        ; preds = %bb.r, %bb.p
  %.0399.be = phi ptr [ %i.cl, %bb.p ], [ %.3402, %bb.r ] ; 2 uses
  %.0392.be = phi ptr [ %.7.ph, %bb.p ], [ %.4396, %bb.r ]
  %i.cv = icmp ult ptr %i.bv, %i.d
  br i1 %i.cv, label %bb.d, label %.loopexit, !llvm.loop !8

bb.t:                                             ; preds = %bb.q
  %.not450 = icmp eq i16 %i.by, 0
  %. = select i1 %.not450, i32 217, i32 233
  store i16 0, ptr %i.x, align 2
  br label %.thread618

bb.u:                                             ; preds = %bb.q
  %i.cw = add i16 %i.bw, -2304                    ; 3 uses
  %i.cx = icmp ult i16 %i.cw, 1152
  br i1 %i.cx, label %bb.v, label %bb.ao

bb.v:                                             ; preds = %bb.u
  %i.cy = add nsw i16 %i.bw, -2406
  %or.cond = icmp ult i16 %i.cy, -2
  br i1 %or.cond, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.cz = lshr i16 %i.cw, 7                       ; 2 uses
  %i.da = and i16 %i.cw, 1920                     ; 4 uses
  %i.db = load i16, ptr %i.r, align 2
  %.not452 = icmp eq i16 %i.da, %i.db
  br i1 %.not452, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dc = load i8, ptr %i.y, align 4
  %.not453 = icmp eq i8 %i.dc, 0
  br i1 %.not453, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store i16 %i.da, ptr %i.r, align 2
  %i.dd = zext nneg i16 %i.cz to i64
  %i.de = getelementptr inbounds nuw [12 x i8], ptr @_ZL17lookupInitialData, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = load i32, ptr %i.df, align 4
  store i32 %i.dg, ptr %i.z, align 4
  store i8 0, ptr %i.y, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dh = phi i1 [ false, %bb.y ], [ true, %bb.x ]
  %i.di = icmp eq i16 %i.da, 256
  br i1 %i.di, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  switch i16 %i.bw, label %.fold.split [
    i16 2672, label %bb.ac
    i16 2673, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  store i16 2673, ptr %i.x, align 2
  br label %bb.ac

.fold.split:                                      ; preds = %bb.aa
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %.fold.split, %bb.ab, %bb.z
  %.0382 = phi i32 [ %i.bx, %bb.z ], [ 2673, %bb.ab ], [ 2562, %bb.aa ], [ %i.bx, %.fold.split ]
  %i.dj = zext nneg i16 %i.da to i32
  %i.dk = sub nuw nsw i32 %.0382, %i.dj
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.v
  %.1383 = phi i32 [ %i.dk, %bb.ac ], [ %i.bx, %bb.v ] ; 7 uses
  %.1379 = phi i16 [ %i.cz, %bb.ac ], [ %.0378.ph558, %bb.v ] ; 6 uses
  %.2 = phi i1 [ %i.dh, %bb.ac ], [ true, %bb.v ]
  %i.dl = and i32 %.1383, 255
  %i.dm = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr @_ZL16fromUnicodeTable, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr @_ZL13validityTable, i64 %i.dm
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = zext i8 %i.dq to i32
  %i.ds = load i32, ptr %i.z, align 4
  %i.dt = and i32 %i.ds, %i.dr
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dv = load i16, ptr %i.r, align 2
  %i.dw = icmp ne i16 %i.dv, 768
  %i.dx = icmp ne i32 %.1383, 2353
  %or.cond3 = or i1 %i.dx, %i.dw
  %spec.select = select i1 %or.cond3, i16 -1, i16 %i.do
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.1389.shrunk = phi i16 [ %i.do, %bb.ad ], [ %spec.select, %bb.ae ]
  %.1389 = zext i16 %.1389.shrunk to i32          ; 4 uses
  br i1 %.2, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dy = zext nneg i16 %.1379 to i64
  %i.dz = getelementptr inbounds nuw [12 x i8], ptr @_ZL17lookupInitialData, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i32, ptr %i.ea, align 4            ; 4 uses
  %i.ec = load ptr, ptr %i.a, align 8
  %i.ed = ptrtoint ptr %i.bv to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = lshr exact i64 %i.ef, 1
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = add i32 %i.eh, -1                       ; 2 uses
  %i.ej = icmp ult ptr %.3402, %i.h
  br i1 %i.ej, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.ek = getelementptr inbounds nuw i8, ptr %.3402, i64 1 ; 5 uses
  store i8 -17, ptr %.3402, align 1
  %.not455 = icmp eq ptr %.4396, null
  br i1 %.not455, label %.thread482, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.el = getelementptr inbounds nuw i8, ptr %.4396, i64 4 ; 2 uses
  store i32 %i.ei, ptr %.4396, align 4
  %i.em = icmp ult ptr %i.ek, %i.h
  br i1 %i.em, label %bb.aj, label %bb.ak

.thread482:                                       ; preds = %bb.ah
  %i.en = icmp ult ptr %i.ek, %i.h
  br i1 %i.en, label %.thread486, label %bb.ak

.thread486:                                       ; preds = %.thread482
  %i.eo = trunc i32 %i.eb to i8
  store i8 %i.eo, ptr %i.ek, align 1
  br label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ep = trunc i32 %i.eb to i8
  store i8 %i.ep, ptr %i.ek, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %.4396, i64 8
  store i32 %i.ei, ptr %i.el, align 4
  br label %bb.am

bb.ak:                                            ; preds = %.thread482, %bb.ai
  %.9485 = phi ptr [ null, %.thread482 ], [ %i.el, %bb.ai ]
  %i.er = trunc i32 %i.eb to i8
  %i.es = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 104
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 91 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1             ; 2 uses
  %i.ew = add i8 %i.ev, 1
  store i8 %i.ew, ptr %i.eu, align 1
  %i.ex = sext i8 %i.ev to i64
  %i.ey = getelementptr inbounds i8, ptr %i.et, i64 %i.ex
  store i8 %i.er, ptr %i.ey, align 1
  store i32 15, ptr %1, align 4
  br label %.thread618

bb.al:                                            ; preds = %bb.ag
  %i.ez = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 104
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 91 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1             ; 2 uses
  %i.fd = add i8 %i.fc, 1
  store i8 %i.fd, ptr %i.fb, align 1
  %i.fe = sext i8 %i.fc to i64
  %i.ff = getelementptr inbounds i8, ptr %i.fa, i64 %i.fe
  store i8 -17, ptr %i.ff, align 1
  %i.fg = trunc i32 %i.eb to i8
  %i.fh = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 104
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 91 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1             ; 2 uses
  %i.fl = add i8 %i.fk, 1
  store i8 %i.fl, ptr %i.fj, align 1
  %i.fm = sext i8 %i.fk to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fi, i64 %i.fm
  store i8 %i.fg, ptr %i.fn, align 1
  store i32 15, ptr %1, align 4
  br label %.thread618

bb.am:                                            ; preds = %.thread486, %bb.aj
  %.10.ph = phi ptr [ null, %.thread486 ], [ %i.eq, %bb.aj ] ; 2 uses
  %.7406.ph = getelementptr inbounds nuw i8, ptr %.3402, i64 2 ; 2 uses
  %.pr614 = load i32, ptr %1, align 4
  %i.fo = icmp slt i32 %.pr614, 1
  br i1 %i.fo, label %bb.an, label %.thread618

bb.an:                                            ; preds = %bb.am, %bb.af
  %.8407 = phi ptr [ %.7406.ph, %bb.am ], [ %.3402, %bb.af ] ; 2 uses
  %.11 = phi ptr [ %.10.ph, %bb.am ], [ %.4396, %bb.af ] ; 2 uses
  %i.fp = load i16, ptr %i.r, align 2
  %i.fq = icmp eq i16 %i.fp, 256
  %i.fr = icmp eq i32 %.1383, 2417
  %or.cond475 = and i1 %i.fr, %i.fq
  br i1 %or.cond475, label %.outer.backedge, label %bb.ao

.outer.backedge:                                  ; preds = %bb.be, %bb.bo, %bb.an
  %.0399.ph.be = phi ptr [ %.8407, %bb.an ], [ %i.hw, %bb.be ], [ %.14413.ph, %bb.bo ] ; 2 uses
  %.0392.ph.be = phi ptr [ %.11, %bb.an ], [ %.16.ph, %bb.be ], [ %.19.ph, %bb.bo ]
  %.0378.ph.be = phi i16 [ %.1379, %bb.an ], [ %.3381, %bb.be ], [ %.3381, %bb.bo ]
  %i.fs = icmp ult ptr %i.bv, %i.d
  br i1 %i.fs, label %.lr.ph, label %.loopexit, !llvm.loop !8

bb.ao:                                            ; preds = %bb.an, %bb.u
  %.9408 = phi ptr [ %.3402, %bb.u ], [ %.8407, %bb.an ]
  %.12 = phi ptr [ %.4396, %bb.u ], [ %.11, %bb.an ]
  %.2390 = phi i32 [ 65535, %bb.u ], [ %.1389, %bb.an ]
  %.2384 = phi i32 [ %i.bx, %bb.u ], [ %.1383, %bb.an ]
  %.2380 = phi i16 [ %.0378.ph558, %bb.u ], [ %.1379, %bb.an ]
  store i16 0, ptr %i.x, align 2
  br label %.thread618

.thread618:                                       ; preds = %bb.al, %bb.ak, %bb.am, %bb.ao, %bb.t, %bb.s
  %.10409 = phi ptr [ %.9408, %bb.ao ], [ %.7406.ph, %bb.am ], [ %.3402, %bb.s ], [ %.3402, %bb.t ], [ %.3402, %bb.al ], [ %i.ek, %bb.ak ] ; 18 uses
  %.13 = phi ptr [ %.12, %bb.ao ], [ %.10.ph, %bb.am ], [ %.4396, %bb.s ], [ %.4396, %bb.t ], [ %.4396, %bb.al ], [ %.9485, %bb.ak ] ; 11 uses
  %.3391 = phi i32 [ %.2390, %bb.ao ], [ %.1389, %bb.am ], [ 232, %bb.s ], [ %., %bb.t ], [ %.1389, %bb.al ], [ %.1389, %bb.ak ] ; 15 uses
  %.3385 = phi i32 [ %.2384, %bb.ao ], [ %.1383, %bb.am ], [ 8204, %bb.s ], [ 8205, %bb.t ], [ %.1383, %bb.al ], [ %.1383, %bb.ak ] ; 7 uses
  %.3381 = phi i16 [ %.2380, %bb.ao ], [ %.1379, %bb.am ], [ %.0378.ph558, %bb.s ], [ %.0378.ph558, %bb.t ], [ %.1379, %bb.al ], [ %.1379, %bb.ak ] ; 2 uses
  %i.ft = load i16, ptr %i.r, align 2
  %i.fu = icmp ne i16 %i.ft, 256
  %i.fv = icmp ne i16 %i.by, 2673
  %or.cond5.not563 = select i1 %i.fu, i1 true, i1 %i.fv
  %i.fw = add nsw i32 %.3385, -2384
  %or.cond.i = icmp ult i32 %i.fw, -80
  %or.cond518 = select i1 %or.cond5.not563, i1 true, i1 %or.cond.i
  br i1 %or.cond518, label %_ZL14isPNJConsonanti.exit.thread, label %_ZL14isPNJConsonanti.exit

_ZL14isPNJConsonanti.exit:                        ; preds = %.thread618
  %i.fx = zext nneg i32 %.3385 to i64
  %i.fy = getelementptr i8, ptr @_ZL6pnjMap, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 -2304
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = and i8 %i.ga, 1
  %.not458 = icmp eq i8 %i.gb, 0
  br i1 %.not458, label %_ZL14isPNJConsonanti.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZL14isPNJConsonanti.exit
  store i16 0, ptr %i.x, align 2
  %i.gc = shl nuw i32 %.3391, 16
  %i.gd = or i32 %i.gc, %.3391                    ; 5 uses
  %i.ge = or i32 %i.gd, 59392                     ; 4 uses
  %i.gf = load ptr, ptr %i.a, align 8
  %i.gg = ptrtoint ptr %i.bv to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = lshr exact i64 %i.gi, 1
  %i.gk = trunc i64 %i.gj to i32                  ; 2 uses
  %i.gl = add i32 %i.gk, -1                       ; 2 uses
  %i.gm = icmp ult ptr %.10409, %i.h
  br i1 %i.gm, label %bb.aq, label %bb.bb

bb.aq:                                            ; preds = %bb.ap
  %i.gn = icmp ugt i32 %i.gd, 65535
  br i1 %i.gn, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.go = lshr i32 %i.gd, 16
  %i.gp = trunc i32 %i.go to i8
  %i.gq = getelementptr inbounds nuw i8, ptr %.10409, i64 1 ; 5 uses
  store i8 %i.gp, ptr %.10409, align 1
  %.not466 = icmp eq ptr %.13, null
  br i1 %.not466, label %.thread491, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gr = add i32 %i.gk, -2                       ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.13, i64 4
  store i32 %i.gr, ptr %.13, align 4
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.11410 = phi ptr [ %i.gq, %bb.as ], [ %.10409, %bb.aq ] ; 6 uses
  %.14 = phi ptr [ %i.gs, %bb.as ], [ %.13, %bb.aq ] ; 3 uses
  %.0372 = phi i32 [ %i.gr, %bb.as ], [ %i.gl, %bb.aq ] ; 3 uses
  %i.gt = icmp ult ptr %.11410, %i.h
  br i1 %i.gt, label %bb.av, label %bb.au

.thread491:                                       ; preds = %bb.ar
  %i.gu = icmp ult ptr %i.gq, %i.h
  br i1 %i.gu, label %.thread500, label %bb.au

.thread500:                                       ; preds = %.thread491
  %i.gv = lshr i32 %i.ge, 8
  %i.gw = trunc i32 %i.gv to i8
  %i.gx = getelementptr inbounds nuw i8, ptr %.10409, i64 2
  store i8 %i.gw, ptr %i.gq, align 1
  br label %bb.ax

bb.au:                                            ; preds = %.thread491, %bb.at
  %.11410496 = phi ptr [ %i.gq, %.thread491 ], [ %.11410, %bb.at ]
  %i.gy = lshr i32 %i.ge, 8
  %i.gz = trunc i32 %i.gy to i8
  %i.ha = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 104
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 91 ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1             ; 2 uses
  %i.he = add i8 %i.hd, 1
  store i8 %i.he, ptr %i.hc, align 1
  %i.hf = sext i8 %i.hd to i64
  %i.hg = getelementptr inbounds i8, ptr %i.hb, i64 %i.hf
  store i8 %i.gz, ptr %i.hg, align 1
  %i.hh = trunc i32 %.3391 to i8
  %i.hi = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 104
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 91 ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 1             ; 2 uses
  %i.hm = add i8 %i.hl, 1
  store i8 %i.hm, ptr %i.hk, align 1
  %i.hn = sext i8 %i.hl to i64
  %i.ho = getelementptr inbounds i8, ptr %i.hj, i64 %i.hn
  store i8 %i.hh, ptr %i.ho, align 1
  store i32 15, ptr %1, align 4
  br label %.loopexit

bb.av:                                            ; preds = %bb.at
  %i.hp = lshr i32 %i.ge, 8
  %i.hq = trunc i32 %i.hp to i8
  %i.hr = getelementptr inbounds nuw i8, ptr %.11410, i64 1 ; 2 uses
  store i8 %i.hq, ptr %.11410, align 1
  %.not467 = icmp eq ptr %.14, null
  br i1 %.not467, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hs = getelementptr inbounds nuw i8, ptr %.14, i64 4
  store i32 %.0372, ptr %.14, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %.thread500, %bb.aw, %bb.av
  %i.ht = phi ptr [ %i.hr, %bb.aw ], [ %i.hr, %bb.av ], [ %i.gx, %.thread500 ] ; 3 uses
  %.11410495506 = phi ptr [ %.11410, %bb.aw ], [ %.11410, %bb.av ], [ %i.gq, %.thread500 ]
  %.0372499505 = phi i32 [ %.0372, %bb.aw ], [ %.0372, %bb.av ], [ %i.gl, %.thread500 ]
  %.15 = phi ptr [ %i.hs, %bb.aw ], [ null, %bb.av ], [ null, %.thread500 ] ; 3 uses
  %i.hu = icmp ult ptr %i.ht, %i.h
  %i.hv = trunc i32 %.3391 to i8                  ; 2 uses
  br i1 %i.hu, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.hw = getelementptr inbounds nuw i8, ptr %.11410495506, i64 2 ; 2 uses
  store i8 %i.hv, ptr %i.ht, align 1
  %.not468 = icmp eq ptr %.15, null
  br i1 %.not468, label %bb.be, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hx = getelementptr inbounds nuw i8, ptr %.15, i64 4
  store i32 %.0372499505, ptr %.15, align 4
  br label %bb.be

bb.ba:                                            ; preds = %bb.ax
  %i.hy = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 104
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 91 ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 1             ; 2 uses
  %i.ic = add i8 %i.ib, 1
  store i8 %i.ic, ptr %i.ia, align 1
  %i.id = sext i8 %i.ib to i64
  %i.ie = getelementptr inbounds i8, ptr %i.hz, i64 %i.id
  store i8 %i.hv, ptr %i.ie, align 1
  store i32 15, ptr %1, align 4
  br label %.loopexit

bb.bb:                                            ; preds = %bb.ap
  %i.if = and i32 %i.gd, 16711680
  %.not465 = icmp eq i32 %i.if, 0
  br i1 %.not465, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ig = lshr i32 %i.gd, 16
  %i.ih = trunc i32 %i.ig to i8
  %i.ii = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 104
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 91 ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1             ; 2 uses
  %i.im = add i8 %i.il, 1
  store i8 %i.im, ptr %i.ik, align 1
  %i.in = sext i8 %i.il to i64
  %i.io = getelementptr inbounds i8, ptr %i.ij, i64 %i.in
  store i8 %i.ih, ptr %i.io, align 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %i.ip = lshr i32 %i.ge, 8
  %i.iq = trunc i32 %i.ip to i8
  %i.ir = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 104
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 91 ; 2 uses
  %i.iu = load i8, ptr %i.it, align 1             ; 2 uses
  %i.iv = add i8 %i.iu, 1
  store i8 %i.iv, ptr %i.it, align 1
  %i.iw = sext i8 %i.iu to i64
  %i.ix = getelementptr inbounds i8, ptr %i.is, i64 %i.iw
  store i8 %i.iq, ptr %i.ix, align 1
  %i.iy = trunc i32 %.3391 to i8
  %i.iz = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 104
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 91 ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1             ; 2 uses
  %i.jd = add i8 %i.jc, 1
  store i8 %i.jd, ptr %i.jb, align 1
  %i.je = sext i8 %i.jc to i64
  %i.jf = getelementptr inbounds i8, ptr %i.ja, i64 %i.je
  store i8 %i.iy, ptr %i.jf, align 1
  store i32 15, ptr %1, align 4
  br label %.loopexit
end_hunk_1
begin_hunk_2_@_ZL42UConverter_fromUnicode_ISCII_OFFSETS_LOGICP25UConverterFromUnicodeArgsP10UErrorCode:bb.a

bb.bk:                                            ; preds = %bb.bj
  %i.kj = getelementptr inbounds nuw i8, ptr %.13, i64 4
  %i.kk = trunc i32 %.3391 to i8
  %i.kl = getelementptr inbounds nuw i8, ptr %.10409, i64 2
  store i8 %i.kk, ptr %i.ke, align 1
  %i.km = getelementptr inbounds nuw i8, ptr %.13, i64 8
  store i32 %i.jn, ptr %i.kj, align 4
  br label %bb.bo

bb.bl:                                            ; preds = %.thread509, %bb.bj
  %i.kn = trunc i32 %.3391 to i8
  %i.ko = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 104
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 91 ; 2 uses
  %i.kr = load i8, ptr %i.kq, align 1             ; 2 uses
  %i.ks = add i8 %i.kr, 1
  store i8 %i.ks, ptr %i.kq, align 1
  %i.kt = sext i8 %i.kr to i64
  %i.ku = getelementptr inbounds i8, ptr %i.kp, i64 %i.kt
  store i8 %i.kn, ptr %i.ku, align 1
  store i32 15, ptr %1, align 4
  br label %.loopexit

bb.bm:                                            ; preds = %bb.bf
  %i.kv = and i32 %.3391, 65280
  %.not460 = icmp eq i32 %i.kv, 0
  br i1 %.not460, label %.thread516, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kw = lshr i32 %.3391, 8
  %i.kx = trunc nuw i32 %i.kw to i8
  %i.ky = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 104
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 91 ; 2 uses
  %i.lb = load i8, ptr %i.la, align 1             ; 2 uses
  %i.lc = add i8 %i.lb, 1
  store i8 %i.lc, ptr %i.la, align 1
  %i.ld = sext i8 %i.lb to i64
  %i.le = getelementptr inbounds i8, ptr %i.kz, i64 %i.ld
  store i8 %i.kx, ptr %i.le, align 1
  br label %.thread516

.thread516:                                       ; preds = %.thread507, %bb.bn, %bb.bm
  %i.lf = trunc i32 %.3391 to i8
  %i.lg = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 104
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 91 ; 2 uses
  %i.lj = load i8, ptr %i.li, align 1             ; 2 uses
  %i.lk = add i8 %i.lj, 1
  store i8 %i.lk, ptr %i.li, align 1
  %i.ll = sext i8 %i.lj to i64
  %i.lm = getelementptr inbounds i8, ptr %i.lh, i64 %i.ll
  store i8 %i.lf, ptr %i.lm, align 1
  store i32 15, ptr %1, align 4
  br label %.loopexit

bb.bo:                                            ; preds = %.thread513, %bb.bh, %.thread508, %bb.bk
  %.14413.ph = phi ptr [ %i.ki, %.thread513 ], [ %i.kl, %bb.bk ], [ %i.ka, %.thread508 ], [ %i.ka, %bb.bh ] ; 2 uses
  %.19.ph = phi ptr [ null, %.thread513 ], [ %i.km, %bb.bk ], [ null, %.thread508 ], [ %i.kb, %bb.bh ]
  %.pr629 = load i32, ptr %1, align 4
  %i.ln = icmp slt i32 %.pr629, 1
  br i1 %i.ln, label %.outer.backedge, label %.loopexit

bb.bp:                                            ; preds = %_ZL14isPNJConsonanti.exit.thread
  %i.lo = and i32 %.3385, -2048
  %i.lp = icmp eq i32 %i.lo, 55296
  br i1 %i.lp, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.lq = and i32 %.3385, 1024
  %i.lr = icmp eq i32 %i.lq, 0
  br i1 %i.lr, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq, %bb.c
  %.1419 = phi ptr [ %i.b, %bb.c ], [ %i.bv, %bb.bq ] ; 4 uses
  %.15414 = phi ptr [ %i.f, %bb.c ], [ %.10409, %bb.bq ] ; 2 uses
  %.4386 = phi i32 [ %i.v, %bb.c ], [ %.3385, %bb.bq ] ; 3 uses
  %i.ls = icmp ult ptr %.1419, %i.d
  br i1 %i.ls, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.lt = load i16, ptr %.1419, align 2
  %i.lu = zext i16 %i.lt to i32                   ; 2 uses
  %i.lv = and i32 %i.lu, 64512
  %i.lw = icmp eq i32 %i.lv, 56320                ; 3 uses
  %i.lx = shl i32 %.4386, 10
  %i.ly = add i32 %i.lx, -56613888
  %i.lz = add i32 %i.ly, %i.lu
  %storemerge = select i1 %i.lw, i32 10, i32 12
  %.2420.idx = select i1 %i.lw, i64 2, i64 0
  %.2420 = getelementptr inbounds nuw i8, ptr %.1419, i64 %.2420.idx
  %.5387 = select i1 %i.lw, i32 %i.lz, i32 %.4386
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bp, %bb.bq, %bb.br, %bb.bs
  %.sink = phi i32 [ 0, %bb.br ], [ 12, %bb.bq ], [ %storemerge, %bb.bs ], [ 10, %bb.bp ]
  %.3421 = phi ptr [ %.1419, %bb.br ], [ %i.bv, %bb.bq ], [ %.2420, %bb.bs ], [ %i.bv, %bb.bp ]
  %.16415 = phi ptr [ %.15414, %bb.br ], [ %.10409, %bb.bq ], [ %.15414, %bb.bs ], [ %.10409, %bb.bp ]
  %.6 = phi i32 [ %.4386, %bb.br ], [ %.3385, %bb.bq ], [ %.5387, %bb.bs ], [ %.3385, %bb.bp ]
  store i32 %.sink, ptr %1, align 4
  %i.ma = load ptr, ptr %i.i, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 84
  store i32 %.6, ptr %i.mb, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.outer.backedge, %bb.bo, %bb.be, %.backedge, %bb.k, %bb.p, %.thread516, %bb.bl, %bb.bd, %bb.au, %bb.ba, %bb.j, %bb.i, %.thread610, %.preheader, %bb.bt
  %.4422 = phi ptr [ %.3421, %bb.bt ], [ %i.b, %.preheader ], [ %i.bv, %.thread610 ], [ %i.bv, %bb.au ], [ %i.bv, %bb.bl ], [ %i.bv, %.thread516 ], [ %.0418543, %bb.i ], [ %i.bv, %bb.bd ], [ %.0418543, %bb.j ], [ %i.bv, %bb.ba ], [ %.0418543, %bb.k ], [ %i.bv, %.backedge ], [ %i.bv, %bb.p ], [ %i.bv, %bb.be ], [ %i.bv, %bb.bo ], [ %i.bv, %.outer.backedge ]
  %.18417 = phi ptr [ %.16415, %bb.bt ], [ %i.f, %.preheader ], [ %.3402, %.thread610 ], [ %.11410496, %bb.au ], [ %i.ke, %bb.bl ], [ %.10409, %.thread516 ], [ %i.aq, %bb.i ], [ %.10409, %bb.bd ], [ %.0399544, %bb.j ], [ %i.ht, %bb.ba ], [ %.2401.ph, %bb.k ], [ %.0399.be, %.backedge ], [ %i.cl, %bb.p ], [ %.0399.ph.be, %.outer.backedge ], [ %.14413.ph, %bb.bo ], [ %i.hw, %bb.be ]
  store ptr %.4422, ptr %i.a, align 8
  store ptr %.18417, ptr %i.e, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZL13_ISCIIgetNamePK10UConverter(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %.0 = select i1 %.not, ptr null, ptr %i.c
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZL16_ISCII_SafeClonePK10UConverterPvPiP10UErrorCode(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 336, ptr %2, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 1 dereferenceable(48) %i.g, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 62
  store i8 1, ptr %i.i, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ %1, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL19_ISCIIGetUnicodeSetPK10UConverterPK9USetAdder20UConverterUnicodeSetP10UErrorCode(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  tail call void %i.b(ptr noundef %i.c, i32 noundef 0, i32 noundef 160) #9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.split26.us
  %indvars.iv34 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next35, %.split26.us ] ; 4 uses
  %i.e = getelementptr inbounds nuw [12 x i8], ptr @_ZL17lookupInitialData, i64 %indvars.iv34
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp eq i64 %indvars.iv34, 6
  %i.i = shl nuw nsw i64 %indvars.iv34, 7
  %i.j = add nuw nsw i64 %i.i, 2304               ; 2 uses
  br i1 %i.h, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.b, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr @_ZL13validityTable, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i32
  %i.n = and i32 %i.g, %i.m
  %.not.us = icmp eq i32 %i.n, 0
  br i1 %.not.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.split.us
  %i.o = load ptr, ptr %i.d, align 8
  %i.p = load ptr, ptr %1, align 8
  %i.q = add nuw nsw i64 %i.j, %indvars.iv
  %i.r = trunc nuw nsw i64 %i.q to i32
  tail call void %i.o(ptr noundef %i.p, i32 noundef %i.r) #9
  br label %bb.d

bb.d:                                             ; preds = %.split.us, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 128
  br i1 %exitcond.not, label %.split26.us, label %.split.us, !llvm.loop !9

.split:                                           ; preds = %bb.b, %bb.f
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %bb.f ], [ 0, %bb.b ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr @_ZL13validityTable, i64 %indvars.iv30
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = and i32 %i.g, %i.u
  %.not = icmp ne i32 %i.v, 0
  %i.w = icmp eq i64 %indvars.iv30, 49
  %or.cond = or i1 %.not, %i.w
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = load ptr, ptr %1, align 8
  %i.z = add nuw nsw i64 %i.j, %indvars.iv30
  %i.aa = trunc nuw nsw i64 %i.z to i32
  tail call void %i.x(ptr noundef %i.y, i32 noundef %i.aa) #9
  br label %bb.f

bb.f:                                             ; preds = %.split, %bb.e
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next31, 128
  br i1 %exitcond33.not, label %.split26.us, label %.split, !llvm.loop !9

.split26.us:                                      ; preds = %bb.d, %bb.f
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next35, 9
  br i1 %exitcond37.not, label %bb.g, label %bb.b, !llvm.loop !10

bb.g:                                             ; preds = %.split26.us
  %i.ab = load ptr, ptr %i.d, align 8
  %i.ac = load ptr, ptr %1, align 8
  tail call void %i.ab(ptr noundef %i.ac, i32 noundef 2404) #9
  %i.ad = load ptr, ptr %i.d, align 8
  %i.ae = load ptr, ptr %1, align 8
  tail call void %i.ad(ptr noundef %i.ae, i32 noundef 2405) #9
  %i.af = load ptr, ptr %i.d, align 8
  %i.ag = load ptr, ptr %1, align 8
  tail call void %i.af(ptr noundef %i.ag, i32 noundef 8204) #9
  %i.ah = load ptr, ptr %i.d, align 8
  %i.ai = load ptr, ptr %1, align 8
  tail call void %i.ah(ptr noundef %i.ai, i32 noundef 8205) #9
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
end_hunk_2
