Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/chorba_sse41?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@crc32_chorba_sse41:bb.a
  %i.mg = load <2 x i64>, ptr %i.kp, align 16, !tbaa !11 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  %i.mi = load <2 x i64>, ptr %i.mf, align 16, !tbaa !11 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.k, i64 560
  %i.mk = load <2 x i64>, ptr %i.mh, align 16, !tbaa !11 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.k, i64 576
  %i.mm = load <2 x i64>, ptr %i.mj, align 16, !tbaa !11 ; 3 uses
  %i.mn = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.mg, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.mo = shufflevector <2 x i64> %i.mg, <2 x i64> %i.mi, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.mp = shufflevector <2 x i64> %i.mi, <2 x i64> %i.mk, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.mq = shufflevector <2 x i64> %i.mk, <2 x i64> %i.mm, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.mr = shufflevector <2 x i64> %i.mm, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ms = xor <2 x i64> %i.li, %i.mn
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 1680 ; 2 uses
  %i.mu = load <2 x i64>, ptr %i.mt, align 16, !tbaa !11
  %i.mv = xor <2 x i64> %i.mu, %i.mo
  %i.mw = getelementptr inbounds nuw i8, ptr %i.a, i64 1696 ; 2 uses
  %i.mx = load <2 x i64>, ptr %i.mw, align 16, !tbaa !11
  %i.my = xor <2 x i64> %i.mx, %i.mp
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 1712 ; 2 uses
  %i.na = load <2 x i64>, ptr %i.mz, align 16, !tbaa !11
  %i.nb = xor <2 x i64> %i.na, %i.mq
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 1728 ; 2 uses
  %i.nd = load <2 x i64>, ptr %i.nc, align 16, !tbaa !11
  %i.ne = xor <2 x i64> %i.nd, %i.mr
  store <2 x i64> %i.ms, ptr %i.lg, align 16, !tbaa !11
  store <2 x i64> %i.mv, ptr %i.mt, align 16, !tbaa !11
  store <2 x i64> %i.my, ptr %i.mw, align 16, !tbaa !11
  store <2 x i64> %i.nb, ptr %i.mz, align 16, !tbaa !11
  %i.nf = xor <2 x i64> %i.lv, %i.mn
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 1984 ; 2 uses
  %i.nh = load <2 x i64>, ptr %i.ng, align 16, !tbaa !11
  %i.ni = xor <2 x i64> %i.nh, %i.mo
  %i.nj = getelementptr inbounds nuw i8, ptr %i.a, i64 2000 ; 2 uses
  %i.nk = load <2 x i64>, ptr %i.nj, align 16, !tbaa !11
  %i.nl = xor <2 x i64> %i.nk, %i.mp
  %i.nm = getelementptr inbounds nuw i8, ptr %i.a, i64 2016 ; 2 uses
  %i.nn = load <2 x i64>, ptr %i.nm, align 16, !tbaa !11
  %i.no = xor <2 x i64> %i.nn, %i.mq
  %i.np = getelementptr inbounds nuw i8, ptr %i.a, i64 2032 ; 2 uses
  %i.nq = load <2 x i64>, ptr %i.np, align 16, !tbaa !11
  %i.nr = xor <2 x i64> %i.nq, %i.mr
  store <2 x i64> %i.nf, ptr %i.lt, align 16, !tbaa !11
  store <2 x i64> %i.ni, ptr %i.ng, align 16, !tbaa !11
  store <2 x i64> %i.nl, ptr %i.nj, align 16, !tbaa !11
  store <2 x i64> %i.no, ptr %i.nm, align 16, !tbaa !11
  %i.ns = xor <2 x i64> %i.kv, %i.mn
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 2208
  store <2 x i64> %i.ns, ptr %i.ma, align 16, !tbaa !11
  %i.nu = getelementptr inbounds nuw i8, ptr %i.a, i64 2224
  store <2 x i64> %i.mo, ptr %i.nt, align 16, !tbaa !11
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 2240
  store <2 x i64> %i.mp, ptr %i.nu, align 16, !tbaa !11
  %i.nw = getelementptr inbounds nuw i8, ptr %i.a, i64 2256
  store <2 x i64> %i.mq, ptr %i.nv, align 16, !tbaa !11
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 2928
  store <2 x i64> %i.mg, ptr %i.me, align 16, !tbaa !11
  %i.ny = getelementptr inbounds nuw i8, ptr %i.a, i64 2944
  store <2 x i64> %i.mi, ptr %i.nx, align 16, !tbaa !11
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 2960
  store <2 x i64> %i.mk, ptr %i.ny, align 16, !tbaa !11
  %i.oa = getelementptr inbounds nuw i8, ptr %i.a, i64 2976
  store <2 x i64> %i.mm, ptr %i.nz, align 16, !tbaa !11
  %i.ob = getelementptr inbounds nuw i8, ptr %i.k, i64 592
  %i.oc = load <2 x i64>, ptr %i.ml, align 16, !tbaa !11 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.k, i64 608
  %i.oe = load <2 x i64>, ptr %i.ob, align 16, !tbaa !11 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.k, i64 624
  %i.og = load <2 x i64>, ptr %i.od, align 16, !tbaa !11 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.k, i64 640
  %i.oi = load <2 x i64>, ptr %i.of, align 16, !tbaa !11 ; 3 uses
  %i.oj = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.oc, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ok = shufflevector <2 x i64> %i.oc, <2 x i64> %i.oe, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ol = shufflevector <2 x i64> %i.oe, <2 x i64> %i.og, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.om = shufflevector <2 x i64> %i.og, <2 x i64> %i.oi, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.on = shufflevector <2 x i64> %i.oi, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.oo = xor <2 x i64> %i.ne, %i.oj
  %i.op = getelementptr inbounds nuw i8, ptr %i.a, i64 1744 ; 2 uses
  %i.oq = load <2 x i64>, ptr %i.op, align 16, !tbaa !11
  %i.or = xor <2 x i64> %i.oq, %i.ok
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 1760 ; 2 uses
  %i.ot = load <2 x i64>, ptr %i.os, align 16, !tbaa !11
  %i.ou = xor <2 x i64> %i.ot, %i.ol
  %i.ov = getelementptr inbounds nuw i8, ptr %i.a, i64 1776 ; 2 uses
  %i.ow = load <2 x i64>, ptr %i.ov, align 16, !tbaa !11
  %i.ox = xor <2 x i64> %i.ow, %i.om
  %i.oy = getelementptr inbounds nuw i8, ptr %i.a, i64 1792 ; 2 uses
  %i.oz = load <2 x i64>, ptr %i.oy, align 16, !tbaa !11
  %i.pa = xor <2 x i64> %i.oz, %i.on
  store <2 x i64> %i.oo, ptr %i.nc, align 16, !tbaa !11
  store <2 x i64> %i.or, ptr %i.op, align 16, !tbaa !11
  store <2 x i64> %i.ou, ptr %i.os, align 16, !tbaa !11
  store <2 x i64> %i.ox, ptr %i.ov, align 16, !tbaa !11
  %i.pb = xor <2 x i64> %i.nr, %i.oj
  %i.pc = getelementptr inbounds nuw i8, ptr %i.a, i64 2048 ; 2 uses
  %i.pd = load <2 x i64>, ptr %i.pc, align 16, !tbaa !11
  %i.pe = xor <2 x i64> %i.pd, %i.ok
  %i.pf = getelementptr inbounds nuw i8, ptr %i.a, i64 2064 ; 2 uses
  %i.pg = load <2 x i64>, ptr %i.pf, align 16, !tbaa !11
  %i.ph = xor <2 x i64> %i.pg, %i.ol
  %i.pi = getelementptr inbounds nuw i8, ptr %i.a, i64 2080 ; 2 uses
  %i.pj = load <2 x i64>, ptr %i.pi, align 16, !tbaa !11
  %i.pk = xor <2 x i64> %i.pj, %i.om
  %i.pl = getelementptr inbounds nuw i8, ptr %i.a, i64 2096 ; 2 uses
  %i.pm = load <2 x i64>, ptr %i.pl, align 16, !tbaa !11
  %i.pn = xor <2 x i64> %i.pm, %i.on
  store <2 x i64> %i.pb, ptr %i.np, align 16, !tbaa !11
  store <2 x i64> %i.pe, ptr %i.pc, align 16, !tbaa !11
  store <2 x i64> %i.ph, ptr %i.pf, align 16, !tbaa !11
  store <2 x i64> %i.pk, ptr %i.pi, align 16, !tbaa !11
  %i.po = xor <2 x i64> %i.mr, %i.oj
  %i.pp = getelementptr inbounds nuw i8, ptr %i.a, i64 2272
  store <2 x i64> %i.po, ptr %i.nw, align 16, !tbaa !11
  %i.pq = getelementptr inbounds nuw i8, ptr %i.a, i64 2288
  store <2 x i64> %i.ok, ptr %i.pp, align 16, !tbaa !11
  %i.pr = getelementptr inbounds nuw i8, ptr %i.a, i64 2304
  store <2 x i64> %i.ol, ptr %i.pq, align 16, !tbaa !11
  %i.ps = getelementptr inbounds nuw i8, ptr %i.a, i64 2320
  store <2 x i64> %i.om, ptr %i.pr, align 16, !tbaa !11
  %i.pt = getelementptr inbounds nuw i8, ptr %i.a, i64 2992
  store <2 x i64> %i.oc, ptr %i.oa, align 16, !tbaa !11
  %i.pu = getelementptr inbounds nuw i8, ptr %i.a, i64 3008
  store <2 x i64> %i.oe, ptr %i.pt, align 16, !tbaa !11
  %i.pv = getelementptr inbounds nuw i8, ptr %i.a, i64 3024
  store <2 x i64> %i.og, ptr %i.pu, align 16, !tbaa !11
  %i.pw = getelementptr inbounds nuw i8, ptr %i.a, i64 3040
  store <2 x i64> %i.oi, ptr %i.pv, align 16, !tbaa !11
  %i.px = getelementptr inbounds nuw i8, ptr %i.k, i64 656
  %i.py = load <2 x i64>, ptr %i.oh, align 16, !tbaa !11 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.k, i64 672
  %i.qa = load <2 x i64>, ptr %i.px, align 16, !tbaa !11 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.k, i64 688
  %i.qc = load <2 x i64>, ptr %i.pz, align 16, !tbaa !11 ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.k, i64 704
  %i.qe = load <2 x i64>, ptr %i.qb, align 16, !tbaa !11 ; 3 uses
  %i.qf = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.py, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.qg = shufflevector <2 x i64> %i.py, <2 x i64> %i.qa, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.qh = shufflevector <2 x i64> %i.qa, <2 x i64> %i.qc, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.qi = shufflevector <2 x i64> %i.qc, <2 x i64> %i.qe, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.qj = shufflevector <2 x i64> %i.qe, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.qk = xor <2 x i64> %i.pa, %i.qf
  %i.ql = getelementptr inbounds nuw i8, ptr %i.a, i64 1808 ; 2 uses
  %i.qm = load <2 x i64>, ptr %i.ql, align 16, !tbaa !11
  %i.qn = xor <2 x i64> %i.qm, %i.qg
  %i.qo = getelementptr inbounds nuw i8, ptr %i.a, i64 1824 ; 2 uses
  %i.qp = load <2 x i64>, ptr %i.qo, align 16, !tbaa !11
  %i.qq = xor <2 x i64> %i.qp, %i.qh
  %i.qr = getelementptr inbounds nuw i8, ptr %i.a, i64 1840 ; 2 uses
  %i.qs = load <2 x i64>, ptr %i.qr, align 16, !tbaa !11
  %i.qt = xor <2 x i64> %i.qs, %i.qi
  %i.qu = getelementptr inbounds nuw i8, ptr %i.a, i64 1856 ; 2 uses
  %i.qv = load <2 x i64>, ptr %i.qu, align 16, !tbaa !11
  %i.qw = xor <2 x i64> %i.qv, %i.qj
  store <2 x i64> %i.qk, ptr %i.oy, align 16, !tbaa !11
  store <2 x i64> %i.qn, ptr %i.ql, align 16, !tbaa !11
  store <2 x i64> %i.qq, ptr %i.qo, align 16, !tbaa !11
  store <2 x i64> %i.qt, ptr %i.qr, align 16, !tbaa !11
  %i.qx = xor <2 x i64> %i.pn, %i.qf
  %i.qy = getelementptr inbounds nuw i8, ptr %i.a, i64 2112 ; 2 uses
  %i.qz = load <2 x i64>, ptr %i.qy, align 16, !tbaa !11
  %i.ra = xor <2 x i64> %i.qz, %i.qg
  %i.rb = getelementptr inbounds nuw i8, ptr %i.a, i64 2128 ; 2 uses
  %i.rc = load <2 x i64>, ptr %i.rb, align 16, !tbaa !11
  %i.rd = xor <2 x i64> %i.rc, %i.qh
  %i.re = getelementptr inbounds nuw i8, ptr %i.a, i64 2144 ; 2 uses
  %i.rf = load <2 x i64>, ptr %i.re, align 16, !tbaa !11
  %i.rg = xor <2 x i64> %i.rf, %i.qi
  %i.rh = getelementptr inbounds nuw i8, ptr %i.a, i64 2160 ; 2 uses
  %i.ri = load <2 x i64>, ptr %i.rh, align 16, !tbaa !11
  %i.rj = xor <2 x i64> %i.ri, %i.qj
  store <2 x i64> %i.qx, ptr %i.pl, align 16, !tbaa !11
  store <2 x i64> %i.ra, ptr %i.qy, align 16, !tbaa !11
  store <2 x i64> %i.rd, ptr %i.rb, align 16, !tbaa !11
  store <2 x i64> %i.rg, ptr %i.re, align 16, !tbaa !11
  %i.rk = xor <2 x i64> %i.on, %i.qf
  %i.rl = getelementptr inbounds nuw i8, ptr %i.a, i64 2336
  store <2 x i64> %i.rk, ptr %i.ps, align 16, !tbaa !11
  %i.rm = getelementptr inbounds nuw i8, ptr %i.a, i64 2352
  store <2 x i64> %i.qg, ptr %i.rl, align 16, !tbaa !11
  %i.rn = getelementptr inbounds nuw i8, ptr %i.a, i64 2368
  store <2 x i64> %i.qh, ptr %i.rm, align 16, !tbaa !11
  %i.ro = getelementptr inbounds nuw i8, ptr %i.a, i64 2384
  store <2 x i64> %i.qi, ptr %i.rn, align 16, !tbaa !11
  %i.rp = getelementptr inbounds nuw i8, ptr %i.a, i64 3056
  store <2 x i64> %i.py, ptr %i.pw, align 16, !tbaa !11
  %i.rq = getelementptr inbounds nuw i8, ptr %i.a, i64 3072
  store <2 x i64> %i.qa, ptr %i.rp, align 16, !tbaa !11
  %i.rr = getelementptr inbounds nuw i8, ptr %i.a, i64 3088
  store <2 x i64> %i.qc, ptr %i.rq, align 16, !tbaa !11
  %i.rs = getelementptr inbounds nuw i8, ptr %i.a, i64 3104
  store <2 x i64> %i.qe, ptr %i.rr, align 16, !tbaa !11
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph.peel.next, %bb.k
  %.3.i101 = phi ptr [ %i.th, %bb.k ], [ %i.qu, %.lr.ph.peel.next ] ; 5 uses
  %.3440.i100 = phi ptr [ %i.tu, %bb.k ], [ %i.rh, %.lr.ph.peel.next ] ; 5 uses
  %.3444.i99 = phi ptr [ %i.uo, %bb.k ], [ %i.ro, %.lr.ph.peel.next ] ; 9 uses
  %.3448.i98 = phi ptr [ %i.us, %bb.k ], [ %i.rs, %.lr.ph.peel.next ] ; 5 uses
  %.0449.i97 = phi ptr [ %.1450.i, %bb.k ], [ %i.o, %.lr.ph.peel.next ] ; 6 uses
  %.3454.i96 = phi ptr [ %.4.i, %bb.k ], [ %i.qd, %.lr.ph.peel.next ] ; 7 uses
  %.3464.i95 = phi i64 [ %i.ut, %bb.k ], [ 704, %.lr.ph.peel.next ] ; 5 uses
  %.3485.i94 = phi <2 x i64> [ %i.tj, %bb.k ], [ %i.qw, %.lr.ph.peel.next ]
  %.3489.i93 = phi <2 x i64> [ %i.tw, %bb.k ], [ %i.rj, %.lr.ph.peel.next ]
  %.3493.i92 = phi <2 x i64> [ %.4494.i, %bb.k ], [ %i.qj, %.lr.ph.peel.next ]
  %i.rt = icmp ult i64 %.3464.i95, 1024
  %i.ru = getelementptr inbounds nuw i8, ptr %.3454.i96, i64 16 ; 2 uses
  %i.rv = load <2 x i64>, ptr %.3454.i96, align 16, !tbaa !11 ; 2 uses
  br i1 %i.rt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph102
  %i.rw = getelementptr inbounds nuw i8, ptr %.3454.i96, i64 32
  %i.rx = load <2 x i64>, ptr %i.ru, align 16, !tbaa !11
  %i.ry = getelementptr inbounds nuw i8, ptr %.3454.i96, i64 48
  %i.rz = load <2 x i64>, ptr %i.rw, align 16, !tbaa !11
  %i.sa = load <2 x i64>, ptr %i.ry, align 16, !tbaa !11
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph102
  %i.sb = getelementptr inbounds nuw i8, ptr %.0449.i97, i64 16
  %i.sc = load <2 x i64>, ptr %.0449.i97, align 16, !tbaa !11
  %i.sd = xor <2 x i64> %i.sc, %i.rv
  %i.se = getelementptr inbounds nuw i8, ptr %.3454.i96, i64 32
  %i.sf = load <2 x i64>, ptr %i.ru, align 16, !tbaa !11
  %i.sg = getelementptr inbounds nuw i8, ptr %.0449.i97, i64 32
  %i.sh = load <2 x i64>, ptr %i.sb, align 16, !tbaa !11
  %i.si = xor <2 x i64> %i.sh, %i.sf
  %i.sj = getelementptr inbounds nuw i8, ptr %.3454.i96, i64 48
  %i.sk = load <2 x i64>, ptr %i.se, align 16, !tbaa !11
  %i.sl = getelementptr inbounds nuw i8, ptr %.0449.i97, i64 48
  %i.sm = load <2 x i64>, ptr %i.sg, align 16, !tbaa !11
  %i.sn = xor <2 x i64> %i.sm, %i.sk
  %i.so = load <2 x i64>, ptr %i.sj, align 16, !tbaa !11
  %i.sp = getelementptr inbounds nuw i8, ptr %.0449.i97, i64 64
  %i.sq = load <2 x i64>, ptr %i.sl, align 16, !tbaa !11
  %i.sr = xor <2 x i64> %i.sq, %i.so
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0481.i = phi <2 x i64> [ %i.rv, %bb.g ], [ %i.sd, %bb.h ] ; 3 uses
  %.0480.i = phi <2 x i64> [ %i.rx, %bb.g ], [ %i.si, %bb.h ] ; 3 uses
  %.0479.i = phi <2 x i64> [ %i.rz, %bb.g ], [ %i.sn, %bb.h ] ; 3 uses
  %.0478.i = phi <2 x i64> [ %i.sa, %bb.g ], [ %i.sr, %bb.h ] ; 3 uses
  %.1450.i = phi ptr [ %.0449.i97, %bb.g ], [ %i.sp, %bb.h ]
  %.4.i = getelementptr inbounds nuw i8, ptr %.3454.i96, i64 64
  %i.ss = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %.0481.i, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.st = shufflevector <2 x i64> %.0481.i, <2 x i64> %.0480.i, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.su = shufflevector <2 x i64> %.0480.i, <2 x i64> %.0479.i, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.sv = shufflevector <2 x i64> %.0479.i, <2 x i64> %.0478.i, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.sw = shufflevector <2 x i64> %.0478.i, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.sx = xor <2 x i64> %.3485.i94, %i.ss
  %i.sy = getelementptr inbounds nuw i8, ptr %.3.i101, i64 16 ; 2 uses
  %i.sz = load <2 x i64>, ptr %i.sy, align 16, !tbaa !11
  %i.ta = xor <2 x i64> %i.sz, %i.st
  %i.tb = getelementptr inbounds nuw i8, ptr %.3.i101, i64 32 ; 2 uses
  %i.tc = load <2 x i64>, ptr %i.tb, align 16, !tbaa !11
  %i.td = xor <2 x i64> %i.tc, %i.su
  %i.te = getelementptr inbounds nuw i8, ptr %.3.i101, i64 48 ; 2 uses
  %i.tf = load <2 x i64>, ptr %i.te, align 16, !tbaa !11
  %i.tg = xor <2 x i64> %i.tf, %i.sv
  %i.th = getelementptr inbounds nuw i8, ptr %.3.i101, i64 64 ; 3 uses
  %i.ti = load <2 x i64>, ptr %i.th, align 16, !tbaa !11
  %i.tj = xor <2 x i64> %i.ti, %i.sw              ; 2 uses
  store <2 x i64> %i.sx, ptr %.3.i101, align 16, !tbaa !11
  store <2 x i64> %i.ta, ptr %i.sy, align 16, !tbaa !11
  store <2 x i64> %i.td, ptr %i.tb, align 16, !tbaa !11
  store <2 x i64> %i.tg, ptr %i.te, align 16, !tbaa !11
  %i.tk = xor <2 x i64> %.3489.i93, %i.ss
  %i.tl = getelementptr inbounds nuw i8, ptr %.3440.i100, i64 16 ; 2 uses
  %i.tm = load <2 x i64>, ptr %i.tl, align 16, !tbaa !11
  %i.tn = xor <2 x i64> %i.tm, %i.st
  %i.to = getelementptr inbounds nuw i8, ptr %.3440.i100, i64 32 ; 2 uses
  %i.tp = load <2 x i64>, ptr %i.to, align 16, !tbaa !11
  %i.tq = xor <2 x i64> %i.tp, %i.su
  %i.tr = getelementptr inbounds nuw i8, ptr %.3440.i100, i64 48 ; 2 uses
  %i.ts = load <2 x i64>, ptr %i.tr, align 16, !tbaa !11
  %i.tt = xor <2 x i64> %i.ts, %i.sv
  %i.tu = getelementptr inbounds nuw i8, ptr %.3440.i100, i64 64 ; 3 uses
  %i.tv = load <2 x i64>, ptr %i.tu, align 16, !tbaa !11
  %i.tw = xor <2 x i64> %i.tv, %i.sw              ; 2 uses
  store <2 x i64> %i.tk, ptr %.3440.i100, align 16, !tbaa !11
  store <2 x i64> %i.tn, ptr %i.tl, align 16, !tbaa !11
  store <2 x i64> %i.tq, ptr %i.to, align 16, !tbaa !11
  store <2 x i64> %i.tt, ptr %i.tr, align 16, !tbaa !11
  %i.tx = xor <2 x i64> %.3493.i92, %i.ss
  %i.ty = icmp ult i64 %.3464.i95, 672
  br i1 %i.ty, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.tz = getelementptr inbounds nuw i8, ptr %.3444.i99, i64 16
  %i.ua = load <2 x i64>, ptr %i.tz, align 16, !tbaa !11
  %i.ub = xor <2 x i64> %i.ua, %i.st
  %i.uc = getelementptr inbounds nuw i8, ptr %.3444.i99, i64 32
  %i.ud = load <2 x i64>, ptr %i.uc, align 16, !tbaa !11
  %i.ue = xor <2 x i64> %i.ud, %i.su
  %i.uf = getelementptr inbounds nuw i8, ptr %.3444.i99, i64 48
  %i.ug = load <2 x i64>, ptr %i.uf, align 16, !tbaa !11
  %i.uh = xor <2 x i64> %i.ug, %i.sv
  %i.ui = getelementptr inbounds nuw i8, ptr %.3444.i99, i64 64
  %i.uj = load <2 x i64>, ptr %i.ui, align 16, !tbaa !11
  %i.uk = xor <2 x i64> %i.uj, %i.sw
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.4494.i = phi <2 x i64> [ %i.uk, %bb.j ], [ %i.sw, %bb.i ] ; 2 uses
  %.0477.i = phi <2 x i64> [ %i.ub, %bb.j ], [ %i.st, %bb.i ]
  %.0476.i = phi <2 x i64> [ %i.ue, %bb.j ], [ %i.su, %bb.i ]
  %.0475.i = phi <2 x i64> [ %i.uh, %bb.j ], [ %i.sv, %bb.i ]
  %i.ul = getelementptr inbounds nuw i8, ptr %.3444.i99, i64 16
  store <2 x i64> %i.tx, ptr %.3444.i99, align 16, !tbaa !11
  %i.um = getelementptr inbounds nuw i8, ptr %.3444.i99, i64 32
  store <2 x i64> %.0477.i, ptr %i.ul, align 16, !tbaa !11
  %i.un = getelementptr inbounds nuw i8, ptr %.3444.i99, i64 48
  store <2 x i64> %.0476.i, ptr %i.um, align 16, !tbaa !11
  %i.uo = getelementptr inbounds nuw i8, ptr %.3444.i99, i64 64 ; 2 uses
  store <2 x i64> %.0475.i, ptr %i.un, align 16, !tbaa !11
  %i.up = getelementptr inbounds nuw i8, ptr %.3448.i98, i64 16
  store <2 x i64> %.0481.i, ptr %.3448.i98, align 16, !tbaa !11
  %i.uq = getelementptr inbounds nuw i8, ptr %.3448.i98, i64 32
  store <2 x i64> %.0480.i, ptr %i.up, align 16, !tbaa !11
  %i.ur = getelementptr inbounds nuw i8, ptr %.3448.i98, i64 48
  store <2 x i64> %.0479.i, ptr %i.uq, align 16, !tbaa !11
  %i.us = getelementptr inbounds nuw i8, ptr %.3448.i98, i64 64
  store <2 x i64> %.0478.i, ptr %i.ur, align 16, !tbaa !11
  %i.ut = add nuw i64 %.3464.i95, 64              ; 7 uses
  %i.uu = add nuw i64 %.3464.i95, 2528
  %i.uv = icmp ult i64 %i.uu, %.028
  br i1 %i.uv, label %.lr.ph102, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.k
  store <2 x i64> %i.tj, ptr %i.th, align 16, !tbaa !11
  store <2 x i64> %i.tw, ptr %i.tu, align 16, !tbaa !11
  store <2 x i64> %.4494.i, ptr %i.uo, align 16, !tbaa !11
  %.neg = add nsw i64 %.028, -2400
  %i.uw = sub i64 %.neg, %i.ut                    ; 2 uses
  %i.ux = getelementptr i8, ptr %i.t, i64 %i.ut   ; 2 uses
  %i.uy = icmp ugt i64 %i.uw, 63
  br i1 %i.uy, label %.lr.ph113.preheader, label %.preheader32

.lr.ph113.preheader:                              ; preds = %._crit_edge
  %i.uz = add nsw i64 %.028, -2464                ; 2 uses
  %i.va = sub i64 %i.uz, %i.ut
  %i.vb = and i64 %i.va, -64                      ; 2 uses
  %i.vc = add i64 %i.vb, 64
  call void @llvm.memset.p0.i64(ptr align 16 %i.ux, i8 0, i64 %i.vc, i1 false), !tbaa !11
  %i.vd = getelementptr i8, ptr %i.a, i64 %i.ut
  %i.ve = getelementptr i8, ptr %i.vd, i64 %i.vb
  %scevgep = getelementptr i8, ptr %i.ve, i64 2464
  %i.vf = and i64 %i.uz, 63
  br label %.preheader32

.preheader32:                                     ; preds = %.lr.ph113.preheader, %._crit_edge
  %.0472.i.lcssa = phi i64 [ %i.uw, %._crit_edge ], [ %i.vf, %.lr.ph113.preheader ] ; 4 uses
  %.0470.i.lcssa = phi ptr [ %i.ux, %._crit_edge ], [ %scevgep, %.lr.ph113.preheader ] ; 3 uses
  %i.vg = icmp samesign ugt i64 %.0472.i.lcssa, 15
  br i1 %i.vg, label %.lr.ph118.preheader, label %.preheader

.lr.ph118.preheader:                              ; preds = %.preheader32
  %i.vh = and i64 %.0472.i.lcssa, 48              ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.0470.i.lcssa, i8 0, i64 %i.vh, i1 false), !tbaa !11
  %scevgep182 = getelementptr i8, ptr %.0470.i.lcssa, i64 %i.vh
  %i.vi = and i64 %.0472.i.lcssa, 15
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph118.preheader, %.preheader32
  %.1473.i.lcssa = phi i64 [ %.0472.i.lcssa, %.preheader32 ], [ %i.vi, %.lr.ph118.preheader ] ; 2 uses
  %.1471.i.lcssa = phi ptr [ %.0470.i.lcssa, %.preheader32 ], [ %scevgep182, %.lr.ph118.preheader ]
  %.not.i121 = icmp eq i64 %.1473.i.lcssa, 0
  br i1 %.not.i121, label %._crit_edge125, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %.preheader
  call void @llvm.memset.p0.i64(ptr align 1 %.1471.i.lcssa, i8 0, i64 %.1473.i.lcssa, i1 false), !tbaa !11
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.preheader, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  %i.vj = add i64 %.3464.i95, 136
  %i.vk = icmp ult i64 %i.vj, %.028
  br i1 %i.vk, label %.lr.ph131, label %._crit_edge132

.lr.ph131:                                        ; preds = %._crit_edge125, %.lr.ph131
  %.4465.i129 = phi i64 [ %i.xn, %.lr.ph131 ], [ %i.ut, %._crit_edge125 ] ; 4 uses
  %.0466.i128 = phi <2 x i64> [ %i.xm, %.lr.ph131 ], [ zeroinitializer, %._crit_edge125 ]
  %.0467.i127 = phi <2 x i64> [ %i.xl, %.lr.ph131 ], [ zeroinitializer, %._crit_edge125 ]
  %.0468.i126 = phi <2 x i64> [ %i.xi, %.lr.ph131 ], [ zeroinitializer, %._crit_edge125 ]
  %i.vl = getelementptr inbounds nuw i8, ptr %i.k, i64 %.4465.i129 ; 2 uses
  %i.vm = load <2 x i64>, ptr %i.vl, align 16, !tbaa !11
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  %i.vo = load <2 x i64>, ptr %i.vn, align 16, !tbaa !11
  %i.vp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4465.i129 ; 2 uses
  %i.vq = load <2 x i64>, ptr %i.vp, align 16, !tbaa !11
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.vs = load <2 x i64>, ptr %i.vr, align 16, !tbaa !11
  %i.vt = xor <2 x i64> %i.vm, %.0468.i126
  %i.vu = xor <2 x i64> %i.vt, %i.vq              ; 8 uses
  %i.vv = shl <2 x i64> %i.vu, splat (i64 17)
  %i.vw = shl <2 x i64> %i.vu, splat (i64 55)
  %i.vx = lshr <2 x i64> %i.vu, splat (i64 47)
  %i.vy = lshr <2 x i64> %i.vu, splat (i64 9)
  %i.vz = xor <2 x i64> %i.vx, %i.vy
  %i.wa = shl <2 x i64> %i.vu, splat (i64 19)
  %i.wb = xor <2 x i64> %i.vz, %i.wa              ; 2 uses
  %i.wc = lshr <2 x i64> %i.vu, splat (i64 45)
  %i.wd = shl <2 x i64> %i.vu, splat (i64 44)
  %i.we = or disjoint <2 x i64> %i.wc, %i.wd
  %i.wf = lshr <2 x i64> %i.vu, splat (i64 20)    ; 2 uses
  %i.wg = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.wb, <2 x i32> <i32 1, i32 2>
  %i.wh = xor <2 x i64> %i.vo, %.0467.i127
  %i.wi = xor <2 x i64> %i.wh, %i.vs
  %i.wj = xor <2 x i64> %i.wi, %i.vw
  %i.wk = xor <2 x i64> %i.wj, %i.vv
  %i.wl = xor <2 x i64> %i.wk, %i.wg              ; 8 uses
  %i.wm = shl <2 x i64> %i.wl, splat (i64 17)
  %i.wn = shl <2 x i64> %i.wl, splat (i64 55)
  %i.wo = lshr <2 x i64> %i.wl, splat (i64 47)
  %i.wp = lshr <2 x i64> %i.wl, splat (i64 9)
  %i.wq = xor <2 x i64> %i.wo, %i.wp
  %i.wr = shl <2 x i64> %i.wl, splat (i64 19)
  %i.ws = xor <2 x i64> %i.wq, %i.wr              ; 2 uses
  %i.wt = lshr <2 x i64> %i.wl, splat (i64 45)
  %i.wu = shl <2 x i64> %i.wl, splat (i64 44)
  %i.wv = or disjoint <2 x i64> %i.wt, %i.wu
  %i.ww = lshr <2 x i64> %i.wl, splat (i64 20)    ; 2 uses
  %i.wx = bitcast <2 x i64> %i.ws to <16 x i8>
  %i.wy = shufflevector <2 x i64> %i.wb, <2 x i64> %i.ws, <2 x i32> <i32 1, i32 2>
  %i.wz = bitcast <2 x i64> %i.wf to <16 x i8>
  %i.xa = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.wz, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.xb = bitcast <16 x i8> %i.xa to <2 x i64>
  %i.xc = xor <2 x i64> %i.wy, %i.xb
  %i.xd = shufflevector <16 x i8> %i.wx, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.xe = shufflevector <2 x i64> %i.wf, <2 x i64> %i.ww, <2 x i32> <i32 1, i32 2>
  %i.xf = xor <2 x i64> %i.we, %.0466.i128
  %i.xg = xor <2 x i64> %i.xf, %i.wn
  %i.xh = xor <2 x i64> %i.xg, %i.wm
  %i.xi = xor <2 x i64> %i.xh, %i.xc              ; 2 uses
  %i.xj = bitcast <16 x i8> %i.xd to <2 x i64>
  %i.xk = xor <2 x i64> %i.xe, %i.xj
  %i.xl = xor <2 x i64> %i.wv, %i.xk              ; 2 uses
  %i.xm = shufflevector <2 x i64> %i.ww, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.xn = add nuw nsw i64 %.4465.i129, 32         ; 2 uses
  %i.xo = add nuw i64 %.4465.i129, 104
  %i.xp = icmp ult i64 %i.xo, %.028
  br i1 %i.xp, label %.lr.ph131, label %._crit_edge132, !llvm.loop !9

._crit_edge132:                                   ; preds = %.lr.ph131, %._crit_edge125
  %.0468.i.lcssa = phi <2 x i64> [ zeroinitializer, %._crit_edge125 ], [ %i.xi, %.lr.ph131 ]
  %.0467.i.lcssa = phi <2 x i64> [ zeroinitializer, %._crit_edge125 ], [ %i.xl, %.lr.ph131 ]
  %.0466.i.lcssa = phi <2 x i64> [ zeroinitializer, %._crit_edge125 ], [ %i.xm, %.lr.ph131 ]
  %.4465.i.lcssa = phi i64 [ %i.ut, %._crit_edge125 ], [ %i.xn, %.lr.ph131 ] ; 5 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.k, i64 %.4465.i.lcssa
  %i.xr = sub i64 %.028, %.4465.i.lcssa           ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 8 %i.xq, i64 %i.xr, i1 false)
  %i.xs = load <2 x i64>, ptr %i.b, align 16, !tbaa !11
  %i.xt = xor <2 x i64> %i.xs, %.0468.i.lcssa
  store <2 x i64> %i.xt, ptr %i.b, align 16, !tbaa !11
  %i.xu = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.xv = load <2 x i64>, ptr %i.xu, align 16, !tbaa !11
  %i.xw = xor <2 x i64> %i.xv, %.0467.i.lcssa
  store <2 x i64> %i.xw, ptr %i.xu, align 16, !tbaa !11
  %i.xx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.xy = load <2 x i64>, ptr %i.xx, align 16, !tbaa !11
  %i.xz = xor <2 x i64> %i.xy, %.0466.i.lcssa
  store <2 x i64> %i.xz, ptr %i.xx, align 16, !tbaa !11
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %.4465.i.lcssa ; 3 uses
  %.not142 = icmp eq i64 %.028, %.4465.i.lcssa
  br i1 %.not142, label %crc32_chorba_32768_nondestructive_sse41.exit, label %.lr.ph140.preheader

.lr.ph140.preheader:                              ; preds = %._crit_edge132
  %.neg284 = add i64 %.4465.i.lcssa, 1
  %xtraiter = and i64 %i.xr, 1
  %i.ya = icmp eq i64 %.028, %.neg284
  br i1 %i.ya, label %.lr.ph140.epil.preheader, label %.lr.ph140.preheader.new

.lr.ph140.preheader.new:                          ; preds = %.lr.ph140.preheader
  %unroll_iter = and i64 %i.xr, -2
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140, %.lr.ph140.preheader.new
  %.0.i138 = phi i64 [ 0, %.lr.ph140.preheader.new ], [ %i.yu, %.lr.ph140 ] ; 4 uses
  %.0435.i137 = phi i32 [ 0, %.lr.ph140.preheader.new ], [ %i.yt, %.lr.ph140 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph140.preheader.new ], [ %niter.next.1, %.lr.ph140 ]
  %i.yb = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i138
  %i.yc = load i8, ptr %i.yb, align 2, !tbaa !11
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.0.i138
  %i.yd = load i8, ptr %gep, align 1, !tbaa !11
  %.0435.tr.i = trunc i32 %.0435.i137 to i8
  %i.ye = xor i8 %i.yc, %.0435.tr.i
  %.narrow.i = xor i8 %i.ye, %i.yd
  %i.yf = zext i8 %.narrow.i to i64
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.yf
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !13
  %i.yi = lshr i32 %.0435.i137, 8
  %i.yj = xor i32 %i.yh, %i.yi                    ; 2 uses
  %i.yk = or disjoint i64 %.0.i138, 1             ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yk
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !11
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.yk
  %i.yn = load i8, ptr %gep.1, align 1, !tbaa !11
  %.0435.tr.i.1 = trunc i32 %i.yj to i8
  %i.yo = xor i8 %i.ym, %.0435.tr.i.1
  %.narrow.i.1 = xor i8 %i.yo, %i.yn
  %i.yp = zext i8 %.narrow.i.1 to i64
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.yp
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !13
  %i.ys = lshr i32 %i.yj, 8
  %i.yt = xor i32 %i.yr, %i.ys                    ; 3 uses
  %i.yu = add nuw nsw i64 %.0.i138, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %crc32_chorba_32768_nondestructive_sse41.exit.loopexit.unr-lcssa, label %.lr.ph140, !llvm.loop !10

crc32_chorba_32768_nondestructive_sse41.exit.loopexit.unr-lcssa: ; preds = %.lr.ph140
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %crc32_chorba_32768_nondestructive_sse41.exit, label %.lr.ph140.epil.preheader

.lr.ph140.epil.preheader:                         ; preds = %crc32_chorba_32768_nondestructive_sse41.exit.loopexit.unr-lcssa, %.lr.ph140.preheader
  %.0.i138.epil.init = phi i64 [ 0, %.lr.ph140.preheader ], [ %i.yu, %crc32_chorba_32768_nondestructive_sse41.exit.loopexit.unr-lcssa ] ; 2 uses
  %.0435.i137.epil.init = phi i32 [ 0, %.lr.ph140.preheader ], [ %i.yt, %crc32_chorba_32768_nondestructive_sse41.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod283 = trunc i64 %i.xr to i1
  tail call void @llvm.assume(i1 %lcmp.mod283)
  %i.yv = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i138.epil.init
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !11
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %.0.i138.epil.init
  %i.yx = load i8, ptr %gep.epil, align 1, !tbaa !11
  %.0435.tr.i.epil = trunc i32 %.0435.i137.epil.init to i8
  %i.yy = xor i8 %i.yw, %.0435.tr.i.epil
  %.narrow.i.epil = xor i8 %i.yy, %i.yx
  %i.yz = zext i8 %.narrow.i.epil to i64
  %i.za = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.yz
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !13
  %i.zc = lshr i32 %.0435.i137.epil.init, 8
  %i.zd = xor i32 %i.zb, %i.zc
  br label %crc32_chorba_32768_nondestructive_sse41.exit

crc32_chorba_32768_nondestructive_sse41.exit:     ; preds = %.lr.ph140.epil.preheader, %crc32_chorba_32768_nondestructive_sse41.exit.loopexit.unr-lcssa, %._crit_edge132
  %.0435.i.lcssa = phi i32 [ 0, %._crit_edge132 ], [ %i.yt, %crc32_chorba_32768_nondestructive_sse41.exit.loopexit.unr-lcssa ], [ %i.zd, %.lr.ph140.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.ze = tail call i32 @chorba_small_nondestructive_sse2(i32 noundef %.0, ptr noundef %i.k, i64 noundef %.028) #5
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.zf = tail call i32 @crc32_braid_internal(i32 noundef %i.c, ptr noundef %1, i64 noundef %2) #5
  br label %bb.n
end_hunk_0
