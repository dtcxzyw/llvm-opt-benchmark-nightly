inline.NumInlined: 54764
inline.NumDeleted: 11386
begin_hunk_0_@_ZN5boost4math6detail18find_inverse_gammaIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_RKT0_Pb:bb.a
  %i.cg = fmul nnan double %0, 7.200000e+01
  %i.ch = fmul nnan double %0, 4.770000e+02
  %i.ci = call double @log(double noundef %i.l) #41, !tbaa !3 ; 5 uses
  %i.cj = fneg double %i.ci                       ; 2 uses
  %i.ck = fadd double %0, -1.000000e+00           ; 5 uses
  %i.cl = call double @log(double noundef %i.cj) #41, !tbaa !3
  %i.cm = fmul double %i.ck, %i.cl                ; 8 uses
  %i.cn = fmul double %i.cm, %i.cm                ; 6 uses
  %i.co = fmul double %i.cm, %i.cn                ; 2 uses
  %i.cp = fmul double %i.cn, %i.cn
  %i.cq = fmul double %0, %0                      ; 6 uses
  %i.cr = fmul double %0, %i.cq                   ; 2 uses
  %i.cs = fadd double %i.cm, 1.000000e+00
  %i.ct = fmul double %i.ck, %i.cs
  %i.cu = fmul double %i.cn, 5.000000e-01
  %i.cv = fmul double %i.bz, %i.cm
  %i.cw = fmul nnan double %i.cb, 5.000000e-01
  %i.cx = fdiv double %i.co, 3.000000e+00
  %i.cy = fmul double %i.cb, %i.cn
  %i.cz = fmul double %i.cy, 5.000000e-01
  %i.da = fsub double %i.cx, %i.cz
  %i.db = fsub double %i.cq, %i.cc
  %i.dc = fadd double %i.db, 7.000000e+00
  %i.dd = fmul double %i.dc, %i.cm
  %i.de = fmul nnan double %i.cq, 1.100000e+01
  %i.df = fsub double %i.de, %i.cd
  %i.dg = fadd double %i.df, 4.700000e+01
  %i.dh = fmul double %i.cp, 2.500000e-01
  %i.di = fmul double %i.cf, %i.co
  %i.dj = fdiv double %i.di, 6.000000e+00
  %i.dk = fsub double %i.dj, %i.dh
  %i.dl = fmul nnan double %i.cq, 3.000000e+00
  %i.dm = fmul nnan double %0, 1.300000e+01
  %i.dn = fsub double %i.dm, %i.dl
  %i.do = fadd double %i.dn, -1.300000e+01
  %i.dp = fmul double %i.do, %i.cn
  %i.dq = fadd double %i.dp, %i.dk
  %i.dr = fmul double %i.cr, 2.000000e+00
  %i.ds = fmul nnan double %i.cq, 2.500000e+01
  %i.dt = fsub double %i.dr, %i.ds
  %i.du = fadd double %i.cg, %i.dt
  %i.dv = fadd double %i.du, -6.100000e+01
  %i.dw = fmul double %i.dv, %i.cm
  %i.dx = fmul double %i.dw, 5.000000e-01
  %i.dy = fmul double %i.cr, 2.500000e+01
  %i.dz = fmul nnan double %i.cq, 1.950000e+02
  %i.ea = fsub double %i.dy, %i.dz
  %i.eb = fadd double %i.ch, %i.ea
  %i.ec = fadd double %i.eb, -3.790000e+02
  %i.ed = fdiv double %i.ec, 1.200000e+01
  %i.ee = fdiv double %i.dg, 6.000000e+00
  %i.ef = fmul double %i.ci, %i.ci                ; 4 uses
  %i.eg = fmul double %i.ef, %i.cj
  %i.eh = fmul double %i.ef, %i.ef
  %i.ei = fsub double %i.cm, %i.ci
  %i.ej = fadd double %i.dx, %i.dq
  %i.ek = fadd double %i.dd, %i.da
  %i.el = fsub double %i.cv, %i.cu
  %i.em = fadd double %i.ed, %i.ej
  %i.en = fadd double %i.ee, %i.ek
  %i.eo = fadd double %i.cw, %i.el
  %i.ep = fdiv double %i.ct, %i.ci
  %i.eq = fsub double %i.ei, %i.ep
  %i.er = fmul double %i.ck, %i.em
  %i.es = fmul double %i.ck, %i.en
  %i.et = fmul double %i.ck, %i.eo
  %i.eu = insertelement <4 x double> poison, double %i.et, i64 0
  %i.ev = insertelement <4 x double> %i.eu, double %i.es, i64 1
  %i.ew = insertelement <4 x double> %i.ev, double %i.er, i64 2
  %i.ex = insertelement <4 x double> poison, double %i.ef, i64 0
  %i.ey = insertelement <4 x double> %i.ex, double %i.eg, i64 1
  %i.ez = insertelement <4 x double> %i.ey, double %i.eh, i64 2
  %i.fa = fdiv <4 x double> %i.ew, %i.ez          ; 3 uses
  %i.fb = extractelement <4 x double> %i.fa, i64 0
  %i.fc = fadd double %i.eq, %i.fb
  %i.fd = extractelement <4 x double> %i.fa, i64 1
  %i.fe = fadd double %i.fc, %i.fd
  %i.ff = extractelement <4 x double> %i.fa, i64 2
  %i.fg = fadd double %i.fe, %i.ff                ; 2 uses
  %i.fh = fcmp olt double %i.l, f0x3A1FB0F6C0000000
  br i1 %i.fh, label %bb.r, label %bb.av

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %4, align 1, !tbaa !257
  br label %bb.av

bb.s:                                             ; preds = %bb.c
  %i.fi = fcmp olt double %1, 5.000000e-01        ; 2 uses
  %..i = select i1 %i.fi, double %1, double %2
  %i.fj = tail call double @log(double noundef %..i) #41, !tbaa !3
  %i.fk = fmul double %i.fj, -2.000000e+00
  %i.fl = tail call double @sqrt(double noundef %i.fk) #41, !tbaa !3 ; 7 uses
  %i.fm = fmul double %i.fl, f0x3FCB5803BF955B59
  %i.fn = fadd double %i.fm, f0x4011223942E712DF
  %i.fo = fmul double %i.fl, %i.fn
  %i.fp = fadd double %i.fo, f0x402752C6AD199457
  %i.fq = fmul double %i.fl, %i.fp
  %i.fr = fadd double %i.fq, f0x400A7D75797930DD
  %i.fs = fmul double %i.fl, %i.fl                ; 3 uses
  %i.ft = fmul double %i.fs, f0x3FA27DF0239B16DF
  %i.fu = fadd double %i.ft, f0x4019A0AE95000DDE
  %i.fv = fmul double %i.fs, f0x3FF460D978EDD1E0
  %i.fw = fadd double %i.fv, f0x401A7130C88A5C3F
  %i.fx = fmul double %i.fs, %i.fu
  %i.fy = fadd double %i.fx, 1.000000e+00
  %i.fz = fmul double %i.fl, %i.fw
  %i.ga = fadd double %i.fz, %i.fy
  %i.gb = fdiv double %i.fr, %i.ga
  %i.gc = fsub double %i.fl, %i.gb                ; 2 uses
  %i.gd = fneg double %i.gc
  %.0.i = select i1 %i.fi, double %i.gd, double %i.gc ; 7 uses
  %i.ge = fmul double %.0.i, %.0.i                ; 5 uses
  %i.gf = fmul double %.0.i, %i.ge                ; 2 uses
  %i.gg = fmul double %i.ge, %i.ge                ; 2 uses
  %i.gh = fmul double %.0.i, %i.gg
  %i.gi = tail call double @sqrt(double noundef %0) #41, !tbaa !3 ; 3 uses
  %i.gj = fmul double %i.gi, %.0.i
  %i.gk = fadd double %0, %i.gj
  %i.gl = fadd double %i.ge, -1.000000e+00
  %i.gm = fdiv double %i.gl, 3.000000e+00
  %i.gn = fadd double %i.gk, %i.gm
  %i.go = fmul double %.0.i, 7.000000e+00
  %i.gp = fsub double %i.gf, %i.go
  %i.gq = fmul double %i.gi, 3.600000e+01
  %i.gr = fdiv double %i.gp, %i.gq
  %i.gs = fadd double %i.gn, %i.gr
  %i.gt = fmul double %i.gg, 3.000000e+00
  %i.gu = fmul double %i.ge, 7.000000e+00
  %i.gv = fadd double %i.gu, %i.gt
  %i.gw = fadd double %i.gv, -1.600000e+01
  %i.gx = fmul double %0, 8.100000e+02
  %i.gy = fdiv double %i.gw, %i.gx
  %i.gz = fsub double %i.gs, %i.gy
  %i.ha = fmul double %i.gh, 9.000000e+00
  %i.hb = fmul double %i.gf, 2.560000e+02
  %i.hc = fadd double %i.hb, %i.ha
  %i.hd = fmul double %.0.i, 4.330000e+02
  %i.he = fsub double %i.hc, %i.hd
  %i.hf = fmul double %0, 3.888000e+04
  %i.hg = fmul double %i.hf, %i.gi
  %i.hh = fdiv double %i.he, %i.hg
  %i.hi = fadd double %i.gz, %i.hh                ; 9 uses
  %i.hj = fcmp ult double %0, 5.000000e+02
  br i1 %i.hj, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hk = fdiv double %i.hi, %0
  %i.hl = fsub double 1.000000e+00, %i.hk
  %i.hm = tail call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp olt double %i.hm, f0x3EB0C6F7A0B5ED8D
  br i1 %i.hn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %4, align 1, !tbaa !257
  br label %bb.av

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.ho = fcmp ogt double %1, 5.000000e-01
  br i1 %i.ho, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.hp = fmul double %0, 3.000000e+00            ; 2 uses
  %i.hq = fcmp olt double %i.hi, %i.hp
  br i1 %i.hq, label %bb.av, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.scalar = fadd double %0, -1.000000e+00        ; 6 uses
  %i.hr = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.scalar, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ht = fmul double %0, %.scalar                ; 2 uses
  %i.hu = fcmp ogt double %i.ht, 2.000000e+00
  %.sroa.speculated = select i1 %i.hu, double %i.ht, double 2.000000e+00
  %i.hv = fpext double %0 to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.hw = call noundef x86_fp80 @_ZN5boost4math6detail10lgamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_Pi(x86_fp80 noundef %i.hv, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef null) ; 2 uses
  %i.hx = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.hw)
  %i.hy = fcmp ogt x86_fp80 %i.hx, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.hy, label %bb.y, label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit

_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit: ; preds = %bb.x, %bb.y
  %.0.i.i.i323 = fptrunc x86_fp80 %i.hw to double
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %i.hz = call double @log(double noundef %2) #41, !tbaa !3
  %i.ia = fadd double %i.hz, %.0.i.i.i323         ; 8 uses
  %i.ib = fmul nnan double %.sroa.speculated, -2.300000e+00
  %i.ic = fcmp olt double %i.ia, %i.ib
  br i1 %i.ic, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit
  %i.id = fneg double %i.ia                       ; 2 uses
  %i.ie = call double @log(double noundef %i.id) #41, !tbaa !3
  %i.if = fadd double %0, -2.000000e+00
  %i.ig = fmul double %0, 1.100000e+01
  %i.ih = fmul double %0, 7.200000e+01
  %i.ii = fmul double %.scalar, %i.ie             ; 8 uses
  %13 = fadd double %i.ii, 1.000000e+00
  %i.ij = fmul double %.scalar, %13
  %i.ik = fmul double %i.if, %i.ii
  %i.il = fmul double %0, 1.300000e+01
  %14 = fmul double %i.ia, %i.ia                  ; 4 uses
  %15 = fmul double %14, %i.id
  %16 = fmul double %14, %14
  %17 = fsub double %i.ii, %i.ia
  %18 = fmul double %0, 6.000000e+00
  %19 = fadd double %i.ig, -1.700000e+01
  %20 = fadd double %i.hp, -5.000000e+00          ; 2 uses
  %i.im = fmul double %i.ii, %i.ii                ; 6 uses
  %i.in = fmul double %i.ii, %i.im                ; 2 uses
  %i.io = fmul double %i.im, %i.im
  %21 = insertelement <2 x double> poison, double %0, i64 0 ; 2 uses
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %23 = insertelement <2 x double> %21, double 1.000000e+00, i64 1
  %24 = fmul <2 x double> %22, %23                ; 2 uses
  %25 = extractelement <2 x double> %24, i64 0    ; 5 uses
  %i.ip = fmul double %0, %25                     ; 2 uses
  %i.iq = fmul double %i.im, 5.000000e-01
  %i.ir = fmul double %20, 5.000000e-01
  %26 = fmul <2 x double> %24, <double 1.100000e+01, double 4.770000e+02> ; 2 uses
  %27 = fmul double %i.io, 2.500000e-01
  %i.is = fmul double %19, %i.in
  %28 = fmul double %20, %i.im
  %29 = fdiv double %i.is, 6.000000e+00
  %30 = fsub double %29, %27
  %i.it = fmul double %28, 5.000000e-01
  %i.iu = fmul double %25, 3.000000e+00
  %31 = fsub double %i.il, %i.iu
  %32 = fadd double %31, -1.300000e+01
  %i.iv = fmul double %32, %i.im
  %i.iw = fdiv double %i.in, 3.000000e+00
  %i.ix = fadd double %i.iv, %30
  %i.iy = fsub double %i.iw, %i.it
  %i.iz = fmul double %i.ip, 2.000000e+00
  %i.ja = fmul double %25, 2.500000e+01
  %i.jb = fsub double %i.iz, %i.ja
  %i.jc = fadd double %i.ih, %i.jb
  %i.jd = fadd double %i.jc, -6.100000e+01
  %i.je = fsub double %25, %18
  %i.jf = fmul double %i.jd, %i.ii
  %i.jg = fadd double %i.je, 7.000000e+00
  %i.jh = fmul double %i.jf, 5.000000e-01
  %i.ji = fmul double %i.jg, %i.ii
  %i.jj = fmul double %i.ip, 2.500000e+01
  %i.jk = fmul double %25, 1.950000e+02
  %i.jl = fsub double %i.jj, %i.jk
  %i.jm = fmul double %0, 4.600000e+01
  %i.jn = insertelement <2 x double> poison, double %i.jm, i64 0
  %i.jo = insertelement <2 x double> %i.jn, double %i.jl, i64 1 ; 2 uses
  %i.jp = fsub <2 x double> %26, %i.jo
  %i.jq = fadd <2 x double> %26, %i.jo
  %i.jr = shufflevector <2 x double> %i.jp, <2 x double> %i.jq, <2 x i32> <i32 0, i32 3>
  %i.js = fadd <2 x double> %i.jr, <double 4.700000e+01, double -3.790000e+02>
  %i.jt = fdiv <2 x double> %i.js, <double 6.000000e+00, double 1.200000e+01>
  %i.ju = fadd double %i.jh, %i.ix
  %i.jv = fadd double %i.ji, %i.iy
  %i.jw = fsub double %i.ik, %i.iq
  %i.jx = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %i.ju, i64 1
  %i.jz = fadd <2 x double> %i.jt, %i.jy
  %i.ka = fadd double %i.ir, %i.jw
  %i.kb = insertelement <4 x double> poison, double %i.ka, i64 0
  %i.kc = shufflevector <2 x double> %i.jz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kd = shufflevector <4 x double> %i.kb, <4 x double> %i.kc, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ke = insertelement <4 x double> %i.kd, double %17, i64 3
  %i.kf = fmul <4 x double> %i.ke, %i.hs          ; 2 uses
  %i.kg = fdiv double %i.ij, %i.ia
  %i.kh = insertelement <4 x double> poison, double %14, i64 0
  %i.ki = insertelement <4 x double> %i.kh, double %15, i64 1
  %i.kj = insertelement <4 x double> %i.ki, double %16, i64 2
  %i.kk = insertelement <4 x double> %i.kj, double %i.kg, i64 3 ; 2 uses
  %i.kl = fdiv <4 x double> %i.kf, %i.kk          ; 3 uses
  %i.km = fsub <4 x double> %i.kf, %i.kk
  %shift = shufflevector <4 x double> %i.km, <4 x double> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x double> %shift, %i.kl
  %shift343 = shufflevector <4 x double> %i.kl, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop344 = fadd <4 x double> %foldExtExtBinop, %shift343
  %shift346 = shufflevector <4 x double> %i.kl, <4 x double> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop347 = fadd <4 x double> %foldExtExtBinop344, %shift346
  %i.kn = extractelement <4 x double> %foldExtExtBinop347, i64 0
  br label %bb.av

bb.aa:                                            ; preds = %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit
  %i.ko = call double @log(double noundef %i.hi) #41, !tbaa !3
  %i.kp = fmul double %.scalar, %i.ko
  %i.kq = fsub double %i.kp, %i.ia
  %i.kr = fsub double 1.000000e+00, %0            ; 2 uses
  %i.ks = fadd double %i.hi, 1.000000e+00
  %i.kt = fdiv double %i.kr, %i.ks
  %i.ku = fadd double %i.kt, 1.000000e+00
  %i.kv = call double @log(double noundef %i.ku) #41, !tbaa !3
  %i.kw = fsub double %i.kq, %i.kv                ; 2 uses
  %i.kx = call double @log(double noundef %i.kw) #41, !tbaa !3
  %i.ky = fmul double %.scalar, %i.kx
  %i.kz = fsub double %i.ky, %i.ia
  %i.la = fadd double %i.kw, 1.000000e+00
  %i.lb = fdiv double %i.kr, %i.la
  %i.lc = fadd double %i.lb, 1.000000e+00
  %i.ld = call double @log(double noundef %i.lc) #41, !tbaa !3
  %i.le = fsub double %i.kz, %i.ld
  br label %bb.av

bb.ab:                                            ; preds = %bb.v
  %i.lf = fadd double %0, 1.000000e+00            ; 10 uses
  %i.lg = fmul double %i.lf, f0x3FC3333340000000
  %i.lh = fcmp olt double %i.hi, %i.lg
  br i1 %i.lh, label %bb.ac, label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  %i.li = fadd double %0, 2.000000e+00            ; 3 uses
  %i.lj = tail call double @log(double noundef %1) #41, !tbaa !3
  %i.lk = fpext double %i.lf to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.ll = call noundef x86_fp80 @_ZN5boost4math6detail10lgamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_Pi(x86_fp80 noundef %i.lk, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef null) ; 2 uses
  %i.lm = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.ll)
  %i.ln = fcmp ogt x86_fp80 %i.lm, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.ln, label %bb.ad, label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit325

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit325

_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit325: ; preds = %bb.ac, %bb.ad
  %.0.i.i.i324 = fptrunc x86_fp80 %i.ll to double
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.lo = fadd double %i.lj, %.0.i.i.i324         ; 4 uses
  %i.lp = fadd double %i.hi, %i.lo
  %i.lq = fdiv double %i.lp, %0
  %i.lr = call double @exp(double noundef %i.lq) #41, !tbaa !3 ; 3 uses
  %i.ls = fdiv double %i.lr, %i.lf
  %i.lt = fdiv double %i.lr, %i.li
  %i.lu = fadd double %i.lt, 1.000000e+00
  %i.lv = fmul double %i.ls, %i.lu                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %i.lv, ptr %i.c, align 8, !tbaa !183
  %i.lw = fcmp olt double %i.lv, -1.000000e+00
  br i1 %i.lw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit325
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.253, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit

bb.af:                                            ; preds = %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit325
  %i.lx = fcmp oeq double %i.lv, -1.000000e+00
  br i1 %i.lx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.251)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit

bb.ah:                                            ; preds = %bb.af
  %i.ly = call double @log1p(double noundef %i.lv) #41, !tbaa !3
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit

_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit: ; preds = %bb.ae, %bb.ag, %bb.ah
  %.0.i326 = phi double [ +qnan, %bb.ae ], [ -inf, %bb.ag ], [ %i.ly, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.lz = fadd double %i.lo, %i.lr
  %i.ma = fsub double %i.lz, %.0.i326
  %i.mb = fdiv double %i.ma, %0
  %i.mc = call double @exp(double noundef %i.mb) #41, !tbaa !3 ; 3 uses
  %i.md = fdiv double %i.mc, %i.lf
  %i.me = fdiv double %i.mc, %i.li
  %i.mf = fadd double %i.me, 1.000000e+00
  %i.mg = fmul double %i.md, %i.mf                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.mg, ptr %i.b, align 8, !tbaa !183
  %i.mh = fcmp olt double %i.mg, -1.000000e+00
  br i1 %i.mh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.253, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit328

bb.aj:                                            ; preds = %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit
  %i.mi = fcmp oeq double %i.mg, -1.000000e+00
  br i1 %i.mi, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.251)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit328

bb.al:                                            ; preds = %bb.aj
  %i.mj = call double @log1p(double noundef %i.mg) #41, !tbaa !3
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit328

_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit328: ; preds = %bb.ai, %bb.ak, %bb.al
  %.0.i327 = phi double [ +qnan, %bb.ai ], [ -inf, %bb.ak ], [ %i.mj, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.mk = fadd double %i.lo, %i.mc
  %i.ml = fsub double %i.mk, %.0.i327
  %i.mm = fdiv double %i.ml, %0
  %i.mn = call double @exp(double noundef %i.mm) #41, !tbaa !3 ; 4 uses
  %i.mo = fdiv double %i.mn, %i.lf
  %i.mp = fdiv double %i.mn, %i.li
  %i.mq = fadd double %0, 3.000000e+00
  %i.mr = fdiv double %i.mn, %i.mq
  %i.ms = fadd double %i.mr, 1.000000e+00
  %i.mt = fmul double %i.mp, %i.ms
  %i.mu = fadd double %i.mt, 1.000000e+00
  %i.mv = fmul double %i.mo, %i.mu                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.mv, ptr %i.a, align 8, !tbaa !183
  %i.mw = fcmp olt double %i.mv, -1.000000e+00
  br i1 %i.mw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit328
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.253, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit330

bb.an:                                            ; preds = %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit328
  %i.mx = fcmp oeq double %i.mv, -1.000000e+00
  br i1 %i.mx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.251)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit330

bb.ap:                                            ; preds = %bb.an
  %i.my = call double @log1p(double noundef %i.mv) #41, !tbaa !3
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit330

_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit330: ; preds = %bb.am, %bb.ao, %bb.ap
  %.0.i329 = phi double [ +qnan, %bb.am ], [ -inf, %bb.ao ], [ %i.my, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.mz = fadd double %i.lo, %i.mn
  %i.na = fsub double %i.mz, %.0.i329
  %i.nb = fdiv double %i.na, %0
  %i.nc = call double @exp(double noundef %i.nb) #41, !tbaa !3
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit330, %bb.ab
  %.0309 = phi double [ %i.nc, %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit330 ], [ %i.hi, %bb.ab ] ; 8 uses
  %i.nd = fmul double %i.lf, 1.000000e-02
  %i.ne = fcmp ole double %.0309, %i.nd
  %i.nf = fmul double %i.lf, f0x3FE6666666666666
  %i.ng = fcmp ogt double %.0309, %i.nf
  %or.cond321 = or i1 %i.ne, %i.ng
  br i1 %or.cond321, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.nh = fmul double %i.lf, 2.000000e-03
  %i.ni = fcmp ugt double %.0309, %i.nh
  br i1 %i.ni, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i8 1, ptr %4, align 1, !tbaa !257
  br label %bb.av

bb.at:                                            ; preds = %bb.aq
  %i.nj = fdiv double %.0309, %i.lf               ; 2 uses
  %i.nk = fadd double %i.nj, 1.000000e+00
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.at
  %.024.i = phi i32 [ %i.nr, %.lr.ph.i ], [ 2, %bb.at ] ; 3 uses
  %.01623.i = phi double [ %i.no, %.lr.ph.i ], [ %i.nj, %bb.at ]
  %.01722.i = phi double [ %i.np, %.lr.ph.i ], [ %i.nk, %bb.at ]
  %i.nl = uitofp nneg i32 %.024.i to double
  %i.nm = fadd double %0, %i.nl
  %i.nn = fdiv double %.0309, %i.nm
  %i.no = fmul double %.01623.i, %i.nn            ; 3 uses
  %i.np = fadd double %.01722.i, %i.no            ; 2 uses
  %i.nq = fcmp olt double %i.no, 1.000000e-04
  %i.nr = add nuw nsw i32 %.024.i, 1
  %.not20.i = icmp samesign ugt i32 %.024.i, 99
  %or.cond.i = or i1 %.not20.i, %i.nq
  br i1 %or.cond.i, label %_ZN5boost4math6detail11didonato_SNIdEET_S3_S3_jS3_.exit, label %.lr.ph.i, !llvm.loop !21277
end_hunk_0
