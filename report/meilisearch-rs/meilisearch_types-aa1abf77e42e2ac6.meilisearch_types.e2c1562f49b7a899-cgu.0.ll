Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 226
loop-unroll.NumUnrolled: 306
begin_hunk_0_@"_ZN81_$LT$meilisearch_types..locales..Locale$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hd605cac547949fafE":bb.a
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.c, label %.critedge548

.critedge548:                                     ; preds = %.critedge546
  %i.ba = load i16, ptr %1, align 1
  %i.bb = icmp ne i16 %i.ba, 28261
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.c, label %.critedge550

.critedge550:                                     ; preds = %.critedge548
  %i.be = load i16, ptr %1, align 1
  %i.bf = icmp ne i16 %i.be, 28517
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.c, label %.critedge552

.critedge552:                                     ; preds = %.critedge550
  %i.bi = load i16, ptr %1, align 1
  %i.bj = icmp ne i16 %i.bi, 29797
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.c, label %.critedge554

.critedge554:                                     ; preds = %.critedge552
  %i.bm = load i16, ptr %1, align 1
  %i.bn = icmp ne i16 %i.bm, 26982
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.c, label %.critedge556

.critedge556:                                     ; preds = %.critedge554
  %i.bq = load i16, ptr %1, align 1
  %i.br = icmp ne i16 %i.bq, 29286
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.c, label %.critedge558

.critedge558:                                     ; preds = %.critedge556
  %i.bu = load i16, ptr %1, align 1
  %i.bv = icmp ne i16 %i.bu, 30055
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.c, label %.critedge560

.critedge560:                                     ; preds = %.critedge558
  %i.by = load i16, ptr %1, align 1
  %i.bz = icmp ne i16 %i.by, 25960
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.c, label %.critedge562

.critedge562:                                     ; preds = %.critedge560
  %i.cc = load i16, ptr %1, align 1
  %i.cd = icmp ne i16 %i.cc, 26984
  %i.ce = zext i1 %i.cd to i32
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.c, label %.critedge564

.critedge564:                                     ; preds = %.critedge562
  %i.cg = load i16, ptr %1, align 1
  %i.ch = icmp ne i16 %i.cg, 29288
  %i.ci = zext i1 %i.ch to i32
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.c, label %.critedge566

.critedge566:                                     ; preds = %.critedge564
  %i.ck = load i16, ptr %1, align 1
  %i.cl = icmp ne i16 %i.ck, 30056
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.c, label %.critedge568

.critedge568:                                     ; preds = %.critedge566
  %i.co = load i16, ptr %1, align 1
  %i.cp = icmp ne i16 %i.co, 31080
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.c, label %.critedge570

.critedge570:                                     ; preds = %.critedge568
  %i.cs = load i16, ptr %1, align 1
  %i.ct = icmp ne i16 %i.cs, 25705
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.c, label %.critedge572

.critedge572:                                     ; preds = %.critedge570
  %i.cw = load i16, ptr %1, align 1
  %i.cx = icmp ne i16 %i.cw, 29801
  %i.cy = zext i1 %i.cx to i32
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.c, label %.critedge574

.critedge574:                                     ; preds = %.critedge572
  %i.da = load i16, ptr %1, align 1
  %i.db = icmp ne i16 %i.da, 30314
  %i.dc = zext i1 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.c, label %.critedge576

.critedge576:                                     ; preds = %.critedge574
  %i.de = load i16, ptr %1, align 1
  %i.df = icmp ne i16 %i.de, 24938
  %i.dg = zext i1 %i.df to i32
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.c, label %.critedge578

.critedge578:                                     ; preds = %.critedge576
  %i.di = load i16, ptr %1, align 1
  %i.dj = icmp ne i16 %i.di, 28267
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.c, label %.critedge580

.critedge580:                                     ; preds = %.critedge578
  %i.dm = load i16, ptr %1, align 1
  %i.dn = icmp ne i16 %i.dm, 24939
  %i.do = zext i1 %i.dn to i32
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.c, label %.critedge582

.critedge582:                                     ; preds = %.critedge580
  %i.dq = load i16, ptr %1, align 1
  %i.dr = icmp ne i16 %i.dq, 28011
  %i.ds = zext i1 %i.dr to i32
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.c, label %.critedge584

.critedge584:                                     ; preds = %.critedge582
  %i.du = load i16, ptr %1, align 1
  %i.dv = icmp ne i16 %i.du, 28523
  %i.dw = zext i1 %i.dv to i32
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.c, label %.critedge586

.critedge586:                                     ; preds = %.critedge584
  %i.dy = load i16, ptr %1, align 1
  %i.dz = icmp ne i16 %i.dy, 24940
  %i.ea = zext i1 %i.dz to i32
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.c, label %.critedge588

.critedge588:                                     ; preds = %.critedge586
  %i.ec = load i16, ptr %1, align 1
  %i.ed = icmp ne i16 %i.ec, 30316
  %i.ee = zext i1 %i.ed to i32
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.c, label %.critedge590

.critedge590:                                     ; preds = %.critedge588
  %i.eg = load i16, ptr %1, align 1
  %i.eh = icmp ne i16 %i.eg, 29804
  %i.ei = zext i1 %i.eh to i32
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.c, label %.critedge592

.critedge592:                                     ; preds = %.critedge590
  %i.ek = load i16, ptr %1, align 1
  %i.el = icmp ne i16 %i.ek, 27757
  %i.em = zext i1 %i.el to i32
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.c, label %.critedge594

.critedge594:                                     ; preds = %.critedge592
  %i.eo = load i16, ptr %1, align 1
  %i.ep = icmp ne i16 %i.eo, 29293
  %i.eq = zext i1 %i.ep to i32
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.c, label %.critedge596

.critedge596:                                     ; preds = %.critedge594
  %i.es = load i16, ptr %1, align 1
  %i.et = icmp ne i16 %i.es, 27501
  %i.eu = zext i1 %i.et to i32
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.c, label %.critedge598

.critedge598:                                     ; preds = %.critedge596
  %i.ew = load i16, ptr %1, align 1
  %i.ex = icmp ne i16 %i.ew, 31085
  %i.ey = zext i1 %i.ex to i32
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.c, label %.critedge600

.critedge600:                                     ; preds = %.critedge598
  %i.fa = load i16, ptr %1, align 1
  %i.fb = icmp ne i16 %i.fa, 25966
  %i.fc = zext i1 %i.fb to i32
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.c, label %.critedge602.thread

.critedge602.thread:                              ; preds = %.critedge600
  %i.fe = load i16, ptr %1, align 1
  %i.ff = icmp ne i16 %i.fe, 27758
  %i.fg = zext i1 %i.ff to i32
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.critedge602.thread, %.critedge600, %.critedge598, %.critedge596, %.critedge594, %.critedge592, %.critedge590, %.critedge588, %.critedge586, %.critedge584, %.critedge582, %.critedge580, %.critedge578, %.critedge576, %.critedge574, %.critedge572, %.critedge570, %.critedge568, %.critedge566, %.critedge564, %.critedge562, %.critedge560, %.critedge558, %.critedge556, %.critedge554, %.critedge552, %.critedge550, %.critedge548, %.critedge546, %.critedge544, %.critedge542, %.critedge540, %.critedge538, %.critedge536, %.critedge534, %.critedge532, %.critedge530, %.critedge528, %.critedge526, %.critedge, %bb.b
  %.sroa.0.0 = phi i8 [ -119, %bb.cv ], [ 0, %bb.b ], [ 1, %.critedge ], [ 2, %.critedge526 ], [ 3, %.critedge528 ], [ 4, %.critedge530 ], [ 5, %.critedge532 ], [ 6, %.critedge534 ], [ 7, %.critedge536 ], [ 8, %.critedge538 ], [ 9, %.critedge540 ], [ 10, %.critedge542 ], [ 11, %.critedge544 ], [ 12, %.critedge546 ], [ 13, %.critedge548 ], [ 14, %.critedge550 ], [ 15, %.critedge552 ], [ 16, %.critedge554 ], [ 17, %.critedge556 ], [ 18, %.critedge558 ], [ 19, %.critedge560 ], [ 20, %.critedge562 ], [ 21, %.critedge564 ], [ 22, %.critedge566 ], [ 23, %.critedge568 ], [ 24, %.critedge570 ], [ 25, %.critedge572 ], [ 26, %.critedge574 ], [ 27, %.critedge576 ], [ 28, %.critedge578 ], [ 29, %.critedge580 ], [ 30, %.critedge582 ], [ 31, %.critedge584 ], [ 32, %.critedge586 ], [ 33, %.critedge588 ], [ 34, %.critedge590 ], [ 35, %.critedge592 ], [ 36, %.critedge594 ], [ 37, %.critedge596 ], [ 38, %.critedge598 ], [ 39, %.critedge600 ], [ 40, %.critedge602.thread ], [ 41, %bb.d ], [ 42, %bb.e ], [ 43, %bb.f ], [ 44, %bb.g ], [ 45, %bb.h ], [ 46, %bb.i ], [ 47, %bb.j ], [ 48, %bb.k ], [ 49, %bb.l ], [ 50, %bb.m ], [ 51, %bb.n ], [ 52, %bb.o ], [ 53, %bb.p ], [ 54, %bb.q ], [ 55, %bb.r ], [ 56, %bb.s ], [ 57, %bb.t ], [ 58, %bb.u ], [ 59, %bb.v ], [ 60, %bb.w ], [ 61, %bb.x ], [ 62, %bb.y ], [ 63, %bb.z ], [ 64, %bb.aa ], [ 65, %bb.ab ], [ 66, %bb.ac ], [ 67, %bb.ad ], [ 68, %bb.ae ], [ 69, %bb.af ], [ 70, %bb.ag ], [ 71, %bb.ah ], [ 72, %bb.ai ], [ 73, %bb.aj ], [ 74, %bb.ak ], [ 75, %bb.al ], [ 76, %bb.am ], [ 77, %bb.an ], [ 78, %bb.ao ], [ 79, %bb.ap ], [ 80, %bb.aq ], [ 81, %bb.ar ], [ 82, %bb.as ], [ 83, %bb.at ], [ 84, %bb.au ], [ 85, %bb.av ], [ 86, %bb.aw ], [ 87, %bb.ax ], [ 88, %bb.ay ], [ 89, %bb.az ], [ 90, %bb.ba ], [ 91, %bb.bb ], [ 92, %bb.bc ], [ 93, %bb.bd ], [ 94, %bb.be ], [ 95, %bb.bf ], [ 96, %bb.bg ], [ 97, %bb.bh ], [ 98, %bb.bi ], [ 99, %bb.bj ], [ 100, %bb.bk ], [ 101, %bb.bl ], [ 102, %bb.bm ], [ 103, %bb.bn ], [ 104, %bb.bo ], [ 105, %bb.bp ], [ 106, %bb.bq ], [ 107, %bb.br ], [ 108, %bb.bs ], [ 109, %bb.bt ], [ 110, %bb.bu ], [ 111, %bb.bv ], [ 112, %bb.bw ], [ 113, %bb.bx ], [ 114, %bb.by ], [ 115, %bb.bz ], [ 116, %bb.ca ], [ 117, %bb.cb ], [ 118, %bb.cc ], [ 119, %bb.cd ], [ 120, %bb.ce ], [ 121, %bb.cf ], [ 122, %bb.cg ], [ 123, %bb.ch ], [ 124, %bb.ci ], [ 125, %bb.cj ], [ 126, %bb.ck ], [ 127, %bb.cl ], [ -128, %bb.cm ], [ -127, %bb.cn ], [ -126, %bb.co ], [ -125, %bb.cp ], [ -124, %bb.cq ], [ -123, %bb.cr ], [ -122, %bb.cs ], [ -121, %bb.ct ], [ -120, %bb.cu ], [ -118, %bb.cw ]
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0, ptr %i.fi, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.cz

bb.d:                                             ; preds = %.critedge602.thread
  %i.fj = load i16, ptr %1, align 1
  %i.fk = icmp ne i16 %i.fj, 25198
  %i.fl = zext i1 %i.fk to i32
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.c, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fn = load i16, ptr %1, align 1
  %i.fo = icmp ne i16 %i.fn, 29295
  %i.fp = zext i1 %i.fo to i32
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.c, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fr = load i16, ptr %1, align 1
  %i.fs = icmp ne i16 %i.fr, 24944
  %i.ft = zext i1 %i.fs to i32
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.c, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fv = load i16, ptr %1, align 1
  %i.fw = icmp ne i16 %i.fv, 24934
  %i.fx = zext i1 %i.fw to i32
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.c, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fz = load i16, ptr %1, align 1
  %i.ga = icmp ne i16 %i.fz, 27760
  %i.gb = zext i1 %i.ga to i32
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.c, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gd = load i16, ptr %1, align 1
  %i.ge = icmp ne i16 %i.gd, 29808
  %i.gf = zext i1 %i.ge to i32
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.c, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gh = load i16, ptr %1, align 1
  %i.gi = icmp ne i16 %i.gh, 28530
  %i.gj = zext i1 %i.gi to i32
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.c, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gl = load i16, ptr %1, align 1
  %i.gm = icmp ne i16 %i.gl, 30066
  %i.gn = zext i1 %i.gm to i32
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.c, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gp = load i16, ptr %1, align 1
  %i.gq = icmp ne i16 %i.gp, 26995
  %i.gr = zext i1 %i.gq to i32
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %bb.c, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gt = load i16, ptr %1, align 1
  %i.gu = icmp ne i16 %i.gt, 27507
  %i.gv = zext i1 %i.gu to i32
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.c, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gx = load i16, ptr %1, align 1
  %i.gy = icmp ne i16 %i.gx, 27763
  %i.gz = zext i1 %i.gy to i32
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.c, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hb = load i16, ptr %1, align 1
  %i.hc = icmp ne i16 %i.hb, 28275
  %i.hd = zext i1 %i.hc to i32
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.c, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hf = load i16, ptr %1, align 1
  %i.hg = icmp ne i16 %i.hf, 29541
  %i.hh = zext i1 %i.hg to i32
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.c, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hj = load i16, ptr %1, align 1
  %i.hk = icmp ne i16 %i.hj, 29299
  %i.hl = zext i1 %i.hk to i32
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.c, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hn = load i16, ptr %1, align 1
  %i.ho = icmp ne i16 %i.hn, 30323
  %i.hp = zext i1 %i.ho to i32
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.c, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hr = load i16, ptr %1, align 1
  %i.hs = icmp ne i16 %i.hr, 24948
  %i.ht = zext i1 %i.hs to i32
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.c, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hv = load i16, ptr %1, align 1
  %i.hw = icmp ne i16 %i.hv, 25972
  %i.hx = zext i1 %i.hw to i32
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.c, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hz = load i16, ptr %1, align 1
  %i.ia = icmp ne i16 %i.hz, 27764
  %i.ib = zext i1 %i.ia to i32
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.c, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.id = load i16, ptr %1, align 1
  %i.ie = icmp ne i16 %i.id, 26740
  %i.if = zext i1 %i.ie to i32
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.c, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ih = load i16, ptr %1, align 1
  %i.ii = icmp ne i16 %i.ih, 27508
  %i.ij = zext i1 %i.ii to i32
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.c, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.il = load i16, ptr %1, align 1
  %i.im = icmp ne i16 %i.il, 29300
  %i.in = zext i1 %i.im to i32
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.c, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ip = load i16, ptr %1, align 1
  %i.iq = icmp ne i16 %i.ip, 27509
  %i.ir = zext i1 %i.iq to i32
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.c, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.it = load i16, ptr %1, align 1
  %i.iu = icmp ne i16 %i.it, 29301
  %i.iv = zext i1 %i.iu to i32
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.c, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ix = load i16, ptr %1, align 1
  %i.iy = icmp ne i16 %i.ix, 31349
  %i.iz = zext i1 %i.iy to i32
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %bb.c, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jb = load i16, ptr %1, align 1
  %i.jc = icmp ne i16 %i.jb, 26998
  %i.jd = zext i1 %i.jc to i32
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %bb.c, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jf = load i16, ptr %1, align 1
  %i.jg = icmp ne i16 %i.jf, 27001
  %i.jh = zext i1 %i.jg to i32
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.c, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jj = load i16, ptr %1, align 1
  %i.jk = icmp ne i16 %i.jj, 26746
  %i.jl = zext i1 %i.jk to i32
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.c, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jn = load i16, ptr %1, align 1
  %i.jo = icmp ne i16 %i.jn, 30074
  %i.jp = zext i1 %i.jo to i32
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.c, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
end_hunk_0
