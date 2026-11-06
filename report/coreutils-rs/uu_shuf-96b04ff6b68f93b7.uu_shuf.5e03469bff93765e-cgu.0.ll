Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_shuf-96b04ff6b68f93b7.uu_shuf.5e03469bff93765e-cgu.0?download=true
inline.NumInlined: 1089
inline.NumDeleted: 516
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvNtNtCs8rkZRxrAZIZ_6keccak8backends4soft8keccak_pyKj18_ECs84qwSrTN5pO_7uu_shuf:bb.a
  %i.at = phi i64 [ %.promoted59, %bb.a ], [ %i.gv, %bb.b ] ; 2 uses
  %i.au = phi i64 [ %.promoted60, %bb.a ], [ %i.eq, %bb.b ] ; 2 uses
  %i.av = phi i64 [ %.promoted61, %bb.a ], [ %i.ff, %bb.b ] ; 2 uses
  %i.aw = phi i64 [ %.promoted62, %bb.a ], [ %i.fu, %bb.b ] ; 2 uses
  %i.ax = phi i64 [ %.promoted63, %bb.a ], [ %i.gj, %bb.b ] ; 2 uses
  %i.ay = phi i64 [ %.promoted64, %bb.a ], [ %i.gy, %bb.b ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.537.0..sroa_idx, i64 %i.z
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !174, !noundef !5
  %i.bb = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %i.bc = xor i64 %i.ab, %i.aa
  %i.bd = xor i64 %i.ac, %i.bc
  %i.be = xor i64 %i.ad, %i.bd
  %i.bf = xor i64 %i.ae, %i.be                    ; 3 uses
  %i.bg = xor i64 %i.ag, %i.af
  %i.bh = xor i64 %i.ah, %i.bg
  %i.bi = xor i64 %i.ai, %i.bh
  %i.bj = xor i64 %i.aj, %i.bi                    ; 3 uses
  %i.bk = xor i64 %i.al, %i.ak
  %i.bl = xor i64 %i.am, %i.bk
  %i.bm = xor i64 %i.an, %i.bl
  %i.bn = xor i64 %i.ao, %i.bm                    ; 3 uses
  %i.bo = xor i64 %i.aq, %i.ap
  %i.bp = xor i64 %i.ar, %i.bo
  %i.bq = xor i64 %i.as, %i.bp
  %i.br = xor i64 %i.at, %i.bq                    ; 3 uses
  %i.bs = xor i64 %i.av, %i.au
  %i.bt = xor i64 %i.aw, %i.bs
  %i.bu = xor i64 %i.ax, %i.bt
  %i.bv = xor i64 %i.ay, %i.bu                    ; 3 uses
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 1)
  %i.bx = xor i64 %i.bv, %i.bw                    ; 5 uses
  %i.by = xor i64 %i.bx, %i.aa                    ; 3 uses
  %i.bz = xor i64 %i.bx, %i.ab                    ; 2 uses
  %i.ca = xor i64 %i.bx, %i.ac                    ; 2 uses
  %i.cb = xor i64 %i.bx, %i.ad                    ; 2 uses
  %i.cc = xor i64 %i.bx, %i.ae                    ; 2 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 1)
  %i.ce = xor i64 %i.cd, %i.bf                    ; 5 uses
  %i.cf = xor i64 %i.ce, %i.af                    ; 2 uses
  %i.cg = xor i64 %i.ce, %i.ag                    ; 2 uses
  %i.ch = xor i64 %i.ce, %i.ah                    ; 2 uses
  %i.ci = xor i64 %i.ce, %i.ai                    ; 2 uses
  %i.cj = xor i64 %i.ce, %i.aj                    ; 2 uses
  %i.ck = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 1)
  %i.cl = xor i64 %i.ck, %i.bj                    ; 5 uses
  %i.cm = xor i64 %i.cl, %i.ak                    ; 2 uses
  %i.cn = xor i64 %i.cl, %i.al                    ; 2 uses
  %i.co = xor i64 %i.cl, %i.am                    ; 2 uses
  %i.cp = xor i64 %i.cl, %i.an                    ; 2 uses
  %i.cq = xor i64 %i.cl, %i.ao                    ; 2 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 1)
  %i.cs = xor i64 %i.cr, %i.bn                    ; 5 uses
  %i.ct = xor i64 %i.cs, %i.ap                    ; 2 uses
  %i.cu = xor i64 %i.cs, %i.aq                    ; 2 uses
  %i.cv = xor i64 %i.cs, %i.ar                    ; 2 uses
  %i.cw = xor i64 %i.cs, %i.as                    ; 2 uses
  %i.cx = xor i64 %i.cs, %i.at                    ; 2 uses
  %i.cy = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 1)
  %i.cz = xor i64 %i.br, %i.cy                    ; 5 uses
  %i.da = xor i64 %i.au, %i.cz                    ; 2 uses
  %i.db = xor i64 %i.av, %i.cz                    ; 2 uses
  %i.dc = xor i64 %i.aw, %i.cz                    ; 2 uses
  %i.dd = xor i64 %i.ax, %i.cz                    ; 2 uses
  %i.de = xor i64 %i.ay, %i.cz                    ; 2 uses
  %i.df = tail call noundef i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 1) ; 3 uses
  %i.dg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 3) ; 3 uses
  %i.dh = tail call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 6) ; 3 uses
  %i.di = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 10) ; 3 uses
  %i.dj = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 15) ; 3 uses
  %i.dk = tail call noundef i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 21) ; 3 uses
  %i.dl = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 28) ; 3 uses
  %i.dm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 36) ; 3 uses
  %i.dn = tail call noundef i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 45) ; 3 uses
  %i.do = tail call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 55) ; 3 uses
  %i.dp = tail call noundef i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 2) ; 3 uses
  %i.dq = tail call noundef i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 14) ; 3 uses
  %i.dr = tail call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 27) ; 3 uses
  %i.ds = tail call noundef i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 41) ; 3 uses
  %i.dt = tail call noundef i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 56) ; 3 uses
  %i.du = tail call noundef i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 8) ; 3 uses
  %i.dv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 25) ; 3 uses
  %i.dw = tail call noundef i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 43) ; 3 uses
  %i.dx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 62) ; 3 uses
  %i.dy = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 18) ; 3 uses
  %i.dz = tail call noundef i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 39) ; 3 uses
  %i.ea = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 61) ; 3 uses
  %i.eb = tail call noundef i64 @llvm.fshl.i64(i64 %i.db, i64 %i.db, i64 20) ; 3 uses
  %i.ec = tail call noundef i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 44) ; 3 uses
  %i.ed = xor i64 %i.ec, -1
  %i.ee = and i64 %i.dw, %i.ed
  %i.ef = xor i64 %i.dw, -1
  %i.eg = and i64 %i.dk, %i.ef
  %i.eh = xor i64 %i.eg, %i.ec                    ; 2 uses
  %i.ei = xor i64 %i.dk, -1
  %i.ej = and i64 %i.dq, %i.ei
  %i.ek = xor i64 %i.ej, %i.dw                    ; 2 uses
  %i.el = xor i64 %i.dq, -1
  %i.em = and i64 %i.by, %i.el
  %i.en = xor i64 %i.em, %i.dk                    ; 2 uses
  %i.eo = xor i64 %i.by, -1
  %i.ep = and i64 %i.ec, %i.eo
  %i.eq = xor i64 %i.dq, %i.ep                    ; 2 uses
  %i.er = xor i64 %i.eb, -1
  %i.es = and i64 %i.dg, %i.er
  %i.et = xor i64 %i.es, %i.dl                    ; 2 uses
  %i.eu = xor i64 %i.dg, -1
  %i.ev = and i64 %i.dn, %i.eu
  %i.ew = xor i64 %i.ev, %i.eb                    ; 2 uses
  %i.ex = xor i64 %i.dn, -1
  %i.ey = and i64 %i.ea, %i.ex
  %i.ez = xor i64 %i.ey, %i.dg                    ; 2 uses
  %i.fa = xor i64 %i.ea, -1
  %i.fb = and i64 %i.dl, %i.fa
  %i.fc = xor i64 %i.fb, %i.dn                    ; 2 uses
  %i.fd = xor i64 %i.dl, -1
  %i.fe = and i64 %i.eb, %i.fd
  %i.ff = xor i64 %i.ea, %i.fe                    ; 2 uses
  %i.fg = xor i64 %i.dh, -1
  %i.fh = and i64 %i.dv, %i.fg
  %i.fi = xor i64 %i.fh, %i.df                    ; 2 uses
  %i.fj = xor i64 %i.dv, -1
  %i.fk = and i64 %i.du, %i.fj
  %i.fl = xor i64 %i.fk, %i.dh                    ; 2 uses
  %i.fm = xor i64 %i.du, -1
  %i.fn = and i64 %i.dy, %i.fm
  %i.fo = xor i64 %i.fn, %i.dv                    ; 2 uses
  %i.fp = xor i64 %i.dy, -1
  %i.fq = and i64 %i.df, %i.fp
  %i.fr = xor i64 %i.fq, %i.du                    ; 2 uses
  %i.fs = xor i64 %i.df, -1
  %i.ft = and i64 %i.dh, %i.fs
  %i.fu = xor i64 %i.dy, %i.ft                    ; 2 uses
  %i.fv = xor i64 %i.dm, -1
  %i.fw = and i64 %i.di, %i.fv
  %i.fx = xor i64 %i.fw, %i.dr                    ; 2 uses
  %i.fy = xor i64 %i.di, -1
  %i.fz = and i64 %i.dj, %i.fy
  %i.ga = xor i64 %i.fz, %i.dm                    ; 2 uses
  %i.gb = xor i64 %i.dj, -1
  %i.gc = and i64 %i.dt, %i.gb
  %i.gd = xor i64 %i.gc, %i.di                    ; 2 uses
  %i.ge = xor i64 %i.dt, -1
  %i.gf = and i64 %i.dr, %i.ge
  %i.gg = xor i64 %i.gf, %i.dj                    ; 2 uses
  %i.gh = xor i64 %i.dr, -1
  %i.gi = and i64 %i.dm, %i.gh
  %i.gj = xor i64 %i.dt, %i.gi                    ; 2 uses
  %i.gk = xor i64 %i.do, -1
  %i.gl = and i64 %i.dz, %i.gk
  %i.gm = xor i64 %i.gl, %i.dx                    ; 2 uses
  %i.gn = xor i64 %i.dz, -1
  %i.go = and i64 %i.ds, %i.gn
  %i.gp = xor i64 %i.go, %i.do                    ; 2 uses
  %i.gq = xor i64 %i.ds, -1
  %i.gr = and i64 %i.dp, %i.gq
  %i.gs = xor i64 %i.gr, %i.dz                    ; 2 uses
  %i.gt = xor i64 %i.dp, -1
  %i.gu = and i64 %i.dx, %i.gt
  %i.gv = xor i64 %i.gu, %i.ds                    ; 2 uses
  %i.gw = xor i64 %i.dx, -1
  %i.gx = and i64 %i.do, %i.gw
  %i.gy = xor i64 %i.dp, %i.gx                    ; 2 uses
  %i.gz = xor i64 %i.ee, %i.ba
  %i.ha = xor i64 %i.gz, %i.by                    ; 2 uses
  %.not.i = icmp eq i64 %i.bb, 24
  br i1 %.not.i, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  store i64 %i.ha, ptr %0, align 8
  store i64 %i.gd, ptr %i.n, align 8
  store i64 %i.gg, ptr %i.s, align 8
  store i64 %i.ga, ptr %i.i, align 8
  store i64 %i.gp, ptr %i.j, align 8
  store i64 %i.gy, ptr %i.y, align 8
  store i64 %i.gv, ptr %i.t, align 8
  store i64 %i.gm, ptr %i.e, align 8
  store i64 %i.gs, ptr %i.o, align 8
  store i64 %i.eh, ptr %i.f, align 8
  store i64 %i.ek, ptr %i.k, align 8
  store i64 %i.en, ptr %i.p, align 8
  store i64 %i.eq, ptr %i.u, align 8
  store i64 %i.et, ptr %i.b, align 8
  store i64 %i.ew, ptr %i.g, align 8
  store i64 %i.ez, ptr %i.l, align 8
  store i64 %i.fc, ptr %i.q, align 8
  store i64 %i.ff, ptr %i.v, align 8
  store i64 %i.fi, ptr %i.c, align 8
  store i64 %i.fl, ptr %i.h, align 8
  store i64 %i.fo, ptr %i.m, align 8
  store i64 %i.fr, ptr %i.r, align 8
  store i64 %i.fu, ptr %i.w, align 8
  store i64 %i.fx, ptr %i.d, align 8
  store i64 %i.gj, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCsjXcachvKq5y_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #3 {
.preheader.preheader:
  %.sroa.0.0.copyload.i = load <2 x i64>, ptr %0, align 4, !noalias !187
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i18 = load <2 x i64>, ptr %i.a, align 4, !noalias !188
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i19 = load <2 x i64>, ptr %i.b, align 4, !noalias !189
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i20 = load <2 x i64>, ptr %i.c, align 4, !noalias !190
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i20, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0> ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0> ; 2 uses
  %2 = shufflevector <2 x i64> %.sroa.0.0.copyload.i19, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %.cast = bitcast <4 x i64> %2 to <8 x i32>      ; 4 uses
  %3 = shufflevector <2 x i64> %.sroa.0.0.copyload.i18, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %4 = bitcast <4 x i64> %3 to <8 x i32>          ; 4 uses
  %5 = shufflevector <2 x i64> %.sroa.0.0.copyload.i, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %6 = bitcast <4 x i64> %5 to <8 x i32>          ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %18, %bb.a ]
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %17, %bb.a ]
  %.sroa.023.062.i = phi i64 [ 0, %.preheader.preheader ], [ %i.m, %bb.a ]
  %i.g = phi <8 x i32> [ %6, %.preheader.preheader ], [ %i.ce, %bb.a ]
  %i.h = phi <8 x i32> [ %4, %.preheader.preheader ], [ %i.by, %bb.a ] ; 2 uses
  %i.i = phi <8 x i32> [ %6, %.preheader.preheader ], [ %i.cg, %bb.a ]
  %i.j = phi <8 x i32> [ %4, %.preheader.preheader ], [ %i.cc, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cd, %bb.a ]
  %i.l = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cf, %bb.a ]
  %i.m = add nuw nsw i64 %.sroa.023.062.i, 1      ; 2 uses
  %i.n = add <8 x i32> %i.h, %i.g                 ; 2 uses
  %i.o = bitcast <8 x i32> %i.n to <4 x i64>
  %i.p = xor <4 x i64> %.sroa.19.0.i, %i.o
  %i.q = bitcast <4 x i64> %i.p to <32 x i8>
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.s = add <8 x i32> %i.j, %i.i                 ; 2 uses
  %i.t = bitcast <8 x i32> %i.s to <4 x i64>
  %i.u = xor <4 x i64> %.sroa.46.0.i, %i.t
  %i.v = bitcast <4 x i64> %i.u to <32 x i8>
  %i.w = shufflevector <32 x i8> %i.v, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.x = bitcast <32 x i8> %i.r to <8 x i32>
  %i.y = add <8 x i32> %i.k, %i.x                 ; 2 uses
  %i.z = xor <8 x i32> %i.y, %i.h                 ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.z, <8 x i32> %i.z, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ab = bitcast <32 x i8> %i.w to <8 x i32>
  %i.ac = add <8 x i32> %i.l, %i.ab               ; 2 uses
  %i.ad = xor <8 x i32> %i.ac, %i.j               ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ad, <8 x i32> %i.ad, <8 x i32> splat (i32 12)) ; 2 uses
  %i.af = add <8 x i32> %i.aa, %i.n               ; 2 uses
  %i.ag = bitcast <8 x i32> %i.af to <32 x i8>
  %i.ah = xor <32 x i8> %i.r, %i.ag
  %i.ai = shufflevector <32 x i8> %i.ah, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %7 = bitcast <32 x i8> %i.ai to <4 x i64>
  %i.aj = add <8 x i32> %i.ae, %i.s               ; 2 uses
  %i.ak = bitcast <8 x i32> %i.aj to <32 x i8>
  %i.al = xor <32 x i8> %i.w, %i.ak
  %i.am = shufflevector <32 x i8> %i.al, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %8 = bitcast <32 x i8> %i.am to <4 x i64>
  %i.an = bitcast <32 x i8> %i.ai to <8 x i32>
  %i.ao = add <8 x i32> %i.y, %i.an               ; 2 uses
  %i.ap = xor <8 x i32> %i.ao, %i.aa              ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ap, <8 x i32> %i.ap, <8 x i32> splat (i32 7)) ; 2 uses
  %i.ar = bitcast <32 x i8> %i.am to <8 x i32>
  %i.as = add <8 x i32> %i.ac, %i.ar              ; 2 uses
  %i.at = xor <8 x i32> %i.as, %i.ae              ; 2 uses
  %i.au = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.at, <8 x i32> %i.at, <8 x i32> splat (i32 7)) ; 2 uses
  %i.av = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %9 = shufflevector <4 x i64> %7, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.aw = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.ax = shufflevector <8 x i32> %i.as, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %10 = shufflevector <4 x i64> %8, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ay = shufflevector <8 x i32> %i.aj, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.az = add <8 x i32> %i.aq, %i.aw              ; 2 uses
  %11 = bitcast <8 x i32> %i.az to <4 x i64>
  %12 = xor <4 x i64> %9, %11
  %i.ba = bitcast <4 x i64> %12 to <32 x i8>
  %i.bb = shufflevector <32 x i8> %i.ba, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bc = add <8 x i32> %i.au, %i.ay              ; 2 uses
  %13 = bitcast <8 x i32> %i.bc to <4 x i64>
  %14 = xor <4 x i64> %10, %13
  %i.bd = bitcast <4 x i64> %14 to <32 x i8>
  %i.be = shufflevector <32 x i8> %i.bd, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bf = bitcast <32 x i8> %i.bb to <8 x i32>
  %i.bg = add <8 x i32> %i.av, %i.bf              ; 2 uses
  %i.bh = xor <8 x i32> %i.bg, %i.aq              ; 2 uses
  %i.bi = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bh, <8 x i32> %i.bh, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bj = bitcast <32 x i8> %i.be to <8 x i32>
  %i.bk = add <8 x i32> %i.ax, %i.bj              ; 2 uses
  %i.bl = xor <8 x i32> %i.bk, %i.au              ; 2 uses
  %i.bm = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bl, <8 x i32> %i.bl, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bn = add <8 x i32> %i.bi, %i.az              ; 2 uses
  %i.bo = bitcast <8 x i32> %i.bn to <32 x i8>
  %i.bp = xor <32 x i8> %i.bb, %i.bo
  %i.bq = shufflevector <32 x i8> %i.bp, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %15 = bitcast <32 x i8> %i.bq to <4 x i64>
  %i.br = add <8 x i32> %i.bm, %i.bc              ; 2 uses
  %i.bs = bitcast <8 x i32> %i.br to <32 x i8>
  %i.bt = xor <32 x i8> %i.be, %i.bs
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %16 = bitcast <32 x i8> %i.bu to <4 x i64>
  %i.bv = bitcast <32 x i8> %i.bq to <8 x i32>
  %i.bw = add <8 x i32> %i.bg, %i.bv              ; 2 uses
  %i.bx = xor <8 x i32> %i.bw, %i.bi              ; 2 uses
  %i.by = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bx, <8 x i32> %i.bx, <8 x i32> splat (i32 7)) ; 2 uses
  %i.bz = bitcast <32 x i8> %i.bu to <8 x i32>
  %i.ca = add <8 x i32> %i.bk, %i.bz              ; 2 uses
  %i.cb = xor <8 x i32> %i.ca, %i.bm              ; 2 uses
  %i.cc = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cb, <8 x i32> %i.cb, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cd = shufflevector <8 x i32> %i.bw, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %17 = shufflevector <4 x i64> %15, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ce = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.cf = shufflevector <8 x i32> %i.ca, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %18 = shufflevector <4 x i64> %16, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cg = shufflevector <8 x i32> %i.br, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, 6
  br i1 %exitcond.not.i, label %_RNvMNtNtCsjXcachvKq5y_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs84qwSrTN5pO_7uu_shuf.exit, label %bb.a

_RNvMNtNtCsjXcachvKq5y_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs84qwSrTN5pO_7uu_shuf.exit: ; preds = %bb.a
  %19 = bitcast <4 x i64> %18 to <8 x i32>
  %i.ch = bitcast <4 x i64> %i.f to <8 x i32>
  %i.ci = add <8 x i32> %19, %i.ch                ; 2 uses
  %i.cj = add <8 x i32> %i.cf, %.cast             ; 2 uses
  %i.ck = add <8 x i32> %i.cc, %4                 ; 2 uses
  %i.cl = add <8 x i32> %i.cg, %6                 ; 2 uses
  %20 = bitcast <4 x i64> %17 to <8 x i32>
  %i.cm = bitcast <4 x i64> %i.e to <8 x i32>
  %i.cn = add <8 x i32> %20, %i.cm                ; 2 uses
  %i.co = add <8 x i32> %i.cd, %.cast             ; 2 uses
  %i.cp = add <8 x i32> %i.by, %4                 ; 2 uses
  %i.cq = add <8 x i32> %i.ce, %6                 ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !191
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.cr, align 4, !noalias !192
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.cs, align 4, !noalias !191
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.ct, align 4, !noalias !192
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.cu, align 4, !noalias !191
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.cv, align 4, !noalias !192
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.cw, align 4, !noalias !191
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.cx, align 4, !noalias !192
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.cy, align 4, !noalias !191
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.cz, align 4, !noalias !192
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.da, align 4, !noalias !191
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.db, align 4, !noalias !192
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dc, align 4, !noalias !191
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dd, align 4, !noalias !192
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.de, align 4, !noalias !191
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.df, align 4, !noalias !192
  %i.dg = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %21 = shufflevector <4 x i64> %i.dg, <4 x i64> poison, <1 x i32> zeroinitializer
  store <1 x i64> %21, ptr %i.c, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_RINvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs84qwSrTN5pO_7uu_shuf(<2 x i64> %.0.val) unnamed_addr #4 {
bb.a:
  %i.a = bitcast <2 x i64> %.0.val to <4 x i32>
  %i.b = extractelement <4 x i32> %i.a, i64 1
  ret i32 %i.b
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !10, !alias.scope !195, !noundef !5 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !195
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !195
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) #26, !noalias !195
  %i.h = load i64, ptr %i.a, align 8, !range !16, !noalias !195, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !196, !noalias !195, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !195
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #27
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !195, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !195
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !195
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !195
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultINtNtCs7tKScEop1B6_5alloc3vec3VechENtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_B1i_INtNtB1n_5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCs84qwSrTN5pO_7uu_shuf15read_input_files_0EB3y_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 4 uses
  %i.e = load i64, ptr %1, align 8, !range !11, !noundef !5
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !205
  store i64 1, ptr %i.d, align 8, !noalias !205
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !205
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !205
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 0, ptr %i.i, align 8, !noalias !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !206
  store i64 0, ptr %i.c, align 8, !noalias !206
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !206
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !206
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.j, align 8, !noalias !206
  store ptr %i.c, ptr %i.b, align 8, !noalias !206
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @99, ptr %i.k, align 8, !noalias !206
  %i.l = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26, !noalias !207
  br i1 %i.l, label %bb.c, label %_RNCNvCs84qwSrTN5pO_7uu_shuf15read_input_files_0B3_.exit, !prof !6

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #29, !noalias !207
  unreachable

_RNCNvCs84qwSrTN5pO_7uu_shuf15read_input_files_0B3_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !205
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !208
  %i.m = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !208 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !9

bb.d:                                             ; preds = %_RNCNvCs84qwSrTN5pO_7uu_shuf15read_input_files_0B3_.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27, !noalias !208
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNCNvCs84qwSrTN5pO_7uu_shuf15read_input_files_0B3_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @35, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef range(i64 0, 576460752303423488) i64 @_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs84qwSrTN5pO_7uu_shuf(ptr %.0.val, i64 noundef range(i64 0, 576460752303423488) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.u, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %0, 4294967295
  br i1 %i.b, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw i64 %0 to i32                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 9 uses
  %i.e = load i32, ptr %i.d, align 4, !noalias !245, !noundef !5 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 63
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 320
  %i.i = load i64, ptr %i.h, align 4, !alias.scope !246, !noalias !247
  %i.j = icmp ugt i64 %i.i, 1023
  br i1 %i.j, label %bb.e, label %.thread.i.i.i.i14.i.i.i.i, !prof !6

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCs7g3JyErIm42_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g) #28, !noalias !248
  br label %.thread.i.i.i.i14.i.i.i.i

.thread.i.i.i.i14.i.i.i.i:                        ; preds = %bb.e, %bb.d
  tail call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.d) #26, !noalias !247
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit15.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.e to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.m = add nuw nsw i32 %i.e, 1
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit15.i.i.i.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit15.i.i.i.i: ; preds = %bb.f, %.thread.i.i.i.i14.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i14.i.i.i.i ], [ %i.m, %bb.f ] ; 4 uses
  %.in.i.i.i.i13.i.i.i.i = phi ptr [ %i.d, %.thread.i.i.i.i14.i.i.i.i ], [ %i.l, %bb.f ]
  %i.n = load i32, ptr %.in.i.i.i.i13.i.i.i.i, align 4, !alias.scope !249, !noalias !247, !noundef !5
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i, ptr %i.d, align 4, !alias.scope !249, !noalias !247
  %i.o = zext i32 %i.n to i64
  %i.p = mul nuw i64 %0, %i.o                     ; 2 uses
  %i.q = lshr i64 %i.p, 32                        ; 2 uses
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  %i.s = sub i32 0, %i.c
  %i.t = icmp ult i32 %i.s, %i.r
  br i1 %i.t, label %bb.g, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtCs7g3JyErIm42_4rand5distr7uniform5ErrorE6unwrapCs84qwSrTN5pO_7uu_shuf.exit

bb.g:                                             ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit15.i.i.i.i
  %i.u = icmp samesign ugt i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i, 63
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 272 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 320
  %i.x = load i64, ptr %i.w, align 4, !alias.scope !250, !noalias !251
  %i.y = icmp ugt i64 %i.x, 1023
  br i1 %i.y, label %bb.i, label %.thread.i.i.i.i18.i.i.i.i, !prof !6

bb.i:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@_RNvXs_NtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB4_20NonrepeatingIteratorNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next:bb.a
  %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ha, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.ai, %bb.aj
  %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.hn, %bb.aj ], [ %i.ha, %bb.ai ] ; 3 uses
  %i.hb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.hc = zext nneg i16 %i.hb to i64
  %i.hd = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hc
  %i.he = and i64 %i.hd, %i.ga
  %i.hf = sub nsw i64 0, %i.he
  %i.hg = getelementptr inbounds [16 x i8], ptr %i.gb, i64 %i.hf ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -16
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hh, align 8, !noalias !1295, !noundef !5
  %i.hi = icmp eq i64 %i.gq, %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.hi, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aj, !prof !8

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.aj, %bb.ai
  %i.hj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.hk = bitcast <16 x i1> %i.hj to i16
  %i.hl = icmp eq i16 %i.hk, 0
  br i1 %i.hl, label %bb.ak, label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i, !prof !6

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hm = add i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.hn = and i16 %i.hm, %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hn, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ho = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.hp = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ho
  br label %bb.ai

_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hq = getelementptr inbounds i8, ptr %i.hg, i64 -8
  %.else.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hq, align 8, !noalias !1296, !noundef !5
  br label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i

_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hr = phi i64 [ %.else.val.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gq, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.ph26.i.i, i64 %i.gp
  store i64 %i.hr, ptr %i.hs, align 8, !noalias !1293
  %i.ht = add i64 %i.gp, 1                        ; 2 uses
  %i.hu = icmp ult i64 %i.fd, %i.gr
  br i1 %i.hu, label %.lr.ph.i.i.i.i.i.i.i.i.split.i, label %.thread.i.i.i.i.i.i.i.i.thread22.i

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.hv = icmp eq i64 %i.fh, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  br i1 %i.hv, label %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit, label %.thread.i.i.i.i.i.i.i.i.i..thread.i.i.i.i.i.i.i.i.thread22.i_crit_edge

.thread.i.i.i.i.i.i.i.i.i..thread.i.i.i.i.i.i.i.i.thread22.i_crit_edge: ; preds = %.thread.i.i.i.i.i.i.i.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !1298, !noalias !1299
  br label %.thread.i.i.i.i.i.i.i.i.thread22.i

.thread.i.i.i.i.i.i.i.i.thread22.i:               ; preds = %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i..thread.i.i.i.i.i.i.i.i.thread22.i_crit_edge
  %i.hw = phi i64 [ %.pre, %.thread.i.i.i.i.i.i.i.i.i..thread.i.i.i.i.i.i.i.i.thread22.i_crit_edge ], [ %i.ga, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i.i24.i = phi i64 [ %.ph.i.i, %.thread.i.i.i.i.i.i.i.i.i..thread.i.i.i.i.i.i.i.i.thread22.i_crit_edge ], [ %i.ht, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hx = mul i64 %i.fd, -1065810590584100411     ; 2 uses
  %i.hy = tail call noundef i64 @llvm.fshl.i64(i64 %i.hx, i64 %i.hx, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %i.hz = lshr i64 %i.hy, 57
  %i.ia = trunc nuw nsw i64 %i.hz to i8
  %i.ib = load ptr, ptr %i.d, align 8, !alias.scope !1298, !noalias !1299, !nonnull !5, !noundef !5 ; 2 uses
  %i.ic = insertelement <16 x i8> poison, i8 %i.ia, i64 0
  %i.id = shufflevector <16 x i8> %i.ic, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %.thread.i.i.i.i.i.i.i.i.thread22.i
  %.sroa.9.0.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.thread.i.i.i.i.i.i.i.i.thread22.i ], [ %i.iu, %bb.an ]
  %.pn.i.i.i.i.i9.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hy, %.thread.i.i.i.i.i.i.i.i.thread22.i ], [ %i.iv, %bb.an ]
  %.sroa.01.0.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i9.i.i.i.i.i.i.i.i.i, %i.hw ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.sroa.01.0.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ie, align 1, !noalias !1302 ; 2 uses
  %i.if = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i11.i.i.i.i.i.i.i.i.i, %i.id
  %i.ig = bitcast <16 x i1> %i.if to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ig, 0
  br i1 %.not.i.not30.i.i.i.i.i12.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i13.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i13.i.i.i.i.i.i.i.i.i:             ; preds = %bb.al, %bb.am
  %.sroa.06.0.i31.i.i.i.i.i14.i.i.i.i.i.i.i.i.i = phi i16 [ %i.it, %bb.am ], [ %i.ig, %bb.al ] ; 3 uses
  %i.ih = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i14.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ii = zext nneg i16 %i.ih to i64
  %i.ij = add i64 %.sroa.01.0.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i, %i.ii
  %i.ik = and i64 %i.ij, %i.hw
  %i.il = sub nsw i64 0, %i.ik
  %i.im = getelementptr inbounds [16 x i8], ptr %i.ib, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %i.im, i64 -16
  %.val2.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i = load i64, ptr %i.in, align 8, !noalias !1303, !noundef !5
  %i.io = icmp eq i64 %i.fd, %.val2.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i
  br i1 %i.io, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i18.i.i.i.i.i.i.i.i.i, label %bb.am, !prof !8

._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i:        ; preds = %bb.am, %bb.al
  %i.ip = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.iq = bitcast <16 x i1> %i.ip to i16
  %i.ir = icmp eq i16 %i.iq, 0
  br i1 %i.ir, label %bb.an, label %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit, !prof !6

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i13.i.i.i.i.i.i.i.i.i
  %i.is = add i16 %.sroa.06.0.i31.i.i.i.i.i14.i.i.i.i.i.i.i.i.i, -1
  %i.it = and i16 %i.is, %.sroa.06.0.i31.i.i.i.i.i14.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i16.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.it, 0
  br i1 %.not.i.not.i.i.i.i.i16.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i13.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i
  %i.iu = add i64 %.sroa.9.0.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.iv = add i64 %.sroa.01.0.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i, %i.iu
  br label %bb.al

_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i18.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i13.i.i.i.i.i.i.i.i.i
  %i.iw = getelementptr inbounds i8, ptr %i.im, i64 -8
  %.else.val.i.i.i19.i.i.i.i.i.i.i.i.i = load i64, ptr %i.iw, align 8, !noalias !1304, !noundef !5
  br label %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit

bb.ao:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #29, !noalias !1305
  unreachable

bb.ap:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #29, !noalias !1286
  unreachable

_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit: ; preds = %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i, %middle.block, %.thread.i.i.i.i.i.i.i.i.i, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i18.i.i.i.i.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i21.i = phi i64 [ %.sroa.5.0.i.i.i.i.i.i.i24.i, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i18.i.i.i.i.i.i.i.i.i ], [ %.ph.i.i, %.thread.i.i.i.i.i.i.i.i.i ], [ %i.gn, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i ], [ %i.gc, %middle.block ], [ %.sroa.5.0.i.i.i.i.i.i.i24.i, %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ix = phi i64 [ %.else.val.i.i.i19.i.i.i.i.i.i.i.i.i, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i18.i.i.i.i.i.i.i.i.i ], [ %i.fd, %.thread.i.i.i.i.i.i.i.i.i ], [ %i.fd, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i ], [ %i.fd, %middle.block ], [ %i.fd, %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i ]
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.ph26.i.i, i64 %.sroa.5.0.i.i.i.i.i.i.i21.i
  store i64 %i.ix, ptr %i.iy, align 8, !noalias !1306
  %.pre34 = load i8, ptr %i.e, align 8, !range !24, !alias.scope !1307
  %i.iz = add i64 %.sroa.5.0.i.i.i.i.i.i.i21.i, 1
  store i64 %i.iz, ptr %i.fu, align 8, !alias.scope !1292, !noalias !1308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1286
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.ja = icmp eq i8 %.pre34, 2
  br i1 %i.ja, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit
  %.val.i = load i64, ptr %i.d, align 8, !range !10, !alias.scope !1307, !noundef !5 ; 2 uses
  %i.jb = icmp eq i64 %.val.i, 0
  br i1 %i.jb, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load ptr, ptr %i.jc, align 8, !alias.scope !1307, !nonnull !5, !noundef !5
  %i.jd = shl nuw i64 %.val.i, 3
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.jd, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1307
  br label %.thread

bb.as:                                            ; preds = %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit
  %.val2.i = load ptr, ptr %i.d, align 8, !alias.scope !1307 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.je, align 8, !alias.scope !1307, !noundef !5 ; 3 uses
  %i.jf = icmp eq i64 %.val3.i, 0
  br i1 %i.jf, label %.thread, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.as
  %i.jg = shl i64 %.val3.i, 4                     ; 2 uses
  %i.jh = add i64 %i.jg, 16                       ; 2 uses
  %i.ji = add i64 %.val3.i, 17
  %i.jj = add i64 %i.ji, %i.jh                    ; 4 uses
  %i.jk = icmp uge i64 %i.jj, %i.jh
  %i.jl = icmp ult i64 %i.jj, 9223372036854775793
  tail call void @llvm.assume(i1 %i.jk)
  tail call void @llvm.assume(i1 %i.jl)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.jm = icmp eq i64 %i.jj, 0
  br i1 %i.jm, label %.thread, label %bb.at

bb.at:                                            ; preds = %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.jn = sub nuw nsw i64 -16, %i.jg
  %i.jo = getelementptr inbounds i8, ptr %.val2.i, i64 %i.jn
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jo, i64 noundef %i.jj, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1307
  br label %.thread

.thread:                                          ; preds = %bb.at, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.as, %bb.ar, %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  store i8 2, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %.pre36 = load i64, ptr %i.fi, align 8, !alias.scope !1251
  br label %.thread61
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #10 {
bb.a:
  %i.a = load atomic i8, ptr @_RNvNtCsjXcachvKq5y_8chacha2010avx2_cpuid7STORAGE monotonic, align 1
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %.sroa.012.0.copyload24.i = load <4 x i32>, ptr %0, align 4, !alias.scope !1312 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.013.0.copyload25.i = load <4 x i32>, ptr %i.c, align 4, !alias.scope !1312 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.014.0.copyload26.i = load <4 x i32>, ptr %i.d, align 4, !alias.scope !1312 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.015.0.copyload.i = load <2 x i64>, ptr %i.e, align 4, !alias.scope !1312 ; 6 uses
  %i.f = add <2 x i64> %.sroa.015.0.copyload.i, <i64 1, i64 0> ; 2 uses
  %i.g = add <2 x i64> %.sroa.015.0.copyload.i, <i64 2, i64 0> ; 2 uses
  %i.h = add <2 x i64> %.sroa.015.0.copyload.i, <i64 3, i64 0> ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.89.0.i.i = phi <2 x i64> [ %i.h, %bb.b ], [ %19, %bb.c ]
  %.sroa.64.0.i.i = phi <2 x i64> [ %i.g, %bb.b ], [ %18, %bb.c ]
  %.sroa.39.0.i.i = phi <2 x i64> [ %i.f, %bb.b ], [ %17, %bb.c ]
  %.sroa.16.0.i.i = phi <2 x i64> [ %.sroa.015.0.copyload.i, %bb.b ], [ %16, %bb.c ]
  %.sroa.042.0102.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %bb.c ]
  %i.i = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.du, %bb.c ]
  %i.j = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ci, %bb.c ] ; 2 uses
  %i.k = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dt, %bb.c ]
  %i.l = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dw, %bb.c ]
  %i.m = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.cu, %bb.c ] ; 2 uses
  %i.n = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dv, %bb.c ]
  %i.o = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dy, %bb.c ]
  %i.p = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.dg, %bb.c ] ; 2 uses
  %i.q = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dx, %bb.c ]
  %i.r = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.ea, %bb.c ]
  %i.s = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ds, %bb.c ] ; 2 uses
  %i.t = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dz, %bb.c ]
  %i.u = add nuw nsw i64 %.sroa.042.0102.i.i, 1   ; 2 uses
  %i.v = add <4 x i32> %i.j, %i.i                 ; 2 uses
  %2 = bitcast <2 x i64> %.sroa.16.0.i.i to <4 x i32>
  %i.w = xor <4 x i32> %i.v, %2                   ; 2 uses
  %i.x = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.w, <4 x i32> %i.w, <4 x i32> splat (i32 16)) ; 2 uses
  %i.y = add <4 x i32> %i.x, %i.k                 ; 2 uses
  %i.z = xor <4 x i32> %i.y, %i.j                 ; 2 uses
  %i.aa = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.z, <4 x i32> %i.z, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ab = add <4 x i32> %i.aa, %i.v               ; 2 uses
  %i.ac = xor <4 x i32> %i.ab, %i.x               ; 2 uses
  %i.ad = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ac, <4 x i32> %i.ac, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ae = add <4 x i32> %i.ad, %i.y               ; 2 uses
  %i.af = xor <4 x i32> %i.ae, %i.aa              ; 2 uses
  %i.ag = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.af, <4 x i32> %i.af, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ah = add <4 x i32> %i.m, %i.l                ; 2 uses
  %3 = bitcast <2 x i64> %.sroa.39.0.i.i to <4 x i32>
  %i.ai = xor <4 x i32> %i.ah, %3                 ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ai, <4 x i32> %i.ai, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ak = add <4 x i32> %i.aj, %i.n               ; 2 uses
  %i.al = xor <4 x i32> %i.ak, %i.m               ; 2 uses
  %i.am = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.al, <4 x i32> %i.al, <4 x i32> splat (i32 12)) ; 2 uses
  %i.an = add <4 x i32> %i.am, %i.ah              ; 2 uses
  %i.ao = xor <4 x i32> %i.an, %i.aj              ; 2 uses
  %i.ap = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ao, <4 x i32> %i.ao, <4 x i32> splat (i32 8)) ; 2 uses
  %i.aq = add <4 x i32> %i.ap, %i.ak              ; 2 uses
  %i.ar = xor <4 x i32> %i.aq, %i.am              ; 2 uses
  %i.as = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ar, <4 x i32> %i.ar, <4 x i32> splat (i32 7)) ; 2 uses
  %i.at = add <4 x i32> %i.p, %i.o                ; 2 uses
  %4 = bitcast <2 x i64> %.sroa.64.0.i.i to <4 x i32>
  %i.au = xor <4 x i32> %i.at, %4                 ; 2 uses
  %i.av = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.au, <4 x i32> %i.au, <4 x i32> splat (i32 16)) ; 2 uses
  %i.aw = add <4 x i32> %i.av, %i.q               ; 2 uses
  %i.ax = xor <4 x i32> %i.aw, %i.p               ; 2 uses
  %i.ay = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ax, <4 x i32> %i.ax, <4 x i32> splat (i32 12)) ; 2 uses
  %i.az = add <4 x i32> %i.ay, %i.at              ; 2 uses
  %i.ba = xor <4 x i32> %i.az, %i.av              ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ba, <4 x i32> %i.ba, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bc = add <4 x i32> %i.bb, %i.aw              ; 2 uses
  %i.bd = xor <4 x i32> %i.bc, %i.ay              ; 2 uses
  %i.be = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bd, <4 x i32> %i.bd, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bf = add <4 x i32> %i.s, %i.r                ; 2 uses
  %5 = bitcast <2 x i64> %.sroa.89.0.i.i to <4 x i32>
  %i.bg = xor <4 x i32> %i.bf, %5                 ; 2 uses
  %i.bh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bg, <4 x i32> %i.bg, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bi = add <4 x i32> %i.bh, %i.t               ; 2 uses
  %i.bj = xor <4 x i32> %i.bi, %i.s               ; 2 uses
  %i.bk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bj, <4 x i32> %i.bj, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bl = add <4 x i32> %i.bk, %i.bf              ; 2 uses
  %i.bm = xor <4 x i32> %i.bl, %i.bh              ; 2 uses
  %i.bn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bm, <4 x i32> %i.bm, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bo = add <4 x i32> %i.bn, %i.bi              ; 2 uses
  %i.bp = xor <4 x i32> %i.bo, %i.bk              ; 2 uses
  %i.bq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bp, <4 x i32> %i.bp, <4 x i32> splat (i32 7)) ; 2 uses
  %i.br = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bs = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bt = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bu = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bv = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bw = shufflevector <4 x i32> %i.az, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bx = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %6 = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %7 = add <4 x i32> %i.ag, %i.bs                 ; 2 uses
  %8 = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.by = xor <4 x i32> %7, %8                    ; 2 uses
  %i.bz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.by, <4 x i32> %i.by, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ca = add <4 x i32> %i.bz, %i.br              ; 2 uses
  %i.cb = xor <4 x i32> %i.ca, %i.ag              ; 2 uses
  %i.cc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cb, <4 x i32> %i.cb, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cd = add <4 x i32> %i.cc, %7                 ; 2 uses
  %i.ce = xor <4 x i32> %i.cd, %i.bz              ; 2 uses
  %i.cf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ce, <4 x i32> %i.ce, <4 x i32> splat (i32 8)) ; 2 uses
  %9 = bitcast <4 x i32> %i.cf to <2 x i64>
  %i.cg = add <4 x i32> %i.cf, %i.ca              ; 2 uses
  %i.ch = xor <4 x i32> %i.cg, %i.cc              ; 2 uses
  %i.ci = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ch, <4 x i32> %i.ch, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cj = add <4 x i32> %i.as, %i.bu              ; 2 uses
  %10 = shufflevector <4 x i32> %i.ap, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ck = xor <4 x i32> %i.cj, %10                ; 2 uses
  %i.cl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ck, <4 x i32> %i.ck, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cm = add <4 x i32> %i.cl, %i.bt              ; 2 uses
  %i.cn = xor <4 x i32> %i.cm, %i.as              ; 2 uses
  %i.co = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cn, <4 x i32> %i.cn, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cp = add <4 x i32> %i.co, %i.cj              ; 2 uses
  %i.cq = xor <4 x i32> %i.cp, %i.cl              ; 2 uses
  %i.cr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cq, <4 x i32> %i.cq, <4 x i32> splat (i32 8)) ; 2 uses
  %11 = bitcast <4 x i32> %i.cr to <2 x i64>
  %i.cs = add <4 x i32> %i.cr, %i.cm              ; 2 uses
  %i.ct = xor <4 x i32> %i.cs, %i.co              ; 2 uses
  %i.cu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ct, <4 x i32> %i.ct, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cv = add <4 x i32> %i.be, %i.bw              ; 2 uses
  %12 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cw = xor <4 x i32> %i.cv, %12                ; 2 uses
  %i.cx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cw, <4 x i32> %i.cw, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cy = add <4 x i32> %i.cx, %i.bv              ; 2 uses
  %i.cz = xor <4 x i32> %i.cy, %i.be              ; 2 uses
  %i.da = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cz, <4 x i32> %i.cz, <4 x i32> splat (i32 12)) ; 2 uses
  %i.db = add <4 x i32> %i.da, %i.cv              ; 2 uses
  %i.dc = xor <4 x i32> %i.db, %i.cx              ; 2 uses
  %i.dd = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dc, <4 x i32> %i.dc, <4 x i32> splat (i32 8)) ; 2 uses
  %13 = bitcast <4 x i32> %i.dd to <2 x i64>
  %i.de = add <4 x i32> %i.dd, %i.cy              ; 2 uses
  %i.df = xor <4 x i32> %i.de, %i.da              ; 2 uses
  %i.dg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.df, <4 x i32> %i.df, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dh = add <4 x i32> %i.bq, %6                 ; 2 uses
  %14 = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.di = xor <4 x i32> %i.dh, %14                ; 2 uses
  %i.dj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.di, <4 x i32> %i.di, <4 x i32> splat (i32 16)) ; 2 uses
  %i.dk = add <4 x i32> %i.dj, %i.bx              ; 2 uses
  %i.dl = xor <4 x i32> %i.dk, %i.bq              ; 2 uses
  %i.dm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dl, <4 x i32> %i.dl, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dn = add <4 x i32> %i.dm, %i.dh              ; 2 uses
  %i.do = xor <4 x i32> %i.dn, %i.dj              ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.do, <4 x i32> %i.do, <4 x i32> splat (i32 8)) ; 2 uses
  %15 = bitcast <4 x i32> %i.dp to <2 x i64>
  %i.dq = add <4 x i32> %i.dp, %i.dk              ; 2 uses
  %i.dr = xor <4 x i32> %i.dq, %i.dm              ; 2 uses
  %i.ds = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dr, <4 x i32> %i.dr, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dt = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %16 = shufflevector <2 x i64> %9, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.du = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dv = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %17 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dw = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dx = shufflevector <4 x i32> %i.de, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %18 = shufflevector <2 x i64> %13, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dy = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dz = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %19 = shufflevector <2 x i64> %15, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ea = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, 6
  br i1 %exitcond.not.i.i, label %_RINvNtNtCsjXcachvKq5y_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs84qwSrTN5pO_7uu_shuf.exit, label %bb.c

_RINvNtNtCsjXcachvKq5y_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs84qwSrTN5pO_7uu_shuf.exit: ; preds = %bb.c
  %i.eb = add <4 x i32> %i.du, %.sroa.012.0.copyload24.i
  %i.ec = add <4 x i32> %i.ci, %.sroa.013.0.copyload25.i
  %i.ed = add <4 x i32> %i.dt, %.sroa.014.0.copyload26.i
  %20 = bitcast <2 x i64> %16 to <4 x i32>
  %21 = bitcast <2 x i64> %.sroa.015.0.copyload.i to <4 x i32>
  %i.ee = add <4 x i32> %20, %21
  %i.ef = add <4 x i32> %i.dw, %.sroa.012.0.copyload24.i
  %i.eg = add <4 x i32> %i.cu, %.sroa.013.0.copyload25.i
  %i.eh = add <4 x i32> %i.dv, %.sroa.014.0.copyload26.i
  %22 = bitcast <2 x i64> %17 to <4 x i32>
  %23 = bitcast <2 x i64> %i.f to <4 x i32>
  %i.ei = add <4 x i32> %22, %23
  %i.ej = add <4 x i32> %i.dy, %.sroa.012.0.copyload24.i
  %i.ek = add <4 x i32> %i.dg, %.sroa.013.0.copyload25.i
  %i.el = add <4 x i32> %i.dx, %.sroa.014.0.copyload26.i
  %24 = bitcast <2 x i64> %18 to <4 x i32>
  %25 = bitcast <2 x i64> %i.g to <4 x i32>
  %i.em = add <4 x i32> %24, %25
  %i.en = add <4 x i32> %i.ea, %.sroa.012.0.copyload24.i
  %i.eo = add <4 x i32> %i.ds, %.sroa.013.0.copyload25.i
  %i.ep = add <4 x i32> %i.dz, %.sroa.014.0.copyload26.i
  %26 = bitcast <2 x i64> %19 to <4 x i32>
  %27 = bitcast <2 x i64> %i.h to <4 x i32>
  %i.eq = add <4 x i32> %26, %27
  store <4 x i32> %i.eb, ptr %1, align 4, !alias.scope !1313, !noalias !5
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %i.ec, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !1313, !noalias !5
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %i.ed, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !1313, !noalias !5
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %i.ee, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !1313, !noalias !5
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %i.ef, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !1313, !noalias !5
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %i.eg, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !1313, !noalias !5
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %i.eh, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !1313, !noalias !5
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %i.ei, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !1313, !noalias !5
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store <4 x i32> %i.ej, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !1313, !noalias !5
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %i.ek, ptr %.sroa.12.0..sroa_idx.i, align 4, !alias.scope !1313, !noalias !5
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %i.el, ptr %.sroa.13.0..sroa_idx.i, align 4, !alias.scope !1313, !noalias !5
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %i.em, ptr %.sroa.14.0..sroa_idx.i, align 4, !alias.scope !1313, !noalias !5
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %i.en, ptr %.sroa.15.0..sroa_idx.i, align 4, !alias.scope !1313, !noalias !5
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %i.eo, ptr %.sroa.16.0..sroa_idx.i, align 4, !alias.scope !1313, !noalias !5
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %i.ep, ptr %.sroa.17.0..sroa_idx.i, align 4, !alias.scope !1313, !noalias !5
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %i.eq, ptr %.sroa.18.0..sroa_idx.i, align 4, !alias.scope !1313, !noalias !5
  %i.er = add <2 x i64> %.sroa.015.0.copyload.i, <i64 4, i64 0> ; 2 uses
  %i.es = bitcast <2 x i64> %i.er to <4 x i32>
  %i.et = extractelement <4 x i32> %i.es, i64 0
  store i32 %i.et, ptr %i.e, align 4, !alias.scope !1312
  %i.eu = tail call fastcc noundef i32 @_RINvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs84qwSrTN5pO_7uu_shuf(<2 x i64> %i.er) #30
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.eu, ptr %i.ev, align 4, !alias.scope !1312
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCsjXcachvKq5y_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef align 4 dereferenceable(64) %0, ptr noalias nofree noundef align 4 dereferenceable(256) %1) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvNtNtCsjXcachvKq5y_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs84qwSrTN5pO_7uu_shuf.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsb_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io5write5Write17is_write_vectored(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #11 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef ptr @_RNvXsb_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree readnone align 4 captures(none) %0) unnamed_addr #11 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvCs84qwSrTN5pO_7uu_shuf11parse_rangeNtB5_14AnyValueParser10parse_ref_BZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXsd_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvCs84qwSrTN5pO_7uu_shuf11parse_rangeNtB5_16TypedValueParser9parse_refBZ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !24, !noundef !5
  %i.d = icmp eq i8 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !5, !align !14, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1316
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1316 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #27, !noalias !1316
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @109, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @94, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvCs84qwSrTN5pO_7uu_shuf11parse_rangeNtB5_14AnyValueParser15possible_valuesBZ_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvCs84qwSrTN5pO_7uu_shuf11parse_rangeNtB5_14AnyValueParser7type_idBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @94, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvCs84qwSrTN5pO_7uu_shuf11parse_rangeNtB5_14AnyValueParser9clone_anyBZ_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  ret { ptr, ptr } { ptr inttoptr (i64 1 to ptr), ptr @96 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvCs84qwSrTN5pO_7uu_shuf11parse_rangeNtB5_14AnyValueParser9parse_refBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXsd_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvCs84qwSrTN5pO_7uu_shuf11parse_rangeNtB5_16TypedValueParser9parse_refBZ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !24, !noundef !5
  %i.d = icmp eq i8 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !5, !align !14, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1319
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1319 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #27, !noalias !1319
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @109, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @94, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvYyNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_strNtB5_14AnyValueParser10parse_ref_Cs84qwSrTN5pO_7uu_shuf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RNvXsd_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNvYyNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_strNtB5_16TypedValueParser9parse_refCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #26 ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1322
  %i.f = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1322 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
end_hunk_1
