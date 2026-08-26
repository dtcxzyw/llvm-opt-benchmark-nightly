Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.0?download=true
begin_hunk_0_@_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build17add_default_flags:bb.a
  %i.t = alloca [16 x i8], align 8                ; 16 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [32 x i8], align 8               ; 10 uses
  %i.ad = alloca [32 x i8], align 8               ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 8 uses
  %i.ah = alloca [32 x i8], align 8               ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 5 uses
  %i.au = alloca [144 x i8], align 8              ; 9 uses
  %i.av = alloca [24 x i8], align 8               ; 9 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 5 uses
  %i.ay = alloca [48 x i8], align 8               ; 5 uses
  %i.az = alloca [24 x i8], align 8               ; 4 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [32 x i8], align 8               ; 10 uses
  %i.bc = alloca [32 x i8], align 8               ; 7 uses
  %i.bd = alloca [16 x i8], align 8               ; 9 uses
  %i.be = alloca [16 x i8], align 8               ; 4 uses
  %i.bf = alloca [16 x i8], align 8               ; 4 uses
  %i.bg = alloca [32 x i8], align 8               ; 5 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [16 x i8], align 8               ; 5 uses
  %i.bj = alloca [24 x i8], align 8               ; 4 uses
  %i.bk = alloca [24 x i8], align 8               ; 4 uses
  %i.bl = alloca [16 x i8], align 8               ; 7 uses
  %i.bm = alloca [24 x i8], align 8               ; 4 uses
  %i.bn = alloca [24 x i8], align 8               ; 4 uses
  %i.bo = alloca [96 x i8], align 8               ; 4 uses
  %i.bp = alloca [96 x i8], align 8               ; 6 uses
  %i.bq = alloca [96 x i8], align 8               ; 25 uses
  %i.br = alloca [32 x i8], align 8               ; 4 uses
  %i.bs = alloca [32 x i8], align 8               ; 4 uses
  %i.bt = alloca [32 x i8], align 8               ; 6 uses
  %i.bu = alloca [96 x i8], align 8               ; 4 uses
  %i.bv = alloca [96 x i8], align 8               ; 4 uses
  %i.bw = alloca [96 x i8], align 8               ; 5 uses
  %i.bx = alloca [96 x i8], align 8               ; 7 uses
  %i.by = alloca [32 x i8], align 8               ; 4 uses
  %i.bz = alloca [8 x i8], align 8                ; 4 uses
  %i.ca = alloca [24 x i8], align 8               ; 4 uses
  %i.cb = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.0.i = alloca [24 x i8], align 8          ; 5 uses
  %i.cc = alloca [24 x i8], align 8               ; 6 uses
  %i.cd = alloca [32 x i8], align 8               ; 4 uses
  %i.ce = alloca [32 x i8], align 8               ; 5 uses
  %i.cf = alloca [32 x i8], align 8               ; 2 uses
  %i.cg = alloca [32 x i8], align 8               ; 2 uses
  %i.ch = alloca [32 x i8], align 8               ; 2 uses
  %i.ci = alloca [32 x i8], align 8               ; 2 uses
  %i.cj = alloca [16 x i8], align 8               ; 2 uses
  %i.ck = alloca [16 x i8], align 8               ; 2 uses
  %i.cl = alloca [16 x i8], align 8               ; 3 uses
  %i.cm = alloca [16 x i8], align 8               ; 2 uses
  %i.cn = alloca [16 x i8], align 8               ; 2 uses
  %i.co = alloca [24 x i8], align 8               ; 2 uses
  %i.cp = alloca [24 x i8], align 8               ; 2 uses
  %i.cq = alloca [24 x i8], align 8               ; 2 uses
  %i.cr = alloca [8 x i8], align 8                ; 2 uses
  %i.cs = alloca [24 x i8], align 8               ; 2 uses
  %i.ct = alloca [24 x i8], align 8               ; 2 uses
  %i.cu = alloca [32 x i8], align 8               ; 3 uses
  %i.cv = alloca [32 x i8], align 8               ; 3 uses
  %i.cw = alloca [24 x i8], align 8               ; 2 uses
  %i.cx = alloca [24 x i8], align 8               ; 2 uses
  %i.cy = alloca [24 x i8], align 8               ; 2 uses
  %i.cz = alloca [24 x i8], align 8               ; 2 uses
  %i.da = alloca [24 x i8], align 8               ; 2 uses
  %i.db = alloca [24 x i8], align 8               ; 2 uses
  %i.dc = alloca [24 x i8], align 8               ; 2 uses
  %i.dd = alloca [24 x i8], align 8               ; 2 uses
  %i.de = alloca [24 x i8], align 8               ; 2 uses
  %i.df = alloca [24 x i8], align 8               ; 2 uses
  %i.dg = alloca [24 x i8], align 8               ; 2 uses
  %i.dh = alloca [24 x i8], align 8               ; 2 uses
  %i.di = alloca [24 x i8], align 8               ; 2 uses
  %i.dj = alloca [24 x i8], align 8               ; 2 uses
  %i.dk = alloca [24 x i8], align 8               ; 2 uses
  %i.dl = alloca [24 x i8], align 8               ; 2 uses
  %i.dm = alloca [24 x i8], align 8               ; 2 uses
  %i.dn = alloca [24 x i8], align 8               ; 2 uses
  %i.do = alloca [24 x i8], align 8               ; 2 uses
  %i.dp = alloca [24 x i8], align 8               ; 2 uses
  %i.dq = alloca [24 x i8], align 8               ; 2 uses
  %i.dr = alloca [24 x i8], align 8               ; 2 uses
  %i.ds = alloca [24 x i8], align 8               ; 2 uses
  %i.dt = alloca [24 x i8], align 8               ; 2 uses
  %i.du = alloca [24 x i8], align 8               ; 2 uses
  %i.dv = alloca [24 x i8], align 8               ; 2 uses
  %i.dw = alloca [24 x i8], align 8               ; 2 uses
  %i.dx = alloca [24 x i8], align 8               ; 2 uses
  %i.dy = alloca [24 x i8], align 8               ; 2 uses
  %i.dz = alloca [24 x i8], align 8               ; 2 uses
  %i.ea = alloca [24 x i8], align 8               ; 2 uses
  %i.eb = alloca [24 x i8], align 8               ; 2 uses
  %i.ec = alloca [24 x i8], align 8               ; 2 uses
  %i.ed = alloca [24 x i8], align 8               ; 2 uses
  %i.ee = alloca [24 x i8], align 8               ; 2 uses
  %i.ef = alloca [24 x i8], align 8               ; 2 uses
  %i.eg = alloca [24 x i8], align 8               ; 2 uses
  %i.eh = alloca [24 x i8], align 8               ; 2 uses
  %i.ei = alloca [24 x i8], align 8               ; 2 uses
  %i.ej = alloca [24 x i8], align 8               ; 2 uses
  %i.ek = alloca [24 x i8], align 8               ; 2 uses
  %i.el = alloca [24 x i8], align 8               ; 2 uses
  %i.em = alloca [24 x i8], align 8               ; 2 uses
  %i.en = alloca [24 x i8], align 8               ; 2 uses
  %i.eo = alloca [24 x i8], align 8               ; 2 uses
  %i.ep = alloca [24 x i8], align 8               ; 2 uses
  %i.eq = alloca [24 x i8], align 8               ; 2 uses
  %i.er = alloca [24 x i8], align 8               ; 2 uses
  %i.es = alloca [24 x i8], align 8               ; 2 uses
  %i.et = alloca [24 x i8], align 8               ; 2 uses
  %i.eu = alloca [24 x i8], align 8               ; 2 uses
  %i.ev = alloca [24 x i8], align 8               ; 2 uses
  %i.ew = alloca [24 x i8], align 8               ; 2 uses
  %i.ex = alloca [24 x i8], align 8               ; 2 uses
  %i.ey = alloca [24 x i8], align 8               ; 5 uses
  %i.ez = alloca [24 x i8], align 8               ; 4 uses
  %i.fa = alloca [24 x i8], align 8               ; 2 uses
  %i.fb = alloca [24 x i8], align 8               ; 2 uses
  %i.fc = alloca [24 x i8], align 8               ; 2 uses
  %i.fd = alloca [24 x i8], align 8               ; 2 uses
  %i.fe = alloca [24 x i8], align 8               ; 2 uses
  %i.ff = alloca [16 x i8], align 8               ; 2 uses
  %i.fg = alloca [16 x i8], align 8               ; 2 uses
  %i.fh = alloca [32 x i8], align 8               ; 6 uses
  %i.fi = alloca [32 x i8], align 8               ; 4 uses
  %i.fj = alloca [24 x i8], align 8               ; 4 uses
  %i.fk = alloca [24 x i8], align 8               ; 4 uses
  %i.fl = alloca [24 x i8], align 8               ; 2 uses
  %i.fm = alloca [24 x i8], align 8               ; 2 uses
  %i.fn = alloca [24 x i8], align 8               ; 2 uses
  %i.fo = alloca [24 x i8], align 8               ; 2 uses
  %i.fp = alloca [16 x i8], align 8               ; 2 uses
  %i.fq = alloca [16 x i8], align 8               ; 2 uses
  %i.fr = alloca [24 x i8], align 8               ; 2 uses
  %i.fs = alloca [24 x i8], align 8               ; 2 uses
  %i.ft = alloca [24 x i8], align 8               ; 2 uses
  %i.fu = alloca [32 x i8], align 8               ; 6 uses
  %i.fv = alloca [32 x i8], align 8               ; 4 uses
  %i.fw = alloca [24 x i8], align 8               ; 4 uses
  %i.fx = alloca [24 x i8], align 8               ; 4 uses
  %i.fy = alloca [16 x i8], align 8               ; 7 uses
  %i.fz = alloca [24 x i8], align 8               ; 2 uses
  %i.ga = alloca [16 x i8], align 8               ; 2 uses
  %i.gb = alloca [16 x i8], align 8               ; 2 uses
  %i.gc = alloca [16 x i8], align 8               ; 3 uses
  %i.gd = alloca [24 x i8], align 8               ; 2 uses
  %i.ge = alloca [24 x i8], align 8               ; 2 uses
  %i.gf = alloca [24 x i8], align 8               ; 2 uses
  %i.gg = alloca [32 x i8], align 8               ; 4 uses
  %i.gh = alloca [24 x i8], align 8               ; 4 uses
  %i.gi = alloca [16 x i8], align 8               ; 2 uses
  %i.gj = alloca [16 x i8], align 8               ; 2 uses
  %i.gk = alloca [24 x i8], align 8               ; 2 uses
  %i.gl = alloca [24 x i8], align 8               ; 2 uses
  %i.gm = alloca [24 x i8], align 8               ; 2 uses
  %i.gn = alloca [8 x i8], align 8                ; 2 uses
  %i.go = alloca [16 x i8], align 8               ; 3 uses
  %i.gp = alloca [16 x i8], align 8               ; 2 uses
  %i.gq = alloca [16 x i8], align 8               ; 2 uses
  %i.gr = alloca [24 x i8], align 8               ; 2 uses
  %i.gs = alloca [24 x i8], align 8               ; 2 uses
  %i.gt = alloca [24 x i8], align 8               ; 2 uses
  %i.gu = alloca [8 x i8], align 8                ; 2 uses
  %i.gv = alloca [16 x i8], align 8               ; 3 uses
  %i.gw = alloca [24 x i8], align 8               ; 2 uses
  %i.gx = alloca [24 x i8], align 8               ; 2 uses
  %i.gy = alloca [24 x i8], align 8               ; 2 uses
  %i.gz = alloca [24 x i8], align 8               ; 2 uses
  %i.ha = alloca [24 x i8], align 8               ; 2 uses
  %i.hb = alloca [24 x i8], align 8               ; 2 uses
  %i.hc = alloca [2 x i8], align 1                ; 3 uses
  %i.hd = alloca [32 x i8], align 8               ; 8 uses
  %i.he = alloca [16 x i8], align 8               ; 2 uses
  %i.hf = alloca [2 x i8], align 1                ; 3 uses
  %i.hg = alloca [24 x i8], align 8               ; 2 uses
  %i.hh = alloca [24 x i8], align 8               ; 2 uses
  %i.hi = alloca [16 x i8], align 8               ; 2 uses
  %i.hj = alloca [16 x i8], align 8               ; 2 uses
  %6 = alloca [24 x i8], align 8                  ; 2 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %i.hk = alloca [24 x i8], align 8               ; 2 uses
  %i.hl = alloca [16 x i8], align 8               ; 2 uses
  %i.hm = alloca [16 x i8], align 8               ; 2 uses
  %i.hn = alloca [16 x i8], align 8               ; 3 uses
  %i.ho = alloca [24 x i8], align 8               ; 2 uses
  %i.hp = alloca [24 x i8], align 8               ; 2 uses
  %i.hq = alloca [24 x i8], align 8               ; 2 uses
  %i.hr = alloca [24 x i8], align 8               ; 4 uses
  %i.hs = alloca [32 x i8], align 8               ; 10 uses
  %i.ht = alloca [24 x i8], align 8               ; 2 uses
  %i.hu = alloca [24 x i8], align 8               ; 2 uses
  %i.hv = alloca [24 x i8], align 8               ; 2 uses
  %i.hw = alloca [24 x i8], align 8               ; 2 uses
  %i.hx = alloca [24 x i8], align 8               ; 2 uses
  %i.hy = alloca [24 x i8], align 8               ; 2 uses
  %i.hz = alloca [16 x i8], align 8               ; 2 uses
  %i.ia = alloca [16 x i8], align 8               ; 2 uses
  %i.ib = alloca [24 x i8], align 8               ; 2 uses
  %i.ic = alloca [24 x i8], align 8               ; 2 uses
  %i.id = alloca [24 x i8], align 8               ; 2 uses
  %i.ie = alloca [24 x i8], align 8               ; 2 uses
  %i.if = alloca [24 x i8], align 8               ; 2 uses
  %i.ig = alloca [24 x i8], align 8               ; 2 uses
  %i.ih = alloca [24 x i8], align 8               ; 2 uses
  %i.ii = alloca [24 x i8], align 8               ; 4 uses
  %i.ij = alloca [24 x i8], align 8               ; 4 uses
  %i.ik = alloca [24 x i8], align 8               ; 2 uses
  %i.il = alloca [32 x i8], align 8               ; 6 uses
  %i.im = alloca [32 x i8], align 8               ; 4 uses
  %i.in = alloca [24 x i8], align 8               ; 6 uses
  %i.io = alloca [16 x i8], align 8               ; 9 uses
  store ptr %4, ptr %i.io, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 6 uses
  store i64 %5, ptr %i.ip, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 6 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !40
  %.not.i35 = icmp eq ptr %i.ir, null
  br i1 %.not.i35, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.is = tail call { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.iq) #16, !noalias !40 ; 2 uses
  %i.it = extractvalue { ptr, i64 } %i.is, 0
  %i.iu = extractvalue { ptr, i64 } %i.is, 1
  %i.iv = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store i64 -1, ptr %i.iv, align 8, !alias.scope !40
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store ptr %i.it, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !40
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  store i64 %i.iu, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !40
  store i64 -2, ptr %i.il, align 8, !alias.scope !40
  br label %_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build14get_raw_target.exit

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCsiHivYpkJ4Hu_2cc9utilities13cargo_env_var(ptr nonnull sret([32 x i8]) align 8 %i.cd, ptr nonnull @270, i64 6), !noalias !40
  call void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtCsiHivYpkJ4Hu_2cc5ErrorE3mapINtNtBM_6borrow3CoweENcNtB1O_5Owned0EB1m_(ptr nonnull sret([32 x i8]) align 8 %i.il, ptr nonnull align 8 %i.cd) #16
  br label %_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build14get_raw_target.exit

_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build14get_raw_target.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtCsiHivYpkJ4Hu_2cc5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1o_(ptr nonnull sret([32 x i8]) align 8 %i.im, ptr nonnull align 8 %i.il) #16
  %i.iw = load i64, ptr %i.im, align 8
  %.not = icmp eq i64 %i.iw, -2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build14get_raw_target.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.im, i64 32, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBN_(ptr nonnull sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.cf, ptr nonnull align 8 @664) #16
  br label %bb.aav

bb.e:                                             ; preds = %_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build14get_raw_target.exit
  %i.ix = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.in, ptr noundef nonnull align 8 dereferenceable(24) %i.ix, i64 24, i1 false)
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 7 uses
  %i.iz = load i8, ptr %i.iy, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 145 ; 3 uses
  %i.jb = icmp eq i8 %i.iz, 2
  br i1 %i.jb, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.fh
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.jc = invoke zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsReNtB7_9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.io, ptr nonnull align 8 @416)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.ik, ptr nonnull @459, i64 7, ptr nonnull align 8 @460)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.tn, %bb.tu, %.body.i.i.i, %bb.wm, %bb.wx, %bb.xb, %bb.xe, %bb.xf, %bb.xj, %bb.yb, %bb.oy, %bb.rq, %bb.qh, %bb.pc, %bb.gj, %bb.en, %bb.dg, %bb.ce, %bb.cb
  %.pn33 = phi { ptr, i32 } [ %.pn, %bb.dg ], [ %.pn29, %bb.gj ], [ %.pn27, %bb.qh ], [ %i.wq, %bb.pc ], [ %.pn22, %bb.rq ], [ %i.nr, %bb.en ], [ %.pn18, %bb.cb ], [ %.pn18, %bb.ce ], [ %i.wm, %bb.oy ], [ %i.abq, %bb.tn ], [ %i.acq, %bb.tu ], [ %i.afw, %bb.xe ], [ %i.afh, %bb.wm ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.xf ], [ %i.afw, %bb.xb ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.afp, %bb.wx ], [ %.pn7.i.i, %bb.xj ], [ %.pn8.i, %bb.yb ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit140, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp141, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.in) #17
          to label %bb.aaw unwind label %bb.cd

.loopexit:                                        ; preds = %bb.os, %bb.ou, %bb.pm, %bb.pn, %bb.po, %bb.pp
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.pt, %bb.ps, %bb.pr, %bb.pq, %bb.op, %bb.on
  %lpad.loopexit140 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke155, %.invoke154, %.invoke153, %.invoke152, %.invoke151, %.invoke150, %.invoke149, %.invoke148, %.invoke, %bb.yo, %_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build14apple_sdk_root.exit.i, %bb.xi, %bb.xh, %_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build20apple_sdk_root_inner.exit.i.i, %bb.xg, %bb.xd, %bb.xa, %bb.wu, %bb.vv, %.noexc121, %.noexc118, %bb.tz, %bb.ty, %.noexc115, %.noexc114, %.noexc113, %.noexc112, %.noexc111, %.noexc110, %.noexc109, %.noexc108, %bb.tt, %bb.ts, %bb.tr, %.noexc106, %bb.tm, %bb.tl, %bb.tk, %.noexc100, %.noexc99, %.noexc98, %_RNvCsiHivYpkJ4Hu_2cc52map_darwin_target_from_rust_to_compiler_architecture.exit.i, %bb.ti, %bb.th, %bb.tg, %bb.tf, %bb.te, %bb.td, %bb.tc, %bb.tb, %bb.ta, %bb.sz, %bb.sy, %.noexc101, %bb.sx, %.noexc82, %bb.sv, %.noexc78, %bb.rf, %bb.re, %.noexc65, %bb.oc, %bb.ob, %bb.oa, %bb.nz, %.noexc45, %bb.ej, %bb.ei, %bb.ef, %bb.cx, %bb.bp, %bb.bo, %bb.aau, %bb.aat, %bb.aas, %bb.aar, %bb.aaq, %bb.aap, %bb.aao, %bb.aan, %bb.aak, %bb.aai, %bb.aah, %bb.aae, %bb.aad, %bb.aac, %bb.zy, %bb.su, %bb.ss, %bb.sr, %bb.sp, %bb.so, %bb.sm, %bb.sl, %bb.sk, %bb.sj, %bb.si, %bb.sf, %bb.sd, %bb.sb, %bb.sa, %bb.rz, %bb.ry, %bb.rm, %bb.rl, %bb.rk, %bb.ri, %bb.rh, %bb.rc, %bb.ra, %bb.qz, %bb.qy, %bb.qa, %bb.pz, %bb.px, %bb.pw, %bb.pu, %bb.pl, %bb.ov, %bb.oq, %bb.ol, %bb.oj, %bb.oi, %bb.of, %bb.ny, %bb.nx, %bb.nv, %bb.nu, %bb.nt, %bb.ns, %bb.nr, %bb.nq, %bb.np, %.critedge, %bb.no, %bb.nm, %bb.nk, %bb.ni, %bb.nh, %bb.ng, %bb.nf, %bb.ne, %bb.nd, %bb.nc, %bb.nb, %bb.my, %bb.mx, %bb.mv, %bb.mu, %bb.ms, %bb.mr, %bb.mp, %bb.mo, %bb.mm, %bb.ml, %bb.mj, %bb.mi, %bb.mh, %bb.mg, %bb.me, %bb.md, %bb.mb, %bb.ma, %bb.lz, %bb.ly, %bb.lx, %bb.lw, %bb.lv, %bb.lt, %bb.ls, %bb.lq, %bb.lp, %bb.lo, %bb.lm, %bb.ll, %bb.lk, %bb.lj, %bb.lh, %bb.lg, %bb.lf, %bb.ld, %bb.lc, %bb.lb, %bb.kz, %bb.ky, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.kr, %bb.kq, %bb.kp, %bb.kn, %bb.km, %bb.kl, %bb.kj, %bb.ki, %bb.kg, %bb.ke, %bb.kd, %bb.kb, %bb.ka, %bb.jy, %bb.jx, %bb.jv, %bb.ju, %bb.js, %bb.jr, %bb.jp, %bb.jo, %bb.jm, %bb.jl, %bb.jj, %bb.ji, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.ja, %bb.iz, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.iq, %bb.ip, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ig, %bb.if, %bb.id, %bb.ic, %bb.ib, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.ho, %bb.hn, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hg, %bb.hf, %bb.hd, %bb.hc, %bb.ha, %bb.gy, %bb.gx, %bb.gt, %bb.gh, %bb.gg, %bb.ge, %bb.gd, %bb.gc, %bb.ga, %bb.fy, %bb.fx, %bb.fw, %bb.ft, %bb.fs, %bb.fq, %bb.fp, %bb.fn, %bb.fm, %bb.fk, %bb.fj, %bb.fg, %bb.fe, %bb.fd, %bb.fb, %bb.el, %bb.ek, %bb.ec, %bb.eb, %bb.dz, %bb.dx, %bb.dv, %bb.du, %bb.ds, %bb.dr, %bb.dp, %bb.do, %bb.de, %bb.dc, %bb.db, %bb.da, %bb.cw, %bb.cv, %bb.cu, %bb.cs, %bb.cq, %bb.co, %bb.cm, %bb.cl, %bb.cj, %bb.ci, %bb.cg, %bb.cf, %.thread136, %bb.bn, %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.bb, %bb.ba, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.y, %bb.w, %bb.v, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.h, %bb.g
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g
  br i1 %i.jc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.hz, ptr nonnull align 8 %i.io)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.i
  %i.jd = invoke zeroext i1 @_RNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2_4Tool13is_like_clang(ptr nonnull align 8 %2)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  br i1 %i.jd, label %bb.j, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.ie, ptr nonnull @417, i64 3, ptr nonnull align 8 @418)
          to label %.invoke155 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %.invoke155
  %i.je = invoke zeroext i1 @_RNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2_4Tool13is_like_clang(ptr nonnull align 8 %2)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ia, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i64 16, i1 false)
  %i.jf = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj5_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @419, ptr nonnull align 8 %i.ia)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.jg = extractvalue { ptr, ptr } %i.jf, 0
  %i.jh = extractvalue { ptr, ptr } %i.jf, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.ib, ptr %i.jg, ptr %i.jh)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ic, ptr noundef nonnull align 8 dereferenceable(24) %i.ib, i64 24, i1 false)
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCs1xwejQucwHj_5alloc6string6StringINtB5_4IntoNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.id, ptr nonnull align 8 %i.ic, ptr nonnull align 8 @420)
          to label %.invoke155 unwind label %.loopexit.split-lp.loopexit.split-lp

.invoke155:                                       ; preds = %bb.q, %bb.m
  %i.ji = phi ptr [ %i.ie, %bb.m ], [ %i.id, %bb.q ]
  invoke void @_RNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2_4Tool25push_opt_unless_duplicate(ptr nonnull align 8 %2, ptr nonnull align 8 %i.ji)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.n
  br i1 %i.je, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.w, %bb.u, %bb.r
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 12 uses
  %i.jk = invoke zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsReNtB7_9PartialEq2neCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.jj, ptr nonnull align 8 @424)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.r
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.jm = invoke zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsReNtB7_9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.jl, ptr nonnull align 8 @421)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  br i1 %i.jm, label %bb.v, label %bb.s

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.hy, ptr nonnull @422, i64 9, ptr nonnull align 8 @423)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2_4Tool25push_opt_unless_duplicate(ptr nonnull align 8 %2, ptr nonnull align 8 %i.hy)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.s
  br i1 %i.jk, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.ai, %bb.ae, %bb.ac, %bb.aa, %bb.x
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 474
  %i.jo = load i8, ptr %i.jn, align 2
  %i.jp = invoke zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsReNtB7_9PartialEq2neCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.jj, ptr nonnull align 8 @434)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.x
  %i.jq = invoke zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsReNtB7_9PartialEq2neCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.jj, ptr nonnull align 8 @426)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  br i1 %i.jq, label %bb.ab, label %bb.y

bb.ab:                                            ; preds = %bb.aa
  %i.jr = invoke zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsReNtB7_9PartialEq2neCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.jj, ptr nonnull align 8 @428)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
end_hunk_0
begin_hunk_1_@_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build17add_default_flags:bb.a

bb.bm:                                            ; preds = %bb.bk
  br i1 %i.ki, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.cj, %bb.ch, %bb.bm
  %i.kj = invoke zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsReNtB7_9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.jj, ptr nonnull align 8 @451)
          to label %bb.ck unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  invoke fastcc void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build7get_env(ptr noalias nonnull align 8 %i.cc, ptr nonnull align 8 %1, ptr nonnull @351, i64 12)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.bo
  %i.kk = load i64, ptr %i.cc, align 8, !noalias !43
  %.not.i36 = icmp eq i64 %i.kk, -1
  br i1 %.not.i36, label %bb.bp, label %.thread

.thread:                                          ; preds = %.noexc
  %i.kl = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kl, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false)
  store i64 -2, ptr %i.hs, align 8, !alias.scope !43
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %bb.bs

bb.bp:                                            ; preds = %.noexc
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoINtNtCs1xwejQucwHj_5alloc6borrow3CoweEE4intoCs93MrfdkTAtF_5shlex(ptr nonnull sret([24 x i8]) align 8 %.sroa.0.i, ptr nonnull @352, i64 139, ptr nonnull align 8 @1) #16
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false)
  %.sroa.2.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store i8 1, ptr %.sroa.2.0..sroa_idx.i37, align 8, !alias.scope !43
  %.pr = load i64, ptr %i.hs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  %.not17 = icmp eq i64 %.pr, -2
  br i1 %.not17, label %bb.bs, label %.thread136

bb.br:                                            ; preds = %bb.ca
  %.pr135 = load i64, ptr %i.hs, align 8
  %.not20 = icmp eq i64 %.pr135, -2
  br i1 %.not20, label %bb.cf, label %.thread136

bb.bs:                                            ; preds = %.thread, %bb.bq
  %i.km = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, ptr noundef nonnull align 8 dereferenceable(24) %i.km, i64 24, i1 false)
  %i.kn = invoke { ptr, i64 } @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path3newNtNtNtB9_3ffi6os_str8OsStringECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.hr)
          to label %bb.bu unwind label %bb.bt     ; 2 uses

bb.bt:                                            ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bs
  %i.ko = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.hr) #17
          to label %bb.cb unwind label %bb.cd

bb.bu:                                            ; preds = %bb.bs
  %i.kp = extractvalue { ptr, i64 } %i.kn, 0
  %i.kq = extractvalue { ptr, i64 } %i.kn, 1
  %i.kr = invoke { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path7displayCsiHivYpkJ4Hu_2cc(ptr %i.kp, i64 %i.kq)
          to label %bb.bv unwind label %bb.bt     ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  %i.ks = extractvalue { ptr, i64 } %i.kr, 0
  %i.kt = extractvalue { ptr, i64 } %i.kr, 1
  store ptr %i.ks, ptr %i.hn, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i64 %i.kt, ptr %i.ku, align 8
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsaL1QbXo9JQH_3std4path7DisplayECsiHivYpkJ4Hu_2cc(ptr nonnull sret([16 x i8]) align 8 %i.hl, ptr nonnull align 8 %i.hn)
          to label %bb.bw unwind label %bb.bt

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, ptr noundef nonnull align 8 dereferenceable(16) %i.hl, i64 16, i1 false)
  %i.kv = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKjd_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @445, ptr nonnull align 8 %i.hm)
          to label %bb.bx unwind label %bb.bt     ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.kw = extractvalue { ptr, ptr } %i.kv, 0
  %i.kx = extractvalue { ptr, ptr } %i.kv, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.ho, ptr %i.kw, ptr %i.kx)
          to label %bb.by unwind label %bb.bt

bb.by:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hp, ptr noundef nonnull align 8 dereferenceable(24) %i.ho, i64 24, i1 false)
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCs1xwejQucwHj_5alloc6string6StringINtB5_4IntoNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.hq, ptr nonnull align 8 %i.hp, ptr nonnull align 8 @446)
          to label %bb.bz unwind label %bb.bt

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2_4Tool11push_cc_arg(ptr nonnull align 8 %2, ptr nonnull align 8 %i.hq)
          to label %bb.ca unwind label %bb.bt

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.hr)
          to label %bb.br unwind label %bb.cc

bb.cb:                                            ; preds = %bb.cc, %bb.bt
  %.pn18 = phi { ptr, i32 } [ %i.la, %bb.cc ], [ %i.ko, %bb.bt ] ; 2 uses
  %i.ky = load i64, ptr %i.hs, align 8
  %i.kz = icmp eq i64 %i.ky, -2
  br i1 %i.kz, label %.body, label %bb.ce

bb.cc:                                            ; preds = %bb.ca
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cd:                                            ; preds = %bb.ru, %bb.rq, %bb.qr, %bb.qn, %bb.qh, %bb.pc, %bb.go, %bb.gj, %bb.en, %bb.dl, %bb.dg, %bb.ce, %bb.bt, %.body
  %i.lb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ce:                                            ; preds = %bb.cb
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtCsiHivYpkJ4Hu_2cc5ErrorEEB1H_(ptr nonnull align 8 %i.hs) #17
          to label %.body unwind label %bb.cd

.thread136:                                       ; preds = %bb.bq, %bb.br
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtCsiHivYpkJ4Hu_2cc5ErrorEEB1H_(ptr nonnull align 8 %i.hs)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %.thread136, %bb.br
  %i.lc = invoke { ptr, i64 } @_RNvXs2_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.in)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cg:                                            ; preds = %bb.cf
  %i.ld = extractvalue { ptr, i64 } %i.lc, 0
  %i.le = extractvalue { ptr, i64 } %i.lc, 1
  %i.lf = invoke zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr %i.ld, i64 %i.le, ptr nonnull @447, i64 7)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.lf, label %bb.ci, label %bb.bn

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.hk, ptr nonnull @448, i64 8, ptr nonnull align 8 @449)
          to label %bb.cj unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2_4Tool11push_cc_arg(ptr nonnull align 8 %2, ptr nonnull align 8 %i.hk)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ck:                                            ; preds = %bb.bn
  br i1 %i.kj, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.invoke154, %bb.db, %bb.ed, %bb.ck
  %i.lg = invoke fastcc zeroext i1 @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build9get_debug(ptr nonnull align 8 %1)
          to label %bb.ee unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cm:                                            ; preds = %bb.ck
  %i.lh = load ptr, ptr %3, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.lj = load i64, ptr %i.li, align 8
  %i.lk = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.lh, i64 %i.lj, ptr nonnull @452, i64 3)
          to label %bb.cn unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.lk, label %bb.da, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ll = load ptr, ptr %3, align 8
  %i.lm = load i64, ptr %i.li, align 8
  %i.ln = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.ll, i64 %i.lm, ptr nonnull @453, i64 4)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cp:                                            ; preds = %bb.co
  br i1 %i.ln, label %bb.da, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lo = load ptr, ptr %3, align 8
  %i.lp = load i64, ptr %i.li, align 8
  %i.lq = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.lo, i64 %i.lp, ptr nonnull @193, i64 7)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.lq, label %bb.da, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lr = load ptr, ptr %3, align 8
  %i.ls = load i64, ptr %i.li, align 8
  %i.lt = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.lr, i64 %i.ls, ptr nonnull @225, i64 6)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.lt, label %bb.da, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.hi, ptr nonnull align 8 %i.ka)
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i64 16, i1 false)
  %i.lu = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj2a_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @454, ptr nonnull align 8 %i.hj)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cw:                                            ; preds = %bb.cv
  %i.lv = extractvalue { ptr, ptr } %i.lu, 0
  %i.lw = extractvalue { ptr, ptr } %i.lu, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %6, ptr %i.lv, ptr %i.lw)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCs1xwejQucwHj_5alloc6string6StringINtB5_4IntoINtNtBC_6borrow3CoweEE4intoCs93MrfdkTAtF_5shlex(ptr nonnull sret([24 x i8]) align 8 %i.cb, ptr nonnull align 8 %i.ca, ptr nonnull align 8 @1) #16
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 6, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.cz

bb.cz:                                            ; preds = %.invoke148, %bb.qz, %bb.cy
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.in)
  br label %bb.aav

bb.da:                                            ; preds = %bb.ct, %bb.cr, %bb.cn, %bb.cp
  %.sroa.44.0 = phi i64 [ 22, %bb.cr ], [ 16, %bb.cn ], [ 16, %bb.cp ], [ 19, %bb.ct ]
  %.sroa.03.0 = phi ptr [ @456, %bb.cr ], [ @457, %bb.cn ], [ @457, %bb.cp ], [ @455, %bb.ct ]
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.hh, ptr nonnull %.sroa.03.0, i64 %.sroa.44.0, ptr nonnull align 8 @458)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp

bb.db:                                            ; preds = %bb.da
  invoke void @_RNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2_4Tool11push_cc_arg(ptr nonnull align 8 %2, ptr nonnull align 8 %i.hh)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dc:                                            ; preds = %bb.h
  invoke void @_RNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2_4Tool11push_cc_arg(ptr nonnull align 8 %2, ptr nonnull align 8 %i.ik)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dd:                                            ; preds = %bb.dc
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 476
  %i.ly = load i8, ptr %i.lx, align 4
  switch i8 %i.ly, label %bb.dq [
    i8 2, label %bb.de
    i8 0, label %bb.dp
  ]

bb.de:                                            ; preds = %bb.dd
  invoke void @_RNvNtCsiHivYpkJ4Hu_2cc9utilities16cargo_env_var_os(ptr nonnull sret([24 x i8]) align 8 %i.ij, ptr nonnull @461, i64 24)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %bb.de
  %i.lz = invoke { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE8as_derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.ij)
          to label %bb.di unwind label %bb.dh     ; 2 uses

bb.dg:                                            ; preds = %bb.dl, %bb.dh
  %.pn = phi { ptr, i32 } [ %i.ma, %bb.dh ], [ %i.mh, %bb.dl ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.ij) #17
          to label %.body unwind label %bb.cd

bb.dh:                                            ; preds = %bb.dn, %bb.dj, %bb.di, %bb.df
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.di:                                            ; preds = %bb.df
  %i.mb = extractvalue { ptr, i64 } %i.lz, 0
  %i.mc = extractvalue { ptr, i64 } %i.lz, 1
  %i.md = invoke { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE17unwrap_or_defaultCsiHivYpkJ4Hu_2cc(ptr %i.mb, i64 %i.mc)
          to label %bb.dj unwind label %bb.dh     ; 2 uses

bb.dj:                                            ; preds = %bb.di
  %i.me = extractvalue { ptr, i64 } %i.md, 0
  %i.mf = extractvalue { ptr, i64 } %i.md, 1
  invoke void @_RNvMsj_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_5OsStr15to_string_lossyCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.ii, ptr %i.me, i64 %i.mf)
          to label %bb.dk unwind label %bb.dh

bb.dk:                                            ; preds = %bb.dj
  %i.mg = invoke { ptr, i64 } @_RNvXs2_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.ii)
          to label %bb.dm unwind label %bb.dl     ; 2 uses

bb.dl:                                            ; preds = %bb.dm, %bb.dk
  %i.mh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.ii) #17
          to label %bb.dg unwind label %bb.cd

bb.dm:                                            ; preds = %bb.dk
  %i.mi = extractvalue { ptr, i64 } %i.mg, 0
  %i.mj = extractvalue { ptr, i64 } %i.mg, 1
  %i.mk = invoke zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr %i.mi, i64 %i.mj, ptr nonnull @462, i64 10)
          to label %bb.dn unwind label %bb.dl

bb.dn:                                            ; preds = %bb.dm
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.ii)
          to label %bb.do unwind label %bb.dh

bb.do:                                            ; preds = %bb.dn
  %. = select i1 %i.mk, ptr @464, ptr @463
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.ij)
          to label %bb.dp unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dp:                                            ; preds = %bb.dd, %bb.do, %bb.dq
  %.sroa.0.0 = phi ptr [ @464, %bb.dq ], [ %., %bb.do ], [ @463, %bb.dd ]
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.ih, ptr nonnull %.sroa.0.0, i64 3, ptr nonnull align 8 @465)
          to label %bb.dr unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dq:                                            ; preds = %bb.dd
  br label %bb.dp

bb.dr:                                            ; preds = %bb.dp
  invoke void @_RNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2_4Tool11push_cc_arg(ptr nonnull align 8 %2, ptr nonnull align 8 %i.ih)
          to label %bb.ds unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ds:                                            ; preds = %bb.dr
  %i.ml = load ptr, ptr %i.io, align 8
  %i.mm = load i64, ptr %i.ip, align 8
  %i.mn = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.ml, i64 %i.mm, ptr nonnull @415, i64 1)
          to label %bb.dt unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dt:                                            ; preds = %bb.ds
  br i1 %i.mn, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.mo = load ptr, ptr %i.io, align 8
  %i.mp = load i64, ptr %i.ip, align 8
  %i.mq = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.mo, i64 %i.mp, ptr nonnull @466, i64 1)
          to label %bb.dw unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dv:                                            ; preds = %bb.dy, %bb.dw, %bb.dt
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.ig, ptr nonnull @472, i64 3, ptr nonnull align 8 @473)
          to label %.invoke154 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dw:                                            ; preds = %bb.du
  br i1 %i.mq, label %bb.dv, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.mr = load ptr, ptr %i.io, align 8
  %i.ms = load i64, ptr %i.ip, align 8
  %i.mt = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.mr, i64 %i.ms, ptr nonnull @467, i64 1)
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.mt, label %bb.dv, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.mu = load ptr, ptr %i.io, align 8
  %i.mv = load i64, ptr %i.ip, align 8
  %i.mw = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.mu, i64 %i.mv, ptr nonnull @468, i64 1)
          to label %bb.ea unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ea:                                            ; preds = %bb.dz
  br i1 %i.mw, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.mx = load ptr, ptr %i.io, align 8
  %i.my = load i64, ptr %i.ip, align 8
  %i.mz = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.mx, i64 %i.my, ptr nonnull @469, i64 1)
          to label %bb.ed unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ec:                                            ; preds = %bb.ed, %bb.ea
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.if, ptr nonnull @470, i64 3, ptr nonnull align 8 @471)
          to label %.invoke154 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ed:                                            ; preds = %bb.eb
  br i1 %i.mz, label %bb.ec, label %bb.cl

.invoke154:                                       ; preds = %bb.dv, %bb.ec
  %i.na = phi ptr [ %i.if, %bb.ec ], [ %i.ig, %bb.dv ]
  invoke void @_RNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2_4Tool25push_opt_unless_duplicate(ptr nonnull align 8 %2, ptr nonnull align 8 %i.na)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ee:                                            ; preds = %bb.cl
  br i1 %i.lg, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.fb, %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store ptr %1, ptr %i.bz, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 473
  %i.nc = load i8, ptr %i.nb, align 1
  %i.nd = invoke zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionbE14unwrap_or_elseNCNvMs4_CsiHivYpkJ4Hu_2ccNtB18_5Build23get_force_frame_pointer0EB18_(i8 %i.nc, ptr nonnull align 8 %i.bz, ptr nonnull align 8 @816) #16
          to label %bb.fc unwind label %.loopexit.split-lp.loopexit.split-lp

bb.eg:                                            ; preds = %bb.ee
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 467
  %i.nf = load i8, ptr %i.ne, align 1
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %bb.ek, label %bb.eh

bb.eh:                                            ; preds = %bb.el, %bb.eg
  %i.nh = load i8, ptr %i.iy, align 8
  %i.ni = load i8, ptr %i.ja, align 1
  store i8 %i.nh, ptr %i.hf, align 1
  %i.nj = getelementptr inbounds nuw i8, ptr %i.hf, i64 1
  store i8 %i.ni, ptr %i.nj, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !noalias !46
  %.not.i41 = icmp eq ptr %i.nl, null
  br i1 %.not.i41, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.nm = invoke { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.nk) #16
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc44:                                         ; preds = %bb.ei
  %i.nn = extractvalue { ptr, i64 } %i.nm, 0
  %i.no = extractvalue { ptr, i64 } %i.nm, 1
  %i.np = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store i64 -1, ptr %i.np, align 8, !alias.scope !46
  %.sroa.2.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store ptr %i.nn, ptr %.sroa.2.0..sroa_idx.i42, align 8, !alias.scope !46
  %.sroa.3.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  store i64 %i.no, ptr %.sroa.3.0..sroa_idx.i43, align 8, !alias.scope !46
  store i64 -2, ptr %i.hd, align 8, !alias.scope !46
  br label %bb.em
end_hunk_1
begin_hunk_2_@_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build23is_flag_supported_inner:bb.a

bb.fe:                                            ; preds = %bb.cq
  %i.kh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsiHivYpkJ4Hu_2cc5BuildEBD_(ptr nonnull align 8 %i.an) #17
          to label %bb.bq unwind label %bb.fa

bb.ff:                                            ; preds = %bb.cq
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsiHivYpkJ4Hu_2cc5BuildEBD_(ptr nonnull align 8 %i.an)
          to label %bb.fd unwind label %bb.br

bb.fg:                                            ; preds = %bb.fd
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.as)
          to label %bb.fh unwind label %bb.bh

bb.fh:                                            ; preds = %bb.fg
  %i.ki = trunc nuw i8 %.sroa.08.10 to i1
  br i1 %i.ki, label %.thread88, label %bb.s

.thread88:                                        ; preds = %bb.bk, %bb.fh
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.av)
          to label %bb.s unwind label %bb.e

.body54.thread:                                   ; preds = %bb.ai, %.body54
  %.pn3394 = phi { ptr, i32 } [ %.pn33, %.body54 ], [ %.pn5.i, %bb.ai ]
  %.sroa.010.193 = phi i1 [ %.sroa.010.1, %.body54 ], [ true, %bb.ai ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.av) #17
          to label %bb.d unwind label %bb.fa

bb.fi:                                            ; preds = %.thread, %bb.d, %bb.b
  %.pn35.pn = phi { ptr, i32 } [ %.pn3585, %.thread ], [ %.pn35, %bb.d ], [ %i.bi, %bb.b ]
  resume { ptr, i32 } %.pn35.pn

.thread:                                          ; preds = %bb.i, %bb.e, %bb.m, %bb.d
  %.pn3585 = phi { ptr, i32 } [ %.pn35, %bb.d ], [ %i.cd, %bb.m ], [ %i.bq, %bb.e ], [ %i.bz, %bb.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsiHivYpkJ4Hu_2cc12CompilerFlagEBD_(ptr nonnull align 8 %i.az) #17
          to label %bb.fi unwind label %bb.fa
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build24autodetect_wasi_compiler(ptr noalias nonnull align 8 %0, ptr align 8 %1, ptr %2, i64 %3, ptr %4, i64 range(i64 5, 8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 3 uses
  %i.j = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %3, ptr %i.k, align 8
  call fastcc void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build19get_env_overridable(ptr noalias align 8 %i.i, ptr align 8 %1, ptr nonnull @833, i64 13)
  %i.l = load i64, ptr %i.i, align 8
  %.not = icmp eq i64 %i.l, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.m = invoke { ptr, i64 } @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path3newINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtB9_3ffi6os_str5OsStrEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.h)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.v, %bb.a
  call void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtCsaL1QbXo9JQH_3std4path7PathBufE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %0, ptr %4, i64 %5, ptr nonnull align 8 @836) #16
  br label %bb.u

bb.d:                                             ; preds = %bb.n, %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.x, %bb.n ], [ %i.r, %bb.h ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.h) #17
          to label %bb.x unwind label %bb.w

bb.e:                                             ; preds = %bb.s, %bb.r, %bb.f, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.o = extractvalue { ptr, i64 } %i.m, 0
  %i.p = extractvalue { ptr, i64 } %i.m, 1
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr %i.o, i64 %i.p, ptr nonnull @834, i64 3)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.q = invoke { ptr, i64 } @_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.f)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.f) #17
          to label %bb.d unwind label %bb.w

bb.i:                                             ; preds = %bb.g
  %i.s = extractvalue { ptr, i64 } %i.q, 0
  %i.t = extractvalue { ptr, i64 } %i.q, 1
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.j)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.u = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj9_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @835, ptr nonnull align 8 %i.c)
          to label %bb.k unwind label %bb.h       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.v = extractvalue { ptr, ptr } %i.u, 0
  %i.w = extractvalue { ptr, ptr } %i.u, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr %i.v, ptr %i.w)
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinNtNtCs1xwejQucwHj_5alloc6string6StringECsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr %i.s, i64 %i.t, ptr nonnull align 8 %i.e)
          to label %bb.m unwind label %bb.h

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.f)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.g) #17
          to label %bb.d unwind label %bb.w

bb.o:                                             ; preds = %bb.m
  %i.y = invoke { ptr, i64 } @_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.g)
          to label %bb.p unwind label %bb.n       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  invoke fastcc void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build5which(ptr noalias nonnull align 8 %i.a, ptr align 8 %1, ptr %i.z, i64 %i.aa, ptr null, i64 undef)
          to label %bb.q unwind label %bb.n

bb.q:                                             ; preds = %bb.p
  %i.ab = load i64, ptr %i.a, align 8
  %.not1 = icmp eq i64 %i.ab, -1
  br i1 %.not1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.g)
          to label %bb.t unwind label %bb.e

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.g)
          to label %bb.v unwind label %bb.e

bb.t:                                             ; preds = %bb.r
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.h)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.c
  ret void

bb.v:                                             ; preds = %bb.s
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.h)
  br label %bb.c

bb.w:                                             ; preds = %bb.n, %bb.h, %bb.d
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.x:                                             ; preds = %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build25get_base_archiver_variant(ptr noalias nonnull align 8 %0, ptr align 8 %1, ptr %2, i64 range(i64 2, 7) %3, ptr %4, i64 range(i64 2, 7) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [224 x i8], align 8               ; 3 uses
  %i.k = alloca [24 x i8], align 8                ; 3 uses
  %i.l = alloca [24 x i8], align 8                ; 3 uses
  %i.m = alloca [24 x i8], align 8                ; 3 uses
  %i.n = alloca [32 x i8], align 8                ; 2 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [24 x i8], align 8                ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 2 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 3 uses
  %i.v = alloca [32 x i8], align 8                ; 2 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 2 uses
  %i.y = alloca [16 x i8], align 8                ; 2 uses
  %6 = alloca [24 x i8], align 8                  ; 2 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %i.z = alloca [16 x i8], align 8                ; 2 uses
  %i.aa = alloca [16 x i8], align 8               ; 2 uses
  %i.ab = alloca [32 x i8], align 8               ; 3 uses
  %i.ac = alloca [24 x i8], align 8               ; 2 uses
  %i.ad = alloca [24 x i8], align 8               ; 2 uses
  %i.ae = alloca [16 x i8], align 8               ; 2 uses
  %i.af = alloca [16 x i8], align 8               ; 2 uses
  %i.ag = alloca [24 x i8], align 8               ; 2 uses
  %i.ah = alloca [24 x i8], align 8               ; 2 uses
  %i.ai = alloca [24 x i8], align 8               ; 3 uses
  %i.aj = alloca [16 x i8], align 8               ; 2 uses
  %i.ak = alloca [16 x i8], align 8               ; 2 uses
  %i.al = alloca [24 x i8], align 8               ; 2 uses
  %i.am = alloca [24 x i8], align 8               ; 2 uses
  %i.an = alloca [24 x i8], align 8               ; 3 uses
  %i.ao = alloca [16 x i8], align 8               ; 2 uses
  %i.ap = alloca [16 x i8], align 8               ; 2 uses
  %i.aq = alloca [24 x i8], align 8               ; 2 uses
  %i.ar = alloca [24 x i8], align 8               ; 2 uses
  %i.as = alloca [24 x i8], align 8               ; 3 uses
  %i.at = alloca [200 x i8], align 8              ; 3 uses
  %i.au = alloca [200 x i8], align 8              ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 3 uses
  %i.aw = alloca [24 x i8], align 8               ; 3 uses
  %i.ax = alloca [24 x i8], align 8               ; 2 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [152 x i8], align 8              ; 2 uses
  %i.ba = alloca [152 x i8], align 8              ; 4 uses
  %i.bb = alloca [152 x i8], align 8              ; 6 uses
  %i.bc = alloca [16 x i8], align 8               ; 2 uses
  %i.bd = alloca [16 x i8], align 8               ; 2 uses
  %i.be = alloca [32 x i8], align 8               ; 3 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 2 uses
  %i.bh = alloca [24 x i8], align 8               ; 2 uses
  %i.bi = alloca [24 x i8], align 8               ; 3 uses
  %i.bj = alloca [32 x i8], align 8               ; 6 uses
  %i.bk = alloca [32 x i8], align 8               ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 4 uses
  %i.bm = alloca [200 x i8], align 8              ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 6 uses
  %i.bo = alloca [16 x i8], align 8               ; 2 uses
  %i.bp = alloca [16 x i8], align 8               ; 2 uses
  %i.bq = alloca [24 x i8], align 8               ; 2 uses
  %i.br = alloca [24 x i8], align 8               ; 2 uses
  %i.bs = alloca [24 x i8], align 8               ; 3 uses
  %i.bt = alloca [200 x i8], align 8              ; 7 uses
  %i.bu = alloca [32 x i8], align 8               ; 5 uses
  %i.bv = alloca [72 x i8], align 8               ; 2 uses
  %i.bw = alloca [200 x i8], align 8              ; 2 uses
  %i.bx = alloca [200 x i8], align 8              ; 3 uses
  %i.by = alloca [24 x i8], align 8               ; 38 uses
  %i.bz = alloca [96 x i8], align 8               ; 2 uses
  %i.ca = alloca [96 x i8], align 8               ; 4 uses
  %i.cb = alloca [96 x i8], align 8               ; 13 uses
  %i.cc = alloca [16 x i8], align 8               ; 13 uses
  %i.cd = alloca [8 x i8], align 8                ; 17 uses
  store ptr %1, ptr %i.cd, align 8
  store ptr %4, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 3 uses
  store i64 %5, ptr %i.ce, align 8
  call void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build10get_target(ptr nonnull sret([96 x i8]) align 8 %i.bz, ptr align 8 %1)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsiHivYpkJ4Hu_2cc6target10TargetInfoNtBO_5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([96 x i8]) align 8 %i.ca, ptr nonnull align 8 %i.bz) #16
  %i.cf = load ptr, ptr %i.ca, align 8
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 32, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTNtNtCsaL1QbXo9JQH_3std7process7CommandNtNtBP_4path7PathBufENtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1I_EE13from_residualB1K_(ptr nonnull sret([224 x i8]) align 8 %0, ptr nonnull align 8 %i.d, ptr nonnull align 8 @864) #16
  br label %bb.fd

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cb, ptr noundef nonnull align 8 dereferenceable(96) %i.ca, i64 96, i1 false)
  call void @_RNvMsr_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBuf3newCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.by) #16
  %i.ci = load ptr, ptr %i.cd, align 8
  invoke fastcc void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build8env_tool(ptr noalias align 8 %i.bv, ptr align 8 %i.ci, ptr %2, i64 %3)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %.invoke25, %.invoke24, %.invoke, %bb.bt, %bb.fc, %bb.fa, %bb.dv, %bb.ds, %bb.dr, %bb.dq, %bb.de, %bb.co, %bb.cl, %bb.ck, %bb.cj, %bb.cg, %bb.cf, %bb.ce, %bb.cb, %bb.ca, %bb.bx, %bb.bw, %bb.bv, %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.bm, %bb.bl, %bb.bj, %bb.bi, %bb.au, %bb.ah, %bb.ad, %bb.ac, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.r, %bb.q, %bb.o, %bb.n, %bb.l, %bb.k, %bb.i, %bb.f, %bb.e, %bb.c
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.e:                                             ; preds = %bb.c
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsaL1QbXo9JQH_3std4path7PathBufIBw_INtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtBN_3ffi6os_str5OsStrEEINtNtB1r_3vec3VecNtNtB1r_6string6StringEEE3mapNtNtBN_7process7CommandNCNvMs4_CsiHivYpkJ4Hu_2ccNtB3D_5Build25get_base_archiver_variant0EB3D_(ptr nonnull sret([200 x i8]) align 8 %i.bw, ptr nonnull align 8 %i.bv, ptr nonnull align 8 %i.by, ptr nonnull align 8 %i.cd)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  store ptr %i.cb, ptr %i.bu, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.cd, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.by, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr %i.cc, ptr %i.cm, align 8
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCsaL1QbXo9JQH_3std7process7CommandE7or_elseNCNvMs4_CsiHivYpkJ4Hu_2ccNtB1B_5Build25get_base_archiver_variants_0EB1B_(ptr nonnull sret([200 x i8]) align 8 %i.bx, ptr nonnull align 8 %i.bw, ptr nonnull align 8 %i.bu)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.cn = load i64, ptr %i.bx, align 8
  %.not = icmp eq i64 %i.cn, -1
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bt, ptr noundef nonnull align 8 dereferenceable(200) %i.bx, i64 200, i1 false)
  br label %bb.ag

bb.i:                                             ; preds = %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 48 ; 4 uses
  %i.cp = invoke zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsReNtB7_9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.co, ptr nonnull align 8 @421)
          to label %bb.j unwind label %bb.d

bb.j:                                             ; preds = %bb.i
  br i1 %i.cp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cr = invoke zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsReNtB7_9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.cq, ptr nonnull align 8 @316)
          to label %bb.m unwind label %bb.d

bb.l:                                             ; preds = %bb.j
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.bo, ptr nonnull align 8 %i.cc)
          to label %bb.dq unwind label %bb.d

bb.m:                                             ; preds = %bb.k
  br i1 %i.cr, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cs = invoke zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsReNtB7_9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.co, ptr nonnull align 8 @651)
          to label %bb.p unwind label %bb.d

bb.o:                                             ; preds = %bb.m
  %i.ct = load ptr, ptr %i.cd, align 8
  invoke void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build17get_base_compiler(ptr nonnull sret([152 x i8]) align 8 %i.az, ptr align 8 %i.ct)
          to label %bb.co unwind label %bb.d

bb.p:                                             ; preds = %bb.n
  br i1 %i.cs, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = invoke zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsReNtB7_9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.co, ptr nonnull align 8 @690)
          to label %bb.s unwind label %bb.d

bb.r:                                             ; preds = %bb.p
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.ao, ptr nonnull align 8 %i.cc)
          to label %bb.cj unwind label %bb.d

bb.s:                                             ; preds = %bb.q
  br i1 %i.cu, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = invoke zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsReNtB7_9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.co, ptr nonnull align 8 @451)
          to label %bb.v unwind label %bb.d

bb.u:                                             ; preds = %bb.s
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.aj, ptr nonnull align 8 %i.cc)
          to label %bb.ce unwind label %bb.d

bb.v:                                             ; preds = %bb.t
  br i1 %i.cv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = load ptr, ptr %i.cd, align 8
  invoke fastcc void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build20get_is_cross_compile(ptr noalias align 8 %i.v, ptr align 8 %i.cw)
          to label %bb.y unwind label %bb.d

bb.x:                                             ; preds = %bb.v
  %i.cx = load ptr, ptr %i.cb, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.cx, i64 %i.cz, ptr nonnull @453, i64 4)
          to label %bb.bh unwind label %bb.d

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultbNtCsiHivYpkJ4Hu_2cc5ErrorENtNtNtB7_3ops9try_trait3Try6branchBN_(ptr nonnull sret([32 x i8]) align 8 %i.w, ptr nonnull align 8 %i.v)
          to label %bb.z unwind label %bb.d

bb.z:                                             ; preds = %bb.y
  %i.db = load i64, ptr %i.w, align 8
  %.not2 = icmp eq i64 %i.db, -2
  br i1 %.not2, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  br label %.invoke24

bb.ab:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dd = load i8, ptr %i.dc, align 8
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = load ptr, ptr %i.cc, align 8
  %i.dg = load i64, ptr %i.ce, align 8
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtCsaL1QbXo9JQH_3std4path7PathBufE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr %i.df, i64 %i.dg, ptr nonnull align 8 @843)
          to label %bb.ae unwind label %bb.d
end_hunk_2
begin_hunk_3_@_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build25get_base_archiver_variant:bb.a
bb.ae:                                            ; preds = %bb.ac
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.by)
          to label %.invoke.sink.split unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  br label %bb.ff

bb.ag:                                            ; preds = %.invoke, %bb.de, %bb.au, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.j, ptr noundef nonnull align 8 dereferenceable(200) %i.bt, i64 200, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.j, i64 224, i1 false)
  br label %bb.fd

bb.ah:                                            ; preds = %bb.ad
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtCsiHivYpkJ4Hu_2cc5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1o_(ptr nonnull sret([32 x i8]) align 8 %i.s, ptr nonnull align 8 %i.r)
          to label %bb.ai unwind label %bb.d

bb.ai:                                            ; preds = %bb.ah
  %i.dk = load i64, ptr %i.s, align 8
  %.not3 = icmp eq i64 %i.dk, -2
  br i1 %.not3, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  br label %.invoke24

bb.ak:                                            ; preds = %bb.ai
  %i.dl = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false)
  %i.dm = invoke { ptr, i64 } @_RNvXs2_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.t)
          to label %bb.an unwind label %bb.am     ; 2 uses

bb.al:                                            ; preds = %bb.av, %bb.as, %bb.am
  %.pn6 = phi { ptr, i32 } [ %i.dn, %bb.am ], [ %.pn, %bb.av ], [ %i.dv, %bb.as ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.t) #17
          to label %bb.ff unwind label %bb.bf

bb.am:                                            ; preds = %bb.be, %bb.at, %bb.aq, %bb.an, %bb.ak
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.an:                                            ; preds = %bb.ak
  %i.do = extractvalue { ptr, i64 } %i.dm, 0
  %i.dp = extractvalue { ptr, i64 } %i.dm, 1
  %i.dq = load ptr, ptr %i.cd, align 8
  invoke fastcc void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build17prefix_for_target(ptr noalias align 8 %i.u, ptr align 8 %i.dq, ptr %i.do, i64 %i.dp)
          to label %bb.ao unwind label %bb.am

bb.ao:                                            ; preds = %bb.an
  %i.dr = load i64, ptr %i.u, align 8
  %.not4 = icmp eq i64 %i.dr, -2
  br i1 %.not4, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.ds = invoke { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSRe4iterCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 @845, i64 2)
          to label %bb.ax unwind label %bb.aw     ; 2 uses

bb.aq:                                            ; preds = %bb.ao
  %i.dt = load ptr, ptr %i.cc, align 8
  %i.du = load i64, ptr %i.ce, align 8
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertReINtB5_4IntoNtNtCsaL1QbXo9JQH_3std4path7PathBufE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr %i.dt, i64 %i.du, ptr nonnull align 8 @844)
          to label %bb.ar unwind label %bb.am

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.by)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  br label %bb.al

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.dw = load ptr, ptr %i.cd, align 8
  invoke fastcc void @_RINvMs4_CsiHivYpkJ4Hu_2ccNtB6_5Build3cmdRNtNtCsaL1QbXo9JQH_3std4path7PathBufEB6_(ptr noalias align 8 %i.bt, ptr align 8 %i.dw, ptr nonnull align 8 %i.by)
          to label %bb.au unwind label %bb.am

bb.au:                                            ; preds = %bb.at, %bb.be
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.t)
          to label %bb.ag unwind label %bb.d

bb.av:                                            ; preds = %bb.bc, %bb.aw
  %.pn = phi { ptr, i32 } [ %i.dx, %bb.aw ], [ %i.ea, %bb.bc ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.q) #17
          to label %bb.al unwind label %bb.bf

bb.aw:                                            ; preds = %bb.bd, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.ap
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ax:                                            ; preds = %bb.ap
  %i.dy = extractvalue { ptr, ptr } %i.ds, 0
  %i.dz = extractvalue { ptr, ptr } %i.ds, 1
  invoke void @_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator10filter_mapNtNtCs1xwejQucwHj_5alloc6string6StringNCNvMs4_CsiHivYpkJ4Hu_2ccNtB2n_5Build25get_base_archiver_variants1_0EB2n_(ptr nonnull sret([32 x i8]) align 8 %i.n, ptr %i.dy, ptr %i.dz, ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.cc)
          to label %bb.ay unwind label %bb.aw

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterReENCNvMs4_CsiHivYpkJ4Hu_2ccNtB1L_5Build25get_base_archiver_variants1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1L_(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull align 8 %i.n)
          to label %bb.az unwind label %bb.aw

bb.az:                                            ; preds = %bb.ay
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE14unwrap_or_elseNCNvMs4_CsiHivYpkJ4Hu_2ccNtB1J_5Build25get_base_archiver_variants2_0EB1J_(ptr nonnull sret([24 x i8]) align 8 %i.p, ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.cc, ptr nonnull align 8 @846)
          to label %bb.ba unwind label %bb.aw

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCs1xwejQucwHj_5alloc6string6StringINtB5_4IntoNtNtCsaL1QbXo9JQH_3std4path7PathBufE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 8 %i.i, ptr nonnull align 8 @847)
          to label %bb.bb unwind label %bb.aw

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.by)
          to label %bb.bd unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br label %bb.av

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.eb = load ptr, ptr %i.cd, align 8
  invoke fastcc void @_RINvMs4_CsiHivYpkJ4Hu_2ccNtB6_5Build3cmdRNtNtCsaL1QbXo9JQH_3std4path7PathBufEB6_(ptr noalias align 8 %i.bt, ptr align 8 %i.eb, ptr nonnull align 8 %i.by)
          to label %bb.be unwind label %bb.aw

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.q)
          to label %bb.au unwind label %bb.am

bb.bf:                                            ; preds = %bb.ff, %bb.er, %bb.en, %bb.ef, %bb.dx, %bb.dm, %bb.cs, %bb.av, %bb.al
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.bg:                                            ; preds = %.invoke24, %bb.fc, %bb.bu
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.by)
  br label %bb.fd

bb.bh:                                            ; preds = %bb.x
  br i1 %i.da, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ed = load ptr, ptr %i.cb, align 8
  %i.ee = load i64, ptr %i.cy, align 8
  %i.ef = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.ed, i64 %i.ee, ptr nonnull @452, i64 3)
          to label %bb.bk unwind label %bb.d

bb.bj:                                            ; preds = %bb.bh
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.ae, ptr nonnull align 8 %i.cc)
          to label %bb.ca unwind label %bb.d

bb.bk:                                            ; preds = %bb.bi
  br i1 %i.ef, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.eg = load ptr, ptr %i.cb, align 8
  %i.eh = load i64, ptr %i.cy, align 8
  %i.ei = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.eg, i64 %i.eh, ptr nonnull @193, i64 7)
          to label %bb.bn unwind label %bb.d

bb.bm:                                            ; preds = %bb.bp, %bb.bn, %bb.bk
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.aa, ptr nonnull align 8 %i.ej)
          to label %bb.bv unwind label %bb.d

bb.bn:                                            ; preds = %bb.bl
  br i1 %i.ei, label %bb.bm, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ek = load ptr, ptr %i.cb, align 8
  %i.el = load i64, ptr %i.cy, align 8
  %i.em = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.ek, i64 %i.el, ptr nonnull @225, i64 6)
          to label %bb.bp unwind label %bb.d

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.em, label %bb.bm, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.en = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.x, ptr nonnull align 8 %i.en)
          to label %bb.br unwind label %bb.d

bb.br:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.eo = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj2a_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @454, ptr nonnull align 8 %i.y)
          to label %bb.bs unwind label %bb.d      ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %i.ep = extractvalue { ptr, ptr } %i.eo, 0
  %i.eq = extractvalue { ptr, ptr } %i.eo, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %6, ptr %i.ep, ptr %i.eq)
          to label %bb.bt unwind label %bb.d

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCs1xwejQucwHj_5alloc6string6StringINtB5_4IntoINtNtBC_6borrow3CoweEE4intoCs93MrfdkTAtF_5shlex(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b, ptr nonnull align 8 @1) #16
          to label %bb.bu unwind label %bb.d

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 6, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bg

bb.bv:                                            ; preds = %bb.bm
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.z, ptr nonnull align 8 %i.cc)
          to label %bb.bw unwind label %bb.d

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  %i.es = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj9_Kj2_ECsiHivYpkJ4Hu_2cc(ptr nonnull @850, ptr nonnull align 8 %i.ab)
          to label %bb.bx unwind label %bb.d      ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.et = extractvalue { ptr, ptr } %i.es, 0
  %i.eu = extractvalue { ptr, ptr } %i.es, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.ac, ptr %i.et, ptr %i.eu)
          to label %bb.by unwind label %bb.d

bb.by:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  br label %.invoke25

bb.bz:                                            ; preds = %.invoke25
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.by)
          to label %.invoke.sink.split unwind label %bb.cd

bb.ca:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  %i.ev = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKja_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @852, ptr nonnull align 8 %i.af)
          to label %bb.cb unwind label %bb.d      ; 2 uses

bb.cb:                                            ; preds = %bb.ca
  %i.ew = extractvalue { ptr, ptr } %i.ev, 0
  %i.ex = extractvalue { ptr, ptr } %i.ev, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.ag, ptr %i.ew, ptr %i.ex)
          to label %bb.cc unwind label %bb.d

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  br label %.invoke25

.invoke25:                                        ; preds = %bb.by, %bb.cc
  %i.ey = phi ptr [ %i.ah, %bb.cc ], [ %i.ad, %bb.by ]
  %i.ez = phi ptr [ @853, %bb.cc ], [ @851, %bb.by ]
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCs1xwejQucwHj_5alloc6string6StringINtB5_4IntoNtNtCsaL1QbXo9JQH_3std4path7PathBufE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.ai, ptr nonnull align 8 %i.ey, ptr nonnull align 8 %i.ez)
          to label %bb.bz unwind label %bb.d

bb.cd:                                            ; preds = %bb.bz
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  br label %bb.ff

bb.ce:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.fb = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj6_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @854, ptr nonnull align 8 %i.ak)
          to label %bb.cf unwind label %bb.d      ; 2 uses

bb.cf:                                            ; preds = %bb.ce
  %i.fc = extractvalue { ptr, ptr } %i.fb, 0
  %i.fd = extractvalue { ptr, ptr } %i.fb, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.al, ptr %i.fc, ptr %i.fd)
          to label %bb.cg unwind label %bb.d

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCs1xwejQucwHj_5alloc6string6StringINtB5_4IntoNtNtCsaL1QbXo9JQH_3std4path7PathBufE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.an, ptr nonnull align 8 %i.am, ptr nonnull align 8 @855)
          to label %bb.ch unwind label %bb.d

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.by)
          to label %.invoke.sink.split unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  br label %bb.ff

bb.cj:                                            ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  %i.ff = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj4_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @856, ptr nonnull align 8 %i.ap)
          to label %bb.ck unwind label %bb.d      ; 2 uses

bb.ck:                                            ; preds = %bb.cj
  %i.fg = extractvalue { ptr, ptr } %i.ff, 0
  %i.fh = extractvalue { ptr, ptr } %i.ff, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.aq, ptr %i.fg, ptr %i.fh)
          to label %bb.cl unwind label %bb.d

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCs1xwejQucwHj_5alloc6string6StringINtB5_4IntoNtNtCsaL1QbXo9JQH_3std4path7PathBufE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.as, ptr nonnull align 8 %i.ar, ptr nonnull align 8 @857)
          to label %bb.cm unwind label %bb.d

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.by)
          to label %.invoke.sink.split unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  br label %bb.ff

bb.co:                                            ; preds = %bb.o
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsiHivYpkJ4Hu_2cc4tool4ToolNtBO_5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([152 x i8]) align 8 %i.ba, ptr nonnull align 8 %i.az)
          to label %bb.cp unwind label %bb.d

bb.cp:                                            ; preds = %bb.co
  %i.fj = load i64, ptr %i.ba, align 8
  %i.fk = icmp eq i64 %i.fj, -1
  br i1 %i.fk, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.fl, i64 32, i1 false)
  br label %.invoke24

.invoke24:                                        ; preds = %bb.aa, %bb.aj, %bb.cq
  %i.fm = phi ptr [ %i.f, %bb.cq ], [ %i.h, %bb.aj ], [ %i.g, %bb.aa ]
  %i.fn = phi ptr [ @860, %bb.cq ], [ @848, %bb.aj ], [ @849, %bb.aa ]
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTNtNtCsaL1QbXo9JQH_3std7process7CommandNtNtBP_4path7PathBufENtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1I_EE13from_residualB1K_(ptr nonnull sret([224 x i8]) align 8 %0, ptr nonnull align 8 %i.fm, ptr nonnull align 8 %i.fn)
          to label %bb.bg unwind label %bb.d

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.bb, ptr noundef nonnull align 8 dereferenceable(152) %i.ba, i64 152, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.fp = invoke zeroext i1 @_RNvXs7_NtCsiHivYpkJ4Hu_2cc4toolNtB5_10ToolFamilyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqB7_(ptr nonnull %i.fo, ptr nonnull @274)
          to label %bb.cu unwind label %bb.ct

bb.cs:                                            ; preds = %bb.dm, %bb.dg, %bb.dc, %bb.ct
  %.pn10 = phi { ptr, i32 } [ %i.fq, %bb.ct ], [ %i.fz, %bb.dc ], [ %i.gg, %bb.dm ], [ %i.gb, %bb.dg ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsiHivYpkJ4Hu_2cc4tool4ToolEBF_(ptr nonnull align 8 %i.bb) #17
          to label %bb.ff unwind label %bb.bf

bb.ct:                                            ; preds = %bb.dk, %bb.dh, %bb.dd, %bb.db, %bb.cz, %bb.cy, %bb.cx, %bb.cv, %bb.cr
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cu:                                            ; preds = %bb.cr
  br i1 %i.fp, label %bb.cv, label %.thread

.thread:                                          ; preds = %bb.cu
  store i64 -1, ptr %i.ay, align 8
  br label %bb.db

bb.cv:                                            ; preds = %bb.cu
  %i.fr = invoke { ptr, i64 } @_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.bb)
          to label %bb.cx unwind label %bb.ct     ; 2 uses

bb.cw:                                            ; preds = %bb.cz
  %.pr = load i64, ptr %i.ay, align 8
  %.not8 = icmp eq i64 %.pr, -1
  br i1 %.not8, label %bb.db, label %bb.da

bb.cx:                                            ; preds = %bb.cv
  %i.fs = invoke { ptr, i64 } @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path3neweECsiHivYpkJ4Hu_2cc(ptr nonnull @207, i64 8)
          to label %bb.cy unwind label %bb.ct     ; 2 uses

bb.cy:                                            ; preds = %bb.cx
  %i.ft = extractvalue { ptr, i64 } %i.fr, 1
  %i.fu = extractvalue { ptr, i64 } %i.fr, 0
  %i.fv = extractvalue { ptr, i64 } %i.fs, 0
  %i.fw = extractvalue { ptr, i64 } %i.fs, 1
  %i.fx = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 264
  invoke fastcc void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build15search_programs(ptr noalias align 8 %i.ax, ptr align 8 %i.fx, ptr %i.fu, i64 %i.ft, ptr %i.fv, i64 %i.fw, ptr nonnull align 8 %i.fy)
          to label %bb.cz unwind label %bb.ct

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufE7or_elseNCNvMs4_CsiHivYpkJ4Hu_2ccNtB1y_5Build25get_base_archiver_variants0_0EB1y_(ptr nonnull sret([24 x i8]) align 8 %i.ay, ptr nonnull align 8 %i.ax, ptr nonnull align 8 %i.cd, ptr nonnull align 8 %i.bb)
          to label %bb.cw unwind label %bb.ct

bb.da:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.by)
          to label %bb.dd unwind label %bb.dc

bb.db:                                            ; preds = %.thread, %bb.cw
  invoke void @_RNvXsz_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.av, ptr nonnull @858, i64 7)
          to label %bb.df unwind label %bb.ct

bb.dc:                                            ; preds = %bb.da
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  br label %bb.cs

bb.dd:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  %i.ga = load ptr, ptr %i.cd, align 8
  invoke fastcc void @_RINvMs4_CsiHivYpkJ4Hu_2ccNtB6_5Build3cmdRNtNtCsaL1QbXo9JQH_3std4path7PathBufEB6_(ptr noalias align 8 %i.bt, ptr align 8 %i.ga, ptr nonnull align 8 %i.by)
          to label %bb.de unwind label %bb.ct

end_hunk_3
begin_hunk_4_@_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build26try_get_archiver_and_flags:bb.a
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std4path4PathENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.n) #16, !noalias !97 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 2 uses
  call fastcc void @_RINvMs4_CsiHivYpkJ4Hu_2ccNtB6_5Build3cmdRNtNtCsaL1QbXo9JQH_3std4path4PathEB6_(ptr noalias align 8 %i.b, ptr nonnull align 8 %1, ptr %i.q, i64 %i.r), !noalias !97
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path4PathINtB5_4IntoNtBB_7PathBufE4intoCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.q, i64 %i.r, ptr nonnull align 8 @674)
          to label %bb.e unwind label %bb.d, !noalias !97

bb.c:                                             ; preds = %bb.a
  call fastcc void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build25get_base_archiver_variant(ptr noalias nonnull align 8 %i.j, ptr nonnull align 8 %1, ptr nonnull @675, i64 2, ptr nonnull @676, i64 2)
  br label %_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build17get_base_archiver.exit

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process7CommandECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.b) #17
          to label %common.resume unwind label %bb.f, !noalias !97

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef nonnull align 8 dereferenceable(200) %i.b, i64 200, i1 false), !noalias !97
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.j, ptr noundef nonnull align 8 dereferenceable(224) %i.c, i64 224, i1 false)
  br label %_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build17get_base_archiver.exit

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !97
  unreachable

common.resume:                                    ; preds = %bb.w, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.d ], [ %.pn, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build17get_base_archiver.exit: ; preds = %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTNtNtCsaL1QbXo9JQH_3std7process7CommandNtNtBP_4path7PathBufENtCsiHivYpkJ4Hu_2cc5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1K_(ptr nonnull sret([224 x i8]) align 8 %i.k, ptr nonnull align 8 %i.j) #16
  %i.v = load i64, ptr %i.k, align 8
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build17get_base_archiver.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTNtNtCsaL1QbXo9JQH_3std7process7CommandNtNtBP_4path7PathBufbENtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1J_EE13from_residualB1L_(ptr nonnull sret([232 x i8]) align 8 %0, ptr nonnull align 8 %i.d, ptr nonnull align 8 @870) #16
  br label %bb.t

bb.h:                                             ; preds = %_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build17get_base_archiver.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.m, ptr noundef nonnull align 8 dereferenceable(200) %i.k, i64 200, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  invoke fastcc void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build8envflags(ptr noalias align 8 %i.h, ptr nonnull align 8 %1, ptr nonnull @868, i64 7)
          to label %bb.i unwind label %.loopexit.split-lp

.loopexit.loopexit:                               ; preds = %bb.u, %bb.s, %.peel.next
  %lpad.loopexit17 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %.peel.begin, %bb.p, %bb.q
  %lpad.loopexit.split-lp18 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %bb.h, %bb.i, %bb.k, %bb.m, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit17, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp18, %.loopexit.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.l) #17
          to label %bb.w unwind label %bb.z

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtB7_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB1b_6string6StringEENtCsiHivYpkJ4Hu_2cc5ErrorENtNtNtB7_3ops9try_trait3Try6branchB23_(ptr nonnull sret([32 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h)
          to label %bb.j unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.z = load i64, ptr %i.i, align 8
  %.not = icmp eq i64 %i.z, -2
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTNtNtCsaL1QbXo9JQH_3std7process7CommandNtNtBP_4path7PathBufbENtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1J_EE13from_residualB1L_(ptr nonnull sret([232 x i8]) align 8 %0, ptr nonnull align 8 %i.e, ptr nonnull align 8 @869)
          to label %bb.v unwind label %.loopexit.split-lp

bb.l:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.01.0.copyload = load i64, ptr %i.aa, align 8 ; 2 uses
  %.not11 = icmp eq i64 %.sroa.01.0.copyload, -1
  br i1 %.not11, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, i64 16, i1 false)
  store i64 %.sroa.01.0.copyload, ptr %i.f, align 8
  %i.ab = invoke align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command4argsINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBV_6string6StringEB1n_ECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.f)
          to label %bb.n unwind label %.loopexit.split-lp ; 0 uses

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0 = phi i8 [ 1, %bb.m ], [ 0, %bb.l ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ad = invoke { ptr, ptr } @_RNvXsh_NtCs1xwejQucwHj_5alloc3vecRINtB5_3VecINtNtB7_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.ac)
          to label %.peel.begin unwind label %.loopexit.split-lp ; 2 uses

.peel.begin:                                      ; preds = %bb.n
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0
  %i.af = extractvalue { ptr, ptr } %i.ad, 1
  store ptr %i.ae, ptr %i.g, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = invoke align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.g)
          to label %bb.o unwind label %.loopexit.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.peel.begin
  %.not12.peel = icmp eq ptr %i.ah, null
  br i1 %.not12.peel, label %.loopexit20, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = invoke { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.ah)
          to label %bb.q unwind label %.loopexit.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0
  %i.ak = extractvalue { ptr, i64 } %i.ai, 1
  %i.al = invoke align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.m, ptr %i.aj, i64 %i.ak)
          to label %.peel.next unwind label %.loopexit.loopexit.split-lp ; 0 uses

.peel.next:                                       ; preds = %bb.q, %bb.u
  %i.am = invoke align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.g)
          to label %bb.r unwind label %.loopexit.loopexit ; 2 uses

bb.r:                                             ; preds = %.peel.next
  %.not12 = icmp eq ptr %i.am, null
  br i1 %.not12, label %.loopexit20, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = invoke { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.am)
          to label %bb.u unwind label %.loopexit.loopexit ; 2 uses

.loopexit20:                                      ; preds = %bb.r, %bb.o
  %.sroa.0.1.lcssa15 = phi i8 [ %.sroa.0.0, %bb.o ], [ 1, %bb.r ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.07, ptr noundef nonnull align 8 dereferenceable(200) %i.m, i64 200, i1 false)
  %.sroa.07.200..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.200..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.07, i64 224, i1 false)
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %.sroa.0.1.lcssa15, ptr %.sroa.38.0..sroa_idx, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.y, %.loopexit20, %bb.g
  ret void

bb.u:                                             ; preds = %bb.s
  %i.ao = extractvalue { ptr, i64 } %i.an, 0
  %i.ap = extractvalue { ptr, i64 } %i.an, 1
  %i.aq = invoke align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.m, ptr %i.ao, i64 %i.ap)
          to label %.peel.next unwind label %.loopexit.loopexit, !llvm.loop !100 ; 0 uses

bb.v:                                             ; preds = %bb.k
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.l)
          to label %bb.y unwind label %bb.x

bb.w:                                             ; preds = %bb.x, %.loopexit
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.x ], [ %lpad.phi, %.loopexit ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process7CommandECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.m) #17
          to label %common.resume unwind label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process7CommandECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.m)
  br label %bb.t

bb.z:                                             ; preds = %bb.w, %.loopexit
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build27getenv_with_target_prefixes(ptr noalias nonnull align 8 %0, ptr align 8 %1, ptr %2, i64 range(i64 2, 10) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 2 uses
  %i.e = alloca [16 x i8], align 8                ; 2 uses
  %4 = alloca [24 x i8], align 8                  ; 2 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %i.f = alloca [96 x i8], align 8                ; 2 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  %i.h = alloca [96 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 3 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.l, align 8
  store ptr %2, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %3, ptr %i.m, align 8
  call fastcc void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build11target_envs(ptr noalias align 8 %i.f, ptr align 8 %1, ptr %2, i64 %3)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultANtNtCs1xwejQucwHj_5alloc6string6Stringj4_NtCsiHivYpkJ4Hu_2cc5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1s_(ptr nonnull sret([96 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f) #16
  %i.n = load i64, ptr %i.g, align 8
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1s_EE13from_residualB1u_(ptr nonnull sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.c, ptr nonnull align 8 @871) #16
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false)
  %i.q = invoke { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs1xwejQucwHj_5alloc6string6String4iterCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.h, i64 4)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1xwejQucwHj_5alloc6string6Stringj4_ECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.h) #17
          to label %bb.q unwind label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.s = extractvalue { ptr, ptr } %i.q, 0
  %i.t = extractvalue { ptr, ptr } %i.q, 1
  invoke void @_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator10filter_mapNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNCNvMs4_CsiHivYpkJ4Hu_2ccNtB33_5Build27getenv_with_target_prefixes0EB33_(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr %i.s, ptr %i.t, ptr nonnull align 8 %i.l)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENCNvMs4_CsiHivYpkJ4Hu_2ccNtB2l_5Build27getenv_with_target_prefixes0ENtNtNtB9_6traits8iterator8Iterator4nextB2l_(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1xwejQucwHj_5alloc6string6Stringj4_ECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.h)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load i64, ptr %i.j, align 8
  %.not3 = icmp eq i64 %i.v, -1
  br i1 %.not3, label %bb.q, label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.w = load i64, ptr %i.j, align 8
  %.not = icmp eq i64 %i.w, -1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.d, ptr nonnull align 8 %i.k)
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.y = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj27_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @9, ptr nonnull align 8 %i.e)
          to label %bb.m unwind label %bb.h       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.z = extractvalue { ptr, ptr } %i.y, 0
  %i.aa = extractvalue { ptr, ptr } %i.y, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %4, ptr %i.z, ptr %i.aa)
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCs1xwejQucwHj_5alloc6string6StringINtB5_4IntoINtNtBC_6borrow3CoweEE4intoCs93MrfdkTAtF_5shlex(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a, ptr nonnull align 8 @1) #16
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.o, %bb.b
  ret void

bb.q:                                             ; preds = %bb.r, %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.u, %bb.r ], [ %i.u, %bb.h ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %bb.h
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.j) #17
          to label %bb.q unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build5which(ptr noalias align 8 %0, ptr align 8 %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [64 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.f, align 8
  store ptr %2, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %3, ptr %i.g, align 8
  store ptr %i.e, ptr %i.d, align 8
  call void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path10components(ptr nonnull sret([64 x i8]) align 8 %i.c, ptr %2, i64 %3)
  %i.h = call i64 @_RNvYNtNtCsaL1QbXo9JQH_3std4path10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5countCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.c) #16
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE8and_thenNtNtBP_4path7PathBufNCNvMs4_CsiHivYpkJ4Hu_2ccNtB20_5Build5which0EB20_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %4, i64 %5, ptr nonnull align 8 %i.e) #16
  call void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufE7or_elseNCNvMs4_CsiHivYpkJ4Hu_2ccNtB1y_5Build5whichs_0EB1y_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.f) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8
  %i.k = load i64, ptr %i.g, align 8
  call void @_RNvXsz_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromRNtB5_4PathE4fromCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr %i.j, i64 %i.k) #16
  call fastcc void @_RNvCsiHivYpkJ4Hu_2cc9check_exe(ptr noalias align 8 %0, ptr align 8 %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build6expand(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build10try_expand(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %1)
  %i.c = load i64, ptr %i.b, align 8
  %.not = icmp eq i64 %i.c, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.d = invoke { ptr, i64 } @_RNvXs2_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  ret void

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsiHivYpkJ4Hu_2cc5ErrorEBD_(ptr nonnull align 8 %i.a) #17
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.g = extractvalue { ptr, i64 } %i.d, 0
  %i.h = extractvalue { ptr, i64 } %i.d, 1
  invoke fastcc void @_RNvCsiHivYpkJ4Hu_2cc4fail(ptr %i.g, i64 %i.h) #19
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build7compile(ptr align 8 %0, ptr %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  call void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build11try_compile(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %0, ptr %1, i64 %2)
  %i.c = load i64, ptr %i.b, align 8
  %.not = icmp eq i64 %i.c, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.d = invoke { ptr, i64 } @_RNvXs2_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.a
  ret void

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsiHivYpkJ4Hu_2cc5ErrorEBD_(ptr nonnull align 8 %i.a) #17
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.f = extractvalue { ptr, i64 } %i.d, 0
  %i.g = extractvalue { ptr, i64 } %i.d, 1
  invoke fastcc void @_RNvCsiHivYpkJ4Hu_2cc4fail(ptr %i.f, i64 %i.g) #19
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build7get_env(ptr noalias nofree writeonly align 8 captures(none) %0, ptr align 8 %1, ptr %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 2 uses
  %i.h = alloca [16 x i8], align 8                ; 2 uses
  %i.i = alloca [16 x i8], align 8                ; 3 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store ptr %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 %3, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 470
  %i.m = load i8, ptr %i.l, align 2
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.o = load ptr, ptr %i.j, align 8
  %i.p = load i64, ptr %i.k, align 8
  call void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr %i.o, i64 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.r = invoke { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE8as_derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.f)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.a
  %i.s = call zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsReNtB7_9PartialEq2neCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.j, ptr nonnull align 8 @872) #16
  br i1 %i.s, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 264
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.g, ptr nonnull align 8 %i.j) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.u = call { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj1e_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @873, ptr nonnull align 8 %i.h) #16 ; 2 uses
  %i.v = extractvalue { ptr, ptr } %i.u, 0
  %i.w = extractvalue { ptr, ptr } %i.u, 1
  store ptr %i.v, ptr %i.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.w, ptr %i.x, align 8
  call void @_RNvMNtCsiHivYpkJ4Hu_2cc15command_helpersNtB2_11CargoOutput14print_metadata(ptr nonnull align 8 %i.t, ptr nonnull %i.i, ptr nonnull align 8 @191)
  br label %bb.b

bb.e:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.f) #17
          to label %bb.l unwind label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.z = extractvalue { ptr, i64 } %i.r, 0
  %i.aa = extractvalue { ptr, i64 } %i.r, 1
end_hunk_4
