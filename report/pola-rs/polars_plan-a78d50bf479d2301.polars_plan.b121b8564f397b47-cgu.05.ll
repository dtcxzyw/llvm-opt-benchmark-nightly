Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.05?download=true
inline.NumInlined: 10337
inline.NumDeleted: 5105
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdownNtB4_25ProjectionPushdownVisitor8pushdown:bb.a
  %i.fn = alloca [64 x i8], align 8               ; 5 uses
  %i.fo = alloca [8 x i8], align 8                ; 8 uses
  %i.fp = alloca [16 x i8], align 8               ; 5 uses
  %i.fq = alloca [24 x i8], align 8               ; 5 uses
  %i.fr = alloca [64 x i8], align 8               ; 5 uses
  %i.fs = alloca [64 x i8], align 8               ; 5 uses
  %i.ft = alloca [16 x i8], align 8               ; 5 uses
  %i.fu = alloca [64 x i8], align 8               ; 5 uses
  %i.fv = alloca [64 x i8], align 8               ; 6 uses
  %i.fw = alloca [24 x i8], align 8               ; 6 uses
  %i.fx = alloca [64 x i8], align 8               ; 4 uses
  %i.fy = alloca [8 x i8], align 8                ; 5 uses
  %i.fz = alloca [16 x i8], align 8               ; 7 uses
  %i.ga = alloca [72 x i8], align 8               ; 4 uses
  %i.gb = alloca [72 x i8], align 8               ; 4 uses
  %i.gc = alloca [64 x i8], align 8               ; 5 uses
  %i.gd = alloca [8 x i8], align 8                ; 4 uses
  %i.ge = alloca [24 x i8], align 8               ; 4 uses
  %i.gf = alloca [24 x i8], align 8               ; 4 uses
  %i.gg = alloca [64 x i8], align 8               ; 5 uses
  %i.gh = alloca [64 x i8], align 8               ; 6 uses
  %i.gi = alloca [64 x i8], align 8               ; 5 uses
  %i.gj = alloca [64 x i8], align 8               ; 4 uses
  %i.gk = alloca [8 x i8], align 8                ; 4 uses
  %i.gl = alloca [24 x i8], align 8               ; 4 uses
  %i.gm = alloca [80 x i8], align 16              ; 6 uses
  %i.gn = alloca [48 x i8], align 16              ; 5 uses
  %i.go = alloca [80 x i8], align 16              ; 5 uses
  %i.gp = alloca [48 x i8], align 16              ; 5 uses
  %i.gq = alloca [24 x i8], align 8               ; 9 uses
  %i.gr = alloca [48 x i8], align 16              ; 5 uses
  %i.gs = alloca [72 x i8], align 8               ; 8 uses
  %i.gt = alloca [72 x i8], align 8               ; 2 uses
  %i.gu = alloca [8 x i8], align 8                ; 11 uses
  %i.gv = alloca [8 x i8], align 8                ; 9 uses
  %i.gw = alloca [64 x i8], align 8               ; 6 uses
  %i.gx = alloca [64 x i8], align 8               ; 3 uses
  %.sroa.0170 = alloca [200 x i8], align 8        ; 6 uses
  %i.gy = alloca [368 x i8], align 16             ; 7 uses
  %i.gz = alloca [368 x i8], align 16             ; 4 uses
  %i.ha = alloca [368 x i8], align 16             ; 7 uses
  %i.hb = alloca [368 x i8], align 16             ; 16 uses
  %i.hc = alloca [32 x i8], align 8               ; 5 uses
  %i.hd = alloca [64 x i8], align 8               ; 4 uses
  %i.he = alloca [8 x i8], align 8                ; 4 uses
  %i.hf = alloca [24 x i8], align 8               ; 6 uses
  %i.hg = alloca [16 x i8], align 8               ; 4 uses
  %i.hh = alloca [16 x i8], align 8               ; 4 uses
  %i.hi = alloca [32 x i8], align 8               ; 10 uses
  %i.hj = alloca [16 x i8], align 8               ; 5 uses
  %i.hk = alloca [8 x i8], align 8                ; 14 uses
  %i.hl = alloca [16 x i8], align 8               ; 5 uses
  %i.hm = alloca [64 x i8], align 8               ; 4 uses
  %i.hn = alloca [64 x i8], align 8               ; 6 uses
  %i.ho = alloca [40 x i8], align 8               ; 4 uses
  %i.hp = alloca [48 x i8], align 8               ; 5 uses
  %i.hq = alloca [64 x i8], align 8               ; 2 uses
  %i.hr = alloca [24 x i8], align 8               ; 5 uses
  %i.hs = alloca [16 x i8], align 8               ; 5 uses
  %i.ht = alloca [40 x i8], align 8               ; 4 uses
  %i.hu = alloca [16 x i8], align 8               ; 5 uses
  %i.hv = alloca [24 x i8], align 8               ; 8 uses
  %i.hw = alloca [96 x i8], align 8               ; 15 uses
  %i.hx = alloca [8 x i8], align 8                ; 6 uses
  %i.hy = alloca [8 x i8], align 8                ; 5 uses
  %i.hz = alloca [8 x i8], align 8                ; 5 uses
  %i.ia = alloca [8 x i8], align 8                ; 2 uses
  %i.ib = alloca [1 x i8], align 1                ; 5 uses
  %i.ic = alloca [24 x i8], align 8               ; 9 uses
  %i.id = alloca [144 x i8], align 16             ; 6 uses
  %i.ie = alloca [144 x i8], align 16             ; 4 uses
  %i.if = alloca [112 x i8], align 16             ; 6 uses
  %i.ig = alloca [16 x i8], align 8               ; 5 uses
  %i.ih = alloca [80 x i8], align 16              ; 5 uses
  %i.ii = alloca [80 x i8], align 16              ; 4 uses
  %i.ij = alloca [64 x i8], align 8               ; 4 uses
  %i.ik = alloca [24 x i8], align 8               ; 4 uses
  %i.il = alloca [368 x i8], align 16             ; 11 uses
  %i.im = alloca [24 x i8], align 8               ; 7 uses
  %i.in = alloca [48 x i8], align 16              ; 5 uses
  %i.io = alloca [24 x i8], align 8               ; 4 uses
  %i.ip = alloca [112 x i8], align 16             ; 5 uses
  %i.iq = alloca [144 x i8], align 16             ; 5 uses
  %i.ir = alloca [24 x i8], align 8               ; 8 uses
  %i.is = alloca [16 x i8], align 8               ; 5 uses
  %i.it = alloca [24 x i8], align 8               ; 7 uses
  %i.iu = alloca [24 x i8], align 8               ; 12 uses
  %i.iv = alloca [8 x i8], align 8                ; 3 uses
  %i.iw = alloca [24 x i8], align 8               ; 8 uses
  %i.ix = alloca [64 x i8], align 8               ; 7 uses
  %i.iy = alloca [24 x i8], align 8               ; 9 uses
  %i.iz = alloca [16 x i8], align 8               ; 5 uses
  %i.ja = alloca [64 x i8], align 8               ; 5 uses
  %i.jb = alloca [24 x i8], align 8               ; 7 uses
  %i.jc = alloca [64 x i8], align 8               ; 5 uses
  %i.jd = alloca [72 x i8], align 8               ; 4 uses
  %i.je = alloca [40 x i8], align 8               ; 9 uses
  %i.jf = alloca [40 x i8], align 8               ; 2 uses
  %i.jg = alloca [64 x i8], align 8               ; 5 uses
  %i.jh = alloca [64 x i8], align 8               ; 5 uses
  %i.ji = alloca [16 x i8], align 8               ; 5 uses
  %i.jj = alloca [144 x i8], align 16             ; 12 uses
  %i.jk = alloca [24 x i8], align 8               ; 4 uses
  %i.jl = alloca [80 x i8], align 8               ; 11 uses
  %i.jm = alloca [24 x i8], align 8               ; 6 uses
  %i.jn = alloca [24 x i8], align 8               ; 4 uses
  %i.jo = alloca [80 x i8], align 16              ; 5 uses
  %i.jp = alloca [80 x i8], align 16              ; 4 uses
  %i.jq = alloca [64 x i8], align 8               ; 4 uses
  %i.jr = alloca [8 x i8], align 8                ; 8 uses
  %i.js = alloca [64 x i8], align 8               ; 5 uses
  %i.jt = alloca [16 x i8], align 8               ; 5 uses
  %i.ju = alloca [24 x i8], align 8               ; 4 uses
  %i.jv = alloca [24 x i8], align 8               ; 4 uses
  %i.jw = alloca [72 x i8], align 8               ; 4 uses
  %i.jx = alloca [40 x i8], align 8               ; 9 uses
  %i.jy = alloca [40 x i8], align 8               ; 2 uses
  %i.jz = alloca [64 x i8], align 8               ; 5 uses
  %i.ka = alloca [40 x i8], align 8               ; 4 uses
  %i.kb = alloca [40 x i8], align 8               ; 4 uses
  %i.kc = alloca [8 x i8], align 8                ; 8 uses
  %i.kd = alloca [16 x i8], align 8               ; 5 uses
  %i.ke = alloca [64 x i8], align 8               ; 4 uses
  %i.kf = alloca [64 x i8], align 8               ; 7 uses
  %i.kg = alloca [40 x i8], align 8               ; 4 uses
  %i.kh = alloca [16 x i8], align 8               ; 5 uses
  %i.ki = alloca [24 x i8], align 8               ; 4 uses
  %i.kj = alloca [24 x i8], align 8               ; 6 uses
  %i.kk = alloca [24 x i8], align 8               ; 4 uses
  %i.kl = alloca [32 x i8], align 8               ; 5 uses
  %i.km = alloca [24 x i8], align 8               ; 4 uses
  %i.kn = alloca [24 x i8], align 8               ; 5 uses
  %i.ko = alloca [24 x i8], align 8               ; 7 uses
  %i.kp = alloca [24 x i8], align 8               ; 5 uses
  %i.kq = alloca [24 x i8], align 8               ; 8 uses
  %i.kr = alloca [16 x i8], align 8               ; 5 uses
  %i.ks = alloca [16 x i8], align 8               ; 5 uses
  %i.kt = alloca [64 x i8], align 8               ; 5 uses
  %i.ku = alloca [16 x i8], align 8               ; 5 uses
  %i.kv = alloca [64 x i8], align 8               ; 5 uses
  %i.kw = alloca [72 x i8], align 8               ; 6 uses
  %i.kx = alloca [8 x i8], align 8                ; 6 uses
  %.sroa.51933 = alloca [64 x i8], align 8        ; 5 uses
  %i.ky = alloca [8 x i8], align 8                ; 8 uses
  %.sroa.51931 = alloca [64 x i8], align 8        ; 5 uses
  %i.kz = alloca [8 x i8], align 8                ; 8 uses
  %i.la = alloca [32 x i8], align 8               ; 7 uses
  %i.lb = alloca [16 x i8], align 8               ; 5 uses
  %i.lc = alloca [16 x i8], align 8               ; 5 uses
  %i.ld = alloca [24 x i8], align 8               ; 7 uses
  %i.le = alloca [24 x i8], align 8               ; 7 uses
  %i.lf = alloca [72 x i8], align 8               ; 4 uses
  %i.lg = alloca [72 x i8], align 8               ; 4 uses
  %i.lh = alloca [24 x i8], align 8               ; 8 uses
  %i.li = alloca [24 x i8], align 8               ; 7 uses
  %i.lj = alloca [8 x i8], align 8                ; 4 uses
  %i.lk = alloca [72 x i8], align 8               ; 6 uses
  %i.ll = alloca [240 x i8], align 8              ; 24 uses
  %.sroa.51929 = alloca [136 x i8], align 8       ; 4 uses
  %i.lm = alloca [72 x i8], align 8               ; 4 uses
  %i.ln = alloca [72 x i8], align 8               ; 5 uses
  %i.lo = alloca [72 x i8], align 8               ; 12 uses
  %i.lp = alloca [24 x i8], align 8               ; 6 uses
  %i.lq = alloca [16 x i8], align 8               ; 6 uses
  %i.lr = alloca [8 x i8], align 8                ; 4 uses
  %i.ls = alloca [8 x i8], align 8                ; 13 uses
  %i.lt = alloca [8 x i8], align 8                ; 13 uses
  %i.lu = alloca [16 x i8], align 8               ; 5 uses
  %i.lv = alloca [64 x i8], align 8               ; 5 uses
  %i.lw = alloca [40 x i8], align 8               ; 4 uses
  %i.lx = alloca [16 x i8], align 8               ; 5 uses
  %i.ly = alloca [72 x i8], align 8               ; 4 uses
  %i.lz = alloca [64 x i8], align 8               ; 5 uses
  %i.ma = alloca [72 x i8], align 8               ; 4 uses
  %i.mb = alloca [72 x i8], align 8               ; 4 uses
  %i.mc = alloca [144 x i8], align 16             ; 6 uses
  %i.md = alloca [144 x i8], align 16             ; 4 uses
  %i.me = alloca [16 x i8], align 8               ; 5 uses
  %i.mf = alloca [8 x i8], align 8                ; 6 uses
  %i.mg = alloca [8 x i8], align 8                ; 6 uses
  %i.mh = alloca [48 x i8], align 16              ; 6 uses
  %i.mi = alloca [80 x i8], align 16              ; 6 uses
  %i.mj = alloca [48 x i8], align 16              ; 6 uses
  %i.mk = alloca [80 x i8], align 16              ; 6 uses
  %i.ml = alloca [64 x i8], align 8               ; 7 uses
  %i.mm = alloca [24 x i8], align 8               ; 5 uses
  %i.mn = alloca [24 x i8], align 8               ; 7 uses
  %i.mo = alloca [24 x i8], align 8               ; 7 uses
  %i.mp = alloca [72 x i8], align 8               ; 4 uses
  %i.mq = alloca [24 x i8], align 8               ; 7 uses
  %i.mr = alloca [40 x i8], align 8               ; 7 uses
  %i.ms = alloca [8 x i8], align 8                ; 14 uses
  %i.mt = alloca [8 x i8], align 8                ; 10 uses
  %i.mu = alloca [16 x i8], align 8               ; 5 uses
  %i.mv = alloca [16 x i8], align 8               ; 5 uses
  %i.mw = alloca [40 x i8], align 8               ; 4 uses
  %i.mx = alloca [16 x i8], align 8               ; 5 uses
  %i.my = alloca [16 x i8], align 8               ; 5 uses
  %i.mz = alloca [24 x i8], align 8               ; 5 uses
  %i.na = alloca [8 x i8], align 8                ; 8 uses
  %i.nb = alloca [24 x i8], align 8               ; 6 uses
  %i.nc = alloca [72 x i8], align 8               ; 4 uses
  %i.nd = alloca [16 x i8], align 8               ; 5 uses
  %i.ne = alloca [24 x i8], align 8               ; 7 uses
  %i.nf = alloca [144 x i8], align 16             ; 4 uses
  %i.ng = alloca [144 x i8], align 16             ; 4 uses
  %i.nh = alloca [64 x i8], align 8               ; 5 uses
  %i.ni = alloca [24 x i8], align 8               ; 6 uses
  %i.nj = alloca [64 x i8], align 8               ; 4 uses
  %i.nk = alloca [8 x i8], align 8                ; 2 uses
  %i.nl = alloca [8 x i8], align 8                ; 2 uses
  %i.nm = alloca [16 x i8], align 8               ; 9 uses
  %i.nn = alloca [8 x i8], align 8                ; 2 uses
  %i.no = alloca [8 x i8], align 8                ; 60 uses
  %i.np = alloca [8 x i8], align 8                ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %4, i64 24, !dbg !129233
  %i.nr = load ptr, ptr %i.nq, align 8, !dbg !129233, !invariant.load !3394 ; 25 uses
  %i.ns = tail call { ptr, ptr } %i.nr(ptr noundef nonnull %3) #38, !dbg !129234 ; 2 uses
  %i.nt = extractvalue { ptr, ptr } %i.ns, 0, !dbg !129234
  %i.nu = extractvalue { ptr, ptr } %i.ns, 1, !dbg !129234
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 32, !dbg !129233
  %i.nw = load ptr, ptr %i.nv, align 8, !dbg !129233, !invariant.load !3394, !nonnull !3394
  %i.nx = tail call noundef i64 %i.nw(ptr noundef %i.nt) #38, !dbg !129235 ; 4 uses
  store i64 %i.nx, ptr %i.np, align 8, !dbg !129235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.no), !dbg !129236
  %.val986 = load ptr, ptr %2, align 8, !dbg !129237, !nonnull !3394, !align !3446, !noundef !3394 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !129238 ; 10 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !dbg !129238, !nonnull !3394, !align !3446, !noundef !3394
  %i.oa = tail call noundef nonnull ptr @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR17schema_with_cache(i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val986, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.nz), !dbg !129239
  store ptr %i.oa, ptr %i.no, align 8, !dbg !129239
  %i.ob = getelementptr inbounds nuw i8, ptr %.val986, i64 16, !dbg !129240
  %i.oc = load i64, ptr %i.ob, align 8, !dbg !129240, !noundef !3394
  %i.od = icmp ult i64 %1, %i.oc, !dbg !129241
  br i1 %i.od, label %bb.b, label %.invoke3446, !dbg !129241, !prof !3464

bb.b:                                             ; preds = %bb.a
  %i.oe = getelementptr inbounds nuw i8, ptr %.val986, i64 8, !dbg !129242
  %i.of = load ptr, ptr %i.oe, align 8, !dbg !129242, !nonnull !3394, !noundef !3394
  %i.og = getelementptr inbounds nuw [368 x i8], ptr %i.of, i64 %1, !dbg !129243
  %i.oh = load i64, ptr %i.og, align 16, !dbg !129244, !range !3901, !noundef !3394 ; 2 uses
  %i.oi = icmp ne i64 %i.oh, -9223372036854775786, !dbg !129244
  tail call void @llvm.assume(i1 %i.oi), !dbg !129244
  %i.oj = icmp eq i64 %i.oh, -9223372036854775796, !dbg !129245
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !dbg !129246, !invariant.load !3394 ; 26 uses
  br i1 %i.oj, label %._crit_edge3110.a, label %bb.d, !dbg !129245

bb.c:                                             ; preds = %bb.bfo, %bb.bfl, %bb.bez, %bb.bcg, %bb.bcd, %bb.bbz, %bb.bba, %bb.bax, %bb.ayj, %bb.ayg, %bb.awn, %bb.avp, %bb.avm, %bb.and, %bb.ana, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfcROwRM8ZtH_11polars_plan.exit1656.thread, %bb.alg, %bb.ake, %bb.aiz, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfcROwRM8ZtH_11polars_plan.exit.thread, %bb.abi, %bb.abf, %bb.wt, %bb.rz, %bb.ko, %bb.kc, %bb.jf, %bb.hr, %.critedge, %bb.di, %bb.ba
  unreachable

._crit_edge3110.a:                                ; preds = %bb.b, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nm), !dbg !129247
  %i.ok = invoke { ptr, ptr } %.pre(ptr noundef nonnull %3)
          to label %bb.g unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129248 ; 2 uses

bb.d:                                             ; preds = %bb.b
  %i.ol = invoke { ptr, ptr } %.pre(ptr noundef nonnull %3)
          to label %bb.e unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129249 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.om = extractvalue { ptr, ptr } %i.ol, 0, !dbg !129250
  %i.on = extractvalue { ptr, ptr } %i.ol, 1, !dbg !129250
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 32, !dbg !129250
  %i.op = load ptr, ptr %i.oo, align 8, !dbg !129250, !invariant.load !3394, !nonnull !3394
  %i.oq = invoke noundef i64 %i.op(ptr noundef %i.om)
          to label %bb.f unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129251 ; 2 uses

bb.f:                                             ; preds = %bb.e
  store i64 %i.oq, ptr %i.nn, align 8, !dbg !129250
  %i.or = icmp eq i64 %i.oq, 1, !dbg !129252
  br i1 %i.or, label %._crit_edge3110.a, label %.invoke3448, !dbg !129252, !prof !3464

.invoke3448:                                      ; preds = %bb.r, %bb.q, %bb.pq, %bb.f
  %i.os = phi ptr [ %i.np, %bb.q ], [ %i.nn, %bb.f ], [ %i.nk, %bb.pq ], [ %i.np, %bb.r ]
  %i.ot = phi ptr [ @577, %bb.q ], [ @417, %bb.f ], [ %i.nl, %bb.pq ], [ @577, %bb.r ]
  %i.ou = phi ptr [ @594, %bb.q ], [ @626, %bb.f ], [ @554, %bb.pq ], [ @597, %bb.r ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.os, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ot, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ou) #41
          to label %.cont3449 unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129246

.cont3449:                                        ; preds = %.invoke3448
  unreachable

bb.g:                                             ; preds = %._crit_edge3110.a
  %i.ov = extractvalue { ptr, ptr } %i.ok, 0, !dbg !129247
  %i.ow = extractvalue { ptr, ptr } %i.ok, 1, !dbg !129247
  store ptr %i.ov, ptr %i.nm, align 8, !dbg !129247
  %i.ox = getelementptr inbounds nuw i8, ptr %i.nm, i64 8, !dbg !129247
  store ptr %i.ow, ptr %i.ox, align 8, !dbg !129247
  %i.oy = invoke noundef nonnull align 8 ptr @_RNvXs2_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionWrapNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeQDINtB5_10CollectionB17_EEL_EINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutB1h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.nm, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @543)
          to label %bb.h unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129253 ; 129 uses

bb.h:                                             ; preds = %bb.g
  %.val1051 = load ptr, ptr %2, align 8, !dbg !129254, !nonnull !3394, !align !3446, !noundef !3394 ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.val1051, i64 16, !dbg !129255
  %i.pa = load i64, ptr %i.oz, align 8, !dbg !129255, !noundef !3394 ; 5 uses
  %i.pb = icmp ult i64 %1, %i.pa, !dbg !129256
  br i1 %i.pb, label %bb.i, label %.invoke3446, !dbg !129256, !prof !3464

bb.i:                                             ; preds = %bb.h
  %i.pc = getelementptr inbounds nuw i8, ptr %.val1051, i64 8, !dbg !129257
  %i.pd = load ptr, ptr %i.pc, align 8, !dbg !129257, !nonnull !3394, !noundef !3394 ; 5 uses
  %i.pe = getelementptr inbounds nuw [368 x i8], ptr %i.pd, i64 %1, !dbg !129258 ; 51 uses
  %i.pf = load i64, ptr %i.pe, align 16, !dbg !129254, !range !3901, !noundef !3394 ; 3 uses
  %i.pg = icmp ne i64 %i.pf, -9223372036854775786, !dbg !129254
  call void @llvm.assume(i1 %i.pg), !dbg !129254
  %i.ph = add nsw i64 %i.pf, 9223372036854775804, !dbg !129254
  %i.pi = icmp ugt i64 %i.pf, -9223372036854775805, !dbg !129254
  %i.pj = select i1 %i.pi, i64 %i.ph, i64 18, !dbg !129254
  switch i64 %i.pj, label %bb.j [
    i64 0, label %bb.k
    i64 1, label %bb.bs
    i64 2, label %bb.bt
    i64 3, label %bb.df
    i64 4, label %bb.l
    i64 5, label %bb.m
    i64 6, label %bb.n
    i64 7, label %bb.bs
    i64 8, label %bb.o
    i64 9, label %bb.p
    i64 10, label %bb.q
    i64 11, label %bb.r
    i64 12, label %bb.s
    i64 13, label %bb.t
    i64 14, label %bb.u
    i64 15, label %bb.v
    i64 16, label %bb.bbq
    i64 17, label %bb.w
    i64 18, label %bb.x
    i64 19, label %bb.x
    i64 20, label %bb.y
    i64 21, label %bb.bia
    i64 22, label %.invoke3442
  ], !dbg !129259, !prof !4463

default.unreachable3316:                          ; preds = %bb.ajy, %bb.zf, %bb.pv, %bb.vb, %bb.pg
  unreachable

bb.j:                                             ; preds = %bb.i
  unreachable, !dbg !129260

bb.k:                                             ; preds = %bb.i
  %i.pk = load ptr, ptr %i.no, align 8, !dbg !129261, !nonnull !3394, !noundef !3394
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16, !dbg !129262
  %i.pm = invoke noundef align 8 ptr @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState30compute_projected_names_subsetBc_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.oy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.pl)
          to label %bb.z unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129263

bb.l:                                             ; preds = %bb.i
  %i.pn = invoke noundef i8 @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState10projectionBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.oy)
          to label %bb.nc unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129264

bb.m:                                             ; preds = %bb.i
  %i.po = invoke noundef i8 @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState10projectionBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.oy)
          to label %bb.pg unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129265

bb.n:                                             ; preds = %bb.i
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pe, i64 40, !dbg !129266
  %i.pq = load i64, ptr %i.pp, align 8, !dbg !129266, !noundef !3394 ; 4 uses
  %i.pr = invoke noundef i8 @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState10projectionBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.oy)
          to label %bb.ps unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129267

bb.o:                                             ; preds = %bb.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pe, i64 24, !dbg !129268
  %i.pt = load i64, ptr %i.ps, align 8, !dbg !129268, !noundef !3394
  %i.pu = invoke { ptr, ptr } %.pre(ptr noundef nonnull %3)
          to label %bb.wa unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129269 ; 2 uses

bb.p:                                             ; preds = %bb.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pe, i64 8, !dbg !129254
  %i.pw = load i64, ptr %i.pv, align 8, !dbg !129254, !range !3524, !noundef !3394
  %i.px = trunc nuw i64 %i.pw to i1, !dbg !129259
  br i1 %i.px, label %bb.aay, label %bb.yb, !dbg !129259

bb.q:                                             ; preds = %bb.i
  %i.py = icmp eq i64 %i.nx, 2, !dbg !129270
  br i1 %i.py, label %bb.aaz, label %.invoke3448, !dbg !129270, !prof !3464

bb.r:                                             ; preds = %bb.i
  %i.pz = icmp eq i64 %i.nx, 2, !dbg !129271
  br i1 %i.pz, label %bb.alp, label %.invoke3448, !dbg !129271, !prof !3464

bb.s:                                             ; preds = %bb.i
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pe, i64 40, !dbg !129272
  %i.qb = load i64, ptr %i.qa, align 8, !dbg !129272, !noundef !3394 ; 3 uses
  %i.qc = invoke noundef i8 @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState10projectionBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.oy)
          to label %bb.amw unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129273

bb.t:                                             ; preds = %bb.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pe, i64 32, !dbg !129254 ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 16, !dbg !129254, !noundef !3394
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pe, i64 40, !dbg !129254
  %.not585 = icmp eq ptr %i.qe, null, !dbg !129254
  %i.qg = load ptr, ptr %i.no, align 8, !dbg !129274, !nonnull !3394, !noundef !3394
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16, !dbg !129275 ; 2 uses
  br i1 %.not585, label %.invoke3441, label %bb.aso, !dbg !129259

bb.u:                                             ; preds = %bb.i
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pe, i64 8, !dbg !129254 ; 7 uses
  %i.qj = load i64, ptr %i.qi, align 8, !dbg !129254, !range !3904, !noundef !3394 ; 3 uses
  %i.qk = icmp ne i64 %i.qj, 5, !dbg !129254
  call void @llvm.assume(i1 %i.qk), !dbg !129254
  %i.ql = add nsw i64 %i.qj, -3, !dbg !129254
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdownNtB4_25ProjectionPushdownVisitor8pushdown:bb.a
  %i.bca = load i64, ptr %i.bbz, align 16, !dbg !130458, !range !3901, !noundef !3394 ; 2 uses
  %i.bcb = icmp ne i64 %i.bca, -9223372036854775786, !dbg !130458
  call void @llvm.assume(i1 %i.bcb), !dbg !130458
  %i.bcc = icmp eq i64 %i.bca, -9223372036854775798, !dbg !130463
  br i1 %i.bcc, label %bb.ri, label %.invoke3442, !dbg !130463, !prof !3464

bb.ri:                                            ; preds = %bb.rh
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bbz, i64 24, !dbg !130464 ; 5 uses
  %i.bce = load i64, ptr %i.bcd, align 8, !dbg !130464, !noundef !3394 ; 2 uses
  %i.bcf = icmp ult i64 %i.bce, 82351536043346213, !dbg !130465
  call void @llvm.assume(i1 %i.bcf), !dbg !130466
  %i.bcg = icmp eq i64 %i.bce, 1, !dbg !130467
  br i1 %i.bcg, label %bb.rj, label %bb.sh, !dbg !130467

bb.rj:                                            ; preds = %bb.ri
  %i.bch = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !130468 ; 2 uses
  %i.bci = load ptr, ptr %i.bch, align 8, !dbg !130468, !nonnull !3394, !align !3446, !noundef !3394 ; 3 uses
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bbz, i64 16, !dbg !130469 ; 4 uses
  %i.bck = load ptr, ptr %i.bcj, align 16, !dbg !130469, !nonnull !3394, !noundef !3394
  %i.bcl = getelementptr i8, ptr %i.bck, i64 96, !dbg !130470
  %.val939 = load i64, ptr %i.bcl, align 16, !dbg !130470, !noundef !3394 ; 2 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bci, i64 16, !dbg !130471
  %i.bcn = load i64, ptr %i.bcm, align 8, !dbg !130471, !noundef !3394
  %i.bco = icmp ult i64 %.val939, %i.bcn, !dbg !130472
  br i1 %i.bco, label %bb.rk, label %.invoke3446, !dbg !130472, !prof !3464

bb.rk:                                            ; preds = %bb.rj
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bci, i64 8, !dbg !130473
  %i.bcq = load ptr, ptr %i.bcp, align 8, !dbg !130473, !nonnull !3394, !noundef !3394
  %i.bcr = getelementptr inbounds nuw [144 x i8], ptr %i.bcq, i64 %.val939, !dbg !130474 ; 4 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcr, i64 112, !dbg !130468
  %i.bct = load i64, ptr %i.bcs, align 16, !dbg !130468, !range !3903, !noundef !3394 ; 3 uses
  %i.bcu = icmp ne i64 %i.bct, -9223372036854775791, !dbg !130468
  call void @llvm.assume(i1 %i.bcu), !dbg !130468
  %i.bcv = xor i64 %i.bct, -9223372036854775808, !dbg !130468
  %i.bcw = icmp slt i64 %i.bct, 0, !dbg !130468
  %i.bcx = select i1 %i.bcw, i64 %i.bcv, i64 17, !dbg !130468
  switch i64 %i.bcx, label %bb.sh [
    i64 11, label %bb.rl
    i64 21, label %.thread3321
  ], !dbg !130475

.thread3321:                                      ; preds = %bb.rk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ne), !dbg !130476
  br label %bb.rt, !dbg !130477

bb.rl:                                            ; preds = %bb.rk
  %i.bcy = load i8, ptr %i.bcr, align 16, !dbg !130468, !range !3896, !noundef !3394
  %i.bcz = icmp eq i8 %i.bcy, 12, !dbg !130475
  br i1 %i.bcz, label %bb.rm, label %bb.sh, !dbg !130475

bb.rm:                                            ; preds = %bb.rl
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcr, i64 1, !dbg !130475
  %i.bdb = load i8, ptr %i.bda, align 1, !dbg !130475, !range !3721, !noundef !3394
  %i.bdc = trunc nuw i8 %i.bdb to i1, !dbg !130475
  br i1 %i.bdc, label %bb.rn, label %bb.sh, !dbg !130475

bb.rn:                                            ; preds = %bb.rm
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bcr, i64 8, !dbg !130478
  %i.bde = load i64, ptr %i.bdd, align 8, !dbg !130478, !noundef !3394
  %i.bdf = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !130479
  %i.bdg = load ptr, ptr %i.bdf, align 8, !dbg !130479, !nonnull !3394, !align !3446, !noundef !3394
  %i.bdh = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !130480
  %i.bdi = load ptr, ptr %i.bdh, align 8, !dbg !130480, !nonnull !3394, !align !3446, !noundef !3394
  %i.bdj = invoke noundef i8 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height27aexpr_projection_height_rec(i64 noundef %i.bde, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bci, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bdg, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bdi)
          to label %bb.ro unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130481

bb.ro:                                            ; preds = %bb.rn
  %i.bdk = icmp eq i8 %i.bdj, 0, !dbg !130482
  br i1 %i.bdk, label %bb.rp, label %bb.sh, !dbg !130482

bb.rp:                                            ; preds = %bb.ro
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ng), !dbg !130483
  %i.bdl = load i64, ptr %i.bcd, align 8, !dbg !130484, !noundef !3394
  %.not677 = icmp eq i64 %i.bdl, 0, !dbg !130485
  br i1 %.not677, label %.invoke3450, label %bb.rq, !dbg !130485

bb.rq:                                            ; preds = %bb.rp
  %i.bdm = load ptr, ptr %i.bch, align 8, !dbg !130483, !nonnull !3394, !align !3446, !noundef !3394 ; 2 uses
  %i.bdn = load ptr, ptr %i.bcj, align 16, !dbg !130486, !nonnull !3394, !noundef !3394
  %i.bdo = getelementptr i8, ptr %i.bdn, i64 96, !dbg !130487
  %.val938 = load i64, ptr %i.bdo, align 16, !dbg !130487, !noundef !3394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nf), !dbg !130488
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.nf, i64 112, !dbg !130488
  store i64 -9223372036854775787, ptr %i.bdp, align 16, !dbg !130488
  %i.bdq = getelementptr i8, ptr %i.bdm, i64 8, !dbg !130489
  %.val1151 = load ptr, ptr %i.bdq, align 8, !dbg !130489
  %i.bdr = getelementptr i8, ptr %i.bdm, i64 16, !dbg !130489
  %.val1152 = load i64, ptr %i.bdr, align 8, !dbg !130489, !noundef !3394
  invoke fastcc void @_RNvMs0_NtCs2mZqlW55729_12polars_utils5arenaINtB5_5ArenaNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE7replaceBX_(ptr noalias noundef align 16 captures(none) dereferenceable(144) %i.ng, ptr %.val1151, i64 %.val1152, i64 noundef %.val938, ptr noalias noundef align 16 captures(address) dereferenceable(144) %i.nf)
          to label %bb.rr unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130489

bb.rr:                                            ; preds = %bb.rq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nf), !dbg !130490
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.ng)
          to label %bb.rs unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130491

bb.rs:                                            ; preds = %bb.rr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ng), !dbg !130491
  %.pre3121.a = load i64, ptr %i.bcd, align 8, !dbg !130492
  %i.bds = icmp eq i64 %.pre3121.a, 0, !dbg !130477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ne), !dbg !130476
  br i1 %i.bds, label %.invoke3450, label %bb.rt, !dbg !130477

bb.rt:                                            ; preds = %.thread3321, %bb.rs
  %i.bdt = load ptr, ptr %i.bcj, align 16, !dbg !130493, !nonnull !3394, !noundef !3394
  %i.bdu = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIR11output_name(ptr noundef nonnull align 16 %i.bdt)
          to label %bb.ru unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130494 ; 3 uses

bb.ru:                                            ; preds = %bb.rt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en), !dbg !130495
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 23, !dbg !130496
  %i.bdw = load i8, ptr %i.bdv, align 1, !dbg !130496, !range !3542, !noundef !3394
  %i.bdx = icmp eq i8 %i.bdw, -40, !dbg !130497
  br i1 %i.bdx, label %bb.rv, label %bb.rw, !dbg !130497

bb.rv:                                            ; preds = %bb.ru
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.en, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bdu)
          to label %bb.rx unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130498

bb.rw:                                            ; preds = %bb.ru
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %i.bdu, i64 24, i1 false), !dbg !130499
  br label %bb.rx, !dbg !130500

bb.rx:                                            ; preds = %bb.rv, %bb.rw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ne, ptr noundef nonnull align 8 dereferenceable(24) %i.en, i64 24, i1 false), !dbg !130501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !dbg !130502
  %i.bdy = load i64, ptr %i.bcd, align 8, !dbg !130503, !noundef !3394
  %.not679 = icmp eq i64 %i.bdy, 0, !dbg !130504
  br i1 %.not679, label %bb.rz, label %bb.ry, !dbg !130504

bb.ry:                                            ; preds = %bb.rx
  %i.bdz = load ptr, ptr %i.bcj, align 16, !dbg !130505, !nonnull !3394, !noundef !3394
  invoke void @_RNvMs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIR9set_alias(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.bdz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ne)
          to label %bb.sa unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130506

bb.rz:                                            ; preds = %bb.rx
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @561) #41
          to label %bb.c unwind label %bb.sf, !dbg !130504

bb.sa:                                            ; preds = %bb.ry
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nd), !dbg !130507
  %i.bea = invoke { ptr, ptr } %i.nr(ptr noundef nonnull %3)
          to label %bb.sb unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130508 ; 2 uses

bb.sb:                                            ; preds = %bb.sa
  %i.beb = extractvalue { ptr, ptr } %i.bea, 0, !dbg !130507
  %i.bec = extractvalue { ptr, ptr } %i.bea, 1, !dbg !130507
  store ptr %i.beb, ptr %i.nd, align 8, !dbg !130507
  %i.bed = getelementptr inbounds nuw i8, ptr %i.nd, i64 8, !dbg !130507
  store ptr %i.bec, ptr %i.bed, align 8, !dbg !130507
  %i.bee = invoke noundef nonnull align 8 ptr @_RNvXs2_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionWrapNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeQDINtB5_10CollectionB17_EEL_EINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutB1h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.nd, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @562)
          to label %bb.sc unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130509

bb.sc:                                            ; preds = %bb.sb
  %i.bef = invoke noundef nonnull ptr @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState14projection_mutBc_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bee)
          to label %bb.sd unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130510

bb.sd:                                            ; preds = %bb.sc
  store i8 2, ptr %i.bef, align 1, !dbg !130511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nd), !dbg !130512
  invoke fastcc void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc(ptr noundef nonnull %3, ptr %i.nr, ptr %.pre)
          to label %bb.se unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130513

bb.se:                                            ; preds = %bb.sd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ne), !dbg !130514
  br label %bb.bha, !dbg !130515

bb.sf:                                            ; preds = %bb.rz
  %lpad.thr_comm.split-lp2208 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %i.ne, i64 23, !dbg !130516
  %i.beh = load i8, ptr %i.beg, align 1, !dbg !130516, !range !3542, !alias.scope !126165, !noundef !3394
  %i.bei = icmp eq i8 %i.beh, -40, !dbg !130517
  br i1 %i.bei, label %bb.sg, label %.thread, !dbg !130517, !prof !3463

bb.sg:                                            ; preds = %bb.sf
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ne)
          to label %.thread unwind label %bb.bj, !dbg !130518

bb.sh:                                            ; preds = %bb.ro, %bb.rk, %bb.rl, %bb.rm, %bb.ri
  %i.bej = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !130519
  %i.bek = load ptr, ptr %i.bej, align 8, !dbg !130519, !nonnull !3394, !align !3446, !noundef !3394 ; 10 uses
  invoke void @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE5clearCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bek)
          to label %bb.si unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130520

bb.si:                                            ; preds = %bb.sh
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bbz, i64 16, !dbg !130521
  %i.bem = load ptr, ptr %i.bel, align 16, !dbg !130521, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.ben = load i64, ptr %i.bcd, align 8, !dbg !130522, !noundef !3394 ; 2 uses
  %.idx2980 = mul nuw nsw i64 %i.ben, 112, !dbg !130523
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bem, i64 %.idx2980, !dbg !130523
  %i.bep = icmp eq i64 %i.ben, 0, !dbg !130524
  br i1 %i.bep, label %._crit_edge2950, label %.lr.ph2949, !dbg !130525

.lr.ph2949:                                       ; preds = %bb.si
  %i.beq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bek, i64 48
  %i.bes = getelementptr inbounds nuw i8, ptr %i.nb, i64 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i1374 = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  br label %bb.sj, !dbg !130525

bb.sj:                                            ; preds = %.lr.ph2949, %bb.tc
  %.sroa.018.02947 = phi i1 [ false, %.lr.ph2949 ], [ %.sroa.018.1, %bb.tc ]
  %.sroa.019.02946 = phi ptr [ %i.bem, %.lr.ph2949 ], [ %i.bet, %bb.tc ] ; 3 uses
  %.sroa.022.02945 = phi i8 [ 0, %.lr.ph2949 ], [ %.sroa.022.1, %bb.tc ]
  %i.bet = getelementptr inbounds nuw i8, ptr %.sroa.019.02946, i64 112, !dbg !130526 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nc), !dbg !130527
  %i.beu = getelementptr i8, ptr %.sroa.019.02946, i64 96, !dbg !130528 ; 3 uses
  %.sroa.019.0.val937 = load i64, ptr %i.beu, align 16, !dbg !130528, !noundef !3394
  %i.bev = load ptr, ptr %i.beq, align 8, !dbg !130529, !nonnull !3394, !align !3446, !noundef !3394
  invoke void @_RNvNtCsfcROwRM8ZtH_11polars_plan5utils24aexpr_to_leaf_names_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.nc, i64 noundef %.sroa.019.0.val937, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bev)
          to label %bb.sk unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130527

bb.sk:                                            ; preds = %bb.sj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !130530, !noalias !126192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(72) %i.nc, i64 72, i1 false), !dbg !130531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nc), !dbg !130532
  call void @llvm.experimental.noalias.scope.decl(metadata !126196), !dbg !130533
  call void @llvm.experimental.noalias.scope.decl(metadata !126197), !dbg !130534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !130535, !noalias !126192
  invoke void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_3map3MapINtNtB6_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBa_6option6OptionNtNtB1J_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1J_5aexpr5AExprEEB2B_ENCNvNtB1L_5utils24aexpr_to_leaf_names_iter0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1L_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aw)
          to label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedIBN_INtNtB7_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBb_6option6OptionNtNtB1O_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1O_5aexpr5AExprEEB2G_ENCNvNtB1Q_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5y_8IndexSetNtNtB3B_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB9_6traits7collect6ExtendB6h_E6extendBW_E0ENtNtB7A_8iterator8Iterator9size_hintB1Q_.exit.i.i1365 unwind label %bb.sl, !dbg !130536, !noalias !126192

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedIBN_INtNtB7_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBb_6option6OptionNtNtB1O_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1O_5aexpr5AExprEEB2G_ENCNvNtB1Q_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5y_8IndexSetNtNtB3B_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB9_6traits7collect6ExtendB6h_E6extendBW_E0ENtNtB7A_8iterator8Iterator9size_hintB1Q_.exit.i.i1365: ; preds = %bb.sk
  %i.bew = load i64, ptr %i.av, align 8, !dbg !130537, !noalias !126192, !noundef !3394 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !130538, !noalias !126192
  %i.bex = load i64, ptr %i.ber, align 8, !dbg !130539, !alias.scope !126198, !noundef !3394
  %i.bey = icmp eq i64 %i.bex, 0, !dbg !130540
  %i.bez = lshr i64 %i.bew, 1, !dbg !130540
  %spec.select.i.i1366 = select i1 %i.bey, i64 0, i64 %i.bez, !dbg !130540
  %.sroa.0.0.i.i1367 = sub nuw i64 %i.bew, %spec.select.i.i1366, !dbg !130540
  invoke void @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bek, i64 noundef %.sroa.0.0.i.i1367)
          to label %_RINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB2y_8adapters3map3MapINtNtB3D_6cloned6ClonedIB3z_INtNtB3D_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB2A_6option6OptionNtNtB4V_7expr_ir10ColumnNodeEFTNtNtBS_5arena4NodeRNtNtB4V_5aexpr5AExprEEB5N_ENCNvNtB4X_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtB8_3setINtB8h_8IndexSetBO_B1E_EIB2s_BO_E6extendB40_E0EEB4X_.exit.i1368 unwind label %bb.sl, !dbg !130541, !noalias !126199

bb.sl:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedIBN_INtNtB7_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBb_6option6OptionNtNtB1O_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1O_5aexpr5AExprEEB2G_ENCNvNtB1Q_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5y_8IndexSetNtNtB3B_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB9_6traits7collect6ExtendB6h_E6extendBW_E0ENtNtB7A_8iterator8Iterator9size_hintB1Q_.exit.i.i1365, %bb.sk
  %lpad.thr_comm.i.i1363 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.aw, i64 32, !dbg !130542
  %i.bfb = load ptr, ptr %i.bfa, align 8, !dbg !130543, !alias.scope !126200, !noalias !126192, !noundef !3394
  %i.bfc = icmp eq ptr %i.bfb, null, !dbg !130543
  br i1 %i.bfc, label %.thread, label %bb.sm, !dbg !130543

bb.sm:                                            ; preds = %bb.sl
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.aw, i64 48, !dbg !130544
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bfd)
          to label %.thread unwind label %bb.sn, !dbg !130545, !noalias !126199

bb.sn:                                            ; preds = %bb.sm
  %i.bfe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !130546, !noalias !126199
  unreachable, !dbg !130546

_RINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB2y_8adapters3map3MapINtNtB3D_6cloned6ClonedIB3z_INtNtB3D_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB2A_6option6OptionNtNtB4V_7expr_ir10ColumnNodeEFTNtNtBS_5arena4NodeRNtNtB4V_5aexpr5AExprEEB5N_ENCNvNtB4X_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtB8_3setINtB8h_8IndexSetBO_B1E_EIB2s_BO_E6extendB40_E0EEB4X_.exit.i1368: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedIBN_INtNtB7_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBb_6option6OptionNtNtB1O_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1O_5aexpr5AExprEEB2G_ENCNvNtB1Q_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5y_8IndexSetNtNtB3B_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB9_6traits7collect6ExtendB6h_E6extendBW_E0ENtNtB7A_8iterator8Iterator9size_hintB1Q_.exit.i.i1365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !130547, !noalias !126192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.au, ptr noundef nonnull align 8 dereferenceable(72) %i.aw, i64 72, i1 false), !dbg !130547, !noalias !126192
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedIBO_INtNtB8_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBc_6option6OptionNtNtB1P_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1P_5aexpr5AExprEEB2H_ENCNvNtB1R_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5z_8IndexSetNtNtB3C_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtBa_6traits7collect6ExtendB6i_E6extendBX_E0ENtNtB7B_8iterator8Iterator4folduNCINvNvB8k_8for_each4callTB6i_uENCINvXsb_NtB5B_3mapINtB9v_8IndexMapB6i_uB6J_EIB7x_B9f_E6extendBN_E0E0EB1R_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bek)
          to label %bb.so unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130548

bb.so:                                            ; preds = %_RINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB2y_8adapters3map3MapINtNtB3D_6cloned6ClonedIB3z_INtNtB3D_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB2A_6option6OptionNtNtB4V_7expr_ir10ColumnNodeEFTNtNtBS_5arena4NodeRNtNtB4V_5aexpr5AExprEEB5N_ENCNvNtB4X_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtB8_3setINtB8h_8IndexSetBO_B1E_EIB2s_BO_E6extendB40_E0EEB4X_.exit.i1368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !130549, !noalias !126192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !130550, !noalias !126192
  %i.bff = trunc nuw i8 %.sroa.022.02945 to i1, !dbg !130551
  br i1 %i.bff, label %bb.su, label %bb.sp, !dbg !130551

bb.sp:                                            ; preds = %bb.so
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nb), !dbg !130552
  %i.bfg = load ptr, ptr %i.beq, align 8, !dbg !130552, !nonnull !3394, !align !3446, !noundef !3394
  %.sroa.019.0.val936 = load i64, ptr %i.beu, align 16, !dbg !130553, !noundef !3394
  store i64 %.sroa.019.0.val936, ptr %i.bes, align 8, !dbg !130554, !alias.scope !126201
  store i64 4294967297, ptr %.sroa.2.0..sroa_idx.i1374, align 8, !dbg !130554, !alias.scope !126201
  store ptr %i.bfg, ptr %i.nb, align 8, !dbg !130554, !alias.scope !126201
  br label %bb.sq, !dbg !130555

bb.sq:                                            ; preds = %bb.sr, %bb.sp
  %i.bfh = invoke { i64, ptr } @_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB5_9AExprIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nb)
          to label %.noexc1377 unwind label %bb.ss, !dbg !130556

.noexc1377:                                       ; preds = %bb.sq
  %i.bfi = extractvalue { i64, ptr } %i.bfh, 1, !dbg !130557 ; 2 uses
  %.not.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.bfi, null, !dbg !130557 ; 2 uses
  br i1 %.not.not.not.not.i.not.not.not.not.not, label %bb.sr, label %bb.st, !dbg !130558

bb.sr:                                            ; preds = %.noexc1377
  %i.bfj = getelementptr i8, ptr %i.bfi, i64 112, !dbg !130559
  %.val.i1376 = load i64, ptr %i.bfj, align 16, !dbg !130559, !range !3903, !noundef !3394 ; 2 uses
  %i.bfk = icmp ne i64 %.val.i1376, -9223372036854775791, !dbg !130560
  call void @llvm.assume(i1 %i.bfk), !dbg !130560
  %i.bfl = icmp eq i64 %.val.i1376, -9223372036854775790, !dbg !130561
  br i1 %i.bfl, label %bb.st, label %bb.sq, !dbg !130559

bb.ss:                                            ; preds = %bb.sq
  %i.bfm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bes)
          to label %.thread unwind label %bb.bj, !dbg !130562

bb.st:                                            ; preds = %.noexc1377, %bb.sr
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bes)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit1380 unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130563

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit1380: ; preds = %bb.st
  %i.bfn = zext i1 %.not.not.not.not.i.not.not.not.not.not to i8, !dbg !130564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nb), !dbg !130565
  br label %bb.su, !dbg !130551

bb.su:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit1380, %bb.so
  %.sroa.022.1 = phi i8 [ %i.bfn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit1380 ], [ 1, %bb.so ], !dbg !130566 ; 2 uses
  %i.bfo = load ptr, ptr %i.beq, align 8, !dbg !130567, !nonnull !3394, !align !3446, !noundef !3394 ; 2 uses
  %.sroa.019.0.val = load i64, ptr %i.beu, align 16, !dbg !130568, !noundef !3394 ; 2 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 16, !dbg !130569
  %i.bfq = load i64, ptr %i.bfp, align 8, !dbg !130569, !noundef !3394
  %i.bfr = icmp ult i64 %.sroa.019.0.val, %i.bfq, !dbg !130570
  br i1 %i.bfr, label %bb.sv, label %.invoke3446, !dbg !130570, !prof !3464

bb.sv:                                            ; preds = %bb.su
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfo, i64 8, !dbg !130571
  %i.bft = load ptr, ptr %i.bfs, align 8, !dbg !130571, !nonnull !3394, !noundef !3394
  %i.bfu = getelementptr inbounds nuw [144 x i8], ptr %i.bft, i64 %.sroa.019.0.val, !dbg !130572 ; 5 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 112, !dbg !130567
  %i.bfw = load i64, ptr %i.bfv, align 16, !dbg !130567, !range !3903, !noundef !3394 ; 2 uses
  %i.bfx = icmp ne i64 %i.bfw, -9223372036854775791, !dbg !130567
  call void @llvm.assume(i1 %i.bfx), !dbg !130567
  %i.bfy = icmp eq i64 %i.bfw, -9223372036854775806, !dbg !130573
  br i1 %i.bfy, label %bb.sw, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !130573

bb.sw:                                            ; preds = %bb.sv
  %i.bfz = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIR11output_name(ptr noundef nonnull align 16 %.sroa.019.02946)
          to label %bb.sx unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130574 ; 4 uses

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %.noexc916, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit, %bb.sv
  br label %bb.tc, !dbg !130575

bb.sx:                                            ; preds = %bb.sw
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfu, i64 23, !dbg !130576
  %i.bgb = load i8, ptr %i.bga, align 1, !dbg !130576, !range !3542, !alias.scope !126226, !noundef !3394 ; 2 uses
  %i.bgc = icmp ugt i8 %i.bgb, -41, !dbg !130577
  br i1 %i.bgc, label %bb.sz, label %bb.sy, !dbg !130577

bb.sy:                                            ; preds = %bb.sx
  %i.bgd = add i8 %i.bgb, 64, !dbg !130578
  %i.bge = call i8 @llvm.umin.i8(i8 %i.bgd, i8 24), !dbg !130579
  %.sroa.0.0.i.i1381 = zext nneg i8 %i.bge to i64, !dbg !130579
  br label %.noexc915, !dbg !130580

bb.sz:                                            ; preds = %bb.sx
  %i.bgf = load ptr, ptr %i.bfu, align 16, !dbg !130581, !alias.scope !126226, !noundef !3394
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bfu, i64 8, !dbg !130582
  %i.bgh = load i64, ptr %i.bgg, align 8, !dbg !130582, !alias.scope !126226, !noundef !3394
  br label %.noexc915, !dbg !130583

.noexc915:                                        ; preds = %bb.sz, %bb.sy
  %.sroa.01.0.i1382 = phi i64 [ %i.bgh, %bb.sz ], [ %.sroa.0.0.i.i1381, %bb.sy ], !dbg !130584 ; 2 uses
  %.sroa.0.0.i1383 = phi ptr [ %i.bgf, %bb.sz ], [ %i.bfu, %bb.sy ], !dbg !130585
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bfz, i64 23, !dbg !130586
  %i.bgj = load i8, ptr %i.bgi, align 1, !dbg !130586, !range !3542, !alias.scope !126227, !noundef !3394 ; 2 uses
  %i.bgk = icmp ugt i8 %i.bgj, -41, !dbg !130587
  br i1 %i.bgk, label %bb.tb, label %bb.ta, !dbg !130587

bb.ta:                                            ; preds = %.noexc915
  %i.bgl = add i8 %i.bgj, 64, !dbg !130588
  %i.bgm = call i8 @llvm.umin.i8(i8 %i.bgl, i8 24), !dbg !130589
  %.sroa.0.0.i.i1385 = zext nneg i8 %i.bgm to i64, !dbg !130589
  br label %.noexc916, !dbg !130590

bb.tb:                                            ; preds = %.noexc915
  %i.bgn = load ptr, ptr %i.bfz, align 8, !dbg !130591, !alias.scope !126227, !noundef !3394
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bfz, i64 8, !dbg !130592
  %i.bgp = load i64, ptr %i.bgo, align 8, !dbg !130592, !alias.scope !126227, !noundef !3394
  br label %.noexc916, !dbg !130593

.noexc916:                                        ; preds = %bb.tb, %bb.ta
  %.sroa.01.0.i1386 = phi i64 [ %i.bgp, %bb.tb ], [ %.sroa.0.0.i.i1385, %bb.ta ], !dbg !130594
  %.sroa.0.0.i1387 = phi ptr [ %i.bgn, %bb.tb ], [ %i.bfz, %bb.ta ], !dbg !130595
  %i.bgq = icmp eq i64 %.sroa.01.0.i1382, %.sroa.01.0.i1386, !dbg !130596
  br i1 %i.bgq, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !130596

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.noexc916
  %bcmp.i = call i32 @bcmp(ptr %.sroa.0.0.i1383, ptr %.sroa.0.0.i1387, i64 %.sroa.01.0.i1382), !dbg !130597
  %i.bgr = icmp eq i32 %bcmp.i, 0, !dbg !130597
  br i1 %i.bgr, label %bb.tc, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !126225

bb.tc:                                            ; preds = %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread
  %.sroa.018.1 = phi i1 [ %.sroa.018.02947, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit ], [ true, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread ], !dbg !130598 ; 2 uses
  %i.bgs = icmp eq ptr %i.bet, %i.beo, !dbg !130524
  br i1 %i.bgs, label %._crit_edge2950.loopexit, label %bb.sj, !dbg !130525

._crit_edge2950.loopexit:                         ; preds = %bb.tc
  %i.bgt = trunc nuw i8 %.sroa.022.1 to i1, !dbg !130599
  br label %._crit_edge2950, !dbg !130600

._crit_edge2950:                                  ; preds = %._crit_edge2950.loopexit, %bb.si
  %.sroa.022.0.lcssa = phi i1 [ false, %bb.si ], [ %i.bgt, %._crit_edge2950.loopexit ], !dbg !130601
  %.sroa.018.0.lcssa = phi i1 [ false, %bb.si ], [ %.sroa.018.1, %._crit_edge2950.loopexit ], !dbg !130602 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.na), !dbg !130600
  %.val984 = load ptr, ptr %2, align 8, !dbg !130603, !nonnull !3394, !align !3446, !noundef !3394
  %i.bgu = load ptr, ptr %i.ny, align 8, !dbg !130604, !nonnull !3394, !align !3446, !noundef !3394
  %i.bgv = invoke noundef nonnull ptr @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR17schema_with_cache(i64 noundef %i.pq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val984, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bgu)
          to label %bb.td unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130605 ; 5 uses

bb.td:                                            ; preds = %._crit_edge2950
  store ptr %i.bgv, ptr %i.na, align 8, !dbg !130605
  br i1 %.sroa.022.0.lcssa, label %bb.tf, label %bb.te, !dbg !130599

bb.te:                                            ; preds = %bb.tp, %bb.tf, %bb.td
  %i.bgw = phi ptr [ %.pre3122, %bb.tp ], [ %i.bgv, %bb.tf ], [ %i.bgv, %bb.td ], !dbg !130606 ; 3 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bek, i64 48, !dbg !130607
  %i.bgy = load i64, ptr %i.bgx, align 8, !dbg !130607, !noundef !3394
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgw, i64 64, !dbg !130608
  %i.bha = load i64, ptr %i.bgz, align 8, !dbg !130608, !noundef !3394
  %.not681 = icmp eq i64 %i.bgy, %i.bha, !dbg !130609
  br i1 %.not681, label %bb.tq, label %bb.tx, !dbg !130609

bb.tf:                                            ; preds = %bb.td
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bek, i64 48, !dbg !130610
  %i.bhc = load i64, ptr %i.bhb, align 8, !dbg !130610, !noundef !3394
  %i.bhd = icmp eq i64 %i.bhc, 0, !dbg !130611
  br i1 %i.bhd, label %bb.tg, label %bb.te, !dbg !130611

bb.tg:                                            ; preds = %bb.tf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mz), !dbg !130612
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgv, i64 24, !dbg !130613
  %i.bhf = load ptr, ptr %i.bhe, align 8, !dbg !130613, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bgv, i64 32, !dbg !130614
  %i.bhh = load i64, ptr %i.bhg, align 8, !dbg !130614, !noundef !3394
  %i.bhi = getelementptr inbounds nuw [80 x i8], ptr %i.bhf, i64 %i.bhh, !dbg !130615
  %i.bhj = invoke noundef align 8 ptr @_RINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeERB2c_EB8_(ptr noundef nonnull %i.bhf, ptr noundef nonnull %i.bhi)
          to label %bb.ti unwind label %bb.uk, !dbg !130612 ; 4 uses

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge15ProjectionStateEBQ_.exit1395: ; preds = %bb.uq, %bb.ur, %bb.uc, %bb.uk
  %.pn685 = phi { ptr, i32 } [ %i.bjv, %bb.uq ], [ %i.bjg, %bb.uk ], [ %i.bik, %bb.uc ], [ %i.bjv, %bb.ur ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126282), !dbg !130616
  call void @llvm.experimental.noalias.scope.decl(metadata !126283), !dbg !130617
  %i.bhk = load ptr, ptr %i.na, align 8, !dbg !130618, !alias.scope !126284, !nonnull !3394, !noundef !3394
  %i.bhl = atomicrmw add ptr %i.bhk, i64 -1 release, align 8, !dbg !130619, !noalias !126284
  %i.bhm = icmp eq i64 %i.bhl, 1, !dbg !130620
  br i1 %i.bhm, label %bb.th, label %.thread, !dbg !130620

bb.th:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge15ProjectionStateEBQ_.exit1395
  fence acquire, !dbg !130621
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.na) #42
          to label %.thread unwind label %bb.bj, !dbg !130622

bb.ti:                                            ; preds = %bb.tg
  %.not680 = icmp eq ptr %i.bhj, null, !dbg !130623
  br i1 %.not680, label %bb.tk, label %bb.tj, !dbg !130624

bb.tj:                                            ; preds = %bb.ti
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em), !dbg !130625
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhj, i64 23, !dbg !130626
  %i.bho = load i8, ptr %i.bhn, align 1, !dbg !130626, !range !3542, !noundef !3394
  %i.bhp = icmp eq i8 %i.bho, -40, !dbg !130627
  br i1 %i.bhp, label %bb.tm, label %bb.tn, !dbg !130627

bb.tk:                                            ; preds = %bb.ti
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.mz, i64 23, !dbg !130628
  store i8 -38, ptr %i.bhq, align 1, !dbg !130628
  br label %bb.tl, !dbg !130629

bb.tl:                                            ; preds = %bb.to, %bb.tk
  invoke fastcc void @_RINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6_8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendBO_E6extendINtNtB2z_6option6OptionBO_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64) %i.bek, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.mz)
          to label %bb.tp unwind label %bb.uk, !dbg !130630

bb.tm:                                            ; preds = %bb.tj
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bhj)
          to label %bb.to unwind label %bb.uk, !dbg !130631

bb.tn:                                            ; preds = %bb.tj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %i.bhj, i64 24, i1 false), !dbg !130632
  br label %bb.to, !dbg !130633

end_hunk_1
begin_hunk_2_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc:bb.a
  %i.q = add nuw i64 %.sroa.04.09, 1, !dbg !138883 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !138884
  %i.r = call { ptr, ptr } %.32.val(ptr noundef nonnull %0) #38, !dbg !138885 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0, !dbg !138885
  %i.t = extractvalue { ptr, ptr } %i.r, 1, !dbg !138885
  store ptr %i.s, ptr %i.b, align 8, !dbg !138885
  store ptr %i.t, ptr %i.o, align 8, !dbg !138885
  %i.u = call noundef nonnull align 8 ptr @_RNvXs2_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionWrapNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeQDINtB5_10CollectionB17_EEL_EINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutB1h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %.sroa.04.09, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @662), !dbg !138886
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !138887 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !dbg !138887, !align !3446, !noundef !3394 ; 6 uses
  store ptr null, ptr %i.v, align 8, !dbg !138888
  %.not = icmp eq ptr %i.w, null, !dbg !138889    ; 2 uses
  br i1 %.not, label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit, label %bb.c, !dbg !138890

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE5clearCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.w)
          to label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit unwind label %bb.d, !dbg !138891

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECsfcROwRM8ZtH_11polars_plan(ptr nonnull align 8 %i.w) #39
          to label %common.resume unwind label %bb.e, !dbg !138892

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !138893
  unreachable, !dbg !138893

common.resume:                                    ; preds = %bb.f, %bb.k, %bb.j, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.d ], [ %i.aa, %bb.f ], [ %i.ag, %bb.k ], [ %i.ag, %bb.j ]
  resume { ptr, i32 } %common.resume.op, !dbg !138894

_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !138895
  %i.z = invoke { ptr, ptr } %.24.val(ptr noundef nonnull %0)
          to label %bb.g unwind label %bb.j, !dbg !138896 ; 2 uses

bb.f:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store ptr %i.w, ptr %i.ae, align 8, !dbg !138895
  br label %common.resume, !dbg !138897

bb.g:                                             ; preds = %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit
  %i.ab = extractvalue { ptr, ptr } %i.z, 0, !dbg !138895
  %i.ac = extractvalue { ptr, ptr } %i.z, 1, !dbg !138895
  store ptr %i.ab, ptr %i.a, align 8, !dbg !138895
  store ptr %i.ac, ptr %i.p, align 8, !dbg !138895
  %i.ad = invoke noundef nonnull align 8 ptr @_RNvXs2_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionWrapNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeQDINtB5_10CollectionB17_EEL_EINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutB1h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %.sroa.04.09, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @663)
          to label %bb.h unwind label %bb.j, !dbg !138898

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !138895 ; 3 uses
  %.val8 = load ptr, ptr %i.ae, align 8, !dbg !138895, !align !3446, !noundef !3394 ; 2 uses
  %i.af = icmp eq ptr %.val8, null, !dbg !138899
  br i1 %i.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEECsfcROwRM8ZtH_11polars_plan.exit, label %bb.i, !dbg !138899

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %.val8)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.f, !dbg !138899

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.h, %bb.i
  store ptr %i.w, ptr %i.ae, align 8, !dbg !138895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !138900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !138900
  %exitcond.not = icmp eq i64 %i.q, %.sroa.0.0.i, !dbg !138881
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !138865

bb.j:                                             ; preds = %bb.g, %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not, label %common.resume, label %bb.k, !dbg !138901

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %i.w)
          to label %common.resume unwind label %bb.l, !dbg !138901

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !138902
  unreachable, !dbg !138902
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18small_dummy_column(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !138903 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [96 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !138953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !138954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !138954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !138943
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !dbg !138955
  %i.h = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 4, 769) 16, i64 noundef range(i64 4, 129) 8) #44, !dbg !138956 ; 5 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !138957
  br i1 %i.i, label %bb.b, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !138958, !prof !3463

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #41
          to label %.noexc unwind label %.thread10, !dbg !138959

.thread10:                                        ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f, !dbg !138960

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !138959

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !138961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !138962
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !138962
  store i64 0, ptr %i.k, align 8, !dbg !138962
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !138962
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !138962
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !138962
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !138962
  store i8 30, ptr %i.c, align 8, !dbg !138962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !138944
  store i64 0, ptr %i.b, align 8, !dbg !138963
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !138963
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !dbg !138963
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !138963
  store i64 0, ptr %i.m, align 8, !dbg !138963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !138964
  store ptr null, ptr %i.a, align 8, !dbg !138964
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array7struct_NtB2_11StructArray3new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, i64 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.c unwind label %.thread, !dbg !138961

.thread:                                          ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 16, i64 noundef 8) #44, !dbg !138965
  br label %bb.f, !dbg !138960

bb.c:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !138966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !138966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !138966
  %i.o = invoke { ptr, ptr } @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow5array7struct_NtB4_11StructArray5boxed(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.d)
          to label %bb.d unwind label %.thread, !dbg !138967 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.p = extractvalue { ptr, ptr } %i.o, 0, !dbg !138961
  %i.q = extractvalue { ptr, ptr } %i.o, 1, !dbg !138961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !138968
  store ptr %i.p, ptr %i.h, align 8, !dbg !138943
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !138943
  store ptr %i.q, ptr %i.r, align 8, !dbg !138943
  store i64 1, ptr %i.e, align 8, !dbg !138969
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !138969
  store ptr %i.h, ptr %i.s, align 8, !dbg !138969
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !138969
  store i64 1, ptr %i.t, align 8, !dbg !138969
  call void @_RNvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB6_12ChunkedArrayNtNtB8_9datatypes10StructTypeE11from_chunksCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !dbg !138970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !138960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !138960
  %i.u = call { ptr, ptr } @_RNvXs2I_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_10StructTypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g), !dbg !138971 ; 2 uses
  %i.v = extractvalue { ptr, ptr } %i.u, 0, !dbg !138971
  %i.w = extractvalue { ptr, ptr } %i.u, 1, !dbg !138971
  call fastcc void @_RNvXs1_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnINtNtCscgRAwXFJnXP_4core7convert4FromNtNtB9_6series6SeriesE4from(ptr noalias noundef align 16 captures(none) dereferenceable(160) %0, ptr noundef nonnull %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(896) %i.w) #38, !dbg !138972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !138973
  ret void, !dbg !138974

bb.e:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !138975
  unreachable, !dbg !138975

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %.pn9, !dbg !138975

bb.f:                                             ; preds = %.thread10, %.thread
  %.pn9 = phi { ptr, i32 } [ %i.n, %.thread ], [ %i.j, %.thread10 ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !138976
  %i.z = load i8, ptr %i.y, align 1, !dbg !138976, !range !3542, !alias.scope !138952, !noundef !3394
  %i.aa = icmp eq i8 %i.z, -40, !dbg !138977
  br i1 %i.aa, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit, !dbg !138977, !prof !3463

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.e, !dbg !138978
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown19projection_pushdown(i64 noundef %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !138979 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [368 x i8], align 16              ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [368 x i8], align 16              ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [64 x i8], align 8                ; 13 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [64 x i8], align 8                ; 13 uses
  %i.l = alloca [64 x i8], align 8                ; 13 uses
  %i.m = alloca [64 x i8], align 8                ; 13 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [120 x i8], align 8               ; 17 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 10 uses
  %i.s = alloca [368 x i8], align 16              ; 7 uses
  %i.t = alloca [368 x i8], align 16              ; 4 uses
  %i.u = alloca [368 x i8], align 16              ; 3 uses
  %i.v = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !139417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139281), !dbg !139417
  %i.w = tail call noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed(), !dbg !139418, !noalias !139281
  %i.x = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !139419, !noalias !139281
  %i.y = icmp eq i8 %i.x, 2, !dbg !139420
  br i1 %i.y, label %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit, label %bb.b, !dbg !139420, !prof !3464

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #42, !dbg !139421, !noalias !139281
  br label %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit, !dbg !139421

_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32, !dbg !139422 ; 3 uses
  store i64 %i.w, ptr %i.z, align 8, !dbg !139422, !alias.scope !139281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(32) @489, i64 32, i1 false), !dbg !139422
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !139423 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !139424 ; 7 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !139424, !noundef !3394
  %i.ad = icmp ult i64 %0, %i.ac, !dbg !139425
  br i1 %i.ad, label %bb.f, label %bb.c, !dbg !139425, !prof !3464

bb.c:                                             ; preds = %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #41
          to label %bb.e unwind label %bb.d, !dbg !139426

.body:                                            ; preds = %.body109, %bb.m, %bb.h, %bb.d
  %.pn43.pn = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.al, %bb.h ], [ %i.ae, %bb.d ], [ %.pn43, %.body109 ]
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.cq, !dbg !139427

bb.d:                                             ; preds = %bb.ch, %bb.r, %bb.q, %bb.p, %bb.j, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.cr, %bb.cp, %bb.ci, %bb.by, %bb.ao, %bb.c
  unreachable

bb.f:                                             ; preds = %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit
  %i.af = load ptr, ptr %i.aa, align 8, !dbg !139423, !nonnull !3394, !noundef !3394
  %i.ag = getelementptr inbounds nuw [368 x i8], ptr %i.af, i64 %0, !dbg !139428 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.u, ptr noundef nonnull align 16 dereferenceable(368) %i.ag, i64 368, i1 false), !dbg !139429
  store i64 -9223372036854775782, ptr %i.ag, align 16, !dbg !139430
  %i.ah = load i64, ptr %i.ab, align 8, !dbg !139431, !noundef !3394 ; 7 uses
  %i.ai = icmp ult i64 %i.ah, 25063510969714065, !dbg !139432
  tail call void @llvm.assume(i1 %i.ai), !dbg !139433
  %i.aj = load i64, ptr %1, align 8, !dbg !139434, !range !3865, !alias.scope !139298, !noundef !3394
  %i.ak = icmp eq i64 %i.ah, %i.aj, !dbg !139435
  br i1 %i.ak, label %bb.g, label %bb.j, !dbg !139435

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.j unwind label %bb.h, !dbg !139436, !noalias !139300

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef nonnull align 16 dereferenceable(368) %i.u) #39
          to label %.body unwind label %bb.i, !dbg !139437

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139438
  unreachable, !dbg !139438

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.an = load ptr, ptr %i.aa, align 8, !dbg !139439, !alias.scope !139298, !nonnull !3394, !noundef !3394
  %i.ao = getelementptr inbounds nuw [368 x i8], ptr %i.an, i64 %i.ah, !dbg !139440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.ao, ptr noundef nonnull align 16 dereferenceable(368) %i.u, i64 368, i1 false), !dbg !139441
  %i.ap = add nuw nsw i64 %i.ah, 1, !dbg !139442
  store i64 %i.ap, ptr %i.ab, align 8, !dbg !139442, !alias.scope !139298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !139443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !139444
  %i.aq = invoke noundef nonnull ptr @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR17schema_with_cache(i64 noundef %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %bb.k unwind label %bb.d, !dbg !139445

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !139444
  store i64 %i.ah, ptr %i.ar, align 16, !dbg !139444
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !139444
  store ptr %i.aq, ptr %i.as, align 8, !dbg !139444
  store i64 -9223372036854775799, ptr %i.s, align 16, !dbg !139444
  %.val51 = load i64, ptr %i.ab, align 8, !dbg !139446, !noundef !3394
  %i.at = icmp ult i64 %0, %.val51, !dbg !139447
  br i1 %i.at, label %bb.p, label %bb.l, !dbg !139447, !prof !3464

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #41
          to label %bb.n unwind label %bb.m, !dbg !139448, !noalias !139301

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef nonnull align 16 dereferenceable(368) %i.s) #39
          to label %.body unwind label %bb.o, !dbg !139449, !noalias !139302

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139450, !noalias !139302
  unreachable, !dbg !139450

bb.p:                                             ; preds = %bb.k
  %.val50 = load ptr, ptr %i.aa, align 8, !dbg !139446, !nonnull !3394, !noundef !3394
  %i.aw = getelementptr inbounds nuw [368 x i8], ptr %.val50, i64 %0, !dbg !139451 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.t, ptr noundef nonnull align 16 dereferenceable(368) %i.aw, i64 368, i1 false), !dbg !139452, !noalias !139303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.aw, ptr noundef nonnull align 16 dereferenceable(368) %i.s, i64 368, i1 false), !dbg !139453, !noalias !139302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !139454
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef align 16 dereferenceable(368) %i.t)
          to label %bb.q unwind label %bb.d, !dbg !139455

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !139455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !139456
  call void @llvm.experimental.noalias.scope.decl(metadata !139304), !dbg !139457
  %i.ax = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc unwind label %bb.d, !dbg !139458

.noexc:                                           ; preds = %bb.q
  %i.ay = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !139459, !noalias !139304
  %i.az = icmp eq i8 %i.ay, 2, !dbg !139460
  br i1 %i.az, label %bb.s, label %bb.r, !dbg !139460, !prof !3464

bb.r:                                             ; preds = %.noexc
  invoke void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #42
          to label %bb.s unwind label %bb.d, !dbg !139461

bb.s:                                             ; preds = %.noexc, %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 32, !dbg !139462 ; 4 uses
  store i64 %i.ax, ptr %i.ba, align 8, !dbg !139462, !alias.scope !139304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(32) @489, i64 32, i1 false), !dbg !139462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !139463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !139464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !139305
  store i64 0, ptr %i.o, align 8, !dbg !139465
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !139465
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.413.0..sroa_idx, align 8, !dbg !139465
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !139465
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8, !dbg !139465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !139306
  store i64 0, ptr %i.n, align 8, !dbg !139466
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !139466
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.416.0..sroa_idx, align 8, !dbg !139466
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !139466
  store i64 0, ptr %.sroa.517.0..sroa_idx, align 8, !dbg !139466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !139307
  %i.bb = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %bb.u unwind label %bb.t, !dbg !139467

.body102:                                         ; preds = %bb.bo, %bb.bp, %bb.t, %.body94
  %.pn39 = phi { ptr, i32 } [ %.pn37, %.body94 ], [ %i.bc, %bb.t ], [ %i.dk, %bb.bp ], [ %i.dj, %bb.bo ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_(ptr noalias noundef align 8 dereferenceable(24) %i.n) #39
          to label %.body106 unwind label %bb.cq, !dbg !139468

bb.t:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i101, %bb.v, %bb.s
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body102

bb.u:                                             ; preds = %bb.s
  %i.bd = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !139469
  %i.be = icmp eq i8 %i.bd, 2, !dbg !139470
  br i1 %i.be, label %bb.w, label %bb.v, !dbg !139470, !prof !3464

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow()
          to label %bb.w unwind label %bb.t, !dbg !139471

bb.w:                                             ; preds = %bb.u, %bb.v
  store i64 0, ptr %i.m, align 8, !dbg !139308
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !139308
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4142.0..sroa_idx, align 8, !dbg !139308
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !139308
  store i64 0, ptr %.sroa.5143.0..sroa_idx, align 8, !dbg !139308
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !139308 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6144.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @489, i64 32, i1 false), !dbg !139308
  %.sroa.7145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !139308 ; 2 uses
  store i64 %i.bb, ptr %.sroa.7145.0..sroa_idx, align 8, !dbg !139308
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown19projection_pushdown:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !139468
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6154.0..sroa_idx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7155.0..sroa_idx, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i92 unwind label %bb.bk, !dbg !139518

bb.bk:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l) #39
          to label %.body94 unwind label %bb.bn, !dbg !139519

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i92: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i93 unwind label %bb.bl, !dbg !139520

bb.bl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i92
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %.body94 unwind label %bb.bm, !dbg !139521

bb.bm:                                            ; preds = %bb.bl
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139520
  unreachable, !dbg !139520

bb.bn:                                            ; preds = %bb.bk
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139519
  unreachable, !dbg !139519

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i93: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i92
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit97 unwind label %bb.x, !dbg !139522

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit97: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !139468
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6144.0..sroa_idx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7145.0..sroa_idx, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i100 unwind label %bb.bo, !dbg !139523

bb.bo:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit97
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m) #39
          to label %.body102 unwind label %bb.br, !dbg !139524

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i100: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit97
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i101 unwind label %bb.bp, !dbg !139525

bb.bp:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i100
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.body102 unwind label %bb.bq, !dbg !139526

bb.bq:                                            ; preds = %bb.bp
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139525
  unreachable, !dbg !139525

bb.br:                                            ; preds = %bb.bo
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139524
  unreachable, !dbg !139524

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i101: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i100
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit105 unwind label %bb.t, !dbg !139527

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit105: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !139468
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1l_.exit.i unwind label %bb.bs, !dbg !139528

bb.bs:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit105
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body106 unwind label %bb.bt, !dbg !139529

bb.bt:                                            ; preds = %bb.bs
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139528
  unreachable, !dbg !139528

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1l_.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit105
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_.exit unwind label %bb.bu, !dbg !139530

.body106:                                         ; preds = %bb.bu, %bb.bs, %.body102
  %.pn41 = phi { ptr, i32 } [ %.pn39, %.body102 ], [ %i.dp, %bb.bu ], [ %i.dn, %bb.bs ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.o) #39
          to label %.body109 unwind label %bb.cq, !dbg !139468

bb.bu:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1l_.exit.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body106

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1l_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !139468
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.bv, !dbg !139531

bb.bv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body109 unwind label %bb.bw, !dbg !139532

bb.bw:                                            ; preds = %bb.bv
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139531
  unreachable, !dbg !139531

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_.exit
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bx, !dbg !139533

.body109:                                         ; preds = %bb.bx, %bb.bv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit, %.body106
  %.pn43 = phi { ptr, i32 } [ %lpad.loopexit.split-lp202, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.pn41, %.body106 ], [ %i.ds, %bb.bx ], [ %i.dq, %bb.bv ]
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtB1h_5arena4NodeENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef 24, i64 noundef 16)
          to label %.body unwind label %bb.cq, !dbg !139534

bb.bx:                                            ; preds = %.invoke, %._crit_edge, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit.i, %bb.cr, %bb.ce, %bb.cb, %bb.ca, %bb.by
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body109

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !139468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !139468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !139535
  %i.dt = load i64, ptr %i.ab, align 8, !dbg !139536, !noundef !3394
  %i.du = icmp ult i64 %0, %i.dt, !dbg !139537
  br i1 %i.du, label %bb.bz, label %bb.by, !dbg !139537, !prof !3464

bb.by:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #41
          to label %bb.e unwind label %bb.bx, !dbg !139538

bb.bz:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit
  %i.dv = load ptr, ptr %i.aa, align 8, !dbg !139539, !nonnull !3394, !noundef !3394
  %i.dw = getelementptr inbounds nuw [368 x i8], ptr %i.dv, i64 %0, !dbg !139540 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.f, ptr noundef nonnull align 16 dereferenceable(368) %i.dw, i64 368, i1 false), !dbg !139541
  store i64 -9223372036854775782, ptr %i.dw, align 16, !dbg !139542
  %i.dx = load i64, ptr %i.f, align 16, !dbg !139535, !range !3901, !noundef !3394 ; 2 uses
  %i.dy = icmp ne i64 %i.dx, -9223372036854775786, !dbg !139535
  call void @llvm.assume(i1 %i.dy), !dbg !139535
  %i.dz = icmp eq i64 %i.dx, -9223372036854775799, !dbg !139543
  br i1 %i.dz, label %bb.ca, label %bb.cb, !dbg !139543

bb.ca:                                            ; preds = %bb.bz
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !139544
  %i.eb = load i64, ptr %i.ea, align 16, !dbg !139544, !noundef !3394 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef align 16 dereferenceable(368) %i.f)
          to label %bb.cc unwind label %bb.bx, !dbg !139545

bb.cb:                                            ; preds = %bb.bz
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef align 16 dereferenceable(368) %i.f)
          to label %bb.cr unwind label %bb.bx, !dbg !139545

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !139545
  %.val55 = load ptr, ptr %i.aa, align 8, !dbg !139546, !nonnull !3394, !noundef !3394 ; 2 uses
  %.val56 = load i64, ptr %i.ab, align 8, !dbg !139546, !noundef !3394 ; 3 uses
  %i.ec = icmp ult i64 %0, %.val56, !dbg !139547
  br i1 %i.ec, label %bb.cd, label %.invoke, !dbg !139547

bb.cd:                                            ; preds = %bb.cc
  %i.ed = icmp ult i64 %i.eb, %.val56, !dbg !139548
  br i1 %i.ed, label %bb.ce, label %.invoke, !dbg !139548

.invoke:                                          ; preds = %bb.cd, %bb.cc
  %i.ee = phi i64 [ %0, %bb.cc ], [ %i.eb, %bb.cd ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ee, i64 noundef %.val56, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @443) #43
          to label %.cont unwind label %bb.bx, !dbg !139549

.cont:                                            ; preds = %.invoke
  unreachable

bb.ce:                                            ; preds = %bb.cd
  %i.ef = getelementptr inbounds nuw [368 x i8], ptr %.val55, i64 %0, !dbg !139550 ; 2 uses
  %i.eg = getelementptr inbounds nuw [368 x i8], ptr %.val55, i64 %i.eb, !dbg !139551 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !139552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.c, ptr noundef nonnull align 16 dereferenceable(368) %i.ef, i64 368, i1 false), !dbg !139553
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.ef, ptr noundef nonnull align 16 dereferenceable(368) %i.eg, i64 368, i1 false), !dbg !139554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.eg, ptr noundef nonnull align 16 dereferenceable(368) %i.c, i64 368, i1 false), !dbg !139555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !139556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !139557
  store ptr %1, ptr %i.d, align 8, !dbg !139558
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !139558
  store i64 %0, ptr %.sroa.4128.0..sroa_idx, align 8, !dbg !139558
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !139558
  store i64 4294967297, ptr %.sroa.5129.0..sroa_idx, align 8, !dbg !139558
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator7AlpIterNCNvNtNtB3j_9optimizer19projection_pushdown19projection_pushdowns_0EE9from_iterB3l_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.cf unwind label %bb.bx, !dbg !139559

bb.cf:                                            ; preds = %bb.ce
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !139385
  %i.ei = load ptr, ptr %i.eh, align 8, !dbg !139385, !nonnull !3394, !noundef !3394 ; 4 uses
  %i.ej = load i64, ptr %i.e, align 8, !dbg !139385, !range !3865, !noundef !3394 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !139385
  %i.el = load i64, ptr %i.ek, align 8, !dbg !139385, !noundef !3394 ; 3 uses
  %i.em = icmp ult i64 %i.el, 1152921504606846976, !dbg !139560
  call void @llvm.assume(i1 %i.em), !dbg !139561
  %.idx = shl nuw nsw i64 %i.el, 3, !dbg !139562
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx, !dbg !139562
  %i.eo = icmp eq i64 %i.el, 0, !dbg !139563
  br i1 %i.eo, label %._crit_edge, label %.lr.ph, !dbg !139564

.lr.ph:                                           ; preds = %bb.cf
  %i.ep = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %bb.cg, !dbg !139564

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cl, %bb.cp, %bb.ci
  %lpad.loopexit.split-lp202 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !139565, !noalias !139388
  store i64 %i.ej, ptr %i.b, align 8, !dbg !139566, !noalias !139388
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !139566
  store ptr %i.ei, ptr %i.er, align 8, !dbg !139566, !noalias !139388
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.cq, !dbg !139567

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !139568, !noalias !139388
  br label %.body109, !dbg !139569

bb.cg:                                            ; preds = %.lr.ph, %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread
  %.sroa.5132.0192 = phi ptr [ %i.ei, %.lr.ph ], [ %i.es, %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.5132.0192, i64 8, !dbg !139570 ; 2 uses
  %i.et = load i64, ptr %.sroa.5132.0192, align 8, !dbg !139571, !noalias !139389, !noundef !3394 ; 2 uses
  %i.eu = load i64, ptr %i.ab, align 8, !dbg !139572, !noundef !3394
  %i.ev = icmp ult i64 %i.et, %i.eu, !dbg !139573
  br i1 %i.ev, label %bb.cj, label %bb.ci, !dbg !139573, !prof !3464

._crit_edge:                                      ; preds = %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !139574, !noalias !139398
  store i64 %i.ej, ptr %i.a, align 8, !dbg !139575, !noalias !139398
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !139575
  store ptr %i.ei, ptr %i.ew, align 8, !dbg !139575, !noalias !139398
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.ch unwind label %bb.bx, !dbg !139576

bb.ch:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !139577, !noalias !139398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !139578
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtB1h_5arena4NodeENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef 24, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtB1p_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit119 unwind label %bb.d, !dbg !139579

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtB1p_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit119: ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !139580
  call void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 16, i64 noundef 16), !dbg !139581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !139582
  ret void, !dbg !139583

bb.ci:                                            ; preds = %bb.cg
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #41
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !139584

bb.cj:                                            ; preds = %bb.cg
  %i.ex = load ptr, ptr %i.aa, align 8, !dbg !139585, !nonnull !3394, !noundef !3394
  %i.ey = getelementptr inbounds nuw [368 x i8], ptr %i.ex, i64 %i.et, !dbg !139586 ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 16, !dbg !139587, !range !3901, !noundef !3394 ; 2 uses
  %i.fa = icmp ne i64 %i.ez, -9223372036854775786, !dbg !139587
  call void @llvm.assume(i1 %i.fa), !dbg !139587
  %i.fb = icmp eq i64 %i.ez, -9223372036854775796, !dbg !139588
  br i1 %i.fb, label %bb.ck, label %bb.cp, !dbg !139588, !prof !3464

bb.ck:                                            ; preds = %bb.cj
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8, !dbg !139589 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !139408), !dbg !139590
  call void @llvm.experimental.noalias.scope.decl(metadata !139409), !dbg !139590
  %i.fd = load i64, ptr %i.ep, align 8, !dbg !139591, !alias.scope !139408, !noundef !3394
  %i.fe = icmp eq i64 %i.fd, 0, !dbg !139592
  br i1 %i.fe, label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread, label %bb.cl, !dbg !139592

bb.cl:                                            ; preds = %bb.ck
  %i.ff = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.fc)
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !139593 ; 2 uses

.noexc122:                                        ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !139410), !dbg !139594
  call void @llvm.experimental.noalias.scope.decl(metadata !139411), !dbg !139594
  call void @llvm.experimental.noalias.scope.decl(metadata !139412), !dbg !139595
  %i.fg = lshr i64 %i.ff, 57, !dbg !139596
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !139597
  %i.fi = load i64, ptr %i.eq, align 8, !dbg !139598, !alias.scope !139413, !noundef !3394 ; 2 uses
  %i.fj = load ptr, ptr %i.r, align 8, !alias.scope !139413, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.fk = insertelement <16 x i8> poison, i8 %i.fh, i64 0
  %i.fl = shufflevector <16 x i8> %i.fk, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i = load i128, ptr %i.fc, align 8, !alias.scope !139414
  br label %bb.cm, !dbg !139599

bb.cm:                                            ; preds = %bb.co, %.noexc122
  %.sroa.011.0.i.i.i = phi i64 [ 0, %.noexc122 ], [ %i.gc, %bb.co ], !dbg !139600
  %.pn.i.i.i = phi i64 [ %i.ff, %.noexc122 ], [ %i.gd, %bb.co ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.fi, !dbg !139600 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.sroa.01.0.i.i.i, !dbg !139601
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.fm, align 1, !dbg !139602, !noalias !139415 ; 2 uses
  %i.fn = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.fl, !dbg !139603
  %i.fo = bitcast <16 x i1> %i.fn to i16, !dbg !139604 ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.fo, 0, !dbg !139605
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !139606

.lr.ph.i.i:                                       ; preds = %bb.cm, %bb.cn
  %.sroa.05.0.i33.i.i = phi i16 [ %i.gb, %bb.cn ], [ %i.fo, %bb.cm ] ; 3 uses
  %i.fp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i, i1 true), !dbg !139607
  %i.fq = zext nneg i16 %i.fp to i64, !dbg !139608
  %i.fr = add i64 %.sroa.01.0.i.i.i, %i.fq, !dbg !139609
  %i.fs = and i64 %i.fr, %i.fi, !dbg !139609
  %i.ft = sub nsw i64 0, %i.fs, !dbg !139610
  %i.fu = getelementptr inbounds [24 x i8], ptr %i.fj, i64 %i.ft, !dbg !139611 ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -24, !dbg !139612
  %.val2.i.i.i = load i128, ptr %i.fv, align 1, !dbg !139613, !noalias !139416
  %i.fw = icmp eq i128 %.val.i.i.i.i, %.val2.i.i.i, !dbg !139614
  br i1 %i.fw, label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.cn, !dbg !139615, !prof !3464

._crit_edge.i.i:                                  ; preds = %bb.cn, %bb.cm
  %i.fx = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1), !dbg !139616
  %i.fy = bitcast <16 x i1> %i.fx to i16, !dbg !139617
  %i.fz = icmp eq i16 %i.fy, 0, !dbg !139618
  br i1 %i.fz, label %bb.co, label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !139618, !prof !3463

bb.cn:                                            ; preds = %.lr.ph.i.i
  %i.ga = add i16 %.sroa.05.0.i33.i.i, -1, !dbg !139619
  %i.gb = and i16 %i.ga, %.sroa.05.0.i33.i.i, !dbg !139620 ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.gb, 0, !dbg !139605
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !139606

bb.co:                                            ; preds = %._crit_edge.i.i
  %i.gc = add i64 %.sroa.011.0.i.i.i, 16, !dbg !139621 ; 2 uses
  %i.gd = add i64 %.sroa.01.0.i.i.i, %i.gc, !dbg !139622
  br label %bb.cm, !dbg !139599

bb.cp:                                            ; preds = %bb.cj
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @666) #41
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !139623

_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.lr.ph.i.i
  %i.ge = getelementptr inbounds i8, ptr %i.fu, i64 -8, !dbg !139624
  %i.gf = load i64, ptr %i.ge, align 8, !dbg !139625, !noundef !3394
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ey, i64 24, !dbg !139626
  store i64 %i.gf, ptr %i.gg, align 8, !dbg !139626
  br label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !139627

_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %._crit_edge.i.i, %bb.ck, %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit
  %i.gh = icmp eq ptr %i.es, %i.en, !dbg !139563
  br i1 %i.gh, label %._crit_edge, label %bb.cg, !dbg !139564

bb.cq:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body109, %bb.aw, %.body, %.body106, %.body84, %.body72, %bb.ak, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown25ProjectionPushdownVisitorEBO_.exit, %.body81, %.body87, %.body94, %.body102
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139628
  unreachable, !dbg !139628

bb.cr:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !139545
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @667) #41
          to label %bb.e unwind label %bb.bx, !dbg !139629

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.body
  resume { ptr, i32 } %.pn43.pn, !dbg !139628
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 16 ptr @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown23extract_select_len_expr(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(368) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val) unnamed_addr #0 !dbg !139630 {
bb.a:
  %i.a = load i64, ptr %0, align 16, !dbg !139660, !range !3901, !noundef !3394 ; 2 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775786, !dbg !139660
  tail call void @llvm.assume(i1 %i.b), !dbg !139660
  %i.c = icmp eq i64 %i.a, -9223372036854775798, !dbg !139661
  br i1 %i.c, label %bb.b, label %bb.f, !dbg !139661

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !139662
  %i.e = load i64, ptr %i.d, align 8, !dbg !139662, !noundef !3394 ; 2 uses
  %i.f = icmp ult i64 %i.e, 82351536043346213, !dbg !139663
  tail call void @llvm.assume(i1 %i.f), !dbg !139664
  %i.g = icmp eq i64 %i.e, 1, !dbg !139665
  br i1 %i.g, label %bb.c, label %bb.f, !dbg !139665

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !139666
  %i.i = load ptr, ptr %i.h, align 16, !dbg !139666, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96, !dbg !139667
  %i.k = load i64, ptr %i.j, align 16, !dbg !139667, !noundef !3394 ; 2 uses
  %i.l = icmp ult i64 %i.k, %.16.val, !dbg !139668
  br i1 %i.l, label %bb.e, label %bb.d, !dbg !139668, !prof !3464

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #43, !dbg !139669
  unreachable, !dbg !139669
end_hunk_3
