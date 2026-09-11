Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/eval_y?download=true
inline.NumInlined: 169
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 95
begin_hunk_0_@Do_Func:bb.a
bb.bo:                                            ; preds = %bb.bn
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.he = load double, ptr %i.hd, align 16, !tbaa !10
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 128
  store double %i.he, ptr %i.hf, align 8, !tbaa !10
  br label %bb.co

bb.bp:                                            ; preds = %bb.bn
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hh = load i64, ptr %i.hg, align 16, !tbaa !10
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %i.hh, ptr %i.hi, align 8, !tbaa !10
  br label %bb.co

bb.bq:                                            ; preds = %bb.bn
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hl = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.hj, ptr noundef nonnull dereferenceable(1) %i.hk) #24 ; 0 uses
  br label %bb.co

bb.br:                                            ; preds = %bb.k
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !22
  switch i32 %i.hn, label %bb.co [
    i32 260, label %bb.bs
    i32 259, label %bb.bt
  ]

bb.bs:                                            ; preds = %bb.br
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hp = load double, ptr %i.ho, align 16, !tbaa !10 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.hr = load double, ptr %i.hq, align 16, !tbaa !10 ; 2 uses
  %i.hs = fcmp olt double %i.hp, %i.hr
  %i.ht = select i1 %i.hs, double %i.hp, double %i.hr
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 128
  store double %i.ht, ptr %i.hu, align 8, !tbaa !10
  br label %bb.co

bb.bt:                                            ; preds = %bb.br
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hw = load i64, ptr %i.hv, align 16, !tbaa !10
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.hy = load i64, ptr %i.hx, align 16, !tbaa !10
  %i.hz = call i64 @llvm.smin.i64(i64 %i.hw, i64 %i.hy)
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %i.hz, ptr %i.ia, align 8, !tbaa !10
  br label %bb.co

bb.bu:                                            ; preds = %bb.k
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !22
  switch i32 %i.ic, label %bb.co [
    i32 260, label %bb.bv
    i32 259, label %bb.bw
    i32 262, label %bb.bx
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ie = load double, ptr %i.id, align 16, !tbaa !10
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 128
  store double %i.ie, ptr %i.if, align 8, !tbaa !10
  br label %bb.co

bb.bw:                                            ; preds = %bb.bu
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ih = load i64, ptr %i.ig, align 16, !tbaa !10
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %i.ih, ptr %i.ii, align 8, !tbaa !10
  br label %bb.co

bb.bx:                                            ; preds = %bb.bu
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.il = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ij, ptr noundef nonnull dereferenceable(1) %i.ik) #24 ; 0 uses
  br label %bb.co

bb.by:                                            ; preds = %bb.k
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.in = load i32, ptr %i.im, align 4, !tbaa !22
  switch i32 %i.in, label %bb.co [
    i32 260, label %bb.bz
    i32 259, label %bb.ca
  ]

bb.bz:                                            ; preds = %bb.by
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ip = load double, ptr %i.io, align 16, !tbaa !10 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.ir = load double, ptr %i.iq, align 16, !tbaa !10 ; 2 uses
  %i.is = fcmp ogt double %i.ip, %i.ir
  %i.it = select i1 %i.is, double %i.ip, double %i.ir
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 128
  store double %i.it, ptr %i.iu, align 8, !tbaa !10
  br label %bb.co

bb.ca:                                            ; preds = %bb.by
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.iw = load i64, ptr %i.iv, align 16, !tbaa !10
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.iy = load i64, ptr %i.ix, align 16, !tbaa !10
  %i.iz = call i64 @llvm.smax.i64(i64 %i.iw, i64 %i.iy)
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %i.iz, ptr %i.ja, align 8, !tbaa !10
  br label %bb.co

bb.cb:                                            ; preds = %bb.k
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.jc = load double, ptr %i.jb, align 16, !tbaa !10
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.je = load double, ptr %i.jd, align 16, !tbaa !10
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.jg = load double, ptr %i.jf, align 16, !tbaa !10
  %i.jh = fsub double %i.jc, %i.je
  %i.ji = call double @llvm.fabs.f64(double %i.jh)
  %i.jj = fcmp olt double %i.ji, %i.jg
  %..i = zext i1 %i.jj to i8
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 %..i, ptr %i.jk, align 8, !tbaa !10
  br label %bb.co

bb.cc:                                            ; preds = %bb.k
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.jm = load double, ptr %i.jl, align 16, !tbaa !10
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.jo = load double, ptr %i.jn, align 16, !tbaa !10
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.jq = load double, ptr %i.jp, align 16, !tbaa !10 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.js = load double, ptr %i.jr, align 16, !tbaa !10
  %i.jt = getelementptr inbounds nuw i8, ptr %2, i64 1344
  %i.ju = load double, ptr %i.jt, align 16, !tbaa !10
  %i.jv = fsub double %i.js, %i.jm                ; 2 uses
  %i.jw = fsub double %i.ju, %i.jo                ; 2 uses
  %i.jx = fmul double %i.jv, %i.jv
  %i.jy = fmul double %i.jw, %i.jw
  %i.jz = fadd double %i.jx, %i.jy
  %i.ka = fmul double %i.jq, %i.jq
  %i.kb = fcmp ole double %i.jz, %i.ka
  %..i1877 = zext i1 %i.kb to i8
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 %..i1877, ptr %i.kc, align 8, !tbaa !10
  br label %bb.co

bb.cd:                                            ; preds = %bb.k
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ke = load double, ptr %i.kd, align 16, !tbaa !10
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.kg = load double, ptr %i.kf, align 16, !tbaa !10
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.ki = load double, ptr %i.kh, align 16, !tbaa !10
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.kk = load double, ptr %i.kj, align 16, !tbaa !10
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 1344
  %i.km = load double, ptr %i.kl, align 16, !tbaa !10
  %i.kn = getelementptr inbounds nuw i8, ptr %2, i64 1664
  %i.ko = load double, ptr %i.kn, align 16, !tbaa !10
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 1984
  %i.kq = load double, ptr %i.kp, align 16, !tbaa !10
  %i.kr = call fastcc signext i8 @saobox(double noundef %i.ke, double noundef %i.kg, double noundef %i.ki, double noundef %i.kk, double noundef %i.km, double noundef %i.ko, double noundef %i.kq)
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 %i.kr, ptr %i.ks, align 8, !tbaa !10
  br label %bb.co

bb.ce:                                            ; preds = %bb.k
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ku = load double, ptr %i.kt, align 16, !tbaa !10
  %i.kv = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.kw = load double, ptr %i.kv, align 16, !tbaa !10
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.ky = load <2 x double>, ptr %i.kx, align 16
  %i.kz = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.la = load double, ptr %i.kz, align 16, !tbaa !10
  %i.lb = getelementptr inbounds nuw i8, ptr %2, i64 1344
  %i.lc = load double, ptr %i.lb, align 16, !tbaa !10
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 1664
  %i.le = load double, ptr %i.ld, align 16, !tbaa !10
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 1984
  %i.lg = load double, ptr %i.lf, align 16, !tbaa !10
  %i.lh = fdiv double %i.lc, 1.800000e+02
  %i.li = fmul double %i.lh, f0x400921FB54442D18  ; 3 uses
  %i.lj = fsub double %i.le, %i.ku                ; 2 uses
  %i.lk = fsub double %i.lg, %i.kw
  %i.ll = call double @cos(double noundef %i.li) #24
  %i.lm = call double @sin(double noundef %i.li) #24 ; 2 uses
  %i.ln = fneg double %i.lj
  %i.lo = call double @cos(double noundef %i.li) #24
  %i.lp = insertelement <2 x double> poison, double %i.lk, i64 0
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lr = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.ls = insertelement <2 x double> %i.lr, double %i.lo, i64 1
  %i.lt = fmul <2 x double> %i.lq, %i.ls
  %i.lu = insertelement <2 x double> poison, double %i.lj, i64 0
  %i.lv = insertelement <2 x double> %i.lu, double %i.ln, i64 1
  %i.lw = insertelement <2 x double> poison, double %i.ll, i64 0
  %i.lx = insertelement <2 x double> %i.lw, double %i.lm, i64 1
  %i.ly = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.lx, <2 x double> %i.lt)
  %i.lz = insertelement <2 x double> %i.ky, double %i.la, i64 1
  %i.ma = fdiv <2 x double> %i.ly, %i.lz          ; 2 uses
  %i.mb = fmul <2 x double> %i.ma, %i.ma          ; 2 uses
  %shift = shufflevector <2 x double> %i.mb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.mb, %shift
  %3 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.mc = fcmp ole double %3, 1.000000e+00
  %..i1878 = zext i1 %i.mc to i8
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 %..i1878, ptr %i.md, align 8, !tbaa !10
  br label %bb.co

bb.cf:                                            ; preds = %bb.k
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !22
  switch i32 %i.mf, label %bb.co [
    i32 258, label %bb.cg
    i32 259, label %bb.ch
    i32 260, label %bb.ci
    i32 261, label %bb.cj
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.mh = load i8, ptr %i.mg, align 16, !tbaa !10
  %.not1865 = icmp eq i8 %i.mh, 0
  %i.mi = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.mj = load i8, ptr %i.mi, align 16
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.ml = load i8, ptr %i.mk, align 16
  %.v1866 = select i1 %.not1865, i8 %i.ml, i8 %i.mj
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 %.v1866, ptr %i.mm, align 8, !tbaa !10
  br label %bb.co

bb.ch:                                            ; preds = %bb.cf
  %i.mn = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.mo = load i8, ptr %i.mn, align 16, !tbaa !10
  %.not1864 = icmp eq i8 %i.mo, 0
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.mq = load i64, ptr %i.mp, align 16
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.ms = load i64, ptr %i.mr, align 16
  %i.mt = select i1 %.not1864, i64 %i.ms, i64 %i.mq
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %i.mt, ptr %i.mu, align 8, !tbaa !10
  br label %bb.co

bb.ci:                                            ; preds = %bb.cf
  %i.mv = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.mw = load i8, ptr %i.mv, align 16, !tbaa !10
  %.not1863 = icmp eq i8 %i.mw, 0
  %i.mx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.my = load double, ptr %i.mx, align 16
  %i.mz = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.na = load double, ptr %i.mz, align 16
  %i.nb = select i1 %.not1863, double %i.na, double %i.my
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 128
  store double %i.nb, ptr %i.nc, align 8, !tbaa !10
  br label %bb.co

bb.cj:                                            ; preds = %bb.cf
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.nf = load i8, ptr %i.ne, align 16, !tbaa !10
  %.not1862 = icmp eq i8 %i.nf, 0
  %.v.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not1862, i64 384, i64 64
  %.v.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %2, i64 %.v.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.ng = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.nd, ptr noundef nonnull dereferenceable(1) %.v.sroa.sel.v.sroa.sel.v.sroa.sel) #24 ; 0 uses
  br label %bb.co

bb.ck:                                            ; preds = %bb.k
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.nj = load i64, ptr %i.nh, align 8, !tbaa !23
  %i.nk = trunc i64 %i.nj to i32
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.nm = load i64, ptr %2, align 16, !tbaa !372
  %i.nn = trunc i64 %i.nm to i32
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.np = load i64, ptr %i.no, align 16, !tbaa !10
  %i.nq = trunc i64 %i.np to i32
  %i.nr = call fastcc i32 @cstrmid(ptr noundef %0, ptr noundef nonnull %i.ni, i32 noundef %i.nk, ptr noundef nonnull %i.nl, i32 noundef %i.nn, i32 noundef %i.nq) ; 0 uses
  br label %bb.co

bb.cl:                                            ; preds = %bb.k
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.nu = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ns, ptr noundef nonnull dereferenceable(1) %i.nt) #26 ; 2 uses
  %i.nv = icmp eq ptr %i.nu, null
  br i1 %i.nv, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 0, ptr %i.nw, align 8, !tbaa !10
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.nx = ptrtoint ptr %i.nu to i64
  %i.ny = ptrtoint ptr %i.ns to i64
  %reass.sub = sub i64 %i.nx, %i.ny
  %i.nz = add i64 %reass.sub, 1
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %i.nz, ptr %i.oa, align 8, !tbaa !10
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn, %bb.by, %bb.bu, %bb.br, %bb.bn, %bb.ai, %bb.ad, %bb.q, %bb.l, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.bz, %bb.ca, %bb.bv, %bb.bx, %bb.bw, %bb.bs, %bb.bt, %bb.bo, %bb.bq, %bb.bp, %bb.bg, %bb.bh, %bb.bd, %bb.be, %bb.ba, %bb.bb, %bb.as, %bb.at, %bb.ap, %bb.aq, %bb.aj, %bb.ak, %bb.ae, %bb.ag, %bb.ah, %bb.af, %bb.z, %bb.aa, %bb.v, %bb.x, %bb.w, %bb.r, %bb.s, %bb.m, %bb.o, %bb.p, %bb.n, %bb.ck, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.an, %bb.am, %bb.al, %bb.ac, %bb.ab, %bb.t, %bb.k
  store i32 -1000, ptr %1, align 8, !tbaa !24
  br label %.thread

bb.cp:                                            ; preds = %._crit_edge
  call fastcc void @Allocate_Ptrs(ptr noundef %0, ptr noundef nonnull %1)
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !46 ; 94 uses
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 19 uses
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !23 ; 2 uses
  %i.of = mul i64 %i.oe, %i.oc                    ; 73 uses
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !33
  %.not1656 = icmp eq i32 %i.oh, 0
  br i1 %.not1656, label %bb.cq, label %.thread

bb.cq:                                            ; preds = %bb.cp
  %i.oi = load i32, ptr %1, align 8, !tbaa !24
  switch i32 %i.oi, label %.thread [
    i32 1035, label %.preheader
    i32 1036, label %bb.cr
    i32 1050, label %bb.cs
    i32 1049, label %.preheader1899
    i32 1001, label %.preheader1901
    i32 1042, label %.preheader1903
    i32 1043, label %bb.db
    i32 1002, label %bb.du
    i32 1038, label %bb.ei
    i32 1039, label %bb.ev
    i32 1037, label %bb.fw
    i32 1017, label %bb.gr
    i32 1040, label %bb.gu
    i32 1030, label %bb.hb
    i32 1031, label %bb.hc
    i32 1046, label %bb.ir
    i32 1004, label %.preheader1958
    i32 1005, label %.preheader1960
    i32 1006, label %.preheader1962
    i32 1007, label %.preheader1964
    i32 1008, label %.preheader1966
    i32 1009, label %.preheader1968
    i32 1010, label %.preheader1970
    i32 1011, label %.preheader1972
    i32 1012, label %.preheader1974
    i32 1013, label %.preheader1976
    i32 1014, label %.preheader1978
    i32 1015, label %.preheader1980
    i32 1016, label %.preheader1982
    i32 1019, label %.preheader1984
    i32 1020, label %.preheader1986
    i32 1021, label %.preheader1988
    i32 1018, label %.preheader1991
    i32 1041, label %.preheader1994
    i32 1022, label %bb.ml
    i32 1023, label %bb.mx
    i32 1024, label %bb.oc
    i32 1025, label %bb.oo
    i32 1026, label %.preheader2021
    i32 1027, label %.preheader2024
    i32 1028, label %.preheader2027
    i32 1029, label %.preheader2030
    i32 1034, label %bb.tp
    i32 1044, label %bb.vj
    i32 1045, label %bb.vv
  ]

.preheader2030:                                   ; preds = %bb.cq
  %.not16932086 = icmp eq i64 %i.oc, 0
  br i1 %.not16932086, label %.thread, label %.lr.ph2088

.lr.ph2088:                                       ; preds = %.preheader2030
  %i.oj = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.ol = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.om = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.on = getelementptr inbounds nuw i8, ptr %i.c, i64 5 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.oq = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ou = getelementptr inbounds nuw i8, ptr %2, i64 1344
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 1664
  %i.ow = getelementptr inbounds nuw i8, ptr %2, i64 1984
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.oy = icmp sgt i32 %.pre, 1
  %.not1697 = icmp eq i32 %.pre, 0
  %i.oz = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 1984
  %i.pb = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 1984
  %i.pd = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.pe = load i32, ptr %i.pd, align 4            ; 2 uses
  %i.pf = icmp sgt i32 %i.pe, 1
  %.not1697.1 = icmp eq i32 %i.pe, 0
  %i.pg = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 1664
end_hunk_0
begin_hunk_1_@Do_Func:bb.a

.sink.split3301:                                  ; preds = %bb.su, %bb.sv
  %.sink3307 = phi ptr [ %i.dif, %bb.sv ], [ %i.dia, %bb.su ]
  %.sink3305 = phi i64 [ %i.dgx, %bb.sv ], [ %i.dgv, %bb.su ]
  %i.dik = getelementptr inbounds nuw i8, ptr %.sink3307, i64 120
  %i.dil = load ptr, ptr %i.dik, align 8, !tbaa !37
  %i.dim = getelementptr inbounds i8, ptr %i.dil, i64 %.sink3305
  %i.din = load i8, ptr %i.dim, align 1, !tbaa !10
  store i8 %i.din, ptr %i.om, align 1, !tbaa !10
  br label %bb.sw

bb.sw:                                            ; preds = %.sink.split3301, %bb.st
  br i1 %i.pt, label %bb.sz, label %bb.sx

bb.sx:                                            ; preds = %bb.sw
  br i1 %.not1697.3, label %bb.ta, label %bb.sy

bb.sy:                                            ; preds = %bb.sx
  %i.dio = load ptr, ptr %i.pu, align 8, !tbaa !50 ; 2 uses
  %i.dip = getelementptr inbounds nuw i8, ptr %i.dio, i64 128
  %i.diq = load ptr, ptr %i.dip, align 8, !tbaa !10
  %i.dir = getelementptr inbounds [8 x i8], ptr %i.diq, i64 %i.dgv
  %i.dis = load double, ptr %i.dir, align 8, !tbaa !32
  store double %i.dis, ptr %i.pv, align 16, !tbaa !10
  br label %.sink.split3308

bb.sz:                                            ; preds = %bb.sw
  %i.dit = load ptr, ptr %i.pw, align 8, !tbaa !50 ; 2 uses
  %i.diu = getelementptr inbounds nuw i8, ptr %i.dit, i64 128
  %i.div = load ptr, ptr %i.diu, align 8, !tbaa !10
  %i.diw = getelementptr inbounds [8 x i8], ptr %i.div, i64 %i.dgx
  %i.dix = load double, ptr %i.diw, align 8, !tbaa !32
  store double %i.dix, ptr %i.px, align 16, !tbaa !10
  br label %.sink.split3308

.sink.split3308:                                  ; preds = %bb.sy, %bb.sz
  %.sink3314 = phi ptr [ %i.dit, %bb.sz ], [ %i.dio, %bb.sy ]
  %.sink3312 = phi i64 [ %i.dgx, %bb.sz ], [ %i.dgv, %bb.sy ]
  %i.diy = getelementptr inbounds nuw i8, ptr %.sink3314, i64 120
  %i.diz = load ptr, ptr %i.diy, align 8, !tbaa !37
  %i.dja = getelementptr inbounds i8, ptr %i.diz, i64 %.sink3312
  %i.djb = load i8, ptr %i.dja, align 1, !tbaa !10
  store i8 %i.djb, ptr %i.ol, align 1, !tbaa !10
  br label %bb.ta

bb.ta:                                            ; preds = %.sink.split3308, %bb.sx
  br i1 %i.qa, label %bb.td, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  br i1 %.not1697.4, label %bb.te, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.djc = load ptr, ptr %i.qb, align 16, !tbaa !50 ; 2 uses
  %i.djd = getelementptr inbounds nuw i8, ptr %i.djc, i64 128
  %i.dje = load ptr, ptr %i.djd, align 8, !tbaa !10
  %i.djf = getelementptr inbounds [8 x i8], ptr %i.dje, i64 %i.dgv
  %i.djg = load double, ptr %i.djf, align 8, !tbaa !32
  store double %i.djg, ptr %i.qc, align 16, !tbaa !10
  br label %.sink.split3315

bb.td:                                            ; preds = %bb.ta
  %i.djh = load ptr, ptr %i.qd, align 16, !tbaa !50 ; 2 uses
  %i.dji = getelementptr inbounds nuw i8, ptr %i.djh, i64 128
  %i.djj = load ptr, ptr %i.dji, align 8, !tbaa !10
  %i.djk = getelementptr inbounds [8 x i8], ptr %i.djj, i64 %i.dgx
  %i.djl = load double, ptr %i.djk, align 8, !tbaa !32
  store double %i.djl, ptr %i.qe, align 16, !tbaa !10
  br label %.sink.split3315

.sink.split3315:                                  ; preds = %bb.tc, %bb.td
  %.sink3321 = phi ptr [ %i.djh, %bb.td ], [ %i.djc, %bb.tc ]
  %.sink3319 = phi i64 [ %i.dgx, %bb.td ], [ %i.dgv, %bb.tc ]
  %i.djm = getelementptr inbounds nuw i8, ptr %.sink3321, i64 120
  %i.djn = load ptr, ptr %i.djm, align 8, !tbaa !37
  %i.djo = getelementptr inbounds i8, ptr %i.djn, i64 %.sink3319
  %i.djp = load i8, ptr %i.djo, align 1, !tbaa !10
  store i8 %i.djp, ptr %i.ok, align 1, !tbaa !10
  br label %bb.te

bb.te:                                            ; preds = %.sink.split3315, %bb.tb
  br i1 %i.qh, label %bb.th, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  br i1 %.not1697.5, label %bb.ti, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  %i.djq = load ptr, ptr %i.qi, align 8, !tbaa !50 ; 2 uses
  %i.djr = getelementptr inbounds nuw i8, ptr %i.djq, i64 128
  %i.djs = load ptr, ptr %i.djr, align 8, !tbaa !10
  %i.djt = getelementptr inbounds [8 x i8], ptr %i.djs, i64 %i.dgv
  %i.dju = load double, ptr %i.djt, align 8, !tbaa !32
  store double %i.dju, ptr %i.qj, align 16, !tbaa !10
  br label %.sink.split3322

bb.th:                                            ; preds = %bb.te
  %i.djv = load ptr, ptr %i.qk, align 8, !tbaa !50 ; 2 uses
  %i.djw = getelementptr inbounds nuw i8, ptr %i.djv, i64 128
  %i.djx = load ptr, ptr %i.djw, align 8, !tbaa !10
  %i.djy = getelementptr inbounds [8 x i8], ptr %i.djx, i64 %i.dgx
  %i.djz = load double, ptr %i.djy, align 8, !tbaa !32
  store double %i.djz, ptr %i.ql, align 16, !tbaa !10
  br label %.sink.split3322

.sink.split3322:                                  ; preds = %bb.tg, %bb.th
  %.sink3328 = phi ptr [ %i.djv, %bb.th ], [ %i.djq, %bb.tg ]
  %.sink3326 = phi i64 [ %i.dgx, %bb.th ], [ %i.dgv, %bb.tg ]
  %i.dka = getelementptr inbounds nuw i8, ptr %.sink3328, i64 120
  %i.dkb = load ptr, ptr %i.dka, align 8, !tbaa !37
  %i.dkc = getelementptr inbounds i8, ptr %i.dkb, i64 %.sink3326
  %i.dkd = load i8, ptr %i.dkc, align 1, !tbaa !10
  store i8 %i.dkd, ptr %i.oj, align 1, !tbaa !10
  br label %bb.ti

bb.ti:                                            ; preds = %.sink.split3322, %bb.tf
  br i1 %i.qn, label %bb.tl, label %bb.tj

bb.tj:                                            ; preds = %bb.ti
  br i1 %.not1697.6, label %._crit_edge2722, label %bb.tk

._crit_edge2722:                                  ; preds = %bb.tj
  %.pre2723 = load i8, ptr %i.c, align 1, !tbaa !10
  br label %bb.tm

bb.tk:                                            ; preds = %bb.tj
  %i.dke = load ptr, ptr %i.a, align 16, !tbaa !50 ; 2 uses
  %i.dkf = getelementptr inbounds nuw i8, ptr %i.dke, i64 128
  %i.dkg = load ptr, ptr %i.dkf, align 8, !tbaa !10
  %i.dkh = getelementptr inbounds [8 x i8], ptr %i.dkg, i64 %i.dgv
  %i.dki = load double, ptr %i.dkh, align 8, !tbaa !32
  store double %i.dki, ptr %i.oq, align 16, !tbaa !10
  %i.dkj = getelementptr inbounds nuw i8, ptr %i.dke, i64 120
  %i.dkk = load ptr, ptr %i.dkj, align 8, !tbaa !37
  %i.dkl = getelementptr inbounds i8, ptr %i.dkk, i64 %i.dgv
  %i.dkm = load i8, ptr %i.dkl, align 1, !tbaa !10 ; 2 uses
  store i8 %i.dkm, ptr %i.c, align 1, !tbaa !10
  br label %bb.tm

bb.tl:                                            ; preds = %bb.ti
  %i.dkn = load ptr, ptr %i.a, align 16, !tbaa !50 ; 2 uses
  %i.dko = getelementptr inbounds nuw i8, ptr %i.dkn, i64 128
  %i.dkp = load ptr, ptr %i.dko, align 8, !tbaa !10
  %i.dkq = getelementptr inbounds [8 x i8], ptr %i.dkp, i64 %i.dgx
  %i.dkr = load double, ptr %i.dkq, align 8, !tbaa !32
  store double %i.dkr, ptr %i.oq, align 16, !tbaa !10
  %i.dks = getelementptr inbounds nuw i8, ptr %i.dkn, i64 120
  %i.dkt = load ptr, ptr %i.dks, align 8, !tbaa !37
  %i.dku = getelementptr inbounds i8, ptr %i.dkt, i64 %i.dgx
  %i.dkv = load i8, ptr %i.dku, align 1, !tbaa !10 ; 2 uses
  store i8 %i.dkv, ptr %i.c, align 1, !tbaa !10
  br label %bb.tm

bb.tm:                                            ; preds = %._crit_edge2722, %bb.tl, %bb.tk
  %i.dkw = phi i8 [ %.pre2723, %._crit_edge2722 ], [ %i.dkv, %bb.tl ], [ %i.dkm, %bb.tk ]
  %i.dkx = add nsw i64 %.in2471, -1               ; 2 uses
  %i.dky = load <4 x i8>, ptr %i.oj, align 1
  %.fr = freeze <4 x i8> %i.dky
  %i.dkz = load i8, ptr %i.on, align 1
  %.fr3551 = freeze i8 %i.dkz
  %i.dla = load i8, ptr %i.oo, align 1
  %i.dlb = icmp ne i8 %i.dla, 0
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.dlc = icmp ne i32 %.fr.scalar, 0
  %i.dld = or i8 %.fr3551, %i.dkw
  %i.dle = icmp ne i8 %i.dld, 0
  %i.dlf = select i1 %i.dlc, i1 true, i1 %i.dle
  %op.rdx3546 = select i1 %i.dlf, i1 true, i1 %i.dlb ; 2 uses
  %i.dlg = zext i1 %op.rdx3546 to i8
  %i.dlh = load ptr, ptr %i.op, align 8, !tbaa !37
  %i.dli = getelementptr inbounds i8, ptr %i.dlh, i64 %i.dgx
  store i8 %i.dlg, ptr %i.dli, align 1, !tbaa !10
  br i1 %op.rdx3546, label %bb.to, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  %i.dlj = load double, ptr %i.oq, align 16, !tbaa !10
  %i.dlk = load double, ptr %i.or, align 16, !tbaa !10
  %i.dll = load <2 x double>, ptr %i.os, align 16
  %i.dlm = load double, ptr %i.ot, align 16, !tbaa !10
  %i.dln = load double, ptr %i.ou, align 16, !tbaa !10
  %i.dlo = load double, ptr %i.ov, align 16, !tbaa !10
  %i.dlp = load double, ptr %i.ow, align 16, !tbaa !10
  %i.dlq = fdiv double %i.dln, 1.800000e+02
  %i.dlr = fmul double %i.dlq, f0x400921FB54442D18 ; 3 uses
  %i.dls = fsub double %i.dlo, %i.dlj             ; 2 uses
  %i.dlt = fsub double %i.dlp, %i.dlk
  %i.dlu = call double @cos(double noundef %i.dlr) #24
  %i.dlv = call double @sin(double noundef %i.dlr) #24 ; 2 uses
  %i.dlw = fneg double %i.dls
  %i.dlx = call double @cos(double noundef %i.dlr) #24
  %i.dly = insertelement <2 x double> poison, double %i.dlt, i64 0
  %i.dlz = shufflevector <2 x double> %i.dly, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dma = insertelement <2 x double> poison, double %i.dlv, i64 0
  %i.dmb = insertelement <2 x double> %i.dma, double %i.dlx, i64 1
  %i.dmc = fmul <2 x double> %i.dlz, %i.dmb
  %i.dmd = insertelement <2 x double> poison, double %i.dls, i64 0
  %i.dme = insertelement <2 x double> %i.dmd, double %i.dlw, i64 1
  %i.dmf = insertelement <2 x double> poison, double %i.dlu, i64 0
  %i.dmg = insertelement <2 x double> %i.dmf, double %i.dlv, i64 1
  %i.dmh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dme, <2 x double> %i.dmg, <2 x double> %i.dmc)
  %i.dmi = insertelement <2 x double> %i.dll, double %i.dlm, i64 1
  %i.dmj = fdiv <2 x double> %i.dmh, %i.dmi       ; 2 uses
  %i.dmk = fmul <2 x double> %i.dmj, %i.dmj       ; 2 uses
  %shift3548 = shufflevector <2 x double> %i.dmk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3549 = fadd <2 x double> %i.dmk, %shift3548
  %4 = extractelement <2 x double> %foldExtExtBinop3549, i64 0
  %i.dml = fcmp ole double %4, 1.000000e+00
  %..i1881 = zext i1 %i.dml to i8
  %i.dmm = load ptr, ptr %i.ox, align 8, !tbaa !10
  %i.dmn = getelementptr inbounds i8, ptr %i.dmm, i64 %i.dgx
  store i8 %..i1881, ptr %i.dmn, align 1, !tbaa !10
  br label %bb.to

bb.to:                                            ; preds = %bb.tn, %bb.tm
  %.not1694 = icmp eq i64 %i.dkx, 0
  br i1 %.not1694, label %.loopexit2029, label %.lr.ph2084, !llvm.loop !362

bb.tp:                                            ; preds = %bb.cq
  %i.dmo = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.dmp = load i32, ptr %i.dmo, align 4, !tbaa !22
  switch i32 %i.dmp, label %.thread [
    i32 258, label %.preheader2033
    i32 259, label %.preheader2036
    i32 260, label %.preheader2039
    i32 261, label %.preheader2041
  ]

.preheader2041:                                   ; preds = %bb.tp
  %.not16662055 = icmp eq i64 %i.oc, 0
  br i1 %.not16662055, label %.thread, label %.lr.ph2056

.lr.ph2056:                                       ; preds = %.preheader2041
  %i.dmq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dmr = load i32, ptr %i.dmq, align 8, !tbaa !21
  %.not1667 = icmp eq i32 %i.dmr, 0
  %i.dms = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dmt = getelementptr inbounds nuw i8, ptr %2, i64 704 ; 2 uses
  %i.dmu = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.dmv = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.dmw = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.dmx = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dmy = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dmz = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.dna = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dnb = load i32, ptr %i.dna, align 4, !tbaa !21
  %.not1671 = icmp eq i32 %i.dnb, 0
  %i.dnc = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dnd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dne = load i32, ptr %i.b, align 16, !tbaa !21
  %.not1671.1 = icmp eq i32 %i.dne, 0
  br label %bb.ux

.preheader2039:                                   ; preds = %bb.tp
  %.not16722062 = icmp eq i64 %i.oc, 0
  br i1 %.not16722062, label %.thread, label %.lr.ph2064

.lr.ph2064:                                       ; preds = %.preheader2039
  %i.dnf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dng = load i32, ptr %i.dnf, align 8          ; 2 uses
  %i.dnh = icmp sgt i32 %i.dng, 1
  %.not1674.not = icmp eq i32 %i.dng, 0
  %i.dni = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dnj = getelementptr inbounds nuw i8, ptr %2, i64 704 ; 2 uses
  %i.dnk = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.dnl = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.dnm = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dnn = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dno = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dnp = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.dnq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dnr = load i32, ptr %i.dnq, align 4          ; 2 uses
  %i.dns = icmp sgt i32 %i.dnr, 1
  %.not1678 = icmp eq i32 %i.dnr, 0
  %i.dnt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dnu = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dnv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dnw = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dnx = load i32, ptr %i.b, align 16           ; 2 uses
  %i.dny = icmp sgt i32 %i.dnx, 1
  %.not1678.1.not = icmp eq i32 %i.dnx, 0
  br label %bb.um

.preheader2036:                                   ; preds = %bb.tp
  %.not16792070 = icmp eq i64 %i.oc, 0
  br i1 %.not16792070, label %.thread, label %.lr.ph2072

.lr.ph2072:                                       ; preds = %.preheader2036
  %i.dnz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.doa = load i32, ptr %i.dnz, align 8          ; 2 uses
  %i.dob = icmp sgt i32 %i.doa, 1
  %.not1681.not = icmp eq i32 %i.doa, 0
  %i.doc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dod = getelementptr inbounds nuw i8, ptr %2, i64 704 ; 2 uses
  %i.doe = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.dof = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.dog = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.doh = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.doi = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.doj = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.dok = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dol = load i32, ptr %i.dok, align 4          ; 2 uses
  %i.dom = icmp sgt i32 %i.dol, 1
  %.not1685 = icmp eq i32 %i.dol, 0
  %i.don = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.doo = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dop = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.doq = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dor = load i32, ptr %i.b, align 16           ; 2 uses
  %i.dos = icmp sgt i32 %i.dor, 1
  %.not1685.1.not = icmp eq i32 %i.dor, 0
  br label %bb.ub

.preheader2033:                                   ; preds = %bb.tp
  %.not16862078 = icmp eq i64 %i.oc, 0
  br i1 %.not16862078, label %.thread, label %.lr.ph2080

.lr.ph2080:                                       ; preds = %.preheader2033
  %i.dot = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dou = load i32, ptr %i.dot, align 8          ; 2 uses
  %i.dov = icmp sgt i32 %i.dou, 1
  %.not1688.not = icmp eq i32 %i.dou, 0
  %i.dow = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dox = getelementptr inbounds nuw i8, ptr %2, i64 704 ; 2 uses
  %i.doy = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.doz = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.dpa = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dpb = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dpc = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dpd = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.dpe = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dpf = load i32, ptr %i.dpe, align 4          ; 2 uses
  %i.dpg = icmp sgt i32 %i.dpf, 1
  %.not1692 = icmp eq i32 %i.dpf, 0
  %i.dph = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dpi = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dpj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dpk = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dpl = load i32, ptr %i.b, align 16           ; 2 uses
  %i.dpm = icmp sgt i32 %i.dpl, 1
  %.not1692.1.not = icmp eq i32 %i.dpl, 0
  br label %bb.tq

.loopexit2032:                                    ; preds = %bb.ua, %bb.tq
  %.83.lcssa = phi i64 [ %.822079, %bb.tq ], [ %i.dpq, %bb.ua ]
  %.not1686 = icmp eq i64 %i.dpn, 0
  br i1 %.not1686, label %.thread, label %bb.tq, !llvm.loop !363

bb.tq:                                            ; preds = %.lr.ph2080, %.loopexit2032
  %.in2468 = phi i64 [ %i.oc, %.lr.ph2080 ], [ %i.dpn, %.loopexit2032 ]
  %.822079 = phi i64 [ %i.of, %.lr.ph2080 ], [ %.83.lcssa, %.loopexit2032 ] ; 2 uses
  %i.dpn = add nsw i64 %.in2468, -1               ; 6 uses
  %i.dpo = load i64, ptr %i.od, align 8, !tbaa !23 ; 2 uses
  %.not16872073 = icmp eq i64 %i.dpo, 0
  br i1 %.not16872073, label %.loopexit2032, label %.lr.ph2076

.lr.ph2076:                                       ; preds = %bb.tq, %bb.ua
  %.in2469 = phi i64 [ %i.dpp, %bb.ua ], [ %i.dpo, %bb.tq ]
  %.832074 = phi i64 [ %i.dpq, %bb.ua ], [ %.822079, %bb.tq ]
  %i.dpp = add nsw i64 %.in2469, -1               ; 2 uses
  %i.dpq = add nsw i64 %.832074, -1               ; 9 uses
  br i1 %.not1688.not, label %bb.tr, label %.sink.split3329

.sink.split3329:                                  ; preds = %.lr.ph2076
  %.mux = select i1 %i.dov, i64 %i.dpq, i64 %i.dpn ; 2 uses
  %i.dpr = load ptr, ptr %i.dow, align 16, !tbaa !50 ; 2 uses
  %i.dps = getelementptr inbounds nuw i8, ptr %i.dpr, i64 128
  %i.dpt = load ptr, ptr %i.dps, align 8, !tbaa !10
  %i.dpu = getelementptr inbounds i8, ptr %i.dpt, i64 %.mux
  %i.dpv = load i8, ptr %i.dpu, align 1, !tbaa !10
  store i8 %i.dpv, ptr %i.dox, align 16, !tbaa !10
  %i.dpw = getelementptr inbounds nuw i8, ptr %i.dpr, i64 120
  %i.dpx = load ptr, ptr %i.dpw, align 8, !tbaa !37
  %i.dpy = getelementptr inbounds i8, ptr %i.dpx, i64 %.mux
  %i.dpz = load i8, ptr %i.dpy, align 1, !tbaa !10
  store i8 %i.dpz, ptr %i.doy, align 1, !tbaa !10
  br label %bb.tr

bb.tr:                                            ; preds = %.lr.ph2076, %.sink.split3329
  br i1 %i.dpg, label %bb.ts, label %bb.tt

bb.ts:                                            ; preds = %bb.tr
  %i.dqa = load ptr, ptr %i.dpj, align 8, !tbaa !50 ; 2 uses
  %i.dqb = getelementptr inbounds nuw i8, ptr %i.dqa, i64 128
  %i.dqc = load ptr, ptr %i.dqb, align 8, !tbaa !10
  %i.dqd = getelementptr inbounds i8, ptr %i.dqc, i64 %i.dpq
  %i.dqe = load i8, ptr %i.dqd, align 1, !tbaa !10
  store i8 %i.dqe, ptr %i.dpk, align 16, !tbaa !10
  br label %.sink.split3342

bb.tt:                                            ; preds = %bb.tr
  br i1 %.not1692, label %bb.tv, label %bb.tu

bb.tu:                                            ; preds = %bb.tt
  %i.dqf = load ptr, ptr %i.dph, align 8, !tbaa !50 ; 2 uses
  %i.dqg = getelementptr inbounds nuw i8, ptr %i.dqf, i64 128
  %i.dqh = load ptr, ptr %i.dqg, align 8, !tbaa !10
  %i.dqi = getelementptr inbounds i8, ptr %i.dqh, i64 %i.dpn
  %i.dqj = load i8, ptr %i.dqi, align 1, !tbaa !10
  store i8 %i.dqj, ptr %i.dpi, align 16, !tbaa !10
  br label %.sink.split3342

.sink.split3342:                                  ; preds = %bb.ts, %bb.tu
  %.sink3348 = phi ptr [ %i.dqf, %bb.tu ], [ %i.dqa, %bb.ts ]
  %.sink3346 = phi i64 [ %i.dpn, %bb.tu ], [ %i.dpq, %bb.ts ]
  %i.dqk = getelementptr inbounds nuw i8, ptr %.sink3348, i64 120
  %i.dql = load ptr, ptr %i.dqk, align 8, !tbaa !37
end_hunk_1
begin_hunk_2_@Do_Array:bb.a
bb.j:                                             ; preds = %bb.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !23
  %i.an = mul nsw i64 %i.am, %i.ak                ; 2 uses
  %.not7484 = icmp eq i64 %i.an, 0
  br i1 %.not7484, label %.loopexit, label %.lr.ph85

.lr.ph85:                                         ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 128 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph85, %bb.o
  %.in88 = phi i64 [ %i.an, %.lr.ph85 ], [ %i.at, %bb.o ]
  %i.at = add nsw i64 %.in88, -1                  ; 10 uses
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !37
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.at
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !10
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !37
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.at
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !10
  %i.az = load i32, ptr %i.aq, align 4, !tbaa !22
  switch i32 %i.az, label %bb.o [
    i32 258, label %bb.l
    i32 259, label %bb.m
    i32 260, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !10
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.at
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !10
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !10
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.at
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !10
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.ar, align 8, !tbaa !10
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.at
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !26
  %i.bi = load ptr, ptr %i.as, align 8, !tbaa !10
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.at
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !26
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.ar, align 8, !tbaa !10
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.at
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !32
  %i.bn = load ptr, ptr %i.as, align 8, !tbaa !10
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.at
  store double %i.bm, ptr %i.bo, align 8, !tbaa !32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.not74 = icmp eq i64 %i.at, 0
  br i1 %.not74, label %.loopexit, label %bb.k, !llvm.loop !402

bb.p:                                             ; preds = %bb.i
  %.not7281 = icmp eq i64 %i.ak, 0
  br i1 %.not7281, label %.loopexit, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.p
  %i.bp = load i64, ptr %i.al, align 8, !tbaa !23 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 128 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.bv = icmp eq i64 %i.bp, 0
  br i1 %i.bv, label %.loopexit, label %.lr.ph83.split.preheader

.lr.ph83.split.preheader:                         ; preds = %.lr.ph83
  %i.bw = mul nsw i64 %i.bp, %i.ak
  %i.bx = add nsw i64 %i.bw, -1
  br label %.lr.ph83.split

.loopexit77:                                      ; preds = %bb.t, %.lr.ph83.split
  %.3.lcssa = phi i64 [ %.282, %.lr.ph83.split ], [ %i.cw, %bb.t ]
  %.not72 = icmp eq i64 %i.by, 0
  br i1 %.not72, label %.loopexit, label %.lr.ph83.split, !llvm.loop !403

.lr.ph83.split:                                   ; preds = %.lr.ph83.split.preheader, %.loopexit77
  %.in99 = phi i64 [ %i.by, %.loopexit77 ], [ %i.ak, %.lr.ph83.split.preheader ]
  %.282 = phi i64 [ %.3.lcssa, %.loopexit77 ], [ %i.bx, %.lr.ph83.split.preheader ] ; 2 uses
  %i.by = add nsw i64 %.in99, -1                  ; 6 uses
  %i.bz = load i64, ptr %i.al, align 8, !tbaa !23 ; 2 uses
  %.not7379 = icmp eq i64 %i.bz, 0
  br i1 %.not7379, label %.loopexit77, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph83.split, %bb.t
  %.in = phi i64 [ %i.ca, %bb.t ], [ %i.bz, %.lr.ph83.split ]
  %.380 = phi i64 [ %i.cw, %bb.t ], [ %.282, %.lr.ph83.split ] ; 5 uses
  %i.ca = add nsw i64 %.in, -1                    ; 2 uses
  %i.cb = load ptr, ptr %i.bq, align 8, !tbaa !37
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.by
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !10
  %i.ce = load ptr, ptr %i.br, align 8, !tbaa !37
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %.380
  store i8 %i.cd, ptr %i.cf, align 1, !tbaa !10
  %i.cg = load i32, ptr %i.bs, align 4, !tbaa !22
  switch i32 %i.cg, label %bb.t [
    i32 258, label %bb.q
    i32 259, label %bb.r
    i32 260, label %bb.s
  ]

bb.q:                                             ; preds = %.lr.ph
  %i.ch = load ptr, ptr %i.bt, align 8, !tbaa !10
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.by
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !10
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !10
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %.380
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !10
  br label %bb.t

bb.r:                                             ; preds = %.lr.ph
  %i.cm = load ptr, ptr %i.bt, align 8, !tbaa !10
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.by
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !26
  %i.cp = load ptr, ptr %i.bu, align 8, !tbaa !10
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.380
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !26
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph
  %i.cr = load ptr, ptr %i.bt, align 8, !tbaa !10
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.by
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !32
  %i.cu = load ptr, ptr %i.bu, align 8, !tbaa !10
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %.380
  store double %i.ct, ptr %i.cv, align 8, !tbaa !32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %.lr.ph
  %i.cw = add nsw i64 %.380, -1                   ; 2 uses
  %.not73 = icmp eq i64 %i.ca, 0
  br i1 %.not73, label %.loopexit77, label %.lr.ph, !llvm.loop !404

.loopexit:                                        ; preds = %.loopexit77, %bb.o, %bb.h, %.lr.ph83, %bb.p, %bb.j, %bb.c
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.cy = load i32, ptr %i.e, align 4, !tbaa !21
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [384 x i8], ptr %i.cx, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !24
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.de) #24
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %bb.u, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #15

declare void @ffpmsg(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.mul.v2i64(<2 x i64>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { nounwind allocsize(1) }
attributes #28 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !27}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS4Node", !11, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"ParseData_struct", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !12, i64 40, !7, i64 48, !7, i64 52, !13, i64 56, !7, i64 64, !7, i64 68, !7, i64 72, !14, i64 80, !14, i64 88, !7, i64 96, !14, i64 104, !7, i64 112, !6, i64 120, !11, i64 160, !11, i64 168, !11, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !7, i64 216, !7, i64 220, !7, i64 224}
!16 = !{!15, !7, i64 72}
!17 = !{!15, !13, i64 56}
!18 = !{!"", !14, i64 0, !7, i64 8, !6, i64 16, !12, i64 56, !6, i64 64}
!19 = !{!"Node", !7, i64 0, !11, i64 8, !7, i64 16, !6, i64 20, !7, i64 60, !18, i64 64}
!20 = !{!19, !7, i64 16}
!21 = !{!7, !7, i64 0}
!22 = !{!19, !7, i64 60}
!23 = !{!19, !14, i64 64}
!24 = !{!19, !7, i64 0}
!25 = !{!19, !7, i64 72}
!26 = !{!14, !14, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!"double", !6, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!15, !7, i64 224}
!34 = !{!15, !7, i64 64}
!35 = !{!15, !7, i64 68}
!36 = !{!19, !11, i64 8}
!37 = !{!19, !12, i64 120}
!38 = !{!15, !11, i64 168}
!39 = !{!"", !6, i64 0, !7, i64 84, !14, i64 88, !7, i64 96, !6, i64 104, !12, i64 144, !11, i64 152}
!40 = !{!39, !7, i64 84}
!41 = !{!39, !14, i64 88}
!42 = !{!39, !7, i64 96}
!43 = !{!15, !11, i64 0}
!44 = !{!11, !11, i64 0}
!45 = !{!15, !14, i64 80}
!46 = !{!15, !14, i64 88}
!47 = !{!15, !14, i64 184}
!48 = !{!12, !12, i64 0}
!49 = !{!"llvm.loop.unswitch.partial.disable"}
!50 = !{!13, !13, i64 0}
!51 = distinct !{!51, !27, !28, !29}
!52 = distinct !{!52, !30}
!53 = distinct !{!53, !27, !28}
!54 = distinct !{!54, !27, !28, !29}
!55 = distinct !{!55, !30}
!56 = distinct !{!56, !27, !28}
!57 = distinct !{!57, !27, !28, !29}
!58 = distinct !{!58, !30}
!59 = distinct !{!59, !27, !28}
!60 = distinct !{!60, !27, !28, !29}
!61 = distinct !{!61, !30}
!62 = distinct !{!62, !27, !28}
!63 = distinct !{!63, !27, !28, !29}
!64 = distinct !{!64, !30}
!65 = distinct !{!65, !27, !28}
!66 = distinct !{!66, !27, !28, !29}
!67 = distinct !{!67, !30}
!68 = distinct !{!68, !27, !28}
!69 = distinct !{!69, !27, !28, !29}
!70 = distinct !{!70, !30}
!71 = distinct !{!71, !27, !28}
!72 = distinct !{!72, !27, !28, !29}
!73 = distinct !{!73, !30}
!74 = distinct !{!74, !27, !28}
!75 = distinct !{!75, !27, !28, !29}
!76 = distinct !{!76, !30}
!77 = distinct !{!77, !27, !28}
!78 = distinct !{!78, !27, !28, !29}
!79 = distinct !{!79, !30}
!80 = distinct !{!80, !27, !28}
!81 = distinct !{!81, !27, !28, !29}
!82 = distinct !{!82, !30}
!83 = distinct !{!83, !27, !28}
!84 = distinct !{!84, !27, !28, !29}
!85 = distinct !{!85, !30}
!86 = distinct !{!86, !27, !28}
!87 = distinct !{!87, !27, !28, !29}
!88 = distinct !{!88, !30}
!89 = distinct !{!89, !27, !28}
!90 = distinct !{!90, !27, !28, !29}
!91 = distinct !{!91, !30}
!92 = distinct !{!92, !27, !28}
!93 = distinct !{!93, !27, !28, !29}
!94 = distinct !{!94, !30}
!95 = distinct !{!95, !27, !28}
!96 = distinct !{!96, !27, !28, !29}
!97 = distinct !{!97, !30}
!98 = distinct !{!98, !27, !28}
!99 = distinct !{!99, !27, !28, !29}
!100 = distinct !{!100, !30}
!101 = distinct !{!101, !27, !28}
!102 = distinct !{!102, !27, !28, !29}
!103 = distinct !{!103, !30}
!104 = distinct !{!104, !27, !28}
!105 = distinct !{!105, !27, !28, !29}
!106 = distinct !{!106, !30}
!107 = distinct !{!107, !27, !28}
!108 = distinct !{!108, !27, !28, !29}
!109 = distinct !{!109, !30}
!110 = distinct !{!110, !27, !28}
!111 = distinct !{!111, !27, !28, !29}
!112 = distinct !{!112, !30}
!113 = distinct !{!113, !27, !28}
!114 = distinct !{!114, !27, !28, !29}
!115 = distinct !{!115, !30}
!116 = distinct !{!116, !27, !28}
!117 = distinct !{!117, !27, !28, !29}
!118 = distinct !{!118, !30}
!119 = distinct !{!119, !27, !28}
!120 = distinct !{!120, !27, !28, !29}
!121 = distinct !{!121, !30}
!122 = distinct !{!122, !27, !28}
!123 = distinct !{!123, !27, !28, !29}
!124 = distinct !{!124, !30}
!125 = distinct !{!125, !27, !28}
!126 = distinct !{!126, !27, !28, !29}
!127 = distinct !{!127, !30}
!128 = distinct !{!128, !27, !28}
!129 = distinct !{!129, !27, !28, !29}
!130 = distinct !{!130, !30}
!131 = distinct !{!131, !27, !28}
!132 = distinct !{!132, !27, !28, !29}
!133 = distinct !{!133, !30}
!134 = distinct !{!134, !27, !28}
!135 = distinct !{!135, !27, !28, !29}
!136 = distinct !{!136, !30}
!137 = distinct !{!137, !27, !28}
!138 = distinct !{!138, !27, !28, !29}
!139 = distinct !{!139, !30}
!140 = distinct !{!140, !27, !28}
!141 = !{!"short", !6, i64 0}
!142 = !{!141, !141, i64 0}
!143 = !{i64 0, i64 256, !10}
!144 = !{i64 0, i64 252, !10}
!145 = distinct !{!145, !27}
!146 = distinct !{!146, !27, !28, !29}
!147 = distinct !{!147, !30}
!148 = distinct !{!148, !27, !28}
!149 = distinct !{!149, !27, !28, !29}
!150 = distinct !{!150, !30}
!151 = distinct !{!151, !27, !28}
!152 = distinct !{!152, !27, !28, !29}
!153 = distinct !{!153, !27, !29, !28}
!154 = distinct !{!154, !27, !28, !29}
!155 = distinct !{!155, !30}
!156 = distinct !{!156, !27, !28}
!157 = distinct !{!157, !27, !28, !29}
!158 = distinct !{!158, !30}
!159 = distinct !{!159, !27, !28}
!160 = distinct !{!160, !27, !28, !29}
!161 = distinct !{!161, !30}
!162 = distinct !{!162, !27, !28}
!163 = distinct !{!163, !27, !28, !29}
end_hunk_2
