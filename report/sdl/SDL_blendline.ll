Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_blendline?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@SDL_BlendLine_ARGB8888:bb.a
  %i.co = shl nuw nsw <4 x i32> %i.cb, splat (i32 8)
  %i.cp = or disjoint <4 x i32> %i.cm, %i.cg
  %i.cq = or <4 x i32> %i.cp, %i.cn
  %i.cr = or <4 x i32> %i.cq, %i.co
  store <4 x i32> %i.cr, ptr %next.gep2283, align 4
  %index.next2285 = add nuw i64 %index2282, 4     ; 2 uses
  %i.cs = icmp eq i64 %index.next2285, %n.vec2270
  br i1 %i.cs, label %middle.block2286, label %vector.body2281, !llvm.loop !95

middle.block2286:                                 ; preds = %vector.body2281
  %cmp.n2287 = icmp eq i64 %i.bg, %n.vec2270
  br i1 %cmp.n2287, label %.loopexit, label %.lr.ph1896.preheader2304

.lr.ph1896.preheader2304:                         ; preds = %.lr.ph1896.preheader, %middle.block2286
  %.114101895.ph = phi i32 [ %i.bd, %.lr.ph1896.preheader ], [ %i.bi, %middle.block2286 ]
  %.214131894.ph = phi ptr [ %.11412, %.lr.ph1896.preheader ], [ %i.bk, %middle.block2286 ]
  %i.ct = shufflevector <2 x i32> %i.z, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cu = shufflevector <2 x i16> %i.y, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cv = zext <4 x i16> %i.cu to <4 x i32>
  %i.cw = shufflevector <4 x i32> %i.ct, <4 x i32> %i.cv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %.lr.ph1896

.lr.ph1896:                                       ; preds = %.lr.ph1896.preheader2304, %.lr.ph1896
  %.114101895 = phi i32 [ %i.cx, %.lr.ph1896 ], [ %.114101895.ph, %.lr.ph1896.preheader2304 ]
  %.214131894 = phi ptr [ %i.ds, %.lr.ph1896 ], [ %.214131894.ph, %.lr.ph1896.preheader2304 ] ; 3 uses
  %i.cx = add nsw i32 %.114101895, -1             ; 2 uses
  %i.cy = load i32, ptr %.214131894, align 4      ; 4 uses
  %i.cz = lshr i32 %i.cy, 24
  %i.da = lshr i32 %i.cy, 16
  %i.db = lshr i32 %i.cy, 8
  %i.dc = and i32 %i.da, 255
  %i.dd = and i32 %i.db, 255
  %i.de = and i32 %i.cy, 255
  %i.df = mul nuw nsw i32 %i.cz, %i.ae
  %i.dg = mul nuw nsw i32 %i.dc, %i.ae
  %i.dh = mul nuw nsw i32 %i.dd, %i.ae
  %i.di = mul nuw nsw i32 %i.de, %i.ae
  %.lhs.trunc1989 = trunc nuw i32 %i.df to i16
  %.lhs.trunc1983 = trunc nuw i32 %i.dg to i16
  %.lhs.trunc1985 = trunc nuw i32 %i.dh to i16
  %.lhs.trunc1987 = trunc nuw i32 %i.di to i16
  %i.dj = insertelement <4 x i16> poison, i16 %.lhs.trunc1989, i64 0
  %i.dk = insertelement <4 x i16> %i.dj, i16 %.lhs.trunc1983, i64 1
  %i.dl = insertelement <4 x i16> %i.dk, i16 %.lhs.trunc1985, i64 2
  %i.dm = insertelement <4 x i16> %i.dl, i16 %.lhs.trunc1987, i64 3
  %i.dn = udiv <4 x i16> %i.dm, splat (i16 255)
  %i.do = zext nneg <4 x i16> %i.dn to <4 x i32>
  %i.dp = add nuw nsw <4 x i32> %i.cw, %i.do
  %i.dq = shl <4 x i32> %i.dp, <i32 24, i32 16, i32 8, i32 0>
  %i.dr = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.dq)
  store i32 %i.dr, ptr %.214131894, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.214131894, i64 4
  %.not1744 = icmp eq i32 %i.cx, 0
  br i1 %.not1744, label %.loopexit, label %.lr.ph1896, !llvm.loop !96

bb.j:                                             ; preds = %.split
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = load i32, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 5
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = zext i8 %i.dy to i32
  %i.ea = sdiv i32 %i.du, %i.dz
  %.not1741 = icmp sgt i32 %1, %3
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = mul nsw i32 %i.ea, %2
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ee ; 2 uses
  br i1 %.not1741, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eg = sext i32 %1 to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = sub i32 %3, %1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ej = sext i32 %3 to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ej
  %spec.select1747.idx = select i1 %10, i64 0, i64 4
  %spec.select1747 = getelementptr inbounds nuw i8, ptr %i.ek, i64 %spec.select1747.idx
  %i.el = sub i32 %1, %3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink2143 = phi i32 [ %i.el, %bb.l ], [ %i.ei, %bb.k ] ; 2 uses
  %.11437 = phi ptr [ %spec.select1747, %bb.l ], [ %i.eh, %bb.k ] ; 3 uses
  %i.em = zext i1 %10 to i32
  %i.en = add nuw nsw i32 %.sink2143, %i.em       ; 3 uses
  %.not17421889 = icmp eq i32 %i.en, 0
  br i1 %.not17421889, label %.loopexit, label %.lr.ph1892.preheader

.lr.ph1892.preheader:                             ; preds = %bb.m
  %i.eo = zext i32 %.sink2143 to i64
  %i.ep = zext i1 %10 to i64
  %i.eq = add nuw nsw i64 %i.eo, %i.ep            ; 3 uses
  %min.iters.check2245 = icmp samesign ult i64 %i.eq, 4
  br i1 %min.iters.check2245, label %.lr.ph1892.preheader2306, label %vector.ph2246

vector.ph2246:                                    ; preds = %.lr.ph1892.preheader
  %n.vec2247 = and i64 %i.eq, 8589934588          ; 4 uses
  %i.er = trunc i64 %n.vec2247 to i32
  %i.es = sub i32 %i.en, %i.er
  %i.et = shl nuw nsw i64 %n.vec2247, 2
  %i.eu = getelementptr i8, ptr %.11437, i64 %i.et
  %broadcast.splatinsert2248 = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat2249 = shufflevector <4 x i32> %broadcast.splatinsert2248, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2250 = insertelement <4 x i32> poison, i32 %.0, i64 0
  %broadcast.splat2251 = shufflevector <4 x i32> %broadcast.splatinsert2250, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat2253 = shufflevector <2 x i32> %i.ab, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat2255 = shufflevector <2 x i32> %i.ab, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert2256 = insertelement <4 x i32> poison, i32 %.01390, i64 0
  %broadcast.splat2257 = shufflevector <4 x i32> %broadcast.splatinsert2256, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body2258

vector.body2258:                                  ; preds = %vector.body2258, %vector.ph2246
  %index2259 = phi i64 [ 0, %vector.ph2246 ], [ %index.next2262, %vector.body2258 ] ; 2 uses
  %i.ev = shl i64 %index2259, 2
  %next.gep2260 = getelementptr i8, ptr %.11437, i64 %i.ev ; 2 uses
  %wide.load2261 = load <4 x i32>, ptr %next.gep2260, align 4 ; 4 uses
  %i.ew = lshr <4 x i32> %wide.load2261, splat (i32 16)
  %i.ex = and <4 x i32> %i.ew, splat (i32 255)
  %i.ey = lshr <4 x i32> %wide.load2261, splat (i32 8)
  %i.ez = and <4 x i32> %i.ey, splat (i32 255)
  %i.fa = and <4 x i32> %wide.load2261, splat (i32 255)
  %i.fb = lshr <4 x i32> %wide.load2261, splat (i32 24)
  %i.fc = mul nuw nsw <4 x i32> %i.ex, %broadcast.splat2249
  %i.fd = trunc nuw <4 x i32> %i.fc to <4 x i16>
  %i.fe = udiv <4 x i16> %i.fd, splat (i16 255)
  %i.ff = zext nneg <4 x i16> %i.fe to <4 x i32>
  %i.fg = add nuw nsw <4 x i32> %broadcast.splat2251, %i.ff
  %i.fh = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fg, <4 x i32> splat (i32 255))
  %i.fi = mul nuw nsw <4 x i32> %i.ez, %broadcast.splat2249
  %i.fj = trunc nuw <4 x i32> %i.fi to <4 x i16>
  %i.fk = udiv <4 x i16> %i.fj, splat (i16 255)
  %i.fl = zext nneg <4 x i16> %i.fk to <4 x i32>
  %i.fm = add nuw nsw <4 x i32> %broadcast.splat2253, %i.fl
  %i.fn = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fm, <4 x i32> splat (i32 255))
  %i.fo = mul nuw nsw <4 x i32> %i.fa, %broadcast.splat2249
  %i.fp = trunc nuw <4 x i32> %i.fo to <4 x i16>
  %i.fq = udiv <4 x i16> %i.fp, splat (i16 255)
  %i.fr = zext nneg <4 x i16> %i.fq to <4 x i32>
  %i.fs = add nuw nsw <4 x i32> %broadcast.splat2255, %i.fr
  %i.ft = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fs, <4 x i32> splat (i32 255))
  %i.fu = mul nuw nsw <4 x i32> %i.fb, %broadcast.splat2249
  %i.fv = trunc nuw <4 x i32> %i.fu to <4 x i16>
  %i.fw = udiv <4 x i16> %i.fv, splat (i16 255)
  %i.fx = zext nneg <4 x i16> %i.fw to <4 x i32>
  %i.fy = add nuw nsw <4 x i32> %broadcast.splat2257, %i.fx
  %i.fz = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fy, <4 x i32> splat (i32 255))
  %i.ga = shl nuw <4 x i32> %i.fz, splat (i32 24)
  %i.gb = shl nuw nsw <4 x i32> %i.fh, splat (i32 16)
  %i.gc = or disjoint <4 x i32> %i.gb, %i.ga
  %i.gd = shl nuw nsw <4 x i32> %i.fn, splat (i32 8)
  %i.ge = or disjoint <4 x i32> %i.gc, %i.gd
  %i.gf = or disjoint <4 x i32> %i.ge, %i.ft
  store <4 x i32> %i.gf, ptr %next.gep2260, align 4
  %index.next2262 = add nuw i64 %index2259, 4     ; 2 uses
  %i.gg = icmp eq i64 %index.next2262, %n.vec2247
  br i1 %i.gg, label %middle.block2263, label %vector.body2258, !llvm.loop !97

middle.block2263:                                 ; preds = %vector.body2258
  %cmp.n2264 = icmp eq i64 %i.eq, %n.vec2247
  br i1 %cmp.n2264, label %.loopexit, label %.lr.ph1892.preheader2306

.lr.ph1892.preheader2306:                         ; preds = %.lr.ph1892.preheader, %middle.block2263
  %.114151891.ph = phi i32 [ %i.en, %.lr.ph1892.preheader ], [ %i.es, %middle.block2263 ]
  %.214381890.ph = phi ptr [ %.11437, %.lr.ph1892.preheader ], [ %i.eu, %middle.block2263 ]
  %i.gh = shufflevector <2 x i32> %i.ab, <2 x i32> %i.aa, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  br label %.lr.ph1892

.lr.ph1892:                                       ; preds = %.lr.ph1892.preheader2306, %.lr.ph1892
  %.114151891 = phi i32 [ %i.gi, %.lr.ph1892 ], [ %.114151891.ph, %.lr.ph1892.preheader2306 ]
  %.214381890 = phi ptr [ %i.hc, %.lr.ph1892 ], [ %.214381890.ph, %.lr.ph1892.preheader2306 ] ; 3 uses
  %i.gi = add nsw i32 %.114151891, -1             ; 2 uses
  %i.gj = load i32, ptr %.214381890, align 4      ; 4 uses
  %i.gk = lshr i32 %i.gj, 24
  %i.gl = lshr i32 %i.gj, 16
  %i.gm = lshr i32 %i.gj, 8
  %i.gn = and i32 %i.gl, 255
  %i.go = and i32 %i.gm, 255
  %i.gp = and i32 %i.gj, 255
  %i.gq = mul nuw nsw i32 %i.gk, %i.ae
  %i.gr = mul nuw nsw i32 %i.gn, %i.ae
  %i.gs = mul nuw nsw i32 %i.go, %i.ae
  %i.gt = mul nuw nsw i32 %i.gp, %i.ae
  %.lhs.trunc1997 = trunc nuw i32 %i.gq to i16
  %.lhs.trunc1991 = trunc nuw i32 %i.gr to i16
  %.lhs.trunc1993 = trunc nuw i32 %i.gs to i16
  %.lhs.trunc1995 = trunc nuw i32 %i.gt to i16
  %i.gu = insertelement <4 x i16> poison, i16 %.lhs.trunc1995, i64 0
  %i.gv = insertelement <4 x i16> %i.gu, i16 %.lhs.trunc1993, i64 1
  %i.gw = insertelement <4 x i16> %i.gv, i16 %.lhs.trunc1991, i64 2
  %i.gx = insertelement <4 x i16> %i.gw, i16 %.lhs.trunc1997, i64 3
  %i.gy = udiv <4 x i16> %i.gx, splat (i16 255)
  %i.gz = zext nneg <4 x i16> %i.gy to <4 x i32>
  %i.ha = add nuw nsw <4 x i32> %i.gh, %i.gz
  %i.hb = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ha, <4 x i32> splat (i32 255))
  %11 = trunc nuw <4 x i32> %i.hb to <4 x i8>
  store <4 x i8> %11, ptr %.214381890, align 4
  %i.hc = getelementptr inbounds nuw i8, ptr %.214381890, i64 4
  %.not1742 = icmp eq i32 %i.gi, 0
  br i1 %.not1742, label %.loopexit, label %.lr.ph1892, !llvm.loop !98

bb.n:                                             ; preds = %.split, %.split
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.he = load i32, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 5
  %i.hi = load i8, ptr %i.hh, align 1
  %i.hj = zext i8 %i.hi to i32
  %i.hk = sdiv i32 %i.he, %i.hj
  %.not1739 = icmp sgt i32 %1, %3
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = mul nsw i32 %i.hk, %2
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.ho ; 2 uses
  br i1 %.not1739, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hq = sext i32 %1 to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hq
  %i.hs = sub i32 %3, %1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ht = sext i32 %3 to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.ht
  %spec.select1748.idx = select i1 %10, i64 0, i64 4
  %spec.select1748 = getelementptr inbounds nuw i8, ptr %i.hu, i64 %spec.select1748.idx
  %i.hv = sub i32 %1, %3
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink2145 = phi i32 [ %i.hv, %bb.p ], [ %i.hs, %bb.o ] ; 2 uses
  %.11442 = phi ptr [ %spec.select1748, %bb.p ], [ %i.hr, %bb.o ] ; 3 uses
  %i.hw = zext i1 %10 to i32
  %i.hx = add nuw nsw i32 %.sink2145, %i.hw       ; 3 uses
  %.not17401885 = icmp eq i32 %i.hx, 0
  br i1 %.not17401885, label %.loopexit, label %.lr.ph1888.preheader

.lr.ph1888.preheader:                             ; preds = %bb.q
  %i.hy = zext i32 %.sink2145 to i64
  %i.hz = zext i1 %10 to i64
  %i.ia = add nuw nsw i64 %i.hy, %i.hz            ; 3 uses
  %min.iters.check2226 = icmp samesign ult i64 %i.ia, 4
  br i1 %min.iters.check2226, label %.lr.ph1888.preheader2308, label %vector.ph2227

vector.ph2227:                                    ; preds = %.lr.ph1888.preheader
  %n.vec2228 = and i64 %i.ia, 8589934588          ; 4 uses
  %i.ib = trunc i64 %n.vec2228 to i32
  %i.ic = sub i32 %i.hx, %i.ib
  %i.id = shl nuw nsw i64 %n.vec2228, 2
  %i.ie = getelementptr i8, ptr %.11442, i64 %i.id
  %broadcast.splatinsert2229 = insertelement <4 x i32> poison, i32 %.0, i64 0
  %broadcast.splat2230 = shufflevector <4 x i32> %broadcast.splatinsert2229, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat2232 = shufflevector <2 x i32> %i.ab, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat2234 = shufflevector <2 x i32> %i.ab, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body2235

vector.body2235:                                  ; preds = %vector.body2235, %vector.ph2227
  %index2236 = phi i64 [ 0, %vector.ph2227 ], [ %index.next2239, %vector.body2235 ] ; 2 uses
  %i.if = shl i64 %index2236, 2
  %next.gep2237 = getelementptr i8, ptr %.11442, i64 %i.if ; 2 uses
  %wide.load2238 = load <4 x i32>, ptr %next.gep2237, align 4 ; 4 uses
  %i.ig = lshr <4 x i32> %wide.load2238, splat (i32 16)
  %i.ih = and <4 x i32> %i.ig, splat (i32 255)
  %i.ii = lshr <4 x i32> %wide.load2238, splat (i32 8)
  %i.ij = and <4 x i32> %i.ii, splat (i32 255)
  %i.ik = and <4 x i32> %wide.load2238, splat (i32 255)
  %i.il = and <4 x i32> %wide.load2238, splat (i32 -16777216)
  %i.im = add nuw nsw <4 x i32> %i.ih, %broadcast.splat2230
  %i.in = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.im, <4 x i32> splat (i32 255))
  %i.io = add nuw nsw <4 x i32> %i.ij, %broadcast.splat2232
  %i.ip = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.io, <4 x i32> splat (i32 255))
  %i.iq = add nuw nsw <4 x i32> %i.ik, %broadcast.splat2234
  %i.ir = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.iq, <4 x i32> splat (i32 255))
  %i.is = shl nuw nsw <4 x i32> %i.in, splat (i32 16)
  %i.it = or disjoint <4 x i32> %i.is, %i.il
  %i.iu = shl nuw nsw <4 x i32> %i.ip, splat (i32 8)
  %i.iv = or disjoint <4 x i32> %i.it, %i.iu
  %i.iw = or disjoint <4 x i32> %i.iv, %i.ir
  store <4 x i32> %i.iw, ptr %next.gep2237, align 4
  %index.next2239 = add nuw i64 %index2236, 4     ; 2 uses
  %i.ix = icmp eq i64 %index.next2239, %n.vec2228
  br i1 %i.ix, label %middle.block2240, label %vector.body2235, !llvm.loop !99

middle.block2240:                                 ; preds = %vector.body2235
  %cmp.n2241 = icmp eq i64 %i.ia, %n.vec2228
  br i1 %cmp.n2241, label %.loopexit, label %.lr.ph1888.preheader2308

.lr.ph1888.preheader2308:                         ; preds = %.lr.ph1888.preheader, %middle.block2240
  %.114401887.ph = phi i32 [ %i.hx, %.lr.ph1888.preheader ], [ %i.ic, %middle.block2240 ]
  %.214431886.ph = phi ptr [ %.11442, %.lr.ph1888.preheader ], [ %i.ie, %middle.block2240 ]
  br label %.lr.ph1888

.lr.ph1888:                                       ; preds = %.lr.ph1888.preheader2308, %.lr.ph1888
  %.114401887 = phi i32 [ %i.iy, %.lr.ph1888 ], [ %.114401887.ph, %.lr.ph1888.preheader2308 ]
  %.214431886 = phi ptr [ %i.jo, %.lr.ph1888 ], [ %.214431886.ph, %.lr.ph1888.preheader2308 ] ; 3 uses
  %i.iy = add nsw i32 %.114401887, -1             ; 2 uses
  %i.iz = load i32, ptr %.214431886, align 4      ; 4 uses
  %i.ja = lshr i32 %i.iz, 16
  %i.jb = and i32 %i.ja, 255
  %i.jc = lshr i32 %i.iz, 8
  %i.jd = and i32 %i.jc, 255
  %i.je = and i32 %i.iz, 255
  %i.jf = and i32 %i.iz, -16777216
  %i.jg = add nuw nsw i32 %i.jb, %.0
  %spec.store.select3 = tail call i32 @llvm.umin.i32(i32 %i.jg, i32 255)
  %i.jh = add nuw nsw i32 %i.jd, %i.ad
  %spec.store.select27 = tail call i32 @llvm.umin.i32(i32 %i.jh, i32 255)
  %i.ji = add nuw nsw i32 %i.je, %i.ac
  %spec.store.select4 = tail call i32 @llvm.umin.i32(i32 %i.ji, i32 255)
  %i.jj = shl nuw nsw i32 %spec.store.select3, 16
  %i.jk = or disjoint i32 %i.jj, %i.jf
  %i.jl = shl nuw nsw i32 %spec.store.select27, 8
  %i.jm = or disjoint i32 %i.jk, %i.jl
  %i.jn = or disjoint i32 %i.jm, %spec.store.select4
  store i32 %i.jn, ptr %.214431886, align 4
  %i.jo = getelementptr inbounds nuw i8, ptr %.214431886, i64 4
  %.not1740 = icmp eq i32 %i.iy, 0
  br i1 %.not1740, label %.loopexit, label %.lr.ph1888, !llvm.loop !100

bb.r:                                             ; preds = %.split
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jq = load i32, ptr %i.jp, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 5
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = zext i8 %i.ju to i32
  %i.jw = sdiv i32 %i.jq, %i.jv
  %.not1737 = icmp sgt i32 %1, %3
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = mul nsw i32 %i.jw, %2
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.ka ; 2 uses
  br i1 %.not1737, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kc = sext i32 %1 to i64
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.kc
  %i.ke = sub i32 %3, %1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.kf = sext i32 %3 to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.kf
  %spec.select1749.idx = select i1 %10, i64 0, i64 4
  %spec.select1749 = getelementptr inbounds nuw i8, ptr %i.kg, i64 %spec.select1749.idx
  %i.kh = sub i32 %1, %3
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink2147 = phi i32 [ %i.kh, %bb.t ], [ %i.ke, %bb.s ] ; 2 uses
  %.11467 = phi ptr [ %spec.select1749, %bb.t ], [ %i.kd, %bb.s ] ; 3 uses
  %i.ki = zext i1 %10 to i32
  %i.kj = add nuw nsw i32 %.sink2147, %i.ki       ; 3 uses
  %.not17381881 = icmp eq i32 %i.kj, 0
  br i1 %.not17381881, label %.loopexit, label %.lr.ph1884.preheader

.lr.ph1884.preheader:                             ; preds = %bb.u
  %i.kk = zext i32 %.sink2147 to i64
  %i.kl = zext i1 %10 to i64
  %i.km = add nuw nsw i64 %i.kk, %i.kl            ; 3 uses
  %min.iters.check2207 = icmp samesign ult i64 %i.km, 4
  br i1 %min.iters.check2207, label %.lr.ph1884.preheader2310, label %vector.ph2208

vector.ph2208:                                    ; preds = %.lr.ph1884.preheader
  %n.vec2209 = and i64 %i.km, 8589934588          ; 4 uses
  %i.kn = trunc i64 %n.vec2209 to i32
  %i.ko = sub i32 %i.kj, %i.kn
  %i.kp = shl nuw nsw i64 %n.vec2209, 2
  %i.kq = getelementptr i8, ptr %.11467, i64 %i.kp
  %broadcast.splatinsert2210 = insertelement <4 x i32> poison, i32 %.0, i64 0
  %broadcast.splat2211 = shufflevector <4 x i32> %broadcast.splatinsert2210, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat2213 = shufflevector <2 x i32> %i.ab, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat2215 = shufflevector <2 x i32> %i.ab, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body2216

vector.body2216:                                  ; preds = %vector.body2216, %vector.ph2208
  %index2217 = phi i64 [ 0, %vector.ph2208 ], [ %index.next2220, %vector.body2216 ] ; 2 uses
  %i.kr = shl i64 %index2217, 2
  %next.gep2218 = getelementptr i8, ptr %.11467, i64 %i.kr ; 2 uses
  %wide.load2219 = load <4 x i32>, ptr %next.gep2218, align 4 ; 4 uses
  %i.ks = lshr <4 x i32> %wide.load2219, splat (i32 16)
  %i.kt = and <4 x i32> %i.ks, splat (i32 255)
  %i.ku = lshr <4 x i32> %wide.load2219, splat (i32 8)
  %i.kv = and <4 x i32> %i.ku, splat (i32 255)
  %i.kw = and <4 x i32> %wide.load2219, splat (i32 255)
  %i.kx = and <4 x i32> %wide.load2219, splat (i32 -16777216)
  %i.ky = mul nuw nsw <4 x i32> %i.kt, %broadcast.splat2211
  %i.kz = trunc <4 x i32> %i.ky to <4 x i16>
  %i.la = udiv <4 x i16> %i.kz, splat (i16 255)
  %i.lb = zext nneg <4 x i16> %i.la to <4 x i32>
  %i.lc = mul nuw nsw <4 x i32> %i.kv, %broadcast.splat2213
  %i.ld = trunc <4 x i32> %i.lc to <4 x i16>
end_hunk_0
begin_hunk_1_@SDL_BlendLine_ARGB8888:bb.a
  %i.rl = getelementptr i8, ptr %.11497, i64 %i.rk
  %broadcast.splatinsert2294 = insertelement <4 x i32> poison, i32 %i.re, i64 0
  %broadcast.splat2295 = shufflevector <4 x i32> %broadcast.splatinsert2294, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2296

vector.body2296:                                  ; preds = %vector.body2296, %vector.ph2292
  %index2297 = phi i64 [ 0, %vector.ph2292 ], [ %index.next2299, %vector.body2296 ] ; 2 uses
  %i.rm = shl i64 %index2297, 2
  %next.gep2298 = getelementptr i8, ptr %.11497, i64 %i.rm ; 2 uses
  %i.rn = getelementptr i8, ptr %next.gep2298, i64 16
  store <4 x i32> %broadcast.splat2295, ptr %next.gep2298, align 4
  store <4 x i32> %broadcast.splat2295, ptr %i.rn, align 4
  %index.next2299 = add nuw i64 %index2297, 8     ; 2 uses
  %i.ro = icmp eq i64 %index.next2299, %n.vec2293
  br i1 %i.ro, label %middle.block2300, label %vector.body2296, !llvm.loop !105

middle.block2300:                                 ; preds = %vector.body2296
  %cmp.n2301 = icmp eq i64 %i.rh, %n.vec2293
  br i1 %cmp.n2301, label %.loopexit, label %scalar.ph2290.preheader

scalar.ph2290.preheader:                          ; preds = %.lr.ph1900, %middle.block2300
  %.114951899.ph = phi i32 [ %i.qy, %.lr.ph1900 ], [ %i.rj, %middle.block2300 ]
  %.214981898.ph = phi ptr [ %.11497, %.lr.ph1900 ], [ %i.rl, %middle.block2300 ]
  br label %scalar.ph2290

scalar.ph2290:                                    ; preds = %scalar.ph2290.preheader, %scalar.ph2290
  %.114951899 = phi i32 [ %i.rp, %scalar.ph2290 ], [ %.114951899.ph, %scalar.ph2290.preheader ]
  %.214981898 = phi ptr [ %i.rq, %scalar.ph2290 ], [ %.214981898.ph, %scalar.ph2290.preheader ] ; 2 uses
  %i.rp = add nsw i32 %.114951899, -1             ; 2 uses
  store i32 %i.re, ptr %.214981898, align 4
  %i.rq = getelementptr inbounds nuw i8, ptr %.214981898, i64 4
  %.not1746 = icmp eq i32 %i.rp, 0
  br i1 %.not1746, label %.loopexit, label %scalar.ph2290, !llvm.loop !106

bb.ad:                                            ; preds = %bb.d
  %i.rr = icmp eq i32 %1, %3
  br i1 %i.rr, label %bb.ae, label %bb.bc

bb.ae:                                            ; preds = %bb.ad
  %i.rs = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %5)
  %i.rt = icmp eq i32 %i.rs, 1
  br i1 %i.rt, label %.split7, label %bb.az

.split7:                                          ; preds = %bb.ae
  %i.ru = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %5, i1 true)
  switch i32 %i.ru, label %bb.az [
    i32 0, label %bb.af
    i32 4, label %bb.aj
    i32 1, label %bb.an
    i32 5, label %bb.an
    i32 2, label %bb.ar
    i32 3, label %bb.av
  ]

bb.af:                                            ; preds = %.split7
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rw = load i32, ptr %i.rv, align 8
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ry = load ptr, ptr %i.rx, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 5
  %i.sa = load i8, ptr %i.rz, align 1
  %i.sb = zext i8 %i.sa to i32
  %i.sc = sdiv i32 %i.rw, %i.sb                   ; 4 uses
  %.not1731 = icmp sgt i32 %2, %4
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.se = load ptr, ptr %i.sd, align 8            ; 2 uses
  %i.sf = sext i32 %1 to i64                      ; 2 uses
  br i1 %.not1731, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.sg = mul nsw i32 %i.sc, %2
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds [4 x i8], ptr %i.se, i64 %i.sh
  %i.sj = getelementptr inbounds [4 x i8], ptr %i.si, i64 %i.sf
  %i.sk = sub i32 %4, %2
  br label %.lr.ph1872

bb.ah:                                            ; preds = %bb.af
  %i.sl = mul nsw i32 %i.sc, %4
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.se, i64 %i.sm
  %i.so = getelementptr inbounds [4 x i8], ptr %i.sn, i64 %i.sf
  %i.sp = sext i32 %i.sc to i64
  %.01521.idx = select i1 %10, i64 0, i64 %i.sp
  %.01521 = getelementptr inbounds [4 x i8], ptr %i.so, i64 %.01521.idx
  %i.sq = sub i32 %2, %4
  br label %.lr.ph1872

.lr.ph1872:                                       ; preds = %bb.ag, %bb.ah
  %.sink2153 = phi i32 [ %i.sk, %bb.ag ], [ %i.sq, %bb.ah ]
  %.11522 = phi ptr [ %i.sj, %bb.ag ], [ %.01521, %bb.ah ]
  %i.sr = zext i1 %10 to i32
  %i.ss = add nuw nsw i32 %.sink2153, %i.sr
  %i.st = sext i32 %i.sc to i64
  %i.su = shufflevector <2 x i32> %i.ab, <2 x i32> %i.aa, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph1872, %bb.ai
  %.115001871 = phi i32 [ %i.ss, %.lr.ph1872 ], [ %i.sv, %bb.ai ]
  %.215231870 = phi ptr [ %.11522, %.lr.ph1872 ], [ %i.tq, %bb.ai ] ; 3 uses
  %i.sv = add nsw i32 %.115001871, -1             ; 2 uses
  %i.sw = load i32, ptr %.215231870, align 4      ; 4 uses
  %i.sx = lshr i32 %i.sw, 24
  %i.sy = lshr i32 %i.sw, 16
  %i.sz = lshr i32 %i.sw, 8
  %i.ta = and i32 %i.sy, 255
  %i.tb = and i32 %i.sz, 255
  %i.tc = and i32 %i.sw, 255
  %i.td = mul nuw nsw i32 %i.sx, %i.ae
  %i.te = mul nuw nsw i32 %i.ta, %i.ae
  %i.tf = mul nuw nsw i32 %i.tb, %i.ae
  %i.tg = mul nuw nsw i32 %i.tc, %i.ae
  %.lhs.trunc2023 = trunc nuw i32 %i.td to i16
  %.lhs.trunc2017 = trunc nuw i32 %i.te to i16
  %.lhs.trunc2019 = trunc nuw i32 %i.tf to i16
  %.lhs.trunc2021 = trunc nuw i32 %i.tg to i16
  %i.th = insertelement <4 x i16> poison, i16 %.lhs.trunc2021, i64 0
  %i.ti = insertelement <4 x i16> %i.th, i16 %.lhs.trunc2019, i64 1
  %i.tj = insertelement <4 x i16> %i.ti, i16 %.lhs.trunc2017, i64 2
  %i.tk = insertelement <4 x i16> %i.tj, i16 %.lhs.trunc2023, i64 3
  %i.tl = udiv <4 x i16> %i.tk, splat (i16 255)
  %i.tm = zext nneg <4 x i16> %i.tl to <4 x i32>
  %i.tn = add nuw nsw <4 x i32> %i.su, %i.tm
  %i.to = shl <4 x i32> %i.tn, <i32 0, i32 8, i32 16, i32 24>
  %i.tp = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.to)
  store i32 %i.tp, ptr %.215231870, align 4
  %i.tq = getelementptr inbounds [4 x i8], ptr %.215231870, i64 %i.st
  %.not1732 = icmp eq i32 %i.sv, 0
  br i1 %.not1732, label %.loopexit, label %bb.ai, !llvm.loop !107

bb.aj:                                            ; preds = %.split7
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ts = load i32, ptr %i.tr, align 8
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.tu = load ptr, ptr %i.tt, align 8
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 5
  %i.tw = load i8, ptr %i.tv, align 1
  %i.tx = zext i8 %i.tw to i32
  %i.ty = sdiv i32 %i.ts, %i.tx                   ; 4 uses
  %.not1729 = icmp sgt i32 %2, %4
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ua = load ptr, ptr %i.tz, align 8            ; 2 uses
  %i.ub = sext i32 %1 to i64                      ; 2 uses
  br i1 %.not1729, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.uc = mul nsw i32 %i.ty, %2
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.ud
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.ub
  %i.ug = sub i32 %4, %2
  br label %.lr.ph1868

bb.al:                                            ; preds = %bb.aj
  %i.uh = mul nsw i32 %i.ty, %4
  %i.ui = sext i32 %i.uh to i64
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.ui
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.ub
  %i.ul = sext i32 %i.ty to i64
  %.01526.idx = select i1 %10, i64 0, i64 %i.ul
  %.01526 = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %.01526.idx
  %i.um = sub i32 %2, %4
  br label %.lr.ph1868

.lr.ph1868:                                       ; preds = %bb.ak, %bb.al
  %.sink2155 = phi i32 [ %i.ug, %bb.ak ], [ %i.um, %bb.al ]
  %.11527 = phi ptr [ %i.uf, %bb.ak ], [ %.01526, %bb.al ]
  %i.un = zext i1 %10 to i32
  %i.uo = add nuw nsw i32 %.sink2155, %i.un
  %i.up = sext i32 %i.ty to i64
  %i.uq = shufflevector <2 x i32> %i.ab, <2 x i32> %i.aa, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph1868, %bb.am
  %.115251867 = phi i32 [ %i.uo, %.lr.ph1868 ], [ %i.ur, %bb.am ]
  %.215281866 = phi ptr [ %.11527, %.lr.ph1868 ], [ %i.vl, %bb.am ] ; 3 uses
  %i.ur = add nsw i32 %.115251867, -1             ; 2 uses
  %i.us = load i32, ptr %.215281866, align 4      ; 4 uses
  %i.ut = lshr i32 %i.us, 24
  %i.uu = lshr i32 %i.us, 16
  %i.uv = lshr i32 %i.us, 8
  %i.uw = and i32 %i.uu, 255
  %i.ux = and i32 %i.uv, 255
  %i.uy = and i32 %i.us, 255
  %i.uz = mul nuw nsw i32 %i.ut, %i.ae
  %i.va = mul nuw nsw i32 %i.uw, %i.ae
  %i.vb = mul nuw nsw i32 %i.ux, %i.ae
  %i.vc = mul nuw nsw i32 %i.uy, %i.ae
  %.lhs.trunc2031 = trunc nuw i32 %i.uz to i16
  %.lhs.trunc2025 = trunc nuw i32 %i.va to i16
  %.lhs.trunc2027 = trunc nuw i32 %i.vb to i16
  %.lhs.trunc2029 = trunc nuw i32 %i.vc to i16
  %i.vd = insertelement <4 x i16> poison, i16 %.lhs.trunc2029, i64 0
  %i.ve = insertelement <4 x i16> %i.vd, i16 %.lhs.trunc2027, i64 1
  %i.vf = insertelement <4 x i16> %i.ve, i16 %.lhs.trunc2025, i64 2
  %i.vg = insertelement <4 x i16> %i.vf, i16 %.lhs.trunc2031, i64 3
  %i.vh = udiv <4 x i16> %i.vg, splat (i16 255)
  %i.vi = zext nneg <4 x i16> %i.vh to <4 x i32>
  %i.vj = add nuw nsw <4 x i32> %i.uq, %i.vi
  %i.vk = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.vj, <4 x i32> splat (i32 255))
  %12 = trunc nuw <4 x i32> %i.vk to <4 x i8>
  store <4 x i8> %12, ptr %.215281866, align 4
  %i.vl = getelementptr inbounds [4 x i8], ptr %.215281866, i64 %i.up
  %.not1730 = icmp eq i32 %i.ur, 0
  br i1 %.not1730, label %.loopexit, label %bb.am, !llvm.loop !108

bb.an:                                            ; preds = %.split7, %.split7
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.vn = load i32, ptr %i.vm, align 8
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.vp = load ptr, ptr %i.vo, align 8
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 5
  %i.vr = load i8, ptr %i.vq, align 1
  %i.vs = zext i8 %i.vr to i32
  %i.vt = sdiv i32 %i.vn, %i.vs                   ; 4 uses
  %.not1727 = icmp sgt i32 %2, %4
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.vv = load ptr, ptr %i.vu, align 8            ; 2 uses
  %i.vw = sext i32 %1 to i64                      ; 2 uses
  br i1 %.not1727, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.vx = mul nsw i32 %i.vt, %2
  %i.vy = sext i32 %i.vx to i64
  %i.vz = getelementptr inbounds [4 x i8], ptr %i.vv, i64 %i.vy
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.vz, i64 %i.vw
  %i.wb = sub i32 %4, %2
  br label %.lr.ph1864

bb.ap:                                            ; preds = %bb.an
  %i.wc = mul nsw i32 %i.vt, %4
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds [4 x i8], ptr %i.vv, i64 %i.wd
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.we, i64 %i.vw
  %i.wg = sext i32 %i.vt to i64
  %.01551.idx = select i1 %10, i64 0, i64 %i.wg
  %.01551 = getelementptr inbounds [4 x i8], ptr %i.wf, i64 %.01551.idx
  %i.wh = sub i32 %2, %4
  br label %.lr.ph1864

.lr.ph1864:                                       ; preds = %bb.ao, %bb.ap
  %.sink2157 = phi i32 [ %i.wb, %bb.ao ], [ %i.wh, %bb.ap ]
  %.11552 = phi ptr [ %i.wa, %bb.ao ], [ %.01551, %bb.ap ]
  %i.wi = zext i1 %10 to i32
  %i.wj = add nuw nsw i32 %.sink2157, %i.wi
  %i.wk = sext i32 %i.vt to i64
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph1864, %bb.aq
  %.115301863 = phi i32 [ %i.wj, %.lr.ph1864 ], [ %i.wl, %bb.aq ]
  %.215531862 = phi ptr [ %.11552, %.lr.ph1864 ], [ %i.xb, %bb.aq ] ; 3 uses
  %i.wl = add nsw i32 %.115301863, -1             ; 2 uses
  %i.wm = load i32, ptr %.215531862, align 4      ; 4 uses
  %i.wn = lshr i32 %i.wm, 16
  %i.wo = and i32 %i.wn, 255
  %i.wp = lshr i32 %i.wm, 8
  %i.wq = and i32 %i.wp, 255
  %i.wr = and i32 %i.wm, 255
  %i.ws = and i32 %i.wm, -16777216
  %i.wt = add nuw nsw i32 %i.wo, %.0
  %spec.store.select10 = tail call i32 @llvm.umin.i32(i32 %i.wt, i32 255)
  %i.wu = add nuw nsw i32 %i.wq, %i.ad
  %spec.store.select30 = tail call i32 @llvm.umin.i32(i32 %i.wu, i32 255)
  %i.wv = add nuw nsw i32 %i.wr, %i.ac
  %spec.store.select11 = tail call i32 @llvm.umin.i32(i32 %i.wv, i32 255)
  %i.ww = shl nuw nsw i32 %spec.store.select10, 16
  %i.wx = or disjoint i32 %i.ww, %i.ws
  %i.wy = shl nuw nsw i32 %spec.store.select30, 8
  %i.wz = or disjoint i32 %i.wx, %i.wy
  %i.xa = or disjoint i32 %i.wz, %spec.store.select11
  store i32 %i.xa, ptr %.215531862, align 4
  %i.xb = getelementptr inbounds [4 x i8], ptr %.215531862, i64 %i.wk
  %.not1728 = icmp eq i32 %i.wl, 0
  br i1 %.not1728, label %.loopexit, label %bb.aq, !llvm.loop !109

bb.ar:                                            ; preds = %.split7
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.xd = load i32, ptr %i.xc, align 8
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.xf = load ptr, ptr %i.xe, align 8
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 5
  %i.xh = load i8, ptr %i.xg, align 1
  %i.xi = zext i8 %i.xh to i32
  %i.xj = sdiv i32 %i.xd, %i.xi                   ; 4 uses
  %.not1725 = icmp sgt i32 %2, %4
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.xl = load ptr, ptr %i.xk, align 8            ; 2 uses
  %i.xm = sext i32 %1 to i64                      ; 2 uses
  br i1 %.not1725, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.xn = mul nsw i32 %i.xj, %2
  %i.xo = sext i32 %i.xn to i64
  %i.xp = getelementptr inbounds [4 x i8], ptr %i.xl, i64 %i.xo
  %i.xq = getelementptr inbounds [4 x i8], ptr %i.xp, i64 %i.xm
  %i.xr = sub i32 %4, %2
  br label %.lr.ph1860

bb.at:                                            ; preds = %bb.ar
  %i.xs = mul nsw i32 %i.xj, %4
  %i.xt = sext i32 %i.xs to i64
  %i.xu = getelementptr inbounds [4 x i8], ptr %i.xl, i64 %i.xt
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.xu, i64 %i.xm
  %i.xw = sext i32 %i.xj to i64
  %.01565.idx = select i1 %10, i64 0, i64 %i.xw
  %.01565 = getelementptr inbounds [4 x i8], ptr %i.xv, i64 %.01565.idx
  %i.xx = sub i32 %2, %4
  br label %.lr.ph1860

.lr.ph1860:                                       ; preds = %bb.as, %bb.at
  %.sink2159 = phi i32 [ %i.xr, %bb.as ], [ %i.xx, %bb.at ]
  %.11566 = phi ptr [ %i.xq, %bb.as ], [ %.01565, %bb.at ]
  %i.xy = zext i1 %10 to i32
  %i.xz = add nuw nsw i32 %.sink2159, %i.xy
  %i.ya = sext i32 %i.xj to i64
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph1860, %bb.au
  %.115551859 = phi i32 [ %i.xz, %.lr.ph1860 ], [ %i.yb, %bb.au ]
  %.215671858 = phi ptr [ %.11566, %.lr.ph1860 ], [ %i.yu, %bb.au ] ; 3 uses
  %i.yb = add nsw i32 %.115551859, -1             ; 2 uses
  %i.yc = load i32, ptr %.215671858, align 4      ; 4 uses
  %i.yd = lshr i32 %i.yc, 16
  %i.ye = and i32 %i.yd, 255
  %i.yf = lshr i32 %i.yc, 8
  %i.yg = and i32 %i.yf, 255
  %i.yh = and i32 %i.yc, 255
  %i.yi = and i32 %i.yc, -16777216
  %i.yj = mul nuw nsw i32 %i.ye, %.0
  %.lhs.trunc2033 = trunc i32 %i.yj to i16
  %i.yk = udiv i16 %.lhs.trunc2033, 255
  %.zext2034 = zext nneg i16 %i.yk to i32
  %i.yl = mul nuw nsw i32 %i.yg, %i.ad
  %.lhs.trunc2035 = trunc i32 %i.yl to i16
  %i.ym = udiv i16 %.lhs.trunc2035, 255
  %.zext2036 = zext nneg i16 %i.ym to i32
  %i.yn = mul nuw nsw i32 %i.yh, %i.ac
  %.lhs.trunc2037 = trunc i32 %i.yn to i16
  %i.yo = udiv i16 %.lhs.trunc2037, 255
  %.zext2038 = zext nneg i16 %i.yo to i32
  %i.yp = shl nuw nsw i32 %.zext2034, 16
  %i.yq = shl nuw nsw i32 %.zext2036, 8
  %i.yr = or disjoint i32 %i.yi, %.zext2038
  %i.ys = or i32 %i.yr, %i.yp
  %i.yt = or i32 %i.ys, %i.yq
  store i32 %i.yt, ptr %.215671858, align 4
  %i.yu = getelementptr inbounds [4 x i8], ptr %.215671858, i64 %i.ya
  %.not1726 = icmp eq i32 %i.yb, 0
  br i1 %.not1726, label %.loopexit, label %bb.au, !llvm.loop !110

bb.av:                                            ; preds = %.split7
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.yw = load i32, ptr %i.yv, align 8
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.yy = load ptr, ptr %i.yx, align 8
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 5
  %i.za = load i8, ptr %i.yz, align 1
  %i.zb = zext i8 %i.za to i32
  %i.zc = sdiv i32 %i.yw, %i.zb                   ; 4 uses
  %.not1723 = icmp sgt i32 %2, %4
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ze = load ptr, ptr %i.zd, align 8            ; 2 uses
  %i.zf = sext i32 %1 to i64                      ; 2 uses
  br i1 %.not1723, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.zg = mul nsw i32 %i.zc, %2
  %i.zh = sext i32 %i.zg to i64
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.ze, i64 %i.zh
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.zi, i64 %i.zf
  %i.zk = sub i32 %4, %2
  br label %.lr.ph1856

bb.ax:                                            ; preds = %bb.av
  %i.zl = mul nsw i32 %i.zc, %4
  %i.zm = sext i32 %i.zl to i64
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.ze, i64 %i.zm
  %i.zo = getelementptr inbounds [4 x i8], ptr %i.zn, i64 %i.zf
  %i.zp = sext i32 %i.zc to i64
  %.01570.idx = select i1 %10, i64 0, i64 %i.zp
  %.01570 = getelementptr inbounds [4 x i8], ptr %i.zo, i64 %.01570.idx
  %i.zq = sub i32 %2, %4
  br label %.lr.ph1856

.lr.ph1856:                                       ; preds = %bb.aw, %bb.ax
  %.sink2161 = phi i32 [ %i.zk, %bb.aw ], [ %i.zq, %bb.ax ]
  %.11571 = phi ptr [ %i.zj, %bb.aw ], [ %.01570, %bb.ax ]
  %i.zr = zext i1 %10 to i32
  %i.zs = add nuw nsw i32 %.sink2161, %i.zr
  %i.zt = sext i32 %i.zc to i64
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph1856, %bb.ay
  %.115691855 = phi i32 [ %i.zs, %.lr.ph1856 ], [ %i.zu, %bb.ay ]
  %.215721854 = phi ptr [ %.11571, %.lr.ph1856 ], [ %i.aax, %bb.ay ] ; 3 uses
  %i.zu = add nsw i32 %.115691855, -1             ; 2 uses
  %i.zv = load i32, ptr %.215721854, align 4      ; 4 uses
  %i.zw = lshr i32 %i.zv, 16
  %i.zx = and i32 %i.zw, 255                      ; 2 uses
  %i.zy = lshr i32 %i.zv, 8
  %i.zz = and i32 %i.zy, 255                      ; 2 uses
  %i.aaa = and i32 %i.zv, 255                     ; 2 uses
end_hunk_1
begin_hunk_2_@SDL_BlendLine_ARGB8888:bb.a
  store i32 %i.acb, ptr %i.acn, align 4
  %i.aco = getelementptr inbounds [4 x i8], ptr %i.acn, i64 %i.acc ; 2 uses
  %i.acp = add nsw i32 %.115831875, -8            ; 2 uses
  store i32 %i.acb, ptr %i.aco, align 4
  %i.acq = getelementptr inbounds [4 x i8], ptr %i.aco, i64 %i.acc
  %.not1734.7 = icmp eq i32 %i.acp, 0
  br i1 %.not1734.7, label %.loopexit, label %.lr.ph1876.new, !llvm.loop !113

bb.bc:                                            ; preds = %bb.ad
  %i.acr = sub nsw i32 %1, %3
  %i.acs = tail call i32 @llvm.abs.i32(i32 %i.acr, i1 true)
  %i.act = sub nsw i32 %2, %4                     ; 7 uses
  %i.acu = tail call i32 @llvm.abs.i32(i32 %i.act, i1 true)
  %i.acv = icmp eq i32 %i.acs, %i.acu
  %i.acw = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %5)
  %i.acx = icmp eq i32 %i.acw, 1                  ; 2 uses
  br i1 %i.acv, label %bb.bd, label %bb.ch

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.acx, label %.split14, label %bb.cd

.split14:                                         ; preds = %bb.bd
  %i.acy = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %5, i1 true)
  switch i32 %i.acy, label %bb.cd [
    i32 0, label %bb.be
    i32 4, label %bb.bj
    i32 1, label %bb.bo
    i32 5, label %bb.bo
    i32 2, label %bb.bt
    i32 3, label %bb.by
  ]

bb.be:                                            ; preds = %.split14
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ada = load i32, ptr %i.acz, align 8
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.adc = load ptr, ptr %i.adb, align 8
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 5
  %i.ade = load i8, ptr %i.add, align 1
  %i.adf = zext i8 %i.ade to i32
  %i.adg = sdiv i32 %i.ada, %i.adf                ; 4 uses
  %.not1715 = icmp sgt i32 %2, %4
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.adi = load ptr, ptr %i.adh, align 8          ; 2 uses
  br i1 %.not1715, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.adj = mul nsw i32 %i.adg, %2
  %i.adk = sext i32 %i.adj to i64
  %i.adl = getelementptr inbounds [4 x i8], ptr %i.adi, i64 %i.adk
  %i.adm = sext i32 %1 to i64
  %i.adn = getelementptr inbounds [4 x i8], ptr %i.adl, i64 %i.adm
  %.not1717 = icmp sgt i32 %1, %3
  %.01599.v = select i1 %.not1717, i32 -1, i32 1
  %.01599 = add nsw i32 %i.adg, %.01599.v
  %i.ado = sub nsw i32 %4, %2
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.adp = mul nsw i32 %i.adg, %4
  %i.adq = sext i32 %i.adp to i64
  %i.adr = getelementptr inbounds [4 x i8], ptr %i.adi, i64 %i.adq
  %i.ads = sext i32 %3 to i64
  %i.adt = getelementptr inbounds [4 x i8], ptr %i.adr, i64 %i.ads
  %.not1716 = icmp sgt i32 %3, %1
  %.11600.v = select i1 %.not1716, i32 -1, i32 1
  %.11600 = add nsw i32 %i.adg, %.11600.v         ; 2 uses
  %i.adu = sext i32 %.11600 to i64
  %.01602.idx = select i1 %10, i64 0, i64 %i.adu
  %.01602 = getelementptr inbounds [4 x i8], ptr %i.adt, i64 %.01602.idx
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.11603 = phi ptr [ %i.adn, %bb.bf ], [ %.01602, %bb.bg ]
  %.21601 = phi i32 [ %.01599, %bb.bf ], [ %.11600, %bb.bg ]
  %.01587 = phi i32 [ %i.ado, %bb.bf ], [ %i.act, %bb.bg ]
  %i.adv = zext i1 %10 to i32
  %spec.select1752 = add nuw nsw i32 %.01587, %i.adv ; 2 uses
  %.not17181845 = icmp eq i32 %spec.select1752, 0
  br i1 %.not17181845, label %.loopexit, label %.lr.ph1848

.lr.ph1848:                                       ; preds = %bb.bh
  %i.adw = sext i32 %.21601 to i64
  %i.adx = shufflevector <2 x i32> %i.ab, <2 x i32> %i.aa, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph1848, %bb.bi
  %.215891847 = phi i32 [ %spec.select1752, %.lr.ph1848 ], [ %i.ady, %bb.bi ]
  %.216041846 = phi ptr [ %.11603, %.lr.ph1848 ], [ %i.aet, %bb.bi ] ; 3 uses
  %i.ady = add nsw i32 %.215891847, -1            ; 2 uses
  %i.adz = load i32, ptr %.216041846, align 4     ; 4 uses
  %i.aea = lshr i32 %i.adz, 24
  %i.aeb = lshr i32 %i.adz, 16
  %i.aec = lshr i32 %i.adz, 8
  %i.aed = and i32 %i.aeb, 255
  %i.aee = and i32 %i.aec, 255
  %i.aef = and i32 %i.adz, 255
  %i.aeg = mul nuw nsw i32 %i.aea, %i.ae
  %i.aeh = mul nuw nsw i32 %i.aed, %i.ae
  %i.aei = mul nuw nsw i32 %i.aee, %i.ae
  %i.aej = mul nuw nsw i32 %i.aef, %i.ae
  %.lhs.trunc2057 = trunc nuw i32 %i.aeg to i16
  %.lhs.trunc2051 = trunc nuw i32 %i.aeh to i16
  %.lhs.trunc2053 = trunc nuw i32 %i.aei to i16
  %.lhs.trunc2055 = trunc nuw i32 %i.aej to i16
  %i.aek = insertelement <4 x i16> poison, i16 %.lhs.trunc2055, i64 0
  %i.ael = insertelement <4 x i16> %i.aek, i16 %.lhs.trunc2053, i64 1
  %i.aem = insertelement <4 x i16> %i.ael, i16 %.lhs.trunc2051, i64 2
  %i.aen = insertelement <4 x i16> %i.aem, i16 %.lhs.trunc2057, i64 3
  %i.aeo = udiv <4 x i16> %i.aen, splat (i16 255)
  %i.aep = zext nneg <4 x i16> %i.aeo to <4 x i32>
  %i.aeq = add nuw nsw <4 x i32> %i.adx, %i.aep
  %i.aer = shl <4 x i32> %i.aeq, <i32 0, i32 8, i32 16, i32 24>
  %i.aes = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.aer)
  store i32 %i.aes, ptr %.216041846, align 4
  %i.aet = getelementptr inbounds [4 x i8], ptr %.216041846, i64 %i.adw
  %.not1718 = icmp eq i32 %i.ady, 0
  br i1 %.not1718, label %.loopexit, label %bb.bi, !llvm.loop !114

bb.bj:                                            ; preds = %.split14
  %i.aeu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aev = load i32, ptr %i.aeu, align 8
  %i.aew = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aex = load ptr, ptr %i.aew, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 5
  %i.aez = load i8, ptr %i.aey, align 1
  %i.afa = zext i8 %i.aez to i32
  %i.afb = sdiv i32 %i.aev, %i.afa                ; 4 uses
  %.not1711 = icmp sgt i32 %2, %4
  %i.afc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.afd = load ptr, ptr %i.afc, align 8          ; 2 uses
  br i1 %.not1711, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.afe = mul nsw i32 %i.afb, %2
  %i.aff = sext i32 %i.afe to i64
  %i.afg = getelementptr inbounds [4 x i8], ptr %i.afd, i64 %i.aff
  %i.afh = sext i32 %1 to i64
  %i.afi = getelementptr inbounds [4 x i8], ptr %i.afg, i64 %i.afh
  %.not1713 = icmp sgt i32 %1, %3
  %.01608.v = select i1 %.not1713, i32 -1, i32 1
  %.01608 = add nsw i32 %i.afb, %.01608.v
  %i.afj = sub nsw i32 %4, %2
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.afk = mul nsw i32 %i.afb, %4
  %i.afl = sext i32 %i.afk to i64
  %i.afm = getelementptr inbounds [4 x i8], ptr %i.afd, i64 %i.afl
  %i.afn = sext i32 %3 to i64
  %i.afo = getelementptr inbounds [4 x i8], ptr %i.afm, i64 %i.afn
  %.not1712 = icmp sgt i32 %3, %1
  %.11609.v = select i1 %.not1712, i32 -1, i32 1
  %.11609 = add nsw i32 %i.afb, %.11609.v         ; 2 uses
  %i.afp = sext i32 %.11609 to i64
  %.01620.idx = select i1 %10, i64 0, i64 %i.afp
  %.01620 = getelementptr inbounds [4 x i8], ptr %i.afo, i64 %.01620.idx
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.11621 = phi ptr [ %i.afi, %bb.bk ], [ %.01620, %bb.bl ]
  %.21610 = phi i32 [ %.01608, %bb.bk ], [ %.11609, %bb.bl ]
  %.01605 = phi i32 [ %i.afj, %bb.bk ], [ %i.act, %bb.bl ]
  %i.afq = zext i1 %10 to i32
  %spec.select1753 = add nuw nsw i32 %.01605, %i.afq ; 2 uses
  %.not17141841 = icmp eq i32 %spec.select1753, 0
  br i1 %.not17141841, label %.loopexit, label %.lr.ph1844

.lr.ph1844:                                       ; preds = %bb.bm
  %i.afr = sext i32 %.21610 to i64
  %i.afs = shufflevector <2 x i32> %i.ab, <2 x i32> %i.aa, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph1844, %bb.bn
  %.216071843 = phi i32 [ %spec.select1753, %.lr.ph1844 ], [ %i.aft, %bb.bn ]
  %.216221842 = phi ptr [ %.11621, %.lr.ph1844 ], [ %i.agn, %bb.bn ] ; 3 uses
  %i.aft = add nsw i32 %.216071843, -1            ; 2 uses
  %i.afu = load i32, ptr %.216221842, align 4     ; 4 uses
  %i.afv = lshr i32 %i.afu, 24
  %i.afw = lshr i32 %i.afu, 16
  %i.afx = lshr i32 %i.afu, 8
  %i.afy = and i32 %i.afw, 255
  %i.afz = and i32 %i.afx, 255
  %i.aga = and i32 %i.afu, 255
  %i.agb = mul nuw nsw i32 %i.afv, %i.ae
  %i.agc = mul nuw nsw i32 %i.afy, %i.ae
  %i.agd = mul nuw nsw i32 %i.afz, %i.ae
  %i.age = mul nuw nsw i32 %i.aga, %i.ae
  %.lhs.trunc2065 = trunc nuw i32 %i.agb to i16
  %.lhs.trunc2059 = trunc nuw i32 %i.agc to i16
  %.lhs.trunc2061 = trunc nuw i32 %i.agd to i16
  %.lhs.trunc2063 = trunc nuw i32 %i.age to i16
  %i.agf = insertelement <4 x i16> poison, i16 %.lhs.trunc2063, i64 0
  %i.agg = insertelement <4 x i16> %i.agf, i16 %.lhs.trunc2061, i64 1
  %i.agh = insertelement <4 x i16> %i.agg, i16 %.lhs.trunc2059, i64 2
  %i.agi = insertelement <4 x i16> %i.agh, i16 %.lhs.trunc2065, i64 3
  %i.agj = udiv <4 x i16> %i.agi, splat (i16 255)
  %i.agk = zext nneg <4 x i16> %i.agj to <4 x i32>
  %i.agl = add nuw nsw <4 x i32> %i.afs, %i.agk
  %i.agm = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.agl, <4 x i32> splat (i32 255))
  %13 = trunc nuw <4 x i32> %i.agm to <4 x i8>
  store <4 x i8> %13, ptr %.216221842, align 4
  %i.agn = getelementptr inbounds [4 x i8], ptr %.216221842, i64 %i.afr
  %.not1714 = icmp eq i32 %i.aft, 0
  br i1 %.not1714, label %.loopexit, label %bb.bn, !llvm.loop !115

bb.bo:                                            ; preds = %.split14, %.split14
  %i.ago = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.agp = load i32, ptr %i.ago, align 8
  %i.agq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.agr = load ptr, ptr %i.agq, align 8
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 5
  %i.agt = load i8, ptr %i.ags, align 1
  %i.agu = zext i8 %i.agt to i32
  %i.agv = sdiv i32 %i.agp, %i.agu                ; 4 uses
  %.not1707 = icmp sgt i32 %2, %4
  %i.agw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.agx = load ptr, ptr %i.agw, align 8          ; 2 uses
  br i1 %.not1707, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.agy = mul nsw i32 %i.agv, %2
  %i.agz = sext i32 %i.agy to i64
  %i.aha = getelementptr inbounds [4 x i8], ptr %i.agx, i64 %i.agz
  %i.ahb = sext i32 %1 to i64
  %i.ahc = getelementptr inbounds [4 x i8], ptr %i.aha, i64 %i.ahb
  %.not1709 = icmp sgt i32 %1, %3
  %.01614.v = select i1 %.not1709, i32 -1, i32 1
  %.01614 = add nsw i32 %i.agv, %.01614.v
  %i.ahd = sub nsw i32 %4, %2
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.ahe = mul nsw i32 %i.agv, %4
  %i.ahf = sext i32 %i.ahe to i64
  %i.ahg = getelementptr inbounds [4 x i8], ptr %i.agx, i64 %i.ahf
  %i.ahh = sext i32 %3 to i64
  %i.ahi = getelementptr inbounds [4 x i8], ptr %i.ahg, i64 %i.ahh
  %.not1708 = icmp sgt i32 %3, %1
  %.11615.v = select i1 %.not1708, i32 -1, i32 1
  %.11615 = add nsw i32 %i.agv, %.11615.v         ; 2 uses
  %i.ahj = sext i32 %.11615 to i64
  %.01611.idx = select i1 %10, i64 0, i64 %i.ahj
  %.01611 = getelementptr inbounds [4 x i8], ptr %i.ahi, i64 %.01611.idx
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.01617 = phi i32 [ %i.ahd, %bb.bp ], [ %i.act, %bb.bq ]
  %.21616 = phi i32 [ %.01614, %bb.bp ], [ %.11615, %bb.bq ]
  %.11612 = phi ptr [ %i.ahc, %bb.bp ], [ %.01611, %bb.bq ]
  %i.ahk = zext i1 %10 to i32
  %spec.select1754 = add nuw nsw i32 %.01617, %i.ahk ; 2 uses
  %.not17101837 = icmp eq i32 %spec.select1754, 0
  br i1 %.not17101837, label %.loopexit, label %.lr.ph1840

.lr.ph1840:                                       ; preds = %bb.br
  %i.ahl = sext i32 %.21616 to i64
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph1840, %bb.bs
  %.216131839 = phi ptr [ %.11612, %.lr.ph1840 ], [ %i.aic, %bb.bs ] ; 3 uses
  %.216191838 = phi i32 [ %spec.select1754, %.lr.ph1840 ], [ %i.ahm, %bb.bs ]
  %i.ahm = add nsw i32 %.216191838, -1            ; 2 uses
  %i.ahn = load i32, ptr %.216131839, align 4     ; 4 uses
  %i.aho = lshr i32 %i.ahn, 16
  %i.ahp = and i32 %i.aho, 255
  %i.ahq = lshr i32 %i.ahn, 8
  %i.ahr = and i32 %i.ahq, 255
  %i.ahs = and i32 %i.ahn, 255
  %i.aht = and i32 %i.ahn, -16777216
  %i.ahu = add nuw nsw i32 %i.ahp, %.0
  %spec.store.select17 = tail call i32 @llvm.umin.i32(i32 %i.ahu, i32 255)
  %i.ahv = add nuw nsw i32 %i.ahr, %i.ad
  %spec.store.select33 = tail call i32 @llvm.umin.i32(i32 %i.ahv, i32 255)
  %i.ahw = add nuw nsw i32 %i.ahs, %i.ac
  %spec.store.select18 = tail call i32 @llvm.umin.i32(i32 %i.ahw, i32 255)
  %i.ahx = shl nuw nsw i32 %spec.store.select17, 16
  %i.ahy = or disjoint i32 %i.ahx, %i.aht
  %i.ahz = shl nuw nsw i32 %spec.store.select33, 8
  %i.aia = or disjoint i32 %i.ahy, %i.ahz
  %i.aib = or disjoint i32 %i.aia, %spec.store.select18
  store i32 %i.aib, ptr %.216131839, align 4
  %i.aic = getelementptr inbounds [4 x i8], ptr %.216131839, i64 %i.ahl
  %.not1710 = icmp eq i32 %i.ahm, 0
  br i1 %.not1710, label %.loopexit, label %bb.bs, !llvm.loop !116

bb.bt:                                            ; preds = %.split14
  %i.aid = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aie = load i32, ptr %i.aid, align 8
  %i.aif = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aig = load ptr, ptr %i.aif, align 8
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 5
  %i.aii = load i8, ptr %i.aih, align 1
  %i.aij = zext i8 %i.aii to i32
  %i.aik = sdiv i32 %i.aie, %i.aij                ; 4 uses
  %.not1703 = icmp sgt i32 %2, %4
  %i.ail = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aim = load ptr, ptr %i.ail, align 8          ; 2 uses
  br i1 %.not1703, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ain = mul nsw i32 %i.aik, %2
  %i.aio = sext i32 %i.ain to i64
  %i.aip = getelementptr inbounds [4 x i8], ptr %i.aim, i64 %i.aio
  %i.aiq = sext i32 %1 to i64
  %i.air = getelementptr inbounds [4 x i8], ptr %i.aip, i64 %i.aiq
  %.not1705 = icmp sgt i32 %1, %3
  %.01593.v = select i1 %.not1705, i32 -1, i32 1
  %.01593 = add nsw i32 %i.aik, %.01593.v
  %i.ais = sub nsw i32 %4, %2
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.ait = mul nsw i32 %i.aik, %4
  %i.aiu = sext i32 %i.ait to i64
  %i.aiv = getelementptr inbounds [4 x i8], ptr %i.aim, i64 %i.aiu
  %i.aiw = sext i32 %3 to i64
  %i.aix = getelementptr inbounds [4 x i8], ptr %i.aiv, i64 %i.aiw
  %.not1704 = icmp sgt i32 %3, %1
  %.11594.v = select i1 %.not1704, i32 -1, i32 1
  %.11594 = add nsw i32 %i.aik, %.11594.v         ; 2 uses
  %i.aiy = sext i32 %.11594 to i64
  %.01590.idx = select i1 %10, i64 0, i64 %i.aiy
  %.01590 = getelementptr inbounds [4 x i8], ptr %i.aix, i64 %.01590.idx
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.01596 = phi i32 [ %i.ais, %bb.bu ], [ %i.act, %bb.bv ]
  %.21595 = phi i32 [ %.01593, %bb.bu ], [ %.11594, %bb.bv ]
  %.11591 = phi ptr [ %i.air, %bb.bu ], [ %.01590, %bb.bv ]
  %i.aiz = zext i1 %10 to i32
  %spec.select1755 = add nuw nsw i32 %.01596, %i.aiz ; 2 uses
  %.not17061833 = icmp eq i32 %spec.select1755, 0
  br i1 %.not17061833, label %.loopexit, label %.lr.ph1836

.lr.ph1836:                                       ; preds = %bb.bw
  %i.aja = sext i32 %.21595 to i64
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph1836, %bb.bx
  %.215921835 = phi ptr [ %.11591, %.lr.ph1836 ], [ %i.aju, %bb.bx ] ; 3 uses
  %.215981834 = phi i32 [ %spec.select1755, %.lr.ph1836 ], [ %i.ajb, %bb.bx ]
  %i.ajb = add nsw i32 %.215981834, -1            ; 2 uses
  %i.ajc = load i32, ptr %.215921835, align 4     ; 4 uses
  %i.ajd = lshr i32 %i.ajc, 16
  %i.aje = and i32 %i.ajd, 255
  %i.ajf = lshr i32 %i.ajc, 8
  %i.ajg = and i32 %i.ajf, 255
  %i.ajh = and i32 %i.ajc, 255
  %i.aji = and i32 %i.ajc, -16777216
  %i.ajj = mul nuw nsw i32 %i.aje, %.0
  %.lhs.trunc2067 = trunc i32 %i.ajj to i16
  %i.ajk = udiv i16 %.lhs.trunc2067, 255
  %.zext2068 = zext nneg i16 %i.ajk to i32
  %i.ajl = mul nuw nsw i32 %i.ajg, %i.ad
  %.lhs.trunc2069 = trunc i32 %i.ajl to i16
  %i.ajm = udiv i16 %.lhs.trunc2069, 255
  %.zext2070 = zext nneg i16 %i.ajm to i32
  %i.ajn = mul nuw nsw i32 %i.ajh, %i.ac
  %.lhs.trunc2071 = trunc i32 %i.ajn to i16
  %i.ajo = udiv i16 %.lhs.trunc2071, 255
  %.zext2072 = zext nneg i16 %i.ajo to i32
  %i.ajp = shl nuw nsw i32 %.zext2068, 16
  %i.ajq = shl nuw nsw i32 %.zext2070, 8
  %i.ajr = or disjoint i32 %i.aji, %.zext2072
  %i.ajs = or i32 %i.ajr, %i.ajp
  %i.ajt = or i32 %i.ajs, %i.ajq
  store i32 %i.ajt, ptr %.215921835, align 4
  %i.aju = getelementptr inbounds [4 x i8], ptr %.215921835, i64 %i.aja
  %.not1706 = icmp eq i32 %i.ajb, 0
  br i1 %.not1706, label %.loopexit, label %bb.bx, !llvm.loop !117

bb.by:                                            ; preds = %.split14
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ajw = load i32, ptr %i.ajv, align 8
  %i.ajx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ajy = load ptr, ptr %i.ajx, align 8
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 5
  %i.aka = load i8, ptr %i.ajz, align 1
  %i.akb = zext i8 %i.aka to i32
  %i.akc = sdiv i32 %i.ajw, %i.akb                ; 4 uses
  %.not1699 = icmp sgt i32 %2, %4
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ake = load ptr, ptr %i.akd, align 8          ; 2 uses
  br i1 %.not1699, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.akf = mul nsw i32 %i.akc, %2
  %i.akg = sext i32 %i.akf to i64
  %i.akh = getelementptr inbounds [4 x i8], ptr %i.ake, i64 %i.akg
  %i.aki = sext i32 %1 to i64
  %i.akj = getelementptr inbounds [4 x i8], ptr %i.akh, i64 %i.aki
  %.not1701 = icmp sgt i32 %1, %3
  %.01576.v = select i1 %.not1701, i32 -1, i32 1
  %.01576 = add nsw i32 %i.akc, %.01576.v
  %i.akk = sub nsw i32 %4, %2
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.akl = mul nsw i32 %i.akc, %4
  %i.akm = sext i32 %i.akl to i64
  %i.akn = getelementptr inbounds [4 x i8], ptr %i.ake, i64 %i.akm
end_hunk_2
begin_hunk_3_@SDL_BlendLine_ARGB8888:bb.a
  %i.anm = getelementptr inbounds [4 x i8], ptr %i.anl, i64 %i.ana ; 2 uses
  %i.ann = add nsw i32 %.215641850, -8            ; 2 uses
  store i32 %i.amz, ptr %i.anm, align 4
  %i.ano = getelementptr inbounds [4 x i8], ptr %i.anm, i64 %i.ana
  %.not1722.7 = icmp eq i32 %i.ann, 0
  br i1 %.not1722.7, label %.loopexit, label %.lr.ph1852.new, !llvm.loop !120

bb.ch:                                            ; preds = %bb.bc
  br i1 %i.acx, label %.split21, label %bb.dh

.split21:                                         ; preds = %bb.ch
  %i.anp = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %5, i1 true)
  switch i32 %i.anp, label %bb.dh [
    i32 0, label %bb.ci
    i32 4, label %bb.cn
    i32 1, label %bb.cs
    i32 5, label %bb.cs
    i32 2, label %bb.cx
    i32 3, label %bb.dc
  ]

bb.ci:                                            ; preds = %.split21
  %i.anq = sub nsw i32 %3, %1
  %i.anr = tail call i32 @llvm.abs.i32(i32 %i.anq, i1 true) ; 6 uses
  %i.ans = sub nsw i32 %4, %2
  %i.ant = tail call i32 @llvm.abs.i32(i32 %i.ans, i1 true) ; 6 uses
  %.not1697 = icmp samesign ult i32 %i.anr, %i.ant
  br i1 %.not1697, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.anu = shl nuw nsw i32 %i.ant, 1              ; 2 uses
  %i.anv = sub nsw i32 %i.anu, %i.anr
  %i.anw = sub nsw i32 %i.ant, %i.anr
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.anx = shl nuw nsw i32 %i.anr, 1              ; 2 uses
  %i.any = sub nsw i32 %i.anx, %i.ant
  %i.anz = sub nsw i32 %i.anr, %i.ant
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.01548.in = phi i32 [ %i.anr, %bb.cj ], [ %i.ant, %bb.ck ]
  %.01545 = phi i32 [ %i.anv, %bb.cj ], [ %i.any, %bb.ck ]
  %.01544 = phi i32 [ %i.anu, %bb.cj ], [ %i.anx, %bb.ck ]
  %.01543.in = phi i32 [ %i.anw, %bb.cj ], [ %i.anz, %bb.ck ]
  %.01539 = phi i32 [ 1, %bb.cj ], [ 0, %bb.ck ]  ; 2 uses
  %.01533 = phi i32 [ 0, %bb.cj ], [ 1, %bb.ck ]  ; 2 uses
  %.01543 = shl nsw i32 %.01543.in, 1
  %i.aoa = icmp sgt i32 %1, %3                    ; 2 uses
  %i.aob = sub nsw i32 0, %.01539
  %spec.select1758 = select i1 %i.aoa, i32 %i.aob, i32 %.01539
  %spec.select1759 = select i1 %i.aoa, i32 -1, i32 1
  %i.aoc = icmp sgt i32 %2, %4                    ; 2 uses
  %i.aod = sub nsw i32 0, %.01533
  %.11534 = select i1 %i.aoc, i32 %i.aod, i32 %.01533
  %.11532 = select i1 %i.aoc, i32 -1, i32 1
  %.01548 = zext i1 %10 to i32
  %.11549 = add nuw nsw i32 %.01548.in, %.01548   ; 2 uses
  %.not1905 = icmp eq i32 %.11549, 0
  br i1 %.not1905, label %.loopexit, label %.lr.ph1823

.lr.ph1823:                                       ; preds = %bb.cl
  %i.aoe = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aof = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aog = shufflevector <2 x i32> %i.ab, <2 x i32> %i.aa, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  br label %bb.cm

bb.cm:                                            ; preds = %.lr.ph1823, %bb.cm
  %.015351822 = phi i32 [ %2, %.lr.ph1823 ], [ %.11536, %bb.cm ] ; 2 uses
  %.015411821 = phi i32 [ %1, %.lr.ph1823 ], [ %.11542, %bb.cm ] ; 2 uses
  %.115461820 = phi i32 [ %.01545, %.lr.ph1823 ], [ %.21547, %bb.cm ] ; 2 uses
  %.015501819 = phi i32 [ 0, %.lr.ph1823 ], [ %i.apk, %bb.cm ]
  %i.aoh = load ptr, ptr %i.aoe, align 8
  %i.aoi = load i32, ptr %i.aof, align 8
  %i.aoj = mul nsw i32 %i.aoi, %.015351822
  %i.aok = sext i32 %i.aoj to i64
  %i.aol = getelementptr inbounds i8, ptr %i.aoh, i64 %i.aok
  %i.aom = shl nsw i32 %.015411821, 2
  %i.aon = sext i32 %i.aom to i64
  %i.aoo = getelementptr inbounds i8, ptr %i.aol, i64 %i.aon ; 2 uses
  %i.aop = load i32, ptr %i.aoo, align 4          ; 4 uses
  %i.aoq = lshr i32 %i.aop, 24
  %i.aor = lshr i32 %i.aop, 16
  %i.aos = lshr i32 %i.aop, 8
  %i.aot = and i32 %i.aor, 255
  %i.aou = and i32 %i.aos, 255
  %i.aov = and i32 %i.aop, 255
  %i.aow = mul nuw nsw i32 %i.aoq, %i.ae
  %i.aox = mul nuw nsw i32 %i.aot, %i.ae
  %i.aoy = mul nuw nsw i32 %i.aou, %i.ae
  %i.aoz = mul nuw nsw i32 %i.aov, %i.ae
  %.lhs.trunc2091 = trunc nuw i32 %i.aow to i16
  %.lhs.trunc2085 = trunc nuw i32 %i.aox to i16
  %.lhs.trunc2087 = trunc nuw i32 %i.aoy to i16
  %.lhs.trunc2089 = trunc nuw i32 %i.aoz to i16
  %i.apa = insertelement <4 x i16> poison, i16 %.lhs.trunc2089, i64 0
  %i.apb = insertelement <4 x i16> %i.apa, i16 %.lhs.trunc2087, i64 1
  %i.apc = insertelement <4 x i16> %i.apb, i16 %.lhs.trunc2085, i64 2
  %i.apd = insertelement <4 x i16> %i.apc, i16 %.lhs.trunc2091, i64 3
  %i.ape = udiv <4 x i16> %i.apd, splat (i16 255)
  %i.apf = zext nneg <4 x i16> %i.ape to <4 x i32>
  %i.apg = add nuw nsw <4 x i32> %i.aog, %i.apf
  %i.aph = shl <4 x i32> %i.apg, <i32 0, i32 8, i32 16, i32 24>
  %i.api = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.aph)
  store i32 %i.api, ptr %i.aoo, align 4
  %i.apj = icmp slt i32 %.115461820, 0            ; 3 uses
  %.01544..01543 = select i1 %i.apj, i32 %.01544, i32 %.01543
  %spec.select1758.spec.select1759 = select i1 %i.apj, i32 %spec.select1758, i32 %spec.select1759
  %.11534..11532 = select i1 %i.apj, i32 %.11534, i32 %.11532
  %.11536 = add nsw i32 %.015351822, %.11534..11532
  %.11542 = add nsw i32 %spec.select1758.spec.select1759, %.015411821
  %.21547 = add nsw i32 %.01544..01543, %.115461820
  %i.apk = add nuw nsw i32 %.015501819, 1         ; 2 uses
  %exitcond1933.not = icmp eq i32 %i.apk, %.11549
  br i1 %exitcond1933.not, label %.loopexit, label %bb.cm, !llvm.loop !121

bb.cn:                                            ; preds = %.split21
  %i.apl = sub nsw i32 %3, %1
  %i.apm = tail call i32 @llvm.abs.i32(i32 %i.apl, i1 true) ; 6 uses
  %i.apn = sub nsw i32 %4, %2
  %i.apo = tail call i32 @llvm.abs.i32(i32 %i.apn, i1 true) ; 6 uses
  %.not1696 = icmp samesign ult i32 %i.apm, %i.apo
  br i1 %.not1696, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.app = shl nuw nsw i32 %i.apo, 1              ; 2 uses
  %i.apq = sub nsw i32 %i.app, %i.apm
  %i.apr = sub nsw i32 %i.apo, %i.apm
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.aps = shl nuw nsw i32 %i.apm, 1              ; 2 uses
  %i.apt = sub nsw i32 %i.aps, %i.apo
  %i.apu = sub nsw i32 %i.apm, %i.apo
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.01518.in = phi i32 [ %i.apm, %bb.co ], [ %i.apo, %bb.cp ]
  %.01515 = phi i32 [ %i.apq, %bb.co ], [ %i.apt, %bb.cp ]
  %.01514 = phi i32 [ %i.app, %bb.co ], [ %i.aps, %bb.cp ]
  %.01513.in = phi i32 [ %i.apr, %bb.co ], [ %i.apu, %bb.cp ]
  %.01509 = phi i32 [ 1, %bb.co ], [ 0, %bb.cp ]  ; 2 uses
  %.01503 = phi i32 [ 0, %bb.co ], [ 1, %bb.cp ]  ; 2 uses
  %.01513 = shl nsw i32 %.01513.in, 1
  %i.apv = icmp sgt i32 %1, %3                    ; 2 uses
  %i.apw = sub nsw i32 0, %.01509
  %spec.select1760 = select i1 %i.apv, i32 %i.apw, i32 %.01509
  %spec.select1761 = select i1 %i.apv, i32 -1, i32 1
  %i.apx = icmp sgt i32 %2, %4                    ; 2 uses
  %i.apy = sub nsw i32 0, %.01503
  %.11504 = select i1 %i.apx, i32 %i.apy, i32 %.01503
  %.11502 = select i1 %i.apx, i32 -1, i32 1
  %.01518 = zext i1 %10 to i32
  %.11519 = add nuw nsw i32 %.01518.in, %.01518   ; 2 uses
  %.not1904 = icmp eq i32 %.11519, 0
  br i1 %.not1904, label %.loopexit, label %.lr.ph1818

.lr.ph1818:                                       ; preds = %bb.cq
  %i.apz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aqa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aqb = shufflevector <2 x i32> %i.ab, <2 x i32> %i.aa, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  br label %bb.cr

bb.cr:                                            ; preds = %.lr.ph1818, %bb.cr
  %.015051817 = phi i32 [ %2, %.lr.ph1818 ], [ %.11506, %bb.cr ] ; 2 uses
  %.015111816 = phi i32 [ %1, %.lr.ph1818 ], [ %.11512, %bb.cr ] ; 2 uses
  %.115161815 = phi i32 [ %.01515, %.lr.ph1818 ], [ %.21517, %bb.cr ] ; 2 uses
  %.015201814 = phi i32 [ 0, %.lr.ph1818 ], [ %i.are, %bb.cr ]
  %i.aqc = load ptr, ptr %i.apz, align 8
  %i.aqd = load i32, ptr %i.aqa, align 8
  %i.aqe = mul nsw i32 %i.aqd, %.015051817
  %i.aqf = sext i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds i8, ptr %i.aqc, i64 %i.aqf
  %i.aqh = shl nsw i32 %.015111816, 2
  %i.aqi = sext i32 %i.aqh to i64
  %i.aqj = getelementptr inbounds i8, ptr %i.aqg, i64 %i.aqi ; 2 uses
  %i.aqk = load i32, ptr %i.aqj, align 4          ; 4 uses
  %i.aql = lshr i32 %i.aqk, 24
  %i.aqm = lshr i32 %i.aqk, 16
  %i.aqn = lshr i32 %i.aqk, 8
  %i.aqo = and i32 %i.aqm, 255
  %i.aqp = and i32 %i.aqn, 255
  %i.aqq = and i32 %i.aqk, 255
  %i.aqr = mul nuw nsw i32 %i.aql, %i.ae
  %i.aqs = mul nuw nsw i32 %i.aqo, %i.ae
  %i.aqt = mul nuw nsw i32 %i.aqp, %i.ae
  %i.aqu = mul nuw nsw i32 %i.aqq, %i.ae
  %.lhs.trunc2099 = trunc nuw i32 %i.aqr to i16
  %.lhs.trunc2093 = trunc nuw i32 %i.aqs to i16
  %.lhs.trunc2095 = trunc nuw i32 %i.aqt to i16
  %.lhs.trunc2097 = trunc nuw i32 %i.aqu to i16
  %i.aqv = insertelement <4 x i16> poison, i16 %.lhs.trunc2097, i64 0
  %i.aqw = insertelement <4 x i16> %i.aqv, i16 %.lhs.trunc2095, i64 1
  %i.aqx = insertelement <4 x i16> %i.aqw, i16 %.lhs.trunc2093, i64 2
  %i.aqy = insertelement <4 x i16> %i.aqx, i16 %.lhs.trunc2099, i64 3
  %i.aqz = udiv <4 x i16> %i.aqy, splat (i16 255)
  %i.ara = zext nneg <4 x i16> %i.aqz to <4 x i32>
  %i.arb = add nuw nsw <4 x i32> %i.aqb, %i.ara
  %i.arc = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.arb, <4 x i32> splat (i32 255))
  %14 = trunc nuw <4 x i32> %i.arc to <4 x i8>
  store <4 x i8> %14, ptr %i.aqj, align 4
  %i.ard = icmp slt i32 %.115161815, 0            ; 3 uses
  %.01514..01513 = select i1 %i.ard, i32 %.01514, i32 %.01513
  %spec.select1760.spec.select1761 = select i1 %i.ard, i32 %spec.select1760, i32 %spec.select1761
  %.11504..11502 = select i1 %i.ard, i32 %.11504, i32 %.11502
  %.11506 = add nsw i32 %.015051817, %.11504..11502
  %.11512 = add nsw i32 %spec.select1760.spec.select1761, %.015111816
  %.21517 = add nsw i32 %.01514..01513, %.115161815
  %i.are = add nuw nsw i32 %.015201814, 1         ; 2 uses
  %exitcond1932.not = icmp eq i32 %i.are, %.11519
  br i1 %exitcond1932.not, label %.loopexit, label %bb.cr, !llvm.loop !122

bb.cs:                                            ; preds = %.split21, %.split21
  %i.arf = sub nsw i32 %3, %1
  %i.arg = tail call i32 @llvm.abs.i32(i32 %i.arf, i1 true) ; 6 uses
  %i.arh = sub nsw i32 %4, %2
  %i.ari = tail call i32 @llvm.abs.i32(i32 %i.arh, i1 true) ; 6 uses
  %.not1695 = icmp samesign ult i32 %i.arg, %i.ari
  br i1 %.not1695, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.arj = shl nuw nsw i32 %i.ari, 1              ; 2 uses
  %i.ark = sub nsw i32 %i.arj, %i.arg
  %i.arl = sub nsw i32 %i.ari, %i.arg
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.arm = shl nuw nsw i32 %i.arg, 1              ; 2 uses
  %i.arn = sub nsw i32 %i.arm, %i.ari
  %i.aro = sub nsw i32 %i.arg, %i.ari
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.01491.in = phi i32 [ %i.arg, %bb.ct ], [ %i.ari, %bb.cu ]
  %.01488 = phi i32 [ %i.ark, %bb.ct ], [ %i.arn, %bb.cu ]
  %.01487 = phi i32 [ %i.arj, %bb.ct ], [ %i.arm, %bb.cu ]
  %.01486.in = phi i32 [ %i.arl, %bb.ct ], [ %i.aro, %bb.cu ]
  %.01482 = phi i32 [ 1, %bb.ct ], [ 0, %bb.cu ]  ; 2 uses
  %.01476 = phi i32 [ 0, %bb.ct ], [ 1, %bb.cu ]  ; 2 uses
  %.01486 = shl nsw i32 %.01486.in, 1
  %i.arp = icmp sgt i32 %1, %3                    ; 2 uses
  %i.arq = sub nsw i32 0, %.01482
  %spec.select1762 = select i1 %i.arp, i32 %i.arq, i32 %.01482
  %spec.select1763 = select i1 %i.arp, i32 -1, i32 1
  %i.arr = icmp sgt i32 %2, %4                    ; 2 uses
  %i.ars = sub nsw i32 0, %.01476
  %.11477 = select i1 %i.arr, i32 %i.ars, i32 %.01476
  %.11475 = select i1 %i.arr, i32 -1, i32 1
  %.01491 = zext i1 %10 to i32
  %.11492 = add nuw nsw i32 %.01491.in, %.01491   ; 2 uses
  %.not1903 = icmp eq i32 %.11492, 0
  br i1 %.not1903, label %.loopexit, label %.lr.ph1813

.lr.ph1813:                                       ; preds = %bb.cv
  %i.art = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aru = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.cw

bb.cw:                                            ; preds = %.lr.ph1813, %bb.cw
  %.014781812 = phi i32 [ %2, %.lr.ph1813 ], [ %.11479, %bb.cw ] ; 2 uses
  %.014841811 = phi i32 [ %1, %.lr.ph1813 ], [ %.11485, %bb.cw ] ; 2 uses
  %.114891810 = phi i32 [ %.01488, %.lr.ph1813 ], [ %.21490, %bb.cw ] ; 2 uses
  %.014931809 = phi i32 [ 0, %.lr.ph1813 ], [ %i.ast, %bb.cw ]
  %i.arv = load ptr, ptr %i.art, align 8
  %i.arw = load i32, ptr %i.aru, align 8
  %i.arx = mul nsw i32 %i.arw, %.014781812
  %i.ary = sext i32 %i.arx to i64
  %i.arz = getelementptr inbounds i8, ptr %i.arv, i64 %i.ary
  %i.asa = shl nsw i32 %.014841811, 2
  %i.asb = sext i32 %i.asa to i64
  %i.asc = getelementptr inbounds i8, ptr %i.arz, i64 %i.asb ; 2 uses
  %i.asd = load i32, ptr %i.asc, align 4          ; 4 uses
  %i.ase = lshr i32 %i.asd, 16
  %i.asf = and i32 %i.ase, 255
  %i.asg = lshr i32 %i.asd, 8
  %i.ash = and i32 %i.asg, 255
  %i.asi = and i32 %i.asd, 255
  %i.asj = and i32 %i.asd, -16777216
  %i.ask = add nuw nsw i32 %i.asf, %.0
  %spec.store.select36 = tail call i32 @llvm.umin.i32(i32 %i.ask, i32 255)
  %i.asl = add nuw nsw i32 %i.ash, %i.ad
  %spec.store.select24 = tail call i32 @llvm.umin.i32(i32 %i.asl, i32 255)
  %i.asm = add nuw nsw i32 %i.asi, %i.ac
  %spec.store.select42 = tail call i32 @llvm.umin.i32(i32 %i.asm, i32 255)
  %i.asn = shl nuw nsw i32 %spec.store.select36, 16
  %i.aso = or disjoint i32 %i.asn, %i.asj
  %i.asp = shl nuw nsw i32 %spec.store.select24, 8
  %i.asq = or disjoint i32 %i.aso, %i.asp
  %i.asr = or disjoint i32 %i.asq, %spec.store.select42
  store i32 %i.asr, ptr %i.asc, align 4
  %i.ass = icmp slt i32 %.114891810, 0            ; 3 uses
  %.01487..01486 = select i1 %i.ass, i32 %.01487, i32 %.01486
  %spec.select1762.spec.select1763 = select i1 %i.ass, i32 %spec.select1762, i32 %spec.select1763
  %.11477..11475 = select i1 %i.ass, i32 %.11477, i32 %.11475
  %.11479 = add nsw i32 %.014781812, %.11477..11475
  %.11485 = add nsw i32 %spec.select1762.spec.select1763, %.014841811
  %.21490 = add nsw i32 %.01487..01486, %.114891810
  %i.ast = add nuw nsw i32 %.014931809, 1         ; 2 uses
  %exitcond1931.not = icmp eq i32 %i.ast, %.11492
  br i1 %exitcond1931.not, label %.loopexit, label %bb.cw, !llvm.loop !123

bb.cx:                                            ; preds = %.split21
  %i.asu = sub nsw i32 %3, %1
  %i.asv = tail call i32 @llvm.abs.i32(i32 %i.asu, i1 true) ; 6 uses
  %i.asw = sub nsw i32 %4, %2
  %i.asx = tail call i32 @llvm.abs.i32(i32 %i.asw, i1 true) ; 6 uses
  %.not1694 = icmp samesign ult i32 %i.asv, %i.asx
  br i1 %.not1694, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.asy = shl nuw nsw i32 %i.asx, 1              ; 2 uses
  %i.asz = sub nsw i32 %i.asy, %i.asv
  %i.ata = sub nsw i32 %i.asx, %i.asv
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.atb = shl nuw nsw i32 %i.asv, 1              ; 2 uses
  %i.atc = sub nsw i32 %i.atb, %i.asx
  %i.atd = sub nsw i32 %i.asv, %i.asx
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.01463.in = phi i32 [ %i.asv, %bb.cy ], [ %i.asx, %bb.cz ]
  %.01460 = phi i32 [ %i.asz, %bb.cy ], [ %i.atc, %bb.cz ]
  %.01459 = phi i32 [ %i.asy, %bb.cy ], [ %i.atb, %bb.cz ]
  %.01458.in = phi i32 [ %i.ata, %bb.cy ], [ %i.atd, %bb.cz ]
  %.01454 = phi i32 [ 1, %bb.cy ], [ 0, %bb.cz ]  ; 2 uses
  %.01448 = phi i32 [ 0, %bb.cy ], [ 1, %bb.cz ]  ; 2 uses
  %.01458 = shl nsw i32 %.01458.in, 1
  %i.ate = icmp sgt i32 %1, %3                    ; 2 uses
  %i.atf = sub nsw i32 0, %.01454
  %spec.select1764 = select i1 %i.ate, i32 %i.atf, i32 %.01454
  %spec.select1765 = select i1 %i.ate, i32 -1, i32 1
  %i.atg = icmp sgt i32 %2, %4                    ; 2 uses
  %i.ath = sub nsw i32 0, %.01448
  %.11449 = select i1 %i.atg, i32 %i.ath, i32 %.01448
  %.11447 = select i1 %i.atg, i32 -1, i32 1
  %.01463 = zext i1 %10 to i32
  %.11464 = add nuw nsw i32 %.01463.in, %.01463   ; 2 uses
  %.not1902 = icmp eq i32 %.11464, 0
  br i1 %.not1902, label %.loopexit, label %.lr.ph1808

.lr.ph1808:                                       ; preds = %bb.da
  %i.ati = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.atj = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.db

bb.db:                                            ; preds = %.lr.ph1808, %bb.db
  %.014501807 = phi i32 [ %2, %.lr.ph1808 ], [ %.11451, %bb.db ] ; 2 uses
  %.014561806 = phi i32 [ %1, %.lr.ph1808 ], [ %.11457, %bb.db ] ; 2 uses
  %.114611805 = phi i32 [ %.01460, %.lr.ph1808 ], [ %.21462, %bb.db ] ; 2 uses
  %.014651804 = phi i32 [ 0, %.lr.ph1808 ], [ %i.aul, %bb.db ]
  %i.atk = load ptr, ptr %i.ati, align 8
  %i.atl = load i32, ptr %i.atj, align 8
  %i.atm = mul nsw i32 %i.atl, %.014501807
  %i.atn = sext i32 %i.atm to i64
  %i.ato = getelementptr inbounds i8, ptr %i.atk, i64 %i.atn
  %i.atp = shl nsw i32 %.014561806, 2
  %i.atq = sext i32 %i.atp to i64
  %i.atr = getelementptr inbounds i8, ptr %i.ato, i64 %i.atq ; 2 uses
  %i.ats = load i32, ptr %i.atr, align 4          ; 4 uses
  %i.att = lshr i32 %i.ats, 16
  %i.atu = and i32 %i.att, 255
  %i.atv = lshr i32 %i.ats, 8
  %i.atw = and i32 %i.atv, 255
  %i.atx = and i32 %i.ats, 255
  %i.aty = and i32 %i.ats, -16777216
  %i.atz = mul nuw nsw i32 %i.atu, %.0
  %.lhs.trunc2101 = trunc i32 %i.atz to i16
  %i.aua = udiv i16 %.lhs.trunc2101, 255
  %.zext2102 = zext nneg i16 %i.aua to i32
  %i.aub = mul nuw nsw i32 %i.atw, %i.ad
  %.lhs.trunc2103 = trunc i32 %i.aub to i16
  %i.auc = udiv i16 %.lhs.trunc2103, 255
  %.zext2104 = zext nneg i16 %i.auc to i32
  %i.aud = mul nuw nsw i32 %i.atx, %i.ac
  %.lhs.trunc2105 = trunc i32 %i.aud to i16
  %i.aue = udiv i16 %.lhs.trunc2105, 255
  %.zext2106 = zext nneg i16 %i.aue to i32
  %i.auf = shl nuw nsw i32 %.zext2102, 16
  %i.aug = shl nuw nsw i32 %.zext2104, 8
  %i.auh = or disjoint i32 %i.aty, %.zext2106
  %i.aui = or i32 %i.auh, %i.auf
  %i.auj = or i32 %i.aui, %i.aug
  store i32 %i.auj, ptr %i.atr, align 4
  %i.auk = icmp slt i32 %.114611805, 0            ; 3 uses
  %.01459..01458 = select i1 %i.auk, i32 %.01459, i32 %.01458
  %spec.select1764.spec.select1765 = select i1 %i.auk, i32 %spec.select1764, i32 %spec.select1765
  %.11449..11447 = select i1 %i.auk, i32 %.11449, i32 %.11447
  %.11451 = add nsw i32 %.014501807, %.11449..11447
  %.11457 = add nsw i32 %spec.select1764.spec.select1765, %.014561806
  %.21462 = add nsw i32 %.01459..01458, %.114611805
  %i.aul = add nuw nsw i32 %.014651804, 1         ; 2 uses
  %exitcond1930.not = icmp eq i32 %i.aul, %.11464
  br i1 %exitcond1930.not, label %.loopexit, label %bb.db, !llvm.loop !124

bb.dc:                                            ; preds = %.split21
  %i.aum = sub nsw i32 %3, %1
  %i.aun = tail call i32 @llvm.abs.i32(i32 %i.aum, i1 true) ; 6 uses
  %i.auo = sub nsw i32 %4, %2
  %i.aup = tail call i32 @llvm.abs.i32(i32 %i.auo, i1 true) ; 6 uses
end_hunk_3
