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
  %i.hu = alloca [24 x i8], align 8               ; 7 uses
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
  %i.iy = load ptr, ptr %1, align 8, !dbg !146881, !nonnull !860, !align !884, !noundef !860 ; 85 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !146882
  %i.ja = load i64, ptr %i.iz, align 8, !dbg !146882, !noundef !860 ; 50 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 8, !dbg !146883 ; 16 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 16, !dbg !146884 ; 16 uses
  %i.jd = load i64, ptr %i.jc, align 8, !dbg !146884, !noundef !860
  %i.je = icmp ult i64 %i.ja, %i.jd, !dbg !146885
  br i1 %i.je, label %bb.c, label %bb.b, !dbg !146885, !prof !1046

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #38, !dbg !146886
  unreachable, !dbg !146886

bb.c:                                             ; preds = %bb.a
  %i.jf = load ptr, ptr %i.jb, align 8, !dbg !146883, !nonnull !860, !noundef !860
  %i.jg = getelementptr inbounds nuw [144 x i8], ptr %i.jf, i64 %i.ja, !dbg !146887 ; 59 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ix), !dbg !146888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145790), !dbg !146889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !146890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !146890
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 112, !dbg !146890 ; 2 uses
  %i.ji = load i64, ptr %i.jh, align 16, !dbg !146890, !range !1035, !noalias !145790, !noundef !860 ; 3 uses
  %i.jj = icmp ne i64 %i.ji, -9223372036854775791, !dbg !146890
  tail call void @llvm.assume(i1 %i.jj), !dbg !146890
  %i.jk = xor i64 %i.ji, -9223372036854775808, !dbg !146890
  %i.jl = icmp slt i64 %i.ji, 0, !dbg !146890
  %i.jm = select i1 %i.jl, i64 %i.jk, i64 17, !dbg !146890 ; 2 uses
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
  ], !dbg !146890

bb.d:                                             ; preds = %bb.c
  unreachable, !dbg !146891

bb.e:                                             ; preds = %bb.c
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ix, i64 112, !dbg !146890
  store i64 -9223372036854775808, ptr %i.jn, align 16, !dbg !146890, !alias.scope !145790
  br label %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.thread, !dbg !146890

bb.f:                                             ; preds = %bb.c
  %i.jo = load i64, ptr %i.jg, align 16, !dbg !146892, !noalias !145790, !noundef !860
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jg, i64 8, !dbg !146893
  %i.jq = load i8, ptr %i.jp, align 8, !dbg !146893, !range !919, !noalias !145790, !noundef !860
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jg, i64 9, !dbg !146893
  %i.js = load i8, ptr %i.jr, align 1, !dbg !146893, !range !919, !noalias !145790, !noundef !860
  store i64 %i.jo, ptr %i.ix, align 16, !dbg !146894, !alias.scope !145790
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ix, i64 8, !dbg !146894
  store i8 %i.jq, ptr %i.jt, align 8, !dbg !146894, !alias.scope !145790
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ix, i64 9, !dbg !146894
  store i8 %i.js, ptr %i.ju, align 1, !dbg !146894, !alias.scope !145790
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ix, i64 112, !dbg !146894
  store i64 -9223372036854775807, ptr %i.jv, align 16, !dbg !146894, !alias.scope !145790
  br label %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.thread, !dbg !146895

bb.g:                                             ; preds = %bb.c
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jg, i64 23, !dbg !146896
  %i.jx = load i8, ptr %i.jw, align 1, !dbg !146896, !range !971, !noalias !145790, !noundef !860
  %i.jy = icmp eq i8 %i.jx, -40, !dbg !146897
  br i1 %i.jy, label %bb.af, label %bb.ag, !dbg !146897

bb.h:                                             ; preds = %bb.c
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jg, i64 23, !dbg !146898
  %i.ka = load i8, ptr %i.jz, align 1, !dbg !146898, !range !971, !noalias !145790, !noundef !860
  %i.kb = icmp eq i8 %i.ka, -40, !dbg !146899
  br i1 %i.kb, label %bb.ai, label %bb.aj, !dbg !146899

bb.i:                                             ; preds = %bb.c
  call fastcc void @_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(144) %i.ix, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.jg) #39, !dbg !146900
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ix, i64 112, !dbg !146901
  store i64 -9223372036854775804, ptr %i.kc, align 16, !dbg !146901, !alias.scope !145790
  br label %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.thread, !dbg !146895

bb.j:                                             ; preds = %bb.c
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jg, i64 16, !dbg !146902
  %i.ke = load i8, ptr %i.kd, align 16, !dbg !146902, !range !1227, !noalias !145790, !noundef !860
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ix, i64 16, !dbg !146903
  store i8 %i.ke, ptr %i.kf, align 16, !dbg !146903, !alias.scope !145790
  %i.kg = load <2 x i64>, ptr %i.jg, align 16, !dbg !146904, !noalias !145790
  store <2 x i64> %i.kg, ptr %i.ix, align 16, !dbg !146903, !alias.scope !145790
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ix, i64 112, !dbg !146903
  store i64 -9223372036854775803, ptr %i.kh, align 16, !dbg !146903, !alias.scope !145790
  br label %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.thread, !dbg !146895

bb.k:                                             ; preds = %bb.c
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jg, i64 48, !dbg !146905
  %i.kj = load i64, ptr %i.ki, align 16, !dbg !146905, !noalias !145790, !noundef !860
  call fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(144) %i.ix, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.jg) #39, !dbg !146906
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jg, i64 56, !dbg !146907
  %i.kl = load i8, ptr %i.kk, align 8, !dbg !146907, !range !925, !noalias !145790, !noundef !860
  %i.km = getelementptr inbounds nuw i8, ptr %i.ix, i64 48, !dbg !146908
  store i64 %i.kj, ptr %i.km, align 16, !dbg !146908, !alias.scope !145790
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ix, i64 56, !dbg !146908
  store i8 %i.kl, ptr %i.kn, align 8, !dbg !146908, !alias.scope !145790
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ix, i64 112, !dbg !146908
  store i64 -9223372036854775802, ptr %i.ko, align 16, !dbg !146908, !alias.scope !145790
  br label %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.thread, !dbg !146895

bb.l:                                             ; preds = %bb.c
  %i.kp = load i64, ptr %i.jg, align 16, !dbg !146909, !noalias !145790, !noundef !860
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jg, i64 8, !dbg !146910
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ix, i64 8, !dbg !146911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kr, ptr noundef nonnull align 8 dereferenceable(12) %i.kq, i64 12, i1 false), !dbg !146910
  store i64 %i.kp, ptr %i.ix, align 16, !dbg !146911, !alias.scope !145790
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ix, i64 112, !dbg !146911
  store i64 -9223372036854775801, ptr %i.ks, align 16, !dbg !146911, !alias.scope !145790
  br label %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.thread, !dbg !146895

bb.m:                                             ; preds = %bb.c
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jg, i64 16, !dbg !146912
  %i.ku = load i8, ptr %i.kt, align 16, !dbg !146912, !range !919, !noalias !145790, !noundef !860
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jg, i64 17, !dbg !146913
  %i.kw = load i8, ptr %i.kv, align 1, !dbg !146913, !range !919, !noalias !145790, !noundef !860
  %i.kx = load <2 x i64>, ptr %i.jg, align 16, !dbg !146914, !noalias !145790
  store <2 x i64> %i.kx, ptr %i.ix, align 16, !dbg !146915, !alias.scope !145790
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ix, i64 16, !dbg !146915
  store i8 %i.ku, ptr %i.ky, align 16, !dbg !146915, !alias.scope !145790
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ix, i64 17, !dbg !146915
  store i8 %i.kw, ptr %i.kz, align 1, !dbg !146915, !alias.scope !145790
  %i.la = getelementptr inbounds nuw i8, ptr %i.ix, i64 112, !dbg !146915
  store i64 -9223372036854775800, ptr %i.la, align 16, !dbg !146915, !alias.scope !145790
  br label %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.thread, !dbg !146895

bb.n:                                             ; preds = %bb.c
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jg, i64 24, !dbg !146916
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jg, i64 88, !dbg !146917
  %i.ld = load i64, ptr %i.lc, align 8, !dbg !146917, !noalias !145790, !noundef !860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !146918, !noalias !145790
  call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(24) %i.jg), !dbg !146918, !noalias !145790
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !dbg !146919
  call void @llvm.experimental.noalias.scope.decl(metadata !145804), !dbg !146919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !146920, !noalias !145805
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.lb)
          to label %.noexc.i unwind label %bb.al, !dbg !146920, !noalias !145790

.noexc.i:                                         ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !146921, !noalias !145805
  %i.le = getelementptr inbounds nuw i8, ptr %i.jg, i64 48, !dbg !146921
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.le)
          to label %bb.am unwind label %bb.o, !dbg !146921, !noalias !145806

end_hunk_0
begin_hunk_1_@_RNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0B5_:bb.a
  store ptr %i.ii, ptr %i.ig, align 8, !dbg !148453
  %i.beu = getelementptr inbounds nuw i8, ptr %i.ig, i64 8, !dbg !148453
  store ptr %i.iy, ptr %i.beu, align 8, !dbg !148453
  %i.bev = getelementptr inbounds nuw i8, ptr %i.ig, i64 16, !dbg !148453
  store ptr %i.sl, ptr %i.bev, align 8, !dbg !148453
  %i.bew = getelementptr inbounds nuw i8, ptr %i.ig, i64 24, !dbg !148453
  store ptr %i.bel, ptr %i.bew, align 8, !dbg !148453
  %.not1280 = icmp eq i32 %.sroa.235.0.copyload, 2, !dbg !148454
  br i1 %.not1280, label %bb.wo, label %bb.wn, !dbg !148455

bb.wn:                                            ; preds = %bb.wm
  %.sroa.6751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 12, !dbg !148456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !dbg !148456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6751.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.338, i64 12, i1 false), !dbg !148457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !dbg !148456
  store i64 %.sroa.033.0.copyload, ptr %i.bf, align 8, !dbg !148456
  %.sroa.5750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8, !dbg !148456
  store i32 %.sroa.235.0.copyload, ptr %.sroa.5750.0..sroa_idx, align 8, !dbg !148456
  invoke fastcc void @_RNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner00B7_(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.bg, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %i.ig, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.bf)
          to label %bb.wq unwind label %bb.wp, !dbg !148456

bb.wo:                                            ; preds = %bb.wq, %bb.wm
  %.sroa.769.sroa.8.0 = phi i32 [ 2, %bb.wm ], [ %.sroa.675.sroa.6.0.copyload, %bb.wq ], !dbg !148458
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675.sroa.0), !dbg !148459
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675.sroa.7), !dbg !148459
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.777), !dbg !148459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.663.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.769.sroa.0, i64 16, i1 false), !dbg !148460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.663.sroa.8, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.769.sroa.9, i64 12, i1 false), !dbg !148460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769.sroa.0), !dbg !148461
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769.sroa.9), !dbg !148461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.663.sroa.0, i64 16, i1 false), !dbg !146728
  %.sroa.5781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 20, !dbg !148462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5781.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.663.sroa.8, i64 12, i1 false), !dbg !146728
  %.sroa.4780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 16, !dbg !148462 ; 3 uses
  store i32 %.sroa.769.sroa.8.0, ptr %.sroa.4780.0..sroa_idx, align 8, !dbg !148462
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663.sroa.0), !dbg !148463
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663.sroa.8), !dbg !148463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.if), !dbg !148464
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9ir_to_dsl12node_to_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.if, i64 noundef %i.ja, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iy)
          to label %bb.wt unwind label %bb.ws, !dbg !148465

bb.wp:                                            ; preds = %bb.yn, %bb.wn
  %i.bex = landingpad { ptr, i32 }
          cleanup
  br label %bb.yt

bb.wq:                                            ; preds = %bb.wn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !148466
  %.sroa.073.0.copyload = load i64, ptr %i.bg, align 8, !dbg !148467 ; 2 uses
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !148467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.675.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.675.0..sroa_idx, i64 16, i1 false), !dbg !148467
  %.sroa.675.sroa.6.0..sroa.675.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24, !dbg !148467
  %.sroa.675.sroa.6.0.copyload = load i32, ptr %.sroa.675.sroa.6.0..sroa.675.0..sroa_idx.sroa_idx, align 8, !dbg !148467 ; 2 uses
  %.sroa.675.sroa.7.0..sroa.675.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 28, !dbg !148467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.675.sroa.7, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.675.sroa.7.0..sroa.675.0..sroa_idx.sroa_idx, i64 12, i1 false), !dbg !148467
  %.sroa.777.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 40, !dbg !148467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.777, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.777.0..sroa_idx, i64 32, i1 false), !dbg !148467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !148468
  %.not1281 = icmp eq i64 %.sroa.073.0.copyload, 18, !dbg !148469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.769.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.675.sroa.0, i64 16, i1 false), !dbg !148458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.769.sroa.9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.675.sroa.7, i64 12, i1 false), !dbg !148458
  br i1 %.not1281, label %bb.wo, label %bb.wr, !dbg !148470

bb.wr:                                            ; preds = %bb.wq
  %.sroa.5796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !148471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5796.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.777, i64 32, i1 false), !dbg !148472
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675.sroa.0), !dbg !148459
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675.sroa.7), !dbg !148459
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.777), !dbg !148459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.663.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.769.sroa.0, i64 16, i1 false), !dbg !148473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.663.sroa.8, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.769.sroa.9, i64 12, i1 false), !dbg !148473
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769.sroa.0), !dbg !148461
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769.sroa.9), !dbg !148461
  %.sroa.2793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !148471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2793.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.663.sroa.0, i64 16, i1 false), !dbg !148461
  %.sroa.4795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !148471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4795.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.663.sroa.8, i64 12, i1 false), !dbg !148461
  store i64 %.sroa.073.0.copyload, ptr %0, align 8, !dbg !148471
  %.sroa.3794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !148471
  store i32 %.sroa.675.sroa.6.0.copyload, ptr %.sroa.3794.0..sroa_idx, align 8, !dbg !148471
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663.sroa.0), !dbg !148463
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663.sroa.8), !dbg !148463
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_ENtNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort7options11SortOptionsEEEB1G_.exit, !dbg !148474

bb.ws:                                            ; preds = %bb.xq, %bb.wo
  %i.bey = landingpad { ptr, i32 }
          cleanup
  br label %bb.yq

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.yp

.loopexit.split-lp:                               ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s_0EB2p_.exit, %bb.xp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.yp

bb.wt:                                            ; preds = %bb.wo
  store i8 1, ptr %i.bem, align 1, !dbg !148475, !alias.scope !146732
  store i8 1, ptr %i.ben, align 1, !dbg !148476, !alias.scope !146732
  %i.bez = getelementptr inbounds nuw i8, ptr %i.in, i64 8, !dbg !148477 ; 2 uses
  %i.bfa = load ptr, ptr %i.bez, align 8, !dbg !148477, !nonnull !860, !noundef !860 ; 2 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.in, i64 16, !dbg !148478 ; 2 uses
  %i.bfc = load i64, ptr %i.bfb, align 8, !dbg !148478, !noundef !860 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bfc, 3, !dbg !148479
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %.idx, !dbg !148479
  %i.bfe = icmp eq i64 %i.bfc, 0, !dbg !148480
  br i1 %i.bfe, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s_0EB2p_.exit, label %.lr.ph, !dbg !148481

bb.wu:                                            ; preds = %.noexc1699
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfh, i64 8, !dbg !148482 ; 2 uses
  %i.bfg = icmp eq ptr %i.bff, %i.bfd, !dbg !148480
  br i1 %i.bfg, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s_0EB2p_.exit, label %.lr.ph, !dbg !148481

.lr.ph:                                           ; preds = %bb.wt, %bb.wu
  %i.bfh = phi ptr [ %i.bff, %bb.wu ], [ %i.bfa, %bb.wt ] ; 2 uses
  %.val3.i = load i64, ptr %i.bfh, align 8, !dbg !148483, !noalias !146747, !noundef !860
  %i.bfi = invoke noundef zeroext i1 @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr10properties7general18is_elementwise_rec(i64 noundef %.val3.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iy)
          to label %.noexc1699 unwind label %.loopexit, !dbg !148484

.noexc1699:                                       ; preds = %.lr.ph
  br i1 %i.bfi, label %bb.wu, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s_0EB2p_.exit, !dbg !148483

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s_0EB2p_.exit: ; preds = %bb.wu, %.noexc1699, %bb.wt
  %.lcssa = phi i8 [ 1, %bb.wt ], [ 1, %bb.wu ], [ 0, %.noexc1699 ], !dbg !148480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ie), !dbg !148485
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.684), !dbg !146759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.id), !dbg !146759
  %i.bfj = load ptr, ptr %i.bez, align 8, !dbg !148486, !nonnull !860, !noundef !860
  %i.bfk = load i64, ptr %i.bfb, align 8, !dbg !148487, !noundef !860
  invoke fastcc void @_RNvNtCskY9G75ZWc4U_11polars_expr7planner38create_physical_expressions_from_nodes(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.id, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bfj, i64 noundef %i.bfk, ptr noalias noundef align 8 dereferenceable(32) %i.iy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.sl, ptr noalias noundef dereferenceable(4) %i.bel)
          to label %bb.wv unwind label %.loopexit.split-lp, !dbg !146759

bb.wv:                                            ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s_0EB2p_.exit
  %i.bfl = load i64, ptr %i.id, align 8, !dbg !148488, !range !920, !noundef !860 ; 2 uses
  %.not1282 = icmp eq i64 %i.bfl, 18, !dbg !148488
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.id, i64 8, !dbg !148489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.684, ptr noundef nonnull align 8 dereferenceable(24) %i.bfm, i64 24, i1 false), !dbg !148489
  br i1 %.not1282, label %bb.wx, label %bb.ww, !dbg !148490

bb.ww:                                            ; preds = %bb.wv
  %.sroa.6802.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 32, !dbg !148491
  %.sroa.3805.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !148492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3805.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6802.0..sroa_idx, i64 40, i1 false), !dbg !148491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.id), !dbg !148493
  %.sroa.2804.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !148492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2804.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.684, i64 24, i1 false), !dbg !148493
  store i64 %i.bfl, ptr %0, align 8, !dbg !148492
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.684), !dbg !148494
  br label %bb.xq, !dbg !148495

bb.wx:                                            ; preds = %bb.wv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.id), !dbg !148493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ie, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.684, i64 24, i1 false), !dbg !146759
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.684), !dbg !148494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ic), !dbg !148496
  invoke void @_RNvNtCsfcROwRM8ZtH_11polars_plan5utils19aexpr_to_leaf_names(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ic, i64 noundef %i.sg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iy)
          to label %bb.wz unwind label %bb.wy, !dbg !148497

bb.wy:                                            ; preds = %bb.xo, %bb.wx
  %i.bfn = landingpad { ptr, i32 }
          cleanup
  br label %bb.yk

bb.wz:                                            ; preds = %bb.wx
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.ic, i64 8, !dbg !148498
  %i.bfp = load ptr, ptr %i.bfo, align 8, !dbg !148498, !nonnull !860, !noundef !860
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.ic, i64 16, !dbg !148499 ; 2 uses
  %i.bfr = load i64, ptr %i.bfq, align 8, !dbg !148499, !noundef !860
  invoke fastcc void @_RINvNtCsgZ49sUHp3tW_5alloc5slice11stable_sortNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYBH_NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %i.bfp, i64 noundef %i.bfr)
          to label %bb.xa unwind label %.thread2167, !dbg !148500

.thread2167:                                      ; preds = %bb.xr, %bb.xt, %bb.xv, %bb.wz, %bb.xa, %bb.xc, %bb.xf, %bb.xg, %bb.xi, %bb.xk, %bb.xn, %bb.yb
  %i.bfs = landingpad { ptr, i32 }
          cleanup
  br label %.thread2163, !dbg !148501

bb.xa:                                            ; preds = %bb.wz
  invoke void @_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8dedup_byNCNvMs4_B5_Bv_5dedup0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ic)
          to label %bb.xb unwind label %.thread2167, !dbg !148502

bb.xb:                                            ; preds = %bb.xa
  %i.bft = load i64, ptr %i.bfq, align 8, !dbg !148503, !noundef !860 ; 2 uses
  %i.bfu = icmp ult i64 %i.bft, 384307168202282326, !dbg !148504
  call void @llvm.assume(i1 %i.bfu), !dbg !148505
  %i.bfv = icmp eq i64 %i.bft, 0, !dbg !148506
  br i1 %i.bfv, label %bb.xc, label %bb.xd, !dbg !148506

bb.xc:                                            ; preds = %bb.xb
  %i.bfw = invoke noundef zeroext i1 @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils9has_aexprNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s0_0EBT_(i64 noundef %i.sg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iy)
          to label %bb.xe unwind label %.thread2167, !dbg !148507

bb.xd:                                            ; preds = %bb.xw, %bb.xu, %bb.xs, %bb.xb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hu), !dbg !148508
  store ptr %i.iy, ptr %i.hu, align 8, !dbg !148508
  %.sroa.294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8, !dbg !148508 ; 3 uses
  store i64 %i.sg, ptr %.sroa.294.0..sroa_idx, align 8, !dbg !148508
  %.sroa.294.sroa.2.0..sroa.294.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 16, !dbg !148508
  store i32 1, ptr %.sroa.294.sroa.2.0..sroa.294.0..sroa_idx.sroa_idx, align 8, !dbg !148508
  %.sroa.294.sroa.3.0..sroa.294.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 20, !dbg !148508
  store i32 1, ptr %.sroa.294.sroa.3.0..sroa.294.0..sroa_idx.sroa_idx, align 4, !dbg !148508
  br label %.outer, !dbg !148509

.outer:                                           ; preds = %bb.yj, %bb.xd
  %.sroa.092.0.ph = phi i8 [ 1, %bb.yj ], [ 0, %bb.xd ]
  %.sroa.091.0.ph = phi i1 [ %.sroa.091.0.ph2327, %bb.yj ], [ false, %bb.xd ]
  br label %.outer2326, !dbg !148510

bb.xe:                                            ; preds = %bb.xc
  br i1 %i.bfw, label %bb.xg, label %bb.xf, !dbg !148507

bb.xf:                                            ; preds = %bb.xe
  %i.bfx = invoke noundef zeroext i1 @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils9has_aexprNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s1_0EBT_(i64 noundef %i.sg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iy)
          to label %bb.xh unwind label %.thread2167, !dbg !148511

bb.xg:                                            ; preds = %bb.xe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ib), !dbg !148512
  invoke void @_RNvNtCsfcROwRM8ZtH_11polars_plan9constants16get_literal_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ib)
          to label %bb.xv unwind label %.thread2167, !dbg !148512

bb.xh:                                            ; preds = %bb.xf
  br i1 %i.bfx, label %bb.xt, label %bb.xi, !dbg !148511

bb.xi:                                            ; preds = %bb.xh
  %i.bfy = invoke noundef zeroext i1 @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils9has_aexprNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0s2_0EBT_(i64 noundef %i.sg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iy)
          to label %bb.xj unwind label %.thread2167, !dbg !148513

bb.xj:                                            ; preds = %bb.xi
  br i1 %i.bfy, label %bb.xr, label %bb.xk, !dbg !148513

bb.xk:                                            ; preds = %bb.xj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hy), !dbg !148514
  invoke void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9ir_to_dsl12node_to_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.hy, i64 noundef %i.sg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iy)
          to label %bb.xl unwind label %.thread2167, !dbg !148515

bb.xl:                                            ; preds = %bb.xk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hx), !dbg !148516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hv), !dbg !148517
  store ptr %i.hy, ptr %i.hv, align 8, !dbg !148517
  %.sroa.4809.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8, !dbg !148517
  store ptr @_RNvXs0_NtNtCsfcROwRM8ZtH_11polars_plan3dsl6formatNtNtB7_4expr4ExprNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, ptr %.sroa.4809.0..sroa_idx, align 8, !dbg !148517
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hw, ptr noundef nonnull @82, ptr noundef nonnull %i.hv)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.xm, !dbg !148518

bb.xm:                                            ; preds = %bb.xl, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit
  %i.bfz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(144) %i.hy) #34
          to label %.thread2163 unwind label %bb.dh, !dbg !148519

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.xl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hv), !dbg !148516
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.hw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83)
          to label %bb.xn unwind label %bb.xm, !dbg !148520

bb.xn:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.41756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !148516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.41756.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.hx, i64 24, i1 false), !dbg !148516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hx), !dbg !148516
  store i64 2, ptr %0, align 8, !dbg !148516
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(144) %i.hy)
          to label %bb.xo unwind label %.thread2167, !dbg !148519

bb.xo:                                            ; preds = %bb.xn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hy), !dbg !148519
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.ic)
          to label %bb.xp unwind label %bb.wy, !dbg !148501

bb.xp:                                            ; preds = %bb.xo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ic), !dbg !148501
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEB1z_(ptr noalias noundef align 8 dereferenceable(24) %i.ie)
          to label %bb.xq unwind label %.loopexit.split-lp, !dbg !148521

bb.xq:                                            ; preds = %bb.xp, %bb.ww
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ie), !dbg !148521
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(144) %i.if)
          to label %bb.yl unwind label %bb.ws, !dbg !148522

bb.xr:                                            ; preds = %bb.xj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hz), !dbg !146783
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01910), !dbg !148523
  %.sroa.01910.7..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01910, i64 7, !dbg !148523
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.01910.7..sroa_idx, i8 0, i64 16, i1 false), !dbg !148523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.01910, ptr noundef nonnull align 1 dereferenceable(7) @84, i64 7, i1 false), !dbg !148524, !noalias !146786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.hz, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.01910, i64 23, i1 false), !dbg !148525
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01910), !dbg !148526
  %.sroa.41917.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 23, !dbg !148527
  store i8 -57, ptr %.sroa.41917.0..sroa_idx, align 1, !dbg !148527
  invoke fastcc void @_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8push_mutCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.ic, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.hz)
          to label %bb.xs unwind label %.thread2167, !dbg !148528

bb.xs:                                            ; preds = %bb.xr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hz), !dbg !148529
  br label %bb.xd, !dbg !148530

bb.xt:                                            ; preds = %bb.xh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ia), !dbg !146788
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01902), !dbg !148531
  %.sroa.01902.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01902, i64 3, !dbg !148531
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.01902.3..sroa_idx, i8 0, i64 20, i1 false), !dbg !148531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.01902, ptr noundef nonnull align 1 dereferenceable(3) @85, i64 3, i1 false), !dbg !148532, !noalias !146791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.ia, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.01902, i64 23, i1 false), !dbg !148533
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01902), !dbg !148534
  %.sroa.41909.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ia, i64 23, !dbg !148535
  store i8 -61, ptr %.sroa.41909.0..sroa_idx, align 1, !dbg !148535
  invoke fastcc void @_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8push_mutCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.ic, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ia)
          to label %bb.xu unwind label %.thread2167, !dbg !148536

bb.xu:                                            ; preds = %bb.xt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ia), !dbg !148537
  br label %bb.xd, !dbg !148530

bb.xv:                                            ; preds = %bb.xg
  invoke fastcc void @_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8push_mutCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.ic, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ib)
          to label %bb.xw unwind label %.thread2167, !dbg !148538

bb.xw:                                            ; preds = %bb.xv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ib), !dbg !148539
  br label %bb.xd, !dbg !148540

bb.xx:                                            ; preds = %.backedge, %.outer2326
  %i.bga = invoke { i64, ptr } @_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB5_9AExprIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hu)
          to label %bb.xz unwind label %bb.xy, !dbg !148510

bb.xy:                                            ; preds = %bb.xx
  %i.bgb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.294.0..sroa_idx)
          to label %.thread2163 unwind label %bb.dh, !dbg !148541

bb.xz:                                            ; preds = %bb.xx
  %i.bgc = extractvalue { i64, ptr } %i.bga, 1, !dbg !148510 ; 4 uses
  %.not1283 = icmp eq ptr %i.bgc, null, !dbg !148510
  br i1 %.not1283, label %bb.yb, label %bb.ya, !dbg !148510

bb.ya:                                            ; preds = %bb.xz
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bgc, i64 112, !dbg !148542
  %i.bge = load i64, ptr %i.bgd, align 16, !dbg !148542, !range !1035, !noundef !860 ; 3 uses
  %i.bgf = icmp ne i64 %i.bge, -9223372036854775791, !dbg !148542
  call void @llvm.assume(i1 %i.bgf), !dbg !148542
  %i.bgg = xor i64 %i.bge, -9223372036854775808, !dbg !148542
  %i.bgh = icmp slt i64 %i.bge, 0, !dbg !148542
  %i.bgi = select i1 %i.bgh, i64 %i.bgg, i64 17, !dbg !148542
  switch i64 %i.bgi, label %.backedge [
    i64 5, label %bb.yg
    i64 11, label %bb.yj
    i64 12, label %bb.yg
    i64 14, label %bb.yh
    i64 17, label %bb.yi
  ], !dbg !148543

bb.yb:                                            ; preds = %bb.xz
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.294.0..sroa_idx)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterECskY9G75ZWc4U_11polars_expr.exit1704 unwind label %.thread2167, !dbg !148544

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterECskY9G75ZWc4U_11polars_expr.exit1704: ; preds = %bb.yb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hu), !dbg !148545
  %spec.select = select i1 %.sroa.091.0.ph2327, i8 %.sroa.092.0.ph, i8 0, !dbg !148546
  %.sroa.8105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 288, !dbg !148547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !148547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8105.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ie, i64 24, i1 false), !dbg !148548
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !148547 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bgj, ptr noundef nonnull align 8 dereferenceable(32) %i.ih, i64 32, i1 false), !dbg !148549
  %.sroa.9106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 312, !dbg !148547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9106.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ic, i64 24, i1 false), !dbg !148550
  %.sroa.7104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 144, !dbg !148547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %.sroa.7104.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(144) %i.if, i64 144, i1 false), !dbg !148551
  %.sroa.6103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 64, !dbg !148547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.6103.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %i.im, i64 80, i1 false), !dbg !148552
  %i.bgk = load i8, ptr %i.ii, align 1, !dbg !148553, !range !919, !noundef !860
  store i64 1, ptr %i.be, align 16, !dbg !148547
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !148547
  store i64 1, ptr %i.bgl, align 8, !dbg !148547
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 48, !dbg !148547
  %i.bgm = load <2 x ptr>, ptr %i.ik, align 16, !dbg !148554
  store <2 x ptr> %i.bgm, ptr %.sroa.4101.0..sroa_idx, align 16, !dbg !148547
  %.sroa.10107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 336, !dbg !148547
  store i8 %i.sj, ptr %.sroa.10107.0..sroa_idx, align 16, !dbg !148547
  %.sroa.11108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 337, !dbg !148547
  store i8 %spec.select, ptr %.sroa.11108.0..sroa_idx, align 1, !dbg !148547
  %.sroa.12109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 338, !dbg !148547
  store i8 %.lcssa, ptr %.sroa.12109.0..sroa_idx, align 2, !dbg !148547
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 339, !dbg !148547
  store i8 %i.bgk, ptr %.sroa.13.0..sroa_idx, align 1, !dbg !148547
  %i.bgn = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 352)
          to label %bb.ye unwind label %bb.yc, !dbg !148555, !noalias !146795 ; 2 uses

bb.yc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterECskY9G75ZWc4U_11polars_expr.exit1704
  %i.bgo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskY9G75ZWc4U_11polars_expr11expressions6window10WindowExprEBM_(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.bgj)
          to label %bb.we unwind label %bb.yd, !dbg !148556

bb.yd:                                            ; preds = %bb.yc
  %i.bgp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !148557
  unreachable, !dbg !148557

bb.ye:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterECskY9G75ZWc4U_11polars_expr.exit1704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %i.bgn, ptr noundef nonnull align 16 dereferenceable(352) %i.be, i64 352, i1 false), !dbg !148558
end_hunk_1
