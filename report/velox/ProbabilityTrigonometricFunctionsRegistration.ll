inline.NumInlined: 54764
inline.NumDeleted: 11386
begin_hunk_0_@_ZN5boost4math6detail20ibeta_derivative_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_:bb.a
bb.q:                                             ; preds = %bb.p
  %i.x = fcmp ogt x86_fp80 %1, 1.000000e+00
  br i1 %i.x, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = fcmp oeq x86_fp80 %1, 1.000000e+00
  br i1 %i.y, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.z = tail call noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeESC_SD_SE_(x86_fp80 noundef %0, x86_fp80 noundef 1.000000e+00)
  %i.aa = fdiv x86_fp80 1.000000e+00, %i.z
  br label %bb.aa

bb.t:                                             ; preds = %bb.r
  %i.ab = load ptr, ptr @_ZZN5boost4math6detail20ibeta_derivative_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_E8function, align 8, !tbaa !884
  tail call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_erroreEEvPKcS6_(ptr noundef %i.ab, ptr noundef nonnull @.str.251)
  br label %bb.aa

bb.u:                                             ; preds = %bb.p
  %i.ac = fsub x86_fp80 1.000000e+00, %2          ; 2 uses
  %i.ad = fmul nnan x86_fp80 %2, %i.ac
  %i.ae = fdiv x86_fp80 1.000000e+00, %i.ad       ; 2 uses
  %i.af = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.ae)
  %i.ag = fcmp oeq x86_fp80 %i.af, +inf
  br i1 %i.ag, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.ah = load ptr, ptr @_ZZN5boost4math6detail20ibeta_derivative_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_E8function, align 8, !tbaa !884
  %i.ai = call noundef x86_fp80 @_ZN5boost4math6detail17ibeta_power_termsIeNS0_7lanczos12lanczos17m64ENS0_8policies6policyINS5_13promote_floatILb0EEENS5_14promote_doubleILb0EEENS5_14default_policyESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EEEET_SD_SD_SD_SD_RKT0_bRKT1_SD_PKc(x86_fp80 noundef %0, x86_fp80 noundef %1, x86_fp80 noundef %2, x86_fp80 noundef %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %3, x86_fp80 noundef %i.ae, ptr noundef %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.aj = fcmp ogt x86_fp80 %0, 1.000000e+00
  br i1 %i.aj, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = fcmp oeq x86_fp80 %0, 1.000000e+00
  br i1 %i.ak, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.al = tail call noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeESC_SD_SE_(x86_fp80 noundef 1.000000e+00, x86_fp80 noundef %1)
  %i.am = fdiv x86_fp80 1.000000e+00, %i.al
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.an = load ptr, ptr @_ZZN5boost4math6detail20ibeta_derivative_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_E8function, align 8, !tbaa !884
  tail call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_erroreEEvPKcS6_(ptr noundef %i.an, ptr noundef nonnull @.str.251)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.v, %bb.y, %bb.z, %bb.w, %bb.q, %bb.t, %bb.s, %bb.l, %bb.o, %bb.n, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.1 = phi x86_fp80 [ +qnan, %bb.h ], [ +qnan, %bb.j ], [ +qnan, %bb.b ], [ +inf, %bb.o ], [ +inf, %bb.t ], [ +qnan, %bb.f ], [ +qnan, %bb.d ], [ 0.000000e+00, %bb.l ], [ %i.u, %bb.n ], [ 0.000000e+00, %bb.q ], [ %i.aa, %bb.s ], [ %i.ai, %bb.v ], [ 0.000000e+00, %bb.w ], [ %i.am, %bb.y ], [ +inf, %bb.z ]
  ret x86_fp80 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_21binomial_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #10 comdat {
bb.a:
  %1 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22036, !nonnull !285, !align !859
  %i.f = load ptr, ptr %0, align 8, !tbaa !22039, !nonnull !285, !align !859 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.g = load double, ptr %i.f, align 8, !tbaa !5177 ; 5 uses
  store double %i.g, ptr %i.b, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !5179 ; 6 uses
  store double %i.i, ptr %i.c, align 8, !tbaa !183
  %i.j = load double, ptr %i.e, align 8, !tbaa !183 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.j, ptr %i.a, align 8, !tbaa !183
  %i.k = fcmp ule double %i.i, 1.000000e+00
  %i.l = tail call i1 @llvm.is.fpclass.f64(double %i.i, i32 480)
  %or.cond10.i.i.i = and i1 %i.l, %i.k
  br i1 %or.cond10.i.i.i, label %bb.b, label %_ZN5boost4math15binomial_detail22check_success_fractionIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEEbPKcRKT_PS9_RKT0_.exit.i.i

_ZN5boost4math15binomial_detail22check_success_fractionIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEEbPKcRKT_PS9_RKT0_.exit.i.i: ; preds = %bb.a
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.298, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %or.cond.i.i.i = tail call i1 @llvm.is.fpclass.f64(double %i.g, i32 480)
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.299, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %or.cond.i = tail call i1 @llvm.is.fpclass.f64(double %i.j, i32 480)
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.301, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.m = fcmp ogt double %i.j, %i.g
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.302, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.c, %_ZN5boost4math15binomial_detail22check_success_fractionIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEEbPKcRKT_PS9_RKT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = fcmp oeq double %i.j, %i.g
  %i.o = fcmp oeq double %i.i, 0.000000e+00
  %or.cond = or i1 %i.n, %i.o
  br i1 %or.cond, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = fcmp oeq double %i.i, 1.000000e+00
  br i1 %i.p, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = fadd double %i.j, 1.000000e+00
  %i.r = fsub double %i.g, %i.j
  %i.s = fpext double %i.q to x86_fp80
  %i.t = fpext double %i.r to x86_fp80
  %i.u = fpext double %i.i to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.v = call noundef x86_fp80 @_ZN5boost4math6detail9ibeta_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_bbPSB_(x86_fp80 noundef %i.s, x86_fp80 noundef %i.t, x86_fp80 noundef %i.u, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null) ; 2 uses
  %i.w = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.v)
  %i.x = fcmp ogt x86_fp80 %i.w, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.x, label %bb.l, label %_ZN5boost4math5ibetaIdddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeES8_S9_SA_RKT2_.exit

bb.l:                                             ; preds = %bb.k
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math5ibetaIdddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeES8_S9_SA_RKT2_.exit

_ZN5boost4math5ibetaIdddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeES8_S9_SA_RKT2_.exit: ; preds = %bb.k, %bb.l
  %.0.i.i = fptrunc x86_fp80 %i.v to double
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.i, %_ZN5boost4math5ibetaIdddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeES8_S9_SA_RKT2_.exit, %bb.h
  %.0 = phi double [ +qnan, %bb.h ], [ %.0.i.i, %_ZN5boost4math5ibetaIdddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeES8_S9_SA_RKT2_.exit ], [ 0.000000e+00, %bb.i ], [ 1.000000e+00, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.boost::math::complemented2_type", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !22028, !range !284, !noundef !285
  %i.c = trunc nuw i8 %i.b to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !22026
  store ptr %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_21binomial_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.h = fsub double %i.e, %i.g
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_21binomial_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !22026
  %i.l = fsub double %i.i, %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi double [ %i.h, %bb.b ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret double %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { double, double } @_ZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_11equal_floorES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_(ptr noundef byval(%"struct.boost::math::detail::distribution_quantile_finder") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"struct.boost::math::complemented2_type", align 8 ; 5 uses
  %i.a = alloca double, align 8                   ; 9 uses
  %8 = alloca %"struct.boost::math::detail::distribution_quantile_finder", align 8 ; 8 uses
  %9 = alloca %"struct.boost::math::complemented2_type", align 8 ; 5 uses
  %i.b = alloca double, align 8                   ; 9 uses
  %10 = alloca %"struct.boost::math::detail::distribution_quantile_finder", align 8 ; 8 uses
  %11 = alloca %"struct.boost::math::complemented2_type", align 8 ; 5 uses
  %i.c = alloca double, align 8                   ; 9 uses
  %12 = alloca %"struct.boost::math::detail::distribution_quantile_finder", align 8 ; 8 uses
  %13 = alloca %"struct.boost::math::complemented2_type", align 8 ; 5 uses
  %i.d = alloca double, align 8                   ; 9 uses
  %14 = alloca %"struct.boost::math::detail::distribution_quantile_finder", align 8 ; 9 uses
  %i.e = alloca double, align 8                   ; 34 uses
  %i.f = alloca double, align 8                   ; 28 uses
  %i.g = alloca double, align 8                   ; 20 uses
  %i.h = alloca double, align 8                   ; 22 uses
  %i.i = alloca double, align 8                   ; 19 uses
  %i.j = alloca double, align 8                   ; 17 uses
  %i.k = alloca double, align 8                   ; 9 uses
  %i.l = alloca double, align 8                   ; 11 uses
  %i.m = load i64, ptr %5, align 8, !tbaa !258    ; 4 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load double, ptr %1, align 8, !tbaa !183
  %i.p = load double, ptr %2, align 8, !tbaa !183
  %.fca.0.insert.i = insertvalue { double, double } poison, double %i.o, 0
  %.fca.1.insert.i = insertvalue { double, double } %.fca.0.insert.i, double %i.p, 1
  br label %bb.ca

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #41
  %i.q = load double, ptr %1, align 8, !tbaa !183 ; 13 uses
  store double %i.q, ptr %i.e, align 8, !tbaa !183
  %i.r = load double, ptr %2, align 8, !tbaa !183 ; 11 uses
  store double %i.r, ptr %i.f, align 8, !tbaa !183
  %i.s = fcmp ult double %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr @_ZZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_11equal_floorES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_E8function, align 8, !tbaa !884
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef %i.t, ptr noundef nonnull @.str.422, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.bz

bb.e:                                             ; preds = %bb.c
  %i.u = load double, ptr %3, align 8, !tbaa !183 ; 5 uses
  store double %i.u, ptr %i.g, align 8, !tbaa !183
  %i.v = load double, ptr %4, align 8, !tbaa !183 ; 4 uses
  store double %i.v, ptr %i.h, align 8, !tbaa !183
  %i.w = tail call double @llvm.floor.f64(double %i.q)
  %i.x = tail call double @llvm.floor.f64(double %i.r)
  %i.y = fcmp oeq double %i.w, %i.x
  %i.z = fcmp oeq double %i.u, 0.000000e+00       ; 3 uses
  %or.cond = select i1 %i.y, i1 true, i1 %i.z
  %i.aa = fcmp oeq double %i.v, 0.000000e+00      ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.aa
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %5, align 8, !tbaa !258
  %.not = xor i1 %i.aa, true
  %brmerge = select i1 %i.z, i1 true, i1 %.not
  %i.ab = select i1 %i.z, double %i.q, double %i.r
  %i.ac = select i1 %brmerge, double %i.q, double %i.r
  %.fca.0.insert.i80 = insertvalue { double, double } poison, double %i.ac, 0
  %.fca.1.insert.i81 = insertvalue { double, double } %.fca.0.insert.i80, double %i.ab, 1
  br label %bb.bz

bb.g:                                             ; preds = %bb.e
  %i.ad = bitcast double %i.u to i64
  %i.ae = bitcast double %i.v to i64
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = icmp sgt i64 %i.af, -1
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr @_ZZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_11equal_floorES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_E8function, align 8, !tbaa !884
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef %i.ah, ptr noundef nonnull @.str.423, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.bz

bb.i:                                             ; preds = %bb.g
  store double 1.000000e+05, ptr %i.j, align 8, !tbaa !183
  store double 1.000000e+05, ptr %i.k, align 8, !tbaa !183
  store double 1.000000e+05, ptr %i.l, align 8, !tbaa !183
  %i.ai = fsub double %i.v, %i.u
  %i.aj = fdiv double %i.u, %i.ai
  %i.ak = fsub double %i.r, %i.q                  ; 3 uses
  %i.al = fmul double %i.ak, %i.aj
  %i.am = fsub double %i.q, %i.al                 ; 3 uses
  %i.an = tail call double @llvm.fabs.f64(double %i.q) ; 2 uses
  %i.ao = fmul double %i.an, f0x3CD4000000000000
  %i.ap = fadd double %i.q, %i.ao
  %i.aq = fcmp ugt double %i.am, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = tail call double @llvm.fabs.f64(double %i.r)
  %i.as = fmul double %i.ar, f0x3CD4000000000000
  %i.at = fsub double %i.r, %i.as
  %i.au = fcmp ult double %i.am, %i.at
  br i1 %i.au, label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.av = fadd double %i.q, %i.r
  %i.aw = fmul double %i.av, 5.000000e-01
  br label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit

_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit: ; preds = %bb.j, %bb.k
  %.0.i = phi double [ %i.aw, %bb.k ], [ %i.am, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %.0.i, ptr %i.d, align 8, !tbaa !183
  %i.ax = fmul double %i.q, f0x3CD0000000000000
  %i.ay = fcmp olt double %i.ak, %i.ax
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit
  %i.az = fmul double %i.ak, 5.000000e-01
  %i.ba = fadd double %i.q, %i.az
  br label %.sink.split.i

bb.m:                                             ; preds = %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit
  %i.bb = fmul double %i.an, f0x3CC0000000000000
  %i.bc = fadd double %i.q, %i.bb                 ; 2 uses
  %i.bd = fcmp ugt double %.0.i, %i.bc
  br i1 %i.bd, label %bb.n, label %.sink.split.i

bb.n:                                             ; preds = %bb.m
  %i.be = tail call double @llvm.fabs.f64(double %i.r)
  %i.bf = fmul double %i.be, f0x3CC0000000000000
  %i.bg = fsub double %i.r, %i.bf                 ; 2 uses
  %i.bh = fcmp ult double %.0.i, %i.bg
  br i1 %i.bh, label %bb.o, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %bb.m, %bb.l
  %.sink.i = phi double [ %i.ba, %bb.l ], [ %i.bc, %bb.m ], [ %i.bg, %bb.n ]
  store double %.sink.i, ptr %i.d, align 8, !tbaa !183
  br label %bb.o

bb.o:                                             ; preds = %.sink.split.i, %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !22028, !range !284, !noundef !285
  %i.bk = trunc nuw i8 %i.bj to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !22026
  store ptr %14, ptr %13, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.d, ptr %i.bn, align 8
  %i.bo = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_21binomial_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %13)
  %i.bp = fsub double %i.bm, %i.bo
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bq = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_21binomial_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(25) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !22026
  %i.bt = fsub double %i.bq, %i.bs
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i

_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i: ; preds = %bb.q, %bb.p
  %i.bu = phi double [ %i.bp, %bb.p ], [ %i.bt, %bb.q ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  %i.bv = fcmp oeq double %i.bu, 0.000000e+00
  br i1 %i.bv, label %.thread, label %bb.r

.thread:                                          ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i
  %i.bw = load double, ptr %i.d, align 8, !tbaa !183
  store double %i.bw, ptr %i.e, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bx = add i64 %i.m, -1
  br label %.critedge.thread

bb.r:                                             ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i
  %i.by = load double, ptr %i.g, align 8, !tbaa !183 ; 4 uses
  %i.bz = fcmp oeq double %i.by, 0.000000e+00
  %i.ca = bitcast double %i.by to i64
  %.not.i.i = icmp sgt i64 %i.ca, -1
  %i.cb = select i1 %.not.i.i, i32 1, i32 -1
  %i.cc = select i1 %i.bz, i32 0, i32 %i.cb       ; 2 uses
  %i.cd = bitcast double %i.bu to i64
  %i.ce = sub nsw i32 0, %i.cc
  %.not.i3942.i = icmp slt i64 %i.cd, 0
  %i.cf = select i1 %.not.i3942.i, i32 %i.ce, i32 %i.cc
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = load double, ptr %i.f, align 8, !tbaa !183
  store double %i.ch, ptr %i.i, align 8, !tbaa !183
  %i.ci = load double, ptr %i.h, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit

bb.t:                                             ; preds = %bb.r
  %i.cj = load double, ptr %i.e, align 8, !tbaa !183
  store double %i.cj, ptr %i.i, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit: ; preds = %bb.s, %bb.t
  %.sink163 = phi double [ %i.ci, %bb.s ], [ %i.by, %bb.t ]
  %.sink162 = phi ptr [ %i.f, %bb.s ], [ %i.e, %bb.t ]
  %.sink = phi ptr [ %i.h, %bb.s ], [ %i.g, %bb.t ]
  %i.ck = phi double [ %i.by, %bb.s ], [ %i.bu, %bb.t ] ; 3 uses
  store double %.sink163, ptr %i.j, align 8, !tbaa !183
  %i.cl = load double, ptr %i.d, align 8, !tbaa !183
  store double %i.cl, ptr %.sink162, align 8, !tbaa !183
  store double %i.bu, ptr %.sink, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cm = add i64 %i.m, -1                        ; 3 uses
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = fcmp une double %i.ck, 0.000000e+00
  %or.cond5 = and i1 %i.cn, %i.co
  br i1 %or.cond5, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit
  %i.cp = load double, ptr %i.e, align 8, !tbaa !183
  %i.cq = call double @llvm.floor.f64(double %i.cp)
  %i.cr = load double, ptr %i.f, align 8, !tbaa !183
  %i.cs = call double @llvm.floor.f64(double %i.cr)
  %i.ct = fcmp oeq double %i.cq, %i.cs
  br i1 %i.ct, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = call noundef double @_ZN5boost4math5tools6detail21quadratic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 2)
  %i.cv = load double, ptr %i.i, align 8, !tbaa !183
  store double %i.cv, ptr %i.k, align 8, !tbaa !183
  %i.cw = load double, ptr %i.j, align 8, !tbaa !183
  store double %i.cw, ptr %i.l, align 8, !tbaa !183
  call void @_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_(ptr noundef nonnull byval(%"struct.boost::math::detail::distribution_quantile_finder") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, double noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.cx = add i64 %i.m, -2
  %.pre = load double, ptr %i.g, align 8
  br label %bb.w

bb.w:                                             ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit, %bb.u, %bb.v
  %i.cy = phi double [ %i.ck, %bb.u ], [ %.pre, %bb.v ], [ %i.ck, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit ] ; 3 uses
  %.059 = phi i64 [ %i.cm, %bb.u ], [ %i.cx, %bb.v ], [ %i.cm, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit ] ; 3 uses
  %i.cz = icmp ne i64 %.059, 0
  %i.da = fcmp une double %i.cy, 0.000000e+00
  %or.cond7112 = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %or.cond7112, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre116 = load double, ptr %i.e, align 8, !tbaa !183
  %.pre118 = load double, ptr %i.f, align 8, !tbaa !183
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.bu
  %i.dk = phi double [ %.pre118, %.lr.ph ], [ %18, %bb.bu ] ; 2 uses
  %15 = phi double [ %.pre116, %.lr.ph ], [ %19, %bb.bu ] ; 2 uses
  %16 = phi double [ %i.cy, %.lr.ph ], [ %i.ls, %bb.bu ] ; 4 uses
  %.1113 = phi i64 [ %.059, %.lr.ph ], [ %.2, %bb.bu ] ; 8 uses
  %17 = call double @llvm.floor.f64(double %15)
  %i.dl = call double @llvm.floor.f64(double %i.dk)
  %i.dm = fcmp oeq double %17, %i.dl
  br i1 %i.dm, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = load double, ptr %i.h, align 8, !tbaa !183 ; 3 uses
  %i.do = fsub double %16, %i.dn
  %i.dp = call double @llvm.fabs.f64(double %i.do)
  %i.dq = fcmp olt double %i.dp, f0x0060000000000000
  br i1 %i.dq, label %.critedge76, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dr = load double, ptr %i.j, align 8, !tbaa !183 ; 3 uses
  %i.ds = fsub double %16, %i.dr
  %i.dt = call double @llvm.fabs.f64(double %i.ds)
  %i.du = fcmp olt double %i.dt, f0x0060000000000000
  br i1 %i.du, label %.critedge76, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = load double, ptr %i.l, align 8, !tbaa !183 ; 3 uses
  %i.dw = fsub double %16, %i.dv
  %i.dx = call double @llvm.fabs.f64(double %i.dw)
  %i.dy = fcmp olt double %i.dx, f0x0060000000000000
  br i1 %i.dy, label %.critedge76, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = fsub double %i.dn, %i.dr
  %i.ea = call double @llvm.fabs.f64(double %i.dz)
  %i.eb = fcmp olt double %i.ea, f0x0060000000000000
  br i1 %i.eb, label %.critedge76, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = fsub double %i.dn, %i.dv
  %i.ed = call double @llvm.fabs.f64(double %i.ec)
  %i.ee = fcmp olt double %i.ed, f0x0060000000000000
  br i1 %i.ee, label %.critedge76, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = fsub double %i.dr, %i.dv
  %i.eg = call double @llvm.fabs.f64(double %i.ef)
  %i.eh = fcmp olt double %i.eg, f0x0060000000000000
  br i1 %i.eh, label %.critedge76, label %bb.ae

.critedge76:                                      ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.ad
  %i.ei = call noundef double @_ZN5boost4math5tools6detail21quadratic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 2)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ej = call noundef double @_ZN5boost4math5tools6detail17cubic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.critedge76
  %.062 = phi double [ %i.ei, %.critedge76 ], [ %i.ej, %bb.ae ] ; 3 uses
  %i.ek = load double, ptr %i.i, align 8, !tbaa !183
  store double %i.ek, ptr %i.k, align 8, !tbaa !183
  %i.el = load double, ptr %i.j, align 8, !tbaa !183
  store double %i.el, ptr %i.l, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %.062, ptr %i.c, align 8, !tbaa !183
  %i.em = load double, ptr %i.f, align 8, !tbaa !183 ; 3 uses
  %i.en = load double, ptr %i.e, align 8, !tbaa !183 ; 5 uses
  %i.eo = fsub double %i.em, %i.en                ; 2 uses
  %i.ep = fmul double %i.en, f0x3CD0000000000000
  %i.eq = fcmp olt double %i.eo, %i.ep
  br i1 %i.eq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.er = fmul double %i.eo, 5.000000e-01
  %i.es = fadd double %i.en, %i.er
  br label %.sink.split.i85

bb.ah:                                            ; preds = %bb.af
  %i.et = call double @llvm.fabs.f64(double %i.en)
  %i.eu = fmul double %i.et, f0x3CC0000000000000
  %i.ev = fadd double %i.en, %i.eu                ; 2 uses
  %i.ew = fcmp ugt double %.062, %i.ev
  br i1 %i.ew, label %bb.ai, label %.sink.split.i85

bb.ai:                                            ; preds = %bb.ah
  %i.ex = call double @llvm.fabs.f64(double %i.em)
  %i.ey = fmul double %i.ex, f0x3CC0000000000000
  %i.ez = fsub double %i.em, %i.ey                ; 2 uses
  %i.fa = fcmp ult double %.062, %i.ez
  br i1 %i.fa, label %bb.aj, label %.sink.split.i85

.sink.split.i85:                                  ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sink.i86 = phi double [ %i.es, %bb.ag ], [ %i.ev, %bb.ah ], [ %i.ez, %bb.ai ]
  store double %.sink.i86, ptr %i.c, align 8, !tbaa !183
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.i85, %bb.ai
  %i.fb = load i8, ptr %i.db, align 8, !tbaa !22028, !range !284, !noundef !285
  %i.fc = trunc nuw i8 %i.fb to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  br i1 %i.fc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fd = load double, ptr %i.dc, align 8, !tbaa !22026
  store ptr %12, ptr %11, align 8
  store ptr %i.c, ptr %i.dd, align 8
  %i.fe = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_21binomial_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %11)
  %i.ff = fsub double %i.fd, %i.fe
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87

bb.al:                                            ; preds = %bb.aj
  %i.fg = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_21binomial_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.fh = load double, ptr %i.dc, align 8, !tbaa !22026
  %i.fi = fsub double %i.fg, %i.fh
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87

_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87: ; preds = %bb.al, %bb.ak
  %i.fj = phi double [ %i.ff, %bb.ak ], [ %i.fi, %bb.al ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  %i.fk = fcmp oeq double %i.fj, 0.000000e+00
  br i1 %i.fk, label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90.thread, label %bb.am

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90.thread: ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87
  %i.fl = load double, ptr %i.c, align 8, !tbaa !183
  store double %i.fl, ptr %i.e, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fm = add i64 %.1113, -1
  br label %.critedge.thread

bb.am:                                            ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87
  %i.fn = load double, ptr %i.g, align 8, !tbaa !183 ; 4 uses
  %i.fo = fcmp oeq double %i.fn, 0.000000e+00
  %i.fp = bitcast double %i.fn to i64
  %.not.i.i88 = icmp sgt i64 %i.fp, -1
  %i.fq = select i1 %.not.i.i88, i32 1, i32 -1
  %i.fr = select i1 %i.fo, i32 0, i32 %i.fq       ; 2 uses
  %i.fs = bitcast double %i.fj to i64
  %i.ft = sub nsw i32 0, %i.fr
  %.not.i3942.i89 = icmp slt i64 %i.fs, 0
  %i.fu = select i1 %.not.i3942.i89, i32 %i.ft, i32 %i.fr
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fw = load double, ptr %i.f, align 8, !tbaa !183
  store double %i.fw, ptr %i.i, align 8, !tbaa !183
  %i.fx = load double, ptr %i.h, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90

bb.ao:                                            ; preds = %bb.am
  %i.fy = load double, ptr %i.e, align 8, !tbaa !183
  store double %i.fy, ptr %i.i, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90: ; preds = %bb.an, %bb.ao
  %.sink167 = phi double [ %i.fx, %bb.an ], [ %i.fn, %bb.ao ] ; 4 uses
  %.sink166 = phi ptr [ %i.f, %bb.an ], [ %i.e, %bb.ao ]
  %.sink164 = phi ptr [ %i.h, %bb.an ], [ %i.g, %bb.ao ]
  %i.fz = phi double [ %i.fn, %bb.an ], [ %i.fj, %bb.ao ] ; 6 uses
  store double %.sink167, ptr %i.j, align 8, !tbaa !183
  %i.ga = load double, ptr %i.c, align 8, !tbaa !183
  store double %i.ga, ptr %.sink166, align 8, !tbaa !183
  store double %i.fj, ptr %.sink164, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gb = add i64 %.1113, -1                      ; 3 uses
  %i.gc = icmp eq i64 %i.gb, 0
  %i.gd = fcmp oeq double %i.fz, 0.000000e+00
  %or.cond9 = or i1 %i.gc, %i.gd
  br i1 %or.cond9, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90
  %i.ge = load double, ptr %i.e, align 8, !tbaa !183
  %i.gf = call double @llvm.floor.f64(double %i.ge)
  %i.gg = load double, ptr %i.f, align 8, !tbaa !183
  %i.gh = call double @llvm.floor.f64(double %i.gg)
  %i.gi = fcmp oeq double %i.gf, %i.gh
  br i1 %i.gi, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gj = load double, ptr %i.h, align 8, !tbaa !183 ; 3 uses
  %i.gk = fsub double %i.fz, %i.gj
  %i.gl = call double @llvm.fabs.f64(double %i.gk)
  %i.gm = fcmp olt double %i.gl, f0x0060000000000000
  br i1 %i.gm, label %.critedge78, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gn = fsub double %i.fz, %.sink167
  %i.go = call double @llvm.fabs.f64(double %i.gn)
  %i.gp = fcmp olt double %i.go, f0x0060000000000000
  br i1 %i.gp, label %.critedge78, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gq = load double, ptr %i.l, align 8, !tbaa !183 ; 3 uses
  %i.gr = fsub double %i.fz, %i.gq
  %i.gs = call double @llvm.fabs.f64(double %i.gr)
  %i.gt = fcmp olt double %i.gs, f0x0060000000000000
  br i1 %i.gt, label %.critedge78, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gu = fsub double %i.gj, %.sink167
  %i.gv = call double @llvm.fabs.f64(double %i.gu)
  %i.gw = fcmp olt double %i.gv, f0x0060000000000000
  br i1 %i.gw, label %.critedge78, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gx = fsub double %i.gj, %i.gq
  %i.gy = call double @llvm.fabs.f64(double %i.gx)
  %i.gz = fcmp olt double %i.gy, f0x0060000000000000
  br i1 %i.gz, label %.critedge78, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ha = fsub double %.sink167, %i.gq
  %i.hb = call double @llvm.fabs.f64(double %i.ha)
  %i.hc = fcmp olt double %i.hb, f0x0060000000000000
  br i1 %i.hc, label %.critedge78, label %bb.aw

.critedge78:                                      ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.av
  %i.hd = call noundef double @_ZN5boost4math5tools6detail21quadratic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 3)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.he = call noundef double @_ZN5boost4math5tools6detail17cubic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %bb.ax
end_hunk_0
begin_hunk_1_@_ZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_11equal_floorES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_:bb.a
  %i.hy = fsub double %i.hw, %i.hx
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93

bb.bd:                                            ; preds = %bb.bb
  %i.hz = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_21binomial_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ia = load double, ptr %i.df, align 8, !tbaa !22026
  %i.ib = fsub double %i.hz, %i.ia
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93

_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93: ; preds = %bb.bd, %bb.bc
  %i.ic = phi double [ %i.hy, %bb.bc ], [ %i.ib, %bb.bd ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %i.id = fcmp oeq double %i.ic, 0.000000e+00
  br i1 %i.id, label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96.thread, label %bb.be

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96.thread: ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93
  %i.ie = load double, ptr %i.b, align 8, !tbaa !183
  store double %i.ie, ptr %i.e, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.if = add i64 %.1113, -2
  br label %.critedge.thread

bb.be:                                            ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93
  %i.ig = load double, ptr %i.g, align 8, !tbaa !183 ; 4 uses
  %i.ih = fcmp oeq double %i.ig, 0.000000e+00
  %i.ii = bitcast double %i.ig to i64
  %.not.i.i94 = icmp sgt i64 %i.ii, -1
  %i.ij = select i1 %.not.i.i94, i32 1, i32 -1
  %i.ik = select i1 %i.ih, i32 0, i32 %i.ij       ; 2 uses
  %i.il = bitcast double %i.ic to i64
  %i.im = sub nsw i32 0, %i.ik
  %.not.i3942.i95 = icmp slt i64 %i.il, 0
  %i.in = select i1 %.not.i3942.i95, i32 %i.im, i32 %i.ik
  %i.io = icmp slt i32 %i.in, 0
  br i1 %i.io, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ip = load double, ptr %i.f, align 8, !tbaa !183 ; 2 uses
  store double %i.ip, ptr %i.i, align 8, !tbaa !183
  %i.iq = load double, ptr %i.h, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96

bb.bg:                                            ; preds = %bb.be
  %i.ir = load double, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  store double %i.ir, ptr %i.i, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96: ; preds = %bb.bf, %bb.bg
  %.sink171 = phi double [ %i.iq, %bb.bf ], [ %i.ig, %bb.bg ] ; 2 uses
  %.sink170 = phi ptr [ %i.f, %bb.bf ], [ %i.e, %bb.bg ]
  %.sink168 = phi ptr [ %i.h, %bb.bf ], [ %i.g, %bb.bg ]
  %i.is = phi double [ %i.ip, %bb.bf ], [ %i.ir, %bb.bg ]
  %i.it = phi double [ %i.ig, %bb.bf ], [ %i.ic, %bb.bg ] ; 6 uses
  store double %.sink171, ptr %i.j, align 8, !tbaa !183
  %i.iu = load double, ptr %i.b, align 8, !tbaa !183
  store double %i.iu, ptr %.sink170, align 8, !tbaa !183
  store double %i.ic, ptr %.sink168, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.iv = add i64 %.1113, -2                      ; 3 uses
  %i.iw = icmp eq i64 %i.iv, 0
  %i.ix = fcmp oeq double %i.it, 0.000000e+00
  %or.cond11 = or i1 %i.iw, %i.ix
  br i1 %or.cond11, label %.critedge, label %bb.bh

bb.bh:                                            ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96
  %i.iy = load double, ptr %i.e, align 8, !tbaa !183 ; 7 uses
  %i.iz = call double @llvm.floor.f64(double %i.iy)
  %i.ja = load double, ptr %i.f, align 8, !tbaa !183 ; 5 uses
  %i.jb = call double @llvm.floor.f64(double %i.ja)
  %i.jc = fcmp oeq double %i.iz, %i.jb
  br i1 %i.jc, label %.critedge, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jd = call double @llvm.fabs.f64(double %i.it)
  %i.je = load double, ptr %i.h, align 8, !tbaa !183 ; 3 uses
  %i.jf = call double @llvm.fabs.f64(double %i.je)
  %i.jg = fcmp olt double %i.jd, %i.jf            ; 2 uses
  %.79 = select i1 %i.jg, double %i.it, double %i.je
  %.061 = select i1 %i.jg, double %i.iy, double %i.ja ; 2 uses
  %i.jh = fsub double %i.je, %i.it
  %i.ji = fdiv double %.79, %i.jh
  %i.jj = fmul double %i.ji, 2.000000e+00
  %i.jk = fsub double %i.ja, %i.iy                ; 3 uses
  %i.jl = fmul double %i.jk, %i.jj
  %i.jm = fsub double %.061, %i.jl                ; 2 uses
  %i.jn = fsub double %i.jm, %.061
  %i.jo = call double @llvm.fabs.f64(double %i.jn)
  %i.jp = fmul double %i.jk, 5.000000e-01         ; 2 uses
  %i.jq = fcmp ogt double %i.jo, %i.jp
  %i.jr = fadd double %i.iy, %i.jp                ; 2 uses
  %.264 = select i1 %i.jq, double %i.jr, double %i.jm ; 3 uses
  store double %i.is, ptr %i.k, align 8, !tbaa !183
  store double %.sink171, ptr %i.l, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %.264, ptr %i.a, align 8, !tbaa !183
  %i.js = fmul double %i.iy, f0x3CD0000000000000
  %i.jt = fcmp olt double %i.jk, %i.js
  br i1 %i.jt, label %.sink.split.i97, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ju = call double @llvm.fabs.f64(double %i.iy)
  %i.jv = fmul double %i.ju, f0x3CC0000000000000
  %i.jw = fadd double %i.iy, %i.jv                ; 2 uses
  %i.jx = fcmp ugt double %.264, %i.jw
  br i1 %i.jx, label %bb.bk, label %.sink.split.i97

bb.bk:                                            ; preds = %bb.bj
  %i.jy = call double @llvm.fabs.f64(double %i.ja)
  %i.jz = fmul double %i.jy, f0x3CC0000000000000
  %i.ka = fsub double %i.ja, %i.jz                ; 2 uses
  %i.kb = fcmp ult double %.264, %i.ka
  br i1 %i.kb, label %bb.bl, label %.sink.split.i97

.sink.split.i97:                                  ; preds = %bb.bi, %bb.bk, %bb.bj
  %.sink.i98 = phi double [ %i.ka, %bb.bk ], [ %i.jw, %bb.bj ], [ %i.jr, %bb.bi ]
  store double %.sink.i98, ptr %i.a, align 8, !tbaa !183
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split.i97, %bb.bk
  %i.kc = load i8, ptr %i.dh, align 8, !tbaa !22028, !range !284, !noundef !285
  %i.kd = trunc nuw i8 %i.kc to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  br i1 %i.kd, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ke = load double, ptr %i.di, align 8, !tbaa !22026
  store ptr %8, ptr %7, align 8
  store ptr %i.a, ptr %i.dj, align 8
  %i.kf = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_21binomial_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.kg = fsub double %i.ke, %i.kf
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99

bb.bn:                                            ; preds = %bb.bl
  %i.kh = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_21binomial_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ki = load double, ptr %i.di, align 8, !tbaa !22026
  %i.kj = fsub double %i.kh, %i.ki
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99

_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99: ; preds = %bb.bn, %bb.bm
  %i.kk = phi double [ %i.kg, %bb.bm ], [ %i.kj, %bb.bn ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.kl = fcmp oeq double %i.kk, 0.000000e+00
  br i1 %i.kl, label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102.thread, label %bb.bo

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102.thread: ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99
  %i.km = load double, ptr %i.a, align 8, !tbaa !183
  store double %i.km, ptr %i.e, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kn = add i64 %.1113, -3
  br label %.critedge.thread

bb.bo:                                            ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99
  %i.ko = load double, ptr %i.g, align 8, !tbaa !183 ; 4 uses
  %i.kp = fcmp oeq double %i.ko, 0.000000e+00
  %i.kq = bitcast double %i.ko to i64
  %.not.i.i100 = icmp sgt i64 %i.kq, -1
  %i.kr = select i1 %.not.i.i100, i32 1, i32 -1
  %i.ks = select i1 %i.kp, i32 0, i32 %i.kr       ; 2 uses
  %i.kt = bitcast double %i.kk to i64
  %i.ku = sub nsw i32 0, %i.ks
  %.not.i3942.i101 = icmp slt i64 %i.kt, 0
  %i.kv = select i1 %.not.i3942.i101, i32 %i.ku, i32 %i.ks
  %i.kw = icmp slt i32 %i.kv, 0
  br i1 %i.kw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.kx = load double, ptr %i.f, align 8, !tbaa !183 ; 2 uses
  store double %i.kx, ptr %i.i, align 8, !tbaa !183
  %i.ky = load double, ptr %i.h, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102

bb.bq:                                            ; preds = %bb.bo
  %i.kz = load double, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  store double %i.kz, ptr %i.i, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102: ; preds = %bb.bp, %bb.bq
  %.sink175 = phi double [ %i.ky, %bb.bp ], [ %i.ko, %bb.bq ] ; 2 uses
  %.sink174 = phi ptr [ %i.f, %bb.bp ], [ %i.e, %bb.bq ]
  %.sink172 = phi ptr [ %i.h, %bb.bp ], [ %i.g, %bb.bq ]
  %i.la = phi double [ %i.kx, %bb.bp ], [ %i.kz, %bb.bq ]
  %i.lb = phi double [ %i.ko, %bb.bp ], [ %i.kk, %bb.bq ] ; 4 uses
  store double %.sink175, ptr %i.j, align 8, !tbaa !183
  %i.lc = load double, ptr %i.a, align 8, !tbaa !183
  store double %i.lc, ptr %.sink174, align 8, !tbaa !183
  store double %i.kk, ptr %.sink172, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ld = add i64 %.1113, -3                      ; 4 uses
  %i.le = icmp eq i64 %i.ld, 0
  %i.lf = fcmp oeq double %i.lb, 0.000000e+00
  %or.cond13 = or i1 %i.le, %i.lf
  br i1 %or.cond13, label %.critedge, label %bb.br

bb.br:                                            ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102
  %i.lg = load double, ptr %i.e, align 8, !tbaa !183 ; 4 uses
  %i.lh = call double @llvm.floor.f64(double %i.lg)
  %i.li = load double, ptr %i.f, align 8, !tbaa !183 ; 3 uses
  %i.lj = call double @llvm.floor.f64(double %i.li)
  %i.lk = fcmp oeq double %i.lh, %i.lj
  br i1 %i.lk, label %.critedge, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ll = fsub double %i.li, %i.lg                ; 2 uses
  %i.lm = fsub double %i.dk, %15
  %i.ln = fmul double %i.lm, 5.000000e-01
  %i.lo = fcmp olt double %i.ll, %i.ln
  br i1 %i.lo, label %bb.bu, label %bb.bt, !llvm.loop !22040

bb.bt:                                            ; preds = %bb.bs
  store double %i.la, ptr %i.k, align 8, !tbaa !183
  store double %.sink175, ptr %i.l, align 8, !tbaa !183
  %i.lp = fmul double %i.ll, 5.000000e-01
  %i.lq = fadd double %i.lg, %i.lp
  call void @_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_(ptr noundef nonnull byval(%"struct.boost::math::detail::distribution_quantile_finder") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, double noundef %i.lq, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.lr = add i64 %.1113, -4
  %.pre115 = load double, ptr %i.e, align 8, !tbaa !183
  %.pre117 = load double, ptr %i.f, align 8, !tbaa !183
  %.pre115.a = load double, ptr %i.g, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.ls = phi double [ %.pre115.a, %bb.bt ], [ %i.lb, %bb.bs ] ; 3 uses
  %18 = phi double [ %.pre117, %bb.bt ], [ %i.li, %bb.bs ]
  %19 = phi double [ %.pre115, %bb.bt ], [ %i.lg, %bb.bs ]
  %.2 = phi i64 [ %i.lr, %bb.bt ], [ %i.ld, %bb.bs ] ; 3 uses
  %i.lt = icmp ne i64 %.2, 0
  %i.lu = fcmp une double %i.ls, 0.000000e+00
  %or.cond7 = select i1 %i.lt, i1 %i.lu, i1 false
  br i1 %or.cond7, label %bb.x, label %.critedge

.critedge.thread:                                 ; preds = %.thread, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102.thread, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90.thread, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96.thread
  %.3.ph = phi i64 [ %i.if, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96.thread ], [ %i.fm, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90.thread ], [ %i.kn, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102.thread ], [ %i.bx, %.thread ]
  %i.lv = load i64, ptr %5, align 8, !tbaa !258
  %i.lw = sub i64 %i.lv, %.3.ph
  store i64 %i.lw, ptr %5, align 8, !tbaa !258
  br label %bb.bv

.critedge:                                        ; preds = %bb.bu, %bb.x, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102, %bb.ap, %bb.bh, %bb.br, %bb.w
  %i.lx = phi double [ %i.cy, %bb.w ], [ %i.it, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96 ], [ %i.lb, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102 ], [ %i.fz, %bb.ap ], [ %i.it, %bb.bh ], [ %i.lb, %bb.br ], [ %16, %bb.x ], [ %i.ls, %bb.bu ], [ %i.fz, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90 ]
  %.3 = phi i64 [ %.059, %bb.w ], [ %i.iv, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96 ], [ %i.ld, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102 ], [ %i.gb, %bb.ap ], [ %i.iv, %bb.bh ], [ %i.ld, %bb.br ], [ %.1113, %bb.x ], [ %.2, %bb.bu ], [ %i.gb, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90 ]
  %i.ly = load i64, ptr %5, align 8, !tbaa !258
  %i.lz = sub i64 %i.ly, %.3
  store i64 %i.lz, ptr %5, align 8, !tbaa !258
  %i.ma = fcmp oeq double %i.lx, 0.000000e+00
  br i1 %i.ma, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.critedge.thread, %.critedge
  %i.mb = load double, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  br label %bb.by

bb.bw:                                            ; preds = %.critedge
  %i.mc = load double, ptr %i.h, align 8, !tbaa !183
  %i.md = fcmp oeq double %i.mc, 0.000000e+00
  br i1 %i.md, label %bb.bx, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bw
  %.pre117.a = load double, ptr %i.e, align 8, !tbaa !183
  %.pre118.a = load double, ptr %i.f, align 8, !tbaa !183
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.me = load double, ptr %i.f, align 8, !tbaa !183 ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge, %bb.bx, %bb.bv
  %i.mf = phi double [ %.pre118.a, %._crit_edge ], [ %i.me, %bb.bx ], [ %i.mb, %bb.bv ]
  %i.mg = phi double [ %.pre117.a, %._crit_edge ], [ %i.me, %bb.bx ], [ %i.mb, %bb.bv ]
  %.fca.0.insert.i103 = insertvalue { double, double } poison, double %i.mg, 0
  %.fca.1.insert.i104 = insertvalue { double, double } %.fca.0.insert.i103, double %i.mf, 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.h, %bb.f, %bb.d
  %.pn = phi { double, double } [ { double +qnan, double +qnan }, %bb.d ], [ %.fca.1.insert.i81, %bb.f ], [ { double +qnan, double +qnan }, %bb.h ], [ %.fca.1.insert.i104, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.b
  %.pn73 = phi { double, double } [ %.fca.1.insert.i, %bb.b ], [ %.pn, %bb.bz ]
  ret { double, double } %.pn73
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_(ptr noundef byval(%"struct.boost::math::detail::distribution_quantile_finder") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"struct.boost::math::complemented2_type", align 8 ; 5 uses
  %i.a = alloca double, align 8                   ; 7 uses
  store double %3, ptr %i.a, align 8, !tbaa !183
  %i.b = load double, ptr %2, align 8, !tbaa !183 ; 3 uses
  %i.c = load double, ptr %1, align 8, !tbaa !183 ; 5 uses
  %i.d = fsub double %i.b, %i.c                   ; 2 uses
  %i.e = fmul double %i.c, f0x3CD0000000000000
  %i.f = fcmp olt double %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = fmul double %i.d, 5.000000e-01
  %i.h = fadd double %i.c, %i.g
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.i = tail call double @llvm.fabs.f64(double %i.c)
  %i.j = fmul double %i.i, f0x3CC0000000000000
  %i.k = fadd double %i.c, %i.j                   ; 2 uses
  %i.l = fcmp ugt double %3, %i.k
  br i1 %i.l, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.m = tail call double @llvm.fabs.f64(double %i.b)
  %i.n = fmul double %i.m, f0x3CC0000000000000
  %i.o = fsub double %i.b, %i.n                   ; 2 uses
  %i.p = fcmp ult double %3, %i.o
  br i1 %i.p, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi double [ %i.h, %bb.b ], [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  store double %.sink, ptr %i.a, align 8, !tbaa !183
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i8, ptr %i.q, align 8, !tbaa !22028, !range !284, !noundef !285
  %i.s = trunc nuw i8 %i.r to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load double, ptr %i.t, align 8, !tbaa !22026
  store ptr %0, ptr %8, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.a, ptr %i.v, align 8
  %i.w = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_21binomial_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %8)
  %i.x = fsub double %i.u, %i.w
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit

bb.g:                                             ; preds = %bb.e
  %i.y = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_21binomial_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !22026
  %i.ab = fsub double %i.y, %i.aa
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit

_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit: ; preds = %bb.f, %bb.g
  %i.ac = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  %i.ad = fcmp oeq double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit
  %i.ae = load double, ptr %i.a, align 8, !tbaa !183
  store double %i.ae, ptr %1, align 8, !tbaa !183
  store double 0.000000e+00, ptr %4, align 8, !tbaa !183
  store double 0.000000e+00, ptr %6, align 8, !tbaa !183
  store double 0.000000e+00, ptr %7, align 8, !tbaa !183
  br label %bb.l

bb.i:                                             ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit
  %i.af = load double, ptr %4, align 8, !tbaa !183 ; 2 uses
  %i.ag = fcmp oeq double %i.af, 0.000000e+00
  %i.ah = bitcast double %i.af to i64
  %.not.i = icmp sgt i64 %i.ah, -1
  %i.ai = select i1 %.not.i, i32 1, i32 -1
  %i.aj = select i1 %i.ag, i32 0, i32 %i.ai       ; 2 uses
  %i.ak = bitcast double %i.ac to i64
  %i.al = sub nsw i32 0, %i.aj
  %.not.i3942 = icmp slt i64 %i.ak, 0
  %i.am = select i1 %.not.i3942, i32 %i.al, i32 %i.aj
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load double, ptr %2, align 8, !tbaa !183
  store double %i.ao, ptr %6, align 8, !tbaa !183
  %i.ap = load double, ptr %5, align 8, !tbaa !183
  store double %i.ap, ptr %7, align 8, !tbaa !183
  %i.aq = load double, ptr %i.a, align 8, !tbaa !183
  store double %i.aq, ptr %2, align 8, !tbaa !183
  store double %i.ac, ptr %5, align 8, !tbaa !183
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ar = load double, ptr %1, align 8, !tbaa !183
  store double %i.ar, ptr %6, align 8, !tbaa !183
  %i.as = load double, ptr %4, align 8, !tbaa !183
  store double %i.as, ptr %7, align 8, !tbaa !183
  %i.at = load double, ptr %i.a, align 8, !tbaa !183
  store double %i.at, ptr %1, align 8, !tbaa !183
  store double %i.ac, ptr %4, align 8, !tbaa !183
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN5boost4math5tools6detail21quadratic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load double, ptr %4, align 8, !tbaa !183 ; 2 uses
  %i.b = load double, ptr %3, align 8, !tbaa !183 ; 6 uses
  %i.c = fsub double %i.a, %i.b                   ; 4 uses
  %i.d = load double, ptr %1, align 8, !tbaa !183 ; 12 uses
  %i.e = load double, ptr %0, align 8, !tbaa !183 ; 15 uses
  %i.f = fsub double %i.d, %i.e                   ; 5 uses
  %i.g = tail call double @llvm.fabs.f64(double %i.f)
  %i.h = fcmp olt double %i.g, 1.000000e+00
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = fmul nnan double %i.f, f0x7FEFFFFFFFFFFFFF
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %i.k = tail call double @llvm.fabs.f64(double %i.c)
  %i.l = fcmp ugt double %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = fdiv double %i.c, %i.f
  br label %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit

_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi double [ %i.m, %bb.c ], [ f0x7FEFFFFFFFFFFFFF, %bb.b ] ; 3 uses
  %i.n = load double, ptr %5, align 8, !tbaa !183
  %i.o = fsub double %i.n, %i.a                   ; 2 uses
  %i.p = load double, ptr %2, align 8, !tbaa !183 ; 2 uses
  %i.q = fsub double %i.p, %i.d                   ; 3 uses
  %i.r = tail call double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp olt double %i.r, 1.000000e+00
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit
  %i.t = fmul nnan double %i.q, f0x7FEFFFFFFFFFFFFF
  %i.u = tail call double @llvm.fabs.f64(double %i.t)
  %i.v = tail call double @llvm.fabs.f64(double %i.o)
end_hunk_1
begin_hunk_2_@_ZN5boost4math5tools6detail21quadratic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_j:bb.a

bb.f:                                             ; preds = %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit47
  %i.ac = fmul nnan double %i.z, f0x7FEFFFFFFFFFFFFF
  %i.ad = tail call double @llvm.fabs.f64(double %i.ac)
  %i.ae = tail call double @llvm.fabs.f64(double %i.y)
  %i.af = fcmp ugt double %i.ad, %i.ae
  br i1 %i.af, label %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49, label %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49.thread

_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49: ; preds = %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit47, %bb.f
  %i.ag = fdiv double %i.y, %i.z                  ; 4 uses
  %i.ah = fcmp oeq double %i.ag, 0.000000e+00
  br i1 %i.ah, label %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49.thread, label %bb.i

_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49.thread: ; preds = %bb.f, %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49
  %i.ai = fdiv double %i.b, %i.c
  %i.aj = fmul double %i.ai, %i.f
  %i.ak = fsub double %i.e, %i.aj                 ; 3 uses
  %i.al = tail call double @llvm.fabs.f64(double %i.e)
  %i.am = fmul double %i.al, f0x3CD4000000000000
  %i.an = fadd double %i.e, %i.am
  %i.ao = fcmp ugt double %i.ak, %i.an
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49.thread
  %i.ap = tail call double @llvm.fabs.f64(double %i.d)
  %i.aq = fmul double %i.ap, f0x3CD4000000000000
  %i.ar = fsub double %i.d, %i.aq
  %i.as = fcmp ult double %i.ak, %i.ar
  br i1 %i.as, label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49.thread
  %i.at = fadd double %i.d, %i.e
  %i.au = fmul double %i.at, 5.000000e-01
  br label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit

bb.i:                                             ; preds = %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit49
  %i.av = bitcast double %i.ag to i64
  %i.aw = fcmp oeq double %i.b, 0.000000e+00
  %i.ax = bitcast double %i.b to i64
  %.not.i51 = icmp sgt i64 %i.ax, -1
  %i.ay = select i1 %.not.i51, i32 1, i32 -1
  %i.az = select i1 %i.aw, i32 0, i32 %i.ay       ; 2 uses
  %i.ba = sub nsw i32 0, %i.az
  %.not.i58 = icmp slt i64 %i.av, 0
  %i.bb = select i1 %.not.i58, i32 %i.ba, i32 %i.az
  %i.bc = icmp sgt i32 %i.bb, 0
  %.043 = select i1 %i.bc, double %i.e, double %i.d ; 2 uses
  %.not60 = icmp eq i32 %6, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.bd = add i32 %6, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bd, i32 2)
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit53, %bb.i
  %.1.lcssa = phi double [ %.043, %bb.i ], [ %i.ca, %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit53 ] ; 3 uses
  %i.be = fcmp ugt double %.1.lcssa, %i.e
  %i.bf = fcmp ult double %.1.lcssa, %i.d
  %or.cond = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond, label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit, label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit53
  %.062 = phi i32 [ %i.cb, %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit53 ], [ 1, %.lr.ph.preheader ]
  %.161 = phi double [ %i.ca, %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit53 ], [ %.043, %.lr.ph.preheader ] ; 5 uses
  %i.bg = fsub double %.161, %i.d
  %i.bh = fmul double %i.ag, %i.bg
  %i.bi = fadd double %.0.i, %i.bh
  %i.bj = fsub double %.161, %i.e
  %i.bk = fmul double %i.bj, %i.bi
  %i.bl = fadd double %i.b, %i.bk                 ; 2 uses
  %i.bm = fmul double %.161, 2.000000e+00
  %i.bn = fsub double %i.bm, %i.e
  %i.bo = fsub double %i.bn, %i.d
  %i.bp = fmul double %i.ag, %i.bo
  %i.bq = fadd double %.0.i, %i.bp                ; 3 uses
  %i.br = tail call double @llvm.fabs.f64(double %i.bq)
  %i.bs = fcmp olt double %i.br, 1.000000e+00
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.bt = fadd double %.161, 1.000000e+00
  %i.bu = fsub double %i.bt, %i.e
  %i.bv = fmul nnan double %i.bq, f0x7FEFFFFFFFFFFFFF
  %i.bw = tail call double @llvm.fabs.f64(double %i.bv)
  %i.bx = tail call double @llvm.fabs.f64(double %i.bl)
  %i.by = fcmp ugt double %i.bw, %i.bx
  br i1 %i.by, label %bb.k, label %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit53

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %i.bz = fdiv double %i.bl, %i.bq
  br label %_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit53

_ZN5boost4math5tools6detail8safe_divIdEET_S4_S4_S4_.exit53: ; preds = %bb.j, %bb.k
  %.0.i52 = phi double [ %i.bz, %bb.k ], [ %i.bu, %bb.j ]
  %i.ca = fsub double %.161, %.0.i52              ; 2 uses
  %i.cb = add nuw i32 %.062, 1                    ; 2 uses
  %exitcond = icmp eq i32 %i.cb, %umax
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !22041

bb.l:                                             ; preds = %._crit_edge
  %i.cc = fdiv double %i.b, %i.c
  %i.cd = fmul double %i.cc, %i.f
  %i.ce = fsub double %i.e, %i.cd                 ; 3 uses
  %i.cf = tail call double @llvm.fabs.f64(double %i.e)
  %i.cg = fmul double %i.cf, f0x3CD4000000000000
  %i.ch = fadd double %i.e, %i.cg
  %i.ci = fcmp ugt double %i.ce, %i.ch
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cj = tail call double @llvm.fabs.f64(double %i.d)
  %i.ck = fmul double %i.cj, f0x3CD4000000000000
  %i.cl = fsub double %i.d, %i.ck
  %i.cm = fcmp ult double %i.ce, %i.cl
  br i1 %i.cm, label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cn = fadd double %i.d, %i.e
  %i.co = fmul double %i.cn, 5.000000e-01
  br label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit

_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit: ; preds = %bb.n, %bb.m, %bb.h, %bb.g, %._crit_edge
  %.044 = phi double [ %.1.lcssa, %._crit_edge ], [ %i.ak, %bb.g ], [ %i.au, %bb.h ], [ %i.co, %bb.n ], [ %i.ce, %bb.m ]
  ret double %.044
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN5boost4math5tools6detail17cubic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !183 ; 2 uses
  %i.b = load double, ptr %3, align 8, !tbaa !183
  %i.c = fsub double %i.a, %i.b
  %i.d = load double, ptr %6, align 8, !tbaa !183 ; 6 uses
  %i.e = fmul double %i.c, %i.d
  %i.f = load double, ptr %7, align 8, !tbaa !183 ; 3 uses
  %i.g = fsub double %i.f, %i.d
  %i.h = fdiv double %i.e, %i.g
  %i.i = load double, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.j = fsub double %i.i, %i.a                   ; 2 uses
  %i.k = load double, ptr %5, align 8, !tbaa !183 ; 6 uses
  %i.l = fmul double %i.j, %i.k
  %i.m = fsub double %i.d, %i.k                   ; 2 uses
  %i.n = fdiv double %i.l, %i.m
  %i.o = load double, ptr %0, align 8, !tbaa !183 ; 3 uses
  %i.p = fsub double %i.o, %i.i                   ; 2 uses
  %i.q = load double, ptr %4, align 8, !tbaa !183 ; 6 uses
  %i.r = fmul double %i.p, %i.q
  %i.s = fsub double %i.k, %i.q                   ; 2 uses
  %i.t = fdiv double %i.r, %i.s
  %i.u = fmul double %i.d, %i.j
  %i.v = fdiv double %i.u, %i.m
  %i.w = fmul double %i.k, %i.p
  %i.x = fdiv double %i.w, %i.s
  %i.y = fsub double %i.v, %i.h
  %i.z = fmul double %i.k, %i.y
  %i.aa = fsub double %i.f, %i.k
  %i.ab = fdiv double %i.z, %i.aa
  %i.ac = fsub double %i.x, %i.n                  ; 2 uses
  %i.ad = fmul double %i.q, %i.ac
  %i.ae = fsub double %i.d, %i.q                  ; 2 uses
  %i.af = fdiv double %i.ad, %i.ae
  %i.ag = fmul double %i.d, %i.ac
  %i.ah = fdiv double %i.ag, %i.ae
  %i.ai = fsub double %i.ah, %i.ab
  %i.aj = fmul double %i.q, %i.ai
  %i.ak = fsub double %i.f, %i.q
  %i.al = fdiv double %i.aj, %i.ak
  %i.am = fadd double %i.t, %i.af
  %i.an = fadd double %i.am, %i.al
  %i.ao = fadd double %i.o, %i.an                 ; 3 uses
  %i.ap = fcmp ugt double %i.ao, %i.o
  %i.aq = fcmp ult double %i.ao, %i.i
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ar = tail call noundef double @_ZN5boost4math5tools6detail21quadratic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.ar, %bb.b ], [ %i.ao, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { double, double } @_ZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_10equal_ceilES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_(ptr noundef byval(%"struct.boost::math::detail::distribution_quantile_finder") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"struct.boost::math::complemented2_type", align 8 ; 5 uses
  %i.a = alloca double, align 8                   ; 9 uses
  %8 = alloca %"struct.boost::math::detail::distribution_quantile_finder", align 8 ; 8 uses
  %9 = alloca %"struct.boost::math::complemented2_type", align 8 ; 5 uses
  %i.b = alloca double, align 8                   ; 9 uses
  %10 = alloca %"struct.boost::math::detail::distribution_quantile_finder", align 8 ; 8 uses
  %11 = alloca %"struct.boost::math::complemented2_type", align 8 ; 5 uses
  %i.c = alloca double, align 8                   ; 9 uses
  %12 = alloca %"struct.boost::math::detail::distribution_quantile_finder", align 8 ; 8 uses
  %13 = alloca %"struct.boost::math::complemented2_type", align 8 ; 5 uses
  %i.d = alloca double, align 8                   ; 9 uses
  %14 = alloca %"struct.boost::math::detail::distribution_quantile_finder", align 8 ; 9 uses
  %i.e = alloca double, align 8                   ; 34 uses
  %i.f = alloca double, align 8                   ; 28 uses
  %i.g = alloca double, align 8                   ; 20 uses
  %i.h = alloca double, align 8                   ; 22 uses
  %i.i = alloca double, align 8                   ; 19 uses
  %i.j = alloca double, align 8                   ; 17 uses
  %i.k = alloca double, align 8                   ; 9 uses
  %i.l = alloca double, align 8                   ; 11 uses
  %i.m = load i64, ptr %5, align 8, !tbaa !258    ; 4 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load double, ptr %1, align 8, !tbaa !183
  %i.p = load double, ptr %2, align 8, !tbaa !183
  %.fca.0.insert.i = insertvalue { double, double } poison, double %i.o, 0
  %.fca.1.insert.i = insertvalue { double, double } %.fca.0.insert.i, double %i.p, 1
  br label %bb.ca

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #41
  %i.q = load double, ptr %1, align 8, !tbaa !183 ; 13 uses
  store double %i.q, ptr %i.e, align 8, !tbaa !183
  %i.r = load double, ptr %2, align 8, !tbaa !183 ; 11 uses
  store double %i.r, ptr %i.f, align 8, !tbaa !183
  %i.s = fcmp ult double %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr @_ZZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_10equal_ceilES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_E8function, align 8, !tbaa !884
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef %i.t, ptr noundef nonnull @.str.422, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.bz

bb.e:                                             ; preds = %bb.c
  %i.u = load double, ptr %3, align 8, !tbaa !183 ; 5 uses
  store double %i.u, ptr %i.g, align 8, !tbaa !183
  %i.v = load double, ptr %4, align 8, !tbaa !183 ; 4 uses
  store double %i.v, ptr %i.h, align 8, !tbaa !183
  %i.w = tail call double @llvm.ceil.f64(double %i.q)
  %i.x = tail call double @llvm.ceil.f64(double %i.r)
  %i.y = fcmp oeq double %i.w, %i.x
  %i.z = fcmp oeq double %i.u, 0.000000e+00       ; 3 uses
  %or.cond = select i1 %i.y, i1 true, i1 %i.z
  %i.aa = fcmp oeq double %i.v, 0.000000e+00      ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.aa
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %5, align 8, !tbaa !258
  %.not = xor i1 %i.aa, true
  %brmerge = select i1 %i.z, i1 true, i1 %.not
  %i.ab = select i1 %i.z, double %i.q, double %i.r
  %i.ac = select i1 %brmerge, double %i.q, double %i.r
  %.fca.0.insert.i80 = insertvalue { double, double } poison, double %i.ac, 0
  %.fca.1.insert.i81 = insertvalue { double, double } %.fca.0.insert.i80, double %i.ab, 1
  br label %bb.bz

bb.g:                                             ; preds = %bb.e
  %i.ad = bitcast double %i.u to i64
  %i.ae = bitcast double %i.v to i64
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = icmp sgt i64 %i.af, -1
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr @_ZZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_10equal_ceilES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_E8function, align 8, !tbaa !884
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef %i.ah, ptr noundef nonnull @.str.423, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.bz

bb.i:                                             ; preds = %bb.g
  store double 1.000000e+05, ptr %i.j, align 8, !tbaa !183
  store double 1.000000e+05, ptr %i.k, align 8, !tbaa !183
  store double 1.000000e+05, ptr %i.l, align 8, !tbaa !183
  %i.ai = fsub double %i.v, %i.u
  %i.aj = fdiv double %i.u, %i.ai
  %i.ak = fsub double %i.r, %i.q                  ; 3 uses
  %i.al = fmul double %i.ak, %i.aj
  %i.am = fsub double %i.q, %i.al                 ; 3 uses
  %i.an = tail call double @llvm.fabs.f64(double %i.q) ; 2 uses
  %i.ao = fmul double %i.an, f0x3CD4000000000000
  %i.ap = fadd double %i.q, %i.ao
  %i.aq = fcmp ugt double %i.am, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = tail call double @llvm.fabs.f64(double %i.r)
  %i.as = fmul double %i.ar, f0x3CD4000000000000
  %i.at = fsub double %i.r, %i.as
  %i.au = fcmp ult double %i.am, %i.at
  br i1 %i.au, label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.av = fadd double %i.q, %i.r
  %i.aw = fmul double %i.av, 5.000000e-01
  br label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit

_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit: ; preds = %bb.j, %bb.k
  %.0.i = phi double [ %i.aw, %bb.k ], [ %i.am, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %.0.i, ptr %i.d, align 8, !tbaa !183
  %i.ax = fmul double %i.q, f0x3CD0000000000000
  %i.ay = fcmp olt double %i.ak, %i.ax
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit
  %i.az = fmul double %i.ak, 5.000000e-01
  %i.ba = fadd double %i.q, %i.az
  br label %.sink.split.i

bb.m:                                             ; preds = %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit
  %i.bb = fmul double %i.an, f0x3CC0000000000000
  %i.bc = fadd double %i.q, %i.bb                 ; 2 uses
  %i.bd = fcmp ugt double %.0.i, %i.bc
  br i1 %i.bd, label %bb.n, label %.sink.split.i

bb.n:                                             ; preds = %bb.m
  %i.be = tail call double @llvm.fabs.f64(double %i.r)
  %i.bf = fmul double %i.be, f0x3CC0000000000000
  %i.bg = fsub double %i.r, %i.bf                 ; 2 uses
  %i.bh = fcmp ult double %.0.i, %i.bg
  br i1 %i.bh, label %bb.o, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %bb.m, %bb.l
  %.sink.i = phi double [ %i.ba, %bb.l ], [ %i.bc, %bb.m ], [ %i.bg, %bb.n ]
  store double %.sink.i, ptr %i.d, align 8, !tbaa !183
  br label %bb.o

bb.o:                                             ; preds = %.sink.split.i, %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !22028, !range !284, !noundef !285
  %i.bk = trunc nuw i8 %i.bj to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !22026
  store ptr %14, ptr %13, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.d, ptr %i.bn, align 8
  %i.bo = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_21binomial_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %13)
  %i.bp = fsub double %i.bm, %i.bo
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bq = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_21binomial_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(25) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !22026
  %i.bt = fsub double %i.bq, %i.bs
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i

_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i: ; preds = %bb.q, %bb.p
  %i.bu = phi double [ %i.bp, %bb.p ], [ %i.bt, %bb.q ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  %i.bv = fcmp oeq double %i.bu, 0.000000e+00
  br i1 %i.bv, label %.thread, label %bb.r

.thread:                                          ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i
  %i.bw = load double, ptr %i.d, align 8, !tbaa !183
  store double %i.bw, ptr %i.e, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bx = add i64 %i.m, -1
  br label %.critedge.thread

bb.r:                                             ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i
  %i.by = load double, ptr %i.g, align 8, !tbaa !183 ; 4 uses
  %i.bz = fcmp oeq double %i.by, 0.000000e+00
  %i.ca = bitcast double %i.by to i64
  %.not.i.i = icmp sgt i64 %i.ca, -1
  %i.cb = select i1 %.not.i.i, i32 1, i32 -1
  %i.cc = select i1 %i.bz, i32 0, i32 %i.cb       ; 2 uses
  %i.cd = bitcast double %i.bu to i64
  %i.ce = sub nsw i32 0, %i.cc
  %.not.i3942.i = icmp slt i64 %i.cd, 0
  %i.cf = select i1 %.not.i3942.i, i32 %i.ce, i32 %i.cc
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = load double, ptr %i.f, align 8, !tbaa !183
  store double %i.ch, ptr %i.i, align 8, !tbaa !183
  %i.ci = load double, ptr %i.h, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit

bb.t:                                             ; preds = %bb.r
  %i.cj = load double, ptr %i.e, align 8, !tbaa !183
  store double %i.cj, ptr %i.i, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit: ; preds = %bb.s, %bb.t
  %.sink163 = phi double [ %i.ci, %bb.s ], [ %i.by, %bb.t ]
  %.sink162 = phi ptr [ %i.f, %bb.s ], [ %i.e, %bb.t ]
  %.sink = phi ptr [ %i.h, %bb.s ], [ %i.g, %bb.t ]
  %i.ck = phi double [ %i.by, %bb.s ], [ %i.bu, %bb.t ] ; 3 uses
  store double %.sink163, ptr %i.j, align 8, !tbaa !183
  %i.cl = load double, ptr %i.d, align 8, !tbaa !183
  store double %i.cl, ptr %.sink162, align 8, !tbaa !183
  store double %i.bu, ptr %.sink, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cm = add i64 %i.m, -1                        ; 3 uses
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = fcmp une double %i.ck, 0.000000e+00
  %or.cond5 = and i1 %i.cn, %i.co
  br i1 %or.cond5, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit
  %i.cp = load double, ptr %i.e, align 8, !tbaa !183
  %i.cq = call double @llvm.ceil.f64(double %i.cp)
  %i.cr = load double, ptr %i.f, align 8, !tbaa !183
  %i.cs = call double @llvm.ceil.f64(double %i.cr)
  %i.ct = fcmp oeq double %i.cq, %i.cs
  br i1 %i.ct, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = call noundef double @_ZN5boost4math5tools6detail21quadratic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 2)
  %i.cv = load double, ptr %i.i, align 8, !tbaa !183
  store double %i.cv, ptr %i.k, align 8, !tbaa !183
  %i.cw = load double, ptr %i.j, align 8, !tbaa !183
  store double %i.cw, ptr %i.l, align 8, !tbaa !183
  call void @_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_(ptr noundef nonnull byval(%"struct.boost::math::detail::distribution_quantile_finder") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, double noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.cx = add i64 %i.m, -2
  %.pre = load double, ptr %i.g, align 8
  br label %bb.w

bb.w:                                             ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit, %bb.u, %bb.v
  %i.cy = phi double [ %i.ck, %bb.u ], [ %.pre, %bb.v ], [ %i.ck, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit ] ; 3 uses
  %.059 = phi i64 [ %i.cm, %bb.u ], [ %i.cx, %bb.v ], [ %i.cm, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit ] ; 3 uses
  %i.cz = icmp ne i64 %.059, 0
  %i.da = fcmp une double %i.cy, 0.000000e+00
  %or.cond7112 = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %or.cond7112, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre116 = load double, ptr %i.e, align 8, !tbaa !183
  %.pre118 = load double, ptr %i.f, align 8, !tbaa !183
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.bu
  %i.dk = phi double [ %.pre118, %.lr.ph ], [ %18, %bb.bu ] ; 2 uses
  %15 = phi double [ %.pre116, %.lr.ph ], [ %19, %bb.bu ] ; 2 uses
  %16 = phi double [ %i.cy, %.lr.ph ], [ %i.ls, %bb.bu ] ; 4 uses
  %.1113 = phi i64 [ %.059, %.lr.ph ], [ %.2, %bb.bu ] ; 8 uses
  %17 = call double @llvm.ceil.f64(double %15)
  %i.dl = call double @llvm.ceil.f64(double %i.dk)
  %i.dm = fcmp oeq double %17, %i.dl
  br i1 %i.dm, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = load double, ptr %i.h, align 8, !tbaa !183 ; 3 uses
  %i.do = fsub double %16, %i.dn
  %i.dp = call double @llvm.fabs.f64(double %i.do)
  %i.dq = fcmp olt double %i.dp, f0x0060000000000000
  br i1 %i.dq, label %.critedge76, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dr = load double, ptr %i.j, align 8, !tbaa !183 ; 3 uses
  %i.ds = fsub double %16, %i.dr
  %i.dt = call double @llvm.fabs.f64(double %i.ds)
  %i.du = fcmp olt double %i.dt, f0x0060000000000000
  br i1 %i.du, label %.critedge76, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = load double, ptr %i.l, align 8, !tbaa !183 ; 3 uses
  %i.dw = fsub double %16, %i.dv
  %i.dx = call double @llvm.fabs.f64(double %i.dw)
  %i.dy = fcmp olt double %i.dx, f0x0060000000000000
  br i1 %i.dy, label %.critedge76, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = fsub double %i.dn, %i.dr
  %i.ea = call double @llvm.fabs.f64(double %i.dz)
  %i.eb = fcmp olt double %i.ea, f0x0060000000000000
  br i1 %i.eb, label %.critedge76, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = fsub double %i.dn, %i.dv
  %i.ed = call double @llvm.fabs.f64(double %i.ec)
  %i.ee = fcmp olt double %i.ed, f0x0060000000000000
  br i1 %i.ee, label %.critedge76, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = fsub double %i.dr, %i.dv
  %i.eg = call double @llvm.fabs.f64(double %i.ef)
  %i.eh = fcmp olt double %i.eg, f0x0060000000000000
  br i1 %i.eh, label %.critedge76, label %bb.ae

.critedge76:                                      ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.ad
  %i.ei = call noundef double @_ZN5boost4math5tools6detail21quadratic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 2)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ej = call noundef double @_ZN5boost4math5tools6detail17cubic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.critedge76
  %.062 = phi double [ %i.ei, %.critedge76 ], [ %i.ej, %bb.ae ] ; 3 uses
  %i.ek = load double, ptr %i.i, align 8, !tbaa !183
  store double %i.ek, ptr %i.k, align 8, !tbaa !183
  %i.el = load double, ptr %i.j, align 8, !tbaa !183
  store double %i.el, ptr %i.l, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %.062, ptr %i.c, align 8, !tbaa !183
  %i.em = load double, ptr %i.f, align 8, !tbaa !183 ; 3 uses
  %i.en = load double, ptr %i.e, align 8, !tbaa !183 ; 5 uses
  %i.eo = fsub double %i.em, %i.en                ; 2 uses
  %i.ep = fmul double %i.en, f0x3CD0000000000000
  %i.eq = fcmp olt double %i.eo, %i.ep
  br i1 %i.eq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.er = fmul double %i.eo, 5.000000e-01
  %i.es = fadd double %i.en, %i.er
  br label %.sink.split.i85

bb.ah:                                            ; preds = %bb.af
  %i.et = call double @llvm.fabs.f64(double %i.en)
  %i.eu = fmul double %i.et, f0x3CC0000000000000
  %i.ev = fadd double %i.en, %i.eu                ; 2 uses
  %i.ew = fcmp ugt double %.062, %i.ev
  br i1 %i.ew, label %bb.ai, label %.sink.split.i85

bb.ai:                                            ; preds = %bb.ah
  %i.ex = call double @llvm.fabs.f64(double %i.em)
  %i.ey = fmul double %i.ex, f0x3CC0000000000000
  %i.ez = fsub double %i.em, %i.ey                ; 2 uses
  %i.fa = fcmp ult double %.062, %i.ez
  br i1 %i.fa, label %bb.aj, label %.sink.split.i85

.sink.split.i85:                                  ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sink.i86 = phi double [ %i.es, %bb.ag ], [ %i.ev, %bb.ah ], [ %i.ez, %bb.ai ]
  store double %.sink.i86, ptr %i.c, align 8, !tbaa !183
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.i85, %bb.ai
  %i.fb = load i8, ptr %i.db, align 8, !tbaa !22028, !range !284, !noundef !285
  %i.fc = trunc nuw i8 %i.fb to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  br i1 %i.fc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fd = load double, ptr %i.dc, align 8, !tbaa !22026
  store ptr %12, ptr %11, align 8
  store ptr %i.c, ptr %i.dd, align 8
  %i.fe = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_21binomial_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %11)
  %i.ff = fsub double %i.fd, %i.fe
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87

bb.al:                                            ; preds = %bb.aj
  %i.fg = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_21binomial_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.fh = load double, ptr %i.dc, align 8, !tbaa !22026
  %i.fi = fsub double %i.fg, %i.fh
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87

_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87: ; preds = %bb.al, %bb.ak
  %i.fj = phi double [ %i.ff, %bb.ak ], [ %i.fi, %bb.al ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  %i.fk = fcmp oeq double %i.fj, 0.000000e+00
  br i1 %i.fk, label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90.thread, label %bb.am

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90.thread: ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87
  %i.fl = load double, ptr %i.c, align 8, !tbaa !183
  store double %i.fl, ptr %i.e, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fm = add i64 %.1113, -1
  br label %.critedge.thread

bb.am:                                            ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87
  %i.fn = load double, ptr %i.g, align 8, !tbaa !183 ; 4 uses
  %i.fo = fcmp oeq double %i.fn, 0.000000e+00
  %i.fp = bitcast double %i.fn to i64
  %.not.i.i88 = icmp sgt i64 %i.fp, -1
  %i.fq = select i1 %.not.i.i88, i32 1, i32 -1
  %i.fr = select i1 %i.fo, i32 0, i32 %i.fq       ; 2 uses
  %i.fs = bitcast double %i.fj to i64
  %i.ft = sub nsw i32 0, %i.fr
  %.not.i3942.i89 = icmp slt i64 %i.fs, 0
  %i.fu = select i1 %.not.i3942.i89, i32 %i.ft, i32 %i.fr
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fw = load double, ptr %i.f, align 8, !tbaa !183
  store double %i.fw, ptr %i.i, align 8, !tbaa !183
  %i.fx = load double, ptr %i.h, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90

bb.ao:                                            ; preds = %bb.am
  %i.fy = load double, ptr %i.e, align 8, !tbaa !183
  store double %i.fy, ptr %i.i, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90: ; preds = %bb.an, %bb.ao
  %.sink167 = phi double [ %i.fx, %bb.an ], [ %i.fn, %bb.ao ] ; 4 uses
  %.sink166 = phi ptr [ %i.f, %bb.an ], [ %i.e, %bb.ao ]
  %.sink164 = phi ptr [ %i.h, %bb.an ], [ %i.g, %bb.ao ]
  %i.fz = phi double [ %i.fn, %bb.an ], [ %i.fj, %bb.ao ] ; 6 uses
  store double %.sink167, ptr %i.j, align 8, !tbaa !183
  %i.ga = load double, ptr %i.c, align 8, !tbaa !183
  store double %i.ga, ptr %.sink166, align 8, !tbaa !183
  store double %i.fj, ptr %.sink164, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gb = add i64 %.1113, -1                      ; 3 uses
  %i.gc = icmp eq i64 %i.gb, 0
  %i.gd = fcmp oeq double %i.fz, 0.000000e+00
  %or.cond9 = or i1 %i.gc, %i.gd
  br i1 %or.cond9, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90
  %i.ge = load double, ptr %i.e, align 8, !tbaa !183
  %i.gf = call double @llvm.ceil.f64(double %i.ge)
  %i.gg = load double, ptr %i.f, align 8, !tbaa !183
  %i.gh = call double @llvm.ceil.f64(double %i.gg)
  %i.gi = fcmp oeq double %i.gf, %i.gh
  br i1 %i.gi, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gj = load double, ptr %i.h, align 8, !tbaa !183 ; 3 uses
  %i.gk = fsub double %i.fz, %i.gj
  %i.gl = call double @llvm.fabs.f64(double %i.gk)
  %i.gm = fcmp olt double %i.gl, f0x0060000000000000
  br i1 %i.gm, label %.critedge78, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gn = fsub double %i.fz, %.sink167
  %i.go = call double @llvm.fabs.f64(double %i.gn)
  %i.gp = fcmp olt double %i.go, f0x0060000000000000
  br i1 %i.gp, label %.critedge78, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gq = load double, ptr %i.l, align 8, !tbaa !183 ; 3 uses
  %i.gr = fsub double %i.fz, %i.gq
  %i.gs = call double @llvm.fabs.f64(double %i.gr)
  %i.gt = fcmp olt double %i.gs, f0x0060000000000000
  br i1 %i.gt, label %.critedge78, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gu = fsub double %i.gj, %.sink167
  %i.gv = call double @llvm.fabs.f64(double %i.gu)
  %i.gw = fcmp olt double %i.gv, f0x0060000000000000
  br i1 %i.gw, label %.critedge78, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gx = fsub double %i.gj, %i.gq
  %i.gy = call double @llvm.fabs.f64(double %i.gx)
  %i.gz = fcmp olt double %i.gy, f0x0060000000000000
  br i1 %i.gz, label %.critedge78, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ha = fsub double %.sink167, %i.gq
  %i.hb = call double @llvm.fabs.f64(double %i.ha)
  %i.hc = fcmp olt double %i.hb, f0x0060000000000000
  br i1 %i.hc, label %.critedge78, label %bb.aw

.critedge78:                                      ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.av
  %i.hd = call noundef double @_ZN5boost4math5tools6detail21quadratic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 3)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.he = call noundef double @_ZN5boost4math5tools6detail17cubic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %bb.ax
end_hunk_2
begin_hunk_3_@_ZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_10equal_ceilES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_:bb.a
  %i.hy = fsub double %i.hw, %i.hx
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93

bb.bd:                                            ; preds = %bb.bb
  %i.hz = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_21binomial_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ia = load double, ptr %i.df, align 8, !tbaa !22026
  %i.ib = fsub double %i.hz, %i.ia
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93

_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93: ; preds = %bb.bd, %bb.bc
  %i.ic = phi double [ %i.hy, %bb.bc ], [ %i.ib, %bb.bd ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %i.id = fcmp oeq double %i.ic, 0.000000e+00
  br i1 %i.id, label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96.thread, label %bb.be

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96.thread: ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93
  %i.ie = load double, ptr %i.b, align 8, !tbaa !183
  store double %i.ie, ptr %i.e, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.if = add i64 %.1113, -2
  br label %.critedge.thread

bb.be:                                            ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93
  %i.ig = load double, ptr %i.g, align 8, !tbaa !183 ; 4 uses
  %i.ih = fcmp oeq double %i.ig, 0.000000e+00
  %i.ii = bitcast double %i.ig to i64
  %.not.i.i94 = icmp sgt i64 %i.ii, -1
  %i.ij = select i1 %.not.i.i94, i32 1, i32 -1
  %i.ik = select i1 %i.ih, i32 0, i32 %i.ij       ; 2 uses
  %i.il = bitcast double %i.ic to i64
  %i.im = sub nsw i32 0, %i.ik
  %.not.i3942.i95 = icmp slt i64 %i.il, 0
  %i.in = select i1 %.not.i3942.i95, i32 %i.im, i32 %i.ik
  %i.io = icmp slt i32 %i.in, 0
  br i1 %i.io, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ip = load double, ptr %i.f, align 8, !tbaa !183 ; 2 uses
  store double %i.ip, ptr %i.i, align 8, !tbaa !183
  %i.iq = load double, ptr %i.h, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96

bb.bg:                                            ; preds = %bb.be
  %i.ir = load double, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  store double %i.ir, ptr %i.i, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96: ; preds = %bb.bf, %bb.bg
  %.sink171 = phi double [ %i.iq, %bb.bf ], [ %i.ig, %bb.bg ] ; 2 uses
  %.sink170 = phi ptr [ %i.f, %bb.bf ], [ %i.e, %bb.bg ]
  %.sink168 = phi ptr [ %i.h, %bb.bf ], [ %i.g, %bb.bg ]
  %i.is = phi double [ %i.ip, %bb.bf ], [ %i.ir, %bb.bg ]
  %i.it = phi double [ %i.ig, %bb.bf ], [ %i.ic, %bb.bg ] ; 6 uses
  store double %.sink171, ptr %i.j, align 8, !tbaa !183
  %i.iu = load double, ptr %i.b, align 8, !tbaa !183
  store double %i.iu, ptr %.sink170, align 8, !tbaa !183
  store double %i.ic, ptr %.sink168, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.iv = add i64 %.1113, -2                      ; 3 uses
  %i.iw = icmp eq i64 %i.iv, 0
  %i.ix = fcmp oeq double %i.it, 0.000000e+00
  %or.cond11 = or i1 %i.iw, %i.ix
  br i1 %or.cond11, label %.critedge, label %bb.bh

bb.bh:                                            ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96
  %i.iy = load double, ptr %i.e, align 8, !tbaa !183 ; 7 uses
  %i.iz = call double @llvm.ceil.f64(double %i.iy)
  %i.ja = load double, ptr %i.f, align 8, !tbaa !183 ; 5 uses
  %i.jb = call double @llvm.ceil.f64(double %i.ja)
  %i.jc = fcmp oeq double %i.iz, %i.jb
  br i1 %i.jc, label %.critedge, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jd = call double @llvm.fabs.f64(double %i.it)
  %i.je = load double, ptr %i.h, align 8, !tbaa !183 ; 3 uses
  %i.jf = call double @llvm.fabs.f64(double %i.je)
  %i.jg = fcmp olt double %i.jd, %i.jf            ; 2 uses
  %.79 = select i1 %i.jg, double %i.it, double %i.je
  %.061 = select i1 %i.jg, double %i.iy, double %i.ja ; 2 uses
  %i.jh = fsub double %i.je, %i.it
  %i.ji = fdiv double %.79, %i.jh
  %i.jj = fmul double %i.ji, 2.000000e+00
  %i.jk = fsub double %i.ja, %i.iy                ; 3 uses
  %i.jl = fmul double %i.jk, %i.jj
  %i.jm = fsub double %.061, %i.jl                ; 2 uses
  %i.jn = fsub double %i.jm, %.061
  %i.jo = call double @llvm.fabs.f64(double %i.jn)
  %i.jp = fmul double %i.jk, 5.000000e-01         ; 2 uses
  %i.jq = fcmp ogt double %i.jo, %i.jp
  %i.jr = fadd double %i.iy, %i.jp                ; 2 uses
  %.264 = select i1 %i.jq, double %i.jr, double %i.jm ; 3 uses
  store double %i.is, ptr %i.k, align 8, !tbaa !183
  store double %.sink171, ptr %i.l, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %.264, ptr %i.a, align 8, !tbaa !183
  %i.js = fmul double %i.iy, f0x3CD0000000000000
  %i.jt = fcmp olt double %i.jk, %i.js
  br i1 %i.jt, label %.sink.split.i97, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ju = call double @llvm.fabs.f64(double %i.iy)
  %i.jv = fmul double %i.ju, f0x3CC0000000000000
  %i.jw = fadd double %i.iy, %i.jv                ; 2 uses
  %i.jx = fcmp ugt double %.264, %i.jw
  br i1 %i.jx, label %bb.bk, label %.sink.split.i97

bb.bk:                                            ; preds = %bb.bj
  %i.jy = call double @llvm.fabs.f64(double %i.ja)
  %i.jz = fmul double %i.jy, f0x3CC0000000000000
  %i.ka = fsub double %i.ja, %i.jz                ; 2 uses
  %i.kb = fcmp ult double %.264, %i.ka
  br i1 %i.kb, label %bb.bl, label %.sink.split.i97

.sink.split.i97:                                  ; preds = %bb.bi, %bb.bk, %bb.bj
  %.sink.i98 = phi double [ %i.ka, %bb.bk ], [ %i.jw, %bb.bj ], [ %i.jr, %bb.bi ]
  store double %.sink.i98, ptr %i.a, align 8, !tbaa !183
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split.i97, %bb.bk
  %i.kc = load i8, ptr %i.dh, align 8, !tbaa !22028, !range !284, !noundef !285
  %i.kd = trunc nuw i8 %i.kc to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  br i1 %i.kd, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ke = load double, ptr %i.di, align 8, !tbaa !22026
  store ptr %8, ptr %7, align 8
  store ptr %i.a, ptr %i.dj, align 8
  %i.kf = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_21binomial_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.kg = fsub double %i.ke, %i.kf
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99

bb.bn:                                            ; preds = %bb.bl
  %i.kh = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_21binomial_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ki = load double, ptr %i.di, align 8, !tbaa !22026
  %i.kj = fsub double %i.kh, %i.ki
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99

_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99: ; preds = %bb.bn, %bb.bm
  %i.kk = phi double [ %i.kg, %bb.bm ], [ %i.kj, %bb.bn ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.kl = fcmp oeq double %i.kk, 0.000000e+00
  br i1 %i.kl, label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102.thread, label %bb.bo

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102.thread: ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99
  %i.km = load double, ptr %i.a, align 8, !tbaa !183
  store double %i.km, ptr %i.e, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kn = add i64 %.1113, -3
  br label %.critedge.thread

bb.bo:                                            ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99
  %i.ko = load double, ptr %i.g, align 8, !tbaa !183 ; 4 uses
  %i.kp = fcmp oeq double %i.ko, 0.000000e+00
  %i.kq = bitcast double %i.ko to i64
  %.not.i.i100 = icmp sgt i64 %i.kq, -1
  %i.kr = select i1 %.not.i.i100, i32 1, i32 -1
  %i.ks = select i1 %i.kp, i32 0, i32 %i.kr       ; 2 uses
  %i.kt = bitcast double %i.kk to i64
  %i.ku = sub nsw i32 0, %i.ks
  %.not.i3942.i101 = icmp slt i64 %i.kt, 0
  %i.kv = select i1 %.not.i3942.i101, i32 %i.ku, i32 %i.ks
  %i.kw = icmp slt i32 %i.kv, 0
  br i1 %i.kw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.kx = load double, ptr %i.f, align 8, !tbaa !183 ; 2 uses
  store double %i.kx, ptr %i.i, align 8, !tbaa !183
  %i.ky = load double, ptr %i.h, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102

bb.bq:                                            ; preds = %bb.bo
  %i.kz = load double, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  store double %i.kz, ptr %i.i, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102: ; preds = %bb.bp, %bb.bq
  %.sink175 = phi double [ %i.ky, %bb.bp ], [ %i.ko, %bb.bq ] ; 2 uses
  %.sink174 = phi ptr [ %i.f, %bb.bp ], [ %i.e, %bb.bq ]
  %.sink172 = phi ptr [ %i.h, %bb.bp ], [ %i.g, %bb.bq ]
  %i.la = phi double [ %i.kx, %bb.bp ], [ %i.kz, %bb.bq ]
  %i.lb = phi double [ %i.ko, %bb.bp ], [ %i.kk, %bb.bq ] ; 4 uses
  store double %.sink175, ptr %i.j, align 8, !tbaa !183
  %i.lc = load double, ptr %i.a, align 8, !tbaa !183
  store double %i.lc, ptr %.sink174, align 8, !tbaa !183
  store double %i.kk, ptr %.sink172, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ld = add i64 %.1113, -3                      ; 4 uses
  %i.le = icmp eq i64 %i.ld, 0
  %i.lf = fcmp oeq double %i.lb, 0.000000e+00
  %or.cond13 = or i1 %i.le, %i.lf
  br i1 %or.cond13, label %.critedge, label %bb.br

bb.br:                                            ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102
  %i.lg = load double, ptr %i.e, align 8, !tbaa !183 ; 4 uses
  %i.lh = call double @llvm.ceil.f64(double %i.lg)
  %i.li = load double, ptr %i.f, align 8, !tbaa !183 ; 3 uses
  %i.lj = call double @llvm.ceil.f64(double %i.li)
  %i.lk = fcmp oeq double %i.lh, %i.lj
  br i1 %i.lk, label %.critedge, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ll = fsub double %i.li, %i.lg                ; 2 uses
  %i.lm = fsub double %i.dk, %15
  %i.ln = fmul double %i.lm, 5.000000e-01
  %i.lo = fcmp olt double %i.ll, %i.ln
  br i1 %i.lo, label %bb.bu, label %bb.bt, !llvm.loop !22042

bb.bt:                                            ; preds = %bb.bs
  store double %i.la, ptr %i.k, align 8, !tbaa !183
  store double %.sink175, ptr %i.l, align 8, !tbaa !183
  %i.lp = fmul double %i.ll, 5.000000e-01
  %i.lq = fadd double %i.lg, %i.lp
  call void @_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_(ptr noundef nonnull byval(%"struct.boost::math::detail::distribution_quantile_finder") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, double noundef %i.lq, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.lr = add i64 %.1113, -4
  %.pre115 = load double, ptr %i.e, align 8, !tbaa !183
  %.pre117 = load double, ptr %i.f, align 8, !tbaa !183
  %.pre115.a = load double, ptr %i.g, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.ls = phi double [ %.pre115.a, %bb.bt ], [ %i.lb, %bb.bs ] ; 3 uses
  %18 = phi double [ %.pre117, %bb.bt ], [ %i.li, %bb.bs ]
  %19 = phi double [ %.pre115, %bb.bt ], [ %i.lg, %bb.bs ]
  %.2 = phi i64 [ %i.lr, %bb.bt ], [ %i.ld, %bb.bs ] ; 3 uses
  %i.lt = icmp ne i64 %.2, 0
  %i.lu = fcmp une double %i.ls, 0.000000e+00
  %or.cond7 = select i1 %i.lt, i1 %i.lu, i1 false
  br i1 %or.cond7, label %bb.x, label %.critedge

.critedge.thread:                                 ; preds = %.thread, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102.thread, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90.thread, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96.thread
  %.3.ph = phi i64 [ %i.if, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96.thread ], [ %i.fm, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90.thread ], [ %i.kn, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102.thread ], [ %i.bx, %.thread ]
  %i.lv = load i64, ptr %5, align 8, !tbaa !258
  %i.lw = sub i64 %i.lv, %.3.ph
  store i64 %i.lw, ptr %5, align 8, !tbaa !258
  br label %bb.bv

.critedge:                                        ; preds = %bb.bu, %bb.x, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102, %bb.ap, %bb.bh, %bb.br, %bb.w
  %i.lx = phi double [ %i.cy, %bb.w ], [ %i.it, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96 ], [ %i.lb, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102 ], [ %i.fz, %bb.ap ], [ %i.it, %bb.bh ], [ %i.lb, %bb.br ], [ %16, %bb.x ], [ %i.ls, %bb.bu ], [ %i.fz, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90 ]
  %.3 = phi i64 [ %.059, %bb.w ], [ %i.iv, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96 ], [ %i.ld, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102 ], [ %i.gb, %bb.ap ], [ %i.iv, %bb.bh ], [ %i.ld, %bb.br ], [ %.1113, %bb.x ], [ %.2, %bb.bu ], [ %i.gb, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_21binomial_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90 ]
  %i.ly = load i64, ptr %5, align 8, !tbaa !258
  %i.lz = sub i64 %i.ly, %.3
  store i64 %i.lz, ptr %5, align 8, !tbaa !258
  %i.ma = fcmp oeq double %i.lx, 0.000000e+00
  br i1 %i.ma, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.critedge.thread, %.critedge
  %i.mb = load double, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  br label %bb.by

bb.bw:                                            ; preds = %.critedge
  %i.mc = load double, ptr %i.h, align 8, !tbaa !183
  %i.md = fcmp oeq double %i.mc, 0.000000e+00
  br i1 %i.md, label %bb.bx, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bw
  %.pre117.a = load double, ptr %i.e, align 8, !tbaa !183
  %.pre118.a = load double, ptr %i.f, align 8, !tbaa !183
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.me = load double, ptr %i.f, align 8, !tbaa !183 ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge, %bb.bx, %bb.bv
  %i.mf = phi double [ %.pre118.a, %._crit_edge ], [ %i.me, %bb.bx ], [ %i.mb, %bb.bv ]
  %i.mg = phi double [ %.pre117.a, %._crit_edge ], [ %i.me, %bb.bx ], [ %i.mb, %bb.bv ]
  %.fca.0.insert.i103 = insertvalue { double, double } poison, double %i.mg, 0
  %.fca.1.insert.i104 = insertvalue { double, double } %.fca.0.insert.i103, double %i.mf, 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.h, %bb.f, %bb.d
  %.pn = phi { double, double } [ { double +qnan, double +qnan }, %bb.d ], [ %.fca.1.insert.i81, %bb.f ], [ { double +qnan, double +qnan }, %bb.h ], [ %.fca.1.insert.i104, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.b
  %.pn73 = phi { double, double } [ %.fca.1.insert.i, %bb.b ], [ %.pn, %bb.bz ]
  ret { double, double } %.pn73
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_126InverseBinomialCDFFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJiddEEEJiddEEEE7iterateIJNS3_20ConstantVectorReaderIiEENSJ_IdEESL_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.boost::math::binomial_distribution", align 8 ; 6 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !22043, !range !284, !noundef !285
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22046
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !258
  %i.i = xor i8 %i.c, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = xor i64 %i.h, %i.k
  %i.m = and i64 %i.l, %2                         ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %.loopexit45, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = shl nsw i32 %1, 6
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_126InverseBinomialCDFFunctionINS1_10VectorExecEEESA_iNS0_15ConstantCheckerIJiddEEEJiddEEEE7iterateIJNS1_20ConstantVectorReaderIiEENSH_IdEESJ_EEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %.052 = phi i64 [ %i.m, %.preheader ], [ %i.ch, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_126InverseBinomialCDFFunctionINS1_10VectorExecEEESA_iNS0_15ConstantCheckerIJiddEEEJiddEEEE7iterateIJNS1_20ConstantVectorReaderIiEENSH_IdEESJ_EEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.r = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.052, i1 true)
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = or disjoint i32 %i.o, %i.s               ; 3 uses
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !22047 ; 2 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !22048, !nonnull !285, !align !859 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21655, !nonnull !285, !align !861
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21657, !nonnull !285, !align !859
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21658, !nonnull !285, !align !859
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !3, !noalias !22049 ; 2 uses
  %i.ad = load double, ptr %i.z, align 8, !tbaa !183, !noalias !22052 ; 3 uses
  %i.ae = load double, ptr %i.ab, align 8, !tbaa !183, !noalias !22055 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.ae, ptr %i.b, align 8, !tbaa !183
  %i.af = fcmp ole double %i.ae, 1.000000e+00
  %i.ag = call i1 @llvm.is.fpclass.f64(double %i.ae, i32 480)
  %i.ah = and i1 %i.ag, %i.af
  br i1 %i.ah, label %bb.c, label %.invoke, !prof !334

.invoke:                                          ; preds = %bb.d, %bb.c, %bb.b
  %i.ai = phi ptr [ @_ZZN8facebook5velox9functions12_GLOBAL__N_126InverseBinomialCDFFunctionINS0_4exec10VectorExecEE4callERiiddE18veloxCheckFailArgs_0, %bb.c ], [ @_ZZN8facebook5velox9functions12_GLOBAL__N_126InverseBinomialCDFFunctionINS0_4exec10VectorExecEE4callERiiddE18veloxCheckFailArgs, %bb.b ], [ @_ZZN8facebook5velox9functions12_GLOBAL__N_126InverseBinomialCDFFunctionINS0_4exec10VectorExecEE4callERiiddE18veloxCheckFailArgs_1, %bb.d ]
  %i.aj = phi ptr [ @.str.412, %bb.c ], [ @.str.410, %bb.b ], [ @.str.414, %bb.d ]
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull %i.aj) #44
          to label %.cont unwind label %.body

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ak = fcmp ole double %i.ad, 1.000000e+00
  %i.al = call i1 @llvm.is.fpclass.f64(double %i.ad, i32 480)
  %i.am = and i1 %i.al, %i.ak
  br i1 %i.am, label %bb.d, label %.invoke, !prof !334

bb.d:                                             ; preds = %bb.c
  %i.an = icmp slt i32 %i.ac, 1
  br i1 %i.an, label %.invoke, label %bb.e, !prof !39

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.ao = uitofp nneg i32 %i.ac to double         ; 2 uses
  store double %i.ao, ptr %3, align 8, !tbaa !5177
  store double %i.ad, ptr %i.q, align 8, !tbaa !5179
  %or.cond.i.i.i = call i1 @llvm.is.fpclass.f64(double %i.ao, i32 320)
  br i1 %or.cond.i.i.i, label %.noexc21, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.297, ptr noundef nonnull @.str.299, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %..noexc21_crit_edge unwind label %.body

..noexc21_crit_edge:                              ; preds = %bb.f
  %.pre = load double, ptr %i.b, align 8, !tbaa !183
  br label %.noexc21

.noexc21:                                         ; preds = %..noexc21_crit_edge, %bb.e
  %i.ap = phi double [ %.pre, %..noexc21_crit_edge ], [ %i.ae, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.aq = fsub double 1.000000e+00, %i.ap
  store double %i.aq, ptr %i.a, align 8, !tbaa !183
  %i.ar = invoke noundef double @_ZN5boost4math15binomial_detail12quantile_impIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKNS0_21binomial_distributionIS7_T0_EERKS7_SE_b(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
          to label %_ZN8facebook5velox6StatusD2Ev.exit34 unwind label %.body

_ZN8facebook5velox6StatusD2Ev.exit34:             ; preds = %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  %i.as = fptosi double %i.ar to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21668, !nonnull !285, !align !859
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21669, !nonnull !285, !align !859
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21574
  %i.ay = sext i32 %i.t to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  store i32 %i.as, ptr %i.az, align 4, !tbaa !3
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_126InverseBinomialCDFFunctionINS1_10VectorExecEEESA_iNS0_15ConstantCheckerIJiddEEEJiddEEEE7iterateIJNS1_20ConstantVectorReaderIiEENSH_IdEESJ_EEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

.body:                                            ; preds = %.invoke, %bb.f, %.noexc21
  %i.ba = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0      ; 2 uses
  %i.bc = extractvalue { ptr, i32 } %i.ba, 1      ; 2 uses
  %i.bd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.body
  %i.bf = call ptr @__cxa_begin_catch(ptr %i.bb) #41
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2683 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !7  ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 152
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !16
  %i.bm = icmp eq i64 %i.bl, 4
  br i1 %i.bm, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.g
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !28
  %or.cond.not.i.i.i = icmp eq i8 %i.bn, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !28
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.bp, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !28
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.br, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !28
end_hunk_3
begin_hunk_4_@_ZN5boost4math6detail28do_inverse_discrete_quantileINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEENS0_5tools10equal_ceilEEENT_10value_typeERKSB_RKSC_bSC_SG_SC_RKT0_Rm:bb.a
  %i.hj = fmul double %i.hi, 5.000000e-01
  br label %.loopexit87

.loopexit87:                                      ; preds = %bb.m, %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit40, %bb.at, %.loopexit, %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit, %bb.au, %bb.ap, %bb.an, %._crit_edge, %bb.z, %bb.l
  %.0 = phi double [ %i.hj, %bb.au ], [ %i.av, %bb.l ], [ %i.cr, %bb.z ], [ 0.000000e+00, %bb.an ], [ 0.000000e+00, %bb.ap ], [ 0.000000e+00, %._crit_edge ], [ %i.gp, %bb.at ], [ %i.gq, %.loopexit ], [ %i.v, %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit ], [ %i.bm, %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit40 ], [ %i.ax, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN5boost4math3pdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_20poisson_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = load double, ptr %0, align 8, !tbaa !11133 ; 4 uses
  %i.d = load double, ptr %1, align 8, !tbaa !183 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.c, ptr %i.a, align 8, !tbaa !183
  store double %i.d, ptr %i.b, align 8, !tbaa !183
  %or.cond.i.i.i = tail call i1 @llvm.is.fpclass.f64(double %i.c, i32 384)
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN5boost4math14poisson_detail10check_distIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEEbPKcRKT_PS9_RKT0_.exit.i

_ZN5boost4math14poisson_detail10check_distIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEEbPKcRKT_PS9_RKT0_.exit.i: ; preds = %bb.a
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.429, ptr noundef nonnull @.str.372, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %or.cond.i.i = tail call i1 @llvm.is.fpclass.f64(double %i.d, i32 480)
  br i1 %or.cond.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.429, ptr noundef nonnull @.str.374, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5boost4math14poisson_detail10check_distIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEEbPKcRKT_PS9_RKT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = fcmp oeq double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = fneg double %i.c
  %i.g = tail call double @exp(double noundef %i.f) #41, !tbaa !3
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.h = fadd double %i.d, 1.000000e+00
  %i.i = fpext double %i.h to x86_fp80
  %i.j = fpext double %i.c to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.k = call noundef x86_fp80 @_ZN5boost4math6detail22gamma_p_derivative_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_RKT0_(x86_fp80 noundef %i.i, x86_fp80 noundef %i.j, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 2 uses
  %i.l = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.k)
  %i.m = fcmp ogt x86_fp80 %i.l, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.m, label %bb.h, label %_ZN5boost4math18gamma_p_derivativeIddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeES8_S9_RKT1_.exit

bb.h:                                             ; preds = %bb.g
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math18gamma_p_derivativeIddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeES8_S9_RKT1_.exit

_ZN5boost4math18gamma_p_derivativeIddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeES8_S9_RKT1_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = fptrunc x86_fp80 %i.k to double
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost4math18gamma_p_derivativeIddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeES8_S9_RKT1_.exit, %bb.f, %bb.d
  %.0 = phi double [ +qnan, %bb.d ], [ %.0.i.i, %_ZN5boost4math18gamma_p_derivativeIddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeES8_S9_RKT1_.exit ], [ %i.g, %bb.f ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_20poisson_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22481, !nonnull !285, !align !859
  %i.e = load ptr, ptr %0, align 8, !tbaa !22484, !nonnull !285, !align !859
  %i.f = load double, ptr %i.e, align 8, !tbaa !11133 ; 4 uses
  %i.g = load double, ptr %i.d, align 8, !tbaa !183 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.f, ptr %i.a, align 8, !tbaa !183
  store double %i.g, ptr %i.b, align 8, !tbaa !183
  %or.cond.i.i.i = tail call i1 @llvm.is.fpclass.f64(double %i.f, i32 384)
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN5boost4math14poisson_detail10check_distIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEEbPKcRKT_PS9_RKT0_.exit.i

_ZN5boost4math14poisson_detail10check_distIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEEbPKcRKT_PS9_RKT0_.exit.i: ; preds = %bb.a
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.373, ptr noundef nonnull @.str.372, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %or.cond.i.i = tail call i1 @llvm.is.fpclass.f64(double %i.g, i32 480)
  br i1 %or.cond.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef nonnull @.str.373, ptr noundef nonnull @.str.374, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5boost4math14poisson_detail10check_distIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEEbPKcRKT_PS9_RKT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = fcmp oeq double %i.g, 0.000000e+00
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = fneg double %i.f
  %i.j = tail call noundef double @expm1(double noundef %i.i) #41, !tbaa !3
  %i.k = fneg double %i.j
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.l = fadd double %i.g, 1.000000e+00
  %i.m = fpext double %i.l to x86_fp80
  %i.n = fpext double %i.f to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.o = call noundef x86_fp80 @_ZN5boost4math6detail20gamma_incomplete_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_bbRKT0_PSB_(x86_fp80 noundef %i.m, x86_fp80 noundef %i.n, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef null) ; 2 uses
  %i.p = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.o)
  %i.q = fcmp ogt x86_fp80 %i.p, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.q, label %bb.h, label %_ZN5boost4math7gamma_pIddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeES8_S9_RKT1_.exit

bb.h:                                             ; preds = %bb.g
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math7gamma_pIddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeES8_S9_RKT1_.exit

_ZN5boost4math7gamma_pIddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeES8_S9_RKT1_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = fptrunc x86_fp80 %i.o to double
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost4math7gamma_pIddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeES8_S9_RKT1_.exit, %bb.f, %bb.d
  %.0 = phi double [ +qnan, %bb.d ], [ %.0.i.i, %_ZN5boost4math7gamma_pIddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeES8_S9_RKT1_.exit ], [ %i.k, %bb.f ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.boost::math::complemented2_type.7591", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !22473, !range !284, !noundef !285
  %i.c = trunc nuw i8 %i.b to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !22471
  store ptr %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_20poisson_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.h = fsub double %i.e, %i.g
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_20poisson_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !22471
  %i.l = fsub double %i.i, %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi double [ %i.h, %bb.b ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret double %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { double, double } @_ZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_11equal_floorES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_(ptr noundef byval(%"struct.boost::math::detail::distribution_quantile_finder.7592") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"struct.boost::math::complemented2_type.7591", align 8 ; 5 uses
  %i.a = alloca double, align 8                   ; 9 uses
  %8 = alloca %"struct.boost::math::detail::distribution_quantile_finder.7592", align 8 ; 8 uses
  %9 = alloca %"struct.boost::math::complemented2_type.7591", align 8 ; 5 uses
  %i.b = alloca double, align 8                   ; 9 uses
  %10 = alloca %"struct.boost::math::detail::distribution_quantile_finder.7592", align 8 ; 8 uses
  %11 = alloca %"struct.boost::math::complemented2_type.7591", align 8 ; 5 uses
  %i.c = alloca double, align 8                   ; 9 uses
  %12 = alloca %"struct.boost::math::detail::distribution_quantile_finder.7592", align 8 ; 8 uses
  %13 = alloca %"struct.boost::math::complemented2_type.7591", align 8 ; 5 uses
  %i.d = alloca double, align 8                   ; 9 uses
  %14 = alloca %"struct.boost::math::detail::distribution_quantile_finder.7592", align 8 ; 9 uses
  %i.e = alloca double, align 8                   ; 34 uses
  %i.f = alloca double, align 8                   ; 28 uses
  %i.g = alloca double, align 8                   ; 20 uses
  %i.h = alloca double, align 8                   ; 22 uses
  %i.i = alloca double, align 8                   ; 19 uses
  %i.j = alloca double, align 8                   ; 17 uses
  %i.k = alloca double, align 8                   ; 9 uses
  %i.l = alloca double, align 8                   ; 11 uses
  %i.m = load i64, ptr %5, align 8, !tbaa !258    ; 4 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load double, ptr %1, align 8, !tbaa !183
  %i.p = load double, ptr %2, align 8, !tbaa !183
  %.fca.0.insert.i = insertvalue { double, double } poison, double %i.o, 0
  %.fca.1.insert.i = insertvalue { double, double } %.fca.0.insert.i, double %i.p, 1
  br label %bb.ca

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #41
  %i.q = load double, ptr %1, align 8, !tbaa !183 ; 13 uses
  store double %i.q, ptr %i.e, align 8, !tbaa !183
  %i.r = load double, ptr %2, align 8, !tbaa !183 ; 11 uses
  store double %i.r, ptr %i.f, align 8, !tbaa !183
  %i.s = fcmp ult double %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr @_ZZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_11equal_floorES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_E8function, align 8, !tbaa !884
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef %i.t, ptr noundef nonnull @.str.422, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.bz

bb.e:                                             ; preds = %bb.c
  %i.u = load double, ptr %3, align 8, !tbaa !183 ; 5 uses
  store double %i.u, ptr %i.g, align 8, !tbaa !183
  %i.v = load double, ptr %4, align 8, !tbaa !183 ; 4 uses
  store double %i.v, ptr %i.h, align 8, !tbaa !183
  %i.w = tail call double @llvm.floor.f64(double %i.q)
  %i.x = tail call double @llvm.floor.f64(double %i.r)
  %i.y = fcmp oeq double %i.w, %i.x
  %i.z = fcmp oeq double %i.u, 0.000000e+00       ; 3 uses
  %or.cond = select i1 %i.y, i1 true, i1 %i.z
  %i.aa = fcmp oeq double %i.v, 0.000000e+00      ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.aa
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %5, align 8, !tbaa !258
  %.not = xor i1 %i.aa, true
  %brmerge = select i1 %i.z, i1 true, i1 %.not
  %i.ab = select i1 %i.z, double %i.q, double %i.r
  %i.ac = select i1 %brmerge, double %i.q, double %i.r
  %.fca.0.insert.i80 = insertvalue { double, double } poison, double %i.ac, 0
  %.fca.1.insert.i81 = insertvalue { double, double } %.fca.0.insert.i80, double %i.ab, 1
  br label %bb.bz

bb.g:                                             ; preds = %bb.e
  %i.ad = bitcast double %i.u to i64
  %i.ae = bitcast double %i.v to i64
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = icmp sgt i64 %i.af, -1
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr @_ZZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_11equal_floorES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_E8function, align 8, !tbaa !884
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef %i.ah, ptr noundef nonnull @.str.423, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.bz

bb.i:                                             ; preds = %bb.g
  store double 1.000000e+05, ptr %i.j, align 8, !tbaa !183
  store double 1.000000e+05, ptr %i.k, align 8, !tbaa !183
  store double 1.000000e+05, ptr %i.l, align 8, !tbaa !183
  %i.ai = fsub double %i.v, %i.u
  %i.aj = fdiv double %i.u, %i.ai
  %i.ak = fsub double %i.r, %i.q                  ; 3 uses
  %i.al = fmul double %i.ak, %i.aj
  %i.am = fsub double %i.q, %i.al                 ; 3 uses
  %i.an = tail call double @llvm.fabs.f64(double %i.q) ; 2 uses
  %i.ao = fmul double %i.an, f0x3CD4000000000000
  %i.ap = fadd double %i.q, %i.ao
  %i.aq = fcmp ugt double %i.am, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = tail call double @llvm.fabs.f64(double %i.r)
  %i.as = fmul double %i.ar, f0x3CD4000000000000
  %i.at = fsub double %i.r, %i.as
  %i.au = fcmp ult double %i.am, %i.at
  br i1 %i.au, label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.av = fadd double %i.q, %i.r
  %i.aw = fmul double %i.av, 5.000000e-01
  br label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit

_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit: ; preds = %bb.j, %bb.k
  %.0.i = phi double [ %i.aw, %bb.k ], [ %i.am, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %.0.i, ptr %i.d, align 8, !tbaa !183
  %i.ax = fmul double %i.q, f0x3CD0000000000000
  %i.ay = fcmp olt double %i.ak, %i.ax
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit
  %i.az = fmul double %i.ak, 5.000000e-01
  %i.ba = fadd double %i.q, %i.az
  br label %.sink.split.i

bb.m:                                             ; preds = %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit
  %i.bb = fmul double %i.an, f0x3CC0000000000000
  %i.bc = fadd double %i.q, %i.bb                 ; 2 uses
  %i.bd = fcmp ugt double %.0.i, %i.bc
  br i1 %i.bd, label %bb.n, label %.sink.split.i

bb.n:                                             ; preds = %bb.m
  %i.be = tail call double @llvm.fabs.f64(double %i.r)
  %i.bf = fmul double %i.be, f0x3CC0000000000000
  %i.bg = fsub double %i.r, %i.bf                 ; 2 uses
  %i.bh = fcmp ult double %.0.i, %i.bg
  br i1 %i.bh, label %bb.o, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %bb.m, %bb.l
  %.sink.i = phi double [ %i.ba, %bb.l ], [ %i.bc, %bb.m ], [ %i.bg, %bb.n ]
  store double %.sink.i, ptr %i.d, align 8, !tbaa !183
  br label %bb.o

bb.o:                                             ; preds = %.sink.split.i, %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !22473, !range !284, !noundef !285
  %i.bk = trunc nuw i8 %i.bj to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !22471
  store ptr %14, ptr %13, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.d, ptr %i.bn, align 8
  %i.bo = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_20poisson_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %13)
  %i.bp = fsub double %i.bm, %i.bo
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bq = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_20poisson_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(17) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !22471
  %i.bt = fsub double %i.bq, %i.bs
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i

_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i: ; preds = %bb.q, %bb.p
  %i.bu = phi double [ %i.bp, %bb.p ], [ %i.bt, %bb.q ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  %i.bv = fcmp oeq double %i.bu, 0.000000e+00
  br i1 %i.bv, label %.thread, label %bb.r

.thread:                                          ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i
  %i.bw = load double, ptr %i.d, align 8, !tbaa !183
  store double %i.bw, ptr %i.e, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bx = add i64 %i.m, -1
  br label %.critedge.thread

bb.r:                                             ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i
  %i.by = load double, ptr %i.g, align 8, !tbaa !183 ; 4 uses
  %i.bz = fcmp oeq double %i.by, 0.000000e+00
  %i.ca = bitcast double %i.by to i64
  %.not.i.i = icmp sgt i64 %i.ca, -1
  %i.cb = select i1 %.not.i.i, i32 1, i32 -1
  %i.cc = select i1 %i.bz, i32 0, i32 %i.cb       ; 2 uses
  %i.cd = bitcast double %i.bu to i64
  %i.ce = sub nsw i32 0, %i.cc
  %.not.i3942.i = icmp slt i64 %i.cd, 0
  %i.cf = select i1 %.not.i3942.i, i32 %i.ce, i32 %i.cc
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = load double, ptr %i.f, align 8, !tbaa !183
  store double %i.ch, ptr %i.i, align 8, !tbaa !183
  %i.ci = load double, ptr %i.h, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit

bb.t:                                             ; preds = %bb.r
  %i.cj = load double, ptr %i.e, align 8, !tbaa !183
  store double %i.cj, ptr %i.i, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit: ; preds = %bb.s, %bb.t
  %.sink163 = phi double [ %i.ci, %bb.s ], [ %i.by, %bb.t ]
  %.sink162 = phi ptr [ %i.f, %bb.s ], [ %i.e, %bb.t ]
  %.sink = phi ptr [ %i.h, %bb.s ], [ %i.g, %bb.t ]
  %i.ck = phi double [ %i.by, %bb.s ], [ %i.bu, %bb.t ] ; 3 uses
  store double %.sink163, ptr %i.j, align 8, !tbaa !183
  %i.cl = load double, ptr %i.d, align 8, !tbaa !183
  store double %i.cl, ptr %.sink162, align 8, !tbaa !183
  store double %i.bu, ptr %.sink, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cm = add i64 %i.m, -1                        ; 3 uses
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = fcmp une double %i.ck, 0.000000e+00
  %or.cond5 = and i1 %i.cn, %i.co
  br i1 %or.cond5, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit
  %i.cp = load double, ptr %i.e, align 8, !tbaa !183
  %i.cq = call double @llvm.floor.f64(double %i.cp)
  %i.cr = load double, ptr %i.f, align 8, !tbaa !183
  %i.cs = call double @llvm.floor.f64(double %i.cr)
  %i.ct = fcmp oeq double %i.cq, %i.cs
  br i1 %i.ct, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = call noundef double @_ZN5boost4math5tools6detail21quadratic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 2)
  %i.cv = load double, ptr %i.i, align 8, !tbaa !183
  store double %i.cv, ptr %i.k, align 8, !tbaa !183
  %i.cw = load double, ptr %i.j, align 8, !tbaa !183
  store double %i.cw, ptr %i.l, align 8, !tbaa !183
  call void @_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_(ptr noundef nonnull byval(%"struct.boost::math::detail::distribution_quantile_finder.7592") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, double noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.cx = add i64 %i.m, -2
  %.pre = load double, ptr %i.g, align 8
  br label %bb.w

bb.w:                                             ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit, %bb.u, %bb.v
  %i.cy = phi double [ %i.ck, %bb.u ], [ %.pre, %bb.v ], [ %i.ck, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit ] ; 3 uses
  %.059 = phi i64 [ %i.cm, %bb.u ], [ %i.cx, %bb.v ], [ %i.cm, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit ] ; 3 uses
  %i.cz = icmp ne i64 %.059, 0
  %i.da = fcmp une double %i.cy, 0.000000e+00
  %or.cond7112 = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %or.cond7112, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre116 = load double, ptr %i.e, align 8, !tbaa !183
  %.pre118 = load double, ptr %i.f, align 8, !tbaa !183
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.bu
  %i.dk = phi double [ %.pre118, %.lr.ph ], [ %18, %bb.bu ] ; 2 uses
  %15 = phi double [ %.pre116, %.lr.ph ], [ %19, %bb.bu ] ; 2 uses
  %16 = phi double [ %i.cy, %.lr.ph ], [ %i.ls, %bb.bu ] ; 4 uses
  %.1113 = phi i64 [ %.059, %.lr.ph ], [ %.2, %bb.bu ] ; 8 uses
  %17 = call double @llvm.floor.f64(double %15)
  %i.dl = call double @llvm.floor.f64(double %i.dk)
  %i.dm = fcmp oeq double %17, %i.dl
  br i1 %i.dm, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = load double, ptr %i.h, align 8, !tbaa !183 ; 3 uses
  %i.do = fsub double %16, %i.dn
  %i.dp = call double @llvm.fabs.f64(double %i.do)
  %i.dq = fcmp olt double %i.dp, f0x0060000000000000
  br i1 %i.dq, label %.critedge76, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dr = load double, ptr %i.j, align 8, !tbaa !183 ; 3 uses
  %i.ds = fsub double %16, %i.dr
  %i.dt = call double @llvm.fabs.f64(double %i.ds)
  %i.du = fcmp olt double %i.dt, f0x0060000000000000
  br i1 %i.du, label %.critedge76, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = load double, ptr %i.l, align 8, !tbaa !183 ; 3 uses
  %i.dw = fsub double %16, %i.dv
  %i.dx = call double @llvm.fabs.f64(double %i.dw)
  %i.dy = fcmp olt double %i.dx, f0x0060000000000000
  br i1 %i.dy, label %.critedge76, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = fsub double %i.dn, %i.dr
  %i.ea = call double @llvm.fabs.f64(double %i.dz)
  %i.eb = fcmp olt double %i.ea, f0x0060000000000000
  br i1 %i.eb, label %.critedge76, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = fsub double %i.dn, %i.dv
  %i.ed = call double @llvm.fabs.f64(double %i.ec)
  %i.ee = fcmp olt double %i.ed, f0x0060000000000000
  br i1 %i.ee, label %.critedge76, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = fsub double %i.dr, %i.dv
  %i.eg = call double @llvm.fabs.f64(double %i.ef)
  %i.eh = fcmp olt double %i.eg, f0x0060000000000000
  br i1 %i.eh, label %.critedge76, label %bb.ae

.critedge76:                                      ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.ad
  %i.ei = call noundef double @_ZN5boost4math5tools6detail21quadratic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 2)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ej = call noundef double @_ZN5boost4math5tools6detail17cubic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.critedge76
  %.062 = phi double [ %i.ei, %.critedge76 ], [ %i.ej, %bb.ae ] ; 3 uses
  %i.ek = load double, ptr %i.i, align 8, !tbaa !183
  store double %i.ek, ptr %i.k, align 8, !tbaa !183
  %i.el = load double, ptr %i.j, align 8, !tbaa !183
  store double %i.el, ptr %i.l, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %.062, ptr %i.c, align 8, !tbaa !183
  %i.em = load double, ptr %i.f, align 8, !tbaa !183 ; 3 uses
  %i.en = load double, ptr %i.e, align 8, !tbaa !183 ; 5 uses
  %i.eo = fsub double %i.em, %i.en                ; 2 uses
  %i.ep = fmul double %i.en, f0x3CD0000000000000
  %i.eq = fcmp olt double %i.eo, %i.ep
  br i1 %i.eq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.er = fmul double %i.eo, 5.000000e-01
  %i.es = fadd double %i.en, %i.er
  br label %.sink.split.i85

bb.ah:                                            ; preds = %bb.af
  %i.et = call double @llvm.fabs.f64(double %i.en)
  %i.eu = fmul double %i.et, f0x3CC0000000000000
  %i.ev = fadd double %i.en, %i.eu                ; 2 uses
  %i.ew = fcmp ugt double %.062, %i.ev
  br i1 %i.ew, label %bb.ai, label %.sink.split.i85

bb.ai:                                            ; preds = %bb.ah
  %i.ex = call double @llvm.fabs.f64(double %i.em)
  %i.ey = fmul double %i.ex, f0x3CC0000000000000
  %i.ez = fsub double %i.em, %i.ey                ; 2 uses
  %i.fa = fcmp ult double %.062, %i.ez
  br i1 %i.fa, label %bb.aj, label %.sink.split.i85

.sink.split.i85:                                  ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sink.i86 = phi double [ %i.es, %bb.ag ], [ %i.ev, %bb.ah ], [ %i.ez, %bb.ai ]
  store double %.sink.i86, ptr %i.c, align 8, !tbaa !183
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.i85, %bb.ai
  %i.fb = load i8, ptr %i.db, align 8, !tbaa !22473, !range !284, !noundef !285
  %i.fc = trunc nuw i8 %i.fb to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  br i1 %i.fc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fd = load double, ptr %i.dc, align 8, !tbaa !22471
  store ptr %12, ptr %11, align 8
  store ptr %i.c, ptr %i.dd, align 8
  %i.fe = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_20poisson_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %11)
  %i.ff = fsub double %i.fd, %i.fe
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87

bb.al:                                            ; preds = %bb.aj
  %i.fg = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_20poisson_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(17) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.fh = load double, ptr %i.dc, align 8, !tbaa !22471
  %i.fi = fsub double %i.fg, %i.fh
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87

_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87: ; preds = %bb.al, %bb.ak
  %i.fj = phi double [ %i.ff, %bb.ak ], [ %i.fi, %bb.al ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  %i.fk = fcmp oeq double %i.fj, 0.000000e+00
  br i1 %i.fk, label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90.thread, label %bb.am

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90.thread: ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87
  %i.fl = load double, ptr %i.c, align 8, !tbaa !183
  store double %i.fl, ptr %i.e, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fm = add i64 %.1113, -1
  br label %.critedge.thread

bb.am:                                            ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87
  %i.fn = load double, ptr %i.g, align 8, !tbaa !183 ; 4 uses
  %i.fo = fcmp oeq double %i.fn, 0.000000e+00
  %i.fp = bitcast double %i.fn to i64
  %.not.i.i88 = icmp sgt i64 %i.fp, -1
  %i.fq = select i1 %.not.i.i88, i32 1, i32 -1
  %i.fr = select i1 %i.fo, i32 0, i32 %i.fq       ; 2 uses
  %i.fs = bitcast double %i.fj to i64
  %i.ft = sub nsw i32 0, %i.fr
  %.not.i3942.i89 = icmp slt i64 %i.fs, 0
  %i.fu = select i1 %.not.i3942.i89, i32 %i.ft, i32 %i.fr
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fw = load double, ptr %i.f, align 8, !tbaa !183
  store double %i.fw, ptr %i.i, align 8, !tbaa !183
  %i.fx = load double, ptr %i.h, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90

bb.ao:                                            ; preds = %bb.am
  %i.fy = load double, ptr %i.e, align 8, !tbaa !183
  store double %i.fy, ptr %i.i, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90: ; preds = %bb.an, %bb.ao
  %.sink167 = phi double [ %i.fx, %bb.an ], [ %i.fn, %bb.ao ] ; 4 uses
  %.sink166 = phi ptr [ %i.f, %bb.an ], [ %i.e, %bb.ao ]
  %.sink164 = phi ptr [ %i.h, %bb.an ], [ %i.g, %bb.ao ]
  %i.fz = phi double [ %i.fn, %bb.an ], [ %i.fj, %bb.ao ] ; 6 uses
  store double %.sink167, ptr %i.j, align 8, !tbaa !183
  %i.ga = load double, ptr %i.c, align 8, !tbaa !183
  store double %i.ga, ptr %.sink166, align 8, !tbaa !183
  store double %i.fj, ptr %.sink164, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gb = add i64 %.1113, -1                      ; 3 uses
  %i.gc = icmp eq i64 %i.gb, 0
  %i.gd = fcmp oeq double %i.fz, 0.000000e+00
  %or.cond9 = or i1 %i.gc, %i.gd
  br i1 %or.cond9, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90
  %i.ge = load double, ptr %i.e, align 8, !tbaa !183
  %i.gf = call double @llvm.floor.f64(double %i.ge)
  %i.gg = load double, ptr %i.f, align 8, !tbaa !183
  %i.gh = call double @llvm.floor.f64(double %i.gg)
  %i.gi = fcmp oeq double %i.gf, %i.gh
  br i1 %i.gi, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gj = load double, ptr %i.h, align 8, !tbaa !183 ; 3 uses
  %i.gk = fsub double %i.fz, %i.gj
  %i.gl = call double @llvm.fabs.f64(double %i.gk)
  %i.gm = fcmp olt double %i.gl, f0x0060000000000000
  br i1 %i.gm, label %.critedge78, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gn = fsub double %i.fz, %.sink167
  %i.go = call double @llvm.fabs.f64(double %i.gn)
  %i.gp = fcmp olt double %i.go, f0x0060000000000000
  br i1 %i.gp, label %.critedge78, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gq = load double, ptr %i.l, align 8, !tbaa !183 ; 3 uses
  %i.gr = fsub double %i.fz, %i.gq
  %i.gs = call double @llvm.fabs.f64(double %i.gr)
  %i.gt = fcmp olt double %i.gs, f0x0060000000000000
  br i1 %i.gt, label %.critedge78, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gu = fsub double %i.gj, %.sink167
  %i.gv = call double @llvm.fabs.f64(double %i.gu)
  %i.gw = fcmp olt double %i.gv, f0x0060000000000000
  br i1 %i.gw, label %.critedge78, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gx = fsub double %i.gj, %i.gq
  %i.gy = call double @llvm.fabs.f64(double %i.gx)
  %i.gz = fcmp olt double %i.gy, f0x0060000000000000
  br i1 %i.gz, label %.critedge78, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ha = fsub double %.sink167, %i.gq
  %i.hb = call double @llvm.fabs.f64(double %i.ha)
  %i.hc = fcmp olt double %i.hb, f0x0060000000000000
  br i1 %i.hc, label %.critedge78, label %bb.aw

.critedge78:                                      ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.av
  %i.hd = call noundef double @_ZN5boost4math5tools6detail21quadratic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 3)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.he = call noundef double @_ZN5boost4math5tools6detail17cubic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %bb.ax
end_hunk_4
begin_hunk_5_@_ZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_11equal_floorES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_:bb.a
  %i.hy = fsub double %i.hw, %i.hx
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93

bb.bd:                                            ; preds = %bb.bb
  %i.hz = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_20poisson_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(17) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ia = load double, ptr %i.df, align 8, !tbaa !22471
  %i.ib = fsub double %i.hz, %i.ia
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93

_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93: ; preds = %bb.bd, %bb.bc
  %i.ic = phi double [ %i.hy, %bb.bc ], [ %i.ib, %bb.bd ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %i.id = fcmp oeq double %i.ic, 0.000000e+00
  br i1 %i.id, label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96.thread, label %bb.be

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96.thread: ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93
  %i.ie = load double, ptr %i.b, align 8, !tbaa !183
  store double %i.ie, ptr %i.e, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.if = add i64 %.1113, -2
  br label %.critedge.thread

bb.be:                                            ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93
  %i.ig = load double, ptr %i.g, align 8, !tbaa !183 ; 4 uses
  %i.ih = fcmp oeq double %i.ig, 0.000000e+00
  %i.ii = bitcast double %i.ig to i64
  %.not.i.i94 = icmp sgt i64 %i.ii, -1
  %i.ij = select i1 %.not.i.i94, i32 1, i32 -1
  %i.ik = select i1 %i.ih, i32 0, i32 %i.ij       ; 2 uses
  %i.il = bitcast double %i.ic to i64
  %i.im = sub nsw i32 0, %i.ik
  %.not.i3942.i95 = icmp slt i64 %i.il, 0
  %i.in = select i1 %.not.i3942.i95, i32 %i.im, i32 %i.ik
  %i.io = icmp slt i32 %i.in, 0
  br i1 %i.io, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ip = load double, ptr %i.f, align 8, !tbaa !183 ; 2 uses
  store double %i.ip, ptr %i.i, align 8, !tbaa !183
  %i.iq = load double, ptr %i.h, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96

bb.bg:                                            ; preds = %bb.be
  %i.ir = load double, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  store double %i.ir, ptr %i.i, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96: ; preds = %bb.bf, %bb.bg
  %.sink171 = phi double [ %i.iq, %bb.bf ], [ %i.ig, %bb.bg ] ; 2 uses
  %.sink170 = phi ptr [ %i.f, %bb.bf ], [ %i.e, %bb.bg ]
  %.sink168 = phi ptr [ %i.h, %bb.bf ], [ %i.g, %bb.bg ]
  %i.is = phi double [ %i.ip, %bb.bf ], [ %i.ir, %bb.bg ]
  %i.it = phi double [ %i.ig, %bb.bf ], [ %i.ic, %bb.bg ] ; 6 uses
  store double %.sink171, ptr %i.j, align 8, !tbaa !183
  %i.iu = load double, ptr %i.b, align 8, !tbaa !183
  store double %i.iu, ptr %.sink170, align 8, !tbaa !183
  store double %i.ic, ptr %.sink168, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.iv = add i64 %.1113, -2                      ; 3 uses
  %i.iw = icmp eq i64 %i.iv, 0
  %i.ix = fcmp oeq double %i.it, 0.000000e+00
  %or.cond11 = or i1 %i.iw, %i.ix
  br i1 %or.cond11, label %.critedge, label %bb.bh

bb.bh:                                            ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96
  %i.iy = load double, ptr %i.e, align 8, !tbaa !183 ; 7 uses
  %i.iz = call double @llvm.floor.f64(double %i.iy)
  %i.ja = load double, ptr %i.f, align 8, !tbaa !183 ; 5 uses
  %i.jb = call double @llvm.floor.f64(double %i.ja)
  %i.jc = fcmp oeq double %i.iz, %i.jb
  br i1 %i.jc, label %.critedge, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jd = call double @llvm.fabs.f64(double %i.it)
  %i.je = load double, ptr %i.h, align 8, !tbaa !183 ; 3 uses
  %i.jf = call double @llvm.fabs.f64(double %i.je)
  %i.jg = fcmp olt double %i.jd, %i.jf            ; 2 uses
  %.79 = select i1 %i.jg, double %i.it, double %i.je
  %.061 = select i1 %i.jg, double %i.iy, double %i.ja ; 2 uses
  %i.jh = fsub double %i.je, %i.it
  %i.ji = fdiv double %.79, %i.jh
  %i.jj = fmul double %i.ji, 2.000000e+00
  %i.jk = fsub double %i.ja, %i.iy                ; 3 uses
  %i.jl = fmul double %i.jk, %i.jj
  %i.jm = fsub double %.061, %i.jl                ; 2 uses
  %i.jn = fsub double %i.jm, %.061
  %i.jo = call double @llvm.fabs.f64(double %i.jn)
  %i.jp = fmul double %i.jk, 5.000000e-01         ; 2 uses
  %i.jq = fcmp ogt double %i.jo, %i.jp
  %i.jr = fadd double %i.iy, %i.jp                ; 2 uses
  %.264 = select i1 %i.jq, double %i.jr, double %i.jm ; 3 uses
  store double %i.is, ptr %i.k, align 8, !tbaa !183
  store double %.sink171, ptr %i.l, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %.264, ptr %i.a, align 8, !tbaa !183
  %i.js = fmul double %i.iy, f0x3CD0000000000000
  %i.jt = fcmp olt double %i.jk, %i.js
  br i1 %i.jt, label %.sink.split.i97, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ju = call double @llvm.fabs.f64(double %i.iy)
  %i.jv = fmul double %i.ju, f0x3CC0000000000000
  %i.jw = fadd double %i.iy, %i.jv                ; 2 uses
  %i.jx = fcmp ugt double %.264, %i.jw
  br i1 %i.jx, label %bb.bk, label %.sink.split.i97

bb.bk:                                            ; preds = %bb.bj
  %i.jy = call double @llvm.fabs.f64(double %i.ja)
  %i.jz = fmul double %i.jy, f0x3CC0000000000000
  %i.ka = fsub double %i.ja, %i.jz                ; 2 uses
  %i.kb = fcmp ult double %.264, %i.ka
  br i1 %i.kb, label %bb.bl, label %.sink.split.i97

.sink.split.i97:                                  ; preds = %bb.bi, %bb.bk, %bb.bj
  %.sink.i98 = phi double [ %i.ka, %bb.bk ], [ %i.jw, %bb.bj ], [ %i.jr, %bb.bi ]
  store double %.sink.i98, ptr %i.a, align 8, !tbaa !183
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split.i97, %bb.bk
  %i.kc = load i8, ptr %i.dh, align 8, !tbaa !22473, !range !284, !noundef !285
  %i.kd = trunc nuw i8 %i.kc to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  br i1 %i.kd, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ke = load double, ptr %i.di, align 8, !tbaa !22471
  store ptr %8, ptr %7, align 8
  store ptr %i.a, ptr %i.dj, align 8
  %i.kf = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_20poisson_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.kg = fsub double %i.ke, %i.kf
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99

bb.bn:                                            ; preds = %bb.bl
  %i.kh = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_20poisson_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(17) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ki = load double, ptr %i.di, align 8, !tbaa !22471
  %i.kj = fsub double %i.kh, %i.ki
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99

_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99: ; preds = %bb.bn, %bb.bm
  %i.kk = phi double [ %i.kg, %bb.bm ], [ %i.kj, %bb.bn ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.kl = fcmp oeq double %i.kk, 0.000000e+00
  br i1 %i.kl, label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102.thread, label %bb.bo

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102.thread: ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99
  %i.km = load double, ptr %i.a, align 8, !tbaa !183
  store double %i.km, ptr %i.e, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kn = add i64 %.1113, -3
  br label %.critedge.thread

bb.bo:                                            ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99
  %i.ko = load double, ptr %i.g, align 8, !tbaa !183 ; 4 uses
  %i.kp = fcmp oeq double %i.ko, 0.000000e+00
  %i.kq = bitcast double %i.ko to i64
  %.not.i.i100 = icmp sgt i64 %i.kq, -1
  %i.kr = select i1 %.not.i.i100, i32 1, i32 -1
  %i.ks = select i1 %i.kp, i32 0, i32 %i.kr       ; 2 uses
  %i.kt = bitcast double %i.kk to i64
  %i.ku = sub nsw i32 0, %i.ks
  %.not.i3942.i101 = icmp slt i64 %i.kt, 0
  %i.kv = select i1 %.not.i3942.i101, i32 %i.ku, i32 %i.ks
  %i.kw = icmp slt i32 %i.kv, 0
  br i1 %i.kw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.kx = load double, ptr %i.f, align 8, !tbaa !183 ; 2 uses
  store double %i.kx, ptr %i.i, align 8, !tbaa !183
  %i.ky = load double, ptr %i.h, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102

bb.bq:                                            ; preds = %bb.bo
  %i.kz = load double, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  store double %i.kz, ptr %i.i, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102: ; preds = %bb.bp, %bb.bq
  %.sink175 = phi double [ %i.ky, %bb.bp ], [ %i.ko, %bb.bq ] ; 2 uses
  %.sink174 = phi ptr [ %i.f, %bb.bp ], [ %i.e, %bb.bq ]
  %.sink172 = phi ptr [ %i.h, %bb.bp ], [ %i.g, %bb.bq ]
  %i.la = phi double [ %i.kx, %bb.bp ], [ %i.kz, %bb.bq ]
  %i.lb = phi double [ %i.ko, %bb.bp ], [ %i.kk, %bb.bq ] ; 4 uses
  store double %.sink175, ptr %i.j, align 8, !tbaa !183
  %i.lc = load double, ptr %i.a, align 8, !tbaa !183
  store double %i.lc, ptr %.sink174, align 8, !tbaa !183
  store double %i.kk, ptr %.sink172, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ld = add i64 %.1113, -3                      ; 4 uses
  %i.le = icmp eq i64 %i.ld, 0
  %i.lf = fcmp oeq double %i.lb, 0.000000e+00
  %or.cond13 = or i1 %i.le, %i.lf
  br i1 %or.cond13, label %.critedge, label %bb.br

bb.br:                                            ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102
  %i.lg = load double, ptr %i.e, align 8, !tbaa !183 ; 4 uses
  %i.lh = call double @llvm.floor.f64(double %i.lg)
  %i.li = load double, ptr %i.f, align 8, !tbaa !183 ; 3 uses
  %i.lj = call double @llvm.floor.f64(double %i.li)
  %i.lk = fcmp oeq double %i.lh, %i.lj
  br i1 %i.lk, label %.critedge, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ll = fsub double %i.li, %i.lg                ; 2 uses
  %i.lm = fsub double %i.dk, %15
  %i.ln = fmul double %i.lm, 5.000000e-01
  %i.lo = fcmp olt double %i.ll, %i.ln
  br i1 %i.lo, label %bb.bu, label %bb.bt, !llvm.loop !22485

bb.bt:                                            ; preds = %bb.bs
  store double %i.la, ptr %i.k, align 8, !tbaa !183
  store double %.sink175, ptr %i.l, align 8, !tbaa !183
  %i.lp = fmul double %i.ll, 5.000000e-01
  %i.lq = fadd double %i.lg, %i.lp
  call void @_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_(ptr noundef nonnull byval(%"struct.boost::math::detail::distribution_quantile_finder.7592") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, double noundef %i.lq, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.lr = add i64 %.1113, -4
  %.pre115 = load double, ptr %i.e, align 8, !tbaa !183
  %.pre117 = load double, ptr %i.f, align 8, !tbaa !183
  %.pre115.a = load double, ptr %i.g, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.ls = phi double [ %.pre115.a, %bb.bt ], [ %i.lb, %bb.bs ] ; 3 uses
  %18 = phi double [ %.pre117, %bb.bt ], [ %i.li, %bb.bs ]
  %19 = phi double [ %.pre115, %bb.bt ], [ %i.lg, %bb.bs ]
  %.2 = phi i64 [ %i.lr, %bb.bt ], [ %i.ld, %bb.bs ] ; 3 uses
  %i.lt = icmp ne i64 %.2, 0
  %i.lu = fcmp une double %i.ls, 0.000000e+00
  %or.cond7 = select i1 %i.lt, i1 %i.lu, i1 false
  br i1 %or.cond7, label %bb.x, label %.critedge

.critedge.thread:                                 ; preds = %.thread, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102.thread, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90.thread, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96.thread
  %.3.ph = phi i64 [ %i.if, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96.thread ], [ %i.fm, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90.thread ], [ %i.kn, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102.thread ], [ %i.bx, %.thread ]
  %i.lv = load i64, ptr %5, align 8, !tbaa !258
  %i.lw = sub i64 %i.lv, %.3.ph
  store i64 %i.lw, ptr %5, align 8, !tbaa !258
  br label %bb.bv

.critedge:                                        ; preds = %bb.bu, %bb.x, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102, %bb.ap, %bb.bh, %bb.br, %bb.w
  %i.lx = phi double [ %i.cy, %bb.w ], [ %i.it, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96 ], [ %i.lb, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102 ], [ %i.fz, %bb.ap ], [ %i.it, %bb.bh ], [ %i.lb, %bb.br ], [ %16, %bb.x ], [ %i.ls, %bb.bu ], [ %i.fz, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90 ]
  %.3 = phi i64 [ %.059, %bb.w ], [ %i.iv, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96 ], [ %i.ld, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102 ], [ %i.gb, %bb.ap ], [ %i.iv, %bb.bh ], [ %i.ld, %bb.br ], [ %.1113, %bb.x ], [ %.2, %bb.bu ], [ %i.gb, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90 ]
  %i.ly = load i64, ptr %5, align 8, !tbaa !258
  %i.lz = sub i64 %i.ly, %.3
  store i64 %i.lz, ptr %5, align 8, !tbaa !258
  %i.ma = fcmp oeq double %i.lx, 0.000000e+00
  br i1 %i.ma, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.critedge.thread, %.critedge
  %i.mb = load double, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  br label %bb.by

bb.bw:                                            ; preds = %.critedge
  %i.mc = load double, ptr %i.h, align 8, !tbaa !183
  %i.md = fcmp oeq double %i.mc, 0.000000e+00
  br i1 %i.md, label %bb.bx, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bw
  %.pre117.a = load double, ptr %i.e, align 8, !tbaa !183
  %.pre118.a = load double, ptr %i.f, align 8, !tbaa !183
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.me = load double, ptr %i.f, align 8, !tbaa !183 ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge, %bb.bx, %bb.bv
  %i.mf = phi double [ %.pre118.a, %._crit_edge ], [ %i.me, %bb.bx ], [ %i.mb, %bb.bv ]
  %i.mg = phi double [ %.pre117.a, %._crit_edge ], [ %i.me, %bb.bx ], [ %i.mb, %bb.bv ]
  %.fca.0.insert.i103 = insertvalue { double, double } poison, double %i.mg, 0
  %.fca.1.insert.i104 = insertvalue { double, double } %.fca.0.insert.i103, double %i.mf, 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.h, %bb.f, %bb.d
  %.pn = phi { double, double } [ { double +qnan, double +qnan }, %bb.d ], [ %.fca.1.insert.i81, %bb.f ], [ { double +qnan, double +qnan }, %bb.h ], [ %.fca.1.insert.i104, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.b
  %.pn73 = phi { double, double } [ %.fca.1.insert.i, %bb.b ], [ %.pn, %bb.bz ]
  ret { double, double } %.pn73
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_(ptr noundef byval(%"struct.boost::math::detail::distribution_quantile_finder.7592") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"struct.boost::math::complemented2_type.7591", align 8 ; 5 uses
  %i.a = alloca double, align 8                   ; 7 uses
  store double %3, ptr %i.a, align 8, !tbaa !183
  %i.b = load double, ptr %2, align 8, !tbaa !183 ; 3 uses
  %i.c = load double, ptr %1, align 8, !tbaa !183 ; 5 uses
  %i.d = fsub double %i.b, %i.c                   ; 2 uses
  %i.e = fmul double %i.c, f0x3CD0000000000000
  %i.f = fcmp olt double %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = fmul double %i.d, 5.000000e-01
  %i.h = fadd double %i.c, %i.g
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.i = tail call double @llvm.fabs.f64(double %i.c)
  %i.j = fmul double %i.i, f0x3CC0000000000000
  %i.k = fadd double %i.c, %i.j                   ; 2 uses
  %i.l = fcmp ugt double %3, %i.k
  br i1 %i.l, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.m = tail call double @llvm.fabs.f64(double %i.b)
  %i.n = fmul double %i.m, f0x3CC0000000000000
  %i.o = fsub double %i.b, %i.n                   ; 2 uses
  %i.p = fcmp ult double %3, %i.o
  br i1 %i.p, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi double [ %i.h, %bb.b ], [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  store double %.sink, ptr %i.a, align 8, !tbaa !183
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !22473, !range !284, !noundef !285
  %i.s = trunc nuw i8 %i.r to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !22471
  store ptr %0, ptr %8, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.a, ptr %i.v, align 8
  %i.w = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_20poisson_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %8)
  %i.x = fsub double %i.u, %i.w
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit

bb.g:                                             ; preds = %bb.e
  %i.y = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_20poisson_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !22471
  %i.ab = fsub double %i.y, %i.aa
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit

_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit: ; preds = %bb.f, %bb.g
  %i.ac = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  %i.ad = fcmp oeq double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit
  %i.ae = load double, ptr %i.a, align 8, !tbaa !183
  store double %i.ae, ptr %1, align 8, !tbaa !183
  store double 0.000000e+00, ptr %4, align 8, !tbaa !183
  store double 0.000000e+00, ptr %6, align 8, !tbaa !183
  store double 0.000000e+00, ptr %7, align 8, !tbaa !183
  br label %bb.l

bb.i:                                             ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit
  %i.af = load double, ptr %4, align 8, !tbaa !183 ; 2 uses
  %i.ag = fcmp oeq double %i.af, 0.000000e+00
  %i.ah = bitcast double %i.af to i64
  %.not.i = icmp sgt i64 %i.ah, -1
  %i.ai = select i1 %.not.i, i32 1, i32 -1
  %i.aj = select i1 %i.ag, i32 0, i32 %i.ai       ; 2 uses
  %i.ak = bitcast double %i.ac to i64
  %i.al = sub nsw i32 0, %i.aj
  %.not.i3942 = icmp slt i64 %i.ak, 0
  %i.am = select i1 %.not.i3942, i32 %i.al, i32 %i.aj
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load double, ptr %2, align 8, !tbaa !183
  store double %i.ao, ptr %6, align 8, !tbaa !183
  %i.ap = load double, ptr %5, align 8, !tbaa !183
  store double %i.ap, ptr %7, align 8, !tbaa !183
  %i.aq = load double, ptr %i.a, align 8, !tbaa !183
  store double %i.aq, ptr %2, align 8, !tbaa !183
  store double %i.ac, ptr %5, align 8, !tbaa !183
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ar = load double, ptr %1, align 8, !tbaa !183
  store double %i.ar, ptr %6, align 8, !tbaa !183
  %i.as = load double, ptr %4, align 8, !tbaa !183
  store double %i.as, ptr %7, align 8, !tbaa !183
  %i.at = load double, ptr %i.a, align 8, !tbaa !183
  store double %i.at, ptr %1, align 8, !tbaa !183
  store double %i.ac, ptr %4, align 8, !tbaa !183
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { double, double } @_ZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_10equal_ceilES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_(ptr noundef byval(%"struct.boost::math::detail::distribution_quantile_finder.7592") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"struct.boost::math::complemented2_type.7591", align 8 ; 5 uses
  %i.a = alloca double, align 8                   ; 9 uses
  %8 = alloca %"struct.boost::math::detail::distribution_quantile_finder.7592", align 8 ; 8 uses
  %9 = alloca %"struct.boost::math::complemented2_type.7591", align 8 ; 5 uses
  %i.b = alloca double, align 8                   ; 9 uses
  %10 = alloca %"struct.boost::math::detail::distribution_quantile_finder.7592", align 8 ; 8 uses
  %11 = alloca %"struct.boost::math::complemented2_type.7591", align 8 ; 5 uses
  %i.c = alloca double, align 8                   ; 9 uses
  %12 = alloca %"struct.boost::math::detail::distribution_quantile_finder.7592", align 8 ; 8 uses
  %13 = alloca %"struct.boost::math::complemented2_type.7591", align 8 ; 5 uses
  %i.d = alloca double, align 8                   ; 9 uses
  %14 = alloca %"struct.boost::math::detail::distribution_quantile_finder.7592", align 8 ; 9 uses
  %i.e = alloca double, align 8                   ; 34 uses
  %i.f = alloca double, align 8                   ; 28 uses
  %i.g = alloca double, align 8                   ; 20 uses
  %i.h = alloca double, align 8                   ; 22 uses
  %i.i = alloca double, align 8                   ; 19 uses
  %i.j = alloca double, align 8                   ; 17 uses
  %i.k = alloca double, align 8                   ; 9 uses
  %i.l = alloca double, align 8                   ; 11 uses
  %i.m = load i64, ptr %5, align 8, !tbaa !258    ; 4 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load double, ptr %1, align 8, !tbaa !183
  %i.p = load double, ptr %2, align 8, !tbaa !183
  %.fca.0.insert.i = insertvalue { double, double } poison, double %i.o, 0
  %.fca.1.insert.i = insertvalue { double, double } %.fca.0.insert.i, double %i.p, 1
  br label %bb.ca

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #41
  %i.q = load double, ptr %1, align 8, !tbaa !183 ; 13 uses
  store double %i.q, ptr %i.e, align 8, !tbaa !183
  %i.r = load double, ptr %2, align 8, !tbaa !183 ; 11 uses
  store double %i.r, ptr %i.f, align 8, !tbaa !183
  %i.s = fcmp ult double %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr @_ZZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_10equal_ceilES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_E8function, align 8, !tbaa !884
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef %i.t, ptr noundef nonnull @.str.422, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.bz

bb.e:                                             ; preds = %bb.c
  %i.u = load double, ptr %3, align 8, !tbaa !183 ; 5 uses
  store double %i.u, ptr %i.g, align 8, !tbaa !183
  %i.v = load double, ptr %4, align 8, !tbaa !183 ; 4 uses
  store double %i.v, ptr %i.h, align 8, !tbaa !183
  %i.w = tail call double @llvm.ceil.f64(double %i.q)
  %i.x = tail call double @llvm.ceil.f64(double %i.r)
  %i.y = fcmp oeq double %i.w, %i.x
  %i.z = fcmp oeq double %i.u, 0.000000e+00       ; 3 uses
  %or.cond = select i1 %i.y, i1 true, i1 %i.z
  %i.aa = fcmp oeq double %i.v, 0.000000e+00      ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.aa
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %5, align 8, !tbaa !258
  %.not = xor i1 %i.aa, true
  %brmerge = select i1 %i.z, i1 true, i1 %.not
  %i.ab = select i1 %i.z, double %i.q, double %i.r
  %i.ac = select i1 %brmerge, double %i.q, double %i.r
  %.fca.0.insert.i80 = insertvalue { double, double } poison, double %i.ac, 0
  %.fca.1.insert.i81 = insertvalue { double, double } %.fca.0.insert.i80, double %i.ab, 1
  br label %bb.bz

bb.g:                                             ; preds = %bb.e
  %i.ad = bitcast double %i.u to i64
  %i.ae = bitcast double %i.v to i64
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = icmp sgt i64 %i.af, -1
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr @_ZZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_10equal_ceilES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_E8function, align 8, !tbaa !884
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef %i.ah, ptr noundef nonnull @.str.423, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.bz

bb.i:                                             ; preds = %bb.g
  store double 1.000000e+05, ptr %i.j, align 8, !tbaa !183
  store double 1.000000e+05, ptr %i.k, align 8, !tbaa !183
  store double 1.000000e+05, ptr %i.l, align 8, !tbaa !183
  %i.ai = fsub double %i.v, %i.u
  %i.aj = fdiv double %i.u, %i.ai
  %i.ak = fsub double %i.r, %i.q                  ; 3 uses
  %i.al = fmul double %i.ak, %i.aj
  %i.am = fsub double %i.q, %i.al                 ; 3 uses
  %i.an = tail call double @llvm.fabs.f64(double %i.q) ; 2 uses
  %i.ao = fmul double %i.an, f0x3CD4000000000000
  %i.ap = fadd double %i.q, %i.ao
  %i.aq = fcmp ugt double %i.am, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = tail call double @llvm.fabs.f64(double %i.r)
  %i.as = fmul double %i.ar, f0x3CD4000000000000
  %i.at = fsub double %i.r, %i.as
  %i.au = fcmp ult double %i.am, %i.at
  br i1 %i.au, label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.av = fadd double %i.q, %i.r
  %i.aw = fmul double %i.av, 5.000000e-01
  br label %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit

_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit: ; preds = %bb.j, %bb.k
  %.0.i = phi double [ %i.aw, %bb.k ], [ %i.am, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %.0.i, ptr %i.d, align 8, !tbaa !183
  %i.ax = fmul double %i.q, f0x3CD0000000000000
  %i.ay = fcmp olt double %i.ak, %i.ax
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit
  %i.az = fmul double %i.ak, 5.000000e-01
  %i.ba = fadd double %i.q, %i.az
  br label %.sink.split.i

bb.m:                                             ; preds = %_ZN5boost4math5tools6detail18secant_interpolateIdEET_RKS4_S6_S6_S6_.exit
  %i.bb = fmul double %i.an, f0x3CC0000000000000
  %i.bc = fadd double %i.q, %i.bb                 ; 2 uses
  %i.bd = fcmp ugt double %.0.i, %i.bc
  br i1 %i.bd, label %bb.n, label %.sink.split.i

bb.n:                                             ; preds = %bb.m
  %i.be = tail call double @llvm.fabs.f64(double %i.r)
  %i.bf = fmul double %i.be, f0x3CC0000000000000
  %i.bg = fsub double %i.r, %i.bf                 ; 2 uses
  %i.bh = fcmp ult double %.0.i, %i.bg
  br i1 %i.bh, label %bb.o, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %bb.m, %bb.l
  %.sink.i = phi double [ %i.ba, %bb.l ], [ %i.bc, %bb.m ], [ %i.bg, %bb.n ]
  store double %.sink.i, ptr %i.d, align 8, !tbaa !183
  br label %bb.o

bb.o:                                             ; preds = %.sink.split.i, %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !22473, !range !284, !noundef !285
  %i.bk = trunc nuw i8 %i.bj to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !22471
  store ptr %14, ptr %13, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.d, ptr %i.bn, align 8
  %i.bo = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_20poisson_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %13)
  %i.bp = fsub double %i.bm, %i.bo
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bq = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_20poisson_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(17) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !22471
  %i.bt = fsub double %i.bq, %i.bs
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i

_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i: ; preds = %bb.q, %bb.p
  %i.bu = phi double [ %i.bp, %bb.p ], [ %i.bt, %bb.q ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  %i.bv = fcmp oeq double %i.bu, 0.000000e+00
  br i1 %i.bv, label %.thread, label %bb.r

.thread:                                          ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i
  %i.bw = load double, ptr %i.d, align 8, !tbaa !183
  store double %i.bw, ptr %i.e, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bx = add i64 %i.m, -1
  br label %.critedge.thread

bb.r:                                             ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i
  %i.by = load double, ptr %i.g, align 8, !tbaa !183 ; 4 uses
  %i.bz = fcmp oeq double %i.by, 0.000000e+00
  %i.ca = bitcast double %i.by to i64
  %.not.i.i = icmp sgt i64 %i.ca, -1
  %i.cb = select i1 %.not.i.i, i32 1, i32 -1
  %i.cc = select i1 %i.bz, i32 0, i32 %i.cb       ; 2 uses
  %i.cd = bitcast double %i.bu to i64
  %i.ce = sub nsw i32 0, %i.cc
  %.not.i3942.i = icmp slt i64 %i.cd, 0
  %i.cf = select i1 %.not.i3942.i, i32 %i.ce, i32 %i.cc
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = load double, ptr %i.f, align 8, !tbaa !183
  store double %i.ch, ptr %i.i, align 8, !tbaa !183
  %i.ci = load double, ptr %i.h, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit

bb.t:                                             ; preds = %bb.r
  %i.cj = load double, ptr %i.e, align 8, !tbaa !183
  store double %i.cj, ptr %i.i, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit: ; preds = %bb.s, %bb.t
  %.sink163 = phi double [ %i.ci, %bb.s ], [ %i.by, %bb.t ]
  %.sink162 = phi ptr [ %i.f, %bb.s ], [ %i.e, %bb.t ]
  %.sink = phi ptr [ %i.h, %bb.s ], [ %i.g, %bb.t ]
  %i.ck = phi double [ %i.by, %bb.s ], [ %i.bu, %bb.t ] ; 3 uses
  store double %.sink163, ptr %i.j, align 8, !tbaa !183
  %i.cl = load double, ptr %i.d, align 8, !tbaa !183
  store double %i.cl, ptr %.sink162, align 8, !tbaa !183
  store double %i.bu, ptr %.sink, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cm = add i64 %i.m, -1                        ; 3 uses
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = fcmp une double %i.ck, 0.000000e+00
  %or.cond5 = and i1 %i.cn, %i.co
  br i1 %or.cond5, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit
  %i.cp = load double, ptr %i.e, align 8, !tbaa !183
  %i.cq = call double @llvm.ceil.f64(double %i.cp)
  %i.cr = load double, ptr %i.f, align 8, !tbaa !183
  %i.cs = call double @llvm.ceil.f64(double %i.cr)
  %i.ct = fcmp oeq double %i.cq, %i.cs
  br i1 %i.ct, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = call noundef double @_ZN5boost4math5tools6detail21quadratic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 2)
  %i.cv = load double, ptr %i.i, align 8, !tbaa !183
  store double %i.cv, ptr %i.k, align 8, !tbaa !183
  %i.cw = load double, ptr %i.j, align 8, !tbaa !183
  store double %i.cw, ptr %i.l, align 8, !tbaa !183
  call void @_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_(ptr noundef nonnull byval(%"struct.boost::math::detail::distribution_quantile_finder.7592") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, double noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.cx = add i64 %i.m, -2
  %.pre = load double, ptr %i.g, align 8
  br label %bb.w

bb.w:                                             ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit, %bb.u, %bb.v
  %i.cy = phi double [ %i.ck, %bb.u ], [ %.pre, %bb.v ], [ %i.ck, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit ] ; 3 uses
  %.059 = phi i64 [ %i.cm, %bb.u ], [ %i.cx, %bb.v ], [ %i.cm, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit ] ; 3 uses
  %i.cz = icmp ne i64 %.059, 0
  %i.da = fcmp une double %i.cy, 0.000000e+00
  %or.cond7112 = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %or.cond7112, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre116 = load double, ptr %i.e, align 8, !tbaa !183
  %.pre118 = load double, ptr %i.f, align 8, !tbaa !183
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.bu
  %i.dk = phi double [ %.pre118, %.lr.ph ], [ %18, %bb.bu ] ; 2 uses
  %15 = phi double [ %.pre116, %.lr.ph ], [ %19, %bb.bu ] ; 2 uses
  %16 = phi double [ %i.cy, %.lr.ph ], [ %i.ls, %bb.bu ] ; 4 uses
  %.1113 = phi i64 [ %.059, %.lr.ph ], [ %.2, %bb.bu ] ; 8 uses
  %17 = call double @llvm.ceil.f64(double %15)
  %i.dl = call double @llvm.ceil.f64(double %i.dk)
  %i.dm = fcmp oeq double %17, %i.dl
  br i1 %i.dm, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = load double, ptr %i.h, align 8, !tbaa !183 ; 3 uses
  %i.do = fsub double %16, %i.dn
  %i.dp = call double @llvm.fabs.f64(double %i.do)
  %i.dq = fcmp olt double %i.dp, f0x0060000000000000
  br i1 %i.dq, label %.critedge76, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dr = load double, ptr %i.j, align 8, !tbaa !183 ; 3 uses
  %i.ds = fsub double %16, %i.dr
  %i.dt = call double @llvm.fabs.f64(double %i.ds)
  %i.du = fcmp olt double %i.dt, f0x0060000000000000
  br i1 %i.du, label %.critedge76, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = load double, ptr %i.l, align 8, !tbaa !183 ; 3 uses
  %i.dw = fsub double %16, %i.dv
  %i.dx = call double @llvm.fabs.f64(double %i.dw)
  %i.dy = fcmp olt double %i.dx, f0x0060000000000000
  br i1 %i.dy, label %.critedge76, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = fsub double %i.dn, %i.dr
  %i.ea = call double @llvm.fabs.f64(double %i.dz)
  %i.eb = fcmp olt double %i.ea, f0x0060000000000000
  br i1 %i.eb, label %.critedge76, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = fsub double %i.dn, %i.dv
  %i.ed = call double @llvm.fabs.f64(double %i.ec)
  %i.ee = fcmp olt double %i.ed, f0x0060000000000000
  br i1 %i.ee, label %.critedge76, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = fsub double %i.dr, %i.dv
  %i.eg = call double @llvm.fabs.f64(double %i.ef)
  %i.eh = fcmp olt double %i.eg, f0x0060000000000000
  br i1 %i.eh, label %.critedge76, label %bb.ae

.critedge76:                                      ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.ad
  %i.ei = call noundef double @_ZN5boost4math5tools6detail21quadratic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 2)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ej = call noundef double @_ZN5boost4math5tools6detail17cubic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.critedge76
  %.062 = phi double [ %i.ei, %.critedge76 ], [ %i.ej, %bb.ae ] ; 3 uses
  %i.ek = load double, ptr %i.i, align 8, !tbaa !183
  store double %i.ek, ptr %i.k, align 8, !tbaa !183
  %i.el = load double, ptr %i.j, align 8, !tbaa !183
  store double %i.el, ptr %i.l, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %.062, ptr %i.c, align 8, !tbaa !183
  %i.em = load double, ptr %i.f, align 8, !tbaa !183 ; 3 uses
  %i.en = load double, ptr %i.e, align 8, !tbaa !183 ; 5 uses
  %i.eo = fsub double %i.em, %i.en                ; 2 uses
  %i.ep = fmul double %i.en, f0x3CD0000000000000
  %i.eq = fcmp olt double %i.eo, %i.ep
  br i1 %i.eq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.er = fmul double %i.eo, 5.000000e-01
  %i.es = fadd double %i.en, %i.er
  br label %.sink.split.i85

bb.ah:                                            ; preds = %bb.af
  %i.et = call double @llvm.fabs.f64(double %i.en)
  %i.eu = fmul double %i.et, f0x3CC0000000000000
  %i.ev = fadd double %i.en, %i.eu                ; 2 uses
  %i.ew = fcmp ugt double %.062, %i.ev
  br i1 %i.ew, label %bb.ai, label %.sink.split.i85

bb.ai:                                            ; preds = %bb.ah
  %i.ex = call double @llvm.fabs.f64(double %i.em)
  %i.ey = fmul double %i.ex, f0x3CC0000000000000
  %i.ez = fsub double %i.em, %i.ey                ; 2 uses
  %i.fa = fcmp ult double %.062, %i.ez
  br i1 %i.fa, label %bb.aj, label %.sink.split.i85

.sink.split.i85:                                  ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sink.i86 = phi double [ %i.es, %bb.ag ], [ %i.ev, %bb.ah ], [ %i.ez, %bb.ai ]
  store double %.sink.i86, ptr %i.c, align 8, !tbaa !183
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.i85, %bb.ai
  %i.fb = load i8, ptr %i.db, align 8, !tbaa !22473, !range !284, !noundef !285
  %i.fc = trunc nuw i8 %i.fb to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  br i1 %i.fc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fd = load double, ptr %i.dc, align 8, !tbaa !22471
  store ptr %12, ptr %11, align 8
  store ptr %i.c, ptr %i.dd, align 8
  %i.fe = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_20poisson_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %11)
  %i.ff = fsub double %i.fd, %i.fe
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87

bb.al:                                            ; preds = %bb.aj
  %i.fg = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_20poisson_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(17) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.fh = load double, ptr %i.dc, align 8, !tbaa !22471
  %i.fi = fsub double %i.fg, %i.fh
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87

_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87: ; preds = %bb.al, %bb.ak
  %i.fj = phi double [ %i.ff, %bb.ak ], [ %i.fi, %bb.al ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  %i.fk = fcmp oeq double %i.fj, 0.000000e+00
  br i1 %i.fk, label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90.thread, label %bb.am

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90.thread: ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87
  %i.fl = load double, ptr %i.c, align 8, !tbaa !183
  store double %i.fl, ptr %i.e, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fm = add i64 %.1113, -1
  br label %.critedge.thread

bb.am:                                            ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i87
  %i.fn = load double, ptr %i.g, align 8, !tbaa !183 ; 4 uses
  %i.fo = fcmp oeq double %i.fn, 0.000000e+00
  %i.fp = bitcast double %i.fn to i64
  %.not.i.i88 = icmp sgt i64 %i.fp, -1
  %i.fq = select i1 %.not.i.i88, i32 1, i32 -1
  %i.fr = select i1 %i.fo, i32 0, i32 %i.fq       ; 2 uses
  %i.fs = bitcast double %i.fj to i64
  %i.ft = sub nsw i32 0, %i.fr
  %.not.i3942.i89 = icmp slt i64 %i.fs, 0
  %i.fu = select i1 %.not.i3942.i89, i32 %i.ft, i32 %i.fr
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fw = load double, ptr %i.f, align 8, !tbaa !183
  store double %i.fw, ptr %i.i, align 8, !tbaa !183
  %i.fx = load double, ptr %i.h, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90

bb.ao:                                            ; preds = %bb.am
  %i.fy = load double, ptr %i.e, align 8, !tbaa !183
  store double %i.fy, ptr %i.i, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90: ; preds = %bb.an, %bb.ao
  %.sink167 = phi double [ %i.fx, %bb.an ], [ %i.fn, %bb.ao ] ; 4 uses
  %.sink166 = phi ptr [ %i.f, %bb.an ], [ %i.e, %bb.ao ]
  %.sink164 = phi ptr [ %i.h, %bb.an ], [ %i.g, %bb.ao ]
  %i.fz = phi double [ %i.fn, %bb.an ], [ %i.fj, %bb.ao ] ; 6 uses
  store double %.sink167, ptr %i.j, align 8, !tbaa !183
  %i.ga = load double, ptr %i.c, align 8, !tbaa !183
  store double %i.ga, ptr %.sink166, align 8, !tbaa !183
  store double %i.fj, ptr %.sink164, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gb = add i64 %.1113, -1                      ; 3 uses
  %i.gc = icmp eq i64 %i.gb, 0
  %i.gd = fcmp oeq double %i.fz, 0.000000e+00
  %or.cond9 = or i1 %i.gc, %i.gd
  br i1 %or.cond9, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90
  %i.ge = load double, ptr %i.e, align 8, !tbaa !183
  %i.gf = call double @llvm.ceil.f64(double %i.ge)
  %i.gg = load double, ptr %i.f, align 8, !tbaa !183
  %i.gh = call double @llvm.ceil.f64(double %i.gg)
  %i.gi = fcmp oeq double %i.gf, %i.gh
  br i1 %i.gi, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gj = load double, ptr %i.h, align 8, !tbaa !183 ; 3 uses
  %i.gk = fsub double %i.fz, %i.gj
  %i.gl = call double @llvm.fabs.f64(double %i.gk)
  %i.gm = fcmp olt double %i.gl, f0x0060000000000000
  br i1 %i.gm, label %.critedge78, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gn = fsub double %i.fz, %.sink167
  %i.go = call double @llvm.fabs.f64(double %i.gn)
  %i.gp = fcmp olt double %i.go, f0x0060000000000000
  br i1 %i.gp, label %.critedge78, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gq = load double, ptr %i.l, align 8, !tbaa !183 ; 3 uses
  %i.gr = fsub double %i.fz, %i.gq
  %i.gs = call double @llvm.fabs.f64(double %i.gr)
  %i.gt = fcmp olt double %i.gs, f0x0060000000000000
  br i1 %i.gt, label %.critedge78, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gu = fsub double %i.gj, %.sink167
  %i.gv = call double @llvm.fabs.f64(double %i.gu)
  %i.gw = fcmp olt double %i.gv, f0x0060000000000000
  br i1 %i.gw, label %.critedge78, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gx = fsub double %i.gj, %i.gq
  %i.gy = call double @llvm.fabs.f64(double %i.gx)
  %i.gz = fcmp olt double %i.gy, f0x0060000000000000
  br i1 %i.gz, label %.critedge78, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ha = fsub double %.sink167, %i.gq
  %i.hb = call double @llvm.fabs.f64(double %i.ha)
  %i.hc = fcmp olt double %i.hb, f0x0060000000000000
  br i1 %i.hc, label %.critedge78, label %bb.aw

.critedge78:                                      ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.av
  %i.hd = call noundef double @_ZN5boost4math5tools6detail21quadratic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 3)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.he = call noundef double @_ZN5boost4math5tools6detail17cubic_interpolateIdEET_RKS4_S6_S6_S6_S6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %bb.ax
end_hunk_5
begin_hunk_6_@_ZN5boost4math5tools13toms748_solveINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEEEdNS1_10equal_ceilES9_EESt4pairIT0_SE_ET_RKSE_SI_SI_SI_T1_RmRKT2_:bb.a
  %i.hy = fsub double %i.hw, %i.hx
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93

bb.bd:                                            ; preds = %bb.bb
  %i.hz = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_20poisson_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(17) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ia = load double, ptr %i.df, align 8, !tbaa !22471
  %i.ib = fsub double %i.hz, %i.ia
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93

_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93: ; preds = %bb.bd, %bb.bc
  %i.ic = phi double [ %i.hy, %bb.bc ], [ %i.ib, %bb.bd ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %i.id = fcmp oeq double %i.ic, 0.000000e+00
  br i1 %i.id, label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96.thread, label %bb.be

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96.thread: ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93
  %i.ie = load double, ptr %i.b, align 8, !tbaa !183
  store double %i.ie, ptr %i.e, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.if = add i64 %.1113, -2
  br label %.critedge.thread

bb.be:                                            ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i93
  %i.ig = load double, ptr %i.g, align 8, !tbaa !183 ; 4 uses
  %i.ih = fcmp oeq double %i.ig, 0.000000e+00
  %i.ii = bitcast double %i.ig to i64
  %.not.i.i94 = icmp sgt i64 %i.ii, -1
  %i.ij = select i1 %.not.i.i94, i32 1, i32 -1
  %i.ik = select i1 %i.ih, i32 0, i32 %i.ij       ; 2 uses
  %i.il = bitcast double %i.ic to i64
  %i.im = sub nsw i32 0, %i.ik
  %.not.i3942.i95 = icmp slt i64 %i.il, 0
  %i.in = select i1 %.not.i3942.i95, i32 %i.im, i32 %i.ik
  %i.io = icmp slt i32 %i.in, 0
  br i1 %i.io, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ip = load double, ptr %i.f, align 8, !tbaa !183 ; 2 uses
  store double %i.ip, ptr %i.i, align 8, !tbaa !183
  %i.iq = load double, ptr %i.h, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96

bb.bg:                                            ; preds = %bb.be
  %i.ir = load double, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  store double %i.ir, ptr %i.i, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96: ; preds = %bb.bf, %bb.bg
  %.sink171 = phi double [ %i.iq, %bb.bf ], [ %i.ig, %bb.bg ] ; 2 uses
  %.sink170 = phi ptr [ %i.f, %bb.bf ], [ %i.e, %bb.bg ]
  %.sink168 = phi ptr [ %i.h, %bb.bf ], [ %i.g, %bb.bg ]
  %i.is = phi double [ %i.ip, %bb.bf ], [ %i.ir, %bb.bg ]
  %i.it = phi double [ %i.ig, %bb.bf ], [ %i.ic, %bb.bg ] ; 6 uses
  store double %.sink171, ptr %i.j, align 8, !tbaa !183
  %i.iu = load double, ptr %i.b, align 8, !tbaa !183
  store double %i.iu, ptr %.sink170, align 8, !tbaa !183
  store double %i.ic, ptr %.sink168, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.iv = add i64 %.1113, -2                      ; 3 uses
  %i.iw = icmp eq i64 %i.iv, 0
  %i.ix = fcmp oeq double %i.it, 0.000000e+00
  %or.cond11 = or i1 %i.iw, %i.ix
  br i1 %or.cond11, label %.critedge, label %bb.bh

bb.bh:                                            ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96
  %i.iy = load double, ptr %i.e, align 8, !tbaa !183 ; 7 uses
  %i.iz = call double @llvm.ceil.f64(double %i.iy)
  %i.ja = load double, ptr %i.f, align 8, !tbaa !183 ; 5 uses
  %i.jb = call double @llvm.ceil.f64(double %i.ja)
  %i.jc = fcmp oeq double %i.iz, %i.jb
  br i1 %i.jc, label %.critedge, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jd = call double @llvm.fabs.f64(double %i.it)
  %i.je = load double, ptr %i.h, align 8, !tbaa !183 ; 3 uses
  %i.jf = call double @llvm.fabs.f64(double %i.je)
  %i.jg = fcmp olt double %i.jd, %i.jf            ; 2 uses
  %.79 = select i1 %i.jg, double %i.it, double %i.je
  %.061 = select i1 %i.jg, double %i.iy, double %i.ja ; 2 uses
  %i.jh = fsub double %i.je, %i.it
  %i.ji = fdiv double %.79, %i.jh
  %i.jj = fmul double %i.ji, 2.000000e+00
  %i.jk = fsub double %i.ja, %i.iy                ; 3 uses
  %i.jl = fmul double %i.jk, %i.jj
  %i.jm = fsub double %.061, %i.jl                ; 2 uses
  %i.jn = fsub double %i.jm, %.061
  %i.jo = call double @llvm.fabs.f64(double %i.jn)
  %i.jp = fmul double %i.jk, 5.000000e-01         ; 2 uses
  %i.jq = fcmp ogt double %i.jo, %i.jp
  %i.jr = fadd double %i.iy, %i.jp                ; 2 uses
  %.264 = select i1 %i.jq, double %i.jr, double %i.jm ; 3 uses
  store double %i.is, ptr %i.k, align 8, !tbaa !183
  store double %.sink171, ptr %i.l, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %.264, ptr %i.a, align 8, !tbaa !183
  %i.js = fmul double %i.iy, f0x3CD0000000000000
  %i.jt = fcmp olt double %i.jk, %i.js
  br i1 %i.jt, label %.sink.split.i97, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ju = call double @llvm.fabs.f64(double %i.iy)
  %i.jv = fmul double %i.ju, f0x3CC0000000000000
  %i.jw = fadd double %i.iy, %i.jv                ; 2 uses
  %i.jx = fcmp ugt double %.264, %i.jw
  br i1 %i.jx, label %bb.bk, label %.sink.split.i97

bb.bk:                                            ; preds = %bb.bj
  %i.jy = call double @llvm.fabs.f64(double %i.ja)
  %i.jz = fmul double %i.jy, f0x3CC0000000000000
  %i.ka = fsub double %i.ja, %i.jz                ; 2 uses
  %i.kb = fcmp ult double %.264, %i.ka
  br i1 %i.kb, label %bb.bl, label %.sink.split.i97

.sink.split.i97:                                  ; preds = %bb.bi, %bb.bk, %bb.bj
  %.sink.i98 = phi double [ %i.ka, %bb.bk ], [ %i.jw, %bb.bj ], [ %i.jr, %bb.bi ]
  store double %.sink.i98, ptr %i.a, align 8, !tbaa !183
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split.i97, %bb.bk
  %i.kc = load i8, ptr %i.dh, align 8, !tbaa !22473, !range !284, !noundef !285
  %i.kd = trunc nuw i8 %i.kc to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  br i1 %i.kd, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ke = load double, ptr %i.di, align 8, !tbaa !22471
  store ptr %8, ptr %7, align 8
  store ptr %i.a, ptr %i.dj, align 8
  %i.kf = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_18complemented2_typeINS0_20poisson_distributionIS6_T0_EES6_EE(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.kg = fsub double %i.ke, %i.kf
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99

bb.bn:                                            ; preds = %bb.bl
  %i.kh = call noundef double @_ZN5boost4math3cdfIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_20poisson_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(17) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ki = load double, ptr %i.di, align 8, !tbaa !22471
  %i.kj = fsub double %i.kh, %i.ki
  br label %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99

_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99: ; preds = %bb.bn, %bb.bm
  %i.kk = phi double [ %i.kg, %bb.bm ], [ %i.kj, %bb.bn ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.kl = fcmp oeq double %i.kk, 0.000000e+00
  br i1 %i.kl, label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102.thread, label %bb.bo

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102.thread: ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99
  %i.km = load double, ptr %i.a, align 8, !tbaa !183
  store double %i.km, ptr %i.e, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kn = add i64 %.1113, -3
  br label %.critedge.thread

bb.bo:                                            ; preds = %_ZN5boost4math6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS4_14default_policyES6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_S6_EEEEEclERKd.exit.i99
  %i.ko = load double, ptr %i.g, align 8, !tbaa !183 ; 4 uses
  %i.kp = fcmp oeq double %i.ko, 0.000000e+00
  %i.kq = bitcast double %i.ko to i64
  %.not.i.i100 = icmp sgt i64 %i.kq, -1
  %i.kr = select i1 %.not.i.i100, i32 1, i32 -1
  %i.ks = select i1 %i.kp, i32 0, i32 %i.kr       ; 2 uses
  %i.kt = bitcast double %i.kk to i64
  %i.ku = sub nsw i32 0, %i.ks
  %.not.i3942.i101 = icmp slt i64 %i.kt, 0
  %i.kv = select i1 %.not.i3942.i101, i32 %i.ku, i32 %i.ks
  %i.kw = icmp slt i32 %i.kv, 0
  br i1 %i.kw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.kx = load double, ptr %i.f, align 8, !tbaa !183 ; 2 uses
  store double %i.kx, ptr %i.i, align 8, !tbaa !183
  %i.ky = load double, ptr %i.h, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102

bb.bq:                                            ; preds = %bb.bo
  %i.kz = load double, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  store double %i.kz, ptr %i.i, align 8, !tbaa !183
  br label %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102

_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102: ; preds = %bb.bp, %bb.bq
  %.sink175 = phi double [ %i.ky, %bb.bp ], [ %i.ko, %bb.bq ] ; 2 uses
  %.sink174 = phi ptr [ %i.f, %bb.bp ], [ %i.e, %bb.bq ]
  %.sink172 = phi ptr [ %i.h, %bb.bp ], [ %i.g, %bb.bq ]
  %i.la = phi double [ %i.kx, %bb.bp ], [ %i.kz, %bb.bq ]
  %i.lb = phi double [ %i.ko, %bb.bp ], [ %i.kk, %bb.bq ] ; 4 uses
  store double %.sink175, ptr %i.j, align 8, !tbaa !183
  %i.lc = load double, ptr %i.a, align 8, !tbaa !183
  store double %i.lc, ptr %.sink174, align 8, !tbaa !183
  store double %i.kk, ptr %.sink172, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ld = add i64 %.1113, -3                      ; 4 uses
  %i.le = icmp eq i64 %i.ld, 0
  %i.lf = fcmp oeq double %i.lb, 0.000000e+00
  %or.cond13 = or i1 %i.le, %i.lf
  br i1 %or.cond13, label %.critedge, label %bb.br

bb.br:                                            ; preds = %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102
  %i.lg = load double, ptr %i.e, align 8, !tbaa !183 ; 4 uses
  %i.lh = call double @llvm.ceil.f64(double %i.lg)
  %i.li = load double, ptr %i.f, align 8, !tbaa !183 ; 3 uses
  %i.lj = call double @llvm.ceil.f64(double %i.li)
  %i.lk = fcmp oeq double %i.lh, %i.lj
  br i1 %i.lk, label %.critedge, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ll = fsub double %i.li, %i.lg                ; 2 uses
  %i.lm = fsub double %i.dk, %15
  %i.ln = fmul double %i.lm, 5.000000e-01
  %i.lo = fcmp olt double %i.ll, %i.ln
  br i1 %i.lo, label %bb.bu, label %bb.bt, !llvm.loop !22486

bb.bt:                                            ; preds = %bb.bs
  store double %i.la, ptr %i.k, align 8, !tbaa !183
  store double %.sink175, ptr %i.l, align 8, !tbaa !183
  %i.lp = fmul double %i.ll, 5.000000e-01
  %i.lq = fadd double %i.lg, %i.lp
  call void @_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_(ptr noundef nonnull byval(%"struct.boost::math::detail::distribution_quantile_finder.7592") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, double noundef %i.lq, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.lr = add i64 %.1113, -4
  %.pre115 = load double, ptr %i.e, align 8, !tbaa !183
  %.pre117 = load double, ptr %i.f, align 8, !tbaa !183
  %.pre115.a = load double, ptr %i.g, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.ls = phi double [ %.pre115.a, %bb.bt ], [ %i.lb, %bb.bs ] ; 3 uses
  %18 = phi double [ %.pre117, %bb.bt ], [ %i.li, %bb.bs ]
  %19 = phi double [ %.pre115, %bb.bt ], [ %i.lg, %bb.bs ]
  %.2 = phi i64 [ %i.lr, %bb.bt ], [ %i.ld, %bb.bs ] ; 3 uses
  %i.lt = icmp ne i64 %.2, 0
  %i.lu = fcmp une double %i.ls, 0.000000e+00
  %or.cond7 = select i1 %i.lt, i1 %i.lu, i1 false
  br i1 %or.cond7, label %bb.x, label %.critedge

.critedge.thread:                                 ; preds = %.thread, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102.thread, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90.thread, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96.thread
  %.3.ph = phi i64 [ %i.if, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96.thread ], [ %i.fm, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90.thread ], [ %i.kn, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102.thread ], [ %i.bx, %.thread ]
  %i.lv = load i64, ptr %5, align 8, !tbaa !258
  %i.lw = sub i64 %i.lv, %.3.ph
  store i64 %i.lw, ptr %5, align 8, !tbaa !258
  br label %bb.bv

.critedge:                                        ; preds = %bb.bu, %bb.x, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102, %bb.ap, %bb.bh, %bb.br, %bb.w
  %i.lx = phi double [ %i.cy, %bb.w ], [ %i.it, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96 ], [ %i.lb, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102 ], [ %i.fz, %bb.ap ], [ %i.it, %bb.bh ], [ %i.lb, %bb.br ], [ %16, %bb.x ], [ %i.ls, %bb.bu ], [ %i.fz, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90 ]
  %.3 = phi i64 [ %.059, %bb.w ], [ %i.iv, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit96 ], [ %i.ld, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit102 ], [ %i.gb, %bb.ap ], [ %i.iv, %bb.bh ], [ %i.ld, %bb.br ], [ %.1113, %bb.x ], [ %.2, %bb.bu ], [ %i.gb, %_ZN5boost4math5tools6detail7bracketINS0_6detail28distribution_quantile_finderINS0_20poisson_distributionIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEEEdEEvT_RT0_SF_SE_SF_SF_SF_SF_.exit90 ]
  %i.ly = load i64, ptr %5, align 8, !tbaa !258
  %i.lz = sub i64 %i.ly, %.3
  store i64 %i.lz, ptr %5, align 8, !tbaa !258
  %i.ma = fcmp oeq double %i.lx, 0.000000e+00
  br i1 %i.ma, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.critedge.thread, %.critedge
  %i.mb = load double, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  br label %bb.by

bb.bw:                                            ; preds = %.critedge
  %i.mc = load double, ptr %i.h, align 8, !tbaa !183
  %i.md = fcmp oeq double %i.mc, 0.000000e+00
  br i1 %i.md, label %bb.bx, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bw
  %.pre117.a = load double, ptr %i.e, align 8, !tbaa !183
  %.pre118.a = load double, ptr %i.f, align 8, !tbaa !183
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.me = load double, ptr %i.f, align 8, !tbaa !183 ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge, %bb.bx, %bb.bv
  %i.mf = phi double [ %.pre118.a, %._crit_edge ], [ %i.me, %bb.bx ], [ %i.mb, %bb.bv ]
  %i.mg = phi double [ %.pre117.a, %._crit_edge ], [ %i.me, %bb.bx ], [ %i.mb, %bb.bv ]
  %.fca.0.insert.i103 = insertvalue { double, double } poison, double %i.mg, 0
  %.fca.1.insert.i104 = insertvalue { double, double } %.fca.0.insert.i103, double %i.mf, 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.h, %bb.f, %bb.d
  %.pn = phi { double, double } [ { double +qnan, double +qnan }, %bb.d ], [ %.fca.1.insert.i81, %bb.f ], [ { double +qnan, double +qnan }, %bb.h ], [ %.fca.1.insert.i104, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.b
  %.pn73 = phi { double, double } [ %.fca.1.insert.i, %bb.b ], [ %.pn, %bb.bz ]
  ret { double, double } %.pn73
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_125InversePoissonCDFFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_20ConstantVectorReaderIdEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %3 = alloca %"class.boost::math::poisson_distribution", align 8 ; 4 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !22487, !range !284, !noundef !285
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22490
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !258
  %i.h = xor i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = xor i64 %i.g, %i.j
  %i.l = and i64 %i.k, %2                         ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %.loopexit41, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = shl nsw i32 %1, 6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_125InversePoissonCDFFunctionINS1_10VectorExecEEESA_iNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS1_20ConstantVectorReaderIdEESI_EEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_ENKUlSO_E_clIiEEDaSO_.exit
  %.048 = phi i64 [ %i.l, %.preheader ], [ %i.bv, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_125InversePoissonCDFFunctionINS1_10VectorExecEEESA_iNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS1_20ConstantVectorReaderIdEESI_EEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_ENKUlSO_E_clIiEEDaSO_.exit ] ; 3 uses
  %i.p = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.048, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q               ; 3 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !22491 ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !22492, !nonnull !285, !align !859 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22297, !nonnull !285, !align !859
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22300, !nonnull !285, !align !859
  %i.y = load double, ptr %i.v, align 8, !tbaa !183, !noalias !22493 ; 2 uses
  %i.z = load double, ptr %i.x, align 8, !tbaa !183, !noalias !22496 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.z, ptr %i.a, align 8, !tbaa !183
  %i.aa = fcmp olt double %i.z, 1.000000e+00
  %i.ab = call i1 @llvm.is.fpclass.f64(double %i.z, i32 480)
  %i.ac = and i1 %i.ab, %i.aa
  br i1 %i.ac, label %bb.c, label %.invoke, !prof !334

.invoke:                                          ; preds = %bb.c, %bb.b
  %i.ad = phi ptr [ @_ZZN8facebook5velox9functions12_GLOBAL__N_125InversePoissonCDFFunctionINS0_4exec10VectorExecEE4callERiddE18veloxCheckFailArgs, %bb.b ], [ @_ZZN8facebook5velox9functions12_GLOBAL__N_125InversePoissonCDFFunctionINS0_4exec10VectorExecEE4callERiddE18veloxCheckFailArgs_0, %bb.c ]
  %i.ae = phi ptr [ @.str.425, %bb.b ], [ @.str.427, %bb.c ]
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull %i.ae) #44
          to label %.cont unwind label %.body

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.af = call i1 @llvm.is.fpclass.f64(double %i.y, i32 639)
  br i1 %i.af, label %.invoke, label %.noexc19, !prof !39

.noexc19:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store double %i.y, ptr %3, align 8, !tbaa !11133
  %i.ag = invoke noundef double @_ZN5boost4math8quantileIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEET_RKNS0_20poisson_distributionIS6_T0_EERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN8facebook5velox6StatusD2Ev.exit30 unwind label %.body ; 2 uses

_ZN8facebook5velox6StatusD2Ev.exit30:             ; preds = %.noexc19
  %.inv = fcmp oge double %i.ag, f0x41DFFFFFFFC00000
  %storemerge.i40 = select i1 %.inv, double f0x41DFFFFFFFC00000, double %i.ag
  %storemerge.i = fptosi double %storemerge.i40 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !22307, !nonnull !285, !align !859
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !22308, !nonnull !285, !align !859
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !21574
  %i.am = sext i32 %i.r to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  store i32 %storemerge.i, ptr %i.an, align 4, !tbaa !3
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_125InversePoissonCDFFunctionINS1_10VectorExecEEESA_iNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS1_20ConstantVectorReaderIdEESI_EEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_ENKUlSO_E_clIiEEDaSO_.exit

.body:                                            ; preds = %.invoke, %.noexc19
  %i.ao = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0      ; 2 uses
  %i.aq = extractvalue { ptr, i32 } %i.ao, 1      ; 2 uses
  %i.ar = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.as = icmp eq i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.body
  %i.at = call ptr @__cxa_begin_catch(ptr %i.ap) #41
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !2683 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !7  ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 152
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.ba = icmp eq i64 %i.az, 4
  br i1 %i.ba, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.d
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !28
  %or.cond.not.i.i.i = icmp eq i8 %i.bb, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !28
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.bd, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !28
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.bf, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !28
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.bh, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.s, i32 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.l unwind label %bb.n

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #44
          to label %bb.r unwind label %bb.k

bb.e:                                             ; preds = %.body
  %i.bi = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.bj = icmp eq i32 %i.aq, %i.bi
  br i1 %i.bj, label %bb.f, label %.loopexit42

bb.f:                                             ; preds = %bb.e
  %i.bk = call ptr @__cxa_begin_catch(ptr %i.ap) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.s, i32 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bl = load ptr, ptr %4, align 8, !tbaa !510
  %.not.i31 = icmp eq ptr %i.bl, null
end_hunk_6
