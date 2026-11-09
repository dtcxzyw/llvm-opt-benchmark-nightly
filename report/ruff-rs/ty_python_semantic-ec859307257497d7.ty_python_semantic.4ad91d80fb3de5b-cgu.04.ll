Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.04?download=true
inline.NumInlined: 10536
inline.NumDeleted: 4602
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings20evaluate_known_cases:bb.a
  %i.hy = alloca [40 x i8], align 8               ; 8 uses
  %i.hz = alloca [16 x i8], align 8               ; 4 uses
  %i.ia = alloca [696 x i8], align 8              ; 4 uses
  %i.ib = alloca [8 x i8], align 8                ; 4 uses
  %i.ic = alloca [16 x i8], align 4               ; 4 uses
  %i.id = alloca [16 x i8], align 4               ; 5 uses
  %i.ie = alloca [16 x i8], align 4               ; 4 uses
  %i.if = alloca [16 x i8], align 4               ; 6 uses
  %i.ig = alloca [40 x i8], align 8               ; 8 uses
  %i.ih = alloca [16 x i8], align 8               ; 4 uses
  %i.ii = alloca [696 x i8], align 8              ; 4 uses
  %i.ij = alloca [8 x i8], align 8                ; 4 uses
  %i.ik = alloca [16 x i8], align 4               ; 4 uses
  %i.il = alloca [16 x i8], align 4               ; 6 uses
  %i.im = alloca [16 x i8], align 4               ; 4 uses
  %i.in = alloca [16 x i8], align 4               ; 5 uses
  %i.io = alloca [12 x i8], align 4               ; 4 uses
  %.sroa.41871 = alloca [12 x i8], align 4        ; 4 uses
  %i.ip = alloca [48 x i8], align 8               ; 7 uses
  %i.iq = alloca [32 x i8], align 8               ; 4 uses
  %i.ir = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.71828 = alloca [16 x i8], align 8        ; 5 uses
  %i.is = alloca [16 x i8], align 4               ; 3 uses
  %.sroa.61809 = alloca [12 x i8], align 4        ; 5 uses
  %i.it = alloca [16 x i8], align 4               ; 4 uses
  %.sroa.41753 = alloca [12 x i8], align 4        ; 4 uses
  %i.iu = alloca [144 x i8], align 8              ; 6 uses
  %i.iv = alloca [144 x i8], align 8              ; 6 uses
  %i.iw = alloca [144 x i8], align 8              ; 6 uses
  %.sroa.3 = alloca [12 x i8], align 4            ; 2 uses
  %i.ix = alloca [16 x i8], align 4               ; 4 uses
  %i.iy = alloca [16 x i8], align 4               ; 7 uses
  %i.iz = alloca [32 x i8], align 4               ; 7 uses
  %i.ja = alloca [16 x i8], align 4               ; 10 uses
  %.sroa.7 = alloca [12 x i8], align 4            ; 6 uses
  %i.jb = alloca [16 x i8], align 4               ; 4 uses
  %i.jc = alloca [16 x i8], align 4               ; 4 uses
  %i.jd = alloca [16 x i8], align 4               ; 4 uses
  %i.je = alloca [88 x i8], align 8               ; 6 uses
  %i.jf = alloca [12 x i8], align 4               ; 4 uses
  %i.jg = alloca [12 x i8], align 4               ; 4 uses
  %i.jh = alloca [12 x i8], align 4               ; 6 uses
  %i.ji = alloca [16 x i8], align 4               ; 4 uses
  %i.jj = alloca [16 x i8], align 4               ; 4 uses
  %i.jk = alloca [16 x i8], align 4               ; 4 uses
  %i.jl = alloca [16 x i8], align 4               ; 4 uses
  %i.jm = alloca [16 x i8], align 4               ; 6 uses
  %i.jn = alloca [16 x i8], align 4               ; 4 uses
  %i.jo = alloca [64 x i8], align 8               ; 4 uses
  %i.jp = alloca [48 x i8], align 8               ; 6 uses
  %i.jq = alloca [16 x i8], align 4               ; 4 uses
  %i.jr = alloca [32 x i8], align 8               ; 7 uses
  %i.js = alloca [12 x i8], align 4               ; 4 uses
  %i.jt = alloca [16 x i8], align 4               ; 5 uses
  %i.ju = alloca [32 x i8], align 8               ; 7 uses
  %i.jv = alloca [40 x i8], align 8               ; 4 uses
  %i.jw = alloca [24 x i8], align 8               ; 9 uses
  %i.jx = alloca [12 x i8], align 4               ; 4 uses
  %i.jy = alloca [16 x i8], align 4               ; 6 uses
  %i.jz = alloca [16 x i8], align 4               ; 4 uses
  %i.ka = alloca [16 x i8], align 4               ; 4 uses
  %i.kb = alloca [32 x i8], align 8               ; 6 uses
  %i.kc = alloca [24 x i8], align 8               ; 4 uses
  %i.kd = alloca [16 x i8], align 4               ; 5 uses
  %i.ke = alloca [16 x i8], align 4               ; 6 uses
  %i.kf = alloca [24 x i8], align 8               ; 6 uses
  %i.kg = alloca [16 x i8], align 4               ; 12 uses
  %i.kh = alloca [32 x i8], align 8               ; 7 uses
  %i.ki = alloca [32 x i8], align 8               ; 10 uses
  %i.kj = alloca [16 x i8], align 4               ; 4 uses
  %i.kk = alloca [16 x i8], align 4               ; 4 uses
  %i.kl = alloca [16 x i8], align 4               ; 4 uses
  %i.km = alloca [40 x i8], align 8               ; 8 uses
  %i.kn = alloca [16 x i8], align 8               ; 4 uses
  %i.ko = alloca [696 x i8], align 8              ; 4 uses
  %i.kp = alloca [16 x i8], align 4               ; 4 uses
  %i.kq = alloca [16 x i8], align 4               ; 4 uses
  %i.kr = alloca [16 x i8], align 4               ; 4 uses
  %i.ks = alloca [16 x i8], align 4               ; 4 uses
  %i.kt = alloca [40 x i8], align 8               ; 8 uses
  %i.ku = alloca [16 x i8], align 8               ; 4 uses
  %i.kv = alloca [696 x i8], align 8              ; 4 uses
  %i.kw = alloca [16 x i8], align 4               ; 4 uses
  %i.kx = alloca [16 x i8], align 4               ; 4 uses
  %i.ky = alloca [16 x i8], align 4               ; 4 uses
  %i.kz = alloca [16 x i8], align 4               ; 4 uses
  %i.la = alloca [40 x i8], align 8               ; 8 uses
  %i.lb = alloca [16 x i8], align 8               ; 4 uses
  %i.lc = alloca [696 x i8], align 8              ; 4 uses
  %i.ld = alloca [16 x i8], align 4               ; 4 uses
  %i.le = alloca [16 x i8], align 4               ; 4 uses
  %i.lf = alloca [16 x i8], align 4               ; 4 uses
  %i.lg = alloca [16 x i8], align 4               ; 4 uses
  %i.lh = alloca [40 x i8], align 8               ; 8 uses
  %i.li = alloca [16 x i8], align 8               ; 4 uses
  %i.lj = alloca [696 x i8], align 8              ; 4 uses
  %i.lk = alloca [16 x i8], align 4               ; 4 uses
  %i.ll = alloca [16 x i8], align 4               ; 4 uses
  %i.lm = alloca [16 x i8], align 4               ; 4 uses
  %i.ln = alloca [16 x i8], align 4               ; 4 uses
  %i.lo = alloca [40 x i8], align 8               ; 8 uses
  %i.lp = alloca [16 x i8], align 8               ; 4 uses
  %i.lq = alloca [696 x i8], align 8              ; 4 uses
  %i.lr = alloca [16 x i8], align 4               ; 4 uses
  %i.ls = alloca [16 x i8], align 4               ; 4 uses
  %i.lt = alloca [16 x i8], align 4               ; 4 uses
  %i.lu = alloca [16 x i8], align 4               ; 4 uses
  %i.lv = alloca [32 x i8], align 4               ; 4 uses
  %i.lw = alloca [16 x i8], align 4               ; 3 uses
  %.sroa.71647 = alloca [12 x i8], align 4        ; 6 uses
  %.sroa.61642 = alloca [12 x i8], align 4        ; 5 uses
  %.sroa.61625 = alloca [12 x i8], align 4        ; 5 uses
  %.sroa.61614 = alloca [12 x i8], align 4        ; 5 uses
  %i.lx = alloca [16 x i8], align 4               ; 4 uses
  %i.ly = alloca [16 x i8], align 4               ; 4 uses
  %i.lz = alloca [16 x i8], align 4               ; 4 uses
  %i.ma = alloca [16 x i8], align 4               ; 4 uses
  %i.mb = alloca [16 x i8], align 4               ; 4 uses
  %i.mc = alloca [16 x i8], align 4               ; 4 uses
  %i.md = alloca [16 x i8], align 4               ; 4 uses
  %i.me = alloca [16 x i8], align 4               ; 4 uses
  %i.mf = alloca [16 x i8], align 4               ; 4 uses
  %i.mg = alloca [16 x i8], align 4               ; 7 uses
  %i.mh = alloca [12 x i8], align 4               ; 4 uses
  %.sroa.41594 = alloca [12 x i8], align 4        ; 4 uses
  %i.mi = alloca [144 x i8], align 8              ; 6 uses
  %i.mj = alloca [16 x i8], align 4               ; 4 uses
  %i.mk = alloca [144 x i8], align 8              ; 7 uses
  %i.ml = alloca [144 x i8], align 8              ; 7 uses
  %i.mm = alloca [16 x i8], align 4               ; 8 uses
  %.sroa.161572.sroa.0 = alloca [3 x i8], align 1 ; 2 uses
  %i.mn = alloca [16 x i8], align 4               ; 4 uses
  %i.mo = alloca [24 x i8], align 8               ; 12 uses
  %i.mp = alloca [432 x i8], align 8              ; 7 uses
  %i.mq = alloca [16 x i8], align 4               ; 4 uses
  %i.mr = alloca [16 x i8], align 4               ; 6 uses
  %i.ms = alloca [144 x i8], align 8              ; 7 uses
  %i.mt = alloca [16 x i8], align 4               ; 4 uses
  %i.mu = alloca [16 x i8], align 4               ; 4 uses
  %i.mv = alloca [16 x i8], align 4               ; 4 uses
  %i.mw = alloca [16 x i8], align 4               ; 6 uses
  %i.mx = alloca [144 x i8], align 8              ; 7 uses
  %i.my = alloca [144 x i8], align 8              ; 7 uses
  %i.mz = alloca [16 x i8], align 4               ; 8 uses
  %.sroa.161548.sroa.0 = alloca [3 x i8], align 1 ; 2 uses
  %i.na = alloca [16 x i8], align 4               ; 4 uses
  %i.nb = alloca [24 x i8], align 8               ; 12 uses
  %i.nc = alloca [432 x i8], align 8              ; 7 uses
  %i.nd = alloca [16 x i8], align 4               ; 4 uses
  %i.ne = alloca [16 x i8], align 4               ; 6 uses
  %i.nf = alloca [144 x i8], align 8              ; 7 uses
  %i.ng = alloca [16 x i8], align 4               ; 4 uses
  %i.nh = alloca [16 x i8], align 4               ; 4 uses
  %i.ni = alloca [16 x i8], align 4               ; 4 uses
  %i.nj = alloca [16 x i8], align 4               ; 6 uses
  %i.nk = alloca [144 x i8], align 8              ; 7 uses
  %i.nl = alloca [16 x i8], align 4               ; 4 uses
  %i.nm = alloca [16 x i8], align 4               ; 4 uses
  %i.nn = alloca [16 x i8], align 4               ; 6 uses
  %i.no = alloca [144 x i8], align 8              ; 7 uses
  %i.np = alloca [16 x i8], align 4               ; 4 uses
  %i.nq = alloca [16 x i8], align 4               ; 4 uses
  %i.nr = alloca [16 x i8], align 4               ; 6 uses
  %i.ns = alloca [16 x i8], align 4               ; 5 uses
  %i.nt = alloca [16 x i8], align 4               ; 5 uses
  %i.nu = alloca [56 x i8], align 8               ; 8 uses
  %i.nv = alloca [16 x i8], align 4               ; 4 uses
  %i.nw = alloca [16 x i8], align 4               ; 5 uses
  %i.nx = alloca [16 x i8], align 4               ; 5 uses
  %i.ny = alloca [16 x i8], align 4               ; 4 uses
  %i.nz = alloca [16 x i8], align 4               ; 7 uses
  %i.oa = alloca [12 x i8], align 4               ; 4 uses
  %i.ob = alloca [16 x i8], align 4               ; 4 uses
  %i.oc = alloca [16 x i8], align 4               ; 7 uses
  %i.od = alloca [16 x i8], align 4               ; 4 uses
  %i.oe = alloca [16 x i8], align 4               ; 4 uses
  %i.of = alloca [16 x i8], align 4               ; 4 uses
  %i.og = alloca [16 x i8], align 4               ; 4 uses
  %i.oh = alloca [16 x i8], align 4               ; 4 uses
  %i.oi = alloca [16 x i8], align 4               ; 4 uses
  %i.oj = alloca [16 x i8], align 4               ; 4 uses
  %i.ok = alloca [16 x i8], align 4               ; 4 uses
  %i.ol = alloca [16 x i8], align 4               ; 9 uses
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.oo = load i64, ptr %i.on, align 8, !alias.scope !16102, !noundef !45 ; 2 uses
  %i.op = icmp ugt i64 %i.oo, 1                   ; 2 uses
  %i.oq = load ptr, ptr %i.om, align 8, !alias.scope !16102, !nonnull !45
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sink9.i.i = select i1 %i.op, ptr %i.oq, ptr %i.om ; 2 uses
  %.val.i = load i64, ptr %i.or, align 8, !alias.scope !16103
  %i.os = select i1 %i.op, i64 %.val.i, i64 %i.oo
  %i.ot = getelementptr inbounds nuw [384 x i8], ptr %.sink9.i.i, i64 %i.os
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ol, i64 4 ; 8 uses
  %.sroa.61926.0..sroa_idx1927 = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.sroa.61926.0..sroa_idx1928 = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %.sroa.61932.0..sroa_idx1933 = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.sroa.61932.0..sroa_idx1934 = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %.sroa.61938.0..sroa_idx1939 = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %.sroa.61938.0..sroa_idx1940 = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.ov = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %.sroa.45.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %.sroa.56.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.oz = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %.sroa.42068.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.sroa.82057.0..sroa_idx2058 = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.pa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.pb = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %.sroa.232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.333.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.pe = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.07.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.07.i.sroa.4.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.i.sroa.4, i64 16
  %.sroa.0.i.sroa.5.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.5, i64 16
  %.sroa.42076.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ah, i64 400 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.0..sroa_idx9.i1444 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.7.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.812.sroa.4.0..sroa.812.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.812.sroa.5.0..sroa.812.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.sroa.812.sroa.7.0..sroa.812.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.pk = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.pl = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.82057.0..sroa_idx2059 = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.pm = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %.sroa.82057.0..sroa_idx2060 = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.sroa.62064.0..sroa_idx2066 = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.sroa.62064.0..sroa_idx2065 = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ah, i64 408 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ah, i64 416 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ol, i64 8 ; 16 uses
  %.sroa.4.0..sroa_idx.i1343 = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.sroa.5.0..sroa_idx.i1347 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.px = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.py = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ek, i64 400
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.qb = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.4.0..sroa_idx.i.i1314 = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.5.0..sroa_idx.i.i1315 = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ek, i64 408 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ek, i64 416 ; 2 uses
  %.sroa.11.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %.sroa.15.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %.sroa.161548.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 13
  %.sroa.51554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %.sroa.61555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mz, i64 12
  %.sroa.81556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mz, i64 13
  %i.qf = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.qi = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.mx, i64 12
  %i.qk = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  %.sroa.51957.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %.sroa.41956.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %.sroa.41960.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %.sroa.51961.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %.sroa.0321.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %.sroa.0321.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %.sroa.4322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %.sroa.6324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nu, i64 40
  %i.qm = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.no, i64 12
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ol, i64 12 ; 9 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.qq = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.qr = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.qt = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %.sroa.4308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %.sroa.5309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %.sroa.6310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  %i.qw = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.qx = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.qy = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.qz = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.rb = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %.sroa.4301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %.sroa.5302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %.sroa.6303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.rc = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %.sroa.4305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %.sroa.5306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  %i.rd = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.re = getelementptr inbounds nuw i8, ptr %i.fx, i64 4 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.ri = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.rj = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.rk = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.rl = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.rm = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.rn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.rp = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.rq = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ap, i64 72 ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i1273 = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.6.0..sroa_idx.i1274 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.7.0..sroa_idx.i1275 = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.sroa.4.0..sroa_idx.i1276 = getelementptr inbounds nuw i8, ptr %i.ap, i64 216
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ap, i64 88 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ao, i64 72 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i1282 = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.6.0..sroa_idx.i1283 = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.7.0..sroa_idx.i1284 = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %.sroa.4.0..sroa_idx.i1285 = getelementptr inbounds nuw i8, ptr %i.ao, i64 216
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ao, i64 88 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.sc = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.sd = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.se = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.sf = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.sg = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.sh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.si = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.sj = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.sk = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.sl = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  %i.sm = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.sn = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.so = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.sp = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.sq = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.sr = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.ss = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.st = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.su = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.sv = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.sw = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ei, i64 400
  %i.td = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.te = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.tf = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.4.0..sroa_idx.i.i1240 = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.5.0..sroa_idx.i.i1241 = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ei, i64 408 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.ei, i64 416 ; 2 uses
  %.sroa.111566.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %.sroa.151569.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %.sroa.161572.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 13
  %.sroa.51578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %.sroa.61579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  %.sroa.81580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 13
  %i.ti = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %i.tl = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.tm = getelementptr inbounds nuw i8, ptr %i.mk, i64 12
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.to = getelementptr inbounds nuw i8, ptr %i.ms, i64 12
  %i.tp = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.tq = getelementptr inbounds nuw i8, ptr %i.nk, i64 12
  %i.tr = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %i.ts = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.tt = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  %i.tu = getelementptr inbounds nuw i8, ptr %i.jp, i64 40
  %i.tv = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.tw = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.tx = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.ty = getelementptr inbounds nuw i8, ptr %i.jt, i64 4 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 8 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.ue = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 4 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ki, i64 16 ; 4 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ki, i64 24 ; 4 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.uj = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.uk = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ke, i64 4 ; 5 uses
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 4 ; 2 uses
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 12 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.uo = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.up = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.ur = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.us = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.ut = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.uu = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.uv = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ux = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.uy = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  %i.uz = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.va = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.vb = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.vc = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.vd = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.ve = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.vf = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.vg = getelementptr inbounds nuw i8, ptr %i.la, i64 32
  %i.vh = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.vi = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.vj = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.vk = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  %i.vl = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.vm = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.vn = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.vo = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  %i.vp = getelementptr inbounds nuw i8, ptr %i.iz, i64 29
  %i.vq = getelementptr inbounds nuw i8, ptr %i.iz, i64 12 ; 2 uses
  %.sroa.61721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %.sroa.61726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %.sroa.71731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iz, i64 25 ; 2 uses
  %.sroa.61721.0..sroa_idx1724 = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %.sroa.61726.0..sroa_idx1729 = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  %.sroa.71731.0..sroa_idx1733 = getelementptr inbounds nuw i8, ptr %i.iy, i64 13
  %.sroa.7.0..sroa_idx2085 = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %.sroa.61721.0..sroa_idx1722 = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 2 uses
  %.sroa.61726.0..sroa_idx1727 = getelementptr inbounds nuw i8, ptr %i.ja, i64 12
  %.sroa.71731.0..sroa_idx1732 = getelementptr inbounds nuw i8, ptr %i.ja, i64 13
  %.sroa.7.0..sroa_idx2084 = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.it, i64 4 ; 6 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.vs = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %.sroa.4.0..sroa_idx.i977 = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %.sroa.5.0..sroa_idx.i979 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.vt = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.vu = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %.sroa.42019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.vv = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.vx = getelementptr inbounds nuw i8, ptr %i.je, i64 72
  %i.vy = getelementptr inbounds nuw i8, ptr %i.je, i64 80
  %.sroa.41991.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.vz = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.wa = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 5 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %.sroa.523.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %.sroa.523.sroa.4.0..sroa.523.0..sroa_idx24.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %.sroa.42021.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.we = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.wf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.val537 = load ptr, ptr %i.wf, align 8, !nonnull !45 ; 11 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.val538 = load i64, ptr %i.wg, align 8         ; 2 uses
  %.idx = mul nuw nsw i64 %.val538, 72
  %i.wh = getelementptr inbounds nuw i8, ptr %.val537, i64 %.idx ; 10 uses
  %i.wi = icmp eq i64 %.val538, 0                 ; 10 uses
  %.sroa.6.0..sroa_idx.i1017 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %.sroa.62023.sroa.6.0..sroa.6.0..sroa_idx.i1017.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 6
  %.sroa.51865.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %.sroa.71867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %.sroa.81868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %.sroa.41964.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %.sroa.61625.0..sroa_idx1626 = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %.sroa.6.0..sroa_idx.i.i1077 = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %.sroa.61629.0..sroa_idx1630 = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %.sroa.61629.sroa.6.0..sroa.61629.0..sroa_idx1630.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 6
  %.sroa.6.0..sroa_idx.i.i1095 = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %.sroa.61629.sroa.6.0..sroa.6.0..sroa_idx.i.i1095.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 6
  %.sroa.51632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %.sroa.71634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.81635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %.sroa.6.0..sroa_idx.i.i1113 = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %.sroa.71634.4..sroa.6.0..sroa_idx.i.i1113.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.81635.4..sroa.6.0..sroa_idx.i.i1113.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %.sroa.61638.0..sroa_idx1639 = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %.sroa.61638.sroa.6.0..sroa.61638.0..sroa_idx1639.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.61638.sroa.7.0..sroa.61638.0..sroa_idx1639.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %.sroa.6.0..sroa_idx.i.i1131 = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %.sroa.61638.sroa.6.0..sroa.6.0..sroa_idx.i.i1131.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.61638.sroa.7.0..sroa.6.0..sroa_idx.i.i1131.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %.sroa.61642.0..sroa_idx1643 = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %.sroa.6.0..sroa_idx.i.i1149 = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %.sroa.6.0..sroa_idx.i.i1167 = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %.sroa.71647.0..sroa_idx1648 = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %.sroa.71647.0..sroa_idx1649 = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %.sroa.41966.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %.sroa.41989.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.wj = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %.sroa.4.0..sroa_idx.i.i1212 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.5.0..sroa_idx.i.i1213 = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.wk = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.wl = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.wm = getelementptr inbounds nuw i8, ptr %i.bw, i64 52
  %i.wn = getelementptr inbounds nuw i8, ptr %i.bw, i64 53
  %i.wo = getelementptr inbounds nuw i8, ptr %i.bw, i64 54
  %i.wp = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %.sroa.4.0..sroa_idx.i44.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.5.0..sroa_idx.i45.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.wq = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.wr = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.ws = getelementptr inbounds nuw i8, ptr %i.bv, i64 52
  %i.wt = getelementptr inbounds nuw i8, ptr %i.bv, i64 53
  %i.wu = getelementptr inbounds nuw i8, ptr %i.bv, i64 54
  %i.wv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 3 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.bu, i64 400
  %i.wx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.sroa.480.0..sroa_idx.i1216 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.581.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.wy = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ax, i64 56 ; 5 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.xb = getelementptr inbounds nuw i8, ptr %i.bu, i64 408 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.bu, i64 416 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread, %bb.a
  %.sroa.13.0 = phi i64 [ undef, %bb.a ], [ %.sroa.13.1.lcssa, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread ] ; 2 uses
  %.sroa.8.0 = phi ptr [ null, %bb.a ], [ %i.xq, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread ] ; 3 uses
  %.sroa.01487.0 = phi ptr [ %.sink9.i.i, %bb.a ], [ %.sroa.01487.1.lcssa, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread ] ; 2 uses
  %i.xd = inttoptr i64 %.sroa.13.0 to ptr
  %.not.i.i2575 = icmp eq ptr %.sroa.8.0, null
  %i.xe = icmp eq ptr %.sroa.8.0, %i.xd
  %or.cond24092576 = select i1 %.not.i.i2575, i1 true, i1 %i.xe
  br i1 %or.cond24092576, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1R_B1P_12callable_mutEQNtB1R_15CallableBindingNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1X_.exit.thread.i, label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_13callables_mutEIB1c_IB1s_NtB1W_12CallableItemENvMs0_B1W_B3L_12callable_mutEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1R_B1P_12callable_mutEQNtB1R_15CallableBindingNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1X_.exit.thread.i: ; preds = %bb.b, %bb.c
  %.sroa.01487.12577 = phi ptr [ %i.xg, %bb.c ], [ %.sroa.01487.0, %bb.b ] ; 4 uses
  %i.xf = icmp eq ptr %.sroa.01487.12577, %i.ot
  br i1 %i.xf, label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_13callables_mutEIB1c_IB1s_NtB1W_12CallableItemENvMs0_B1W_B3L_12callable_mutEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1R_B1P_12callable_mutEQNtB1R_15CallableBindingNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1X_.exit.thread.i
  %i.xg = getelementptr inbounds nuw i8, ptr %.sroa.01487.12577, i64 384 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.sroa.01487.12577, i64 16 ; 2 uses
  %i.xi = load i64, ptr %i.xh, align 8, !alias.scope !16104, !noalias !16105, !noundef !45
  %i.xj = icmp ugt i64 %i.xi, 1                   ; 2 uses
  %.sink8.idx.i.i.i.i.i.i = select i1 %i.xj, i64 16, i64 0
  %.sink8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xh, i64 %.sink8.idx.i.i.i.i.i.i
  %i.xk = load i64, ptr %.sink8.i.i.i.i.i.i, align 8, !alias.scope !16106, !noalias !16105, !noundef !45 ; 2 uses
  %i.xl = icmp eq i64 %i.xk, 0
  br i1 %i.xl, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1R_B1P_12callable_mutEQNtB1R_15CallableBindingNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1X_.exit.thread.i, label %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_13callables_mutEIB1c_IB1s_NtB1W_12CallableItemENvMs0_B1W_B3L_12callable_mutEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit_crit_edge

._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_13callables_mutEIB1c_IB1s_NtB1W_12CallableItemENvMs0_B1W_B3L_12callable_mutEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit_crit_edge: ; preds = %bb.c
  %i.xm = getelementptr inbounds nuw i8, ptr %.sroa.01487.12577, i64 24 ; 2 uses
  %i.xn = load ptr, ptr %i.xm, align 8, !alias.scope !16104, !noalias !16105, !nonnull !45
  %.sink9.i.i.i.i.i.i = select i1 %i.xj, ptr %i.xn, ptr %i.xm ; 2 uses
  %.idx2592.a = mul nuw nsw i64 %i.xk, 360
  %i.xo = getelementptr inbounds nuw i8, ptr %.sink9.i.i.i.i.i.i, i64 %.idx2592.a
  %i.xp = ptrtoint ptr %i.xo to i64
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_13callables_mutEIB1c_IB1s_NtB1W_12CallableItemENvMs0_B1W_B3L_12callable_mutEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit

_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_13callables_mutEIB1c_IB1s_NtB1W_12CallableItemENvMs0_B1W_B3L_12callable_mutEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit: ; preds = %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_13callables_mutEIB1c_IB1s_NtB1W_12CallableItemENvMs0_B1W_B3L_12callable_mutEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit_crit_edge, %bb.b
  %.sroa.13.1.lcssa = phi i64 [ %i.xp, %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_13callables_mutEIB1c_IB1s_NtB1W_12CallableItemENvMs0_B1W_B3L_12callable_mutEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit_crit_edge ], [ %.sroa.13.0, %bb.b ]
  %.sroa.01487.1.lcssa = phi ptr [ %i.xg, %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_13callables_mutEIB1c_IB1s_NtB1W_12CallableItemENvMs0_B1W_B3L_12callable_mutEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit_crit_edge ], [ %.sroa.01487.0, %bb.b ]
  %.lcssa = phi ptr [ %.sink9.i.i.i.i.i.i, %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_13callables_mutEIB1c_IB1s_NtB1W_12CallableItemENvMs0_B1W_B3L_12callable_mutEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit_crit_edge ], [ %.sroa.8.0, %bb.b ] ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.lcssa, i64 360
  %i.xr = load i64, ptr %.lcssa, align 8, !range !48, !alias.scope !16107, !noalias !16108, !noundef !45
  %.not.i.i.i.i.i.i = icmp eq i64 %i.xr, 2
  %.sroa.0.0.idx.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 8, i64 0
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.sroa.0.0.idx.i.i.i.i.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ol)
  %i.xs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ol, ptr noundef nonnull align 8 dereferenceable(16) %i.xs, i64 16, i1 false)
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings20evaluate_known_cases:bb.a
  %.sroa.013.0.copyload.i.i68.i = phi i32 [ %.sroa.01.0.copyload.i.i.i.i62.i, %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind13enum_propertyNtB8_8Bindings28evaluate_enum_property_callss_00Be_.exit.thread2.i.i.i64.i ], [ %.pr.i.i.i72.i, %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind13enum_propertyNtB8_8Bindings28evaluate_enum_property_callss_00Be_.exit.i.i.i71.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4106.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i.i66.i, i64 12, i1 false), !noalias !16115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !16168
  br label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind13enum_propertyNtB6_8Bindings28evaluate_enum_property_callss_0Bc_.exit76.i

_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind13enum_propertyNtB6_8Bindings28evaluate_enum_property_callss_0Bc_.exit76.i: ; preds = %.loopexit.i.i74.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENCNvMs_B1D_NtB1D_13CallArguments4iter0EIB1c_NtNtB1F_4bind15MatchedArgumentEENtNtNtB8_6traits8iterator8Iterator4nextB1J_.exit.i.i56.i, %.loopexit5.i67.i, %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind13enum_propertyNtB6_8Bindings28evaluate_enum_property_callss_0Bc_.exit45.i
  %storemerge.i52.i = phi i32 [ %.sroa.013.0.copyload.i.i68.i, %.loopexit5.i67.i ], [ -1, %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind13enum_propertyNtB6_8Bindings28evaluate_enum_property_callss_0Bc_.exit45.i ], [ -1, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENCNvMs_B1D_NtB1D_13CallArguments4iter0EIB1c_NtNtB1F_4bind15MatchedArgumentEENtNtNtB8_6traits8iterator8Iterator4nextB1J_.exit.i.i56.i ], [ -1, %.loopexit.i.i74.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !16161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !16175
  call void @llvm.experimental.noalias.scope.decl(metadata !16176)
  call void @llvm.experimental.noalias.scope.decl(metadata !16177)
  %.not.i.i77.i = icmp eq i32 %storemerge.i.i, -1
  br i1 %.not.i.i77.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind13enum_propertyNtB6_8Bindings28evaluate_enum_property_callss_0Bc_.exit76.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !16178
  store i32 %storemerge.i.i, ptr %i.dh, align 4, !noalias !16179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.688.0..sroa_idx89.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4102.i, i64 12, i1 false), !noalias !16115
  %i.aci = call noundef zeroext i1 @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type7is_none(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.dh, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !16180
  br i1 %i.aci, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind13enum_propertyNtB6_8Bindings28evaluate_enum_property_callss_0Bc_.exit76.i
  store i32 -1, ptr %i.dk, align 4, !alias.scope !16176, !noalias !16175
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNCNvMNtNtNtBK_4call4bind13enum_propertyNtB1L_8Bindings28evaluate_enum_property_calls00EBM_.exit.i.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !16178
  store i32 -1, ptr %i.dk, align 4, !alias.scope !16176, !noalias !16175
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNCNvMNtNtNtBK_4call4bind13enum_propertyNtB1L_8Bindings28evaluate_enum_property_calls00EBM_.exit.i.i

bb.w:                                             ; preds = %bb.t
  store i32 %storemerge.i.i, ptr %i.dk, align 4, !alias.scope !16181, !noalias !16182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.688.0..sroa_idx90.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4102.i, i64 12, i1 false), !noalias !16115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !16178
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNCNvMNtNtNtBK_4call4bind13enum_propertyNtB1L_8Bindings28evaluate_enum_property_calls00EBM_.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNCNvMNtNtNtBK_4call4bind13enum_propertyNtB1L_8Bindings28evaluate_enum_property_calls00EBM_.exit.i.i: ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !16175
  call void @llvm.experimental.noalias.scope.decl(metadata !16183)
  call void @llvm.experimental.noalias.scope.decl(metadata !16184)
  %.not.i1.i.i = icmp eq i32 %storemerge.i21.i, -1
  br i1 %.not.i1.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNCNvMNtNtNtBK_4call4bind13enum_propertyNtB1L_8Bindings28evaluate_enum_property_calls00EBM_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !16185
  store i32 %storemerge.i21.i, ptr %i.dg, align 4, !noalias !16186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.16..sroa_idx94.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4104.i, i64 12, i1 false), !noalias !16115
  %i.acj = call noundef zeroext i1 @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type7is_none(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.dg, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !16187
  br i1 %i.acj, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNCNvMNtNtNtBK_4call4bind13enum_propertyNtB1L_8Bindings28evaluate_enum_property_calls00EBM_.exit.i.i
  store i32 -1, ptr %i.dj, align 4, !alias.scope !16183, !noalias !16175
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNCNvMNtNtNtBK_4call4bind13enum_propertyNtB1L_8Bindings28evaluate_enum_property_calls0s_0EBM_.exit.i.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !16185
  store i32 -1, ptr %i.dj, align 4, !alias.scope !16183, !noalias !16175
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNCNvMNtNtNtBK_4call4bind13enum_propertyNtB1L_8Bindings28evaluate_enum_property_calls0s_0EBM_.exit.i.i

bb.aa:                                            ; preds = %bb.x
  store i32 %storemerge.i21.i, ptr %i.dj, align 4, !alias.scope !16188, !noalias !16189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.16..sroa_idx95.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4104.i, i64 12, i1 false), !noalias !16115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !16185
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNCNvMNtNtNtBK_4call4bind13enum_propertyNtB1L_8Bindings28evaluate_enum_property_calls0s_0EBM_.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNCNvMNtNtNtBK_4call4bind13enum_propertyNtB1L_8Bindings28evaluate_enum_property_calls0s_0EBM_.exit.i.i: ; preds = %bb.aa, %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !16175
  call void @llvm.experimental.noalias.scope.decl(metadata !16190)
  call void @llvm.experimental.noalias.scope.decl(metadata !16191)
  %.not.i2.i.i = icmp eq i32 %storemerge.i52.i, -1
  br i1 %.not.i2.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNCNvMNtNtNtBK_4call4bind13enum_propertyNtB1L_8Bindings28evaluate_enum_property_calls0s_0EBM_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !16192
  store i32 %storemerge.i52.i, ptr %i.df, align 4, !noalias !16193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.14.32..sroa_idx99.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4106.i, i64 12, i1 false), !noalias !16115
  %i.ack = call noundef zeroext i1 @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type7is_none(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.df, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !16194
  br i1 %i.ack, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNCNvMNtNtNtBK_4call4bind13enum_propertyNtB1L_8Bindings28evaluate_enum_property_calls0s_0EBM_.exit.i.i
  store i32 -1, ptr %i.di, align 4, !alias.scope !16190, !noalias !16175
  br label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind13enum_propertyNtB6_8Bindings28evaluate_enum_property_calls0Bc_.exit.i

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !16192
  store i32 -1, ptr %i.di, align 4, !alias.scope !16190, !noalias !16175
  br label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind13enum_propertyNtB6_8Bindings28evaluate_enum_property_calls0Bc_.exit.i

bb.ae:                                            ; preds = %bb.ab
  store i32 %storemerge.i52.i, ptr %i.di, align 4, !alias.scope !16195, !noalias !16196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.14.32..sroa_idx100.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4106.i, i64 12, i1 false), !noalias !16115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !16192
  br label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind13enum_propertyNtB6_8Bindings28evaluate_enum_property_calls0Bc_.exit.i

_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind13enum_propertyNtB6_8Bindings28evaluate_enum_property_calls0Bc_.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.acl = call { i32, i32 } @_RNvMsd_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_20PropertyInstanceType17new_enum_property(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.dk, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.dj, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.di), !noalias !16197 ; 2 uses
  %i.acm = extractvalue { i32, i32 } %i.acl, 0
  %i.acn = extractvalue { i32, i32 } %i.acl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !16175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !16175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !16175
  store i32 22, ptr %i.zg, align 8, !alias.scope !16198, !noalias !16112
  %.sroa.582.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.ph.i, i64 340
  store i32 %i.acm, ptr %.sroa.582.0..sroa_idx.i, align 4, !alias.scope !16198, !noalias !16112
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.ph.i, i64 344
  store i32 %i.acn, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !16198, !noalias !16112
  br label %.backedge.i

_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind13enum_propertyNtB4_8Bindings28evaluate_enum_property_calls.exit: ; preds = %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1K_B1I_9items_mutEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3Z_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1K_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowQNtNtB1K_11constructor18ConstructorBindingENCINvNvXsi_B3Z_B4c_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uB5p_NCINvNvB74_8find_map5checkQB53_B64_QNvMs0_B1K_B53_18as_constructor_mutE0E0E0B5p_EB1Q_.exit.thread.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !16115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !16115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4106.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4104.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4102.i)
  br label %bb.af

bb.af:                                            ; preds = %.loopexit2452, %_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind13enum_propertyNtB4_8Bindings28evaluate_enum_property_calls.exit
  ret void

.lr.ph.i:                                         ; preds = %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_13callables_mutEIB1c_IB1s_NtB1W_12CallableItemENvMs0_B1W_B3L_12callable_mutEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit, %.lr.ph.i.backedge
  %i.aco = phi ptr [ %i.acq, %.lr.ph.i.backedge ], [ %.sink9.i.i690, %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_13callables_mutEIB1c_IB1s_NtB1W_12CallableItemENvMs0_B1W_B3L_12callable_mutEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit ] ; 317 uses
  %i.acp = phi i64 [ %.be3330, %.lr.ph.i.backedge ], [ 0, %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_13callables_mutEIB1c_IB1s_NtB1W_12CallableItemENvMs0_B1W_B3L_12callable_mutEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit ] ; 4 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aco, i64 232 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16199)
  call void @llvm.experimental.noalias.scope.decl(metadata !16200)
  call void @llvm.experimental.noalias.scope.decl(metadata !16201)
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aco, i64 80
  %i.acs = load ptr, ptr %i.acr, align 8, !alias.scope !16202, !noalias !16203, !nonnull !45, !noundef !45 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.aco, i64 88
  %i.acu = load i64, ptr %i.act, align 8, !alias.scope !16202, !noalias !16203, !noundef !45 ; 2 uses
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %i.acu, 144
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acs, i64 %.idx.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.acu, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread2104, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i
  %i.acw = phi ptr [ %i.acy, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i ], [ %i.acs, %.lr.ph.i ] ; 2 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.acw, align 8, !range !68, !noalias !16204, !noundef !45
  %i.acx = call i64 @llvm.usub.sat.i64(i64 %.val.i.i.i.i.i.i.i, i64 1)
  switch i64 %i.acx, label %default.unreachable2915 [
    i64 0, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding22matching_overloads_mut0E0E0B2e_.exit.i
    i64 1, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding22matching_overloads_mut0E0E0B2e_.exit.i
    i64 2, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding22matching_overloads_mut0E0E0B2e_.exit.i
    i64 3, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding22matching_overloads_mut0E0E0B2e_.exit.i
    i64 4, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding22matching_overloads_mut0E0E0B2e_.exit.i
    i64 5, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding22matching_overloads_mut0E0E0B2e_.exit.i
    i64 6, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding22matching_overloads_mut0E0E0B2e_.exit.i
    i64 7, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding22matching_overloads_mut0E0E0B2e_.exit.i
    i64 8, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding22matching_overloads_mut0E0E0B2e_.exit.i
    i64 9, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i
    i64 10, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i
    i64 11, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i
    i64 12, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i
    i64 13, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i
    i64 14, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i
    i64 15, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding22matching_overloads_mut0E0E0B2e_.exit.i
    i64 16, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i
    i64 17, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i
    i64 18, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i
  ]

default.unreachable2915:                          ; preds = %bb.aj, %bb.ai, %.lr.ph.i.i.i.i.i.i.i
  unreachable

_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acw, i64 144 ; 2 uses
  %.not37.i.i.i.i.i.i.i = icmp eq ptr %i.acy, %i.acv
  br i1 %.not37.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread2104, label %.lr.ph.i.i.i.i.i.i.i

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding22matching_overloads_mut0E0E0B2e_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.acz = icmp eq ptr %i.acq, %i.xz
  br i1 %i.acz, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding22matching_overloads_mut0E0E0B2e_.exit.i, %.backedge
  %.be3330 = add i64 %i.acp, 1
  br label %.lr.ph.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread2104: ; preds = %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i, %.lr.ph.i
  %i.ada = getelementptr inbounds nuw i8, ptr %i.aco, i64 80 ; 12 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.aco, i64 88 ; 24 uses
  %i.adc = load i32, ptr %i.ol, align 4, !range !69, !noundef !45 ; 3 uses
  %i.add = icmp ne i32 %i.adc, 17
  call void @llvm.assume(i1 %i.add)
  %i.ade = add nsw i32 %i.adc, -4
  %i.adf = icmp samesign ugt i32 %i.adc, 3
  %narrow = select i1 %i.adf, i32 %i.ade, i32 13
  switch i32 %narrow, label %.backedge [
    i32 3, label %bb.ag
    i32 4, label %bb.ah
    i32 5, label %bb.ai
    i32 6, label %bb.aj
    i32 7, label %bb.ak
    i32 8, label %bb.al
    i32 11, label %bb.am
  ]

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread: ; preds = %.backedge, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding22matching_overloads_mut0E0E0B2e_.exit.i, %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_13callables_mutEIB1c_IB1s_NtB1W_12CallableItemENvMs0_B1W_B3L_12callable_mutEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ol)
  br label %bb.b

.backedge:                                        ; preds = %bb.acj, %bb.aez, %bb.afa, %bb.afb, %bb.afg, %bb.afk, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNvMs3_NtNtBK_4call4bindNtB1K_8Bindings20evaluate_known_casessT_0EBM_.exit, %bb.agg, %bb.agh, %bb.aey, %bb.aex, %bb.acf, %bb.acg, %bb.ach, %bb.aff, %bb.afe, %bb.afc, %bb.aci, %bb.am, %bb.afh, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters23positional_only_by_name.exit.thread, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE8push_mutBM_.exit982, %bb.fr, %bb.fh, %bb.fc, %bb.uu, %bb.vs, %bb.vy, %bb.xi, %bb.wu, %bb.wr, %bb.wq, %bb.rl, %bb.xo, %bb.xm, %bb.xj, %bb.rm, %bb.iy, %bb.ix, %bb.ft, %bb.fs, %bb.ce, %bb.bs, %bb.hs, %bb.hn, %bb.ca, %bb.lm, %bb.ll, %bb.wk, %bb.wi, %bb.rk, %bb.fu, %bb.iz, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread2104, %bb.ai, %bb.qa, %bb.qf, %bb.ql, %bb.rn, %bb.tz, %bb.ue, %bb.uj, %bb.up, %bb.ur, %bb.us, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar21TypeVarNonceGeneratorEBH_.exit1292, %bb.vv, %bb.wc, %bb.wp, %bb.xh, %bb.xx, %bb.xy, %bb.xz, %bb.ya, %bb.yb, %bb.yc, %bb.yd, %bb.yr, %bb.ys, %bb.yt, %bb.yw, %bb.zx, %bb.zy, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE8push_mutBM_.exit1309.a, %bb.aad, %bb.aae, %bb.aaf, %bb.aag, %bb.aai, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE8push_mutBM_.exit1310.a, %bb.aan, %bb.aao, %bb.aap, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE8push_mutBM_.exit1311, %bb.abj, %bb.ru, %bb.rv, %bb.rq, %bb.rr, %bb.rs, %bb.rz, %bb.ry, %bb.rx, %bb.rp, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE8push_mutBM_.exit1235.a, %bb.se, %bb.sd, %bb.sa, %bb.qy, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE8push_mutBM_.exit1236.a, %bb.sm, %bb.sk, %bb.sj, %bb.qz, %bb.tl, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE8push_mutBM_.exit1237, %bb.sr, %bb.ra, %bb.tv, %bb.tt, %bb.ts, %bb.tr, %bb.rb, %bb.yh, %bb.yi, %bb.yj, %bb.yl, %bb.ym, %bb.yq, %bb.yp, %bb.yo, %bb.yg, %bb.abx, %bb.abq, %bb.abp, %bb.ak, %bb.acb, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorE8push_mutBM_.exit1352, %bb.ace, %bb.acd, %bb.acc, %bb.al, %bb.bg, %bb.cj, %bb.bf, %bb.cf, %bb.ci, %bb.kw, %bb.iw, %bb.iv, %bb.iu, %bb.im, %bb.ht, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casessl_0Bd_.exit, %bb.hm, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7or_elseNCNvMs3_NtNtBK_4call4bindNtB1L_8Bindings20evaluate_known_casessw_0EBM_.exit.thread2189, %bb.cv, %bb.cu, %bb.cs, %bb.cr, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type16as_class_literal.exit.thread, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.ch, %bb.cd, %bb.cc, %bb.cb, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bj, %bb.bi, %bb.bh, %bb.io, %.loopexit2435, %bb.ky, %bb.zn, %bb.zl, %bb.zu, %bb.zr, %bb.zm, %bb.zg, %bb.zc, %bb.zb, %bb.tu
  %i.adg = icmp eq ptr %i.acq, %i.xz
  br i1 %i.adg, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread, label %.lr.ph.i.backedge

bb.ag:                                            ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread2104
  %i.adh = call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ol, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef %6)
  %i.adi = load i32, ptr %i.ou, align 4, !range !53, !noundef !45 ; 3 uses
  %i.adj = load i32, ptr %i.pv, align 4, !noundef !45 ; 3 uses
  br i1 %i.adh, label %bb.ao, label %bb.an

bb.ah:                                            ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread2104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mg)
  %i.adk = load i32, ptr %i.ou, align 4, !range !53, !noundef !45 ; 2 uses
  %i.adl = load i32, ptr %i.pv, align 4, !noundef !45 ; 2 uses
  call void @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method1__NtB8_15BoundMethodType13self_instanceDNtNtBc_2db2DbEL_EBc_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.mg, i32 noundef %i.adk, i32 noundef %i.adl, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  %i.adm = load i32, ptr %i.mg, align 4, !range !69, !noundef !45 ; 2 uses
  %i.adn = icmp ne i32 %i.adm, 17
  call void @llvm.assume(i1 %i.adn)
  %i.ado = icmp eq i32 %i.adm, 22
  br i1 %i.ado, label %bb.qe, label %bb.qf

bb.ai:                                            ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread2104
  %i.adp = load i32, ptr %i.ou, align 4, !range !95, !noundef !45
  switch i32 %i.adp, label %default.unreachable2915 [
    i32 0, label %bb.qx
    i32 2, label %bb.qy
    i32 3, label %bb.qz
    i32 4, label %bb.ra
    i32 5, label %bb.rb
    i32 6, label %bb.rc
    i32 7, label %bb.rd
    i32 8, label %bb.re
    i32 9, label %bb.rf
    i32 10, label %bb.rg
    i32 11, label %bb.rh
    i32 12, label %bb.ri
    i32 13, label %bb.rj
    i32 14, label %bb.vw
    i32 15, label %bb.vw
    i32 16, label %bb.rk
    i32 17, label %bb.rl
    i32 18, label %bb.rm
    i32 19, label %bb.rn
    i32 1, label %.backedge
  ]

bb.aj:                                            ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread2104
  %i.adq = load i8, ptr %i.ou, align 4, !range !96, !noundef !45
  %i.adr = getelementptr i8, ptr %i.aco, i64 160  ; 3 uses
  %.val566 = load ptr, ptr %i.adr, align 8, !nonnull !45, !noundef !45 ; 32 uses
  %i.ads = getelementptr i8, ptr %i.aco, i64 168  ; 3 uses
  %.val567 = load i64, ptr %i.ads, align 8, !noundef !45 ; 4 uses
  switch i8 %i.adq, label %default.unreachable2915 [
    i8 0, label %bb.xy
    i8 1, label %bb.xz
    i8 2, label %bb.ya
    i8 3, label %bb.yb
  ]

bb.ak:                                            ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread2104
  %i.adt = load i32, ptr %i.ou, align 4, !range !53, !noundef !45 ; 2 uses
  %i.adu = load i32, ptr %i.pv, align 4, !noundef !45 ; 2 uses
  %i.adv = getelementptr i8, ptr %i.aco, i64 160
  %.val652 = load ptr, ptr %i.adv, align 8, !nonnull !45, !noundef !45 ; 4 uses
  %i.adw = getelementptr i8, ptr %i.aco, i64 168
  %.val653 = load i64, ptr %i.adw, align 8, !noundef !45
  %i.adx = icmp eq i64 %.val653, 1
  br i1 %i.adx, label %bb.abp, label %.backedge

bb.al:                                            ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread2104
  %i.ady = load i32, ptr %i.ou, align 4, !range !53, !noundef !45
  %i.adz = load i32, ptr %i.pv, align 4, !noundef !45
  %i.aea = getelementptr i8, ptr %i.aco, i64 160
  %.val650 = load ptr, ptr %i.aea, align 8, !nonnull !45, !noundef !45 ; 3 uses
  %i.aeb = getelementptr i8, ptr %i.aco, i64 168
  %.val651 = load i64, ptr %i.aeb, align 8, !noundef !45
  %i.aec = icmp eq i64 %.val651, 1
  br i1 %i.aec, label %bb.acc, label %.backedge

bb.am:                                            ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1W_8adapters9enumerateINtB2P_9EnumeratepEB1Q_8try_fold9enumerateQBM_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3W_EENCINvNvB1Q_4find5checkB4G_QNCNvMs7_BO_NtBO_15CallableBinding22matching_overloads_mut0E0E0B41_EBU_.exit.thread2104
  %i.aed = call noundef i8 @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral5known(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.ou, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  switch i8 %i.aed, label %.backedge [
    i8 94, label %bb.ack
    i8 0, label %bb.acf
    i8 5, label %bb.acg
    i8 9, label %bb.ach
    i8 11, label %bb.aci
    i8 17, label %bb.acj
  ]

bb.an:                                            ; preds = %bb.ag
  %i.aee = call noundef i8 @_RNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB6_12FunctionType5known(i32 noundef %i.adi, i32 noundef %i.adj, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) ; 2 uses
  switch i8 %i.aee, label %bb.be [
    i8 45, label %bb.ce
    i8 4, label %bb.bf
    i8 5, label %bb.bg
    i8 15, label %bb.bh
    i8 18, label %bb.bi
    i8 19, label %bb.bj
    i8 21, label %bb.bk
    i8 23, label %bb.bp
    i8 28, label %bb.bs
    i8 30, label %bb.bt
    i8 31, label %bb.bu
    i8 32, label %bb.bv
    i8 33, label %bb.bw
    i8 34, label %bb.bx
    i8 35, label %bb.by
    i8 36, label %bb.bz
    i8 37, label %bb.ca
    i8 38, label %bb.ca
    i8 39, label %bb.cb
    i8 40, label %bb.cc
    i8 41, label %bb.cd
  ]

bb.ao:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61614)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.82036)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aco) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16205)
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aco, i64 40 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16206), !noalias !16207
  %i.aeg = load ptr, ptr %i.aef, align 8, !alias.scope !16208, !noalias !16207, !nonnull !45, !noundef !45 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16
  %i.aei = load ptr, ptr %i.aeh, align 8, !noalias !16209, !nonnull !45, !noundef !45 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aeg, i64 24
  %i.aek = load i64, ptr %i.aej, align 8, !noalias !16209, !noundef !45 ; 2 uses
  %.idx.i.i1367 = mul nuw nsw i64 %i.aek, 72
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aei, i64 %.idx.i.i1367
  %i.aem = icmp eq i64 %i.aek, 0
  br i1 %i.aem, label %_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding22parameter_type_by_name.exit1382.thread, label %.lr.ph.i.i.i1368

.lr.ph.i.i.i1368:                                 ; preds = %bb.ao, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameteruINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3R_NCNvMs7_B28_NtB28_10Parameters15keyword_by_name0E0E0B2c_.exit.i.i.i1371
  %i.aen = phi i64 [ %i.afl, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameteruINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3R_NCNvMs7_B28_NtB28_10Parameters15keyword_by_name0E0E0B2c_.exit.i.i.i1371 ], [ 0, %bb.ao ] ; 4 uses
  %i.aeo = phi ptr [ %i.aep, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameteruINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3R_NCNvMs7_B28_NtB28_10Parameters15keyword_by_name0E0E0B2c_.exit.i.i.i1371 ], [ %i.aei, %bb.ao ] ; 5 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 72 ; 2 uses
  %i.aeq = load i64, ptr %i.aeo, align 8, !range !66, !alias.scope !16210, !noalias !16211, !noundef !45
  switch i64 %i.aeq, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameteruINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3R_NCNvMs7_B28_NtB28_10Parameters15keyword_by_name0E0E0B2c_.exit.i.i.i1371 [
    i64 1, label %bb.ap
    i64 3, label %bb.ap
  ]

bb.ap:                                            ; preds = %.lr.ph.i.i.i1368, %.lr.ph.i.i.i1368
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeo, i64 23
  %i.aes = load i8, ptr %i.aer, align 1, !range !57, !alias.scope !16212, !noalias !16211, !noundef !45 ; 3 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aeo, i64 16
  %i.aeu = load i64, ptr %i.aet, align 8, !alias.scope !16212, !noalias !16211, !noundef !45
  %i.aev = and i64 %i.aeu, 72057594037927935
  %i.aew = icmp ult i8 %i.aes, -48
  %i.aex = zext i8 %i.aes to i64
  %i.aey = add nsw i64 %i.aex, -192
  %spec.store.select.i.i.i.i.i.i.i.i1369 = call i64 @llvm.umin.i64(i64 %i.aey, i64 16)
  %.sroa.0.0.i.i.i.i.i.i.i.i1370 = select i1 %i.aew, i64 %spec.store.select.i.i.i.i.i.i.i.i1369, i64 %i.aev
  %i.aez = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i1370, 7
  br i1 %i.aez, label %_RNCNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB7_10Parameters15keyword_by_name0Bb_.exit.i.i.i.i.i1373, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameteruINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3R_NCNvMs7_B28_NtB28_10Parameters15keyword_by_name0E0E0B2c_.exit.i.i.i1371

_RNCNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB7_10Parameters15keyword_by_name0Bb_.exit.i.i.i.i.i1373: ; preds = %bb.ap
  %i.afa = icmp ugt i8 %i.aes, -49
  %.sroa.01.0.i.i.i.i.i.i.i1374 = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8 ; 2 uses
  %i.afb = load ptr, ptr %.sroa.01.0.i.i.i.i.i.i.i1374, align 8, !alias.scope !16212, !noalias !16211
  %.sroa.01.0.i.i.i.i.i.i.i.i1375 = select i1 %i.afa, ptr %i.afb, ptr %.sroa.01.0.i.i.i.i.i.i.i1374 ; 2 uses
  %i.afc = load i32, ptr %.sroa.01.0.i.i.i.i.i.i.i.i1375, align 1
  %i.afd = xor i32 %i.afc, 1634100580
  %i.afe = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i.i.i1375, i64 3
  %i.aff = load i32, ptr %i.afe, align 1
  %i.afg = xor i32 %i.aff, 1953264993
  %i.afh = or i32 %i.afd, %i.afg
  %i.afi = icmp ne i32 %i.afh, 0
  %i.afj = zext i1 %i.afi to i32
  %bcmp.i.i.fr.i.i.i.i.i1377 = freeze i32 %i.afj
  %i.afk = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i1377, 0
  br i1 %i.afk, label %bb.aq, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameteruINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3R_NCNvMs7_B28_NtB28_10Parameters15keyword_by_name0E0E0B2c_.exit.i.i.i1371

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameteruINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3R_NCNvMs7_B28_NtB28_10Parameters15keyword_by_name0E0E0B2c_.exit.i.i.i1371: ; preds = %_RNCNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB7_10Parameters15keyword_by_name0Bb_.exit.i.i.i.i.i1373, %bb.ap, %.lr.ph.i.i.i1368
  %i.afl = add nuw nsw i64 %i.aen, 1
  %i.afm = icmp eq ptr %i.aep, %i.ael
  br i1 %i.afm, label %_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding22parameter_type_by_name.exit1382.thread, label %.lr.ph.i.i.i1368

bb.aq:                                            ; preds = %_RNCNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB7_10Parameters15keyword_by_name0Bb_.exit.i.i.i.i.i1373
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aco, i64 168
  %i.afo = load i64, ptr %i.afn, align 8, !alias.scope !16205, !noalias !16207, !noundef !45 ; 2 uses
  %i.afp = icmp ult i64 %i.aen, %i.afo
  br i1 %i.afp, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.afq = getelementptr inbounds nuw i8, ptr %i.aco, i64 160
  %i.afr = load ptr, ptr %i.afq, align 8, !alias.scope !16205, !noalias !16207, !nonnull !45, !noundef !45
  %i.afs = getelementptr inbounds nuw [16 x i8], ptr %i.afr, i64 %i.aen ; 2 uses
  %.sroa.07.0.copyload.i1378 = load i32, ptr %i.afs, align 4, !noalias !16213 ; 3 uses
  %.not21.i1379 = icmp eq i32 %.sroa.07.0.copyload.i1378, -1
  br i1 %.not21.i1379, label %_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding22parameter_type_by_name.exit1382.thread2107, label %_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding22parameter_type_by_name.exit1382

bb.as:                                            ; preds = %bb.aq
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aen, i64 noundef %i.afo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #64, !noalias !16213
  unreachable

_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding22parameter_type_by_name.exit1382: ; preds = %bb.ar
  %.sroa.5.0..sroa_idx.i1380 = getelementptr inbounds nuw i8, ptr %i.afs, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.82036, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i1380, i64 12, i1 false), !noalias !16214
  %i.aft = icmp eq i32 %.sroa.07.0.copyload.i1378, -2
end_hunk_1
begin_hunk_2_@_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings20evaluate_known_cases:bb.a
  br i1 %.not479, label %.backedge, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ka)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ka, ptr noundef nonnull align 4 dereferenceable(16) %.val620, i64 16, i1 false)
  call void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB4_4Type22try_upcast_to_callable(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.kb, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.ka, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ka)
  %i.bhl = load i64, ptr %i.kb, align 8, !range !55, !noundef !45
  %i.bhm = trunc nuw i64 %i.bhl to i1
  br i1 %i.bhm, label %bb.hp, label %bb.hs

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %i.ue, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  %i.bhn = icmp eq i8 %i.aee, 38
  br i1 %i.bhn, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  call void @_RINvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB6_13CallableTypes3mapNCNCNvMs3_NtNtB8_4call4bindNtB1u_8Bindings20evaluate_known_casessl_00EBa_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ee, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ed, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !16357
  br label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casessl_0Bd_.exit

bb.hr:                                            ; preds = %bb.hp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %i.ue, i64 24, i1 false)
  br label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casessl_0Bd_.exit

_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casessl_0Bd_.exit: ; preds = %bb.hq, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jz)
  call void @_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB5_13CallableTypes9into_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.jz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.kc, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  %i.bho = getelementptr inbounds nuw i8, ptr %i.aco, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bho, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.jz, i64 16, i1 false), !alias.scope !16358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kc)
  br label %.backedge

bb.hs:                                            ; preds = %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kb)
  br label %.backedge

bb.ht:                                            ; preds = %bb.cb
  %i.bhp = load i32, ptr %.val618, align 4, !range !59, !noundef !45 ; 3 uses
  %.not475 = icmp eq i32 %i.bhp, -1
  br i1 %.not475, label %.backedge, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jy)
  %i.bhq = icmp ne i32 %i.bhp, 17
  call void @llvm.assume(i1 %i.bhq)
  %i.bhr = icmp eq i32 %i.bhp, 14
  br i1 %i.bhr, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jx)
  %i.bhs = getelementptr inbounds nuw i8, ptr %.val618, i64 4
  %i.bht = load i32, ptr %i.bhs, align 4, !range !53, !noundef !45
  %i.bhu = getelementptr inbounds nuw i8, ptr %.val618, i64 8
  %i.bhv = load i32, ptr %i.bhu, align 4, !noundef !45
  call void @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typessh_1__NtB8_17ModuleLiteralType6moduleDNtNtBa_2db2DbEL_EBa_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.jx, i32 noundef %i.bht, i32 noundef %i.bhv, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  %i.bhw = call { i32, i32 } @_RNvMsb_NtCsfDzkztWVnn_18ty_module_resolver6moduleNtB5_6Module4file(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.jx, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %2) ; 2 uses
  %i.bhx = extractvalue { i32, i32 } %i.bhw, 0    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jx)
  %.not477 = icmp eq i32 %i.bhx, 0
  br i1 %.not477, label %bb.id, label %bb.hx

bb.hw:                                            ; preds = %bb.hu
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type4none(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.jy, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  br label %bb.im

bb.hx:                                            ; preds = %bb.hv
  %i.bhy = extractvalue { i32, i32 } %i.bhw, 1
  %.sroa.03.0.copyload.i.i = load i32, ptr %3, align 4, !noalias !16359
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !16359 ; 4 uses
  %.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !16359 ; 4 uses
  switch i32 %.sroa.03.0.copyload.i.i, label %bb.hy [
    i32 0, label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casessm_0Bd_.exit
    i32 1, label %bb.hz
    i32 2, label %bb.ia
    i32 3, label %bb.ib
  ], !prof !107

bb.hy:                                            ; preds = %bb.hx
  unreachable

bb.hz:                                            ; preds = %bb.hx
  %i.bhz = call { i32, i32 } @_RINvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB8_11ProgramFile7programDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1q_(i32 noundef %.sroa.5.0.copyload.i.i, i32 noundef %.sroa.9.0.copyload.i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !16360
  br label %bb.ic

bb.ia:                                            ; preds = %bb.hx
  %i.bia = call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition7program(i32 noundef %.sroa.5.0.copyload.i.i, i32 noundef %.sroa.9.0.copyload.i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !16360
  br label %bb.ic

bb.ib:                                            ; preds = %bb.hx
  %i.bib = call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId7program(i32 noundef %.sroa.5.0.copyload.i.i, i32 noundef %.sroa.9.0.copyload.i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !16360
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia, %bb.hz
  %.pn.i.i = phi { i32, i32 } [ %i.bhz, %bb.hz ], [ %i.bia, %bb.ia ], [ %i.bib, %bb.ib ] ; 2 uses
  %.sroa.0.1.i.i = extractvalue { i32, i32 } %.pn.i.i, 0 ; 2 uses
  %.sroa.6.1.i.i = extractvalue { i32, i32 } %.pn.i.i, 1 ; 2 uses
  store i32 0, ptr %3, align 4, !noalias !16359
  store i32 %.sroa.0.1.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !16359
  store i32 %.sroa.6.1.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !16359
  br label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casessm_0Bd_.exit

_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casessm_0Bd_.exit: ; preds = %bb.hx, %bb.ic
  %.pre-phi2.i = phi i32 [ %.sroa.6.1.i.i, %bb.ic ], [ %.sroa.9.0.copyload.i.i, %bb.hx ]
  %.pre-phi.i = phi i32 [ %.sroa.0.1.i.i, %bb.ic ], [ %.sroa.5.0.copyload.i.i, %bb.hx ]
  %i.bic = call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core12program_fileNtB4_11ProgramFile3new(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %2, i32 noundef range(i32 1, 0) %i.bhx, i32 noundef %i.bhy, i32 noundef %.pre-phi.i, i32 noundef %.pre-phi2.i), !noalias !16360 ; 2 uses
  %i.bid = extractvalue { i32, i32 } %i.bic, 0
  %i.bie = extractvalue { i32, i32 } %i.bic, 1
  %i.bif = call noundef align 8 ptr @_RNvNtCsoTR8nlGN3X_18ty_python_semantic10dunder_all16dunder_all_names(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef range(i32 1, 0) %i.bid, i32 noundef %i.bie) ; 2 uses
  %.not478 = icmp eq ptr %i.bif, null
  br i1 %.not478, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.hv, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casessm_0Bd_.exit
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type4none(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.jy, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  br label %bb.im

bb.ie:                                            ; preds = %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casessm_0Bd_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jv)
  call void @_RNvMs0_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE4keysCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.jv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bif)
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterB11_EE9from_iterCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.jw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.jv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jv)
  %i.big = load ptr, ptr %i.tz, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %i.bih = load i64, ptr %i.ua, align 8, !noundef !45 ; 4 uses
  %i.bii = icmp samesign ult i64 %i.bih, 2
  br i1 %i.bii, label %_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.if, !prof !60

bb.if:                                            ; preds = %bb.ie
  %i.bij = icmp samesign ult i64 %i.bih, 21
  br i1 %i.bij, label %bb.ih, label %bb.ig, !prof !60

bb.ig:                                            ; preds = %bb.if
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCscdodAO9FK5_5alloc3vec3VecBZ_EECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %i.big, i64 noundef range(i64 0, 1152921504606846976) %i.bih, ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.ii

bb.ih:                                            ; preds = %bb.if
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNvYB1m_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %i.big, i64 noundef range(i64 0, 1152921504606846976) %i.bih, i64 noundef 1, ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig, %_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.bik = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %i.jw) #62
          to label %common.resume unwind label %bb.in

_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.ie, %bb.ig, %bb.ih
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ju)
  %i.bil = load ptr, ptr %i.tz, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %i.bim = load i64, ptr %i.ua, align 8, !noundef !45
  %i.bin = getelementptr inbounds nuw [8 x i8], ptr %i.bil, i64 %i.bim
  store ptr %i.bil, ptr %i.ju, align 8
  store ptr %i.bin, ptr %i.ub, align 8
  store ptr %1, ptr %i.uc, align 8
  store ptr %2, ptr %i.ud, align 8
  invoke void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_4Type19heterogeneous_tupleINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENCNvMs3_NtNtB5_4call4bindNtB3w_8Bindings20evaluate_known_casesso_0EBT_EB7_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.jy, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ju)
          to label %bb.ij unwind label %bb.ii

bb.ij:                                            ; preds = %_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ju)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.bio = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jw)
          to label %common.resume unwind label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.bip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.ij
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jw)
  br label %bb.im

bb.im:                                            ; preds = %bb.id, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.hw
  %i.biq = getelementptr inbounds nuw i8, ptr %i.aco, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.biq, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.jy, i64 16, i1 false), !alias.scope !16361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jy)
  br label %.backedge

bb.in:                                            ; preds = %bb.vd, %bb.afl, %.body1325, %bb.xp, %bb.wz, %bb.wl, %.body1251, %bb.ii
  %i.bir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63
  unreachable

bb.io:                                            ; preds = %bb.cc
  %i.bis = load i32, ptr %.val616, align 4, !range !59, !noundef !45 ; 2 uses
  switch i32 %i.bis, label %bb.iq [
    i32 -1, label %.backedge
    i32 15, label %bb.ip
  ]

bb.ip:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %i.js)
  %i.bit = getelementptr inbounds nuw i8, ptr %.val616, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.js, ptr noundef nonnull align 4 dereferenceable(12) %i.bit, i64 12, i1 false)
  %i.biu = call noundef align 8 ptr @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums13enum_metadata(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.js) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.js)
  %.not474 = icmp eq ptr %i.biu, null
  br i1 %.not474, label %bb.is, label %bb.ir

bb.iq:                                            ; preds = %bb.io
  %7 = icmp ne i32 %i.bis, 17
  call void @llvm.assume(i1 %7)
  store i32 1, ptr %i.ty, align 4, !alias.scope !16362
  store i32 4, ptr %i.jt, align 4, !alias.scope !16362
  br label %bb.iu

bb.ir:                                            ; preds = %bb.ip
  %i.biv = getelementptr inbounds nuw i8, ptr %i.biu, i64 180
  %i.biw = load i8, ptr %i.biv, align 4, !range !50, !noundef !45
  %i.bix = trunc nuw i8 %i.biw to i1
  br i1 %i.bix, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.ip
  store i32 1, ptr %i.ty, align 4, !alias.scope !16363
  store i32 4, ptr %i.jt, align 4, !alias.scope !16363
  br label %bb.iu

bb.it:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jr)
  %i.biy = getelementptr inbounds nuw i8, ptr %i.biu, i64 8
  %i.biz = load ptr, ptr %i.biy, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biu, i64 16
  %i.bjb = load i64, ptr %i.bja, align 8, !noundef !45
  %i.bjc = getelementptr inbounds nuw [40 x i8], ptr %i.biz, i64 %i.bjb
  store ptr %i.biz, ptr %i.jr, align 8
  store ptr %i.bjc, ptr %i.tv, align 8
  store ptr %1, ptr %i.tw, align 8
  store ptr %2, ptr %i.tx, align 8
  call void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_4Type19heterogeneous_tupleINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBT_ENCNvMs3_NtNtB5_4call4bindNtB3P_8Bindings20evaluate_known_casessp_0EBT_EB7_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.jt, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.jr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jr)
  br label %bb.iu

bb.iu:                                            ; preds = %bb.is, %bb.it, %bb.iq
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.aco, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bjd, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.jt, i64 16, i1 false), !alias.scope !16364
  br label %.backedge

bb.iv:                                            ; preds = %bb.cd
  %i.bje = load i32, ptr %.val614, align 4, !range !59, !noundef !45
  %.not471 = icmp eq i32 %i.bje, -1
  br i1 %.not471, label %.backedge, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jn, ptr noundef nonnull align 4 dereferenceable(16) %.val614, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members11all_members(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ec, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.jn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jn)
  call void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members6MemberuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBT_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.jo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  call void @_RNvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12list_members6MemberENtCs6Wt4yPw39th_9itertools9Itertools6sortedB14_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.jp, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.jo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jo)
  store ptr %1, ptr %i.tt, align 8
  store ptr %2, ptr %i.tu, align 8
  call void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_4Type19heterogeneous_tupleINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB5_12list_members6MemberENCNvMs3_NtNtB5_4call4bindNtB3A_8Bindings20evaluate_known_casessq_0EBT_EB7_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.jq, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.jp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jp)
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.aco, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bjf, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.jq, i64 16, i1 false), !alias.scope !16365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jq)
  br label %.backedge

bb.ix:                                            ; preds = %bb.ce
  %i.bjg = load i32, ptr %.val612, align 4, !range !59, !noundef !45 ; 3 uses
  %.not467 = icmp eq i32 %i.bjg, -1
  br i1 %.not467, label %.backedge, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.bjh = getelementptr inbounds nuw i8, ptr %.val612, i64 16
  %i.bji = load i32, ptr %i.bjh, align 4, !range !59, !noundef !45
  %.not468 = icmp eq i32 %i.bji, -1
  br i1 %.not468, label %.backedge, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %.sroa.41822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val612, i64 4
  %.sroa.41822.0.copyload = load i8, ptr %.sroa.41822.0..sroa_idx, align 4
  %.sroa.51824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val612, i64 8
  %.sroa.51824.0.copyload = load i32, ptr %.sroa.51824.0..sroa_idx, align 4 ; 2 uses
  %i.bjj = icmp ne i32 %i.bjg, 17
  call void @llvm.assume(i1 %i.bjj)
  %i.bjk = icmp ne i32 %i.bjg, 28
  %i.bjl = icmp ne i8 %.sroa.41822.0.copyload, 2
  %or.cond2379.not2602 = select i1 %i.bjk, i1 true, i1 %i.bjl
  %.not469 = icmp eq i32 %.sroa.51824.0.copyload, 0
  %or.cond2423.a = select i1 %or.cond2379.not2602, i1 true, i1 %.not469
  br i1 %or.cond2423.a, label %.backedge, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %.sroa.61825.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val612, i64 12
  %.sroa.61825.0.copyload = load i32, ptr %.sroa.61825.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.71828)
  %i.bjm = call { ptr, i64 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literals2_1__NtB8_17StringLiteralType5valueDNtNtBc_2db2DbEL_EBc_(i32 noundef %.sroa.51824.0.copyload, i32 noundef %.sroa.61825.0.copyload, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) ; 2 uses
  %i.bjn = extractvalue { ptr, i64 } %i.bjm, 0
  %i.bjo = extractvalue { ptr, i64 } %i.bjm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !16366
  store <4 x i32> <i32 64, i32 61, i32 60, i32 62>, ptr %i.cr, align 16, !noalias !16366
  store i32 33, ptr %i.vz, align 16, !noalias !16366
  %i.bjp = call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchesAcj5_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bjn, i64 noundef %i.bjo, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(20) %i.cr), !noalias !16367 ; 2 uses
  %i.bjq = extractvalue { ptr, i64 } %i.bjp, 0    ; 3 uses
  %i.bjr = extractvalue { ptr, i64 } %i.bjp, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !16366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !16366
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bjq) ]
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjq, i64 %i.bjr
  store ptr %i.bjq, ptr %i.cq, align 8, !noalias !16366
  store ptr %i.bjs, ptr %i.wa, align 8, !noalias !16366
  store i32 -2, ptr %i.wb, align 8, !noalias !16366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !16366
  store i64 0, ptr %i.cp, align 8, !noalias !16366
  store ptr inttoptr (i64 4 to ptr), ptr %i.wc, align 8, !noalias !16366
  store i64 0, ptr %i.wd, align 8, !noalias !16366
  br label %.backedge.i1008

.backedge.i1008:                                  ; preds = %.backedge.i1008.backedge, %bb.ja
  %i.bjt = phi i32 [ -2, %bb.ja ], [ %.be, %.backedge.i1008.backedge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16368)
  call void @llvm.experimental.noalias.scope.decl(metadata !16369)
  %.not.i.i1006 = icmp eq i32 %i.bjt, -2
  br i1 %.not.i.i1006, label %bb.jb, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.jb:                                            ; preds = %.backedge.i1008
  call void @llvm.experimental.noalias.scope.decl(metadata !16370)
  call void @llvm.experimental.noalias.scope.decl(metadata !16371)
  call void @llvm.experimental.noalias.scope.decl(metadata !16372)
  %i.bju = load ptr, ptr %i.cq, align 8, !alias.scope !16373, !noalias !16366, !nonnull !45, !noundef !45 ; 6 uses
  %i.bjv = load ptr, ptr %i.wa, align 8, !alias.scope !16373, !noalias !16366, !nonnull !45, !noundef !45 ; 4 uses
  %.not.i.i.i.i1010 = icmp eq ptr %i.bju, %i.bjv
  br i1 %.not.i.i.i.i1010, label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bju, i64 1 ; 3 uses
  store ptr %i.bjw, ptr %i.cq, align 8, !alias.scope !16373, !noalias !16366
  %i.bjx = load i8, ptr %i.bju, align 1, !noalias !16374, !noundef !45 ; 5 uses
  %i.bjy = icmp sgt i8 %i.bjx, -1
  br i1 %i.bjy, label %bb.jd, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i.i: ; preds = %bb.jc
  %i.bjz = and i8 %i.bjx, 31
  %i.bka = zext nneg i8 %i.bjz to i32             ; 3 uses
  %i.bkb = icmp ne ptr %i.bjw, %i.bjv
  call void @llvm.assume(i1 %i.bkb)
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bju, i64 2 ; 3 uses
  store ptr %i.bkc, ptr %i.cq, align 8, !alias.scope !16375, !noalias !16366
  %i.bkd = load i8, ptr %i.bjw, align 1, !noalias !16374, !noundef !45
  %i.bke = shl nuw nsw i32 %i.bka, 6
  %i.bkf = and i8 %i.bkd, 63
  %i.bkg = zext nneg i8 %i.bkf to i32             ; 2 uses
  %i.bkh = or disjoint i32 %i.bke, %i.bkg
  %i.bki = icmp samesign ugt i8 %i.bjx, -33
  br i1 %i.bki, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i.i, label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.jd:                                            ; preds = %bb.jc
  %i.bkj = zext nneg i8 %i.bjx to i32
  br label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i.i
  %i.bkk = icmp ne ptr %i.bkc, %i.bjv
  call void @llvm.assume(i1 %i.bkk)
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bju, i64 3 ; 3 uses
  store ptr %i.bkl, ptr %i.cq, align 8, !alias.scope !16376, !noalias !16366
  %i.bkm = load i8, ptr %i.bkc, align 1, !noalias !16374, !noundef !45
  %i.bkn = shl nuw nsw i32 %i.bkg, 6
  %i.bko = and i8 %i.bkm, 63
  %i.bkp = zext nneg i8 %i.bko to i32
  %i.bkq = or disjoint i32 %i.bkn, %i.bkp         ; 2 uses
  %i.bkr = shl nuw nsw i32 %i.bka, 12
  %i.bks = or disjoint i32 %i.bkq, %i.bkr
  %i.bkt = icmp samesign ugt i8 %i.bjx, -17
  br i1 %i.bkt, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i.i, label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i.i
  %i.bku = icmp ne ptr %i.bkl, %i.bjv
  call void @llvm.assume(i1 %i.bku)
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bju, i64 4
  store ptr %i.bkv, ptr %i.cq, align 8, !alias.scope !16377, !noalias !16366
  %i.bkw = load i8, ptr %i.bkl, align 1, !noalias !16374, !noundef !45
  %i.bkx = shl nuw nsw i32 %i.bka, 18
  %i.bky = and i32 %i.bkx, 1835008
  %i.bkz = shl nuw nsw i32 %i.bkq, 6
  %i.bla = and i8 %i.bkw, 63
  %i.blb = zext nneg i8 %i.bla to i32
  %i.blc = or disjoint i32 %i.bkz, %i.blb
  %i.bld = or disjoint i32 %i.blc, %i.bky
  br label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i.i, %bb.jd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i.i, %bb.jb
  %spec.select.i.i.i.i = phi i32 [ %i.bkj, %bb.jd ], [ %i.bkh, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i.i ], [ %i.bld, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i.i ], [ %i.bks, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i.i ], [ -1, %bb.jb ] ; 2 uses
  store i32 %spec.select.i.i.i.i, ptr %i.wb, align 8, !alias.scope !16368, !noalias !16366
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsoTR8nlGN3X_18ty_python_semantic.exit.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.jm, %bb.ko, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit.i52.i, %bb.kk, %bb.kj, %bb.ki, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment7program.exit.i.i, %bb.kf, %bb.ke, %bb.kd, %.invoke.i, %bb.jx, %bb.ji, %.invoke103.i
  %lpad.loopexit.split-lp3315 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %bb.jf unwind label %bb.je, !noalias !16378

bb.je:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ble = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %.body.i unwind label %bb.jg, !noalias !16378

bb.jf:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %common.resume unwind label %bb.kt, !noalias !16378

bb.jg:                                            ; preds = %bb.je
  %i.blf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63, !noalias !16378
  unreachable

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %.backedge.i1008
  %i.blg = phi i32 [ %spec.select.i.i.i.i, %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i ], [ %i.bjt, %.backedge.i1008 ]
  %.not.i1007 = icmp eq i32 %i.blg, -1
  br i1 %.not.i1007, label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind19parse_struct_format.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.jh
  %i.blh = invoke noundef i32 @_RINvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtBc_3str4iter5CharsE7next_ifNvMNtNtBc_4char7methodsc19is_ascii_whitespaceECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %bb.jh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16378

bb.jh:                                            ; preds = %.preheader.i
  %.not33.i = icmp eq i32 %i.blh, -1
  br i1 %.not33.i, label %bb.ji, label %.preheader.i

end_hunk_2
begin_hunk_3_@_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings20evaluate_known_cases:bb.a
  %i.bue = icmp eq i64 %.sroa.01.0.copyload.i.i.i1084, 3
  br i1 %i.bue, label %bb.mb, label %bb.md

bb.mb:                                            ; preds = %.lr.ph.i.i1083
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.42.0.copyload.i.i.i1086) ]
  %i.buf = icmp eq i64 %.sroa.53.0.copyload.i.i.i1088, 7
  br i1 %i.buf, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.bug = load i32, ptr %.sroa.42.0.copyload.i.i.i1086, align 1
  %i.buh = xor i32 %i.bug, 1868527467
  %i.bui = getelementptr i8, ptr %.sroa.42.0.copyload.i.i.i1086, i64 3
  %i.buj = load i32, ptr %i.bui, align 1
  %i.buk = xor i32 %i.buj, 2037149295
  %i.bul = or i32 %i.buh, %i.buk
  %i.bum = icmp ne i32 %i.bul, 0
  %i.bun = zext i1 %i.bum to i32
  %i.buo = icmp eq i32 %i.bun, 0
  br i1 %i.buo, label %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1092, label %bb.md

_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1092: ; preds = %bb.mc
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9argumentsNtB2_17CallArgumentTypes11get_default(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bud), !noalias !16436
  %.pr.i.i.i.i1093 = load i32, ptr %i.cg, align 4, !noalias !16435 ; 2 uses
  %.not.i.i.i.i1094 = icmp eq i32 %.pr.i.i.i.i1093, -1
  br i1 %.not.i.i.i.i1094, label %bb.md, label %bb.mf

bb.md:                                            ; preds = %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1092, %bb.mc, %bb.mb, %.lr.ph.i.i1083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !16435
  %i.bup = icmp eq ptr %i.buc, %i.wh
  br i1 %i.bup, label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1097, label %.lr.ph.i.i1083

bb.me:                                            ; preds = %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1079.thread, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1079
  %i.buq = phi i32 [ %i.btz, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1079.thread ], [ %i.btx, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1079 ]
  %.sroa.01623.02955 = phi i32 [ -1, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1079.thread ], [ %.sroa.01623.0, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1079 ]
  %.sroa.61629.sroa.0.0.copyload = load i8, ptr %.sroa.61629.0..sroa_idx1630, align 4, !noalias !16437
  %.sroa.61629.sroa.6.0.copyload = load i8, ptr %.sroa.61629.sroa.6.0..sroa.61629.0..sroa_idx1630.sroa_idx, align 2, !noalias !16437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !16430
  br label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1097

bb.mf:                                            ; preds = %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1092
  %.sroa.61629.sroa.0.0.copyload1974 = load i8, ptr %.sroa.6.0..sroa_idx.i.i1095, align 4, !noalias !16437
  %.sroa.61629.sroa.6.0.copyload1976 = load i8, ptr %.sroa.61629.sroa.6.0..sroa.6.0..sroa_idx.i.i1095.sroa_idx, align 2, !noalias !16437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !16435
  br label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1097

_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1097: ; preds = %bb.md, %.thread2957, %bb.mf, %bb.ma, %bb.me
  %.sroa.01623.02954 = phi i32 [ %.sroa.01623.02955, %bb.me ], [ %.sroa.01623.0, %bb.mf ], [ %.sroa.01623.0, %bb.ma ], [ -1, %.thread2957 ], [ %.sroa.01623.0, %bb.md ] ; 2 uses
  %.sroa.01627.0 = phi i32 [ %i.buq, %bb.me ], [ %.pr.i.i.i.i1093, %bb.mf ], [ -1, %bb.ma ], [ -1, %.thread2957 ], [ -1, %bb.md ] ; 3 uses
  %.sroa.61629.sroa.0.1 = phi i8 [ %.sroa.61629.sroa.0.0.copyload, %bb.me ], [ %.sroa.61629.sroa.0.0.copyload1974, %bb.mf ], [ undef, %bb.ma ], [ undef, %.thread2957 ], [ undef, %bb.md ]
  %.sroa.61629.sroa.6.1 = phi i8 [ %.sroa.61629.sroa.6.0.copyload, %bb.me ], [ %.sroa.61629.sroa.6.0.copyload1976, %bb.mf ], [ undef, %bb.ma ], [ undef, %.thread2957 ], [ undef, %bb.md ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !16438
  call fastcc void @_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding22parameter_type_by_name(ptr noalias noundef align 4 captures(none) dereferenceable(16) %i.cf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.aco, ptr noalias noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 5, i1 noundef zeroext true), !noalias !16439
  %i.bur = load i32, ptr %i.cf, align 4, !range !54, !noalias !16438, !noundef !45 ; 2 uses
  %i.bus = icmp eq i32 %i.bur, -2
  br i1 %i.bus, label %bb.mg, label %bb.mk

bb.mg:                                            ; preds = %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !16438
  br i1 %i.wi, label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115.thread, label %.lr.ph.i.i1101

.lr.ph.i.i1101:                                   ; preds = %bb.mg, %bb.mj
  %i.but = phi ptr [ %i.buu, %bb.mj ], [ %.val537, %bb.mg ] ; 5 uses
  %i.buu = getelementptr inbounds nuw i8, ptr %i.but, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16440)
  %i.buv = getelementptr inbounds nuw i8, ptr %i.but, i64 24
  %.sroa.01.0.copyload.i.i.i1102 = load i64, ptr %i.but, align 8, !alias.scope !16441, !noalias !16442
  %.sroa.42.0..sroa_idx.i.i.i1103 = getelementptr inbounds nuw i8, ptr %i.but, i64 8
  %.sroa.42.0.copyload.i.i.i1104 = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i1103, align 8, !alias.scope !16441, !noalias !16442 ; 3 uses
  %.sroa.53.0..sroa_idx.i.i.i1105 = getelementptr inbounds nuw i8, ptr %i.but, i64 16
  %.sroa.53.0.copyload.i.i.i1106 = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i1105, align 8, !alias.scope !16441, !noalias !16442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !16443
  %i.buw = icmp eq i64 %.sroa.01.0.copyload.i.i.i1102, 3
  br i1 %i.buw, label %bb.mh, label %bb.mj

bb.mh:                                            ; preds = %.lr.ph.i.i1101
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.42.0.copyload.i.i.i1104) ]
  %i.bux = icmp eq i64 %.sroa.53.0.copyload.i.i.i1106, 5
  br i1 %i.bux, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.buy = load i32, ptr %.sroa.42.0.copyload.i.i.i1104, align 1
  %i.buz = xor i32 %i.buy, 1634298977
  %i.bva = getelementptr i8, ptr %.sroa.42.0.copyload.i.i.i1104, i64 4
  %i.bvb = load i8, ptr %i.bva, align 1
  %i.bvc = zext i8 %i.bvb to i32
  %i.bvd = xor i32 %i.bvc, 115
  %i.bve = or i32 %i.buz, %i.bvd
  %i.bvf = icmp ne i32 %i.bve, 0
  %i.bvg = zext i1 %i.bvf to i32
  %i.bvh = icmp eq i32 %i.bvg, 0
  br i1 %i.bvh, label %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1110, label %bb.mj

_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1110: ; preds = %bb.mi
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9argumentsNtB2_17CallArgumentTypes11get_default(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.buv), !noalias !16444
  %.pr.i.i.i.i1111 = load i32, ptr %i.ce, align 4, !noalias !16443 ; 2 uses
  %.not.i.i.i.i1112 = icmp eq i32 %.pr.i.i.i.i1111, -1
  br i1 %.not.i.i.i.i1112, label %bb.mj, label %bb.ml

bb.mj:                                            ; preds = %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1110, %bb.mi, %bb.mh, %.lr.ph.i.i1101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !16443
  %i.bvi = icmp eq ptr %i.buu, %i.wh
  br i1 %i.bvi, label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115, label %.lr.ph.i.i1101

bb.mk:                                            ; preds = %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1097
  %.sroa.51632.0.copyload = load i8, ptr %.sroa.51632.0..sroa_idx, align 4, !noalias !16445
  %.sroa.71634.0.copyload = load i32, ptr %.sroa.71634.0..sroa_idx, align 4, !noalias !16445
  %.sroa.81635.0.copyload = load i32, ptr %.sroa.81635.0..sroa_idx, align 4, !noalias !16445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !16438
  br label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115

bb.ml:                                            ; preds = %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1110
  %.sroa.51632.4.copyload = load i8, ptr %.sroa.6.0..sroa_idx.i.i1113, align 4, !noalias !16445
  %.sroa.71634.4.copyload = load i32, ptr %.sroa.71634.4..sroa.6.0..sroa_idx.i.i1113.sroa_idx, align 4, !noalias !16445
  %.sroa.81635.4.copyload = load i32, ptr %.sroa.81635.4..sroa.6.0..sroa_idx.i.i1113.sroa_idx, align 4, !noalias !16445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !16443
  br label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115

_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115: ; preds = %bb.mj, %bb.ml, %bb.mk
  %.sroa.81635.1 = phi i32 [ %.sroa.81635.0.copyload, %bb.mk ], [ %.sroa.81635.4.copyload, %bb.ml ], [ undef, %bb.mj ] ; 4 uses
  %.sroa.71634.1 = phi i32 [ %.sroa.71634.0.copyload, %bb.mk ], [ %.sroa.71634.4.copyload, %bb.ml ], [ undef, %bb.mj ] ; 4 uses
  %.sroa.51632.1 = phi i8 [ %.sroa.51632.0.copyload, %bb.mk ], [ %.sroa.51632.4.copyload, %bb.ml ], [ undef, %bb.mj ] ; 4 uses
  %.sroa.01631.0 = phi i32 [ %i.bur, %bb.mk ], [ %.pr.i.i.i.i1111, %bb.ml ], [ -1, %bb.mj ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !16446
  call fastcc void @_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding22parameter_type_by_name(ptr noalias noundef align 4 captures(none) dereferenceable(16) %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.aco, ptr noalias noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 16, i1 noundef zeroext true), !noalias !16447
  %i.bvj = load i32, ptr %i.cd, align 4, !range !54, !noalias !16446, !noundef !45 ; 2 uses
  %i.bvk = icmp eq i32 %i.bvj, -2
  br i1 %i.bvk, label %bb.mm, label %bb.mq

_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115.thread: ; preds = %bb.mg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !16446
  call fastcc void @_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding22parameter_type_by_name(ptr noalias noundef align 4 captures(none) dereferenceable(16) %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.aco, ptr noalias noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 16, i1 noundef zeroext true), !noalias !16447
  %i.bvl = load i32, ptr %i.cd, align 4, !range !54, !noalias !16446, !noundef !45 ; 2 uses
  %i.bvm = icmp eq i32 %i.bvl, -2
  br i1 %i.bvm, label %.thread2975, label %bb.mq

.thread2975:                                      ; preds = %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !16446
  br label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1133

bb.mm:                                            ; preds = %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !16446
  br i1 %i.wi, label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1133, label %.lr.ph.i.i1119

.lr.ph.i.i1119:                                   ; preds = %bb.mm, %bb.mp
  %i.bvn = phi ptr [ %i.bvo, %bb.mp ], [ %.val537, %bb.mm ] ; 5 uses
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bvn, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16448)
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.bvn, i64 24
  %.sroa.01.0.copyload.i.i.i1120 = load i64, ptr %i.bvn, align 8, !alias.scope !16449, !noalias !16450
  %.sroa.42.0..sroa_idx.i.i.i1121 = getelementptr inbounds nuw i8, ptr %i.bvn, i64 8
  %.sroa.42.0.copyload.i.i.i1122 = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i1121, align 8, !alias.scope !16449, !noalias !16450 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i.i1123 = getelementptr inbounds nuw i8, ptr %i.bvn, i64 16
  %.sroa.53.0.copyload.i.i.i1124 = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i1123, align 8, !alias.scope !16449, !noalias !16450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !16451
  %i.bvq = icmp eq i64 %.sroa.01.0.copyload.i.i.i1120, 3
  br i1 %i.bvq, label %bb.mn, label %bb.mp

bb.mn:                                            ; preds = %.lr.ph.i.i1119
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.42.0.copyload.i.i.i1122) ]
  %i.bvr = icmp eq i64 %.sroa.53.0.copyload.i.i.i1124, 16
  br i1 %i.bvr, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  %i.bvs = load i128, ptr %.sroa.42.0.copyload.i.i.i1122, align 1
  %i.bvt = icmp ne i128 %i.bvs, 153367010550328554050882619476114432374
  %i.bvu = zext i1 %i.bvt to i32
  %i.bvv = icmp eq i32 %i.bvu, 0
  br i1 %i.bvv, label %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1128, label %bb.mp

_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1128: ; preds = %bb.mo
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9argumentsNtB2_17CallArgumentTypes11get_default(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.cc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bvp), !noalias !16452
  %.pr.i.i.i.i1129 = load i32, ptr %i.cc, align 4, !noalias !16451 ; 2 uses
  %.not.i.i.i.i1130 = icmp eq i32 %.pr.i.i.i.i1129, -1
  br i1 %.not.i.i.i.i1130, label %bb.mp, label %bb.mr

bb.mp:                                            ; preds = %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1128, %bb.mo, %bb.mn, %.lr.ph.i.i1119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !16451
  %i.bvw = icmp eq ptr %i.bvo, %i.wh
  br i1 %i.bvw, label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1133, label %.lr.ph.i.i1119

bb.mq:                                            ; preds = %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115.thread, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115
  %i.bvx = phi i32 [ %i.bvl, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115.thread ], [ %i.bvj, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115 ]
  %.sroa.01631.02973 = phi i32 [ -1, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115.thread ], [ %.sroa.01631.0, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115 ]
  %.sroa.51632.12970 = phi i8 [ undef, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115.thread ], [ %.sroa.51632.1, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115 ]
  %.sroa.71634.12967 = phi i32 [ undef, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115.thread ], [ %.sroa.71634.1, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115 ]
  %.sroa.81635.12964 = phi i32 [ undef, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115.thread ], [ %.sroa.81635.1, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1115 ]
  %.sroa.61638.sroa.0.0.copyload = load i8, ptr %.sroa.61638.0..sroa_idx1639, align 4, !noalias !16453
  %.sroa.61638.sroa.6.0.copyload = load i32, ptr %.sroa.61638.sroa.6.0..sroa.61638.0..sroa_idx1639.sroa_idx, align 4, !noalias !16453
  %.sroa.61638.sroa.7.0.copyload = load i32, ptr %.sroa.61638.sroa.7.0..sroa.61638.0..sroa_idx1639.sroa_idx, align 4, !noalias !16453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !16446
  br label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1133

bb.mr:                                            ; preds = %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1128
  %.sroa.61638.sroa.0.0.copyload1985 = load i8, ptr %.sroa.6.0..sroa_idx.i.i1131, align 4, !noalias !16453
  %.sroa.61638.sroa.6.0.copyload1986 = load i32, ptr %.sroa.61638.sroa.6.0..sroa.6.0..sroa_idx.i.i1131.sroa_idx, align 4, !noalias !16453
  %.sroa.61638.sroa.7.0.copyload1987 = load i32, ptr %.sroa.61638.sroa.7.0..sroa.6.0..sroa_idx.i.i1131.sroa_idx, align 4, !noalias !16453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !16451
  br label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1133

_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1133: ; preds = %bb.mp, %.thread2975, %bb.mr, %bb.mm, %bb.mq
  %.sroa.01631.02972 = phi i32 [ %.sroa.01631.02973, %bb.mq ], [ %.sroa.01631.0, %bb.mr ], [ %.sroa.01631.0, %bb.mm ], [ -1, %.thread2975 ], [ %.sroa.01631.0, %bb.mp ] ; 2 uses
  %.sroa.51632.12969 = phi i8 [ %.sroa.51632.12970, %bb.mq ], [ %.sroa.51632.1, %bb.mr ], [ %.sroa.51632.1, %bb.mm ], [ undef, %.thread2975 ], [ %.sroa.51632.1, %bb.mp ]
  %.sroa.71634.12966 = phi i32 [ %.sroa.71634.12967, %bb.mq ], [ %.sroa.71634.1, %bb.mr ], [ %.sroa.71634.1, %bb.mm ], [ undef, %.thread2975 ], [ %.sroa.71634.1, %bb.mp ] ; 2 uses
  %.sroa.81635.12963 = phi i32 [ %.sroa.81635.12964, %bb.mq ], [ %.sroa.81635.1, %bb.mr ], [ %.sroa.81635.1, %bb.mm ], [ undef, %.thread2975 ], [ %.sroa.81635.1, %bb.mp ]
  %.sroa.01636.0 = phi i32 [ %i.bvx, %bb.mq ], [ %.pr.i.i.i.i1129, %bb.mr ], [ -1, %bb.mm ], [ -1, %.thread2975 ], [ -1, %bb.mp ] ; 3 uses
  %.sroa.61638.sroa.0.1 = phi i8 [ %.sroa.61638.sroa.0.0.copyload, %bb.mq ], [ %.sroa.61638.sroa.0.0.copyload1985, %bb.mr ], [ undef, %bb.mm ], [ undef, %.thread2975 ], [ undef, %bb.mp ]
  %.sroa.61638.sroa.6.1 = phi i32 [ %.sroa.61638.sroa.6.0.copyload, %bb.mq ], [ %.sroa.61638.sroa.6.0.copyload1986, %bb.mr ], [ undef, %bb.mm ], [ undef, %.thread2975 ], [ undef, %bb.mp ] ; 2 uses
  %.sroa.61638.sroa.7.1 = phi i32 [ %.sroa.61638.sroa.7.0.copyload, %bb.mq ], [ %.sroa.61638.sroa.7.0.copyload1987, %bb.mr ], [ undef, %bb.mm ], [ undef, %.thread2975 ], [ undef, %bb.mp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61642)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !16454
  call fastcc void @_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding22parameter_type_by_name(ptr noalias noundef align 4 captures(none) dereferenceable(16) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.aco, ptr noalias noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 9, i1 noundef zeroext true), !noalias !16455
  %i.bvy = load i32, ptr %i.cb, align 4, !range !54, !noalias !16454, !noundef !45 ; 2 uses
  %i.bvz = icmp eq i32 %i.bvy, -2
  br i1 %i.bvz, label %bb.ms, label %bb.mw

bb.ms:                                            ; preds = %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !16454
  br i1 %i.wi, label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1151, label %.lr.ph.i.i1137

.lr.ph.i.i1137:                                   ; preds = %bb.ms, %bb.mv
  %i.bwa = phi ptr [ %i.bwb, %bb.mv ], [ %.val537, %bb.ms ] ; 5 uses
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bwa, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16456)
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bwa, i64 24
  %.sroa.01.0.copyload.i.i.i1138 = load i64, ptr %i.bwa, align 8, !alias.scope !16457, !noalias !16458
  %.sroa.42.0..sroa_idx.i.i.i1139 = getelementptr inbounds nuw i8, ptr %i.bwa, i64 8
  %.sroa.42.0.copyload.i.i.i1140 = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i1139, align 8, !alias.scope !16457, !noalias !16458 ; 3 uses
  %.sroa.53.0..sroa_idx.i.i.i1141 = getelementptr inbounds nuw i8, ptr %i.bwa, i64 16
  %.sroa.53.0.copyload.i.i.i1142 = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i1141, align 8, !alias.scope !16457, !noalias !16458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !16459
  %i.bwd = icmp eq i64 %.sroa.01.0.copyload.i.i.i1138, 3
  br i1 %i.bwd, label %bb.mt, label %bb.mv

bb.mt:                                            ; preds = %.lr.ph.i.i1137
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.42.0.copyload.i.i.i1140) ]
  %i.bwe = icmp eq i64 %.sroa.53.0.copyload.i.i.i1142, 9
  br i1 %i.bwe, label %bb.mu, label %bb.mv

bb.mu:                                            ; preds = %bb.mt
  %i.bwf = load i64, ptr %.sroa.42.0.copyload.i.i.i1140, align 1
  %i.bwg = xor i64 %i.bwf, 7310593875233369955
  %i.bwh = getelementptr i8, ptr %.sroa.42.0.copyload.i.i.i1140, i64 8
  %i.bwi = load i8, ptr %i.bwh, align 1
  %i.bwj = zext i8 %i.bwi to i64
  %i.bwk = xor i64 %i.bwj, 114
  %i.bwl = or i64 %i.bwg, %i.bwk
  %i.bwm = icmp ne i64 %i.bwl, 0
  %i.bwn = zext i1 %i.bwm to i32
  %i.bwo = icmp eq i32 %i.bwn, 0
  br i1 %i.bwo, label %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1146, label %bb.mv

_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1146: ; preds = %bb.mu
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9argumentsNtB2_17CallArgumentTypes11get_default(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bwc), !noalias !16460
  %.pr.i.i.i.i1147 = load i32, ptr %i.ca, align 4, !noalias !16459 ; 2 uses
  %.not.i.i.i.i1148 = icmp eq i32 %.pr.i.i.i.i1147, -1
  br i1 %.not.i.i.i.i1148, label %bb.mv, label %bb.mx

bb.mv:                                            ; preds = %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1146, %bb.mu, %bb.mt, %.lr.ph.i.i1137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !16459
  %i.bwp = icmp eq ptr %i.bwb, %i.wh
  br i1 %i.bwp, label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1151, label %.lr.ph.i.i1137

bb.mw:                                            ; preds = %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61642, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61642.0..sroa_idx1643, i64 12, i1 false), !noalias !16461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !16454
  br label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1151

bb.mx:                                            ; preds = %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61642, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx.i.i1149, i64 12, i1 false), !noalias !16461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !16459
  br label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1151

_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1151: ; preds = %bb.mv, %bb.mx, %bb.ms, %bb.mw
  %.sroa.01640.0 = phi i32 [ %i.bvy, %bb.mw ], [ %.pr.i.i.i.i1147, %bb.mx ], [ -1, %bb.ms ], [ -1, %bb.mv ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.71647)
  call void @llvm.experimental.noalias.scope.decl(metadata !16462)
  call void @llvm.experimental.noalias.scope.decl(metadata !16463), !noalias !16464
  %i.bwq = load ptr, ptr %i.aef, align 8, !alias.scope !16465, !noalias !16464, !nonnull !45, !noundef !45 ; 2 uses
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwq, i64 16
  %i.bws = load ptr, ptr %i.bwr, align 8, !noalias !16466, !nonnull !45, !noundef !45 ; 2 uses
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.bwq, i64 24
  %i.bwu = load i64, ptr %i.bwt, align 8, !noalias !16466, !noundef !45 ; 2 uses
  %.idx.i.i1415 = mul nuw nsw i64 %i.bwu, 72
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.bws, i64 %.idx.i.i1415
  %i.bww = icmp eq i64 %i.bwu, 0
  br i1 %i.bww, label %_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding22parameter_type_by_name.exit1430.thread, label %.lr.ph.i.i.i1416

.lr.ph.i.i.i1416:                                 ; preds = %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1151, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameteruINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3R_NCNvMs7_B28_NtB28_10Parameters15keyword_by_name0E0E0B2c_.exit.i.i.i1419
  %i.bwx = phi i64 [ %i.bxw, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameteruINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3R_NCNvMs7_B28_NtB28_10Parameters15keyword_by_name0E0E0B2c_.exit.i.i.i1419 ], [ 0, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1151 ] ; 4 uses
  %i.bwy = phi ptr [ %i.bwz, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameteruINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3R_NCNvMs7_B28_NtB28_10Parameters15keyword_by_name0E0E0B2c_.exit.i.i.i1419 ], [ %i.bws, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1151 ] ; 5 uses
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bwy, i64 72 ; 2 uses
  %i.bxa = load i64, ptr %i.bwy, align 8, !range !66, !alias.scope !16467, !noalias !16468, !noundef !45
  switch i64 %i.bxa, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameteruINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3R_NCNvMs7_B28_NtB28_10Parameters15keyword_by_name0E0E0B2c_.exit.i.i.i1419 [
    i64 1, label %bb.my
    i64 3, label %bb.my
  ]

bb.my:                                            ; preds = %.lr.ph.i.i.i1416, %.lr.ph.i.i.i1416
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bwy, i64 23
  %i.bxc = load i8, ptr %i.bxb, align 1, !range !57, !alias.scope !16469, !noalias !16468, !noundef !45 ; 3 uses
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bwy, i64 16
  %i.bxe = load i64, ptr %i.bxd, align 8, !alias.scope !16469, !noalias !16468, !noundef !45
  %i.bxf = and i64 %i.bxe, 72057594037927935
  %i.bxg = icmp ult i8 %i.bxc, -48
  %i.bxh = zext i8 %i.bxc to i64
  %i.bxi = add nsw i64 %i.bxh, -192
  %spec.store.select.i.i.i.i.i.i.i.i1417 = call i64 @llvm.umin.i64(i64 %i.bxi, i64 16)
  %.sroa.0.0.i.i.i.i.i.i.i.i1418 = select i1 %i.bxg, i64 %spec.store.select.i.i.i.i.i.i.i.i1417, i64 %i.bxf
  %i.bxj = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i1418, 6
  br i1 %i.bxj, label %_RNCNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB7_10Parameters15keyword_by_name0Bb_.exit.i.i.i.i.i1421, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameteruINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3R_NCNvMs7_B28_NtB28_10Parameters15keyword_by_name0E0E0B2c_.exit.i.i.i1419

_RNCNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB7_10Parameters15keyword_by_name0Bb_.exit.i.i.i.i.i1421: ; preds = %bb.my
  %i.bxk = icmp ugt i8 %i.bxc, -49
  %.sroa.01.0.i.i.i.i.i.i.i1422 = getelementptr inbounds nuw i8, ptr %i.bwy, i64 8 ; 2 uses
  %i.bxl = load ptr, ptr %.sroa.01.0.i.i.i.i.i.i.i1422, align 8, !alias.scope !16469, !noalias !16468
  %.sroa.01.0.i.i.i.i.i.i.i.i1423 = select i1 %i.bxk, ptr %i.bxl, ptr %.sroa.01.0.i.i.i.i.i.i.i1422 ; 2 uses
  %i.bxm = load i32, ptr %.sroa.01.0.i.i.i.i.i.i.i.i1423, align 1
  %i.bxn = xor i32 %i.bxm, 1769108595
  %i.bxo = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i.i.i1423, i64 4
  %i.bxp = load i16, ptr %i.bxo, align 1
  %i.bxq = zext i16 %i.bxp to i32
  %i.bxr = xor i32 %i.bxq, 29795
  %i.bxs = or i32 %i.bxn, %i.bxr
  %i.bxt = icmp ne i32 %i.bxs, 0
  %i.bxu = zext i1 %i.bxt to i32
  %bcmp.i.i.fr.i.i.i.i.i1425 = freeze i32 %i.bxu
  %i.bxv = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i1425, 0
  br i1 %i.bxv, label %bb.mz, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameteruINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3R_NCNvMs7_B28_NtB28_10Parameters15keyword_by_name0E0E0B2c_.exit.i.i.i1419

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameteruINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3R_NCNvMs7_B28_NtB28_10Parameters15keyword_by_name0E0E0B2c_.exit.i.i.i1419: ; preds = %_RNCNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB7_10Parameters15keyword_by_name0Bb_.exit.i.i.i.i.i1421, %bb.my, %.lr.ph.i.i.i1416
  %i.bxw = add nuw nsw i64 %i.bwx, 1
  %i.bxx = icmp eq ptr %i.bwz, %i.bwv
  br i1 %i.bxx, label %_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding22parameter_type_by_name.exit1430.thread, label %.lr.ph.i.i.i1416

bb.mz:                                            ; preds = %_RNCNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB7_10Parameters15keyword_by_name0Bb_.exit.i.i.i.i.i1421
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.aco, i64 168
  %i.bxz = load i64, ptr %i.bxy, align 8, !alias.scope !16462, !noalias !16464, !noundef !45 ; 2 uses
  %i.bya = icmp ult i64 %i.bwx, %i.bxz
  br i1 %i.bya, label %bb.na, label %bb.nb

bb.na:                                            ; preds = %bb.mz
  %i.byb = getelementptr inbounds nuw i8, ptr %i.aco, i64 160
  %i.byc = load ptr, ptr %i.byb, align 8, !alias.scope !16462, !noalias !16464, !nonnull !45, !noundef !45
  %i.byd = getelementptr inbounds nuw [16 x i8], ptr %i.byc, i64 %i.bwx ; 2 uses
  %.sroa.07.0.copyload.i1426 = load i32, ptr %i.byd, align 4, !noalias !16470 ; 2 uses
  switch i32 %.sroa.07.0.copyload.i1426, label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1169 [
    i32 -1, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6map_orNtNtNtBK_9dedicated8pydantic13ConfigBooleanNCNvMs3_NtNtBK_4call4bindNtB2r_8Bindings20evaluate_known_casess6_0EBM_.exit
    i32 -2, label %_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding22parameter_type_by_name.exit1430.thread
  ]

bb.nb:                                            ; preds = %bb.mz
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bwx, i64 noundef %i.bxz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #64, !noalias !16470
  unreachable

_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding22parameter_type_by_name.exit1430.thread: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameteruINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3R_NCNvMs7_B28_NtB28_10Parameters15keyword_by_name0E0E0B2c_.exit.i.i.i1419, %bb.na, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1151
  br i1 %i.wi, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6map_orNtNtNtBK_9dedicated8pydantic13ConfigBooleanNCNvMs3_NtNtBK_4call4bindNtB2r_8Bindings20evaluate_known_casess6_0EBM_.exit, label %.lr.ph.i.i1155

.lr.ph.i.i1155:                                   ; preds = %_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding22parameter_type_by_name.exit1430.thread, %bb.ne
  %i.bye = phi ptr [ %i.byf, %bb.ne ], [ %.val537, %_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding22parameter_type_by_name.exit1430.thread ] ; 5 uses
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bye, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16471)
  %i.byg = getelementptr inbounds nuw i8, ptr %i.bye, i64 24
  %.sroa.01.0.copyload.i.i.i1156 = load i64, ptr %i.bye, align 8, !alias.scope !16472, !noalias !16473
  %.sroa.42.0..sroa_idx.i.i.i1157 = getelementptr inbounds nuw i8, ptr %i.bye, i64 8
  %.sroa.42.0.copyload.i.i.i1158 = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i1157, align 8, !alias.scope !16472, !noalias !16473 ; 3 uses
  %.sroa.53.0..sroa_idx.i.i.i1159 = getelementptr inbounds nuw i8, ptr %i.bye, i64 16
  %.sroa.53.0.copyload.i.i.i1160 = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i1159, align 8, !alias.scope !16472, !noalias !16473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !16474
  %i.byh = icmp eq i64 %.sroa.01.0.copyload.i.i.i1156, 3
  br i1 %i.byh, label %bb.nc, label %bb.ne

bb.nc:                                            ; preds = %.lr.ph.i.i1155
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.42.0.copyload.i.i.i1158) ]
  %i.byi = icmp eq i64 %.sroa.53.0.copyload.i.i.i1160, 6
  br i1 %i.byi, label %bb.nd, label %bb.ne

bb.nd:                                            ; preds = %bb.nc
  %i.byj = load i32, ptr %.sroa.42.0.copyload.i.i.i1158, align 1
  %i.byk = xor i32 %i.byj, 1769108595
  %i.byl = getelementptr i8, ptr %.sroa.42.0.copyload.i.i.i1158, i64 4
  %i.bym = load i16, ptr %i.byl, align 1
  %i.byn = zext i16 %i.bym to i32
  %i.byo = xor i32 %i.byn, 29795
  %i.byp = or i32 %i.byk, %i.byo
  %i.byq = icmp ne i32 %i.byp, 0
  %i.byr = zext i1 %i.byq to i32
  %i.bys = icmp eq i32 %i.byr, 0
  br i1 %i.bys, label %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1164, label %bb.ne

_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1164: ; preds = %bb.nd
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9argumentsNtB2_17CallArgumentTypes11get_default(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.byg), !noalias !16475
  %.pr.i.i.i.i1165 = load i32, ptr %i.bz, align 4, !noalias !16474 ; 2 uses
  %.not.i.i.i.i1166 = icmp eq i32 %.pr.i.i.i.i1165, -1
  br i1 %.not.i.i.i.i1166, label %bb.ne, label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1169.thread2297

bb.ne:                                            ; preds = %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1164, %bb.nd, %bb.nc, %.lr.ph.i.i1155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !16474
  %i.byt = icmp eq ptr %i.byf, %i.wh
  br i1 %i.byt, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6map_orNtNtNtBK_9dedicated8pydantic13ConfigBooleanNCNvMs3_NtNtBK_4call4bindNtB2r_8Bindings20evaluate_known_casess6_0EBM_.exit, label %.lr.ph.i.i1155

_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1169.thread2297: ; preds = %_RNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB9_8Bindings20evaluate_known_casess4_00Bf_.exit.i.i.i.i1164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.71647, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx.i.i1167, i64 12, i1 false), !noalias !16476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !16474
  br label %bb.nf

_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1169: ; preds = %bb.na
  %.sroa.5.0..sroa_idx.i1428 = getelementptr inbounds nuw i8, ptr %i.byd, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.71647, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i1428, i64 12, i1 false)
  br label %bb.nf

bb.nf:                                            ; preds = %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1169, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1169.thread2297
  %.sroa.01644.02302 = phi i32 [ %.pr.i.i.i.i1165, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1169.thread2297 ], [ %.sroa.07.0.copyload.i1426, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1169 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !16477
  store i32 %.sroa.01644.02302, ptr %i.by, align 4, !noalias !16478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.71647.0..sroa_idx1648, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.71647, i64 12, i1 false), !noalias !16478
  %i.byu = call noundef zeroext i1 @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type7is_none(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.by, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !16479
  br i1 %i.byu, label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess6_0Bd_.exit.i, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !16480
  store i32 %.sroa.01644.02302, ptr %i.bx, align 4, !noalias !16478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.71647.0..sroa_idx1649, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.71647, i64 12, i1 false), !noalias !16478
  %i.byv = call noundef i8 @_RNvMs4_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydanticNtB5_13ConfigBoolean9from_type(ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.bx), !noalias !16479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !16480
  br label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess6_0Bd_.exit.i

_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess6_0Bd_.exit.i: ; preds = %bb.ng, %bb.nf
  %.sroa.0.0.i.i1171 = phi i8 [ %i.byv, %bb.ng ], [ 0, %bb.nf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !16477
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6map_orNtNtNtBK_9dedicated8pydantic13ConfigBooleanNCNvMs3_NtNtBK_4call4bindNtB2r_8Bindings20evaluate_known_casess6_0EBM_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6map_orNtNtNtBK_9dedicated8pydantic13ConfigBooleanNCNvMs3_NtNtBK_4call4bindNtB2r_8Bindings20evaluate_known_casess6_0EBM_.exit: ; preds = %bb.ne, %bb.na, %_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding22parameter_type_by_name.exit1430.thread, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess6_0Bd_.exit.i
  %.sroa.0.0.i1172 = phi i8 [ %.sroa.0.0.i.i1171, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess6_0Bd_.exit.i ], [ 0, %bb.na ], [ 0, %_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding22parameter_type_by_name.exit1430.thread ], [ 0, %bb.ne ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.71647)
  br i1 %.sroa.080.0, label %bb.nj, label %bb.ni

bb.nh:                                            ; preds = %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit1061.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.41964.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61614, i64 12, i1 false)
  store i32 %.sroa.01612.0, ptr %i.eh, align 4
  %i.byw = call noundef zeroext i1 @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic22field_provides_default(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %i.adi, i32 noundef %i.adj, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.eh), !noalias !16481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  br label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess4_0Bd_.exit721

bb.ni:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6map_orNtNtNtBK_9dedicated8pydantic13ConfigBooleanNCNvMs3_NtNtBK_4call4bindNtB2r_8Bindings20evaluate_known_casess6_0EBM_.exit
  store i32 -1, ptr %i.lw, align 4
  br label %bb.nk

bb.nj:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6map_orNtNtNtBK_9dedicated8pydantic13ConfigBooleanNCNvMs3_NtNtBK_4call4bindNtB2r_8Bindings20evaluate_known_casess6_0EBM_.exit
  %i.byx = getelementptr inbounds nuw i8, ptr %i.aco, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lw, ptr noundef nonnull align 8 dereferenceable(16) %i.byx, i64 16, i1 false)
  br label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %.not530 = icmp eq i32 %.sroa.01623.02954, -1
  br i1 %.not530, label %bb.nm, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.41966.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61625, i64 12, i1 false)
  store i32 %.sroa.01623.02954, ptr %i.eg, align 4
  %i.byy = call noundef i8 @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types4boolNtB4_4Type4bool(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.eg, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3), !noalias !16482
  %i.byz = icmp ne i8 %i.byy, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nk, %bb.nl
  %.sroa.0113.0 = phi i1 [ %i.byz, %bb.nl ], [ true, %bb.nk ]
  %.sroa.03.0.copyload.i.i1173 = load i32, ptr %3, align 4, !noalias !16483
  %.sroa.5.0.copyload.i.i1175 = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !16483 ; 4 uses
  %.sroa.9.0.copyload.i.i1177 = load i32, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !16483 ; 4 uses
  switch i32 %.sroa.03.0.copyload.i.i1173, label %bb.nn [
    i32 0, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version.exit
    i32 1, label %bb.no
    i32 2, label %bb.np
    i32 3, label %bb.nq
  ], !prof !107

bb.nn:                                            ; preds = %bb.nm
  unreachable

bb.no:                                            ; preds = %bb.nm
  %i.bza = call { i32, i32 } @_RINvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB8_11ProgramFile7programDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1q_(i32 noundef %.sroa.5.0.copyload.i.i1175, i32 noundef %.sroa.9.0.copyload.i.i1177, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  br label %bb.nr

bb.np:                                            ; preds = %bb.nm
  %i.bzb = call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition7program(i32 noundef %.sroa.5.0.copyload.i.i1175, i32 noundef %.sroa.9.0.copyload.i.i1177, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  br label %bb.nr

bb.nq:                                            ; preds = %bb.nm
  %i.bzc = call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId7program(i32 noundef %.sroa.5.0.copyload.i.i1175, i32 noundef %.sroa.9.0.copyload.i.i1177, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  br label %bb.nr

bb.nr:                                            ; preds = %bb.nq, %bb.np, %bb.no
  %.pn.i.i1178 = phi { i32, i32 } [ %i.bza, %bb.no ], [ %i.bzb, %bb.np ], [ %i.bzc, %bb.nq ] ; 2 uses
  %.sroa.0.1.i.i1179 = extractvalue { i32, i32 } %.pn.i.i1178, 0 ; 2 uses
  %.sroa.6.1.i.i1180 = extractvalue { i32, i32 } %.pn.i.i1178, 1 ; 2 uses
  store i32 0, ptr %3, align 4, !noalias !16483
  store i32 %.sroa.0.1.i.i1179, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !16483
  store i32 %.sroa.6.1.i.i1180, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !16483
  br label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version.exit

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version.exit: ; preds = %bb.nm, %bb.nr
  %.pre-phi2.i1181 = phi i32 [ %.sroa.6.1.i.i1180, %bb.nr ], [ %.sroa.9.0.copyload.i.i1177, %bb.nm ]
  %.pre-phi.i1182 = phi i32 [ %.sroa.0.1.i.i1179, %bb.nr ], [ %.sroa.5.0.copyload.i.i1175, %bb.nm ]
  %i.bzd = call { i8, i8 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core7programNtB4_7Program14python_version(i32 noundef %.pre-phi.i1182, i32 noundef %.pre-phi2.i1181, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) ; 2 uses
  %i.bze = extractvalue { i8, i8 } %i.bzd, 0      ; 2 uses
  %i.bzf = icmp eq i8 %i.bze, 3
  %i.bzg = icmp ult i8 %i.bze, 3
  %i.bzh = extractvalue { i8, i8 } %i.bzd, 1
  %i.bzi = icmp ult i8 %i.bzh, 10
  %.sroa.0332.0 = select i1 %i.bzf, i1 %i.bzi, i1 %i.bzg
  %.not531 = icmp eq i32 %.sroa.01627.0, -1
  %or.cond2381.a = or i1 %.not531, %.sroa.0332.0
  br i1 %or.cond2381.a, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21as_literal_value_kind.exit1197, label %bb.ns

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21as_literal_value_kind.exit1197: ; preds = %bb.ns, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version.exit
  %.sroa.0115.0 = phi i8 [ 2, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version.exit ], [ %spec.select, %bb.ns ]
  %.not532 = icmp eq i32 %.sroa.01636.0, -1
  br i1 %.not532, label %.thread2308, label %bb.nt

bb.ns:                                            ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB2_18ProgramEnvironment14python_version.exit
  %i.bzj = icmp ne i32 %.sroa.01627.0, 17
  call void @llvm.assume(i1 %i.bzj)
  %i.bzk = icmp eq i32 %.sroa.01627.0, 28
  %i.bzl = icmp eq i8 %.sroa.61629.sroa.0.1, 1
  %or.cond2382 = select i1 %i.bzk, i1 %i.bzl, i1 false
  %spec.select = select i1 %or.cond2382, i8 %.sroa.61629.sroa.6.1, i8 2
  br label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21as_literal_value_kind.exit1197

bb.nt:                                            ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21as_literal_value_kind.exit1197
  %i.bzm = icmp ne i32 %.sroa.01636.0, 17
  call void @llvm.assume(i1 %i.bzm)
  %i.bzn = icmp ne i32 %.sroa.01636.0, 28
  %i.bzo = icmp ne i8 %.sroa.61638.sroa.0.1, 2
  %or.cond2383.not2605 = select i1 %i.bzn, i1 true, i1 %i.bzo
  %.not.i1208 = icmp eq i32 %.sroa.61638.sroa.6.1, 0
  %or.cond2424.a = select i1 %or.cond2383.not2605, i1 true, i1 %.not.i1208
  br i1 %or.cond2424.a, label %.thread2308, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypeE7or_elseNCNvMs3_NtNtBM_4call4bindNtB29_8Bindings20evaluate_known_casess8_0EBO_.exit.thread2325

.thread2308:                                      ; preds = %bb.nt, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21as_literal_value_kind.exit1197
  switch i32 %.sroa.01631.02972, label %bb.nu [
    i32 -1, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypeE7or_elseNCNvMs3_NtNtBM_4call4bindNtB29_8Bindings20evaluate_known_casess8_0EBO_.exit.thread
    i32 28, label %.thread2309
  ]

.thread2309:                                      ; preds = %.thread2308
  %8 = icmp ne i8 %.sroa.51632.12969, 2
  %.not.i.i1210 = icmp eq i32 %.sroa.71634.12966, 0
  %or.cond2424 = select i1 %8, i1 true, i1 %.not.i.i1210
  br i1 %or.cond2424, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypeE7or_elseNCNvMs3_NtNtBM_4call4bindNtB29_8Bindings20evaluate_known_casess8_0EBO_.exit.thread, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypeE7or_elseNCNvMs3_NtNtBM_4call4bindNtB29_8Bindings20evaluate_known_casess8_0EBO_.exit.thread2325

bb.nu:                                            ; preds = %.thread2308
  %i.bzp = icmp ne i32 %.sroa.01631.02972, 17
  call void @llvm.assume(i1 %i.bzp)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypeE7or_elseNCNvMs3_NtNtBM_4call4bindNtB29_8Bindings20evaluate_known_casess8_0EBO_.exit.thread

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypeE7or_elseNCNvMs3_NtNtBM_4call4bindNtB29_8Bindings20evaluate_known_casess8_0EBO_.exit.thread2325: ; preds = %.thread2309, %bb.nt
  %.pn3.i2332 = phi i32 [ %.sroa.81635.12963, %.thread2309 ], [ %.sroa.61638.sroa.7.1, %bb.nt ]
  %.pn5.i2331 = phi i32 [ %.sroa.71634.12966, %.thread2309 ], [ %.sroa.61638.sroa.6.1, %bb.nt ]
  %i.bzq = call { ptr, i64 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literals2_1__NtB8_17StringLiteralType5valueDNtNtBc_2db2DbEL_EBc_(i32 noundef range(i32 1, 0) %.pn5.i2331, i32 noundef %.pn3.i2332, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) ; 2 uses
  %i.bzr = extractvalue { ptr, i64 } %i.bzq, 1    ; 5 uses
  %i.bzs = icmp eq i64 %i.bzr, 0
  br i1 %i.bzs, label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess9_0Bd_.exit, label %bb.nv

bb.nv:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypeE7or_elseNCNvMs3_NtNtBM_4call4bindNtB29_8Bindings20evaluate_known_casess8_0EBO_.exit.thread2325
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !16484
  %i.bzt = call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %i.bzr, i64 noundef 1) #65, !noalias !16484 ; 2 uses
  %i.bzu = icmp eq ptr %i.bzt, null
  br i1 %i.bzu, label %bb.nw, label %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess9_0Bd_.exit

bb.nw:                                            ; preds = %bb.nv
  call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %i.bzr) #64
  unreachable

_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess9_0Bd_.exit: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypeE7or_elseNCNvMs3_NtNtBM_4call4bindNtB29_8Bindings20evaluate_known_casess8_0EBO_.exit.thread2325, %bb.nv
  %.sroa.01.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypeE7or_elseNCNvMs3_NtNtBM_4call4bindNtB29_8Bindings20evaluate_known_casess8_0EBO_.exit.thread2325 ], [ %i.bzt, %bb.nv ] ; 2 uses
  %i.bzv = extractvalue { ptr, i64 } %i.bzq, 0
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i.i, ptr nonnull readonly align 1 %i.bzv, i64 %i.bzr, i1 false)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypeE7or_elseNCNvMs3_NtNtBM_4call4bindNtB29_8Bindings20evaluate_known_casess8_0EBO_.exit.thread

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypeE7or_elseNCNvMs3_NtNtBM_4call4bindNtB29_8Bindings20evaluate_known_casess8_0EBO_.exit.thread: ; preds = %bb.nu, %.thread2309, %.thread2308, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess9_0Bd_.exit
  %.sroa.61658.0 = phi i64 [ %i.bzr, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess9_0Bd_.exit ], [ undef, %bb.nu ], [ undef, %.thread2308 ], [ undef, %.thread2309 ] ; 3 uses
  %.sroa.01657.0 = phi ptr [ %.sroa.01.0.i.i, %_RNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_8Bindings20evaluate_known_casess9_0Bd_.exit ], [ null, %bb.nu ], [ null, %.thread2308 ], [ null, %.thread2309 ] ; 4 uses
  %.not534 = icmp eq i32 %.sroa.01640.0, -1
  br i1 %.not534, label %bb.pz, label %bb.nx

bb.nx:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypeE7or_elseNCNvMs3_NtNtBM_4call4bindNtB29_8Bindings20evaluate_known_casess8_0EBO_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.41989.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61642, i64 12, i1 false)
  store i32 %.sroa.01640.0, ptr %i.ef, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !16485)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !16486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.wj, ptr noundef nonnull readonly align 4 dereferenceable(12) %3, i64 12, i1 false), !noalias !16487
  store i64 0, ptr %i.bw, align 8, !alias.scope !16488, !noalias !16486
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i1212, align 8, !alias.scope !16488, !noalias !16486
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i1213, align 8, !alias.scope !16488, !noalias !16486
  store ptr %1, ptr %i.wk, align 8, !alias.scope !16488, !noalias !16486
  store ptr %2, ptr %i.wl, align 8, !alias.scope !16488, !noalias !16486
  store i8 1, ptr %i.wm, align 4, !alias.scope !16488, !noalias !16486
  store i8 0, ptr %i.wn, align 1, !alias.scope !16488, !noalias !16486
  store i8 1, ptr %i.wo, align 2, !alias.scope !16488, !noalias !16486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !16486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.wp, ptr noundef nonnull readonly align 4 dereferenceable(12) %3, i64 12, i1 false), !noalias !16489
  store i64 0, ptr %i.bv, align 8, !alias.scope !16490, !noalias !16486
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i44.i, align 8, !alias.scope !16490, !noalias !16486
  store i64 0, ptr %.sroa.5.0..sroa_idx.i45.i, align 8, !alias.scope !16490, !noalias !16486
  store ptr %1, ptr %i.wq, align 8, !alias.scope !16490, !noalias !16486
  store ptr %2, ptr %i.wr, align 8, !alias.scope !16490, !noalias !16486
  store i8 1, ptr %i.ws, align 4, !alias.scope !16490, !noalias !16486
  store i8 0, ptr %i.wt, align 1, !alias.scope !16490, !noalias !16486
  store i8 1, ptr %i.wu, align 2, !alias.scope !16490, !noalias !16486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !16486
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8bindings(ptr noalias noundef nonnull sret([432 x i8]) align 8 captures(address) dereferenceable(432) %i.bu, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ef, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
          to label %bb.nz unwind label %.body53.thread103.i, !noalias !16491

bb.ny:                                            ; preds = %bb.py, %.body53.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn107.i, %bb.py ], [ %.pn.i1221, %.body53.i ] ; 2 uses
  %.sroa.028.0.i = phi i1 [ %.sroa.028.1108.i, %bb.py ], [ %.sroa.028.3.i, %.body53.i ]
  br i1 %.sroa.028.0.i, label %.thread.i, label %bb.qc

.body53.i:                                        ; preds = %.body.i1220
  br i1 %.sroa.027.2.i, label %bb.py, label %bb.ny

.body53.thread103.i:                              ; preds = %bb.nx
  %i.bzw = landingpad { ptr, i32 }
          cleanup
  br label %bb.py

.body.i1220:                                      ; preds = %bb.pr, %bb.ol, %bb.og, %.body.i.i, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit112.i
  %.pn.i1221 = phi { ptr, i32 } [ %i.cdf, %bb.pr ], [ %i.cas, %bb.ol ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.cap, %bb.og ], [ %lpad.loopexit.i, %.loopexit112.i ], [ %lpad.loopexit115.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp116.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.sroa.028.3.i = phi i1 [ false, %bb.pr ], [ false, %bb.ol ], [ false, %.body.i.i ], [ false, %bb.og ], [ %.sroa.028.4.ph.i, %.loopexit112.i ], [ true, %.loopexit.split-lp.loopexit.i ], [ false, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.sroa.027.2.i = phi i1 [ true, %bb.pr ], [ false, %bb.ol ], [ false, %.body.i.i ], [ false, %bb.og ], [ %.sroa.027.3.ph.i, %.loopexit112.i ], [ true, %.loopexit.split-lp.loopexit.i ], [ false, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_(ptr noalias noundef align 8 dereferenceable(432) %i.bu) #62
          to label %.body53.i unwind label %bb.px, !noalias !16486

.loopexit112.i:                                   ; preds = %bb.pu, %bb.pt, %bb.pp, %bb.pn, %bb.pm, %bb.pl, %bb.ph, %bb.pg, %bb.pd, %bb.pc, %bb.ox
  %.sroa.028.4.ph.i = phi i1 [ true, %bb.ox ], [ true, %bb.pt ], [ true, %bb.pu ], [ true, %bb.pl ], [ true, %bb.pn ], [ false, %bb.pm ], [ true, %bb.pp ], [ true, %bb.pc ], [ false, %bb.pd ], [ true, %bb.pg ], [ true, %bb.ph ]
  %.sroa.027.3.ph.i = phi i1 [ true, %bb.ox ], [ true, %bb.pt ], [ false, %bb.pu ], [ true, %bb.pl ], [ true, %bb.pn ], [ true, %bb.pm ], [ false, %bb.pp ], [ true, %bb.pc ], [ true, %bb.pd ], [ true, %bb.pg ], [ false, %bb.ph ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1220

.loopexit.split-lp.loopexit.i:                    ; preds = %.noexc.i1222, %bb.ot, %bb.os
  %lpad.loopexit115.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1220

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.ok, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit3.i.i
  %lpad.loopexit.split-lp116.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1220

bb.nz:                                            ; preds = %bb.nx
  %i.bzx = load i64, ptr %i.ww, align 8, !alias.scope !16492, !noalias !16486, !noundef !45 ; 2 uses
  %i.bzy = icmp ugt i64 %i.bzx, 1                 ; 2 uses
  %i.bzz = load ptr, ptr %i.wv, align 8, !alias.scope !16492, !noalias !16486, !nonnull !45
  %i.caa = load i64, ptr %i.wx, align 8, !alias.scope !16492, !noalias !16486
  %.sink10.i.i.i1214 = select i1 %i.bzy, ptr %i.bzz, ptr %i.wv ; 2 uses
  %.sink9.i.i.i1215 = select i1 %i.bzy, i64 %i.caa, i64 %i.bzx
  %i.cab = getelementptr inbounds nuw [384 x i8], ptr %.sink10.i.i.i1214, i64 %.sink9.i.i.i1215
  br label %.loopexit.i1227.outer

.loopexit.i1227.outer:                            ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.thread98.i, %bb.nz
  %.sroa.11.0.i.ph = phi i64 [ undef, %bb.nz ], [ %.sroa.11.1.i.lcssa, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.thread98.i ]
  %.sroa.7.0.i.ph = phi ptr [ null, %bb.nz ], [ %i.cbg, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.thread98.i ]
  %.sroa.069.0.i.ph = phi ptr [ %.sink10.i.i.i1214, %bb.nz ], [ %.sroa.069.1.i.lcssa, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.thread98.i ]
  %.sroa.0.0.i1217.ph = phi i1 [ false, %bb.nz ], [ %.sroa.0.2.i, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.thread98.i ] ; 2 uses
  br label %.loopexit.i1227

.loopexit.i1227:                                  ; preds = %.loopexit.i1227.outer, %bb.ou
  %.sroa.11.0.i = phi i64 [ %.sroa.11.1.i.lcssa, %bb.ou ], [ %.sroa.11.0.i.ph, %.loopexit.i1227.outer ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.cbg, %bb.ou ], [ %.sroa.7.0.i.ph, %.loopexit.i1227.outer ] ; 3 uses
  %.sroa.069.0.i = phi ptr [ %.sroa.069.1.i.lcssa, %bb.ou ], [ %.sroa.069.0.i.ph, %.loopexit.i1227.outer ] ; 2 uses
  %i.cac = inttoptr i64 %.sroa.11.0.i to ptr
  %.not.i.i.i12182584 = icmp eq ptr %.sroa.7.0.i, null
  %i.cad = icmp eq ptr %.sroa.7.0.i, %i.cac
  %or.cond131.i2585 = select i1 %.not.i.i.i12182584, i1 true, i1 %i.cad
  br i1 %or.cond131.i2585, label %select.unfold.i.i, label %bb.or

select.unfold.i.i:                                ; preds = %.loopexit.i1227, %bb.oa
  %.sroa.069.1.i2586 = phi ptr [ %i.caf, %bb.oa ], [ %.sroa.069.0.i, %.loopexit.i1227 ] ; 5 uses
  %i.cae = icmp eq ptr %.sroa.069.1.i2586, %i.cab
  br i1 %i.cae, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %select.unfold.i.i
  %i.caf = getelementptr inbounds nuw i8, ptr %.sroa.069.1.i2586, i64 384 ; 2 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %.sroa.069.1.i2586, i64 16
  %i.cah = load i64, ptr %i.cag, align 8, !alias.scope !16493, !noalias !16494, !noundef !45 ; 2 uses
  %i.cai = icmp ugt i64 %i.cah, 1                 ; 2 uses
  %i.caj = getelementptr inbounds nuw i8, ptr %.sroa.069.1.i2586, i64 32
  %i.cak = load i64, ptr %i.caj, align 8, !alias.scope !16493, !noalias !16494
  %.sink9.i.i.i.i.i.i.i = select i1 %i.cai, i64 %i.cak, i64 %i.cah ; 2 uses
  %i.cal = icmp eq i64 %.sink9.i.i.i.i.i.i.i, 0
  br i1 %i.cal, label %select.unfold.i.i, label %._crit_edge

bb.ob:                                            ; preds = %select.unfold.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !16486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %i.bw, i64 56, i1 false), !noalias !16486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.wz, ptr noundef nonnull align 8 dereferenceable(56) %i.bv, i64 56, i1 false), !noalias !16486
  br i1 %.sroa.0.0.i1217.ph, label %bb.oj, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  store i32 -1, ptr %i.lv, align 4, !alias.scope !16485
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ax)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionElementEEB1f_.exit.i.i.i unwind label %bb.od, !noalias !16486

bb.od:                                            ; preds = %bb.oc
  %i.cam = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ax)
          to label %.body.i.i unwind label %bb.oe, !noalias !16486

bb.oe:                                            ; preds = %bb.od
  %i.can = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63, !noalias !16486
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionElementEEB1f_.exit.i.i.i: ; preds = %bb.oc
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ax)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit.i.i unwind label %bb.of, !noalias !16486

bb.of:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionElementEEB1f_.exit.i.i.i
  %i.cao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.of, %bb.od
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cao, %bb.of ], [ %i.cam, %bb.od ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(56) %i.wz) #62
          to label %.body.i1220 unwind label %bb.oi, !noalias !16486

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionElementEEB1f_.exit.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.wz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit3.i.i unwind label %bb.og, !noalias !16486

bb.og:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit.i.i
  %i.cap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.wz)
          to label %.body.i1220 unwind label %bb.oh, !noalias !16486

bb.oh:                                            ; preds = %bb.og
  %i.caq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63, !noalias !16486
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit3.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.wz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBL_8Bindings20evaluate_known_casessa_0s1_0EBR_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !16486

bb.oi:                                            ; preds = %.body.i.i
  %i.car = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63, !noalias !16486
  unreachable

bb.oj:                                            ; preds = %bb.ob
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !16486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !16486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.av, ptr noundef nonnull align 8 dereferenceable(112) %i.ax, i64 112, i1 false), !noalias !16486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !16495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !16495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.as, ptr noundef nonnull align 8 dereferenceable(56) %i.bw, i64 56, i1 false), !noalias !16486
  invoke void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder5build(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.at, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.as)
          to label %bb.ok unwind label %bb.ol, !noalias !16495

bb.ok:                                            ; preds = %bb.oj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !16495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !16495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.bv, i64 56, i1 false), !noalias !16486
  invoke void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder5build(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.xa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ar)
          to label %bb.oq unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !16486

bb.ol:                                            ; preds = %bb.oj
  %i.cas = landingpad { ptr, i32 }
          cleanup
  %i.cat = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(56) %i.cat) #62
end_hunk_3
begin_hunk_4_@_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings20evaluate_known_cases:bb.a
  %.idx3283 = mul nuw nsw i64 %i.ccl, 72
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.cco, i64 %.idx3283
  %i.ccs = icmp eq i64 %i.ccl, 0
  br i1 %i.ccs, label %._crit_edge3276, label %.lr.ph3275

bb.pa:                                            ; preds = %.lr.ph3275
  %i.cct = getelementptr inbounds nuw i8, ptr %i.ccv, i64 72 ; 2 uses
  %i.ccu = icmp eq ptr %i.cct, %i.ccr
  br i1 %i.ccu, label %._crit_edge3276, label %.lr.ph3275

.lr.ph3275:                                       ; preds = %._crit_edge.i1226, %bb.pa
  %i.ccv = phi ptr [ %i.cct, %bb.pa ], [ %i.cco, %._crit_edge.i1226 ] ; 3 uses
  %i.ccw = load i64, ptr %i.ccv, align 8, !range !66, !alias.scope !16504, !noalias !16505, !noundef !45
  %.not.i.i64.i = icmp eq i64 %i.ccw, 2
  br i1 %.not.i.i64.i, label %bb.pk, label %bb.pa

bb.pb:                                            ; preds = %bb.oz
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.ccp, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.br, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ccx, i64 16, i1 false), !alias.scope !16506, !noalias !16486
  %.not37.i = icmp eq i32 %.pn5.i.i, 0            ; 2 uses
  br i1 %.not37.i, label %bb.pd, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !16486
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type20apply_specialization(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.bq, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.br, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %.pn5.i.i, i32 noundef %.pn3.i.i)
          to label %bb.pe unwind label %.loopexit112.i, !noalias !16486

bb.pd:                                            ; preds = %bb.pe, %bb.pb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !16486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !16486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 8 dereferenceable(56) %i.bw, i64 56, i1 false), !noalias !16486
  invoke void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder3add(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bp, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.bo, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.br)
          to label %bb.pf unwind label %.loopexit112.i, !noalias !16486

bb.pe:                                            ; preds = %bb.pc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.br, ptr noundef nonnull align 4 dereferenceable(16) %i.bq, i64 16, i1 false), !noalias !16486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !16486
  br label %bb.pd

bb.pf:                                            ; preds = %bb.pd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !16486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bw, ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i64 56, i1 false), !noalias !16486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !16486
  br i1 %.not37.i, label %bb.ph, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !16486
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type20apply_specialization(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.bn, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bs, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %.pn5.i.i, i32 noundef %.pn3.i.i)
          to label %bb.pi unwind label %.loopexit112.i, !noalias !16486

bb.ph:                                            ; preds = %bb.pi, %bb.pf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !16486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !16486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef nonnull align 8 dereferenceable(56) %i.bv, i64 56, i1 false), !noalias !16486
  invoke void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder3add(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.bl, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bs)
          to label %bb.pj unwind label %.loopexit112.i, !noalias !16486

bb.pi:                                            ; preds = %bb.pg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bs, ptr noundef nonnull align 4 dereferenceable(16) %i.bn, i64 16, i1 false), !noalias !16486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !16486
  br label %bb.ph

bb.pj:                                            ; preds = %bb.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !16486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bv, ptr noundef nonnull align 8 dereferenceable(56) %i.bm, i64 56, i1 false), !noalias !16486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !16486
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.thread98.i

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.thread98.i: ; preds = %bb.pw, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.i, %bb.pq, %._crit_edge3276, %bb.pj
  %.sroa.0.2.i = phi i1 [ true, %bb.pj ], [ true, %bb.pq ], [ true, %bb.pw ], [ %.sroa.0.1130.i, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.i ], [ %.sroa.0.1130.i, %._crit_edge3276 ] ; 2 uses
  %i.ccy = icmp eq ptr %i.cca, %i.cbz
  br i1 %i.ccy, label %.loopexit.i1227.outer, label %bb.ov

._crit_edge3276:                                  ; preds = %bb.pa, %._crit_edge.i1226
  %i.ccz = getelementptr inbounds nuw i8, ptr %.val.i1225, i64 32
  %i.cda = load i32, ptr %i.ccz, align 8, !range !67, !noalias !16486, !noundef !45
  switch i32 %i.cda, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.thread98.i [
    i32 1, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.thread.i
    i32 4, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.i
  ]

bb.pk:                                            ; preds = %.lr.ph3275
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.ccv, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cdb, i64 16, i1 false), !alias.scope !16507, !noalias !16486
  %.not36.i = icmp eq i32 %.pn5.i.i, 0
  br i1 %.not36.i, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !16486
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type20apply_specialization(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.bj, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bk, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %.pn5.i.i, i32 noundef %.pn3.i.i)
          to label %bb.pn unwind label %.loopexit112.i, !noalias !16486

bb.pm:                                            ; preds = %bb.po, %bb.pk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !16486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !16486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef nonnull align 8 dereferenceable(56) %i.bw, i64 56, i1 false), !noalias !16486
  invoke void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder3add(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.bg, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bk)
          to label %bb.pp unwind label %.loopexit112.i, !noalias !16486

bb.pn:                                            ; preds = %bb.pl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bk, ptr noundef nonnull align 4 dereferenceable(16) %i.bj, i64 16, i1 false), !noalias !16486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !16486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !16486
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type20apply_specialization(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.bi, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bs, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %.pn5.i.i, i32 noundef %.pn3.i.i)
          to label %bb.po unwind label %.loopexit112.i, !noalias !16486

bb.po:                                            ; preds = %bb.pn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bs, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, i64 16, i1 false), !noalias !16486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !16486
  br label %bb.pm

bb.pp:                                            ; preds = %bb.pm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !16486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bw, ptr noundef nonnull align 8 dereferenceable(56) %i.bh, i64 56, i1 false), !noalias !16486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !16486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !16486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !16486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %i.bv, i64 56, i1 false), !noalias !16486
  invoke void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder3add(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.be, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bs)
          to label %bb.pq unwind label %.loopexit112.i, !noalias !16486

bb.pq:                                            ; preds = %bb.pp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !16486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bv, ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i64 56, i1 false), !noalias !16486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !16486
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.thread98.i

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.i: ; preds = %._crit_edge3276
  %i.cdc = getelementptr inbounds nuw i8, ptr %.val.i1225, i64 36
  %i.cdd = load i32, ptr %i.cdc, align 4, !noalias !16486, !noundef !45
  %i.cde = icmp eq i32 %i.cdd, 0
  br i1 %i.cde, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.thread.i, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.thread98.i

bb.pr:                                            ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.thread.i
  %i.cdf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1220

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.thread.i: ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.i, %._crit_edge3276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !16486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !16486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bc, ptr noundef nonnull align 8 dereferenceable(56) %i.bw, i64 56, i1 false), !noalias !16486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !16486
  store i32 1, ptr %i.wy, align 4, !alias.scope !16508, !noalias !16486
  store i32 4, ptr %i.bb, align 4, !alias.scope !16508, !noalias !16486
  invoke void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder3add(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.bc, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bb)
          to label %bb.ps unwind label %bb.pr, !noalias !16486

bb.ps:                                            ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !16486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !16486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bw, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !noalias !16486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !16486
  %.not35.i1228 = icmp eq i32 %.pn5.i.i, 0
  br i1 %.not35.i1228, label %bb.pu, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !16486
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type20apply_specialization(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.ba, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bs, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %.pn5.i.i, i32 noundef %.pn3.i.i)
          to label %bb.pv unwind label %.loopexit112.i, !noalias !16486

bb.pu:                                            ; preds = %bb.pv, %bb.ps
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !16486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !16486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ay, ptr noundef nonnull align 8 dereferenceable(56) %i.bv, i64 56, i1 false), !noalias !16486
  invoke void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder3add(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ay, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bs)
          to label %bb.pw unwind label %.loopexit112.i, !noalias !16486

bb.pv:                                            ; preds = %bb.pt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bs, ptr noundef nonnull align 4 dereferenceable(16) %i.ba, i64 16, i1 false), !noalias !16486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !16486
  br label %bb.pu

bb.pw:                                            ; preds = %bb.pu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !16486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bv, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !noalias !16486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !16486
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit.thread98.i

bb.px:                                            ; preds = %.thread.i, %bb.py, %.body.i1220
  %i.cdg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63, !noalias !16486
  unreachable

bb.py:                                            ; preds = %.body53.thread103.i, %.body53.i
  %.sroa.028.1108.i = phi i1 [ true, %.body53.thread103.i ], [ %.sroa.028.3.i, %.body53.i ]
  %.pn.pn107.i = phi { ptr, i32 } [ %i.bzw, %.body53.thread103.i ], [ %.pn.i1221, %.body53.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(56) %i.bv) #62
          to label %bb.ny unwind label %bb.px, !noalias !16486

.thread.i:                                        ; preds = %bb.ny
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(56) %i.bw) #62
          to label %bb.qc unwind label %bb.px, !noalias !16486

bb.pz:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal17StringLiteralTypeE7or_elseNCNvMs3_NtNtBM_4call4bindNtB29_8Bindings20evaluate_known_casess8_0EBO_.exit.thread
  store i32 -1, ptr %i.lv, align 4
  br label %bb.qa

bb.qa:                                            ; preds = %bb.qb, %bb.pz
  %i.cdh = call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instances4_1__NtB8_13FieldInstance3newDNtNtBc_2db2DbEL_INtNtCs4NRVxsYgnAr_4core6option6OptionNtBa_4TypeEbIB1R_bEIB1R_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB1R_TB2s_B2s_EENtNtNtBa_9dedicated8pydantic13ConfigBooleanEBc_(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.lw, i1 noundef zeroext %.sroa.0113.0, i8 noundef %.sroa.0115.0, ptr noalias noundef %.sroa.01657.0, i64 %.sroa.61658.0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.lv, i8 noundef %.sroa.0.0.i1172) ; 2 uses
  %i.cdi = extractvalue { i32, i32 } %i.cdh, 0
  %i.cdj = extractvalue { i32, i32 } %i.cdh, 1
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.aco, i64 128
  store i32 21, ptr %i.cdk, align 8, !alias.scope !16509
  %.sroa.41665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aco, i64 132
  store i32 7, ptr %.sroa.41665.0..sroa_idx, align 4, !alias.scope !16509
  %.sroa.51666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aco, i64 136
  store i32 %i.cdi, ptr %.sroa.51666.0..sroa_idx, align 8, !alias.scope !16509
  %.sroa.61667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aco, i64 140
  store i32 %i.cdj, ptr %.sroa.61667.0..sroa_idx, align 4, !alias.scope !16509
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61642)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61625)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61614)
  br label %.backedge

bb.qb:                                            ; preds = %bb.op, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !16486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !16486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !16486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  br label %bb.qa

bb.qc:                                            ; preds = %.thread.i, %bb.oo, %bb.on, %bb.ny
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.cav, %bb.oo ], [ %i.cav, %bb.on ], [ %.pn.pn.pn.i, %bb.ny ], [ %.pn.pn.pn.i, %.thread.i ] ; 2 uses
  %i.cdl = icmp eq ptr %.sroa.01657.0, null
  %i.cdm = icmp eq i64 %.sroa.61658.0, 0
  %or.cond.i = or i1 %i.cdm, %i.cdl
  br i1 %or.cond.i, label %common.resume, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01657.0) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01657.0, i64 noundef range(i64 1, 0) %.sroa.61658.0, i64 noundef 1) #65
  br label %common.resume

bb.qe:                                            ; preds = %bb.ah
  %i.cdn = load i32, ptr %i.tr, align 4, !range !53, !noundef !45 ; 9 uses
  %i.cdo = load i32, ptr %i.ts, align 4, !noundef !45 ; 9 uses
  %i.cdp = call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method1__NtB8_15BoundMethodType8functionDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.adk, i32 noundef %i.adl, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) ; 2 uses
  %i.cdq = extractvalue { i32, i32 } %i.cdp, 0
  %i.cdr = extractvalue { i32, i32 } %i.cdp, 1
  %i.cds = call noundef nonnull align 8 ptr @_RNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB6_12FunctionType4name(i32 noundef %i.cdq, i32 noundef %i.cdr, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) ; 4 uses
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.cds, i64 15
  %i.cdu = load i8, ptr %i.cdt, align 1, !range !57, !alias.scope !16510, !noundef !45 ; 3 uses
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cds, i64 8
  %i.cdw = load i64, ptr %i.cdv, align 8, !alias.scope !16510, !noundef !45
  %i.cdx = and i64 %i.cdw, 72057594037927935
  %i.cdy = icmp ult i8 %i.cdu, -48
  %i.cdz = zext i8 %i.cdu to i64
  %i.cea = add nsw i64 %i.cdz, -192
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.cea, i64 16)
  %.sroa.0.0.i1234 = select i1 %i.cdy, i64 %spec.store.select.i, i64 %i.cdx
  %i.ceb = icmp ugt i8 %i.cdu, -49
  %i.cec = load ptr, ptr %i.cds, align 8, !alias.scope !16510
  %.sroa.01.0.i = select i1 %i.ceb, ptr %i.cec, ptr %i.cds ; 6 uses
  switch i64 %.sroa.0.0.i1234, label %bb.ql [
    i64 6, label %bb.qg
    i64 7, label %bb.qk
  ]

bb.qf:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mg)
  br label %.backedge

bb.qg:                                            ; preds = %bb.qe
  %i.ced = load i32, ptr %.sroa.01.0.i, align 1
  %i.cee = xor i32 %i.ced, 1953785203
  %i.cef = getelementptr i8, ptr %.sroa.01.0.i, i64 4
  %i.ceg = load i16, ptr %i.cef, align 1
  %i.ceh = zext i16 %i.ceg to i32
  %i.cei = xor i32 %i.ceh, 29285
  %i.cej = or i32 %i.cee, %i.cei
  %i.cek = icmp ne i32 %i.cej, 0
  %i.cel = zext i1 %i.cek to i32
  %i.cem = icmp eq i32 %i.cel, 0
  br i1 %i.cem, label %bb.qh, label %bb.qi

bb.qh:                                            ; preds = %bb.qg
  %i.cen = getelementptr i8, ptr %i.aco, i64 160
  %.val608 = load ptr, ptr %i.cen, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %i.ceo = getelementptr i8, ptr %i.aco, i64 168
  %.val609 = load i64, ptr %i.ceo, align 8, !noundef !45
  %i.cep = icmp eq i64 %.val609, 2
  br i1 %i.cep, label %bb.qt, label %bb.ql

bb.qi:                                            ; preds = %bb.qg
  %i.ceq = load i32, ptr %.sroa.01.0.i, align 1
  %i.cer = xor i32 %i.ceq, 1953785191
  %i.ces = getelementptr i8, ptr %.sroa.01.0.i, i64 4
  %i.cet = load i16, ptr %i.ces, align 1
  %i.ceu = zext i16 %i.cet to i32
  %i.cev = xor i32 %i.ceu, 29285
  %i.cew = or i32 %i.cer, %i.cev
  %i.cex = icmp ne i32 %i.cew, 0
  %i.cey = zext i1 %i.cex to i32
  %i.cez = icmp eq i32 %i.cey, 0
  br i1 %i.cez, label %bb.qj, label %bb.ql

bb.qj:                                            ; preds = %bb.qi
  %i.cfa = getelementptr i8, ptr %i.aco, i64 160
  %.val606 = load ptr, ptr %i.cfa, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %i.cfb = getelementptr i8, ptr %i.aco, i64 168
  %.val607 = load i64, ptr %i.cfb, align 8, !noundef !45
  %i.cfc = icmp eq i64 %.val607, 2
  br i1 %i.cfc, label %bb.qq, label %bb.ql

bb.qk:                                            ; preds = %bb.qe
  %i.cfd = load i32, ptr %.sroa.01.0.i, align 1
  %i.cfe = xor i32 %i.cfd, 1701602660
  %i.cff = getelementptr i8, ptr %.sroa.01.0.i, i64 3
  %i.cfg = load i32, ptr %i.cff, align 1
  %i.cfh = xor i32 %i.cfg, 1919251557
  %i.cfi = or i32 %i.cfe, %i.cfh
  %i.cfj = icmp ne i32 %i.cfi, 0
  %i.cfk = zext i1 %i.cfj to i32
  %i.cfl = icmp eq i32 %i.cfk, 0
  br i1 %i.cfl, label %bb.qm, label %bb.ql

.sink.split:                                      ; preds = %bb.qp, %bb.qs, %bb.qv
  %.pn3120 = phi { i32, i32 } [ %i.cgb, %bb.qv ], [ %i.cfx, %bb.qs ], [ %i.cft, %bb.qp ] ; 2 uses
  %.sink = extractvalue { i32, i32 } %.pn3120, 1
  %.sink3115 = extractvalue { i32, i32 } %.pn3120, 0
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.aco, i64 128
  store i32 22, ptr %i.cfm, align 8
  %.sroa.41600.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aco, i64 132
  store i32 %.sink3115, ptr %.sroa.41600.0..sroa_idx, align 4
  %.sroa.51601.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aco, i64 136
  store i32 %.sink, ptr %.sroa.51601.0..sroa_idx, align 8
  br label %bb.ql

bb.ql:                                            ; preds = %.sink.split, %bb.qi, %bb.qe, %bb.qu, %bb.qt, %bb.qr, %bb.qq, %bb.qo, %bb.qn, %bb.qm, %bb.qk, %bb.qj, %bb.qh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mg)
  br label %.backedge

bb.qm:                                            ; preds = %bb.qk
  %i.cfn = getelementptr i8, ptr %i.aco, i64 160
  %.val604 = load ptr, ptr %i.cfn, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %i.cfo = getelementptr i8, ptr %i.aco, i64 168
  %.val605 = load i64, ptr %i.cfo, align 8, !noundef !45
  %i.cfp = icmp eq i64 %.val605, 2
  br i1 %i.cfp, label %bb.qn, label %bb.ql

bb.qn:                                            ; preds = %bb.qm
  %i.cfq = load i32, ptr %.val604, align 4, !range !59, !noundef !45
  %.not458 = icmp eq i32 %i.cfq, -1
  br i1 %.not458, label %bb.ql, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.cfr = getelementptr inbounds nuw i8, ptr %.val604, i64 16 ; 2 uses
  %i.cfs = load i32, ptr %i.cfr, align 4, !range !59, !noundef !45
  %.not459 = icmp eq i32 %i.cfs, -1
  br i1 %.not459, label %bb.ql, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lz)
  call void @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess6_1__NtB8_20PropertyInstanceType6getterDNtNtBa_2db2DbEL_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.lz, i32 noundef %i.cdn, i32 noundef %i.cdo, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ly)
  call void @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess6_1__NtB8_20PropertyInstanceType6setterDNtNtBa_2db2DbEL_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ly, i32 noundef %i.cdn, i32 noundef %i.cdo, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lx, ptr noundef nonnull align 4 dereferenceable(16) %i.cfr, i64 16, i1 false)
  %i.cft = call { i32, i32 } @_RNvMsd_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_20PropertyInstanceType14with_accessors(i32 noundef %i.cdn, i32 noundef %i.cdo, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.lz, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.ly, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.lx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ly)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lz)
  br label %.sink.split

bb.qq:                                            ; preds = %bb.qj
  %i.cfu = load i32, ptr %.val606, align 4, !range !59, !noundef !45
  %.not462 = icmp eq i32 %i.cfu, -1
  br i1 %.not462, label %bb.ql, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  %i.cfv = getelementptr inbounds nuw i8, ptr %.val606, i64 16 ; 2 uses
  %i.cfw = load i32, ptr %i.cfv, align 4, !range !59, !noundef !45
  %.not463 = icmp eq i32 %i.cfw, -1
  br i1 %.not463, label %bb.ql, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mc, ptr noundef nonnull align 4 dereferenceable(16) %i.cfv, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mb)
  call void @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess6_1__NtB8_20PropertyInstanceType6setterDNtNtBa_2db2DbEL_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.mb, i32 noundef %i.cdn, i32 noundef %i.cdo, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ma)
  call void @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess6_1__NtB8_20PropertyInstanceType7deleterDNtNtBa_2db2DbEL_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ma, i32 noundef %i.cdn, i32 noundef %i.cdo, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  %i.cfx = call { i32, i32 } @_RNvMsd_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_20PropertyInstanceType14with_accessors(i32 noundef %i.cdn, i32 noundef %i.cdo, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.mc, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.mb, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.ma)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ma)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mc)
  br label %.sink.split

bb.qt:                                            ; preds = %bb.qh
  %i.cfy = load i32, ptr %.val608, align 4, !range !59, !noundef !45
  %.not464 = icmp eq i32 %i.cfy, -1
  br i1 %.not464, label %bb.ql, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  %i.cfz = getelementptr inbounds nuw i8, ptr %.val608, i64 16 ; 2 uses
  %i.cga = load i32, ptr %i.cfz, align 4, !range !59, !noundef !45
  %.not465 = icmp eq i32 %i.cga, -1
  br i1 %.not465, label %bb.ql, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mf)
  call void @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess6_1__NtB8_20PropertyInstanceType6getterDNtNtBa_2db2DbEL_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.mf, i32 noundef %i.cdn, i32 noundef %i.cdo, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.me)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.me, ptr noundef nonnull align 4 dereferenceable(16) %i.cfz, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.md)
  call void @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess6_1__NtB8_20PropertyInstanceType7deleterDNtNtBa_2db2DbEL_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.md, i32 noundef %i.cdn, i32 noundef %i.cdo, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  %i.cgb = call { i32, i32 } @_RNvMsd_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_20PropertyInstanceType14with_accessors(i32 noundef %i.cdn, i32 noundef %i.cdo, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.mf, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.me, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.md)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.md)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.me)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mf)
  br label %.sink.split

bb.qw:                                            ; preds = %bb.xs, %bb.xc
  unreachable

bb.qx:                                            ; preds = %bb.ai
  %i.cgc = load i32, ptr %i.pv, align 4, !range !53, !noundef !45 ; 7 uses
  %i.cgd = load i32, ptr %i.qo, align 4, !noundef !45 ; 7 uses
  %i.cge = call noundef zeroext i1 @_RNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB6_12FunctionType14is_classmethod(i32 noundef %i.cgc, i32 noundef %i.cgd, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  br i1 %i.cge, label %bb.rp, label %bb.ro

bb.qy:                                            ; preds = %bb.ai
  %i.cgf = load i32, ptr %i.pv, align 4, !range !53, !noundef !45 ; 3 uses
  %i.cgg = load i32, ptr %i.qo, align 4, !noundef !45 ; 3 uses
  %i.cgh = getelementptr i8, ptr %i.aco, i64 160
  %.val602 = load ptr, ptr %i.cgh, align 8, !nonnull !45, !noundef !45 ; 3 uses
  %i.cgi = getelementptr i8, ptr %i.aco, i64 168
  %.val603 = load i64, ptr %i.cgi, align 8, !noundef !45
  %.not450 = icmp eq i64 %.val603, 0
  br i1 %.not450, label %.backedge, label %bb.sa

end_hunk_4
begin_hunk_5_@_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings20evaluate_known_cases:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16651
  br label %.noexc1459

.noexc1459:                                       ; preds = %bb.ael, %.noexc1461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !16651
  br label %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings22functools_partial_type.exit

_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings22functools_partial_type.exit: ; preds = %.noexc1459, %.noexc1458.a
  br i1 %i.diq, label %bb.aen, label %bb.aeo

bb.aen:                                           ; preds = %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings22functools_partial_type.exit
  %.val.i1359 = load i32, ptr %i.ac, align 4, !range !69, !noalias !16614, !noundef !45 ; 5 uses
  %i.dlb = icmp ne i32 %.val.i1359, 17
  call void @llvm.assume(i1 %i.dlb)
  %i.dlc = add nsw i32 %.val.i1359, -4
  %i.dld = icmp samesign ugt i32 %.val.i1359, 3
  %narrow.i1437 = select i1 %i.dld, i32 %i.dlc, i32 13
  switch i32 %narrow.i1437, label %.sink.split3119 [
    i32 1, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit1440
    i32 2, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit1440.thread
  ]

.sink.split3119:                                  ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit1440, %bb.aen, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit1440.thread
  %.sroa.62064.0..sroa_idx2066.sink = phi ptr [ %.sroa.62064.0..sroa_idx2066, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit1440.thread ], [ %.sroa.62064.0..sroa_idx2065, %bb.aen ], [ %.sroa.62064.0..sroa_idx2065, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit1440 ]
  %.sroa.02061.0.ph = phi i32 [ %.sroa.02061.0.copyload2063, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit1440.thread ], [ %.val.i1359, %bb.aen ], [ %.val.i1359, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit1440 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.62064, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.62064.0..sroa_idx2066.sink, i64 12, i1 false), !noalias !16614
  br label %bb.aeo

bb.aeo:                                           ; preds = %.sink.split3119, %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings22functools_partial_type.exit
  %.sroa.02061.0 = phi i32 [ %.sroa.02061.0.copyload, %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings22functools_partial_type.exit ], [ %.sroa.02061.0.ph, %.sink.split3119 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.81947, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.62064, i64 12, i1 false), !noalias !16669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !16614
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.ph)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i unwind label %bb.aep, !noalias !16647

bb.aep:                                           ; preds = %bb.aeo
  %i.dle = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load ptr, ptr %i.pt, align 8, !alias.scope !16670, !noalias !16647, !align !49, !noundef !45 ; 3 uses
  %.val3.i = load i64, ptr %i.pu, align 8, !alias.scope !16670, !noalias !16647 ; 2 uses
  %i.dlf = icmp eq ptr %.val2.i, null
  %i.dlg = icmp eq i64 %.val3.i, 0
  %or.cond.i.i = select i1 %i.dlf, i1 true, i1 %i.dlg
  br i1 %or.cond.i.i, label %.body1435, label %bb.aeq

bb.aeq:                                           ; preds = %bb.aep
  %i.dlh = mul nuw nsw i64 %.val3.i, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ], !noalias !16647
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, 0) %i.dlh, i64 noundef 4) #65, !noalias !16647
  br label %.body1435

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i: ; preds = %bb.aeo
  %.val.i1433 = load ptr, ptr %i.pt, align 8, !alias.scope !16670, !noalias !16647, !align !49, !noundef !45 ; 3 uses
  %.val1.i1434 = load i64, ptr %i.pu, align 8, !alias.scope !16670, !noalias !16647 ; 2 uses
  %i.dli = icmp eq ptr %.val.i1433, null
  %i.dlj = icmp eq i64 %.val1.i1434, 0
  %or.cond.i4.i = select i1 %i.dli, i1 true, i1 %i.dlj
  br i1 %or.cond.i4.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit, label %bb.aer

bb.aer:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i
  %i.dlk = mul nuw nsw i64 %.val1.i1434, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i1433) ], !noalias !16647
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1433, i64 noundef range(i64 1, 0) %i.dlk, i64 noundef 4) #65, !noalias !16647
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit1440: ; preds = %bb.aen
  %.val7.i = load i8, ptr %i.ps, align 4, !noalias !16614
  %spec.select.i1439 = trunc i8 %.val7.i to i1
  br i1 %spec.select.i1439, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit1440.thread, label %.sink.split3119

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit1440.thread: ; preds = %bb.aen, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit1440
  %.sroa.02061.0.copyload2063 = load i32, ptr %i.ak, align 4, !noalias !16614
  br label %.sink.split3119

.body1435:                                        ; preds = %bb.aeq, %bb.aep, %bb.aev, %.body1455, %bb.adi
  %.pn.i1357 = phi { ptr, i32 } [ %i.dir, %bb.adi ], [ %eh.lpad-body1456, %.body1455 ], [ %i.dlo, %bb.aev ], [ %i.dle, %bb.aep ], [ %i.dle, %bb.aeq ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEBJ_(ptr noalias noundef align 8 dereferenceable(24) %i.ai) #62
          to label %common.resume unwind label %bb.aeu, !noalias !16647, !inline_history !15940

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit: ; preds = %bb.aer, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !16614
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding29functools_partial_return_type.exit unwind label %bb.aes, !noalias !16647

bb.aes:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit
  %i.dll = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %common.resume unwind label %bb.aet, !noalias !16647

bb.aet:                                           ; preds = %bb.aes
  %i.dlm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63, !noalias !16647
  unreachable

bb.aeu:                                           ; preds = %bb.aev, %.body1435, %.body1455, %bb.adi
  %i.dln = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63, !noalias !16647, !inline_history !15940
  unreachable

bb.aev:                                           ; preds = %bb.adj
  %i.dlo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintSetBuilderEBH_(ptr noalias noundef align 8 dereferenceable(696) %i.ae) #62
          to label %.body1435 unwind label %bb.aeu, !noalias !16629, !inline_history !15940

_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding29functools_partial_return_type.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai), !noalias !16647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !16614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !16614
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.82057)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.62064)
  %.not368 = icmp eq i32 %.sroa.02061.0, -1
  br i1 %.not368, label %bb.agh, label %bb.agg

bb.aew:                                           ; preds = %bb.acf
  %i.dlp = load i32, ptr %.val554, align 4, !range !59, !noundef !45
  %.not374 = icmp eq i32 %i.dlp, -1
  br i1 %.not374, label %bb.aey, label %bb.aex

bb.aex:                                           ; preds = %bb.aew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey)
  %i.dlq = call noundef i8 @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types4boolNtB4_4Type4bool(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %.val554, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type15from_truthiness(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.ey, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, i8 noundef %i.dlq)
  %i.dlr = getelementptr inbounds nuw i8, ptr %i.aco, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dlr, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ey, i64 16, i1 false), !alias.scope !16671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  br label %.backedge

bb.aey:                                           ; preds = %bb.aew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type12bool_literal(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ex, i1 noundef zeroext false)
  %i.dls = getelementptr inbounds nuw i8, ptr %i.aco, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dls, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ex, i64 16, i1 false), !alias.scope !16672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  br label %.backedge

bb.aez:                                           ; preds = %bb.acg
  %i.dlt = getelementptr i8, ptr %i.aco, i64 160
  %.val550 = load ptr, ptr %i.dlt, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %i.dlu = getelementptr i8, ptr %i.aco, i64 168
  %.val551 = load i64, ptr %i.dlu, align 8, !noundef !45
  %i.dlv = icmp eq i64 %.val551, 1
  br i1 %i.dlv, label %bb.afa, label %.backedge

bb.afa:                                           ; preds = %bb.aez
  %i.dlw = load i32, ptr %.val550, align 4, !range !59, !noundef !45
  %.not373 = icmp eq i32 %i.dlw, -1
  br i1 %.not373, label %.backedge, label %bb.afb

bb.afb:                                           ; preds = %bb.afa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.et, ptr noundef nonnull align 4 dereferenceable(16) %.val550, i64 16, i1 false)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type12dunder_class(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.eu, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.et, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  %i.dlx = getelementptr inbounds nuw i8, ptr %i.aco, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dlx, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.eu, i64 16, i1 false), !alias.scope !16673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  br label %.backedge

bb.afc:                                           ; preds = %bb.ach
  %i.dly = getelementptr i8, ptr %i.aco, i64 160
  %.val548 = load ptr, ptr %i.dly, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %i.dlz = getelementptr i8, ptr %i.aco, i64 168
  %.val549 = load i64, ptr %i.dlz, align 8, !noundef !45
  %i.dma = icmp eq i64 %.val549, 1
  br i1 %i.dma, label %bb.afd, label %.backedge

bb.afd:                                           ; preds = %bb.afc
  %i.dmb = load i32, ptr %.val548, align 4, !range !59, !noundef !45
  %.not372 = icmp eq i32 %i.dmb, -1
  %i.dmc = getelementptr inbounds nuw i8, ptr %i.aco, i64 128 ; 2 uses
  br i1 %.not372, label %bb.aff, label %bb.afe

bb.afe:                                           ; preds = %bb.afd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type3str(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.ew, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %.val548, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dmc, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ew, i64 16, i1 false), !alias.scope !16674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  br label %.backedge

bb.aff:                                           ; preds = %bb.afd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  call void @_RINvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4Type14string_literalReEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ev, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dmc, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ev, i64 16, i1 false), !alias.scope !16675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  br label %.backedge

bb.afg:                                           ; preds = %bb.aci
  %i.dmd = getelementptr i8, ptr %i.aco, i64 160
  %.val546 = load ptr, ptr %i.dmd, align 8, !nonnull !45, !noundef !45 ; 4 uses
  %i.dme = getelementptr i8, ptr %i.aco, i64 168
  %.val547 = load i64, ptr %i.dme, align 8, !noundef !45
  %i.dmf = icmp eq i64 %.val547, 1
  br i1 %i.dmf, label %bb.afh, label %.backedge

bb.afh:                                           ; preds = %bb.afg
  %i.dmg = load i32, ptr %.val546, align 4, !range !59, !noundef !45 ; 2 uses
  switch i32 %i.dmg, label %bb.afj [
    i32 -1, label %.backedge
    i32 23, label %bb.afi
  ]

bb.afi:                                           ; preds = %bb.afh
  %i.dmh = getelementptr inbounds nuw i8, ptr %.val546, i64 4
  %i.dmi = load i32, ptr %i.dmh, align 4, !range !53, !noundef !45
  %i.dmj = getelementptr inbounds nuw i8, ptr %.val546, i64 8
  %i.dmk = load i32, ptr %i.dmj, align 4, !noundef !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  store ptr %1, ptr %i.eo, align 8
  store ptr %2, ptr %i.ov, align 8
  store ptr %3, ptr %i.ow, align 8
  call void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType3mapNCNvMs3_NtNtB8_4call4bindNtB1t_8Bindings20evaluate_known_casessU_0EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ep, i32 noundef %i.dmi, i32 noundef %i.dmk, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.eo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  br label %bb.afk

bb.afj:                                           ; preds = %bb.afh
  %9 = icmp ne i32 %i.dmg, 17
  call void @llvm.assume(i1 %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.em, ptr noundef nonnull align 4 dereferenceable(16) %.val546, i64 16, i1 false)
  call void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types9iterationNtB4_4Type7iterate(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.en, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.em, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  %i.dml = load i32, ptr %i.en, align 8, !range !86, !noundef !45
  %.not371 = icmp eq i32 %i.dml, -3
  %i.dmm = load ptr, ptr %.sroa.45.0..sroa_idx.i.a, align 8, !nonnull !45, !align !46
  %.sroa.0351.0 = select i1 %.not371, ptr %i.dmm, ptr %i.en
  %i.dmn = invoke { i32, i32 } @_RNvMsE_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_9TupleType3new(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0351.0)
          to label %bb.afm unwind label %bb.afl   ; 2 uses

bb.afk:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit, %bb.afi
  %i.dmo = getelementptr inbounds nuw i8, ptr %i.aco, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dmo, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ep, i64 16, i1 false), !alias.scope !16676
  br label %.backedge

bb.afl:                                           ; preds = %bb.afj
  %i.dmp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_(ptr noalias noundef align 8 dereferenceable(48) %i.en) #62
          to label %common.resume unwind label %bb.in

bb.afm:                                           ; preds = %bb.afj
  %i.dmq = extractvalue { i32, i32 } %i.dmn, 0    ; 2 uses
  %.not.i1360 = icmp eq i32 %i.dmq, 0
  br i1 %.not.i1360, label %bb.afo, label %bb.afn

bb.afn:                                           ; preds = %bb.afm
  %i.dmr = extractvalue { i32, i32 } %i.dmn, 1
  store i32 6, ptr %.sroa.56.0..sroa_idx.i.a, align 4, !alias.scope !16677
  store i32 %i.dmq, ptr %i.ox, align 4, !alias.scope !16677
  store i32 %i.dmr, ptr %i.oy, align 4, !alias.scope !16677
  br label %bb.afo

bb.afo:                                           ; preds = %bb.afn, %bb.afm
  %storemerge.i1361 = phi i32 [ 18, %bb.afn ], [ 6, %bb.afm ]
  store i32 %storemerge.i1361, ptr %i.ep, align 4, !alias.scope !16677
  call void @llvm.experimental.noalias.scope.decl(metadata !16678)
  %i.dms = load i32, ptr %i.en, align 8, !range !86, !alias.scope !16678, !noundef !45 ; 2 uses
  %i.dmt = icmp eq i32 %i.dms, -3
  br i1 %i.dmt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit, label %bb.afp

bb.afp:                                           ; preds = %bb.afo
  call void @llvm.experimental.noalias.scope.decl(metadata !16679)
  %i.dmu = icmp eq i32 %i.dms, -2
  br i1 %i.dmu, label %bb.afq, label %bb.afs

bb.afq:                                           ; preds = %bb.afp
  %.val1.i.i1362 = load i64, ptr %i.oz, align 8, !alias.scope !16680, !noundef !45 ; 2 uses
  %i.dmv = icmp eq i64 %.val1.i.i1362, 0
  br i1 %i.dmv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit, label %bb.afr

bb.afr:                                           ; preds = %bb.afq
  %.val.i.i1363 = load ptr, ptr %.sroa.45.0..sroa_idx.i.a, align 8, !alias.scope !16680, !nonnull !45, !noundef !45
  %i.dmw = shl nuw nsw i64 %.val1.i.i1362, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i1363, i64 noundef range(i64 1, 0) %i.dmw, i64 noundef 4) #65, !noalias !16680
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit

bb.afs:                                           ; preds = %bb.afp
  call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oz)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1f_4TypeNtB1d_15VariableSegmentEEEB1h_.exit: ; preds = %bb.afo, %bb.afq, %bb.afr, %bb.afs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  br label %bb.afk

bb.aft:                                           ; preds = %bb.acj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61926)
  %.sroa.01923.0.copyload = load i32, ptr %.val552, align 4 ; 3 uses
  %.sroa.61926.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val552, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61926, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61926.0..sroa_idx, i64 12, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !16681)
  call void @llvm.experimental.noalias.scope.decl(metadata !16682)
  %.not.i1364.a = icmp eq i32 %.sroa.01923.0.copyload, -1
  br i1 %.not.i1364.a, label %bb.afv, label %bb.afu

bb.afu:                                           ; preds = %bb.aft
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !16683
  store i32 %.sroa.01923.0.copyload, ptr %i.aa, align 4, !noalias !16684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61926.0..sroa_idx1927, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61926, i64 12, i1 false), !noalias !16684
  %i.dmx = call noundef zeroext i1 @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type7is_none(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.aa, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !16685
  br i1 %i.dmx, label %bb.afw, label %bb.afx

bb.afv:                                           ; preds = %bb.aft
  store i32 -1, ptr %i.es, align 4, !alias.scope !16681
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNvMs3_NtNtBK_4call4bindNtB1K_8Bindings20evaluate_known_casessR_0EBM_.exit

bb.afw:                                           ; preds = %bb.afu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !16683
  store i32 -1, ptr %i.es, align 4, !alias.scope !16681
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNvMs3_NtNtBK_4call4bindNtB1K_8Bindings20evaluate_known_casessR_0EBM_.exit

bb.afx:                                           ; preds = %bb.afu
  store i32 %.sroa.01923.0.copyload, ptr %i.es, align 4, !alias.scope !16685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61926.0..sroa_idx1928, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61926, i64 12, i1 false), !alias.scope !16685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !16683
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNvMs3_NtNtBK_4call4bindNtB1K_8Bindings20evaluate_known_casessR_0EBM_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNvMs3_NtNtBK_4call4bindNtB1K_8Bindings20evaluate_known_casessR_0EBM_.exit: ; preds = %bb.afv, %bb.afw, %bb.afx
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61926)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61932)
  %i.dmy = getelementptr inbounds nuw i8, ptr %.val552, i64 16
  %.sroa.01929.0.copyload = load i32, ptr %i.dmy, align 4 ; 3 uses
  %.sroa.61932.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val552, i64 20 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61932, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61932.0..sroa_idx, i64 12, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !16686)
  call void @llvm.experimental.noalias.scope.decl(metadata !16687)
  %.not.i1365.a = icmp eq i32 %.sroa.01929.0.copyload, -1
  br i1 %.not.i1365.a, label %bb.afz, label %bb.afy

bb.afy:                                           ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNvMs3_NtNtBK_4call4bindNtB1K_8Bindings20evaluate_known_casessR_0EBM_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !16688
  store i32 %.sroa.01929.0.copyload, ptr %i.z, align 4, !noalias !16689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61932.0..sroa_idx1933, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61932.0..sroa_idx, i64 12, i1 false)
  %i.dmz = call noundef zeroext i1 @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type7is_none(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.z, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !16690
  br i1 %i.dmz, label %bb.aga, label %bb.agb

bb.afz:                                           ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNvMs3_NtNtBK_4call4bindNtB1K_8Bindings20evaluate_known_casessR_0EBM_.exit
  store i32 -1, ptr %i.er, align 4, !alias.scope !16686
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNvMs3_NtNtBK_4call4bindNtB1K_8Bindings20evaluate_known_casessS_0EBM_.exit

bb.aga:                                           ; preds = %bb.afy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !16688
  store i32 -1, ptr %i.er, align 4, !alias.scope !16686
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNvMs3_NtNtBK_4call4bindNtB1K_8Bindings20evaluate_known_casessS_0EBM_.exit

bb.agb:                                           ; preds = %bb.afy
  store i32 %.sroa.01929.0.copyload, ptr %i.er, align 4, !alias.scope !16690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61932.0..sroa_idx1934, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61932, i64 12, i1 false), !alias.scope !16690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !16688
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNvMs3_NtNtBK_4call4bindNtB1K_8Bindings20evaluate_known_casessS_0EBM_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNvMs3_NtNtBK_4call4bindNtB1K_8Bindings20evaluate_known_casessS_0EBM_.exit: ; preds = %bb.afz, %bb.aga, %bb.agb
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61932)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61938)
  %i.dna = getelementptr inbounds nuw i8, ptr %.val552, i64 32
  %.sroa.01935.0.copyload = load i32, ptr %i.dna, align 4 ; 3 uses
  %.sroa.61938.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val552, i64 36 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61938, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61938.0..sroa_idx, i64 12, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !16691)
  call void @llvm.experimental.noalias.scope.decl(metadata !16692)
  %.not.i1366 = icmp eq i32 %.sroa.01935.0.copyload, -1
  br i1 %.not.i1366, label %bb.agd, label %bb.agc

bb.agc:                                           ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNvMs3_NtNtBK_4call4bindNtB1K_8Bindings20evaluate_known_casessS_0EBM_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !16693
  store i32 %.sroa.01935.0.copyload, ptr %i.y, align 4, !noalias !16694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61938.0..sroa_idx1939, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61938.0..sroa_idx, i64 12, i1 false)
  %i.dnb = call noundef zeroext i1 @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type7is_none(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.y, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !16695
  br i1 %i.dnb, label %bb.age, label %bb.agf

bb.agd:                                           ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNvMs3_NtNtBK_4call4bindNtB1K_8Bindings20evaluate_known_casessS_0EBM_.exit
  store i32 -1, ptr %i.eq, align 4, !alias.scope !16691
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNvMs3_NtNtBK_4call4bindNtB1K_8Bindings20evaluate_known_casessT_0EBM_.exit

bb.age:                                           ; preds = %bb.agc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !16693
  store i32 -1, ptr %i.eq, align 4, !alias.scope !16691
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNvMs3_NtNtBK_4call4bindNtB1K_8Bindings20evaluate_known_casessT_0EBM_.exit

bb.agf:                                           ; preds = %bb.agc
  store i32 %.sroa.01935.0.copyload, ptr %i.eq, align 4, !alias.scope !16695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61938.0..sroa_idx1940, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.61938, i64 12, i1 false), !alias.scope !16695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !16693
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNvMs3_NtNtBK_4call4bindNtB1K_8Bindings20evaluate_known_casessT_0EBM_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCNvMs3_NtNtBK_4call4bindNtB1K_8Bindings20evaluate_known_casessT_0EBM_.exit: ; preds = %bb.agd, %bb.age, %bb.agf
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61938)
  %i.dnc = call { i32, i32 } @_RNvMsd_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_20PropertyInstanceType3new(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.es, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.er, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.eq) ; 2 uses
  %i.dnd = extractvalue { i32, i32 } %i.dnc, 0
  %i.dne = extractvalue { i32, i32 } %i.dnc, 1
  %i.dnf = getelementptr inbounds nuw i8, ptr %i.aco, i64 128
  store i32 22, ptr %i.dnf, align 8, !alias.scope !16696
  %.sroa.41942.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aco, i64 132
  store i32 %i.dnd, ptr %.sroa.41942.0..sroa_idx, align 4, !alias.scope !16696
  %.sroa.51943.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aco, i64 136
  store i32 %i.dne, ptr %.sroa.51943.0..sroa_idx, align 8, !alias.scope !16696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  br label %.backedge

bb.agg:                                           ; preds = %_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding29functools_partial_return_type.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.62064.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.81947, i64 12, i1 false)
  store i32 %.sroa.02061.0, ptr %i.dgp, align 8, !alias.scope !16697
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.81947)
  br label %.backedge

bb.agh:                                           ; preds = %_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding29functools_partial_return_type.exit.thread, %_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding29functools_partial_return_type.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.81947)
  br label %.backedge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings20with_generic_context(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([432 x i8]) align 8 captures(none) dereferenceable(432) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(432) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, i32 noundef %4, i32 %5) unnamed_addr #2 personality ptr @rust_eh_personality !guid !16698 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings30apply_generic_context_in_place(ptr noalias noundef align 8 dereferenceable(432) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, i32 noundef %4, i32 noundef %5)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_(ptr noalias noundef align 8 dereferenceable(432) %1) #62
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(432) %1, i64 432, i1 false)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings21replace_callable_type(ptr noalias noundef align 8 dereferenceable(432) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %1, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #2 !guid !16712 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call { ptr, ptr } @_RNvXsO_Csheqz6YZvxwl_8smallvecQINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBR_(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.b) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 3 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d), "nonnull"(ptr %i.e) ]
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph9

.loopexit:                                        ; preds = %_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding21replace_callable_type.exit, %bb.e
  %i.g = icmp eq ptr %i.h, %i.e
  br i1 %i.g, label %._crit_edge, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.c, %.loopexit
  %.sroa.0.08 = phi ptr [ %i.h, %.loopexit ], [ %i.d, %bb.c ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 384 ; 2 uses
  %i.i = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %.sroa.0.08, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1)
  br i1 %i.i, label %bb.d, label %bb.e

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.08, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
end_hunk_5
