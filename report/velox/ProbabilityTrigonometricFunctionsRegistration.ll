inline.NumInlined: 54764
inline.NumDeleted: 11386
loop-unroll.NumCompletelyUnrolled: 843
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 896
begin_hunk_0_@_ZN5boost4math6detail18find_inverse_gammaIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_S7_S7_S7_RKT0_Pb:bb.a
  %i.pp = fmul double %i.pg, %i.po
  br label %bb.av

bb.av:                                            ; preds = %bb.u, %bb.w, %bb.aa, %bb.z, %bb.ar, %bb.as, %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit332, %bb.j, %bb.n, %bb.p, %bb.l, %bb.r, %bb.q, %bb.b
  %.4 = phi double [ %i.f, %bb.b ], [ %i.fi, %bb.q ], [ %i.ac, %bb.j ], [ %i.ak, %bb.l ], [ %i.az, %bb.n ], [ %i.by, %bb.p ], [ %i.fi, %bb.r ], [ %i.hn, %bb.u ], [ %i.mi, %bb.aa ], [ %i.hn, %bb.w ], [ %i.lr, %bb.z ], [ %.0309, %bb.as ], [ %.0309, %bb.ar ], [ %i.pp, %_ZN5boost4math6lgammaIdNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_fffffE4typeES8_RKT0_.exit332 ]
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
  store double %1, ptr %i.k, align 8, !tbaa !185
  store double %2, ptr %i.l, align 8, !tbaa !185
  store double %3, ptr %i.m, align 8, !tbaa !185
  %i.p = fcmp ult double %2, %3
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr @_ZZN5boost4math5tools6detail24second_order_root_finderINS2_11halley_stepENS0_6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS7_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEEdEET1_T0_SC_SC_SC_iRmE8function, align 8, !tbaa !887
  call void @_ZN5boost4math8policies6detail11raise_errorINS0_16evaluation_errorEdEEvPKcS6_RKT0_(ptr noundef %i.q, ptr noundef nonnull @.str.354, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %bb.bi

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #41
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !185
  %i.r = sub nsw i32 1, %4
  %i.s = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.r) #41
  %i.t = fmul double %1, 1.000000e+07             ; 2 uses
  %i.u = fcmp olt double %i.t, 1.000000e+07
  %.sroa.speculated = select i1 %i.u, double 1.000000e+07, double %i.t ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #41
  %i.v = load i64, ptr %5, align 8, !tbaa !260
  store i64 %i.v, ptr %i.o, align 8, !tbaa !260
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load double, ptr %0, align 8, !tbaa !21288, !noalias !21290 ; 2 uses
  %.pre196 = load i8, ptr %i.w, align 8, !tbaa !21293, !range !286, !noalias !21290
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
  %i.ab = load double, ptr %i.n, align 8, !tbaa !185 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #41, !noalias !21290
  %i.ac = fpext double %i.aa to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41, !noalias !21290
  %i.ad = invoke noundef x86_fp80 @_ZN5boost4math6detail20gamma_incomplete_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_bbRKT0_PSB_(x86_fp80 noundef %i.y, x86_fp80 noundef %i.ac, i1 noundef zeroext true, i1 noundef zeroext %i.z, ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef nonnull %i.j)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41, !noalias !21290
  %i.ae = load x86_fp80, ptr %i.j, align 16, !tbaa !182, !noalias !21290
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
  %i.aw = load double, ptr %i.x, align 8, !tbaa !21294, !noalias !21290
  %i.ax = fsub double %i.av, %i.aw                ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #41, !noalias !21290
  store double %i.ax, ptr %i.n, align 8, !tbaa !185
  %i.ay = load i64, ptr %i.o, align 8, !tbaa !260
  %i.az = add i64 %i.ay, -1
  store i64 %i.az, ptr %i.o, align 8, !tbaa !260
  %i.ba = fcmp oeq double %i.ax, 0.000000e+00
  br i1 %i.ba, label %.critedge, label %bb.j

.thread:                                          ; preds = %bb.h
  %i.bb = extractvalue { ptr, i32 } %i.ap, 0
  %i.bc = call ptr @__cxa_begin_catch(ptr %i.bb) #41 ; 0 uses
  %i.bd = load double, ptr %i.m, align 8, !tbaa !185
  %i.be = fcmp ogt double %i.bd, 0.000000e+00
  %i.bf = select i1 %i.be, double f0x7FEFFFFFFFFFFFFF, double f0x8010000000000000
  store double %i.bf, ptr %i.n, align 8, !tbaa !185
  call void @__cxa_end_catch()
  %.pr = load double, ptr %i.n, align 8, !tbaa !185 ; 2 uses
  %i.bg = load i64, ptr %i.o, align 8, !tbaa !260
  %i.bh = add i64 %i.bg, -1
  store i64 %i.bh, ptr %i.o, align 8, !tbaa !260
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
  %.sroa.2.0.copyload = load double, ptr %i.x, align 8, !tbaa !185
  %i.bm = load double, ptr %i.l, align 8, !tbaa !185 ; 2 uses
  %i.bn = fcmp oeq double %i.aa, %i.bm
  %i.bo = load double, ptr %i.m, align 8
  %storemerge.i = select i1 %i.bn, double %i.bo, double %i.bm ; 3 uses
  store double %storemerge.i, ptr %i.k, align 8, !tbaa !185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41, !noalias !21295
  %i.bp = fpext double %storemerge.i to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41, !noalias !21295
  %i.bq = call noundef x86_fp80 @_ZN5boost4math6detail20gamma_incomplete_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_bbRKT0_PSB_(x86_fp80 noundef %i.y, x86_fp80 noundef %i.bp, i1 noundef zeroext true, i1 noundef zeroext %i.z, ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull %i.i), !noalias !21295
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41, !noalias !21295
  %i.br = fptrunc x86_fp80 %i.bq to double
  %i.bs = fsub double %i.br, %.sroa.2.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41, !noalias !21295
  %i.bt = fsub double %storemerge.i, %i.aa
  %.pre197 = load double, ptr %i.n, align 8, !tbaa !185
  br label %_ZN5boost4math5tools6detail22handle_zero_derivativeINS0_6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEdEEvT_RT0_RKSC_SD_SD_SD_SF_SF_.exit

_ZN5boost4math5tools6detail22handle_zero_derivativeINS0_6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEdEEvT_RT0_RKSC_SD_SD_SD_SF_SF_.exit: ; preds = %.thread146, %_ZNK5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEclERKd.exit.i
  %i.bu = phi double [ %.pre197, %_ZNK5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEclERKd.exit.i ], [ %i.bk, %.thread146 ] ; 2 uses
  %.8140 = phi double [ %i.bt, %_ZNK5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEclERKd.exit.i ], [ %.0132, %.thread146 ]
  %i.bv = phi double [ %i.bs, %_ZNK5boost4math6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEclERKd.exit.i ], [ %i.ab, %.thread146 ] ; 2 uses
  %20 = fcmp oeq double %i.bv, 0.000000e+00
  %21 = bitcast double %i.bv to i64
  %.not.i.i = icmp sgt i64 %21, -1
  %22 = select i1 %.not.i.i, i32 1, i32 -1
  %23 = select i1 %20, i32 0, i32 %22
  %24 = fcmp oeq double %i.bu, 0.000000e+00
  %25 = bitcast double %i.bu to i64
  %.not.i28.i = icmp sgt i64 %25, -1
  %26 = select i1 %.not.i28.i, i32 1, i32 -1
  %27 = select i1 %24, i32 0, i32 %26
  %i.bw = mul nsw i32 %27, %23
  %i.bx = icmp slt i32 %i.bw, 0
  %i.by = fcmp olt double %.8140, 0.000000e+00
  %i.bz = xor i1 %i.by, %i.bx
  %.val = load double, ptr %i.m, align 8
  %.val195 = load double, ptr %i.l, align 8
  %i.ca = select i1 %i.bz, double %.val, double %.val195
  %i.cb = fsub double %i.aa, %i.ca
  %i.cc = fmul double %i.cb, 5.000000e-01
  br label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.cd = fcmp une double %.016.i, 0.000000e+00
  br i1 %i.cd, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ce = fmul double %i.ax, 2.000000e+00         ; 2 uses
  %i.cf = fmul double %.0.i, 2.000000e+00
  %i.cg = fdiv double %.1.i, %.0.i
  %i.ch = fmul double %i.ax, %i.cg
  %i.ci = fsub double %i.cf, %i.ch                ; 2 uses
  %i.cj = call double @llvm.fabs.f64(double %i.ci) ; 2 uses
  %i.ck = fcmp olt double %i.cj, 1.000000e+00
  br i1 %i.ck, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cl = call double @llvm.fabs.f64(double %i.ce)
  %i.cm = fmul nnan double %i.cj, f0x7FEFFFFFFFFFFFFF
  %i.cn = fcmp ult double %i.cl, %i.cm
  br i1 %i.cn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = fdiv double %i.ax, %.0.i
  br label %_ZN5boost4math5tools6detail11halley_step4stepIdEET_RKS5_S7_S7_S7_.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.cp = fdiv double %i.ce, %i.ci
  br label %_ZN5boost4math5tools6detail11halley_step4stepIdEET_RKS5_S7_S7_S7_.exit

_ZN5boost4math5tools6detail11halley_step4stepIdEET_RKS5_S7_S7_S7_.exit: ; preds = %bb.n, %bb.o
  %.0.i78 = phi double [ %i.co, %bb.n ], [ %i.cp, %bb.o ] ; 2 uses
  %i.cq = fmul double %.0.i, %.0.i78
  %i.cr = fdiv double %i.cq, %i.ax
  %i.cs = fcmp olt double %i.cr, 0.000000e+00
  br i1 %i.cs, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_ZN5boost4math5tools6detail11halley_step4stepIdEET_RKS5_S7_S7_S7_.exit
  %i.ct = fdiv double %i.ax, %.0.i                ; 3 uses
  %i.cu = call double @llvm.fabs.f64(double %i.ct)
  %i.cv = call double @llvm.fabs.f64(double %i.aa) ; 2 uses
  %i.cw = fmul double %i.cv, 2.000000e+00
  %i.cx = fcmp ogt double %i.cu, %i.cw
  br i1 %i.cx, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cy = fcmp olt double %i.ct, 0.000000e+00
  %i.cz = select i1 %i.cy, double -2.000000e+00, double 2.000000e+00
  %i.da = fmul double %i.cv, %i.cz
  br label %bb.s

bb.r:                                             ; preds = %bb.k
  %i.db = fdiv double %i.ax, %.0.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.q, %_ZN5boost4math5tools6detail11halley_step4stepIdEET_RKS5_S7_S7_S7_.exit, %_ZN5boost4math5tools6detail22handle_zero_derivativeINS0_6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEdEEvT_RT0_RKSC_SD_SD_SD_SF_SF_.exit
  %.1133 = phi double [ %i.cc, %_ZN5boost4math5tools6detail22handle_zero_derivativeINS0_6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEdEEvT_RT0_RKSC_SD_SD_SD_SF_SF_.exit ], [ %i.da, %bb.q ], [ %i.ct, %bb.p ], [ %.0.i78, %_ZN5boost4math5tools6detail11halley_step4stepIdEET_RKS5_S7_S7_S7_.exit ], [ %i.db, %bb.r ] ; 6 uses
  %i.dc = call double @llvm.fabs.f64(double %.045)
  %i.dd = fcmp ogt double %i.dc, 1.000000e+00
  br i1 %i.dd, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = fmul double %.045, f0x7FEFFFFFFFFFFFFF
  %i.df = call double @llvm.fabs.f64(double %i.de)
  %i.dg = call double @llvm.fabs.f64(double %.1133)
  %i.dh = fcmp ogt double %i.df, %i.dg
  br i1 %i.dh, label %bb.u, label %.thread149

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.di = fdiv double %.1133, %.045
  %i.dj = call double @llvm.fabs.f64(double %i.di) ; 2 uses
  %i.dk = fcmp ogt double %i.dj, 8.000000e-01
  %i.dl = fcmp olt double %i.dj, 2.000000e+00
  %or.cond = and i1 %i.dk, %i.dl
  br i1 %or.cond, label %bb.v, label %.thread149

bb.v:                                             ; preds = %bb.u
  %i.dm = load double, ptr %i.l, align 8, !tbaa !185 ; 4 uses
  %i.dn = call double @llvm.fabs.f64(double %i.dm)
  %i.do = fcmp olt double %i.dn, 1.000000e+00
  br i1 %i.do, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dp = fmul nnan double %i.dm, 1.000000e+03
  %i.dq = call double @llvm.fabs.f64(double %i.dp)
  %i.dr = load double, ptr %i.m, align 8, !tbaa !185 ; 2 uses
  %i.ds = call double @llvm.fabs.f64(double %i.dr)
  %i.dt = fcmp olt double %i.dq, %i.ds
  br i1 %i.dt, label %bb.y, label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.du = load double, ptr %i.m, align 8, !tbaa !185 ; 2 uses
  %i.dv = fdiv double %i.du, %i.dm
  %i.dw = call double @llvm.fabs.f64(double %i.dv)
  %i.dx = fcmp ogt double %i.dw, 1.000000e+03
  br i1 %i.dx, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dy = fcmp ogt double %.1133, 0.000000e+00
  br i1 %i.dy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dz = call noundef double @_ZN5boost4math5tools6detail24bracket_root_towards_minINS0_6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEdEET0_T_SB_RKSB_RSB_SF_Rm(ptr noundef nonnull byval(%"struct.boost::math::detail::gamma_p_inverse_func.7001") align 8 %0, double noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.ea = call noundef double @_ZN5boost4math5tools6detail24bracket_root_towards_maxINS0_6detail20gamma_p_inverse_funcIdNS0_8policies6policyINS6_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEdEET0_T_SB_RKSB_RSB_SF_Rm(ptr noundef nonnull byval(%"struct.boost::math::detail::gamma_p_inverse_func.7001") align 8 %0, double noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %bb.ad

bb.ab:                                            ; preds = %bb.x, %bb.w
  %i.eb = phi double [ %i.du, %bb.x ], [ %i.dr, %bb.w ]
  %i.ec = fcmp ogt double %.1133, 0.000000e+00
  %.in.v = select i1 %i.ec, double %i.dm, double %i.eb
  %.in = fsub double %i.aa, %.in.v
  %i.ed = fmul double %.in, 5.000000e-01          ; 4 uses
  %i.ee = fcmp une double %i.aa, 0.000000e+00
  %i.ef = call double @llvm.fabs.f64(double %i.ed)
  %i.eg = fcmp ogt double %i.ef, %i.aa
  %or.cond73 = select i1 %i.ee, i1 %i.eg, i1 false
  br i1 %or.cond73, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eh = fcmp oeq double %i.ed, 0.000000e+00
  %i.ei = call double @llvm.copysign.f64(double 1.000000e+00, double %i.ed)
  %i.ej = select i1 %i.eh, double 0.000000e+00, double %i.ei
  %i.ek = call double @llvm.fabs.f64(double %i.aa)
  %i.el = fmul double %i.ek, %i.ej
  %i.em = fmul double %i.el, f0x3FECCCCCC0000000
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.z, %bb.aa
  %.2134 = phi double [ %i.dz, %bb.z ], [ %i.ea, %bb.aa ], [ %i.em, %bb.ac ], [ %i.ed, %bb.ab ] ; 2 uses
  %i.en = fmul double %.2134, 3.000000e+00
  br label %.thread149

.thread149:                                       ; preds = %bb.t, %bb.ad, %bb.u
  %.3135 = phi double [ %.2134, %bb.ad ], [ %.1133, %bb.u ], [ %.1133, %bb.t ] ; 2 uses
  %.146 = phi double [ %i.en, %bb.ad ], [ %.0132, %bb.u ], [ %.0132, %bb.t ]
  store double %i.aa, ptr %i.k, align 8, !tbaa !185
  %i.eo = fsub double %i.aa, %.3135               ; 8 uses
  %i.ep = load double, ptr %i.l, align 8, !tbaa !185 ; 8 uses
  %i.eq = fcmp olt double %i.eo, %i.ep
  br i1 %i.eq, label %bb.ae, label %bb.as

bb.ae:                                            ; preds = %.thread149
  %i.er = call double @llvm.fabs.f64(double %i.ep) ; 2 uses
  %i.es = fcmp olt double %i.er, 1.000000e+00     ; 2 uses
  %i.et = call double @llvm.fabs.f64(double %i.eo) ; 3 uses
  %i.eu = fcmp ogt double %i.et, 1.000000e+00
  %i.ev = fdiv double f0x7FEFFFFFFFFFFFFF, %i.et
  %i.ew = fcmp olt double %i.ev, %i.er
  %i.ex = and i1 %i.eu, %i.ew
  %or.cond192 = and i1 %i.es, %i.ex
  br i1 %or.cond192, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %i.es, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ey = fmul nnan double %i.ep, f0x7FEFFFFFFFFFFFFF
  %i.ez = call double @llvm.fabs.f64(double %i.ey)
  %i.fa = fcmp olt double %i.ez, %i.et
  br i1 %i.fa, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fb = fcmp olt double %i.ep, 0.000000e+00
  %i.fc = fcmp uge double %i.eo, 0.000000e+00
  %.not68 = xor i1 %i.fc, %i.fb
  %i.fd = select i1 %.not68, double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.fe = fdiv double %i.eo, %i.ep
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ae, %bb.ah, %bb.ai
  %i.ff = phi double [ 1.000000e+03, %bb.ae ], [ %i.fd, %bb.ah ], [ %i.fe, %bb.ai ] ; 3 uses
  %i.fg = call double @llvm.fabs.f64(double %i.ff)
  %i.fh = fcmp olt double %i.fg, 1.000000e+00
  %i.fi = fdiv double 1.000000e+00, %i.ff
  %.041 = select i1 %i.fh, double %i.fi, double %i.ff ; 2 uses
  %i.fj = trunc nuw i8 %.047 to i1
  %i.fk = fcmp ule double %.041, 0.000000e+00
  %i.fl = fcmp uge double %.041, 3.000000e+00
  %.not71 = or i1 %i.fk, %i.fl
  %or.cond6.not = select i1 %i.fj, i1 true, i1 %.not71
  br i1 %or.cond6.not, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  store double %i.ep, ptr %i.g, align 8, !tbaa !185
end_hunk_0
