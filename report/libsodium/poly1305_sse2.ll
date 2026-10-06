Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/poly1305_sse2?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@poly1305_init_ext:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.fg = getelementptr i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind ssp memory(readwrite, target_mem: none) uwtable
define internal fastcc void @poly1305_blocks(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef range(i64 1, -31) %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = and i64 %i.b, 4
  %.not = icmp eq i64 %i.c, 0
  %.0717 = select i1 %.not, <2 x i64> splat (i64 16777216), <2 x i64> <i64 16777216, i64 0>
  %i.d = and i64 %i.b, 8
  %.not751 = icmp eq i64 %i.d, 0
  %.1718 = select i1 %.not751, <2 x i64> %.0717, <2 x i64> zeroinitializer ; 4 uses
  %i.e = and i64 %i.b, 1
  %.not752 = icmp eq i64 %i.e, 0
  br i1 %.not752, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 1
  %i.g = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 1
  %i.j = insertelement <2 x i64> %i.g, i64 %i.i, i64 1 ; 3 uses
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 1
  %i.m = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.n = getelementptr i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 1
  %i.p = insertelement <2 x i64> %i.m, i64 %i.o, i64 1 ; 2 uses
  %i.q = and <2 x i64> %i.j, splat (i64 67108863)
  %i.r = lshr <2 x i64> %i.j, splat (i64 26)
  %i.s = and <2 x i64> %i.r, splat (i64 67108863)
  %i.t = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.p, <2 x i64> %i.j, <2 x i64> splat (i64 12)) ; 2 uses
  %i.u = and <2 x i64> %i.t, splat (i64 67108863)
  %i.v = lshr <2 x i64> %i.t, splat (i64 26)
  %i.w = and <2 x i64> %i.v, splat (i64 67108863)
  %i.x = lshr <2 x i64> %i.p, splat (i64 40)
  %i.y = or disjoint <2 x i64> %i.x, %.1718
  %i.z = getelementptr i8, ptr %1, i64 32
  %i.aa = add i64 %2, -32
  %i.ab = or disjoint i64 %i.b, 1                 ; 2 uses
  store i64 %i.ab, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ac = load <4 x i32>, ptr %0, align 8         ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 16
  %i.ae = load <4 x i32>, ptr %i.ad, align 8      ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 32
  %i.ag = load <2 x i32>, ptr %i.af, align 8
  %i.ah = shufflevector <4 x i32> %i.ac, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ai = bitcast <4 x i32> %i.ah to <2 x i64>
  %i.aj = shufflevector <4 x i32> %i.ac, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.ak = bitcast <4 x i32> %i.aj to <2 x i64>
  %i.al = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.am = bitcast <4 x i32> %i.al to <2 x i64>
  %i.an = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.ao = bitcast <4 x i32> %i.an to <2 x i64>
  %i.ap = shufflevector <2 x i32> %i.ag, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aq = bitcast <4 x i32> %i.ap to <2 x i64>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ar = phi i64 [ %i.b, %bb.c ], [ %i.ab, %bb.b ] ; 2 uses
  %.0734 = phi <2 x i64> [ %i.aq, %bb.c ], [ %i.y, %bb.b ] ; 2 uses
  %.0730 = phi <2 x i64> [ %i.ao, %bb.c ], [ %i.w, %bb.b ] ; 2 uses
  %.0726 = phi <2 x i64> [ %i.am, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.0722 = phi <2 x i64> [ %i.ak, %bb.c ], [ %i.s, %bb.b ] ; 2 uses
  %.0719 = phi <2 x i64> [ %i.ai, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.0714 = phi i64 [ %2, %bb.c ], [ %i.aa, %bb.b ] ; 3 uses
  %.0 = phi ptr [ %1, %bb.c ], [ %i.z, %bb.b ]    ; 2 uses
  %i.as = and i64 %i.ar, 48
  %.not753 = icmp eq i64 %i.as, 0
  br i1 %.not753, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = and i64 %i.ar, 16
  %.not754 = icmp eq i64 %i.at, 0
  %i.au = getelementptr i8, ptr %0, i64 40
  %i.av = load <4 x i32>, ptr %i.au, align 8      ; 4 uses
  %i.aw = getelementptr i8, ptr %0, i64 56
  %i.ax = load i32, ptr %i.aw, align 8            ; 2 uses
  br i1 %.not754, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.ax, i64 0
  %i.az = bitcast <4 x i32> %i.ay to <2 x i64>
  %i.ba = getelementptr i8, ptr %0, i64 60
  %i.bb = load <4 x i32>, ptr %i.ba, align 4      ; 2 uses
  %i.bc = getelementptr i8, ptr %0, i64 76
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.bd, i64 0
  %i.bf = bitcast <4 x i32> %i.be to <2 x i64>
  %i.bg = shufflevector <4 x i32> %i.bb, <4 x i32> %i.av, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bh = shufflevector <4 x i32> %i.bb, <4 x i32> %i.av, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bi = shufflevector <2 x i64> %i.bf, <2 x i64> %i.az, <2 x i32> <i32 0, i32 2>
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ax, i64 0
  %i.bk = bitcast <4 x i32> %i.bj to <2 x i64>
  %i.bl = shufflevector <4 x i32> %i.av, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bm = shufflevector <4 x i32> %i.av, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0749 = phi <2 x i64> [ %i.bi, %bb.f ], [ %i.bk, %bb.g ]
  %.0744.in = phi <4 x i32> [ %i.bh, %bb.f ], [ %i.bm, %bb.g ] ; 2 uses
  %.0742.in = phi <4 x i32> [ %i.bg, %bb.f ], [ %i.bl, %bb.g ] ; 2 uses
  %i.bn = shufflevector <4 x i32> %.0742.in, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bo = shufflevector <4 x i32> %.0742.in, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.bp = shufflevector <4 x i32> %.0744.in, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bq = shufflevector <4 x i32> %.0744.in, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.br = getelementptr i8, ptr %0, i64 60
  %i.bs = load <4 x i32>, ptr %i.br, align 4      ; 4 uses
  %i.bt = getelementptr i8, ptr %0, i64 76
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = insertelement <4 x i32> poison, i32 %i.bu, i64 0
  %i.bw = shufflevector <4 x i32> %i.bs, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bx = shufflevector <4 x i32> %i.bs, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.by = shufflevector <4 x i32> %i.bs, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bz = shufflevector <4 x i32> %i.bs, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ca = shufflevector <4 x i32> %i.bv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cb = bitcast <4 x i32> %i.ca to <2 x i64>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1750 = phi <2 x i64> [ %.0749, %bb.h ], [ %i.cb, %bb.i ]
  %.0748.in = phi <4 x i32> [ %i.bq, %bb.h ], [ %i.bz, %bb.i ]
  %.0747.in = phi <4 x i32> [ %i.bp, %bb.h ], [ %i.by, %bb.i ]
  %.0746.in = phi <4 x i32> [ %i.bo, %bb.h ], [ %i.bx, %bb.i ]
  %.0745.in = phi <4 x i32> [ %i.bn, %bb.h ], [ %i.bw, %bb.i ] ; 2 uses
  %i.cc = bitcast <4 x i32> %.0746.in to <2 x i64>
  %i.cd = and <2 x i64> %i.cc, splat (i64 4294967295) ; 9 uses
  %i.ce = mul nuw nsw <2 x i64> %i.cd, splat (i64 5) ; 2 uses
  %i.cf = bitcast <4 x i32> %.0747.in to <2 x i64>
  %i.cg = and <2 x i64> %i.cf, splat (i64 4294967295) ; 7 uses
  %i.ch = mul nuw nsw <2 x i64> %i.cg, splat (i64 5) ; 2 uses
  %i.ci = bitcast <4 x i32> %.0748.in to <2 x i64>
  %i.cj = and <2 x i64> %i.ci, splat (i64 4294967295) ; 5 uses
  %i.ck = mul nuw nsw <2 x i64> %i.cj, splat (i64 5) ; 2 uses
  %i.cl = and <2 x i64> %.1750, splat (i64 4294967295) ; 3 uses
  %i.cm = mul nuw nsw <2 x i64> %i.cl, splat (i64 5) ; 2 uses
  %i.cn = icmp ugt i64 %.0714, 63
  br i1 %i.cn, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.co = getelementptr i8, ptr %0, i64 80
  %i.cp = load <4 x i32>, ptr %i.co, align 8      ; 4 uses
  %i.cq = getelementptr i8, ptr %0, i64 96
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = insertelement <4 x i32> poison, i32 %i.cr, i64 0
  %i.ct = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cu = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cv = bitcast <4 x i32> %i.cu to <2 x i64>
  %i.cw = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.cx = bitcast <4 x i32> %i.cw to <2 x i64>
  %i.cy = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.cz = bitcast <4 x i32> %i.cy to <2 x i64>
  %i.da = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.db = bitcast <4 x i32> %i.da to <2 x i64>
  %i.dc = bitcast <4 x i32> %i.cu to <2 x i64>
  %i.dd = and <2 x i64> %i.dc, splat (i64 4294967295) ; 4 uses
  %i.de = mul <2 x i64> %i.cv, splat (i64 5)
  %i.df = bitcast <4 x i32> %i.cw to <2 x i64>
  %i.dg = and <2 x i64> %i.df, splat (i64 4294967295) ; 3 uses
  %i.dh = mul <2 x i64> %i.cx, splat (i64 5)
  %i.di = bitcast <4 x i32> %i.cy to <2 x i64>
  %i.dj = and <2 x i64> %i.di, splat (i64 4294967295) ; 2 uses
  %i.dk = mul <2 x i64> %i.cz, splat (i64 5)
  %i.dl = bitcast <4 x i32> %i.da to <2 x i64>
  %i.dm = and <2 x i64> %i.dl, splat (i64 4294967295)
  %i.dn = mul <2 x i64> %i.db, splat (i64 5)
  %i.do = and <2 x i64> %i.de, splat (i64 4294967295)
  %i.dp = and <2 x i64> %i.dh, splat (i64 4294967295) ; 2 uses
  %i.dq = and <2 x i64> %i.dk, splat (i64 4294967295) ; 3 uses
  %i.dr = and <2 x i64> %i.dn, splat (i64 4294967295) ; 4 uses
  %i.ds = bitcast <4 x i32> %i.ct to <2 x i64>
  %i.dt = and <2 x i64> %i.ds, splat (i64 4294967295) ; 5 uses
  %i.du = and <2 x i64> %i.ce, splat (i64 4294967295)
  %i.dv = and <2 x i64> %i.ch, splat (i64 4294967295) ; 2 uses
  %i.dw = and <2 x i64> %i.ck, splat (i64 4294967295) ; 3 uses
  %i.dx = and <2 x i64> %i.cm, splat (i64 4294967295) ; 4 uses
  %i.dy = bitcast <4 x i32> %.0745.in to <2 x i64>
  %i.dz = and <2 x i64> %i.dy, splat (i64 4294967295) ; 5 uses
  %i.ea = and <2 x i64> %.0730, splat (i64 4294967295)
  %i.eb = and <2 x i64> %.0726, splat (i64 4294967295)
  %i.ec = and <2 x i64> %.0719, splat (i64 4294967295)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.l
  %.1765 = phi ptr [ %.0, %bb.k ], [ %i.kg, %bb.l ] ; 6 uses
  %.1715764 = phi i64 [ %.0714, %bb.k ], [ %i.kh, %bb.l ]
  %.1720763 = phi <2 x i64> [ %i.ec, %bb.k ], [ %i.ka, %bb.l ] ; 5 uses
  %.1723762 = phi <2 x i64> [ %.0722, %bb.k ], [ %i.kc, %bb.l ]
  %.1727761 = phi <2 x i64> [ %i.eb, %bb.k ], [ %i.jz, %bb.l ] ; 5 uses
  %.1731760 = phi <2 x i64> [ %i.ea, %bb.k ], [ %i.ke, %bb.l ] ; 5 uses
  %.1735759 = phi <2 x i64> [ %.0734, %bb.k ], [ %i.kf, %bb.l ]
  %i.ed = and <2 x i64> %.1735759, splat (i64 4294967295) ; 5 uses
  %i.ee = mul nuw <2 x i64> %i.ed, %i.do
  %i.ef = mul nuw <2 x i64> %.1731760, %i.dp
  %i.eg = mul nuw <2 x i64> %i.ed, %i.dp
  %i.eh = mul nuw <2 x i64> %.1731760, %i.dq
  %i.ei = mul nuw <2 x i64> %i.ed, %i.dq
  %i.ej = add <2 x i64> %i.ef, %i.ee
  %i.ek = mul nuw <2 x i64> %.1727761, %i.dq
  %i.el = mul nuw <2 x i64> %i.ed, %i.dr
  %i.em = add <2 x i64> %i.eh, %i.eg
  %i.en = and <2 x i64> %.1723762, splat (i64 4294967295) ; 5 uses
  %i.eo = mul nuw <2 x i64> %i.en, %i.dr
  %i.ep = mul nuw <2 x i64> %.1727761, %i.dr
  %i.eq = add <2 x i64> %i.ej, %i.ek
  %i.er = mul nuw <2 x i64> %.1731760, %i.dr
  %i.es = mul nuw <2 x i64> %.1731760, %i.dt
  %i.et = add <2 x i64> %i.eq, %i.eo
  %i.eu = mul nuw <2 x i64> %i.ed, %i.dt
  %i.ev = add <2 x i64> %i.em, %i.ep
  %i.ew = mul nuw <2 x i64> %.1720763, %i.dt
  %i.ex = add <2 x i64> %i.er, %i.ei
  %i.ey = mul nuw <2 x i64> %i.en, %i.dt
  %i.ez = add <2 x i64> %i.es, %i.el
  %i.fa = mul nuw <2 x i64> %.1727761, %i.dt
  %i.fb = mul nuw <2 x i64> %.1727761, %i.dd
  %i.fc = add <2 x i64> %i.et, %i.ew
  %i.fd = mul nuw <2 x i64> %.1731760, %i.dd
  %i.fe = add <2 x i64> %i.ev, %i.ey
  %i.ff = mul nuw <2 x i64> %.1720763, %i.dd
  %i.fg = add <2 x i64> %i.ex, %i.fa
  %i.fh = load i64, ptr %.1765, align 1
  %i.fi = insertelement <2 x i64> poison, i64 %i.fh, i64 0
  %i.fj = getelementptr i8, ptr %.1765, i64 16
  %i.fk = load i64, ptr %i.fj, align 1
  %i.fl = insertelement <2 x i64> %i.fi, i64 %i.fk, i64 1 ; 3 uses
  %i.fm = mul nuw <2 x i64> %i.en, %i.dd
  %i.fn = add <2 x i64> %i.ez, %i.fb
  %i.fo = mul nuw <2 x i64> %i.en, %i.dg
  %i.fp = mul nuw <2 x i64> %.1727761, %i.dg
  %i.fq = add <2 x i64> %i.fe, %i.ff
  %i.fr = getelementptr i8, ptr %.1765, i64 8
  %i.fs = load i64, ptr %i.fr, align 1
  %i.ft = insertelement <2 x i64> poison, i64 %i.fs, i64 0
  %i.fu = getelementptr i8, ptr %.1765, i64 24
  %i.fv = load i64, ptr %i.fu, align 1
  %i.fw = insertelement <2 x i64> %i.ft, i64 %i.fv, i64 1 ; 3 uses
  %i.fx = mul nuw <2 x i64> %.1720763, %i.dg
  %i.fy = add <2 x i64> %i.fg, %i.fm
  %i.fz = mul nuw <2 x i64> %.1720763, %i.dj
  %i.ga = add <2 x i64> %i.fn, %i.fo
  %i.gb = and <2 x i64> %i.fl, splat (i64 67108863) ; 5 uses
  %i.gc = mul nuw <2 x i64> %i.en, %i.dj
  %i.gd = lshr <2 x i64> %i.fl, splat (i64 26)
  %i.ge = and <2 x i64> %i.gd, splat (i64 67108863) ; 5 uses
  %i.gf = mul nuw <2 x i64> %.1720763, %i.dm
  %i.gg = add <2 x i64> %i.fy, %i.fx
  %i.gh = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.fw, <2 x i64> %i.fl, <2 x i64> splat (i64 12))
  %i.gi = add <2 x i64> %i.ga, %i.fz
  %i.gj = lshr <2 x i64> %i.fw, splat (i64 14)
  %i.gk = and <2 x i64> %i.gj, splat (i64 67108863) ; 5 uses
  %i.gl = and <2 x i64> %i.gh, splat (i64 67108863) ; 5 uses
  %i.gm = lshr <2 x i64> %i.fw, splat (i64 40)
  %i.gn = or disjoint <2 x i64> %i.gm, %.1718     ; 5 uses
  %i.go = getelementptr i8, ptr %.1765, i64 32
  %3 = load <8 x i32>, ptr %i.go, align 1         ; 2 uses
  %i.gp = shufflevector <8 x i32> %3, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.gq = shufflevector <8 x i32> %3, <8 x i32> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.gr = shufflevector <4 x i32> %i.gp, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.gs = bitcast <4 x i32> %i.gr to <2 x i64>
  %i.gt = shufflevector <4 x i32> %i.gp, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.gu = bitcast <4 x i32> %i.gt to <2 x i64>
  %i.gv = shufflevector <4 x i32> %i.gq, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.gw = bitcast <4 x i32> %i.gv to <2 x i64>
  %i.gx = shufflevector <4 x i32> %i.gq, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.gy = bitcast <4 x i32> %i.gx to <2 x i64>
  %i.gz = shl nuw nsw <2 x i64> %i.gu, splat (i64 6)
  %i.ha = shl nuw nsw <2 x i64> %i.gw, splat (i64 12)
  %i.hb = shl nuw nsw <2 x i64> %i.gy, splat (i64 18)
  %i.hc = mul nuw nsw <2 x i64> %i.gn, %i.du
  %i.hd = mul nuw nsw <2 x i64> %i.gk, %i.dv
  %i.he = mul nuw nsw <2 x i64> %i.gn, %i.dv
  %i.hf = mul nuw nsw <2 x i64> %i.gk, %i.dw
  %i.hg = mul nuw nsw <2 x i64> %i.gn, %i.dw
  %i.hh = mul nuw nsw <2 x i64> %i.gl, %i.dw
  %i.hi = mul nuw nsw <2 x i64> %i.gn, %i.dx
  %i.hj = mul nuw nsw <2 x i64> %i.ge, %i.dx
  %i.hk = mul nuw nsw <2 x i64> %i.gl, %i.dx
  %i.hl = mul nuw nsw <2 x i64> %i.gk, %i.dx
  %i.hm = mul nuw nsw <2 x i64> %i.gk, %i.dz
  %i.hn = mul nuw nsw <2 x i64> %i.gn, %i.dz
  %i.ho = mul nuw nsw <2 x i64> %i.gb, %i.dz
  %i.hp = mul nuw nsw <2 x i64> %i.ge, %i.dz
  %i.hq = mul nuw nsw <2 x i64> %i.gl, %i.dz
  %i.hr = mul nuw nsw <2 x i64> %i.gl, %i.cd
  %i.hs = add <2 x i64> %i.fc, %i.ho
  %i.ht = add <2 x i64> %i.hs, %i.hj
  %i.hu = add <2 x i64> %i.ht, %i.hc
  %i.hv = add <2 x i64> %i.hu, %i.hd
  %i.hw = add <2 x i64> %i.hv, %i.hh
  %i.hx = add <2 x i64> %i.hw, %i.gs              ; 2 uses
  %i.hy = mul nuw nsw <2 x i64> %i.gk, %i.cd
  %i.hz = mul nuw nsw <2 x i64> %i.gb, %i.cd
  %i.ia = mul nuw nsw <2 x i64> %i.ge, %i.cd
  %i.ib = mul nuw nsw <2 x i64> %i.ge, %i.cg
  %i.ic = mul nuw nsw <2 x i64> %i.gl, %i.cg
  %i.id = mul nuw nsw <2 x i64> %i.gb, %i.cg
  %i.ie = mul nuw nsw <2 x i64> %i.gb, %i.cj
  %i.if = mul nuw nsw <2 x i64> %i.ge, %i.cj
  %i.ig = mul nuw nsw <2 x i64> %i.gb, %i.cl
  %i.ih = add <2 x i64> %i.gi, %i.ie
  %i.ii = add <2 x i64> %i.ih, %i.ib
  %i.ij = add <2 x i64> %i.ii, %i.hi
  %i.ik = add <2 x i64> %i.ij, %i.hm
  %i.il = add <2 x i64> %i.ik, %i.hr
  %i.im = add <2 x i64> %i.il, %i.hb              ; 2 uses
  %i.in = lshr <2 x i64> %i.hx, splat (i64 26)
  %i.io = lshr <2 x i64> %i.im, splat (i64 26)
  %i.ip = and <2 x i64> %i.hx, splat (i64 67108863)
  %i.iq = and <2 x i64> %i.im, splat (i64 67108863)
  %i.ir = add <2 x i64> %i.fq, %i.hz
  %i.is = add <2 x i64> %i.ir, %i.hp
  %i.it = add <2 x i64> %i.is, %i.he
  %i.iu = add <2 x i64> %i.it, %i.hf
  %i.iv = add <2 x i64> %i.iu, %i.hk
  %i.iw = add <2 x i64> %i.iv, %i.gz
  %i.ix = add <2 x i64> %i.iw, %i.in              ; 2 uses
  %i.iy = add nuw <2 x i64> %i.eu, %.1718
  %i.iz = add <2 x i64> %i.iy, %i.fd
  %i.ja = add <2 x i64> %i.iz, %i.fp
  %i.jb = add <2 x i64> %i.ja, %i.gc
  %i.jc = add <2 x i64> %i.jb, %i.gf
  %i.jd = add <2 x i64> %i.jc, %i.ig
  %i.je = add <2 x i64> %i.jd, %i.if
  %i.jf = add <2 x i64> %i.je, %i.hn
  %i.jg = add <2 x i64> %i.jf, %i.hy
  %i.jh = add <2 x i64> %i.jg, %i.ic
  %i.ji = add <2 x i64> %i.jh, %i.io              ; 2 uses
  %i.jj = lshr <2 x i64> %i.ix, splat (i64 26)
  %i.jk = lshr <2 x i64> %i.ji, splat (i64 26)
  %i.jl = and <2 x i64> %i.ix, splat (i64 67108863)
  %i.jm = and <2 x i64> %i.ji, splat (i64 67108863)
  %i.jn = add <2 x i64> %i.gg, %i.id
  %i.jo = add <2 x i64> %i.jn, %i.ia
  %i.jp = add <2 x i64> %i.jo, %i.hg
  %i.jq = add <2 x i64> %i.jp, %i.hl
  %i.jr = add <2 x i64> %i.jq, %i.hq
  %i.js = add <2 x i64> %i.jr, %i.ha
  %i.jt = add <2 x i64> %i.js, %i.jj              ; 2 uses
  %i.ju = and <2 x i64> %i.jk, splat (i64 4294967295)
  %i.jv = mul nuw nsw <2 x i64> %i.ju, splat (i64 5)
  %i.jw = add nuw nsw <2 x i64> %i.jv, %i.ip      ; 2 uses
  %i.jx = lshr <2 x i64> %i.jt, splat (i64 26)
  %i.jy = lshr <2 x i64> %i.jw, splat (i64 26)
  %i.jz = and <2 x i64> %i.jt, splat (i64 67108863) ; 2 uses
  %i.ka = and <2 x i64> %i.jw, splat (i64 67108863) ; 2 uses
  %i.kb = add nuw nsw <2 x i64> %i.jx, %i.iq      ; 2 uses
  %i.kc = add nuw nsw <2 x i64> %i.jy, %i.jl      ; 2 uses
  %i.kd = lshr <2 x i64> %i.kb, splat (i64 26)
  %i.ke = and <2 x i64> %i.kb, splat (i64 67108863) ; 2 uses
  %i.kf = add nuw nsw <2 x i64> %i.kd, %i.jm      ; 2 uses
  %i.kg = getelementptr i8, ptr %.1765, i64 64    ; 2 uses
  %i.kh = add i64 %.1715764, -64                  ; 3 uses
  %i.ki = icmp ugt i64 %i.kh, 63
  br i1 %i.ki, label %bb.l, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %bb.l, %bb.j
  %.2736 = phi <2 x i64> [ %.0734, %bb.j ], [ %i.kf, %bb.l ] ; 2 uses
  %.2732 = phi <2 x i64> [ %.0730, %bb.j ], [ %i.ke, %bb.l ] ; 2 uses
  %.2728 = phi <2 x i64> [ %.0726, %bb.j ], [ %i.jz, %bb.l ] ; 2 uses
  %.2724 = phi <2 x i64> [ %.0722, %bb.j ], [ %i.kc, %bb.l ] ; 2 uses
  %.2721 = phi <2 x i64> [ %.0719, %bb.j ], [ %i.ka, %bb.l ] ; 2 uses
  %.2716 = phi i64 [ %.0714, %bb.j ], [ %i.kh, %bb.l ]
  %.2 = phi ptr [ %.0, %bb.j ], [ %i.kg, %bb.l ]  ; 3 uses
  %i.kj = icmp samesign ugt i64 %.2716, 31
  br i1 %i.kj, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.loopexit
  %i.kk = and <2 x i64> %.2736, splat (i64 4294967295) ; 5 uses
  %i.kl = and <2 x i64> %i.ce, splat (i64 4294967295)
  %i.km = mul nuw <2 x i64> %i.kk, %i.kl
  %i.kn = and <2 x i64> %.2732, splat (i64 4294967295) ; 5 uses
  %i.ko = and <2 x i64> %i.ch, splat (i64 4294967295) ; 2 uses
  %i.kp = mul nuw <2 x i64> %i.kn, %i.ko
  %i.kq = mul nuw <2 x i64> %i.kk, %i.ko
  %i.kr = and <2 x i64> %i.ck, splat (i64 4294967295) ; 3 uses
  %i.ks = mul nuw <2 x i64> %i.kn, %i.kr
  %i.kt = mul nuw <2 x i64> %i.kk, %i.kr
  %i.ku = add <2 x i64> %i.kp, %i.km
  %i.kv = and <2 x i64> %.2728, splat (i64 4294967295) ; 5 uses
  %i.kw = mul nuw <2 x i64> %i.kv, %i.kr
  %i.kx = and <2 x i64> %i.cm, splat (i64 4294967295) ; 4 uses
  %i.ky = mul nuw <2 x i64> %i.kk, %i.kx
  %i.kz = add <2 x i64> %i.ks, %i.kq
  %i.la = and <2 x i64> %.2724, splat (i64 4294967295) ; 5 uses
  %i.lb = mul nuw <2 x i64> %i.la, %i.kx
  %i.lc = mul nuw <2 x i64> %i.kv, %i.kx
  %i.ld = add <2 x i64> %i.ku, %i.kw
  %i.le = mul nuw <2 x i64> %i.kn, %i.kx
  %i.lf = bitcast <4 x i32> %.0745.in to <2 x i64>
  %i.lg = and <2 x i64> %i.lf, splat (i64 4294967295) ; 5 uses
  %i.lh = mul nuw <2 x i64> %i.kn, %i.lg
  %i.li = add <2 x i64> %i.ld, %i.lb
  %i.lj = mul nuw <2 x i64> %i.kk, %i.lg
  %i.lk = add <2 x i64> %i.kz, %i.lc
  %i.ll = and <2 x i64> %.2721, splat (i64 4294967295) ; 5 uses
  %i.lm = mul nuw <2 x i64> %i.ll, %i.lg
  %i.ln = add <2 x i64> %i.le, %i.kt
  %i.lo = mul nuw <2 x i64> %i.la, %i.lg
  %i.lp = add <2 x i64> %i.lh, %i.ky
  %i.lq = mul nuw <2 x i64> %i.kv, %i.lg
  %i.lr = mul nuw <2 x i64> %i.kv, %i.cd
  %i.ls = add <2 x i64> %i.li, %i.lm              ; 2 uses
  %i.lt = mul nuw <2 x i64> %i.kn, %i.cd
  %i.lu = add <2 x i64> %i.lk, %i.lo
  %i.lv = mul nuw <2 x i64> %i.ll, %i.cd
  %i.lw = add <2 x i64> %i.ln, %i.lq
  %i.lx = mul nuw <2 x i64> %i.la, %i.cd
  %i.ly = add <2 x i64> %i.lp, %i.lr
  %i.lz = mul nuw <2 x i64> %i.la, %i.cg
  %i.ma = add <2 x i64> %i.lt, %i.lj
  %i.mb = mul nuw <2 x i64> %i.kv, %i.cg
  %i.mc = add <2 x i64> %i.lu, %i.lv              ; 2 uses
  %i.md = mul nuw <2 x i64> %i.ll, %i.cg
  %i.me = add <2 x i64> %i.lw, %i.lx
  %i.mf = mul nuw <2 x i64> %i.ll, %i.cj
  %i.mg = add <2 x i64> %i.ly, %i.lz
  %i.mh = mul nuw <2 x i64> %i.la, %i.cj
  %i.mi = add <2 x i64> %i.ma, %i.mb
  %i.mj = mul nuw <2 x i64> %i.ll, %i.cl
  %i.mk = add <2 x i64> %i.me, %i.md              ; 2 uses
  %i.ml = add <2 x i64> %i.mg, %i.mf              ; 2 uses
  %i.mm = add <2 x i64> %i.mi, %i.mh
  %i.mn = add <2 x i64> %i.mm, %i.mj              ; 2 uses
  %.not755 = icmp eq ptr %.2, null
  br i1 %.not755, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %4 = load <8 x i32>, ptr %.2, align 1           ; 2 uses
  %i.mo = shufflevector <8 x i32> %4, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.mp = shufflevector <8 x i32> %4, <8 x i32> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.mq = shufflevector <4 x i32> %i.mo, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.mr = bitcast <4 x i32> %i.mq to <2 x i64>
  %i.ms = shufflevector <4 x i32> %i.mo, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.mt = bitcast <4 x i32> %i.ms to <2 x i64>
  %i.mu = shufflevector <4 x i32> %i.mp, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.mv = bitcast <4 x i32> %i.mu to <2 x i64>
  %i.mw = shufflevector <4 x i32> %i.mp, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.mx = bitcast <4 x i32> %i.mw to <2 x i64>
  %i.my = shl nuw nsw <2 x i64> %i.mt, splat (i64 6)
  %i.mz = shl nuw nsw <2 x i64> %i.mv, splat (i64 12)
  %i.na = shl nuw nsw <2 x i64> %i.mx, splat (i64 18)
  %i.nb = add <2 x i64> %i.ls, %i.mr
  %i.nc = add <2 x i64> %i.my, %i.mc
  %i.nd = add <2 x i64> %i.mz, %i.mk
  %i.ne = add <2 x i64> %i.na, %i.ml
  %i.nf = add <2 x i64> %i.mn, %.1718
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1743 = phi <2 x i64> [ %i.nf, %bb.n ], [ %i.mn, %bb.m ]
  %.0741 = phi <2 x i64> [ %i.ne, %bb.n ], [ %i.ml, %bb.m ] ; 2 uses
  %.0740 = phi <2 x i64> [ %i.nd, %bb.n ], [ %i.mk, %bb.m ]
  %.0739 = phi <2 x i64> [ %i.nc, %bb.n ], [ %i.mc, %bb.m ]
  %.0738 = phi <2 x i64> [ %i.nb, %bb.n ], [ %i.ls, %bb.m ] ; 2 uses
  %i.ng = lshr <2 x i64> %.0738, splat (i64 26)
  %i.nh = lshr <2 x i64> %.0741, splat (i64 26)
  %i.ni = and <2 x i64> %.0738, splat (i64 67108863)
  %i.nj = and <2 x i64> %.0741, splat (i64 67108863)
  %i.nk = add <2 x i64> %i.ng, %.0739             ; 2 uses
  %i.nl = add <2 x i64> %i.nh, %.1743             ; 2 uses
  %i.nm = lshr <2 x i64> %i.nk, splat (i64 26)
  %i.nn = lshr <2 x i64> %i.nl, splat (i64 26)
  %i.no = and <2 x i64> %i.nk, splat (i64 67108863)
  %i.np = and <2 x i64> %i.nl, splat (i64 67108863)
  %i.nq = add <2 x i64> %i.nm, %.0740             ; 2 uses
  %i.nr = and <2 x i64> %i.nn, splat (i64 4294967295)
  %i.ns = mul nuw nsw <2 x i64> %i.nr, splat (i64 5)
  %i.nt = add nuw nsw <2 x i64> %i.ns, %i.ni      ; 2 uses
  %i.nu = lshr <2 x i64> %i.nq, splat (i64 26)
  %i.nv = lshr <2 x i64> %i.nt, splat (i64 26)
  %i.nw = and <2 x i64> %i.nq, splat (i64 67108863)
  %i.nx = and <2 x i64> %i.nt, splat (i64 67108863)
  %i.ny = add nuw nsw <2 x i64> %i.nu, %i.nj      ; 2 uses
  %i.nz = add nuw nsw <2 x i64> %i.nv, %i.no
  %i.oa = lshr <2 x i64> %i.ny, splat (i64 26)
  %i.ob = and <2 x i64> %i.ny, splat (i64 67108863)
  %i.oc = add nuw nsw <2 x i64> %i.oa, %i.np
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit
  %.3737 = phi <2 x i64> [ %i.oc, %bb.o ], [ %.2736, %.loopexit ] ; 3 uses
  %.3733 = phi <2 x i64> [ %i.ob, %bb.o ], [ %.2732, %.loopexit ] ; 3 uses
  %.3729 = phi <2 x i64> [ %i.nw, %bb.o ], [ %.2728, %.loopexit ] ; 3 uses
  %.3725 = phi <2 x i64> [ %i.nz, %bb.o ], [ %.2724, %.loopexit ] ; 3 uses
  %.3 = phi <2 x i64> [ %i.nx, %bb.o ], [ %.2721, %.loopexit ] ; 3 uses
  %.not756 = icmp eq ptr %.2, null
  br i1 %.not756, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.od = bitcast <2 x i64> %.3 to <4 x i32>
  %i.oe = shufflevector <4 x i32> %i.od, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.of = bitcast <4 x i32> %i.oe to <2 x i64>
  %i.og = bitcast <2 x i64> %.3725 to <4 x i32>
  %i.oh = shufflevector <4 x i32> %i.og, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.oi = bitcast <4 x i32> %i.oh to <2 x i64>
  %i.oj = bitcast <2 x i64> %.3729 to <4 x i32>
  %i.ok = shufflevector <4 x i32> %i.oj, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ol = bitcast <4 x i32> %i.ok to <2 x i64>
  %i.om = bitcast <2 x i64> %.3733 to <4 x i32>
  %i.on = shufflevector <4 x i32> %i.om, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.oo = bitcast <4 x i32> %i.on to <2 x i64>
  %i.op = bitcast <2 x i64> %.3737 to <4 x i32>
  %i.oq = shufflevector <4 x i32> %i.op, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.or = bitcast <4 x i32> %i.oq to <2 x i64>
  %i.os = shufflevector <2 x i64> %i.of, <2 x i64> %i.oi, <2 x i32> <i32 0, i32 2>
  %i.ot = shufflevector <2 x i64> %i.ol, <2 x i64> %i.oo, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.os, ptr %0, align 8
  %i.ou = getelementptr i8, ptr %0, i64 16
  store <2 x i64> %i.ot, ptr %i.ou, align 8
  %i.ov = getelementptr i8, ptr %0, i64 32
  %i.ow = extractelement <2 x i64> %i.or, i64 0
  store i64 %i.ow, ptr %i.ov, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ox = shufflevector <2 x i64> %.3, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.oy = add <2 x i64> %.3, %i.ox
  %i.oz = shufflevector <2 x i64> %.3725, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pa = add <2 x i64> %.3725, %i.oz
  %i.pb = shufflevector <2 x i64> %.3729, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pc = add <2 x i64> %.3729, %i.pb
  %i.pd = shufflevector <2 x i64> %.3733, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pe = add <2 x i64> %.3733, %i.pd
  %i.pf = shufflevector <2 x i64> %.3737, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pg = add <2 x i64> %.3737, %i.pf
  %i.ph = bitcast <2 x i64> %i.oy to <4 x i32>
  %i.pi = extractelement <4 x i32> %i.ph, i64 0   ; 2 uses
  %i.pj = lshr i32 %i.pi, 26
  %i.pk = and i32 %i.pi, 67108863
  %i.pl = bitcast <2 x i64> %i.pa to <4 x i32>
  %i.pm = extractelement <4 x i32> %i.pl, i64 0
  %i.pn = add i32 %i.pj, %i.pm                    ; 2 uses
  %i.po = lshr i32 %i.pn, 26
  %i.pp = and i32 %i.pn, 67108863
  %i.pq = bitcast <2 x i64> %i.pc to <4 x i32>
  %i.pr = extractelement <4 x i32> %i.pq, i64 0
  %i.ps = add i32 %i.po, %i.pr                    ; 2 uses
  %i.pt = lshr i32 %i.ps, 26
  %i.pu = and i32 %i.ps, 67108863
  %i.pv = bitcast <2 x i64> %i.pe to <4 x i32>
  %i.pw = extractelement <4 x i32> %i.pv, i64 0
  %i.px = add i32 %i.pt, %i.pw                    ; 2 uses
  %i.py = lshr i32 %i.px, 26
  %i.pz = and i32 %i.px, 67108863
  %i.qa = bitcast <2 x i64> %i.pg to <4 x i32>
  %i.qb = extractelement <4 x i32> %i.qa, i64 0
  %i.qc = add i32 %i.py, %i.qb
  %i.qd = zext nneg i32 %i.pk to i64
  %i.qe = zext nneg i32 %i.pp to i64              ; 2 uses
  %i.qf = shl nuw nsw i64 %i.qe, 26
  %.masked = and i64 %i.qf, 17592118935552
  %i.qg = or disjoint i64 %.masked, %i.qd
  %i.qh = lshr i64 %i.qe, 18
  %i.qi = zext nneg i32 %i.pu to i64
  %i.qj = shl nuw nsw i64 %i.qi, 8
  %i.qk = or disjoint i64 %i.qj, %i.qh
  %i.ql = zext nneg i32 %i.pz to i64              ; 2 uses
  %i.qm = shl nuw nsw i64 %i.ql, 34
  %.masked757 = and i64 %i.qm, 17575006175232
  %i.qn = or disjoint i64 %i.qk, %.masked757
  %i.qo = lshr i64 %i.ql, 10
  %i.qp = zext i32 %i.qc to i64                   ; 2 uses
  %i.qq = shl nuw nsw i64 %i.qp, 16
  %i.qr = lshr i64 %i.qp, 26
  %.masked758 = and i64 %i.qq, 4398046445568
  %i.qs = or disjoint i64 %.masked758, %i.qo
  %i.qt = mul nuw nsw i64 %i.qr, 5
  %i.qu = add nuw nsw i64 %i.qt, %i.qg            ; 2 uses
  %i.qv = lshr i64 %i.qu, 44
  %i.qw = and i64 %i.qu, 17592186044415
  %i.qx = add nuw nsw i64 %i.qn, %i.qv            ; 2 uses
  %i.qy = lshr i64 %i.qx, 44
  %i.qz = and i64 %i.qx, 17592186044415
  %i.ra = add nuw nsw i64 %i.qy, %i.qs            ; 3 uses
  %i.rb = lshr i64 %i.ra, 42
  %i.rc = and i64 %i.ra, 4398046511103
  %i.rd = mul nuw nsw i64 %i.rb, 5
  %i.re = add nuw nsw i64 %i.rd, %i.qw            ; 2 uses
  %i.rf = lshr i64 %i.re, 44
  %i.rg = and i64 %i.re, 17592186044415           ; 2 uses
  %i.rh = add nuw nsw i64 %i.rf, %i.qz            ; 2 uses
  %i.ri = add nuw nsw i64 %i.rg, 5                ; 2 uses
  %i.rj = lshr i64 %i.ri, 44
  %i.rk = add nuw nsw i64 %i.rj, %i.rh            ; 2 uses
  %i.rl = lshr i64 %i.rk, 44
  %i.rm = or i64 %i.ra, -4398046511104
  %i.rn = add nsw i64 %i.rm, %i.rl                ; 2 uses
  %i.ro = load volatile i64, ptr @optblocker_u64, align 8
  %i.rp = lshr i64 %i.rn, 63
  %i.rq = lshr i64 %i.ro, 2
  %i.rr = xor i64 %i.rq, %i.rp                    ; 2 uses
  %i.rs = add nsw i64 %i.rr, -1                   ; 2 uses
  %i.rt = sub nsw i64 0, %i.rr                    ; 3 uses
  %i.ru = and i64 %i.rg, %i.rt
  %i.rv = and i64 %i.rs, 17592186044415           ; 2 uses
  %i.rw = and i64 %i.rv, %i.ri
  %i.rx = or i64 %i.ru, %i.rw
  %i.ry = and i64 %i.rh, %i.rt
  %i.rz = and i64 %i.rv, %i.rk
  %i.sa = or i64 %i.ry, %i.rz
  %i.sb = and i64 %i.rc, %i.rt
  %i.sc = and i64 %i.rs, %i.rn
  %i.sd = or i64 %i.sc, %i.sb
  store i64 %i.rx, ptr %0, align 8
  %i.se = getelementptr i8, ptr %0, i64 8
  store i64 %i.sa, ptr %i.se, align 8
  %i.sf = getelementptr i8, ptr %0, i64 16
  store i64 %i.sd, ptr %i.sf, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc void @poly1305_finish_ext(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 8 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = and i64 %2, 16
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load <2 x i64>, ptr %1, align 1
end_hunk_0
