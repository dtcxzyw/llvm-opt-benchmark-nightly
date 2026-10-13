Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ProbabilityTrigonometricFunctionsRegistration?download=true
inline.NumInlined: 54762
inline.NumDeleted: 11385
loop-unroll.NumCompletelyUnrolled: 843
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 896
begin_hunk_0_@_ZN5boost4math6detail18find_inverse_gammaIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_RKT0_Pb:bb.a
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
  %i.ep = shufflevector <2 x double> %i.dk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eq = insertelement <4 x double> %i.ep, double %i.en, i64 2
  %i.er = insertelement <4 x double> %i.eq, double %i.ct, i64 3
  %i.es = insertelement <4 x double> <double 1.000000e+00, double 6.000000e+00, double 1.200000e+01, double poison>, double %i.bz, i64 3
  %i.et = fdiv <4 x double> %i.er, %i.es
  %i.eu = insertelement <4 x double> <double poison, double poison, double poison, double -0.000000e+00>, double %i.cw, i64 0
  %i.ev = insertelement <4 x double> %i.eu, double %i.ds, i64 1
  %i.ew = insertelement <4 x double> %i.ev, double %i.eh, i64 2
  %i.ex = fadd <4 x double> %i.et, %i.ew          ; 2 uses
  %i.ey = insertelement <4 x double> poison, double %i.cl, i64 0
  %i.ez = insertelement <4 x double> %i.ey, double %i.eo, i64 1
  %i.fa = shufflevector <4 x double> %i.ez, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.fb = fmul <4 x double> %i.fa, %i.ex
  %i.fc = fsub <4 x double> %i.fa, %i.ex          ; 2 uses
  %i.fd = shufflevector <4 x double> %i.fb, <4 x double> %i.fc, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.fe = insertelement <4 x double> <double poison, double poison, double poison, double 1.000000e+00>, double %i.ci, i64 0
  %i.ff = insertelement <4 x double> %i.fe, double %i.cj, i64 1
  %i.fg = insertelement <4 x double> %i.ff, double %i.ck, i64 2
  %i.fh = fdiv <4 x double> %i.fd, %i.fg          ; 3 uses
  %shift = shufflevector <4 x double> %i.fc, <4 x double> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x double> %shift, %i.fh
  %shift342 = shufflevector <4 x double> %i.fh, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop343 = fadd <4 x double> %foldExtExtBinop, %shift342
  %shift345 = shufflevector <4 x double> %i.fh, <4 x double> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop346 = fadd <4 x double> %foldExtExtBinop343, %shift345
  %i.fi = extractelement <4 x double> %foldExtExtBinop346, i64 0 ; 2 uses
  %i.fj = fcmp olt double %i.l, f0x3A1FB0F6C0000000
  br i1 %i.fj, label %bb.r, label %bb.av

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %4, align 1, !tbaa !122
  br label %bb.av

bb.s:                                             ; preds = %bb.c
  %i.fk = fcmp olt double %1, 5.000000e-01        ; 2 uses
  %..i = select i1 %i.fk, double %1, double %2
  %i.fl = tail call double @log(double noundef %..i) #41
  %i.fm = fmul double %i.fl, -2.000000e+00
  %i.fn = tail call double @sqrt(double noundef %i.fm) #41 ; 7 uses
  %i.fo = fmul double %i.fn, f0x3FCB5803BF955B59
  %i.fp = fadd double %i.fo, f0x4011223942E712DF
  %i.fq = fmul double %i.fn, %i.fp
  %i.fr = fadd double %i.fq, f0x402752C6AD199457
  %i.fs = fmul double %i.fn, %i.fr
  %i.ft = fadd double %i.fs, f0x400A7D75797930DD
  %i.fu = fmul double %i.fn, %i.fn                ; 3 uses
  %i.fv = fmul double %i.fu, f0x3FA27DF0239B16DF
  %i.fw = fadd double %i.fv, f0x4019A0AE95000DDE
  %i.fx = fmul double %i.fu, f0x3FF460D978EDD1E0
  %i.fy = fadd double %i.fx, f0x401A7130C88A5C3F
  %i.fz = fmul double %i.fu, %i.fw
  %i.ga = fadd double %i.fz, 1.000000e+00
  %i.gb = fmul double %i.fn, %i.fy
  %i.gc = fadd double %i.gb, %i.ga
  %i.gd = fdiv double %i.ft, %i.gc
  %i.ge = fsub double %i.fn, %i.gd                ; 2 uses
  %i.gf = fneg double %i.ge
  %spec.select.i = select i1 %i.fk, double %i.gf, double %i.ge ; 6 uses
  %i.gg = fmul double %spec.select.i, %spec.select.i ; 5 uses
  %i.gh = fmul double %i.gg, %i.gg                ; 2 uses
  %i.gi = fmul double %spec.select.i, %i.gh
  %i.gj = tail call double @sqrt(double noundef %0) #41 ; 3 uses
  %i.gk = fmul double %i.gj, %spec.select.i
  %i.gl = fadd double %0, %i.gk
  %i.gm = fadd double %i.gg, -1.000000e+00
  %i.gn = fdiv double %i.gm, 3.000000e+00
  %i.go = fadd double %i.gl, %i.gn
  %i.gp = insertelement <2 x double> <double poison, double 3.000000e+00>, double %spec.select.i, i64 0 ; 2 uses
  %i.gq = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %i.gh, i64 1
  %i.gs = fmul <2 x double> %i.gp, %i.gr          ; 3 uses
  %i.gt = insertelement <2 x double> %i.gp, double %i.gg, i64 1
  %i.gu = fmul <2 x double> %i.gt, splat (double 7.000000e+00) ; 2 uses
  %i.gv = fsub <2 x double> %i.gs, %i.gu
  %i.gw = fadd <2 x double> %i.gs, %i.gu
  %i.gx = shufflevector <2 x double> %i.gv, <2 x double> %i.gw, <2 x i32> <i32 0, i32 3>
  %i.gy = fadd <2 x double> %i.gx, <double -0.000000e+00, double -1.600000e+01>
  %i.gz = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.ha = insertelement <2 x double> %i.gz, double %0, i64 1
  %i.hb = fmul <2 x double> %i.ha, <double 3.600000e+01, double 8.100000e+02>
  %i.hc = fdiv <2 x double> %i.gy, %i.hb          ; 2 uses
  %i.hd = extractelement <2 x double> %i.hc, i64 0
  %i.he = fadd double %i.go, %i.hd
  %i.hf = extractelement <2 x double> %i.hc, i64 1
  %i.hg = fsub double %i.he, %i.hf
  %i.hh = fmul double %i.gi, 9.000000e+00
  %i.hi = extractelement <2 x double> %i.gs, i64 0
  %i.hj = fmul double %i.hi, 2.560000e+02
  %i.hk = fadd double %i.hj, %i.hh
  %i.hl = fmul double %spec.select.i, 4.330000e+02
  %i.hm = fsub double %i.hk, %i.hl
  %i.hn = fmul double %0, 3.888000e+04
  %i.ho = fmul double %i.hn, %i.gj
  %i.hp = fdiv double %i.hm, %i.ho
  %i.hq = fadd double %i.hg, %i.hp                ; 9 uses
  %i.hr = fcmp ult double %0, 5.000000e+02
  br i1 %i.hr, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hs = fdiv double %i.hq, %0
  %i.ht = fsub double 1.000000e+00, %i.hs
  %i.hu = tail call double @llvm.fabs.f64(double %i.ht)
  %i.hv = fcmp olt double %i.hu, f0x3EB0C6F7A0B5ED8D
  br i1 %i.hv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %4, align 1, !tbaa !122
  br label %bb.av

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.hw = fcmp ogt double %1, 5.000000e-01
  br i1 %i.hw, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.hx = fmul double %0, 3.000000e+00            ; 2 uses
  %i.hy = fcmp olt double %i.hq, %i.hx
  br i1 %i.hy, label %bb.av, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hz = fadd double %0, -1.000000e+00           ; 7 uses
  %i.ia = fmul double %0, %i.hz                   ; 2 uses
  %i.ib = fcmp ogt double %i.ia, 2.000000e+00
  %.sroa.speculated = select i1 %i.ib, double %i.ia, double 2.000000e+00
  %i.ic = fpext double %0 to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.id = call noundef x86_fp80 @_ZN5boost4math6detail10lgamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_Pi(x86_fp80 noundef %i.ic, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef null) ; 2 uses
  %i.ie = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.id)
  %i.if = fcmp ogt x86_fp80 %i.ie, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.if, label %bb.y, label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit

_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit: ; preds = %bb.x, %bb.y
  %.0.i.i.i323 = fptrunc x86_fp80 %i.id to double
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %i.ig = call double @log(double noundef %2) #41
  %i.ih = fadd double %i.ig, %.0.i.i.i323         ; 8 uses
  %i.ii = fmul nnan double %.sroa.speculated, -2.300000e+00
  %i.ij = fcmp olt double %i.ih, %i.ii
  br i1 %i.ij, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit
  %i.ik = fneg double %i.ih                       ; 2 uses
  %i.il = call double @log(double noundef %i.ik) #41
  %i.im = fmul double %0, 6.000000e+00
  %i.in = fmul double %0, 4.600000e+01
  %i.io = fmul double %0, 1.100000e+01
  %i.ip = fadd double %i.io, -1.700000e+01
  %i.iq = fmul double %0, 7.200000e+01
  %i.ir = fmul double %0, 4.770000e+02
  %i.is = fmul double %i.ih, %i.ih                ; 4 uses
  %i.it = fmul double %i.is, %i.ik
  %i.iu = fmul double %i.is, %i.is
  %i.iv = fmul double %i.hz, %i.il                ; 7 uses
  %i.iw = fmul double %i.iv, %i.iv                ; 6 uses
  %i.ix = fmul double %i.iv, %i.iw                ; 2 uses
  %13 = fmul double %i.iw, %i.iw
  %i.iy = fmul double %0, %0                      ; 6 uses
  %14 = fmul double %0, %i.iy                     ; 2 uses
  %15 = fadd double %i.iv, 1.000000e+00
  %16 = fmul double %i.hz, %15
  %17 = fsub double %i.iy, %i.im
  %i.iz = fmul double %i.iy, 1.100000e+01
  %18 = fsub double %i.iz, %i.in
  %i.ja = fmul double %i.iw, 5.000000e-01
  %i.jb = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.jc = insertelement <2 x double> %i.jb, double %18, i64 1
  %i.jd = fadd <2 x double> %i.jc, <double -5.000000e+00, double 4.700000e+01> ; 2 uses
  %i.je = extractelement <2 x double> %i.jd, i64 0
  %i.jf = fmul double %i.je, %i.iw
  %i.jg = fmul double %i.jf, 5.000000e-01
  %i.jh = insertelement <2 x double> poison, double %0, i64 0
  %i.ji = insertelement <2 x double> %i.jh, double %17, i64 1
  %i.jj = fadd <2 x double> %i.ji, <double -2.000000e+00, double 7.000000e+00>
  %i.jk = insertelement <2 x double> poison, double %i.iv, i64 0
  %i.jl = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = fmul <2 x double> %i.jj, %i.jl          ; 2 uses
  %i.jn = insertelement <2 x double> poison, double %i.ja, i64 0
  %i.jo = fmul <2 x double> %i.jd, <double 5.000000e-01, double 1.000000e+00>
  %i.jp = fdiv <2 x double> %i.jo, <double 1.000000e+00, double 6.000000e+00>
  %i.jq = insertelement <2 x double> poison, double %i.hz, i64 0
  %i.jr = fmul double %13, 2.500000e-01
  %i.js = fmul double %i.ip, %i.ix
  %i.jt = fmul double %i.iy, 3.000000e+00
  %i.ju = fmul double %0, 1.300000e+01
  %i.jv = fsub double %i.ju, %i.jt
  %i.jw = fadd double %i.jv, -1.300000e+01
  %i.jx = fmul double %i.jw, %i.iw
  %i.jy = fmul double %14, 2.000000e+00
  %i.jz = fmul double %i.iy, 2.500000e+01
  %i.ka = fsub double %i.jy, %i.jz
  %i.kb = fadd double %i.iq, %i.ka
  %i.kc = fadd double %i.kb, -6.100000e+01
  %i.kd = fmul double %i.kc, %i.iv
  %i.ke = fmul double %i.kd, 5.000000e-01
  %i.kf = fmul double %14, 2.500000e+01
  %i.kg = fmul double %i.iy, 1.950000e+02
  %i.kh = fsub double %i.kf, %i.kg
  %i.ki = fadd double %i.ir, %i.kh
  %i.kj = fadd double %i.ki, -3.790000e+02
  %i.kk = fsub double %i.iv, %i.ih
  %i.kl = insertelement <4 x double> poison, double %i.ix, i64 0
  %i.km = insertelement <4 x double> %i.kl, double %i.js, i64 1
  %i.kn = insertelement <4 x double> %i.km, double %i.kj, i64 2
  %i.ko = insertelement <4 x double> %i.kn, double %16, i64 3
  %i.kp = insertelement <4 x double> <double 3.000000e+00, double 6.000000e+00, double 1.200000e+01, double poison>, double %i.ih, i64 3
  %i.kq = fdiv <4 x double> %i.ko, %i.kp          ; 4 uses
  %i.kr = extractelement <4 x double> %i.kq, i64 0
  %i.ks = fsub double %i.kr, %i.jg
  %i.kt = insertelement <2 x double> %i.jn, double %i.ks, i64 1 ; 2 uses
  %i.ku = fsub <2 x double> %i.jm, %i.kt
  %i.kv = fadd <2 x double> %i.jm, %i.kt
  %i.kw = shufflevector <2 x double> %i.ku, <2 x double> %i.kv, <2 x i32> <i32 0, i32 3>
  %i.kx = fadd <2 x double> %i.jp, %i.kw
  %i.ky = extractelement <4 x double> %i.kq, i64 1
  %i.kz = fsub double %i.ky, %i.jr
  %i.la = fadd double %i.jx, %i.kz
  %i.lb = fadd double %i.ke, %i.la
  %i.lc = extractelement <4 x double> %i.kq, i64 2
  %i.ld = fadd double %i.lc, %i.lb
  %i.le = fmul double %i.hz, %i.ld
  %i.lf = shufflevector <2 x double> %i.jq, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.lg = shufflevector <2 x double> %i.kx, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lh = fmul <4 x double> %i.lf, %i.lg
  %i.li = insertelement <4 x double> %i.lh, double %i.le, i64 2
  %i.lj = insertelement <4 x double> %i.li, double %i.kk, i64 3 ; 2 uses
  %i.lk = insertelement <4 x double> poison, double %i.is, i64 0
  %i.ll = insertelement <4 x double> %i.lk, double %i.it, i64 1
  %i.lm = insertelement <4 x double> %i.ll, double %i.iu, i64 2
  %i.ln = shufflevector <4 x double> %i.lm, <4 x double> %i.kq, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.lo = fdiv <4 x double> %i.lj, %i.ln          ; 3 uses
  %i.lp = fsub <4 x double> %i.lj, %i.ln
  %shift348 = shufflevector <4 x double> %i.lp, <4 x double> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop349 = fadd <4 x double> %shift348, %i.lo
  %shift351 = shufflevector <4 x double> %i.lo, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop352 = fadd <4 x double> %foldExtExtBinop349, %shift351
  %shift354 = shufflevector <4 x double> %i.lo, <4 x double> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop355 = fadd <4 x double> %foldExtExtBinop352, %shift354
  %i.lq = extractelement <4 x double> %foldExtExtBinop355, i64 0
  br label %bb.av

bb.aa:                                            ; preds = %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit
  %i.lr = call double @log(double noundef %i.hq) #41
  %i.ls = fmul double %i.hz, %i.lr
  %i.lt = fsub double %i.ls, %i.ih
  %i.lu = fsub double 1.000000e+00, %0            ; 2 uses
  %i.lv = fadd double %i.hq, 1.000000e+00
  %i.lw = fdiv double %i.lu, %i.lv
  %i.lx = fadd double %i.lw, 1.000000e+00
  %i.ly = call double @log(double noundef %i.lx) #41
  %i.lz = fsub double %i.lt, %i.ly                ; 2 uses
  %i.ma = call double @log(double noundef %i.lz) #41
  %i.mb = fmul double %i.hz, %i.ma
  %i.mc = fsub double %i.mb, %i.ih
  %i.md = fadd double %i.lz, 1.000000e+00
  %i.me = fdiv double %i.lu, %i.md
  %i.mf = fadd double %i.me, 1.000000e+00
  %i.mg = call double @log(double noundef %i.mf) #41
  %i.mh = fsub double %i.mc, %i.mg
  br label %bb.av

bb.ab:                                            ; preds = %bb.v
  %i.mi = fadd double %0, 1.000000e+00            ; 10 uses
  %i.mj = fmul double %i.mi, f0x3FC3333340000000
  %i.mk = fcmp olt double %i.hq, %i.mj
  br i1 %i.mk, label %bb.ac, label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  %i.ml = fadd double %0, 2.000000e+00            ; 3 uses
  %i.mm = tail call double @log(double noundef %1) #41
  %i.mn = fpext double %i.mi to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.mo = call noundef x86_fp80 @_ZN5boost4math6detail10lgamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_Pi(x86_fp80 noundef %i.mn, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef null) ; 2 uses
  %i.mp = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.mo)
  %i.mq = fcmp ogt x86_fp80 %i.mp, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.mq, label %bb.ad, label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit325

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit325

_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit325: ; preds = %bb.ac, %bb.ad
  %.0.i.i.i324 = fptrunc x86_fp80 %i.mo to double
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.mr = fadd double %i.mm, %.0.i.i.i324         ; 4 uses
  %i.ms = fadd double %i.hq, %i.mr
  %i.mt = fdiv double %i.ms, %0
  %i.mu = call double @exp(double noundef %i.mt) #41 ; 3 uses
  %i.mv = fdiv double %i.mu, %i.mi
  %i.mw = fdiv double %i.mu, %i.ml
  %i.mx = fadd double %i.mw, 1.000000e+00
  %i.my = fmul double %i.mv, %i.mx                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %i.my, ptr %i.c, align 8, !tbaa !82
  %i.mz = fcmp olt double %i.my, -1.000000e+00
  br i1 %i.mz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit325
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.253, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit

bb.af:                                            ; preds = %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit325
  %i.na = fcmp oeq double %i.my, -1.000000e+00
  br i1 %i.na, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.251)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit

bb.ah:                                            ; preds = %bb.af
  %i.nb = call double @log1p(double noundef %i.my) #41
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit

_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit: ; preds = %bb.ae, %bb.ag, %bb.ah
  %.0.i = phi double [ +qnan, %bb.ae ], [ -inf, %bb.ag ], [ %i.nb, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.nc = fadd double %i.mr, %i.mu
  %i.nd = fsub double %i.nc, %.0.i
  %i.ne = fdiv double %i.nd, %0
  %i.nf = call double @exp(double noundef %i.ne) #41 ; 3 uses
  %i.ng = fdiv double %i.nf, %i.mi
  %i.nh = fdiv double %i.nf, %i.ml
  %i.ni = fadd double %i.nh, 1.000000e+00
  %i.nj = fmul double %i.ng, %i.ni                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.nj, ptr %i.b, align 8, !tbaa !82
  %i.nk = fcmp olt double %i.nj, -1.000000e+00
  br i1 %i.nk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.253, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit327

bb.aj:                                            ; preds = %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit
  %i.nl = fcmp oeq double %i.nj, -1.000000e+00
  br i1 %i.nl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.251)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit327

bb.al:                                            ; preds = %bb.aj
  %i.nm = call double @log1p(double noundef %i.nj) #41
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit327

_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit327: ; preds = %bb.ai, %bb.ak, %bb.al
  %.0.i326 = phi double [ +qnan, %bb.ai ], [ -inf, %bb.ak ], [ %i.nm, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.nn = fadd double %i.mr, %i.nf
  %i.no = fsub double %i.nn, %.0.i326
  %i.np = fdiv double %i.no, %0
  %i.nq = call double @exp(double noundef %i.np) #41 ; 4 uses
  %i.nr = fdiv double %i.nq, %i.mi
  %i.ns = fdiv double %i.nq, %i.ml
  %i.nt = fadd double %0, 3.000000e+00
  %i.nu = fdiv double %i.nq, %i.nt
  %i.nv = fadd double %i.nu, 1.000000e+00
  %i.nw = fmul double %i.ns, %i.nv
  %i.nx = fadd double %i.nw, 1.000000e+00
  %i.ny = fmul double %i.nr, %i.nx                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.ny, ptr %i.a, align 8, !tbaa !82
  %i.nz = fcmp olt double %i.ny, -1.000000e+00
  br i1 %i.nz, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit327
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.253, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit329

bb.an:                                            ; preds = %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit327
  %i.oa = fcmp oeq double %i.ny, -1.000000e+00
  br i1 %i.oa, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.251)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit329

bb.ap:                                            ; preds = %bb.an
  %i.ob = call double @log1p(double noundef %i.ny) #41
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit329

_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit329: ; preds = %bb.am, %bb.ao, %bb.ap
  %.0.i328 = phi double [ +qnan, %bb.am ], [ -inf, %bb.ao ], [ %i.ob, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.oc = fadd double %i.mr, %i.nq
  %i.od = fsub double %i.oc, %.0.i328
  %i.oe = fdiv double %i.od, %0
  %i.of = call double @exp(double noundef %i.oe) #41
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit329, %bb.ab
  %.0308 = phi double [ %i.of, %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit329 ], [ %i.hq, %bb.ab ] ; 8 uses
  %i.og = fmul double %i.mi, 1.000000e-02
  %i.oh = fcmp ole double %.0308, %i.og
  %i.oi = fmul double %i.mi, f0x3FE6666666666666
  %i.oj = fcmp ogt double %.0308, %i.oi
  %or.cond321 = or i1 %i.oh, %i.oj
  br i1 %or.cond321, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.ok = fmul double %i.mi, 2.000000e-03
  %i.ol = fcmp ugt double %.0308, %i.ok
  br i1 %i.ol, label %bb.av, label %bb.as
end_hunk_0
