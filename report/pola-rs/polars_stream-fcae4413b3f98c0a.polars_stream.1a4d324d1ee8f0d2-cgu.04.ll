Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.04?download=true
inline.NumInlined: 7428
inline.NumDeleted: 3031
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr20lower_exprs_with_ctx0B7_:bb.a
  %i.nm = alloca [112 x i8], align 16             ; 8 uses
  %i.nn = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.61271 = alloca [16 x i8], align 8        ; 7 uses
  %i.no = alloca [16 x i8], align 8               ; 5 uses
  %i.np = alloca [24 x i8], align 8               ; 4 uses
  %i.nq = alloca [112 x i8], align 16             ; 2 uses
  %i.nr = alloca [24 x i8], align 8               ; 12 uses
  %i.ns = alloca [112 x i8], align 16             ; 8 uses
  %i.nt = alloca [144 x i8], align 16             ; 6 uses
  %i.nu = alloca [16 x i8], align 8               ; 6 uses
  %i.nv = alloca [16 x i8], align 8               ; 2 uses
  %i.nw = alloca [112 x i8], align 16             ; 8 uses
  %i.nx = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.61262 = alloca [16 x i8], align 8        ; 6 uses
  %i.ny = alloca [16 x i8], align 8               ; 2 uses
  %i.nz = alloca [112 x i8], align 16             ; 8 uses
  %i.oa = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.61253 = alloca [16 x i8], align 8        ; 6 uses
  %i.ob = alloca [112 x i8], align 16             ; 8 uses
  %i.oc = alloca [72 x i8], align 8               ; 9 uses
  %i.od = alloca [112 x i8], align 16             ; 9 uses
  %i.oe = alloca [112 x i8], align 16             ; 7 uses
  %i.of = alloca [112 x i8], align 16             ; 9 uses
  %i.og = alloca [24 x i8], align 8               ; 10 uses
  %i.oh = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.61229 = alloca [16 x i8], align 8        ; 6 uses
  %i.oi = alloca [24 x i8], align 8               ; 4 uses
  %i.oj = alloca [16 x i8], align 8               ; 2 uses
  %i.ok = alloca [16 x i8], align 8               ; 2 uses
  %i.ol = alloca [24 x i8], align 8               ; 4 uses
  %i.om = alloca [112 x i8], align 16             ; 4 uses
  %i.on = alloca [112 x i8], align 16             ; 8 uses
  %i.oo = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.61219 = alloca [16 x i8], align 8        ; 6 uses
  %i.op = alloca [24 x i8], align 8               ; 12 uses
  %i.oq = alloca [24 x i8], align 8               ; 12 uses
  %i.or = alloca [112 x i8], align 16             ; 8 uses
  %i.os = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.61206 = alloca [16 x i8], align 8        ; 6 uses
  %i.ot = alloca [16 x i8], align 8               ; 2 uses
  %i.ou = alloca [112 x i8], align 16             ; 7 uses
  %i.ov = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.61197 = alloca [16 x i8], align 8        ; 6 uses
  %i.ow = alloca [24 x i8], align 8               ; 4 uses
  %i.ox = alloca [16 x i8], align 8               ; 2 uses
  %i.oy = alloca [16 x i8], align 8               ; 2 uses
  %i.oz = alloca [24 x i8], align 8               ; 4 uses
  %i.pa = alloca [112 x i8], align 16             ; 4 uses
  %i.pb = alloca [24 x i8], align 8               ; 4 uses
  %i.pc = alloca [112 x i8], align 16             ; 5 uses
  %i.pd = alloca [224 x i8], align 16             ; 9 uses
  %i.pe = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.61188 = alloca [16 x i8], align 8        ; 6 uses
  %i.pf = alloca [24 x i8], align 8               ; 12 uses
  %i.pg = alloca [24 x i8], align 8               ; 11 uses
  %i.ph = alloca [24 x i8], align 8               ; 12 uses
  %i.pi = alloca [16 x i8], align 8               ; 2 uses
  %i.pj = alloca [112 x i8], align 16             ; 7 uses
  %i.pk = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.61179 = alloca [16 x i8], align 8        ; 6 uses
  %i.pl = alloca [24 x i8], align 8               ; 4 uses
  %i.pm = alloca [16 x i8], align 8               ; 2 uses
  %i.pn = alloca [16 x i8], align 8               ; 2 uses
  %i.po = alloca [24 x i8], align 8               ; 4 uses
  %i.pp = alloca [112 x i8], align 16             ; 4 uses
  %i.pq = alloca [112 x i8], align 16             ; 8 uses
  %i.pr = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.61170 = alloca [16 x i8], align 8        ; 6 uses
  %i.ps = alloca [24 x i8], align 8               ; 12 uses
  %i.pt = alloca [24 x i8], align 8               ; 12 uses
  %i.pu = alloca [144 x i8], align 16             ; 6 uses
  %i.pv = alloca [16 x i8], align 8               ; 6 uses
  %i.pw = alloca [72 x i8], align 8               ; 7 uses
  %i.px = alloca [8 x i8], align 8                ; 5 uses
  %i.py = alloca [112 x i8], align 16             ; 11 uses
  %i.pz = alloca [24 x i8], align 8               ; 10 uses
  %i.qa = alloca [24 x i8], align 8               ; 6 uses
  %i.qb = alloca [16 x i8], align 8               ; 4 uses
  %i.qc = alloca [8 x i8], align 8                ; 4 uses
  %i.qd = alloca [112 x i8], align 16             ; 4 uses
  %i.qe = alloca [112 x i8], align 16             ; 5 uses
  %i.qf = alloca [224 x i8], align 16             ; 9 uses
  %i.qg = alloca [72 x i8], align 8               ; 7 uses
  %i.qh = alloca [8 x i8], align 8                ; 5 uses
  %i.qi = alloca [112 x i8], align 16             ; 11 uses
  %i.qj = alloca [112 x i8], align 16             ; 11 uses
  %i.qk = alloca [24 x i8], align 8               ; 10 uses
  %i.ql = alloca [24 x i8], align 8               ; 10 uses
  %i.qm = alloca [8 x i8], align 8                ; 5 uses
  %i.qn = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.61123 = alloca [40 x i8], align 8        ; 7 uses
  %i.qo = alloca [24 x i8], align 8               ; 7 uses
  %i.qp = alloca [112 x i8], align 16             ; 3 uses
  %i.qq = alloca [24 x i8], align 8               ; 6 uses
  %i.qr = alloca [96 x i8], align 16              ; 6 uses
  %i.qs = alloca [8 x i8], align 8                ; 5 uses
  %i.qt = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.61108 = alloca [40 x i8], align 8        ; 7 uses
  %i.qu = alloca [24 x i8], align 8               ; 9 uses
  %i.qv = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.61095 = alloca [16 x i8], align 8        ; 6 uses
  %i.qw = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.61082 = alloca [16 x i8], align 8        ; 6 uses
  %i.qx = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.61069 = alloca [16 x i8], align 8        ; 6 uses
  %i.qy = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.61056 = alloca [16 x i8], align 8        ; 6 uses
  %i.qz = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.61043 = alloca [16 x i8], align 8        ; 6 uses
  %i.ra = alloca [144 x i8], align 16             ; 6 uses
  %i.rb = alloca [112 x i8], align 16             ; 8 uses
  %i.rc = alloca [24 x i8], align 8               ; 8 uses
  %i.rd = alloca [144 x i8], align 16             ; 5 uses
  %i.re = alloca [16 x i8], align 8               ; 6 uses
  %i.rf = alloca [72 x i8], align 8               ; 7 uses
  %i.rg = alloca [8 x i8], align 8                ; 5 uses
  %i.rh = alloca [112 x i8], align 16             ; 11 uses
  %i.ri = alloca [144 x i8], align 16             ; 4 uses
  %i.rj = alloca [24 x i8], align 8               ; 4 uses
  %i.rk = alloca [8 x i8], align 8                ; 4 uses
  %i.rl = alloca [112 x i8], align 16             ; 8 uses
  %i.rm = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.61017 = alloca [16 x i8], align 8        ; 6 uses
  %i.rn = alloca [72 x i8], align 8               ; 7 uses
  %i.ro = alloca [112 x i8], align 16             ; 11 uses
  %i.rp = alloca [8 x i8], align 8                ; 5 uses
  %i.rq = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6996 = alloca [40 x i8], align 8         ; 7 uses
  %i.rr = alloca [24 x i8], align 8               ; 9 uses
  %i.rs = alloca [24 x i8], align 8               ; 12 uses
  %i.rt = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.6983 = alloca [16 x i8], align 8         ; 6 uses
  %i.ru = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.6967 = alloca [16 x i8], align 8         ; 6 uses
  %i.rv = alloca [24 x i8], align 8               ; 4 uses
  %i.rw = alloca [112 x i8], align 16             ; 6 uses
  %i.rx = alloca [16 x i8], align 8               ; 6 uses
  %i.ry = alloca [48 x i8], align 16              ; 4 uses
  %i.rz = alloca [24 x i8], align 8               ; 4 uses
  %i.sa = alloca [48 x i8], align 16              ; 5 uses
  %i.sb = alloca [64 x i8], align 8               ; 6 uses
  %i.sc = alloca [24 x i8], align 8               ; 6 uses
  %i.sd = alloca [416 x i8], align 16             ; 10 uses
  %i.se = alloca [16 x i8], align 8               ; 2 uses
  %i.sf = alloca [24 x i8], align 8               ; 4 uses
  %i.sg = alloca [112 x i8], align 16             ; 4 uses
  %i.sh = alloca [112 x i8], align 16             ; 8 uses
  %i.si = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6955 = alloca [16 x i8], align 8         ; 7 uses
  %i.sj = alloca [16 x i8], align 8               ; 5 uses
  %i.sk = alloca [24 x i8], align 8               ; 12 uses
  %i.sl = alloca [24 x i8], align 8               ; 10 uses
  %i.sm = alloca [144 x i8], align 16             ; 6 uses
  %i.sn = alloca [16 x i8], align 8               ; 6 uses
  %i.so = alloca [416 x i8], align 16             ; 10 uses
  %i.sp = alloca [16 x i8], align 8               ; 2 uses
  %i.sq = alloca [112 x i8], align 16             ; 8 uses
  %i.sr = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6946 = alloca [16 x i8], align 8         ; 6 uses
  %i.ss = alloca [112 x i8], align 16             ; 8 uses
  %i.st = alloca [72 x i8], align 8               ; 9 uses
  %i.su = alloca [112 x i8], align 16             ; 7 uses
  %i.sv = alloca [112 x i8], align 16             ; 9 uses
  %i.sw = alloca [24 x i8], align 8               ; 10 uses
  %i.sx = alloca [144 x i8], align 16             ; 6 uses
  %i.sy = alloca [16 x i8], align 8               ; 6 uses
  %i.sz = alloca [416 x i8], align 16             ; 9 uses
  %i.ta = alloca [24 x i8], align 8               ; 4 uses
  %i.tb = alloca [112 x i8], align 16             ; 2 uses
  %i.tc = alloca [224 x i8], align 16             ; 13 uses
  %i.td = alloca [72 x i8], align 8               ; 9 uses
  %i.te = alloca [112 x i8], align 16             ; 9 uses
  %i.tf = alloca [24 x i8], align 8               ; 12 uses
  %i.tg = alloca [24 x i8], align 8               ; 10 uses
  %i.th = alloca [16 x i8], align 8               ; 6 uses
  %i.ti = alloca [24 x i8], align 8               ; 4 uses
  %i.tj = alloca [416 x i8], align 16             ; 11 uses
  %i.tk = alloca [24 x i8], align 8               ; 5 uses
  %i.tl = alloca [40 x i8], align 8               ; 6 uses
  %i.tm = alloca [24 x i8], align 8               ; 4 uses
  %i.tn = alloca [24 x i8], align 8               ; 6 uses
  %i.to = alloca [24 x i8], align 8               ; 5 uses
  %i.tp = alloca [112 x i8], align 16             ; 4 uses
  %i.tq = alloca [24 x i8], align 8               ; 7 uses
  %i.tr = alloca [24 x i8], align 8               ; 5 uses
  %i.ts = alloca [24 x i8], align 8               ; 6 uses
  %i.tt = alloca [112 x i8], align 16             ; 9 uses
  %i.tu = alloca [144 x i8], align 16             ; 5 uses
  %i.tv = alloca [16 x i8], align 8               ; 2 uses
  %i.tw = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6904 = alloca [16 x i8], align 8         ; 6 uses
  %i.tx = alloca [16 x i8], align 8               ; 2 uses
  %i.ty = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6895 = alloca [16 x i8], align 8         ; 7 uses
  %i.tz = alloca [16 x i8], align 8               ; 5 uses
  %i.ua = alloca [48 x i8], align 8               ; 4 uses
  %i.ub = alloca [88 x i8], align 8               ; 7 uses
  %i.uc = alloca [24 x i8], align 8               ; 9 uses
  %i.ud = alloca [24 x i8], align 8               ; 10 uses
  %i.ue = alloca [24 x i8], align 8               ; 11 uses
  %i.uf = alloca [112 x i8], align 16             ; 13 uses
  %i.ug = alloca [24 x i8], align 8               ; 9 uses
  %i.uh = alloca [16 x i8], align 8               ; 6 uses
  %i.ui = alloca [144 x i8], align 16             ; 6 uses
  %i.uj = alloca [40 x i8], align 8               ; 6 uses
  %i.uk = alloca [24 x i8], align 8               ; 4 uses
  %i.ul = alloca [416 x i8], align 16             ; 11 uses
  %i.um = alloca [72 x i8], align 8               ; 9 uses
  %i.un = alloca [48 x i8], align 8               ; 4 uses
  %i.uo = alloca [88 x i8], align 8               ; 7 uses
  %i.up = alloca [24 x i8], align 8               ; 11 uses
  %i.uq = alloca [24 x i8], align 8               ; 9 uses
  %i.ur = alloca [24 x i8], align 8               ; 11 uses
  %i.us = alloca [64 x i8], align 8               ; 7 uses
  %i.ut = alloca [24 x i8], align 8               ; 11 uses
  %i.uu = alloca [16 x i8], align 8               ; 6 uses
  %i.uv = alloca [64 x i8], align 8               ; 4 uses
  %i.uw = alloca [24 x i8], align 8               ; 7 uses
  %i.ux = alloca [416 x i8], align 16             ; 11 uses
  %i.uy = alloca [144 x i8], align 16             ; 6 uses
  %i.uz = alloca [72 x i8], align 8               ; 9 uses
  %i.va = alloca [112 x i8], align 16             ; 11 uses
  %i.vb = alloca [24 x i8], align 8               ; 12 uses
  %i.vc = alloca [12 x i8], align 4               ; 5 uses
  %i.vd = alloca [144 x i8], align 16             ; 8 uses
  %i.ve = alloca [8 x i8], align 8                ; 5 uses
  %i.vf = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.6853 = alloca [40 x i8], align 8         ; 7 uses
  %i.vg = alloca [24 x i8], align 8               ; 9 uses
  %i.vh = alloca [48 x i8], align 16              ; 7 uses
  %i.vi = alloca [144 x i8], align 16             ; 4 uses
  %i.vj = alloca [144 x i8], align 16             ; 8 uses
  %i.vk = alloca [24 x i8], align 16              ; 6 uses
  %i.vl = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.6844 = alloca [40 x i8], align 8         ; 7 uses
  %i.vm = alloca [24 x i8], align 8               ; 9 uses
  %i.vn = alloca [144 x i8], align 16             ; 6 uses
  %i.vo = alloca [16 x i8], align 8               ; 2 uses
  %i.vp = alloca [112 x i8], align 16             ; 11 uses
  %i.vq = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6835 = alloca [16 x i8], align 8         ; 6 uses
  %i.vr = alloca [96 x i8], align 16              ; 5 uses
  %i.vs = alloca [112 x i8], align 16             ; 4 uses
  %i.vt = alloca [24 x i8], align 8               ; 4 uses
  %i.vu = alloca [24 x i8], align 8               ; 6 uses
  %i.vv = alloca [112 x i8], align 16             ; 6 uses
  %i.vw = alloca [112 x i8], align 16             ; 5 uses
  %i.vx = alloca [144 x i8], align 16             ; 6 uses
  %i.vy = alloca [8 x i8], align 8                ; 10 uses
  %i.vz = alloca [24 x i8], align 8               ; 12 uses
  %i.wa = alloca [16 x i8], align 8               ; 5 uses
  %i.wb = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6811 = alloca [16 x i8], align 8         ; 6 uses
  %i.wc = alloca [16 x i8], align 8               ; 4 uses
  %i.wd = alloca [24 x i8], align 8               ; 8 uses
  %i.we = alloca [72 x i8], align 8               ; 8 uses
  %i.wf = alloca [8 x i8], align 8                ; 9 uses
  %i.wg = alloca [8 x i8], align 8                ; 15 uses
  %i.wh = alloca [16 x i8], align 8               ; 7 uses
  %i.wi = alloca [208 x i8], align 8              ; 11 uses
  %i.wj = alloca [32 x i8], align 8               ; 7 uses
  %i.wk = alloca [24 x i8], align 8               ; 7 uses
  %i.wl = alloca [24 x i8], align 8               ; 13 uses
  %i.wm = alloca [24 x i8], align 8               ; 14 uses
  %i.wn = alloca [112 x i8], align 16             ; 11 uses
  %i.wo = alloca [72 x i8], align 8               ; 9 uses
  %i.wp = alloca [112 x i8], align 16             ; 5 uses
  %i.wq = alloca [24 x i8], align 8               ; 6 uses
  %i.wr = alloca [112 x i8], align 16             ; 9 uses
  %i.ws = alloca [144 x i8], align 16             ; 6 uses
  %i.wt = alloca [32 x i8], align 8               ; 7 uses
  %i.wu = alloca [24 x i8], align 8               ; 8 uses
  %i.wv = alloca [24 x i8], align 8               ; 7 uses
  %i.ww = alloca [24 x i8], align 8               ; 14 uses
  %i.wx = alloca [16 x i8], align 8               ; 2 uses
  %i.wy = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6766 = alloca [16 x i8], align 8         ; 6 uses
  %i.wz = alloca [144 x i8], align 16             ; 6 uses
  %i.xa = alloca [112 x i8], align 16             ; 8 uses
  %i.xb = alloca [24 x i8], align 8               ; 7 uses
  %i.xc = alloca [24 x i8], align 8               ; 7 uses
  %i.xd = alloca [64 x i8], align 8               ; 12 uses
  %i.xe = alloca [168 x i8], align 8              ; 9 uses
  %i.xf = alloca [24 x i8], align 8               ; 18 uses
  %i.xg = alloca [112 x i8], align 16             ; 6 uses
  %i.xh = alloca [24 x i8], align 8               ; 23 uses
  %i.xi = alloca [24 x i8], align 8               ; 15 uses
  %i.xj = alloca [144 x i8], align 16             ; 6 uses
  %i.xk = alloca [112 x i8], align 16             ; 8 uses
  %i.xl = alloca [24 x i8], align 8               ; 8 uses
  %i.xm = alloca [144 x i8], align 16             ; 4 uses
  %i.xn = alloca [144 x i8], align 16             ; 10 uses
  %i.xo = alloca [8 x i8], align 8                ; 5 uses
  %i.xp = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.6751 = alloca [40 x i8], align 8         ; 7 uses
  %i.xq = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.3747 = alloca [15 x i8], align 1         ; 2 uses
  %i.xr = alloca [144 x i8], align 16             ; 4 uses
  %i.xs = alloca [144 x i8], align 16             ; 8 uses
  %i.xt = alloca [16 x i8], align 16              ; 5 uses
  %i.xu = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.6738 = alloca [40 x i8], align 8         ; 7 uses
  %i.xv = alloca [24 x i8], align 8               ; 9 uses
  %i.xw = alloca [144 x i8], align 16             ; 5 uses
  %i.xx = alloca [16 x i8], align 8               ; 6 uses
  %i.xy = alloca [112 x i8], align 16             ; 4 uses
  %i.xz = alloca [72 x i8], align 8               ; 7 uses
  %i.ya = alloca [8 x i8], align 8                ; 5 uses
  %i.yb = alloca [112 x i8], align 16             ; 12 uses
  %i.yc = alloca [112 x i8], align 16             ; 4 uses
  %i.yd = alloca [24 x i8], align 8               ; 4 uses
  %i.ye = alloca [24 x i8], align 8               ; 5 uses
  %i.yf = alloca [144 x i8], align 16             ; 6 uses
  %i.yg = alloca [24 x i8], align 8               ; 10 uses
  %i.yh = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6714 = alloca [40 x i8], align 8         ; 7 uses
  %i.yi = alloca [24 x i8], align 8               ; 9 uses
  %i.yj = alloca [24 x i8], align 8               ; 9 uses
  %i.yk = alloca [6 x i8], align 2                ; 2 uses
  %i.yl = alloca [144 x i8], align 16             ; 5 uses
  %i.ym = alloca [144 x i8], align 16             ; 7 uses
  %i.yn = alloca [64 x i8], align 8               ; 8 uses
  %i.yo = alloca [24 x i8], align 8               ; 6 uses
  %i.yp = alloca [72 x i8], align 8               ; 11 uses
  %.sroa.6702.sroa.0 = alloca [16 x i8], align 8  ; 6 uses
  %i.yq = alloca [24 x i8], align 8               ; 11 uses
  %i.yr = alloca [144 x i8], align 16             ; 5 uses
  %i.ys = alloca [16 x i8], align 8               ; 6 uses
  %i.yt = alloca [48 x i8], align 16              ; 5 uses
  %.sroa.25559 = alloca [24 x i8], align 8        ; 2 uses
  %i.yu = alloca [48 x i8], align 16              ; 4 uses
  %i.yv = alloca [24 x i8], align 8               ; 6 uses
  %i.yw = alloca [80 x i8], align 16              ; 5 uses
  %i.yx = alloca [80 x i8], align 16              ; 4 uses
  %i.yy = alloca [64 x i8], align 8               ; 4 uses
  %i.yz = alloca [8 x i8], align 8                ; 4 uses
  %i.za = alloca [16 x i8], align 8               ; 2 uses
  %i.zb = alloca [24 x i8], align 8               ; 4 uses
  %i.zc = alloca [112 x i8], align 16             ; 4 uses
  %i.zd = alloca [112 x i8], align 16             ; 8 uses
  %i.ze = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6677 = alloca [16 x i8], align 8         ; 6 uses
  %i.zf = alloca [24 x i8], align 8               ; 12 uses
  %i.zg = alloca [16 x i8], align 8               ; 2 uses
  %i.zh = alloca [112 x i8], align 16             ; 8 uses
  %i.zi = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.7661 = alloca [16 x i8], align 8         ; 3 uses
  %i.zj = alloca [112 x i8], align 16             ; 10 uses
  %i.zk = alloca [72 x i8], align 8               ; 7 uses
  %i.zl = alloca [16 x i8], align 8               ; 5 uses
  %i.zm = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.7655 = alloca [16 x i8], align 8         ; 7 uses
  %i.zn = alloca [112 x i8], align 16             ; 2 uses
  %i.zo = alloca [112 x i8], align 16             ; 11 uses
  %i.zp = alloca [48 x i8], align 16              ; 4 uses
  %i.zq = alloca [144 x i8], align 16             ; 5 uses
  %i.zr = alloca [24 x i8], align 8               ; 12 uses
  %i.zs = alloca [72 x i8], align 8               ; 6 uses
  %i.zt = alloca [48 x i8], align 16              ; 9 uses
  %i.zu = alloca [16 x i8], align 8               ; 2 uses
  %i.zv = alloca [112 x i8], align 16             ; 8 uses
  %i.zw = alloca [24 x i8], align 8               ; 4 uses
  %i.zx = alloca [16 x i8], align 8               ; 4 uses
  %i.zy = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6634 = alloca [16 x i8], align 8         ; 6 uses
  %i.zz = alloca [112 x i8], align 16             ; 9 uses
  %i.aaa = alloca [144 x i8], align 16            ; 5 uses
  %i.aab = alloca [24 x i8], align 8              ; 11 uses
  %i.aac = alloca [72 x i8], align 8              ; 6 uses
  %i.aad = alloca [48 x i8], align 16             ; 7 uses
  %i.aae = alloca [144 x i8], align 16            ; 5 uses
  %i.aaf = alloca [16 x i8], align 8              ; 6 uses
  %i.aag = alloca [80 x i8], align 16             ; 6 uses
  %i.aah = alloca [64 x i8], align 8              ; 2 uses
  %i.aai = alloca [416 x i8], align 16            ; 10 uses
  %i.aaj = alloca [16 x i8], align 8              ; 3 uses
  %i.aak = alloca [24 x i8], align 8              ; 4 uses
  %i.aal = alloca [112 x i8], align 16            ; 4 uses
  %i.aam = alloca [112 x i8], align 16            ; 8 uses
  %i.aan = alloca [72 x i8], align 8              ; 7 uses
  %.sroa.6614 = alloca [16 x i8], align 8         ; 6 uses
  %i.aao = alloca [24 x i8], align 8              ; 16 uses
  %i.aap = alloca [8 x i8], align 8               ; 2 uses
  %i.aaq = alloca [144 x i8], align 16            ; 5 uses
  %i.aar = alloca [16 x i8], align 8              ; 6 uses
  %i.aas = alloca [80 x i8], align 16             ; 5 uses
  %i.aat = alloca [64 x i8], align 8              ; 2 uses
  %i.aau = alloca [416 x i8], align 16            ; 7 uses
  %i.aav = alloca [16 x i8], align 8              ; 2 uses
  %i.aaw = alloca [24 x i8], align 8              ; 4 uses
  %i.aax = alloca [112 x i8], align 16            ; 4 uses
  %i.aay = alloca [112 x i8], align 16            ; 8 uses
  %i.aaz = alloca [72 x i8], align 8              ; 7 uses
  %.sroa.6600 = alloca [16 x i8], align 8         ; 6 uses
  %i.aba = alloca [24 x i8], align 8              ; 14 uses
  %i.abb = alloca [8 x i8], align 8               ; 2 uses
  %i.abc = alloca [144 x i8], align 16            ; 5 uses
  %i.abd = alloca [16 x i8], align 8              ; 6 uses
  %i.abe = alloca [416 x i8], align 16            ; 7 uses
  %i.abf = alloca [16 x i8], align 8              ; 2 uses
  %i.abg = alloca [24 x i8], align 8              ; 4 uses
end_hunk_0
begin_hunk_1_@_RNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr20lower_exprs_with_ctx0B7_:bb.a

bb.bwr:                                           ; preds = %bb.bwp, %bb.bwq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !dbg !61045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !dbg !61046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !dbg !61047
  %i.frs = load ptr, ptr %i.anj, align 8, !dbg !61048, !nonnull !3166, !align !3262, !noundef !3166
  store i64 -9223372036854775806, ptr %i.bdy, align 16, !dbg !61045
  %i.frt = invoke noundef i64 @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr7builderNtB2_12AExprBuilder14new_from_aexpr(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.frs)
          to label %bb.bws unwind label %.loopexit.split-lp7939.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61049 ; 2 uses

bb.bws:                                           ; preds = %bb.bwr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !dbg !61050
  %i.fru = invoke fastcc noundef zeroext i1 @_RNvXs3_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_exprNtB5_14IRFunctionExprNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.or, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) @227)
          to label %bb.bwt unwind label %.loopexit.split-lp7939.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61051

bb.bwt:                                           ; preds = %bb.bws
  %i.frv = load ptr, ptr %i.anj, align 8, !dbg !54471, !nonnull !3166, !align !3262, !noundef !3166 ; 2 uses
  br i1 %i.fru, label %bb.bwv, label %bb.bwu, !dbg !61051

bb.bwu:                                           ; preds = %bb.bwt
  %i.frw = invoke noundef i64 @_RINvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr7builderNtB3_12AExprBuilder6max_byBU_ECs2g09Ig8GZd6_13polars_stream(i64 noundef %i.frp, i64 noundef %i.frt, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.frv)
          to label %bb.bww unwind label %.loopexit.split-lp7939.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61052

bb.bwv:                                           ; preds = %bb.bwt
  %i.frx = invoke noundef i64 @_RINvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr7builderNtB3_12AExprBuilder6min_byBU_ECs2g09Ig8GZd6_13polars_stream(i64 noundef %i.frp, i64 noundef %i.frt, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.frv)
          to label %bb.bww unwind label %.loopexit.split-lp7939.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61053

bb.bww:                                           ; preds = %bb.bwv, %bb.bwu
  %.sroa.01226.0 = phi i64 [ %i.frw, %bb.bwu ], [ %i.frx, %bb.bwv ], !dbg !61054
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61229), !dbg !54472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oh), !dbg !54472
  invoke void @_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr17lower_reduce_node(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.oh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.oj, i64 noundef %.sroa.01226.0, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ani)
          to label %bb.bwx unwind label %.loopexit.split-lp7939.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !54472

bb.bwx:                                           ; preds = %bb.bww
  %i.fry = load i64, ptr %i.oh, align 8, !dbg !61055, !range !3672, !noundef !3166 ; 2 uses
  %.not3625 = icmp eq i64 %i.fry, 18, !dbg !61055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61229, ptr noundef nonnull align 8 dereferenceable(16) %i.bdz, i64 16, i1 false), !dbg !61056
  %.sroa.52936.0.copyload = load i64, ptr %.sroa.52936.0..sroa_idx, align 8, !dbg !61056 ; 2 uses
  br i1 %.not3625, label %bb.bwz, label %bb.bwy, !dbg !61057

bb.bwy:                                           ; preds = %bb.bwx
  %.sroa.72944.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oh, i64 32, !dbg !61058
  %.sroa.42948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !61059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.42948.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.72944.0..sroa_idx, i64 40, i1 false), !dbg !61058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oh), !dbg !61060
  %.sroa.22946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !61059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22946.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61229, i64 16, i1 false), !dbg !61060
  store i64 %i.fry, ptr %0, align 8, !dbg !61059
  %.sroa.32947.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !61059
  store i64 %.sroa.52936.0.copyload, ptr %.sroa.32947.0..sroa_idx, align 8, !dbg !61059
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61229), !dbg !61061
  br label %bb.bxg, !dbg !61062

bb.bwz:                                           ; preds = %bb.bwx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oh), !dbg !61060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61229, i64 16, i1 false), !dbg !54472
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61229), !dbg !61061
  %i.frz = invoke { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullBR_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.amx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.ar)
          to label %bb.bxa unwind label %.loopexit.split-lp7939.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61063 ; 0 uses

bb.bxa:                                           ; preds = %bb.bwz
  %i.fsa = load i64, ptr %i.aor, align 8, !dbg !61064, !alias.scope !54479, !noundef !3166 ; 3 uses
  %i.fsb = load i64, ptr %i.amw, align 8, !dbg !61065, !range !3228, !alias.scope !54479, !noundef !3166
  %i.fsc = icmp eq i64 %i.fsa, %i.fsb, !dbg !61066
  br i1 %i.fsc, label %bb.bxb, label %bb.bxc, !dbg !61066

bb.bxb:                                           ; preds = %bb.bxa
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8grow_oneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amw)
          to label %bb.bxc unwind label %.loopexit.split-lp7939.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61067

bb.bxc:                                           ; preds = %bb.bxa, %bb.bxb
  %i.fsd = load ptr, ptr %i.aoq, align 8, !dbg !61068, !alias.scope !54479, !nonnull !3166, !noundef !3166
  %i.fse = getelementptr inbounds nuw [8 x i8], ptr %i.fsd, i64 %i.fsa, !dbg !61069
  store i64 %.sroa.52936.0.copyload, ptr %i.fse, align 8, !dbg !61070
  %i.fsf = add i64 %i.fsa, 1, !dbg !61071
  store i64 %i.fsf, ptr %i.aor, align 8, !dbg !61071, !alias.scope !54479
  %i.fsg = load i8, ptr %i.bdw, align 1, !dbg !61072, !range !3277, !alias.scope !54481, !noundef !3166
  %i.fsh = icmp eq i8 %i.fsg, -40, !dbg !61073
  br i1 %i.fsh, label %bb.bxd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5116, !dbg !61073, !prof !3216

bb.bxd:                                           ; preds = %bb.bxc
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.op)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5116 unwind label %.loopexit.split-lp7934.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a, !dbg !61074

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5116: ; preds = %bb.bxc, %bb.bxd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.op), !dbg !61075
  %i.fsi = load i8, ptr %i.bdu, align 1, !dbg !61076, !range !3277, !alias.scope !54482, !noundef !3166
  %i.fsj = icmp eq i8 %i.fsi, -40, !dbg !61077
  br i1 %i.fsj, label %bb.bxe, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5118, !dbg !61077, !prof !3216

bb.bxe:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5116
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oq)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5118 unwind label %.loopexit.split-lp7929.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61078

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5118: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5116, %bb.bxe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oq), !dbg !61079
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr14IRFunctionExprECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.or)
          to label %bb.bxf unwind label %.thread6140.loopexit, !dbg !60979

bb.bxf:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.or), !dbg !60979
  br label %bb.cd, !dbg !60979

bb.bxg:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5109, %bb.bwy
  %i.fsk = load i8, ptr %i.bdw, align 1, !dbg !61080, !range !3277, !alias.scope !54483, !noundef !3166
  %i.fsl = icmp eq i8 %i.fsk, -40, !dbg !61081
  br i1 %i.fsl, label %bb.bxh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5120, !dbg !61081, !prof !3216

bb.bxh:                                           ; preds = %bb.bxg
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.op)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5120 unwind label %.loopexit.split-lp7934.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.a, !dbg !61082

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5109: ; preds = %bb.bwf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.on), !dbg !61014
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61219), !dbg !61014
  br label %bb.bxg, !dbg !61083

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5120: ; preds = %bb.bxg, %bb.bxh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.op), !dbg !61075
  %i.fsm = load i8, ptr %i.bdu, align 1, !dbg !61084, !range !3277, !alias.scope !54485, !noundef !3166
  %i.fsn = icmp eq i8 %i.fsm, -40, !dbg !61085
  br i1 %i.fsn, label %bb.bxi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5122, !dbg !61085, !prof !3216

bb.bxi:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5120
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oq)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5122 unwind label %.loopexit.split-lp7929.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61086

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5122: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5120, %bb.bxi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oq), !dbg !61079
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr14IRFunctionExprECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.or)
          to label %bb.bxj unwind label %.thread6140.loopexit.split-lp, !dbg !60979

bb.bxj:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.or), !dbg !60979
  br label %bb.ck, !dbg !55633

bb.bxk:                                           ; preds = %bb.bon
  %i.fso = load i64, ptr %i.qx, align 8, !dbg !61087, !range !3672, !noundef !3166 ; 2 uses
  %.not3667 = icmp eq i64 %i.fso, 18, !dbg !61087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61069, ptr noundef nonnull align 8 dereferenceable(16) %i.bfm, i64 16, i1 false), !dbg !61088
  %.sroa.52746.0.copyload = load i64, ptr %.sroa.52746.0..sroa_idx, align 8, !dbg !61088 ; 2 uses
  br i1 %.not3667, label %bb.bxm, label %bb.bxl, !dbg !61089

bb.bxl:                                           ; preds = %bb.bxk
  %.sroa.72754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qx, i64 32, !dbg !61090
  %.sroa.42758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !61091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.42758.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.72754.0..sroa_idx, i64 40, i1 false), !dbg !61090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qx), !dbg !61092
  %.sroa.22756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !61091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22756.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61069, i64 16, i1 false), !dbg !61092
  store i64 %i.fso, ptr %0, align 8, !dbg !61091
  %.sroa.32757.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !61091
  store i64 %.sroa.52746.0.copyload, ptr %.sroa.32757.0..sroa_idx, align 8, !dbg !61091
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61069), !dbg !61093
  br label %bb.ck, !dbg !55633

bb.bxm:                                           ; preds = %bb.bxk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qx), !dbg !61092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61069, i64 16, i1 false), !dbg !54486
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61069), !dbg !61093
  %i.fsp = invoke { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullBR_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.amx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.aw)
          to label %bb.bxn unwind label %.thread6140.loopexit, !dbg !61094 ; 0 uses

bb.bxn:                                           ; preds = %bb.bxm
  %i.fsq = load i64, ptr %i.aor, align 8, !dbg !61095, !alias.scope !54492, !noundef !3166 ; 3 uses
  %i.fsr = load i64, ptr %i.amw, align 8, !dbg !61096, !range !3228, !alias.scope !54492, !noundef !3166
  %i.fss = icmp eq i64 %i.fsq, %i.fsr, !dbg !61097
  br i1 %i.fss, label %bb.bxo, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8push_mutCs2g09Ig8GZd6_13polars_stream.exit5124, !dbg !61097

bb.bxo:                                           ; preds = %bb.bxn
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8grow_oneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amw)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8push_mutCs2g09Ig8GZd6_13polars_stream.exit5124 unwind label %.thread6140.loopexit, !dbg !61098

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8push_mutCs2g09Ig8GZd6_13polars_stream.exit5124: ; preds = %bb.bxo, %bb.bxn
  %i.fst = load ptr, ptr %i.aoq, align 8, !dbg !61099, !alias.scope !54492, !nonnull !3166, !noundef !3166
  %i.fsu = getelementptr inbounds nuw [8 x i8], ptr %i.fst, i64 %i.fsq, !dbg !61100
  store i64 %.sroa.52746.0.copyload, ptr %i.fsu, align 8, !dbg !61101
  %i.fsv = add i64 %i.fsq, 1, !dbg !61102
  store i64 %i.fsv, ptr %i.aor, align 8, !dbg !61102, !alias.scope !54492
  br label %bb.cd, !dbg !61103

bb.bxp:                                           ; preds = %bb.bot
  %i.fsw = load ptr, ptr %i.bct, align 8, !dbg !61104, !nonnull !3166, !noundef !3166 ; 2 uses
  %i.fsx = getelementptr inbounds nuw i8, ptr %i.fsw, i64 224, !dbg !61105 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ue), !dbg !61106
  invoke void @_RNvNtCs2mZqlW55729_12polars_utils6pl_str18unique_column_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ue)
          to label %bb.bxr unwind label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5134.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61107

bb.bxq:                                           ; preds = %bb.bot
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 2, i64 noundef %i.fis, i64 noundef %i.fis, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #54
          to label %bb.q unwind label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5134.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61108

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5134: ; preds = %.split6998.thread, %bb.cab, %bb.bxs
  %.sroa.01556.0 = phi i1 [ %.sroa.01556.16999, %.split6998.thread ], [ %.sroa.01556.16999, %bb.cab ], [ %.sroa.01556.1, %bb.bxs ], !dbg !60453
  %.pn3620 = phi { ptr, i32 } [ %.pn36187000, %.split6998.thread ], [ %.pn36187000, %bb.cab ], [ %.pn3618, %bb.bxs ] ; 3 uses
  %i.fsy = load i8, ptr %i.uf, align 16, !dbg !61109, !range !3550, !noundef !3166
  %i.fsz = icmp eq i8 %i.fsy, 52, !dbg !61109
  br i1 %i.fsz, label %bb.cac, label %bb.cad, !dbg !61109

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5134.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bzm, %bb.bxp, %bb.bxq, %bb.bzx
  %lpad.loopexit.split-lp19118 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fta = load i8, ptr %i.uf, align 16, !dbg !61109, !range !3550, !noundef !3166
  %i.ftb = icmp eq i8 %i.fta, 52, !dbg !61109
  br i1 %i.ftb, label %.thread13219, label %bb.cad, !dbg !61109

bb.bxr:                                           ; preds = %bb.bxp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ud), !dbg !61110
  %i.ftc = getelementptr [112 x i8], ptr %i.fsw, i64 %i.fis, !dbg !61111 ; 2 uses
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENCNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr20lower_exprs_with_ctx0sd_0EE9from_iterB4F_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ud, ptr noundef nonnull %i.fsx, ptr noundef %i.ftc)
          to label %bb.bxt unwind label %.split6998.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61112

bb.bxs:                                           ; preds = %.thread11952.loopexit.split-lp, %bb.bxw
  %.sroa.01556.1 = phi i1 [ false, %bb.bxw ], [ true, %.thread11952.loopexit.split-lp ], !dbg !60453 ; 2 uses
  %.sroa.01555.0 = phi i1 [ %.sroa.01555.2, %bb.bxw ], [ %.sroa.01555.27011, %.thread11952.loopexit.split-lp ], !dbg !61110
  %.pn3618 = phi { ptr, i32 } [ %.pn3616, %bb.bxw ], [ %.pn36167013, %.thread11952.loopexit.split-lp ] ; 2 uses
  br i1 %.sroa.01555.0, label %.split6998.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5134, !dbg !61113

.split6998.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bxr, %bb.bzv
  %lpad.loopexit.split-lp19121 = landingpad { ptr, i32 }
          cleanup
  br label %.split6998.thread

bb.bxt:                                           ; preds = %bb.bxr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uc), !dbg !61114
  %i.ftd = load i64, ptr %i.bcu, align 8, !dbg !61115, !noundef !3166
  %.not3606 = icmp eq i64 %i.ftd, 0, !dbg !61116
  br i1 %.not3606, label %bb.bxv, label %bb.bxu, !dbg !61116

bb.bxu:                                           ; preds = %bb.bxt
  %i.fte = load ptr, ptr %i.bct, align 8, !dbg !61117, !nonnull !3166, !noundef !3166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ua), !dbg !54536
  %i.ftf = load ptr, ptr %i.bcv, align 8, !dbg !61118, !nonnull !3166, !noundef !3166 ; 2 uses
  %i.ftg = load i64, ptr %i.bcw, align 8, !dbg !61119, !noundef !3166
  %i.fth = getelementptr inbounds nuw [24 x i8], ptr %i.ftf, i64 %i.ftg, !dbg !61120
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEIBX_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEINtB5_7ZipImplBW_B2c_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ua, ptr noundef nonnull %i.ftf, ptr noundef nonnull %i.fth, ptr noundef nonnull %i.fsx, ptr noundef nonnull %i.ftc)
          to label %bb.bxx unwind label %.thread11952.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61121

bb.bxv:                                           ; preds = %bb.bxt
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #54
          to label %bb.q unwind label %.thread11952.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61116

bb.bxw:                                           ; preds = %.loopexit7908, %bb.bxz
  %.sroa.01555.2 = phi i1 [ %.sroa.01555.4, %bb.bxz ], [ %.sroa.01555.3.ph, %.loopexit7908 ], !dbg !61122 ; 2 uses
  %.sroa.01441.0 = phi i8 [ %.sroa.01441.2, %bb.bxz ], [ %.sroa.01441.1.ph, %.loopexit7908 ], !dbg !61123
  %.pn3616 = phi { ptr, i32 } [ %.pn3613.pn, %bb.bxz ], [ %lpad.loopexit7910, %.loopexit7908 ] ; 2 uses
  %i.fti = trunc nuw i8 %.sroa.01441.0 to i1, !dbg !61124
  br i1 %i.fti, label %.thread11952.loopexit.split-lp, label %bb.bxs, !dbg !61124

.loopexit7908:                                    ; preds = %bb.bxx, %bb.bzj
  %.sroa.01555.3.ph = phi i1 [ true, %bb.bxx ], [ false, %bb.bzj ]
  %.sroa.01441.1.ph = phi i8 [ 1, %bb.bxx ], [ %.sroa.01441.6, %bb.bzj ]
  %lpad.loopexit7910 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bxw

.thread11952.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bxu, %bb.bzu, %bb.bxv
  %lpad.loopexit.split-lp19124 = landingpad { ptr, i32 }
          cleanup
  br label %.thread11952.loopexit.split-lp

bb.bxx:                                           ; preds = %bb.bxu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.55691.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.ua, i64 48, i1 false), !dbg !61125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ua), !dbg !61126
  store i64 1, ptr %i.ub, align 8, !dbg !61127
  store i64 0, ptr %.sroa.45690.0..sroa_idx, align 8, !dbg !61127
  store i64 1, ptr %.sroa.45690.sroa.4.0..sroa.45690.0..sroa_idx.sroa_idx, align 8, !dbg !61127
  store ptr %i.ue, ptr %.sroa.45690.sroa.5.0..sroa.45690.0..sroa_idx.sroa_idx, align 8, !dbg !61127
  store ptr %i.fte, ptr %.sroa.45690.sroa.6.0..sroa.45690.0..sroa_idx.sroa_idx, align 8, !dbg !61127
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB2v_5chain5ChainINtNtNtB2z_5array4iter8IntoIterTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRB13_EKj1_EINtNtB2v_3zip3ZipINtNtNtB2z_5slice4iter4IterB46_EIB5o_B13_EEENCNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr20lower_exprs_with_ctx0se_0EE9from_iterB6f_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.uc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.ub)
          to label %bb.bxy unwind label %.loopexit7908, !dbg !61128

bb.bxy:                                           ; preds = %bb.bxx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tz), !dbg !61129
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6895), !dbg !54568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ty), !dbg !54568
  %i.ftj = load ptr, ptr %i.bcx, align 8, !dbg !61130, !nonnull !3166, !noundef !3166
  %i.ftk = load i64, ptr %i.bcy, align 8, !dbg !61131, !noundef !3166
  invoke void @_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr28build_select_stream_with_ctx(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ty, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.aov, ptr noundef nonnull align 16 %i.ftj, i64 noundef %i.ftk, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ani)
          to label %bb.bya unwind label %.loopexit7913, !dbg !54568

bb.bxz:                                           ; preds = %.loopexit7913, %.loopexit.split-lp7914, %.critedge
  %.sroa.01555.4 = phi i1 [ false, %.critedge ], [ %.sroa.01555.5.ph, %.loopexit7913 ], [ true, %.loopexit.split-lp7914 ], !dbg !61132
  %.sroa.01441.2 = phi i8 [ %.sroa.01441.4, %.critedge ], [ %.sroa.01441.3.ph, %.loopexit7913 ], [ 1, %.loopexit.split-lp7914 ], !dbg !61123
  %.pn3613.pn = phi { ptr, i32 } [ %.pn3613, %.critedge ], [ %lpad.loopexit7915, %.loopexit7913 ], [ %lpad.loopexit.split-lp7916, %.loopexit.split-lp7914 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.uc) #56
          to label %bb.bxw unwind label %bb.ce, !dbg !61133

.loopexit7913:                                    ; preds = %bb.byk, %bb.bxy, %bb.bye, %bb.byi, %bb.bzi
  %.sroa.01555.5.ph = phi i1 [ true, %bb.bxy ], [ true, %bb.bye ], [ true, %bb.byi ], [ true, %bb.byk ], [ false, %bb.bzi ]
  %.sroa.01441.3.ph = phi i8 [ 1, %bb.bxy ], [ 1, %bb.bye ], [ 1, %bb.byi ], [ 1, %bb.byk ], [ %.sroa.01441.6, %bb.bzi ]
  %lpad.loopexit7915 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bxz

.loopexit.split-lp7914:                           ; preds = %bb.byd
  %lpad.loopexit.split-lp7916 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bxz

bb.bya:                                           ; preds = %bb.bxy
  %i.ftl = load i64, ptr %i.ty, align 8, !dbg !61134, !range !3672, !noundef !3166 ; 2 uses
  %.not3607 = icmp eq i64 %i.ftl, 18, !dbg !61134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6895, ptr noundef nonnull align 8 dereferenceable(16) %i.bcz, i64 16, i1 false), !dbg !61135
  br i1 %.not3607, label %bb.byc, label %bb.byb, !dbg !61136

bb.byb:                                           ; preds = %bb.bya
  %.sroa.62550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ty, i64 24, !dbg !61137
  %.sroa.32553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !61138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.32553.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.62550.0..sroa_idx, i64 48, i1 false), !dbg !61137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ty), !dbg !61139
  %.sroa.22552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !61138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22552.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6895, i64 16, i1 false), !dbg !61139
  store i64 %i.ftl, ptr %0, align 8, !dbg !61138
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6895), !dbg !61140
  br label %bb.bzu, !dbg !61141

bb.byc:                                           ; preds = %bb.bya
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ty), !dbg !61139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6895, i64 16, i1 false), !dbg !54568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6895, i64 16, i1 false), !dbg !61142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6895), !dbg !61140
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6904), !dbg !54589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tw), !dbg !54589
  %i.ftm = load i64, ptr %i.bcu, align 8, !dbg !61143, !noundef !3166 ; 2 uses
  %i.ftn = icmp ugt i64 %i.ftm, 1, !dbg !61144
  br i1 %i.ftn, label %bb.bye, label %bb.byd, !dbg !61144, !prof !3419

bb.byd:                                           ; preds = %bb.byc
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 2, i64 noundef %i.ftm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #54
          to label %bb.q unwind label %.loopexit.split-lp7914, !dbg !61145

bb.bye:                                           ; preds = %bb.byc
  %i.fto = load ptr, ptr %i.bct, align 8, !dbg !61146, !nonnull !3166, !noundef !3166
  %i.ftp = getelementptr inbounds nuw i8, ptr %i.fto, i64 112, !dbg !61147
  invoke void @_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr28build_select_stream_with_ctx(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.tw, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.aov, ptr noundef nonnull align 16 %i.ftp, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ani)
          to label %bb.byf unwind label %.loopexit7913, !dbg !54589

bb.byf:                                           ; preds = %bb.bye
  %i.ftq = load i64, ptr %i.tw, align 8, !dbg !61148, !range !3672, !noundef !3166 ; 2 uses
  %.not3608 = icmp eq i64 %i.ftq, 18, !dbg !61148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6904, ptr noundef nonnull align 8 dereferenceable(16) %i.bda, i64 16, i1 false), !dbg !61149
  br i1 %.not3608, label %bb.byh, label %bb.byg, !dbg !61150

bb.byg:                                           ; preds = %bb.byf
  %.sroa.62559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tw, i64 24, !dbg !61151
  %.sroa.32562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !61152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.32562.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.62559.0..sroa_idx, i64 48, i1 false), !dbg !61151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tw), !dbg !61153
  %.sroa.22561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !61152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22561.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6904, i64 16, i1 false), !dbg !61153
  store i64 %i.ftq, ptr %0, align 8, !dbg !61152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6904), !dbg !61154
  br label %bb.bzu, !dbg !61155

bb.byh:                                           ; preds = %bb.byf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tw), !dbg !61153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6904, i64 16, i1 false), !dbg !54589
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6904), !dbg !61154
  %i.ftr = load ptr, ptr %i.anj, align 8, !dbg !61156, !nonnull !3166, !align !3262, !noundef !3166 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tu), !dbg !61157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !dbg !61158
  %i.fts = load i8, ptr %i.bdb, align 1, !dbg !61159, !range !3277, !noundef !3166
  %i.ftt = icmp eq i8 %i.fts, -40, !dbg !61160
  br i1 %i.ftt, label %bb.byi, label %bb.byj, !dbg !61160

bb.byi:                                           ; preds = %bb.byh
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ue)
          to label %bb.byk unwind label %.loopexit7913, !dbg !61161

bb.byj:                                           ; preds = %bb.byh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %i.ue, i64 24, i1 false), !dbg !61162
  br label %bb.byk, !dbg !61163

bb.byk:                                           ; preds = %bb.byi, %bb.byj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.tu, ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i64 24, i1 false), !dbg !61164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !dbg !61165
  store i64 -9223372036854775806, ptr %i.bdc, align 16, !dbg !61157
  %i.ftu = getelementptr inbounds nuw i8, ptr %i.ftr, i64 16, !dbg !61166
  %i.ftv = load i64, ptr %i.ftu, align 8, !dbg !61166, !noundef !3166 ; 3 uses
  %i.ftw = icmp ult i64 %i.ftv, 64051194700380388, !dbg !61167
  call void @llvm.assume(i1 %i.ftw), !dbg !61168
  invoke fastcc void @_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE8push_mutCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.ftr, ptr noalias noundef align 16 captures(address) dereferenceable(144) %i.tu)
          to label %bb.byl unwind label %.loopexit7913, !dbg !61169

bb.byl:                                           ; preds = %bb.byk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tu), !dbg !61170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tt), !dbg !61171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4912.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ue, i64 24, i1 false), !dbg !61132
  store i64 3, ptr %i.tt, align 16, !dbg !61172
  store i64 %i.ftv, ptr %i.bdd, align 16, !dbg !61172
  store i32 3, ptr %.sroa.42566.0..sroa_idx, align 16, !dbg !61172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !dbg !61173
  %i.ftx = load i8, ptr %i.uf, align 16, !dbg !61174, !range !3550, !noundef !3166
  switch i8 %i.ftx, label %bb.bym [
    i8 51, label %bb.byn
    i8 52, label %bb.byo
  ], !dbg !61173, !prof !3969

bb.bym:                                           ; preds = %bb.byl
end_hunk_1
begin_hunk_2_@_RNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr20lower_exprs_with_ctx0B7_:bb.a
  store ptr %i.fua, ptr %i.tl, align 8, !dbg !61185
  store ptr %i.fua, ptr %.sroa.4914.0..sroa_idx, align 8, !dbg !61185
  store i64 %i.fub, ptr %.sroa.5915.0..sroa_idx, align 8, !dbg !61185
  store ptr %i.fue, ptr %.sroa.6916.0..sroa_idx, align 8, !dbg !61185
  store ptr %i.fuf, ptr %i.bdf, align 8, !dbg !61185
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr20lower_exprs_with_ctx0sf_0EE9from_iterB4F_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.tm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.tl)
          to label %bb.byx unwind label %bb.byw, !dbg !61186

.critedge:                                        ; preds = %.loopexit7918, %.loopexit.split-lp7919, %.thread7022, %bb.bzr, %bb.byq, %bb.bzt, %bb.byv, %bb.bys
  %.sroa.01441.4 = phi i8 [ %.sroa.01441.6, %.thread7022 ], [ %.sroa.01441.6, %bb.bzt ], [ 0, %bb.byv ], [ 1, %bb.bys ], [ 1, %bb.byq ], [ %.sroa.01441.6, %bb.bzr ], [ %.sroa.01441.5.ph, %.loopexit7918 ], [ 1, %.loopexit.split-lp7919 ], !dbg !61122
  %.pn3613 = phi { ptr, i32 } [ %lpad.thr_comm7020, %.thread7022 ], [ %i.fvl, %bb.bzt ], [ %.pn3609, %bb.byv ], [ %i.fui, %bb.bys ], [ %i.fug, %bb.byq ], [ %lpad.thr_comm.split-lp7021, %bb.bzr ], [ %lpad.loopexit7920, %.loopexit7918 ], [ %lpad.loopexit.split-lp7921, %.loopexit.split-lp7919 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.tt) #56
          to label %bb.bxz unwind label %bb.ce, !dbg !61187

.loopexit7918:                                    ; preds = %bb.byn, %bb.byz
  %.sroa.01441.5.ph = phi i8 [ 0, %bb.byz ], [ 1, %bb.byn ]
  %lpad.loopexit7920 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

.loopexit.split-lp7919:                           ; preds = %bb.bym
  %lpad.loopexit.split-lp7921 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

bb.byp:                                           ; preds = %bb.byn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tp), !dbg !61188
  invoke fastcc void @_RNvXsf_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.tp, ptr noundef nonnull align 16 %i.tt)
          to label %bb.byr unwind label %bb.byq, !dbg !61189

bb.byq:                                           ; preds = %bb.byp
  %i.fug = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ftz, i64 noundef 112, i64 noundef 16) #53, !dbg !61190
  br label %.critedge, !dbg !61191

bb.byr:                                           ; preds = %bb.byp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ftz, ptr noundef nonnull align 16 dereferenceable(112) %i.tp, i64 112, i1 false), !dbg !54609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tp), !dbg !54609
  store i64 1, ptr %i.tq, align 8, !dbg !61192
  store ptr %i.ftz, ptr %i.bdh, align 8, !dbg !61192
  store i64 1, ptr %i.bdi, align 8, !dbg !61192
  %i.fuh = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 1, i64 noundef 1)
          to label %bb.byt unwind label %bb.bys, !dbg !61193 ; 2 uses

bb.bys:                                           ; preds = %bb.byr
  %i.fui = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.tq) #56
          to label %.critedge unwind label %bb.ce, !dbg !61194

bb.byt:                                           ; preds = %bb.byr
  store i8 %i.fty, ptr %i.fuh, align 1, !dbg !54628
  store i64 1, ptr %i.to, align 8, !dbg !61195
  store ptr %i.fuh, ptr %i.bdj, align 8, !dbg !61195
  store i64 1, ptr %i.bdk, align 8, !dbg !61195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.tq, i64 24, i1 false), !dbg !61196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tq), !dbg !61194
  br label %bb.byu, !dbg !61197

bb.byu:                                           ; preds = %bb.bza, %bb.byt
  %.sroa.01441.6 = phi i8 [ 1, %bb.byt ], [ 0, %bb.bza ], !dbg !61122 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ts), !dbg !61198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ts, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !dbg !61198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tr), !dbg !61199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tr, ptr noundef nonnull align 8 dereferenceable(24) %i.to, i64 24, i1 false), !dbg !61199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !dbg !61200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tj), !dbg !61201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ti), !dbg !54635
  %i.fuj = load i64, ptr %i.bdl, align 8, !dbg !61202, !noundef !3166 ; 2 uses
  %i.fuk = icmp ult i64 %i.fuj, 82351536043346213, !dbg !61203
  call void @llvm.assume(i1 %i.fuk), !dbg !61204
  invoke fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ti, i64 noundef %i.fuj)
          to label %bb.bzb unwind label %bb.bzs, !dbg !61205

bb.byv:                                           ; preds = %bb.byy, %bb.byw
  %.pn3609 = phi { ptr, i32 } [ %i.fum, %bb.byy ], [ %i.ful, %bb.byw ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.tn) #56
          to label %.critedge unwind label %bb.ce, !dbg !61206

bb.byw:                                           ; preds = %bb.byo
  %i.ful = landingpad { ptr, i32 }
          cleanup
  br label %bb.byv

bb.byx:                                           ; preds = %bb.byo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tk), !dbg !61207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tk, ptr noundef nonnull align 8 dereferenceable(24) %i.tm, i64 24, i1 false), !dbg !61207
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.to, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tn)
          to label %bb.byz unwind label %bb.byy, !dbg !61208

bb.byy:                                           ; preds = %bb.byx
  %i.fum = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.tk) #56
          to label %bb.byv unwind label %bb.ce, !dbg !61209

bb.byz:                                           ; preds = %bb.byx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.tk, i64 24, i1 false), !dbg !61210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tk), !dbg !61209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tm), !dbg !61211
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.tn)
          to label %bb.bza unwind label %.loopexit7918, !dbg !61206

bb.bza:                                           ; preds = %bb.byz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tn), !dbg !61206
  br label %bb.byu, !dbg !61206

bb.bzb:                                           ; preds = %bb.byu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bdp, ptr noundef nonnull align 8 dereferenceable(24) %i.tr, i64 24, i1 false), !dbg !61212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bdo, ptr noundef nonnull align 8 dereferenceable(24) %i.ts, i64 24, i1 false), !dbg !61213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bdm, ptr noundef nonnull align 8 dereferenceable(16) %i.tx, i64 16, i1 false), !dbg !61214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bdn, ptr noundef nonnull align 8 dereferenceable(16) %i.tv, i64 16, i1 false), !dbg !61214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bdq, ptr noundef nonnull align 8 dereferenceable(24) %i.ti, i64 24, i1 false), !dbg !61214
  store ptr null, ptr %i.bdr, align 16, !dbg !61214
  store i64 25, ptr %i.tj, align 16, !dbg !61214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ti), !dbg !61215
  %i.fun = load ptr, ptr %i.aow, align 8, !dbg !61216, !nonnull !3166, !align !3262, !noundef !3166
  %i.fuo = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCs2g09Ig8GZd6_13polars_stream13physical_planNtB5_10PhysStream13output_schema(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.tz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fun)
          to label %bb.bzc unwind label %bb.bzr, !dbg !61217

.thread7022:                                      ; preds = %bb.bzh, %bb.bzf, %bb.bze
  %lpad.thr_comm7020 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge, !dbg !61218

bb.bzc:                                           ; preds = %bb.bzb
  %i.fup = load ptr, ptr %i.fuo, align 8, !dbg !61219, !nonnull !3166, !noundef !3166 ; 2 uses
  %i.fuq = atomicrmw add ptr %i.fup, i64 1 monotonic, align 8, !dbg !61220
  %i.fur = icmp slt i64 %i.fuq, 0, !dbg !61221
  br i1 %i.fur, label %bb.bzd, label %bb.bze, !dbg !61221

bb.bzd:                                           ; preds = %bb.bzc
  call void @llvm.trap(), !dbg !61222
  unreachable, !dbg !61222

bb.bze:                                           ; preds = %bb.bzc
  %i.fus = load ptr, ptr %i.aow, align 8, !dbg !61223, !nonnull !3166, !align !3262, !noundef !3166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !dbg !61224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %i.ed, ptr noundef nonnull align 16 dereferenceable(416) %i.tj, i64 416, i1 false), !dbg !61225
  store ptr %i.fup, ptr %.sroa.45698.0..sroa_idx, align 16, !dbg !61224
  store i32 1, ptr %.sroa.55699.0..sroa_idx, align 8, !dbg !61224
  store i32 1, ptr %.sroa.65700.0..sroa_idx, align 4, !dbg !61224
  %i.fut = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyNtBQ_8PhysNodeE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverEBS_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fus, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(432) %i.ed)
          to label %bb.bzf unwind label %.thread7022, !dbg !61226 ; 2 uses

bb.bzf:                                           ; preds = %bb.bze
  %i.fuu = extractvalue { i32, i32 } %i.fut, 0, !dbg !61227
  %i.fuv = extractvalue { i32, i32 } %i.fut, 1, !dbg !61227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !61228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.th), !dbg !61229
  store i32 %i.fuu, ptr %i.th, align 8, !dbg !61230, !alias.scope !54645
  store i32 %i.fuv, ptr %i.bds, align 4, !dbg !61230, !alias.scope !54645
  store i64 0, ptr %i.bdt, align 8, !dbg !61230, !alias.scope !54645
  %i.fuw = invoke { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullBR_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.amx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.th)
          to label %bb.bzg unwind label %.thread7022, !dbg !61231 ; 0 uses

bb.bzg:                                           ; preds = %bb.bzf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.th), !dbg !61232
  %i.fux = load i64, ptr %i.aor, align 8, !dbg !61233, !alias.scope !54649, !noundef !3166 ; 3 uses
  %i.fuy = load i64, ptr %i.amw, align 8, !dbg !61234, !range !3228, !alias.scope !54649, !noundef !3166
  %i.fuz = icmp eq i64 %i.fux, %i.fuy, !dbg !61235
  br i1 %i.fuz, label %bb.bzh, label %bb.bzi, !dbg !61235

bb.bzh:                                           ; preds = %bb.bzg
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8grow_oneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amw)
          to label %bb.bzi unwind label %.thread7022, !dbg !61236

bb.bzi:                                           ; preds = %bb.bzg, %bb.bzh
  %i.fva = load ptr, ptr %i.aoq, align 8, !dbg !61237, !alias.scope !54649, !nonnull !3166, !noundef !3166
  %i.fvb = getelementptr inbounds nuw [8 x i8], ptr %i.fva, i64 %i.fux, !dbg !61238
  store i64 %i.ftv, ptr %i.fvb, align 8, !dbg !61239
  %i.fvc = add i64 %i.fux, 1, !dbg !61240
  store i64 %i.fvc, ptr %i.aor, align 8, !dbg !61240, !alias.scope !54649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tj), !dbg !61218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tr), !dbg !61241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ts), !dbg !61241
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.tt)
          to label %bb.bzj unwind label %.loopexit7913, !dbg !61187

bb.bzj:                                           ; preds = %bb.bzi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tt), !dbg !61187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tz), !dbg !61242
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.uc)
          to label %bb.bzk unwind label %.loopexit7908, !dbg !61133

bb.bzk:                                           ; preds = %bb.bzj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.uc), !dbg !61133
  %i.fvd = trunc nuw i8 %.sroa.01441.6 to i1, !dbg !61124
  br i1 %i.fvd, label %bb.bzm, label %bb.bzl, !dbg !61124

bb.bzl:                                           ; preds = %bb.bzm, %bb.bzk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ud), !dbg !61124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ue), !dbg !61113
  %i.fve = load i8, ptr %i.uf, align 16, !dbg !61109, !range !3550, !noundef !3166
  %i.fvf = icmp eq i8 %i.fve, 52, !dbg !61109
  br i1 %i.fvf, label %bb.bzn, label %bb.bzo, !dbg !61109

bb.bzm:                                           ; preds = %bb.bzk
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.ud)
          to label %bb.bzl unwind label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5134.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61124

bb.bzn:                                           ; preds = %bb.bzo, %bb.bzl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.uf), !dbg !61109
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.ug)
          to label %bb.bzp unwind label %.thread6140.loopexit, !dbg !61109

bb.bzo:                                           ; preds = %bb.bzl
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr14IRFunctionExprECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.uf)
          to label %bb.bzn unwind label %.loopexit.split-lp7924.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61109

.loopexit.split-lp7924.loopexit.split-lp:         ; preds = %.loopexit.split-lp7924.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread13219, %bb.cad, %bb.cac
  %.pn3620.pn = phi { ptr, i32 } [ %.pn36201321713222, %.thread13219 ], [ %.pn3620, %bb.cac ], [ %.pn362013218, %bb.cad ], [ %lpad.loopexit.split-lp19127, %.loopexit.split-lp7924.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.ug) #56
          to label %.thread6019 unwind label %bb.ce, !dbg !61109

.loopexit.split-lp7924.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bzo, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5132
  %lpad.loopexit.split-lp19127 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp7924.loopexit.split-lp

bb.bzp:                                           ; preds = %bb.bzn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ug), !dbg !61109
  br label %bb.bzq, !dbg !61109

bb.bzq:                                           ; preds = %bb.ceb, %bb.bzp
  %i.fvg = load i64, ptr %i.aos, align 16, !dbg !55570, !range !3237, !noundef !3166 ; 3 uses
  %i.fvh = icmp ne i64 %i.fvg, -9223372036854775791, !dbg !55570
  call void @llvm.assume(i1 %i.fvh), !dbg !55570
  %i.fvi = xor i64 %i.fvg, -9223372036854775808, !dbg !55570
  %i.fvj = icmp slt i64 %i.fvg, 0, !dbg !55570
  %i.fvk = select i1 %i.fvj, i64 %i.fvi, i64 17, !dbg !55570
  switch i64 %i.fvk, label %bb.bds [
    i64 6, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECs2g09Ig8GZd6_13polars_stream.exit4826
    i64 9, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECs2g09Ig8GZd6_13polars_stream.exit4826
    i64 11, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECs2g09Ig8GZd6_13polars_stream.exit4826
    i64 16, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECs2g09Ig8GZd6_13polars_stream.exit4826
    i64 17, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECs2g09Ig8GZd6_13polars_stream.exit4826
    i64 18, label %bb.bdy
  ], !dbg !55570

bb.bzr:                                           ; preds = %bb.bzb
  %lpad.thr_comm.split-lp7021 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan12PhysNodeKindEBK_(ptr noalias noundef align 16 dereferenceable(416) %i.tj) #56
          to label %.critedge unwind label %bb.ce, !dbg !61218

bb.bzs:                                           ; preds = %bb.byu
  %i.fvl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.tr) #56
          to label %bb.bzt unwind label %bb.ce, !dbg !61241

bb.bzt:                                           ; preds = %bb.bzs
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.ts) #56
          to label %.critedge unwind label %bb.ce, !dbg !61241

bb.bzu:                                           ; preds = %bb.byg, %bb.byb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tz), !dbg !61242
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.uc)
          to label %bb.bzv unwind label %.thread11952.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61133

bb.bzv:                                           ; preds = %bb.bzu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.uc), !dbg !61133
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.ud)
          to label %bb.bzw unwind label %.split6998.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61124

bb.bzw:                                           ; preds = %bb.bzv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ud), !dbg !61124
  %i.fvm = load i8, ptr %i.bdb, align 1, !dbg !61243, !range !3277, !alias.scope !54651, !noundef !3166
  %i.fvn = icmp eq i8 %i.fvm, -40, !dbg !61244
  br i1 %i.fvn, label %bb.bzx, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5132, !dbg !61244, !prof !3216

bb.bzx:                                           ; preds = %bb.bzw
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ue)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5132 unwind label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5134.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61245

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5132: ; preds = %bb.bzw, %bb.bzx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ue), !dbg !61113
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr14IRFunctionExprECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.uf)
          to label %bb.bzy unwind label %.loopexit.split-lp7924.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61109

bb.bzy:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.uf), !dbg !61109
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.ug)
          to label %bb.bzz unwind label %.thread6140.loopexit.split-lp, !dbg !61109

bb.bzz:                                           ; preds = %bb.bzy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ug), !dbg !61109
  br label %bb.caa, !dbg !55633

bb.caa:                                           ; preds = %bb.cei, %bb.bzz
  %i.fvo = load i64, ptr %i.aos, align 16, !dbg !55570, !range !3237, !noundef !3166 ; 3 uses
  %i.fvp = icmp ne i64 %i.fvo, -9223372036854775791, !dbg !55570
  call void @llvm.assume(i1 %i.fvp), !dbg !55570
  %i.fvq = xor i64 %i.fvo, -9223372036854775808, !dbg !55570
  %i.fvr = icmp slt i64 %i.fvo, 0, !dbg !55570
  %i.fvs = select i1 %i.fvr, i64 %i.fvq, i64 17, !dbg !55570
  switch i64 %i.fvs, label %bb.bdb [
    i64 6, label %.thread6749
    i64 9, label %.thread6749
    i64 11, label %.thread6749
    i64 16, label %.thread6749
    i64 17, label %.thread6749
    i64 18, label %.thread6749
  ], !dbg !55570

.thread11952.loopexit.split-lp:                   ; preds = %.thread11952.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bxw
  %.pn36167013 = phi { ptr, i32 } [ %.pn3616, %bb.bxw ], [ %lpad.loopexit.split-lp19124, %.thread11952.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.01555.27011 = phi i1 [ %.sroa.01555.2, %bb.bxw ], [ true, %.thread11952.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.ud) #56
          to label %bb.bxs unwind label %bb.ce, !dbg !61124

.split6998.thread:                                ; preds = %.split6998.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bxs
  %.pn36187000 = phi { ptr, i32 } [ %.pn3618, %bb.bxs ], [ %lpad.loopexit.split-lp19121, %.split6998.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.01556.16999 = phi i1 [ %.sroa.01556.1, %bb.bxs ], [ true, %.split6998.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fvt = load i8, ptr %i.bdb, align 1, !dbg !61246, !range !3277, !alias.scope !54652, !noundef !3166
  %i.fvu = icmp eq i8 %i.fvt, -40, !dbg !61247
  br i1 %i.fvu, label %bb.cab, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5134, !dbg !61247, !prof !3216

bb.cab:                                           ; preds = %.split6998.thread
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ue)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5134 unwind label %bb.ce, !dbg !61248

bb.cac:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5134
  br i1 %.sroa.01556.0, label %.thread13219, label %.loopexit.split-lp7924.loopexit.split-lp, !dbg !61109

bb.cad:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5134.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5134
  %.pn362013218 = phi { ptr, i32 } [ %lpad.loopexit.split-lp19118, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5134.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn3620, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5134 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr14IRFunctionExprECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.uf) #56
          to label %.loopexit.split-lp7924.loopexit.split-lp unwind label %bb.ce, !dbg !61109

.thread13219:                                     ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5134.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cac
  %.pn36201321713222 = phi { ptr, i32 } [ %.pn3620, %bb.cac ], [ %lpad.loopexit.split-lp19118, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5134.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.bde) #56
          to label %.loopexit.split-lp7924.loopexit.split-lp unwind label %bb.ce, !dbg !61109

bb.cae:                                           ; preds = %bb.bou
  %i.fvv = load i64, ptr %i.qy, align 8, !dbg !61249, !range !3672, !noundef !3166 ; 2 uses
  %.not3605 = icmp eq i64 %i.fvv, 18, !dbg !61249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61056, ptr noundef nonnull align 8 dereferenceable(16) %i.bcs, i64 16, i1 false), !dbg !61250
  %.sroa.52732.0.copyload = load i64, ptr %.sroa.52732.0..sroa_idx, align 8, !dbg !61250 ; 2 uses
  br i1 %.not3605, label %bb.cag, label %bb.caf, !dbg !61251

bb.caf:                                           ; preds = %bb.cae
  %.sroa.72740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qy, i64 32, !dbg !61252
  %.sroa.42744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !61253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.42744.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.72740.0..sroa_idx, i64 40, i1 false), !dbg !61252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qy), !dbg !61254
  %.sroa.22742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !61253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22742.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61056, i64 16, i1 false), !dbg !61254
  store i64 %i.fvv, ptr %0, align 8, !dbg !61253
  %.sroa.32743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !61253
  store i64 %.sroa.52732.0.copyload, ptr %.sroa.32743.0..sroa_idx, align 8, !dbg !61253
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61056), !dbg !61255
  br label %bb.ck, !dbg !55633

bb.cag:                                           ; preds = %bb.cae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qy), !dbg !61254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61056, i64 16, i1 false), !dbg !54653
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61056), !dbg !61255
  %i.fvw = invoke { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullBR_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.amx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.ax)
          to label %bb.cah unwind label %.thread6140.loopexit, !dbg !61256 ; 0 uses

bb.cah:                                           ; preds = %bb.cag
  %i.fvx = load i64, ptr %i.aor, align 8, !dbg !61257, !alias.scope !54659, !noundef !3166 ; 3 uses
  %i.fvy = load i64, ptr %i.amw, align 8, !dbg !61258, !range !3228, !alias.scope !54659, !noundef !3166
  %i.fvz = icmp eq i64 %i.fvx, %i.fvy, !dbg !61259
  br i1 %i.fvz, label %bb.cai, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8push_mutCs2g09Ig8GZd6_13polars_stream.exit5136, !dbg !61259

bb.cai:                                           ; preds = %bb.cah
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8grow_oneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amw)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8push_mutCs2g09Ig8GZd6_13polars_stream.exit5136 unwind label %.thread6140.loopexit, !dbg !61260

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8push_mutCs2g09Ig8GZd6_13polars_stream.exit5136: ; preds = %bb.cai, %bb.cah
  %i.fwa = load ptr, ptr %i.aoq, align 8, !dbg !61261, !alias.scope !54659, !nonnull !3166, !noundef !3166
  %i.fwb = getelementptr inbounds nuw [8 x i8], ptr %i.fwa, i64 %i.fvx, !dbg !61262
  store i64 %.sroa.52732.0.copyload, ptr %i.fwb, align 8, !dbg !61263
  %i.fwc = add i64 %i.fvx, 1, !dbg !61264
  store i64 %i.fwc, ptr %i.aor, align 8, !dbg !61264, !alias.scope !54659
  br label %bb.cd, !dbg !61265

bb.caj:                                           ; preds = %bb.bov
  %i.fwd = load ptr, ptr %i.ari, align 8, !dbg !61266, !nonnull !3166, !noundef !3166
  %i.fwe = getelementptr inbounds nuw i8, ptr %i.fwd, i64 96, !dbg !61267
  %i.fwf = load i64, ptr %i.fwe, align 16, !dbg !61267, !noundef !3166
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61108), !dbg !54670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qt), !dbg !54670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qs), !dbg !61268
  store i64 %i.fwf, ptr %i.qs, align 8, !dbg !61268
  invoke void @_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr20lower_exprs_with_ctx(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.qt, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.aov, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.qs, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ani)
          to label %bb.cak unwind label %.thread6140.loopexit, !dbg !54670

bb.cak:                                           ; preds = %bb.caj
  %i.fwg = load i64, ptr %i.qt, align 8, !dbg !61269, !range !3672, !noundef !3166 ; 2 uses
  %.not3588 = icmp eq i64 %i.fwg, 18, !dbg !61269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61108, ptr noundef nonnull align 8 dereferenceable(40) %i.bbx, i64 40, i1 false), !dbg !61270
  br i1 %.not3588, label %bb.cam, label %bb.cal, !dbg !61271

bb.cal:                                           ; preds = %bb.cak
  %.sroa.62792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qt, i64 48, !dbg !61272
  %.sroa.32795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !61273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.32795.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62792.0..sroa_idx, i64 24, i1 false), !dbg !61272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qt), !dbg !61274
  %.sroa.22794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !61273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.22794.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61108, i64 40, i1 false), !dbg !61274
  store i64 %i.fwg, ptr %0, align 8, !dbg !61273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qs), !dbg !61275
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61108), !dbg !61275
  br label %bb.ck, !dbg !61276

bb.cam:                                           ; preds = %bb.cak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qt), !dbg !61274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61108, i64 16, i1 false), !dbg !54670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qu), !dbg !61277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61108.24..sroa_idx, i64 24, i1 false), !dbg !54670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qs), !dbg !61275
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61108), !dbg !61275
  %i.fwh = load i64, ptr %i.bby, align 8, !dbg !61278, !noundef !3166
  %.not3589 = icmp eq i64 %i.fwh, 0, !dbg !61279
  br i1 %.not3589, label %bb.cao, label %bb.can, !dbg !61279

bb.can:                                           ; preds = %bb.cam
  %i.fwi = load ptr, ptr %i.bbz, align 8, !dbg !61280, !nonnull !3166, !noundef !3166
  %i.fwj = load i64, ptr %i.fwi, align 8, !dbg !61281, !noundef !3166 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qr), !dbg !54691
  store i8 13, ptr %i.qr, align 16, !dbg !61282
  store i8 15, ptr %i.bca, align 16, !dbg !61282
  store double %i.fiu, ptr %.sroa.42800.0..sroa_idx, align 8, !dbg !61282
  %i.fwk = load ptr, ptr %i.anj, align 8, !dbg !61283, !nonnull !3166, !align !3262, !noundef !3166
  %i.fwl = invoke noundef i64 @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr7builderNtB2_12AExprBuilder10lit_scalar(ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.qr, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fwk)
          to label %bb.cap unwind label %.thread7506.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61284 ; 2 uses

bb.cao:                                           ; preds = %bb.cam
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #54
          to label %bb.q unwind label %.thread7506.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61279

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5154: ; preds = %.thread7506.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread7026, %bb.ccw, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5152, %.loopexit.split-lp7882.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn3603 = phi { ptr, i32 } [ %.pn36017029, %.thread7026 ], [ %.pn35997035, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5152 ], [ %.pn36017029, %bb.ccw ], [ %lpad.loopexit.split-lp19103, %.loopexit.split-lp7882.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp19100, %.thread7506.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.qu) #56
          to label %.thread6019 unwind label %bb.ce, !dbg !61285

bb.cap:                                           ; preds = %bb.can
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qr), !dbg !61286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qq), !dbg !54693
  %i.fwm = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 224)
          to label %bb.caq unwind label %.thread7506.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61287 ; 9 uses

bb.caq:                                           ; preds = %bb.cap
  store i64 3, ptr %i.fwm, align 16, !dbg !54693
  %.sroa.01115.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fwm, i64 8, !dbg !54693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01115.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) @96, i64 24, i1 false), !dbg !54693
  %.sroa.01115.sroa.5.sroa.4.0..sroa.01115.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fwm, i64 80, !dbg !54693
  store i32 3, ptr %.sroa.01115.sroa.5.sroa.4.0..sroa.01115.sroa.5.0..sroa_idx.sroa_idx, align 16, !dbg !54693
  %.sroa.51116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fwm, i64 96, !dbg !54693
  store i64 %i.fwj, ptr %.sroa.51116.0..sroa_idx, align 16, !dbg !54693
  %i.fwn = getelementptr inbounds nuw i8, ptr %i.fwm, i64 112, !dbg !54693
  store i64 3, ptr %i.fwn, align 16, !dbg !54693
  %.sroa.01118.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fwm, i64 120, !dbg !54693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01118.sroa.0.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) @96, i64 24, i1 false), !dbg !54693
  %.sroa.01118.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fwm, i64 192, !dbg !54693
  store i32 3, ptr %.sroa.01118.sroa.5.0..sroa_idx, align 16, !dbg !54693
  %.sroa.51119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fwm, i64 208, !dbg !54693
  store i64 %i.fwl, ptr %.sroa.51119.0..sroa_idx, align 16, !dbg !54693
  store i64 2, ptr %i.qq, align 8, !dbg !61288
  store ptr %i.fwm, ptr %i.bcb, align 8, !dbg !61288
  store i64 2, ptr %i.bcc, align 8, !dbg !61288
  store i8 68, ptr %i.qp, align 16, !dbg !61289
  %i.fwo = load ptr, ptr %i.anj, align 8, !dbg !61290, !nonnull !3166, !align !3262, !noundef !3166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !61291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ak, ptr noundef nonnull align 16 dereferenceable(112) %i.qp, i64 112, i1 false), !dbg !61291
  %i.fwp = invoke noundef i64 @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr7builderNtB2_12AExprBuilder8function(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.qq, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fwo)
          to label %bb.car unwind label %.thread7506.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61291

bb.car:                                           ; preds = %bb.caq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !61291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qq), !dbg !61292
  %i.fwq = load ptr, ptr %i.anj, align 8, !dbg !61293, !nonnull !3166, !align !3262, !noundef !3166
  %i.fwr = invoke noundef i64 @_RINvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr7builderNtB3_12AExprBuilder9binary_opBU_ECs2g09Ig8GZd6_13polars_stream(i64 noundef %i.fwj, i64 noundef %i.fwp, i8 noundef 10, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fwq)
          to label %bb.cas unwind label %.thread7506.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61294

bb.cas:                                           ; preds = %bb.car
  %i.fws = load ptr, ptr %i.anj, align 8, !dbg !61295, !nonnull !3166, !align !3262, !noundef !3166
  %i.fwt = invoke noundef i64 @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr7builderNtB2_12AExprBuilder3sum(i64 noundef %i.fwr, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fws)
          to label %bb.cat unwind label %.thread7506.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61296 ; 2 uses

bb.cat:                                           ; preds = %bb.cas
  br i1 %i.fiw, label %bb.cav, label %bb.cau, !dbg !61297

bb.cau:                                           ; preds = %bb.cat
  %i.fwu = load ptr, ptr %i.anj, align 8, !dbg !61298, !nonnull !3166, !align !3262, !noundef !3166
  %i.fwv = invoke noundef i64 @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr7builderNtB2_12AExprBuilder6negate(i64 noundef %i.fwt, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fwu)
          to label %bb.caw unwind label %.thread7506.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61299

bb.cav:                                           ; preds = %bb.cat
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ql), !dbg !61300
  invoke void @_RNvNtCs2mZqlW55729_12polars_utils6pl_str18unique_column_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ql)
          to label %bb.cbi unwind label %.thread7506.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61301

bb.caw:                                           ; preds = %bb.cau
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61123), !dbg !54701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qn), !dbg !54701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qm), !dbg !61302
  store i64 %i.fwv, ptr %i.qm, align 8, !dbg !61302
  invoke void @_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr20lower_exprs_with_ctx(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.qn, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.qm, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ani)
          to label %bb.cax unwind label %.thread7506.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !54701

bb.cax:                                           ; preds = %bb.caw
  %i.fww = load i64, ptr %i.qn, align 8, !dbg !61303, !range !3672, !noundef !3166 ; 2 uses
  %.not3590 = icmp eq i64 %i.fww, 18, !dbg !61303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61123, ptr noundef nonnull align 8 dereferenceable(40) %i.bcd, i64 40, i1 false), !dbg !61304
  br i1 %.not3590, label %bb.caz, label %bb.cay, !dbg !61305

bb.cay:                                           ; preds = %bb.cax
  %.sroa.62825.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qn, i64 48, !dbg !61306
  %.sroa.32828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !61307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.32828.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62825.0..sroa_idx, i64 24, i1 false), !dbg !61306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qn), !dbg !61308
  %.sroa.22827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !61307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.22827.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61123, i64 40, i1 false), !dbg !61308
  store i64 %i.fww, ptr %0, align 8, !dbg !61307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qm), !dbg !61309
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61123), !dbg !61309
  br label %bb.cbh, !dbg !61310

bb.caz:                                           ; preds = %bb.cax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qn), !dbg !61308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61123, i64 16, i1 false), !dbg !54701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qo), !dbg !61311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qo, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61123.24..sroa_idx, i64 24, i1 false), !dbg !54701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qm), !dbg !61309
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61123), !dbg !61309
  %i.fwx = invoke { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullBR_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.amx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.at)
          to label %bb.cba unwind label %.loopexit.split-lp7882.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !61312 ; 0 uses
end_hunk_2
begin_hunk_3_@_RNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr20lower_exprs_with_ctx0B7_:bb.a
  %i.gmu = icmp eq i32 %i.gmt, 1, !dbg !62166
  br i1 %i.gmu, label %bb.cmu, label %bb.cmt, !dbg !62166

bb.cmt:                                           ; preds = %.noexc5358
  %i.gmv = load ptr, ptr %i.gmr, align 16, !dbg !62167, !noalias !55166, !noundef !3166
  br label %bb.cmu, !dbg !62168

bb.cmu:                                           ; preds = %bb.cmt, %.noexc5358
  %.sroa.0.0.i5357 = phi ptr [ %i.gmv, %bb.cmt ], [ %i.gmr, %.noexc5358 ], !dbg !62169
  %i.gmw = getelementptr inbounds nuw i8, ptr %i.gmq, i64 424, !dbg !62170
  %i.gmx = load i32, ptr %i.gmw, align 8, !dbg !62170, !noalias !55166, !noundef !3166
  %i.gmy = zext i32 %i.gmx to i64, !dbg !62170    ; 2 uses
  %i.gmz = icmp ult i64 %.sroa.52960.sroa.6.0.copyload, %i.gmy, !dbg !62171
  br i1 %i.gmz, label %bb.cmw, label %bb.cmv, !dbg !62171

bb.cmv:                                           ; preds = %bb.cmu
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.52960.sroa.6.0.copyload, i64 noundef %i.gmy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @367) #57
          to label %.noexc5359 unwind label %.split7211.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62171

.noexc5359:                                       ; preds = %bb.cmv
  unreachable, !dbg !62171

bb.cmw:                                           ; preds = %bb.cmu
  %i.gna = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i5357, i64 %.sroa.52960.sroa.6.0.copyload, !dbg !62172
  %i.gnb = load ptr, ptr %i.gna, align 8, !dbg !62173, !nonnull !3166, !noundef !3166 ; 2 uses
  %i.gnc = atomicrmw add ptr %i.gnb, i64 1 monotonic, align 8, !dbg !62174
  %i.gnd = icmp slt i64 %i.gnc, 0, !dbg !62175
  br i1 %i.gnd, label %bb.cmx, label %bb.cmy, !dbg !62175

bb.cmx:                                           ; preds = %bb.cmw
  call void @llvm.trap(), !dbg !62176
  unreachable, !dbg !62176

bb.cmy:                                           ; preds = %bb.cmw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !dbg !62177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.75809.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ny, i64 16, i1 false), !dbg !62178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.85810.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.nv, i64 16, i1 false), !dbg !62178
  %i.gne = load ptr, ptr %i.aow, align 8, !dbg !62179, !nonnull !3166, !align !3262, !noundef !3166
  store i64 10, ptr %i.ck, align 16, !dbg !62177
  store i32 %.sroa.52960.sroa.0.0.copyload, ptr %.sroa.45806.0..sroa_idx, align 8, !dbg !62177
  store i32 %.sroa.52960.sroa.5.0.copyload, ptr %.sroa.55807.0..sroa_idx, align 4, !dbg !62177
  store i64 %.sroa.52960.sroa.6.0.copyload, ptr %.sroa.65808.0..sroa_idx, align 16, !dbg !62177
  store ptr %i.gnb, ptr %.sroa.105812.0..sroa_idx, align 16, !dbg !62177
  store i32 1, ptr %.sroa.115813.0..sroa_idx, align 8, !dbg !62177
  store i32 1, ptr %.sroa.125814.0..sroa_idx, align 4, !dbg !62177
  %i.gnf = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyNtBQ_8PhysNodeE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverEBS_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gne, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(432) %i.ck)
          to label %bb.cmz unwind label %.split7211.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62180 ; 2 uses

bb.cmz:                                           ; preds = %bb.cmy
  %i.gng = extractvalue { i32, i32 } %i.gnf, 0, !dbg !62181
  %i.gnh = extractvalue { i32, i32 } %i.gnf, 1, !dbg !62181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !dbg !62182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nu), !dbg !62183
  store i32 %i.gng, ptr %i.nu, align 8, !dbg !62184, !alias.scope !55176
  store i32 %i.gnh, ptr %i.api, align 4, !dbg !62184, !alias.scope !55176
  store i64 0, ptr %i.apj, align 8, !dbg !62184, !alias.scope !55176
  %i.gni = invoke { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullBR_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.amx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.nu)
          to label %bb.cna unwind label %.split7211.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62185 ; 0 uses

bb.cna:                                           ; preds = %bb.cmz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nu), !dbg !62186
  %i.gnj = load ptr, ptr %i.anj, align 8, !dbg !62187, !nonnull !3166, !align !3262, !noundef !3166 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nt), !dbg !62188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.nt, ptr noundef nonnull align 8 dereferenceable(24) %i.og, i64 24, i1 false), !dbg !62189
  store i64 -9223372036854775806, ptr %i.apk, align 16, !dbg !62188
  %i.gnk = getelementptr inbounds nuw i8, ptr %i.gnj, i64 16, !dbg !62190 ; 2 uses
  %i.gnl = load i64, ptr %i.gnk, align 8, !dbg !62190, !noundef !3166 ; 5 uses
  %i.gnm = icmp ult i64 %i.gnl, 64051194700380388, !dbg !62191
  call void @llvm.assume(i1 %i.gnm), !dbg !62192
  %i.gnn = load i64, ptr %i.gnj, align 8, !dbg !62193, !range !3228, !alias.scope !55183, !noundef !3166
  %i.gno = icmp eq i64 %i.gnl, %i.gnn, !dbg !62194
  br i1 %i.gno, label %bb.cnb, label %bb.cne, !dbg !62194

bb.cnb:                                           ; preds = %bb.cna
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gnj)
          to label %bb.cne unwind label %bb.cnc, !dbg !62195, !noalias !55186

bb.cnc:                                           ; preds = %bb.cnb
  %i.gnp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.nt) #56
          to label %.thread6019 unwind label %bb.cnd, !dbg !62196

bb.cnd:                                           ; preds = %bb.cnc
  %i.gnq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !62197
  unreachable, !dbg !62197

bb.cne:                                           ; preds = %bb.cnb, %bb.cna
  %i.gnr = getelementptr inbounds nuw i8, ptr %i.gnj, i64 8, !dbg !62198
  %i.gns = load ptr, ptr %i.gnr, align 8, !dbg !62198, !alias.scope !55183, !nonnull !3166, !noundef !3166
  %i.gnt = getelementptr inbounds nuw [144 x i8], ptr %i.gns, i64 %i.gnl, !dbg !62199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.gnt, ptr noundef nonnull align 16 dereferenceable(144) %i.nt, i64 144, i1 false), !dbg !62200
  %i.gnu = add nuw nsw i64 %i.gnl, 1, !dbg !62201
  store i64 %i.gnu, ptr %i.gnk, align 8, !dbg !62201, !alias.scope !55183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nt), !dbg !62202
  %i.gnv = load i64, ptr %i.aor, align 8, !dbg !62203, !alias.scope !55187, !noundef !3166 ; 3 uses
  %i.gnw = load i64, ptr %i.amw, align 8, !dbg !62204, !range !3228, !alias.scope !55187, !noundef !3166
  %i.gnx = icmp eq i64 %i.gnv, %i.gnw, !dbg !62205
  br i1 %i.gnx, label %bb.cnf, label %bb.cng, !dbg !62205

bb.cnf:                                           ; preds = %bb.cne
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8grow_oneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amw)
          to label %bb.cng unwind label %.body5382.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62206

bb.cng:                                           ; preds = %bb.cne, %bb.cnf
  %i.gny = load ptr, ptr %i.aoq, align 8, !dbg !62207, !alias.scope !55187, !nonnull !3166, !noundef !3166
  %i.gnz = getelementptr inbounds nuw [8 x i8], ptr %i.gny, i64 %i.gnv, !dbg !62208
  store i64 %i.gnl, ptr %i.gnz, align 8, !dbg !62209
  %i.goa = add i64 %i.gnv, 1, !dbg !62210
  store i64 %i.goa, ptr %i.aor, align 8, !dbg !62210, !alias.scope !55187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.od), !dbg !62211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oe), !dbg !62126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.of), !dbg !62122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.og), !dbg !62212
  br label %bb.cd, !dbg !62213

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5353: ; preds = %bb.cmr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nw), !dbg !62162
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61262), !dbg !62162
  br label %bb.cnh, !dbg !62211

bb.cnh:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5344, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.od), !dbg !62211
  br label %bb.cni, !dbg !62126

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5344: ; preds = %bb.cmn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nz), !dbg !62150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61253), !dbg !62150
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.od)
          to label %bb.cnh unwind label %.split7211.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62211

bb.cni:                                           ; preds = %bb.cnk, %bb.cnh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oe), !dbg !62126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.of), !dbg !62122
  %i.gob = load i8, ptr %i.apd, align 1, !dbg !62214, !range !3277, !alias.scope !55189, !noundef !3166
  %i.goc = icmp eq i8 %i.gob, -40, !dbg !62215
  br i1 %i.goc, label %bb.cnj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5369, !dbg !62215, !prof !3216

bb.cnj:                                           ; preds = %bb.cni
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.og)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5369 unwind label %.thread6140.loopexit.split-lp, !dbg !62216

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5335: ; preds = %bb.cmj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ob), !dbg !62138
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.od)
          to label %bb.cnk unwind label %.split7211.thread.loopexit.split-lp, !dbg !62211

bb.cnk:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.od), !dbg !62211
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.oe)
          to label %bb.cni unwind label %.split7211.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62126

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5369: ; preds = %bb.cni, %bb.cnj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.og), !dbg !62212
  br label %bb.ck, !dbg !55633

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5332.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5332.loopexit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5332.loopexit.split-lp, %bb.cml, %bb.cmh
  %.pn33027226 = phi { ptr, i32 } [ %i.gml, %bb.cml ], [ %i.gmj, %bb.cmh ], [ %lpad.loopexit7600, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5332.loopexit ], [ %lpad.loopexit.split-lp7601, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5332.loopexit.split-lp ] ; 2 uses
  %.sroa.01476.27225 = phi i1 [ false, %bb.cml ], [ true, %bb.cmh ], [ %.sroa.01476.3.ph.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5332.loopexit ], [ %.not3299.not.not.not.not.not.not.not, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5332.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.od) #56
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5332.thread7227 unwind label %bb.ce, !dbg !62211

.split7211.thread:                                ; preds = %.split7211.thread.loopexit, %.split7211.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5332.thread7227
  %.pn33047214 = phi { ptr, i32 } [ %.pn33027226, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5332.thread7227 ], [ %lpad.loopexit7596, %.split7211.thread.loopexit ], [ %lpad.loopexit.split-lp7597, %.split7211.thread.loopexit.split-lp ] ; 2 uses
  %.sroa.01521.27213 = phi i1 [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5332.thread7227 ], [ true, %.split7211.thread.loopexit ], [ false, %.split7211.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.oe) #56
          to label %bb.cme unwind label %bb.ce, !dbg !62126

bb.cnl:                                           ; preds = %.split7207.thread, %bb.cme
  %.pn33067209 = phi { ptr, i32 } [ %i.gmh, %.split7207.thread ], [ %.pn33047214, %bb.cme ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.of) #56
          to label %.thread7481 unwind label %bb.ce, !dbg !62122

.thread7481:                                      ; preds = %.split7211.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cnl, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5332.thread7227, %bb.cmp, %bb.cme
  %.pn3306.pn7206 = phi { ptr, i32 } [ %.pn33067209, %bb.cnl ], [ %.pn33027226, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit5332.thread7227 ], [ %i.gmn, %bb.cmp ], [ %.pn33047214, %bb.cme ], [ %lpad.loopexit.split-lp18962, %.split7211.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.god = load i8, ptr %i.apd, align 1, !dbg !62217, !range !3277, !alias.scope !55190, !noundef !3166
  %i.goe = icmp eq i8 %i.god, -40, !dbg !62218
  br i1 %i.goe, label %bb.cnm, label %.thread6019, !dbg !62218, !prof !3216

bb.cnm:                                           ; preds = %.thread7481
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.og)
          to label %.thread6019 unwind label %bb.ce, !dbg !62219

bb.cnn:                                           ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.py), !dbg !62220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !dbg !62221
  %i.gof = load i8, ptr %i.aot, align 1, !dbg !62222, !range !3277, !noundef !3166
  %i.gog = icmp eq i8 %i.gof, -40, !dbg !62223
  br i1 %i.gog, label %bb.cno, label %bb.cnp, !dbg !62223

bb.cno:                                           ; preds = %bb.cnn
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pz)
          to label %bb.cnq unwind label %.thread7245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62224

bb.cnp:                                           ; preds = %bb.cnn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.pz, i64 24, i1 false), !dbg !62225
  br label %bb.cnq, !dbg !62226

.body5382.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.zz, %bb.ain, %bb.apk, %bb.azt, %bb.bdn, %bb.bgt, %bb.blj, %bb.cnf, %bb.btp, %bb.btn, %bb.btk, %bb.btj, %bb.bti, %bb.bqk, %bb.bqg, %bb.bll, %bb.bgv, %bb.bdp, %bb.bbu, %bb.ayo, %bb.awz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4708, %bb.arg, %bb.apm, %bb.aip, %bb.aab, %bb.ow, %bb.mp, %bb.lk, %bb.jv, %bb.gq, %bb.fm, %bb.eh, %bb.da, %bb.cgg, %bb.civ, %bb.coe, %bb.avn
  %lpad.loopexit.split-lp18959 = landingpad { ptr, i32 }
          cleanup
  br label %.thread6019

.thread7245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cnx, %bb.cny, %bb.cno, %bb.cnu
  %lpad.loopexit.split-lp18953 = landingpad { ptr, i32 }
          cleanup
  br label %.body5382.thread.thread

bb.cnq:                                           ; preds = %bb.cno, %bb.cnp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.41154.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !dbg !62227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !dbg !62228
  store i64 3, ptr %i.py, align 16, !dbg !62229
  store i64 %i.bnk, ptr %i.aou, align 16, !dbg !62229
  store i32 3, ptr %.sroa.42845.0..sroa_idx, align 16, !dbg !62229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.px), !dbg !62230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pw), !dbg !55205
  call void @llvm.experimental.noalias.scope.decl(metadata !55202), !dbg !55205
  %i.goh = load ptr, ptr %i.aow, align 8, !dbg !62231, !alias.scope !55202, !nonnull !3166, !align !3262, !noundef !3166
  %i.goi = invoke noundef nonnull align 16 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyNtBP_8PhysNodeEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexBN_E5indexBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.goh, i32 noundef %.sroa.05965.0.copyload, i32 noundef %.sroa.35967.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @366)
          to label %.noexc5374 unwind label %.loopexit.split-lp7586.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62232 ; 3 uses

.noexc5374:                                       ; preds = %bb.cnq
  %i.goj = getelementptr inbounds nuw i8, ptr %i.goi, i64 416, !dbg !62233 ; 2 uses
  %i.gok = getelementptr inbounds nuw i8, ptr %i.goi, i64 428, !dbg !62233
  %i.gol = load i32, ptr %i.gok, align 4, !dbg !62233, !range !3804, !noalias !55203, !noundef !3166
  %i.gom = icmp eq i32 %i.gol, 1, !dbg !62234
  br i1 %i.gom, label %bb.cns, label %bb.cnr, !dbg !62234

bb.cnr:                                           ; preds = %.noexc5374
  %i.gon = load ptr, ptr %i.goj, align 16, !dbg !62235, !noalias !55203, !noundef !3166
  br label %bb.cns, !dbg !62236

bb.cns:                                           ; preds = %bb.cnr, %.noexc5374
  %.sroa.0.0.i.i5372 = phi ptr [ %i.gon, %bb.cnr ], [ %i.goj, %.noexc5374 ], !dbg !62237
  %i.goo = getelementptr inbounds nuw i8, ptr %i.goi, i64 424, !dbg !62238
  %i.gop = load i32, ptr %i.goo, align 8, !dbg !62238, !noalias !55203, !noundef !3166
  %i.goq = zext i32 %i.gop to i64, !dbg !62238    ; 2 uses
  %i.gor = icmp ult i64 %.sroa.45969.0.copyload, %i.goq, !dbg !62239
  br i1 %i.gor, label %_RNvMs0_NtCs2g09Ig8GZd6_13polars_stream13physical_planNtB5_10PhysStream13output_schema.exit.i5373, label %bb.cnt, !dbg !62239

bb.cnt:                                           ; preds = %bb.cns
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.45969.0.copyload, i64 noundef %i.goq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @367) #57
          to label %.noexc5375 unwind label %.loopexit.split-lp7586.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62239

.noexc5375:                                       ; preds = %bb.cnt
  unreachable, !dbg !62239

_RNvMs0_NtCs2g09Ig8GZd6_13polars_stream13physical_planNtB5_10PhysStream13output_schema.exit.i5373: ; preds = %bb.cns
  %i.gos = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i5372, i64 %.sroa.45969.0.copyload, !dbg !62240
  %i.got = load ptr, ptr %i.gos, align 8, !dbg !62241, !noalias !55204, !nonnull !3166, !noundef !3166
  %i.gou = getelementptr inbounds nuw i8, ptr %i.got, i64 16, !dbg !62242
  %i.gov = load ptr, ptr %i.anj, align 8, !dbg !62243, !alias.scope !55202, !nonnull !3166, !align !3262, !noundef !3166
  invoke void @_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr21compute_output_schema(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.pw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.gou, ptr noundef nonnull align 16 %i.py, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gov)
          to label %_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr17schema_for_select.exit5377 unwind label %.loopexit.split-lp7586.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62244

.loopexit.split-lp7586.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs0_NtCs2g09Ig8GZd6_13polars_stream13physical_planNtB5_10PhysStream13output_schema.exit.i5373, %bb.cnq, %bb.cnt
  %lpad.loopexit.split-lp18956 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp7586.loopexit.split-lp

_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr17schema_for_select.exit5377: ; preds = %_RNvMs0_NtCs2g09Ig8GZd6_13polars_stream13physical_planNtB5_10PhysStream13output_schema.exit.i5373
  %i.gow = load i64, ptr %i.pw, align 8, !dbg !62245, !range !3672, !noundef !3166 ; 2 uses
  %.not3295 = icmp eq i64 %i.gow, 18, !dbg !62245
  %i.gox = load ptr, ptr %i.aox, align 8, !dbg !62246 ; 4 uses
  br i1 %.not3295, label %bb.cnv, label %bb.cnu, !dbg !62247

bb.cnu:                                           ; preds = %_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr17schema_for_select.exit5377
  %.sroa.62854.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 16, !dbg !62248
  %.sroa.32857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !62249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.32857.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.62854.0..sroa_idx, i64 56, i1 false), !dbg !62248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pw), !dbg !62250
  store i64 %i.gow, ptr %0, align 8, !dbg !62249
  %.sroa.22856.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62249
  store ptr %i.gox, ptr %.sroa.22856.0..sroa_idx, align 8, !dbg !62249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.px), !dbg !62251
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.py)
          to label %bb.coy unwind label %.thread7245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62252

bb.cnv:                                           ; preds = %_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr17schema_for_select.exit5377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pw), !dbg !62250
  store ptr %i.gox, ptr %i.px, align 8, !dbg !62253
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !dbg !62254
  %i.goy = call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 1, 545) 112, i64 noundef range(i64 1, 17) 16) #53, !dbg !62255 ; 3 uses
  %i.goz = icmp eq ptr %i.goy, null, !dbg !62256
  br i1 %i.goz, label %bb.cnw, label %bb.cnx, !dbg !62257, !prof !3216

bb.cnw:                                           ; preds = %bb.cnv
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #54
          to label %.noexc5378 unwind label %bb.cow, !dbg !62258

.noexc5378:                                       ; preds = %bb.cnw
  unreachable, !dbg !62258

bb.cnx:                                           ; preds = %bb.cnv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.goy, ptr noundef nonnull align 16 dereferenceable(112) %i.py, i64 112, i1 false), !dbg !62259
  %i.gpa = load ptr, ptr %i.aow, align 8, !dbg !62260, !nonnull !3166, !align !3262, !noundef !3166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !dbg !62261
  store i64 7, ptr %i.df, align 16, !dbg !62261
  store i64 1, ptr %.sroa.45775.0..sroa_idx, align 8, !dbg !62261
  store ptr %i.goy, ptr %.sroa.55776.0..sroa_idx, align 16, !dbg !62261
  store i64 1, ptr %.sroa.65777.0..sroa_idx, align 8, !dbg !62261
  store i32 %.sroa.05965.0.copyload, ptr %.sroa.75778.0..sroa_idx, align 16, !dbg !62261
  store i32 %.sroa.35967.0.copyload, ptr %.sroa.75778.sroa.4.0..sroa.75778.0..sroa_idx.sroa_idx, align 4, !dbg !62261
  store i64 %.sroa.45969.0.copyload, ptr %.sroa.75778.sroa.5.0..sroa.75778.0..sroa_idx.sroa_idx, align 8, !dbg !62261
  store ptr %i.gox, ptr %.sroa.95780.0..sroa_idx, align 16, !dbg !62261
  store i32 1, ptr %.sroa.105781.0..sroa_idx, align 8, !dbg !62261
  store i32 1, ptr %.sroa.115782.0..sroa_idx, align 4, !dbg !62261
  %i.gpb = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyNtBQ_8PhysNodeE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverEBS_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gpa, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(432) %i.df)
          to label %bb.cny unwind label %.thread7245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62262 ; 2 uses

bb.cny:                                           ; preds = %bb.cnx
  %i.gpc = extractvalue { i32, i32 } %i.gpb, 0, !dbg !62263
  %i.gpd = extractvalue { i32, i32 } %i.gpb, 1, !dbg !62263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !dbg !62264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pv), !dbg !62265
  store i32 %i.gpc, ptr %i.pv, align 8, !dbg !62266, !alias.scope !55210
  store i32 %i.gpd, ptr %i.aoy, align 4, !dbg !62266, !alias.scope !55210
  store i64 0, ptr %i.aoz, align 8, !dbg !62266, !alias.scope !55210
  %i.gpe = invoke { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullBR_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.amx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.pv)
          to label %bb.cnz unwind label %.thread7245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62267 ; 0 uses

bb.cnz:                                           ; preds = %bb.cny
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pv), !dbg !62268
  %i.gpf = load ptr, ptr %i.anj, align 8, !dbg !62269, !nonnull !3166, !align !3262, !noundef !3166 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pu), !dbg !62270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.pu, ptr noundef nonnull align 8 dereferenceable(24) %i.pz, i64 24, i1 false), !dbg !62271
  store i64 -9223372036854775806, ptr %i.apa, align 16, !dbg !62270
  %i.gpg = getelementptr inbounds nuw i8, ptr %i.gpf, i64 16, !dbg !62272 ; 2 uses
  %i.gph = load i64, ptr %i.gpg, align 8, !dbg !62272, !noundef !3166 ; 5 uses
  %i.gpi = icmp ult i64 %i.gph, 64051194700380388, !dbg !62273
  call void @llvm.assume(i1 %i.gpi), !dbg !62274
  %i.gpj = load i64, ptr %i.gpf, align 8, !dbg !62275, !range !3228, !alias.scope !55217, !noundef !3166
  %i.gpk = icmp eq i64 %i.gph, %i.gpj, !dbg !62276
  br i1 %i.gpk, label %bb.coa, label %bb.cod, !dbg !62276

bb.coa:                                           ; preds = %bb.cnz
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gpf)
          to label %bb.cod unwind label %bb.cob, !dbg !62277, !noalias !55220

bb.cob:                                           ; preds = %bb.coa
  %i.gpl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.pu) #56
          to label %.thread6019 unwind label %bb.coc, !dbg !62278

bb.coc:                                           ; preds = %bb.cob
  %i.gpm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !62279
  unreachable, !dbg !62279

bb.cod:                                           ; preds = %bb.coa, %bb.cnz
  %i.gpn = getelementptr inbounds nuw i8, ptr %i.gpf, i64 8, !dbg !62280
  %i.gpo = load ptr, ptr %i.gpn, align 8, !dbg !62280, !alias.scope !55217, !nonnull !3166, !noundef !3166
  %i.gpp = getelementptr inbounds nuw [144 x i8], ptr %i.gpo, i64 %i.gph, !dbg !62281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.gpp, ptr noundef nonnull align 16 dereferenceable(144) %i.pu, i64 144, i1 false), !dbg !62282
  %i.gpq = add nuw nsw i64 %i.gph, 1, !dbg !62283
  store i64 %i.gpq, ptr %i.gpg, align 8, !dbg !62283, !alias.scope !55217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pu), !dbg !62284
  %i.gpr = load i64, ptr %i.aor, align 8, !dbg !62285, !alias.scope !55221, !noundef !3166 ; 3 uses
  %i.gps = load i64, ptr %i.amw, align 8, !dbg !62286, !range !3228, !alias.scope !55221, !noundef !3166
  %i.gpt = icmp eq i64 %i.gpr, %i.gps, !dbg !62287
  br i1 %i.gpt, label %bb.coe, label %bb.cof, !dbg !62287

bb.coe:                                           ; preds = %bb.cod
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8grow_oneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amw)
          to label %bb.cof unwind label %.body5382.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62288

bb.cof:                                           ; preds = %bb.cod, %bb.coe
  %i.gpu = load ptr, ptr %i.aoq, align 8, !dbg !62289, !alias.scope !55221, !nonnull !3166, !noundef !3166
  %i.gpv = getelementptr inbounds nuw [8 x i8], ptr %i.gpu, i64 %i.gpr, !dbg !62290
  store i64 %i.gph, ptr %i.gpv, align 8, !dbg !62291
  %i.gpw = add i64 %i.gpr, 1, !dbg !62292
  store i64 %i.gpw, ptr %i.aor, align 8, !dbg !62292, !alias.scope !55221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.px), !dbg !62251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.py), !dbg !62252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pz), !dbg !62293
  br label %bb.cd, !dbg !62293

bb.cog:                                           ; preds = %bb.bdw
  %i.gpx = landingpad { ptr, i32 }
          cleanup
  br label %.body4819

.body4819:                                        ; preds = %bb.bdv, %bb.cog
  %eh.lpad-body4820 = phi { ptr, i32 } [ %i.gpx, %bb.cog ], [ %i.evh, %bb.bdv ] ; 7 uses
  %i.gpy = trunc nuw i8 %.sroa.01446.7 to i1, !dbg !55570
  br i1 %i.gpy, label %bb.coo, label %.thread, !dbg !55570

bb.coh:                                           ; preds = %bb.bdt
  %i.gpz = load i8, ptr %i.amu, align 16, !dbg !55570, !range !3550, !noundef !3166
  switch i8 %i.gpz, label %bb.coi [
    i8 20, label %bb.cok
    i8 59, label %bb.coj
  ], !dbg !55570

bb.coi:                                           ; preds = %bb.coh
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr14IRFunctionExprECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.amu)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECs2g09Ig8GZd6_13polars_stream.exit4826 unwind label %.loopexit.split-lp7632.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !55570
end_hunk_3
begin_hunk_4_@_RNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr20lower_exprs_with_ctx0B7_:bb.a
bb.cok:                                           ; preds = %bb.coh
  %i.gqd = load i8, ptr %i.apc, align 16, !dbg !55570, !range !3555, !noundef !3166
  switch i8 %i.gqd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECs2g09Ig8GZd6_13polars_stream.exit4826 [
    i8 0, label %bb.col
    i8 7, label %bb.con
    i8 1, label %.invoke13166
    i8 6, label %bb.com
  ], !dbg !55570

bb.col:                                           ; preds = %bb.cok
  %i.gqe = trunc nuw i8 %.sroa.01456.7 to i1, !dbg !55570
  br i1 %i.gqe, label %.invoke13166, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECs2g09Ig8GZd6_13polars_stream.exit4826, !dbg !55570

.invoke13166:                                     ; preds = %bb.col, %bb.cok
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.aqp)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECs2g09Ig8GZd6_13polars_stream.exit4826 unwind label %.loopexit.split-lp7632.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !55570

bb.com:                                           ; preds = %bb.cok
  %i.gqf = load i8, ptr %i.bnh, align 1, !dbg !62294, !range !3489, !alias.scope !55223, !noundef !3166
  %cond.i.i = icmp eq i8 %i.gqf, -40, !dbg !62294
  br i1 %cond.i.i, label %.invoke13167, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECs2g09Ig8GZd6_13polars_stream.exit4826, !dbg !62294, !prof !3487

bb.con:                                           ; preds = %bb.cok
  %i.gqg = load i8, ptr %i.bnh, align 1, !dbg !62295, !range !3489, !alias.scope !55224, !noundef !3166
  %cond.i1.i = icmp eq i8 %i.gqg, -40, !dbg !62295
  br i1 %cond.i1.i, label %.invoke13167, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECs2g09Ig8GZd6_13polars_stream.exit4826, !dbg !62295, !prof !3487

.invoke13167:                                     ; preds = %bb.coj, %bb.con, %bb.com
  %i.gqh = phi ptr [ %i.ayr, %bb.con ], [ %i.ayr, %bb.com ], [ %i.apb, %bb.coj ]
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gqh)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECs2g09Ig8GZd6_13polars_stream.exit4826 unwind label %.loopexit.split-lp7632.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !55570

bb.coo:                                           ; preds = %.body4819
  %i.gqi = load i8, ptr %i.amu, align 16, !dbg !55570, !range !3550, !noundef !3166
  switch i8 %i.gqi, label %bb.cop [
    i8 20, label %bb.cor
    i8 59, label %bb.coq
  ], !dbg !55570

bb.cop:                                           ; preds = %bb.coo
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr14IRFunctionExprECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.amu) #56
          to label %.thread unwind label %bb.ce, !dbg !55570

bb.coq:                                           ; preds = %bb.coo
  %i.gqj = trunc nuw i8 %.sroa.01461.7 to i1, !dbg !55570
  %i.gqk = load i8, ptr %i.bng, align 1, !range !3277
  %i.gql = icmp eq i8 %i.gqk, -40
  %or.cond7533 = select i1 %i.gqj, i1 %i.gql, i1 false, !dbg !55570, !prof !3487
  br i1 %or.cond7533, label %bb.cov, label %.thread, !dbg !55570, !prof !3487

bb.cor:                                           ; preds = %bb.coo
  %i.gqm = load i8, ptr %i.apc, align 16, !dbg !55570, !range !3555, !noundef !3166
  %i.gqn = icmp eq i8 %i.gqm, 0, !dbg !55570
  br i1 %i.gqn, label %bb.cos, label %bb.cot, !dbg !55570

bb.cos:                                           ; preds = %bb.cor
  %i.gqo = trunc nuw i8 %.sroa.01456.7 to i1, !dbg !55570
  br i1 %i.gqo, label %bb.cou, label %.thread, !dbg !55570

bb.cot:                                           ; preds = %bb.cor
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5range15IRRangeFunctionECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(80) %i.apc) #56
          to label %.thread unwind label %bb.ce, !dbg !55570

bb.cou:                                           ; preds = %bb.cos
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.aqp) #56
          to label %.thread unwind label %bb.ce, !dbg !55570

bb.cov:                                           ; preds = %bb.coq
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apb)
          to label %.thread unwind label %bb.ce, !dbg !62296

bb.cow:                                           ; preds = %bb.cnw
  %lpad.thr_comm.split-lp7260 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gqp = atomicrmw add ptr %i.gox, i64 -1 release, align 8, !dbg !62297, !noalias !55225
  %i.gqq = icmp eq i64 %i.gqp, 1, !dbg !62298
  br i1 %i.gqq, label %bb.cox, label %.loopexit.split-lp7586.loopexit.split-lp, !dbg !62298

bb.cox:                                           ; preds = %bb.cow
  fence acquire, !dbg !62299
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.px) #52
          to label %.loopexit.split-lp7586.loopexit.split-lp unwind label %bb.ce, !dbg !62300

bb.coy:                                           ; preds = %bb.cnu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.py), !dbg !62252
  %i.gqr = load i8, ptr %i.aot, align 1, !dbg !62301, !range !3277, !alias.scope !55226, !noundef !3166
  %i.gqs = icmp eq i8 %i.gqr, -40, !dbg !62302
  br i1 %i.gqs, label %bb.coz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5398, !dbg !62302, !prof !3216

bb.coz:                                           ; preds = %bb.coy
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pz)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5398 unwind label %.thread6140.loopexit.split-lp, !dbg !62303

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5398: ; preds = %bb.coy, %bb.coz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pz), !dbg !62293
  br label %bb.ck, !dbg !55633

bb.cpa:                                           ; preds = %bb.bdf
  %i.gqt = landingpad { ptr, i32 }
          cleanup
  br label %.body4810

.body4810:                                        ; preds = %bb.bde, %bb.cpa
  %eh.lpad-body4811 = phi { ptr, i32 } [ %i.gqt, %bb.cpa ], [ %i.eud, %bb.bde ] ; 7 uses
  %i.gqu = trunc nuw i8 %.sroa.01446.5 to i1, !dbg !55570
  br i1 %i.gqu, label %bb.cpj, label %.thread, !dbg !55570

bb.cpb:                                           ; preds = %bb.bdc
  %i.gqv = load i8, ptr %i.amu, align 16, !dbg !55570, !range !3550, !noundef !3166
  switch i8 %i.gqv, label %bb.cpc [
    i8 20, label %bb.cpe
    i8 59, label %bb.cpd
  ], !dbg !55570

bb.cpc:                                           ; preds = %bb.cpb
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr14IRFunctionExprECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.amu)
          to label %.thread6749 unwind label %.thread6014.loopexit.split-lp, !dbg !55570

bb.cpd:                                           ; preds = %bb.cpb
  %i.gqw = trunc nuw i8 %.sroa.01461.5 to i1, !dbg !55570
  %i.gqx = load i8, ptr %i.bng, align 1, !range !3277
  %i.gqy = icmp eq i8 %i.gqx, -40
  %or.cond7537 = select i1 %i.gqw, i1 %i.gqy, i1 false, !dbg !55570, !prof !3487
  br i1 %or.cond7537, label %bb.cpi, label %.thread6749, !dbg !55570, !prof !3487

bb.cpe:                                           ; preds = %bb.cpb
  %i.gqz = load i8, ptr %i.apc, align 16, !dbg !55570, !range !3555, !noundef !3166
  %i.gra = icmp eq i8 %i.gqz, 0, !dbg !55570
  br i1 %i.gra, label %bb.cpf, label %bb.cpg, !dbg !55570

bb.cpf:                                           ; preds = %bb.cpe
  %i.grb = trunc nuw i8 %.sroa.01456.5 to i1, !dbg !55570
  br i1 %i.grb, label %bb.cph, label %.thread6749, !dbg !55570

bb.cpg:                                           ; preds = %bb.cpe
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5range15IRRangeFunctionECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(80) %i.apc)
          to label %.thread6749 unwind label %.thread6014.loopexit.split-lp, !dbg !55570

bb.cph:                                           ; preds = %bb.cpf
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.aqp)
          to label %.thread6749 unwind label %.thread6014.loopexit.split-lp, !dbg !55570

bb.cpi:                                           ; preds = %bb.cpd
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apb)
          to label %.thread6749 unwind label %.thread6014.loopexit.split-lp, !dbg !62304

bb.cpj:                                           ; preds = %.body4810
  %i.grc = load i8, ptr %i.amu, align 16, !dbg !55570, !range !3550, !noundef !3166
  switch i8 %i.grc, label %bb.cpk [
    i8 20, label %bb.cpm
    i8 59, label %bb.cpl
  ], !dbg !55570

bb.cpk:                                           ; preds = %bb.cpj
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr14IRFunctionExprECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.amu) #56
          to label %.thread unwind label %bb.ce, !dbg !55570

bb.cpl:                                           ; preds = %bb.cpj
  %i.grd = trunc nuw i8 %.sroa.01461.5 to i1, !dbg !55570
  %i.gre = load i8, ptr %i.bng, align 1, !range !3277
  %i.grf = icmp eq i8 %i.gre, -40
  %or.cond7541 = select i1 %i.grd, i1 %i.grf, i1 false, !dbg !55570, !prof !3487
  br i1 %or.cond7541, label %bb.cpq, label %.thread, !dbg !55570, !prof !3487

bb.cpm:                                           ; preds = %bb.cpj
  %i.grg = load i8, ptr %i.apc, align 16, !dbg !55570, !range !3555, !noundef !3166
  %i.grh = icmp eq i8 %i.grg, 0, !dbg !55570
  br i1 %i.grh, label %bb.cpn, label %bb.cpo, !dbg !55570

bb.cpn:                                           ; preds = %bb.cpm
  %i.gri = trunc nuw i8 %.sroa.01456.5 to i1, !dbg !55570
  br i1 %i.gri, label %bb.cpp, label %.thread, !dbg !55570

bb.cpo:                                           ; preds = %bb.cpm
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5range15IRRangeFunctionECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(80) %i.apc) #56
          to label %.thread unwind label %bb.ce, !dbg !55570

bb.cpp:                                           ; preds = %bb.cpn
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.aqp) #56
          to label %.thread unwind label %bb.ce, !dbg !55570

bb.cpq:                                           ; preds = %bb.cpl
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apb)
          to label %.thread unwind label %bb.ce, !dbg !62305

.loopexit.split-lp7586.loopexit.split-lp:         ; preds = %.loopexit.split-lp7586.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cox, %bb.cow
  %.pn.ph = phi { ptr, i32 } [ %lpad.thr_comm.split-lp7260, %bb.cow ], [ %lpad.thr_comm.split-lp7260, %bb.cox ], [ %lpad.loopexit.split-lp18956, %.loopexit.split-lp7586.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.py) #56
          to label %.body5382.thread.thread unwind label %bb.ce, !dbg !62252

.body5382.thread.thread:                          ; preds = %.thread7245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp7586.loopexit.split-lp
  %.pn32977248 = phi { ptr, i32 } [ %.pn.ph, %.loopexit.split-lp7586.loopexit.split-lp ], [ %lpad.loopexit.split-lp18953, %.thread7245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.grj = load i8, ptr %i.aot, align 1, !dbg !62306, !range !3277, !alias.scope !55227, !noundef !3166
  %i.grk = icmp eq i8 %i.grj, -40, !dbg !62307
  br i1 %i.grk, label %bb.cpr, label %.thread6019, !dbg !62307, !prof !3216

bb.cpr:                                           ; preds = %.body5382.thread.thread
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pz)
          to label %.thread6019 unwind label %bb.ce, !dbg !62308

.thread6019:                                      ; preds = %.body5382.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.pa, %.thread6140.loopexit, %.thread6140.loopexit.split-lp, %bb.cib, %bb.bmv, %bb.wq, %bb.uv, %bb.og, %bb.nf, %bb.ib, %bb.dp, %bb.ca, %.body5382.thread.thread, %bb.cpr, %.thread7481, %bb.cnm, %.body5278.thread, %bb.cix, %bb.cis, %.thread6964, %bb.bty, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5046, %bb.bqs, %.thread6913, %bb.bqq, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5023, %.thread7446.thread, %bb.blv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4899, %bb.bii, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4880, %bb.bhe, %.thread6766, %bb.bgz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4833, %bb.beh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4828, %.thread6686, %bb.bcb, %.thread6658, %bb.ayt, %.split6623.thread, %bb.avv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4724, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4692, %bb.aro, %.split6555.thread, %bb.ark, %.thread7324, %bb.apq, %bb.aom, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4485, %bb.aiw, %.thread6485, %bb.ait, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4405, %bb.add, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4400, %bb.aam, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs2g09Ig8GZd6_13polars_stream.exit4373, %bb.aaf, %.body4167.thread, %bb.oy, %bb.ot, %.body4113.thread, %bb.mr, %bb.mm, %.split6294.thread, %bb.lx, %.split6264.thread, %bb.ka, %.thread7282, %bb.gv, %.split.thread, %bb.fq, %bb.eg, %.thread6176, %bb.dd, %bb.cx, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5277, %.thread6727, %bb.axh, %bb.axb, %bb.apy, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4540, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4462, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4449, %bb.ago, %.loopexit.split-lp7853.loopexit.split-lp, %.loopexit.split-lp7874.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5154, %.loopexit.split-lp7924.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5101, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5097, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5060, %.body4151.thread, %.thread6873.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5226, %.thread7087, %.body4123.thread, %bb.kf, %.noexc4065, %bb.ih, %bb.eo, %bb.dt, %bb.ek, %.body3965.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit3950, %bb.gn, %bb.cob, %.thread6641, %bb.bqj, %bb.cnc, %bb.cgd
  %.pn3793.ph.pn = phi { ptr, i32 } [ %i.fgr, %bb.bmv ], [ %i.ggx, %bb.cib ], [ %.pn34386624, %.split6623.thread ], [ %i.bsx, %bb.ca ], [ %i.bvq, %bb.dp ], [ %i.cdd, %bb.ib ], [ %i.ckd, %bb.nf ], [ %i.cmf, %bb.og ], [ %i.cyy, %bb.uv ], [ %.pn34386624, %bb.avv ], [ %lpad.loopexit.split-lp7580, %.thread6140.loopexit.split-lp ], [ %.pn3306.pn7206, %.thread7481 ], [ %i.gdn, %bb.cgd ], [ %eh.lpad-body52797150, %.body5278.thread ], [ %.pn34126689, %bb.bcb ], [ %i.ghz, %bb.cis ], [ %.pn3338, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5277 ], [ %.pn3362, %bb.bhe ], [ %.pn3358, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4899 ], [ %.pn3362, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4880 ], [ %.pn33736769, %.thread6766 ], [ %.pn3358, %bb.bii ], [ %.pn3377, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4833 ], [ %.pn33856736, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4828 ], [ %.pn33546806, %bb.blv ], [ %.pn3385.pn6730, %.thread6727 ], [ %.pn33546806, %.thread7446.thread ], [ %.pn34216661, %.thread6658 ], [ %.pn3419, %bb.axh ], [ %.pn36656916, %bb.bqq ], [ %.pn3656, %bb.bqs ], [ %i.eno, %bb.axb ], [ %i.gpl, %bb.cob ], [ %.pn3434.pn.pn6634, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4724 ], [ %.pn34626556, %.split6555.thread ], [ %.pn3460, %bb.apy ], [ %eh.lpad-body52797150, %bb.cix ], [ %.pn3306.pn7206, %bb.cnm ], [ %i.dbj, %bb.wq ], [ %.pn3486, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4540 ], [ %.pn3502, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4485 ], [ %.pn35106488, %.thread6485 ], [ %.pn32977248, %bb.cpr ], [ %.pn3534, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4405 ], [ %.pn3515.pn.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4462 ], [ %.pn3530, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4449 ], [ %.pn353011937, %bb.ago ], [ %.pn3550, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4400 ], [ %.pn35626425, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs2g09Ig8GZd6_13polars_stream.exit4373 ], [ %.pn32977248, %.body5382.thread.thread ], [ %eh.lpad-body41686353, %.body4167.thread ], [ %.pn3574, %.loopexit.split-lp7853.loopexit.split-lp ], [ %.pn3584, %.loopexit.split-lp7874.loopexit.split-lp ], [ %.pn3603, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5154 ], [ %.pn3620.pn, %.loopexit.split-lp7924.loopexit.split-lp ], [ %.pn3630, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5101 ], [ %.pn3639, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5097 ], [ %.pn3647, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5060 ], [ %.pn3656, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5046 ], [ %.pn36656916, %.thread6913 ], [ %i.bzx, %bb.gn ], [ %.pn36636923, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5023 ], [ %.pn3699, %bb.pa ], [ %.pn33736769, %bb.bgz ], [ %i.cmz, %bb.ot ], [ %.pn3703, %.body4151.thread ], [ %.pn3706.pn.pn, %.thread6873.thread ], [ %.pn37167097, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5226 ], [ %.pn37187090, %.thread7087 ], [ %.pn3724, %.body4123.thread ], [ %.pn36496967, %bb.bty ], [ %i.cin, %bb.mm ], [ %.pn3737, %bb.kf ], [ %.pn3434.pn.ph, %.thread6641 ], [ %.pn3743.pn, %.noexc4065 ], [ %i.fkr, %bb.bqj ], [ %.pn3757, %bb.ih ], [ %.pn3377, %bb.beh ], [ %.pn37696202, %.split.thread ], [ %.pn3767, %bb.eo ], [ %.pn34216661, %bb.ayt ], [ %eh.lpad-body3982, %bb.dt ], [ %.pn37736194, %bb.ek ], [ %.pn3778, %.body3965.thread ], [ %.pn34126689, %.thread6686 ], [ %i.buc, %bb.cx ], [ %.pn3791, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit3950 ], [ %.pn37816179, %bb.dd ], [ %.pn37816179, %.thread6176 ], [ %i.gnp, %bb.cnc ], [ %i.bwq, %bb.eg ], [ %.pn37696202, %bb.fq ], [ %.pn3763.pn6217, %bb.gv ], [ %.pn3763.pn6217, %.thread7282 ], [ %.pn37466265, %bb.ka ], [ %.pn37466265, %.split6264.thread ], [ %.pn37396295, %bb.lx ], [ %.pn37396295, %.split6294.thread ], [ %eh.lpad-body41146334, %bb.mr ], [ %eh.lpad-body41146334, %.body4113.thread ], [ %eh.lpad-body41686353, %bb.oy ], [ %.pn35626425, %bb.aaf ], [ %.pn3550, %bb.aam ], [ %.pn3534, %bb.add ], [ %.pn35106488, %bb.ait ], [ %.pn3502, %bb.aiw ], [ %.pn3486, %bb.aom ], [ %.pn3469.pn6524, %bb.apq ], [ %.pn3469.pn6524, %.thread7324 ], [ %.pn34626556, %bb.ark ], [ %.pn3454, %bb.aro ], [ %.pn3454, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4692 ], [ %.pn36496967, %.thread6964 ], [ %lpad.loopexit7579, %.thread6140.loopexit ], [ %lpad.loopexit.split-lp18959, %.body5382.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 14 uses
  %.sroa.01446.06033 = phi i1 [ true, %bb.bmv ], [ true, %bb.cib ], [ true, %.split6623.thread ], [ true, %bb.ca ], [ true, %bb.dp ], [ true, %bb.ib ], [ true, %bb.nf ], [ true, %bb.og ], [ true, %bb.uv ], [ true, %bb.avv ], [ %.sroa.01446.1.ph.ph7578, %.thread6140.loopexit.split-lp ], [ true, %.thread7481 ], [ true, %bb.cgd ], [ true, %.body5278.thread ], [ true, %bb.bcb ], [ true, %bb.cis ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5277 ], [ true, %bb.bhe ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4899 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4880 ], [ true, %.thread6766 ], [ true, %bb.bii ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4833 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4828 ], [ true, %bb.blv ], [ true, %.thread6727 ], [ true, %.thread7446.thread ], [ true, %.thread6658 ], [ true, %bb.axh ], [ true, %bb.bqq ], [ true, %bb.bqs ], [ true, %bb.axb ], [ true, %bb.cob ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4724 ], [ true, %.split6555.thread ], [ true, %bb.apy ], [ true, %bb.cix ], [ true, %bb.cnm ], [ true, %bb.wq ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4540 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4485 ], [ true, %.thread6485 ], [ true, %bb.cpr ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4405 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4462 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4449 ], [ true, %bb.ago ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4400 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs2g09Ig8GZd6_13polars_stream.exit4373 ], [ true, %.body5382.thread.thread ], [ true, %.body4167.thread ], [ true, %.loopexit.split-lp7853.loopexit.split-lp ], [ false, %.loopexit.split-lp7874.loopexit.split-lp ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5154 ], [ false, %.loopexit.split-lp7924.loopexit.split-lp ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5101 ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5097 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5060 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5046 ], [ true, %.thread6913 ], [ true, %bb.gn ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5023 ], [ true, %bb.pa ], [ true, %bb.bgz ], [ true, %bb.ot ], [ true, %.body4151.thread ], [ true, %.thread6873.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5226 ], [ true, %.thread7087 ], [ true, %.body4123.thread ], [ true, %bb.bty ], [ true, %bb.mm ], [ true, %bb.kf ], [ true, %.thread6641 ], [ true, %.noexc4065 ], [ true, %bb.bqj ], [ true, %bb.ih ], [ true, %bb.beh ], [ true, %.split.thread ], [ true, %bb.eo ], [ true, %bb.ayt ], [ true, %bb.dt ], [ true, %bb.ek ], [ true, %.body3965.thread ], [ true, %.thread6686 ], [ true, %bb.cx ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit3950 ], [ true, %bb.dd ], [ true, %.thread6176 ], [ true, %bb.cnc ], [ true, %bb.eg ], [ true, %bb.fq ], [ true, %bb.gv ], [ true, %.thread7282 ], [ true, %bb.ka ], [ true, %.split6264.thread ], [ true, %bb.lx ], [ true, %.split6294.thread ], [ true, %bb.mr ], [ true, %.body4113.thread ], [ true, %bb.oy ], [ true, %bb.aaf ], [ true, %bb.aam ], [ true, %bb.add ], [ true, %bb.ait ], [ true, %bb.aiw ], [ true, %bb.aom ], [ true, %bb.apq ], [ true, %.thread7324 ], [ true, %bb.ark ], [ true, %bb.aro ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4692 ], [ true, %.thread6964 ], [ %.sroa.01446.1.ph.ph, %.thread6140.loopexit ], [ true, %.body5382.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.01456.06032 = phi i1 [ true, %bb.bmv ], [ true, %bb.cib ], [ true, %.split6623.thread ], [ true, %bb.ca ], [ true, %bb.dp ], [ true, %bb.ib ], [ true, %bb.nf ], [ true, %bb.og ], [ true, %bb.uv ], [ true, %bb.avv ], [ %.sroa.01456.1.ph.ph7577, %.thread6140.loopexit.split-lp ], [ true, %.thread7481 ], [ true, %bb.cgd ], [ true, %.body5278.thread ], [ true, %bb.bcb ], [ true, %bb.cis ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5277 ], [ true, %bb.bhe ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4899 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4880 ], [ true, %.thread6766 ], [ true, %bb.bii ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4833 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4828 ], [ true, %bb.blv ], [ true, %.thread6727 ], [ true, %.thread7446.thread ], [ true, %.thread6658 ], [ true, %bb.axh ], [ true, %bb.bqq ], [ true, %bb.bqs ], [ true, %bb.axb ], [ true, %bb.cob ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4724 ], [ true, %.split6555.thread ], [ true, %bb.apy ], [ true, %bb.cix ], [ true, %bb.cnm ], [ true, %bb.wq ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4540 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4485 ], [ true, %.thread6485 ], [ true, %bb.cpr ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4405 ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4462 ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4449 ], [ false, %bb.ago ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4400 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs2g09Ig8GZd6_13polars_stream.exit4373 ], [ true, %.body5382.thread.thread ], [ true, %.body4167.thread ], [ true, %.loopexit.split-lp7853.loopexit.split-lp ], [ false, %.loopexit.split-lp7874.loopexit.split-lp ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5154 ], [ false, %.loopexit.split-lp7924.loopexit.split-lp ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5101 ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5097 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5060 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5046 ], [ true, %.thread6913 ], [ true, %bb.gn ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5023 ], [ true, %bb.pa ], [ true, %bb.bgz ], [ true, %bb.ot ], [ true, %.body4151.thread ], [ true, %.thread6873.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5226 ], [ true, %.thread7087 ], [ true, %.body4123.thread ], [ true, %bb.bty ], [ true, %bb.mm ], [ true, %bb.kf ], [ true, %.thread6641 ], [ true, %.noexc4065 ], [ true, %bb.bqj ], [ true, %bb.ih ], [ true, %bb.beh ], [ true, %.split.thread ], [ true, %bb.eo ], [ true, %bb.ayt ], [ true, %bb.dt ], [ true, %bb.ek ], [ true, %.body3965.thread ], [ true, %.thread6686 ], [ true, %bb.cx ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit3950 ], [ true, %bb.dd ], [ true, %.thread6176 ], [ true, %bb.cnc ], [ true, %bb.eg ], [ true, %bb.fq ], [ true, %bb.gv ], [ true, %.thread7282 ], [ true, %bb.ka ], [ true, %.split6264.thread ], [ true, %bb.lx ], [ true, %.split6294.thread ], [ true, %bb.mr ], [ true, %.body4113.thread ], [ true, %bb.oy ], [ true, %bb.aaf ], [ true, %bb.aam ], [ true, %bb.add ], [ true, %bb.ait ], [ true, %bb.aiw ], [ true, %bb.aom ], [ true, %bb.apq ], [ true, %.thread7324 ], [ true, %bb.ark ], [ true, %bb.aro ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4692 ], [ true, %.thread6964 ], [ %.sroa.01456.1.ph.ph, %.thread6140.loopexit ], [ true, %.body5382.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.01461.06031 = phi i1 [ true, %bb.bmv ], [ true, %bb.cib ], [ true, %.split6623.thread ], [ true, %bb.ca ], [ true, %bb.dp ], [ true, %bb.ib ], [ true, %bb.nf ], [ true, %bb.og ], [ true, %bb.uv ], [ true, %bb.avv ], [ %.sroa.01461.1.ph.ph7576, %.thread6140.loopexit.split-lp ], [ true, %.thread7481 ], [ true, %bb.cgd ], [ true, %.body5278.thread ], [ true, %bb.bcb ], [ true, %bb.cis ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5277 ], [ true, %bb.bhe ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4899 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4880 ], [ true, %.thread6766 ], [ true, %bb.bii ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4833 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4828 ], [ true, %bb.blv ], [ true, %.thread6727 ], [ true, %.thread7446.thread ], [ true, %.thread6658 ], [ true, %bb.axh ], [ true, %bb.bqq ], [ true, %bb.bqs ], [ true, %bb.axb ], [ true, %bb.cob ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4724 ], [ true, %.split6555.thread ], [ true, %bb.apy ], [ true, %bb.cix ], [ true, %bb.cnm ], [ true, %bb.wq ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4540 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4485 ], [ true, %.thread6485 ], [ true, %bb.cpr ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4405 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4462 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4449 ], [ true, %bb.ago ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4400 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs2g09Ig8GZd6_13polars_stream.exit4373 ], [ true, %.body5382.thread.thread ], [ true, %.body4167.thread ], [ true, %.loopexit.split-lp7853.loopexit.split-lp ], [ false, %.loopexit.split-lp7874.loopexit.split-lp ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5154 ], [ false, %.loopexit.split-lp7924.loopexit.split-lp ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5101 ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5097 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5060 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5046 ], [ true, %.thread6913 ], [ true, %bb.gn ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5023 ], [ true, %bb.pa ], [ true, %bb.bgz ], [ true, %bb.ot ], [ true, %.body4151.thread ], [ true, %.thread6873.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5226 ], [ true, %.thread7087 ], [ true, %.body4123.thread ], [ true, %bb.bty ], [ true, %bb.mm ], [ true, %bb.kf ], [ true, %.thread6641 ], [ true, %.noexc4065 ], [ true, %bb.bqj ], [ true, %bb.ih ], [ true, %bb.beh ], [ true, %.split.thread ], [ true, %bb.eo ], [ true, %bb.ayt ], [ true, %bb.dt ], [ true, %bb.ek ], [ true, %.body3965.thread ], [ true, %.thread6686 ], [ true, %bb.cx ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit3950 ], [ true, %bb.dd ], [ true, %.thread6176 ], [ true, %bb.cnc ], [ true, %bb.eg ], [ true, %bb.fq ], [ true, %bb.gv ], [ true, %.thread7282 ], [ true, %bb.ka ], [ true, %.split6264.thread ], [ true, %bb.lx ], [ true, %.split6294.thread ], [ true, %bb.mr ], [ true, %.body4113.thread ], [ true, %bb.oy ], [ true, %bb.aaf ], [ true, %bb.aam ], [ true, %bb.add ], [ true, %bb.ait ], [ true, %bb.aiw ], [ true, %bb.aom ], [ true, %bb.apq ], [ true, %.thread7324 ], [ true, %bb.ark ], [ false, %bb.aro ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4692 ], [ true, %.thread6964 ], [ %.sroa.01461.1.ph.ph, %.thread6140.loopexit ], [ true, %.body5382.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.01466.06030 = phi i1 [ true, %bb.bmv ], [ true, %bb.cib ], [ true, %.split6623.thread ], [ true, %bb.ca ], [ true, %bb.dp ], [ true, %bb.ib ], [ true, %bb.nf ], [ true, %bb.og ], [ true, %bb.uv ], [ true, %bb.avv ], [ %.sroa.01466.1.ph.ph7575, %.thread6140.loopexit.split-lp ], [ true, %.thread7481 ], [ true, %bb.cgd ], [ true, %.body5278.thread ], [ true, %bb.bcb ], [ true, %bb.cis ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5277 ], [ true, %bb.bhe ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4899 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4880 ], [ true, %.thread6766 ], [ true, %bb.bii ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4833 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4828 ], [ true, %bb.blv ], [ true, %.thread6727 ], [ true, %.thread7446.thread ], [ true, %.thread6658 ], [ true, %bb.axh ], [ true, %bb.bqq ], [ true, %bb.bqs ], [ true, %bb.axb ], [ true, %bb.cob ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4724 ], [ true, %.split6555.thread ], [ true, %bb.apy ], [ true, %bb.cix ], [ true, %bb.cnm ], [ true, %bb.wq ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4540 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4485 ], [ true, %.thread6485 ], [ true, %bb.cpr ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4405 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4462 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4449 ], [ true, %bb.ago ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4400 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs2g09Ig8GZd6_13polars_stream.exit4373 ], [ true, %.body5382.thread.thread ], [ true, %.body4167.thread ], [ true, %.loopexit.split-lp7853.loopexit.split-lp ], [ false, %.loopexit.split-lp7874.loopexit.split-lp ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5154 ], [ false, %.loopexit.split-lp7924.loopexit.split-lp ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5101 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5097 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5060 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5046 ], [ true, %.thread6913 ], [ true, %bb.gn ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5023 ], [ true, %bb.pa ], [ true, %bb.bgz ], [ true, %bb.ot ], [ true, %.body4151.thread ], [ true, %.thread6873.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5226 ], [ true, %.thread7087 ], [ true, %.body4123.thread ], [ true, %bb.bty ], [ true, %bb.mm ], [ true, %bb.kf ], [ true, %.thread6641 ], [ true, %.noexc4065 ], [ true, %bb.bqj ], [ true, %bb.ih ], [ true, %bb.beh ], [ true, %.split.thread ], [ true, %bb.eo ], [ true, %bb.ayt ], [ true, %bb.dt ], [ true, %bb.ek ], [ true, %.body3965.thread ], [ true, %.thread6686 ], [ true, %bb.cx ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit3950 ], [ true, %bb.dd ], [ true, %.thread6176 ], [ true, %bb.cnc ], [ true, %bb.eg ], [ true, %bb.fq ], [ true, %bb.gv ], [ true, %.thread7282 ], [ true, %bb.ka ], [ true, %.split6264.thread ], [ true, %bb.lx ], [ true, %.split6294.thread ], [ true, %bb.mr ], [ true, %.body4113.thread ], [ true, %bb.oy ], [ true, %bb.aaf ], [ true, %bb.aam ], [ true, %bb.add ], [ true, %bb.ait ], [ true, %bb.aiw ], [ true, %bb.aom ], [ true, %bb.apq ], [ true, %.thread7324 ], [ true, %bb.ark ], [ true, %bb.aro ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4692 ], [ true, %.thread6964 ], [ %.sroa.01466.1.ph.ph, %.thread6140.loopexit ], [ true, %.body5382.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.01469.06029 = phi i1 [ true, %bb.bmv ], [ false, %bb.cib ], [ true, %.split6623.thread ], [ true, %bb.ca ], [ true, %bb.dp ], [ true, %bb.ib ], [ true, %bb.nf ], [ true, %bb.og ], [ true, %bb.uv ], [ true, %bb.avv ], [ %.sroa.01469.1.ph.ph7574, %.thread6140.loopexit.split-lp ], [ true, %.thread7481 ], [ true, %bb.cgd ], [ true, %.body5278.thread ], [ true, %bb.bcb ], [ true, %bb.cis ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5277 ], [ true, %bb.bhe ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4899 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4880 ], [ true, %.thread6766 ], [ true, %bb.bii ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4833 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4828 ], [ true, %bb.blv ], [ true, %.thread6727 ], [ true, %.thread7446.thread ], [ true, %.thread6658 ], [ true, %bb.axh ], [ true, %bb.bqq ], [ true, %bb.bqs ], [ true, %bb.axb ], [ true, %bb.cob ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4724 ], [ true, %.split6555.thread ], [ true, %bb.apy ], [ true, %bb.cix ], [ true, %bb.cnm ], [ true, %bb.wq ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4540 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4485 ], [ true, %.thread6485 ], [ true, %bb.cpr ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj1_ECs2g09Ig8GZd6_13polars_stream.exit4405 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4462 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4449 ], [ true, %bb.ago ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4400 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs2g09Ig8GZd6_13polars_stream.exit4373 ], [ true, %.body5382.thread.thread ], [ true, %.body4167.thread ], [ true, %.loopexit.split-lp7853.loopexit.split-lp ], [ true, %.loopexit.split-lp7874.loopexit.split-lp ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5154 ], [ true, %.loopexit.split-lp7924.loopexit.split-lp ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5101 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5097 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5060 ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5046 ], [ true, %.thread6913 ], [ true, %bb.gn ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5023 ], [ true, %bb.pa ], [ true, %bb.bgz ], [ true, %bb.ot ], [ true, %.body4151.thread ], [ true, %.thread6873.thread ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit5226 ], [ true, %.thread7087 ], [ true, %.body4123.thread ], [ true, %bb.bty ], [ true, %bb.mm ], [ true, %bb.kf ], [ true, %.thread6641 ], [ true, %.noexc4065 ], [ true, %bb.bqj ], [ true, %bb.ih ], [ true, %bb.beh ], [ true, %.split.thread ], [ true, %bb.eo ], [ true, %bb.ayt ], [ true, %bb.dt ], [ true, %bb.ek ], [ true, %.body3965.thread ], [ true, %.thread6686 ], [ true, %bb.cx ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit3950 ], [ true, %bb.dd ], [ true, %.thread6176 ], [ true, %bb.cnc ], [ true, %bb.eg ], [ true, %bb.fq ], [ true, %bb.gv ], [ true, %.thread7282 ], [ true, %bb.ka ], [ true, %.split6264.thread ], [ true, %bb.lx ], [ true, %.split6294.thread ], [ true, %bb.mr ], [ true, %.body4113.thread ], [ true, %bb.oy ], [ true, %bb.aaf ], [ true, %bb.aam ], [ true, %bb.add ], [ true, %bb.ait ], [ true, %bb.aiw ], [ true, %bb.aom ], [ true, %bb.apq ], [ true, %.thread7324 ], [ true, %bb.ark ], [ true, %bb.aro ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit4692 ], [ true, %.thread6964 ], [ %.sroa.01469.1.ph.ph, %.thread6140.loopexit ], [ true, %.body5382.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.grl = load i64, ptr %i.aos, align 16, !dbg !55570, !range !3237, !noundef !3166 ; 3 uses
  %i.grm = icmp ne i64 %i.grl, -9223372036854775791, !dbg !55570
  call void @llvm.assume(i1 %i.grm), !dbg !55570
  %i.grn = xor i64 %i.grl, -9223372036854775808, !dbg !55570
  %i.gro = icmp slt i64 %i.grl, 0, !dbg !55570
  %i.grp = select i1 %i.gro, i64 %i.grn, i64 17, !dbg !55570
  switch i64 %i.grp, label %bb.cps [
    i64 6, label %.thread
    i64 9, label %.thread
    i64 11, label %.thread
    i64 16, label %.thread
    i64 17, label %bb.cpt
    i64 18, label %bb.cpu
  ], !dbg !55570

bb.cps:                                           ; preds = %.thread6019
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(144) %i.amu) #56
          to label %.thread unwind label %bb.ce, !dbg !55570

bb.cpt:                                           ; preds = %.thread6019
  br i1 %.sroa.01466.06030, label %bb.cpw, label %bb.cpv, !dbg !55570

bb.cpu:                                           ; preds = %.thread6019
  br i1 %.sroa.01469.06029, label %bb.cqf, label %.thread, !dbg !55570

bb.cpv:                                           ; preds = %bb.cpw, %bb.cpt
  br i1 %.sroa.01446.06033, label %bb.cpx, label %.thread, !dbg !55570

bb.cpw:                                           ; preds = %bb.cpt
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.aos) #56
          to label %bb.cpv unwind label %bb.ce, !dbg !55570

bb.cpx:                                           ; preds = %bb.cpv
  %i.grq = load i8, ptr %i.amu, align 16, !dbg !55570, !range !3550, !noundef !3166
  switch i8 %i.grq, label %bb.cpy [
    i8 20, label %bb.cqa
    i8 59, label %bb.cpz
  ], !dbg !55570

bb.cpy:                                           ; preds = %bb.cpx
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr14IRFunctionExprECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.amu) #56
          to label %.thread unwind label %bb.ce, !dbg !55570

bb.cpz:                                           ; preds = %bb.cpx
  %i.grr = load i8, ptr %i.bng, align 1, !range !3277
  %i.grs = icmp eq i8 %i.grr, -40
  %or.cond7545 = select i1 %.sroa.01461.06031, i1 %i.grs, i1 false, !dbg !55570, !prof !3487
  br i1 %or.cond7545, label %bb.cqe, label %.thread, !dbg !55570, !prof !3487

bb.cqa:                                           ; preds = %bb.cpx
  %i.grt = load i8, ptr %i.apc, align 16, !dbg !55570, !range !3555, !noundef !3166
  %i.gru = icmp eq i8 %i.grt, 0, !dbg !55570
  br i1 %i.gru, label %bb.cqb, label %bb.cqc, !dbg !55570

bb.cqb:                                           ; preds = %bb.cqa
  br i1 %.sroa.01456.06032, label %bb.cqd, label %.thread, !dbg !55570

bb.cqc:                                           ; preds = %bb.cqa
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr5range15IRRangeFunctionECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(80) %i.apc) #56
          to label %.thread unwind label %bb.ce, !dbg !55570

bb.cqd:                                           ; preds = %bb.cqb
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.aqp) #56
          to label %.thread unwind label %bb.ce, !dbg !55570

bb.cqe:                                           ; preds = %bb.cpz
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apb)
          to label %.thread unwind label %bb.ce, !dbg !62309

bb.cqf:                                           ; preds = %bb.cpu
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.amu) #56
          to label %.thread unwind label %bb.ce, !dbg !55570

_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr24is_input_independent_ctx.exit: ; preds = %bb.n
  br i1 %i.boa, label %bb.cqh, label %bb.cqg, !dbg !62310

bb.cqg:                                           ; preds = %_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr24is_input_independent_ctx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.amv), !dbg !62311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.amv, ptr noundef nonnull align 8 dereferenceable(16) %i.aov, i64 16, i1 false), !dbg !62311
  %i.grv = invoke { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullBR_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.amx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.amv)
          to label %bb.cqj unwind label %.loopexit.split-lp7632.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62312 ; 0 uses

bb.cqh:                                           ; preds = %bb.cqj, %_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr24is_input_independent_ctx.exit
  %i.grw = load i64, ptr %i.aor, align 8, !dbg !62313, !alias.scope !55230, !noundef !3166 ; 3 uses
  %i.grx = load i64, ptr %i.amw, align 8, !dbg !62314, !range !3228, !alias.scope !55230, !noundef !3166
  %i.gry = icmp eq i64 %i.grw, %i.grx, !dbg !62315
  br i1 %i.gry, label %bb.cqi, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8push_mutCs2g09Ig8GZd6_13polars_stream.exit5408, !dbg !62315

bb.cqi:                                           ; preds = %bb.cqh
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8grow_oneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amw)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8push_mutCs2g09Ig8GZd6_13polars_stream.exit5408 unwind label %.loopexit.split-lp7632.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !62316

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8push_mutCs2g09Ig8GZd6_13polars_stream.exit5408: ; preds = %bb.cqi, %bb.cqh
  %i.grz = load ptr, ptr %i.aoq, align 8, !dbg !62317, !alias.scope !55230, !nonnull !3166, !noundef !3166
  %i.gsa = getelementptr inbounds nuw [8 x i8], ptr %i.grz, i64 %i.grw, !dbg !62318
  store i64 %i.bnk, ptr %i.gsa, align 8, !dbg !62319
  %i.gsb = add i64 %i.grw, 1, !dbg !62320
  store i64 %i.gsb, ptr %i.aor, align 8, !dbg !62320, !alias.scope !55230
  br label %.backedge, !dbg !62321

bb.cqj:                                           ; preds = %bb.cqg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.amv), !dbg !62322
  br label %bb.cqh, !dbg !62323

bb.cqk:                                           ; preds = %bb.cqp, %._crit_edge10579
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61434), !dbg !55250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kc), !dbg !55250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kb), !dbg !62324
  %i.gsc = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !62324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kb, ptr noundef nonnull align 8 dereferenceable(16) %i.gsc, i64 16, i1 false), !dbg !62324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ka), !dbg !62325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ka, ptr noundef nonnull align 8 dereferenceable(64) %i.amx, i64 64, i1 false), !dbg !62325
  invoke void @_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr22simplify_input_streams(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.kc, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.kb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.ka, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ani)
          to label %bb.cqq unwind label %.thread6014.loopexit.split-lp, !dbg !55250

bb.cql:                                           ; preds = %._crit_edge10579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ke), !dbg !55243
  %i.gsd = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !62326
  %i.gse = load ptr, ptr %i.ant, align 8, !dbg !62327, !nonnull !3166, !noundef !3166
  invoke void @_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr28build_fallback_node_with_ctx(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ke, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.gsd, ptr noundef nonnull align 16 %i.gse, i64 noundef %i.bno, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ani)
          to label %bb.cqm unwind label %.thread6014.loopexit.split-lp, !dbg !55243

bb.cqm:                                           ; preds = %bb.cql
  %i.gsf = load i64, ptr %i.ke, align 8, !dbg !62328, !range !3672, !noundef !3166 ; 2 uses
  %.not3795 = icmp eq i64 %i.gsf, 18, !dbg !62328
  %i.gsg = getelementptr inbounds nuw i8, ptr %i.ke, i64 8, !dbg !62329
  %i.gsh = load i32, ptr %i.gsg, align 8, !dbg !62329 ; 2 uses
  %i.gsi = getelementptr inbounds nuw i8, ptr %i.ke, i64 12, !dbg !62329
  %i.gsj = load i32, ptr %i.gsi, align 4, !dbg !62329 ; 2 uses
  br i1 %.not3795, label %bb.cqo, label %bb.cqn, !dbg !62330

bb.cqn:                                           ; preds = %bb.cqm
  %.sroa.73155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ke, i64 16, !dbg !62331
  %.sroa.43159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !62332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.43159.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.73155.0..sroa_idx, i64 56, i1 false), !dbg !62331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ke), !dbg !62333
  store i64 %i.gsf, ptr %0, align 8, !dbg !62332
  %.sroa.23157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62332
  store i32 %i.gsh, ptr %.sroa.23157.0..sroa_idx, align 8, !dbg !62332
  %.sroa.33158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !62332
  store i32 %i.gsj, ptr %.sroa.33158.0..sroa_idx, align 4, !dbg !62332
  br label %bb.crv, !dbg !59617

bb.cqo:                                           ; preds = %bb.cqm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ke), !dbg !62333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kd), !dbg !62334
  store i32 %i.gsh, ptr %i.kd, align 8, !dbg !62335, !alias.scope !55246
  %i.gsk = getelementptr inbounds nuw i8, ptr %i.kd, i64 4, !dbg !62335
  store i32 %i.gsj, ptr %i.gsk, align 4, !dbg !62335, !alias.scope !55246
  %i.gsl = getelementptr inbounds nuw i8, ptr %i.kd, i64 8, !dbg !62335
  store i64 0, ptr %i.gsl, align 8, !dbg !62335, !alias.scope !55246
  %i.gsm = invoke { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullBR_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.amx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.kd)
          to label %bb.cqp unwind label %.thread6014.loopexit.split-lp, !dbg !62336 ; 0 uses

bb.cqp:                                           ; preds = %bb.cqo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kd), !dbg !62337
  br label %bb.cqk, !dbg !62338

bb.cqq:                                           ; preds = %bb.cqk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ka), !dbg !62339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kb), !dbg !62339
  %i.gsn = load i64, ptr %i.kc, align 8, !dbg !62340, !range !3672, !noundef !3166 ; 2 uses
  %.not3796 = icmp eq i64 %i.gsn, 18, !dbg !62340
  %i.gso = getelementptr inbounds nuw i8, ptr %i.kc, i64 8, !dbg !62341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.61434, ptr noundef nonnull align 8 dereferenceable(64) %i.gso, i64 64, i1 false), !dbg !62341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kc), !dbg !62342
  br i1 %.not3796, label %bb.cqv, label %bb.cqr, !dbg !62343

bb.cqr:                                           ; preds = %bb.cqq
  %.sroa.23165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23165.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.61434, i64 64, i1 false), !dbg !62342
  store i64 %i.gsn, ptr %0, align 8, !dbg !62344
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61434), !dbg !62345
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amw)
          to label %bb.cqt unwind label %bb.cqs, !dbg !62346

bb.cqs:                                           ; preds = %bb.cqr
  %i.gsp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amw)
          to label %.body5411.thread5994 unwind label %bb.cqu, !dbg !62347

bb.cqt:                                           ; preds = %bb.cqr
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amw)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECs2g09Ig8GZd6_13polars_stream.exit5413 unwind label %.body5411, !dbg !62348

bb.cqu:                                           ; preds = %bb.cqs
  %i.gsq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !62346
  unreachable, !dbg !62346

.body5411.thread5994:                             ; preds = %bb.cqs
  %i.gsr = extractvalue { ptr, i32 } %i.gsp, 0
  %i.gss = extractvalue { ptr, i32 } %i.gsp, 1
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEB1p_.exit13208, !dbg !55336

bb.cqv:                                           ; preds = %bb.cqq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.amx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.61434, i64 64, i1 false), !dbg !55250
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61434), !dbg !62345
end_hunk_4
begin_hunk_5_@_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan14lower_group_by28try_build_streaming_group_by:bb.a
.loopexit695:                                     ; preds = %.lr.ph1435
  %lpad.loopexit697 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoItermEECs2g09Ig8GZd6_13polars_stream.exit

.loopexit.split-lp696:                            ; preds = %bb.de, %bb.da, %bb.cr, %._crit_edge1436, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan14lower_group_by28try_build_streaming_group_bys0_0EB2A_.exit, %bb.cw, %bb.cy, %bb.dc, %bb.gh, %bb.ki, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketmuEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.0125.9.ph = phi i8 [ 1, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketmuEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit ], [ 1, %bb.cr ], [ 1, %._crit_edge1436 ], [ 1, %bb.cw ], [ 1, %bb.cy ], [ 1, %bb.da ], [ 1, %bb.dc ], [ 1, %bb.de ], [ 1, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan14lower_group_by28try_build_streaming_group_bys0_0EB2A_.exit ], [ %.sroa.0125.17, %bb.gh ], [ %.sroa.0125.25636660, %bb.ki ]
  %lpad.loopexit.split-lp698 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoItermEECs2g09Ig8GZd6_13polars_stream.exit

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !dbg !104409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !dbg !104407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 32, i1 false), !dbg !104407
  %i.jk = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.jm = load ptr, ptr %i.jk, align 8, !dbg !104410, !alias.scope !103692, !nonnull !3166, !noundef !3166
  %i.jn = load ptr, ptr %i.jl, align 8, !dbg !104411, !alias.scope !103692, !nonnull !3166, !noundef !3166 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.jm, !dbg !104411
  br i1 %i.jo, label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketmuEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit, label %.lr.ph798, !dbg !104412

.lr.ph798:                                        ; preds = %bb.cs
  %i.jp = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  %i.jq = getelementptr inbounds nuw i8, ptr %i.cq, i64 72
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %.sroa.4162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  br label %bb.ct, !dbg !104412

.loopexit.split-lp701.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ls, %bb.ct, %bb.lq
  %lpad.loopexit.split-lp1540 = landingpad { ptr, i32 }
          cleanup
  br label %.body444

.body444:                                         ; preds = %.loopexit.split-lp701.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.lw
  %eh.lpad-body445 = phi { ptr, i32 } [ %i.zb, %bb.lw ], [ %lpad.loopexit.split-lp1540, %.loopexit.split-lp701.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketmuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoItermEECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.bu, !dbg !104413

bb.ct:                                            ; preds = %.lr.ph798, %bb.ly
  %i.js = phi ptr [ %i.jn, %.lr.ph798 ], [ %i.zh, %bb.ly ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !103694), !dbg !104414
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16, !dbg !104415
  store ptr %i.jt, ptr %i.jl, align 8, !dbg !104416, !alias.scope !103694
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 8, !dbg !104417
  %i.jv = load i32, ptr %i.ju, align 8, !dbg !104417, !noalias !103695, !noundef !3166 ; 2 uses
  store i32 %i.jv, ptr %i.bx, align 4, !dbg !104418
  %i.jw = invoke noundef nonnull align 8 ptr @_RNvXs5_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapmNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexRmE5indexCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cp, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @420)
          to label %bb.lp unwind label %.loopexit.split-lp701.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !104419 ; 3 uses

_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketmuEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.ly, %bb.cs
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketmuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoItermEECs2g09Ig8GZd6_13polars_stream.exit334 unwind label %.loopexit.split-lp696, !dbg !104420

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoItermEECs2g09Ig8GZd6_13polars_stream.exit334: ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketmuEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !dbg !104421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !dbg !104421
  %i.jx = load ptr, ptr %i.ji, align 8, !dbg !104422, !nonnull !3166, !noundef !3166 ; 2 uses
  %i.jy = load i64, ptr %i.jj, align 8, !dbg !104423, !noundef !3166 ; 2 uses
  %.idx1443 = mul nuw nsw i64 %i.jy, 112, !dbg !104424
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.idx1443, !dbg !104424
  %i.ka = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.kb = icmp eq i64 %i.jy, 0, !dbg !104425
  br i1 %i.kb, label %._crit_edge1436, label %.lr.ph1435, !dbg !104426

bb.cu:                                            ; preds = %.noexc335
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ke, i64 112, !dbg !104427 ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.jz, !dbg !104425
  br i1 %i.kd, label %._crit_edge1436, label %.lr.ph1435, !dbg !104426

.lr.ph1435:                                       ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoItermEECs2g09Ig8GZd6_13polars_stream.exit334, %bb.cu
  %i.ke = phi ptr [ %i.kc, %bb.cu ], [ %i.jx, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoItermEECs2g09Ig8GZd6_13polars_stream.exit334 ] ; 2 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 96, !dbg !104428
  %.val4.i = load i64, ptr %i.kf, align 16, !dbg !104428, !noalias !103712, !noundef !3166
  %i.kg = invoke noundef zeroext i1 @_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr24is_input_independent_rec(i64 noundef %.val4.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ka)
          to label %.noexc335 unwind label %.loopexit695, !dbg !104429

.noexc335:                                        ; preds = %.lr.ph1435
  br i1 %i.kg, label %bb.cu, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan14lower_group_by28try_build_streaming_group_bys0_0EB2A_.exit, !dbg !104428

._crit_edge1436:                                  ; preds = %bb.cu, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoItermEECs2g09Ig8GZd6_13polars_stream.exit334
  %i.kh = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCs2g09Ig8GZd6_13polars_stream13physical_planNtB5_10PhysStream13output_schema(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %11)
          to label %bb.cv unwind label %.loopexit.split-lp696, !dbg !104430

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan14lower_group_by28try_build_streaming_group_bys0_0EB2A_.exit: ; preds = %.noexc335, %bb.df
  %i.ki = phi i1 [ true, %bb.df ], [ false, %.noexc335 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !dbg !104431
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !103780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !dbg !103780
  %i.kj = load ptr, ptr %i.ji, align 8, !dbg !104432, !nonnull !3166, !noundef !3166
  %i.kk = load i64, ptr %i.jj, align 8, !dbg !104433, !noundef !3166
  invoke void @_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr19build_select_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bs, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %1, ptr noundef nonnull align 16 %i.kj, i64 noundef %i.kk, ptr noalias noundef nonnull align 8 dereferenceable(32) %10, ptr noalias noundef nonnull align 8 dereferenceable(32) %11, ptr noalias noundef nonnull align 8 dereferenceable(120) %12, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %13, i1 noundef zeroext %14)
          to label %bb.dg unwind label %.loopexit.split-lp696, !dbg !103780

bb.cv:                                            ; preds = %._crit_edge1436
  %i.kl = load ptr, ptr %i.kh, align 8, !dbg !104434, !nonnull !3166, !noundef !3166 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 32, !dbg !104435
  %i.kn = load i64, ptr %i.km, align 8, !dbg !104435, !noundef !3166
  %.not252 = icmp eq i64 %i.kn, 0, !dbg !104436
  br i1 %.not252, label %bb.cw, label %bb.cx, !dbg !104436, !prof !3216

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @413) #54
          to label %bb.bb unwind label %.loopexit.split-lp696, !dbg !104437

bb.cx:                                            ; preds = %bb.cv
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 24, !dbg !104438
  %i.kp = load ptr, ptr %i.ko, align 8, !dbg !104438, !nonnull !3166, !noundef !3166 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 48, !dbg !104439 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !dbg !104440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !104441
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 71, !dbg !104442
  %i.ks = load i8, ptr %i.kr, align 1, !dbg !104442, !range !3277, !noundef !3166
  %i.kt = icmp eq i8 %i.ks, -40, !dbg !104443     ; 2 uses
  br i1 %i.kt, label %bb.cy, label %bb.cz, !dbg !104443

bb.cy:                                            ; preds = %bb.cx
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kq)
          to label %bb.da unwind label %.loopexit.split-lp696, !dbg !104444

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.kq, i64 24, i1 false), !dbg !104445
  br label %bb.da, !dbg !104446

bb.da:                                            ; preds = %bb.cy, %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !dbg !104447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !104448
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bv, i64 112, !dbg !104440
  store i64 -9223372036854775806, ptr %i.ku, align 16, !dbg !104440
  %i.kv = load i64, ptr %i.ej, align 8, !dbg !104449, !noundef !3166 ; 2 uses
  %i.kw = icmp ult i64 %i.kv, 64051194700380388, !dbg !104450
  call void @llvm.assume(i1 %i.kw), !dbg !104451
  invoke fastcc void @_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE8push_mutCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %10, ptr noalias noundef align 16 captures(address) dereferenceable(144) %i.bv)
          to label %bb.db unwind label %.loopexit.split-lp696, !dbg !104452

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !dbg !104453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !dbg !103778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !104454
  br i1 %i.kt, label %bb.dc, label %bb.dd, !dbg !104455

bb.dc:                                            ; preds = %bb.db
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kq)
          to label %bb.de unwind label %.loopexit.split-lp696, !dbg !104456

bb.dd:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.kq, i64 24, i1 false), !dbg !104457
  br label %bb.de, !dbg !104458

bb.de:                                            ; preds = %bb.dc, %bb.dd
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !104459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.449.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !104460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !104461
  store i64 2, ptr %i.bu, align 16, !dbg !104459
  %i.kx = getelementptr inbounds nuw i8, ptr %i.bu, i64 96, !dbg !104459
  store i64 %i.kv, ptr %i.kx, align 16, !dbg !104459
  %.sroa.4169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 80, !dbg !104459
  store i32 3, ptr %.sroa.4169.0..sroa_idx, align 16, !dbg !104459
  invoke fastcc void @_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE8push_mutCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.cb, ptr noalias noundef align 16 captures(address) dereferenceable(112) %i.bu)
          to label %bb.df unwind label %.loopexit.split-lp696, !dbg !104462

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !dbg !104463
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan14lower_group_by28try_build_streaming_group_bys0_0EB2A_.exit, !dbg !104464

bb.dg:                                            ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan14lower_group_by28try_build_streaming_group_bys0_0EB2A_.exit
  %i.ky = load i64, ptr %i.bs, align 8, !dbg !104465, !range !3672, !noundef !3166 ; 2 uses
  %.not253 = icmp eq i64 %i.ky, 18, !dbg !104465
  %i.kz = getelementptr inbounds nuw i8, ptr %i.bs, i64 8, !dbg !104466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.kz, i64 16, i1 false), !dbg !104466
  br i1 %.not253, label %bb.di, label %bb.dh, !dbg !104467

bb.dh:                                            ; preds = %bb.dg
  %.sroa.6178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24, !dbg !104468
  %.sroa.3181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !104469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3181.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6178.0..sroa_idx, i64 48, i1 false), !dbg !104468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !dbg !104470
  %.sroa.2180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !104469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2180.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !dbg !104470
  store i64 %i.ky, ptr %0, align 8, !dbg !104469
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !104471
  br label %bb.kj, !dbg !104472

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !dbg !104470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !dbg !103780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !dbg !104473
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !104471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !dbg !104474
  store i64 0, ptr %i.br, align 8, !dbg !104475
  %i.la = getelementptr inbounds nuw i8, ptr %i.br, i64 8, !dbg !104475 ; 3 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.la, align 8, !dbg !104475
  %i.lb = getelementptr inbounds nuw i8, ptr %i.br, i64 16, !dbg !104475 ; 4 uses
  store i64 0, ptr %i.lb, align 8, !dbg !104475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !dbg !104476
  invoke void @_RNvXs6_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps3newB1s_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.bq)
          to label %bb.dj unwind label %.thread661.thread, !dbg !104477

.thread661.a:                                     ; preds = %bb.dq, %bb.et, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %.thread538, %bb.dk
  %.sroa.0122.0 = phi i8 [ %.sroa.0122.2543, %.thread538 ], [ %.sroa.0122.4561, %bb.dk ], [ %.sroa.0122.3, %bb.dq ], [ %.sroa.0122.3, %bb.hf ], [ %.sroa.0122.3, %bb.hg ], [ %.sroa.0122.3, %bb.hh ], [ %.sroa.0122.3, %bb.hi ], [ %.sroa.0122.3, %bb.et ], !dbg !104476
  %.sroa.0125.10 = phi i8 [ 1, %.thread538 ], [ 1, %bb.dk ], [ %.sroa.0125.14.ph, %bb.dq ], [ 1, %bb.hf ], [ 1, %bb.hg ], [ %.sroa.0125.15, %bb.hh ], [ %.sroa.0125.15, %bb.hi ], [ %.sroa.0125.15, %bb.et ], !dbg !104283 ; 2 uses
  %.pn278.pn = phi { ptr, i32 } [ %.pn278545, %.thread538 ], [ %.pn269.pn.pn570, %bb.dk ], [ %lpad.thr_comm.split-lp589, %bb.dq ], [ %.pn259, %bb.hf ], [ %.pn259, %bb.hg ], [ %.pn265, %bb.hh ], [ %.pn265, %bb.hi ], [ %.pn265, %bb.et ] ; 2 uses
  %i.lc = trunc nuw i8 %.sroa.0122.0 to i1, !dbg !104478
  br i1 %i.lc, label %bb.kp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoItermEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !104478

.thread661.thread:                                ; preds = %bb.di, %bb.kg
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.kp, !dbg !104478

bb.dj:                                            ; preds = %bb.di
  %i.le = getelementptr inbounds nuw i8, ptr %i.cf, i64 8, !dbg !104479
  %i.lf = load ptr, ptr %i.le, align 8, !dbg !104479, !nonnull !3166, !noundef !3166 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16, !dbg !104480
  %i.lh = load i64, ptr %i.lg, align 8, !dbg !104480, !noundef !3166 ; 2 uses
  %.idx813 = mul nuw nsw i64 %i.lh, 160, !dbg !104481
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 %.idx813, !dbg !104481 ; 2 uses
  %i.lj = icmp eq i64 %i.lh, 0, !dbg !104482
  br i1 %i.lj, label %.outer._crit_edge, label %.lr.ph802.lr.ph, !dbg !104483

.lr.ph802.lr.ph:                                  ; preds = %bb.dj
  %i.lk = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  %i.ll = getelementptr inbounds nuw i8, ptr %i.cq, i64 72
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %.sroa.6184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %.sroa.7.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %i.bm, i64 33
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  %.sroa.4207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %i.lo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.ls = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.bn, i64 23 ; 3 uses
  br label %.lr.ph802, !dbg !104483

.lr.ph802:                                        ; preds = %.lr.ph802.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit409
  %.sroa.045.1.ph809 = phi i1 [ %i.ki, %.lr.ph802.lr.ph ], [ %.sroa.045.1801, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit409 ]
  %.sroa.058.0.ph808 = phi i8 [ 0, %.lr.ph802.lr.ph ], [ %.sroa.058.1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit409 ] ; 3 uses
  %.sroa.0449.0.ph807 = phi ptr [ %i.lf, %.lr.ph802.lr.ph ], [ %i.lv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit409 ]
  br label %bb.dl, !dbg !104483

bb.dk:                                            ; preds = %bb.im, %.critedge297
  br i1 %.sroa.0131.1565, label %.thread538, label %.thread661.a, !dbg !104484

bb.dl:                                            ; preds = %.lr.ph802, %bb.ko
  %.sroa.045.1801 = phi i1 [ %.sroa.045.1.ph809, %.lr.ph802 ], [ true, %bb.ko ] ; 2 uses
  %.sroa.0449.0800 = phi ptr [ %.sroa.0449.0.ph807, %.lr.ph802 ], [ %i.lv, %bb.ko ] ; 7 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0449.0800, i64 160, !dbg !104485 ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0449.0800, i64 120, !dbg !104486
  %i.lx = load ptr, ptr %i.lw, align 8, !dbg !104486, !nonnull !3166, !noundef !3166 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0449.0800, i64 128, !dbg !104487
  %i.lz = load i64, ptr %i.ly, align 16, !dbg !104487, !noundef !3166 ; 2 uses
  %.idx1444 = shl nuw nsw i64 %i.lz, 2, !dbg !104488
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 %.idx1444, !dbg !104488
  %i.mb = icmp eq i64 %i.lz, 0, !dbg !104489
  br i1 %i.mb, label %._crit_edge1439, label %.lr.ph1438, !dbg !104490

bb.dm:                                            ; preds = %.noexc337
  %i.mc = getelementptr inbounds nuw i8, ptr %i.me, i64 4, !dbg !104491 ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.ma, !dbg !104489
  br i1 %i.md, label %._crit_edge1439, label %.lr.ph1438, !dbg !104490

.lr.ph1438:                                       ; preds = %bb.dl, %bb.dm
  %i.me = phi ptr [ %i.mc, %bb.dm ], [ %i.lx, %bb.dl ] ; 2 uses
  %i.mf = invoke { i64, i64 } @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapmNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE12get_index_ofmECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ce, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.me)
          to label %.noexc337 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !104492

.noexc337:                                        ; preds = %.lr.ph1438
  %i.mg = extractvalue { i64, i64 } %i.mf, 0, !dbg !104492
  %i.mh = icmp eq i64 %i.mg, 1, !dbg !104493
  br i1 %i.mh, label %bb.dm, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan14lower_group_by28try_build_streaming_group_bys1_0EB1J_.exit, !dbg !104494

.outer._crit_edge:                                ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit409, %bb.ko, %bb.dj
  %.sroa.058.0.ph.lcssa784 = phi i8 [ %.sroa.058.0.ph808, %bb.ko ], [ 0, %bb.dj ], [ %.sroa.058.1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit409 ]
  %.sroa.045.1.lcssa = phi i1 [ true, %bb.ko ], [ %i.ki, %bb.dj ], [ %.sroa.045.1801, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit409 ], !dbg !104495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !dbg !104496
  invoke void @_RNvXNtCshe0pyuXM1S4_13polars_schema6schemaINtB2_6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuENtNtCscgRAwXFJnXP_4core7default7Default7defaultCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bf)
          to label %bb.dn unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !104497

bb.dn:                                            ; preds = %.outer._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !104498
  store i64 0, ptr %i.be, align 8, !dbg !104499
  %i.mi = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !104499 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.mi, align 8, !dbg !104499
  %i.mj = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !104499 ; 5 uses
  store i64 0, ptr %i.mj, align 8, !dbg !104499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !104500
  store i64 0, ptr %i.bd, align 8, !dbg !104501
  %i.mk = getelementptr inbounds nuw i8, ptr %i.bd, i64 8, !dbg !104501 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.mk, align 8, !dbg !104501
  %i.ml = getelementptr inbounds nuw i8, ptr %i.bd, i64 16, !dbg !104501 ; 3 uses
  store i64 0, ptr %i.ml, align 8, !dbg !104501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !104502
  store i64 0, ptr %i.bc, align 8, !dbg !104503
  %i.mm = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !104503 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.mm, align 8, !dbg !104503
  %i.mn = getelementptr inbounds nuw i8, ptr %i.bc, i64 16, !dbg !104503 ; 3 uses
  store i64 0, ptr %i.mn, align 8, !dbg !104503
  %.not = xor i1 %.sroa.045.1.lcssa, true, !dbg !104504
  %i.mo = trunc i8 %.sroa.058.0.ph.lcssa784 to i1
  %or.cond = select i1 %.not, i1 %i.mo, i1 false, !dbg !104504
  br i1 %or.cond, label %bb.dp, label %bb.do, !dbg !104504

bb.do:                                            ; preds = %bb.dn
  %i.mp = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCs2g09Ig8GZd6_13polars_stream13physical_planNtB5_10PhysStream13output_schema(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %11)
          to label %bb.dr unwind label %.thread590, !dbg !104505

bb.dp:                                            ; preds = %bb.dn, %bb.ej
  %.sroa.0122.3 = phi i8 [ 1, %bb.dn ], [ 0, %bb.ej ], !dbg !104506 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !104507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !104507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 8 dereferenceable(64) %i.bq, i64 64, i1 false), !dbg !104507
  invoke void @_RNvXs0_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB7_8IndexMapmTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12IntoIterator9into_iterB10_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.au, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.at)
          to label %bb.ek unwind label %.thread590, !dbg !104507

.thread590:                                       ; preds = %bb.do, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketmTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamINtB7_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB1z_.exit.thread, %bb.dp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs2g09Ig8GZd6_13polars_stream.exit342, %bb.dr
  %.sroa.0122.5.ph = phi i8 [ 1, %bb.dr ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs2g09Ig8GZd6_13polars_stream.exit342 ], [ %.sroa.0122.3, %bb.dp ], [ %.sroa.0122.3, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketmTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamINtB7_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB1z_.exit.thread ], [ 1, %bb.do ]
  %.sroa.0131.2.ph = phi i1 [ true, %bb.dr ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs2g09Ig8GZd6_13polars_stream.exit342 ], [ false, %bb.dp ], [ false, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketmTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamINtB7_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB1z_.exit.thread ], [ true, %bb.do ]
  %lpad.thr_comm588 = landingpad { ptr, i32 }
          cleanup
  br label %.thread579, !dbg !104508

bb.dq:                                            ; preds = %bb.gf, %bb.he
  %.sroa.0125.14.ph = phi i8 [ %.sroa.0125.17, %bb.gf ], [ %.sroa.0125.22, %bb.he ]
  %lpad.thr_comm.split-lp589 = landingpad { ptr, i32 }
          cleanup
  br label %.thread661.a, !dbg !104508

bb.dr:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !104509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !104510
  %i.mq = load ptr, ptr %i.gg, align 8, !dbg !104511, !nonnull !3166, !noundef !3166
  %i.mr = load i64, ptr %i.gh, align 8, !dbg !104512, !noundef !3166
  %i.ms = load ptr, ptr %i.la, align 8, !dbg !104513, !nonnull !3166, !noundef !3166
  %i.mt = load i64, ptr %i.lb, align 8, !dbg !104514, !noundef !3166
  store ptr %i.mq, ptr %i.ba, align 8, !dbg !104510
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !104510
  store i64 %i.mr, ptr %i.mu, align 8, !dbg !104510
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ba, i64 16, !dbg !104510
  store ptr %i.ms, ptr %i.mv, align 8, !dbg !104510
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ba, i64 24, !dbg !104510
  store i64 %i.mt, ptr %i.mw, align 8, !dbg !104510
  invoke void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc5sliceSRSNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRINtB5_6ConcatBA_E6concatCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ba, i64 noundef 2)
          to label %bb.ds unwind label %.thread590, !dbg !104515

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !104516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !104517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !104518
  %i.mx = load ptr, ptr %i.mp, align 8, !dbg !104519, !nonnull !3166, !noundef !3166
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16, !dbg !104520
  %i.mz = getelementptr inbounds nuw i8, ptr %i.bb, i64 8, !dbg !104521
  %i.na = load ptr, ptr %i.mz, align 8, !dbg !104521, !nonnull !3166, !noundef !3166
  %i.nb = getelementptr inbounds nuw i8, ptr %i.bb, i64 16, !dbg !104522
  %i.nc = load i64, ptr %i.nb, align 8, !dbg !104522, !noundef !3166
  invoke void @_RNvNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10lower_expr21compute_output_schema(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.my, ptr noundef nonnull align 16 %i.na, i64 noundef %i.nc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10)
          to label %bb.du unwind label %bb.dt, !dbg !104518

.body299:                                         ; preds = %bb.ea, %bb.eb, %bb.dw, %bb.dt
  %.sroa.0122.6 = phi i8 [ 1, %bb.dw ], [ %.sroa.0122.7, %bb.dt ], [ %.sroa.0122.8, %bb.eb ], [ %.sroa.0122.8, %bb.ea ], !dbg !104523
  %.pn255 = phi { ptr, i32 } [ %i.nf, %bb.dw ], [ %i.nd, %bb.dt ], [ %i.nk, %bb.eb ], [ %i.nk, %bb.ea ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.bb) #56
          to label %.thread579 unwind label %bb.bu, !dbg !104524

bb.dt:                                            ; preds = %bb.ei, %bb.ds
  %.sroa.0122.7 = phi i8 [ 0, %bb.ei ], [ 1, %bb.ds ], !dbg !104506
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %.body299

bb.du:                                            ; preds = %bb.ds
  call void @llvm.experimental.noalias.scope.decl(metadata !103861), !dbg !104525
  %i.ne = load i64, ptr %i.ay, align 8, !dbg !104526, !range !3672, !alias.scope !103861, !noundef !3166
  %.not.i298 = icmp eq i64 %i.ne, 18, !dbg !104526
  br i1 %.not.i298, label %bb.dz, label %bb.dv, !dbg !104527, !prof !3419

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !104528, !noalias !103862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ay, i64 72, i1 false), !dbg !104528, !noalias !103863
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @339, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @340, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @414) #54
          to label %bb.dx unwind label %bb.dw, !dbg !104529, !noalias !103861

bb.dw:                                            ; preds = %bb.dv
  %i.nf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #56
          to label %.body299 unwind label %bb.dy, !dbg !104530, !noalias !103861

bb.dx:                                            ; preds = %bb.dv
  unreachable

bb.dy:                                            ; preds = %bb.dw
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !104531, !noalias !103861
  unreachable, !dbg !104531
end_hunk_5
