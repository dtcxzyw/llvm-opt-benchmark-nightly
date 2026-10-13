Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.09?download=true
inline.NumInlined: 433
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB3_12BG4Predictor13add_data_implNvB2_16popcnt_u128_swarEB9_:bb.a
  %.sroa.60.0.extract.trunc186 = trunc nuw nsw i128 %.sroa.60.0.extract.shift185 to i64
  %.sroa.64.0.extract.shift194 = lshr i128 %i.hg, 104
  %.sroa.64.0.extract.trunc195 = trunc nuw nsw i128 %.sroa.64.0.extract.shift194 to i64
  %.sroa.68.0.extract.shift203 = lshr i128 %i.hg, 112
  %.sroa.68.0.extract.trunc204 = trunc nuw nsw i128 %.sroa.68.0.extract.shift203 to i64
  %.sroa.72.0.extract.shift212 = lshr i128 %i.hh, 120
  %.sroa.72.0.extract.trunc213 = trunc nuw nsw i128 %.sroa.72.0.extract.shift212 to i64
  %i.oc = and i64 %.sroa.077.0.extract.trunc82, 15
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.oc ; 2 uses
  %i.oe = load i32, ptr %i.od, align 4, !alias.scope !43, !noundef !4
  %i.of = add i32 %i.oe, 1
  store i32 %i.of, ptr %i.od, align 4, !alias.scope !43
  %i.og = and i64 %i.np, 15
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.og ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 4, !alias.scope !43, !noundef !4
  %i.oj = add i32 %i.oi, 1
  store i32 %i.oj, ptr %i.oh, align 4, !alias.scope !43
  %i.ok = and i64 %i.nr, 15
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ok ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !alias.scope !43, !noundef !4
  %i.on = add i32 %i.om, 1
  store i32 %i.on, ptr %i.ol, align 4, !alias.scope !43
  %i.oo = and i64 %i.nt, 15
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.oo ; 2 uses
  %i.oq = load i32, ptr %i.op, align 4, !alias.scope !43, !noundef !4
  %i.or = add i32 %i.oq, 1
  store i32 %i.or, ptr %i.op, align 4, !alias.scope !43
  %i.os = and i64 %i.nv, 15
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.os ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 4, !alias.scope !43, !noundef !4
  %i.ov = add i32 %i.ou, 1
  store i32 %i.ov, ptr %i.ot, align 4, !alias.scope !43
  %i.ow = and i64 %i.nx, 15
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ow ; 2 uses
  %i.oy = load i32, ptr %i.ox, align 4, !alias.scope !43, !noundef !4
  %i.oz = add i32 %i.oy, 1
  store i32 %i.oz, ptr %i.ox, align 4, !alias.scope !43
  %i.pa = and i64 %i.nz, 15
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.pa ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4, !alias.scope !43, !noundef !4
  %i.pd = add i32 %i.pc, 1
  store i32 %i.pd, ptr %i.pb, align 4, !alias.scope !43
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ob ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4, !alias.scope !43, !noundef !4
  %i.pg = add i32 %i.pf, 1
  store i32 %i.pg, ptr %i.pe, align 4, !alias.scope !43
  %i.ph = and i64 %.sroa.44.0.extract.trunc150, 15
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ph ; 2 uses
  %i.pj = load i32, ptr %i.pi, align 4, !alias.scope !43, !noundef !4
  %i.pk = add i32 %i.pj, 1
  store i32 %i.pk, ptr %i.pi, align 4, !alias.scope !43
  %i.pl = and i64 %.sroa.48.0.extract.trunc159, 15
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.pl ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 4, !alias.scope !43, !noundef !4
  %i.po = add i32 %i.pn, 1
  store i32 %i.po, ptr %i.pm, align 4, !alias.scope !43
  %i.pp = and i64 %.sroa.52.0.extract.trunc168, 15
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.pp ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 4, !alias.scope !43, !noundef !4
  %i.ps = add i32 %i.pr, 1
  store i32 %i.ps, ptr %i.pq, align 4, !alias.scope !43
  %i.pt = and i64 %.sroa.56.0.extract.trunc177, 15
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.pt ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !alias.scope !43, !noundef !4
  %i.pw = add i32 %i.pv, 1
  store i32 %i.pw, ptr %i.pu, align 4, !alias.scope !43
  %i.px = and i64 %.sroa.60.0.extract.trunc186, 15
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.px ; 2 uses
  %i.pz = load i32, ptr %i.py, align 4, !alias.scope !43, !noundef !4
  %i.qa = add i32 %i.pz, 1
  store i32 %i.qa, ptr %i.py, align 4, !alias.scope !43
  %i.qb = and i64 %.sroa.64.0.extract.trunc195, 15
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.qb ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 4, !alias.scope !43, !noundef !4
  %i.qe = add i32 %i.qd, 1
  store i32 %i.qe, ptr %i.qc, align 4, !alias.scope !43
  %i.qf = and i64 %.sroa.68.0.extract.trunc204, 15
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.qf ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 4, !alias.scope !43, !noundef !4
  %i.qi = add i32 %i.qh, 1
  store i32 %i.qi, ptr %i.qg, align 4, !alias.scope !43
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.sroa.72.0.extract.trunc213 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !alias.scope !43, !noundef !4
  %i.ql = add i32 %i.qk, 1
  store i32 %i.ql, ptr %i.qj, align 4, !alias.scope !43
  %.sroa.077.0.extract.trunc83 = trunc i128 %i.hq to i64
  %i.qm = trunc i128 %i.hq to i64
  %i.qn = lshr i64 %i.qm, 8
  %i.qo = trunc i128 %i.hq to i64
  %i.qp = lshr i64 %i.qo, 16
  %i.qq = trunc i128 %i.hq to i64
  %i.qr = lshr i64 %i.qq, 24
  %i.qs = trunc i128 %i.hq to i64
  %i.qt = lshr i64 %i.qs, 32
  %i.qu = trunc i128 %i.hq to i64
  %i.qv = lshr i64 %i.qu, 40
  %i.qw = trunc i128 %i.hq to i64
  %i.qx = lshr i64 %i.qw, 48
  %i.qy = trunc i128 %i.hr to i64
  %i.qz = lshr i64 %i.qy, 56
  %.sroa.44.0.extract.shift151 = lshr i128 %i.hq, 64
  %.sroa.44.0.extract.trunc152 = trunc nuw nsw i128 %.sroa.44.0.extract.shift151 to i64
  %.sroa.48.0.extract.shift160 = lshr i128 %i.hq, 72
  %.sroa.48.0.extract.trunc161 = trunc nuw nsw i128 %.sroa.48.0.extract.shift160 to i64
  %.sroa.52.0.extract.shift169 = lshr i128 %i.hq, 80
  %.sroa.52.0.extract.trunc170 = trunc nuw nsw i128 %.sroa.52.0.extract.shift169 to i64
  %.sroa.56.0.extract.shift178 = lshr i128 %i.hq, 88
  %.sroa.56.0.extract.trunc179 = trunc nuw nsw i128 %.sroa.56.0.extract.shift178 to i64
  %.sroa.60.0.extract.shift187 = lshr i128 %i.hq, 96
  %.sroa.60.0.extract.trunc188 = trunc nuw nsw i128 %.sroa.60.0.extract.shift187 to i64
  %.sroa.64.0.extract.shift196 = lshr i128 %i.hq, 104
  %.sroa.64.0.extract.trunc197 = trunc nuw nsw i128 %.sroa.64.0.extract.shift196 to i64
  %.sroa.68.0.extract.shift205 = lshr i128 %i.hq, 112
  %.sroa.68.0.extract.trunc206 = trunc nuw nsw i128 %.sroa.68.0.extract.shift205 to i64
  %.sroa.72.0.extract.shift214 = lshr i128 %i.hr, 120
  %.sroa.72.0.extract.trunc215 = trunc nuw nsw i128 %.sroa.72.0.extract.shift214 to i64
  %i.ra = and i64 %.sroa.077.0.extract.trunc83, 15
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ra ; 2 uses
  %i.rc = load i32, ptr %i.rb, align 4, !alias.scope !44, !noundef !4
  %i.rd = add i32 %i.rc, 1
  store i32 %i.rd, ptr %i.rb, align 4, !alias.scope !44
  %i.re = and i64 %i.qn, 15
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.re ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 4, !alias.scope !44, !noundef !4
  %i.rh = add i32 %i.rg, 1
  store i32 %i.rh, ptr %i.rf, align 4, !alias.scope !44
  %i.ri = and i64 %i.qp, 15
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ri ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 4, !alias.scope !44, !noundef !4
  %i.rl = add i32 %i.rk, 1
  store i32 %i.rl, ptr %i.rj, align 4, !alias.scope !44
  %i.rm = and i64 %i.qr, 15
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.rm ; 2 uses
  %i.ro = load i32, ptr %i.rn, align 4, !alias.scope !44, !noundef !4
  %i.rp = add i32 %i.ro, 1
  store i32 %i.rp, ptr %i.rn, align 4, !alias.scope !44
  %i.rq = and i64 %i.qt, 15
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.rq ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !alias.scope !44, !noundef !4
  %i.rt = add i32 %i.rs, 1
  store i32 %i.rt, ptr %i.rr, align 4, !alias.scope !44
  %i.ru = and i64 %i.qv, 15
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ru ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 4, !alias.scope !44, !noundef !4
  %i.rx = add i32 %i.rw, 1
  store i32 %i.rx, ptr %i.rv, align 4, !alias.scope !44
  %i.ry = and i64 %i.qx, 15
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ry ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 4, !alias.scope !44, !noundef !4
  %i.sb = add i32 %i.sa, 1
  store i32 %i.sb, ptr %i.rz, align 4, !alias.scope !44
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.qz ; 2 uses
  %i.sd = load i32, ptr %i.sc, align 4, !alias.scope !44, !noundef !4
  %i.se = add i32 %i.sd, 1
  store i32 %i.se, ptr %i.sc, align 4, !alias.scope !44
  %i.sf = and i64 %.sroa.44.0.extract.trunc152, 15
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.sf ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 4, !alias.scope !44, !noundef !4
  %i.si = add i32 %i.sh, 1
  store i32 %i.si, ptr %i.sg, align 4, !alias.scope !44
  %i.sj = and i64 %.sroa.48.0.extract.trunc161, 15
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.sj ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !alias.scope !44, !noundef !4
  %i.sm = add i32 %i.sl, 1
  store i32 %i.sm, ptr %i.sk, align 4, !alias.scope !44
  %i.sn = and i64 %.sroa.52.0.extract.trunc170, 15
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.sn ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !alias.scope !44, !noundef !4
  %i.sq = add i32 %i.sp, 1
  store i32 %i.sq, ptr %i.so, align 4, !alias.scope !44
  %i.sr = and i64 %.sroa.56.0.extract.trunc179, 15
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.sr ; 2 uses
  %i.st = load i32, ptr %i.ss, align 4, !alias.scope !44, !noundef !4
  %i.su = add i32 %i.st, 1
  store i32 %i.su, ptr %i.ss, align 4, !alias.scope !44
  %i.sv = and i64 %.sroa.60.0.extract.trunc188, 15
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.sv ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 4, !alias.scope !44, !noundef !4
  %i.sy = add i32 %i.sx, 1
  store i32 %i.sy, ptr %i.sw, align 4, !alias.scope !44
  %i.sz = and i64 %.sroa.64.0.extract.trunc197, 15
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.sz ; 2 uses
  %i.tb = load i32, ptr %i.ta, align 4, !alias.scope !44, !noundef !4
  %i.tc = add i32 %i.tb, 1
  store i32 %i.tc, ptr %i.ta, align 4, !alias.scope !44
  %i.td = and i64 %.sroa.68.0.extract.trunc206, 15
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.td ; 2 uses
  %i.tf = load i32, ptr %i.te, align 4, !alias.scope !44, !noundef !4
  %i.tg = add i32 %i.tf, 1
  store i32 %i.tg, ptr %i.te, align 4, !alias.scope !44
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.sroa.72.0.extract.trunc215 ; 2 uses
  %i.ti = load i32, ptr %i.th, align 4, !alias.scope !44, !noundef !4
  %i.tj = add i32 %i.ti, 1
  store i32 %i.tj, ptr %i.th, align 4, !alias.scope !44
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.0.152, i64 64 ; 2 uses
  %i.tl = add i64 %.sroa.017.151, -64             ; 3 uses
  %i.tm = icmp ugt i64 %i.tl, 63
  br i1 %i.tm, label %.lr.ph53, label %.preheader

._crit_edge:                                      ; preds = %.lr.ph58, %.preheader
  %.sroa.017.2.lcssa = phi i64 [ %.sroa.017.1.lcssa, %.preheader ], [ %i.wx, %.lr.ph58 ] ; 8 uses
  %.sroa.0.2.lcssa = phi ptr [ %.sroa.0.1.lcssa, %.preheader ], [ %i.ww, %.lr.ph58 ]
  %.not = icmp eq i64 %.sroa.017.2.lcssa, 0
  br i1 %.not, label %bb.j, label %bb.h

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
  %.sroa.0.257 = phi ptr [ %i.ww, %.lr.ph58 ], [ %.sroa.0.1.lcssa, %.lr.ph58.preheader ] ; 2 uses
  %.sroa.017.256 = phi i64 [ %i.wx, %.lr.ph58 ], [ %.sroa.017.1.lcssa, %.lr.ph58.preheader ]
  %i.tn = load i128, ptr %.sroa.0.257, align 16, !noundef !4 ; 2 uses
  %i.to = lshr i128 %i.tn, 1
  %i.tp = and i128 %i.to, 113427455640312821154458202477256070485
  %i.tq = sub i128 %i.tn, %i.tp                   ; 2 uses
  %i.tr = and i128 %i.tq, 68056473384187692692674921486353642291
  %i.ts = lshr i128 %i.tq, 2
  %i.tt = and i128 %i.ts, 68056473384187692692674921486353642291
  %i.tu = add nuw nsw i128 %i.tt, %i.tr           ; 2 uses
  %i.tv = lshr i128 %i.tu, 4
  %i.tw = add nuw nsw i128 %i.tv, %i.tu           ; 15 uses
  %i.tx = and i128 %i.tw, 20016609818878733144904388672456953615 ; 2 uses
  %.sroa.0219.0.extract.trunc = trunc i128 %i.tw to i64
  %i.ty = trunc i128 %i.tw to i64
  %i.tz = lshr i64 %i.ty, 8
  %i.ua = trunc i128 %i.tw to i64
  %i.ub = lshr i64 %i.ua, 16
  %i.uc = trunc i128 %i.tw to i64
  %i.ud = lshr i64 %i.uc, 24
  %i.ue = trunc i128 %i.tw to i64
  %i.uf = lshr i64 %i.ue, 32
  %i.ug = trunc i128 %i.tw to i64
  %i.uh = lshr i64 %i.ug, 40
  %i.ui = trunc i128 %i.tw to i64
  %i.uj = lshr i64 %i.ui, 48
  %i.uk = trunc i128 %i.tx to i64
  %i.ul = lshr i64 %i.uk, 56
  %.sroa.11.0.extract.shift = lshr i128 %i.tw, 64
  %.sroa.11.0.extract.trunc = trunc nuw nsw i128 %.sroa.11.0.extract.shift to i64
  %.sroa.12.0.extract.shift = lshr i128 %i.tw, 72
  %.sroa.12.0.extract.trunc = trunc nuw nsw i128 %.sroa.12.0.extract.shift to i64
  %.sroa.13.0.extract.shift = lshr i128 %i.tw, 80
  %.sroa.13.0.extract.trunc = trunc nuw nsw i128 %.sroa.13.0.extract.shift to i64
  %.sroa.14.0.extract.shift = lshr i128 %i.tw, 88
  %.sroa.14.0.extract.trunc = trunc nuw nsw i128 %.sroa.14.0.extract.shift to i64
  %.sroa.15.0.extract.shift = lshr i128 %i.tw, 96
  %.sroa.15.0.extract.trunc = trunc nuw nsw i128 %.sroa.15.0.extract.shift to i64
  %.sroa.16225.0.extract.shift = lshr i128 %i.tw, 104
  %.sroa.16225.0.extract.trunc = trunc nuw nsw i128 %.sroa.16225.0.extract.shift to i64
  %.sroa.17.0.extract.shift = lshr i128 %i.tw, 112
  %.sroa.17.0.extract.trunc = trunc nuw nsw i128 %.sroa.17.0.extract.shift to i64
  %.sroa.18.0.extract.shift = lshr i128 %i.tx, 120
  %.sroa.18.0.extract.trunc = trunc nuw nsw i128 %.sroa.18.0.extract.shift to i64
  %i.um = and i64 %.sroa.0219.0.extract.trunc, 15
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.um ; 2 uses
  %i.uo = load i32, ptr %i.un, align 4, !alias.scope !45, !noundef !4
  %i.up = add i32 %i.uo, 1
  store i32 %i.up, ptr %i.un, align 4, !alias.scope !45
  %i.uq = and i64 %i.tz, 15
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.uq ; 2 uses
  %i.us = load i32, ptr %i.ur, align 4, !alias.scope !45, !noundef !4
  %i.ut = add i32 %i.us, 1
  store i32 %i.ut, ptr %i.ur, align 4, !alias.scope !45
  %i.uu = and i64 %i.ub, 15
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.uu ; 2 uses
  %i.uw = load i32, ptr %i.uv, align 4, !alias.scope !45, !noundef !4
  %i.ux = add i32 %i.uw, 1
  store i32 %i.ux, ptr %i.uv, align 4, !alias.scope !45
  %i.uy = and i64 %i.ud, 15
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.uy ; 2 uses
  %i.va = load i32, ptr %i.uz, align 4, !alias.scope !45, !noundef !4
  %i.vb = add i32 %i.va, 1
  store i32 %i.vb, ptr %i.uz, align 4, !alias.scope !45
  %i.vc = and i64 %i.uf, 15
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.vc ; 2 uses
  %i.ve = load i32, ptr %i.vd, align 4, !alias.scope !45, !noundef !4
  %i.vf = add i32 %i.ve, 1
  store i32 %i.vf, ptr %i.vd, align 4, !alias.scope !45
  %i.vg = and i64 %i.uh, 15
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.vg ; 2 uses
  %i.vi = load i32, ptr %i.vh, align 4, !alias.scope !45, !noundef !4
  %i.vj = add i32 %i.vi, 1
  store i32 %i.vj, ptr %i.vh, align 4, !alias.scope !45
  %i.vk = and i64 %i.uj, 15
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.vk ; 2 uses
  %i.vm = load i32, ptr %i.vl, align 4, !alias.scope !45, !noundef !4
  %i.vn = add i32 %i.vm, 1
  store i32 %i.vn, ptr %i.vl, align 4, !alias.scope !45
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.ul ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 4, !alias.scope !45, !noundef !4
  %i.vq = add i32 %i.vp, 1
  store i32 %i.vq, ptr %i.vo, align 4, !alias.scope !45
  %i.vr = and i64 %.sroa.11.0.extract.trunc, 15
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.vr ; 2 uses
  %i.vt = load i32, ptr %i.vs, align 4, !alias.scope !45, !noundef !4
  %i.vu = add i32 %i.vt, 1
  store i32 %i.vu, ptr %i.vs, align 4, !alias.scope !45
  %i.vv = and i64 %.sroa.12.0.extract.trunc, 15
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.vv ; 2 uses
  %i.vx = load i32, ptr %i.vw, align 4, !alias.scope !45, !noundef !4
  %i.vy = add i32 %i.vx, 1
  store i32 %i.vy, ptr %i.vw, align 4, !alias.scope !45
  %i.vz = and i64 %.sroa.13.0.extract.trunc, 15
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.vz ; 2 uses
  %i.wb = load i32, ptr %i.wa, align 4, !alias.scope !45, !noundef !4
  %i.wc = add i32 %i.wb, 1
  store i32 %i.wc, ptr %i.wa, align 4, !alias.scope !45
  %i.wd = and i64 %.sroa.14.0.extract.trunc, 15
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.wd ; 2 uses
  %i.wf = load i32, ptr %i.we, align 4, !alias.scope !45, !noundef !4
  %i.wg = add i32 %i.wf, 1
  store i32 %i.wg, ptr %i.we, align 4, !alias.scope !45
  %i.wh = and i64 %.sroa.15.0.extract.trunc, 15
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.wh ; 2 uses
  %i.wj = load i32, ptr %i.wi, align 4, !alias.scope !45, !noundef !4
  %i.wk = add i32 %i.wj, 1
  store i32 %i.wk, ptr %i.wi, align 4, !alias.scope !45
  %i.wl = and i64 %.sroa.16225.0.extract.trunc, 15
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.wl ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 4, !alias.scope !45, !noundef !4
  %i.wo = add i32 %i.wn, 1
  store i32 %i.wo, ptr %i.wm, align 4, !alias.scope !45
  %i.wp = and i64 %.sroa.17.0.extract.trunc, 15
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.wp ; 2 uses
  %i.wr = load i32, ptr %i.wq, align 4, !alias.scope !45, !noundef !4
  %i.ws = add i32 %i.wr, 1
  store i32 %i.ws, ptr %i.wq, align 4, !alias.scope !45
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %.sroa.18.0.extract.trunc ; 2 uses
  %i.wu = load i32, ptr %i.wt, align 4, !alias.scope !45, !noundef !4
  %i.wv = add i32 %i.wu, 1
  store i32 %i.wv, ptr %i.wt, align 4, !alias.scope !45
  %i.ww = getelementptr inbounds nuw i8, ptr %.sroa.0.257, i64 16 ; 2 uses
  %i.wx = add nsw i64 %.sroa.017.256, -16         ; 3 uses
  %i.wy = icmp ugt i64 %i.wx, 15
  br i1 %i.wy, label %.lr.ph58, label %._crit_edge

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.016)
  %4 = sub nuw nsw i64 16, %.sroa.017.2.lcssa
  %5 = getelementptr i8, ptr %.sroa.016, i64 %.sroa.017.2.lcssa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %5, i8 0, i64 %4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.016, ptr nonnull align 1 %.sroa.0.2.lcssa, i64 %.sroa.017.2.lcssa, i1 false)
  %.sroa.016.0..sroa.016.0..sroa.016.0..sroa.016.0..sroa.016.0..sroa.015.0.copyload = load i128, ptr %.sroa.016, align 16 ; 2 uses
  %i.wz = lshr i128 %.sroa.016.0..sroa.016.0..sroa.016.0..sroa.016.0..sroa.016.0..sroa.015.0.copyload, 1
  %i.xa = and i128 %i.wz, 113427455640312821154458202477256070485
  %i.xb = sub i128 %.sroa.016.0..sroa.016.0..sroa.016.0..sroa.016.0..sroa.016.0..sroa.015.0.copyload, %i.xa ; 2 uses
  %i.xc = and i128 %i.xb, 68056473384187692692674921486353642291
  %i.xd = lshr i128 %i.xb, 2
  %i.xe = and i128 %i.xd, 68056473384187692692674921486353642291
  %i.xf = add nuw nsw i128 %i.xe, %i.xc           ; 2 uses
  %i.xg = lshr i128 %i.xf, 4
  %i.xh = add nuw nsw i128 %i.xg, %i.xf
  %i.xi = and i128 %i.xh, 20016609818878733144904388672456953615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46
  store i128 %i.xi, ptr %i.b, align 16, !noalias !46
  %xtraiter238 = and i64 %.sroa.017.2.lcssa, 1
  %i.xj = icmp eq i64 %.sroa.017.2.lcssa, 1
  br i1 %i.xj, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %.sroa.017.2.lcssa, 14
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.new
  %.sroa.01.0.i4061 = phi i64 [ 0, %.new ], [ %i.xu, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.xk = or disjoint i64 %.sroa.01.0.i4061, 1    ; 2 uses
  %i.xl = add i64 %.sroa.01.0.i4061, %i.h
  %i.xm = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.01.0.i4061
  %i.xn = load i8, ptr %i.xm, align 2, !noalias !46, !noundef !4
  %i.xo = zext i8 %i.xn to i64
  %i.xp = and i64 %i.xl, 3
  %.idx.i41 = mul nuw nsw i64 %i.xp, 36
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i41
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.xo ; 2 uses
  %i.xs = load i32, ptr %i.xr, align 4, !alias.scope !46, !noundef !4
  %i.xt = add i32 %i.xs, 1
  store i32 %i.xt, ptr %i.xr, align 4, !alias.scope !46
  %i.xu = add nuw nsw i64 %.sroa.01.0.i4061, 2    ; 2 uses
  %i.xv = add i64 %i.xk, %i.h
  %i.xw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xk
  %i.xx = load i8, ptr %i.xw, align 1, !noalias !46, !noundef !4
  %i.xy = zext i8 %i.xx to i64
  %i.xz = and i64 %i.xv, 3
  %.idx.i41.1 = mul nuw nsw i64 %i.xz, 36
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i41.1
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %i.xy ; 2 uses
  %i.yc = load i32, ptr %i.yb, align 4, !alias.scope !46, !noundef !4
  %i.yd = add i32 %i.yc, 1
  store i32 %i.yd, ptr %i.yb, align 4, !alias.scope !46
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor23apply_perbyte_popcounts.exit42.unr-lcssa, label %bb.i

_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor23apply_perbyte_popcounts.exit42.unr-lcssa: ; preds = %bb.i
  %lcmp.mod239.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod239.not, label %_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor23apply_perbyte_popcounts.exit42, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor23apply_perbyte_popcounts.exit42.unr-lcssa, %bb.h
  %.sroa.01.0.i4061.epil.init = phi i64 [ 0, %bb.h ], [ %i.xu, %_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor23apply_perbyte_popcounts.exit42.unr-lcssa ] ; 2 uses
  %lcmp.mod240 = trunc i64 %.sroa.017.2.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod240)
  %i.ye = add i64 %.sroa.01.0.i4061.epil.init, %i.h
  %i.yf = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.01.0.i4061.epil.init
  %i.yg = load i8, ptr %i.yf, align 1, !noalias !46, !noundef !4
  %i.yh = zext i8 %i.yg to i64
  %i.yi = and i64 %i.ye, 3
  %.idx.i41.epil = mul nuw nsw i64 %i.yi, 36
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i41.epil
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.yh ; 2 uses
  %i.yl = load i32, ptr %i.yk, align 4, !alias.scope !46, !noundef !4
  %i.ym = add i32 %i.yl, 1
  store i32 %i.ym, ptr %i.yk, align 4, !alias.scope !46
  br label %_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor23apply_perbyte_popcounts.exit42

_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor23apply_perbyte_popcounts.exit42: ; preds = %_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor23apply_perbyte_popcounts.exit42.unr-lcssa, %.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.016)
  br label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor23apply_perbyte_popcounts.exit42, %._crit_edge, %_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor23apply_perbyte_popcounts.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !5
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !5
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !5
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRTyTmmEEINtNtNtBa_5slice4iter4IterB14_EECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !5
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !5
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRmINtNtNtBa_5slice4iter4ItermEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
end_hunk_0
