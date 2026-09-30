Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/fic?download=true
inline.NumInlined: 9
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@fic_decode_slice:bb.a
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
  %i.sm = add <8 x i32> %i.pj, %i.pk              ; 2 uses
  %i.sn = add <8 x i32> %i.sm, %i.qv
  %i.so = sub <8 x i32> %i.pj, %i.pk              ; 2 uses
  %i.sp = sub <8 x i32> %i.so, %i.qv
  %i.sq = sub <8 x i32> %i.pi, %i.qy
  %i.sr = add <8 x i32> %i.pi, %i.qy
  %i.ss = sub <8 x i32> %i.sk, %i.sr
  %i.st = add <8 x i32> %i.so, %i.qv
  %i.su = sub <8 x i32> %i.si, %i.st
  %i.sv = sub <8 x i32> %i.qv, %i.sm
  %i.sw = add <8 x i32> %i.sv, %i.si
  %i.sx = sub <8 x i32> %i.qy, %i.pe
  %i.sy = add <8 x i32> %i.sx, %i.sk
  %i.sz = shufflevector <8 x i32> %i.sl, <8 x i32> %i.sn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ta = shufflevector <8 x i32> %i.sp, <8 x i32> %i.sq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tb = shufflevector <16 x i32> %i.sz, <16 x i32> %i.ta, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.tc = shufflevector <8 x i32> %i.sk, <8 x i32> %i.si, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.td = add <32 x i32> %i.tb, %i.tc
  %i.te = shufflevector <8 x i32> %i.ss, <8 x i32> %i.su, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tf = shufflevector <8 x i32> %i.sw, <8 x i32> %i.sy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tg = shufflevector <16 x i32> %i.te, <16 x i32> %i.tf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.th = shufflevector <32 x i32> %i.td, <32 x i32> %i.tg, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %i.ti = ashr <64 x i32> %i.th, splat (i32 20)
  %interleaved.vec = trunc nsw <64 x i32> %i.ti to <64 x i16>
  store <64 x i16> %interleaved.vec, ptr %1, align 16, !tbaa !76
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %vector.body, %.preheader.i.i.rtcont
  %.265.i.i = phi ptr [ %.rtmerge128, %.preheader.i.i.rtcont ], [ %1, %vector.body ] ; 11 uses
  %.02264.i.i = phi i32 [ %.rtmerge129, %.preheader.i.i.rtcont ], [ 0, %vector.body ]
  %.02663.i.i = phi ptr [ %.rtmerge, %.preheader.i.i.rtcont ], [ %i.cp, %vector.body ] ; 11 uses
  %.265.i.i126 = ptrtoaddr ptr %.265.i.i to i64   ; 2 uses
  %i.tj = add i64 %.265.i.i126, 16
  %.02663.i.i127 = ptrtoaddr ptr %.02663.i.i to i64 ; 2 uses
  %i.tk = add i64 %.02663.i.i127, 8
  %rt.bound0 = icmp ugt i64 %i.tj, %.02663.i.i127
  %rt.bound1 = icmp ugt i64 %i.tk, %.265.i.i126
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.preheader.i.i.rtscalar, label %.preheader.i.i.rtvec, !prof !77

.loopexit:                                        ; preds = %.preheader.i.i.rtcont, %bb.d
  %.sroa.5.6 = phi i32 [ %spec.select.i.i, %bb.d ], [ %.sroa.5.5, %.preheader.i.i.rtcont ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.tl = load i32, ptr %i.p, align 4, !tbaa !74  ; 2 uses
  %i.tm = ashr i32 %i.tl, %i.bx
  %i.tn = trunc nuw i64 %indvars.iv.next to i32
  %i.to = icmp sgt i32 %i.tm, %i.tn
  br i1 %i.to, label %.lr.ph, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.tp = phi i32 [ %i.cm, %.preheader ], [ %i.tl, %.loopexit ]
  %.sroa.5.2.lcssa = phi i32 [ %.sroa.5.197, %.preheader ], [ %.sroa.5.6, %.loopexit ] ; 2 uses
  %i.tq = getelementptr inbounds i8, ptr %.099, i64 %i.cl
  %i.tr = add nuw nsw i32 %.04198, 8              ; 2 uses
  %.not47 = icmp slt i32 %i.tr, %i.by
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
  %i.ts = load <8 x i16>, ptr %.265.i.i, align 2, !tbaa !76 ; 3 uses
  %2 = icmp ugt <8 x i16> %i.ts, splat (i16 255)
  %3 = icmp sgt <8 x i16> %i.ts, splat (i16 -1)
  %4 = sext <8 x i1> %3 to <8 x i8>
  %i.tt = trunc <8 x i16> %i.ts to <8 x i8>
  %5 = select <8 x i1> %2, <8 x i8> %4, <8 x i8> %i.tt
  store <8 x i8> %5, ptr %.02663.i.i, align 1, !tbaa !36
  br label %.preheader.i.i.rtcont

.preheader.i.i.rtscalar:                          ; preds = %.preheader.i.i
  %i.tu = load i16, ptr %.265.i.i, align 2, !tbaa !76 ; 3 uses
  %6 = icmp ugt i16 %i.tu, 255
  %isnotneg.i.i.i.scalar = icmp sgt i16 %i.tu, -1
  %7 = sext i1 %isnotneg.i.i.i.scalar to i8
  %i.tv = trunc i16 %i.tu to i8
  %.0.i.i.i.scalar = select i1 %6, i8 %7, i8 %i.tv
  store i8 %.0.i.i.i.scalar, ptr %.02663.i.i, align 1, !tbaa !36
  %i.tw = getelementptr inbounds nuw i8, ptr %.265.i.i, i64 2
  %i.tx = load i16, ptr %i.tw, align 2, !tbaa !76 ; 3 uses
  %8 = icmp ugt i16 %i.tx, 255
  %isnotneg.i.1.i.i.scalar = icmp sgt i16 %i.tx, -1
  %9 = sext i1 %isnotneg.i.1.i.i.scalar to i8
  %i.ty = trunc i16 %i.tx to i8
  %.0.i.1.i.i.scalar = select i1 %8, i8 %9, i8 %i.ty
  %i.tz = getelementptr inbounds nuw i8, ptr %.02663.i.i, i64 1
  store i8 %.0.i.1.i.i.scalar, ptr %i.tz, align 1, !tbaa !36
  %i.ua = getelementptr inbounds nuw i8, ptr %.265.i.i, i64 4
  %i.ub = load i16, ptr %i.ua, align 2, !tbaa !76 ; 3 uses
  %10 = icmp ugt i16 %i.ub, 255
  %isnotneg.i.2.i.i.scalar = icmp sgt i16 %i.ub, -1
  %11 = sext i1 %isnotneg.i.2.i.i.scalar to i8
  %i.uc = trunc i16 %i.ub to i8
  %.0.i.2.i.i.scalar = select i1 %10, i8 %11, i8 %i.uc
  %i.ud = getelementptr inbounds nuw i8, ptr %.02663.i.i, i64 2
  store i8 %.0.i.2.i.i.scalar, ptr %i.ud, align 1, !tbaa !36
  %i.ue = getelementptr inbounds nuw i8, ptr %.265.i.i, i64 6
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !76 ; 3 uses
  %12 = icmp ugt i16 %i.uf, 255
  %isnotneg.i.3.i.i.scalar = icmp sgt i16 %i.uf, -1
  %13 = sext i1 %isnotneg.i.3.i.i.scalar to i8
  %i.ug = trunc i16 %i.uf to i8
  %.0.i.3.i.i.scalar = select i1 %12, i8 %13, i8 %i.ug
  %i.uh = getelementptr inbounds nuw i8, ptr %.02663.i.i, i64 3
  store i8 %.0.i.3.i.i.scalar, ptr %i.uh, align 1, !tbaa !36
  %i.ui = getelementptr inbounds nuw i8, ptr %.265.i.i, i64 8
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !76 ; 3 uses
  %14 = icmp ugt i16 %i.uj, 255
  %isnotneg.i.4.i.i.scalar = icmp sgt i16 %i.uj, -1
  %15 = sext i1 %isnotneg.i.4.i.i.scalar to i8
  %i.uk = trunc i16 %i.uj to i8
  %.0.i.4.i.i.scalar = select i1 %14, i8 %15, i8 %i.uk
  %i.ul = getelementptr inbounds nuw i8, ptr %.02663.i.i, i64 4
  store i8 %.0.i.4.i.i.scalar, ptr %i.ul, align 1, !tbaa !36
  %i.um = getelementptr inbounds nuw i8, ptr %.265.i.i, i64 10
  %i.un = load i16, ptr %i.um, align 2, !tbaa !76 ; 3 uses
  %16 = icmp ugt i16 %i.un, 255
  %isnotneg.i.5.i.i.scalar = icmp sgt i16 %i.un, -1
  %17 = sext i1 %isnotneg.i.5.i.i.scalar to i8
  %i.uo = trunc i16 %i.un to i8
  %.0.i.5.i.i.scalar = select i1 %16, i8 %17, i8 %i.uo
  %i.up = getelementptr inbounds nuw i8, ptr %.02663.i.i, i64 5
  store i8 %.0.i.5.i.i.scalar, ptr %i.up, align 1, !tbaa !36
  %i.uq = getelementptr inbounds nuw i8, ptr %.265.i.i, i64 12
  %i.ur = load i16, ptr %i.uq, align 2, !tbaa !76 ; 3 uses
  %18 = icmp ugt i16 %i.ur, 255
  %isnotneg.i.6.i.i.scalar = icmp sgt i16 %i.ur, -1
  %19 = sext i1 %isnotneg.i.6.i.i.scalar to i8
  %i.us = trunc i16 %i.ur to i8
  %.0.i.6.i.i.scalar = select i1 %18, i8 %19, i8 %i.us
  %i.ut = getelementptr inbounds nuw i8, ptr %.02663.i.i, i64 6
  store i8 %.0.i.6.i.i.scalar, ptr %i.ut, align 1, !tbaa !36
  %i.uu = getelementptr inbounds nuw i8, ptr %.265.i.i, i64 14
  %i.uv = load i16, ptr %i.uu, align 2, !tbaa !76 ; 3 uses
  %20 = icmp ugt i16 %i.uv, 255
  %isnotneg.i.7.i.i.scalar = icmp sgt i16 %i.uv, -1
  %21 = sext i1 %isnotneg.i.7.i.i.scalar to i8
  %i.uw = trunc i16 %i.uv to i8
  %.0.i.7.i.i.scalar = select i1 %20, i8 %21, i8 %i.uw
  %i.ux = getelementptr inbounds nuw i8, ptr %.02663.i.i, i64 7
  store i8 %.0.i.7.i.i.scalar, ptr %i.ux, align 1, !tbaa !36
  br label %.preheader.i.i.rtcont

.preheader.i.i.rtcont:                            ; preds = %.preheader.i.i.rtscalar, %.preheader.i.i.rtvec
  %.rtmerge129 = add nuw nsw i32 %.02264.i.i, 1   ; 2 uses
  %exitcond69.not.i.i.rtmerge = icmp eq i32 %.rtmerge129, 8
  %.rtmerge128 = getelementptr inbounds nuw i8, ptr %.265.i.i, i64 16
  %.rtmerge = getelementptr inbounds i8, ptr %.02663.i.i, i64 %i.cj
  br i1 %exitcond69.not.i.i.rtmerge, label %.loopexit, label %.preheader.i.i, !llvm.loop !73
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
  %i.bc = insertelement <16 x i8> %i.bb, i8 %i.am, i64 15
  %i.bd = zext <16 x i8> %i.bc to <16 x i32>      ; 3 uses
  %i.be = mul nuw nsw <16 x i32> %i.bd, splat (i32 25)
  %i.bf = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.bg = getelementptr i8, ptr %i.i, i64 5
  %i.bh = getelementptr i8, ptr %i.j, i64 9
  %i.bi = getelementptr i8, ptr %i.k, i64 13
  %i.bj = getelementptr i8, ptr %i.l, i64 17
  %i.bk = getelementptr i8, ptr %i.m, i64 21
  %i.bl = getelementptr i8, ptr %i.n, i64 25
  %i.bm = getelementptr i8, ptr %i.o, i64 29
  %i.bn = getelementptr i8, ptr %i.p, i64 33
  %i.bo = getelementptr i8, ptr %i.q, i64 37
  %i.bp = getelementptr i8, ptr %i.r, i64 41
  %i.bq = getelementptr i8, ptr %i.s, i64 45
  %i.br = getelementptr i8, ptr %i.t, i64 49
  %i.bs = getelementptr i8, ptr %i.u, i64 53
  %i.bt = getelementptr i8, ptr %i.v, i64 57
  %i.bu = getelementptr i8, ptr %i.w, i64 61
  %i.bv = load i8, ptr %i.bf, align 1, !tbaa !36
  %i.bw = load i8, ptr %i.bg, align 1, !tbaa !36
  %i.bx = load i8, ptr %i.bh, align 1, !tbaa !36
  %i.by = load i8, ptr %i.bi, align 1, !tbaa !36
  %i.bz = load i8, ptr %i.bj, align 1, !tbaa !36
  %i.ca = load i8, ptr %i.bk, align 1, !tbaa !36
  %i.cb = load i8, ptr %i.bl, align 1, !tbaa !36
  %i.cc = load i8, ptr %i.bm, align 1, !tbaa !36
  %i.cd = load i8, ptr %i.bn, align 1, !tbaa !36
  %i.ce = load i8, ptr %i.bo, align 1, !tbaa !36
  %i.cf = load i8, ptr %i.bp, align 1, !tbaa !36
  %i.cg = load i8, ptr %i.bq, align 1, !tbaa !36
  %i.ch = load i8, ptr %i.br, align 1, !tbaa !36
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !36
  %i.cj = load i8, ptr %i.bt, align 1, !tbaa !36
  %i.ck = load i8, ptr %i.bu, align 1, !tbaa !36
  %i.cl = insertelement <16 x i8> poison, i8 %i.bv, i64 0
  %i.cm = insertelement <16 x i8> %i.cl, i8 %i.bw, i64 1
  %i.cn = insertelement <16 x i8> %i.cm, i8 %i.bx, i64 2
  %i.co = insertelement <16 x i8> %i.cn, i8 %i.by, i64 3
  %i.cp = insertelement <16 x i8> %i.co, i8 %i.bz, i64 4
  %i.cq = insertelement <16 x i8> %i.cp, i8 %i.ca, i64 5
  %i.cr = insertelement <16 x i8> %i.cq, i8 %i.cb, i64 6
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cc, i64 7
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 8
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 9
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 10
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 11
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 12
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 13
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 14
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 15
  %i.db = zext <16 x i8> %i.da to <16 x i32>      ; 2 uses
  %i.dc = mul nuw nsw <16 x i32> %i.db, splat (i32 129)
  %i.dd = add nuw nsw <16 x i32> %i.dc, %i.be
  %i.de = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.df = getelementptr i8, ptr %i.i, i64 6
  %i.dg = getelementptr i8, ptr %i.j, i64 10
  %i.dh = getelementptr i8, ptr %i.k, i64 14
  %i.di = getelementptr i8, ptr %i.l, i64 18
  %i.dj = getelementptr i8, ptr %i.m, i64 22
  %i.dk = getelementptr i8, ptr %i.n, i64 26
  %i.dl = getelementptr i8, ptr %i.o, i64 30
  %i.dm = getelementptr i8, ptr %i.p, i64 34
  %i.dn = getelementptr i8, ptr %i.q, i64 38
  %i.do = getelementptr i8, ptr %i.r, i64 42
  %i.dp = getelementptr i8, ptr %i.s, i64 46
  %i.dq = getelementptr i8, ptr %i.t, i64 50
  %i.dr = getelementptr i8, ptr %i.u, i64 54
  %i.ds = getelementptr i8, ptr %i.v, i64 58
  %i.dt = getelementptr i8, ptr %i.w, i64 62
  %i.du = load i8, ptr %i.de, align 1, !tbaa !36
  %i.dv = load i8, ptr %i.df, align 1, !tbaa !36
  %i.dw = load i8, ptr %i.dg, align 1, !tbaa !36
  %i.dx = load i8, ptr %i.dh, align 1, !tbaa !36
  %i.dy = load i8, ptr %i.di, align 1, !tbaa !36
  %i.dz = load i8, ptr %i.dj, align 1, !tbaa !36
  %i.ea = load i8, ptr %i.dk, align 1, !tbaa !36
  %i.eb = load i8, ptr %i.dl, align 1, !tbaa !36
  %i.ec = load i8, ptr %i.dm, align 1, !tbaa !36
  %i.ed = load i8, ptr %i.dn, align 1, !tbaa !36
  %i.ee = load i8, ptr %i.do, align 1, !tbaa !36
  %i.ef = load i8, ptr %i.dp, align 1, !tbaa !36
  %i.eg = load i8, ptr %i.dq, align 1, !tbaa !36
  %i.eh = load i8, ptr %i.dr, align 1, !tbaa !36
  %i.ei = load i8, ptr %i.ds, align 1, !tbaa !36
  %i.ej = load i8, ptr %i.dt, align 1, !tbaa !36
  %i.ek = insertelement <16 x i8> poison, i8 %i.du, i64 0
  %i.el = insertelement <16 x i8> %i.ek, i8 %i.dv, i64 1
  %i.em = insertelement <16 x i8> %i.el, i8 %i.dw, i64 2
  %i.en = insertelement <16 x i8> %i.em, i8 %i.dx, i64 3
  %i.eo = insertelement <16 x i8> %i.en, i8 %i.dy, i64 4
  %i.ep = insertelement <16 x i8> %i.eo, i8 %i.dz, i64 5
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 6
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 7
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 8
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 9
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 10
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 11
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 12
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 13
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 14
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 15
  %i.fa = zext <16 x i8> %i.ez to <16 x i32>      ; 3 uses
  %i.fb = mul nuw nsw <16 x i32> %i.fa, splat (i32 66)
  %i.fc = add nuw nsw <16 x i32> %i.dd, %i.fb
  %i.fd = trunc nuw <16 x i32> %i.fc to <16 x i16>
  %i.fe = udiv <16 x i16> %i.fd, splat (i16 255)
  %i.ff = trunc nuw <16 x i16> %i.fe to <16 x i8>
  %i.fg = add nuw <16 x i8> %i.ff, splat (i8 16)
end_hunk_0
begin_hunk_1_@fic_draw_cursor:vector.ph
  br label %vec.epilog.vector.body210

vec.epilog.vector.body210:                        ; preds = %vec.epilog.vector.body210, %vec.epilog.ph208
  %index211 = phi i64 [ %vec.epilog.resume.val203, %vec.epilog.ph208 ], [ %index.next215, %vec.epilog.vector.body210 ] ; 4 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.py, i64 %index211
  %wide.load212 = load <4 x i8>, ptr %i.qn, align 4, !tbaa !36
  %i.qo = zext <4 x i8> %wide.load212 to <4 x i16>
  %i.qp = getelementptr inbounds nuw i8, ptr %i.lr, i64 %index211 ; 2 uses
  %wide.load213 = load <4 x i8>, ptr %i.qp, align 1, !tbaa !36 ; 2 uses
  %i.qq = zext <4 x i8> %wide.load213 to <4 x i16>
  %i.qr = sub nsw <4 x i16> %i.qo, %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.pz, i64 %index211
  %wide.load214 = load <4 x i8>, ptr %i.qs, align 4, !tbaa !36
  %i.qt = zext <4 x i8> %wide.load214 to <4 x i16>
  %i.qu = mul <4 x i16> %i.qr, %i.qt
  %i.qv = lshr <4 x i16> %i.qu, splat (i16 8)
  %i.qw = trunc nuw <4 x i16> %i.qv to <4 x i8>
  %i.qx = add <4 x i8> %wide.load213, %i.qw
  store <4 x i8> %i.qx, ptr %i.qp, align 1, !tbaa !36
  %index.next215 = add nuw i64 %index211, 4       ; 2 uses
  %i.qy = icmp eq i64 %index.next215, %n.vec209
  br i1 %i.qy, label %vec.epilog.middle.block216, label %vec.epilog.vector.body210, !llvm.loop !86

vec.epilog.middle.block216:                       ; preds = %vec.epilog.vector.body210
  %cmp.n217 = icmp eq i64 %n.vec209, %wide.trip.count147
  br i1 %cmp.n217, label %iter.check, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %iter.check204, %vec.epilog.iter.check206, %vec.epilog.middle.block216
  %indvars.iv144.ph = phi i64 [ 0, %iter.check204 ], [ %n.vec194, %vec.epilog.iter.check206 ], [ %n.vec209, %vec.epilog.middle.block216 ]
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %.lr.ph107
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %.lr.ph107 ], [ %indvars.iv144.ph, %.lr.ph107.preheader ] ; 4 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.py, i64 %indvars.iv144
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !36
  %i.rb = zext i8 %i.ra to i16
  %i.rc = getelementptr inbounds nuw i8, ptr %i.lr, i64 %indvars.iv144 ; 2 uses
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !36  ; 2 uses
  %i.re = zext i8 %i.rd to i16
  %i.rf = sub nsw i16 %i.rb, %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %i.pz, i64 %indvars.iv144
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !36
  %i.ri = zext i8 %i.rh to i16
  %i.rj = mul i16 %i.rf, %i.ri
  %i.rk = lshr i16 %i.rj, 8
  %i.rl = trunc nuw i16 %i.rk to i8
  %i.rm = add i8 %i.rd, %i.rl
  store i8 %i.rm, ptr %i.rc, align 1, !tbaa !36
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %iter.check, label %.lr.ph107, !llvm.loop !87

iter.check:                                       ; preds = %.lr.ph107, %vec.epilog.middle.block216, %middle.block201
  %i.rn = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.px ; 3 uses
  %smax152 = tail call i32 @llvm.smax.i32(i32 %i.lv, i32 1)
  %wide.trip.count153 = zext nneg i32 %smax152 to i64
  %min.iters.check = icmp slt i32 %i.lu, 8
  br i1 %min.iters.check, label %.lr.ph109.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check175 = icmp slt i32 %i.lu, 32
  br i1 %min.iters.check175, label %vec.epilog.ph, label %vector.ph176

vector.ph176:                                     ; preds = %vector.main.loop.iter.check
  %i.ro = and i64 %wide.trip.count147, 12
  %n.vec = and i64 %wide.trip.count147, 16        ; 4 uses
  br label %vector.body177

vector.body177:                                   ; preds = %vector.ph176, %vector.body177
  %index178 = phi i64 [ 0, %vector.ph176 ], [ %index.next181, %vector.body177 ] ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rn, i64 %index178
  %wide.load = load <16 x i8>, ptr %i.rp, align 16, !tbaa !36
  %i.rq = zext <16 x i8> %wide.load to <16 x i16>
  %i.rr = getelementptr inbounds nuw i8, ptr %i.lq, i64 %index178 ; 2 uses
  %wide.load179 = load <16 x i8>, ptr %i.rr, align 1, !tbaa !36 ; 2 uses
  %i.rs = zext <16 x i8> %wide.load179 to <16 x i16>
  %i.rt = sub nsw <16 x i16> %i.rq, %i.rs
  %i.ru = getelementptr inbounds nuw i8, ptr %i.pz, i64 %index178
  %wide.load180 = load <16 x i8>, ptr %i.ru, align 16, !tbaa !36
  %i.rv = zext <16 x i8> %wide.load180 to <16 x i16>
  %i.rw = mul <16 x i16> %i.rt, %i.rv
  %i.rx = lshr <16 x i16> %i.rw, splat (i16 8)
  %i.ry = trunc nuw <16 x i16> %i.rx to <16 x i8>
  %i.rz = add <16 x i8> %wide.load179, %i.ry
  store <16 x i8> %i.rz, ptr %i.rr, align 1, !tbaa !36
  %index.next181 = add nuw i64 %index178, 16      ; 2 uses
  %i.sa = icmp eq i64 %index.next181, %n.vec
  br i1 %i.sa, label %middle.block182, label %vector.body177, !llvm.loop !88

middle.block182:                                  ; preds = %vector.body177
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count147
  br i1 %cmp.n, label %fic_alpha_blend.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block182
  %min.epilog.iters.check = icmp eq i64 %i.ro, 0
  br i1 %min.epilog.iters.check, label %.lr.ph109.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec183 = and i64 %wide.trip.count147, 28     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index184 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next188, %vec.epilog.vector.body ] ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rn, i64 %index184
  %wide.load185 = load <4 x i8>, ptr %i.sb, align 4, !tbaa !36
  %i.sc = zext <4 x i8> %wide.load185 to <4 x i16>
  %i.sd = getelementptr inbounds nuw i8, ptr %i.lq, i64 %index184 ; 2 uses
  %wide.load186 = load <4 x i8>, ptr %i.sd, align 1, !tbaa !36 ; 2 uses
  %i.se = zext <4 x i8> %wide.load186 to <4 x i16>
  %i.sf = sub nsw <4 x i16> %i.sc, %i.se
  %i.sg = getelementptr inbounds nuw i8, ptr %i.pz, i64 %index184
  %wide.load187 = load <4 x i8>, ptr %i.sg, align 4, !tbaa !36
  %i.sh = zext <4 x i8> %wide.load187 to <4 x i16>
  %i.si = mul <4 x i16> %i.sf, %i.sh
  %i.sj = lshr <4 x i16> %i.si, splat (i16 8)
  %i.sk = trunc nuw <4 x i16> %i.sj to <4 x i8>
  %i.sl = add <4 x i8> %wide.load186, %i.sk
  store <4 x i8> %i.sl, ptr %i.sd, align 1, !tbaa !36
  %index.next188 = add nuw i64 %index184, 4       ; 2 uses
  %i.sm = icmp eq i64 %index.next188, %n.vec183
  br i1 %i.sm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !89

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n189 = icmp eq i64 %n.vec183, %wide.trip.count147
  br i1 %cmp.n189, label %fic_alpha_blend.exit, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv149.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec183, %vec.epilog.middle.block ]
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %.lr.ph109
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %.lr.ph109 ], [ %indvars.iv149.ph, %.lr.ph109.preheader ] ; 4 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rn, i64 %indvars.iv149
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !36
  %i.sp = zext i8 %i.so to i16
  %i.sq = getelementptr inbounds nuw i8, ptr %i.lq, i64 %indvars.iv149 ; 2 uses
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !36  ; 2 uses
  %i.ss = zext i8 %i.sr to i16
  %i.st = sub nsw i16 %i.sp, %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %i.pz, i64 %indvars.iv149
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !36
  %i.sw = zext i8 %i.sv to i16
  %i.sx = mul i16 %i.st, %i.sw
  %i.sy = lshr i16 %i.sx, 8
  %i.sz = trunc nuw i16 %i.sy to i8
  %i.ta = add i8 %i.sr, %i.sz
  store i8 %i.ta, ptr %i.sq, align 1, !tbaa !36
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count153
  br i1 %exitcond154.not, label %fic_alpha_blend.exit, label %.lr.ph109, !llvm.loop !90

fic_alpha_blend.exit:                             ; preds = %.lr.ph109, %middle.block182, %vec.epilog.middle.block, %bb.b, %fic_alpha_blend.exit87
  %i.tb = load ptr, ptr %i.ib, align 8, !tbaa !35 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 64
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !33
  %i.te = shl nsw i32 %i.td, 1
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds i8, ptr %i.ls, i64 %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %i.tb, i64 68
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !33
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds i8, ptr %i.lr, i64 %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tb, i64 72
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !33
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr inbounds i8, ptr %i.lq, i64 %i.tn
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 2 ; 2 uses
  %i.tp = load i32, ptr %i.ic, align 4, !tbaa !40
  %i.tq = sub nsw i32 %i.tp, %3
  %i.tr = tail call i32 @llvm.smin.i32(i32 %i.tq, i32 32)
  %spec.select = add nsw i32 %i.tr, -1
  %i.ts = sext i32 %spec.select to i64
  %i.tt = icmp slt i64 %indvars.iv.next156, %i.ts
  br i1 %i.tt, label %bb.b, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %fic_alpha_blend.exit, %.preheader93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!30 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!31 = !{!"p1 _ZTS16FICThreadContext", !9, i64 0}
!32 = !{!"FICContext", !10, i64 0, !29, i64 8, !30, i64 16, !30, i64 24, !31, i64 32, !6, i64 40, !14, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76}
!33 = !{!6, !6, i64 0}
!34 = !{!32, !30, i64 16}
!35 = !{!32, !30, i64 24}
!36 = !{!5, !5, i64 0}
!37 = !{!14, !14, i64 0}
!38 = !{!32, !14, i64 48}
!39 = !{!27, !6, i64 112}
!40 = !{!27, !6, i64 116}
!41 = !{!"FICThreadContext", !5, i64 0, !14, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148}
!42 = !{!41, !14, i64 128}
!43 = !{!41, !6, i64 140}
!44 = !{!41, !6, i64 136}
!45 = !{!41, !6, i64 144}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!32, !29, i64 8}
!48 = !{!27, !6, i64 136}
!49 = !{!27, !6, i64 652}
!50 = distinct !{!50, !46}
!51 = distinct !{!51, !46}
!52 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!53 = !{!52, !14, i64 24}
!54 = !{!32, !6, i64 76}
!55 = !{!52, !6, i64 32}
!56 = !{!32, !6, i64 64}
!57 = !{!32, !6, i64 72}
!58 = !{!32, !6, i64 40}
!59 = !{!32, !31, i64 32}
!60 = !{!27, !9, i64 672}
!61 = !{!"p2 omnipotent char", !25, i64 0}
!62 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!63 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!64 = !{!"AVFrame", !5, i64 0, !5, i64 64, !61, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !62, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !63, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!65 = !{!64, !6, i64 276}
!66 = !{!64, !6, i64 120}
!67 = !{!41, !6, i64 148}
!68 = distinct !{!68, !46}
!69 = distinct !{!69, !46}
!70 = distinct !{!70, !46}
!71 = distinct !{!71, !46}
!72 = distinct !{!72, !46}
!73 = distinct !{!73, !46}
!74 = !{!32, !6, i64 60}
!75 = !{!"short", !5, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"branch_weights", i32 1, i32 1048575}
!78 = distinct !{!78, !46, !92, !93}
!79 = distinct !{!79, !46}
!80 = distinct !{!80, !46}
!81 = distinct !{!81, !46, !92, !93}
!82 = distinct !{!82, !46, !93, !92}
!83 = distinct !{!83, !46, !92, !93}
!84 = distinct !{!84, !46, !93, !92}
!85 = distinct !{!85, !46, !92, !93}
!86 = distinct !{!86, !46, !92, !93}
!87 = distinct !{!87, !46, !93, !92}
!88 = distinct !{!88, !46, !92, !93}
!89 = distinct !{!89, !46, !92, !93}
!90 = distinct !{!90, !46, !93, !92}
!91 = distinct !{!91, !46}
!92 = !{!"llvm.loop.isvectorized", i32 1}
!93 = !{!"llvm.loop.unroll.runtime.disable"}
!94 = !{!"branch_weights", i32 4, i32 12}
end_hunk_1
