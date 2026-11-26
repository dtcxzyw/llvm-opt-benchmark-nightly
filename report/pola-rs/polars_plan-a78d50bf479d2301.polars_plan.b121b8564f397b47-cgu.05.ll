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
  %i.nq = getelementptr inbounds nuw i8, ptr %4, i64 24, !dbg !132977
  %i.nr = load ptr, ptr %i.nq, align 8, !dbg !132977, !invariant.load !3396 ; 25 uses
  %i.ns = tail call { ptr, ptr } %i.nr(ptr noundef nonnull %3) #38, !dbg !132978 ; 2 uses
  %i.nt = extractvalue { ptr, ptr } %i.ns, 0, !dbg !132978
  %i.nu = extractvalue { ptr, ptr } %i.ns, 1, !dbg !132978
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 32, !dbg !132977
  %i.nw = load ptr, ptr %i.nv, align 8, !dbg !132977, !invariant.load !3396, !nonnull !3396
  %i.nx = tail call noundef i64 %i.nw(ptr noundef %i.nt) #38, !dbg !132979 ; 4 uses
  store i64 %i.nx, ptr %i.np, align 8, !dbg !132979
  call void @llvm.lifetime.start.p0(ptr nonnull %i.no), !dbg !132980
  %.val986 = load ptr, ptr %2, align 8, !dbg !132981, !nonnull !3396, !align !3497, !noundef !3396 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !132982 ; 10 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !dbg !132982, !nonnull !3396, !align !3497, !noundef !3396
  %i.oa = tail call noundef nonnull ptr @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR17schema_with_cache(i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val986, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.nz), !dbg !132983
  store ptr %i.oa, ptr %i.no, align 8, !dbg !132983
  %i.ob = getelementptr inbounds nuw i8, ptr %.val986, i64 16, !dbg !132984
  %i.oc = load i64, ptr %i.ob, align 8, !dbg !132984, !noundef !3396
  %i.od = icmp ult i64 %1, %i.oc, !dbg !132985
  br i1 %i.od, label %bb.b, label %.invoke3453, !dbg !132985, !prof !3465

bb.b:                                             ; preds = %bb.a
  %i.oe = getelementptr inbounds nuw i8, ptr %.val986, i64 8, !dbg !132986
  %i.of = load ptr, ptr %i.oe, align 8, !dbg !132986, !nonnull !3396, !noundef !3396
  %i.og = getelementptr inbounds nuw [368 x i8], ptr %i.of, i64 %1, !dbg !132987
  %i.oh = load i64, ptr %i.og, align 16, !dbg !132988, !range !3903, !noundef !3396 ; 2 uses
  %i.oi = icmp ne i64 %i.oh, -9223372036854775786, !dbg !132988
  tail call void @llvm.assume(i1 %i.oi), !dbg !132988
  %i.oj = icmp eq i64 %i.oh, -9223372036854775796, !dbg !132989
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !dbg !132990, !invariant.load !3396 ; 26 uses
  br i1 %i.oj, label %._crit_edge3113.a, label %bb.d, !dbg !132989

bb.c:                                             ; preds = %bb.bfo, %bb.bfl, %bb.bez, %bb.bcg, %bb.bcd, %bb.bbz, %bb.bba, %bb.bax, %bb.ayj, %bb.ayg, %bb.awn, %bb.avp, %bb.avm, %bb.and, %bb.ana, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfcROwRM8ZtH_11polars_plan.exit1656.thread, %bb.alg, %bb.ake, %bb.aiz, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfcROwRM8ZtH_11polars_plan.exit.thread, %bb.abi, %bb.abf, %bb.wt, %bb.rz, %bb.ko, %bb.kc, %bb.jf, %bb.hr, %.critedge, %bb.di, %bb.ba
  unreachable

._crit_edge3113.a:                                ; preds = %bb.b, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nm), !dbg !132991
  %i.ok = invoke { ptr, ptr } %.pre(ptr noundef nonnull %3)
          to label %bb.g unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !132992 ; 2 uses

bb.d:                                             ; preds = %bb.b
  %i.ol = invoke { ptr, ptr } %.pre(ptr noundef nonnull %3)
          to label %bb.e unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !132993 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.om = extractvalue { ptr, ptr } %i.ol, 0, !dbg !132994
  %i.on = extractvalue { ptr, ptr } %i.ol, 1, !dbg !132994
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 32, !dbg !132994
  %i.op = load ptr, ptr %i.oo, align 8, !dbg !132994, !invariant.load !3396, !nonnull !3396
  %i.oq = invoke noundef i64 %i.op(ptr noundef %i.om)
          to label %bb.f unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !132995 ; 2 uses

bb.f:                                             ; preds = %bb.e
  store i64 %i.oq, ptr %i.nn, align 8, !dbg !132994
  %i.or = icmp eq i64 %i.oq, 1, !dbg !132996
  br i1 %i.or, label %._crit_edge3113.a, label %.invoke3455, !dbg !132996, !prof !3465

.invoke3455:                                      ; preds = %bb.r, %bb.q, %bb.pq, %bb.f
  %i.os = phi ptr [ %i.np, %bb.q ], [ %i.nn, %bb.f ], [ %i.nk, %bb.pq ], [ %i.np, %bb.r ]
  %i.ot = phi ptr [ @577, %bb.q ], [ @417, %bb.f ], [ %i.nl, %bb.pq ], [ @577, %bb.r ]
  %i.ou = phi ptr [ @594, %bb.q ], [ @626, %bb.f ], [ @554, %bb.pq ], [ @597, %bb.r ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.os, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ot, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ou) #41
          to label %.cont3456 unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !132990

.cont3456:                                        ; preds = %.invoke3455
  unreachable

bb.g:                                             ; preds = %._crit_edge3113.a
  %i.ov = extractvalue { ptr, ptr } %i.ok, 0, !dbg !132991
  %i.ow = extractvalue { ptr, ptr } %i.ok, 1, !dbg !132991
  store ptr %i.ov, ptr %i.nm, align 8, !dbg !132991
  %i.ox = getelementptr inbounds nuw i8, ptr %i.nm, i64 8, !dbg !132991
  store ptr %i.ow, ptr %i.ox, align 8, !dbg !132991
  %i.oy = invoke noundef nonnull align 8 ptr @_RNvXs2_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionWrapNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeQDINtB5_10CollectionB17_EEL_EINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutB1h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.nm, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @543)
          to label %bb.h unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !132997 ; 129 uses

bb.h:                                             ; preds = %bb.g
  %.val1051 = load ptr, ptr %2, align 8, !dbg !132998, !nonnull !3396, !align !3497, !noundef !3396 ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.val1051, i64 16, !dbg !132999
  %i.pa = load i64, ptr %i.oz, align 8, !dbg !132999, !noundef !3396 ; 5 uses
  %i.pb = icmp ult i64 %1, %i.pa, !dbg !133000
  br i1 %i.pb, label %bb.i, label %.invoke3453, !dbg !133000, !prof !3465

bb.i:                                             ; preds = %bb.h
  %i.pc = getelementptr inbounds nuw i8, ptr %.val1051, i64 8, !dbg !133001
  %i.pd = load ptr, ptr %i.pc, align 8, !dbg !133001, !nonnull !3396, !noundef !3396 ; 5 uses
  %i.pe = getelementptr inbounds nuw [368 x i8], ptr %i.pd, i64 %1, !dbg !133002 ; 51 uses
  %i.pf = load i64, ptr %i.pe, align 16, !dbg !132998, !range !3903, !noundef !3396 ; 3 uses
  %i.pg = icmp ne i64 %i.pf, -9223372036854775786, !dbg !132998
  call void @llvm.assume(i1 %i.pg), !dbg !132998
  %i.ph = add nsw i64 %i.pf, 9223372036854775804, !dbg !132998
  %i.pi = icmp ugt i64 %i.pf, -9223372036854775805, !dbg !132998
  %i.pj = select i1 %i.pi, i64 %i.ph, i64 18, !dbg !132998
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
    i64 22, label %.invoke3449
  ], !dbg !133003, !prof !4465

default.unreachable3320:                          ; preds = %bb.ajy, %bb.zf, %bb.pv, %bb.vb, %bb.pg
  unreachable

bb.j:                                             ; preds = %bb.i
  unreachable, !dbg !133004

bb.k:                                             ; preds = %bb.i
  %i.pk = load ptr, ptr %i.no, align 8, !dbg !133005, !nonnull !3396, !noundef !3396
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16, !dbg !133006
  %i.pm = invoke noundef align 8 ptr @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState30compute_projected_names_subsetBc_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.oy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.pl)
          to label %bb.z unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !133007

bb.l:                                             ; preds = %bb.i
  %i.pn = invoke noundef i8 @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState10projectionBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.oy)
          to label %bb.nc unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !133008

bb.m:                                             ; preds = %bb.i
  %i.po = invoke noundef i8 @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState10projectionBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.oy)
          to label %bb.pg unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !133009

bb.n:                                             ; preds = %bb.i
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pe, i64 40, !dbg !133010
  %i.pq = load i64, ptr %i.pp, align 8, !dbg !133010, !noundef !3396 ; 4 uses
  %i.pr = invoke noundef i8 @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState10projectionBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.oy)
          to label %bb.ps unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !133011

bb.o:                                             ; preds = %bb.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pe, i64 24, !dbg !133012
  %i.pt = load i64, ptr %i.ps, align 8, !dbg !133012, !noundef !3396
  %i.pu = invoke { ptr, ptr } %.pre(ptr noundef nonnull %3)
          to label %bb.wa unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !133013 ; 2 uses

bb.p:                                             ; preds = %bb.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pe, i64 8, !dbg !132998
  %i.pw = load i64, ptr %i.pv, align 8, !dbg !132998, !range !3526, !noundef !3396
  %i.px = trunc nuw i64 %i.pw to i1, !dbg !133003
  br i1 %i.px, label %bb.aay, label %bb.yb, !dbg !133003

bb.q:                                             ; preds = %bb.i
  %i.py = icmp eq i64 %i.nx, 2, !dbg !133014
  br i1 %i.py, label %bb.aaz, label %.invoke3455, !dbg !133014, !prof !3465

bb.r:                                             ; preds = %bb.i
  %i.pz = icmp eq i64 %i.nx, 2, !dbg !133015
  br i1 %i.pz, label %bb.alp, label %.invoke3455, !dbg !133015, !prof !3465

bb.s:                                             ; preds = %bb.i
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pe, i64 40, !dbg !133016
  %i.qb = load i64, ptr %i.qa, align 8, !dbg !133016, !noundef !3396 ; 3 uses
  %i.qc = invoke noundef i8 @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState10projectionBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.oy)
          to label %bb.amw unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !133017

bb.t:                                             ; preds = %bb.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pe, i64 32, !dbg !132998 ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 16, !dbg !132998, !noundef !3396
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pe, i64 40, !dbg !132998
  %.not585 = icmp eq ptr %i.qe, null, !dbg !132998
  %i.qg = load ptr, ptr %i.no, align 8, !dbg !133018, !nonnull !3396, !noundef !3396
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16, !dbg !133019 ; 2 uses
  br i1 %.not585, label %.invoke3448, label %bb.aso, !dbg !133003

bb.u:                                             ; preds = %bb.i
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pe, i64 8, !dbg !132998 ; 7 uses
  %i.qj = load i64, ptr %i.qi, align 8, !dbg !132998, !range !3906, !noundef !3396 ; 3 uses
  %i.qk = icmp ne i64 %i.qj, 5, !dbg !132998
  call void @llvm.assume(i1 %i.qk), !dbg !132998
  %i.ql = add nsw i64 %i.qj, -3, !dbg !132998
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdownNtB4_25ProjectionPushdownVisitor8pushdown:bb.a
  %i.bca = load i64, ptr %i.bbz, align 16, !dbg !134202, !range !3903, !noundef !3396 ; 2 uses
  %i.bcb = icmp ne i64 %i.bca, -9223372036854775786, !dbg !134202
  call void @llvm.assume(i1 %i.bcb), !dbg !134202
  %i.bcc = icmp eq i64 %i.bca, -9223372036854775798, !dbg !134207
  br i1 %i.bcc, label %bb.ri, label %.invoke3449, !dbg !134207, !prof !3465

bb.ri:                                            ; preds = %bb.rh
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bbz, i64 24, !dbg !134208 ; 5 uses
  %i.bce = load i64, ptr %i.bcd, align 8, !dbg !134208, !noundef !3396 ; 2 uses
  %i.bcf = icmp ult i64 %i.bce, 82351536043346213, !dbg !134209
  call void @llvm.assume(i1 %i.bcf), !dbg !134210
  %i.bcg = icmp eq i64 %i.bce, 1, !dbg !134211
  br i1 %i.bcg, label %bb.rj, label %bb.sh, !dbg !134211

bb.rj:                                            ; preds = %bb.ri
  %i.bch = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !134212 ; 2 uses
  %i.bci = load ptr, ptr %i.bch, align 8, !dbg !134212, !nonnull !3396, !align !3497, !noundef !3396 ; 3 uses
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bbz, i64 16, !dbg !134213 ; 4 uses
  %i.bck = load ptr, ptr %i.bcj, align 16, !dbg !134213, !nonnull !3396, !noundef !3396
  %i.bcl = getelementptr i8, ptr %i.bck, i64 96, !dbg !134214
  %.val939 = load i64, ptr %i.bcl, align 16, !dbg !134214, !noundef !3396 ; 2 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bci, i64 16, !dbg !134215
  %i.bcn = load i64, ptr %i.bcm, align 8, !dbg !134215, !noundef !3396
  %i.bco = icmp ult i64 %.val939, %i.bcn, !dbg !134216
  br i1 %i.bco, label %bb.rk, label %.invoke3453, !dbg !134216, !prof !3465

bb.rk:                                            ; preds = %bb.rj
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bci, i64 8, !dbg !134217
  %i.bcq = load ptr, ptr %i.bcp, align 8, !dbg !134217, !nonnull !3396, !noundef !3396
  %i.bcr = getelementptr inbounds nuw [144 x i8], ptr %i.bcq, i64 %.val939, !dbg !134218 ; 4 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcr, i64 112, !dbg !134212
  %i.bct = load i64, ptr %i.bcs, align 16, !dbg !134212, !range !3905, !noundef !3396 ; 3 uses
  %i.bcu = icmp ne i64 %i.bct, -9223372036854775791, !dbg !134212
  call void @llvm.assume(i1 %i.bcu), !dbg !134212
  %i.bcv = xor i64 %i.bct, -9223372036854775808, !dbg !134212
  %i.bcw = icmp slt i64 %i.bct, 0, !dbg !134212
  %i.bcx = select i1 %i.bcw, i64 %i.bcv, i64 17, !dbg !134212
  switch i64 %i.bcx, label %bb.sh [
    i64 11, label %bb.rl
    i64 21, label %.thread3325
  ], !dbg !134219

.thread3325:                                      ; preds = %bb.rk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ne), !dbg !134220
  br label %bb.rt, !dbg !134221

bb.rl:                                            ; preds = %bb.rk
  %i.bcy = load i8, ptr %i.bcr, align 16, !dbg !134212, !range !3898, !noundef !3396
  %i.bcz = icmp eq i8 %i.bcy, 12, !dbg !134219
  br i1 %i.bcz, label %bb.rm, label %bb.sh, !dbg !134219

bb.rm:                                            ; preds = %bb.rl
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcr, i64 1, !dbg !134219
  %i.bdb = load i8, ptr %i.bda, align 1, !dbg !134219, !range !3723, !noundef !3396
  %i.bdc = trunc nuw i8 %i.bdb to i1, !dbg !134219
  br i1 %i.bdc, label %bb.rn, label %bb.sh, !dbg !134219

bb.rn:                                            ; preds = %bb.rm
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bcr, i64 8, !dbg !134222
  %i.bde = load i64, ptr %i.bdd, align 8, !dbg !134222, !noundef !3396
  %i.bdf = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !134223
  %i.bdg = load ptr, ptr %i.bdf, align 8, !dbg !134223, !nonnull !3396, !align !3497, !noundef !3396
  %i.bdh = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !134224
  %i.bdi = load ptr, ptr %i.bdh, align 8, !dbg !134224, !nonnull !3396, !align !3497, !noundef !3396
  %i.bdj = invoke noundef i8 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height27aexpr_projection_height_rec(i64 noundef %i.bde, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bci, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bdg, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bdi)
          to label %bb.ro unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !134225

bb.ro:                                            ; preds = %bb.rn
  %i.bdk = icmp eq i8 %i.bdj, 0, !dbg !134226
  br i1 %i.bdk, label %bb.rp, label %bb.sh, !dbg !134226

bb.rp:                                            ; preds = %bb.ro
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ng), !dbg !134227
  %i.bdl = load i64, ptr %i.bcd, align 8, !dbg !134228, !noundef !3396
  %.not677 = icmp eq i64 %i.bdl, 0, !dbg !134229
  br i1 %.not677, label %.invoke3457, label %bb.rq, !dbg !134229

bb.rq:                                            ; preds = %bb.rp
  %i.bdm = load ptr, ptr %i.bch, align 8, !dbg !134227, !nonnull !3396, !align !3497, !noundef !3396 ; 2 uses
  %i.bdn = load ptr, ptr %i.bcj, align 16, !dbg !134230, !nonnull !3396, !noundef !3396
  %i.bdo = getelementptr i8, ptr %i.bdn, i64 96, !dbg !134231
  %.val938 = load i64, ptr %i.bdo, align 16, !dbg !134231, !noundef !3396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nf), !dbg !134232
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.nf, i64 112, !dbg !134232
  store i64 -9223372036854775787, ptr %i.bdp, align 16, !dbg !134232
  %i.bdq = getelementptr i8, ptr %i.bdm, i64 8, !dbg !134233
  %.val1151 = load ptr, ptr %i.bdq, align 8, !dbg !134233
  %i.bdr = getelementptr i8, ptr %i.bdm, i64 16, !dbg !134233
  %.val1152 = load i64, ptr %i.bdr, align 8, !dbg !134233, !noundef !3396
  invoke fastcc void @_RNvMs0_NtCs2mZqlW55729_12polars_utils5arenaINtB5_5ArenaNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE7replaceBX_(ptr noalias noundef align 16 captures(none) dereferenceable(144) %i.ng, ptr %.val1151, i64 %.val1152, i64 noundef %.val938, ptr noalias noundef align 16 captures(address) dereferenceable(144) %i.nf)
          to label %bb.rr unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !134233

bb.rr:                                            ; preds = %bb.rq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nf), !dbg !134234
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.ng)
          to label %bb.rs unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !134235

bb.rs:                                            ; preds = %bb.rr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ng), !dbg !134235
  %.pre3124.a = load i64, ptr %i.bcd, align 8, !dbg !134236
  %i.bds = icmp eq i64 %.pre3124.a, 0, !dbg !134221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ne), !dbg !134220
  br i1 %i.bds, label %.invoke3457, label %bb.rt, !dbg !134221

bb.rt:                                            ; preds = %.thread3325, %bb.rs
  %i.bdt = load ptr, ptr %i.bcj, align 16, !dbg !134237, !nonnull !3396, !noundef !3396
  %i.bdu = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIR11output_name(ptr noundef nonnull align 16 %i.bdt)
          to label %bb.ru unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !134238 ; 3 uses

bb.ru:                                            ; preds = %bb.rt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en), !dbg !134239
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 23, !dbg !134240
  %i.bdw = load i8, ptr %i.bdv, align 1, !dbg !134240, !range !3544, !noundef !3396
  %i.bdx = icmp eq i8 %i.bdw, -40, !dbg !134241
  br i1 %i.bdx, label %bb.rv, label %bb.rw, !dbg !134241

bb.rv:                                            ; preds = %bb.ru
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.en, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bdu)
          to label %bb.rx unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !134242

bb.rw:                                            ; preds = %bb.ru
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %i.bdu, i64 24, i1 false), !dbg !134243
  br label %bb.rx, !dbg !134244

bb.rx:                                            ; preds = %bb.rv, %bb.rw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ne, ptr noundef nonnull align 8 dereferenceable(24) %i.en, i64 24, i1 false), !dbg !134245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !dbg !134246
  %i.bdy = load i64, ptr %i.bcd, align 8, !dbg !134247, !noundef !3396
  %.not679 = icmp eq i64 %i.bdy, 0, !dbg !134248
  br i1 %.not679, label %bb.rz, label %bb.ry, !dbg !134248

bb.ry:                                            ; preds = %bb.rx
  %i.bdz = load ptr, ptr %i.bcj, align 16, !dbg !134249, !nonnull !3396, !noundef !3396
  invoke void @_RNvMs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIR9set_alias(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.bdz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ne)
          to label %bb.sa unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !134250

bb.rz:                                            ; preds = %bb.rx
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @561) #41
          to label %bb.c unwind label %bb.sf, !dbg !134248

bb.sa:                                            ; preds = %bb.ry
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nd), !dbg !134251
  %i.bea = invoke { ptr, ptr } %i.nr(ptr noundef nonnull %3)
          to label %bb.sb unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !134252 ; 2 uses

bb.sb:                                            ; preds = %bb.sa
  %i.beb = extractvalue { ptr, ptr } %i.bea, 0, !dbg !134251
  %i.bec = extractvalue { ptr, ptr } %i.bea, 1, !dbg !134251
  store ptr %i.beb, ptr %i.nd, align 8, !dbg !134251
  %i.bed = getelementptr inbounds nuw i8, ptr %i.nd, i64 8, !dbg !134251
  store ptr %i.bec, ptr %i.bed, align 8, !dbg !134251
  %i.bee = invoke noundef nonnull align 8 ptr @_RNvXs2_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionWrapNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeQDINtB5_10CollectionB17_EEL_EINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutB1h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.nd, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @562)
          to label %bb.sc unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !134253

bb.sc:                                            ; preds = %bb.sb
  %i.bef = invoke noundef nonnull ptr @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState14projection_mutBc_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bee)
          to label %bb.sd unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !134254

bb.sd:                                            ; preds = %bb.sc
  store i8 2, ptr %i.bef, align 1, !dbg !134255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nd), !dbg !134256
  invoke fastcc void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc(ptr noundef nonnull %3, ptr %i.nr, ptr %.pre)
          to label %bb.se unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !134257

bb.se:                                            ; preds = %bb.sd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ne), !dbg !134258
  br label %bb.bha, !dbg !134259

bb.sf:                                            ; preds = %bb.rz
  %lpad.thr_comm.split-lp2208 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %i.ne, i64 23, !dbg !134260
  %i.beh = load i8, ptr %i.beg, align 1, !dbg !134260, !range !3544, !alias.scope !129902, !noundef !3396
  %i.bei = icmp eq i8 %i.beh, -40, !dbg !134261
  br i1 %i.bei, label %bb.sg, label %.thread, !dbg !134261, !prof !3464

bb.sg:                                            ; preds = %bb.sf
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ne)
          to label %.thread unwind label %bb.bj, !dbg !134262

bb.sh:                                            ; preds = %bb.ro, %bb.rk, %bb.rl, %bb.rm, %bb.ri
  %i.bej = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !134263
  %i.bek = load ptr, ptr %i.bej, align 8, !dbg !134263, !nonnull !3396, !align !3497, !noundef !3396 ; 10 uses
  invoke void @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE5clearCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bek)
          to label %bb.si unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !134264

bb.si:                                            ; preds = %bb.sh
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bbz, i64 16, !dbg !134265
  %i.bem = load ptr, ptr %i.bel, align 16, !dbg !134265, !nonnull !3396, !noundef !3396 ; 2 uses
  %i.ben = load i64, ptr %i.bcd, align 8, !dbg !134266, !noundef !3396 ; 2 uses
  %.idx2983 = mul nuw nsw i64 %i.ben, 112, !dbg !134267
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bem, i64 %.idx2983, !dbg !134267
  %i.bep = icmp eq i64 %i.ben, 0, !dbg !134268
  br i1 %i.bep, label %._crit_edge2953, label %.lr.ph2952, !dbg !134269

.lr.ph2952:                                       ; preds = %bb.si
  %i.beq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bek, i64 48
  %i.bes = getelementptr inbounds nuw i8, ptr %i.nb, i64 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i1374 = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  br label %bb.sj, !dbg !134269

bb.sj:                                            ; preds = %.lr.ph2952, %bb.tc
  %.sroa.018.02950 = phi i1 [ false, %.lr.ph2952 ], [ %.sroa.018.1, %bb.tc ]
  %.sroa.019.02949 = phi ptr [ %i.bem, %.lr.ph2952 ], [ %i.bet, %bb.tc ] ; 3 uses
  %.sroa.022.02948 = phi i8 [ 0, %.lr.ph2952 ], [ %.sroa.022.1, %bb.tc ]
  %i.bet = getelementptr inbounds nuw i8, ptr %.sroa.019.02949, i64 112, !dbg !134270 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nc), !dbg !134271
  %i.beu = getelementptr i8, ptr %.sroa.019.02949, i64 96, !dbg !134272 ; 3 uses
  %.sroa.019.0.val937 = load i64, ptr %i.beu, align 16, !dbg !134272, !noundef !3396
  %i.bev = load ptr, ptr %i.beq, align 8, !dbg !134273, !nonnull !3396, !align !3497, !noundef !3396
  invoke void @_RNvNtCsfcROwRM8ZtH_11polars_plan5utils24aexpr_to_leaf_names_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.nc, i64 noundef %.sroa.019.0.val937, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bev)
          to label %bb.sk unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !134271

bb.sk:                                            ; preds = %bb.sj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !134274, !noalias !129929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(72) %i.nc, i64 72, i1 false), !dbg !134275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nc), !dbg !134276
  call void @llvm.experimental.noalias.scope.decl(metadata !129933), !dbg !134277
  call void @llvm.experimental.noalias.scope.decl(metadata !129934), !dbg !134278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !134279, !noalias !129929
  invoke void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_3map3MapINtNtB6_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBa_6option6OptionNtNtB1J_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1J_5aexpr5AExprEEB2B_ENCNvNtB1L_5utils24aexpr_to_leaf_names_iter0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1L_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aw)
          to label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedIBN_INtNtB7_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBb_6option6OptionNtNtB1O_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1O_5aexpr5AExprEEB2G_ENCNvNtB1Q_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5y_8IndexSetNtNtB3B_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB9_6traits7collect6ExtendB6h_E6extendBW_E0ENtNtB7A_8iterator8Iterator9size_hintB1Q_.exit.i.i1365 unwind label %bb.sl, !dbg !134280, !noalias !129929

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedIBN_INtNtB7_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBb_6option6OptionNtNtB1O_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1O_5aexpr5AExprEEB2G_ENCNvNtB1Q_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5y_8IndexSetNtNtB3B_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB9_6traits7collect6ExtendB6h_E6extendBW_E0ENtNtB7A_8iterator8Iterator9size_hintB1Q_.exit.i.i1365: ; preds = %bb.sk
  %i.bew = load i64, ptr %i.av, align 8, !dbg !134281, !noalias !129929, !noundef !3396 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !134282, !noalias !129929
  %i.bex = load i64, ptr %i.ber, align 8, !dbg !134283, !alias.scope !129935, !noundef !3396
  %i.bey = icmp eq i64 %i.bex, 0, !dbg !134284
  %i.bez = lshr i64 %i.bew, 1, !dbg !134284
  %spec.select.i.i1366 = select i1 %i.bey, i64 0, i64 %i.bez, !dbg !134284
  %.sroa.0.0.i.i1367 = sub nuw i64 %i.bew, %spec.select.i.i1366, !dbg !134284
  invoke void @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bek, i64 noundef %.sroa.0.0.i.i1367)
          to label %_RINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB2y_8adapters3map3MapINtNtB3D_6cloned6ClonedIB3z_INtNtB3D_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB2A_6option6OptionNtNtB4V_7expr_ir10ColumnNodeEFTNtNtBS_5arena4NodeRNtNtB4V_5aexpr5AExprEEB5N_ENCNvNtB4X_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtB8_3setINtB8h_8IndexSetBO_B1E_EIB2s_BO_E6extendB40_E0EEB4X_.exit.i1368 unwind label %bb.sl, !dbg !134285, !noalias !129936

bb.sl:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedIBN_INtNtB7_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBb_6option6OptionNtNtB1O_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1O_5aexpr5AExprEEB2G_ENCNvNtB1Q_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5y_8IndexSetNtNtB3B_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB9_6traits7collect6ExtendB6h_E6extendBW_E0ENtNtB7A_8iterator8Iterator9size_hintB1Q_.exit.i.i1365, %bb.sk
  %lpad.thr_comm.i.i1363 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.aw, i64 32, !dbg !134286
  %i.bfb = load ptr, ptr %i.bfa, align 8, !dbg !134287, !alias.scope !129937, !noalias !129929, !noundef !3396
  %i.bfc = icmp eq ptr %i.bfb, null, !dbg !134287
  br i1 %i.bfc, label %.thread, label %bb.sm, !dbg !134287

bb.sm:                                            ; preds = %bb.sl
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.aw, i64 48, !dbg !134288
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bfd)
          to label %.thread unwind label %bb.sn, !dbg !134289, !noalias !129936

bb.sn:                                            ; preds = %bb.sm
  %i.bfe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !134290, !noalias !129936
  unreachable, !dbg !134290

_RINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB2y_8adapters3map3MapINtNtB3D_6cloned6ClonedIB3z_INtNtB3D_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB2A_6option6OptionNtNtB4V_7expr_ir10ColumnNodeEFTNtNtBS_5arena4NodeRNtNtB4V_5aexpr5AExprEEB5N_ENCNvNtB4X_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtB8_3setINtB8h_8IndexSetBO_B1E_EIB2s_BO_E6extendB40_E0EEB4X_.exit.i1368: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedIBN_INtNtB7_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBb_6option6OptionNtNtB1O_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1O_5aexpr5AExprEEB2G_ENCNvNtB1Q_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5y_8IndexSetNtNtB3B_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB9_6traits7collect6ExtendB6h_E6extendBW_E0ENtNtB7A_8iterator8Iterator9size_hintB1Q_.exit.i.i1365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !134291, !noalias !129929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.au, ptr noundef nonnull align 8 dereferenceable(72) %i.aw, i64 72, i1 false), !dbg !134291, !noalias !129929
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedIBO_INtNtB8_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBc_6option6OptionNtNtB1P_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1P_5aexpr5AExprEEB2H_ENCNvNtB1R_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5z_8IndexSetNtNtB3C_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtBa_6traits7collect6ExtendB6i_E6extendBX_E0ENtNtB7B_8iterator8Iterator4folduNCINvNvB8k_8for_each4callTB6i_uENCINvXsb_NtB5B_3mapINtB9v_8IndexMapB6i_uB6J_EIB7x_B9f_E6extendBN_E0E0EB1R_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bek)
          to label %bb.so unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !134292, !noalias !129936

bb.so:                                            ; preds = %_RINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB2y_8adapters3map3MapINtNtB3D_6cloned6ClonedIB3z_INtNtB3D_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB2A_6option6OptionNtNtB4V_7expr_ir10ColumnNodeEFTNtNtBS_5arena4NodeRNtNtB4V_5aexpr5AExprEEB5N_ENCNvNtB4X_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtB8_3setINtB8h_8IndexSetBO_B1E_EIB2s_BO_E6extendB40_E0EEB4X_.exit.i1368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !134293, !noalias !129929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !134294, !noalias !129929
  %i.bff = trunc nuw i8 %.sroa.022.02948 to i1, !dbg !134295
  br i1 %i.bff, label %bb.su, label %bb.sp, !dbg !134295

bb.sp:                                            ; preds = %bb.so
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nb), !dbg !134296
  %i.bfg = load ptr, ptr %i.beq, align 8, !dbg !134296, !nonnull !3396, !align !3497, !noundef !3396
  %.sroa.019.0.val936 = load i64, ptr %i.beu, align 16, !dbg !134297, !noundef !3396
  store i64 %.sroa.019.0.val936, ptr %i.bes, align 8, !dbg !134298, !alias.scope !129938
  store i64 4294967297, ptr %.sroa.2.0..sroa_idx.i1374, align 8, !dbg !134298, !alias.scope !129938
  store ptr %i.bfg, ptr %i.nb, align 8, !dbg !134298, !alias.scope !129938
  br label %bb.sq, !dbg !134299

bb.sq:                                            ; preds = %bb.sr, %bb.sp
  %i.bfh = invoke { i64, ptr } @_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB5_9AExprIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nb)
          to label %.noexc1377 unwind label %bb.ss, !dbg !134300

.noexc1377:                                       ; preds = %bb.sq
  %i.bfi = extractvalue { i64, ptr } %i.bfh, 1, !dbg !134301 ; 2 uses
  %.not.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.bfi, null, !dbg !134301 ; 2 uses
  br i1 %.not.not.not.not.i.not.not.not.not.not, label %bb.sr, label %bb.st, !dbg !134302

bb.sr:                                            ; preds = %.noexc1377
  %i.bfj = getelementptr i8, ptr %i.bfi, i64 112, !dbg !134303
  %.val.i1376 = load i64, ptr %i.bfj, align 16, !dbg !134303, !range !3905, !noundef !3396 ; 2 uses
  %i.bfk = icmp ne i64 %.val.i1376, -9223372036854775791, !dbg !134304
  call void @llvm.assume(i1 %i.bfk), !dbg !134304
  %i.bfl = icmp eq i64 %.val.i1376, -9223372036854775790, !dbg !134305
  br i1 %i.bfl, label %bb.st, label %bb.sq, !dbg !134303

bb.ss:                                            ; preds = %bb.sq
  %i.bfm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bes)
          to label %.thread unwind label %bb.bj, !dbg !134306

bb.st:                                            ; preds = %.noexc1377, %bb.sr
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bes)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit1380 unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !134307

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit1380: ; preds = %bb.st
  %i.bfn = zext i1 %.not.not.not.not.i.not.not.not.not.not to i8, !dbg !134308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nb), !dbg !134309
  br label %bb.su, !dbg !134295

bb.su:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit1380, %bb.so
  %.sroa.022.1 = phi i8 [ %i.bfn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit1380 ], [ 1, %bb.so ], !dbg !134310 ; 2 uses
  %i.bfo = load ptr, ptr %i.beq, align 8, !dbg !134311, !nonnull !3396, !align !3497, !noundef !3396 ; 2 uses
  %.sroa.019.0.val = load i64, ptr %i.beu, align 16, !dbg !134312, !noundef !3396 ; 2 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 16, !dbg !134313
  %i.bfq = load i64, ptr %i.bfp, align 8, !dbg !134313, !noundef !3396
  %i.bfr = icmp ult i64 %.sroa.019.0.val, %i.bfq, !dbg !134314
  br i1 %i.bfr, label %bb.sv, label %.invoke3453, !dbg !134314, !prof !3465

bb.sv:                                            ; preds = %bb.su
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfo, i64 8, !dbg !134315
  %i.bft = load ptr, ptr %i.bfs, align 8, !dbg !134315, !nonnull !3396, !noundef !3396
  %i.bfu = getelementptr inbounds nuw [144 x i8], ptr %i.bft, i64 %.sroa.019.0.val, !dbg !134316 ; 5 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 112, !dbg !134311
  %i.bfw = load i64, ptr %i.bfv, align 16, !dbg !134311, !range !3905, !noundef !3396 ; 2 uses
  %i.bfx = icmp ne i64 %i.bfw, -9223372036854775791, !dbg !134311
  call void @llvm.assume(i1 %i.bfx), !dbg !134311
  %i.bfy = icmp eq i64 %i.bfw, -9223372036854775806, !dbg !134317
  br i1 %i.bfy, label %bb.sw, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !134317

bb.sw:                                            ; preds = %bb.sv
  %i.bfz = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIR11output_name(ptr noundef nonnull align 16 %.sroa.019.02949)
          to label %bb.sx unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !134318 ; 4 uses

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %.noexc916, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit, %bb.sv
  br label %bb.tc, !dbg !134319

bb.sx:                                            ; preds = %bb.sw
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfu, i64 23, !dbg !134320
  %i.bgb = load i8, ptr %i.bga, align 1, !dbg !134320, !range !3544, !alias.scope !129963, !noalias !129964, !noundef !3396 ; 2 uses
  %i.bgc = icmp ugt i8 %i.bgb, -41, !dbg !134321
  br i1 %i.bgc, label %bb.sz, label %bb.sy, !dbg !134321

bb.sy:                                            ; preds = %bb.sx
  %i.bgd = add i8 %i.bgb, 64, !dbg !134322
  %i.bge = call i8 @llvm.umin.i8(i8 %i.bgd, i8 24), !dbg !134323
  %.sroa.0.0.i.i1381 = zext nneg i8 %i.bge to i64, !dbg !134323
  br label %.noexc915, !dbg !134324

bb.sz:                                            ; preds = %bb.sx
  %i.bgf = load ptr, ptr %i.bfu, align 16, !dbg !134325, !alias.scope !129963, !noalias !129964, !noundef !3396
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bfu, i64 8, !dbg !134326
  %i.bgh = load i64, ptr %i.bgg, align 8, !dbg !134326, !alias.scope !129963, !noalias !129964, !noundef !3396
  br label %.noexc915, !dbg !134327

.noexc915:                                        ; preds = %bb.sz, %bb.sy
  %.sroa.01.0.i1382 = phi i64 [ %i.bgh, %bb.sz ], [ %.sroa.0.0.i.i1381, %bb.sy ], !dbg !134328 ; 2 uses
  %.sroa.0.0.i1383 = phi ptr [ %i.bgf, %bb.sz ], [ %i.bfu, %bb.sy ], !dbg !134329
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bfz, i64 23, !dbg !134330
  %i.bgj = load i8, ptr %i.bgi, align 1, !dbg !134330, !range !3544, !alias.scope !129965, !noundef !3396 ; 2 uses
  %i.bgk = icmp ugt i8 %i.bgj, -41, !dbg !134331
  br i1 %i.bgk, label %bb.tb, label %bb.ta, !dbg !134331

bb.ta:                                            ; preds = %.noexc915
  %i.bgl = add i8 %i.bgj, 64, !dbg !134332
  %i.bgm = call i8 @llvm.umin.i8(i8 %i.bgl, i8 24), !dbg !134333
  %.sroa.0.0.i.i1385 = zext nneg i8 %i.bgm to i64, !dbg !134333
  br label %.noexc916, !dbg !134334

bb.tb:                                            ; preds = %.noexc915
  %i.bgn = load ptr, ptr %i.bfz, align 8, !dbg !134335, !alias.scope !129965, !noundef !3396
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bfz, i64 8, !dbg !134336
  %i.bgp = load i64, ptr %i.bgo, align 8, !dbg !134336, !alias.scope !129965, !noundef !3396
  br label %.noexc916, !dbg !134337

.noexc916:                                        ; preds = %bb.tb, %bb.ta
  %.sroa.01.0.i1386 = phi i64 [ %i.bgp, %bb.tb ], [ %.sroa.0.0.i.i1385, %bb.ta ], !dbg !134338
  %.sroa.0.0.i1387 = phi ptr [ %i.bgn, %bb.tb ], [ %i.bfz, %bb.ta ], !dbg !134339
  %i.bgq = icmp eq i64 %.sroa.01.0.i1382, %.sroa.01.0.i1386, !dbg !134340
  br i1 %i.bgq, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !134340

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.noexc916
  %bcmp.i = call i32 @bcmp(ptr %.sroa.0.0.i1383, ptr %.sroa.0.0.i1387, i64 %.sroa.01.0.i1382), !dbg !134341
  %i.bgr = icmp eq i32 %bcmp.i, 0, !dbg !134341
  br i1 %i.bgr, label %bb.tc, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !129962

bb.tc:                                            ; preds = %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread
  %.sroa.018.1 = phi i1 [ %.sroa.018.02950, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit ], [ true, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread ], !dbg !134342 ; 2 uses
  %i.bgs = icmp eq ptr %i.bet, %i.beo, !dbg !134268
  br i1 %i.bgs, label %._crit_edge2953.loopexit, label %bb.sj, !dbg !134269

._crit_edge2953.loopexit:                         ; preds = %bb.tc
  %i.bgt = trunc nuw i8 %.sroa.022.1 to i1, !dbg !134343
  br label %._crit_edge2953, !dbg !134344

._crit_edge2953:                                  ; preds = %._crit_edge2953.loopexit, %bb.si
  %.sroa.022.0.lcssa = phi i1 [ false, %bb.si ], [ %i.bgt, %._crit_edge2953.loopexit ], !dbg !134345
  %.sroa.018.0.lcssa = phi i1 [ false, %bb.si ], [ %.sroa.018.1, %._crit_edge2953.loopexit ], !dbg !134346 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.na), !dbg !134344
  %.val984 = load ptr, ptr %2, align 8, !dbg !134347, !nonnull !3396, !align !3497, !noundef !3396
  %i.bgu = load ptr, ptr %i.ny, align 8, !dbg !134348, !nonnull !3396, !align !3497, !noundef !3396
  %i.bgv = invoke noundef nonnull ptr @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR17schema_with_cache(i64 noundef %i.pq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val984, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bgu)
          to label %bb.td unwind label %.thread2676.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !134349 ; 5 uses

bb.td:                                            ; preds = %._crit_edge2953
  store ptr %i.bgv, ptr %i.na, align 8, !dbg !134349
  br i1 %.sroa.022.0.lcssa, label %bb.tf, label %bb.te, !dbg !134343

bb.te:                                            ; preds = %bb.tp, %bb.tf, %bb.td
  %i.bgw = phi ptr [ %.pre3125, %bb.tp ], [ %i.bgv, %bb.tf ], [ %i.bgv, %bb.td ], !dbg !134350 ; 3 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bek, i64 48, !dbg !134351
  %i.bgy = load i64, ptr %i.bgx, align 8, !dbg !134351, !noundef !3396
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgw, i64 64, !dbg !134352
  %i.bha = load i64, ptr %i.bgz, align 8, !dbg !134352, !noundef !3396
  %.not681 = icmp eq i64 %i.bgy, %i.bha, !dbg !134353
  br i1 %.not681, label %bb.tq, label %bb.tx, !dbg !134353

bb.tf:                                            ; preds = %bb.td
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bek, i64 48, !dbg !134354
  %i.bhc = load i64, ptr %i.bhb, align 8, !dbg !134354, !noundef !3396
  %i.bhd = icmp eq i64 %i.bhc, 0, !dbg !134355
  br i1 %i.bhd, label %bb.tg, label %bb.te, !dbg !134355

bb.tg:                                            ; preds = %bb.tf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mz), !dbg !134356
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgv, i64 24, !dbg !134357
  %i.bhf = load ptr, ptr %i.bhe, align 8, !dbg !134357, !nonnull !3396, !noundef !3396 ; 2 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bgv, i64 32, !dbg !134358
  %i.bhh = load i64, ptr %i.bhg, align 8, !dbg !134358, !noundef !3396
  %i.bhi = getelementptr inbounds nuw [80 x i8], ptr %i.bhf, i64 %i.bhh, !dbg !134359
  %i.bhj = invoke noundef align 8 ptr @_RINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeERB2c_EB8_(ptr noundef nonnull %i.bhf, ptr noundef nonnull %i.bhi)
          to label %bb.ti unwind label %bb.uk, !dbg !134356 ; 4 uses

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge15ProjectionStateEBQ_.exit1395: ; preds = %bb.uq, %bb.ur, %bb.uc, %bb.uk
  %.pn685 = phi { ptr, i32 } [ %i.bjv, %bb.uq ], [ %i.bjg, %bb.uk ], [ %i.bik, %bb.uc ], [ %i.bjv, %bb.ur ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130020), !dbg !134360
  call void @llvm.experimental.noalias.scope.decl(metadata !130021), !dbg !134361
  %i.bhk = load ptr, ptr %i.na, align 8, !dbg !134362, !alias.scope !130022, !nonnull !3396, !noundef !3396
  %i.bhl = atomicrmw add ptr %i.bhk, i64 -1 release, align 8, !dbg !134363, !noalias !130022
  %i.bhm = icmp eq i64 %i.bhl, 1, !dbg !134364
  br i1 %i.bhm, label %bb.th, label %.thread, !dbg !134364

bb.th:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge15ProjectionStateEBQ_.exit1395
  fence acquire, !dbg !134365
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.na) #42
          to label %.thread unwind label %bb.bj, !dbg !134366

bb.ti:                                            ; preds = %bb.tg
  %.not680 = icmp eq ptr %i.bhj, null, !dbg !134367
  br i1 %.not680, label %bb.tk, label %bb.tj, !dbg !134368

bb.tj:                                            ; preds = %bb.ti
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em), !dbg !134369
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhj, i64 23, !dbg !134370
  %i.bho = load i8, ptr %i.bhn, align 1, !dbg !134370, !range !3544, !noundef !3396
  %i.bhp = icmp eq i8 %i.bho, -40, !dbg !134371
  br i1 %i.bhp, label %bb.tm, label %bb.tn, !dbg !134371

bb.tk:                                            ; preds = %bb.ti
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.mz, i64 23, !dbg !134372
  store i8 -38, ptr %i.bhq, align 1, !dbg !134372
  br label %bb.tl, !dbg !134373

bb.tl:                                            ; preds = %bb.to, %bb.tk
  invoke fastcc void @_RINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6_8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendBO_E6extendINtNtB2z_6option6OptionBO_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64) %i.bek, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.mz)
          to label %bb.tp unwind label %bb.uk, !dbg !134374

bb.tm:                                            ; preds = %bb.tj
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bhj)
          to label %bb.to unwind label %bb.uk, !dbg !134375

bb.tn:                                            ; preds = %bb.tj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %i.bhj, i64 24, i1 false), !dbg !134376
  br label %bb.to, !dbg !134377

end_hunk_1
begin_hunk_2_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc:bb.a
  %i.q = add nuw i64 %.sroa.04.09, 1, !dbg !142631 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !142632
  %i.r = call { ptr, ptr } %.32.val(ptr noundef nonnull %0) #38, !dbg !142633 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0, !dbg !142633
  %i.t = extractvalue { ptr, ptr } %i.r, 1, !dbg !142633
  store ptr %i.s, ptr %i.b, align 8, !dbg !142633
  store ptr %i.t, ptr %i.o, align 8, !dbg !142633
  %i.u = call noundef nonnull align 8 ptr @_RNvXs2_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionWrapNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeQDINtB5_10CollectionB17_EEL_EINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutB1h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %.sroa.04.09, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @662), !dbg !142634
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !142635 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !dbg !142635, !align !3497, !noundef !3396 ; 6 uses
  store ptr null, ptr %i.v, align 8, !dbg !142636
  %.not = icmp eq ptr %i.w, null, !dbg !142637    ; 2 uses
  br i1 %.not, label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit, label %bb.c, !dbg !142638

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE5clearCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.w)
          to label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit unwind label %bb.d, !dbg !142639

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECsfcROwRM8ZtH_11polars_plan(ptr nonnull align 8 %i.w) #39
          to label %common.resume unwind label %bb.e, !dbg !142640

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !142641
  unreachable, !dbg !142641

common.resume:                                    ; preds = %bb.f, %bb.k, %bb.j, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.d ], [ %i.aa, %bb.f ], [ %i.ag, %bb.k ], [ %i.ag, %bb.j ]
  resume { ptr, i32 } %common.resume.op, !dbg !142642

_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !142643
  %i.z = invoke { ptr, ptr } %.24.val(ptr noundef nonnull %0)
          to label %bb.g unwind label %bb.j, !dbg !142644 ; 2 uses

bb.f:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store ptr %i.w, ptr %i.ae, align 8, !dbg !142643
  br label %common.resume, !dbg !142645

bb.g:                                             ; preds = %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit
  %i.ab = extractvalue { ptr, ptr } %i.z, 0, !dbg !142643
  %i.ac = extractvalue { ptr, ptr } %i.z, 1, !dbg !142643
  store ptr %i.ab, ptr %i.a, align 8, !dbg !142643
  store ptr %i.ac, ptr %i.p, align 8, !dbg !142643
  %i.ad = invoke noundef nonnull align 8 ptr @_RNvXs2_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionWrapNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeQDINtB5_10CollectionB17_EEL_EINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutB1h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %.sroa.04.09, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @663)
          to label %bb.h unwind label %bb.j, !dbg !142646

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !142643 ; 3 uses
  %.val8 = load ptr, ptr %i.ae, align 8, !dbg !142643, !align !3497, !noundef !3396 ; 2 uses
  %i.af = icmp eq ptr %.val8, null, !dbg !142647
  br i1 %i.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEECsfcROwRM8ZtH_11polars_plan.exit, label %bb.i, !dbg !142647

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %.val8)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.f, !dbg !142647

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.h, %bb.i
  store ptr %i.w, ptr %i.ae, align 8, !dbg !142643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !142648
  %exitcond.not = icmp eq i64 %i.q, %.sroa.0.0.i, !dbg !142629
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !142613

bb.j:                                             ; preds = %bb.g, %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not, label %common.resume, label %bb.k, !dbg !142649

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %i.w)
          to label %common.resume unwind label %bb.l, !dbg !142649

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !142650
  unreachable, !dbg !142650
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18small_dummy_column(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !142651 !guid !142691 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [96 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !142702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !142703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !142703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !142692
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !dbg !142704
  %i.h = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 4, 769) 16, i64 noundef range(i64 4, 129) 8) #44, !dbg !142705 ; 5 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !142706
  br i1 %i.i, label %bb.b, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !142707, !prof !3464

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #41
          to label %.noexc unwind label %.thread10, !dbg !142708

.thread10:                                        ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f, !dbg !142709

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !142708

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !142710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !142711
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !142711
  store i64 0, ptr %i.k, align 8, !dbg !142711
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !142711
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !142711
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !142711
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !142711
  store i8 30, ptr %i.c, align 8, !dbg !142711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !142693
  store i64 0, ptr %i.b, align 8, !dbg !142712
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !142712
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !dbg !142712
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !142712
  store i64 0, ptr %i.m, align 8, !dbg !142712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !142713
  store ptr null, ptr %i.a, align 8, !dbg !142713
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array7struct_NtB2_11StructArray3new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, i64 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.c unwind label %.thread, !dbg !142710

.thread:                                          ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 16, i64 noundef 8) #44, !dbg !142714
  br label %bb.f, !dbg !142709

bb.c:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !142715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !142715
  %i.o = invoke { ptr, ptr } @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow5array7struct_NtB4_11StructArray5boxed(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.d)
          to label %bb.d unwind label %.thread, !dbg !142716 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.p = extractvalue { ptr, ptr } %i.o, 0, !dbg !142710
  %i.q = extractvalue { ptr, ptr } %i.o, 1, !dbg !142710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !142717
  store ptr %i.p, ptr %i.h, align 8, !dbg !142692
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !142692
  store ptr %i.q, ptr %i.r, align 8, !dbg !142692
  store i64 1, ptr %i.e, align 8, !dbg !142718
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !142718
  store ptr %i.h, ptr %i.s, align 8, !dbg !142718
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !142718
  store i64 1, ptr %i.t, align 8, !dbg !142718
  call void @_RNvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB6_12ChunkedArrayNtNtB8_9datatypes10StructTypeE11from_chunksCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !dbg !142719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !142709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !142709
  %i.u = call { ptr, ptr } @_RNvXs2I_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_10StructTypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g), !dbg !142720 ; 2 uses
  %i.v = extractvalue { ptr, ptr } %i.u, 0, !dbg !142720
  %i.w = extractvalue { ptr, ptr } %i.u, 1, !dbg !142720
  call fastcc void @_RNvXs1_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnINtNtCscgRAwXFJnXP_4core7convert4FromNtNtB9_6series6SeriesE4from(ptr noalias noundef align 16 captures(none) dereferenceable(160) %0, ptr noundef nonnull %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(896) %i.w) #38, !dbg !142721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !142722
  ret void, !dbg !142723

bb.e:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !142724
  unreachable, !dbg !142724

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %.pn9, !dbg !142724

bb.f:                                             ; preds = %.thread10, %.thread
  %.pn9 = phi { ptr, i32 } [ %i.n, %.thread ], [ %i.j, %.thread10 ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !142725
  %i.z = load i8, ptr %i.y, align 1, !dbg !142725, !range !3544, !alias.scope !142701, !noundef !3396
  %i.aa = icmp eq i8 %i.z, -40, !dbg !142726
  br i1 %i.aa, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit, !dbg !142726, !prof !3464

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.e, !dbg !142727
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown19projection_pushdown(i64 noundef %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !142728 !guid !143030 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !143167
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143031), !dbg !143167
  %i.w = tail call noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed(), !dbg !143168, !noalias !143031
  %i.x = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !143169, !noalias !143031
  %i.y = icmp eq i8 %i.x, 2, !dbg !143170
  br i1 %i.y, label %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit, label %bb.b, !dbg !143170, !prof !3465

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #42, !dbg !143171, !noalias !143031
  br label %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit, !dbg !143171

_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32, !dbg !143172 ; 3 uses
  store i64 %i.w, ptr %i.z, align 8, !dbg !143172, !alias.scope !143031
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(32) @489, i64 32, i1 false), !dbg !143172
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !143173 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !143174 ; 7 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !143174, !noundef !3396
  %i.ad = icmp ult i64 %0, %i.ac, !dbg !143175
  br i1 %i.ad, label %bb.f, label %bb.c, !dbg !143175, !prof !3465

bb.c:                                             ; preds = %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #41
          to label %bb.e unwind label %bb.d, !dbg !143176

.body:                                            ; preds = %.body109, %bb.m, %bb.h, %bb.d
  %.pn43.pn = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.al, %bb.h ], [ %i.ae, %bb.d ], [ %.pn43, %.body109 ]
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.cq, !dbg !143177

bb.d:                                             ; preds = %bb.ch, %bb.r, %bb.q, %bb.p, %bb.j, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.cr, %bb.cp, %bb.ci, %bb.by, %bb.ao, %bb.c
  unreachable

bb.f:                                             ; preds = %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit
  %i.af = load ptr, ptr %i.aa, align 8, !dbg !143173, !nonnull !3396, !noundef !3396
  %i.ag = getelementptr inbounds nuw [368 x i8], ptr %i.af, i64 %0, !dbg !143178 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.u, ptr noundef nonnull align 16 dereferenceable(368) %i.ag, i64 368, i1 false), !dbg !143179
  store i64 -9223372036854775782, ptr %i.ag, align 16, !dbg !143180
  %i.ah = load i64, ptr %i.ab, align 8, !dbg !143181, !noundef !3396 ; 7 uses
  %i.ai = icmp ult i64 %i.ah, 25063510969714065, !dbg !143182
  tail call void @llvm.assume(i1 %i.ai), !dbg !143183
  %i.aj = load i64, ptr %1, align 8, !dbg !143184, !range !3867, !alias.scope !143048, !noundef !3396
  %i.ak = icmp eq i64 %i.ah, %i.aj, !dbg !143185
  br i1 %i.ak, label %bb.g, label %bb.j, !dbg !143185

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.j unwind label %bb.h, !dbg !143186, !noalias !143050

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef nonnull align 16 dereferenceable(368) %i.u) #39
          to label %.body unwind label %bb.i, !dbg !143187

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !143188
  unreachable, !dbg !143188

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.an = load ptr, ptr %i.aa, align 8, !dbg !143189, !alias.scope !143048, !nonnull !3396, !noundef !3396
  %i.ao = getelementptr inbounds nuw [368 x i8], ptr %i.an, i64 %i.ah, !dbg !143190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.ao, ptr noundef nonnull align 16 dereferenceable(368) %i.u, i64 368, i1 false), !dbg !143191
  %i.ap = add nuw nsw i64 %i.ah, 1, !dbg !143192
  store i64 %i.ap, ptr %i.ab, align 8, !dbg !143192, !alias.scope !143048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !143193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !143194
  %i.aq = invoke noundef nonnull ptr @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR17schema_with_cache(i64 noundef %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %bb.k unwind label %bb.d, !dbg !143195

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !143194
  store i64 %i.ah, ptr %i.ar, align 16, !dbg !143194
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !143194
  store ptr %i.aq, ptr %i.as, align 8, !dbg !143194
  store i64 -9223372036854775799, ptr %i.s, align 16, !dbg !143194
  %.val51 = load i64, ptr %i.ab, align 8, !dbg !143196, !noundef !3396
  %i.at = icmp ult i64 %0, %.val51, !dbg !143197
  br i1 %i.at, label %bb.p, label %bb.l, !dbg !143197, !prof !3465

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #41
          to label %bb.n unwind label %bb.m, !dbg !143198, !noalias !143051

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef nonnull align 16 dereferenceable(368) %i.s) #39
          to label %.body unwind label %bb.o, !dbg !143199, !noalias !143052

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !143200, !noalias !143052
  unreachable, !dbg !143200

bb.p:                                             ; preds = %bb.k
  %.val50 = load ptr, ptr %i.aa, align 8, !dbg !143196, !nonnull !3396, !noundef !3396
  %i.aw = getelementptr inbounds nuw [368 x i8], ptr %.val50, i64 %0, !dbg !143201 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.t, ptr noundef nonnull align 16 dereferenceable(368) %i.aw, i64 368, i1 false), !dbg !143202, !noalias !143053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.aw, ptr noundef nonnull align 16 dereferenceable(368) %i.s, i64 368, i1 false), !dbg !143203, !noalias !143052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !143204
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef align 16 dereferenceable(368) %i.t)
          to label %bb.q unwind label %bb.d, !dbg !143205

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !143205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !143206
  call void @llvm.experimental.noalias.scope.decl(metadata !143054), !dbg !143207
  %i.ax = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc unwind label %bb.d, !dbg !143208, !noalias !143054

.noexc:                                           ; preds = %bb.q
  %i.ay = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !143209, !noalias !143054
  %i.az = icmp eq i8 %i.ay, 2, !dbg !143210
  br i1 %i.az, label %bb.s, label %bb.r, !dbg !143210, !prof !3465

bb.r:                                             ; preds = %.noexc
  invoke void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #42
          to label %bb.s unwind label %bb.d, !dbg !143211, !noalias !143054

bb.s:                                             ; preds = %.noexc, %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 32, !dbg !143212 ; 4 uses
  store i64 %i.ax, ptr %i.ba, align 8, !dbg !143212, !alias.scope !143054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(32) @489, i64 32, i1 false), !dbg !143212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !143213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !143214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !143055
  store i64 0, ptr %i.o, align 8, !dbg !143215
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !143215
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.413.0..sroa_idx, align 8, !dbg !143215
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !143215
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8, !dbg !143215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !143056
  store i64 0, ptr %i.n, align 8, !dbg !143216
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !143216
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.416.0..sroa_idx, align 8, !dbg !143216
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !143216
  store i64 0, ptr %.sroa.517.0..sroa_idx, align 8, !dbg !143216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !143057
  %i.bb = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %bb.u unwind label %bb.t, !dbg !143217

.body102:                                         ; preds = %bb.bo, %bb.bp, %bb.t, %.body94
  %.pn39 = phi { ptr, i32 } [ %.pn37, %.body94 ], [ %i.bc, %bb.t ], [ %i.dk, %bb.bp ], [ %i.dj, %bb.bo ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_(ptr noalias noundef align 8 dereferenceable(24) %i.n) #39
          to label %.body106 unwind label %bb.cq, !dbg !143218

bb.t:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i101, %bb.v, %bb.s
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body102

bb.u:                                             ; preds = %bb.s
  %i.bd = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !143219
  %i.be = icmp eq i8 %i.bd, 2, !dbg !143220
  br i1 %i.be, label %bb.w, label %bb.v, !dbg !143220, !prof !3465

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow()
          to label %bb.w unwind label %bb.t, !dbg !143221

bb.w:                                             ; preds = %bb.u, %bb.v
  store i64 0, ptr %i.m, align 8, !dbg !143058
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !143058
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4142.0..sroa_idx, align 8, !dbg !143058
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !143058
  store i64 0, ptr %.sroa.5143.0..sroa_idx, align 8, !dbg !143058
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !143058 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6144.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @489, i64 32, i1 false), !dbg !143058
  %.sroa.7145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !143058 ; 2 uses
  store i64 %i.bb, ptr %.sroa.7145.0..sroa_idx, align 8, !dbg !143058
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown19projection_pushdown:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !143218
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6154.0..sroa_idx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7155.0..sroa_idx, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i92 unwind label %bb.bk, !dbg !143268

bb.bk:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l) #39
          to label %.body94 unwind label %bb.bn, !dbg !143269

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i92: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i93 unwind label %bb.bl, !dbg !143270

bb.bl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i92
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %.body94 unwind label %bb.bm, !dbg !143271

bb.bm:                                            ; preds = %bb.bl
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !143270
  unreachable, !dbg !143270

bb.bn:                                            ; preds = %bb.bk
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !143269
  unreachable, !dbg !143269

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i93: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i92
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit97 unwind label %bb.x, !dbg !143272

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit97: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !143218
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6144.0..sroa_idx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7145.0..sroa_idx, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i100 unwind label %bb.bo, !dbg !143273

bb.bo:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit97
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m) #39
          to label %.body102 unwind label %bb.br, !dbg !143274

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i100: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit97
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i101 unwind label %bb.bp, !dbg !143275

bb.bp:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i100
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.body102 unwind label %bb.bq, !dbg !143276

bb.bq:                                            ; preds = %bb.bp
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !143275
  unreachable, !dbg !143275

bb.br:                                            ; preds = %bb.bo
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !143274
  unreachable, !dbg !143274

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i101: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i100
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit105 unwind label %bb.t, !dbg !143277

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit105: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !143218
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1l_.exit.i unwind label %bb.bs, !dbg !143278

bb.bs:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit105
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body106 unwind label %bb.bt, !dbg !143279

bb.bt:                                            ; preds = %bb.bs
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !143278
  unreachable, !dbg !143278

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1l_.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit105
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_.exit unwind label %bb.bu, !dbg !143280

.body106:                                         ; preds = %bb.bu, %bb.bs, %.body102
  %.pn41 = phi { ptr, i32 } [ %.pn39, %.body102 ], [ %i.dp, %bb.bu ], [ %i.dn, %bb.bs ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.o) #39
          to label %.body109 unwind label %bb.cq, !dbg !143218

bb.bu:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1l_.exit.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body106

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1l_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !143218
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.bv, !dbg !143281

bb.bv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body109 unwind label %bb.bw, !dbg !143282

bb.bw:                                            ; preds = %bb.bv
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !143281
  unreachable, !dbg !143281

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_.exit
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bx, !dbg !143283

.body109:                                         ; preds = %bb.bx, %bb.bv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit, %.body106
  %.pn43 = phi { ptr, i32 } [ %lpad.loopexit.split-lp202, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.pn41, %.body106 ], [ %i.ds, %bb.bx ], [ %i.dq, %bb.bv ]
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtB1h_5arena4NodeENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef 24, i64 noundef 16)
          to label %.body unwind label %bb.cq, !dbg !143284

bb.bx:                                            ; preds = %.invoke, %._crit_edge, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit.i, %bb.cr, %bb.ce, %bb.cb, %bb.ca, %bb.by
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body109

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !143218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !143218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !143285
  %i.dt = load i64, ptr %i.ab, align 8, !dbg !143286, !noundef !3396
  %i.du = icmp ult i64 %0, %i.dt, !dbg !143287
  br i1 %i.du, label %bb.bz, label %bb.by, !dbg !143287, !prof !3465

bb.by:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #41
          to label %bb.e unwind label %bb.bx, !dbg !143288

bb.bz:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit
  %i.dv = load ptr, ptr %i.aa, align 8, !dbg !143289, !nonnull !3396, !noundef !3396
  %i.dw = getelementptr inbounds nuw [368 x i8], ptr %i.dv, i64 %0, !dbg !143290 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.f, ptr noundef nonnull align 16 dereferenceable(368) %i.dw, i64 368, i1 false), !dbg !143291
  store i64 -9223372036854775782, ptr %i.dw, align 16, !dbg !143292
  %i.dx = load i64, ptr %i.f, align 16, !dbg !143285, !range !3903, !noundef !3396 ; 2 uses
  %i.dy = icmp ne i64 %i.dx, -9223372036854775786, !dbg !143285
  call void @llvm.assume(i1 %i.dy), !dbg !143285
  %i.dz = icmp eq i64 %i.dx, -9223372036854775799, !dbg !143293
  br i1 %i.dz, label %bb.ca, label %bb.cb, !dbg !143293

bb.ca:                                            ; preds = %bb.bz
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !143294
  %i.eb = load i64, ptr %i.ea, align 16, !dbg !143294, !noundef !3396 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef align 16 dereferenceable(368) %i.f)
          to label %bb.cc unwind label %bb.bx, !dbg !143295

bb.cb:                                            ; preds = %bb.bz
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef align 16 dereferenceable(368) %i.f)
          to label %bb.cr unwind label %bb.bx, !dbg !143295

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !143295
  %.val55 = load ptr, ptr %i.aa, align 8, !dbg !143296, !nonnull !3396, !noundef !3396 ; 2 uses
  %.val56 = load i64, ptr %i.ab, align 8, !dbg !143296, !noundef !3396 ; 3 uses
  %i.ec = icmp ult i64 %0, %.val56, !dbg !143297
  br i1 %i.ec, label %bb.cd, label %.invoke, !dbg !143297

bb.cd:                                            ; preds = %bb.cc
  %i.ed = icmp ult i64 %i.eb, %.val56, !dbg !143298
  br i1 %i.ed, label %bb.ce, label %.invoke, !dbg !143298

.invoke:                                          ; preds = %bb.cd, %bb.cc
  %i.ee = phi i64 [ %0, %bb.cc ], [ %i.eb, %bb.cd ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ee, i64 noundef %.val56, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @443) #43
          to label %.cont unwind label %bb.bx, !dbg !143299

.cont:                                            ; preds = %.invoke
  unreachable

bb.ce:                                            ; preds = %bb.cd
  %i.ef = getelementptr inbounds nuw [368 x i8], ptr %.val55, i64 %0, !dbg !143300 ; 2 uses
  %i.eg = getelementptr inbounds nuw [368 x i8], ptr %.val55, i64 %i.eb, !dbg !143301 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !143302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.c, ptr noundef nonnull align 16 dereferenceable(368) %i.ef, i64 368, i1 false), !dbg !143303
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.ef, ptr noundef nonnull align 16 dereferenceable(368) %i.eg, i64 368, i1 false), !dbg !143304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.eg, ptr noundef nonnull align 16 dereferenceable(368) %i.c, i64 368, i1 false), !dbg !143305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !143306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !143307
  store ptr %1, ptr %i.d, align 8, !dbg !143308
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !143308
  store i64 %0, ptr %.sroa.4128.0..sroa_idx, align 8, !dbg !143308
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !143308
  store i64 4294967297, ptr %.sroa.5129.0..sroa_idx, align 8, !dbg !143308
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator7AlpIterNCNvNtNtB3j_9optimizer19projection_pushdown19projection_pushdowns_0EE9from_iterB3l_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.cf unwind label %bb.bx, !dbg !143309

bb.cf:                                            ; preds = %bb.ce
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !143135
  %i.ei = load ptr, ptr %i.eh, align 8, !dbg !143135, !nonnull !3396, !noundef !3396 ; 4 uses
  %i.ej = load i64, ptr %i.e, align 8, !dbg !143135, !range !3867, !noundef !3396 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !143135
  %i.el = load i64, ptr %i.ek, align 8, !dbg !143135, !noundef !3396 ; 3 uses
  %i.em = icmp ult i64 %i.el, 1152921504606846976, !dbg !143310
  call void @llvm.assume(i1 %i.em), !dbg !143311
  %.idx = shl nuw nsw i64 %i.el, 3, !dbg !143312
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx, !dbg !143312
  %i.eo = icmp eq i64 %i.el, 0, !dbg !143313
  br i1 %i.eo, label %._crit_edge, label %.lr.ph, !dbg !143314

.lr.ph:                                           ; preds = %bb.cf
  %i.ep = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %bb.cg, !dbg !143314

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cl, %bb.cp, %bb.ci
  %lpad.loopexit.split-lp202 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !143315, !noalias !143138
  store i64 %i.ej, ptr %i.b, align 8, !dbg !143316, !noalias !143138
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !143316
  store ptr %i.ei, ptr %i.er, align 8, !dbg !143316, !noalias !143138
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.cq, !dbg !143317, !noalias !143138

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !143318, !noalias !143138
  br label %.body109, !dbg !143319

bb.cg:                                            ; preds = %.lr.ph, %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread
  %.sroa.5132.0192 = phi ptr [ %i.ei, %.lr.ph ], [ %i.es, %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.5132.0192, i64 8, !dbg !143320 ; 2 uses
  %i.et = load i64, ptr %.sroa.5132.0192, align 8, !dbg !143321, !noalias !143139, !noundef !3396 ; 2 uses
  %i.eu = load i64, ptr %i.ab, align 8, !dbg !143322, !noundef !3396
  %i.ev = icmp ult i64 %i.et, %i.eu, !dbg !143323
  br i1 %i.ev, label %bb.cj, label %bb.ci, !dbg !143323, !prof !3465

._crit_edge:                                      ; preds = %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !143324, !noalias !143148
  store i64 %i.ej, ptr %i.a, align 8, !dbg !143325, !noalias !143148
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !143325
  store ptr %i.ei, ptr %i.ew, align 8, !dbg !143325, !noalias !143148
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.ch unwind label %bb.bx, !dbg !143326, !noalias !143148

bb.ch:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !143327, !noalias !143148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !143328
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtB1h_5arena4NodeENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef 24, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtB1p_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit119 unwind label %bb.d, !dbg !143329

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtB1p_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit119: ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !143330
  call void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 16, i64 noundef 16), !dbg !143331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !143332
  ret void, !dbg !143333

bb.ci:                                            ; preds = %bb.cg
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #41
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !143334

bb.cj:                                            ; preds = %bb.cg
  %i.ex = load ptr, ptr %i.aa, align 8, !dbg !143335, !nonnull !3396, !noundef !3396
  %i.ey = getelementptr inbounds nuw [368 x i8], ptr %i.ex, i64 %i.et, !dbg !143336 ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 16, !dbg !143337, !range !3903, !noundef !3396 ; 2 uses
  %i.fa = icmp ne i64 %i.ez, -9223372036854775786, !dbg !143337
  call void @llvm.assume(i1 %i.fa), !dbg !143337
  %i.fb = icmp eq i64 %i.ez, -9223372036854775796, !dbg !143338
  br i1 %i.fb, label %bb.ck, label %bb.cp, !dbg !143338, !prof !3465

bb.ck:                                            ; preds = %bb.cj
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8, !dbg !143339 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143158), !dbg !143340
  call void @llvm.experimental.noalias.scope.decl(metadata !143159), !dbg !143340
  %i.fd = load i64, ptr %i.ep, align 8, !dbg !143341, !alias.scope !143158, !noundef !3396
  %i.fe = icmp eq i64 %i.fd, 0, !dbg !143342
  br i1 %i.fe, label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread, label %bb.cl, !dbg !143342

bb.cl:                                            ; preds = %bb.ck
  %i.ff = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.fc)
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !143343 ; 2 uses

.noexc122:                                        ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !143160), !dbg !143344
  call void @llvm.experimental.noalias.scope.decl(metadata !143161), !dbg !143344
  call void @llvm.experimental.noalias.scope.decl(metadata !143162), !dbg !143345
  %i.fg = lshr i64 %i.ff, 57, !dbg !143346
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !143347
  %i.fi = load i64, ptr %i.eq, align 8, !dbg !143348, !alias.scope !143163, !noundef !3396 ; 2 uses
  %i.fj = load ptr, ptr %i.r, align 8, !alias.scope !143163, !nonnull !3396, !noundef !3396 ; 2 uses
  %i.fk = insertelement <16 x i8> poison, i8 %i.fh, i64 0
  %i.fl = shufflevector <16 x i8> %i.fk, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i = load i128, ptr %i.fc, align 8, !alias.scope !143164
  br label %bb.cm, !dbg !143349

bb.cm:                                            ; preds = %bb.co, %.noexc122
  %.sroa.011.0.i.i.i = phi i64 [ 0, %.noexc122 ], [ %i.gc, %bb.co ], !dbg !143350
  %.pn.i.i.i = phi i64 [ %i.ff, %.noexc122 ], [ %i.gd, %bb.co ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.fi, !dbg !143350 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.sroa.01.0.i.i.i, !dbg !143351
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.fm, align 1, !dbg !143352, !noalias !143165 ; 2 uses
  %i.fn = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.fl, !dbg !143353
  %i.fo = bitcast <16 x i1> %i.fn to i16, !dbg !143354 ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.fo, 0, !dbg !143355
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !143356

.lr.ph.i.i:                                       ; preds = %bb.cm, %bb.cn
  %.sroa.05.0.i33.i.i = phi i16 [ %i.gb, %bb.cn ], [ %i.fo, %bb.cm ] ; 3 uses
  %i.fp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i, i1 true), !dbg !143357
  %i.fq = zext nneg i16 %i.fp to i64, !dbg !143358
  %i.fr = add i64 %.sroa.01.0.i.i.i, %i.fq, !dbg !143359
  %i.fs = and i64 %i.fr, %i.fi, !dbg !143359
  %i.ft = sub nsw i64 0, %i.fs, !dbg !143360
  %i.fu = getelementptr inbounds [24 x i8], ptr %i.fj, i64 %i.ft, !dbg !143361 ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -24, !dbg !143362
  %.val2.i.i.i = load i128, ptr %i.fv, align 1, !dbg !143363, !noalias !143166
  %i.fw = icmp eq i128 %.val.i.i.i.i, %.val2.i.i.i, !dbg !143364
  br i1 %i.fw, label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.cn, !dbg !143365, !prof !3465

._crit_edge.i.i:                                  ; preds = %bb.cn, %bb.cm
  %i.fx = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1), !dbg !143366
  %i.fy = bitcast <16 x i1> %i.fx to i16, !dbg !143367
  %i.fz = icmp eq i16 %i.fy, 0, !dbg !143368
  br i1 %i.fz, label %bb.co, label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !143368, !prof !3464

bb.cn:                                            ; preds = %.lr.ph.i.i
  %i.ga = add i16 %.sroa.05.0.i33.i.i, -1, !dbg !143369
  %i.gb = and i16 %i.ga, %.sroa.05.0.i33.i.i, !dbg !143370 ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.gb, 0, !dbg !143355
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !143356

bb.co:                                            ; preds = %._crit_edge.i.i
  %i.gc = add i64 %.sroa.011.0.i.i.i, 16, !dbg !143371 ; 2 uses
  %i.gd = add i64 %.sroa.01.0.i.i.i, %i.gc, !dbg !143372
  br label %bb.cm, !dbg !143349

bb.cp:                                            ; preds = %bb.cj
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @666) #41
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !143373

_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.lr.ph.i.i
  %i.ge = getelementptr inbounds i8, ptr %i.fu, i64 -8, !dbg !143374
  %i.gf = load i64, ptr %i.ge, align 8, !dbg !143375, !noundef !3396
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ey, i64 24, !dbg !143376
  store i64 %i.gf, ptr %i.gg, align 8, !dbg !143376
  br label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !143377

_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %._crit_edge.i.i, %bb.ck, %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit
  %i.gh = icmp eq ptr %i.es, %i.en, !dbg !143313
  br i1 %i.gh, label %._crit_edge, label %bb.cg, !dbg !143314

bb.cq:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body109, %bb.aw, %.body, %.body106, %.body84, %.body72, %bb.ak, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown25ProjectionPushdownVisitorEBO_.exit, %.body81, %.body87, %.body94, %.body102
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !143378
  unreachable, !dbg !143378

bb.cr:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !143295
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @667) #41
          to label %bb.e unwind label %bb.bx, !dbg !143379

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.body
  resume { ptr, i32 } %.pn43.pn, !dbg !143378
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 16 ptr @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown23extract_select_len_expr(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(368) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val) unnamed_addr #0 !dbg !143380 !guid !143396 {
bb.a:
  %i.a = load i64, ptr %0, align 16, !dbg !143411, !range !3903, !noundef !3396 ; 2 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775786, !dbg !143411
  tail call void @llvm.assume(i1 %i.b), !dbg !143411
  %i.c = icmp eq i64 %i.a, -9223372036854775798, !dbg !143412
  br i1 %i.c, label %bb.b, label %bb.f, !dbg !143412

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !143413
  %i.e = load i64, ptr %i.d, align 8, !dbg !143413, !noundef !3396 ; 2 uses
  %i.f = icmp ult i64 %i.e, 82351536043346213, !dbg !143414
  tail call void @llvm.assume(i1 %i.f), !dbg !143415
  %i.g = icmp eq i64 %i.e, 1, !dbg !143416
  br i1 %i.g, label %bb.c, label %bb.f, !dbg !143416

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !143417
  %i.i = load ptr, ptr %i.h, align 16, !dbg !143417, !nonnull !3396, !noundef !3396 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96, !dbg !143418
  %i.k = load i64, ptr %i.j, align 16, !dbg !143418, !noundef !3396 ; 2 uses
  %i.l = icmp ult i64 %i.k, %.16.val, !dbg !143419
  br i1 %i.l, label %bb.e, label %bb.d, !dbg !143419, !prof !3465

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #43, !dbg !143420
  unreachable, !dbg !143420
end_hunk_3
