Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/fic?download=true
inline.NumInlined: 9
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@fic_decode_slice:bb.a
  %i.ld = trunc i32 %i.lc to i16
  store i16 %i.ld, ptr %i.ju, align 2, !tbaa !76
  %i.le = sub i32 %i.jr, %i.ke
  %i.lf = add i32 %i.le, %i.kp
  %i.lg = lshr i32 %i.lf, 13
  %i.lh = trunc i32 %i.lg to i16
  store i16 %i.lh, ptr %i.io, align 2, !tbaa !76
  %i.li = add i32 %i.jr, %i.ke
  %i.lj = sub i32 %i.kp, %i.li
  %i.lk = lshr i32 %i.lj, 13
  %i.ll = trunc i32 %i.lk to i16
  store i16 %i.ll, ptr %i.kh, align 2, !tbaa !76
  %i.lm = add i32 %i.kz, %i.kb
  %i.ln = sub i32 %i.km, %i.lm
  %i.lo = lshr i32 %i.ln, 13
  %i.lp = trunc i32 %i.lo to i16
  store i16 %i.lp, ptr %i.is, align 2, !tbaa !76
  %i.lq = sub i32 %i.kb, %i.ku
  %i.lr = add i32 %i.lq, %i.km
  %i.ls = lshr i32 %i.lr, 13
  %i.lt = trunc i32 %i.ls to i16
  store i16 %i.lt, ptr %i.jy, align 2, !tbaa !76
  %i.lu = sub i32 %i.ke, %i.jn
  %i.lv = add i32 %i.lu, %i.kp
  %i.lw = lshr i32 %i.lv, 13
  %i.lx = trunc i32 %i.lw to i16
  store i16 %i.lx, ptr %i.iz, align 2, !tbaa !76
  %i.ly = add nuw nsw i32 %.02359.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ly, 8
  br i1 %exitcond.not.i.i, label %vector.body, label %bb.j, !llvm.loop !69

vector.body:                                      ; preds = %bb.j
  %i.lz = load i16, ptr %i.s, align 2, !tbaa !76
  %i.ma = load i16, ptr %i.t, align 2, !tbaa !76
  %i.mb = load i16, ptr %i.u, align 2, !tbaa !76
  %i.mc = load i16, ptr %i.v, align 2, !tbaa !76
  %i.md = load i16, ptr %i.w, align 2, !tbaa !76
  %i.me = load i16, ptr %i.x, align 2, !tbaa !76
  %i.mf = load i16, ptr %i.y, align 2, !tbaa !76
  %i.mg = load i16, ptr %i.z, align 2, !tbaa !76
  %i.mh = insertelement <8 x i16> poison, i16 %i.lz, i64 0
  %i.mi = insertelement <8 x i16> %i.mh, i16 %i.ma, i64 1
  %i.mj = insertelement <8 x i16> %i.mi, i16 %i.mb, i64 2
  %i.mk = insertelement <8 x i16> %i.mj, i16 %i.mc, i64 3
  %i.ml = insertelement <8 x i16> %i.mk, i16 %i.md, i64 4
  %i.mm = insertelement <8 x i16> %i.ml, i16 %i.me, i64 5
  %i.mn = insertelement <8 x i16> %i.mm, i16 %i.mf, i64 6
  %i.mo = insertelement <8 x i16> %i.mn, i16 %i.mg, i64 7
  %i.mp = sext <8 x i16> %i.mo to <8 x i32>       ; 2 uses
  %i.mq = mul nsw <8 x i32> %i.mp, splat (i32 27246)
  %i.mr = load i16, ptr %i.aa, align 2, !tbaa !76
  %i.ms = load i16, ptr %i.ab, align 2, !tbaa !76
  %i.mt = load i16, ptr %i.ac, align 2, !tbaa !76
  %i.mu = load i16, ptr %i.ad, align 2, !tbaa !76
  %i.mv = load i16, ptr %i.ae, align 2, !tbaa !76
  %i.mw = load i16, ptr %i.af, align 2, !tbaa !76
  %i.mx = load i16, ptr %i.ag, align 2, !tbaa !76
  %i.my = load i16, ptr %i.ah, align 2, !tbaa !76
  %i.mz = insertelement <8 x i16> poison, i16 %i.mr, i64 0
  %i.na = insertelement <8 x i16> %i.mz, i16 %i.ms, i64 1
  %i.nb = insertelement <8 x i16> %i.na, i16 %i.mt, i64 2
  %i.nc = insertelement <8 x i16> %i.nb, i16 %i.mu, i64 3
  %i.nd = insertelement <8 x i16> %i.nc, i16 %i.mv, i64 4
  %i.ne = insertelement <8 x i16> %i.nd, i16 %i.mw, i64 5
  %i.nf = insertelement <8 x i16> %i.ne, i16 %i.mx, i64 6
  %i.ng = insertelement <8 x i16> %i.nf, i16 %i.my, i64 7
  %i.nh = sext <8 x i16> %i.ng to <8 x i32>       ; 2 uses
  %i.ni = mul nsw <8 x i32> %i.nh, splat (i32 18405)
  %i.nj = add nsw <8 x i32> %i.ni, %i.mq          ; 2 uses
  %i.nk = mul nsw <8 x i32> %i.nh, splat (i32 27246)
  %i.nl = mul nsw <8 x i32> %i.mp, splat (i32 -18405)
  %i.nm = add nsw <8 x i32> %i.nk, %i.nl          ; 2 uses
  %i.nn = load i16, ptr %i.ai, align 2, !tbaa !76
  %i.no = load i16, ptr %i.aj, align 2, !tbaa !76
  %i.np = load i16, ptr %i.ak, align 2, !tbaa !76
  %i.nq = load i16, ptr %i.al, align 2, !tbaa !76
  %i.nr = load i16, ptr %i.am, align 2, !tbaa !76
  %i.ns = load i16, ptr %i.an, align 2, !tbaa !76
  %i.nt = load i16, ptr %i.ao, align 2, !tbaa !76
  %i.nu = load i16, ptr %i.ap, align 2, !tbaa !76
  %i.nv = insertelement <8 x i16> poison, i16 %i.nn, i64 0
  %i.nw = insertelement <8 x i16> %i.nv, i16 %i.no, i64 1
  %i.nx = insertelement <8 x i16> %i.nw, i16 %i.np, i64 2
  %i.ny = insertelement <8 x i16> %i.nx, i16 %i.nq, i64 3
  %i.nz = insertelement <8 x i16> %i.ny, i16 %i.nr, i64 4
  %i.oa = insertelement <8 x i16> %i.nz, i16 %i.ns, i64 5
  %i.ob = insertelement <8 x i16> %i.oa, i16 %i.nt, i64 6
  %i.oc = insertelement <8 x i16> %i.ob, i16 %i.nu, i64 7
  %i.od = sext <8 x i16> %i.oc to <8 x i32>       ; 2 uses
  %i.oe = mul nsw <8 x i32> %i.od, splat (i32 6393)
  %i.of = load i16, ptr %i.aq, align 2, !tbaa !76
  %i.og = load i16, ptr %i.ar, align 2, !tbaa !76
  %i.oh = load i16, ptr %i.as, align 2, !tbaa !76
  %i.oi = load i16, ptr %i.at, align 2, !tbaa !76
  %i.oj = load i16, ptr %i.au, align 2, !tbaa !76
  %i.ok = load i16, ptr %i.av, align 2, !tbaa !76
  %i.ol = load i16, ptr %i.aw, align 2, !tbaa !76
  %i.om = load i16, ptr %i.ax, align 2, !tbaa !76
  %i.on = insertelement <8 x i16> poison, i16 %i.of, i64 0
  %i.oo = insertelement <8 x i16> %i.on, i16 %i.og, i64 1
  %i.op = insertelement <8 x i16> %i.oo, i16 %i.oh, i64 2
  %i.oq = insertelement <8 x i16> %i.op, i16 %i.oi, i64 3
  %i.or = insertelement <8 x i16> %i.oq, i16 %i.oj, i64 4
  %i.os = insertelement <8 x i16> %i.or, i16 %i.ok, i64 5
  %i.ot = insertelement <8 x i16> %i.os, i16 %i.ol, i64 6
  %i.ou = insertelement <8 x i16> %i.ot, i16 %i.om, i64 7
  %i.ov = sext <8 x i16> %i.ou to <8 x i32>       ; 2 uses
  %i.ow = mul nsw <8 x i32> %i.ov, splat (i32 32139)
  %i.ox = add nsw <8 x i32> %i.ow, %i.oe          ; 2 uses
  %i.oy = mul nsw <8 x i32> %i.ov, splat (i32 6393)
  %i.oz = mul nsw <8 x i32> %i.od, splat (i32 -32139)
  %i.pa = add nsw <8 x i32> %i.oy, %i.oz          ; 2 uses
  %i.pb = add nsw <8 x i32> %i.nj, splat (i32 2048)
  %i.pc = add <8 x i32> %i.pb, %i.ox
  %i.pd = ashr <8 x i32> %i.pc, splat (i32 12)
  %i.pe = mul <8 x i32> %i.pd, splat (i32 5793)   ; 2 uses
  %i.pf = add nsw <8 x i32> %i.nm, splat (i32 2048)
  %i.pg = add <8 x i32> %i.pf, %i.pa
  %i.ph = ashr <8 x i32> %i.pg, splat (i32 12)
  %i.pi = mul <8 x i32> %i.ph, splat (i32 5793)   ; 2 uses
  %i.pj = sub <8 x i32> %i.ox, %i.nj              ; 2 uses
  %i.pk = sub <8 x i32> %i.pa, %i.nm              ; 2 uses
  %i.pl = load i16, ptr %i.ay, align 4, !tbaa !76
  %i.pm = load i16, ptr %i.az, align 4, !tbaa !76
  %i.pn = load i16, ptr %i.ba, align 4, !tbaa !76
  %i.po = load i16, ptr %i.bb, align 4, !tbaa !76
  %i.pp = load i16, ptr %i.bc, align 4, !tbaa !76
  %i.pq = load i16, ptr %i.bd, align 4, !tbaa !76
  %i.pr = load i16, ptr %i.be, align 4, !tbaa !76
  %i.ps = load i16, ptr %i.bf, align 4, !tbaa !76
  %i.pt = insertelement <8 x i16> poison, i16 %i.pl, i64 0
  %i.pu = insertelement <8 x i16> %i.pt, i16 %i.pm, i64 1
  %i.pv = insertelement <8 x i16> %i.pu, i16 %i.pn, i64 2
  %i.pw = insertelement <8 x i16> %i.pv, i16 %i.po, i64 3
  %i.px = insertelement <8 x i16> %i.pw, i16 %i.pp, i64 4
  %i.py = insertelement <8 x i16> %i.px, i16 %i.pq, i64 5
  %i.pz = insertelement <8 x i16> %i.py, i16 %i.pr, i64 6
  %i.qa = insertelement <8 x i16> %i.pz, i16 %i.ps, i64 7
  %i.qb = sext <8 x i16> %i.qa to <8 x i32>       ; 2 uses
  %i.qc = mul nsw <8 x i32> %i.qb, splat (i32 17734)
  %i.qd = load i16, ptr %i.bg, align 4, !tbaa !76
  %i.qe = load i16, ptr %i.bh, align 4, !tbaa !76
  %i.qf = load i16, ptr %i.bi, align 4, !tbaa !76
  %i.qg = load i16, ptr %i.bj, align 4, !tbaa !76
  %i.qh = load i16, ptr %i.bk, align 4, !tbaa !76
  %i.qi = load i16, ptr %i.bl, align 4, !tbaa !76
  %i.qj = load i16, ptr %i.bm, align 4, !tbaa !76
  %i.qk = load i16, ptr %i.bn, align 4, !tbaa !76
  %i.ql = insertelement <8 x i16> poison, i16 %i.qd, i64 0
  %i.qm = insertelement <8 x i16> %i.ql, i16 %i.qe, i64 1
  %i.qn = insertelement <8 x i16> %i.qm, i16 %i.qf, i64 2
  %i.qo = insertelement <8 x i16> %i.qn, i16 %i.qg, i64 3
  %i.qp = insertelement <8 x i16> %i.qo, i16 %i.qh, i64 4
  %i.qq = insertelement <8 x i16> %i.qp, i16 %i.qi, i64 5
  %i.qr = insertelement <8 x i16> %i.qq, i16 %i.qj, i64 6
  %i.qs = insertelement <8 x i16> %i.qr, i16 %i.qk, i64 7
  %i.qt = sext <8 x i16> %i.qs to <8 x i32>       ; 2 uses
  %i.qu = mul nsw <8 x i32> %i.qt, splat (i32 -42813)
  %i.qv = add nsw <8 x i32> %i.qu, %i.qc          ; 4 uses
  %i.qw = mul nsw <8 x i32> %i.qt, splat (i32 17734)
  %i.qx = mul nsw <8 x i32> %i.qb, splat (i32 42814)
  %i.qy = add nsw <8 x i32> %i.qw, %i.qx          ; 4 uses
  %i.qz = load i16, ptr %1, align 16, !tbaa !76
  %i.ra = load i16, ptr %next.gep, align 16, !tbaa !76
  %i.rb = load i16, ptr %next.gep120, align 16, !tbaa !76
  %i.rc = load i16, ptr %next.gep121, align 16, !tbaa !76
  %i.rd = load i16, ptr %next.gep122, align 16, !tbaa !76
  %i.re = load i16, ptr %next.gep123, align 16, !tbaa !76
  %i.rf = load i16, ptr %next.gep124, align 16, !tbaa !76
  %i.rg = load i16, ptr %next.gep125, align 16, !tbaa !76
  %i.rh = insertelement <8 x i16> poison, i16 %i.qz, i64 0
  %i.ri = insertelement <8 x i16> %i.rh, i16 %i.ra, i64 1
  %i.rj = insertelement <8 x i16> %i.ri, i16 %i.rb, i64 2
  %i.rk = insertelement <8 x i16> %i.rj, i16 %i.rc, i64 3
  %i.rl = insertelement <8 x i16> %i.rk, i16 %i.rd, i64 4
  %i.rm = insertelement <8 x i16> %i.rl, i16 %i.re, i64 5
  %i.rn = insertelement <8 x i16> %i.rm, i16 %i.rf, i64 6
  %i.ro = insertelement <8 x i16> %i.rn, i16 %i.rg, i64 7
  %i.rp = sext <8 x i16> %i.ro to <8 x i32>       ; 2 uses
  %i.rq = load i16, ptr %i.bo, align 8, !tbaa !76
  %i.rr = load i16, ptr %i.bp, align 8, !tbaa !76
  %i.rs = load i16, ptr %i.bq, align 8, !tbaa !76
  %i.rt = load i16, ptr %i.br, align 8, !tbaa !76
  %i.ru = load i16, ptr %i.bs, align 8, !tbaa !76
  %i.rv = load i16, ptr %i.bt, align 8, !tbaa !76
  %i.rw = load i16, ptr %i.bu, align 8, !tbaa !76
  %i.rx = load i16, ptr %i.bv, align 8, !tbaa !76
  %i.ry = insertelement <8 x i16> poison, i16 %i.rq, i64 0
  %i.rz = insertelement <8 x i16> %i.ry, i16 %i.rr, i64 1
  %i.sa = insertelement <8 x i16> %i.rz, i16 %i.rs, i64 2
  %i.sb = insertelement <8 x i16> %i.sa, i16 %i.rt, i64 3
  %i.sc = insertelement <8 x i16> %i.sb, i16 %i.ru, i64 4
  %i.sd = insertelement <8 x i16> %i.sc, i16 %i.rv, i64 5
  %i.se = insertelement <8 x i16> %i.sd, i16 %i.rw, i64 6
  %i.sf = insertelement <8 x i16> %i.se, i16 %i.rx, i64 7
  %i.sg = sext <8 x i16> %i.sf to <8 x i32>       ; 2 uses
  %i.sh = sub nsw <8 x i32> %i.rp, %i.sg
  %i.si = shl nsw <8 x i32> %i.sh, splat (i32 15) ; 3 uses
  %i.sj = add nsw <8 x i32> %i.sg, %i.rp
  %i.sk = shl nsw <8 x i32> %i.sj, splat (i32 15) ; 3 uses
  %i.sl = add <8 x i32> %i.pe, %i.qy
  %2 = add <8 x i32> %i.pj, %i.pk                 ; 2 uses
  %3 = add <8 x i32> %2, %i.qv
  %4 = sub <8 x i32> %i.pj, %i.pk                 ; 2 uses
  %5 = sub <8 x i32> %4, %i.qv
  %6 = sub <8 x i32> %i.pi, %i.qy
  %7 = add <8 x i32> %i.pi, %i.qy
  %8 = sub <8 x i32> %i.sk, %7
  %9 = add <8 x i32> %4, %i.qv
  %10 = sub <8 x i32> %i.si, %9
  %11 = sub <8 x i32> %i.qv, %2
  %12 = add <8 x i32> %11, %i.si
  %13 = sub <8 x i32> %i.qy, %i.pe
  %14 = add <8 x i32> %13, %i.sk
  %15 = shufflevector <8 x i32> %i.sl, <8 x i32> %3, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %16 = shufflevector <8 x i32> %5, <8 x i32> %6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %17 = shufflevector <16 x i32> %15, <16 x i32> %16, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %18 = shufflevector <8 x i32> %i.sk, <8 x i32> %i.si, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %19 = add <32 x i32> %17, %18
  %i.sm = shufflevector <8 x i32> %8, <8 x i32> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %20 = shufflevector <8 x i32> %12, <8 x i32> %14, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sn = shufflevector <16 x i32> %i.sm, <16 x i32> %20, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.so = shufflevector <32 x i32> %19, <32 x i32> %i.sn, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %i.sp = ashr <64 x i32> %i.so, splat (i32 20)
  %interleaved.vec = trunc nsw <64 x i32> %i.sp to <64 x i16>
  store <64 x i16> %interleaved.vec, ptr %1, align 16, !tbaa !76
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %vector.body, %.preheader.i.i.rtcont
  %.266.i.i = phi ptr [ %.rtmerge128, %.preheader.i.i.rtcont ], [ %1, %vector.body ] ; 11 uses
  %.02265.i.i = phi i32 [ %.rtmerge129, %.preheader.i.i.rtcont ], [ 0, %vector.body ]
  %.02664.i.i = phi ptr [ %.rtmerge, %.preheader.i.i.rtcont ], [ %i.cp, %vector.body ] ; 11 uses
  %.266.i.i126 = ptrtoaddr ptr %.266.i.i to i64   ; 2 uses
  %i.sq = add i64 %.266.i.i126, 16
  %.02664.i.i127 = ptrtoaddr ptr %.02664.i.i to i64 ; 2 uses
  %i.sr = add i64 %.02664.i.i127, 8
  %rt.bound0 = icmp ugt i64 %i.sq, %.02664.i.i127
  %rt.bound1 = icmp ugt i64 %i.sr, %.266.i.i126
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.preheader.i.i.rtscalar, label %.preheader.i.i.rtvec, !prof !77

.loopexit:                                        ; preds = %.preheader.i.i.rtcont, %bb.d
  %.sroa.5.6 = phi i32 [ %spec.select.i.i, %bb.d ], [ %.sroa.5.5, %.preheader.i.i.rtcont ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.ss = load i32, ptr %i.p, align 4, !tbaa !74  ; 2 uses
  %i.st = ashr i32 %i.ss, %i.bx
  %i.su = trunc nuw i64 %indvars.iv.next to i32
  %i.sv = icmp sgt i32 %i.st, %i.su
  br i1 %i.sv, label %.lr.ph, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.sw = phi i32 [ %i.cm, %.preheader ], [ %i.ss, %.loopexit ]
  %.sroa.5.2.lcssa = phi i32 [ %.sroa.5.197, %.preheader ], [ %.sroa.5.6, %.loopexit ] ; 2 uses
  %i.sx = getelementptr inbounds i8, ptr %.099, i64 %i.cl
  %i.sy = add nuw nsw i32 %.04198, 8              ; 2 uses
  %.not47 = icmp slt i32 %i.sy, %i.by
  br i1 %.not47, label %.preheader, label %.thread, !llvm.loop !71

.thread:                                          ; preds = %._crit_edge, %bb.b
  %.sroa.5.1.lcssa = phi i32 [ %.sroa.5.0101, %bb.b ], [ %.sroa.5.2.lcssa, %._crit_edge ]
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next108, 3
  br i1 %exitcond.not, label %.loopexit85, label %bb.b, !llvm.loop !72

.loopexit85:                                      ; preds = %.thread, %.lr.ph, %bb.e, %get_se_golomb.exit.i, %bb.a
  %.5 = phi i32 [ -1094995529, %bb.a ], [ -1094995529, %get_se_golomb.exit.i ], [ -1094995529, %.lr.ph ], [ -1094995529, %bb.e ], [ 0, %.thread ]
  ret i32 %.5

.preheader.i.i.rtvec:                             ; preds = %.preheader.i.i
  %i.sz = load <8 x i16>, ptr %.266.i.i, align 2, !tbaa !76
  %i.ta = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sz, <8 x i16> zeroinitializer)
  %i.tb = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.ta, <8 x i16> splat (i16 255))
  %i.tc = trunc nuw <8 x i16> %i.tb to <8 x i8>
  store <8 x i8> %i.tc, ptr %.02664.i.i, align 1, !tbaa !36
  br label %.preheader.i.i.rtcont

.preheader.i.i.rtscalar:                          ; preds = %.preheader.i.i
  %i.td = load i16, ptr %.266.i.i, align 2, !tbaa !76
  %i.te = tail call i16 @llvm.smax.i16(i16 %i.td, i16 0)
  %.0.i33.i.i.scalar = tail call i16 @llvm.umin.i16(i16 %i.te, i16 255)
  %.0.i.i.i.scalar = trunc nuw i16 %.0.i33.i.i.scalar to i8
  store i8 %.0.i.i.i.scalar, ptr %.02664.i.i, align 1, !tbaa !36
  %i.tf = getelementptr inbounds nuw i8, ptr %.266.i.i, i64 2
  %i.tg = load i16, ptr %i.tf, align 2, !tbaa !76
  %i.th = tail call i16 @llvm.smax.i16(i16 %i.tg, i16 0)
  %.0.i33.1.i.i.scalar = tail call i16 @llvm.umin.i16(i16 %i.th, i16 255)
  %.0.i.1.i.i.scalar = trunc nuw i16 %.0.i33.1.i.i.scalar to i8
  %i.ti = getelementptr inbounds nuw i8, ptr %.02664.i.i, i64 1
  store i8 %.0.i.1.i.i.scalar, ptr %i.ti, align 1, !tbaa !36
  %i.tj = getelementptr inbounds nuw i8, ptr %.266.i.i, i64 4
  %i.tk = load i16, ptr %i.tj, align 2, !tbaa !76
  %i.tl = tail call i16 @llvm.smax.i16(i16 %i.tk, i16 0)
  %.0.i33.2.i.i.scalar = tail call i16 @llvm.umin.i16(i16 %i.tl, i16 255)
  %.0.i.2.i.i.scalar = trunc nuw i16 %.0.i33.2.i.i.scalar to i8
  %i.tm = getelementptr inbounds nuw i8, ptr %.02664.i.i, i64 2
  store i8 %.0.i.2.i.i.scalar, ptr %i.tm, align 1, !tbaa !36
  %i.tn = getelementptr inbounds nuw i8, ptr %.266.i.i, i64 6
  %i.to = load i16, ptr %i.tn, align 2, !tbaa !76
  %i.tp = tail call i16 @llvm.smax.i16(i16 %i.to, i16 0)
  %.0.i33.3.i.i.scalar = tail call i16 @llvm.umin.i16(i16 %i.tp, i16 255)
  %.0.i.3.i.i.scalar = trunc nuw i16 %.0.i33.3.i.i.scalar to i8
  %i.tq = getelementptr inbounds nuw i8, ptr %.02664.i.i, i64 3
  store i8 %.0.i.3.i.i.scalar, ptr %i.tq, align 1, !tbaa !36
  %i.tr = getelementptr inbounds nuw i8, ptr %.266.i.i, i64 8
  %i.ts = load i16, ptr %i.tr, align 2, !tbaa !76
  %i.tt = tail call i16 @llvm.smax.i16(i16 %i.ts, i16 0)
  %.0.i33.4.i.i.scalar = tail call i16 @llvm.umin.i16(i16 %i.tt, i16 255)
  %.0.i.4.i.i.scalar = trunc nuw i16 %.0.i33.4.i.i.scalar to i8
  %i.tu = getelementptr inbounds nuw i8, ptr %.02664.i.i, i64 4
  store i8 %.0.i.4.i.i.scalar, ptr %i.tu, align 1, !tbaa !36
  %i.tv = getelementptr inbounds nuw i8, ptr %.266.i.i, i64 10
  %i.tw = load i16, ptr %i.tv, align 2, !tbaa !76
  %i.tx = tail call i16 @llvm.smax.i16(i16 %i.tw, i16 0)
  %.0.i33.5.i.i.scalar = tail call i16 @llvm.umin.i16(i16 %i.tx, i16 255)
  %.0.i.5.i.i.scalar = trunc nuw i16 %.0.i33.5.i.i.scalar to i8
  %i.ty = getelementptr inbounds nuw i8, ptr %.02664.i.i, i64 5
  store i8 %.0.i.5.i.i.scalar, ptr %i.ty, align 1, !tbaa !36
  %i.tz = getelementptr inbounds nuw i8, ptr %.266.i.i, i64 12
  %i.ua = load i16, ptr %i.tz, align 2, !tbaa !76
  %i.ub = tail call i16 @llvm.smax.i16(i16 %i.ua, i16 0)
  %.0.i33.6.i.i.scalar = tail call i16 @llvm.umin.i16(i16 %i.ub, i16 255)
  %.0.i.6.i.i.scalar = trunc nuw i16 %.0.i33.6.i.i.scalar to i8
  %i.uc = getelementptr inbounds nuw i8, ptr %.02664.i.i, i64 6
  store i8 %.0.i.6.i.i.scalar, ptr %i.uc, align 1, !tbaa !36
  %i.ud = getelementptr inbounds nuw i8, ptr %.266.i.i, i64 14
  %i.ue = load i16, ptr %i.ud, align 2, !tbaa !76
  %i.uf = tail call i16 @llvm.smax.i16(i16 %i.ue, i16 0)
  %.0.i33.7.i.i.scalar = tail call i16 @llvm.umin.i16(i16 %i.uf, i16 255)
  %.0.i.7.i.i.scalar = trunc nuw i16 %.0.i33.7.i.i.scalar to i8
  %i.ug = getelementptr inbounds nuw i8, ptr %.02664.i.i, i64 7
  store i8 %.0.i.7.i.i.scalar, ptr %i.ug, align 1, !tbaa !36
  br label %.preheader.i.i.rtcont

.preheader.i.i.rtcont:                            ; preds = %.preheader.i.i.rtscalar, %.preheader.i.i.rtvec
  %.rtmerge129 = add nuw nsw i32 %.02265.i.i, 1   ; 2 uses
  %exitcond70.not.i.i.rtmerge = icmp eq i32 %.rtmerge129, 8
  %.rtmerge128 = getelementptr inbounds nuw i8, ptr %.266.i.i, i64 16
  %.rtmerge = getelementptr inbounds i8, ptr %.02664.i.i, i64 %i.cj
  br i1 %exitcond70.not.i.i.rtmerge, label %.loopexit, label %.preheader.i.i, !llvm.loop !73
}

declare i32 @av_frame_replace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @fic_draw_cursor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 65536) %2, i32 noundef range(i32 0, 65536) %3) unnamed_addr #5 {
vector.ph:
  %i.a = alloca [4 x [1024 x i8]], align 16       ; 8 uses
  %i.b = alloca [3 x [256 x i8]], align 16        ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2048 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3072 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.h = shl i64 %index, 2                        ; 16 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.h  ; 4 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep160 = getelementptr i8, ptr %i.i, i64 4
  %i.j = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep161 = getelementptr i8, ptr %i.j, i64 8
  %i.k = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep162 = getelementptr i8, ptr %i.k, i64 12
  %i.l = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep163 = getelementptr i8, ptr %i.l, i64 16
  %i.m = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep164 = getelementptr i8, ptr %i.m, i64 20
  %i.n = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep165 = getelementptr i8, ptr %i.n, i64 24
  %i.o = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep166 = getelementptr i8, ptr %i.o, i64 28
  %i.p = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep167 = getelementptr i8, ptr %i.p, i64 32
  %i.q = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep168 = getelementptr i8, ptr %i.q, i64 36
  %i.r = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep169 = getelementptr i8, ptr %i.r, i64 40
  %i.s = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep170 = getelementptr i8, ptr %i.s, i64 44
  %i.t = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep171 = getelementptr i8, ptr %i.t, i64 48
  %i.u = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep172 = getelementptr i8, ptr %i.u, i64 52
  %i.v = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep173 = getelementptr i8, ptr %i.v, i64 56
  %i.w = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep174 = getelementptr i8, ptr %i.w, i64 60
  %i.x = load i8, ptr %next.gep, align 1, !tbaa !36
  %i.y = load i8, ptr %next.gep160, align 1, !tbaa !36
  %i.z = load i8, ptr %next.gep161, align 1, !tbaa !36
  %i.aa = load i8, ptr %next.gep162, align 1, !tbaa !36
  %i.ab = load i8, ptr %next.gep163, align 1, !tbaa !36
  %i.ac = load i8, ptr %next.gep164, align 1, !tbaa !36
  %i.ad = load i8, ptr %next.gep165, align 1, !tbaa !36
  %i.ae = load i8, ptr %next.gep166, align 1, !tbaa !36
  %i.af = load i8, ptr %next.gep167, align 1, !tbaa !36
  %i.ag = load i8, ptr %next.gep168, align 1, !tbaa !36
  %i.ah = load i8, ptr %next.gep169, align 1, !tbaa !36
  %i.ai = load i8, ptr %next.gep170, align 1, !tbaa !36
  %i.aj = load i8, ptr %next.gep171, align 1, !tbaa !36
  %i.ak = load i8, ptr %next.gep172, align 1, !tbaa !36
  %i.al = load i8, ptr %next.gep173, align 1, !tbaa !36
  %i.am = load i8, ptr %next.gep174, align 1, !tbaa !36
  %i.an = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.ao = insertelement <16 x i8> %i.an, i8 %i.y, i64 1
  %i.ap = insertelement <16 x i8> %i.ao, i8 %i.z, i64 2
  %i.aq = insertelement <16 x i8> %i.ap, i8 %i.aa, i64 3
  %i.ar = insertelement <16 x i8> %i.aq, i8 %i.ab, i64 4
  %i.as = insertelement <16 x i8> %i.ar, i8 %i.ac, i64 5
  %i.at = insertelement <16 x i8> %i.as, i8 %i.ad, i64 6
  %i.au = insertelement <16 x i8> %i.at, i8 %i.ae, i64 7
  %i.av = insertelement <16 x i8> %i.au, i8 %i.af, i64 8
  %i.aw = insertelement <16 x i8> %i.av, i8 %i.ag, i64 9
  %i.ax = insertelement <16 x i8> %i.aw, i8 %i.ah, i64 10
  %i.ay = insertelement <16 x i8> %i.ax, i8 %i.ai, i64 11
  %i.az = insertelement <16 x i8> %i.ay, i8 %i.aj, i64 12
  %i.ba = insertelement <16 x i8> %i.az, i8 %i.ak, i64 13
  %i.bb = insertelement <16 x i8> %i.ba, i8 %i.al, i64 14
end_hunk_0
