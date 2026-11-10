Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jidctfst-8?download=true
begin_hunk_0_@jpeg_idct_ifast:bb.a
.preheader:                                       ; preds = %bb.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 9 uses
  %i.g = zext i32 %4 to i64
  br label %bb.j

bb.b:                                             ; preds = %bb.a, %bb.i
  %.0234 = phi i32 [ 8, %bb.a ], [ %i.ei, %bb.i ] ; 2 uses
  %.0221233 = phi ptr [ %i.a, %bb.a ], [ %.1222, %bb.i ] ; 16 uses
  %.0223232 = phi ptr [ %i.e, %bb.a ], [ %.1224, %bb.i ] ; 10 uses
  %.0225231 = phi ptr [ %2, %bb.a ], [ %.1226, %bb.i ] ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0225231, i64 16
  %i.i = load i16, ptr %i.h, align 2, !tbaa !37   ; 2 uses
  %i.j = icmp eq i16 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %.0225231, i64 32
  %i.l = load i16, ptr %i.k, align 2, !tbaa !37   ; 2 uses
  %i.m = icmp eq i16 %i.l, 0
  %or.cond = select i1 %i.j, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.0225231, i64 48
  %i.o = load i16, ptr %i.n, align 2, !tbaa !37
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.0225231, i64 64
  %i.r = load i16, ptr %i.q, align 2, !tbaa !37
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.0225231, i64 80
  %i.u = load i16, ptr %i.t, align 2, !tbaa !37
  %i.v = icmp eq i16 %i.u, 0
  br i1 %i.v, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.0225231, i64 96
  %i.x = load i16, ptr %i.w, align 2, !tbaa !37
  %i.y = icmp eq i16 %i.x, 0
  br i1 %i.y, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.0225231, i64 112
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !37
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.ac = load i16, ptr %.0225231, align 2, !tbaa !37
  %i.ad = sext i16 %i.ac to i32
  %i.ae = load i16, ptr %.0223232, align 2, !tbaa !37
  %i.af = sext i16 %i.ae to i32
  %i.ag = mul nsw i32 %i.af, %i.ad                ; 8 uses
  store i32 %i.ag, ptr %.0221233, align 4, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %.0221233, i64 32
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %.0221233, i64 64
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %.0221233, i64 96
  store i32 %i.ag, ptr %i.aj, align 4, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %.0221233, i64 128
  store i32 %i.ag, ptr %i.ak, align 4, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %.0221233, i64 160
  store i32 %i.ag, ptr %i.al, align 4, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %.0221233, i64 192
  store i32 %i.ag, ptr %i.am, align 4, !tbaa !38
  br label %bb.i

._crit_edge:                                      ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.an = phi i16 [ %i.l, %bb.b ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.ao = load i16, ptr %.0225231, align 2, !tbaa !37
  %i.ap = load i16, ptr %.0223232, align 2, !tbaa !37
  %i.aq = mul i16 %i.ap, %i.ao                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0223232, i64 32
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !37
  %i.at = mul i16 %i.as, %i.an                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0225231, i64 64
  %i.av = load i16, ptr %i.au, align 2, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %.0223232, i64 64
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !37
  %i.ay = mul i16 %i.ax, %i.av                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0225231, i64 96
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %.0223232, i64 96
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !37
  %i.bd = mul i16 %i.bc, %i.ba                    ; 2 uses
  %i.be = add i16 %i.ay, %i.aq                    ; 2 uses
  %i.bf = sub i16 %i.aq, %i.ay                    ; 2 uses
  %i.bg = sext i16 %i.at to i32
  %i.bh = sext i16 %i.bd to i32
  %i.bi = add i16 %i.bd, %i.at                    ; 3 uses
  %i.bj = sub nsw i32 %i.bg, %i.bh
  %i.bk = mul i32 %i.bj, 92672
  %i.bl = lshr i32 %i.bk, 16
  %i.bm = trunc nuw i32 %i.bl to i16
  %i.bn = sub i16 %i.bm, %i.bi                    ; 2 uses
  %i.bo = add i16 %i.bi, %i.be
  %i.bp = sub i16 %i.be, %i.bi
  %i.bq = add i16 %i.bn, %i.bf
  %i.br = sub i16 %i.bf, %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %.0223232, i64 16
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !37
  %i.bu = mul i16 %i.bt, %i.i                     ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0225231, i64 48
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %.0223232, i64 48
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !37
  %i.bz = mul i16 %i.by, %i.bw                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0225231, i64 80
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !37
  %i.cc = getelementptr inbounds nuw i8, ptr %.0223232, i64 80
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !37
  %i.ce = mul i16 %i.cd, %i.cb                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0225231, i64 112
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !37
  %i.ch = getelementptr inbounds nuw i8, ptr %.0223232, i64 112
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !37
  %i.cj = mul i16 %i.ci, %i.cg                    ; 2 uses
  %i.ck = add i16 %i.ce, %i.bz                    ; 2 uses
  %i.cl = sub i16 %i.ce, %i.bz
  %i.cm = add i16 %i.cj, %i.bu                    ; 2 uses
  %i.cn = sub i16 %i.bu, %i.cj
  %i.co = sext i16 %i.cm to i32
  %i.cp = sext i16 %i.ck to i32
  %i.cq = add i16 %i.cm, %i.ck                    ; 2 uses
  %i.cr = sub nsw i32 %i.co, %i.cp
  %i.cs = sext i16 %i.cl to i32                   ; 2 uses
  %i.ct = sext i16 %i.cn to i32                   ; 2 uses
  %i.cu = add nsw i32 %i.ct, %i.cs
  %i.cv = mul i32 %i.ct, 70912
  %i.cw = mul i32 %i.cu, 121088
  %i.cx = and i32 %i.cw, -65536                   ; 2 uses
  %i.cy = mul i32 %i.cs, -171264
  %i.cz = add i32 %i.cx, %i.cy
  %i.da = lshr i32 %i.cz, 16
  %i.db = sext i16 %i.cq to i32                   ; 2 uses
  %i.dc = trunc nuw i32 %i.da to i16
  %i.dd = sub i16 %i.dc, %i.cq                    ; 2 uses
  %i.de = mul i32 %i.cr, 92672
  %i.df = lshr i32 %i.de, 16
  %i.dg = sext i16 %i.dd to i32                   ; 2 uses
  %i.dh = trunc nuw i32 %i.df to i16
  %i.di = sub i16 %i.dh, %i.dd                    ; 2 uses
  %i.dj = sub i32 %i.cv, %i.cx
  %i.dk = lshr i32 %i.dj, 16
  %i.dl = sext i16 %i.di to i32                   ; 2 uses
  %i.dm = trunc nuw i32 %i.dk to i16
  %i.dn = add i16 %i.di, %i.dm
  %i.do = sext i16 %i.bo to i32                   ; 2 uses
  %i.dp = add nsw i32 %i.db, %i.do
  store i32 %i.dp, ptr %.0221233, align 4, !tbaa !38
  %i.dq = sub nsw i32 %i.do, %i.db
  %i.dr = getelementptr inbounds nuw i8, ptr %.0221233, i64 224
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !38
  %i.ds = sext i16 %i.bq to i32                   ; 2 uses
  %i.dt = add nsw i32 %i.dg, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.0221233, i64 32
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !38
  %i.dv = sub nsw i32 %i.ds, %i.dg
  %i.dw = getelementptr inbounds nuw i8, ptr %.0221233, i64 192
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !38
  %i.dx = sext i16 %i.br to i32                   ; 2 uses
  %i.dy = add nsw i32 %i.dl, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %.0221233, i64 64
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !38
  %i.ea = sub nsw i32 %i.dx, %i.dl
  %i.eb = getelementptr inbounds nuw i8, ptr %.0221233, i64 160
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !38
  %i.ec = sext i16 %i.bp to i32                   ; 2 uses
  %i.ed = sext i16 %i.dn to i32                   ; 2 uses
  %i.ee = add nsw i32 %i.ed, %i.ec
  %i.ef = getelementptr inbounds nuw i8, ptr %.0221233, i64 128
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !38
  %i.eg = sub nsw i32 %i.ec, %i.ed
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.sink243 = phi i64 [ 96, %._crit_edge ], [ 224, %bb.h ]
  %.sink = phi i32 [ %i.eg, %._crit_edge ], [ %i.ag, %bb.h ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.0221233, i64 %.sink243
  store i32 %.sink, ptr %i.eh, align 4, !tbaa !38
  %.1222 = getelementptr inbounds nuw i8, ptr %.0221233, i64 4
  %.1224 = getelementptr inbounds nuw i8, ptr %.0223232, i64 2
  %.1226 = getelementptr inbounds nuw i8, ptr %.0225231, i64 2
  %i.ei = add nsw i32 %.0234, -1
  %i.ej = icmp samesign ugt i32 %.0234, 1
  br i1 %i.ej, label %bb.b, label %.preheader, !llvm.loop !8

bb.j:                                             ; preds = %.preheader, %bb.q
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %.2235 = phi ptr [ %i.a, %.preheader ], [ %.3, %bb.q ] ; 15 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !40
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.g ; 12 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.2235, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !38 ; 3 uses
  %i.ep = icmp eq i32 %i.eo, 0
  %i.eq = getelementptr inbounds nuw i8, ptr %.2235, i64 8
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !38 ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  %or.cond244 = select i1 %i.ep, i1 %i.es, i1 false
  br i1 %or.cond244, label %bb.k, label %._crit_edge238

bb.k:                                             ; preds = %bb.j
  %i.et = getelementptr inbounds nuw i8, ptr %.2235, i64 12
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !38
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.l, label %._crit_edge238

bb.l:                                             ; preds = %bb.k
  %i.ew = getelementptr inbounds nuw i8, ptr %.2235, i64 16
  %i.ex = load i32, ptr %i.ew, align 16, !tbaa !38
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.m, label %._crit_edge238

bb.m:                                             ; preds = %bb.l
  %i.ez = getelementptr inbounds nuw i8, ptr %.2235, i64 20
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !38
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.n, label %._crit_edge238

bb.n:                                             ; preds = %bb.m
  %i.fc = getelementptr inbounds nuw i8, ptr %.2235, i64 24
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !38
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.o, label %._crit_edge238

bb.o:                                             ; preds = %bb.n
  %i.ff = getelementptr inbounds nuw i8, ptr %.2235, i64 28
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !38
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.p, label %._crit_edge238

bb.p:                                             ; preds = %bb.o
  %i.fi = load i32, ptr %.2235, align 16, !tbaa !38
  %i.fj = lshr i32 %i.fi, 5
  %i.fk = and i32 %i.fj, 1023
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !41  ; 5 uses
  %i.fo = insertelement <4 x i8> poison, i8 %i.fn, i64 0
  %i.fp = shufflevector <4 x i8> %i.fo, <4 x i8> poison, <4 x i32> zeroinitializer
  store <4 x i8> %i.fp, ptr %i.em, align 1, !tbaa !41
  %i.fq = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i8 %i.fn, ptr %i.fq, align 1, !tbaa !41
  %i.fr = getelementptr inbounds nuw i8, ptr %i.em, i64 5
  store i8 %i.fn, ptr %i.fr, align 1, !tbaa !41
  %i.fs = getelementptr inbounds nuw i8, ptr %i.em, i64 6
  store i8 %i.fn, ptr %i.fs, align 1, !tbaa !41
  br label %bb.q

._crit_edge238:                                   ; preds = %bb.j, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %i.ft = phi i32 [ %i.er, %bb.j ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.fu = load i32, ptr %.2235, align 16, !tbaa !38 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.2235, i64 16
  %i.fw = load i32, ptr %i.fv, align 16, !tbaa !38 ; 2 uses
  %i.fx = add i32 %i.fw, %i.fu                    ; 2 uses
  %i.fy = sub i32 %i.fu, %i.fw                    ; 2 uses
  %i.fz = shl i32 %i.ft, 16
  %i.ga = ashr exact i32 %i.fz, 16
  %i.gb = getelementptr inbounds nuw i8, ptr %.2235, i64 24
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !38 ; 2 uses
  %i.gd = shl i32 %i.gc, 16
  %i.ge = ashr exact i32 %i.gd, 16
  %i.gf = add i32 %i.gc, %i.ft                    ; 3 uses
  %i.gg = sub nsw i32 %i.ga, %i.ge
  %i.gh = mul i32 %i.gg, 92672
  %i.gi = add i32 %i.gf, %i.fx                    ; 2 uses
  %i.gj = sub i32 %i.fx, %i.gf                    ; 2 uses
  %i.gk = shl i32 %i.gf, 16
  %i.gl = sub i32 %i.gh, %i.gk
  %i.gm = ashr i32 %i.gl, 16                      ; 2 uses
  %i.gn = add i32 %i.gm, %i.fy                    ; 2 uses
  %i.go = sub i32 %i.fy, %i.gm                    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.2235, i64 20
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !38 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.2235, i64 12
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !38 ; 2 uses
  %i.gt = add i32 %i.gs, %i.gq                    ; 2 uses
  %i.gu = sub i32 %i.gq, %i.gs                    ; 2 uses
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %.2235, i64 28
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !38 ; 2 uses
  %i.gy = add i32 %i.gx, %i.eo                    ; 2 uses
  %i.gz = sub i32 %i.eo, %i.gx                    ; 2 uses
  %i.ha = zext i32 %i.gz to i64
  %i.hb = shl i32 %i.gy, 16
  %i.hc = ashr exact i32 %i.hb, 16
  %i.hd = shl i32 %i.gt, 16
  %i.he = ashr exact i32 %i.hd, 16
  %i.hf = add i32 %i.gy, %i.gt                    ; 3 uses
  %i.hg = sub nsw i32 %i.hc, %i.he
  %sext = shl i32 %i.gu, 16
  %i.hh = ashr exact i32 %sext, 16
  %sext227 = shl i32 %i.gz, 16
  %i.hi = ashr exact i32 %sext227, 16
  %i.hj = add nsw i32 %i.hi, %i.hh
  %sext229 = shl i64 %i.ha, 48
  %i.hk = ashr exact i64 %sext229, 48
  %i.hl = trunc nsw i64 %i.hk to i32
  %i.hm = mul nsw i32 %i.hl, 277
  %i.hn = lshr i32 %i.hm, 8
  %i.ho = mul i32 %i.hj, 121088
  %i.hp = ashr i32 %i.ho, 16                      ; 2 uses
  %i.hq = sub nsw i32 %i.hn, %i.hp
  %sext230 = shl i64 %i.gv, 48
  %i.hr = ashr exact i64 %sext230, 48
  %i.hs = trunc nsw i64 %i.hr to i32
  %i.ht = mul i32 %i.hs, 16776547
  %i.hu = lshr i32 %i.ht, 8
  %i.hv = sub i32 %i.hu, %i.hf
  %i.hw = add i32 %i.hv, %i.hp                    ; 3 uses
  %i.hx = mul i32 %i.hg, 92672
  %i.hy = shl i32 %i.hw, 16
  %i.hz = sub i32 %i.hx, %i.hy
  %i.ia = ashr i32 %i.hz, 16                      ; 3 uses
  %i.ib = add nsw i32 %i.ia, %i.hq                ; 2 uses
  %i.ic = add i32 %i.hf, %i.gi
  %i.id = lshr i32 %i.ic, 5
  %i.ie = and i32 %i.id, 1023
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !41
  store i8 %i.ih, ptr %i.em, align 1, !tbaa !41
  %i.ii = sub i32 %i.gi, %i.hf
  %i.ij = lshr i32 %i.ii, 5
  %i.ik = and i32 %i.ij, 1023
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !41
  %i.io = getelementptr inbounds nuw i8, ptr %i.em, i64 7
  store i8 %i.in, ptr %i.io, align 1, !tbaa !41
  %i.ip = add i32 %i.hw, %i.gn
  %i.iq = lshr i32 %i.ip, 5
  %i.ir = and i32 %i.iq, 1023
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !41
  %i.iv = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !41
  %i.iw = sub i32 %i.gn, %i.hw
  %i.ix = lshr i32 %i.iw, 5
  %i.iy = and i32 %i.ix, 1023
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !41
  %i.jc = getelementptr inbounds nuw i8, ptr %i.em, i64 6
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !41
  %i.jd = add i32 %i.ia, %i.go
  %i.je = lshr i32 %i.jd, 5
  %i.jf = and i32 %i.je, 1023
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !41
  %i.jj = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store i8 %i.ji, ptr %i.jj, align 1, !tbaa !41
  %i.jk = sub i32 %i.go, %i.ia
  %i.jl = lshr i32 %i.jk, 5
  %i.jm = and i32 %i.jl, 1023
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !41
  %i.jq = getelementptr inbounds nuw i8, ptr %i.em, i64 5
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !41
  %i.jr = add i32 %i.ib, %i.gj
  %i.js = lshr i32 %i.jr, 5
  %i.jt = and i32 %i.js, 1023
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !41
  %i.jx = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !41
  %i.jy = sub i32 %i.gj, %i.ib
  %i.jz = lshr i32 %i.jy, 5
  %i.ka = and i32 %i.jz, 1023
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !41
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge238, %bb.p
  %.sink247 = phi i64 [ 3, %._crit_edge238 ], [ 7, %bb.p ]
  %.sink245 = phi i8 [ %i.kd, %._crit_edge238 ], [ %i.fn, %bb.p ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sink247
  store i8 %.sink245, ptr %i.ke, align 1, !tbaa !41
  %.3 = getelementptr inbounds nuw i8, ptr %.2235, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.r, label %bb.j, !llvm.loop !9

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !39}
!9 = distinct !{!9, !39}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!14 = !{!"p1 _ZTS15jpeg_source_mgr", !10, i64 0}
!15 = !{!"double", !4, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"p2 omnipotent char", !16, i64 0}
!18 = !{!"p1 int", !10, i64 0}
!19 = !{!"short", !4, i64 0}
!20 = !{!"p1 _ZTS18jpeg_marker_struct", !10, i64 0}
!21 = !{!"p1 omnipotent char", !10, i64 0}
!22 = !{!"p1 _ZTS18jpeg_decomp_master", !10, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_main_controller", !10, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_coef_controller", !10, i64 0}
!25 = !{!"p1 _ZTS22jpeg_d_post_controller", !10, i64 0}
!26 = !{!"p1 _ZTS21jpeg_input_controller", !10, i64 0}
!27 = !{!"p1 _ZTS18jpeg_marker_reader", !10, i64 0}
!28 = !{!"p1 _ZTS20jpeg_entropy_decoder", !10, i64 0}
!29 = !{!"p1 _ZTS16jpeg_inverse_dct", !10, i64 0}
!30 = !{!"p1 _ZTS14jpeg_upsampler", !10, i64 0}
!31 = !{!"p1 _ZTS22jpeg_color_deconverter", !10, i64 0}
!32 = !{!"p1 _ZTS20jpeg_color_quantizer", !10, i64 0}
!33 = !{!"jpeg_decompress_struct", !11, i64 0, !12, i64 8, !13, i64 16, !10, i64 24, !5, i64 32, !5, i64 36, !14, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !15, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !17, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !18, i64 192, !4, i64 200, !4, i64 232, !4, i64 264, !5, i64 296, !10, i64 304, !5, i64 312, !5, i64 316, !4, i64 320, !4, i64 336, !4, i64 352, !5, i64 368, !5, i64 372, !4, i64 376, !4, i64 377, !4, i64 378, !19, i64 380, !19, i64 382, !5, i64 384, !4, i64 388, !5, i64 392, !20, i64 400, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !21, i64 424, !5, i64 432, !4, i64 440, !5, i64 472, !5, i64 476, !5, i64 480, !4, i64 484, !5, i64 524, !5, i64 528, !5, i64 532, !5, i64 536, !5, i64 540, !22, i64 544, !23, i64 552, !24, i64 560, !25, i64 568, !26, i64 576, !27, i64 584, !28, i64 592, !29, i64 600, !30, i64 608, !31, i64 616, !32, i64 624}
!34 = !{!33, !21, i64 424}
!35 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !10, i64 80, !10, i64 88}
!36 = !{!35, !10, i64 88}
!37 = !{!19, !19, i64 0}
!38 = !{!5, !5, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!21, !21, i64 0}
!41 = !{!4, !4, i64 0}
end_hunk_0
