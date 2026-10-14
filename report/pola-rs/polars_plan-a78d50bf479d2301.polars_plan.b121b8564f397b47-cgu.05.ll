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
  %i.nb = alloca [24 x i8], align 8               ; 7 uses
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
  %i.nq = getelementptr inbounds nuw i8, ptr %4, i64 24, !dbg !130569
  %i.nr = load ptr, ptr %i.nq, align 8, !dbg !130569, !invariant.load !3394 ; 25 uses
  %i.ns = tail call { ptr, ptr } %i.nr(ptr noundef nonnull %3) #38, !dbg !130570 ; 2 uses
  %i.nt = extractvalue { ptr, ptr } %i.ns, 0, !dbg !130570
  %i.nu = extractvalue { ptr, ptr } %i.ns, 1, !dbg !130570
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 32, !dbg !130569
  %i.nw = load ptr, ptr %i.nv, align 8, !dbg !130569, !invariant.load !3394, !nonnull !3394
  %i.nx = tail call noundef i64 %i.nw(ptr noundef %i.nt) #38, !dbg !130571 ; 4 uses
  store i64 %i.nx, ptr %i.np, align 8, !dbg !130571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.no), !dbg !130572
  %.val986 = load ptr, ptr %2, align 8, !dbg !130573, !nonnull !3394, !align !3446, !noundef !3394 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !130574 ; 10 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !dbg !130574, !nonnull !3394, !align !3446, !noundef !3394
  %i.oa = tail call noundef nonnull ptr @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR17schema_with_cache(i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val986, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.nz), !dbg !130575
  store ptr %i.oa, ptr %i.no, align 8, !dbg !130575
  %i.ob = getelementptr inbounds nuw i8, ptr %.val986, i64 16, !dbg !130576
  %i.oc = load i64, ptr %i.ob, align 8, !dbg !130576, !noundef !3394
  %i.od = icmp ult i64 %1, %i.oc, !dbg !130577
  br i1 %i.od, label %bb.b, label %.invoke3350, !dbg !130577, !prof !3464

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
          to label %.cont3351 unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130578

.cont3351:                                        ; preds = %.invoke3350
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.of = getelementptr inbounds nuw i8, ptr %.val986, i64 8, !dbg !130579
  %i.og = load ptr, ptr %i.of, align 8, !dbg !130579, !nonnull !3394, !noundef !3394
  %i.oh = getelementptr inbounds nuw [368 x i8], ptr %i.og, i64 %1, !dbg !130580
  %i.oi = load i64, ptr %i.oh, align 16, !dbg !130581, !range !3901, !noundef !3394 ; 2 uses
  %i.oj = icmp ne i64 %i.oi, -9223372036854775786, !dbg !130581
  tail call void @llvm.assume(i1 %i.oj), !dbg !130581
  %i.ok = icmp eq i64 %i.oi, -9223372036854775796, !dbg !130582
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !dbg !130578, !invariant.load !3394 ; 26 uses
  br i1 %i.ok, label %._crit_edge3050.a, label %bb.d, !dbg !130582

bb.c:                                             ; preds = %bb.bgs, %bb.bgp, %bb.bgk, %bb.bgg, %bb.bga, %bb.bdf, %bb.bdc, %bb.bcx, %bb.bby, %bb.bbv, %bb.azc, %bb.ayz, %bb.axf, %bb.awg, %bb.awd, %bb.ans, %bb.anp, %bb.anh, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfcROwRM8ZtH_11polars_plan.exit1656.thread, %bb.alt, %bb.akr, %bb.aju, %bb.ajq, %bb.aji, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfcROwRM8ZtH_11polars_plan.exit.thread, %bb.aia, %bb.abp, %bb.abm, %bb.wy, %bb.up, %bb.ul, %bb.sb, %bb.kp, %bb.kd, %bb.jf, %bb.hr, %.critedge, %bb.di, %bb.ba
  unreachable

._crit_edge3050.a:                                ; preds = %bb.b, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nm), !dbg !130583
  %i.ol = invoke { ptr, ptr } %.pre(ptr noundef nonnull %3)
          to label %bb.g unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130584 ; 2 uses

bb.d:                                             ; preds = %bb.b
  %i.om = invoke { ptr, ptr } %.pre(ptr noundef nonnull %3)
          to label %bb.e unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130585 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.on = extractvalue { ptr, ptr } %i.om, 0, !dbg !130586
  %i.oo = extractvalue { ptr, ptr } %i.om, 1, !dbg !130586
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 32, !dbg !130586
  %i.oq = load ptr, ptr %i.op, align 8, !dbg !130586, !invariant.load !3394, !nonnull !3394
  %i.or = invoke noundef i64 %i.oq(ptr noundef %i.on)
          to label %bb.f unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130587 ; 2 uses

bb.f:                                             ; preds = %bb.e
  store i64 %i.or, ptr %i.nn, align 8, !dbg !130586
  %i.os = icmp eq i64 %i.or, 1, !dbg !130588
  br i1 %i.os, label %._crit_edge3050.a, label %.invoke3354, !dbg !130588, !prof !3464

bb.g:                                             ; preds = %._crit_edge3050.a
  %i.ot = extractvalue { ptr, ptr } %i.ol, 0, !dbg !130583
  %i.ou = extractvalue { ptr, ptr } %i.ol, 1, !dbg !130583
  store ptr %i.ot, ptr %i.nm, align 8, !dbg !130583
  %i.ov = getelementptr inbounds nuw i8, ptr %i.nm, i64 8, !dbg !130583
  store ptr %i.ou, ptr %i.ov, align 8, !dbg !130583
  %i.ow = invoke noundef nonnull align 8 ptr @_RNvXs2_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionWrapNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeQDINtB5_10CollectionB17_EEL_EINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutB1h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.nm, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @543)
          to label %bb.h unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130589 ; 129 uses

bb.h:                                             ; preds = %bb.g
  %.val1051 = load ptr, ptr %2, align 8, !dbg !130590, !nonnull !3394, !align !3446, !noundef !3394 ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.val1051, i64 16, !dbg !130591
  %i.oy = load i64, ptr %i.ox, align 8, !dbg !130591, !noundef !3394 ; 5 uses
  %i.oz = icmp ult i64 %1, %i.oy, !dbg !130592
  br i1 %i.oz, label %bb.i, label %.invoke3350, !dbg !130592, !prof !3464

bb.i:                                             ; preds = %bb.h
  %i.pa = getelementptr inbounds nuw i8, ptr %.val1051, i64 8, !dbg !130593
  %i.pb = load ptr, ptr %i.pa, align 8, !dbg !130593, !nonnull !3394, !noundef !3394 ; 5 uses
  %i.pc = getelementptr inbounds nuw [368 x i8], ptr %i.pb, i64 %1, !dbg !130594 ; 51 uses
  %i.pd = load i64, ptr %i.pc, align 16, !dbg !130590, !range !3901, !noundef !3394 ; 3 uses
  %i.pe = icmp ne i64 %i.pd, -9223372036854775786, !dbg !130590
  call void @llvm.assume(i1 %i.pe), !dbg !130590
  %i.pf = add nsw i64 %i.pd, 9223372036854775804, !dbg !130590
  %i.pg = icmp ugt i64 %i.pd, -9223372036854775805, !dbg !130590
  %i.ph = select i1 %i.pg, i64 %i.pf, i64 18, !dbg !130590
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
  ], !dbg !130595, !prof !4463

default.unreachable3256:                          ; preds = %bb.akl, %bb.zl, %bb.px, %bb.vg, %bb.pi
  unreachable

bb.j:                                             ; preds = %bb.i
  unreachable, !dbg !130596

bb.k:                                             ; preds = %bb.i
  %i.pi = load ptr, ptr %i.no, align 8, !dbg !130597, !nonnull !3394, !noundef !3394
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 16, !dbg !130598
  %i.pk = invoke noundef align 8 ptr @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState30compute_projected_names_subsetBc_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ow, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.pj)
          to label %bb.z unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130599

bb.l:                                             ; preds = %bb.i
  %i.pl = invoke noundef i8 @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState10projectionBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ow)
          to label %bb.nd unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130600

bb.m:                                             ; preds = %bb.i
  %i.pm = invoke noundef i8 @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState10projectionBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ow)
          to label %bb.pi unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130601

bb.n:                                             ; preds = %bb.i
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pc, i64 40, !dbg !130602
  %i.po = load i64, ptr %i.pn, align 8, !dbg !130602, !noundef !3394 ; 4 uses
  %i.pp = invoke noundef i8 @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState10projectionBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ow)
          to label %bb.pu unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130603

bb.o:                                             ; preds = %bb.i
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pc, i64 24, !dbg !130604
  %i.pr = load i64, ptr %i.pq, align 8, !dbg !130604, !noundef !3394
  %i.ps = invoke { ptr, ptr } %.pre(ptr noundef nonnull %3)
          to label %bb.wf unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !130605 ; 2 uses

bb.p:                                             ; preds = %bb.i
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pc, i64 8, !dbg !130590
  %i.pu = load i64, ptr %i.pt, align 8, !dbg !130590, !range !3524, !noundef !3394
  %i.pv = trunc nuw i64 %i.pu to i1, !dbg !130595
  br i1 %i.pv, label %bb.abe, label %bb.yg, !dbg !130595

bb.q:                                             ; preds = %bb.i
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdownNtB4_25ProjectionPushdownVisitor8pushdown:bb.a

bb.rk:                                            ; preds = %bb.rj
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bbx, i64 24, !dbg !131798 ; 5 uses
  %i.bcc = load i64, ptr %i.bcb, align 8, !dbg !131798, !noundef !3394 ; 2 uses
  %i.bcd = icmp ult i64 %i.bcc, 82351536043346213, !dbg !131799
  call void @llvm.assume(i1 %i.bcd), !dbg !131800
  %i.bce = icmp eq i64 %i.bcc, 1, !dbg !131801
  br i1 %i.bce, label %bb.rl, label %bb.sj, !dbg !131801

bb.rl:                                            ; preds = %bb.rk
  %i.bcf = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !131802 ; 2 uses
  %i.bcg = load ptr, ptr %i.bcf, align 8, !dbg !131802, !nonnull !3394, !align !3446, !noundef !3394 ; 3 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bbx, i64 16, !dbg !131803 ; 4 uses
  %i.bci = load ptr, ptr %i.bch, align 16, !dbg !131803, !nonnull !3394, !noundef !3394
  %i.bcj = getelementptr i8, ptr %i.bci, i64 96, !dbg !131804
  %.val939 = load i64, ptr %i.bcj, align 16, !dbg !131804, !noundef !3394 ; 2 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcg, i64 16, !dbg !131805
  %i.bcl = load i64, ptr %i.bck, align 8, !dbg !131805, !noundef !3394
  %i.bcm = icmp ult i64 %.val939, %i.bcl, !dbg !131806
  br i1 %i.bcm, label %bb.rm, label %.invoke3350, !dbg !131806, !prof !3464

bb.rm:                                            ; preds = %bb.rl
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcg, i64 8, !dbg !131807
  %i.bco = load ptr, ptr %i.bcn, align 8, !dbg !131807, !nonnull !3394, !noundef !3394
  %i.bcp = getelementptr inbounds nuw [144 x i8], ptr %i.bco, i64 %.val939, !dbg !131808 ; 4 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcp, i64 112, !dbg !131802
  %i.bcr = load i64, ptr %i.bcq, align 16, !dbg !131802, !range !3903, !noundef !3394 ; 3 uses
  %i.bcs = icmp ne i64 %i.bcr, -9223372036854775791, !dbg !131802
  call void @llvm.assume(i1 %i.bcs), !dbg !131802
  %i.bct = xor i64 %i.bcr, -9223372036854775808, !dbg !131802
  %i.bcu = icmp slt i64 %i.bcr, 0, !dbg !131802
  %i.bcv = select i1 %i.bcu, i64 %i.bct, i64 17, !dbg !131802
  switch i64 %i.bcv, label %bb.sj [
    i64 11, label %bb.rn
    i64 21, label %.thread3261
  ], !dbg !131809

.thread3261:                                      ; preds = %bb.rm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ne), !dbg !131810
  br label %bb.rv, !dbg !131811

bb.rn:                                            ; preds = %bb.rm
  %i.bcw = load i8, ptr %i.bcp, align 16, !dbg !131802, !range !3896, !noundef !3394
  %i.bcx = icmp eq i8 %i.bcw, 12, !dbg !131809
  br i1 %i.bcx, label %bb.ro, label %bb.sj, !dbg !131809

bb.ro:                                            ; preds = %bb.rn
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcp, i64 1, !dbg !131809
  %i.bcz = load i8, ptr %i.bcy, align 1, !dbg !131809, !range !3721, !noundef !3394
  %i.bda = trunc nuw i8 %i.bcz to i1, !dbg !131809
  br i1 %i.bda, label %bb.rp, label %bb.sj, !dbg !131809

bb.rp:                                            ; preds = %bb.ro
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bcp, i64 8, !dbg !131812
  %i.bdc = load i64, ptr %i.bdb, align 8, !dbg !131812, !noundef !3394
  %i.bdd = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !131813
  %i.bde = load ptr, ptr %i.bdd, align 8, !dbg !131813, !nonnull !3394, !align !3446, !noundef !3394
  %i.bdf = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !131814
  %i.bdg = load ptr, ptr %i.bdf, align 8, !dbg !131814, !nonnull !3394, !align !3446, !noundef !3394
  %i.bdh = invoke noundef i8 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height27aexpr_projection_height_rec(i64 noundef %i.bdc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bcg, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bde, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bdg)
          to label %bb.rq unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131815

bb.rq:                                            ; preds = %bb.rp
  %i.bdi = icmp eq i8 %i.bdh, 0, !dbg !131816
  br i1 %i.bdi, label %bb.rr, label %bb.sj, !dbg !131816

bb.rr:                                            ; preds = %bb.rq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ng), !dbg !131817
  %i.bdj = load i64, ptr %i.bcb, align 8, !dbg !131818, !noundef !3394
  %.not677 = icmp eq i64 %i.bdj, 0, !dbg !131819
  br i1 %.not677, label %.invoke3356, label %bb.rs, !dbg !131819

bb.rs:                                            ; preds = %bb.rr
  %i.bdk = load ptr, ptr %i.bcf, align 8, !dbg !131817, !nonnull !3394, !align !3446, !noundef !3394 ; 2 uses
  %i.bdl = load ptr, ptr %i.bch, align 16, !dbg !131820, !nonnull !3394, !noundef !3394
  %i.bdm = getelementptr i8, ptr %i.bdl, i64 96, !dbg !131821
  %.val938 = load i64, ptr %i.bdm, align 16, !dbg !131821, !noundef !3394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nf), !dbg !131822
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.nf, i64 112, !dbg !131822
  store i64 -9223372036854775787, ptr %i.bdn, align 16, !dbg !131822
  %i.bdo = getelementptr i8, ptr %i.bdk, i64 8, !dbg !131823
  %.val1151 = load ptr, ptr %i.bdo, align 8, !dbg !131823
  %i.bdp = getelementptr i8, ptr %i.bdk, i64 16, !dbg !131823
  %.val1152 = load i64, ptr %i.bdp, align 8, !dbg !131823, !noundef !3394
  invoke fastcc void @_RNvMs0_NtCs2mZqlW55729_12polars_utils5arenaINtB5_5ArenaNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE7replaceBX_(ptr noalias noundef align 16 captures(none) dereferenceable(144) %i.ng, ptr %.val1151, i64 %.val1152, i64 noundef %.val938, ptr noalias noundef align 16 captures(address) dereferenceable(144) %i.nf)
          to label %bb.rt unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131823

bb.rt:                                            ; preds = %bb.rs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nf), !dbg !131824
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.ng)
          to label %bb.ru unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131825

bb.ru:                                            ; preds = %bb.rt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ng), !dbg !131825
  %.pre3061.a = load i64, ptr %i.bcb, align 8, !dbg !131826
  %i.bdq = icmp eq i64 %.pre3061.a, 0, !dbg !131811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ne), !dbg !131810
  br i1 %i.bdq, label %.invoke3356, label %bb.rv, !dbg !131811

bb.rv:                                            ; preds = %.thread3261, %bb.ru
  %i.bdr = load ptr, ptr %i.bch, align 16, !dbg !131827, !nonnull !3394, !noundef !3394
  %i.bds = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIR11output_name(ptr noundef nonnull align 16 %i.bdr)
          to label %bb.rw unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131828 ; 3 uses

bb.rw:                                            ; preds = %bb.rv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en), !dbg !131829
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 23, !dbg !131830
  %i.bdu = load i8, ptr %i.bdt, align 1, !dbg !131830, !range !3542, !noundef !3394
  %i.bdv = icmp eq i8 %i.bdu, -40, !dbg !131831
  br i1 %i.bdv, label %bb.rx, label %bb.ry, !dbg !131831

bb.rx:                                            ; preds = %bb.rw
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.en, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bds)
          to label %bb.rz unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131832

bb.ry:                                            ; preds = %bb.rw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %i.bds, i64 24, i1 false), !dbg !131833
  br label %bb.rz, !dbg !131834

bb.rz:                                            ; preds = %bb.rx, %bb.ry
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ne, ptr noundef nonnull align 8 dereferenceable(24) %i.en, i64 24, i1 false), !dbg !131835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !dbg !131836
  %i.bdw = load i64, ptr %i.bcb, align 8, !dbg !131837, !noundef !3394
  %.not679 = icmp eq i64 %i.bdw, 0, !dbg !131838
  br i1 %.not679, label %bb.sb, label %bb.sa, !dbg !131838

bb.sa:                                            ; preds = %bb.rz
  %i.bdx = load ptr, ptr %i.bch, align 16, !dbg !131839, !nonnull !3394, !noundef !3394
  invoke void @_RNvMs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIR9set_alias(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.bdx, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ne)
          to label %bb.sc unwind label %.thread2209, !dbg !131840

bb.sb:                                            ; preds = %bb.rz
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @561) #41
          to label %bb.c unwind label %bb.sh, !dbg !131838

.thread2209:                                      ; preds = %bb.sf, %bb.se, %bb.sd, %bb.sc, %bb.sa
  %lpad.thr_comm2207 = landingpad { ptr, i32 }
          cleanup
  br label %.thread, !dbg !131841

bb.sc:                                            ; preds = %bb.sa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nd), !dbg !131842
  %i.bdy = invoke { ptr, ptr } %i.nr(ptr noundef nonnull %3)
          to label %bb.sd unwind label %.thread2209, !dbg !131843 ; 2 uses

bb.sd:                                            ; preds = %bb.sc
  %i.bdz = extractvalue { ptr, ptr } %i.bdy, 0, !dbg !131842
  %i.bea = extractvalue { ptr, ptr } %i.bdy, 1, !dbg !131842
  store ptr %i.bdz, ptr %i.nd, align 8, !dbg !131842
  %i.beb = getelementptr inbounds nuw i8, ptr %i.nd, i64 8, !dbg !131842
  store ptr %i.bea, ptr %i.beb, align 8, !dbg !131842
  %i.bec = invoke noundef nonnull align 8 ptr @_RNvXs2_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionWrapNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeQDINtB5_10CollectionB17_EEL_EINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutB1h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.nd, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @562)
          to label %bb.se unwind label %.thread2209, !dbg !131844

bb.se:                                            ; preds = %bb.sd
  %i.bed = invoke noundef nonnull ptr @_RNvYNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeNtB4_18GetProjectionState14projection_mutBc_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bec)
          to label %bb.sf unwind label %.thread2209, !dbg !131845

bb.sf:                                            ; preds = %bb.se
  store i8 2, ptr %i.bed, align 1, !dbg !131846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nd), !dbg !131847
  invoke fastcc void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc(ptr noundef nonnull %3, ptr %i.nr, ptr %.pre)
          to label %bb.sg unwind label %.thread2209, !dbg !131848

bb.sg:                                            ; preds = %bb.sf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ne), !dbg !131841
  br label %bb.big, !dbg !131849

bb.sh:                                            ; preds = %bb.sb
  %lpad.thr_comm.split-lp2208 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %i.ne, i64 23, !dbg !131850
  %i.bef = load i8, ptr %i.bee, align 1, !dbg !131850, !range !3542, !alias.scope !127486, !noundef !3394
  %i.beg = icmp eq i8 %i.bef, -40, !dbg !131851
  br i1 %i.beg, label %bb.si, label %.thread, !dbg !131851, !prof !3463

bb.si:                                            ; preds = %bb.sh
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ne)
          to label %.thread unwind label %bb.bj, !dbg !131852

bb.sj:                                            ; preds = %bb.rq, %bb.rm, %bb.rn, %bb.ro, %bb.rk
  %i.beh = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !131853
  %i.bei = load ptr, ptr %i.beh, align 8, !dbg !131853, !nonnull !3394, !align !3446, !noundef !3394 ; 10 uses
  invoke void @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE5clearCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bei)
          to label %bb.sk unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131854

bb.sk:                                            ; preds = %bb.sj
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bbx, i64 16, !dbg !131855
  %i.bek = load ptr, ptr %i.bej, align 16, !dbg !131855, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.bel = load i64, ptr %i.bcb, align 8, !dbg !131856, !noundef !3394 ; 2 uses
  %.idx2976 = mul nuw nsw i64 %i.bel, 112, !dbg !131857
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bek, i64 %.idx2976, !dbg !131857
  %i.ben = icmp eq i64 %i.bel, 0, !dbg !131858
  br i1 %i.ben, label %._crit_edge2946, label %.lr.ph2945, !dbg !131859

.lr.ph2945:                                       ; preds = %bb.sk
  %i.beo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bei, i64 48
  %i.beq = getelementptr inbounds nuw i8, ptr %i.nb, i64 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i1374 = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %.sroa.3.0..sroa_idx.i1375 = getelementptr inbounds nuw i8, ptr %i.nb, i64 20
  br label %bb.sl, !dbg !131859

bb.sl:                                            ; preds = %.lr.ph2945, %bb.te
  %.sroa.018.02943 = phi i1 [ false, %.lr.ph2945 ], [ %.sroa.018.1, %bb.te ]
  %.sroa.019.02942 = phi ptr [ %i.bek, %.lr.ph2945 ], [ %i.ber, %bb.te ] ; 3 uses
  %.sroa.022.02941 = phi i8 [ 0, %.lr.ph2945 ], [ %.sroa.022.1, %bb.te ]
  %i.ber = getelementptr inbounds nuw i8, ptr %.sroa.019.02942, i64 112, !dbg !131860 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nc), !dbg !131861
  %i.bes = getelementptr i8, ptr %.sroa.019.02942, i64 96, !dbg !131862 ; 3 uses
  %.sroa.019.0.val937 = load i64, ptr %i.bes, align 16, !dbg !131862, !noundef !3394
  %i.bet = load ptr, ptr %i.beo, align 8, !dbg !131863, !nonnull !3394, !align !3446, !noundef !3394
  invoke void @_RNvNtCsfcROwRM8ZtH_11polars_plan5utils24aexpr_to_leaf_names_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.nc, i64 noundef %.sroa.019.0.val937, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bet)
          to label %bb.sm unwind label %.thread2102.loopexit, !dbg !131861

bb.sm:                                            ; preds = %bb.sl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !131864, !noalias !127513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(72) %i.nc, i64 72, i1 false), !dbg !131865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nc), !dbg !131866
  call void @llvm.experimental.noalias.scope.decl(metadata !127517), !dbg !131867
  call void @llvm.experimental.noalias.scope.decl(metadata !127518), !dbg !131868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !131869, !noalias !127513
  invoke void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_3map3MapINtNtB6_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBa_6option6OptionNtNtB1J_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1J_5aexpr5AExprEEB2B_ENCNvNtB1L_5utils24aexpr_to_leaf_names_iter0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1L_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aw)
          to label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedIBN_INtNtB7_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBb_6option6OptionNtNtB1O_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1O_5aexpr5AExprEEB2G_ENCNvNtB1Q_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5y_8IndexSetNtNtB3B_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB9_6traits7collect6ExtendB6h_E6extendBW_E0ENtNtB7A_8iterator8Iterator9size_hintB1Q_.exit.i.i1365 unwind label %bb.sn, !dbg !131870, !noalias !127513

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedIBN_INtNtB7_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBb_6option6OptionNtNtB1O_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1O_5aexpr5AExprEEB2G_ENCNvNtB1Q_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5y_8IndexSetNtNtB3B_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB9_6traits7collect6ExtendB6h_E6extendBW_E0ENtNtB7A_8iterator8Iterator9size_hintB1Q_.exit.i.i1365: ; preds = %bb.sm
  %i.beu = load i64, ptr %i.av, align 8, !dbg !131871, !noalias !127513, !noundef !3394 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !131872, !noalias !127513
  %i.bev = load i64, ptr %i.bep, align 8, !dbg !131873, !alias.scope !127519, !noalias !127520, !noundef !3394
  %i.bew = icmp eq i64 %i.bev, 0, !dbg !131874
  %i.bex = lshr i64 %i.beu, 1, !dbg !131874
  %spec.select.i.i1366 = select i1 %i.bew, i64 0, i64 %i.bex, !dbg !131874
  %.sroa.0.0.i.i1367 = sub nuw i64 %i.beu, %spec.select.i.i1366, !dbg !131874
  invoke void @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bei, i64 noundef %.sroa.0.0.i.i1367)
          to label %_RINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB2y_8adapters3map3MapINtNtB3D_6cloned6ClonedIB3z_INtNtB3D_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB2A_6option6OptionNtNtB4V_7expr_ir10ColumnNodeEFTNtNtBS_5arena4NodeRNtNtB4V_5aexpr5AExprEEB5N_ENCNvNtB4X_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtB8_3setINtB8h_8IndexSetBO_B1E_EIB2s_BO_E6extendB40_E0EEB4X_.exit.i1368 unwind label %bb.sn, !dbg !131875, !noalias !127520

bb.sn:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedIBN_INtNtB7_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBb_6option6OptionNtNtB1O_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1O_5aexpr5AExprEEB2G_ENCNvNtB1Q_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5y_8IndexSetNtNtB3B_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB9_6traits7collect6ExtendB6h_E6extendBW_E0ENtNtB7A_8iterator8Iterator9size_hintB1Q_.exit.i.i1365, %bb.sm
  %lpad.thr_comm.i.i1363 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %i.aw, i64 32, !dbg !131876
  %i.bez = load ptr, ptr %i.bey, align 8, !dbg !131877, !alias.scope !127521, !noalias !127513, !noundef !3394
  %i.bfa = icmp eq ptr %i.bez, null, !dbg !131877
  br i1 %i.bfa, label %.thread, label %bb.so, !dbg !131877

bb.so:                                            ; preds = %bb.sn
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.aw, i64 48, !dbg !131878
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bfb)
          to label %.thread unwind label %bb.sp, !dbg !131879, !noalias !127520

bb.sp:                                            ; preds = %bb.so
  %i.bfc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !131880, !noalias !127520
  unreachable, !dbg !131880

_RINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB2y_8adapters3map3MapINtNtB3D_6cloned6ClonedIB3z_INtNtB3D_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB2A_6option6OptionNtNtB4V_7expr_ir10ColumnNodeEFTNtNtBS_5arena4NodeRNtNtB4V_5aexpr5AExprEEB5N_ENCNvNtB4X_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtB8_3setINtB8h_8IndexSetBO_B1E_EIB2s_BO_E6extendB40_E0EEB4X_.exit.i1368: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6cloned6ClonedIBN_INtNtB7_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBb_6option6OptionNtNtB1O_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1O_5aexpr5AExprEEB2G_ENCNvNtB1Q_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5y_8IndexSetNtNtB3B_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB9_6traits7collect6ExtendB6h_E6extendBW_E0ENtNtB7A_8iterator8Iterator9size_hintB1Q_.exit.i.i1365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !131881, !noalias !127513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.au, ptr noundef nonnull align 8 dereferenceable(72) %i.aw, i64 72, i1 false), !dbg !131881, !noalias !127513
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedIBO_INtNtB8_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBc_6option6OptionNtNtB1P_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1P_5aexpr5AExprEEB2H_ENCNvNtB1R_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5z_8IndexSetNtNtB3C_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtBa_6traits7collect6ExtendB6i_E6extendBX_E0ENtNtB7B_8iterator8Iterator4folduNCINvNvB8k_8for_each4callTB6i_uENCINvXsb_NtB5B_3mapINtB9v_8IndexMapB6i_uB6J_EIB7x_B9f_E6extendBN_E0E0EB1R_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bei)
          to label %bb.sq unwind label %.thread2102.loopexit, !dbg !131882

bb.sq:                                            ; preds = %_RINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB2y_8adapters3map3MapINtNtB3D_6cloned6ClonedIB3z_INtNtB3D_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB2A_6option6OptionNtNtB4V_7expr_ir10ColumnNodeEFTNtNtBS_5arena4NodeRNtNtB4V_5aexpr5AExprEEB5N_ENCNvNtB4X_5utils24aexpr_to_leaf_names_iter0EENCINvXs8_NtB8_3setINtB8h_8IndexSetBO_B1E_EIB2s_BO_E6extendB40_E0EEB4X_.exit.i1368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !131883, !noalias !127513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !131884, !noalias !127513
  %i.bfd = trunc nuw i8 %.sroa.022.02941 to i1, !dbg !131885
  br i1 %i.bfd, label %bb.sw, label %bb.sr, !dbg !131885

bb.sr:                                            ; preds = %bb.sq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nb), !dbg !131886
  %i.bfe = load ptr, ptr %i.beo, align 8, !dbg !131886, !nonnull !3394, !align !3446, !noundef !3394
  %.sroa.019.0.val936 = load i64, ptr %i.bes, align 16, !dbg !131887, !noundef !3394
  store i64 %.sroa.019.0.val936, ptr %i.beq, align 8, !dbg !131888, !alias.scope !127522, !noalias !127523
  store i32 1, ptr %.sroa.2.0..sroa_idx.i1374, align 8, !dbg !131888, !alias.scope !127522, !noalias !127523
  store i32 1, ptr %.sroa.3.0..sroa_idx.i1375, align 4, !dbg !131888, !alias.scope !127522, !noalias !127523
  store ptr %i.bfe, ptr %i.nb, align 8, !dbg !131888, !alias.scope !127522, !noalias !127523
  br label %bb.ss, !dbg !131889

bb.ss:                                            ; preds = %bb.st, %bb.sr
  %i.bff = invoke { i64, ptr } @_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB5_9AExprIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nb)
          to label %.noexc1377 unwind label %bb.su, !dbg !131890

.noexc1377:                                       ; preds = %bb.ss
  %i.bfg = extractvalue { i64, ptr } %i.bff, 1, !dbg !131891 ; 2 uses
  %.not.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.bfg, null, !dbg !131891 ; 2 uses
  br i1 %.not.not.not.not.i.not.not.not.not.not, label %bb.st, label %bb.sv, !dbg !131892

bb.st:                                            ; preds = %.noexc1377
  %i.bfh = getelementptr i8, ptr %i.bfg, i64 112, !dbg !131893
  %.val.i1376 = load i64, ptr %i.bfh, align 16, !dbg !131893, !range !3903, !noundef !3394 ; 2 uses
  %i.bfi = icmp ne i64 %.val.i1376, -9223372036854775791, !dbg !131894
  call void @llvm.assume(i1 %i.bfi), !dbg !131894
  %i.bfj = icmp eq i64 %.val.i1376, -9223372036854775790, !dbg !131895
  br i1 %i.bfj, label %bb.sv, label %bb.ss, !dbg !131893

bb.su:                                            ; preds = %bb.ss
  %i.bfk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.beq)
          to label %.thread unwind label %bb.bj, !dbg !131896

bb.sv:                                            ; preds = %.noexc1377, %bb.st
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.beq)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit1380 unwind label %.thread2102.loopexit, !dbg !131897

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit1380: ; preds = %bb.sv
  %i.bfl = zext i1 %.not.not.not.not.i.not.not.not.not.not to i8, !dbg !131898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nb), !dbg !131899
  br label %bb.sw, !dbg !131885

bb.sw:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit1380, %bb.sq
  %.sroa.022.1 = phi i8 [ %i.bfl, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit1380 ], [ 1, %bb.sq ], !dbg !131900 ; 2 uses
  %i.bfm = load ptr, ptr %i.beo, align 8, !dbg !131901, !nonnull !3394, !align !3446, !noundef !3394 ; 2 uses
  %.sroa.019.0.val = load i64, ptr %i.bes, align 16, !dbg !131902, !noundef !3394 ; 2 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfm, i64 16, !dbg !131903
  %i.bfo = load i64, ptr %i.bfn, align 8, !dbg !131903, !noundef !3394
  %i.bfp = icmp ult i64 %.sroa.019.0.val, %i.bfo, !dbg !131904
  br i1 %i.bfp, label %bb.sx, label %.invoke3350, !dbg !131904, !prof !3464

bb.sx:                                            ; preds = %bb.sw
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfm, i64 8, !dbg !131905
  %i.bfr = load ptr, ptr %i.bfq, align 8, !dbg !131905, !nonnull !3394, !noundef !3394
  %i.bfs = getelementptr inbounds nuw [144 x i8], ptr %i.bfr, i64 %.sroa.019.0.val, !dbg !131906 ; 5 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfs, i64 112, !dbg !131901
  %i.bfu = load i64, ptr %i.bft, align 16, !dbg !131901, !range !3903, !noundef !3394 ; 2 uses
  %i.bfv = icmp ne i64 %i.bfu, -9223372036854775791, !dbg !131901
  call void @llvm.assume(i1 %i.bfv), !dbg !131901
  %i.bfw = icmp eq i64 %i.bfu, -9223372036854775806, !dbg !131907
  br i1 %i.bfw, label %bb.sy, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !131907

bb.sy:                                            ; preds = %bb.sx
  %i.bfx = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIR11output_name(ptr noundef nonnull align 16 %.sroa.019.02942)
          to label %bb.sz unwind label %.thread2102.loopexit, !dbg !131908 ; 4 uses

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %.noexc916, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit, %bb.sx
  br label %bb.te, !dbg !131909

bb.sz:                                            ; preds = %bb.sy
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfs, i64 23, !dbg !131910
  %i.bfz = load i8, ptr %i.bfy, align 1, !dbg !131910, !range !3542, !alias.scope !127548, !noundef !3394 ; 2 uses
  %i.bga = icmp ugt i8 %i.bfz, -41, !dbg !131911
  br i1 %i.bga, label %bb.tb, label %bb.ta, !dbg !131911

bb.ta:                                            ; preds = %bb.sz
  %i.bgb = add i8 %i.bfz, 64, !dbg !131912
  %i.bgc = call i8 @llvm.umin.i8(i8 %i.bgb, i8 24), !dbg !131913
  %.sroa.0.0.i.i1381 = zext nneg i8 %i.bgc to i64, !dbg !131913
  br label %.noexc915, !dbg !131914

bb.tb:                                            ; preds = %bb.sz
  %i.bgd = load ptr, ptr %i.bfs, align 16, !dbg !131915, !alias.scope !127548, !noundef !3394
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bfs, i64 8, !dbg !131916
  %i.bgf = load i64, ptr %i.bge, align 8, !dbg !131916, !alias.scope !127548, !noundef !3394
  br label %.noexc915, !dbg !131917

.noexc915:                                        ; preds = %bb.tb, %bb.ta
  %.sroa.01.0.i1382 = phi i64 [ %i.bgf, %bb.tb ], [ %.sroa.0.0.i.i1381, %bb.ta ], !dbg !131918 ; 2 uses
  %.sroa.0.0.i1383 = phi ptr [ %i.bgd, %bb.tb ], [ %i.bfs, %bb.ta ], !dbg !131919
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bfx, i64 23, !dbg !131920
  %i.bgh = load i8, ptr %i.bgg, align 1, !dbg !131920, !range !3542, !alias.scope !127549, !noundef !3394 ; 2 uses
  %i.bgi = icmp ugt i8 %i.bgh, -41, !dbg !131921
  br i1 %i.bgi, label %bb.td, label %bb.tc, !dbg !131921

bb.tc:                                            ; preds = %.noexc915
  %i.bgj = add i8 %i.bgh, 64, !dbg !131922
  %i.bgk = call i8 @llvm.umin.i8(i8 %i.bgj, i8 24), !dbg !131923
  %.sroa.0.0.i.i1385 = zext nneg i8 %i.bgk to i64, !dbg !131923
  br label %.noexc916, !dbg !131924

bb.td:                                            ; preds = %.noexc915
  %i.bgl = load ptr, ptr %i.bfx, align 8, !dbg !131925, !alias.scope !127549, !noundef !3394
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bfx, i64 8, !dbg !131926
  %i.bgn = load i64, ptr %i.bgm, align 8, !dbg !131926, !alias.scope !127549, !noundef !3394
  br label %.noexc916, !dbg !131927

.noexc916:                                        ; preds = %bb.td, %bb.tc
  %.sroa.01.0.i1386 = phi i64 [ %i.bgn, %bb.td ], [ %.sroa.0.0.i.i1385, %bb.tc ], !dbg !131928
  %.sroa.0.0.i1387 = phi ptr [ %i.bgl, %bb.td ], [ %i.bfx, %bb.tc ], !dbg !131929
  %i.bgo = icmp eq i64 %.sroa.01.0.i1382, %.sroa.01.0.i1386, !dbg !131930
  br i1 %i.bgo, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !131930

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.noexc916
  %bcmp.i = call i32 @bcmp(ptr %.sroa.0.0.i1383, ptr %.sroa.0.0.i1387, i64 %.sroa.01.0.i1382), !dbg !131931
  %i.bgp = icmp eq i32 %bcmp.i, 0, !dbg !131931
  br i1 %i.bgp, label %bb.te, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !127547

bb.te:                                            ; preds = %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread
  %.sroa.018.1 = phi i1 [ %.sroa.018.02943, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit ], [ true, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.thread ], !dbg !131932 ; 2 uses
  %i.bgq = icmp eq ptr %i.ber, %i.bem, !dbg !131858
  br i1 %i.bgq, label %._crit_edge2946.loopexit, label %bb.sl, !dbg !131859

._crit_edge2946.loopexit:                         ; preds = %bb.te
  %i.bgr = trunc nuw i8 %.sroa.022.1 to i1, !dbg !131933
  br label %._crit_edge2946, !dbg !131934

._crit_edge2946:                                  ; preds = %._crit_edge2946.loopexit, %bb.sk
  %.sroa.022.0.lcssa = phi i1 [ false, %bb.sk ], [ %i.bgr, %._crit_edge2946.loopexit ], !dbg !131935
  %.sroa.018.0.lcssa = phi i1 [ false, %bb.sk ], [ %.sroa.018.1, %._crit_edge2946.loopexit ], !dbg !131936 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.na), !dbg !131934
  %.val984 = load ptr, ptr %2, align 8, !dbg !131937, !nonnull !3394, !align !3446, !noundef !3394
  %i.bgs = load ptr, ptr %i.ny, align 8, !dbg !131938, !nonnull !3394, !align !3446, !noundef !3394
  %i.bgt = invoke noundef nonnull ptr @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR17schema_with_cache(i64 noundef %i.po, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val984, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bgs)
          to label %bb.tf unwind label %.thread2102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131939 ; 5 uses

bb.tf:                                            ; preds = %._crit_edge2946
  store ptr %i.bgt, ptr %i.na, align 8, !dbg !131939
  br i1 %.sroa.022.0.lcssa, label %bb.th, label %bb.tg, !dbg !131933

bb.tg:                                            ; preds = %bb.ts, %bb.th, %bb.tf
  %i.bgu = phi ptr [ %.pre3062, %bb.ts ], [ %i.bgt, %bb.th ], [ %i.bgt, %bb.tf ], !dbg !131940 ; 3 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bei, i64 48, !dbg !131941
  %i.bgw = load i64, ptr %i.bgv, align 8, !dbg !131941, !noundef !3394
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgu, i64 64, !dbg !131942
  %i.bgy = load i64, ptr %i.bgx, align 8, !dbg !131942, !noundef !3394
  %.not681 = icmp eq i64 %i.bgw, %i.bgy, !dbg !131943
  br i1 %.not681, label %bb.tt, label %bb.ua, !dbg !131943

bb.th:                                            ; preds = %bb.tf
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bei, i64 48, !dbg !131944
  %i.bha = load i64, ptr %i.bgz, align 8, !dbg !131944, !noundef !3394
  %i.bhb = icmp eq i64 %i.bha, 0, !dbg !131945
  br i1 %i.bhb, label %bb.ti, label %bb.tg, !dbg !131945

bb.ti:                                            ; preds = %bb.th
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mz), !dbg !131946
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bgt, i64 24, !dbg !131947
  %i.bhd = load ptr, ptr %i.bhc, align 8, !dbg !131947, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgt, i64 32, !dbg !131948
  %i.bhf = load i64, ptr %i.bhe, align 8, !dbg !131948, !noundef !3394
  %i.bhg = getelementptr inbounds nuw [80 x i8], ptr %i.bhd, i64 %i.bhf, !dbg !131949
  %i.bhh = invoke noundef align 8 ptr @_RINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeERB2c_EB8_(ptr noundef nonnull %i.bhd, ptr noundef nonnull %i.bhg)
          to label %bb.tl unwind label %bb.tk, !dbg !131946 ; 4 uses

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge15ProjectionStateEBQ_.exit1395: ; preds = %bb.uv, %bb.uw, %bb.uf, %bb.uo, %bb.tk
  %.pn685 = phi { ptr, i32 } [ %i.bhl, %bb.tk ], [ %i.bje, %bb.uo ], [ %i.bij, %bb.uf ], [ %i.bjt, %bb.uw ], [ %i.bjt, %bb.uv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !127604), !dbg !131950
  call void @llvm.experimental.noalias.scope.decl(metadata !127605), !dbg !131951
  %i.bhi = load ptr, ptr %i.na, align 8, !dbg !131952, !alias.scope !127606, !nonnull !3394, !noundef !3394
  %i.bhj = atomicrmw sub ptr %i.bhi, i64 1 release, align 8, !dbg !131953, !noalias !127606
  %i.bhk = icmp eq i64 %i.bhj, 1, !dbg !131954
  br i1 %i.bhk, label %bb.tj, label %.thread, !dbg !131954

bb.tj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge15ProjectionStateEBQ_.exit1395
  fence acquire, !dbg !131955
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.na) #42
          to label %.thread unwind label %bb.bj, !dbg !131956

bb.tk:                                            ; preds = %bb.tu, %bb.tz, %bb.ut, %bb.us, %bb.ur, %bb.uq, %bb.um, %bb.ul, %bb.uj, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit, %bb.ub, %bb.ua, %bb.tv, %bb.tp, %bb.to, %bb.ti
  %i.bhl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge15ProjectionStateEBQ_.exit1395

bb.tl:                                            ; preds = %bb.ti
  %.not680 = icmp eq ptr %i.bhh, null, !dbg !131957
  br i1 %.not680, label %bb.tn, label %bb.tm, !dbg !131958

bb.tm:                                            ; preds = %bb.tl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em), !dbg !131959
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhh, i64 23, !dbg !131960
  %i.bhn = load i8, ptr %i.bhm, align 1, !dbg !131960, !range !3542, !noundef !3394
  %i.bho = icmp eq i8 %i.bhn, -40, !dbg !131961
  br i1 %i.bho, label %bb.tp, label %bb.tq, !dbg !131961

bb.tn:                                            ; preds = %bb.tl
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.mz, i64 23, !dbg !131962
  store i8 -38, ptr %i.bhp, align 1, !dbg !131962
  br label %bb.to, !dbg !131963

bb.to:                                            ; preds = %bb.tr, %bb.tn
  invoke fastcc void @_RINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6_8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendBO_E6extendINtNtB2z_6option6OptionBO_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64) %i.bei, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.mz)
          to label %bb.ts unwind label %bb.tk, !dbg !131964

bb.tp:                                            ; preds = %bb.tm
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bhh)
          to label %bb.tr unwind label %bb.tk, !dbg !131965
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc:bb.a
  %i.q = add nuw i64 %.sroa.04.09, 1, !dbg !140238 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !140239
  %i.r = call { ptr, ptr } %.32.val(ptr noundef nonnull %0) #38, !dbg !140240 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0, !dbg !140240
  %i.t = extractvalue { ptr, ptr } %i.r, 1, !dbg !140240
  store ptr %i.s, ptr %i.b, align 8, !dbg !140240
  store ptr %i.t, ptr %i.o, align 8, !dbg !140240
  %i.u = call noundef nonnull align 8 ptr @_RNvXs2_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionWrapNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeQDINtB5_10CollectionB17_EEL_EINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutB1h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %.sroa.04.09, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @662), !dbg !140241
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !140242 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !dbg !140242, !align !3446, !noundef !3394 ; 6 uses
  store ptr null, ptr %i.v, align 8, !dbg !140243
  %.not = icmp eq ptr %i.w, null, !dbg !140244    ; 2 uses
  br i1 %.not, label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit, label %bb.c, !dbg !140245

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE5clearCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.w)
          to label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit unwind label %bb.d, !dbg !140246

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECsfcROwRM8ZtH_11polars_plan(ptr nonnull align 8 %i.w) #39
          to label %common.resume unwind label %bb.e, !dbg !140247

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !140248
  unreachable, !dbg !140248

common.resume:                                    ; preds = %bb.f, %bb.k, %bb.j, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.d ], [ %i.aa, %bb.f ], [ %i.ag, %bb.k ], [ %i.ag, %bb.j ]
  resume { ptr, i32 } %common.resume.op, !dbg !140249

_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !140250
  %i.z = invoke { ptr, ptr } %.24.val(ptr noundef nonnull %0)
          to label %bb.g unwind label %bb.j, !dbg !140251 ; 2 uses

bb.f:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store ptr %i.w, ptr %i.ae, align 8, !dbg !140250
  br label %common.resume, !dbg !140252

bb.g:                                             ; preds = %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit
  %i.ab = extractvalue { ptr, ptr } %i.z, 0, !dbg !140250
  %i.ac = extractvalue { ptr, ptr } %i.z, 1, !dbg !140250
  store ptr %i.ab, ptr %i.a, align 8, !dbg !140250
  store ptr %i.ac, ptr %i.p, align 8, !dbg !140250
  %i.ad = invoke noundef nonnull align 8 ptr @_RNvXs2_NtCs2mZqlW55729_12polars_utils10collectionINtB5_14CollectionWrapNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown4edge4EdgeQDINtB5_10CollectionB17_EEL_EINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutB1h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %.sroa.04.09, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @663)
          to label %bb.h unwind label %bb.j, !dbg !140253

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !140250 ; 3 uses
  %.val8 = load ptr, ptr %i.ae, align 8, !dbg !140250, !align !3446, !noundef !3394 ; 2 uses
  %i.af = icmp eq ptr %.val8, null, !dbg !140254
  br i1 %i.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEECsfcROwRM8ZtH_11polars_plan.exit, label %bb.i, !dbg !140254

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %.val8)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.f, !dbg !140254

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.h, %bb.i
  store ptr %i.w, ptr %i.ae, align 8, !dbg !140250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !140255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !140255
  %exitcond.not = icmp eq i64 %i.q, %.sroa.0.0.i, !dbg !140236
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !140220

bb.j:                                             ; preds = %bb.g, %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown17reuse_names_alloc0B9_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not, label %common.resume, label %bb.k, !dbg !140256

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %i.w)
          to label %common.resume unwind label %bb.l, !dbg !140256

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !140257
  unreachable, !dbg !140257
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18small_dummy_column(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !140258 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [96 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !140308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !140309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !140309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !140298
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !dbg !140310
  %i.h = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 4, 769) 16, i64 noundef range(i64 4, 129) 8) #44, !dbg !140311 ; 5 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !140312
  br i1 %i.i, label %bb.b, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !140313, !prof !3463

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #41
          to label %.noexc unwind label %.thread10, !dbg !140314

.thread10:                                        ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f, !dbg !140315

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !140314

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !140316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !140317
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !140317
  store i64 0, ptr %i.k, align 8, !dbg !140317
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !140317
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !140317
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !140317
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !140317
  store i8 30, ptr %i.c, align 8, !dbg !140317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !140299
  store i64 0, ptr %i.b, align 8, !dbg !140318
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !140318
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !dbg !140318
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !140318
  store i64 0, ptr %i.m, align 8, !dbg !140318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !140319
  store ptr null, ptr %i.a, align 8, !dbg !140319
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array7struct_NtB2_11StructArray3new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, i64 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.c unwind label %.thread, !dbg !140316

.thread:                                          ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 16, i64 noundef 8) #44, !dbg !140320
  br label %bb.f, !dbg !140315

bb.c:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !140321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !140321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !140321
  %i.o = invoke { ptr, ptr } @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow5array7struct_NtB4_11StructArray5boxed(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.d)
          to label %bb.d unwind label %.thread, !dbg !140322 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.p = extractvalue { ptr, ptr } %i.o, 0, !dbg !140316
  %i.q = extractvalue { ptr, ptr } %i.o, 1, !dbg !140316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !140323
  store ptr %i.p, ptr %i.h, align 8, !dbg !140298
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !140298
  store ptr %i.q, ptr %i.r, align 8, !dbg !140298
  store i64 1, ptr %i.e, align 8, !dbg !140324
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !140324
  store ptr %i.h, ptr %i.s, align 8, !dbg !140324
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !140324
  store i64 1, ptr %i.t, align 8, !dbg !140324
  call void @_RNvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB6_12ChunkedArrayNtNtB8_9datatypes10StructTypeE11from_chunksCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !dbg !140325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !140315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !140315
  %i.u = call { ptr, ptr } @_RNvXs2I_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_10StructTypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g), !dbg !140326 ; 2 uses
  %i.v = extractvalue { ptr, ptr } %i.u, 0, !dbg !140326
  %i.w = extractvalue { ptr, ptr } %i.u, 1, !dbg !140326
  call fastcc void @_RNvXs1_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnINtNtCscgRAwXFJnXP_4core7convert4FromNtNtB9_6series6SeriesE4from(ptr noalias noundef align 16 captures(none) dereferenceable(160) %0, ptr noundef nonnull %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(896) %i.w) #38, !dbg !140327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !140328
  ret void, !dbg !140329

bb.e:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !140330
  unreachable, !dbg !140330

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %.pn9, !dbg !140330

bb.f:                                             ; preds = %.thread10, %.thread
  %.pn9 = phi { ptr, i32 } [ %i.n, %.thread ], [ %i.j, %.thread10 ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !140331
  %i.z = load i8, ptr %i.y, align 1, !dbg !140331, !range !3542, !alias.scope !140307, !noundef !3394
  %i.aa = icmp eq i8 %i.z, -40, !dbg !140332
  br i1 %i.aa, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit, !dbg !140332, !prof !3463

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.e, !dbg !140333
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown19projection_pushdown(i64 noundef %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !140334 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [368 x i8], align 16              ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !140774
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140636), !dbg !140774
  %i.w = tail call noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed(), !dbg !140775, !noalias !140636
  %i.x = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !140776, !noalias !140636
  %i.y = icmp eq i8 %i.x, 2, !dbg !140777
  br i1 %i.y, label %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit, label %bb.b, !dbg !140777, !prof !3464

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #42, !dbg !140778, !noalias !140636
  br label %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit, !dbg !140778

_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32, !dbg !140779 ; 3 uses
  store i64 %i.w, ptr %i.z, align 8, !dbg !140779, !alias.scope !140636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(32) @489, i64 32, i1 false), !dbg !140779
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !140780 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !140781 ; 7 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !140781, !noundef !3394
  %i.ad = icmp ult i64 %0, %i.ac, !dbg !140782
  br i1 %i.ad, label %bb.f, label %bb.c, !dbg !140782, !prof !3464

bb.c:                                             ; preds = %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #41
          to label %bb.e unwind label %bb.d, !dbg !140783

.body:                                            ; preds = %.body109, %bb.m, %bb.h, %bb.d
  %.pn43.pn = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.al, %bb.h ], [ %i.ae, %bb.d ], [ %.pn43, %.body109 ]
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.cr, !dbg !140784

bb.d:                                             ; preds = %bb.ci, %bb.r, %bb.q, %bb.p, %bb.j, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.cs, %bb.cq, %bb.cj, %bb.by, %bb.ao, %bb.c
  unreachable

bb.f:                                             ; preds = %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan.exit
  %i.af = load ptr, ptr %i.aa, align 8, !dbg !140780, !nonnull !3394, !noundef !3394
  %i.ag = getelementptr inbounds nuw [368 x i8], ptr %i.af, i64 %0, !dbg !140785 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.u, ptr noundef nonnull align 16 dereferenceable(368) %i.ag, i64 368, i1 false), !dbg !140786
  store i64 -9223372036854775782, ptr %i.ag, align 16, !dbg !140787
  %i.ah = load i64, ptr %i.ab, align 8, !dbg !140788, !noundef !3394 ; 7 uses
  %i.ai = icmp ult i64 %i.ah, 25063510969714065, !dbg !140789
  tail call void @llvm.assume(i1 %i.ai), !dbg !140790
  %i.aj = load i64, ptr %1, align 8, !dbg !140791, !range !3865, !alias.scope !140653, !noalias !140654, !noundef !3394
  %i.ak = icmp eq i64 %i.ah, %i.aj, !dbg !140792
  br i1 %i.ak, label %bb.g, label %bb.j, !dbg !140792

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.j unwind label %bb.h, !dbg !140793, !noalias !140654

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef nonnull align 16 dereferenceable(368) %i.u) #39
          to label %.body unwind label %bb.i, !dbg !140794

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !140795
  unreachable, !dbg !140795

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.an = load ptr, ptr %i.aa, align 8, !dbg !140796, !alias.scope !140653, !noalias !140654, !nonnull !3394, !noundef !3394
  %i.ao = getelementptr inbounds nuw [368 x i8], ptr %i.an, i64 %i.ah, !dbg !140797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.ao, ptr noundef nonnull align 16 dereferenceable(368) %i.u, i64 368, i1 false), !dbg !140798
  %i.ap = add nuw nsw i64 %i.ah, 1, !dbg !140799
  store i64 %i.ap, ptr %i.ab, align 8, !dbg !140799, !alias.scope !140653, !noalias !140654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !140800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !140801
  %i.aq = invoke noundef nonnull ptr @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR17schema_with_cache(i64 noundef %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %bb.k unwind label %bb.d, !dbg !140802

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !140801
  store i64 %i.ah, ptr %i.ar, align 16, !dbg !140801
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !140801
  store ptr %i.aq, ptr %i.as, align 8, !dbg !140801
  store i64 -9223372036854775799, ptr %i.s, align 16, !dbg !140801
  %.val51 = load i64, ptr %i.ab, align 8, !dbg !140803, !noundef !3394
  %i.at = icmp ult i64 %0, %.val51, !dbg !140804
  br i1 %i.at, label %bb.p, label %bb.l, !dbg !140804, !prof !3464

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #41
          to label %bb.n unwind label %bb.m, !dbg !140805, !noalias !140656

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef nonnull align 16 dereferenceable(368) %i.s) #39
          to label %.body unwind label %bb.o, !dbg !140806, !noalias !140657

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !140807, !noalias !140657
  unreachable, !dbg !140807

bb.p:                                             ; preds = %bb.k
  %.val50 = load ptr, ptr %i.aa, align 8, !dbg !140803, !nonnull !3394, !noundef !3394
  %i.aw = getelementptr inbounds nuw [368 x i8], ptr %.val50, i64 %0, !dbg !140808 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.t, ptr noundef nonnull align 16 dereferenceable(368) %i.aw, i64 368, i1 false), !dbg !140809, !noalias !140658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.aw, ptr noundef nonnull align 16 dereferenceable(368) %i.s, i64 368, i1 false), !dbg !140810, !noalias !140657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !140811
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef align 16 dereferenceable(368) %i.t)
          to label %bb.q unwind label %bb.d, !dbg !140812

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !140812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !140813
  call void @llvm.experimental.noalias.scope.decl(metadata !140659), !dbg !140814
  %i.ax = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc unwind label %bb.d, !dbg !140815

.noexc:                                           ; preds = %bb.q
  %i.ay = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !140816, !noalias !140659
  %i.az = icmp eq i8 %i.ay, 2, !dbg !140817
  br i1 %i.az, label %bb.s, label %bb.r, !dbg !140817, !prof !3464

bb.r:                                             ; preds = %.noexc
  invoke void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #42
          to label %bb.s unwind label %bb.d, !dbg !140818

bb.s:                                             ; preds = %.noexc, %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 32, !dbg !140819 ; 4 uses
  store i64 %i.ax, ptr %i.ba, align 8, !dbg !140819, !alias.scope !140659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(32) @489, i64 32, i1 false), !dbg !140819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !140820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !140821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !140660
  store i64 0, ptr %i.o, align 8, !dbg !140822
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !140822
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.413.0..sroa_idx, align 8, !dbg !140822
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !140822
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8, !dbg !140822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !140661
  store i64 0, ptr %i.n, align 8, !dbg !140823
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !140823
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.416.0..sroa_idx, align 8, !dbg !140823
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !140823
  store i64 0, ptr %.sroa.517.0..sroa_idx, align 8, !dbg !140823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !140662
  %i.bb = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %bb.u unwind label %bb.t, !dbg !140824

.body102:                                         ; preds = %bb.bo, %bb.bp, %bb.t, %.body94
  %.pn39 = phi { ptr, i32 } [ %.pn37, %.body94 ], [ %i.bc, %bb.t ], [ %i.dk, %bb.bp ], [ %i.dj, %bb.bo ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_(ptr noalias noundef align 8 dereferenceable(24) %i.n) #39
          to label %.body106 unwind label %bb.cr, !dbg !140825

bb.t:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i101, %bb.v, %bb.s
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body102

bb.u:                                             ; preds = %bb.s
  %i.bd = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !140826
  %i.be = icmp eq i8 %i.bd, 2, !dbg !140827
  br i1 %i.be, label %bb.w, label %bb.v, !dbg !140827, !prof !3464

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow()
          to label %bb.w unwind label %bb.t, !dbg !140828

bb.w:                                             ; preds = %bb.u, %bb.v
  store i64 0, ptr %i.m, align 8, !dbg !140663
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !140663
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4142.0..sroa_idx, align 8, !dbg !140663
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !140663
  store i64 0, ptr %.sroa.5143.0..sroa_idx, align 8, !dbg !140663
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !140663 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6144.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @489, i64 32, i1 false), !dbg !140663
  %.sroa.7145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !140663 ; 2 uses
  store i64 %i.bb, ptr %.sroa.7145.0..sroa_idx, align 8, !dbg !140663
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown19projection_pushdown:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !140825
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6154.0..sroa_idx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7155.0..sroa_idx, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i92 unwind label %bb.bk, !dbg !140875

bb.bk:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l) #39
          to label %.body94 unwind label %bb.bn, !dbg !140876

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i92: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i93 unwind label %bb.bl, !dbg !140877

bb.bl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i92
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %.body94 unwind label %bb.bm, !dbg !140878

bb.bm:                                            ; preds = %bb.bl
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !140877
  unreachable, !dbg !140877

bb.bn:                                            ; preds = %bb.bk
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !140876
  unreachable, !dbg !140876

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i93: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i92
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit97 unwind label %bb.x, !dbg !140879

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit97: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !140825
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6144.0..sroa_idx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7145.0..sroa_idx, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i100 unwind label %bb.bo, !dbg !140880

bb.bo:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit97
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m) #39
          to label %.body102 unwind label %bb.br, !dbg !140881

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i100: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit97
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i101 unwind label %bb.bp, !dbg !140882

bb.bp:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i100
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.body102 unwind label %bb.bq, !dbg !140883

bb.bq:                                            ; preds = %bb.bp
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !140882
  unreachable, !dbg !140882

bb.br:                                            ; preds = %bb.bo
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !140881
  unreachable, !dbg !140881

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i101: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i100
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit105 unwind label %bb.t, !dbg !140884

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit105: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !140825
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1l_.exit.i unwind label %bb.bs, !dbg !140885

bb.bs:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit105
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body106 unwind label %bb.bt, !dbg !140886

bb.bt:                                            ; preds = %bb.bs
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !140885
  unreachable, !dbg !140885

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1l_.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7aliases15ScratchIndexSetNtNtBL_6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit105
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_.exit unwind label %bb.bu, !dbg !140887

.body106:                                         ; preds = %bb.bu, %bb.bs, %.body102
  %.pn41 = phi { ptr, i32 } [ %.pn39, %.body102 ], [ %i.dp, %bb.bu ], [ %i.dn, %bb.bs ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.o) #39
          to label %.body109 unwind label %bb.cr, !dbg !140825

bb.bu:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1l_.exit.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body106

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1l_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !140825
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.bv, !dbg !140888

bb.bv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body109 unwind label %bb.bw, !dbg !140889

bb.bw:                                            ; preds = %bb.bv
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !140888
  unreachable, !dbg !140888

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height20ExprProjectionHeightEEB1K_.exit
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bx, !dbg !140890

.body109:                                         ; preds = %bb.bx, %bb.bv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit, %.body106
  %.pn43 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.pn41, %.body106 ], [ %i.ds, %bb.bx ], [ %i.dq, %bb.bv ]
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtB1h_5arena4NodeENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef 24, i64 noundef 16)
          to label %.body unwind label %bb.cr, !dbg !140891

bb.bx:                                            ; preds = %.invoke, %._crit_edge, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit.i, %bb.cs, %bb.ce, %bb.cb, %bb.ca, %bb.by
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body109

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !140825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !140825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !140892
  %i.dt = load i64, ptr %i.ab, align 8, !dbg !140893, !noundef !3394
  %i.du = icmp ult i64 %0, %i.dt, !dbg !140894
  br i1 %i.du, label %bb.bz, label %bb.by, !dbg !140894, !prof !3464

bb.by:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #41
          to label %bb.e unwind label %bb.bx, !dbg !140895

bb.bz:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils11scratch_vec10ScratchVecNtNtBL_5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit
  %i.dv = load ptr, ptr %i.aa, align 8, !dbg !140896, !nonnull !3394, !noundef !3394
  %i.dw = getelementptr inbounds nuw [368 x i8], ptr %i.dv, i64 %0, !dbg !140897 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.f, ptr noundef nonnull align 16 dereferenceable(368) %i.dw, i64 368, i1 false), !dbg !140898
  store i64 -9223372036854775782, ptr %i.dw, align 16, !dbg !140899
  %i.dx = load i64, ptr %i.f, align 16, !dbg !140892, !range !3901, !noundef !3394 ; 2 uses
  %i.dy = icmp ne i64 %i.dx, -9223372036854775786, !dbg !140892
  call void @llvm.assume(i1 %i.dy), !dbg !140892
  %i.dz = icmp eq i64 %i.dx, -9223372036854775799, !dbg !140900
  br i1 %i.dz, label %bb.ca, label %bb.cb, !dbg !140900

bb.ca:                                            ; preds = %bb.bz
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !140901
  %i.eb = load i64, ptr %i.ea, align 16, !dbg !140901, !noundef !3394 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef align 16 dereferenceable(368) %i.f)
          to label %bb.cc unwind label %bb.bx, !dbg !140902

bb.cb:                                            ; preds = %bb.bz
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef align 16 dereferenceable(368) %i.f)
          to label %bb.cs unwind label %bb.bx, !dbg !140902

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !140902
  %.val55 = load ptr, ptr %i.aa, align 8, !dbg !140903, !nonnull !3394, !noundef !3394 ; 2 uses
  %.val56 = load i64, ptr %i.ab, align 8, !dbg !140903, !noundef !3394 ; 3 uses
  %i.ec = icmp ult i64 %0, %.val56, !dbg !140904
  br i1 %i.ec, label %bb.cd, label %.invoke, !dbg !140904

bb.cd:                                            ; preds = %bb.cc
  %i.ed = icmp ult i64 %i.eb, %.val56, !dbg !140905
  br i1 %i.ed, label %bb.ce, label %.invoke, !dbg !140905

.invoke:                                          ; preds = %bb.cd, %bb.cc
  %i.ee = phi i64 [ %0, %bb.cc ], [ %i.eb, %bb.cd ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ee, i64 noundef %.val56, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @443) #43
          to label %.cont unwind label %bb.bx, !dbg !140906

.cont:                                            ; preds = %.invoke
  unreachable

bb.ce:                                            ; preds = %bb.cd
  %i.ef = getelementptr inbounds nuw [368 x i8], ptr %.val55, i64 %0, !dbg !140907 ; 2 uses
  %i.eg = getelementptr inbounds nuw [368 x i8], ptr %.val55, i64 %i.eb, !dbg !140908 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !140909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.c, ptr noundef nonnull align 16 dereferenceable(368) %i.ef, i64 368, i1 false), !dbg !140910
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.ef, ptr noundef nonnull align 16 dereferenceable(368) %i.eg, i64 368, i1 false), !dbg !140911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.eg, ptr noundef nonnull align 16 dereferenceable(368) %i.c, i64 368, i1 false), !dbg !140912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !140913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !140914
  store ptr %1, ptr %i.d, align 8, !dbg !140915
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !140915
  store i64 %0, ptr %.sroa.4128.0..sroa_idx, align 8, !dbg !140915
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !140915
  store i32 1, ptr %.sroa.5129.0..sroa_idx, align 8, !dbg !140915
  %.sroa.6130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20, !dbg !140915
  store i32 1, ptr %.sroa.6130.0..sroa_idx, align 4, !dbg !140915
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator7AlpIterNCNvNtNtB3j_9optimizer19projection_pushdown19projection_pushdowns_0EE9from_iterB3l_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.cf unwind label %bb.bx, !dbg !140916

bb.cf:                                            ; preds = %bb.ce
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !140740
  %i.ei = load ptr, ptr %i.eh, align 8, !dbg !140740, !nonnull !3394, !noundef !3394 ; 4 uses
  %i.ej = load i64, ptr %i.e, align 8, !dbg !140740, !range !3865, !noundef !3394 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !140740
  %i.el = load i64, ptr %i.ek, align 8, !dbg !140740, !noundef !3394 ; 3 uses
  %i.em = icmp ult i64 %i.el, 1152921504606846976, !dbg !140917
  call void @llvm.assume(i1 %i.em), !dbg !140918
  %.idx = shl nuw nsw i64 %i.el, 3, !dbg !140919
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx, !dbg !140919
  %i.eo = icmp eq i64 %i.el, 0, !dbg !140920
  br i1 %i.eo, label %._crit_edge, label %.lr.ph, !dbg !140921

.lr.ph:                                           ; preds = %bb.cf
  %i.ep = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %bb.ch, !dbg !140921

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !140922, !noalias !140743
  store i64 %i.ej, ptr %i.b, align 8, !dbg !140923, !noalias !140743
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !140923
  store ptr %i.ei, ptr %i.er, align 8, !dbg !140923, !noalias !140743
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.cr, !dbg !140924

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !140925, !noalias !140743
  br label %.body109, !dbg !140926

bb.ch:                                            ; preds = %.lr.ph, %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread
  %.sroa.5132.0192 = phi ptr [ %i.ei, %.lr.ph ], [ %i.es, %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.5132.0192, i64 8, !dbg !140927 ; 2 uses
  %i.et = load i64, ptr %.sroa.5132.0192, align 8, !dbg !140928, !noalias !140744, !noundef !3394 ; 2 uses
  %i.eu = load i64, ptr %i.ab, align 8, !dbg !140929, !noundef !3394
  %i.ev = icmp ult i64 %i.et, %i.eu, !dbg !140930
  br i1 %i.ev, label %bb.ck, label %bb.cj, !dbg !140930, !prof !3464

._crit_edge:                                      ; preds = %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !140931, !noalias !140753
  store i64 %i.ej, ptr %i.a, align 8, !dbg !140932, !noalias !140753
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !140932
  store ptr %i.ei, ptr %i.ew, align 8, !dbg !140932, !noalias !140753
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.ci unwind label %bb.bx, !dbg !140933

bb.ci:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !140934, !noalias !140753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !140935
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtB1h_5arena4NodeENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef 24, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtB1p_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit119 unwind label %bb.d, !dbg !140936

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtB1p_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit119: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !140937
  call void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 16, i64 noundef 16), !dbg !140938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !140939
  ret void, !dbg !140940

bb.cj:                                            ; preds = %bb.ch
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #41
          to label %bb.e unwind label %.loopexit.split-lp, !dbg !140941

bb.ck:                                            ; preds = %bb.ch
  %i.ex = load ptr, ptr %i.aa, align 8, !dbg !140942, !nonnull !3394, !noundef !3394
  %i.ey = getelementptr inbounds nuw [368 x i8], ptr %i.ex, i64 %i.et, !dbg !140943 ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 16, !dbg !140944, !range !3901, !noundef !3394 ; 2 uses
  %i.fa = icmp ne i64 %i.ez, -9223372036854775786, !dbg !140944
  call void @llvm.assume(i1 %i.fa), !dbg !140944
  %i.fb = icmp eq i64 %i.ez, -9223372036854775796, !dbg !140945
  br i1 %i.fb, label %bb.cl, label %bb.cq, !dbg !140945, !prof !3464

bb.cl:                                            ; preds = %bb.ck
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8, !dbg !140946 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !140763), !dbg !140947
  call void @llvm.experimental.noalias.scope.decl(metadata !140764), !dbg !140947
  %i.fd = load i64, ptr %i.ep, align 8, !dbg !140948, !alias.scope !140763, !noalias !140764, !noundef !3394
  %i.fe = icmp eq i64 %i.fd, 0, !dbg !140949
  br i1 %i.fe, label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread, label %bb.cm, !dbg !140949

bb.cm:                                            ; preds = %bb.cl
  %i.ff = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.fc)
          to label %.noexc122 unwind label %.loopexit, !dbg !140950 ; 2 uses

.noexc122:                                        ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !140765), !dbg !140951
  call void @llvm.experimental.noalias.scope.decl(metadata !140766), !dbg !140951
  call void @llvm.experimental.noalias.scope.decl(metadata !140767), !dbg !140952
  %i.fg = lshr i64 %i.ff, 57, !dbg !140953
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !140954
  %i.fi = load i64, ptr %i.eq, align 8, !dbg !140955, !alias.scope !140768, !noalias !140769, !noundef !3394 ; 2 uses
  %i.fj = load ptr, ptr %i.r, align 8, !alias.scope !140768, !noalias !140769, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.fk = insertelement <16 x i8> poison, i8 %i.fh, i64 0
  %i.fl = shufflevector <16 x i8> %i.fk, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i = load i128, ptr %i.fc, align 8, !alias.scope !140770, !noalias !140771
  br label %bb.cn, !dbg !140956

bb.cn:                                            ; preds = %bb.cp, %.noexc122
  %.sroa.011.0.i.i.i = phi i64 [ 0, %.noexc122 ], [ %i.gc, %bb.cp ], !dbg !140957
  %.pn.i.i.i = phi i64 [ %i.ff, %.noexc122 ], [ %i.gd, %bb.cp ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.fi, !dbg !140957 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.sroa.01.0.i.i.i, !dbg !140958
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.fm, align 1, !dbg !140959, !noalias !140772 ; 2 uses
  %i.fn = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.fl, !dbg !140960
  %i.fo = bitcast <16 x i1> %i.fn to i16, !dbg !140961 ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.fo, 0, !dbg !140962
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !140963

.lr.ph.i.i:                                       ; preds = %bb.cn, %bb.co
  %.sroa.05.0.i33.i.i = phi i16 [ %i.gb, %bb.co ], [ %i.fo, %bb.cn ] ; 3 uses
  %i.fp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i, i1 true), !dbg !140964
  %i.fq = zext nneg i16 %i.fp to i64, !dbg !140965
  %i.fr = add i64 %.sroa.01.0.i.i.i, %i.fq, !dbg !140966
  %i.fs = and i64 %i.fr, %i.fi, !dbg !140966
  %i.ft = sub nsw i64 0, %i.fs, !dbg !140967
  %i.fu = getelementptr inbounds [24 x i8], ptr %i.fj, i64 %i.ft, !dbg !140968 ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -24, !dbg !140969
  %.val2.i.i.i = load i128, ptr %i.fv, align 1, !dbg !140970, !noalias !140773
  %i.fw = icmp eq i128 %.val.i.i.i.i, %.val2.i.i.i, !dbg !140971
  br i1 %i.fw, label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.co, !dbg !140972, !prof !3464

._crit_edge.i.i:                                  ; preds = %bb.co, %bb.cn
  %i.fx = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1), !dbg !140973
  %i.fy = bitcast <16 x i1> %i.fx to i16, !dbg !140974
  %i.fz = icmp eq i16 %i.fy, 0, !dbg !140975
  br i1 %i.fz, label %bb.cp, label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !140975, !prof !3463

bb.co:                                            ; preds = %.lr.ph.i.i
  %i.ga = add i16 %.sroa.05.0.i33.i.i, -1, !dbg !140976
  %i.gb = and i16 %i.ga, %.sroa.05.0.i33.i.i, !dbg !140977 ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.gb, 0, !dbg !140962
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !140963

bb.cp:                                            ; preds = %._crit_edge.i.i
  %i.gc = add i64 %.sroa.011.0.i.i.i, 16, !dbg !140978 ; 2 uses
  %i.gd = add i64 %.sroa.01.0.i.i.i, %i.gc, !dbg !140979
  br label %bb.cn, !dbg !140956

bb.cq:                                            ; preds = %bb.ck
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @666) #41
          to label %bb.e unwind label %.loopexit.split-lp, !dbg !140980

_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.lr.ph.i.i
  %i.ge = getelementptr inbounds i8, ptr %i.fu, i64 -8, !dbg !140981
  %i.gf = load i64, ptr %i.ge, align 8, !dbg !140982, !noundef !3394
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ey, i64 24, !dbg !140983
  store i64 %i.gf, ptr %i.gg, align 8, !dbg !140983
  br label %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !140984

_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %._crit_edge.i.i, %bb.cl, %_RINvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB6_7HashMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBS_5arena4NodeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_ECsfcROwRM8ZtH_11polars_plan.exit
  %i.gh = icmp eq ptr %i.es, %i.en, !dbg !140920
  br i1 %i.gh, label %._crit_edge, label %bb.ch, !dbg !140921

bb.cr:                                            ; preds = %bb.cg, %.body109, %bb.aw, %.body, %.body106, %.body84, %.body72, %bb.ak, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown25ProjectionPushdownVisitorEBO_.exit, %.body81, %.body87, %.body94, %.body102
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !140985
  unreachable, !dbg !140985

bb.cs:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !140902
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @667) #41
          to label %bb.e unwind label %bb.bx, !dbg !140986

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.body
  resume { ptr, i32 } %.pn43.pn, !dbg !140985
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 16 ptr @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown23extract_select_len_expr(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(368) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val) unnamed_addr #0 !dbg !140987 {
bb.a:
  %i.a = load i64, ptr %0, align 16, !dbg !141017, !range !3901, !noundef !3394 ; 2 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775786, !dbg !141017
  tail call void @llvm.assume(i1 %i.b), !dbg !141017
  %i.c = icmp eq i64 %i.a, -9223372036854775798, !dbg !141018
  br i1 %i.c, label %bb.b, label %bb.f, !dbg !141018

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !141019
  %i.e = load i64, ptr %i.d, align 8, !dbg !141019, !noundef !3394 ; 2 uses
  %i.f = icmp ult i64 %i.e, 82351536043346213, !dbg !141020
  tail call void @llvm.assume(i1 %i.f), !dbg !141021
  %i.g = icmp eq i64 %i.e, 1, !dbg !141022
  br i1 %i.g, label %bb.c, label %bb.f, !dbg !141022

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !141023
end_hunk_3
