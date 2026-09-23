Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.06?download=true
inline.NumInlined: 5983
inline.NumDeleted: 3458
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 61
begin_hunk_0_@"_ZN88_$LT$anki_proto..deck_config..deck_config..Config$u20$as$u20$prost..message..Message$GT$11encoded_len17he57b714220354009E":bb.a
  %i.bh = or disjoint i64 %i.bg, 1                ; 2 uses
  %i.bi = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bh, i1 true)
  %i.bj = xor i64 %i.bi, 63
  %i.bk = mul nuw nsw i64 %i.bj, 9
  %i.bl = add nuw nsw i64 %i.bk, 73
  %i.bm = lshr i64 %i.bl, 6
  %i.bn = add i64 %i.bm, %i.bh
  br label %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit83

_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit83: ; preds = %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit81, %bb.g
  %.sroa.0.0.i82 = phi i64 [ %i.bn, %bb.g ], [ 0, %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit81 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bp = load i32, ptr %i.bo, align 8, !noundef !3 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit83
  %i.br = or i32 %i.bp, 1
  %i.bs = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.br, i1 true)
  %i.bt = xor i32 %i.bs, 31
  %i.bu = mul nuw nsw i32 %i.bt, 9
  %i.bv = add nuw nsw i32 %i.bu, 73
  %i.bw = lshr i32 %i.bv, 6
  %narrow.i = add nuw nsw i32 %i.bw, 1
  %i.bx = zext nneg i32 %narrow.i to i64
  br label %bb.i

bb.i:                                             ; preds = %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit83, %bb.h
  %.sroa.0.0 = phi i64 [ %i.bx, %bb.h ], [ 0, %_ZN5prost8encoding5float18encoded_len_packed17h6ce3369b600500c0E.exit83 ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.bz = load i32, ptr %i.by, align 4, !noundef !3 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = or i32 %i.bz, 1
  %i.cc = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cb, i1 true)
  %i.cd = xor i32 %i.cc, 31
  %i.ce = mul nuw nsw i32 %i.cd, 9
  %i.cf = add nuw nsw i32 %i.ce, 73
  %i.cg = lshr i32 %i.cf, 6
  %narrow.i84 = add nuw nsw i32 %i.cg, 1
  %i.ch = zext nneg i32 %narrow.i84 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.01.0 = phi i64 [ %i.ch, %bb.j ], [ 0, %bb.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.cj = load float, ptr %i.ci, align 4, !noundef !3
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cl = load <4 x float>, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.cn = load i32, ptr %i.cm, align 8, !noundef !3 ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = or i32 %i.cn, 1
  %i.cq = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cp, i1 true)
  %i.cr = xor i32 %i.cq, 31
  %i.cs = mul nuw nsw i32 %i.cr, 9
  %i.ct = add nuw nsw i32 %i.cs, 73
  %i.cu = lshr i32 %i.ct, 6
  %narrow.i85 = add nuw nsw i32 %i.cu, 2
  %i.cv = zext nneg i32 %narrow.i85 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.07.0 = phi i64 [ %i.cv, %bb.l ], [ 0, %bb.k ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !3 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cz = or i32 %i.cx, 1
  %i.da = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cz, i1 true)
  %i.db = xor i32 %i.da, 31
  %i.dc = mul nuw nsw i32 %i.db, 9
  %i.dd = add nuw nsw i32 %i.dc, 73
  %i.de = lshr i32 %i.dd, 6
  %narrow.i86 = add nuw nsw i32 %i.de, 2
  %i.df = zext nneg i32 %narrow.i86 to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sroa.08.0 = phi i64 [ %i.df, %bb.n ], [ 0, %bb.m ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dh = load i32, ptr %i.dg, align 8, !noundef !3 ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dj = or i32 %i.dh, 1
  %i.dk = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dj, i1 true)
  %i.dl = xor i32 %i.dk, 31
  %i.dm = mul nuw nsw i32 %i.dl, 9
  %i.dn = add nuw nsw i32 %i.dm, 73
  %i.do = lshr i32 %i.dn, 6
  %narrow.i87 = add nuw nsw i32 %i.do, 2
  %i.dp = zext nneg i32 %narrow.i87 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sroa.09.0 = phi i64 [ %i.dp, %bb.p ], [ 0, %bb.o ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.dr = load i32, ptr %i.dq, align 4, !noundef !3 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dt = or i32 %i.dr, 1
  %i.du = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dt, i1 true)
  %i.dv = xor i32 %i.du, 31
  %i.dw = mul nuw nsw i32 %i.dv, 9
  %i.dx = add nuw nsw i32 %i.dw, 73
  %i.dy = lshr i32 %i.dx, 6
  %narrow.i88 = add nuw nsw i32 %i.dy, 2
  %i.dz = zext nneg i32 %narrow.i88 to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.sroa.010.0 = phi i64 [ %i.dz, %bb.r ], [ 0, %bb.q ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.eb = load i32, ptr %i.ea, align 8, !noundef !3 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ed = or i32 %i.eb, 1
  %i.ee = sext i32 %i.ed to i64
  %i.ef = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ee, i1 true)
  %i.eg = xor i64 %i.ef, 63
  %i.eh = mul nuw nsw i64 %i.eg, 9
  %i.ei = add nuw nsw i64 %i.eh, 73
  %i.ej = lshr i64 %i.ei, 6
  %i.ek = add nuw nsw i64 %i.ej, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sroa.011.0 = phi i64 [ %i.ek, %bb.t ], [ 0, %bb.s ]
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.em = load i32, ptr %i.el, align 8, !noundef !3 ; 2 uses
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eo = or i32 %i.em, 1
  %i.ep = sext i32 %i.eo to i64
  %i.eq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ep, i1 true)
  %i.er = xor i64 %i.eq, 63
  %i.es = mul nuw nsw i64 %i.er, 9
  %i.et = add nuw nsw i64 %i.es, 73
  %i.eu = lshr i64 %i.et, 6
  %i.ev = add nuw nsw i64 %i.eu, 2
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.sroa.012.0 = phi i64 [ %i.ev, %bb.v ], [ 0, %bb.u ]
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ex = load i32, ptr %i.ew, align 4, !noundef !3 ; 2 uses
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ez = or i32 %i.ex, 1
  %i.fa = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ez, i1 true)
  %i.fb = xor i32 %i.fa, 31
  %i.fc = mul nuw nsw i32 %i.fb, 9
  %i.fd = add nuw nsw i32 %i.fc, 73
  %i.fe = lshr i32 %i.fd, 6
  %narrow.i89 = add nuw nsw i32 %i.fe, 2
  %i.ff = zext nneg i32 %narrow.i89 to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sroa.013.0 = phi i64 [ %i.ff, %bb.x ], [ 0, %bb.w ]
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.fh = load i8, ptr %i.fg, align 4, !range !22, !noundef !3
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.fj = load i32, ptr %i.fi, align 8, !noundef !3 ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fl = or i32 %i.fj, 1
  %i.fm = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fl, i1 true)
  %i.fn = xor i32 %i.fm, 31
  %i.fo = mul nuw nsw i32 %i.fn, 9
  %i.fp = add nuw nsw i32 %i.fo, 73
  %i.fq = lshr i32 %i.fp, 6
  %narrow.i90 = add nuw nsw i32 %i.fq, 2
  %i.fr = zext nneg i32 %narrow.i90 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.sroa.015.0 = phi i64 [ %i.fr, %bb.z ], [ 0, %bb.y ]
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 325
  %i.ft = load i8, ptr %i.fs, align 1, !range !22, !noundef !3
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 328
  %1 = load <4 x i8>, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.fw = load i32, ptr %i.fv, align 4, !noundef !3 ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fy = or i32 %i.fw, 1
  %i.fz = sext i32 %i.fy to i64
  %i.ga = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fz, i1 true)
  %i.gb = xor i64 %i.ga, 63
  %i.gc = mul nuw nsw i64 %i.gb, 9
  %i.gd = add nuw nsw i64 %i.gc, 73
  %i.ge = lshr i64 %i.gd, 6
  %i.gf = add nuw nsw i64 %i.ge, 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.sroa.021.0 = phi i64 [ %i.gf, %bb.ab ], [ 0, %bb.aa ]
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.gh = load i32, ptr %i.gg, align 4, !noundef !3 ; 2 uses
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gj = or i32 %i.gh, 1
  %i.gk = sext i32 %i.gj to i64
  %i.gl = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gk, i1 true)
  %i.gm = xor i64 %i.gl, 63
  %i.gn = mul nuw nsw i64 %i.gm, 9
  %i.go = add nuw nsw i64 %i.gn, 73
  %i.gp = lshr i64 %i.go, 6
  %i.gq = add nuw nsw i64 %i.gp, 2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.sroa.022.0 = phi i64 [ %i.gq, %bb.ad ], [ 0, %bb.ac ]
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.gs = load i32, ptr %i.gr, align 8, !noundef !3 ; 2 uses
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gu = or i32 %i.gs, 1
  %i.gv = sext i32 %i.gu to i64
  %i.gw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gv, i1 true)
  %i.gx = xor i64 %i.gw, 63
  %i.gy = mul nuw nsw i64 %i.gx, 9
  %i.gz = add nuw nsw i64 %i.gy, 73
  %i.ha = lshr i64 %i.gz, 6
  %i.hb = add nuw nsw i64 %i.ha, 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.sroa.023.0 = phi i64 [ %i.hb, %bb.af ], [ 0, %bb.ae ]
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.hd = load i32, ptr %i.hc, align 8, !noundef !3 ; 2 uses
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hf = or i32 %i.hd, 1
  %i.hg = sext i32 %i.hf to i64
  %i.hh = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.hg, i1 true)
  %i.hi = xor i64 %i.hh, 63
  %i.hj = mul nuw nsw i64 %i.hi, 9
  %i.hk = add nuw nsw i64 %i.hj, 73
  %i.hl = lshr i64 %i.hk, 6
  %i.hm = add nuw nsw i64 %i.hl, 2
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.sroa.024.0 = phi i64 [ %i.hm, %bb.ah ], [ 0, %bb.ag ]
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ho = load i32, ptr %i.hn, align 4, !noundef !3 ; 2 uses
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hq = or i32 %i.ho, 1
  %i.hr = sext i32 %i.hq to i64
  %i.hs = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.hr, i1 true)
  %i.ht = xor i64 %i.hs, 63
  %i.hu = mul nuw nsw i64 %i.ht, 9
  %i.hv = add nuw nsw i64 %i.hu, 73
  %i.hw = lshr i64 %i.hv, 6
  %i.hx = add nuw nsw i64 %i.hw, 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.sroa.025.0 = phi i64 [ %i.hx, %bb.aj ], [ 0, %bb.ai ]
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.hz = load i32, ptr %i.hy, align 8, !noundef !3 ; 2 uses
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ib = or i32 %i.hz, 1
  %i.ic = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ib, i1 true)
  %i.id = xor i32 %i.ic, 31
  %i.ie = mul nuw nsw i32 %i.id, 9
  %i.if = add nuw nsw i32 %i.ie, 73
  %i.ig = lshr i32 %i.if, 6
  %narrow.i91 = add nuw nsw i32 %i.ig, 2
  %i.ih = zext nneg i32 %narrow.i91 to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.sroa.026.0 = phi i64 [ %i.ih, %bb.al ], [ 0, %bb.ak ]
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.ij = load i32, ptr %i.ii, align 4, !noundef !3 ; 2 uses
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.il = or i32 %i.ij, 1
  %i.im = sext i32 %i.il to i64
  %i.in = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.im, i1 true)
  %i.io = xor i64 %i.in, 63
  %i.ip = mul nuw nsw i64 %i.io, 9
  %i.iq = add nuw nsw i64 %i.ip, 73
  %i.ir = lshr i64 %i.iq, 6
  %i.is = add nuw nsw i64 %i.ir, 2
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.sroa.027.0 = phi i64 [ %i.is, %bb.an ], [ 0, %bb.am ]
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 326
  %i.iu = load i8, ptr %i.it, align 2, !range !22, !noundef !3
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.iw = load <6 x float>, ptr %i.iv, align 4
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.iy = load i32, ptr %i.ix, align 8, !noundef !3 ; 2 uses
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ja = or i32 %i.iy, 1
  %i.jb = sext i32 %i.ja to i64
  %i.jc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.jb, i1 true)
  %i.jd = xor i64 %i.jc, 63
  %i.je = mul nuw nsw i64 %i.jd, 9
  %i.jf = add nuw nsw i64 %i.je, 73
  %i.jg = lshr i64 %i.jf, 6
  %i.jh = add nuw nsw i64 %i.jg, 2
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.sroa.033.0 = phi i64 [ %i.jh, %bb.ap ], [ 0, %bb.ao ]
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 327
  %i.jj = load i8, ptr %i.ji, align 1, !range !22, !noundef !3
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val52 = load i64, ptr %i.jk, align 8, !noundef !3 ; 4 uses
  %.not.i.not = icmp eq i64 %.val52, 0
  br i1 %.not.i.not, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jl = icmp sgt i64 %.val52, -1
  tail call void @llvm.assume(i1 %i.jl)
  %i.jm = or i64 %.val52, 1
  %i.jn = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.jm, i1 true)
  %i.jo = xor i64 %i.jn, 63
  %i.jp = mul nuw nsw i64 %i.jo, 9
  %i.jq = add nuw nsw i64 %i.jp, 73
  %i.jr = lshr i64 %i.jq, 6
  %i.js = add nuw i64 %.val52, 2
  %i.jt = add nuw i64 %i.js, %i.jr
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %.sroa.035.0 = phi i64 [ %i.jt, %bb.ar ], [ 0, %bb.aq ]
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val = load i64, ptr %i.ju, align 8, !noundef !3 ; 4 uses
  %.not.i92.not = icmp eq i64 %.val, 0
  br i1 %.not.i92.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jv = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.jv)
  %i.jw = or i64 %.val, 1
  %i.jx = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.jw, i1 true)
  %i.jy = xor i64 %i.jx, 63
  %i.jz = mul nuw nsw i64 %i.jy, 9
  %i.ka = add nuw nsw i64 %i.jz, 73
  %i.kb = lshr i64 %i.ka, 6
  %i.kc = add nuw i64 %.val, 2
  %i.kd = add nuw i64 %i.kc, %i.kb
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %.sroa.036.0 = phi i64 [ %i.kd, %bb.at ], [ 0, %bb.as ]
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.kf = load i64, ptr %i.ke, align 8, !noundef !3 ; 4 uses
  %.not = icmp eq i64 %i.kf, 0
  br i1 %.not, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kg = or i64 %i.kf, 1
  %i.kh = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.kg, i1 true)
  %i.ki = xor i64 %i.kh, 63
  %i.kj = mul nuw nsw i64 %i.ki, 9
  %i.kk = add nuw nsw i64 %i.kj, 73
  %i.kl = lshr i64 %i.kk, 6
  %i.km = icmp sgt i64 %i.kf, -1
  tail call void @llvm.assume(i1 %i.km)
  %i.kn = add nuw i64 %i.kf, 2
  %i.ko = add nuw i64 %i.kn, %i.kl
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %.sroa.037.0 = phi i64 [ %i.ko, %bb.av ], [ 0, %bb.au ]
  %i.kp = shufflevector <6 x float> %i.iw, <6 x float> poison, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  %2 = trunc <4 x i8> %1 to <4 x i1>
  %3 = shufflevector <4 x i1> %2, <4 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison>
  %i.kq = trunc nuw i8 %i.fh to i1
  %4 = insertelement <8 x i1> %3, i1 %i.kq, i64 0
  %i.kr = trunc nuw i8 %i.ft to i1
  %i.ks = insertelement <8 x i1> %4, i1 %i.kr, i64 1
  %5 = trunc nuw i8 %i.iu to i1
  %i.kt = insertelement <8 x i1> %i.ks, i1 %5, i64 6
  %6 = trunc nuw i8 %i.jj to i1
  %i.ku = insertelement <8 x i1> %i.kt, i1 %6, i64 7
  %7 = shufflevector <4 x float> %i.cl, <4 x float> %i.kp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = fcmp une <8 x float> %7, zeroinitializer
  %i.kv = shufflevector <8 x i1> %8, <8 x i1> %i.ku, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kw = select <16 x i1> %i.kv, <16 x i64> <i64 5, i64 5, i64 5, i64 5, i64 6, i64 6, i64 6, i64 6, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3>, <16 x i64> zeroinitializer
  %i.kx = fcmp une float %i.cj, 0.000000e+00
  %. = select i1 %i.kx, i64 5, i64 0
  %i.ky = tail call i64 @llvm.vector.reduce.add.v16i64(<16 x i64> %i.kw)
  %op.rdx = add nuw nsw i64 %i.ky, %.
  %op.rdx120 = add i64 %.sroa.037.0, %.sroa.036.0
  %op.rdx121 = add i64 %.sroa.035.0, %.sroa.033.0
  %op.rdx122 = add nsw i64 %.sroa.027.0, %.sroa.026.0
  %op.rdx123 = add nsw i64 %.sroa.025.0, %.sroa.024.0
  %op.rdx124 = add nsw i64 %.sroa.023.0, %.sroa.022.0
  %op.rdx125 = add nsw i64 %.sroa.021.0, %.sroa.015.0
  %op.rdx126 = add nsw i64 %.sroa.013.0, %.sroa.012.0
  %op.rdx127 = add nsw i64 %.sroa.011.0, %.sroa.010.0
  %op.rdx128 = add nuw nsw i64 %.sroa.09.0, %.sroa.08.0
  %op.rdx129 = add nuw nsw i64 %.sroa.07.0, %.sroa.01.0
  %op.rdx130 = add i64 %.sroa.0.0, %.sroa.0.0.i82
  %op.rdx131 = add i64 %.sroa.0.0.i80, %.sroa.0.0.i78
  %op.rdx132 = add i64 %.sroa.0.0.i76, %.sroa.0.0.i
  %op.rdx133 = add i64 %op.rdx, %op.rdx120
  %op.rdx134 = add i64 %op.rdx121, %op.rdx122
  %op.rdx135 = add nsw i64 %op.rdx123, %op.rdx124
  %op.rdx136 = add nsw i64 %op.rdx125, %op.rdx126
  %op.rdx137 = add nsw i64 %op.rdx127, %op.rdx128
  %op.rdx138 = add i64 %op.rdx129, %op.rdx130
  %op.rdx139 = add i64 %op.rdx131, %op.rdx132
  %op.rdx140 = add i64 %op.rdx133, %op.rdx134
  %op.rdx141 = add nsw i64 %op.rdx135, %op.rdx136
  %op.rdx142 = add i64 %op.rdx137, %op.rdx138
  %op.rdx143 = add i64 %op.rdx139, %.sroa.0.0.i74
  %op.rdx144 = add i64 %op.rdx140, %op.rdx141
  %op.rdx145 = add i64 %op.rdx142, %op.rdx143
  %op.rdx146 = add i64 %op.rdx144, %op.rdx145
  ret i64 %op.rdx146
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN88_$LT$anki_proto..deck_config..deck_config..Config$u20$as$u20$prost..message..Message$GT$11merge_field17h61a871705fc5ef29E"(ptr noalias noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %1, i8 noundef range(i8 0, 6) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef range(i32 98, 101) %4) unnamed_addr #1 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 9, label %bb.i
    i32 10, label %bb.j
    i32 11, label %bb.k
    i32 12, label %bb.l
    i32 13, label %bb.m
    i32 14, label %bb.n
    i32 15, label %bb.o
    i32 16, label %bb.p
    i32 17, label %bb.q
    i32 18, label %bb.r
    i32 19, label %bb.s
    i32 20, label %bb.t
    i32 21, label %bb.u
    i32 22, label %bb.v
    i32 23, label %bb.w
    i32 24, label %bb.x
    i32 25, label %bb.y
    i32 26, label %bb.z
    i32 27, label %bb.aa
    i32 28, label %bb.ab
    i32 29, label %bb.ac
    i32 30, label %bb.ad
    i32 31, label %bb.ae
    i32 32, label %bb.af
    i32 33, label %bb.ag
    i32 34, label %bb.ah
    i32 35, label %bb.ai
    i32 36, label %bb.aj
    i32 37, label %bb.ak
    i32 38, label %bb.al
    i32 40, label %bb.am
    i32 41, label %bb.an
    i32 42, label %bb.ao
    i32 43, label %bb.ap
    i32 44, label %bb.aq
    i32 45, label %bb.ar
    i32 46, label %bb.as
    i32 255, label %bb.at
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef align 8 ptr @_ZN5prost8encoding10skip_field17h8f54248659b417e9E(i8 noundef %2, i32 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4)
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef align 8 ptr @_ZN5prost8encoding5float14merge_repeated17h148a3ae3039dd60dE(i8 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not131 = icmp eq ptr %i.b, null
  br i1 %.not131, label %bb.av, label %bb.au

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = tail call noundef align 8 ptr @_ZN5prost8encoding5float14merge_repeated17h148a3ae3039dd60dE(i8 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not130 = icmp eq ptr %i.d, null
  br i1 %.not130, label %bb.av, label %bb.aw

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = tail call noundef align 8 ptr @_ZN5prost8encoding5float14merge_repeated17h148a3ae3039dd60dE(i8 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not129 = icmp eq ptr %i.f, null
  br i1 %.not129, label %bb.av, label %bb.ax

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = tail call noundef align 8 ptr @_ZN5prost8encoding5float14merge_repeated17h148a3ae3039dd60dE(i8 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not128 = icmp eq ptr %i.h, null
  br i1 %.not128, label %bb.av, label %bb.ay

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = tail call noundef align 8 ptr @_ZN5prost8encoding5float14merge_repeated17h148a3ae3039dd60dE(i8 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not127 = icmp eq ptr %i.j, null
  br i1 %.not127, label %bb.av, label %bb.az

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = tail call noundef align 8 ptr @_ZN5prost8encoding5float14merge_repeated17h148a3ae3039dd60dE(i8 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not126 = icmp eq ptr %i.l, null
  br i1 %.not126, label %bb.av, label %bb.ba

bb.i:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.n = tail call noundef align 8 ptr @_ZN5prost8encoding6uint325merge17hd867520c83f69c81E(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not125 = icmp eq ptr %i.n, null
  br i1 %.not125, label %bb.av, label %bb.bb

bb.j:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.p = tail call noundef align 8 ptr @_ZN5prost8encoding6uint325merge17hd867520c83f69c81E(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not124 = icmp eq ptr %i.p, null
  br i1 %.not124, label %bb.av, label %bb.bc

bb.k:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.r = tail call noundef align 8 ptr @_ZN5prost8encoding5float5merge17h1ddb2fd181628b3cE(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not123 = icmp eq ptr %i.r, null
  br i1 %.not123, label %bb.av, label %bb.bd

bb.l:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.t = tail call noundef align 8 ptr @_ZN5prost8encoding5float5merge17h1ddb2fd181628b3cE(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not122 = icmp eq ptr %i.t, null
  br i1 %.not122, label %bb.av, label %bb.be

bb.m:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.v = tail call noundef align 8 ptr @_ZN5prost8encoding5float5merge17h1ddb2fd181628b3cE(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not121 = icmp eq ptr %i.v, null
  br i1 %.not121, label %bb.av, label %bb.bf

bb.n:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.x = tail call noundef align 8 ptr @_ZN5prost8encoding5float5merge17h1ddb2fd181628b3cE(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not120 = icmp eq ptr %i.x, null
  br i1 %.not120, label %bb.av, label %bb.bg

bb.o:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.z = tail call noundef align 8 ptr @_ZN5prost8encoding5float5merge17h1ddb2fd181628b3cE(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not119 = icmp eq ptr %i.z, null
  br i1 %.not119, label %bb.av, label %bb.bh

bb.p:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ab = tail call noundef align 8 ptr @_ZN5prost8encoding6uint325merge17hd867520c83f69c81E(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not118 = icmp eq ptr %i.ab, null
  br i1 %.not118, label %bb.av, label %bb.bi

bb.q:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ad = tail call noundef align 8 ptr @_ZN5prost8encoding6uint325merge17hd867520c83f69c81E(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not117 = icmp eq ptr %i.ad, null
  br i1 %.not117, label %bb.av, label %bb.bj

bb.r:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.af = tail call noundef align 8 ptr @_ZN5prost8encoding6uint325merge17hd867520c83f69c81E(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not116 = icmp eq ptr %i.af, null
  br i1 %.not116, label %bb.av, label %bb.bk

bb.s:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ah = tail call noundef align 8 ptr @_ZN5prost8encoding6uint325merge17hd867520c83f69c81E(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not115 = icmp eq ptr %i.ah, null
  br i1 %.not115, label %bb.av, label %bb.bl

bb.t:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aj = tail call noundef align 8 ptr @_ZN5prost8encoding5int325merge17h65dd780af1c95fe6E(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not114 = icmp eq ptr %i.aj, null
  br i1 %.not114, label %bb.av, label %bb.bm

bb.u:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.al = tail call noundef align 8 ptr @_ZN5prost8encoding5int325merge17h65dd780af1c95fe6E(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not113 = icmp eq ptr %i.al, null
end_hunk_0
