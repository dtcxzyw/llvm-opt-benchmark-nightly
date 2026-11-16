Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ProbabilityTrigonometricFunctionsRegistration?download=true
inline.NumInlined: 54762
inline.NumDeleted: 11385
loop-unroll.NumCompletelyUnrolled: 842
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 895
begin_hunk_0_@_ZN5boost4math6detail15gamma_p_inv_impIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_RKT0_:bb.a
  call void @_ZN5boost4math8policies6detail11raise_errorINS0_16evaluation_errorEdEEvPKcS6_RKT0_(ptr noundef %i.w, ptr noundef nonnull @.str.363, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5boost4math8policies21check_root_iterationsIdNS1_6policyINS1_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEvPKcmRKT0_.exit

_ZN5boost4math8policies21check_root_iterationsIdNS1_6policyINS1_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEvPKcmRKT0_.exit: ; preds = %_ZN5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEC2Eddb.exit, %bb.j
  %i.y = fcmp oeq double %i.u, f0x0010000000000000
  %spec.select32 = select i1 %i.y, double 0.000000e+00, double %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %_ZN5boost4math8policies21check_root_iterationsIdNS1_6policyINS1_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEvPKcmRKT0_.exit, %bb.f, %bb.d, %bb.b
  %.023 = phi double [ +qnan, %bb.b ], [ +qnan, %bb.d ], [ +inf, %bb.f ], [ %spec.select32, %_ZN5boost4math8policies21check_root_iterationsIdNS1_6policyINS1_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEvPKcmRKT0_.exit ], [ 0.000000e+00, %bb.g ]
  ret double %.023
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN5boost4math6detail18find_inverse_gammaIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_RKT0_Pb(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) local_unnamed_addr #0 comdat !guid !24107 {
bb.a:
  %5 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %6 = alloca %"struct.boost::math::lanczos::lanczos17m64", align 1 ; 3 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %7 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %8 = alloca %"struct.boost::math::lanczos::lanczos17m64", align 1 ; 3 uses
  %9 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %10 = alloca %"struct.boost::math::lanczos::lanczos17m64", align 1 ; 3 uses
  %11 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %12 = alloca %"struct.boost::math::lanczos::lanczos17m64", align 1 ; 3 uses
  store i8 0, ptr %4, align 1, !tbaa !1286
  %i.d = fcmp oeq double %0, 1.000000e+00
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call double @log(double noundef %2) #41
  %i.f = fneg double %i.e
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %i.g = fcmp olt double %0, 1.000000e+00
  br i1 %i.g, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.h = fpext double %0 to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.i = call noundef x86_fp80 @_ZN5boost4math6detail9gamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_(x86_fp80 noundef %i.h, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12) ; 2 uses
  %i.j = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.i)
  %i.k = fcmp ogt x86_fp80 %i.j, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.k, label %bb.e, label %_ZN5boost4math6tgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeES8_S9_.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math6tgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeES8_S9_.exit

_ZN5boost4math6tgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeES8_S9_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = fptrunc x86_fp80 %i.i to double     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  %i.l = fmul double %2, %.0.i.i.i                ; 11 uses
  %i.m = fcmp ogt double %i.l, 6.000000e-01
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5boost4math6tgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeES8_S9_.exit
  %i.n = fcmp oge double %i.l, 4.500000e-01
  %i.o = fcmp oge double %0, 3.000000e-01         ; 2 uses
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %_ZN5boost4math6tgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeES8_S9_.exit
  %i.p = fmul double %2, %i.l
  %i.q = fcmp ogt double %i.p, 1.000000e-08
  %i.r = fcmp ogt double %2, 1.000000e-05
  %or.cond3 = and i1 %i.r, %i.q
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = fmul double %1, %.0.i.i.i
  %i.t = fmul double %0, %i.s
  %i.u = fdiv double 1.000000e+00, %0
  %i.v = call double @pow(double noundef %i.t, double noundef %i.u) #41
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.w = fdiv double %2, %0
  %i.x = fsub double f0xBFE2788CFC6FB619, %i.w
  %i.y = call double @exp(double noundef %i.x) #41
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0309 = phi double [ %i.v, %bb.h ], [ %i.y, %bb.i ] ; 2 uses
  %i.z = fadd double %0, 1.000000e+00
  %i.aa = fdiv double %.0309, %i.z
  %i.ab = fsub double 1.000000e+00, %i.aa
  %i.ac = fdiv double %.0309, %i.ab
  br label %bb.av

bb.k:                                             ; preds = %bb.f
  %i.ad = fcmp olt double %0, 3.000000e-01
  %i.ae = fcmp oge double %i.l, 3.500000e-01
  %or.cond5 = and i1 %i.ad, %i.ae
  br i1 %or.cond5, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = fsub double f0xBFE2788CFC6FB619, %i.l
  %i.ag = call double @exp(double noundef %i.af) #41 ; 3 uses
  %i.ah = call double @exp(double noundef %i.ag) #41
  %i.ai = fmul double %i.ag, %i.ah
  %i.aj = call double @exp(double noundef %i.ai) #41
  %i.ak = fmul double %i.ag, %i.aj
  br label %bb.av

bb.m:                                             ; preds = %bb.k
  %i.al = fcmp ogt double %i.l, 1.500000e-01
  %or.cond7 = or i1 %i.o, %i.al
  br i1 %or.cond7, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = call double @log(double noundef %i.l) #41
  %i.an = fneg double %i.am                       ; 3 uses
  %i.ao = fsub double 1.000000e+00, %0            ; 3 uses
  %i.ap = call double @log(double noundef %i.an) #41
  %i.aq = fmul double %i.ao, %i.ap
  %i.ar = fsub double %i.an, %i.aq                ; 2 uses
  %i.as = call double @log(double noundef %i.ar) #41
  %i.at = fmul double %i.ao, %i.as
  %i.au = fsub double %i.an, %i.at
  %i.av = fadd double %i.ar, 1.000000e+00
  %i.aw = fdiv double %i.ao, %i.av
  %i.ax = fadd double %i.aw, 1.000000e+00
  %i.ay = call double @log(double noundef %i.ax) #41
  %i.az = fsub double %i.au, %i.ay
  br label %bb.av

bb.o:                                             ; preds = %bb.m
  %i.ba = fcmp ogt double %i.l, 1.000000e-01
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = call double @llvm.log.f64(double %i.l)
  %i.bc = fneg double %i.bb                       ; 3 uses
  %i.bd = fsub double 1.000000e+00, %0            ; 2 uses
  %i.be = call double @log(double noundef %i.bc) #41
  %i.bf = fmul double %i.bd, %i.be
  %i.bg = fsub double %i.bc, %i.bf                ; 5 uses
  %i.bh = call double @log(double noundef %i.bg) #41
  %i.bi = fmul double %i.bd, %i.bh
  %i.bj = fsub double %i.bc, %i.bi
  %i.bk = fmul double %i.bg, %i.bg                ; 2 uses
  %i.bl = fsub double 3.000000e+00, %0            ; 2 uses
  %i.bm = fmul nnan double %i.bl, 2.000000e+00
  %i.bn = fmul double %i.bm, %i.bg
  %i.bo = fadd double %i.bk, %i.bn
  %i.bp = fsub nnan double 2.000000e+00, %0
  %i.bq = fmul double %i.bp, %i.bl
  %i.br = fadd double %i.bq, %i.bo
  %i.bs = fsub nnan double 5.000000e+00, %0
  %i.bt = fmul double %i.bs, %i.bg
  %i.bu = fadd double %i.bk, %i.bt
  %i.bv = fadd double %i.bu, 2.000000e+00
  %i.bw = fdiv double %i.br, %i.bv
  %i.bx = call double @log(double noundef %i.bw) #41
  %i.by = fsub double %i.bj, %i.bx
  br label %bb.av

bb.q:                                             ; preds = %bb.o
  %i.bz = call double @log(double noundef %i.l) #41 ; 5 uses
  %i.ca = fneg double %i.bz                       ; 2 uses
  %i.cb = call double @log(double noundef %i.ca) #41
  %i.cc = fadd nnan double %0, -2.000000e+00
  %i.cd = fmul nnan double %0, 6.000000e+00
  %i.ce = fmul nnan double %0, 1.100000e+01
  %i.cf = fadd nnan double %i.ce, -1.700000e+01
  %i.cg = fmul nnan double %0, 1.300000e+01
  %i.ch = fmul nnan double %0, 7.200000e+01
  %i.ci = fmul double %i.bz, %i.bz                ; 4 uses
  %i.cj = fmul double %i.ci, %i.ca
  %i.ck = fmul double %i.ci, %i.ci
  %i.cl = fadd double %0, -1.000000e+00           ; 3 uses
  %i.cm = fmul double %i.cl, %i.cb                ; 8 uses
  %i.cn = fmul double %i.cm, %i.cm                ; 6 uses
  %i.co = fmul double %i.cm, %i.cn                ; 2 uses
  %i.cp = fmul double %i.cn, %i.cn
  %i.cq = fmul double %0, %0                      ; 6 uses
  %i.cr = fmul double %0, %i.cq                   ; 2 uses
  %i.cs = fadd double %i.cm, 1.000000e+00
  %i.ct = fmul double %i.cl, %i.cs
  %i.cu = fmul double %i.cn, 5.000000e-01
  %i.cv = fmul double %i.cc, %i.cm
  %i.cw = fsub double %i.cv, %i.cu
  %i.cx = fsub double %i.cq, %i.cd
  %i.cy = fadd double %i.cx, 7.000000e+00
  %i.cz = fmul double %i.cy, %i.cm
  %i.da = fmul nnan double %i.cq, 1.100000e+01
  %i.db = fmul nnan double %0, 3.000000e+00
  %i.dc = fmul nnan double %0, 4.600000e+01
  %i.dd = fsub double %i.da, %i.dc
  %i.de = insertelement <2 x double> poison, double %i.db, i64 0
  %i.df = insertelement <2 x double> %i.de, double %i.dd, i64 1
  %i.dg = fadd <2 x double> %i.df, <double -5.000000e+00, double 4.700000e+01> ; 2 uses
  %i.dh = extractelement <2 x double> %i.dg, i64 0
  %i.di = fmul double %i.dh, %i.cn
  %i.dj = fmul double %i.di, 5.000000e-01
  %i.dk = fmul <2 x double> %i.dg, <double 5.000000e-01, double 1.000000e+00>
  %i.dl = fmul double %i.cp, 2.500000e-01
  %i.dm = fmul double %i.cf, %i.co
  %i.dn = insertelement <2 x double> poison, double %i.co, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.dm, i64 1
  %i.dp = fdiv <2 x double> %i.do, <double 3.000000e+00, double 6.000000e+00> ; 2 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 0
  %i.dr = fsub double %i.dq, %i.dj
  %i.ds = fadd double %i.cz, %i.dr
  %i.dt = extractelement <2 x double> %i.dp, i64 1
  %i.du = fsub double %i.dt, %i.dl
  %i.dv = fmul nnan double %i.cq, 3.000000e+00
  %i.dw = fsub double %i.cg, %i.dv
  %i.dx = fadd double %i.dw, -1.300000e+01
  %i.dy = fmul double %i.dx, %i.cn
  %i.dz = fadd double %i.dy, %i.du
  %i.ea = fmul double %i.cr, 2.000000e+00
  %i.eb = fmul nnan double %i.cq, 2.500000e+01
  %i.ec = fsub double %i.ea, %i.eb
  %i.ed = fadd double %i.ch, %i.ec
  %i.ee = fadd double %i.ed, -6.100000e+01
  %i.ef = fmul double %i.ee, %i.cm
  %i.eg = fmul double %i.ef, 5.000000e-01
  %i.eh = fadd double %i.eg, %i.dz
  %i.ei = fmul double %i.cr, 2.500000e+01
  %i.ej = fmul nnan double %i.cq, 1.950000e+02
  %i.ek = fsub double %i.ei, %i.ej
  %i.el = fmul nnan double %0, 4.770000e+02
  %i.em = fadd double %i.el, %i.ek
  %i.en = fadd double %i.em, -3.790000e+02
  %i.eo = fsub double %i.cm, %i.bz
  %13 = shufflevector <2 x double> %i.dk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ep = insertelement <4 x double> %13, double %i.en, i64 2
  %i.eq = insertelement <4 x double> %i.ep, double %i.ct, i64 3
  %i.er = insertelement <4 x double> <double 1.000000e+00, double 6.000000e+00, double 1.200000e+01, double poison>, double %i.bz, i64 3
  %i.es = fdiv <4 x double> %i.eq, %i.er
  %i.et = insertelement <4 x double> <double poison, double poison, double poison, double -0.000000e+00>, double %i.cw, i64 0
  %i.eu = insertelement <4 x double> %i.et, double %i.ds, i64 1
  %i.ev = insertelement <4 x double> %i.eu, double %i.eh, i64 2
  %i.ew = fadd <4 x double> %i.es, %i.ev          ; 2 uses
  %i.ex = insertelement <4 x double> poison, double %i.cl, i64 0
  %i.ey = insertelement <4 x double> %i.ex, double %i.eo, i64 1
  %i.ez = shufflevector <4 x double> %i.ey, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.fa = fmul <4 x double> %i.ez, %i.ew
  %i.fb = fsub <4 x double> %i.ez, %i.ew          ; 2 uses
  %i.fc = shufflevector <4 x double> %i.fa, <4 x double> %i.fb, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.fd = insertelement <4 x double> <double poison, double poison, double poison, double 1.000000e+00>, double %i.ci, i64 0
  %i.fe = insertelement <4 x double> %i.fd, double %i.cj, i64 1
  %i.ff = insertelement <4 x double> %i.fe, double %i.ck, i64 2
  %i.fg = fdiv <4 x double> %i.fc, %i.ff          ; 3 uses
  %shift = shufflevector <4 x double> %i.fb, <4 x double> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x double> %shift, %i.fg
  %shift342 = shufflevector <4 x double> %i.fg, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop343 = fadd <4 x double> %foldExtExtBinop, %shift342
  %shift345 = shufflevector <4 x double> %i.fg, <4 x double> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop346 = fadd <4 x double> %foldExtExtBinop343, %shift345
  %i.fh = extractelement <4 x double> %foldExtExtBinop346, i64 0 ; 2 uses
  %i.fi = fcmp olt double %i.l, f0x3A1FB0F6C0000000
  br i1 %i.fi, label %bb.r, label %bb.av

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %4, align 1, !tbaa !1286
  br label %bb.av

bb.s:                                             ; preds = %bb.c
  %i.fj = fcmp olt double %1, 5.000000e-01        ; 2 uses
  %..i = select i1 %i.fj, double %1, double %2
  %i.fk = tail call double @log(double noundef %..i) #41
  %i.fl = fmul double %i.fk, -2.000000e+00
  %i.fm = tail call double @sqrt(double noundef %i.fl) #41 ; 7 uses
  %i.fn = fmul double %i.fm, f0x3FCB5803BF955B59
  %i.fo = fadd double %i.fn, f0x4011223942E712DF
  %i.fp = fmul double %i.fm, %i.fo
  %i.fq = fadd double %i.fp, f0x402752C6AD199457
  %i.fr = fmul double %i.fm, %i.fq
  %i.fs = fadd double %i.fr, f0x400A7D75797930DD
  %i.ft = fmul double %i.fm, %i.fm                ; 3 uses
  %i.fu = fmul double %i.ft, f0x3FA27DF0239B16DF
  %i.fv = fadd double %i.fu, f0x4019A0AE95000DDE
  %i.fw = fmul double %i.ft, f0x3FF460D978EDD1E0
  %i.fx = fadd double %i.fw, f0x401A7130C88A5C3F
  %i.fy = fmul double %i.ft, %i.fv
  %i.fz = fadd double %i.fy, 1.000000e+00
  %i.ga = fmul double %i.fm, %i.fx
  %i.gb = fadd double %i.ga, %i.fz
  %i.gc = fdiv double %i.fs, %i.gb
  %i.gd = fsub double %i.fm, %i.gc                ; 2 uses
  %i.ge = fneg double %i.gd
  %spec.select.i = select i1 %i.fj, double %i.ge, double %i.gd ; 6 uses
  %i.gf = fmul double %spec.select.i, %spec.select.i ; 5 uses
  %i.gg = fmul double %i.gf, %i.gf                ; 2 uses
  %i.gh = fmul double %spec.select.i, %i.gg
  %i.gi = tail call double @sqrt(double noundef %0) #41 ; 3 uses
  %i.gj = fmul double %i.gi, %spec.select.i
  %i.gk = fadd double %0, %i.gj
  %i.gl = fadd double %i.gf, -1.000000e+00
  %i.gm = fdiv double %i.gl, 3.000000e+00
  %i.gn = fadd double %i.gk, %i.gm
  %i.go = insertelement <2 x double> <double poison, double 3.000000e+00>, double %spec.select.i, i64 0 ; 2 uses
  %i.gp = insertelement <2 x double> poison, double %i.gf, i64 0
  %i.gq = insertelement <2 x double> %i.gp, double %i.gg, i64 1
  %i.gr = fmul <2 x double> %i.go, %i.gq          ; 3 uses
  %i.gs = insertelement <2 x double> %i.go, double %i.gf, i64 1
  %i.gt = fmul <2 x double> %i.gs, splat (double 7.000000e+00) ; 2 uses
  %i.gu = fsub <2 x double> %i.gr, %i.gt
  %i.gv = fadd <2 x double> %i.gr, %i.gt
  %i.gw = shufflevector <2 x double> %i.gu, <2 x double> %i.gv, <2 x i32> <i32 0, i32 3>
  %i.gx = fadd <2 x double> %i.gw, <double -0.000000e+00, double -1.600000e+01>
  %i.gy = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gz = insertelement <2 x double> %i.gy, double %0, i64 1
  %i.ha = fmul <2 x double> %i.gz, <double 3.600000e+01, double 8.100000e+02>
  %i.hb = fdiv <2 x double> %i.gx, %i.ha          ; 2 uses
  %i.hc = extractelement <2 x double> %i.hb, i64 0
  %i.hd = fadd double %i.gn, %i.hc
  %i.he = extractelement <2 x double> %i.hb, i64 1
  %i.hf = fsub double %i.hd, %i.he
  %i.hg = fmul double %i.gh, 9.000000e+00
  %i.hh = extractelement <2 x double> %i.gr, i64 0
  %i.hi = fmul double %i.hh, 2.560000e+02
  %i.hj = fadd double %i.hi, %i.hg
  %i.hk = fmul double %spec.select.i, 4.330000e+02
  %i.hl = fsub double %i.hj, %i.hk
  %i.hm = fmul double %0, 3.888000e+04
  %i.hn = fmul double %i.hm, %i.gi
  %i.ho = fdiv double %i.hl, %i.hn
  %i.hp = fadd double %i.hf, %i.ho                ; 9 uses
  %i.hq = fcmp ult double %0, 5.000000e+02
  br i1 %i.hq, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hr = fdiv double %i.hp, %0
  %i.hs = fsub double 1.000000e+00, %i.hr
  %i.ht = tail call double @llvm.fabs.f64(double %i.hs)
  %i.hu = fcmp olt double %i.ht, f0x3EB0C6F7A0B5ED8D
  br i1 %i.hu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %4, align 1, !tbaa !1286
  br label %bb.av

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.hv = fcmp ogt double %1, 5.000000e-01
  br i1 %i.hv, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.hw = fmul double %0, 3.000000e+00            ; 2 uses
  %i.hx = fcmp olt double %i.hp, %i.hw
  br i1 %i.hx, label %bb.av, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hy = fadd double %0, -1.000000e+00           ; 7 uses
  %i.hz = fmul double %0, %i.hy                   ; 2 uses
  %i.ia = fcmp ogt double %i.hz, 2.000000e+00
  %.sroa.speculated = select i1 %i.ia, double %i.hz, double 2.000000e+00
  %i.ib = fpext double %0 to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.ic = call noundef x86_fp80 @_ZN5boost4math6detail10lgamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_Pi(x86_fp80 noundef %i.ib, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef null) ; 2 uses
  %i.id = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.ic)
  %i.ie = fcmp ogt x86_fp80 %i.id, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.ie, label %bb.y, label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit

_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit: ; preds = %bb.x, %bb.y
  %.0.i.i.i323 = fptrunc x86_fp80 %i.ic to double
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %i.if = call double @log(double noundef %2) #41
  %i.ig = fadd double %i.if, %.0.i.i.i323         ; 8 uses
  %i.ih = fmul nnan double %.sroa.speculated, -2.300000e+00
  %i.ii = fcmp olt double %i.ig, %i.ih
  br i1 %i.ii, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit
  %i.ij = fneg double %i.ig                       ; 2 uses
  %i.ik = call double @log(double noundef %i.ij) #41
  %i.il = fmul double %0, 6.000000e+00
  %i.im = fmul double %0, 4.600000e+01
  %i.in = fmul double %0, 1.100000e+01
  %i.io = fadd double %i.in, -1.700000e+01
  %i.ip = fmul double %0, 7.200000e+01
  %i.iq = fmul double %0, 4.770000e+02
  %i.ir = fmul double %i.ig, %i.ig                ; 4 uses
  %i.is = fmul double %i.ir, %i.ij
  %i.it = fmul double %i.ir, %i.ir
  %i.iu = fmul double %i.hy, %i.ik                ; 7 uses
  %i.iv = fmul double %0, %0                      ; 6 uses
  %i.iw = fmul double %0, %i.iv                   ; 2 uses
  %i.ix = fadd double %i.iu, 1.000000e+00
  %i.iy = fmul double %i.hy, %i.ix
  %i.iz = fsub double %i.iv, %i.il
  %i.ja = fmul double %i.iv, 1.100000e+01
  %i.jb = fsub double %i.ja, %i.im
  %i.jc = fmul double %i.iu, %i.iu                ; 6 uses
  %i.jd = fmul double %i.iu, %i.jc                ; 2 uses
  %i.je = fmul double %i.jc, %i.jc
  %i.jf = fmul double %i.jc, 5.000000e-01
  %i.jg = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.jh = insertelement <2 x double> %i.jg, double %i.jb, i64 1
  %i.ji = fadd <2 x double> %i.jh, <double -5.000000e+00, double 4.700000e+01> ; 2 uses
  %i.jj = extractelement <2 x double> %i.ji, i64 0
  %i.jk = fmul double %i.jj, %i.jc
  %i.jl = fmul double %i.jk, 5.000000e-01
  %i.jm = insertelement <2 x double> poison, double %0, i64 0
  %i.jn = insertelement <2 x double> %i.jm, double %i.iz, i64 1
  %i.jo = fadd <2 x double> %i.jn, <double -2.000000e+00, double 7.000000e+00>
  %i.jp = insertelement <2 x double> poison, double %i.iu, i64 0
  %i.jq = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jr = fmul <2 x double> %i.jo, %i.jq          ; 2 uses
  %i.js = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.jt = fmul <2 x double> %i.ji, <double 5.000000e-01, double 1.000000e+00>
  %i.ju = fdiv <2 x double> %i.jt, <double 1.000000e+00, double 6.000000e+00>
  %i.jv = insertelement <2 x double> poison, double %i.hy, i64 0
  %i.jw = fmul double %i.je, 2.500000e-01
  %i.jx = fmul double %i.io, %i.jd
  %i.jy = fmul double %i.iv, 3.000000e+00
  %i.jz = fmul double %0, 1.300000e+01
  %i.ka = fsub double %i.jz, %i.jy
  %i.kb = fadd double %i.ka, -1.300000e+01
  %i.kc = fmul double %i.kb, %i.jc
  %i.kd = fmul double %i.iw, 2.000000e+00
  %i.ke = fmul double %i.iv, 2.500000e+01
  %i.kf = fsub double %i.kd, %i.ke
  %i.kg = fadd double %i.ip, %i.kf
  %i.kh = fadd double %i.kg, -6.100000e+01
  %i.ki = fmul double %i.kh, %i.iu
  %i.kj = fmul double %i.ki, 5.000000e-01
  %i.kk = fmul double %i.iw, 2.500000e+01
  %i.kl = fmul double %i.iv, 1.950000e+02
end_hunk_0
