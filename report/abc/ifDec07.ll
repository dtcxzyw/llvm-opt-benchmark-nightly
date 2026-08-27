Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec07?download=true
inline.NumInlined: 75
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 30
begin_hunk_0_@If_Dec5Perform:.preheader.preheader
  %i.ek = xor <4 x i32> %broadcast.splat409, <i32 0, i32 1, i32 2, i32 3>
  %i.el = and <4 x i32> %i.ek, splat (i32 1)
  %i.em = icmp eq <4 x i32> %i.el, zeroinitializer
  %i.en = xor <4 x i32> %broadcast.splat413, <i32 0, i32 1, i32 2, i32 3>
  %i.eo = and <4 x i32> %i.en, splat (i32 1)
  %i.ep = icmp eq <4 x i32> %i.eo, zeroinitializer
  %i.eq = xor <4 x i32> %broadcast.splat417, <i32 0, i32 1, i32 2, i32 3>
  %i.er = and <4 x i32> %i.eq, splat (i32 1)
  %i.es = icmp eq <4 x i32> %i.er, zeroinitializer
  %i.et = xor <4 x i32> %broadcast.splat421, <i32 0, i32 1, i32 2, i32 3>
  %i.eu = and <4 x i32> %i.et, splat (i32 1)
  %i.ev = icmp eq <4 x i32> %i.eu, zeroinitializer
  %i.ew = xor <4 x i32> %broadcast.splat425, <i32 0, i32 1, i32 2, i32 3>
  %i.ex = and <4 x i32> %i.ew, splat (i32 1)
  %i.ey = icmp eq <4 x i32> %i.ex, zeroinitializer
  %i.ez = and <4 x i1> %i.ey, <i1 false, i1 false, i1 true, i1 true>
  %i.fa = select <4 x i1> %i.ez, <4 x i32> %broadcast.splat427, <4 x i32> zeroinitializer
  %.reass = or <4 x i32> %i.dl, %invariant.op
  br label %vector.ph

vector.ph:                                        ; preds = %.lr.ph, %vector.early.exit
  %.02596 = phi i32 [ %i.ct, %.lr.ph ], [ %i.vs, %vector.early.exit ] ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !tbaa !12
  %i.fb = icmp eq i32 %.02596, 1                  ; 2 uses
  %i.fc = zext i1 %i.fb to i32                    ; 2 uses
  %i.fd = lshr i32 3, %.02596                     ; 2 uses
  %i.fe = icmp eq i32 %.02596, 2                  ; 2 uses
  %i.ff = zext i1 %i.fe to i32                    ; 2 uses
  %i.fg = lshr i32 5, %.02596
  %i.fh = and i32 %i.fg, 1                        ; 2 uses
  %i.fi = lshr i32 6, %.02596
  %i.fj = and i32 %i.fi, 1                        ; 2 uses
  %i.fk = lshr i32 7, %.02596
  %i.fl = and i32 %i.fk, 1                        ; 2 uses
  %i.fm = icmp eq i32 %.02596, 3                  ; 2 uses
  %i.fn = zext i1 %i.fm to i32                    ; 2 uses
  %i.fo = lshr i32 9, %.02596
  %i.fp = and i32 %i.fo, 1                        ; 2 uses
  %i.fq = lshr i32 10, %.02596
  %i.fr = and i32 %i.fq, 1                        ; 2 uses
  %i.fs = lshr i32 11, %.02596
  %i.ft = and i32 %i.fs, 1                        ; 2 uses
  %i.fu = lshr i32 12, %.02596
  %i.fv = and i32 %i.fu, 1                        ; 2 uses
  %i.fw = lshr i32 13, %.02596
  %i.fx = and i32 %i.fw, 1                        ; 2 uses
  %broadcast.splatinsert368 = insertelement <4 x i32> poison, i32 %i.fx, i64 0
  %broadcast.splat369 = shufflevector <4 x i32> %broadcast.splatinsert368, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert366 = insertelement <4 x i32> poison, i32 %i.fv, i64 0
  %broadcast.splat367 = shufflevector <4 x i32> %broadcast.splatinsert366, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert364 = insertelement <4 x i32> poison, i32 %i.ft, i64 0
  %broadcast.splat365 = shufflevector <4 x i32> %broadcast.splatinsert364, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert362 = insertelement <4 x i32> poison, i32 %i.fr, i64 0
  %broadcast.splat363 = shufflevector <4 x i32> %broadcast.splatinsert362, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert360 = insertelement <4 x i32> poison, i32 %i.fp, i64 0
  %broadcast.splat361 = shufflevector <4 x i32> %broadcast.splatinsert360, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert358 = insertelement <4 x i32> poison, i32 %i.fn, i64 0
  %broadcast.splat359 = shufflevector <4 x i32> %broadcast.splatinsert358, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert356 = insertelement <4 x i32> poison, i32 %i.fl, i64 0
  %broadcast.splat357 = shufflevector <4 x i32> %broadcast.splatinsert356, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert354 = insertelement <4 x i32> poison, i32 %i.fj, i64 0
  %broadcast.splat355 = shufflevector <4 x i32> %broadcast.splatinsert354, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert352 = insertelement <4 x i32> poison, i32 %i.fh, i64 0
  %broadcast.splat353 = shufflevector <4 x i32> %broadcast.splatinsert352, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert350 = insertelement <4 x i32> poison, i32 %i.ff, i64 0
  %broadcast.splat351 = shufflevector <4 x i32> %broadcast.splatinsert350, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert348 = insertelement <4 x i32> poison, i32 %i.fd, i64 0
  %broadcast.splat349 = shufflevector <4 x i32> %broadcast.splatinsert348, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.fc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fy = icmp eq <4 x i32> %broadcast.splat, <i32 0, i32 0, i32 1, i32 1>
  %i.fz = and <4 x i1> %i.fy, %i.do
  %i.ga = select <4 x i1> %i.fz, <4 x i32> %broadcast.splat379, <4 x i32> zeroinitializer
  %i.gb = icmp eq <4 x i32> %broadcast.splat349, <i32 0, i32 0, i32 1, i32 1>
  %i.gc = select <4 x i1> %i.dr, <4 x i1> %i.gb, <4 x i1> zeroinitializer
  %i.gd = select <4 x i1> %i.gc, <4 x i32> %broadcast.splat383, <4 x i32> zeroinitializer
  %i.ge = icmp eq <4 x i32> %broadcast.splat351, <i32 0, i32 0, i32 1, i32 1>
  %i.gf = and <4 x i1> %i.ge, %i.du
  %i.gg = select <4 x i1> %i.gf, <4 x i32> %broadcast.splat387, <4 x i32> zeroinitializer
  %i.gh = icmp eq <4 x i32> %broadcast.splat353, <i32 0, i32 0, i32 1, i32 1>
  %i.gi = select <4 x i1> %i.dx, <4 x i1> %i.gh, <4 x i1> zeroinitializer
  %i.gj = select <4 x i1> %i.gi, <4 x i32> %broadcast.splat391, <4 x i32> zeroinitializer
  %i.gk = icmp eq <4 x i32> %broadcast.splat355, <i32 0, i32 0, i32 1, i32 1>
  %i.gl = select <4 x i1> %i.ea, <4 x i1> %i.gk, <4 x i1> zeroinitializer
  %i.gm = select <4 x i1> %i.gl, <4 x i32> %broadcast.splat395, <4 x i32> zeroinitializer
  %i.gn = icmp eq <4 x i32> %broadcast.splat357, <i32 0, i32 0, i32 1, i32 1>
  %i.go = select <4 x i1> %i.ed, <4 x i1> %i.gn, <4 x i1> zeroinitializer
  %i.gp = select <4 x i1> %i.go, <4 x i32> %broadcast.splat399, <4 x i32> zeroinitializer
  %i.gq = icmp eq <4 x i32> %broadcast.splat359, <i32 0, i32 0, i32 1, i32 1>
  %i.gr = and <4 x i1> %i.gq, %i.eg
  %i.gs = select <4 x i1> %i.gr, <4 x i32> %broadcast.splat403, <4 x i32> zeroinitializer
  %i.gt = icmp eq <4 x i32> %broadcast.splat361, <i32 0, i32 0, i32 1, i32 1>
  %i.gu = select <4 x i1> %i.ej, <4 x i1> %i.gt, <4 x i1> zeroinitializer
  %i.gv = select <4 x i1> %i.gu, <4 x i32> %broadcast.splat407, <4 x i32> zeroinitializer
  %i.gw = icmp eq <4 x i32> %broadcast.splat363, <i32 0, i32 0, i32 1, i32 1>
  %i.gx = select <4 x i1> %i.em, <4 x i1> %i.gw, <4 x i1> zeroinitializer
  %i.gy = select <4 x i1> %i.gx, <4 x i32> %broadcast.splat411, <4 x i32> zeroinitializer
  %i.gz = icmp eq <4 x i32> %broadcast.splat365, <i32 0, i32 0, i32 1, i32 1>
  %i.ha = select <4 x i1> %i.ep, <4 x i1> %i.gz, <4 x i1> zeroinitializer
  %i.hb = select <4 x i1> %i.ha, <4 x i32> %broadcast.splat415, <4 x i32> zeroinitializer
  %i.hc = icmp eq <4 x i32> %broadcast.splat367, <i32 0, i32 0, i32 1, i32 1>
  %i.hd = select <4 x i1> %i.es, <4 x i1> %i.hc, <4 x i1> zeroinitializer
  %i.he = select <4 x i1> %i.hd, <4 x i32> %broadcast.splat419, <4 x i32> zeroinitializer
  %i.hf = icmp eq <4 x i32> %broadcast.splat369, <i32 0, i32 0, i32 1, i32 1>
  %i.hg = select <4 x i1> %i.ev, <4 x i1> %i.hf, <4 x i1> zeroinitializer
  %i.hh = select <4 x i1> %i.hg, <4 x i32> %broadcast.splat423, <4 x i32> zeroinitializer
  %i.hi = or <4 x i32> %.reass, %i.ga
  %i.hj = or <4 x i32> %i.hi, %i.gd
  %i.hk = or <4 x i32> %i.hj, %i.gg
  %i.hl = or <4 x i32> %i.hk, %i.gj
  %i.hm = or <4 x i32> %i.hl, %i.gm
  %i.hn = or <4 x i32> %i.hm, %i.gp
  %i.ho = or <4 x i32> %i.hn, %i.gs
  %i.hp = or <4 x i32> %i.ho, %i.gv
  %i.hq = or <4 x i32> %i.hp, %i.gy
  %i.hr = or <4 x i32> %i.hq, %i.hb
  %i.hs = or <4 x i32> %i.hr, %i.he
  %i.ht = or <4 x i32> %i.hs, %i.hh
  %i.hu = or <4 x i32> %i.ht, %i.fa
  %.fr430 = freeze <4 x i32> %i.hu
  %i.hv = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %.fr430)
  %i.hw = icmp samesign ugt <4 x i32> %i.hv, splat (i32 2)
  %i.hx = bitcast <4 x i1> %i.hw to i4
  %.not = icmp eq i4 %i.hx, 0
  br i1 %.not, label %middle.block, label %vector.early.exit

middle.block:                                     ; preds = %vector.ph
  %.not.i31 = icmp eq i32 %1, 0
  br i1 %.not.i31, label %If_Dec5CofCount2.exit.thread, label %bb.b

bb.b:                                             ; preds = %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  br i1 %i.cv, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  br i1 %i.fb, label %._crit_edge.thread.i.thread, label %._crit_edge.thread.i

._crit_edge.i:                                    ; preds = %bb.b
  %.not187.i = icmp eq i32 %.197, 1
  br i1 %.not187.i, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.c
  %.0172276.i = phi i32 [ 0, %._crit_edge.i ], [ 1, %bb.c ] ; 2 uses
  br i1 %i.fe, label %._crit_edge.thread.i.thread, label %bb.d

._crit_edge.thread.i.thread:                      ; preds = %bb.c, %._crit_edge.thread.i
  %.0172276.i42 = phi i32 [ %.0172276.i, %._crit_edge.thread.i ], [ 2, %bb.c ]
  %spec.select324.i = select i1 %i.fm, i32 -1, i32 3
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.thread, %._crit_edge.thread.i, %._crit_edge.i
  %.0172275.i = phi i32 [ %.0172276.i42, %._crit_edge.thread.i.thread ], [ 0, %._crit_edge.i ], [ %.0172276.i, %._crit_edge.thread.i ] ; 5 uses
  %.0.i = phi i32 [ %spec.select324.i, %._crit_edge.thread.i.thread ], [ 1, %._crit_edge.i ], [ 2, %._crit_edge.thread.i ] ; 5 uses
  %i.hy = insertelement <8 x i32> poison, i32 %i.db, i64 0
  %i.hz = insertelement <8 x i32> %i.hy, i32 %i.dc, i64 1
  %i.ia = insertelement <8 x i32> %i.hz, i32 %i.dd, i64 2
  %i.ib = insertelement <8 x i32> %i.ia, i32 %i.de, i64 3
  %i.ic = insertelement <8 x i32> %i.ib, i32 %i.df, i64 4
  %i.id = insertelement <8 x i32> %i.ic, i32 %i.dg, i64 5
  %i.ie = insertelement <8 x i32> %i.id, i32 %i.dh, i64 6
  %i.if = insertelement <8 x i32> %i.ie, i32 %i.di, i64 7
  %i.ig = insertelement <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1>, i32 %i.fl, i64 0
  %i.ih = insertelement <8 x i32> %i.ig, i32 %i.fn, i64 1
  %i.ii = insertelement <8 x i32> %i.ih, i32 %i.fp, i64 2
  %i.ij = insertelement <8 x i32> %i.ii, i32 %i.fr, i64 3
  %i.ik = insertelement <8 x i32> %i.ij, i32 %i.ft, i64 4
  %i.il = insertelement <8 x i32> %i.ik, i32 %i.fv, i64 5
  %i.im = insertelement <8 x i32> %i.il, i32 %i.fx, i64 6
  %i.in = insertelement <4 x i32> poison, i32 %i.cx, i64 0
  %i.io = insertelement <4 x i32> %i.in, i32 %i.cy, i64 1
  %i.ip = insertelement <4 x i32> %i.io, i32 %i.cz, i64 2
  %i.iq = insertelement <4 x i32> %i.ip, i32 %i.da, i64 3
  %i.ir = insertelement <4 x i32> poison, i32 %i.fd, i64 0
  %i.is = insertelement <4 x i32> %i.ir, i32 %i.ff, i64 1
  %i.it = insertelement <4 x i32> %i.is, i32 %i.fh, i64 2
  %i.iu = insertelement <4 x i32> %i.it, i32 %i.fj, i64 3
  %i.iv = insertelement <16 x i32> <i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, i32 %i.ay, i64 0
  %i.iw = insertelement <16 x i32> %i.iv, i32 %i.cq, i64 2
  %i.ix = insertelement <16 x i32> %i.iw, i32 %i.be, i64 3
  %i.iy = insertelement <16 x i32> %i.ix, i32 %i.bh, i64 4
  %i.iz = insertelement <16 x i32> %i.iy, i32 %i.bk, i64 5
  %i.ja = insertelement <16 x i32> %i.iz, i32 %i.bn, i64 6
  %i.jb = insertelement <16 x i32> %i.ja, i32 %i.bq, i64 7
  %i.jc = insertelement <16 x i32> %i.jb, i32 %i.bt, i64 8
  %i.jd = insertelement <16 x i32> %i.jc, i32 %i.bw, i64 9
  %i.je = insertelement <16 x i32> %i.jd, i32 %i.bz, i64 10
  %i.jf = insertelement <16 x i32> %i.je, i32 %i.cc, i64 11
  %i.jg = insertelement <16 x i32> %i.jf, i32 %i.cf, i64 12
  %i.jh = insertelement <16 x i32> %i.jg, i32 %i.ci, i64 13
  %i.ji = insertelement <16 x i32> %i.jh, i32 %i.cl, i64 14
  %i.jj = insertelement <16 x i32> %i.ji, i32 %i.co, i64 15
  %i.jk = insertelement <16 x i32> <i32 0, i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.bb, i64 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit.i, %bb.d
  %indvars.iv258.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next259.i, %.loopexit.i ] ; 8 uses
  %i.jl = trunc nsw i64 %indvars.iv258.i to i32   ; 5 uses
  %i.jm = lshr i32 %i.jl, 1                       ; 6 uses
  %2 = and i32 %i.jl, 1
  %3 = or i32 %2, %i.jm
  %or.cond325.i.a = icmp eq i32 %3, 0
  %.tr.i = trunc i64 %indvars.iv258.i to i1       ; 2 uses
  %.narrow.i = xor i1 %i.cv, %.tr.i
  %i.jn = icmp ne i32 %i.jm, 0
  %or.cond326.not.i = select i1 %.narrow.i, i1 true, i1 %i.jn
  %i.jo = xor i32 %i.cw, %i.jl
  %i.jp = and i32 %i.jo, 1
  %i.jq = icmp eq i32 %i.jp, 0
  %i.jr = icmp eq i32 %i.jm, %i.fc
  %or.cond327.i = and i1 %i.jr, %i.jq
  %i.js = insertelement <4 x i32> poison, i32 %i.jl, i64 0 ; 2 uses
  %i.jt = shufflevector <4 x i32> %i.js, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ju = xor <4 x i32> %i.iq, %i.jt
  %i.jv = and <4 x i32> %i.ju, splat (i32 1)
  %i.jw = icmp eq <4 x i32> %i.jv, zeroinitializer
  %i.jx = insertelement <4 x i32> poison, i32 %i.jm, i64 0 ; 2 uses
  %i.jy = shufflevector <4 x i32> %i.jx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.jz = icmp eq <4 x i32> %i.iu, %i.jy
  %i.ka = select <4 x i1> %i.jw, <4 x i1> %i.jz, <4 x i1> zeroinitializer
  %i.kb = shufflevector <4 x i32> %i.js, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.kc = xor <8 x i32> %i.if, %i.kb
  %i.kd = and <8 x i32> %i.kc, splat (i32 1)
  %i.ke = icmp eq <8 x i32> %i.kd, zeroinitializer
  %i.kf = icmp eq i32 %i.jm, 1
  %i.kg = shufflevector <4 x i32> %i.jx, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.kh = icmp eq <8 x i32> %i.kg, %i.im
  %i.ki = select <8 x i1> %i.ke, <8 x i1> %i.kh, <8 x i1> zeroinitializer
  %or.cond340.i = select i1 %.tr.i, i1 %i.kf, i1 false
  %i.kj = insertelement <16 x i1> poison, i1 %or.cond325.i.a, i64 0
  %i.kk = insertelement <16 x i1> %i.kj, i1 %or.cond326.not.i, i64 1
  %i.kl = insertelement <16 x i1> %i.kk, i1 %or.cond340.i, i64 2
  %i.km = insertelement <16 x i1> %i.kl, i1 %or.cond327.i, i64 3
  %i.kn = shufflevector <8 x i1> %i.ki, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ko = shufflevector <16 x i1> %i.km, <16 x i1> %i.kn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.kp = shufflevector <4 x i1> %i.ka, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kq = shufflevector <16 x i1> %i.ko, <16 x i1> %i.kp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kr = select <16 x i1> %i.kq, <16 x i32> %i.jj, <16 x i32> %i.jk
  %i.ks = tail call i32 @llvm.vector.reduce.or.v16i32(<16 x i32> %i.kr) ; 7 uses
  %i.kt = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ks)
  switch i32 %i.kt, label %.loopexit.i [
    i32 1, label %bb.e
    i32 2, label %bb.g
  ]

bb.e:                                             ; preds = %.preheader.i
  %i.ku = icmp eq i32 %i.ks, 0
  br i1 %i.ku, label %Abc_Tt6FirstBit.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.kv = zext nneg i32 %i.ks to i64              ; 3 uses
  %i.kw = and i64 %i.kv, 3
  %i.kx = icmp eq i64 %i.kw, 0                    ; 2 uses
  %i.ky = lshr exact i64 %i.kv, 2
  %.424.i.i = select i1 %i.kx, i64 %i.ky, i64 %i.kv
  %.4.i.i = select i1 %i.kx, i64 2, i64 0
  %i.kz = and i64 %.424.i.i, 1
  %i.la = or disjoint i64 %i.kz, %.4.i.i
  %sext239.i = xor i64 %i.la, 1
  br label %Abc_Tt6FirstBit.exit.i

Abc_Tt6FirstBit.exit.i:                           ; preds = %bb.f, %bb.e
  %.025.i.i = phi i64 [ %sext239.i, %bb.f ], [ -1, %bb.e ]
  %i.lb = getelementptr inbounds [8 x i8], ptr @__const.If_Dec5CofCount2.F, i64 %.025.i.i
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !12
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv258.i
  store i64 %i.lc, ptr %i.ld, align 8, !tbaa !12
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv258.i
  store i64 -1, ptr %i.le, align 8, !tbaa !12
  br label %.loopexit.i

bb.g:                                             ; preds = %.preheader.i
  %i.lf = zext nneg i32 %i.ks to i64              ; 3 uses
  %i.lg = icmp eq i32 %i.ks, 0
  br i1 %i.lg, label %Abc_Tt6FirstBit.exit221.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.lh = and i64 %i.lf, 3
  %i.li = icmp eq i64 %i.lh, 0                    ; 2 uses
  %i.lj = lshr exact i32 %i.ks, 2
  %.4.i218.i = select i1 %i.li, i32 2, i32 0
  %i.lk = select i1 %i.li, i32 %i.lj, i32 %i.ks
  %i.ll = and i32 %i.lk, 1
  %i.lm = or disjoint i32 %i.ll, %.4.i218.i
  %.5.i219.i = xor i32 %i.lm, 1
  br label %Abc_Tt6FirstBit.exit221.i

Abc_Tt6FirstBit.exit221.i:                        ; preds = %bb.h, %bb.g
  %.025.i220.i = phi i32 [ %.5.i219.i, %bb.h ], [ -1, %bb.g ] ; 2 uses
  %i.ln = zext nneg i32 %.025.i220.i to i64
  %i.lo = shl nuw i64 1, %i.ln                    ; 3 uses
  %i.lp = icmp eq i64 %i.lo, %i.lf
  br i1 %i.lp, label %Abc_Tt6FirstBit.exit234.i, label %bb.i

bb.i:                                             ; preds = %Abc_Tt6FirstBit.exit221.i
  %i.lq = xor i64 %i.lo, %i.lf                    ; 2 uses
  %i.lr = and i64 %i.lq, 4294967295
  %i.ls = icmp eq i64 %i.lr, 0                    ; 2 uses
  %i.lt = lshr i64 %i.lo, 32
  %spec.select.i222.i = select i1 %i.ls, i64 %i.lt, i64 %i.lq ; 3 uses
  %spec.select27.i223.i = select i1 %i.ls, i64 32, i64 0 ; 2 uses
  %i.lu = and i64 %spec.select.i222.i, 65535
  %i.lv = icmp eq i64 %i.lu, 0                    ; 2 uses
  %i.lw = or disjoint i64 %spec.select27.i223.i, 16
  %i.lx = lshr exact i64 %spec.select.i222.i, 16
  %.121.i224.i = select i1 %i.lv, i64 %i.lx, i64 %spec.select.i222.i ; 3 uses
  %.1.i225.i = select i1 %i.lv, i64 %i.lw, i64 %spec.select27.i223.i ; 2 uses
  %i.ly = and i64 %.121.i224.i, 255
  %i.lz = icmp eq i64 %i.ly, 0                    ; 2 uses
  %i.ma = or disjoint i64 %.1.i225.i, 8
  %i.mb = lshr exact i64 %.121.i224.i, 8
  %.222.i226.i = select i1 %i.lz, i64 %i.mb, i64 %.121.i224.i ; 3 uses
  %.2.i227.i = select i1 %i.lz, i64 %i.ma, i64 %.1.i225.i ; 2 uses
  %i.mc = and i64 %.222.i226.i, 15
  %i.md = icmp eq i64 %i.mc, 0                    ; 2 uses
  %i.me = or disjoint i64 %.2.i227.i, 4
  %i.mf = lshr exact i64 %.222.i226.i, 4
  %.323.i228.i = select i1 %i.md, i64 %i.mf, i64 %.222.i226.i ; 3 uses
  %.3.i229.i = select i1 %i.md, i64 %i.me, i64 %.2.i227.i ; 2 uses
  %i.mg = and i64 %.323.i228.i, 3
  %i.mh = icmp eq i64 %i.mg, 0                    ; 2 uses
  %i.mi = add nuw nsw i64 %.3.i229.i, 2
  %i.mj = lshr exact i64 %.323.i228.i, 2
  %.424.i230.i = select i1 %i.mh, i64 %i.mj, i64 %.323.i228.i
  %.4.i231.i = select i1 %i.mh, i64 %i.mi, i64 %.3.i229.i
  %i.mk = and i64 %.424.i230.i, 1
  %i.ml = xor i64 %i.mk, 1
  %.5.i232.i = add nuw nsw i64 %i.ml, %.4.i231.i
  br label %Abc_Tt6FirstBit.exit234.i

Abc_Tt6FirstBit.exit234.i:                        ; preds = %bb.i, %Abc_Tt6FirstBit.exit221.i
  %.025.i233.i = phi i64 [ %.5.i232.i, %bb.i ], [ -1, %Abc_Tt6FirstBit.exit221.i ] ; 2 uses
  %i.mm = getelementptr inbounds [8 x i8], ptr @__const.If_Dec5CofCount2.F, i64 %.025.i233.i
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !12
  %i.mo = and i64 %i.mn, -3689348814741910324
  %i.mp = sext i32 %.025.i220.i to i64
  %i.mq = getelementptr inbounds [8 x i8], ptr @__const.If_Dec5CofCount2.F, i64 %i.mp
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !12
  %i.ms = and i64 %i.mr, 3689348814741910323
  %i.mt = or disjoint i64 %i.ms, %i.mo
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv258.i
  store i64 %i.mt, ptr %i.mu, align 8, !tbaa !12
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv258.i ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %Abc_Tt6FirstBit.exit234.i
  %indvars.iv.i = phi i64 [ 0, %Abc_Tt6FirstBit.exit234.i ], [ %indvars.iv.next.i, %bb.n ] ; 3 uses
  %i.mw = trunc nuw nsw i64 %indvars.iv.i to i32  ; 4 uses
  %i.mx = lshr i32 %i.mw, %.197
  %i.my = xor i32 %i.mx, %i.jl
  %i.mz = and i32 %i.my, 1
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.nb = lshr i32 %i.mw, %.02596
  %i.nc = and i32 %i.nb, 1
  %i.nd = icmp eq i32 %i.nc, %i.jm
  br i1 %i.nd, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ne = shl nuw nsw i64 %indvars.iv.i, 1
  %i.nf = lshr i64 %.0.lcssa.i, %i.ne
  %i.ng = and i64 %i.nf, 3
  %i.nh = icmp eq i64 %i.ng, %.025.i233.i
  br i1 %i.nh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ni = lshr i32 %i.mw, %.0.i
  %i.nj = shl nuw nsw i32 %i.ni, 1
  %i.nk = and i32 %i.nj, 2
  %i.nl = lshr i32 %i.mw, %.0172275.i
  %i.nm = and i32 %i.nl, 1
  %i.nn = or disjoint i32 %i.nk, %i.nm
  %i.no = zext nneg i32 %i.nn to i64
  %i.np = shl nuw nsw i64 1, %i.no
  %i.nq = load i64, ptr %i.mv, align 8, !tbaa !12
  %i.nr = or i64 %i.nq, %i.np
  store i64 %i.nr, ptr %i.mv, align 8, !tbaa !12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond257.not.i = icmp eq i64 %indvars.iv.next.i, 16
  br i1 %exitcond257.not.i, label %.loopexit.i, label %bb.j, !llvm.loop !38

.loopexit.i:                                      ; preds = %bb.n, %Abc_Tt6FirstBit.exit.i, %.preheader.i
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv258.i ; 2 uses
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !12
  %i.nu = and i64 %i.nt, 15
  %i.nv = mul nuw i64 %i.nu, 1229782938247303441
  store i64 %i.nv, ptr %i.ns, align 8, !tbaa !12
  %indvars.iv.next259.i = add nuw nsw i64 %indvars.iv258.i, 1 ; 2 uses
  %exitcond261.not.i = icmp eq i64 %indvars.iv.next259.i, 4
  br i1 %exitcond261.not.i, label %bb.o, label %.preheader.i, !llvm.loop !39

bb.o:                                             ; preds = %.loopexit.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !12
  %i.ny = and i64 %i.nx, 67555025218437360        ; 2 uses
  %i.nz = load i64, ptr %i.b, align 16, !tbaa !12
  %i.oa = and i64 %i.nz, 4222189076152335         ; 2 uses
  %i.ob = or disjoint i64 %i.oa, %i.ny            ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !12
  %i.oe = and i64 %i.od, -1152657617789587456     ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.og = load i64, ptr %i.of, align 16, !tbaa !12
  %i.oh = and i64 %i.og, 1080880403494997760
  %i.oi = or disjoint i64 %i.oh, %i.oe            ; 2 uses
  %i.oj = or disjoint i64 %i.oi, %i.ob            ; 6 uses
  store i64 %i.oj, ptr %i.d, align 8, !tbaa !12
  %i.ok = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !12
  %i.om = and i64 %i.ol, 67555025218437360        ; 2 uses
  %i.on = load i64, ptr %i.c, align 16, !tbaa !12
  %i.oo = and i64 %i.on, 4222189076152335         ; 2 uses
  %i.op = or disjoint i64 %i.oo, %i.om            ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !12
  %i.os = and i64 %i.or, -1152657617789587456     ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ou = load i64, ptr %i.ot, align 16, !tbaa !12
  %i.ov = and i64 %i.ou, 1080880403494997760
  %i.ow = or disjoint i64 %i.ov, %i.os            ; 2 uses
  %i.ox = or disjoint i64 %i.ow, %i.op            ; 6 uses
  store i64 %i.ox, ptr %i.e, align 8, !tbaa !12
  %i.oy = lshr i64 %i.ox, 4                       ; 2 uses
  %i.oz = xor i64 %i.oy, %i.ox
  %i.pa = and i64 %i.oz, 1085102592571150095
end_hunk_0
