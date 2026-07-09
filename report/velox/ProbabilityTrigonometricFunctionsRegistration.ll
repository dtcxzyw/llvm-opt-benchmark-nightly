inline.NumInlined: 54764
inline.NumDeleted: 11386
loop-unroll.NumCompletelyUnrolled: 843
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 896
begin_hunk_0_@_ZN5boost4math6detail15gamma_p_inv_impIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_RKT0_:bb.a
bb.i:                                             ; preds = %bb.h
  %i.q = call noundef double @_ZN5boost4math18gamma_p_derivativeIddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeES8_S9_RKT1_(double noundef %0, double noundef %.022, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.r = call double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp ogt double %i.r, f0x4190000000000000
  br i1 %i.s, label %bb.j, label %_ZN5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEC2Eddb.exit

bb.j:                                             ; preds = %bb.i
  br label %_ZN5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEC2Eddb.exit

_ZN5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEC2Eddb.exit: ; preds = %bb.j, %bb.i, %bb.h
  %.1 = phi i32 [ 51, %bb.j ], [ 25, %bb.i ], [ 25, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  store i64 200, ptr %i.e, align 8, !tbaa !258
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
  %i.v = load i64, ptr %i.e, align 8, !tbaa !258  ; 2 uses
  %.not.i = icmp ult i64 %i.v, 200
  br i1 %.not.i, label %_ZN5boost4math8policies21check_root_iterationsIdNS1_6policyINS1_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEvPKcmRKT0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEC2Eddb.exit
  %i.w = load ptr, ptr @_ZZN5boost4math6detail15gamma_p_inv_impIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_RKT0_E8function, align 8, !tbaa !885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.x = uitofp i64 %i.v to double
  store double %i.x, ptr %i.a, align 8, !tbaa !183
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
  store i8 0, ptr %4, align 1, !tbaa !257
  %i.d = fcmp oeq double %0, 1.000000e+00
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call double @log(double noundef %2) #41, !tbaa !3
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
  %i.v = call double @pow(double noundef %i.t, double noundef %i.u) #41, !tbaa !3
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.w = fdiv double %2, %0
  %i.x = fsub double f0xBFE2788CFC6FB619, %i.w
  %i.y = call double @exp(double noundef %i.x) #41, !tbaa !3
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
  %i.ag = call double @exp(double noundef %i.af) #41, !tbaa !3 ; 3 uses
  %i.ah = call double @exp(double noundef %i.ag) #41, !tbaa !3
  %i.ai = fmul double %i.ag, %i.ah
  %i.aj = call double @exp(double noundef %i.ai) #41, !tbaa !3
  %i.ak = fmul double %i.ag, %i.aj
  br label %bb.av

bb.m:                                             ; preds = %bb.k
  %i.al = fcmp ogt double %i.l, 1.500000e-01
  %or.cond7 = or i1 %i.o, %i.al
  br i1 %or.cond7, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = call double @log(double noundef %i.l) #41, !tbaa !3
  %i.an = fneg double %i.am                       ; 3 uses
  %i.ao = fsub double 1.000000e+00, %0            ; 3 uses
  %i.ap = call double @log(double noundef %i.an) #41, !tbaa !3
  %i.aq = fmul double %i.ao, %i.ap
  %i.ar = fsub double %i.an, %i.aq                ; 2 uses
  %i.as = call double @log(double noundef %i.ar) #41, !tbaa !3
  %i.at = fmul double %i.ao, %i.as
  %i.au = fsub double %i.an, %i.at
  %i.av = fadd double %i.ar, 1.000000e+00
  %i.aw = fdiv double %i.ao, %i.av
  %i.ax = fadd double %i.aw, 1.000000e+00
  %i.ay = call double @log(double noundef %i.ax) #41, !tbaa !3
  %i.az = fsub double %i.au, %i.ay
  br label %bb.av

bb.o:                                             ; preds = %bb.m
  %i.ba = fcmp ogt double %i.l, 1.000000e-01
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = call double @llvm.log.f64(double %i.l), !tbaa !3
  %i.bc = fneg double %i.bb                       ; 3 uses
  %i.bd = fsub double 1.000000e+00, %0            ; 2 uses
  %i.be = call double @log(double noundef %i.bc) #41, !tbaa !3
  %i.bf = fmul double %i.bd, %i.be
  %i.bg = fsub double %i.bc, %i.bf                ; 5 uses
  %i.bh = call double @log(double noundef %i.bg) #41, !tbaa !3
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
  %i.bx = call double @log(double noundef %i.bw) #41, !tbaa !3
  %i.by = fsub double %i.bj, %i.bx
  br label %bb.av

bb.q:                                             ; preds = %bb.o
  %13 = fadd nnan double %0, -2.000000e+00
  %14 = insertelement <2 x double> poison, double %0, i64 0 ; 2 uses
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %16 = fmul nnan <2 x double> %15, <double 3.000000e+00, double 1.100000e+01>
  %i.bz = fmul nnan double %0, 6.000000e+00
  %i.ca = fmul nnan double %0, 7.200000e+01
  %17 = call double @log(double noundef %i.l) #41, !tbaa !3 ; 5 uses
  %18 = fneg double %17                           ; 2 uses
  %19 = call double @log(double noundef %18) #41, !tbaa !3
  %i.cb = fmul double %17, %17                    ; 4 uses
  %i.cc = fmul double %i.cb, %18
  %i.cd = fmul double %i.cb, %i.cb
  %20 = fadd <2 x double> %16, <double -5.000000e+00, double -1.700000e+01> ; 2 uses
  %i.ce = fadd double %0, -1.000000e+00           ; 4 uses
  %21 = insertelement <2 x double> %14, double 1.000000e+00, i64 1
  %22 = fmul <2 x double> %15, %21                ; 2 uses
  %23 = extractelement <2 x double> %22, i64 0    ; 5 uses
  %i.cf = fmul nnan double %23, 3.000000e+00
  %24 = fmul nnan double %0, 1.300000e+01
  %25 = fmul double %i.ce, %19                    ; 7 uses
  %26 = fsub double %24, %i.cf
  %i.cg = fmul double %25, %25                    ; 5 uses
  %27 = fmul double %i.cg, %i.cg
  %i.ch = fmul double %0, %23                     ; 2 uses
  %i.ci = fadd double %25, 1.000000e+00
  %i.cj = fmul double %i.ce, %i.ci
  %i.ck = fmul double %i.cg, 5.000000e-01
  %i.cl = fmul double %13, %25
  %28 = extractelement <2 x double> %20, i64 0
  %i.cm = fmul nnan double %28, 5.000000e-01
  %29 = fsub double %23, %i.bz
  %30 = fadd double %29, 7.000000e+00
  %31 = fmul nnan <2 x double> %22, <double 1.100000e+01, double 4.770000e+02> ; 2 uses
  %i.cn = fmul double %27, 2.500000e-01
  %32 = insertelement <2 x double> poison, double %i.cg, i64 0
  %33 = insertelement <2 x double> %32, double %26, i64 1
  %34 = fadd <2 x double> %33, <double -0.000000e+00, double -1.300000e+01>
  %35 = insertelement <2 x double> poison, double %25, i64 0
  %36 = insertelement <2 x double> %35, double %i.cg, i64 1 ; 3 uses
  %37 = fmul <2 x double> %36, %34                ; 2 uses
  %38 = shufflevector <2 x double> %36, <2 x double> %37, <2 x i32> <i32 1, i32 2>
  %39 = fmul <2 x double> %20, %38
  %i.co = fdiv <2 x double> %39, <double 1.000000e+00, double 6.000000e+00> ; 2 uses
  %40 = insertelement <2 x double> <double 5.000000e-01, double poison>, double %i.cn, i64 1 ; 2 uses
  %41 = fmul <2 x double> %i.co, %40
  %42 = fsub <2 x double> %i.co, %40
  %43 = shufflevector <2 x double> %41, <2 x double> %42, <2 x i32> <i32 0, i32 3> ; 2 uses
  %44 = fdiv <2 x double> %37, <double 3.000000e+00, double 1.000000e+00> ; 2 uses
  %45 = fsub <2 x double> %44, %43
  %46 = fadd <2 x double> %44, %43
  %47 = shufflevector <2 x double> %45, <2 x double> %46, <2 x i32> <i32 0, i32 3>
  %i.cp = fmul double %i.ch, 2.000000e+00
  %i.cq = fmul nnan double %23, 2.500000e+01
  %i.cr = fsub double %i.cp, %i.cq
  %48 = fadd double %i.ca, %i.cr
  %49 = fadd double %48, -6.100000e+01
  %i.cs = fmul double %49, %25
  %i.ct = insertelement <2 x double> %36, double %i.cs, i64 1
  %i.cu = insertelement <2 x double> <double poison, double 5.000000e-01>, double %30, i64 0
  %50 = fmul <2 x double> %i.ct, %i.cu
  %51 = fmul double %i.ch, 2.500000e+01
  %i.cv = fmul nnan double %23, 1.950000e+02
  %52 = fsub double %51, %i.cv
  %i.cw = fmul nnan double %0, 4.600000e+01
  %53 = insertelement <2 x double> poison, double %i.cw, i64 0
  %54 = insertelement <2 x double> %53, double %52, i64 1 ; 2 uses
  %55 = fsub <2 x double> %31, %54
  %56 = fadd <2 x double> %31, %54
  %57 = shufflevector <2 x double> %55, <2 x double> %56, <2 x i32> <i32 0, i32 3>
  %58 = fadd <2 x double> %57, <double 4.700000e+01, double -3.790000e+02>
  %59 = fdiv <2 x double> %58, <double 6.000000e+00, double 1.200000e+01>
  %60 = fsub double %25, %17
  %61 = fadd <2 x double> %50, %47
  %62 = fsub double %i.cl, %i.ck
  %63 = fadd <2 x double> %59, %61
  %64 = fadd double %i.cm, %62
  %65 = fdiv double %i.cj, %17
  %66 = fsub double %60, %65
  %67 = insertelement <2 x double> poison, double %i.ce, i64 0
  %68 = fmul double %i.ce, %64
  %i.cx = insertelement <4 x double> poison, double %68, i64 0
  %69 = shufflevector <2 x double> %67, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %70 = shufflevector <2 x double> %63, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %71 = fmul <4 x double> %69, %70
  %72 = shufflevector <4 x double> %i.cx, <4 x double> %71, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cy = insertelement <4 x double> poison, double %i.cb, i64 0
  %i.cz = insertelement <4 x double> %i.cy, double %i.cc, i64 1
  %i.da = insertelement <4 x double> %i.cz, double %i.cd, i64 2
  %i.db = fdiv <4 x double> %72, %i.da            ; 3 uses
  %73 = extractelement <4 x double> %i.db, i64 0
  %74 = fadd double %66, %73
  %75 = extractelement <4 x double> %i.db, i64 1
  %76 = fadd double %74, %75
  %77 = extractelement <4 x double> %i.db, i64 2
  %78 = fadd double %76, %77                      ; 2 uses
  %i.dc = fcmp olt double %i.l, f0x3A1FB0F6C0000000
  br i1 %i.dc, label %bb.r, label %bb.av

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %4, align 1, !tbaa !257
  br label %bb.av

bb.s:                                             ; preds = %bb.c
  %i.dd = fcmp olt double %1, 5.000000e-01        ; 2 uses
  %..i = select i1 %i.dd, double %1, double %2
  %i.de = tail call double @log(double noundef %..i) #41, !tbaa !3
  %i.df = fmul double %i.de, -2.000000e+00
  %i.dg = tail call double @sqrt(double noundef %i.df) #41, !tbaa !3 ; 7 uses
  %i.dh = fmul double %i.dg, f0x3FCB5803BF955B59
  %i.di = fadd double %i.dh, f0x4011223942E712DF
  %i.dj = fmul double %i.dg, %i.di
  %i.dk = fadd double %i.dj, f0x402752C6AD199457
  %i.dl = fmul double %i.dg, %i.dk
  %i.dm = fadd double %i.dl, f0x400A7D75797930DD
  %i.dn = fmul double %i.dg, %i.dg                ; 3 uses
  %i.do = fmul double %i.dn, f0x3FA27DF0239B16DF
  %i.dp = fadd double %i.do, f0x4019A0AE95000DDE
  %i.dq = fmul double %i.dn, f0x3FF460D978EDD1E0
  %i.dr = fadd double %i.dq, f0x401A7130C88A5C3F
  %i.ds = fmul double %i.dn, %i.dp
  %i.dt = fadd double %i.ds, 1.000000e+00
  %i.du = fmul double %i.dg, %i.dr
  %i.dv = fadd double %i.du, %i.dt
  %i.dw = fdiv double %i.dm, %i.dv
  %i.dx = fsub double %i.dg, %i.dw                ; 2 uses
  %i.dy = fneg double %i.dx
  %.0.i = select i1 %i.dd, double %i.dy, double %i.dx ; 7 uses
  %i.dz = tail call double @sqrt(double noundef %0) #41, !tbaa !3 ; 2 uses
  %i.ea = fmul double %i.dz, %.0.i
  %i.eb = fadd double %0, %i.ea
  %i.ec = fmul double %.0.i, 7.000000e+00
  %i.ed = fmul double %.0.i, 4.330000e+02
  %i.ee = fmul double %.0.i, %.0.i                ; 4 uses
  %i.ef = fmul double %.0.i, %i.ee
  %i.eg = fmul double %i.ee, %i.ee                ; 2 uses
  %i.eh = fmul double %.0.i, %i.eg
  %i.ei = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.eh, i64 1
  %i.ek = fmul <2 x double> %i.ej, <double 3.000000e+00, double 9.000000e+00>
  %i.el = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.em = insertelement <2 x double> %i.el, double %i.ef, i64 1 ; 2 uses
  %i.en = fmul <2 x double> %i.em, <double 7.000000e+00, double 2.560000e+02>
  %i.eo = fadd <2 x double> %i.en, %i.ek
  %i.ep = shufflevector <2 x double> %i.em, <2 x double> %i.eo, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.eq = insertelement <4 x double> <double -1.000000e+00, double poison, double -1.600000e+01, double poison>, double %i.ec, i64 1
  %i.er = insertelement <4 x double> %i.eq, double %i.ed, i64 3 ; 2 uses
  %79 = fadd <4 x double> %i.ep, %i.er
  %i.es = fsub <4 x double> %i.ep, %i.er
  %80 = shufflevector <4 x double> %79, <4 x double> %i.es, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %.scalar = fmul double %0, 3.888000e+04
  %i.et = insertelement <4 x double> <double 3.000000e+00, double 3.600000e+01, double 8.100000e+02, double poison>, double %.scalar, i64 3
  %i.eu = insertelement <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, double %i.dz, i64 1
  %i.ev = insertelement <4 x double> %i.eu, double %0, i64 2
  %i.ew = shufflevector <4 x double> %i.ev, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ex = fmul <4 x double> %i.et, %i.ew
  %i.ey = fdiv <4 x double> %80, %i.ex            ; 4 uses
  %i.ez = extractelement <4 x double> %i.ey, i64 0
  %i.fa = fadd double %i.eb, %i.ez
  %i.fb = extractelement <4 x double> %i.ey, i64 1
  %i.fc = fadd double %i.fa, %i.fb
  %i.fd = extractelement <4 x double> %i.ey, i64 2
  %i.fe = fsub double %i.fc, %i.fd
  %i.ff = extractelement <4 x double> %i.ey, i64 3
  %i.fg = fadd double %i.fe, %i.ff                ; 9 uses
  %i.fh = fcmp ult double %0, 5.000000e+02
  br i1 %i.fh, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fi = fdiv double %i.fg, %0
  %i.fj = fsub double 1.000000e+00, %i.fi
  %i.fk = tail call double @llvm.fabs.f64(double %i.fj)
  %i.fl = fcmp olt double %i.fk, f0x3EB0C6F7A0B5ED8D
  br i1 %i.fl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %4, align 1, !tbaa !257
  br label %bb.av

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.fm = fcmp ogt double %1, 5.000000e-01
  br i1 %i.fm, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.fn = fmul double %0, 3.000000e+00            ; 2 uses
  %i.fo = fcmp olt double %i.fg, %i.fn
  br i1 %i.fo, label %bb.av, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.scalar342 = fadd double %0, -1.000000e+00     ; 6 uses
  %i.fp = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.scalar342, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fr = fmul double %0, %.scalar342             ; 2 uses
  %i.fs = fcmp ogt double %i.fr, 2.000000e+00
  %.sroa.speculated = select i1 %i.fs, double %i.fr, double 2.000000e+00
  %i.ft = fpext double %0 to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.fu = call noundef x86_fp80 @_ZN5boost4math6detail10lgamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_Pi(x86_fp80 noundef %i.ft, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef null) ; 2 uses
  %i.fv = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.fu)
  %i.fw = fcmp ogt x86_fp80 %i.fv, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.fw, label %bb.y, label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit

_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit: ; preds = %bb.x, %bb.y
  %.0.i.i.i323 = fptrunc x86_fp80 %i.fu to double
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %i.fx = call double @log(double noundef %2) #41, !tbaa !3
  %i.fy = fadd double %i.fx, %.0.i.i.i323         ; 8 uses
  %i.fz = fmul nnan double %.sroa.speculated, -2.300000e+00
  %i.ga = fcmp olt double %i.fy, %i.fz
  br i1 %i.ga, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit
  %i.gb = fneg double %i.fy                       ; 2 uses
  %i.gc = call double @log(double noundef %i.gb) #41, !tbaa !3
  %i.gd = fmul double %0, 6.000000e+00
  %i.ge = fmul double %0, 4.600000e+01
  %i.gf = fmul double %0, 1.100000e+01
  %i.gg = fadd double %i.gf, -1.700000e+01
  %i.gh = fmul double %0, 7.200000e+01
  %i.gi = fmul double %0, 4.770000e+02
  %i.gj = fmul double %.scalar342, %i.gc          ; 7 uses
  %i.gk = fmul double %0, %0                      ; 6 uses
  %i.gl = fmul double %0, %i.gk                   ; 2 uses
  %i.gm = fadd double %i.gj, 1.000000e+00
  %i.gn = fsub double %i.gk, %i.gd
  %i.go = fmul double %i.gk, 1.100000e+01
  %i.gp = fsub double %i.go, %i.ge
  %i.gq = fmul double %i.gk, 3.000000e+00
  %i.gr = fmul double %0, 1.300000e+01
  %i.gs = fsub double %i.gr, %i.gq
  %i.gt = fadd double %i.gs, -1.300000e+01
  %i.gu = fmul double %i.gl, 2.000000e+00
  %i.gv = fmul double %i.gk, 2.500000e+01
  %i.gw = fsub double %i.gu, %i.gv
  %i.gx = fadd double %i.gh, %i.gw
  %i.gy = fadd double %i.gx, -6.100000e+01
  %i.gz = fmul double %i.gy, %i.gj
  %i.ha = fmul double %i.gz, 5.000000e-01
  %i.hb = fmul double %i.gl, 2.500000e+01
  %i.hc = fmul double %i.gk, 1.950000e+02
  %i.hd = fsub double %i.hb, %i.hc
  %i.he = fadd double %i.gi, %i.hd
  %i.hf = fmul double %i.fy, %i.fy                ; 4 uses
  %i.hg = fmul double %i.hf, %i.gb
  %i.hh = fmul double %i.hf, %i.hf
  %i.hi = fsub double %i.gj, %i.fy
  %i.hj = fmul double %i.gj, %i.gj                ; 6 uses
  %i.hk = fmul double %i.hj, %i.hj
  %i.hl = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.hm = insertelement <2 x double> %i.hl, double %i.gp, i64 1
  %i.hn = fadd <2 x double> %i.hm, <double -5.000000e+00, double 4.700000e+01> ; 2 uses
  %i.ho = extractelement <2 x double> %i.hn, i64 0
  %i.hp = fmul double %i.ho, %i.hj
  %i.hq = fmul double %i.hp, 5.000000e-01
  %i.hr = fmul double %i.hj, 5.000000e-01
  %i.hs = insertelement <2 x double> poison, double %0, i64 0
  %i.ht = insertelement <2 x double> %i.hs, double %i.gn, i64 1
  %i.hu = fadd <2 x double> %i.ht, <double -2.000000e+00, double 7.000000e+00>
  %i.hv = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x double> %i.hu, %i.hw          ; 2 uses
  %i.hy = fmul <2 x double> %i.hn, <double 5.000000e-01, double 1.000000e+00>
  %i.hz = fmul double %i.hk, 2.500000e-01
  %i.ia = fmul double %i.gt, %i.hj
  %i.ib = fdiv <2 x double> %i.hy, <double 1.000000e+00, double 6.000000e+00>
  %i.ic = insertelement <2 x double> poison, double %i.hr, i64 0
  %i.id = fmul double %.scalar342, %i.gm
  %i.ie = fadd double %i.he, -3.790000e+02
  %i.if = fmul double %i.gj, %i.hj                ; 2 uses
  %i.ig = fmul double %i.gg, %i.if
  %i.ih = insertelement <4 x double> poison, double %i.ie, i64 0
  %i.ii = insertelement <4 x double> %i.ih, double %i.if, i64 1
  %i.ij = insertelement <4 x double> %i.ii, double %i.ig, i64 2
  %i.ik = insertelement <4 x double> %i.ij, double %i.id, i64 3
  %i.il = insertelement <4 x double> <double 1.200000e+01, double 3.000000e+00, double 6.000000e+00, double poison>, double %i.fy, i64 3
  %i.im = fdiv <4 x double> %i.ik, %i.il          ; 4 uses
  %i.in = extractelement <4 x double> %i.im, i64 1
  %i.io = fsub double %i.in, %i.hq
  %i.ip = extractelement <4 x double> %i.im, i64 2
  %i.iq = fsub double %i.ip, %i.hz
  %i.ir = fadd double %i.ia, %i.iq
  %i.is = fadd double %i.ha, %i.ir
  %i.it = insertelement <2 x double> %i.ic, double %i.io, i64 1 ; 2 uses
  %i.iu = fsub <2 x double> %i.hx, %i.it
  %i.iv = fadd <2 x double> %i.hx, %i.it
  %i.iw = extractelement <4 x double> %i.im, i64 0
  %i.ix = fadd double %i.iw, %i.is
  %i.iy = shufflevector <2 x double> %i.ib, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.iz = shufflevector <2 x double> %i.iu, <2 x double> %i.iv, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.ja = fadd <4 x double> %i.iy, %i.iz
  %i.jb = insertelement <4 x double> %i.ja, double %i.ix, i64 2
  %i.jc = insertelement <4 x double> %i.jb, double %i.hi, i64 3
  %i.jd = fmul <4 x double> %i.jc, %i.fq          ; 2 uses
  %i.je = insertelement <4 x double> poison, double %i.hf, i64 0
  %i.jf = insertelement <4 x double> %i.je, double %i.hg, i64 1
  %i.jg = insertelement <4 x double> %i.jf, double %i.hh, i64 2
  %i.jh = shufflevector <4 x double> %i.jg, <4 x double> %i.im, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ji = fdiv <4 x double> %i.jd, %i.jh          ; 3 uses
  %i.jj = fsub <4 x double> %i.jd, %i.jh
  %shift.a = shufflevector <4 x double> %i.jj, <4 x double> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop.a = fadd <4 x double> %shift.a, %i.ji
  %shift344 = shufflevector <4 x double> %i.ji, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop345 = fadd <4 x double> %foldExtExtBinop.a, %shift344
  %shift347 = shufflevector <4 x double> %i.ji, <4 x double> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop348 = fadd <4 x double> %foldExtExtBinop345, %shift347
  %i.jk = extractelement <4 x double> %foldExtExtBinop348, i64 0
  br label %bb.av

bb.aa:                                            ; preds = %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit
  %i.jl = call double @log(double noundef %i.fg) #41, !tbaa !3
  %i.jm = fmul double %.scalar342, %i.jl
  %i.jn = fsub double %i.jm, %i.fy
  %i.jo = fsub double 1.000000e+00, %0            ; 2 uses
  %i.jp = fadd double %i.fg, 1.000000e+00
  %i.jq = fdiv double %i.jo, %i.jp
  %i.jr = fadd double %i.jq, 1.000000e+00
  %i.js = call double @log(double noundef %i.jr) #41, !tbaa !3
  %i.jt = fsub double %i.jn, %i.js                ; 2 uses
  %i.ju = call double @log(double noundef %i.jt) #41, !tbaa !3
  %i.jv = fmul double %.scalar342, %i.ju
  %i.jw = fsub double %i.jv, %i.fy
  %i.jx = fadd double %i.jt, 1.000000e+00
  %i.jy = fdiv double %i.jo, %i.jx
  %i.jz = fadd double %i.jy, 1.000000e+00
  %i.ka = call double @log(double noundef %i.jz) #41, !tbaa !3
  %i.kb = fsub double %i.jw, %i.ka
  br label %bb.av

bb.ab:                                            ; preds = %bb.v
  %i.kc = fadd double %0, 1.000000e+00            ; 10 uses
  %i.kd = fmul double %i.kc, f0x3FC3333340000000
  %i.ke = fcmp olt double %i.fg, %i.kd
  br i1 %i.ke, label %bb.ac, label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  %i.kf = fadd double %0, 2.000000e+00            ; 3 uses
  %i.kg = tail call double @log(double noundef %1) #41, !tbaa !3
  %i.kh = fpext double %i.kc to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.ki = call noundef x86_fp80 @_ZN5boost4math6detail10lgamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_Pi(x86_fp80 noundef %i.kh, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef null) ; 2 uses
  %i.kj = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.ki)
  %i.kk = fcmp ogt x86_fp80 %i.kj, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.kk, label %bb.ad, label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit325

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit325

_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit325: ; preds = %bb.ac, %bb.ad
  %.0.i.i.i324 = fptrunc x86_fp80 %i.ki to double
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.kl = fadd double %i.kg, %.0.i.i.i324         ; 4 uses
  %i.km = fadd double %i.fg, %i.kl
  %i.kn = fdiv double %i.km, %0
  %i.ko = call double @exp(double noundef %i.kn) #41, !tbaa !3 ; 3 uses
  %i.kp = fdiv double %i.ko, %i.kc
  %i.kq = fdiv double %i.ko, %i.kf
  %i.kr = fadd double %i.kq, 1.000000e+00
  %i.ks = fmul double %i.kp, %i.kr                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %i.ks, ptr %i.c, align 8, !tbaa !183
  %i.kt = fcmp olt double %i.ks, -1.000000e+00
  br i1 %i.kt, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit325
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.253, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit

bb.af:                                            ; preds = %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit325
  %i.ku = fcmp oeq double %i.ks, -1.000000e+00
  br i1 %i.ku, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.251)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit

bb.ah:                                            ; preds = %bb.af
  %i.kv = call double @log1p(double noundef %i.ks) #41, !tbaa !3
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit

_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit: ; preds = %bb.ae, %bb.ag, %bb.ah
  %.0.i326 = phi double [ +qnan, %bb.ae ], [ -inf, %bb.ag ], [ %i.kv, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.kw = fadd double %i.kl, %i.ko
  %i.kx = fsub double %i.kw, %.0.i326
  %i.ky = fdiv double %i.kx, %0
  %i.kz = call double @exp(double noundef %i.ky) #41, !tbaa !3 ; 3 uses
  %i.la = fdiv double %i.kz, %i.kc
  %i.lb = fdiv double %i.kz, %i.kf
  %i.lc = fadd double %i.lb, 1.000000e+00
  %i.ld = fmul double %i.la, %i.lc                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.ld, ptr %i.b, align 8, !tbaa !183
  %i.le = fcmp olt double %i.ld, -1.000000e+00
  br i1 %i.le, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.253, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit328

bb.aj:                                            ; preds = %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit
  %i.lf = fcmp oeq double %i.ld, -1.000000e+00
  br i1 %i.lf, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.251)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit328

bb.al:                                            ; preds = %bb.aj
  %i.lg = call double @log1p(double noundef %i.ld) #41, !tbaa !3
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit328

_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit328: ; preds = %bb.ai, %bb.ak, %bb.al
  %.0.i327 = phi double [ +qnan, %bb.ai ], [ -inf, %bb.ak ], [ %i.lg, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.lh = fadd double %i.kl, %i.kz
  %i.li = fsub double %i.lh, %.0.i327
  %i.lj = fdiv double %i.li, %0
  %i.lk = call double @exp(double noundef %i.lj) #41, !tbaa !3 ; 4 uses
  %i.ll = fdiv double %i.lk, %i.kc
  %i.lm = fdiv double %i.lk, %i.kf
  %i.ln = fadd double %0, 3.000000e+00
  %i.lo = fdiv double %i.lk, %i.ln
  %i.lp = fadd double %i.lo, 1.000000e+00
  %i.lq = fmul double %i.lm, %i.lp
  %i.lr = fadd double %i.lq, 1.000000e+00
  %i.ls = fmul double %i.ll, %i.lr                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.ls, ptr %i.a, align 8, !tbaa !183
  %i.lt = fcmp olt double %i.ls, -1.000000e+00
  br i1 %i.lt, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit328
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.253, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit330

bb.an:                                            ; preds = %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit328
  %i.lu = fcmp oeq double %i.ls, -1.000000e+00
  br i1 %i.lu, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.251)
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit330

bb.ap:                                            ; preds = %bb.an
  %i.lv = call double @log1p(double noundef %i.ls) #41, !tbaa !3
  br label %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit330

_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit330: ; preds = %bb.am, %bb.ao, %bb.ap
  %.0.i329 = phi double [ +qnan, %bb.am ], [ -inf, %bb.ao ], [ %i.lv, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.lw = fadd double %i.kl, %i.lk
  %i.lx = fsub double %i.lw, %.0.i329
  %i.ly = fdiv double %i.lx, %0
  %i.lz = call double @exp(double noundef %i.ly) #41, !tbaa !3
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit330, %bb.ab
  %.0309 = phi double [ %i.lz, %_ZN5boost4math5log1pINS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEEddRKT_.exit330 ], [ %i.fg, %bb.ab ] ; 8 uses
  %i.ma = fmul double %i.kc, 1.000000e-02
  %i.mb = fcmp ole double %.0309, %i.ma
  %i.mc = fmul double %i.kc, f0x3FE6666666666666
  %i.md = fcmp ogt double %.0309, %i.mc
  %or.cond321 = or i1 %i.mb, %i.md
  br i1 %or.cond321, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.me = fmul double %i.kc, 2.000000e-03
  %i.mf = fcmp ugt double %.0309, %i.me
  br i1 %i.mf, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i8 1, ptr %4, align 1, !tbaa !257
  br label %bb.av

bb.at:                                            ; preds = %bb.aq
  %i.mg = fdiv double %.0309, %i.kc               ; 2 uses
  %i.mh = fadd double %i.mg, 1.000000e+00
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.at
  %.024.i = phi i32 [ %i.mo, %.lr.ph.i ], [ 2, %bb.at ] ; 3 uses
  %.01623.i = phi double [ %i.ml, %.lr.ph.i ], [ %i.mg, %bb.at ]
  %.01722.i = phi double [ %i.mm, %.lr.ph.i ], [ %i.mh, %bb.at ]
  %i.mi = uitofp nneg i32 %.024.i to double
  %i.mj = fadd double %0, %i.mi
  %i.mk = fdiv double %.0309, %i.mj
  %i.ml = fmul double %.01623.i, %i.mk            ; 3 uses
  %i.mm = fadd double %.01722.i, %i.ml            ; 2 uses
  %i.mn = fcmp olt double %i.ml, 1.000000e-04
  %i.mo = add nuw nsw i32 %.024.i, 1
  %.not20.i = icmp samesign ugt i32 %.024.i, 99
  %or.cond.i = or i1 %.not20.i, %i.mn
  br i1 %or.cond.i, label %_ZN5boost4math6detail11didonato_SNIdEET_S3_S3_jS3_.exit, label %.lr.ph.i, !llvm.loop !21285

_ZN5boost4math6detail11didonato_SNIdEET_S3_S3_jS3_.exit: ; preds = %.lr.ph.i
  %i.mp = call double @log(double noundef %i.mm) #41, !tbaa !3 ; 2 uses
  %i.mq = call double @log(double noundef %1) #41, !tbaa !3
  %i.mr = fpext double %i.kc to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.ms = call noundef x86_fp80 @_ZN5boost4math6detail10lgamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_Pi(x86_fp80 noundef %i.mr, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef null) ; 2 uses
  %i.mt = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.ms)
  %i.mu = fcmp ogt x86_fp80 %i.mt, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.mu, label %bb.au, label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit332

bb.au:                                            ; preds = %_ZN5boost4math6detail11didonato_SNIdEET_S3_S3_jS3_.exit
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit332

_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit332: ; preds = %_ZN5boost4math6detail11didonato_SNIdEET_S3_S3_jS3_.exit, %bb.au
  %.0.i.i.i331 = fptrunc x86_fp80 %i.ms to double
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.mv = fadd double %i.mq, %.0.i.i.i331         ; 2 uses
  %i.mw = fadd double %.0309, %i.mv
  %i.mx = fsub double %i.mw, %i.mp
  %i.my = fdiv double %i.mx, %0
  %i.mz = call double @exp(double noundef %i.my) #41, !tbaa !3 ; 4 uses
  %i.na = call double @log(double noundef %i.mz) #41, !tbaa !3
  %i.nb = fmul double %0, %i.na
  %i.nc = fsub double %i.nb, %i.mz
  %i.nd = fsub double %i.nc, %i.mv
  %i.ne = fadd double %i.mp, %i.nd
  %i.nf = fsub double %0, %i.mz
  %i.ng = fdiv double %i.ne, %i.nf
  %i.nh = fsub double 1.000000e+00, %i.ng
  %i.ni = fmul double %i.mz, %i.nh
  br label %bb.av

bb.av:                                            ; preds = %bb.u, %bb.w, %bb.aa, %bb.z, %bb.ar, %bb.as, %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit332, %bb.j, %bb.n, %bb.p, %bb.l, %bb.r, %bb.q, %bb.b
  %.4 = phi double [ %i.f, %bb.b ], [ %78, %bb.q ], [ %i.ac, %bb.j ], [ %i.ak, %bb.l ], [ %i.az, %bb.n ], [ %i.by, %bb.p ], [ %78, %bb.r ], [ %i.fg, %bb.u ], [ %i.kb, %bb.aa ], [ %i.fg, %bb.w ], [ %i.jk, %bb.z ], [ %.0309, %bb.as ], [ %.0309, %bb.ar ], [ %i.ni, %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit332 ]
  ret double %.4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZN5boost4math18gamma_p_derivativeIddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeES8_S9_RKT1_(double noundef %0, double noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #10 comdat {
bb.a:
  %3 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %i.a = fpext double %0 to x86_fp80
  %i.b = fpext double %1 to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.c = call noundef x86_fp80 @_ZN5boost4math6detail22gamma_p_derivative_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_RKT0_(x86_fp80 noundef %i.a, x86_fp80 noundef %i.b, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 2 uses
  %i.d = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.c)
  %i.e = fcmp ogt x86_fp80 %i.d, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.e, label %bb.b, label %_ZN5boost4math8policies22checked_narrowing_castIdNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEeEET_T1_PKc.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math8policies22checked_narrowing_castIdNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEeEET_T1_PKc.exit

_ZN5boost4math8policies22checked_narrowing_castIdNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEeEET_T1_PKc.exit: ; preds = %bb.a, %bb.b
  %.0.i = fptrunc x86_fp80 %i.c to double
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret double %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN5boost4math5tools6detail24second_order_root_finderINS2_11halley_stepENS0_6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEdEET1_T0_SC_SC_SC_iRm(ptr noundef byval(%"struct.boost::math::detail::gamma_p_inverse_func.7001") align 8 %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %6 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %7 = alloca %"class.boost::math::policies::policy", align 1 ; 3 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %8 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %9 = alloca %"class.boost::math::policies::policy", align 1 ; 3 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %10 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %11 = alloca %"class.boost::math::policies::policy", align 1 ; 3 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %12 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %13 = alloca %"class.boost::math::policies::policy", align 1 ; 3 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %14 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %15 = alloca %"class.boost::math::policies::policy", align 1 ; 3 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = alloca double, align 8                   ; 4 uses
  %16 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %17 = alloca %"class.boost::math::policies::policy", align 1 ; 3 uses
  %i.i = alloca x86_fp80, align 16                ; 3 uses
  %18 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %i.j = alloca x86_fp80, align 16                ; 4 uses
  %19 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %i.k = alloca double, align 8                   ; 5 uses
  %i.l = alloca double, align 8                   ; 17 uses
  %i.m = alloca double, align 8                   ; 17 uses
  %i.n = alloca double, align 8                   ; 15 uses
  %i.o = alloca i64, align 8                      ; 14 uses
  store double %1, ptr %i.k, align 8, !tbaa !183
  store double %2, ptr %i.l, align 8, !tbaa !183
  store double %3, ptr %i.m, align 8, !tbaa !183
  %i.p = fcmp ult double %2, %3
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr @_ZZN5boost4math5tools6detail24second_order_root_finderINS2_11halley_stepENS0_6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEdEET1_T0_SC_SC_SC_iRmE8function, align 8, !tbaa !885
  call void @_ZN5boost4math8policies6detail11raise_errorINS0_16evaluation_errorEdEEvPKcS6_RKT0_(ptr noundef %i.q, ptr noundef nonnull @.str.354, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %bb.bi

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #41
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !183
  %i.r = sub nsw i32 1, %4
  %i.s = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.r) #41, !tbaa !3
  %i.t = fmul double %1, 1.000000e+07             ; 2 uses
  %i.u = fcmp olt double %i.t, 1.000000e+07
  %.sroa.speculated = select i1 %i.u, double 1.000000e+07, double %i.t ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #41
  %i.v = load i64, ptr %5, align 8, !tbaa !258
  store i64 %i.v, ptr %i.o, align 8, !tbaa !258
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load double, ptr %0, align 8, !tbaa !21286, !noalias !21288 ; 2 uses
  %.pre196 = load i8, ptr %i.w, align 8, !tbaa !21291, !range !284, !noalias !21288
  %i.y = fpext double %.pre to x86_fp80           ; 2 uses
  %i.z = trunc nuw i8 %.pre196 to i1              ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.bf, %bb.c
  %.0132 = phi double [ %.sroa.speculated, %bb.c ], [ %.7139178, %bb.bf ] ; 3 uses
  %i.aa = phi double [ %1, %bb.c ], [ %.8179, %bb.bf ] ; 27 uses
  %.054 = phi double [ 0.000000e+00, %bb.c ], [ %.256180, %bb.bf ] ; 2 uses
  %.051 = phi double [ 0.000000e+00, %bb.c ], [ %.253181, %bb.bf ] ; 2 uses
  %.047 = phi i8 [ 0, %bb.c ], [ %.4182, %bb.bf ] ; 4 uses
  %.045 = phi double [ %.sroa.speculated, %bb.c ], [ %.146, %bb.bf ] ; 3 uses
  %i.ab = load double, ptr %i.n, align 8, !tbaa !183 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #41, !noalias !21288
  %i.ac = fpext double %i.aa to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41, !noalias !21288
  %i.ad = invoke noundef x86_fp80 @_ZN5boost4math6detail20gamma_incomplete_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_bbRKT0_PSB_(x86_fp80 noundef %i.y, x86_fp80 noundef %i.ac, i1 noundef zeroext true, i1 noundef zeroext %i.z, ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef nonnull %i.j)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41, !noalias !21288
  %i.ae = load x86_fp80, ptr %i.j, align 16, !tbaa !180, !noalias !21288
  %i.af = fptrunc x86_fp80 %i.ae to double        ; 6 uses
  %i.ag = fsub double %.pre, %i.aa
  %i.ah = fadd double %i.ag, -1.000000e+00
  %i.ai = fdiv double %i.ah, %i.aa                ; 3 uses
  %i.aj = call double @llvm.fabs.f64(double %i.ai) ; 2 uses
  %i.ak = fcmp ogt double %i.aj, 1.000000e+00
  br i1 %i.ak, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.noexc
  %i.al = fdiv double f0x7FEFFFFFFFFFFFFF, %i.aj
  %i.am = fcmp olt double %i.al, %i.af
  br i1 %i.am, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = fmul double %i.ai, %i.af
  br label %bb.i

bb.g:                                             ; preds = %.noexc
  %i.ao = fmul double %i.ai, %i.af
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt14overflow_error       ; 3 uses
  %i.aq = extractvalue { ptr, i32 } %i.ap, 1
  %i.ar = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt14overflow_error) #41
  %i.as = icmp eq i32 %i.aq, %i.ar
  br i1 %i.as, label %.thread, label %bb.bh

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.016.i = phi double [ %i.ao, %bb.g ], [ %i.an, %bb.f ], [ f0xFFDFFFFFFFFFFFFF, %bb.e ] ; 3 uses
  %i.at = fneg double %i.af
  %i.au = fneg double %.016.i
  %.1.i = select i1 %i.z, double %i.au, double %.016.i
  %.0.i = select i1 %i.z, double %i.at, double %i.af ; 6 uses
  %i.av = fptrunc x86_fp80 %i.ad to double
  %i.aw = load double, ptr %i.x, align 8, !tbaa !21292, !noalias !21288
  %i.ax = fsub double %i.av, %i.aw                ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #41, !noalias !21288
  store double %i.ax, ptr %i.n, align 8, !tbaa !183
  %i.ay = load i64, ptr %i.o, align 8, !tbaa !258
  %i.az = add i64 %i.ay, -1
  store i64 %i.az, ptr %i.o, align 8, !tbaa !258
  %i.ba = fcmp oeq double %i.ax, 0.000000e+00
  br i1 %i.ba, label %.critedge, label %bb.j

.thread:                                          ; preds = %bb.h
  %i.bb = extractvalue { ptr, i32 } %i.ap, 0
  %i.bc = call ptr @__cxa_begin_catch(ptr %i.bb) #41 ; 0 uses
  %i.bd = load double, ptr %i.m, align 8, !tbaa !183
  %i.be = fcmp ogt double %i.bd, 0.000000e+00
  %i.bf = select i1 %i.be, double f0x7FEFFFFFFFFFFFFF, double f0x8010000000000000
  store double %i.bf, ptr %i.n, align 8, !tbaa !183
  call void @__cxa_end_catch()
  %.pr = load double, ptr %i.n, align 8, !tbaa !183 ; 2 uses
  %i.bg = load i64, ptr %i.o, align 8, !tbaa !258
  %i.bh = add i64 %i.bg, -1
  store i64 %i.bh, ptr %i.o, align 8, !tbaa !258
  %i.bi = fcmp oeq double %.pr, 0.000000e+00
  br i1 %i.bi, label %.critedge, label %.thread146

bb.j:                                             ; preds = %bb.i
  %i.bj = fcmp oeq double %i.af, 0.000000e+00
  br i1 %i.bj, label %.thread146, label %bb.k

.thread146:                                       ; preds = %.thread, %bb.j
  %i.bk = phi double [ %.pr, %.thread ], [ %i.ax, %bb.j ]
  %i.bl = fcmp oeq double %i.ab, 0.000000e+00
  br i1 %i.bl, label %_ZNK5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEclERKd.exit.i, label %_ZN5boost4math5tools6detail22handle_zero_derivativeINS0_6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEdEEvT_RT0_RKSC_SD_SD_SD_SF_SF_.exit

_ZNK5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEclERKd.exit.i: ; preds = %.thread146
  %.sroa.2.0.copyload = load double, ptr %i.x, align 8, !tbaa !183
  %i.bm = load double, ptr %i.l, align 8, !tbaa !183 ; 2 uses
  %i.bn = fcmp oeq double %i.aa, %i.bm
  %i.bo = load double, ptr %i.m, align 8
  %storemerge.i = select i1 %i.bn, double %i.bo, double %i.bm ; 3 uses
  store double %storemerge.i, ptr %i.k, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41, !noalias !21293
  %i.bp = fpext double %storemerge.i to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41, !noalias !21293
  %i.bq = call noundef x86_fp80 @_ZN5boost4math6detail20gamma_incomplete_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_bbRKT0_PSB_(x86_fp80 noundef %i.y, x86_fp80 noundef %i.bp, i1 noundef zeroext true, i1 noundef zeroext %i.z, ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull %i.i), !noalias !21293
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41, !noalias !21293
  %i.br = fptrunc x86_fp80 %i.bq to double
  %i.bs = fsub double %i.br, %.sroa.2.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41, !noalias !21293
  %i.bt = fsub double %storemerge.i, %i.aa
  %.pre197 = load double, ptr %i.n, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail22handle_zero_derivativeINS0_6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEdEEvT_RT0_RKSC_SD_SD_SD_SF_SF_.exit

_ZN5boost4math5tools6detail22handle_zero_derivativeINS0_6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEdEEvT_RT0_RKSC_SD_SD_SD_SF_SF_.exit: ; preds = %.thread146, %_ZNK5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEclERKd.exit.i
  %i.bu = phi double [ %.pre197, %_ZNK5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEclERKd.exit.i ], [ %i.bk, %.thread146 ]
  %.8140 = phi double [ %i.bt, %_ZNK5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEclERKd.exit.i ], [ %.0132, %.thread146 ]
  %i.bv = phi double [ %i.bs, %_ZNK5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEclERKd.exit.i ], [ %i.ab, %.thread146 ]
  %i.bw = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bv, i64 1 ; 2 uses
end_hunk_0
