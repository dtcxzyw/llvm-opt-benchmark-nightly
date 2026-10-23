Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/indeo5?download=true
inline.NumInlined: 65
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@decode_mb_info:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %.not211 = icmp eq i32 %i.al, %i.am             ; 2 uses
  %i.ay = add nsw i32 %i.an, -1                   ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 420
  br i1 %i.ar, label %.preheader.lr.ph.split.us, label %._crit_edge244

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %0, align 8, !tbaa !30    ; 7 uses
  %i.bg = load i32, ptr %i.be, align 8, !tbaa !29 ; 7 uses
  %.promoted = load i32, ptr %i.as, align 8, !tbaa !28
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.promoted.us251 = phi i32 [ %.promoted, %.preheader.lr.ph.split.us ], [ %i.kt, %._crit_edge.us ]
  %.0243.us = phi ptr [ %i.j, %.preheader.lr.ph.split.us ], [ %spec.select.us, %._crit_edge.us ]
  %.0177242.us = phi ptr [ %i.h, %.preheader.lr.ph.split.us ], [ %i.ku, %._crit_edge.us ]
  %.0180241.us = phi i32 [ %i.o, %.preheader.lr.ph.split.us ], [ %i.kz, %._crit_edge.us ] ; 2 uses
  %.0181240.us = phi i16 [ 0, %.preheader.lr.ph.split.us ], [ %.2183.us279, %._crit_edge.us ]
  %.0184239.us = phi i16 [ 0, %.preheader.lr.ph.split.us ], [ %.2186.us277, %._crit_edge.us ]
  %.0187238.us = phi i32 [ %i.l, %.preheader.lr.ph.split.us ], [ %i.la, %._crit_edge.us ] ; 5 uses
  %i.bh = trunc i32 %.0187238.us to i16
  %i.bi = add i32 %i.z, %.0187238.us
  br label %bb.h

bb.h:                                             ; preds = %.preheader.us, %bb.an
  %i.bj = phi i32 [ %.promoted.us251, %.preheader.us ], [ %i.kt, %bb.an ] ; 4 uses
  %.1234.us = phi ptr [ %.0243.us, %.preheader.us ], [ %spec.select.us, %bb.an ] ; 12 uses
  %.1178233.us = phi ptr [ %.0177242.us, %.preheader.us ], [ %i.ku, %bb.an ] ; 20 uses
  %.0179232.us = phi i32 [ %.0180241.us, %.preheader.us ], [ %i.kw, %bb.an ] ; 2 uses
  %.1182231.us = phi i16 [ %.0181240.us, %.preheader.us ], [ %.2183.us279, %bb.an ] ; 7 uses
  %.1185230.us = phi i16 [ %.0184239.us, %.preheader.us ], [ %.2186.us277, %bb.an ] ; 7 uses
  %.0188229.us = phi i32 [ %i.m, %.preheader.us ], [ %i.kx, %bb.an ] ; 5 uses
  %i.bk = trunc i32 %.0188229.us to i16
  store i16 %i.bk, ptr %.1178233.us, align 4, !tbaa !135
  %i.bl = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 2
  store i16 %i.bh, ptr %i.bl, align 2, !tbaa !136
  %i.bm = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 4
  store i32 %.0179232.us, ptr %i.bm, align 4, !tbaa !137
  %i.bn = lshr i32 %i.bj, 3
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !31
  %i.br = icmp slt i32 %i.bj, %i.bg
  %i.bs = zext i1 %i.br to i32
  %spec.select.i.us = add i32 %i.bj, %i.bs        ; 13 uses
  %i.bt = zext i8 %i.bq to i32
  %i.bu = and i32 %i.bj, 7
  store i32 %spec.select.i.us, ptr %i.as, align 8, !tbaa !28
  %i.bv = shl nuw nsw i32 1, %i.bu
  %i.bw = and i32 %i.bv, %i.bt
  %.not198.us = icmp eq i32 %i.bw, 0
  br i1 %.not198.us, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = load i32, ptr %i.at, align 8, !tbaa !32
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %.split.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 8
  store i8 1, ptr %i.bz, align 4, !tbaa !138
  %i.ca = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 9
  store i8 0, ptr %i.ca, align 1, !tbaa !139
  %i.cb = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 10 ; 2 uses
  store i8 0, ptr %i.cb, align 2, !tbaa !140
  %i.cc = load i32, ptr %1, align 8, !tbaa !141
  %.not208.us = icmp eq i32 %i.cc, 0
  br i1 %.not208.us, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.cd = load i32, ptr %i.au, align 4, !tbaa !142
  %.not209.us = icmp eq i32 %i.cd, 0
  br i1 %.not209.us, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ce = load i8, ptr %i.av, align 4, !tbaa !44
  %i.cf = and i8 %i.ce, 8
  %.not210.us = icmp eq i8 %i.cf, 0
  br i1 %.not210.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = load ptr, ptr %i.aw, align 8, !tbaa !143
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !144
  %i.cj = lshr i32 %spec.select.i.us, 3
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 1, !tbaa !31
  %i.cn = and i32 %spec.select.i.us, 7
  %i.co = lshr i32 %i.cm, %i.cn
  %i.cp = and i32 %i.co, 8191
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !31
  %i.cu = sext i16 %i.ct to i32
  %i.cv = load i16, ptr %i.cr, align 2, !tbaa !31
  %i.cw = zext i16 %i.cv to i32                   ; 2 uses
  %i.cx = add i32 %spec.select.i.us, %i.cu
  %i.cy = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.cx) ; 2 uses
  store i32 %i.cy, ptr %i.as, align 8, !tbaa !28
  %i.cz = shl i32 %i.cw, 24
  %i.da = ashr i32 %i.cz, 25
  %i.db = and i32 %i.cw, 1
  %i.dc = sub nsw i32 0, %i.db
  %i.dd = xor i32 %i.da, %i.dc
  %i.de = trunc nsw i32 %i.dd to i8
  %i.df = sub nsw i8 0, %i.de
  store i8 %i.df, ptr %i.cb, align 2, !tbaa !140
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.dg = phi i32 [ %i.cy, %bb.m ], [ %spec.select.i.us, %bb.l ], [ %spec.select.i.us, %bb.k ], [ %spec.select.i.us, %bb.j ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 12 ; 3 uses
  store i8 0, ptr %i.dh, align 4, !tbaa !145
  %i.di = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 11 ; 3 uses
  store i8 0, ptr %i.di, align 1, !tbaa !146
  %i.dj = load i32, ptr %i.ax, align 8, !tbaa !47
  %i.dk = icmp ne i32 %i.dj, 0
  %i.dl = icmp ne ptr %.1234.us, null
  %or.cond.us = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond.us, label %bb.o, label %bb.al

bb.o:                                             ; preds = %bb.n
  %i.dm = getelementptr inbounds nuw i8, ptr %.1234.us, i64 11
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !146 ; 4 uses
  br i1 %.not211, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.do = sext i8 %i.dn to i32
  %i.dp = icmp sgt i8 %i.dn, 0
  %i.dq = zext i1 %i.dp to i32
  %i.dr = add nsw i32 %i.ay, %i.do
  %i.ds = add nsw i32 %i.dr, %i.dq
  %i.dt = ashr i32 %i.ds, %i.an
  %i.du = trunc i32 %i.dt to i8                   ; 2 uses
  store i8 %i.du, ptr %i.di, align 1, !tbaa !146
  %i.dv = getelementptr inbounds nuw i8, ptr %.1234.us, i64 12
  %i.dw = load i8, ptr %i.dv, align 4, !tbaa !145 ; 2 uses
  %i.dx = sext i8 %i.dw to i32
  %i.dy = icmp sgt i8 %i.dw, 0
  %i.dz = zext i1 %i.dy to i32
  %i.ea = add nsw i32 %i.ay, %i.dx
  %i.eb = add nsw i32 %i.ea, %i.dz
  %i.ec = ashr i32 %i.eb, %i.an
  %i.ed = trunc i32 %i.ec to i8                   ; 2 uses
  store i8 %i.ed, ptr %i.dh, align 4, !tbaa !145
  br label %bb.al

bb.q:                                             ; preds = %bb.o
  store i8 %i.dn, ptr %i.di, align 1, !tbaa !146
  %i.ee = getelementptr inbounds nuw i8, ptr %.1234.us, i64 12
  %i.ef = load i8, ptr %i.ee, align 4, !tbaa !145 ; 2 uses
  store i8 %i.ef, ptr %i.dh, align 4, !tbaa !145
  br label %bb.al

bb.r:                                             ; preds = %bb.h
  %i.eg = load i32, ptr %i.ax, align 8, !tbaa !47
  %i.eh = icmp ne i32 %i.eg, 0
  %i.ei = icmp ne ptr %.1234.us, null             ; 2 uses
  %or.cond3.us = select i1 %i.eh, i1 %i.ei, i1 false ; 2 uses
  br i1 %or.cond3.us, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ej = load i32, ptr %i.at, align 8, !tbaa !32
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.el = lshr i32 %spec.select.i.us, 3
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !31
  %i.ep = icmp slt i32 %spec.select.i.us, %i.bg
  %i.eq = zext i1 %i.ep to i32
  %spec.select.i214.us = add i32 %spec.select.i.us, %i.eq ; 2 uses
  %i.er = zext i8 %i.eo to i32
  %i.es = and i32 %spec.select.i.us, 7
  %i.et = lshr i32 %i.er, %i.es
  store i32 %spec.select.i214.us, ptr %i.as, align 8, !tbaa !28
  %i.eu = trunc nuw i32 %i.et to i8
  %i.ev = and i8 %i.eu, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.ew = getelementptr inbounds nuw i8, ptr %.1234.us, i64 8
  %i.ex = load i8, ptr %i.ew, align 4, !tbaa !138
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %bb.t
  %.sink = phi i8 [ %i.ex, %bb.u ], [ %i.ev, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.ey = phi i32 [ %spec.select.i.us, %bb.u ], [ %spec.select.i214.us, %bb.t ], [ %spec.select.i.us, %bb.s ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 8
  store i8 %.sink, ptr %i.ez, align 4, !tbaa !138
  %i.fa = load i32, ptr %i.az, align 8, !tbaa !43
  %.not199.us = icmp eq i32 %i.b, %i.fa           ; 2 uses
  %i.fb = select i1 %.not199.us, i32 1, i32 4
  %i.fc = lshr i32 %i.ey, 3
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 1, !tbaa !31
  %i.fg = and i32 %i.ey, 7
  %i.fh = lshr i32 %i.ff, %i.fg
  %.finite = select i1 %.not199.us, i32 1, i32 15
  %i.fi = and i32 %.finite, %i.fh                 ; 2 uses
  %i.fj = add i32 %i.fb, %i.ey
  %i.fk = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.fj) ; 10 uses
  store i32 %i.fk, ptr %i.as, align 8, !tbaa !28
  %i.fl = trunc nuw nsw i32 %i.fi to i8
  %i.fm = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 9
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !139
  %i.fn = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 10 ; 2 uses
  store i8 0, ptr %i.fn, align 2, !tbaa !140
  %i.fo = load i32, ptr %i.ba, align 8, !tbaa !49
  %.not200.us = icmp eq i32 %i.fo, 0
  br i1 %.not200.us, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fp = load i32, ptr %i.bb, align 4, !tbaa !48
  %.not201.us = icmp eq i32 %i.fp, 0
  br i1 %.not201.us, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.ei, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.fq = getelementptr inbounds nuw i8, ptr %.1234.us, i64 10
  %i.fr = load i8, ptr %i.fq, align 2, !tbaa !140
  br label %.sink.split

bb.z:                                             ; preds = %bb.w
  %.not202.us = icmp eq i32 %i.fi, 0
  br i1 %.not202.us, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.fs = load i32, ptr %1, align 8, !tbaa !141
  %.not203.us = icmp eq i32 %i.fs, 0
  br i1 %.not203.us, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ft = load i32, ptr %i.au, align 4, !tbaa !142
  %.not204.us = icmp eq i32 %i.ft, 0
  br i1 %.not204.us, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.fu = load i8, ptr %i.av, align 4, !tbaa !44
  %i.fv = and i8 %i.fu, 8
  %.not205.us = icmp eq i8 %i.fv, 0
  br i1 %.not205.us, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %i.fw = load ptr, ptr %i.aw, align 8, !tbaa !143
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !144
  %i.fz = lshr i32 %i.fk, 3
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 1, !tbaa !31
  %i.gd = and i32 %i.fk, 7
  %i.ge = lshr i32 %i.gc, %i.gd
  %i.gf = and i32 %i.ge, 8191
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.gg ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !31
  %i.gk = sext i16 %i.gj to i32
  %i.gl = load i16, ptr %i.gh, align 2, !tbaa !31
  %i.gm = zext i16 %i.gl to i32                   ; 2 uses
  %i.gn = add i32 %i.fk, %i.gk
  %i.go = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.gn) ; 2 uses
  store i32 %i.go, ptr %i.as, align 8, !tbaa !28
  %i.gp = shl i32 %i.gm, 24
  %i.gq = ashr i32 %i.gp, 25
  %i.gr = and i32 %i.gm, 1
  %i.gs = sub nsw i32 0, %i.gr
  %i.gt = xor i32 %i.gq, %i.gs
  %i.gu = trunc nsw i32 %i.gt to i8
  %i.gv = sub nsw i8 0, %i.gu
  br label %.sink.split

.sink.split:                                      ; preds = %bb.y, %bb.ad
  %.sink290 = phi i8 [ %i.gv, %bb.ad ], [ %i.fr, %bb.y ]
  %.ph289 = phi i32 [ %i.go, %bb.ad ], [ %i.fk, %bb.y ]
  store i8 %.sink290, ptr %i.fn, align 2, !tbaa !140
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ac, %bb.ab, %bb.aa, %bb.x, %bb.v
  %i.gw = phi i32 [ %i.fk, %bb.aa ], [ %i.fk, %bb.x ], [ %i.fk, %bb.v ], [ %i.fk, %bb.ac ], [ %i.fk, %bb.ab ], [ %.ph289, %.sink.split ] ; 6 uses
  %.not206.us = icmp eq i8 %.sink, 0
  br i1 %.not206.us, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %or.cond3.us, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gx = load ptr, ptr %i.aw, align 8, !tbaa !143
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !144 ; 2 uses
  %i.ha = lshr i32 %i.gw, 3
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 1, !tbaa !31
  %i.he = and i32 %i.gw, 7
  %i.hf = lshr i32 %i.hd, %i.he
  %i.hg = and i32 %i.hf, 8191
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hh ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !31
  %i.hl = sext i16 %i.hk to i32
  %i.hm = load i16, ptr %i.hi, align 2, !tbaa !31 ; 2 uses
  %i.hn = add i32 %i.gw, %i.hl
  %i.ho = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.hn) ; 4 uses
  store i32 %i.ho, ptr %i.as, align 8, !tbaa !28
  %i.hp = ashr i16 %i.hm, 1
  %i.hq = and i16 %i.hm, 1
  %i.hr = sub nsw i16 0, %i.hq
  %i.hs = xor i16 %i.hp, %i.hr
  %i.ht = sub i16 %.1182231.us, %i.hs             ; 2 uses
  %i.hu = lshr i32 %i.ho, 3
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 1, !tbaa !31
  %i.hy = and i32 %i.ho, 7
  %i.hz = lshr i32 %i.hx, %i.hy
  %i.ia = and i32 %i.hz, 8191
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.ib ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 2
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !31
  %i.if = sext i16 %i.ie to i32
  %i.ig = load i16, ptr %i.ic, align 2, !tbaa !31 ; 2 uses
  %i.ih = add i32 %i.ho, %i.if
  %i.ii = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.ih) ; 2 uses
  store i32 %i.ii, ptr %i.as, align 8, !tbaa !28
  %i.ij = ashr i16 %i.ig, 1
  %i.ik = and i16 %i.ig, 1
  %i.il = sub nsw i16 0, %i.ik
  %i.im = xor i16 %i.ij, %i.il
  %i.in = sub i16 %.1185230.us, %i.im             ; 2 uses
  %i.io = trunc i16 %i.in to i8                   ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 11
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !146
  %i.iq = trunc i16 %i.ht to i8                   ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 12
  store i8 %i.iq, ptr %i.ir, align 4, !tbaa !145
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.is = getelementptr inbounds nuw i8, ptr %.1234.us, i64 11
  %i.it = load i8, ptr %i.is, align 1, !tbaa !146 ; 4 uses
  br i1 %.not211, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.iu = sext i8 %i.it to i32
  %i.iv = icmp sgt i8 %i.it, 0
  %i.iw = zext i1 %i.iv to i32
  %i.ix = add nsw i32 %i.ay, %i.iu
  %i.iy = add nsw i32 %i.ix, %i.iw
  %i.iz = ashr i32 %i.iy, %i.an
  %i.ja = trunc i32 %i.iz to i8                   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 11
  store i8 %i.ja, ptr %i.jb, align 1, !tbaa !146
  %i.jc = getelementptr inbounds nuw i8, ptr %.1234.us, i64 12
  %i.jd = load i8, ptr %i.jc, align 4, !tbaa !145 ; 2 uses
  %i.je = sext i8 %i.jd to i32
  %i.jf = icmp sgt i8 %i.jd, 0
  %i.jg = zext i1 %i.jf to i32
  %i.jh = add nsw i32 %i.ay, %i.je
  %i.ji = add nsw i32 %i.jh, %i.jg
  %i.jj = ashr i32 %i.ji, %i.an
  %i.jk = trunc i32 %i.jj to i8                   ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 12
  store i8 %i.jk, ptr %i.jl, align 4, !tbaa !145
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.jm = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 11
  store i8 %i.it, ptr %i.jm, align 1, !tbaa !146
  %i.jn = getelementptr inbounds nuw i8, ptr %.1234.us, i64 12
  %i.jo = load i8, ptr %i.jn, align 4, !tbaa !145 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 12
  store i8 %i.jo, ptr %i.jp, align 4, !tbaa !145
  br label %bb.al

bb.ak:                                            ; preds = %bb.ae
  %i.jq = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 12
  store i8 0, ptr %i.jq, align 4, !tbaa !145
  %i.jr = getelementptr inbounds nuw i8, ptr %.1178233.us, i64 11
  store i8 0, ptr %i.jr, align 1, !tbaa !146
  br label %bb.an

bb.al:                                            ; preds = %bb.p, %bb.q, %bb.n, %bb.ai, %bb.aj, %bb.ag
  %.ph = phi i8 [ %i.iq, %bb.ag ], [ %i.jo, %bb.aj ], [ %i.jk, %bb.ai ], [ 0, %bb.n ], [ %i.ef, %bb.q ], [ %i.ed, %bb.p ]
  %.ph271 = phi i8 [ %i.io, %bb.ag ], [ %i.it, %bb.aj ], [ %i.ja, %bb.ai ], [ 0, %bb.n ], [ %i.dn, %bb.q ], [ %i.du, %bb.p ]
  %.ph272 = phi i32 [ %i.ii, %bb.ag ], [ %i.gw, %bb.aj ], [ %i.gw, %bb.ai ], [ %i.dg, %bb.n ], [ %i.dg, %bb.q ], [ %i.dg, %bb.p ]
  %.2186.us.ph = phi i16 [ %i.in, %bb.ag ], [ %.1185230.us, %bb.aj ], [ %.1185230.us, %bb.ai ], [ %.1185230.us, %bb.n ], [ %.1185230.us, %bb.q ], [ %.1185230.us, %bb.p ]
  %.2183.us.ph = phi i16 [ %i.ht, %bb.ag ], [ %.1182231.us, %bb.aj ], [ %.1182231.us, %bb.ai ], [ %.1182231.us, %bb.n ], [ %.1182231.us, %bb.q ], [ %.1182231.us, %bb.p ]
  %i.js = load i32, ptr %i.bc, align 4, !tbaa !41 ; 8 uses
  %i.jt = sext i8 %.ph271 to i32                  ; 3 uses
  %i.ju = ashr i32 %i.jt, %i.js
  %i.jv = add nsw i32 %i.ju, %.0188229.us
  %i.jw = sext i32 %i.jv to i64
  %i.jx = sext i8 %.ph to i32                     ; 3 uses
  %i.jy = ashr i32 %i.jx, %i.js
end_hunk_0
