inline.NumInlined: 54764
inline.NumDeleted: 11386
loop-unroll.NumCompletelyUnrolled: 843
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 896
begin_hunk_0_@_ZN5boost4math6detail15gamma_p_inv_impIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_RKT0_:bb.a
  %i.s = fcmp ogt double %i.r, f0x4190000000000000
  br i1 %i.s, label %bb.j, label %_ZN5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEC2Eddb.exit

bb.j:                                             ; preds = %bb.i
  br label %_ZN5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEC2Eddb.exit

_ZN5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEC2Eddb.exit: ; preds = %bb.j, %bb.i, %bb.h
  %.1 = phi i32 [ 51, %bb.j ], [ 25, %bb.i ], [ 25, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  store i64 200, ptr %i.e, align 8, !tbaa !260
  %i.t = fcmp ogt double %1, 9.000000e-01         ; 2 uses
  %.sroa.2.0 = select i1 %i.t, double %i.n, double %1
  %.sroa.4.0 = zext i1 %i.t to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store double %0, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %.sroa.2.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.u = call noundef double @_ZN5boost4math5tools6detail24second_order_root_finderINS2_11halley_stepENS0_6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEdEET1_T0_SC_SC_SC_iRm(ptr noundef nonnull byval(%"struct.boost::math::detail::gamma_p_inverse_func.7001") align 8 %3, double noundef %.022, double noundef f0x0010000000000000, double noundef f0x7FEFFFFFFFFFFFFF, i32 noundef %.1, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.v = load i64, ptr %i.e, align 8, !tbaa !260  ; 2 uses
  %.not.i = icmp ult i64 %i.v, 200
  br i1 %.not.i, label %_ZN5boost4math8policies21check_root_iterationsIdNS1_6policyINS1_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEvPKcmRKT0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEC2Eddb.exit
  %i.w = load ptr, ptr @_ZZN5boost4math6detail15gamma_p_inv_impIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_RKT0_E8function, align 8, !tbaa !887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.x = uitofp i64 %i.v to double
  store double %i.x, ptr %i.a, align 8, !tbaa !185
  call void @_ZN5boost4math8policies6detail11raise_errorINS0_16evaluation_errorEdEEvPKcS6_RKT0_(ptr noundef %i.w, ptr noundef nonnull @.str.363, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5boost4math8policies21check_root_iterationsIdNS1_6policyINS1_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEvPKcmRKT0_.exit

_ZN5boost4math8policies21check_root_iterationsIdNS1_6policyINS1_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEvPKcmRKT0_.exit: ; preds = %_ZN5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEC2Eddb.exit, %bb.k
  %i.y = fcmp oeq double %i.u, f0x0010000000000000
  %.123 = select i1 %i.y, double 0.000000e+00, double %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %_ZN5boost4math8policies21check_root_iterationsIdNS1_6policyINS1_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEvPKcmRKT0_.exit, %bb.f, %bb.d, %bb.b
  %.021 = phi double [ +qnan, %bb.b ], [ +qnan, %bb.d ], [ +inf, %bb.f ], [ %.123, %_ZN5boost4math8policies21check_root_iterationsIdNS1_6policyINS1_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEvPKcmRKT0_.exit ], [ 0.000000e+00, %bb.g ]
  ret double %.021
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN5boost4math6detail18find_inverse_gammaIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_RKT0_Pb(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) local_unnamed_addr #0 comdat {
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
  store i8 0, ptr %4, align 1, !tbaa !259
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
  %.0308 = phi double [ %i.v, %bb.h ], [ %i.y, %bb.i ] ; 2 uses
  %i.z = fadd double %0, 1.000000e+00
  %i.aa = fdiv double %.0308, %i.z
  %i.ab = fsub double 1.000000e+00, %i.aa
  %i.ac = fdiv double %.0308, %i.ab
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
  %13 = fmul nnan double %0, 1.100000e+01
  %i.ce = fadd nnan double %13, -1.700000e+01
  %14 = fmul nnan double %0, 1.300000e+01
  %i.cf = fmul nnan double %0, 7.200000e+01
  %i.cg = fmul double %i.bz, %i.bz                ; 4 uses
  %15 = fmul double %i.cg, %i.ca
  %i.ch = fmul double %i.cg, %i.cg
  %i.ci = fmul double %0, %0                      ; 6 uses
  %16 = fmul double %0, %i.ci                     ; 2 uses
  %17 = fmul nnan double %i.ci, 1.100000e+01
  %i.cj = fmul double %16, 2.500000e+01
  %i.ck = fmul nnan double %i.ci, 1.950000e+02
  %i.cl = fsub double %i.cj, %i.ck
  %i.cm = fmul nnan double %0, 4.770000e+02
  %18 = fadd double %i.cm, %i.cl
  %i.cn = fadd double %0, -1.000000e+00           ; 3 uses
  %i.co = fadd double %18, -3.790000e+02
  %i.cp = fmul double %i.cn, %i.cb                ; 8 uses
  %i.cq = fmul double %i.cp, %i.cp                ; 6 uses
  %19 = fmul double %i.cp, %i.cq                  ; 2 uses
  %i.cr = fmul double %i.cq, %i.cq
  %i.cs = fadd double %i.cp, 1.000000e+00
  %i.ct = fmul double %i.cq, 5.000000e-01
  %i.cu = fmul double %i.cc, %i.cp
  %20 = fsub double %i.cu, %i.ct
  %21 = fsub double %i.ci, %i.cd
  %i.cv = fadd double %21, 7.000000e+00
  %i.cw = fmul double %i.cv, %i.cp
  %i.cx = fmul double %i.cr, 2.500000e-01
  %i.cy = fmul double %i.ce, %19
  %22 = insertelement <2 x double> poison, double %19, i64 0
  %23 = insertelement <2 x double> %22, double %i.cy, i64 1
  %24 = fdiv <2 x double> %23, <double 3.000000e+00, double 6.000000e+00> ; 2 uses
  %25 = extractelement <2 x double> %24, i64 1
  %i.cz = fsub double %25, %i.cx
  %i.da = fmul nnan double %i.ci, 3.000000e+00
  %26 = fsub double %14, %i.da
  %27 = fadd double %26, -1.300000e+01
  %28 = fmul double %27, %i.cq
  %29 = fadd double %28, %i.cz
  %30 = fmul double %16, 2.000000e+00
  %31 = fmul nnan double %i.ci, 2.500000e+01
  %i.db = fsub double %30, %31
  %32 = fadd double %i.cf, %i.db
  %i.dc = fadd double %32, -6.100000e+01
  %i.dd = fmul double %i.dc, %i.cp
  %i.de = fmul double %i.dd, 5.000000e-01
  %i.df = fadd double %i.de, %29
  %i.dg = fmul double %i.cn, %i.cs
  %i.dh = fmul nnan double %0, 4.600000e+01
  %i.di = fsub double %17, %i.dh
  %i.dj = fmul nnan double %0, 3.000000e+00
  %i.dk = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.di, i64 1
  %i.dm = fadd <2 x double> %i.dl, <double -5.000000e+00, double 4.700000e+01> ; 2 uses
  %i.dn = extractelement <2 x double> %i.dm, i64 0
  %i.do = fmul double %i.dn, %i.cq
  %i.dp = fmul double %i.do, 5.000000e-01
  %i.dq = extractelement <2 x double> %24, i64 0
  %i.dr = fsub double %i.dq, %i.dp
  %i.ds = fadd double %i.cw, %i.dr
  %i.dt = fmul <2 x double> %i.dm, <double 5.000000e-01, double 1.000000e+00>
  %i.du = fsub double %i.cp, %i.bz
  %i.dv = shufflevector <2 x double> %i.dt, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dw = insertelement <4 x double> %i.dv, double %i.co, i64 2
  %i.dx = insertelement <4 x double> %i.dw, double %i.dg, i64 3
  %i.dy = insertelement <4 x double> <double 1.000000e+00, double 6.000000e+00, double 1.200000e+01, double poison>, double %i.bz, i64 3
  %i.dz = fdiv <4 x double> %i.dx, %i.dy
  %i.ea = insertelement <4 x double> <double poison, double poison, double poison, double -0.000000e+00>, double %20, i64 0
  %i.eb = insertelement <4 x double> %i.ea, double %i.ds, i64 1
  %i.ec = insertelement <4 x double> %i.eb, double %i.df, i64 2
  %i.ed = fadd <4 x double> %i.dz, %i.ec          ; 2 uses
  %i.ee = insertelement <4 x double> poison, double %i.cn, i64 0
  %i.ef = insertelement <4 x double> %i.ee, double %i.du, i64 1
  %i.eg = shufflevector <4 x double> %i.ef, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.eh = fmul <4 x double> %i.eg, %i.ed
  %i.ei = fsub <4 x double> %i.eg, %i.ed          ; 2 uses
  %i.ej = shufflevector <4 x double> %i.eh, <4 x double> %i.ei, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ek = insertelement <4 x double> <double poison, double poison, double poison, double 1.000000e+00>, double %i.cg, i64 0
  %i.el = insertelement <4 x double> %i.ek, double %15, i64 1
  %i.em = insertelement <4 x double> %i.el, double %i.ch, i64 2
  %i.en = fdiv <4 x double> %i.ej, %i.em          ; 3 uses
  %shift = shufflevector <4 x double> %i.ei, <4 x double> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x double> %shift, %i.en
  %shift343 = shufflevector <4 x double> %i.en, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop344 = fadd <4 x double> %foldExtExtBinop, %shift343
  %shift346 = shufflevector <4 x double> %i.en, <4 x double> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop347 = fadd <4 x double> %foldExtExtBinop344, %shift346
  %i.eo = extractelement <4 x double> %foldExtExtBinop347, i64 0 ; 2 uses
  %i.ep = fcmp olt double %i.l, f0x3A1FB0F6C0000000
  br i1 %i.ep, label %bb.r, label %bb.av

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %4, align 1, !tbaa !259
  br label %bb.av

bb.s:                                             ; preds = %bb.c
  %i.eq = fcmp olt double %1, 5.000000e-01        ; 2 uses
  %..i = select i1 %i.eq, double %1, double %2
  %i.er = tail call double @log(double noundef %..i) #41
  %i.es = fmul double %i.er, -2.000000e+00
  %i.et = tail call double @sqrt(double noundef %i.es) #41 ; 7 uses
  %i.eu = fmul double %i.et, f0x3FCB5803BF955B59
  %i.ev = fadd double %i.eu, f0x4011223942E712DF
  %i.ew = fmul double %i.et, %i.ev
  %i.ex = fadd double %i.ew, f0x402752C6AD199457
  %i.ey = fmul double %i.et, %i.ex
  %i.ez = fadd double %i.ey, f0x400A7D75797930DD
  %i.fa = fmul double %i.et, %i.et                ; 3 uses
  %i.fb = fmul double %i.fa, f0x3FA27DF0239B16DF
  %i.fc = fadd double %i.fb, f0x4019A0AE95000DDE
  %i.fd = fmul double %i.fa, f0x3FF460D978EDD1E0
  %i.fe = fadd double %i.fd, f0x401A7130C88A5C3F
  %i.ff = fmul double %i.fa, %i.fc
  %i.fg = fadd double %i.ff, 1.000000e+00
  %i.fh = fmul double %i.et, %i.fe
  %i.fi = fadd double %i.fh, %i.fg
  %i.fj = fdiv double %i.ez, %i.fi
  %i.fk = fsub double %i.et, %i.fj                ; 2 uses
  %i.fl = fneg double %i.fk
  %.0.i = select i1 %i.eq, double %i.fl, double %i.fk ; 6 uses
  %i.fm = fmul double %.0.i, %.0.i                ; 5 uses
  %i.fn = fmul double %i.fm, %i.fm                ; 2 uses
  %i.fo = fmul double %.0.i, %i.fn
  %i.fp = tail call double @sqrt(double noundef %0) #41 ; 3 uses
  %i.fq = fmul double %i.fp, %.0.i
  %i.fr = fadd double %0, %i.fq
  %i.fs = fadd double %i.fm, -1.000000e+00
  %i.ft = fdiv double %i.fs, 3.000000e+00
  %i.fu = fadd double %i.fr, %i.ft
  %i.fv = insertelement <2 x double> <double poison, double 3.000000e+00>, double %.0.i, i64 0 ; 2 uses
  %i.fw = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fx = insertelement <2 x double> %i.fw, double %i.fn, i64 1
  %i.fy = fmul <2 x double> %i.fv, %i.fx          ; 3 uses
  %i.fz = insertelement <2 x double> %i.fv, double %i.fm, i64 1
  %i.ga = fmul <2 x double> %i.fz, splat (double 7.000000e+00) ; 2 uses
  %i.gb = fsub <2 x double> %i.fy, %i.ga
  %i.gc = fadd <2 x double> %i.fy, %i.ga
  %i.gd = shufflevector <2 x double> %i.gb, <2 x double> %i.gc, <2 x i32> <i32 0, i32 3>
  %i.ge = fadd <2 x double> %i.gd, <double -0.000000e+00, double -1.600000e+01>
  %i.gf = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %0, i64 1
  %i.gh = fmul <2 x double> %i.gg, <double 3.600000e+01, double 8.100000e+02>
  %i.gi = fdiv <2 x double> %i.ge, %i.gh          ; 2 uses
  %i.gj = extractelement <2 x double> %i.gi, i64 0
  %i.gk = fadd double %i.fu, %i.gj
  %i.gl = extractelement <2 x double> %i.gi, i64 1
  %i.gm = fsub double %i.gk, %i.gl
  %i.gn = fmul double %i.fo, 9.000000e+00
  %i.go = extractelement <2 x double> %i.fy, i64 0
  %i.gp = fmul double %i.go, 2.560000e+02
  %i.gq = fadd double %i.gp, %i.gn
  %i.gr = fmul double %.0.i, 4.330000e+02
  %i.gs = fsub double %i.gq, %i.gr
  %i.gt = fmul double %0, 3.888000e+04
  %i.gu = fmul double %i.gt, %i.fp
  %i.gv = fdiv double %i.gs, %i.gu
  %i.gw = fadd double %i.gm, %i.gv                ; 9 uses
  %i.gx = fcmp ult double %0, 5.000000e+02
  br i1 %i.gx, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gy = fdiv double %i.gw, %0
  %i.gz = fsub double 1.000000e+00, %i.gy
  %i.ha = tail call double @llvm.fabs.f64(double %i.gz)
  %i.hb = fcmp olt double %i.ha, f0x3EB0C6F7A0B5ED8D
  br i1 %i.hb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %4, align 1, !tbaa !259
  br label %bb.av

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.hc = fcmp ogt double %1, 5.000000e-01
  br i1 %i.hc, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.hd = fmul double %0, 3.000000e+00            ; 2 uses
  %i.he = fcmp olt double %i.gw, %i.hd
  br i1 %i.he, label %bb.av, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hf = fadd double %0, -1.000000e+00           ; 7 uses
  %i.hg = fmul double %0, %i.hf                   ; 2 uses
  %i.hh = fcmp ogt double %i.hg, 2.000000e+00
  %.sroa.speculated = select i1 %i.hh, double %i.hg, double 2.000000e+00
  %i.hi = fpext double %0 to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.hj = call noundef x86_fp80 @_ZN5boost4math6detail10lgamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_Pi(x86_fp80 noundef %i.hi, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef null) ; 2 uses
  %i.hk = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.hj)
  %i.hl = fcmp ogt x86_fp80 %i.hk, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.hl, label %bb.y, label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit

_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit: ; preds = %bb.x, %bb.y
  %.0.i.i.i323 = fptrunc x86_fp80 %i.hj to double
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %i.hm = call double @log(double noundef %2) #41
  %i.hn = fadd double %i.hm, %.0.i.i.i323         ; 8 uses
  %i.ho = fmul nnan double %.sroa.speculated, -2.300000e+00
  %i.hp = fcmp olt double %i.hn, %i.ho
  br i1 %i.hp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit
  %i.hq = fneg double %i.hn                       ; 2 uses
  %i.hr = call double @log(double noundef %i.hq) #41
  %i.hs = fmul double %0, 6.000000e+00
  %i.ht = fmul double %0, 4.600000e+01
  %i.hu = fmul double %0, 1.100000e+01
  %i.hv = fadd double %i.hu, -1.700000e+01
  %i.hw = fmul double %0, 7.200000e+01
  %i.hx = fmul double %0, 4.770000e+02
  %i.hy = fmul double %i.hn, %i.hn                ; 4 uses
  %i.hz = fmul double %i.hy, %i.hq
  %i.ia = fmul double %i.hy, %i.hy
  %i.ib = fmul double %i.hf, %i.hr                ; 7 uses
  %i.ic = fmul double %0, %0                      ; 6 uses
  %i.id = fmul double %0, %i.ic                   ; 2 uses
  %i.ie = fadd double %i.ib, 1.000000e+00
  %i.if = fmul double %i.hf, %i.ie
  %i.ig = fsub double %i.ic, %i.hs
  %i.ih = fmul double %i.ic, 1.100000e+01
  %i.ii = fsub double %i.ih, %i.ht
  %i.ij = fmul double %i.ic, 3.000000e+00
  %i.ik = fmul double %0, 1.300000e+01
  %i.il = fsub double %i.ik, %i.ij
  %i.im = fadd double %i.il, -1.300000e+01
  %i.in = fmul double %i.id, 2.000000e+00
  %i.io = fmul double %i.ic, 2.500000e+01
  %i.ip = fsub double %i.in, %i.io
  %i.iq = fadd double %i.hw, %i.ip
  %i.ir = fadd double %i.iq, -6.100000e+01
  %i.is = fmul double %i.ir, %i.ib
  %i.it = fmul double %i.is, 5.000000e-01
  %i.iu = fmul double %i.id, 2.500000e+01
  %i.iv = fmul double %i.ic, 1.950000e+02
  %i.iw = fsub double %i.iu, %i.iv
  %i.ix = fadd double %i.hx, %i.iw
  %i.iy = fadd double %i.ix, -3.790000e+02
  %i.iz = fsub double %i.ib, %i.hn
  %i.ja = fmul double %i.ib, %i.ib                ; 6 uses
  %i.jb = fmul double %i.ib, %i.ja                ; 2 uses
  %i.jc = fmul double %i.ja, %i.ja
  %i.jd = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.je = insertelement <2 x double> %i.jd, double %i.ii, i64 1
  %i.jf = fadd <2 x double> %i.je, <double -5.000000e+00, double 4.700000e+01> ; 2 uses
  %i.jg = extractelement <2 x double> %i.jf, i64 0
  %i.jh = fmul double %i.jg, %i.ja
  %i.ji = fmul double %i.jh, 5.000000e-01
  %i.jj = fmul double %i.ja, 5.000000e-01
  %i.jk = insertelement <2 x double> poison, double %0, i64 0
  %i.jl = insertelement <2 x double> %i.jk, double %i.ig, i64 1
  %i.jm = fadd <2 x double> %i.jl, <double -2.000000e+00, double 7.000000e+00>
  %i.jn = insertelement <2 x double> poison, double %i.ib, i64 0
  %i.jo = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jp = fmul <2 x double> %i.jm, %i.jo          ; 2 uses
  %i.jq = fmul <2 x double> %i.jf, <double 5.000000e-01, double 1.000000e+00>
  %i.jr = fmul double %i.jc, 2.500000e-01
  %i.js = fmul double %i.hv, %i.jb
  %i.jt = fmul double %i.im, %i.ja
  %i.ju = fdiv <2 x double> %i.jq, <double 1.000000e+00, double 6.000000e+00>
  %i.jv = insertelement <2 x double> poison, double %i.jj, i64 0
  %i.jw = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.jx = insertelement <4 x double> poison, double %i.iy, i64 0
  %i.jy = insertelement <4 x double> %i.jx, double %i.jb, i64 1
  %i.jz = insertelement <4 x double> %i.jy, double %i.js, i64 2
  %i.ka = insertelement <4 x double> %i.jz, double %i.if, i64 3
  %i.kb = insertelement <4 x double> <double 1.200000e+01, double 3.000000e+00, double 6.000000e+00, double poison>, double %i.hn, i64 3
  %i.kc = fdiv <4 x double> %i.ka, %i.kb          ; 4 uses
  %i.kd = extractelement <4 x double> %i.kc, i64 1
  %i.ke = fsub double %i.kd, %i.ji
  %i.kf = extractelement <4 x double> %i.kc, i64 2
  %i.kg = fsub double %i.kf, %i.jr
  %i.kh = fadd double %i.jt, %i.kg
  %i.ki = fadd double %i.it, %i.kh
  %i.kj = insertelement <2 x double> %i.jv, double %i.ke, i64 1 ; 2 uses
end_hunk_0
