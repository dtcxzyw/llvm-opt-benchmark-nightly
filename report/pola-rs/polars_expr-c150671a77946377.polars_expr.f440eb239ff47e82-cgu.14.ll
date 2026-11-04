Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.14?download=true
inline.NumInlined: 8258
inline.NumDeleted: 2356
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0B5_:bb.a
  %i.ak = alloca [240 x i8], align 16             ; 11 uses
  %i.al = alloca [56 x i8], align 8               ; 7 uses
  %i.am = alloca [144 x i8], align 16             ; 9 uses
  %i.an = alloca [24 x i8], align 8               ; 5 uses
  %i.ao = alloca [80 x i8], align 16              ; 5 uses
  %i.ap = alloca [144 x i8], align 16             ; 10 uses
  %i.aq = alloca [80 x i8], align 16              ; 4 uses
  %i.ar = alloca [192 x i8], align 16             ; 10 uses
  %i.as = alloca [272 x i8], align 16             ; 9 uses
  %i.at = alloca [208 x i8], align 16             ; 12 uses
  %i.au = alloca [192 x i8], align 16             ; 10 uses
  %i.av = alloca [272 x i8], align 16             ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 5 uses
  %i.ax = alloca [80 x i8], align 16              ; 4 uses
  %i.ay = alloca [96 x i8], align 16              ; 8 uses
  %i.az = alloca [80 x i8], align 16              ; 4 uses
  %i.ba = alloca [192 x i8], align 16             ; 7 uses
  %i.bb = alloca [288 x i8], align 16             ; 15 uses
  %i.bc = alloca [80 x i8], align 16              ; 4 uses
  %i.bd = alloca [256 x i8], align 16             ; 7 uses
  %i.be = alloca [352 x i8], align 16             ; 15 uses
  %i.bf = alloca [24 x i8], align 8               ; 6 uses
  %i.bg = alloca [72 x i8], align 8               ; 8 uses
  %i.bh = alloca [80 x i8], align 16              ; 4 uses
  %i.bi = alloca [368 x i8], align 16             ; 12 uses
  %i.bj = alloca [80 x i8], align 16              ; 4 uses
  %i.bk = alloca [160 x i8], align 16             ; 7 uses
  %i.bl = alloca [24 x i8], align 8               ; 5 uses
  %i.bm = alloca [144 x i8], align 16             ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [24 x i8], align 8               ; 7 uses
  %i.bp = alloca [16 x i8], align 8               ; 6 uses
  %i.bq = alloca [80 x i8], align 16              ; 7 uses
  %i.br = alloca [16 x i8], align 8               ; 10 uses
  %i.bs = alloca [72 x i8], align 8               ; 8 uses
  %i.bt = alloca [16 x i8], align 16              ; 10 uses
  %i.bu = alloca [144 x i8], align 16             ; 4 uses
  %i.bv = alloca [16 x i8], align 8               ; 5 uses
  %i.bw = alloca [16 x i8], align 8               ; 6 uses
  %i.bx = alloca [16 x i8], align 8               ; 6 uses
  %i.by = alloca [72 x i8], align 8               ; 8 uses
  %i.bz = alloca [72 x i8], align 8               ; 8 uses
  %i.ca = alloca [16 x i8], align 8               ; 10 uses
  %i.cb = alloca [72 x i8], align 8               ; 8 uses
  %i.cc = alloca [16 x i8], align 8               ; 10 uses
  %i.cd = alloca [144 x i8], align 16             ; 4 uses
  %i.ce = alloca [16 x i8], align 8               ; 5 uses
  %i.cf = alloca [112 x i8], align 16             ; 4 uses
  %i.cg = alloca [16 x i8], align 8               ; 6 uses
  %i.ch = alloca [24 x i8], align 8               ; 4 uses
  %i.ci = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6560 = alloca [24 x i8], align 8         ; 6 uses
  %i.cj = alloca [24 x i8], align 8               ; 7 uses
  %i.ck = alloca [16 x i8], align 8               ; 6 uses
  %i.cl = alloca [80 x i8], align 16              ; 8 uses
  %i.cm = alloca [112 x i8], align 16             ; 9 uses
  %i.cn = alloca [24 x i8], align 8               ; 9 uses
  %i.co = alloca [144 x i8], align 16             ; 4 uses
  %i.cp = alloca [24 x i8], align 8               ; 5 uses
  %i.cq = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.01858 = alloca [224 x i8], align 16      ; 5 uses
  %i.cr = alloca [40 x i8], align 8               ; 6 uses
  %i.cs = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6541 = alloca [24 x i8], align 8         ; 6 uses
  %i.ct = alloca [8 x i8], align 8                ; 11 uses
  %i.cu = alloca [48 x i8], align 16              ; 4 uses
  %i.cv = alloca [24 x i8], align 8               ; 6 uses
  %i.cw = alloca [48 x i8], align 16              ; 5 uses
  %i.cx = alloca [64 x i8], align 8               ; 7 uses
  %i.cy = alloca [72 x i8], align 8               ; 8 uses
  %i.cz = alloca [16 x i8], align 8               ; 10 uses
  %i.da = alloca [16 x i8], align 8               ; 6 uses
  %i.db = alloca [80 x i8], align 16              ; 9 uses
  %i.dc = alloca [16 x i8], align 8               ; 6 uses
  %i.dd = alloca [80 x i8], align 16              ; 8 uses
  %i.de = alloca [24 x i8], align 8               ; 11 uses
  %i.df = alloca [144 x i8], align 16             ; 4 uses
  %i.dg = alloca [16 x i8], align 8               ; 5 uses
  %i.dh = alloca [16 x i8], align 8               ; 6 uses
  %i.di = alloca [8 x i8], align 8                ; 11 uses
  %i.dj = alloca [72 x i8], align 8               ; 8 uses
  %i.dk = alloca [16 x i8], align 8               ; 8 uses
  %i.dl = alloca [48 x i8], align 16              ; 4 uses
  %i.dm = alloca [24 x i8], align 8               ; 6 uses
  %i.dn = alloca [48 x i8], align 16              ; 5 uses
  %i.do = alloca [64 x i8], align 8               ; 7 uses
  %i.dp = alloca [72 x i8], align 8               ; 7 uses
  %i.dq = alloca [72 x i8], align 8               ; 8 uses
  %i.dr = alloca [16 x i8], align 8               ; 10 uses
  %i.ds = alloca [16 x i8], align 8               ; 6 uses
  %i.dt = alloca [80 x i8], align 16              ; 9 uses
  %i.du = alloca [16 x i8], align 8               ; 6 uses
  %i.dv = alloca [80 x i8], align 16              ; 11 uses
  %i.dw = alloca [1 x i8], align 1                ; 6 uses
  %i.dx = alloca [16 x i8], align 8               ; 3 uses
  %i.dy = alloca [144 x i8], align 16             ; 4 uses
  %i.dz = alloca [16 x i8], align 8               ; 5 uses
  %i.ea = alloca [24 x i8], align 8               ; 5 uses
  %i.eb = alloca [72 x i8], align 8               ; 4 uses
  %i.ec = alloca [72 x i8], align 8               ; 8 uses
  %i.ed = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6438 = alloca [24 x i8], align 8         ; 6 uses
  %i.ee = alloca [24 x i8], align 8               ; 7 uses
  %i.ef = alloca [16 x i8], align 8               ; 6 uses
  %i.eg = alloca [80 x i8], align 16              ; 8 uses
  %i.eh = alloca [72 x i8], align 8               ; 8 uses
  %i.ei = alloca [24 x i8], align 8               ; 11 uses
  %i.ej = alloca [72 x i8], align 8               ; 9 uses
  %i.ek = alloca [72 x i8], align 8               ; 8 uses
  %i.el = alloca [16 x i8], align 8               ; 9 uses
  %i.em = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6407 = alloca [24 x i8], align 8         ; 6 uses
  %i.en = alloca [24 x i8], align 8               ; 7 uses
  %i.eo = alloca [16 x i8], align 8               ; 6 uses
  %i.ep = alloca [80 x i8], align 16              ; 8 uses
  %i.eq = alloca [72 x i8], align 8               ; 8 uses
  %i.er = alloca [24 x i8], align 8               ; 11 uses
  %i.es = alloca [144 x i8], align 16             ; 4 uses
  %i.et = alloca [16 x i8], align 8               ; 5 uses
  %i.eu = alloca [16 x i8], align 8               ; 6 uses
  %i.ev = alloca [16 x i8], align 8               ; 6 uses
  %i.ew = alloca [72 x i8], align 8               ; 8 uses
  %i.ex = alloca [72 x i8], align 8               ; 8 uses
  %i.ey = alloca [16 x i8], align 8               ; 10 uses
  %i.ez = alloca [72 x i8], align 8               ; 8 uses
  %i.fa = alloca [16 x i8], align 8               ; 10 uses
  %i.fb = alloca [144 x i8], align 16             ; 4 uses
  %i.fc = alloca [48 x i8], align 16              ; 5 uses
  %i.fd = alloca [16 x i8], align 8               ; 5 uses
  %i.fe = alloca [72 x i8], align 8               ; 8 uses
  %i.ff = alloca [48 x i8], align 16              ; 8 uses
  %i.fg = alloca [40 x i8], align 8               ; 4 uses
  %i.fh = alloca [72 x i8], align 8               ; 8 uses
  %i.fi = alloca [72 x i8], align 8               ; 8 uses
  %i.fj = alloca [16 x i8], align 8               ; 9 uses
  %i.fk = alloca [112 x i8], align 16             ; 6 uses
  %i.fl = alloca [24 x i8], align 8               ; 7 uses
  %i.fm = alloca [48 x i8], align 16              ; 4 uses
  %i.fn = alloca [24 x i8], align 8               ; 6 uses
  %i.fo = alloca [80 x i8], align 16              ; 6 uses
  %i.fp = alloca [16 x i8], align 8               ; 6 uses
  %i.fq = alloca [80 x i8], align 16              ; 12 uses
  %i.fr = alloca [72 x i8], align 8               ; 8 uses
  %i.fs = alloca [16 x i8], align 16              ; 10 uses
  %i.ft = alloca [112 x i8], align 16             ; 8 uses
  %i.fu = alloca [24 x i8], align 8               ; 9 uses
  %i.fv = alloca [16 x i8], align 8               ; 6 uses
  %i.fw = alloca [72 x i8], align 8               ; 8 uses
  %i.fx = alloca [16 x i8], align 16              ; 10 uses
  %i.fy = alloca [24 x i8], align 8               ; 10 uses
  %i.fz = alloca [144 x i8], align 16             ; 4 uses
  %i.ga = alloca [16 x i8], align 8               ; 5 uses
  %i.gb = alloca [16 x i8], align 8               ; 6 uses
  %i.gc = alloca [72 x i8], align 8               ; 8 uses
  %i.gd = alloca [72 x i8], align 8               ; 8 uses
  %i.ge = alloca [16 x i8], align 8               ; 10 uses
  %i.gf = alloca [64 x i8], align 8               ; 4 uses
  %i.gg = alloca [144 x i8], align 16             ; 5 uses
  %i.gh = alloca [24 x i8], align 8               ; 5 uses
  %i.gi = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.01779 = alloca [208 x i8], align 16      ; 5 uses
  %i.gj = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6223 = alloca [24 x i8], align 8         ; 6 uses
  %i.gk = alloca [72 x i8], align 8               ; 8 uses
  %i.gl = alloca [16 x i8], align 8               ; 10 uses
  %i.gm = alloca [64 x i8], align 8               ; 8 uses
  %i.gn = alloca [24 x i8], align 8               ; 11 uses
  %i.go = alloca [144 x i8], align 16             ; 4 uses
  %i.gp = alloca [16 x i8], align 8               ; 5 uses
  %i.gq = alloca [16 x i8], align 8               ; 6 uses
  %i.gr = alloca [72 x i8], align 8               ; 8 uses
  %i.gs = alloca [72 x i8], align 8               ; 8 uses
  %i.gt = alloca [16 x i8], align 8               ; 10 uses
  %i.gu = alloca [144 x i8], align 16             ; 4 uses
  %i.gv = alloca [16 x i8], align 8               ; 5 uses
  %i.gw = alloca [72 x i8], align 8               ; 8 uses
  %i.gx = alloca [12 x i8], align 4               ; 2 uses
  %i.gy = alloca [144 x i8], align 16             ; 4 uses
  %i.gz = alloca [24 x i8], align 8               ; 6 uses
  %i.ha = alloca [256 x i8], align 16             ; 6 uses
  %i.hb = alloca [16 x i8], align 8               ; 6 uses
  %i.hc = alloca [80 x i8], align 16              ; 7 uses
  %i.hd = alloca [24 x i8], align 8               ; 12 uses
  %i.he = alloca [16 x i8], align 8               ; 6 uses
  %i.hf = alloca [144 x i8], align 16             ; 4 uses
  %i.hg = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.01769 = alloca [168 x i8], align 16      ; 5 uses
  %i.hh = alloca [24 x i8], align 8               ; 7 uses
  %i.hi = alloca [144 x i8], align 16             ; 4 uses
  %i.hj = alloca [16 x i8], align 8               ; 5 uses
  %i.hk = alloca [16 x i8], align 8               ; 6 uses
  %i.hl = alloca [72 x i8], align 8               ; 8 uses
  %i.hm = alloca [72 x i8], align 8               ; 8 uses
  %i.hn = alloca [16 x i8], align 8               ; 10 uses
  %i.ho = alloca [16 x i8], align 8               ; 6 uses
  %i.hp = alloca [80 x i8], align 16              ; 8 uses
  %i.hq = alloca [144 x i8], align 16             ; 4 uses
  %i.hr = alloca [96 x i8], align 16              ; 5 uses
  %i.hs = alloca [240 x i8], align 16             ; 5 uses
  %i.ht = alloca [96 x i8], align 16              ; 6 uses
  %i.hu = alloca [24 x i8], align 8               ; 6 uses
  %i.hv = alloca [16 x i8], align 8               ; 5 uses
  %i.hw = alloca [24 x i8], align 8               ; 2 uses
  %i.hx = alloca [24 x i8], align 8               ; 4 uses
  %i.hy = alloca [144 x i8], align 16             ; 6 uses
  %i.hz = alloca [24 x i8], align 8               ; 5 uses
  %i.ia = alloca [24 x i8], align 8               ; 5 uses
  %i.ib = alloca [24 x i8], align 8               ; 4 uses
  %i.ic = alloca [24 x i8], align 8               ; 13 uses
  %i.id = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.684 = alloca [24 x i8], align 8          ; 6 uses
  %i.ie = alloca [24 x i8], align 8               ; 7 uses
  %i.if = alloca [144 x i8], align 16             ; 7 uses
  %i.ig = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.675.sroa.0 = alloca [16 x i8], align 8   ; 5 uses
  %.sroa.675.sroa.7 = alloca [12 x i8], align 4   ; 5 uses
  %.sroa.777 = alloca [32 x i8], align 8          ; 5 uses
  %.sroa.769.sroa.0 = alloca [16 x i8], align 8   ; 6 uses
  %.sroa.769.sroa.9 = alloca [12 x i8], align 4   ; 6 uses
  %.sroa.663.sroa.0 = alloca [16 x i8], align 8   ; 7 uses
  %.sroa.663.sroa.8 = alloca [12 x i8], align 4   ; 7 uses
  %i.ih = alloca [32 x i8], align 8               ; 11 uses
  %i.ii = alloca [1 x i8], align 1                ; 6 uses
  %i.ij = alloca [72 x i8], align 8               ; 8 uses
  %i.ik = alloca [16 x i8], align 16              ; 10 uses
  %i.il = alloca [16 x i8], align 8               ; 6 uses
  %i.im = alloca [80 x i8], align 16              ; 8 uses
  %.sroa.338 = alloca [12 x i8], align 4          ; 2 uses
  %i.in = alloca [24 x i8], align 8               ; 11 uses
  %.sroa.029 = alloca [224 x i8], align 16        ; 5 uses
  %i.io = alloca [144 x i8], align 16             ; 4 uses
  %i.ip = alloca [72 x i8], align 8               ; 8 uses
  %i.iq = alloca [16 x i8], align 8               ; 6 uses
  %i.ir = alloca [72 x i8], align 8               ; 8 uses
  %i.is = alloca [16 x i8], align 16              ; 10 uses
  %i.it = alloca [16 x i8], align 8               ; 6 uses
  %i.iu = alloca [80 x i8], align 16              ; 8 uses
  %i.iv = alloca [40 x i8], align 8               ; 2 uses
  %i.iw = alloca [40 x i8], align 8               ; 2 uses
  %i.ix = alloca [144 x i8], align 16             ; 141 uses
  %i.iy = load ptr, ptr %1, align 8, !dbg !146149, !nonnull !860, !align !884, !noundef !860 ; 85 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !146150
  %i.ja = load i64, ptr %i.iz, align 8, !dbg !146150, !noundef !860 ; 50 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 8, !dbg !146151 ; 16 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 16, !dbg !146152 ; 16 uses
  %i.jd = load i64, ptr %i.jc, align 8, !dbg !146152, !noundef !860
  %i.je = icmp ult i64 %i.ja, %i.jd, !dbg !146153
  br i1 %i.je, label %bb.c, label %bb.b, !dbg !146153, !prof !1046

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #38, !dbg !146154
  unreachable, !dbg !146154

bb.c:                                             ; preds = %bb.a
  %i.jf = load ptr, ptr %i.jb, align 8, !dbg !146151, !nonnull !860, !noundef !860
  %i.jg = getelementptr inbounds nuw [144 x i8], ptr %i.jf, i64 %i.ja, !dbg !146155 ; 59 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ix), !dbg !146156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145066), !dbg !146157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !146158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !146158
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 112, !dbg !146158 ; 2 uses
  %i.ji = load i64, ptr %i.jh, align 16, !dbg !146158, !range !1035, !noalias !145066, !noundef !860 ; 3 uses
  %i.jj = icmp ne i64 %i.ji, -9223372036854775791, !dbg !146158
  tail call void @llvm.assume(i1 %i.jj), !dbg !146158
  %i.jk = xor i64 %i.ji, -9223372036854775808, !dbg !146158
  %i.jl = icmp slt i64 %i.ji, 0, !dbg !146158
  %i.jm = select i1 %i.jl, i64 %i.jk, i64 17, !dbg !146158 ; 2 uses
  switch i64 %i.jm, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.i
    i64 5, label %bb.j
    i64 6, label %bb.k
    i64 7, label %bb.l
    i64 8, label %bb.m
    i64 9, label %bb.n
    i64 10, label %bb.q
    i64 11, label %bb.r
    i64 12, label %bb.s
    i64 13, label %bb.t
    i64 14, label %bb.x
    i64 15, label %bb.y
    i64 16, label %bb.z
    i64 17, label %bb.aa
    i64 18, label %bb.ab
    i64 19, label %bb.ac
    i64 20, label %bb.ad
    i64 21, label %bb.ae
  ], !dbg !146158

bb.d:                                             ; preds = %bb.c
  unreachable, !dbg !146159

bb.e:                                             ; preds = %bb.c
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ix, i64 112, !dbg !146158
  store i64 -9223372036854775808, ptr %i.jn, align 16, !dbg !146158, !alias.scope !145066
  br label %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.thread, !dbg !146158

bb.f:                                             ; preds = %bb.c
  %i.jo = load i64, ptr %i.jg, align 16, !dbg !146160, !noalias !145066, !noundef !860
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jg, i64 8, !dbg !146161
  %i.jq = load i8, ptr %i.jp, align 8, !dbg !146161, !range !919, !noalias !145066, !noundef !860
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jg, i64 9, !dbg !146161
  %i.js = load i8, ptr %i.jr, align 1, !dbg !146161, !range !919, !noalias !145066, !noundef !860
  store i64 %i.jo, ptr %i.ix, align 16, !dbg !146162, !alias.scope !145066
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ix, i64 8, !dbg !146162
  store i8 %i.jq, ptr %i.jt, align 8, !dbg !146162, !alias.scope !145066
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ix, i64 9, !dbg !146162
  store i8 %i.js, ptr %i.ju, align 1, !dbg !146162, !alias.scope !145066
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ix, i64 112, !dbg !146162
  store i64 -9223372036854775807, ptr %i.jv, align 16, !dbg !146162, !alias.scope !145066
  br label %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.thread, !dbg !146163

bb.g:                                             ; preds = %bb.c
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jg, i64 23, !dbg !146164
  %i.jx = load i8, ptr %i.jw, align 1, !dbg !146164, !range !971, !noalias !145066, !noundef !860
  %i.jy = icmp eq i8 %i.jx, -40, !dbg !146165
  br i1 %i.jy, label %bb.af, label %bb.ag, !dbg !146165

bb.h:                                             ; preds = %bb.c
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jg, i64 23, !dbg !146166
  %i.ka = load i8, ptr %i.jz, align 1, !dbg !146166, !range !971, !noalias !145066, !noundef !860
  %i.kb = icmp eq i8 %i.ka, -40, !dbg !146167
  br i1 %i.kb, label %bb.ai, label %bb.aj, !dbg !146167

bb.i:                                             ; preds = %bb.c
  call fastcc void @_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(144) %i.ix, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.jg) #39, !dbg !146168
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ix, i64 112, !dbg !146169
  store i64 -9223372036854775804, ptr %i.kc, align 16, !dbg !146169, !alias.scope !145066
  br label %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.thread, !dbg !146163

bb.j:                                             ; preds = %bb.c
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jg, i64 16, !dbg !146170
  %i.ke = load i8, ptr %i.kd, align 16, !dbg !146170, !range !1227, !noalias !145066, !noundef !860
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ix, i64 16, !dbg !146171
  store i8 %i.ke, ptr %i.kf, align 16, !dbg !146171, !alias.scope !145066
  %i.kg = load <2 x i64>, ptr %i.jg, align 16, !dbg !146172, !noalias !145066
  store <2 x i64> %i.kg, ptr %i.ix, align 16, !dbg !146171, !alias.scope !145066
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ix, i64 112, !dbg !146171
  store i64 -9223372036854775803, ptr %i.kh, align 16, !dbg !146171, !alias.scope !145066
  br label %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.thread, !dbg !146163

bb.k:                                             ; preds = %bb.c
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jg, i64 48, !dbg !146173
  %i.kj = load i64, ptr %i.ki, align 16, !dbg !146173, !noalias !145066, !noundef !860
  call fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(144) %i.ix, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.jg) #39, !dbg !146174
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jg, i64 56, !dbg !146175
  %i.kl = load i8, ptr %i.kk, align 8, !dbg !146175, !range !925, !noalias !145066, !noundef !860
  %i.km = getelementptr inbounds nuw i8, ptr %i.ix, i64 48, !dbg !146176
  store i64 %i.kj, ptr %i.km, align 16, !dbg !146176, !alias.scope !145066
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ix, i64 56, !dbg !146176
  store i8 %i.kl, ptr %i.kn, align 8, !dbg !146176, !alias.scope !145066
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ix, i64 112, !dbg !146176
  store i64 -9223372036854775802, ptr %i.ko, align 16, !dbg !146176, !alias.scope !145066
  br label %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.thread, !dbg !146163

bb.l:                                             ; preds = %bb.c
  %i.kp = load i64, ptr %i.jg, align 16, !dbg !146177, !noalias !145066, !noundef !860
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jg, i64 8, !dbg !146178
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ix, i64 8, !dbg !146179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kr, ptr noundef nonnull align 8 dereferenceable(12) %i.kq, i64 12, i1 false), !dbg !146178
  store i64 %i.kp, ptr %i.ix, align 16, !dbg !146179, !alias.scope !145066
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ix, i64 112, !dbg !146179
  store i64 -9223372036854775801, ptr %i.ks, align 16, !dbg !146179, !alias.scope !145066
  br label %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.thread, !dbg !146163

bb.m:                                             ; preds = %bb.c
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jg, i64 16, !dbg !146180
  %i.ku = load i8, ptr %i.kt, align 16, !dbg !146180, !range !919, !noalias !145066, !noundef !860
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jg, i64 17, !dbg !146181
  %i.kw = load i8, ptr %i.kv, align 1, !dbg !146181, !range !919, !noalias !145066, !noundef !860
  %i.kx = load <2 x i64>, ptr %i.jg, align 16, !dbg !146182, !noalias !145066
  store <2 x i64> %i.kx, ptr %i.ix, align 16, !dbg !146183, !alias.scope !145066
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ix, i64 16, !dbg !146183
  store i8 %i.ku, ptr %i.ky, align 16, !dbg !146183, !alias.scope !145066
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ix, i64 17, !dbg !146183
  store i8 %i.kw, ptr %i.kz, align 1, !dbg !146183, !alias.scope !145066
  %i.la = getelementptr inbounds nuw i8, ptr %i.ix, i64 112, !dbg !146183
  store i64 -9223372036854775800, ptr %i.la, align 16, !dbg !146183, !alias.scope !145066
  br label %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.thread, !dbg !146163

bb.n:                                             ; preds = %bb.c
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jg, i64 24, !dbg !146184
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jg, i64 88, !dbg !146185
  %i.ld = load i64, ptr %i.lc, align 8, !dbg !146185, !noalias !145066, !noundef !860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !146186, !noalias !145066
  call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(24) %i.jg), !dbg !146186, !noalias !145066
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !dbg !146187
  call void @llvm.experimental.noalias.scope.decl(metadata !145080), !dbg !146187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !146188, !noalias !145081
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.lb)
          to label %.noexc.i unwind label %bb.al, !dbg !146188, !noalias !145066

.noexc.i:                                         ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !146189, !noalias !145081
  %i.le = getelementptr inbounds nuw i8, ptr %i.jg, i64 48, !dbg !146189
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.le)
          to label %bb.am unwind label %bb.o, !dbg !146189, !noalias !145082

end_hunk_0
begin_hunk_1_@_RNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0B5_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.769.sroa.0), !dbg !145996
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.769.sroa.9), !dbg !145996
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.675.sroa.0), !dbg !145996
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.675.sroa.7), !dbg !145996
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.777), !dbg !145996
  store ptr %i.ii, ptr %i.ig, align 8, !dbg !147721
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ig, i64 8, !dbg !147721
  store ptr %i.iy, ptr %i.bes, align 8, !dbg !147721
  %i.bet = getelementptr inbounds nuw i8, ptr %i.ig, i64 16, !dbg !147721
  store ptr %i.sl, ptr %i.bet, align 8, !dbg !147721
  %i.beu = getelementptr inbounds nuw i8, ptr %i.ig, i64 24, !dbg !147721
  store ptr %i.bej, ptr %i.beu, align 8, !dbg !147721
  %.not1280 = icmp eq i32 %.sroa.235.0.copyload, 2, !dbg !147722
  br i1 %.not1280, label %bb.wn, label %bb.wm, !dbg !147723

bb.wm:                                            ; preds = %bb.wl
  %.sroa.6751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 12, !dbg !147724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !dbg !147724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6751.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.338, i64 12, i1 false), !dbg !147725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !dbg !147724
  store i64 %.sroa.033.0.copyload, ptr %i.bf, align 8, !dbg !147724
  %.sroa.5750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8, !dbg !147724
  store i32 %.sroa.235.0.copyload, ptr %.sroa.5750.0..sroa_idx, align 8, !dbg !147724
  invoke fastcc void @_RNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner00B7_(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.bg, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %i.ig, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.bf)
          to label %bb.wp unwind label %bb.wo, !dbg !147724

bb.wn:                                            ; preds = %bb.wp, %bb.wl
  %.sroa.769.sroa.8.0 = phi i32 [ 2, %bb.wl ], [ %.sroa.675.sroa.6.0.copyload, %bb.wp ], !dbg !147726
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675.sroa.0), !dbg !147727
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675.sroa.7), !dbg !147727
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.777), !dbg !147727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.663.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.769.sroa.0, i64 16, i1 false), !dbg !147728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.663.sroa.8, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.769.sroa.9, i64 12, i1 false), !dbg !147728
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769.sroa.0), !dbg !147729
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769.sroa.9), !dbg !147729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.663.sroa.0, i64 16, i1 false), !dbg !145996
  %.sroa.5781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 20, !dbg !147730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5781.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.663.sroa.8, i64 12, i1 false), !dbg !145996
  %.sroa.4780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 16, !dbg !147730 ; 3 uses
  store i32 %.sroa.769.sroa.8.0, ptr %.sroa.4780.0..sroa_idx, align 8, !dbg !147730
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663.sroa.0), !dbg !147731
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663.sroa.8), !dbg !147731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.if), !dbg !147732
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9ir_to_dsl12node_to_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.if, i64 noundef %i.ja, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iy)
          to label %bb.ws unwind label %bb.wr, !dbg !147733

bb.wo:                                            ; preds = %bb.ym, %bb.wm
  %i.bev = landingpad { ptr, i32 }
          cleanup
  br label %bb.yr

bb.wp:                                            ; preds = %bb.wm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !147734
  %.sroa.073.0.copyload = load i64, ptr %i.bg, align 8, !dbg !147735 ; 2 uses
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !147735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.675.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.675.0..sroa_idx, i64 16, i1 false), !dbg !147735
  %.sroa.675.sroa.6.0..sroa.675.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24, !dbg !147735
  %.sroa.675.sroa.6.0.copyload = load i32, ptr %.sroa.675.sroa.6.0..sroa.675.0..sroa_idx.sroa_idx, align 8, !dbg !147735 ; 2 uses
  %.sroa.675.sroa.7.0..sroa.675.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 28, !dbg !147735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.675.sroa.7, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.675.sroa.7.0..sroa.675.0..sroa_idx.sroa_idx, i64 12, i1 false), !dbg !147735
  %.sroa.777.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 40, !dbg !147735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.777, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.777.0..sroa_idx, i64 32, i1 false), !dbg !147735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !147736
  %.not1281 = icmp eq i64 %.sroa.073.0.copyload, 18, !dbg !147737
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.769.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.675.sroa.0, i64 16, i1 false), !dbg !147726
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.769.sroa.9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.675.sroa.7, i64 12, i1 false), !dbg !147726
  br i1 %.not1281, label %bb.wn, label %bb.wq, !dbg !147738

bb.wq:                                            ; preds = %bb.wp
  %.sroa.5796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !147739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5796.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.777, i64 32, i1 false), !dbg !147740
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675.sroa.0), !dbg !147727
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675.sroa.7), !dbg !147727
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.777), !dbg !147727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.663.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.769.sroa.0, i64 16, i1 false), !dbg !147741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.663.sroa.8, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.769.sroa.9, i64 12, i1 false), !dbg !147741
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769.sroa.0), !dbg !147729
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769.sroa.9), !dbg !147729
  %.sroa.2793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !147739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2793.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.663.sroa.0, i64 16, i1 false), !dbg !147729
  %.sroa.4795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !147739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4795.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.663.sroa.8, i64 12, i1 false), !dbg !147729
  store i64 %.sroa.073.0.copyload, ptr %0, align 8, !dbg !147739
  %.sroa.3794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !147739
  store i32 %.sroa.675.sroa.6.0.copyload, ptr %.sroa.3794.0..sroa_idx, align 8, !dbg !147739
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663.sroa.0), !dbg !147731
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663.sroa.8), !dbg !147731
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_ENtNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort7options11SortOptionsEEEB1G_.exit, !dbg !147742

bb.wr:                                            ; preds = %bb.xp, %bb.wn
  %i.bew = landingpad { ptr, i32 }
          cleanup
  br label %bb.yo

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.xo, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s_0EB2p_.exit
  %lpad.loopexit.split-lp2332 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ws:                                            ; preds = %bb.wn
  store i8 1, ptr %i.bek, align 1, !dbg !147743, !alias.scope !146000
  store i8 1, ptr %i.bel, align 1, !dbg !147744, !alias.scope !146000
  %i.bex = getelementptr inbounds nuw i8, ptr %i.in, i64 8, !dbg !147745 ; 2 uses
  %i.bey = load ptr, ptr %i.bex, align 8, !dbg !147745, !nonnull !860, !noundef !860 ; 2 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %i.in, i64 16, !dbg !147746 ; 2 uses
  %i.bfa = load i64, ptr %i.bez, align 8, !dbg !147746, !noundef !860 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bfa, 3, !dbg !147747
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bey, i64 %.idx, !dbg !147747
  %i.bfc = icmp eq i64 %i.bfa, 0, !dbg !147748
  br i1 %i.bfc, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s_0EB2p_.exit, label %.lr.ph, !dbg !147749

bb.wt:                                            ; preds = %.noexc1699
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bff, i64 8, !dbg !147750 ; 2 uses
  %i.bfe = icmp eq ptr %i.bfd, %i.bfb, !dbg !147748
  br i1 %i.bfe, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s_0EB2p_.exit, label %.lr.ph, !dbg !147749

.lr.ph:                                           ; preds = %bb.ws, %bb.wt
  %i.bff = phi ptr [ %i.bfd, %bb.wt ], [ %i.bey, %bb.ws ] ; 2 uses
  %.val3.i = load i64, ptr %i.bff, align 8, !dbg !147751, !noalias !146015, !noundef !860
  %i.bfg = invoke noundef zeroext i1 @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr10properties7general18is_elementwise_rec(i64 noundef %.val3.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iy)
          to label %.noexc1699 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !147752

.noexc1699:                                       ; preds = %.lr.ph
  br i1 %i.bfg, label %bb.wt, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s_0EB2p_.exit, !dbg !147751

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s_0EB2p_.exit: ; preds = %bb.wt, %.noexc1699, %bb.ws
  %.lcssa = phi i8 [ 1, %bb.ws ], [ 1, %bb.wt ], [ 0, %.noexc1699 ], !dbg !147748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ie), !dbg !147753
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.684), !dbg !146027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.id), !dbg !146027
  %i.bfh = load ptr, ptr %i.bex, align 8, !dbg !147754, !nonnull !860, !noundef !860
  %i.bfi = load i64, ptr %i.bez, align 8, !dbg !147755, !noundef !860
  invoke fastcc void @_RNvNtCskY9G75ZWc4U_11polars_expr7planner38create_physical_expressions_from_nodes(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.id, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bfh, i64 noundef %i.bfi, ptr noalias noundef align 8 dereferenceable(32) %i.iy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.sl, ptr noalias noundef dereferenceable(4) %i.bej)
          to label %bb.wu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !146027

bb.wu:                                            ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s_0EB2p_.exit
  %i.bfj = load i64, ptr %i.id, align 8, !dbg !147756, !range !920, !noundef !860 ; 2 uses
  %.not1282 = icmp eq i64 %i.bfj, 18, !dbg !147756
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.id, i64 8, !dbg !147757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.684, ptr noundef nonnull align 8 dereferenceable(24) %i.bfk, i64 24, i1 false), !dbg !147757
  br i1 %.not1282, label %bb.ww, label %bb.wv, !dbg !147758

bb.wv:                                            ; preds = %bb.wu
  %.sroa.6802.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 32, !dbg !147759
  %.sroa.3805.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !147760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3805.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6802.0..sroa_idx, i64 40, i1 false), !dbg !147759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.id), !dbg !147761
  %.sroa.2804.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !147760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2804.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.684, i64 24, i1 false), !dbg !147761
  store i64 %i.bfj, ptr %0, align 8, !dbg !147760
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.684), !dbg !147762
  br label %bb.xp, !dbg !147763

bb.ww:                                            ; preds = %bb.wu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.id), !dbg !147761
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ie, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.684, i64 24, i1 false), !dbg !146027
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.684), !dbg !147762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ic), !dbg !147764
  invoke void @_RNvNtCsfcROwRM8ZtH_11polars_plan5utils19aexpr_to_leaf_names(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ic, i64 noundef %i.sg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iy)
          to label %bb.wy unwind label %bb.wx, !dbg !147765

bb.wx:                                            ; preds = %bb.xn, %bb.ww
  %i.bfl = landingpad { ptr, i32 }
          cleanup
  br label %bb.yj

bb.wy:                                            ; preds = %bb.ww
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.ic, i64 8, !dbg !147766
  %i.bfn = load ptr, ptr %i.bfm, align 8, !dbg !147766, !nonnull !860, !noundef !860
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.ic, i64 16, !dbg !147767 ; 2 uses
  %i.bfp = load i64, ptr %i.bfo, align 8, !dbg !147767, !noundef !860
  invoke fastcc void @_RINvNtCsgZ49sUHp3tW_5alloc5slice11stable_sortNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYBH_NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %i.bfn, i64 noundef %i.bfp)
          to label %bb.wz unwind label %.thread2167, !dbg !147768

.thread2167:                                      ; preds = %bb.xq, %bb.xs, %bb.xu, %bb.wy, %bb.wz, %bb.xb, %bb.xe, %bb.xf, %bb.xh, %bb.xj, %bb.xm, %bb.ya
  %i.bfq = landingpad { ptr, i32 }
          cleanup
  br label %.thread2163, !dbg !147769

bb.wz:                                            ; preds = %bb.wy
  invoke void @_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8dedup_byNCNvMs4_B5_Bv_5dedup0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ic)
          to label %bb.xa unwind label %.thread2167, !dbg !147770

bb.xa:                                            ; preds = %bb.wz
  %i.bfr = load i64, ptr %i.bfo, align 8, !dbg !147771, !noundef !860 ; 2 uses
  %i.bfs = icmp ult i64 %i.bfr, 384307168202282326, !dbg !147772
  call void @llvm.assume(i1 %i.bfs), !dbg !147773
  %i.bft = icmp eq i64 %i.bfr, 0, !dbg !147774
  br i1 %i.bft, label %bb.xb, label %bb.xc, !dbg !147774

bb.xb:                                            ; preds = %bb.xa
  %i.bfu = invoke noundef zeroext i1 @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils9has_aexprNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s0_0EBT_(i64 noundef %i.sg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iy)
          to label %bb.xd unwind label %.thread2167, !dbg !147775

bb.xc:                                            ; preds = %bb.xv, %bb.xt, %bb.xr, %bb.xa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hu), !dbg !147776
  store ptr %i.iy, ptr %i.hu, align 8, !dbg !147776
  %.sroa.294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8, !dbg !147776 ; 3 uses
  store i64 %i.sg, ptr %.sroa.294.0..sroa_idx, align 8, !dbg !147776
  %.sroa.294.sroa.2.0..sroa.294.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 16, !dbg !147776
  store i64 4294967297, ptr %.sroa.294.sroa.2.0..sroa.294.0..sroa_idx.sroa_idx, align 8, !dbg !147776
  br label %.outer, !dbg !147777

.outer:                                           ; preds = %bb.yi, %bb.xc
  %.sroa.092.0.ph = phi i8 [ 1, %bb.yi ], [ 0, %bb.xc ]
  %.sroa.091.0.ph = phi i1 [ %.sroa.091.0.ph2328, %bb.yi ], [ false, %bb.xc ]
  br label %.outer2327, !dbg !147778

bb.xd:                                            ; preds = %bb.xb
  br i1 %i.bfu, label %bb.xf, label %bb.xe, !dbg !147775

bb.xe:                                            ; preds = %bb.xd
  %i.bfv = invoke noundef zeroext i1 @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils9has_aexprNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s1_0EBT_(i64 noundef %i.sg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iy)
          to label %bb.xg unwind label %.thread2167, !dbg !147779

bb.xf:                                            ; preds = %bb.xd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ib), !dbg !147780
  invoke void @_RNvNtCsfcROwRM8ZtH_11polars_plan9constants16get_literal_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ib)
          to label %bb.xu unwind label %.thread2167, !dbg !147780

bb.xg:                                            ; preds = %bb.xe
  br i1 %i.bfv, label %bb.xs, label %bb.xh, !dbg !147779

bb.xh:                                            ; preds = %bb.xg
  %i.bfw = invoke noundef zeroext i1 @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils9has_aexprNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s2_0EBT_(i64 noundef %i.sg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iy)
          to label %bb.xi unwind label %.thread2167, !dbg !147781

bb.xi:                                            ; preds = %bb.xh
  br i1 %i.bfw, label %bb.xq, label %bb.xj, !dbg !147781

bb.xj:                                            ; preds = %bb.xi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hy), !dbg !147782
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9ir_to_dsl12node_to_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.hy, i64 noundef %i.sg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iy)
          to label %bb.xk unwind label %.thread2167, !dbg !147783

bb.xk:                                            ; preds = %bb.xj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hx), !dbg !147784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hv), !dbg !147785
  store ptr %i.hy, ptr %i.hv, align 8, !dbg !147785
  %.sroa.4809.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8, !dbg !147785
  store ptr @_RNvXs0_NtNtCsfcROwRM8ZtH_11polars_plan3dsl6formatNtNtB7_4expr4ExprNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, ptr %.sroa.4809.0..sroa_idx, align 8, !dbg !147785
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hw, ptr noundef nonnull @82, ptr noundef nonnull %i.hv)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.xl, !dbg !147786

bb.xl:                                            ; preds = %bb.xk, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit
  %i.bfx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(144) %i.hy) #34
          to label %.thread2163 unwind label %bb.dh, !dbg !147787

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.xk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hv), !dbg !147784
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.hw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83)
          to label %bb.xm unwind label %bb.xl, !dbg !147788

bb.xm:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.41756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !147784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.41756.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.hx, i64 24, i1 false), !dbg !147784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hx), !dbg !147784
  store i64 2, ptr %0, align 8, !dbg !147784
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(144) %i.hy)
          to label %bb.xn unwind label %.thread2167, !dbg !147787

bb.xn:                                            ; preds = %bb.xm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hy), !dbg !147787
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.ic)
          to label %bb.xo unwind label %bb.wx, !dbg !147769

bb.xo:                                            ; preds = %bb.xn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ic), !dbg !147769
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEB1z_(ptr noalias noundef align 8 dereferenceable(24) %i.ie)
          to label %bb.xp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !147789

bb.xp:                                            ; preds = %bb.xo, %bb.wv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ie), !dbg !147789
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(144) %i.if)
          to label %bb.yk unwind label %bb.wr, !dbg !147790

bb.xq:                                            ; preds = %bb.xi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hz), !dbg !146051
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01910), !dbg !147791
  %.sroa.01910.7..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01910, i64 7, !dbg !147791
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.01910.7..sroa_idx, i8 0, i64 16, i1 false), !dbg !147791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.01910, ptr noundef nonnull align 1 dereferenceable(7) @84, i64 7, i1 false), !dbg !147792, !noalias !146054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.hz, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.01910, i64 23, i1 false), !dbg !147793
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01910), !dbg !147794
  %.sroa.41917.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 23, !dbg !147795
  store i8 -57, ptr %.sroa.41917.0..sroa_idx, align 1, !dbg !147795
  invoke fastcc void @_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8push_mutCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.ic, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.hz)
          to label %bb.xr unwind label %.thread2167, !dbg !147796

bb.xr:                                            ; preds = %bb.xq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hz), !dbg !147797
  br label %bb.xc, !dbg !147798

bb.xs:                                            ; preds = %bb.xg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ia), !dbg !146056
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01902), !dbg !147799
  %.sroa.01902.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01902, i64 3, !dbg !147799
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.01902.3..sroa_idx, i8 0, i64 20, i1 false), !dbg !147799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.01902, ptr noundef nonnull align 1 dereferenceable(3) @85, i64 3, i1 false), !dbg !147800, !noalias !146059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.ia, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.01902, i64 23, i1 false), !dbg !147801
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01902), !dbg !147802
  %.sroa.41909.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ia, i64 23, !dbg !147803
  store i8 -61, ptr %.sroa.41909.0..sroa_idx, align 1, !dbg !147803
  invoke fastcc void @_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8push_mutCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.ic, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ia)
          to label %bb.xt unwind label %.thread2167, !dbg !147804

bb.xt:                                            ; preds = %bb.xs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ia), !dbg !147805
  br label %bb.xc, !dbg !147798

bb.xu:                                            ; preds = %bb.xf
  invoke fastcc void @_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8push_mutCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.ic, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ib)
          to label %bb.xv unwind label %.thread2167, !dbg !147806

bb.xv:                                            ; preds = %bb.xu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ib), !dbg !147807
  br label %bb.xc, !dbg !147808

bb.xw:                                            ; preds = %.backedge, %.outer2327
  %i.bfy = invoke { i64, ptr } @_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB5_9AExprIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hu)
          to label %bb.xy unwind label %bb.xx, !dbg !147778

bb.xx:                                            ; preds = %bb.xw
  %i.bfz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.294.0..sroa_idx)
          to label %.thread2163 unwind label %bb.dh, !dbg !147809

bb.xy:                                            ; preds = %bb.xw
  %i.bga = extractvalue { i64, ptr } %i.bfy, 1, !dbg !147778 ; 4 uses
  %.not1283 = icmp eq ptr %i.bga, null, !dbg !147778
  br i1 %.not1283, label %bb.ya, label %bb.xz, !dbg !147778

bb.xz:                                            ; preds = %bb.xy
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bga, i64 112, !dbg !147810
  %i.bgc = load i64, ptr %i.bgb, align 16, !dbg !147810, !range !1035, !noundef !860 ; 3 uses
  %i.bgd = icmp ne i64 %i.bgc, -9223372036854775791, !dbg !147810
  call void @llvm.assume(i1 %i.bgd), !dbg !147810
  %i.bge = xor i64 %i.bgc, -9223372036854775808, !dbg !147810
  %i.bgf = icmp slt i64 %i.bgc, 0, !dbg !147810
  %i.bgg = select i1 %i.bgf, i64 %i.bge, i64 17, !dbg !147810
  switch i64 %i.bgg, label %.backedge [
    i64 5, label %bb.yf
    i64 11, label %bb.yi
    i64 12, label %bb.yf
    i64 14, label %bb.yg
    i64 17, label %bb.yh
  ], !dbg !147811

bb.ya:                                            ; preds = %bb.xy
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.294.0..sroa_idx)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterECskY9G75ZWc4U_11polars_expr.exit1704 unwind label %.thread2167, !dbg !147812

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterECskY9G75ZWc4U_11polars_expr.exit1704: ; preds = %bb.ya
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hu), !dbg !147813
  %spec.select = select i1 %.sroa.091.0.ph2328, i8 %.sroa.092.0.ph, i8 0, !dbg !147814
  %.sroa.8105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 288, !dbg !147815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !147815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8105.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ie, i64 24, i1 false), !dbg !147816
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !147815 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bgh, ptr noundef nonnull align 8 dereferenceable(32) %i.ih, i64 32, i1 false), !dbg !147817
  %.sroa.9106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 312, !dbg !147815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9106.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ic, i64 24, i1 false), !dbg !147818
  %.sroa.7104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 144, !dbg !147815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %.sroa.7104.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(144) %i.if, i64 144, i1 false), !dbg !147819
  %.sroa.6103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 64, !dbg !147815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.6103.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %i.im, i64 80, i1 false), !dbg !147820
  %i.bgi = load i8, ptr %i.ii, align 1, !dbg !147821, !range !919, !noundef !860
  store i64 1, ptr %i.be, align 16, !dbg !147815
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !147815
  store i64 1, ptr %i.bgj, align 8, !dbg !147815
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 48, !dbg !147815
  %i.bgk = load <2 x ptr>, ptr %i.ik, align 16, !dbg !147822
  store <2 x ptr> %i.bgk, ptr %.sroa.4101.0..sroa_idx, align 16, !dbg !147815
  %.sroa.10107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 336, !dbg !147815
  store i8 %i.sj, ptr %.sroa.10107.0..sroa_idx, align 16, !dbg !147815
  %.sroa.11108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 337, !dbg !147815
  store i8 %spec.select, ptr %.sroa.11108.0..sroa_idx, align 1, !dbg !147815
  %.sroa.12109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 338, !dbg !147815
  store i8 %.lcssa, ptr %.sroa.12109.0..sroa_idx, align 2, !dbg !147815
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 339, !dbg !147815
  store i8 %i.bgi, ptr %.sroa.13.0..sroa_idx, align 1, !dbg !147815
  %i.bgl = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 352)
          to label %bb.yd unwind label %bb.yb, !dbg !147823, !noalias !146063 ; 2 uses

bb.yb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterECskY9G75ZWc4U_11polars_expr.exit1704
  %i.bgm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskY9G75ZWc4U_11polars_expr11expressions6window10WindowExprEBM_(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.bgh)
          to label %bb.wd unwind label %bb.yc, !dbg !147824

bb.yc:                                            ; preds = %bb.yb
  %i.bgn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !147825
  unreachable, !dbg !147825

bb.yd:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterECskY9G75ZWc4U_11polars_expr.exit1704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %i.bgl, ptr noundef nonnull align 16 dereferenceable(352) %i.be, i64 352, i1 false), !dbg !147826
end_hunk_1
