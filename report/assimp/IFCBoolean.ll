Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCBoolean?download=true
inline.NumInlined: 1663
inline.NumDeleted: 638
begin_hunk_0_@_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cp = load double, ptr %i.co, align 8, !noalias !102 ; 3 uses
  %i.cq = fsub double %i.cn, %i.cp                ; 4 uses
  %i.cr = load <2 x double>, ptr %0, align 8      ; 6 uses
  %i.cs = extractelement <2 x double> %i.cr, i64 0 ; 2 uses
  %i.ct = extractelement <2 x double> %i.cr, i64 1 ; 2 uses
  %i.cu = fsub <2 x double> %i.cd, %i.cr          ; 2 uses
  %i.cv = shufflevector <2 x double> %i.ax, <2 x double> %i.ce, <2 x i32> <i32 0, i32 2>
  %i.cw = fneg <2 x double> %i.cu
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cy = fmul <2 x double> %i.cv, %i.cx
  %i.cz = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = insertelement <2 x double> %i.ce, double %i.ao, i64 0
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.da, <2 x double> %i.cy)
  %i.dc = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fdiv <2 x double> %i.db, %i.dd          ; 3 uses
  %i.df = extractelement <2 x double> %i.de, i64 1 ; 4 uses
  %i.dg = fmul double %i.aj, %i.df
  %i.dh = fmul double %i.ao, %i.df
  %i.di = fmul double %i.at, %i.df
  %i.dj = fadd double %i.cs, %i.dg                ; 3 uses
  %i.dk = fadd double %i.ct, %i.dh                ; 3 uses
  %i.dl = load double, ptr %i.ar, align 8, !noalias !103
  %i.dm = fadd double %i.dl, %i.di                ; 2 uses
  %i.dn = load <2 x double>, ptr %1, align 8      ; 3 uses
  %i.do = fsub <2 x double> %i.dn, %i.cd          ; 2 uses
  %i.dp = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dq = shufflevector <2 x double> %i.ce, <2 x double> %i.do, <2 x i32> <i32 1, i32 3>
  %i.dr = fmul <2 x double> %i.dp, %i.dq
  %i.ds = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = shufflevector <2 x double> %i.ce, <2 x double> %i.do, <2 x i32> <i32 0, i32 2>
  %i.du = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.dt, <2 x double> %i.dr) ; 2 uses
  %i.dv = extractelement <2 x double> %i.du, i64 0
  %i.dw = tail call noundef double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double %i.dv)
  %i.dx = fdiv double 1.000000e+00, %i.dw         ; 4 uses
  %i.dy = extractelement <2 x double> %i.du, i64 1
  %i.dz = fmul double %i.dx, %i.dy                ; 2 uses
  %i.ea = fcmp olt double %i.dz, 1.000000e+00
  %.sroa.speculated138 = select i1 %i.ea, double %i.dz, double 1.000000e+00 ; 2 uses
  %i.eb = fcmp ogt double %.sroa.speculated138, 0.000000e+00
  %.sroa.speculated = select i1 %i.eb, double %.sroa.speculated138, double 0.000000e+00 ; 2 uses
  %i.ec = insertelement <2 x double> poison, double %.sroa.speculated, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.ce, %i.ed
  %i.ef = fmul double %i.cq, %.sroa.speculated
  %i.eg = fadd <2 x double> %i.cd, %i.ee          ; 2 uses
  %i.eh = fadd double %i.cp, %i.ef                ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.eg, %i.dn
  %i.ei = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop242 = fsub <2 x double> %i.eg, %i.dn ; 2 uses
  %foldExtExtBinop244 = fmul <2 x double> %foldExtExtBinop242, %foldExtExtBinop242
  %i.ej = extractelement <2 x double> %foldExtExtBinop244, i64 1
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ei, double %i.ej)
  %i.el = tail call noundef double @llvm.fmuladd.f64(double %i.eh, double %i.eh, double %i.ek)
  %i.em = fcmp uge double %i.el, f0x3D719799812DEA11
  %or.cond = or i1 %5, %i.em
  br i1 %or.cond, label %bb.d, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.d:                                             ; preds = %bb.c
  %i.en = fsub <2 x double> %i.cr, %i.cd          ; 2 uses
  %foldExtExtBinop246 = fmul <2 x double> %i.ce, %i.en
  %i.eo = extractelement <2 x double> %foldExtExtBinop246, i64 1
  %i.ep = extractelement <2 x double> %i.en, i64 0
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.ep, double %i.eo)
  %i.er = fmul double %i.dx, %i.eq                ; 2 uses
  %i.es = fcmp olt double %i.er, 1.000000e+00
  %.sroa.speculated159 = select i1 %i.es, double %i.er, double 1.000000e+00 ; 2 uses
  %i.et = fcmp ogt double %.sroa.speculated159, 0.000000e+00
  %.sroa.speculated148 = select i1 %i.et, double %.sroa.speculated159, double 0.000000e+00 ; 2 uses
  %i.eu = fmul double %i.cq, %.sroa.speculated148
  %i.ev = fadd double %i.cp, %i.eu                ; 2 uses
  %i.ew = insertelement <2 x double> poison, double %.sroa.speculated148, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x double> %i.ce, %i.ex
  %i.ez = fadd <2 x double> %i.cd, %i.ey          ; 2 uses
  %foldExtExtBinop248 = fsub <2 x double> %i.ez, %i.cr
  %i.fa = extractelement <2 x double> %foldExtExtBinop248, i64 0 ; 2 uses
  %foldExtExtBinop250 = fsub <2 x double> %i.ez, %i.cr ; 2 uses
  %foldExtExtBinop252 = fmul <2 x double> %foldExtExtBinop250, %foldExtExtBinop250
  %i.fb = extractelement <2 x double> %foldExtExtBinop252, i64 1
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.fa, double %i.fb)
  %i.fd = tail call noundef double @llvm.fmuladd.f64(double %i.ev, double %i.ev, double %i.fc)
  %i.fe = fcmp olt double %i.fd, f0x3D719799812DEA11
  br i1 %i.fe, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.ff = fmul double %.087.lcssa, %i.ch
  %i.fg = fmul double %.087.lcssa, %i.cg
  %i.fh = fmul double %i.ao, %i.fg
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.aj, double %i.fh)
  %i.fj = tail call noundef double @llvm.fmuladd.f64(double %i.aw, double %i.at, double %i.fi)
  %i.fk = fcmp ule double %i.fj, 0.000000e+00
  %i.fl = xor i1 %3, %i.fk
  br i1 %i.fl, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fm = load ptr, ptr %4, align 8               ; 5 uses
  %i.fn = load ptr, ptr %i.au, align 8            ; 9 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn                ; 2 uses
  br i1 %i.fo, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fp = getelementptr inbounds i8, ptr %i.fn, i64 -32
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = add i64 %.0217, -1
  %i.fs = icmp eq i64 %i.fq, %i.fr
  br i1 %i.fs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ft = getelementptr inbounds i8, ptr %i.fn, i64 -24
  %i.fu = load double, ptr %i.ft, align 8, !noalias !104
  %i.fv = fsub double %i.fu, %i.cs                ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %i.fn, i64 -16
  %i.fx = load double, ptr %i.fw, align 8, !noalias !104
  %i.fy = fsub double %i.fx, %i.ct                ; 2 uses
  %i.fz = fmul double %i.fy, %i.fy
  %i.ga = tail call noundef double @llvm.fmuladd.f64(double %i.fv, double %i.fv, double %i.fz)
  %i.gb = fcmp uge double %i.ga, 1.000000e-10
  br i1 %i.gb, label %bb.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.gc = load ptr, ptr %i.av, align 8
  %.not.i = icmp eq ptr %i.fn, %i.gc
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %.0217, ptr %i.fn, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.ge = load ptr, ptr %i.au, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  store ptr %i.gf, ptr %i.au, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.gg = ptrtoint ptr %i.fn to i64
  %i.gh = ptrtoint ptr %i.fm to i64               ; 2 uses
  %i.gi = sub i64 %i.gg, %i.gh                    ; 3 uses
  %i.gj = icmp eq i64 %i.gi, 9223372036854775776
  br i1 %i.gj, label %bb.l, label %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.gk = ashr exact i64 %i.gi, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gk, i64 1)
  %i.gl = add nsw i64 %.sroa.speculated.i.i.i, %i.gk ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.gk
  %i.gn = tail call i64 @llvm.umin.i64(i64 %i.gl, i64 288230376151711743)
  %i.go = select i1 %i.gm, i64 288230376151711743, i64 %i.gn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.go, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.gp = shl nuw nsw i64 %i.go, 5
  %i.gq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #23 ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gi ; 2 uses
  store i64 %.0217, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br i1 %i.fo, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i ], [ %i.gq, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i ], [ %i.fm, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !105
  %i.gt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gt, %i.fn
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !91

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gq, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.gu, %.lr.ph.i.i.i.i.i ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i34.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  %i.gw = load ptr, ptr %i.av, align 8
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = sub i64 %i.gx, %i.gh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.gy) #24
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  store ptr %i.gq, ptr %4, align 8
  store ptr %i.gv, ptr %i.au, align 8
  %i.gz = getelementptr inbounds nuw [32 x i8], ptr %i.gq, i64 %i.go
  store ptr %i.gz, ptr %i.av, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.n:                                             ; preds = %bb.d
  %i.ha = fmul double %i.dx, f0xBEB0C6F7A0000000
  %i.hb = extractelement <2 x double> %i.de, i64 0
  %i.hc = fcmp ult double %i.hb, %i.ha
  br i1 %i.hc, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hd = fcmp oge double %i.df, 0.000000e+00
  %6 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.dx, i64 0
  %7 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> <double f0x3EB0C6F7A0000000, double 0.000000e+00>, <2 x double> splat (double 1.000000e+00))
  %i.he = fcmp ole <2 x double> %i.de, %7         ; 2 uses
  %i.hf = insertelement <2 x i1> %i.ay, i1 %i.hd, i64 0 ; 2 uses
  %i.hg = and <2 x i1> %i.hf, %i.he
  %i.hh = or <2 x i1> %i.hf, %i.he
  %i.hi = shufflevector <2 x i1> %i.hg, <2 x i1> %i.hh, <2 x i32> <i32 0, i32 3>
  %i.hj = bitcast <2 x i1> %i.hi to i2
  %i.hk = icmp eq i2 %i.hj, -1
  br i1 %i.hk, label %bb.p, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.p:                                             ; preds = %bb.o
  %i.hl = load ptr, ptr %4, align 8               ; 5 uses
  %i.hm = load ptr, ptr %i.au, align 8            ; 11 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm                ; 2 uses
  br i1 %i.hn, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ho = getelementptr inbounds i8, ptr %i.hm, i64 -32
  %i.hp = load i64, ptr %i.ho, align 8
  %i.hq = add i64 %.0217, -1
  %i.hr = icmp eq i64 %i.hp, %i.hq
  br i1 %i.hr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hs = getelementptr inbounds i8, ptr %i.hm, i64 -24
  %i.ht = load double, ptr %i.hs, align 8, !noalias !106
  %i.hu = fsub double %i.ht, %i.dj                ; 2 uses
  %i.hv = getelementptr inbounds i8, ptr %i.hm, i64 -16
  %i.hw = load double, ptr %i.hv, align 8, !noalias !106
  %i.hx = fsub double %i.hw, %i.dk                ; 2 uses
  %i.hy = fmul double %i.hx, %i.hx
  %i.hz = tail call noundef double @llvm.fmuladd.f64(double %i.hu, double %i.hu, double %i.hy)
  %i.ia = fcmp uge double %i.hz, 1.000000e-10
  br i1 %i.ia, label %bb.s, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.ib = load ptr, ptr %i.av, align 8
  %.not.i97 = icmp eq ptr %i.hm, %i.ib
  br i1 %.not.i97, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %.0217, ptr %i.hm, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store double %i.dj, ptr %i.ic, align 8
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store double %i.dk, ptr %.sroa.6167.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  store double %i.dm, ptr %.sroa.8.0..sroa_idx, align 8
  %i.id = load ptr, ptr %i.au, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  store ptr %i.ie, ptr %i.au, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.u:                                             ; preds = %bb.s
  %i.if = ptrtoint ptr %i.hm to i64
  %i.ig = ptrtoint ptr %i.hl to i64               ; 2 uses
  %i.ih = sub i64 %i.if, %i.ig                    ; 3 uses
  %i.ii = icmp eq i64 %i.ih, 9223372036854775776
  br i1 %i.ii, label %bb.v, label %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98: ; preds = %bb.u
  %i.ij = ashr exact i64 %i.ih, 5                 ; 3 uses
  %.sroa.speculated.i.i.i99 = tail call i64 @llvm.umax.i64(i64 %i.ij, i64 1)
  %i.ik = add nsw i64 %.sroa.speculated.i.i.i99, %i.ij ; 2 uses
  %i.il = icmp ult i64 %i.ik, %i.ij
  %i.im = tail call i64 @llvm.umin.i64(i64 %i.ik, i64 288230376151711743)
  %i.in = select i1 %i.il, i64 288230376151711743, i64 %i.im ; 3 uses
  %.not.i.i.i100 = icmp ne i64 %i.in, 0
  tail call void @llvm.assume(i1 %.not.i.i.i100)
  %i.io = shl nuw nsw i64 %i.in, 5
  %i.ip = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.io) #23 ; 5 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ih ; 4 uses
  store i64 %.0217, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store double %i.dj, ptr %i.ir, align 8
  %.sroa.6167.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store double %i.dk, ptr %.sroa.6167.0..sroa_idx168, align 8
  %.sroa.8.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  store double %i.dm, ptr %.sroa.8.0..sroa_idx170, align 8
  br i1 %i.hn, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106, label %.lr.ph.i.i.i.i.i102

.lr.ph.i.i.i.i.i102:                              ; preds = %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98, %.lr.ph.i.i.i.i.i102
  %.012.i.i.i.i.i103 = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i102 ], [ %i.ip, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98 ] ; 2 uses
  %.0911.i.i.i.i.i104 = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i102 ], [ %i.hl, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i103, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i104, i64 32, i1 false), !alias.scope !107
  %i.is = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i104, i64 32 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i103, i64 32 ; 2 uses
  %.not.i.i.i.i.i105 = icmp eq ptr %i.is, %i.hm
  br i1 %.not.i.i.i.i.i105, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106, label %.lr.ph.i.i.i.i.i102, !llvm.loop !91

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106: ; preds = %.lr.ph.i.i.i.i.i102, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98
  %.0.lcssa.i.i.i.i.i107 = phi ptr [ %i.ip, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98 ], [ %i.it, %.lr.ph.i.i.i.i.i102 ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i107, i64 32
  %.not.i34.i.i108 = icmp eq ptr %i.hl, null
  br i1 %.not.i34.i.i108, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106
  %i.iv = load ptr, ptr %i.av, align 8
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = sub i64 %i.iw, %i.ig
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.ix) #24
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109: ; preds = %bb.w, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106
  store ptr %i.ip, ptr %4, align 8
  store ptr %i.iu, ptr %i.au, align 8
  %i.iy = getelementptr inbounds nuw [32 x i8], ptr %i.ip, i64 %i.in
  store ptr %i.iy, ptr %i.av, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit: ; preds = %bb.r, %bb.c, %bb.o, %bb.n, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.j, %bb.e, %bb.h, %bb.t, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109, %bb.b
  %exitcond225.not = icmp eq i64 %i.by, %i.g
  br i1 %exitcond225.not, label %._crit_edge220, label %bb.b, !llvm.loop !97
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC11PointInPolyERK10aiVector3tIdERKSt6vectorIS2_SaIS2_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.40", align 8    ; 14 uses
  %3 = alloca %class.aiVector3t, align 16         ; 6 uses
  %4 = alloca %class.aiVector3t, align 16         ; 6 uses
  %5 = alloca %class.aiVector3t, align 16         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load double, ptr %i.a, align 8, !noalias !114
  %i.c = fadd double %i.b, 0.000000e+00
  %i.d = load <2 x double>, ptr %0, align 8, !noalias !114
  %i.e = fadd <2 x double> %i.d, <double 1.000000e+00, double 0.000000e+00>
  store <2 x double> %i.e, ptr %3, align 16, !alias.scope !114
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.c, ptr %i.f, align 16, !alias.scope !114
  %i.g = invoke noundef zeroext i1 @_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
          to label %_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i unwind label %bb.d ; 0 uses

_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, %i.j
  %spec.store.select = select i1 %.not.i.i, ptr %i.i, ptr %i.j
  store ptr %spec.store.select, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.k = load double, ptr %i.a, align 8, !noalias !115
  %i.l = fadd double %i.k, 0.000000e+00
  %i.m = load <2 x double>, ptr %0, align 8, !noalias !115
  %i.n = fadd <2 x double> %i.m, <double 0.000000e+00, double 1.000000e+00>
  store <2 x double> %i.n, ptr %4, align 16, !alias.scope !115
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.l, ptr %i.o, align 16, !alias.scope !115
  %i.p = invoke noundef zeroext i1 @_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
          to label %_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i17 unwind label %bb.e ; 0 uses

_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i17: ; preds = %_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.q = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.r = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.q, %i.r
  %spec.store.select27 = select i1 %.not.i.i16, ptr %i.q, ptr %i.r
  store ptr %spec.store.select27, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.s = load double, ptr %i.a, align 8, !noalias !116
  %i.t = fadd double %i.s, 0.000000e+00
  %i.u = load <2 x double>, ptr %0, align 8, !noalias !116
  %i.v = fadd <2 x double> %i.u, <double 6.000000e-01, double -6.000000e-01>
  store <2 x double> %i.v, ptr %5, align 16, !alias.scope !116
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.t, ptr %i.w, align 16, !alias.scope !116
  %i.x = invoke noundef zeroext i1 @_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.y = load ptr, ptr %i.h, align 8
  %i.z = load ptr, ptr %2, align 8                ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #24
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EED2Ev.exit: ; preds = %bb.b, %bb.c
  %i.af = ptrtoint ptr %i.i to i64
  %i.ag = ptrtoint ptr %i.j to i64
end_hunk_0
