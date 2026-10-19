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
  %i.ja = alloca [64 x i8], align 8               ; 6 uses
  %i.jb = alloca [24 x i8], align 8               ; 7 uses
  %i.jc = alloca [64 x i8], align 8               ; 6 uses
  %i.jd = alloca [72 x i8], align 8               ; 4 uses
  %i.je = alloca [40 x i8], align 8               ; 9 uses
  %i.jf = alloca [40 x i8], align 8               ; 2 uses
  %i.jg = alloca [64 x i8], align 8               ; 5 uses
  %i.jh = alloca [64 x i8], align 8               ; 6 uses
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
  %i.nq = getelementptr inbounds nuw i8, ptr %4, i64 24, !dbg !129246
  %i.nr = load ptr, ptr %i.nq, align 8, !dbg !129246, !invariant.load !3394 ; 25 uses
  %i.ns = tail call { ptr, ptr } %i.nr(ptr noundef nonnull %3) #38, !dbg !129247 ; 2 uses
  %i.nt = extractvalue { ptr, ptr } %i.ns, 0, !dbg !129247
  %i.nu = extractvalue { ptr, ptr } %i.ns, 1, !dbg !129247
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 32, !dbg !129246
  %i.nw = load ptr, ptr %i.nv, align 8, !dbg !129246, !invariant.load !3394, !nonnull !3394
  %i.nx = tail call noundef i64 %i.nw(ptr noundef %i.nt) #38, !dbg !129248 ; 4 uses
  store i64 %i.nx, ptr %i.np, align 8, !dbg !129248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.no), !dbg !129249
  %.val986 = load ptr, ptr %2, align 8, !dbg !129250, !nonnull !3394, !align !3446, !noundef !3394 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !129251 ; 10 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !dbg !129251, !nonnull !3394, !align !3446, !noundef !3394
  %i.oa = tail call noundef nonnull ptr @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR17schema_with_cache(i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val986, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.nz), !dbg !129252
  store ptr %i.oa, ptr %i.no, align 8, !dbg !129252
  %i.ob = getelementptr inbounds nuw i8, ptr %.val986, i64 16, !dbg !129253
  %i.oc = load i64, ptr %i.ob, align 8, !dbg !129253, !noundef !3394
  %i.od = icmp ult i64 %1, %i.oc, !dbg !129254
  br i1 %i.od, label %bb.b, label %.invoke3350, !dbg !129254, !prof !3464

.thread2102.loopexit:                             ; preds = %bb.sl, %_RINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB2y_8adapters3map3MapINtNtB3D_6cloned6ClonedIB3z_INtNtB3D_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB2A_6option6OptionNtNtB4V_7expr_ir10ColumnNodeEFTNtNtBS_5arena4NodeRNtNtB4V_5aexpr5AExprEEB5N_ENCNvNtB4X_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtB8_3setINtB8h_8IndexSetBO_B1E_EIB2s_BO_E6extendB40_E0EEB4X_.exit.i1368, %bb.sv, %bb.sy
  %lpad.loopexit2715 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread2102.loopexit.split-lp.loopexit:           ; preds = %bb.rc
  %lpad.loopexit2719 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i
  %lpad.loopexit2722 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.pw
  %lpad.loopexit2725 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bir, %bb.biu
  %lpad.loopexit2795 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke3348.invoke, %.thread2223.invoke.invoke, %.invoke3356, %.invoke3354, %.invoke3352, %.invoke3350, %.invoke3349, %.invoke, %bb.ayc, %bb.baw, %bb.aye, %bb.bbe, %bb.baz, %bb.axv, %bb.ayh, %bb.atw, %bb.aub, %bb.aue, %bb.auf, %bb.auh, %bb.auj, %bb.bcm, %bb.aul, %bb.aun, %bb.aut, %bb.auc, %bb.avh, %bb.bbm, %bb.bba, %_RNvMs_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB4_10FunctionIR19allow_projection_pd.exit.thread, %bb.ayp, %bb.ays, %bb.ayt, %bb.ayv, %bb.baf, %bb.ayq, %bb.baj, %bb.v, %bb.ate, %bb.atg, %bb.bax, %bb.atj, %bb.atk, %bb.atm, %bb.bau, %bb.ath, %bb.ato, %bb.s, %bb.bhk, %bb.bgn, %bb.amc, %bb.bct, %bb.amf, %bb.ami, %bb.axu, %bb.aml, %bb.amm, %bb.amo, %bb.amj, %bb.amx, %bb.amg, %bb.bcv, %bb.bcx, %bb.ane, %bb.bcs, %bb.bfs, %bb.bco, %bb.abf, %bb.ajy, %bb.yg, %bb.bcq, %bb.yh, %bb.aap, %_RINvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IR16get_disjoint_mutjKj2_EBB_.exit.thread.i1835, %bb.o, %bb.wf, %bb.atz, %bb.bs, %bb.uy, %bb.bhy, %bb.vb, %bb.vc, %bb.ve, %bb.uz, %bb.vz, %bb.n, %bb.bja, %bb.x, %.loopexit2728.a, %bb.qd, %bb.ql, %bb.qm, %bb.qo, %bb.e, %bb.qw, %bb.d, %bb.qc, %bb.bho, %bb.rp, %bb.bat, %bb.rs, %bb.rt, %bb.rv, %bb.rx, %bb.sj, %bb.bhr, %bb.bhu, %bb.bhv, %bb.axx, %bb.bhp, %bb.bhs, %._crit_edge2946, %bb.tx, %bb.w, %bb.m, %bb.pk, %bb.pp, %bb.pq, %bb.pr, %bb.pj, %bb.pl, %bb.pm, %bb.pn, %bb.bik, %bb.l, %bb.aya, %bb.ne, %bb.nh, %bb.nk, %bb.nl, %bb.nn, %bb.no, %bb.ni, %bb.ok, %bb.oq, %._crit_edge3050.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit1344, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECsfcROwRM8ZtH_11polars_plan.exit1346, %bb.ph, %bb.g, %bb.bt, %bb.y, %bb.bv, %bb.bij, %bb.axy, %bb.by, %bb.bim, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.bin, %bb.ca, %bb.ck, %bb.cn, %bb.co, %bb.cq, %_RINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB2y_8adapters3map3MapINtNtB3D_6cloned6ClonedIB3z_INtNtB3D_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB2A_6option6OptionNtNtB4V_7expr_ir10ColumnNodeEFTNtNtBS_5arena4NodeRNtNtB4V_5aexpr5AExprEEB5N_ENCNvNtB4X_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtB8_3setINtB8h_8IndexSetBO_B1E_EIB2s_BO_E6extendB40_E0EEB4X_.exit.i, %bb.cl, %bb.cx, %bb.k, %bb.aa, %bb.ad, %bb.ae, %bb.ai, %bb.aj, %bb.al, %bb.an, %bb.am, %bb.bb, %bb.ab, %bb.bm
  %lpad.loopexit.split-lp2796 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.invoke3350:                                      ; preds = %bb.sw, %bb.bft, %bb.auu, %bb.rl, %bb.qx, %bb.bx, %bb.ri, %bb.h, %bb.and, %bb.a
  %i.oe = phi ptr [ @440, %bb.h ], [ @30, %bb.rl ], [ @618, %bb.bft ], [ @600, %bb.auu ], [ @30, %bb.a ], [ @440, %bb.bx ], [ @556, %bb.qx ], [ @440, %bb.ri ], [ @440, %bb.and ], [ @30, %bb.sw ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oe) #41
          to label %.cont3351 unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129255

.cont3351:                                        ; preds = %.invoke3350
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.of = getelementptr inbounds nuw i8, ptr %.val986, i64 8, !dbg !129256
  %i.og = load ptr, ptr %i.of, align 8, !dbg !129256, !nonnull !3394, !noundef !3394
  %i.oh = getelementptr inbounds nuw [368 x i8], ptr %i.og, i64 %1, !dbg !129257
  %i.oi = load i64, ptr %i.oh, align 16, !dbg !129258, !range !3901, !noundef !3394 ; 2 uses
  %i.oj = icmp ne i64 %i.oi, -9223372036854775786, !dbg !129258
  tail call void @llvm.assume(i1 %i.oj), !dbg !129258
  %i.ok = icmp eq i64 %i.oi, -9223372036854775796, !dbg !129259
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !dbg !129255, !invariant.load !3394 ; 26 uses
  br i1 %i.ok, label %._crit_edge3050.a, label %bb.d, !dbg !129259

bb.c:                                             ; preds = %bb.bgs, %bb.bgp, %bb.bgk, %bb.bgg, %bb.bga, %bb.bdf, %bb.bdc, %bb.bcx, %bb.bby, %bb.bbv, %bb.azc, %bb.ayz, %bb.axf, %bb.awg, %bb.awd, %bb.ans, %bb.anp, %bb.anh, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfcROwRM8ZtH_11polars_plan.exit1656.thread, %bb.alt, %bb.akr, %bb.aju, %bb.ajq, %bb.aji, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfcROwRM8ZtH_11polars_plan.exit.thread, %bb.aia, %bb.abp, %bb.abm, %bb.wy, %bb.up, %bb.ul, %bb.sb, %bb.kp, %bb.kd, %bb.jf, %bb.hr, %.critedge, %bb.di, %bb.ba
  unreachable

._crit_edge3050.a:                                ; preds = %bb.b, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nm), !dbg !129260
  %i.ol = invoke { ptr, ptr } %.pre(ptr noundef nonnull %3)
          to label %bb.g unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129261 ; 2 uses

bb.d:                                             ; preds = %bb.b
  %i.om = invoke { ptr, ptr } %.pre(ptr noundef nonnull %3)
          to label %bb.e unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129262 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.on = extractvalue { ptr, ptr } %i.om, 0, !dbg !129263
  %i.oo = extractvalue { ptr, ptr } %i.om, 1, !dbg !129263
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 32, !dbg !129263
  %i.oq = load ptr, ptr %i.op, align 8, !dbg !129263, !invariant.load !3394, !nonnull !3394
  %i.or = invoke noundef i64 %i.oq(ptr noundef %i.on)
          to label %bb.f unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129264 ; 2 uses

bb.f:                                             ; preds = %bb.e
  store i64 %i.or, ptr %i.nn, align 8, !dbg !129263
  %i.os = icmp eq i64 %i.or, 1, !dbg !129265
  br i1 %i.os, label %._crit_edge3050.a, label %.invoke3354, !dbg !129265, !prof !3464

bb.g:                                             ; preds = %._crit_edge3050.a
  %i.ot = extractvalue { ptr, ptr } %i.ol, 0, !dbg !129260
  %i.ou = extractvalue { ptr, ptr } %i.ol, 1, !dbg !129260
  store ptr %i.ot, ptr %i.nm, align 8, !dbg !129260
  %i.ov = getelementptr inbounds nuw i8, ptr %i.nm, i64 8, !dbg !129260
  store ptr %i.ou, ptr %i.ov, align 8, !dbg !129260
  %i.ow = invoke noundef nonnull align 8 ptr @_RNvXs2_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionWrapNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeQDINtB5_10CollectionB17_EEL_EINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutB1h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.nm, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @543)
          to label %bb.h unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129266 ; 129 uses

bb.h:                                             ; preds = %bb.g
  %.val1051 = load ptr, ptr %2, align 8, !dbg !129267, !nonnull !3394, !align !3446, !noundef !3394 ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.val1051, i64 16, !dbg !129268
  %i.oy = load i64, ptr %i.ox, align 8, !dbg !129268, !noundef !3394 ; 5 uses
  %i.oz = icmp ult i64 %1, %i.oy, !dbg !129269
  br i1 %i.oz, label %bb.i, label %.invoke3350, !dbg !129269, !prof !3464

bb.i:                                             ; preds = %bb.h
  %i.pa = getelementptr inbounds nuw i8, ptr %.val1051, i64 8, !dbg !129270
  %i.pb = load ptr, ptr %i.pa, align 8, !dbg !129270, !nonnull !3394, !noundef !3394 ; 5 uses
  %i.pc = getelementptr inbounds nuw [368 x i8], ptr %i.pb, i64 %1, !dbg !129271 ; 51 uses
  %i.pd = load i64, ptr %i.pc, align 16, !dbg !129267, !range !3901, !noundef !3394 ; 3 uses
  %i.pe = icmp ne i64 %i.pd, -9223372036854775786, !dbg !129267
  call void @llvm.assume(i1 %i.pe), !dbg !129267
  %i.pf = add nsw i64 %i.pd, 9223372036854775804, !dbg !129267
  %i.pg = icmp ugt i64 %i.pd, -9223372036854775805, !dbg !129267
  %i.ph = select i1 %i.pg, i64 %i.pf, i64 18, !dbg !129267
  switch i64 %i.ph, label %bb.j [
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
    i64 16, label %bb.bco
    i64 17, label %bb.w
    i64 18, label %bb.x
    i64 19, label %bb.x
    i64 20, label %bb.y
    i64 21, label %bb.bji
    i64 22, label %.invoke
  ], !dbg !129272, !prof !4463

default.unreachable3256:                          ; preds = %bb.akl, %bb.zl, %bb.px, %bb.vg, %bb.pi
  unreachable

bb.j:                                             ; preds = %bb.i
  unreachable, !dbg !129273

bb.k:                                             ; preds = %bb.i
  %i.pi = load ptr, ptr %i.no, align 8, !dbg !129274, !nonnull !3394, !noundef !3394
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 16, !dbg !129275
  %i.pk = invoke noundef align 8 ptr @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState30compute_projected_names_subsetBc_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ow, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.pj)
          to label %bb.z unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129276

bb.l:                                             ; preds = %bb.i
  %i.pl = invoke noundef i8 @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState10projectionBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ow)
          to label %bb.nd unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129277

bb.m:                                             ; preds = %bb.i
  %i.pm = invoke noundef i8 @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState10projectionBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ow)
          to label %bb.pi unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129278

bb.n:                                             ; preds = %bb.i
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pc, i64 40, !dbg !129279
  %i.po = load i64, ptr %i.pn, align 8, !dbg !129279, !noundef !3394 ; 4 uses
  %i.pp = invoke noundef i8 @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState10projectionBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ow)
          to label %bb.pu unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129280

bb.o:                                             ; preds = %bb.i
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pc, i64 24, !dbg !129281
  %i.pr = load i64, ptr %i.pq, align 8, !dbg !129281, !noundef !3394
  %i.ps = invoke { ptr, ptr } %.pre(ptr noundef nonnull %3)
          to label %bb.wf unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !129282 ; 2 uses

bb.p:                                             ; preds = %bb.i
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pc, i64 8, !dbg !129267
  %i.pu = load i64, ptr %i.pt, align 8, !dbg !129267, !range !3524, !noundef !3394
  %i.pv = trunc nuw i64 %i.pu to i1, !dbg !129272
  br i1 %i.pv, label %bb.abe, label %bb.yg, !dbg !129272

bb.q:                                             ; preds = %bb.i
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdownNtB4_25ProjectionPushdownVisitor8pushdown:bb.a

bb.rk:                                            ; preds = %bb.rj
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bbx, i64 24, !dbg !130475 ; 5 uses
  %i.bcc = load i64, ptr %i.bcb, align 8, !dbg !130475, !noundef !3394 ; 2 uses
  %i.bcd = icmp ult i64 %i.bcc, 82351536043346213, !dbg !130476
  call void @llvm.assume(i1 %i.bcd), !dbg !130477
  %i.bce = icmp eq i64 %i.bcc, 1, !dbg !130478
  br i1 %i.bce, label %bb.rl, label %bb.sj, !dbg !130478

bb.rl:                                            ; preds = %bb.rk
  %i.bcf = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !130479 ; 2 uses
  %i.bcg = load ptr, ptr %i.bcf, align 8, !dbg !130479, !nonnull !3394, !align !3446, !noundef !3394 ; 3 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bbx, i64 16, !dbg !130480 ; 4 uses
  %i.bci = load ptr, ptr %i.bch, align 16, !dbg !130480, !nonnull !3394, !noundef !3394
  %i.bcj = getelementptr i8, ptr %i.bci, i64 96, !dbg !130481
  %.val939 = load i64, ptr %i.bcj, align 16, !dbg !130481, !noundef !3394 ; 2 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcg, i64 16, !dbg !130482
  %i.bcl = load i64, ptr %i.bck, align 8, !dbg !130482, !noundef !3394
  %i.bcm = icmp ult i64 %.val939, %i.bcl, !dbg !130483
  br i1 %i.bcm, label %bb.rm, label %.invoke3350, !dbg !130483, !prof !3464

bb.rm:                                            ; preds = %bb.rl
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcg, i64 8, !dbg !130484
  %i.bco = load ptr, ptr %i.bcn, align 8, !dbg !130484, !nonnull !3394, !noundef !3394
  %i.bcp = getelementptr inbounds nuw [144 x i8], ptr %i.bco, i64 %.val939, !dbg !130485 ; 4 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcp, i64 112, !dbg !130479
  %i.bcr = load i64, ptr %i.bcq, align 16, !dbg !130479, !range !3903, !noundef !3394 ; 3 uses
  %i.bcs = icmp ne i64 %i.bcr, -9223372036854775791, !dbg !130479
  call void @llvm.assume(i1 %i.bcs), !dbg !130479
  %i.bct = xor i64 %i.bcr, -9223372036854775808, !dbg !130479
  %i.bcu = icmp slt i64 %i.bcr, 0, !dbg !130479
  %i.bcv = select i1 %i.bcu, i64 %i.bct, i64 17, !dbg !130479
  switch i64 %i.bcv, label %bb.sj [
    i64 11, label %bb.rn
    i64 21, label %.thread3261
  ], !dbg !130486

.thread3261:                                      ; preds = %bb.rm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ne), !dbg !130487
  br label %bb.rv, !dbg !130488

bb.rn:                                            ; preds = %bb.rm
  %i.bcw = load i8, ptr %i.bcp, align 16, !dbg !130479, !range !3896, !noundef !3394
  %i.bcx = icmp eq i8 %i.bcw, 12, !dbg !130486
  br i1 %i.bcx, label %bb.ro, label %bb.sj, !dbg !130486

bb.ro:                                            ; preds = %bb.rn
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcp, i64 1, !dbg !130486
  %i.bcz = load i8, ptr %i.bcy, align 1, !dbg !130486, !range !3721, !noundef !3394
  %i.bda = trunc nuw i8 %i.bcz to i1, !dbg !130486
  br i1 %i.bda, label %bb.rp, label %bb.sj, !dbg !130486

bb.rp:                                            ; preds = %bb.ro
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bcp, i64 8, !dbg !130489
  %i.bdc = load i64, ptr %i.bdb, align 8, !dbg !130489, !noundef !3394
  %i.bdd = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !130490
  %i.bde = load ptr, ptr %i.bdd, align 8, !dbg !130490, !nonnull !3394, !align !3446, !noundef !3394
  %i.bdf = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !130491
  %i.bdg = load ptr, ptr %i.bdf, align 8, !dbg !130491, !nonnull !3394, !align !3446, !noundef !3394
  %i.bdh = invoke noundef i8 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height27aexpr_projection_height_rec(i64 noundef %i.bdc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bcg, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bde, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bdg)
          to label %bb.rq unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130492

bb.rq:                                            ; preds = %bb.rp
  %i.bdi = icmp eq i8 %i.bdh, 0, !dbg !130493
  br i1 %i.bdi, label %bb.rr, label %bb.sj, !dbg !130493

bb.rr:                                            ; preds = %bb.rq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ng), !dbg !130494
  %i.bdj = load i64, ptr %i.bcb, align 8, !dbg !130495, !noundef !3394
  %.not677 = icmp eq i64 %i.bdj, 0, !dbg !130496
  br i1 %.not677, label %.invoke3356, label %bb.rs, !dbg !130496

bb.rs:                                            ; preds = %bb.rr
  %i.bdk = load ptr, ptr %i.bcf, align 8, !dbg !130494, !nonnull !3394, !align !3446, !noundef !3394 ; 2 uses
  %i.bdl = load ptr, ptr %i.bch, align 16, !dbg !130497, !nonnull !3394, !noundef !3394
  %i.bdm = getelementptr i8, ptr %i.bdl, i64 96, !dbg !130498
  %.val938 = load i64, ptr %i.bdm, align 16, !dbg !130498, !noundef !3394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nf), !dbg !130499
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.nf, i64 112, !dbg !130499
  store i64 -9223372036854775787, ptr %i.bdn, align 16, !dbg !130499
  %i.bdo = getelementptr i8, ptr %i.bdk, i64 8, !dbg !130500
  %.val1151 = load ptr, ptr %i.bdo, align 8, !dbg !130500
  %i.bdp = getelementptr i8, ptr %i.bdk, i64 16, !dbg !130500
  %.val1152 = load i64, ptr %i.bdp, align 8, !dbg !130500, !noundef !3394
  invoke fastcc void @_RNvMs0_NtCs2mZqlW55729_12polars_utils5arenaINtB5_5ArenaNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE7replaceBX_(ptr noalias noundef align 16 captures(none) dereferenceable(144) %i.ng, ptr %.val1151, i64 %.val1152, i64 noundef %.val938, ptr noalias noundef align 16 captures(address) dereferenceable(144) %i.nf)
          to label %bb.rt unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130500

bb.rt:                                            ; preds = %bb.rs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nf), !dbg !130501
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.ng)
          to label %bb.ru unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130502

bb.ru:                                            ; preds = %bb.rt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ng), !dbg !130502
  %.pre3061.a = load i64, ptr %i.bcb, align 8, !dbg !130503
  %i.bdq = icmp eq i64 %.pre3061.a, 0, !dbg !130488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ne), !dbg !130487
  br i1 %i.bdq, label %.invoke3356, label %bb.rv, !dbg !130488

bb.rv:                                            ; preds = %.thread3261, %bb.ru
  %i.bdr = load ptr, ptr %i.bch, align 16, !dbg !130504, !nonnull !3394, !noundef !3394
  %i.bds = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIR11output_name(ptr noundef nonnull align 16 %i.bdr)
          to label %bb.rw unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130505 ; 3 uses

bb.rw:                                            ; preds = %bb.rv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en), !dbg !130506
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 23, !dbg !130507
  %i.bdu = load i8, ptr %i.bdt, align 1, !dbg !130507, !range !3542, !noundef !3394
  %i.bdv = icmp eq i8 %i.bdu, -40, !dbg !130508
  br i1 %i.bdv, label %bb.rx, label %bb.ry, !dbg !130508

bb.rx:                                            ; preds = %bb.rw
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.en, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bds)
          to label %bb.rz unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130509

bb.ry:                                            ; preds = %bb.rw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %i.bds, i64 24, i1 false), !dbg !130510
  br label %bb.rz, !dbg !130511

bb.rz:                                            ; preds = %bb.rx, %bb.ry
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ne, ptr noundef nonnull align 8 dereferenceable(24) %i.en, i64 24, i1 false), !dbg !130512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !dbg !130513
  %i.bdw = load i64, ptr %i.bcb, align 8, !dbg !130514, !noundef !3394
  %.not679 = icmp eq i64 %i.bdw, 0, !dbg !130515
  br i1 %.not679, label %bb.sb, label %bb.sa, !dbg !130515

bb.sa:                                            ; preds = %bb.rz
  %i.bdx = load ptr, ptr %i.bch, align 16, !dbg !130516, !nonnull !3394, !noundef !3394
  invoke void @_RNvMs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIR9set_alias(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.bdx, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ne)
          to label %bb.sc unwind label %.thread2209, !dbg !130517

bb.sb:                                            ; preds = %bb.rz
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @561) #41
          to label %bb.c unwind label %bb.sh, !dbg !130515

.thread2209:                                      ; preds = %bb.sf, %bb.se, %bb.sd, %bb.sc, %bb.sa
  %lpad.thr_comm2207 = landingpad { ptr, i32 }
          cleanup
  br label %.thread, !dbg !130518

bb.sc:                                            ; preds = %bb.sa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nd), !dbg !130519
  %i.bdy = invoke { ptr, ptr } %i.nr(ptr noundef nonnull %3)
          to label %bb.sd unwind label %.thread2209, !dbg !130520 ; 2 uses

bb.sd:                                            ; preds = %bb.sc
  %i.bdz = extractvalue { ptr, ptr } %i.bdy, 0, !dbg !130519
  %i.bea = extractvalue { ptr, ptr } %i.bdy, 1, !dbg !130519
  store ptr %i.bdz, ptr %i.nd, align 8, !dbg !130519
  %i.beb = getelementptr inbounds nuw i8, ptr %i.nd, i64 8, !dbg !130519
  store ptr %i.bea, ptr %i.beb, align 8, !dbg !130519
  %i.bec = invoke noundef nonnull align 8 ptr @_RNvXs2_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionWrapNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeQDINtB5_10CollectionB17_EEL_EINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutB1h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.nd, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @562)
          to label %bb.se unwind label %.thread2209, !dbg !130521

bb.se:                                            ; preds = %bb.sd
  %i.bed = invoke noundef nonnull ptr @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState14projection_mutBc_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bec)
          to label %bb.sf unwind label %.thread2209, !dbg !130522

bb.sf:                                            ; preds = %bb.se
  store i8 2, ptr %i.bed, align 1, !dbg !130523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nd), !dbg !130524
  invoke fastcc void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc(ptr noundef nonnull %3, ptr %i.nr, ptr %.pre)
          to label %bb.sg unwind label %.thread2209, !dbg !130525

bb.sg:                                            ; preds = %bb.sf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ne), !dbg !130518
  br label %bb.big, !dbg !130526

bb.sh:                                            ; preds = %bb.sb
  %lpad.thr_comm.split-lp2208 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %i.ne, i64 23, !dbg !130527
  %i.bef = load i8, ptr %i.bee, align 1, !dbg !130527, !range !3542, !alias.scope !126171, !noundef !3394
  %i.beg = icmp eq i8 %i.bef, -40, !dbg !130528
  br i1 %i.beg, label %bb.si, label %.thread, !dbg !130528, !prof !3463

bb.si:                                            ; preds = %bb.sh
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ne)
          to label %.thread unwind label %bb.bj, !dbg !130529

bb.sj:                                            ; preds = %bb.rq, %bb.rm, %bb.rn, %bb.ro, %bb.rk
  %i.beh = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !130530
  %i.bei = load ptr, ptr %i.beh, align 8, !dbg !130530, !nonnull !3394, !align !3446, !noundef !3394 ; 10 uses
  invoke void @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE5clearCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bei)
          to label %bb.sk unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130531

bb.sk:                                            ; preds = %bb.sj
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bbx, i64 16, !dbg !130532
  %i.bek = load ptr, ptr %i.bej, align 16, !dbg !130532, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.bel = load i64, ptr %i.bcb, align 8, !dbg !130533, !noundef !3394 ; 2 uses
  %.idx2976 = mul nuw nsw i64 %i.bel, 112, !dbg !130534
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bek, i64 %.idx2976, !dbg !130534
  %i.ben = icmp eq i64 %i.bel, 0, !dbg !130535
  br i1 %i.ben, label %._crit_edge2946, label %.lr.ph2945, !dbg !130536

.lr.ph2945:                                       ; preds = %bb.sk
  %i.beo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bei, i64 48
  %i.beq = getelementptr inbounds nuw i8, ptr %i.nb, i64 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i1374 = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  br label %bb.sl, !dbg !130536

bb.sl:                                            ; preds = %.lr.ph2945, %bb.te
  %.sroa.018.02943 = phi i1 [ false, %.lr.ph2945 ], [ %.sroa.018.1, %bb.te ]
  %.sroa.019.02942 = phi ptr [ %i.bek, %.lr.ph2945 ], [ %i.ber, %bb.te ] ; 3 uses
  %.sroa.022.02941 = phi i8 [ 0, %.lr.ph2945 ], [ %.sroa.022.1, %bb.te ]
  %i.ber = getelementptr inbounds nuw i8, ptr %.sroa.019.02942, i64 112, !dbg !130537 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nc), !dbg !130538
  %i.bes = getelementptr i8, ptr %.sroa.019.02942, i64 96, !dbg !130539 ; 3 uses
  %.sroa.019.0.val937 = load i64, ptr %i.bes, align 16, !dbg !130539, !noundef !3394
  %i.bet = load ptr, ptr %i.beo, align 8, !dbg !130540, !nonnull !3394, !align !3446, !noundef !3394
  invoke void @_RNvNtCsfcROwRM8ZtH_11polars_plan5utils24aexpr_to_leaf_names_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.nc, i64 noundef %.sroa.019.0.val937, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bet)
          to label %bb.sm unwind label %.thread2102.loopexit, !dbg !130538

bb.sm:                                            ; preds = %bb.sl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !130541, !noalias !126198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(72) %i.nc, i64 72, i1 false), !dbg !130542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nc), !dbg !130543
  call void @llvm.experimental.noalias.scope.decl(metadata !126202), !dbg !130544
  call void @llvm.experimental.noalias.scope.decl(metadata !126203), !dbg !130545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !130546, !noalias !126198
  invoke void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_3map3MapINtNtB6_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBa_6option6OptionNtNtB1J_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1J_5aexpr5AExprEEB2B_ENCNvNtB1L_5utils24aexpr_to_leaf_names_iter0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1L_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aw)
          to label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedIBN_INtNtB7_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBb_6option6OptionNtNtB1O_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1O_5aexpr5AExprEEB2G_ENCNvNtB1Q_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5y_8IndexSetNtNtB3B_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB9_6traits7collect6ExtendB6h_E6extendBW_E0ENtNtB7A_8iterator8Iterator9size_hintB1Q_.exit.i.i1365 unwind label %bb.sn, !dbg !130547, !noalias !126198

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedIBN_INtNtB7_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBb_6option6OptionNtNtB1O_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1O_5aexpr5AExprEEB2G_ENCNvNtB1Q_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5y_8IndexSetNtNtB3B_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB9_6traits7collect6ExtendB6h_E6extendBW_E0ENtNtB7A_8iterator8Iterator9size_hintB1Q_.exit.i.i1365: ; preds = %bb.sm
  %i.beu = load i64, ptr %i.av, align 8, !dbg !130548, !noalias !126198, !noundef !3394 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !130549, !noalias !126198
  %i.bev = load i64, ptr %i.bep, align 8, !dbg !130550, !alias.scope !126204, !noundef !3394
  %i.bew = icmp eq i64 %i.bev, 0, !dbg !130551
  %i.bex = lshr i64 %i.beu, 1, !dbg !130551
  %spec.select.i.i1366 = select i1 %i.bew, i64 0, i64 %i.bex, !dbg !130551
  %.sroa.0.0.i.i1367 = sub nuw i64 %i.beu, %spec.select.i.i1366, !dbg !130551
  invoke void @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bei, i64 noundef %.sroa.0.0.i.i1367)
          to label %_RINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB2y_8adapters3map3MapINtNtB3D_6cloned6ClonedIB3z_INtNtB3D_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB2A_6option6OptionNtNtB4V_7expr_ir10ColumnNodeEFTNtNtBS_5arena4NodeRNtNtB4V_5aexpr5AExprEEB5N_ENCNvNtB4X_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtB8_3setINtB8h_8IndexSetBO_B1E_EIB2s_BO_E6extendB40_E0EEB4X_.exit.i1368 unwind label %bb.sn, !dbg !130552, !noalias !126205

bb.sn:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedIBN_INtNtB7_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBb_6option6OptionNtNtB1O_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1O_5aexpr5AExprEEB2G_ENCNvNtB1Q_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5y_8IndexSetNtNtB3B_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB9_6traits7collect6ExtendB6h_E6extendBW_E0ENtNtB7A_8iterator8Iterator9size_hintB1Q_.exit.i.i1365, %bb.sm
  %lpad.thr_comm.i.i1363 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %i.aw, i64 32, !dbg !130553
  %i.bez = load ptr, ptr %i.bey, align 8, !dbg !130554, !alias.scope !126206, !noalias !126198, !noundef !3394
  %i.bfa = icmp eq ptr %i.bez, null, !dbg !130554
  br i1 %i.bfa, label %.thread, label %bb.so, !dbg !130554

bb.so:                                            ; preds = %bb.sn
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.aw, i64 48, !dbg !130555
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bfb)
          to label %.thread unwind label %bb.sp, !dbg !130556, !noalias !126205

bb.sp:                                            ; preds = %bb.so
  %i.bfc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !130557, !noalias !126205
  unreachable, !dbg !130557

_RINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB2y_8adapters3map3MapINtNtB3D_6cloned6ClonedIB3z_INtNtB3D_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB2A_6option6OptionNtNtB4V_7expr_ir10ColumnNodeEFTNtNtBS_5arena4NodeRNtNtB4V_5aexpr5AExprEEB5N_ENCNvNtB4X_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtB8_3setINtB8h_8IndexSetBO_B1E_EIB2s_BO_E6extendB40_E0EEB4X_.exit.i1368: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedIBN_INtNtB7_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBb_6option6OptionNtNtB1O_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1O_5aexpr5AExprEEB2G_ENCNvNtB1Q_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5y_8IndexSetNtNtB3B_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB9_6traits7collect6ExtendB6h_E6extendBW_E0ENtNtB7A_8iterator8Iterator9size_hintB1Q_.exit.i.i1365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !130558, !noalias !126198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.au, ptr noundef nonnull align 8 dereferenceable(72) %i.aw, i64 72, i1 false), !dbg !130558, !noalias !126198
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedIBO_INtNtB8_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBc_6option6OptionNtNtB1P_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1P_5aexpr5AExprEEB2H_ENCNvNtB1R_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5z_8IndexSetNtNtB3C_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtBa_6traits7collect6ExtendB6i_E6extendBX_E0ENtNtB7B_8iterator8Iterator4folduNCINvNvB8k_8for_each4callTB6i_uENCINvXsb_NtB5B_3mapINtB9v_8IndexMapB6i_uB6J_EIB7x_B9f_E6extendBN_E0E0EB1R_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bei)
          to label %bb.sq unwind label %.thread2102.loopexit, !dbg !130559

bb.sq:                                            ; preds = %_RINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB2y_8adapters3map3MapINtNtB3D_6cloned6ClonedIB3z_INtNtB3D_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB2A_6option6OptionNtNtB4V_7expr_ir10ColumnNodeEFTNtNtBS_5arena4NodeRNtNtB4V_5aexpr5AExprEEB5N_ENCNvNtB4X_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtB8_3setINtB8h_8IndexSetBO_B1E_EIB2s_BO_E6extendB40_E0EEB4X_.exit.i1368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !130560, !noalias !126198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !130561, !noalias !126198
  %i.bfd = trunc nuw i8 %.sroa.022.02941 to i1, !dbg !130562
  br i1 %i.bfd, label %bb.sw, label %bb.sr, !dbg !130562

bb.sr:                                            ; preds = %bb.sq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nb), !dbg !130563
  %i.bfe = load ptr, ptr %i.beo, align 8, !dbg !130563, !nonnull !3394, !align !3446, !noundef !3394
  %.sroa.019.0.val936 = load i64, ptr %i.bes, align 16, !dbg !130564, !noundef !3394
  store i64 %.sroa.019.0.val936, ptr %i.beq, align 8, !dbg !130565, !alias.scope !126207
  store i64 4294967297, ptr %.sroa.2.0..sroa_idx.i1374, align 8, !dbg !130565, !alias.scope !126207
  store ptr %i.bfe, ptr %i.nb, align 8, !dbg !130565, !alias.scope !126207
  br label %bb.ss, !dbg !130566

bb.ss:                                            ; preds = %bb.st, %bb.sr
  %i.bff = invoke { i64, ptr } @_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB5_9AExprIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nb)
          to label %.noexc1377 unwind label %bb.su, !dbg !130567

.noexc1377:                                       ; preds = %bb.ss
  %i.bfg = extractvalue { i64, ptr } %i.bff, 1, !dbg !130568 ; 2 uses
  %.not.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.bfg, null, !dbg !130568 ; 2 uses
  br i1 %.not.not.not.not.i.not.not.not.not.not, label %bb.st, label %bb.sv, !dbg !130569

bb.st:                                            ; preds = %.noexc1377
  %i.bfh = getelementptr i8, ptr %i.bfg, i64 112, !dbg !130570
  %.val.i1376 = load i64, ptr %i.bfh, align 16, !dbg !130570, !range !3903, !noundef !3394 ; 2 uses
  %i.bfi = icmp ne i64 %.val.i1376, -9223372036854775791, !dbg !130571
  call void @llvm.assume(i1 %i.bfi), !dbg !130571
  %i.bfj = icmp eq i64 %.val.i1376, -9223372036854775790, !dbg !130572
  br i1 %i.bfj, label %bb.sv, label %bb.ss, !dbg !130570

bb.su:                                            ; preds = %bb.ss
  %i.bfk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.beq)
          to label %.thread unwind label %bb.bj, !dbg !130573

bb.sv:                                            ; preds = %.noexc1377, %bb.st
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.beq)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit1380 unwind label %.thread2102.loopexit, !dbg !130574

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit1380: ; preds = %bb.sv
  %i.bfl = zext i1 %.not.not.not.not.i.not.not.not.not.not to i8, !dbg !130575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nb), !dbg !130576
  br label %bb.sw, !dbg !130562

bb.sw:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit1380, %bb.sq
  %.sroa.022.1 = phi i8 [ %i.bfl, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit1380 ], [ 1, %bb.sq ], !dbg !130577 ; 2 uses
  %i.bfm = load ptr, ptr %i.beo, align 8, !dbg !130578, !nonnull !3394, !align !3446, !noundef !3394 ; 2 uses
  %.sroa.019.0.val = load i64, ptr %i.bes, align 16, !dbg !130579, !noundef !3394 ; 2 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfm, i64 16, !dbg !130580
  %i.bfo = load i64, ptr %i.bfn, align 8, !dbg !130580, !noundef !3394
  %i.bfp = icmp ult i64 %.sroa.019.0.val, %i.bfo, !dbg !130581
  br i1 %i.bfp, label %bb.sx, label %.invoke3350, !dbg !130581, !prof !3464

bb.sx:                                            ; preds = %bb.sw
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfm, i64 8, !dbg !130582
  %i.bfr = load ptr, ptr %i.bfq, align 8, !dbg !130582, !nonnull !3394, !noundef !3394
  %i.bfs = getelementptr inbounds nuw [144 x i8], ptr %i.bfr, i64 %.sroa.019.0.val, !dbg !130583 ; 5 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfs, i64 112, !dbg !130578
  %i.bfu = load i64, ptr %i.bft, align 16, !dbg !130578, !range !3903, !noundef !3394 ; 2 uses
  %i.bfv = icmp ne i64 %i.bfu, -9223372036854775791, !dbg !130578
  call void @llvm.assume(i1 %i.bfv), !dbg !130578
  %i.bfw = icmp eq i64 %i.bfu, -9223372036854775806, !dbg !130584
  br i1 %i.bfw, label %bb.sy, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !130584

bb.sy:                                            ; preds = %bb.sx
  %i.bfx = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIR11output_name(ptr noundef nonnull align 16 %.sroa.019.02942)
          to label %bb.sz unwind label %.thread2102.loopexit, !dbg !130585 ; 4 uses

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %.noexc916, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit, %bb.sx
  br label %bb.te, !dbg !130586

bb.sz:                                            ; preds = %bb.sy
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfs, i64 23, !dbg !130587
  %i.bfz = load i8, ptr %i.bfy, align 1, !dbg !130587, !range !3542, !alias.scope !126232, !noundef !3394 ; 2 uses
  %i.bga = icmp ugt i8 %i.bfz, -41, !dbg !130588
  br i1 %i.bga, label %bb.tb, label %bb.ta, !dbg !130588

bb.ta:                                            ; preds = %bb.sz
  %i.bgb = add i8 %i.bfz, 64, !dbg !130589
  %i.bgc = call i8 @llvm.umin.i8(i8 %i.bgb, i8 24), !dbg !130590
  %.sroa.0.0.i.i1381 = zext nneg i8 %i.bgc to i64, !dbg !130590
  br label %.noexc915, !dbg !130591

bb.tb:                                            ; preds = %bb.sz
  %i.bgd = load ptr, ptr %i.bfs, align 16, !dbg !130592, !alias.scope !126232, !noundef !3394
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bfs, i64 8, !dbg !130593
  %i.bgf = load i64, ptr %i.bge, align 8, !dbg !130593, !alias.scope !126232, !noundef !3394
  br label %.noexc915, !dbg !130594

.noexc915:                                        ; preds = %bb.tb, %bb.ta
  %.sroa.01.0.i1382 = phi i64 [ %i.bgf, %bb.tb ], [ %.sroa.0.0.i.i1381, %bb.ta ], !dbg !130595 ; 2 uses
  %.sroa.0.0.i1383 = phi ptr [ %i.bgd, %bb.tb ], [ %i.bfs, %bb.ta ], !dbg !130596
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bfx, i64 23, !dbg !130597
  %i.bgh = load i8, ptr %i.bgg, align 1, !dbg !130597, !range !3542, !alias.scope !126233, !noundef !3394 ; 2 uses
  %i.bgi = icmp ugt i8 %i.bgh, -41, !dbg !130598
  br i1 %i.bgi, label %bb.td, label %bb.tc, !dbg !130598

bb.tc:                                            ; preds = %.noexc915
  %i.bgj = add i8 %i.bgh, 64, !dbg !130599
  %i.bgk = call i8 @llvm.umin.i8(i8 %i.bgj, i8 24), !dbg !130600
  %.sroa.0.0.i.i1385 = zext nneg i8 %i.bgk to i64, !dbg !130600
  br label %.noexc916, !dbg !130601

bb.td:                                            ; preds = %.noexc915
  %i.bgl = load ptr, ptr %i.bfx, align 8, !dbg !130602, !alias.scope !126233, !noundef !3394
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bfx, i64 8, !dbg !130603
  %i.bgn = load i64, ptr %i.bgm, align 8, !dbg !130603, !alias.scope !126233, !noundef !3394
  br label %.noexc916, !dbg !130604

.noexc916:                                        ; preds = %bb.td, %bb.tc
  %.sroa.01.0.i1386 = phi i64 [ %i.bgn, %bb.td ], [ %.sroa.0.0.i.i1385, %bb.tc ], !dbg !130605
  %.sroa.0.0.i1387 = phi ptr [ %i.bgl, %bb.td ], [ %i.bfx, %bb.tc ], !dbg !130606
  %i.bgo = icmp eq i64 %.sroa.01.0.i1382, %.sroa.01.0.i1386, !dbg !130607
  br i1 %i.bgo, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !130607

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.noexc916
  %bcmp.i = call i32 @bcmp(ptr %.sroa.0.0.i1383, ptr %.sroa.0.0.i1387, i64 %.sroa.01.0.i1382), !dbg !130608
  %i.bgp = icmp eq i32 %bcmp.i, 0, !dbg !130608
  br i1 %i.bgp, label %bb.te, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !126231

bb.te:                                            ; preds = %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread
  %.sroa.018.1 = phi i1 [ %.sroa.018.02943, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit ], [ true, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread ], !dbg !130609 ; 2 uses
  %i.bgq = icmp eq ptr %i.ber, %i.bem, !dbg !130535
  br i1 %i.bgq, label %._crit_edge2946.loopexit, label %bb.sl, !dbg !130536

._crit_edge2946.loopexit:                         ; preds = %bb.te
  %i.bgr = trunc nuw i8 %.sroa.022.1 to i1, !dbg !130610
  br label %._crit_edge2946, !dbg !130611

._crit_edge2946:                                  ; preds = %._crit_edge2946.loopexit, %bb.sk
  %.sroa.022.0.lcssa = phi i1 [ false, %bb.sk ], [ %i.bgr, %._crit_edge2946.loopexit ], !dbg !130612
  %.sroa.018.0.lcssa = phi i1 [ false, %bb.sk ], [ %.sroa.018.1, %._crit_edge2946.loopexit ], !dbg !130613 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.na), !dbg !130611
  %.val984 = load ptr, ptr %2, align 8, !dbg !130614, !nonnull !3394, !align !3446, !noundef !3394
  %i.bgs = load ptr, ptr %i.ny, align 8, !dbg !130615, !nonnull !3394, !align !3446, !noundef !3394
  %i.bgt = invoke noundef nonnull ptr @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR17schema_with_cache(i64 noundef %i.po, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val984, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bgs)
          to label %bb.tf unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130616 ; 5 uses

bb.tf:                                            ; preds = %._crit_edge2946
  store ptr %i.bgt, ptr %i.na, align 8, !dbg !130616
  br i1 %.sroa.022.0.lcssa, label %bb.th, label %bb.tg, !dbg !130610

bb.tg:                                            ; preds = %bb.ts, %bb.th, %bb.tf
  %i.bgu = phi ptr [ %.pre3062, %bb.ts ], [ %i.bgt, %bb.th ], [ %i.bgt, %bb.tf ], !dbg !130617 ; 3 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bei, i64 48, !dbg !130618
  %i.bgw = load i64, ptr %i.bgv, align 8, !dbg !130618, !noundef !3394
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgu, i64 64, !dbg !130619
  %i.bgy = load i64, ptr %i.bgx, align 8, !dbg !130619, !noundef !3394
  %.not681 = icmp eq i64 %i.bgw, %i.bgy, !dbg !130620
  br i1 %.not681, label %bb.tt, label %bb.ua, !dbg !130620

bb.th:                                            ; preds = %bb.tf
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bei, i64 48, !dbg !130621
  %i.bha = load i64, ptr %i.bgz, align 8, !dbg !130621, !noundef !3394
  %i.bhb = icmp eq i64 %i.bha, 0, !dbg !130622
  br i1 %i.bhb, label %bb.ti, label %bb.tg, !dbg !130622

bb.ti:                                            ; preds = %bb.th
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mz), !dbg !130623
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bgt, i64 24, !dbg !130624
  %i.bhd = load ptr, ptr %i.bhc, align 8, !dbg !130624, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgt, i64 32, !dbg !130625
  %i.bhf = load i64, ptr %i.bhe, align 8, !dbg !130625, !noundef !3394
  %i.bhg = getelementptr inbounds nuw [80 x i8], ptr %i.bhd, i64 %i.bhf, !dbg !130626
  %i.bhh = invoke noundef align 8 ptr @_RINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeERB2c_EB8_(ptr noundef nonnull %i.bhd, ptr noundef nonnull %i.bhg)
          to label %bb.tl unwind label %bb.tk, !dbg !130623 ; 4 uses

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge15ProjectionStateEBQ_.exit1395: ; preds = %bb.uv, %bb.uw, %bb.uf, %bb.uo, %bb.tk
  %.pn685 = phi { ptr, i32 } [ %i.bhl, %bb.tk ], [ %i.bje, %bb.uo ], [ %i.bij, %bb.uf ], [ %i.bjt, %bb.uw ], [ %i.bjt, %bb.uv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126288), !dbg !130627
  call void @llvm.experimental.noalias.scope.decl(metadata !126289), !dbg !130628
  %i.bhi = load ptr, ptr %i.na, align 8, !dbg !130629, !alias.scope !126290, !nonnull !3394, !noundef !3394
  %i.bhj = atomicrmw sub ptr %i.bhi, i64 1 release, align 8, !dbg !130630, !noalias !126290
  %i.bhk = icmp eq i64 %i.bhj, 1, !dbg !130631
  br i1 %i.bhk, label %bb.tj, label %.thread, !dbg !130631

bb.tj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge15ProjectionStateEBQ_.exit1395
  fence acquire, !dbg !130632
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.na) #42
          to label %.thread unwind label %bb.bj, !dbg !130633

bb.tk:                                            ; preds = %bb.tu, %bb.tz, %bb.ut, %bb.us, %bb.ur, %bb.uq, %bb.um, %bb.ul, %bb.uj, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit, %bb.ub, %bb.ua, %bb.tv, %bb.tp, %bb.to, %bb.ti
  %i.bhl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge15ProjectionStateEBQ_.exit1395

bb.tl:                                            ; preds = %bb.ti
  %.not680 = icmp eq ptr %i.bhh, null, !dbg !130634
  br i1 %.not680, label %bb.tn, label %bb.tm, !dbg !130635

bb.tm:                                            ; preds = %bb.tl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em), !dbg !130636
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhh, i64 23, !dbg !130637
  %i.bhn = load i8, ptr %i.bhm, align 1, !dbg !130637, !range !3542, !noundef !3394
  %i.bho = icmp eq i8 %i.bhn, -40, !dbg !130638
  br i1 %i.bho, label %bb.tp, label %bb.tq, !dbg !130638

bb.tn:                                            ; preds = %bb.tl
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.mz, i64 23, !dbg !130639
  store i8 -38, ptr %i.bhp, align 1, !dbg !130639
  br label %bb.to, !dbg !130640

bb.to:                                            ; preds = %bb.tr, %bb.tn
  invoke fastcc void @_RINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6_8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendBO_E6extendINtNtB2z_6option6OptionBO_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64) %i.bei, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.mz)
          to label %bb.ts unwind label %bb.tk, !dbg !130641

bb.tp:                                            ; preds = %bb.tm
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bhh)
          to label %bb.tr unwind label %bb.tk, !dbg !130642
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc:bb.a
  %i.q = add nuw i64 %.sroa.04.09, 1, !dbg !138908 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !138909
  %i.r = call { ptr, ptr } %.32.val(ptr noundef nonnull %0) #38, !dbg !138910 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0, !dbg !138910
  %i.t = extractvalue { ptr, ptr } %i.r, 1, !dbg !138910
  store ptr %i.s, ptr %i.b, align 8, !dbg !138910
  store ptr %i.t, ptr %i.o, align 8, !dbg !138910
  %i.u = call noundef nonnull align 8 ptr @_RNvXs2_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionWrapNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeQDINtB5_10CollectionB17_EEL_EINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutB1h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %.sroa.04.09, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @662), !dbg !138911
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !138912 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !dbg !138912, !align !3446, !noundef !3394 ; 6 uses
  store ptr null, ptr %i.v, align 8, !dbg !138913
  %.not = icmp eq ptr %i.w, null, !dbg !138914    ; 2 uses
  br i1 %.not, label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit, label %bb.c, !dbg !138915

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE5clearCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.w)
          to label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit unwind label %bb.d, !dbg !138916

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECsfcROwRM8ZtH_11polars_plan(ptr nonnull align 8 %i.w) #39
          to label %common.resume unwind label %bb.e, !dbg !138917

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !138918
  unreachable, !dbg !138918

common.resume:                                    ; preds = %bb.f, %bb.k, %bb.j, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.d ], [ %i.aa, %bb.f ], [ %i.ag, %bb.k ], [ %i.ag, %bb.j ]
  resume { ptr, i32 } %common.resume.op, !dbg !138919

_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !138920
  %i.z = invoke { ptr, ptr } %.24.val(ptr noundef nonnull %0)
          to label %bb.g unwind label %bb.j, !dbg !138921 ; 2 uses

bb.f:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store ptr %i.w, ptr %i.ae, align 8, !dbg !138920
  br label %common.resume, !dbg !138922

bb.g:                                             ; preds = %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit
  %i.ab = extractvalue { ptr, ptr } %i.z, 0, !dbg !138920
  %i.ac = extractvalue { ptr, ptr } %i.z, 1, !dbg !138920
  store ptr %i.ab, ptr %i.a, align 8, !dbg !138920
  store ptr %i.ac, ptr %i.p, align 8, !dbg !138920
  %i.ad = invoke noundef nonnull align 8 ptr @_RNvXs2_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionWrapNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeQDINtB5_10CollectionB17_EEL_EINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutB1h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %.sroa.04.09, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @663)
          to label %bb.h unwind label %bb.j, !dbg !138923

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !138920 ; 3 uses
  %.val8 = load ptr, ptr %i.ae, align 8, !dbg !138920, !align !3446, !noundef !3394 ; 2 uses
  %i.af = icmp eq ptr %.val8, null, !dbg !138924
  br i1 %i.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEECsfcROwRM8ZtH_11polars_plan.exit, label %bb.i, !dbg !138924

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %.val8)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.f, !dbg !138924

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.h, %bb.i
  store ptr %i.w, ptr %i.ae, align 8, !dbg !138920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !138925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !138925
  %exitcond.not = icmp eq i64 %i.q, %.sroa.0.0.i, !dbg !138906
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !138890

bb.j:                                             ; preds = %bb.g, %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not, label %common.resume, label %bb.k, !dbg !138926

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %i.w)
          to label %common.resume unwind label %bb.l, !dbg !138926

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !138927
  unreachable, !dbg !138927
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18small_dummy_column(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !138928 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [96 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !138978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !138979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !138979
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !138968
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !dbg !138980
  %i.h = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 4, 769) 16, i64 noundef range(i64 4, 129) 8) #44, !dbg !138981 ; 5 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !138982
  br i1 %i.i, label %bb.b, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !138983, !prof !3463

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #41
          to label %.noexc unwind label %.thread10, !dbg !138984

.thread10:                                        ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f, !dbg !138985

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !138984

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !138986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !138987
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !138987
  store i64 0, ptr %i.k, align 8, !dbg !138987
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !138987
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !138987
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !138987
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !138987
  store i8 30, ptr %i.c, align 8, !dbg !138987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !138969
  store i64 0, ptr %i.b, align 8, !dbg !138988
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !138988
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !dbg !138988
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !138988
  store i64 0, ptr %i.m, align 8, !dbg !138988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !138989
  store ptr null, ptr %i.a, align 8, !dbg !138989
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array7struct_NtB2_11StructArray3new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, i64 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.c unwind label %.thread, !dbg !138986

.thread:                                          ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 16, i64 noundef 8) #44, !dbg !138990
  br label %bb.f, !dbg !138985

bb.c:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !138991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !138991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !138991
  %i.o = invoke { ptr, ptr } @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow5array7struct_NtB4_11StructArray5boxed(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.d)
          to label %bb.d unwind label %.thread, !dbg !138992 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.p = extractvalue { ptr, ptr } %i.o, 0, !dbg !138986
  %i.q = extractvalue { ptr, ptr } %i.o, 1, !dbg !138986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !138993
  store ptr %i.p, ptr %i.h, align 8, !dbg !138968
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !138968
  store ptr %i.q, ptr %i.r, align 8, !dbg !138968
  store i64 1, ptr %i.e, align 8, !dbg !138994
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !138994
  store ptr %i.h, ptr %i.s, align 8, !dbg !138994
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !138994
  store i64 1, ptr %i.t, align 8, !dbg !138994
  call void @_RNvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB6_12ChunkedArrayNtNtB8_9datatypes10StructTypeE11from_chunksCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !dbg !138995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !138985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !138985
  %i.u = call { ptr, ptr } @_RNvXs2I_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_10StructTypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g), !dbg !138996 ; 2 uses
  %i.v = extractvalue { ptr, ptr } %i.u, 0, !dbg !138996
  %i.w = extractvalue { ptr, ptr } %i.u, 1, !dbg !138996
  call fastcc void @_RNvXs1_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnINtNtCscgRAwXFJnXP_4core7convert4FromNtNtB9_6series6SeriesE4from(ptr noalias noundef align 16 captures(none) dereferenceable(160) %0, ptr noundef nonnull %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(896) %i.w) #38, !dbg !138997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !138998
  ret void, !dbg !138999

bb.e:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139000
  unreachable, !dbg !139000

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %.pn9, !dbg !139000

bb.f:                                             ; preds = %.thread10, %.thread
  %.pn9 = phi { ptr, i32 } [ %i.n, %.thread ], [ %i.j, %.thread10 ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !139001
  %i.z = load i8, ptr %i.y, align 1, !dbg !139001, !range !3542, !alias.scope !138977, !noundef !3394
  %i.aa = icmp eq i8 %i.z, -40, !dbg !139002
  br i1 %i.aa, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit, !dbg !139002, !prof !3463

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.e, !dbg !139003
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown19projection_pushdown(i64 noundef %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !139004 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !139442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139306), !dbg !139442
  %i.w = tail call noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed(), !dbg !139443, !noalias !139306
  %i.x = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !139444, !noalias !139306
  %i.y = icmp eq i8 %i.x, 2, !dbg !139445
  br i1 %i.y, label %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit, label %bb.b, !dbg !139445, !prof !3464

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #42, !dbg !139446, !noalias !139306
  br label %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit, !dbg !139446

_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32, !dbg !139447 ; 3 uses
  store i64 %i.w, ptr %i.z, align 8, !dbg !139447, !alias.scope !139306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(32) @489, i64 32, i1 false), !dbg !139447
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !139448 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !139449 ; 7 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !139449, !noundef !3394
  %i.ad = icmp ult i64 %0, %i.ac, !dbg !139450
  br i1 %i.ad, label %bb.f, label %bb.c, !dbg !139450, !prof !3464

bb.c:                                             ; preds = %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #41
          to label %bb.e unwind label %bb.d, !dbg !139451

.body:                                            ; preds = %.body109, %bb.m, %bb.h, %bb.d
  %.pn43.pn = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.al, %bb.h ], [ %i.ae, %bb.d ], [ %.pn43, %.body109 ]
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.cr, !dbg !139452

bb.d:                                             ; preds = %bb.ci, %bb.r, %bb.q, %bb.p, %bb.j, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.cs, %bb.cq, %bb.cj, %bb.by, %bb.ao, %bb.c
  unreachable

bb.f:                                             ; preds = %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit
  %i.af = load ptr, ptr %i.aa, align 8, !dbg !139448, !nonnull !3394, !noundef !3394
  %i.ag = getelementptr inbounds nuw [368 x i8], ptr %i.af, i64 %0, !dbg !139453 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.u, ptr noundef nonnull align 16 dereferenceable(368) %i.ag, i64 368, i1 false), !dbg !139454
  store i64 -9223372036854775782, ptr %i.ag, align 16, !dbg !139455
  %i.ah = load i64, ptr %i.ab, align 8, !dbg !139456, !noundef !3394 ; 7 uses
  %i.ai = icmp ult i64 %i.ah, 25063510969714065, !dbg !139457
  tail call void @llvm.assume(i1 %i.ai), !dbg !139458
  %i.aj = load i64, ptr %1, align 8, !dbg !139459, !range !3865, !alias.scope !139323, !noundef !3394
  %i.ak = icmp eq i64 %i.ah, %i.aj, !dbg !139460
  br i1 %i.ak, label %bb.g, label %bb.j, !dbg !139460

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.j unwind label %bb.h, !dbg !139461, !noalias !139325

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef nonnull align 16 dereferenceable(368) %i.u) #39
          to label %.body unwind label %bb.i, !dbg !139462

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139463
  unreachable, !dbg !139463

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.an = load ptr, ptr %i.aa, align 8, !dbg !139464, !alias.scope !139323, !nonnull !3394, !noundef !3394
  %i.ao = getelementptr inbounds nuw [368 x i8], ptr %i.an, i64 %i.ah, !dbg !139465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.ao, ptr noundef nonnull align 16 dereferenceable(368) %i.u, i64 368, i1 false), !dbg !139466
  %i.ap = add nuw nsw i64 %i.ah, 1, !dbg !139467
  store i64 %i.ap, ptr %i.ab, align 8, !dbg !139467, !alias.scope !139323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !139468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !139469
  %i.aq = invoke noundef nonnull ptr @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR17schema_with_cache(i64 noundef %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %bb.k unwind label %bb.d, !dbg !139470

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !139469
  store i64 %i.ah, ptr %i.ar, align 16, !dbg !139469
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !139469
  store ptr %i.aq, ptr %i.as, align 8, !dbg !139469
  store i64 -9223372036854775799, ptr %i.s, align 16, !dbg !139469
  %.val51 = load i64, ptr %i.ab, align 8, !dbg !139471, !noundef !3394
  %i.at = icmp ult i64 %0, %.val51, !dbg !139472
  br i1 %i.at, label %bb.p, label %bb.l, !dbg !139472, !prof !3464

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #41
          to label %bb.n unwind label %bb.m, !dbg !139473, !noalias !139326

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef nonnull align 16 dereferenceable(368) %i.s) #39
          to label %.body unwind label %bb.o, !dbg !139474, !noalias !139327

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139475, !noalias !139327
  unreachable, !dbg !139475

bb.p:                                             ; preds = %bb.k
  %.val50 = load ptr, ptr %i.aa, align 8, !dbg !139471, !nonnull !3394, !noundef !3394
  %i.aw = getelementptr inbounds nuw [368 x i8], ptr %.val50, i64 %0, !dbg !139476 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.t, ptr noundef nonnull align 16 dereferenceable(368) %i.aw, i64 368, i1 false), !dbg !139477, !noalias !139328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.aw, ptr noundef nonnull align 16 dereferenceable(368) %i.s, i64 368, i1 false), !dbg !139478, !noalias !139327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !139479
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef align 16 dereferenceable(368) %i.t)
          to label %bb.q unwind label %bb.d, !dbg !139480

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !139480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !139481
  call void @llvm.experimental.noalias.scope.decl(metadata !139329), !dbg !139482
  %i.ax = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc unwind label %bb.d, !dbg !139483

.noexc:                                           ; preds = %bb.q
  %i.ay = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !139484, !noalias !139329
  %i.az = icmp eq i8 %i.ay, 2, !dbg !139485
  br i1 %i.az, label %bb.s, label %bb.r, !dbg !139485, !prof !3464

bb.r:                                             ; preds = %.noexc
  invoke void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #42
          to label %bb.s unwind label %bb.d, !dbg !139486

bb.s:                                             ; preds = %.noexc, %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 32, !dbg !139487 ; 4 uses
  store i64 %i.ax, ptr %i.ba, align 8, !dbg !139487, !alias.scope !139329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(32) @489, i64 32, i1 false), !dbg !139487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !139488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !139489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !139330
  store i64 0, ptr %i.o, align 8, !dbg !139490
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !139490
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.413.0..sroa_idx, align 8, !dbg !139490
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !139490
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8, !dbg !139490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !139331
  store i64 0, ptr %i.n, align 8, !dbg !139491
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !139491
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.416.0..sroa_idx, align 8, !dbg !139491
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !139491
  store i64 0, ptr %.sroa.517.0..sroa_idx, align 8, !dbg !139491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !139332
  %i.bb = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %bb.u unwind label %bb.t, !dbg !139492

.body102:                                         ; preds = %bb.bo, %bb.bp, %bb.t, %.body94
  %.pn39 = phi { ptr, i32 } [ %.pn37, %.body94 ], [ %i.bc, %bb.t ], [ %i.dk, %bb.bp ], [ %i.dj, %bb.bo ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_(ptr noalias noundef align 8 dereferenceable(24) %i.n) #39
          to label %.body106 unwind label %bb.cr, !dbg !139493

bb.t:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i101, %bb.v, %bb.s
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body102

bb.u:                                             ; preds = %bb.s
  %i.bd = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !139494
  %i.be = icmp eq i8 %i.bd, 2, !dbg !139495
  br i1 %i.be, label %bb.w, label %bb.v, !dbg !139495, !prof !3464

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow()
          to label %bb.w unwind label %bb.t, !dbg !139496

bb.w:                                             ; preds = %bb.u, %bb.v
  store i64 0, ptr %i.m, align 8, !dbg !139333
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !139333
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4142.0..sroa_idx, align 8, !dbg !139333
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !139333
  store i64 0, ptr %.sroa.5143.0..sroa_idx, align 8, !dbg !139333
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !139333 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6144.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @489, i64 32, i1 false), !dbg !139333
  %.sroa.7145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !139333 ; 2 uses
  store i64 %i.bb, ptr %.sroa.7145.0..sroa_idx, align 8, !dbg !139333
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown19projection_pushdown:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !139493
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6154.0..sroa_idx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7155.0..sroa_idx, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i92 unwind label %bb.bk, !dbg !139543

bb.bk:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l) #39
          to label %.body94 unwind label %bb.bn, !dbg !139544

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i92: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i93 unwind label %bb.bl, !dbg !139545

bb.bl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i92
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %.body94 unwind label %bb.bm, !dbg !139546

bb.bm:                                            ; preds = %bb.bl
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139545
  unreachable, !dbg !139545

bb.bn:                                            ; preds = %bb.bk
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139544
  unreachable, !dbg !139544

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i93: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i92
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit97 unwind label %bb.x, !dbg !139547

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit97: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !139493
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6144.0..sroa_idx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7145.0..sroa_idx, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i100 unwind label %bb.bo, !dbg !139548

bb.bo:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit97
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m) #39
          to label %.body102 unwind label %bb.br, !dbg !139549

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i100: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit97
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i101 unwind label %bb.bp, !dbg !139550

bb.bp:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i100
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.body102 unwind label %bb.bq, !dbg !139551

bb.bq:                                            ; preds = %bb.bp
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139550
  unreachable, !dbg !139550

bb.br:                                            ; preds = %bb.bo
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139549
  unreachable, !dbg !139549

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i101: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i100
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit105 unwind label %bb.t, !dbg !139552

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit105: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !139493
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1l_.exit.i unwind label %bb.bs, !dbg !139553

bb.bs:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit105
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body106 unwind label %bb.bt, !dbg !139554

bb.bt:                                            ; preds = %bb.bs
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139553
  unreachable, !dbg !139553

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1l_.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit105
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_.exit unwind label %bb.bu, !dbg !139555

.body106:                                         ; preds = %bb.bu, %bb.bs, %.body102
  %.pn41 = phi { ptr, i32 } [ %.pn39, %.body102 ], [ %i.dp, %bb.bu ], [ %i.dn, %bb.bs ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.o) #39
          to label %.body109 unwind label %bb.cr, !dbg !139493

bb.bu:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1l_.exit.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body106

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1l_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !139493
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.bv, !dbg !139556

bb.bv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body109 unwind label %bb.bw, !dbg !139557

bb.bw:                                            ; preds = %bb.bv
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139556
  unreachable, !dbg !139556

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_.exit
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bx, !dbg !139558

.body109:                                         ; preds = %bb.bx, %bb.bv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit, %.body106
  %.pn43 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.pn41, %.body106 ], [ %i.ds, %bb.bx ], [ %i.dq, %bb.bv ]
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtB1h_5arena4NodeENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef 24, i64 noundef 16)
          to label %.body unwind label %bb.cr, !dbg !139559

bb.bx:                                            ; preds = %.invoke, %._crit_edge, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit.i, %bb.cs, %bb.ce, %bb.cb, %bb.ca, %bb.by
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body109

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !139493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !139493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !139560
  %i.dt = load i64, ptr %i.ab, align 8, !dbg !139561, !noundef !3394
  %i.du = icmp ult i64 %0, %i.dt, !dbg !139562
  br i1 %i.du, label %bb.bz, label %bb.by, !dbg !139562, !prof !3464

bb.by:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #41
          to label %bb.e unwind label %bb.bx, !dbg !139563

bb.bz:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit
  %i.dv = load ptr, ptr %i.aa, align 8, !dbg !139564, !nonnull !3394, !noundef !3394
  %i.dw = getelementptr inbounds nuw [368 x i8], ptr %i.dv, i64 %0, !dbg !139565 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.f, ptr noundef nonnull align 16 dereferenceable(368) %i.dw, i64 368, i1 false), !dbg !139566
  store i64 -9223372036854775782, ptr %i.dw, align 16, !dbg !139567
  %i.dx = load i64, ptr %i.f, align 16, !dbg !139560, !range !3901, !noundef !3394 ; 2 uses
  %i.dy = icmp ne i64 %i.dx, -9223372036854775786, !dbg !139560
  call void @llvm.assume(i1 %i.dy), !dbg !139560
  %i.dz = icmp eq i64 %i.dx, -9223372036854775799, !dbg !139568
  br i1 %i.dz, label %bb.ca, label %bb.cb, !dbg !139568

bb.ca:                                            ; preds = %bb.bz
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !139569
  %i.eb = load i64, ptr %i.ea, align 16, !dbg !139569, !noundef !3394 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef align 16 dereferenceable(368) %i.f)
          to label %bb.cc unwind label %bb.bx, !dbg !139570

bb.cb:                                            ; preds = %bb.bz
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef align 16 dereferenceable(368) %i.f)
          to label %bb.cs unwind label %bb.bx, !dbg !139570

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !139570
  %.val55 = load ptr, ptr %i.aa, align 8, !dbg !139571, !nonnull !3394, !noundef !3394 ; 2 uses
  %.val56 = load i64, ptr %i.ab, align 8, !dbg !139571, !noundef !3394 ; 3 uses
  %i.ec = icmp ult i64 %0, %.val56, !dbg !139572
  br i1 %i.ec, label %bb.cd, label %.invoke, !dbg !139572

bb.cd:                                            ; preds = %bb.cc
  %i.ed = icmp ult i64 %i.eb, %.val56, !dbg !139573
  br i1 %i.ed, label %bb.ce, label %.invoke, !dbg !139573

.invoke:                                          ; preds = %bb.cd, %bb.cc
  %i.ee = phi i64 [ %0, %bb.cc ], [ %i.eb, %bb.cd ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ee, i64 noundef %.val56, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @443) #43
          to label %.cont unwind label %bb.bx, !dbg !139574

.cont:                                            ; preds = %.invoke
  unreachable

bb.ce:                                            ; preds = %bb.cd
  %i.ef = getelementptr inbounds nuw [368 x i8], ptr %.val55, i64 %0, !dbg !139575 ; 2 uses
  %i.eg = getelementptr inbounds nuw [368 x i8], ptr %.val55, i64 %i.eb, !dbg !139576 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !139577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.c, ptr noundef nonnull align 16 dereferenceable(368) %i.ef, i64 368, i1 false), !dbg !139578
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.ef, ptr noundef nonnull align 16 dereferenceable(368) %i.eg, i64 368, i1 false), !dbg !139579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.eg, ptr noundef nonnull align 16 dereferenceable(368) %i.c, i64 368, i1 false), !dbg !139580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !139581
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !139582
  store ptr %1, ptr %i.d, align 8, !dbg !139583
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !139583
  store i64 %0, ptr %.sroa.4128.0..sroa_idx, align 8, !dbg !139583
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !139583
  store i64 4294967297, ptr %.sroa.5129.0..sroa_idx, align 8, !dbg !139583
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator7AlpIterNCNvNtNtB3j_9optimizer19projection_pushdown19projection_pushdowns_0EE9from_iterB3l_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.cf unwind label %bb.bx, !dbg !139584

bb.cf:                                            ; preds = %bb.ce
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !139410
  %i.ei = load ptr, ptr %i.eh, align 8, !dbg !139410, !nonnull !3394, !noundef !3394 ; 4 uses
  %i.ej = load i64, ptr %i.e, align 8, !dbg !139410, !range !3865, !noundef !3394 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !139410
  %i.el = load i64, ptr %i.ek, align 8, !dbg !139410, !noundef !3394 ; 3 uses
  %i.em = icmp ult i64 %i.el, 1152921504606846976, !dbg !139585
  call void @llvm.assume(i1 %i.em), !dbg !139586
  %.idx = shl nuw nsw i64 %i.el, 3, !dbg !139587
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx, !dbg !139587
  %i.eo = icmp eq i64 %i.el, 0, !dbg !139588
  br i1 %i.eo, label %._crit_edge, label %.lr.ph, !dbg !139589

.lr.ph:                                           ; preds = %bb.cf
  %i.ep = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %bb.ch, !dbg !139589

.loopexit:                                        ; preds = %bb.cm
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit.split-lp:                               ; preds = %bb.cj, %bb.cq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !139590, !noalias !139413
  store i64 %i.ej, ptr %i.b, align 8, !dbg !139591, !noalias !139413
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !139591
  store ptr %i.ei, ptr %i.er, align 8, !dbg !139591, !noalias !139413
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.cr, !dbg !139592

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !139593, !noalias !139413
  br label %.body109, !dbg !139594

bb.ch:                                            ; preds = %.lr.ph, %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread
  %.sroa.5132.0192 = phi ptr [ %i.ei, %.lr.ph ], [ %i.es, %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.5132.0192, i64 8, !dbg !139595 ; 2 uses
  %i.et = load i64, ptr %.sroa.5132.0192, align 8, !dbg !139596, !noalias !139414, !noundef !3394 ; 2 uses
  %i.eu = load i64, ptr %i.ab, align 8, !dbg !139597, !noundef !3394
  %i.ev = icmp ult i64 %i.et, %i.eu, !dbg !139598
  br i1 %i.ev, label %bb.ck, label %bb.cj, !dbg !139598, !prof !3464

._crit_edge:                                      ; preds = %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !139599, !noalias !139423
  store i64 %i.ej, ptr %i.a, align 8, !dbg !139600, !noalias !139423
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !139600
  store ptr %i.ei, ptr %i.ew, align 8, !dbg !139600, !noalias !139423
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.ci unwind label %bb.bx, !dbg !139601

bb.ci:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !139602, !noalias !139423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !139603
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtB1h_5arena4NodeENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef 24, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtB1p_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit119 unwind label %bb.d, !dbg !139604

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtB1p_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit119: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !139605
  call void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 16, i64 noundef 16), !dbg !139606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !139607
  ret void, !dbg !139608

bb.cj:                                            ; preds = %bb.ch
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #41
          to label %bb.e unwind label %.loopexit.split-lp, !dbg !139609

bb.ck:                                            ; preds = %bb.ch
  %i.ex = load ptr, ptr %i.aa, align 8, !dbg !139610, !nonnull !3394, !noundef !3394
  %i.ey = getelementptr inbounds nuw [368 x i8], ptr %i.ex, i64 %i.et, !dbg !139611 ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 16, !dbg !139612, !range !3901, !noundef !3394 ; 2 uses
  %i.fa = icmp ne i64 %i.ez, -9223372036854775786, !dbg !139612
  call void @llvm.assume(i1 %i.fa), !dbg !139612
  %i.fb = icmp eq i64 %i.ez, -9223372036854775796, !dbg !139613
  br i1 %i.fb, label %bb.cl, label %bb.cq, !dbg !139613, !prof !3464

bb.cl:                                            ; preds = %bb.ck
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8, !dbg !139614 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !139433), !dbg !139615
  call void @llvm.experimental.noalias.scope.decl(metadata !139434), !dbg !139615
  %i.fd = load i64, ptr %i.ep, align 8, !dbg !139616, !alias.scope !139433, !noundef !3394
  %i.fe = icmp eq i64 %i.fd, 0, !dbg !139617
  br i1 %i.fe, label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread, label %bb.cm, !dbg !139617

bb.cm:                                            ; preds = %bb.cl
  %i.ff = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.fc)
          to label %.noexc122 unwind label %.loopexit, !dbg !139618 ; 2 uses

.noexc122:                                        ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !139435), !dbg !139619
  call void @llvm.experimental.noalias.scope.decl(metadata !139436), !dbg !139619
  call void @llvm.experimental.noalias.scope.decl(metadata !139437), !dbg !139620
  %i.fg = lshr i64 %i.ff, 57, !dbg !139621
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !139622
  %i.fi = load i64, ptr %i.eq, align 8, !dbg !139623, !alias.scope !139438, !noundef !3394 ; 2 uses
  %i.fj = load ptr, ptr %i.r, align 8, !alias.scope !139438, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.fk = insertelement <16 x i8> poison, i8 %i.fh, i64 0
  %i.fl = shufflevector <16 x i8> %i.fk, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i = load i128, ptr %i.fc, align 8, !alias.scope !139439
  br label %bb.cn, !dbg !139624

bb.cn:                                            ; preds = %bb.cp, %.noexc122
  %.sroa.011.0.i.i.i = phi i64 [ 0, %.noexc122 ], [ %i.gc, %bb.cp ], !dbg !139625
  %.pn.i.i.i = phi i64 [ %i.ff, %.noexc122 ], [ %i.gd, %bb.cp ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.fi, !dbg !139625 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.sroa.01.0.i.i.i, !dbg !139626
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.fm, align 1, !dbg !139627, !noalias !139440 ; 2 uses
  %i.fn = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.fl, !dbg !139628
  %i.fo = bitcast <16 x i1> %i.fn to i16, !dbg !139629 ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.fo, 0, !dbg !139630
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !139631

.lr.ph.i.i:                                       ; preds = %bb.cn, %bb.co
  %.sroa.05.0.i33.i.i = phi i16 [ %i.gb, %bb.co ], [ %i.fo, %bb.cn ] ; 3 uses
  %i.fp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i, i1 true), !dbg !139632
  %i.fq = zext nneg i16 %i.fp to i64, !dbg !139633
  %i.fr = add i64 %.sroa.01.0.i.i.i, %i.fq, !dbg !139634
  %i.fs = and i64 %i.fr, %i.fi, !dbg !139634
  %i.ft = sub nsw i64 0, %i.fs, !dbg !139635
  %i.fu = getelementptr inbounds [24 x i8], ptr %i.fj, i64 %i.ft, !dbg !139636 ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -24, !dbg !139637
  %.val2.i.i.i = load i128, ptr %i.fv, align 1, !dbg !139638, !noalias !139441
  %i.fw = icmp eq i128 %.val.i.i.i.i, %.val2.i.i.i, !dbg !139639
  br i1 %i.fw, label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.co, !dbg !139640, !prof !3464

._crit_edge.i.i:                                  ; preds = %bb.co, %bb.cn
  %i.fx = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1), !dbg !139641
  %i.fy = bitcast <16 x i1> %i.fx to i16, !dbg !139642
  %i.fz = icmp eq i16 %i.fy, 0, !dbg !139643
  br i1 %i.fz, label %bb.cp, label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !139643, !prof !3463

bb.co:                                            ; preds = %.lr.ph.i.i
  %i.ga = add i16 %.sroa.05.0.i33.i.i, -1, !dbg !139644
  %i.gb = and i16 %i.ga, %.sroa.05.0.i33.i.i, !dbg !139645 ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.gb, 0, !dbg !139630
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !139631

bb.cp:                                            ; preds = %._crit_edge.i.i
  %i.gc = add i64 %.sroa.011.0.i.i.i, 16, !dbg !139646 ; 2 uses
  %i.gd = add i64 %.sroa.01.0.i.i.i, %i.gc, !dbg !139647
  br label %bb.cn, !dbg !139624

bb.cq:                                            ; preds = %bb.ck
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @666) #41
          to label %bb.e unwind label %.loopexit.split-lp, !dbg !139648

_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.lr.ph.i.i
  %i.ge = getelementptr inbounds i8, ptr %i.fu, i64 -8, !dbg !139649
  %i.gf = load i64, ptr %i.ge, align 8, !dbg !139650, !noundef !3394
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ey, i64 24, !dbg !139651
  store i64 %i.gf, ptr %i.gg, align 8, !dbg !139651
  br label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !139652

_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %._crit_edge.i.i, %bb.cl, %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit
  %i.gh = icmp eq ptr %i.es, %i.en, !dbg !139588
  br i1 %i.gh, label %._crit_edge, label %bb.ch, !dbg !139589

bb.cr:                                            ; preds = %bb.cg, %.body109, %bb.aw, %.body, %.body106, %.body84, %.body72, %bb.ak, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown25ProjectionPushdownVisitorEBO_.exit, %.body81, %.body87, %.body94, %.body102
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !139653
  unreachable, !dbg !139653

bb.cs:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !139570
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @667) #41
          to label %bb.e unwind label %bb.bx, !dbg !139654

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.body
  resume { ptr, i32 } %.pn43.pn, !dbg !139653
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 16 ptr @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown23extract_select_len_expr(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(368) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val) unnamed_addr #0 !dbg !139655 {
bb.a:
  %i.a = load i64, ptr %0, align 16, !dbg !139685, !range !3901, !noundef !3394 ; 2 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775786, !dbg !139685
  tail call void @llvm.assume(i1 %i.b), !dbg !139685
  %i.c = icmp eq i64 %i.a, -9223372036854775798, !dbg !139686
  br i1 %i.c, label %bb.b, label %bb.f, !dbg !139686

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !139687
  %i.e = load i64, ptr %i.d, align 8, !dbg !139687, !noundef !3394 ; 2 uses
  %i.f = icmp ult i64 %i.e, 82351536043346213, !dbg !139688
  tail call void @llvm.assume(i1 %i.f), !dbg !139689
  %i.g = icmp eq i64 %i.e, 1, !dbg !139690
  br i1 %i.g, label %bb.c, label %bb.f, !dbg !139690

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !139691
end_hunk_3
