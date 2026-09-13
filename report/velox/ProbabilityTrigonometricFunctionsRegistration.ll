Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ProbabilityTrigonometricFunctionsRegistration?download=true
inline.NumInlined: 54764
inline.NumDeleted: 11386
loop-unroll.NumCompletelyUnrolled: 843
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 896
begin_hunk_0_@_ZN5boost4math6detail16lgamma_small_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_SD_SD_RKSt17integral_constantIiLi64EERKT0_RKT1_:bb.a
  %i.bp = fadd x86_fp80 %i.bo, f0x3FFFF5030F59EA93D612
  %i.bq = fmul x86_fp80 %i.az, %i.bn
  %i.br = fmul x86_fp80 %i.az, %i.bp
  %i.bs = fadd x86_fp80 %i.bq, f0x4000DF317E60DCBDF0F9
  %i.bt = fadd x86_fp80 %i.br, f0x4000C180FF01DAB3F872
  %i.bu = fmul x86_fp80 %i.az, %i.bs
  %i.bv = fadd x86_fp80 %i.bu, 1.000000e+00
  %i.bw = fmul x86_fp80 %.056, %i.bt
  %i.bx = fadd x86_fp80 %i.bw, %i.bv
  %i.by = fdiv x86_fp80 %i.bl, %i.bx
  %i.bz = fmul x86_fp80 %.259, %.056              ; 2 uses
  %i.ca = fmul x86_fp80 %i.bz, f0x3FFE8735100000000000
  %i.cb = fmul x86_fp80 %i.bz, %i.by
  %i.cc = fadd x86_fp80 %i.ca, %i.cb
  %i.cd = fadd x86_fp80 %.236, %i.cc
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ce = fmul x86_fp80 %.259, %.056              ; 2 uses
  %i.cf = fmul x86_fp80 %.259, %.259              ; 9 uses
  %i.cg = fmul x86_fp80 %i.cf, f0x3FF3E20ED686B7A8F276
  %i.ch = fadd x86_fp80 %i.cg, f0x3FFADE55B8C644E736D8
  %i.ci = fmul x86_fp80 %i.cf, f0x3FF88B5A10830579A1A7
  %i.cj = fsub x86_fp80 f0xBFFC91DBE4CF6853E9F7, %i.ci
  %i.ck = fmul x86_fp80 %i.cf, %i.ch
  %i.cl = fmul x86_fp80 %i.cf, %i.cj
  %i.cm = fadd x86_fp80 %i.ck, f0x3FFC93AD6DE645F5BD7A
  %i.cn = fadd x86_fp80 %i.cl, f0xBFF9EF79FC6FB618F49C
  %i.co = fmul x86_fp80 %.259, %i.cm
  %i.cp = fsub x86_fp80 %i.cn, %i.co
  %i.cq = fmul x86_fp80 %i.cf, f0x3FEADE0C4E54F3F18A53
  %i.cr = fsub x86_fp80 f0x3FF9D19303A400F7D36A, %i.cq
  %i.cs = fmul x86_fp80 %i.cf, f0x3FF583F22BE48655C2C5
  %i.ct = fsub x86_fp80 f0xBFFCE1609F9C36D8E582, %i.cs
  %i.cu = fmul x86_fp80 %i.cf, %i.cr
  %i.cv = fmul x86_fp80 %i.cf, %i.ct
  %i.cw = fadd x86_fp80 %i.cu, f0x3FFED8D33D2482EC1531
  %i.cx = fadd x86_fp80 %i.cv, f0xBFFFC0377E9D93B3EEB4
  %i.cy = fmul x86_fp80 %i.cf, %i.cw
  %i.cz = fadd x86_fp80 %i.cy, 1.000000e+00
  %i.da = fmul x86_fp80 %.259, %i.cx
  %i.db = fsub x86_fp80 %i.cz, %i.da
  %i.dc = fdiv x86_fp80 %i.cp, %i.db
  %i.dd = fmul x86_fp80 %i.ce, f0x3FFDE76ED00000000000
  %i.de = fmul x86_fp80 %i.ce, %i.dc
  %i.df = fadd x86_fp80 %i.dd, %i.de
  %i.dg = fadd x86_fp80 %.236, %i.df
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.k, %bb.l, %bb.g, %bb.b
  %.3 = phi x86_fp80 [ %i.c, %bb.b ], [ 0.000000e+00, %bb.c ], [ %i.at, %bb.g ], [ %i.cd, %bb.k ], [ %i.dg, %bb.l ]
  ret x86_fp80 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare x86_fp80 @sinl(x86_fp80 noundef) local_unnamed_addr #34

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math5tools19evaluate_polynomialILm8EeeEET1_RAT__KT0_RKS3_(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = load x86_fp80, ptr %1, align 16, !tbaa !80 ; 3 uses
  %i.b = fmul x86_fp80 %i.a, %i.a                 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load x86_fp80, ptr %i.c, align 16, !tbaa !80
  %i.e = fmul x86_fp80 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load x86_fp80, ptr %i.f, align 16, !tbaa !80
  %i.h = fadd x86_fp80 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load x86_fp80, ptr %i.i, align 16, !tbaa !80
  %i.k = fmul x86_fp80 %i.b, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load x86_fp80, ptr %i.l, align 16, !tbaa !80
  %i.n = fadd x86_fp80 %i.k, %i.m
  %i.o = fmul x86_fp80 %i.b, %i.h
  %i.p = fmul x86_fp80 %i.b, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load x86_fp80, ptr %i.q, align 16, !tbaa !80
  %i.s = fadd x86_fp80 %i.o, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load x86_fp80, ptr %i.t, align 16, !tbaa !80
  %i.v = fadd x86_fp80 %i.p, %i.u
  %i.w = fmul x86_fp80 %i.b, %i.s
  %i.x = fmul x86_fp80 %i.b, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load x86_fp80, ptr %i.y, align 16, !tbaa !80
  %i.aa = fadd x86_fp80 %i.w, %i.z
  %i.ab = load x86_fp80, ptr %0, align 16, !tbaa !80
  %i.ac = fadd x86_fp80 %i.x, %i.ab
  %i.ad = fmul x86_fp80 %i.a, %i.aa
  %i.ae = fadd x86_fp80 %i.ad, %i.ac
  ret x86_fp80 %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math5tools19evaluate_polynomialILm6EeeEET1_RAT__KT0_RKS3_(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = load x86_fp80, ptr %1, align 16, !tbaa !80 ; 3 uses
  %i.b = fmul x86_fp80 %i.a, %i.a                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load x86_fp80, ptr %i.c, align 16, !tbaa !80
  %i.e = fmul x86_fp80 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load x86_fp80, ptr %i.f, align 16, !tbaa !80
  %i.h = fadd x86_fp80 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load x86_fp80, ptr %i.i, align 16, !tbaa !80
  %i.k = fmul x86_fp80 %i.b, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load x86_fp80, ptr %i.l, align 16, !tbaa !80
  %i.n = fadd x86_fp80 %i.k, %i.m
  %i.o = fmul x86_fp80 %i.b, %i.h
  %i.p = fmul x86_fp80 %i.b, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load x86_fp80, ptr %i.q, align 16, !tbaa !80
  %i.s = fadd x86_fp80 %i.o, %i.r
  %i.t = load x86_fp80, ptr %0, align 16, !tbaa !80
  %i.u = fadd x86_fp80 %i.p, %i.t
  %i.v = fmul x86_fp80 %i.a, %i.s
  %i.w = fadd x86_fp80 %i.v, %i.u
  ret x86_fp80 %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6detail22tgamma_delta_ratio_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_RKT0_(x86_fp80 noundef %0, x86_fp80 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  %3 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %4 = alloca %"struct.boost::math::lanczos::lanczos17m64", align 1 ; 3 uses
  %5 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %6 = alloca %"struct.boost::math::lanczos::lanczos17m64", align 1 ; 3 uses
  %i.b = alloca x86_fp80, align 16                ; 3 uses
  %i.c = alloca x86_fp80, align 16                ; 4 uses
  %7 = alloca %"struct.boost::math::lanczos::lanczos17m64", align 1 ; 3 uses
  store x86_fp80 %0, ptr %i.b, align 16, !tbaa !80
  %i.d = fcmp ugt x86_fp80 %0, 0.000000e+00
  %i.e = fadd x86_fp80 %0, %1                     ; 4 uses
  %i.f = fcmp ugt x86_fp80 %i.e, 0.000000e+00
  %or.cond31 = and i1 %i.d, %i.f
  br i1 %or.cond31, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.g = call noundef x86_fp80 @_ZN5boost4math6detail9gamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_(x86_fp80 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) ; 2 uses
  %i.h = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.g)
  %i.i = fcmp ogt x86_fp80 %i.h, f0x7FFEFFFFFFFFFFFFFFFF
  br i1 %i.i, label %bb.c, label %_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_erroreEEvPKcS6_(ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit

_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.j = call noundef x86_fp80 @_ZN5boost4math6detail9gamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_(x86_fp80 noundef %i.e, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 2 uses
  %i.k = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.j)
  %i.l = fcmp ogt x86_fp80 %i.k, f0x7FFEFFFFFFFFFFFFFFFF
  br i1 %i.l, label %bb.d, label %_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit34

bb.d:                                             ; preds = %_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_erroreEEvPKcS6_(ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit34

_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit34: ; preds = %_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.m = fdiv x86_fp80 %i.g, %i.j
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.n = tail call x86_fp80 @llvm.trunc.f80(x86_fp80 %1)
  %i.o = fcmp oeq x86_fp80 %i.n, %1
  br i1 %i.o, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %0) ; 3 uses
  %i.q = fcmp une x86_fp80 %i.p, %0
  %i.r = fcmp ugt x86_fp80 %0, 1.700000e+02
  %or.cond.not41 = or i1 %i.r, %i.q
  %i.s = fcmp ugt x86_fp80 %i.e, 1.700000e+02
  %or.cond33 = or i1 %or.cond.not41, %i.s
  br i1 %or.cond33, label %bb.m, label %_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i

_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i: ; preds = %bb.f
  %i.t = fcmp ult x86_fp80 %i.p, f0x401E8000000000000000 ; 2 uses
  br i1 %i.t, label %_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i
  call void @_ZN5boost4math8policies6detail11raise_errorINS0_14rounding_errorEeEEvPKcS6_RKT0_(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.258, ptr noundef nonnull align 16 dereferenceable(16) %i.b)
  %.pre = load x86_fp80, ptr %i.b, align 16, !tbaa !80
  %.pre55 = fadd x86_fp80 %1, %.pre
  br label %_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_.exit

_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_.exit: ; preds = %_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i, %bb.g
  %.pre-phi = phi x86_fp80 [ %i.e, %_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i ], [ %.pre55, %bb.g ] ; 6 uses
  %i.u = fptosi x86_fp80 %i.p to i32
  %i.v = add i32 %i.u, -1
  %i.w = zext i32 %i.v to i64
  %i.x = select i1 %i.t, i64 %i.w, i64 4294967295
  %i.y = getelementptr inbounds nuw [16 x i8], ptr @_ZN5boost4math24unchecked_factorial_dataIeLb1EE10factorialsE, i64 %i.x
  %i.z = load x86_fp80, ptr %i.y, align 16, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store x86_fp80 %.pre-phi, ptr %i.c, align 16, !tbaa !80
  %i.aa = call x86_fp80 @llvm.fabs.f80(x86_fp80 %.pre-phi)
  %i.ab = fcmp ueq x86_fp80 %i.aa, +inf
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store x86_fp80 %.pre-phi, ptr %i.a, align 16, !tbaa !80
  call void @_ZN5boost4math8policies6detail11raise_errorINS0_14rounding_errorEeEEvPKcS6_RKT0_(ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.258, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i35

bb.i:                                             ; preds = %_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_.exit
  %i.ac = fcmp ult x86_fp80 %.pre-phi, 0.000000e+00
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = call noundef x86_fp80 @llvm.floor.f80(x86_fp80 %.pre-phi)
  br label %_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i35

bb.k:                                             ; preds = %bb.i
  %i.ae = call noundef x86_fp80 @llvm.ceil.f80(x86_fp80 %.pre-phi)
  br label %_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i35

_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i35: ; preds = %bb.k, %bb.j, %bb.h
  %.0.i.i.i36 = phi x86_fp80 [ 0.000000e+00, %bb.h ], [ %i.ad, %bb.j ], [ %i.ae, %bb.k ] ; 3 uses
  %i.af = fcmp ult x86_fp80 %.0.i.i.i36, f0x401E8000000000000000
  %i.ag = fcmp uge x86_fp80 %.0.i.i.i36, f0xC01E8000000000000000
  %or.cond.not.i37 = and i1 %i.af, %i.ag          ; 2 uses
  br i1 %or.cond.not.i37, label %_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_.exit39, label %bb.l

bb.l:                                             ; preds = %_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i35
  call void @_ZN5boost4math8policies6detail11raise_errorINS0_14rounding_errorEeEEvPKcS6_RKT0_(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.258, ptr noundef nonnull align 16 dereferenceable(16) %i.c)
  br label %_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_.exit39

_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_.exit39: ; preds = %_ZN5boost4math5truncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeERKSC_RKT0_.exit.i35, %bb.l
  %i.ah = fptosi x86_fp80 %.0.i.i.i36 to i32
  %i.ai = add i32 %i.ah, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = select i1 %or.cond.not.i37, i64 %i.aj, i64 4294967295
  %i.al = getelementptr inbounds nuw [16 x i8], ptr @_ZN5boost4math24unchecked_factorial_dataIeLb1EE10factorialsE, i64 %i.ak
  %i.am = load x86_fp80, ptr %i.al, align 16, !tbaa !80
  %i.an = fdiv x86_fp80 %i.z, %i.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %.loopexit

bb.m:                                             ; preds = %bb.f
  %i.ao = tail call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %1)
  %i.ap = fcmp olt x86_fp80 %i.ao, 2.000000e+01
  br i1 %i.ap, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.aq = fcmp oeq x86_fp80 %1, 0.000000e+00
  br i1 %i.aq, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = fcmp olt x86_fp80 %1, 0.000000e+00
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.as = fadd x86_fp80 %0, -1.000000e+00         ; 3 uses
  %i.at = fadd x86_fp80 %1, 1.000000e+00          ; 2 uses
  %i.au = fcmp une x86_fp80 %i.at, 0.000000e+00
  br i1 %i.au, label %.lr.ph48, label %.loopexit

.lr.ph48:                                         ; preds = %bb.p, %.lr.ph48
  %i.av = phi x86_fp80 [ %i.az, %.lr.ph48 ], [ %i.at, %bb.p ]
  %.02347 = phi x86_fp80 [ %i.ay, %.lr.ph48 ], [ %i.as, %bb.p ]
  %i.aw = phi x86_fp80 [ %i.ax, %.lr.ph48 ], [ %i.as, %bb.p ]
  %i.ax = fadd x86_fp80 %i.aw, -1.000000e+00      ; 2 uses
  %i.ay = fmul x86_fp80 %.02347, %i.ax            ; 2 uses
  %i.az = fadd x86_fp80 %i.av, 1.000000e+00       ; 2 uses
  %i.ba = fcmp une x86_fp80 %i.az, 0.000000e+00
  br i1 %i.ba, label %.lr.ph48, label %.loopexit, !llvm.loop !5450

bb.q:                                             ; preds = %bb.o
  %i.bb = fdiv x86_fp80 1.000000e+00, %0          ; 2 uses
  %i.bc = fadd x86_fp80 %1, -1.000000e+00         ; 2 uses
  %i.bd = fcmp une x86_fp80 %i.bc, 0.000000e+00
  br i1 %i.bd, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.q, %.lr.ph
  %i.be = phi x86_fp80 [ %i.bi, %.lr.ph ], [ %i.bc, %bb.q ]
  %.043 = phi x86_fp80 [ %i.bh, %.lr.ph ], [ %i.bb, %bb.q ]
  %i.bf = phi x86_fp80 [ %i.bg, %.lr.ph ], [ %0, %bb.q ]
  %i.bg = fadd x86_fp80 %i.bf, 1.000000e+00       ; 2 uses
  %i.bh = fdiv x86_fp80 %.043, %i.bg              ; 2 uses
  %i.bi = fadd x86_fp80 %i.be, -1.000000e+00      ; 2 uses
  %i.bj = fcmp une x86_fp80 %i.bi, 0.000000e+00
  br i1 %i.bj, label %.lr.ph, label %.loopexit, !llvm.loop !5451

bb.r:                                             ; preds = %bb.m, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.bk = call noundef x86_fp80 @_ZN5boost4math6detail30tgamma_delta_ratio_imp_lanczosIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_SD_RKT0_RKT1_(x86_fp80 noundef %0, x86_fp80 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph48, %bb.q, %bb.p, %bb.n, %bb.r, %_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_.exit39, %_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit34
  %.022 = phi x86_fp80 [ %i.m, %_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit34 ], [ %i.an, %_ZN5boost4math6itruncIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEiRKT_RKT0_.exit39 ], [ %i.bk, %bb.r ], [ 1.000000e+00, %bb.n ], [ %i.ay, %.lr.ph48 ], [ %i.as, %bb.p ], [ %i.bb, %bb.q ], [ %i.bh, %.lr.ph ]
  ret x86_fp80 %.022
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_(x86_fp80 noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %1 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %2 = alloca %"struct.boost::math::lanczos::lanczos17m64", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.a = call noundef x86_fp80 @_ZN5boost4math6detail9gamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_(x86_fp80 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 2 uses
  %i.b = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.a)
  %i.c = fcmp ogt x86_fp80 %i.b, f0x7FFEFFFFFFFFFFFFFFFF
  br i1 %i.c, label %bb.b, label %_ZN5boost4math6detail6tgammaIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEENS0_5tools12promote_argsIT_fffffE4typeESD_RKT0_St17integral_constantIbLb1EE.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_erroreEEvPKcS6_(ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math6detail6tgammaIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEENS0_5tools12promote_argsIT_fffffE4typeESD_RKT0_St17integral_constantIbLb1EE.exit

_ZN5boost4math6detail6tgammaIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEENS0_5tools12promote_argsIT_fffffE4typeESD_RKT0_St17integral_constantIbLb1EE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  ret x86_fp80 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6detail30tgamma_delta_ratio_imp_lanczosIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_SD_RKT0_RKT1_(x86_fp80 noundef %0, x86_fp80 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  %4 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %5 = alloca %"struct.boost::math::lanczos::lanczos17m64", align 1 ; 3 uses
  %i.b = alloca x86_fp80, align 16                ; 3 uses
  %i.c = alloca x86_fp80, align 16                ; 4 uses
  store x86_fp80 %0, ptr %i.b, align 16, !tbaa !80
  %i.d = fcmp olt x86_fp80 %0, f0x3FC08000000000000000
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp ogt x86_fp80 %1, 1.700000e+02
  br i1 %i.e, label %bb.c, label %bb.d

common.ret37:                                     ; preds = %bb.q, %_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit, %bb.c
  %common.ret37.op = phi x86_fp80 [ %i.j, %bb.c ], [ %i.p, %_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit ], [ %i.av, %bb.q ]
  ret x86_fp80 %common.ret37.op

bb.c:                                             ; preds = %bb.b
  %i.f = fsub x86_fp80 1.700000e+02, %1
  %i.g = tail call noundef x86_fp80 @_ZN5boost4math6detail30tgamma_delta_ratio_imp_lanczosIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_SD_RKT0_RKT1_(x86_fp80 noundef %1, x86_fp80 noundef %i.f, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.h = fmul x86_fp80 %i.g, %0
  %i.i = fmul x86_fp80 %i.h, f0x43F2F902A75A6CB762BC
  %i.j = fdiv x86_fp80 1.000000e+00, %i.i
  br label %common.ret37

bb.d:                                             ; preds = %bb.b
  %i.k = fadd x86_fp80 %0, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.l = call noundef x86_fp80 @_ZN5boost4math6detail9gamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_(x86_fp80 noundef %i.k, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) ; 2 uses
  %i.m = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.l)
  %i.n = fcmp ogt x86_fp80 %i.m, f0x7FFEFFFFFFFFFFFFFFFF
  br i1 %i.n, label %bb.e, label %_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_erroreEEvPKcS6_(ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit

_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.o = fmul x86_fp80 %0, %i.l
  %i.p = fdiv x86_fp80 1.000000e+00, %i.o
  br label %common.ret37

bb.f:                                             ; preds = %bb.a
  %i.q = fadd x86_fp80 %0, f0x4002C39A832800000000
  %i.r = fadd x86_fp80 %i.q, -5.000000e-01        ; 5 uses
  %i.s = fadd x86_fp80 %0, %1
  %i.t = fcmp oeq x86_fp80 %i.s, %0
  br i1 %i.t, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.u = fdiv x86_fp80 %1, %i.r
  %i.v = tail call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.u)
  %i.w = fcmp olt x86_fp80 %i.v, f0x3FC08000000000000000
  br i1 %i.w, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.x = fneg x86_fp80 %1
  %i.y = tail call noundef x86_fp80 @expl(x86_fp80 noundef %i.x) #41
  br label %bb.q

bb.i:                                             ; preds = %bb.f
  %i.z = tail call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %1)
  %i.aa = fcmp olt x86_fp80 %i.z, 1.000000e+01
  br i1 %i.aa, label %bb.j, label %bb.o

end_hunk_0
