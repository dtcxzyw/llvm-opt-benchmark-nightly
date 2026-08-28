Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ProbabilityTrigonometricFunctionsRegistration?download=true
inline.NumInlined: 54764
inline.NumDeleted: 11386
loop-unroll.NumCompletelyUnrolled: 843
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 896
begin_hunk_0_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdddEEEJdddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_:bb.a
  %i.cfz = ashr i32 %i.bzr, 6
  %i.cga = and i32 %i.bzr, 63
  %i.cgb = zext nneg i32 %i.cga to i64
  %notmask.i36.i.i.i.i.i.i.i.i.i39.i38.i37 = shl nsw i64 -1, %i.cgb
  %i.cgc = xor i64 %notmask.i36.i.i.i.i.i.i.i.i.i39.i38.i37, -1
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdddEEEJdddEEEE7iterateIJNS3_16FlatVectorReaderIdEESK_SK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %8, i32 noundef %i.cfz, i64 noundef %i.cgc)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdddEEEJdddEEEE7iterateIJNS3_16FlatVectorReaderIdEESK_SK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiiSQ_.exit.i.i.i.i.i.i.i.i

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdddEEEJdddEEEE7iterateIJNS3_16FlatVectorReaderIdEESK_SK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiiSQ_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.xv, %._crit_edge.i.i.i.i.i.i.i.i.i37.i36.i35, %bb.wa, %bb.vy
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdddEEEJdddEEEE31unpackSpecializeForAllEncodingsILi3EJNS1_16FlatVectorReaderIdEESG_SG_EEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EEDpRT0_.exit.i.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdddEEEJdddEEEE31unpackSpecializeForAllEncodingsILi3EJNS1_16FlatVectorReaderIdEESG_SG_EEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EEDpRT0_.exit.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJdddEEEJdddEEEE7iterateIJNS1_16FlatVectorReaderIdEESI_SI_EEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_ENKUlSO_E_clIiEEDaSO_.exit.i.i.i.i.i.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdddEEEJdddEEEE7iterateIJNS3_16FlatVectorReaderIdEESK_SK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiiSQ_.exit.i.i.i.i.i.i.i.i, %bb.vc
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #41
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdddEEEJdddEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_16FlatVectorReaderIdEESG_EEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EEDpRT0_.exit.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdddEEEJdddEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_16FlatVectorReaderIdEESG_EEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EEDpRT0_.exit.i: ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdddEEEJdddEEEE31unpackSpecializeForAllEncodingsILi3EJNS1_16FlatVectorReaderIdEESG_SG_EEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EEDpRT0_.exit.i.i, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdddEEEJdddEEEE31unpackSpecializeForAllEncodingsILi3EJNS1_16FlatVectorReaderIdEESG_NS1_20ConstantVectorReaderIdEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISO_EEDpRT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #41
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdddEEEJdddEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_16FlatVectorReaderIdEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EEDpRT0_.exit

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdddEEEJdddEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_16FlatVectorReaderIdEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EEDpRT0_.exit: ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdddEEEJdddEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_16FlatVectorReaderIdEENS1_20ConstantVectorReaderIdEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISO_EEDpRT0_.exit.i, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdddEEEJdddEEEE31unpackSpecializeForAllEncodingsILi2EJNS1_16FlatVectorReaderIdEESG_EEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EEDpRT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #41
  br label %bb.xw

bb.xw:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdddEEEJdddEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_16FlatVectorReaderIdEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EEDpRT0_.exit, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdddEEEJdddEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_20ConstantVectorReaderIdEEEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EEDpRT0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZN5boost4math9ibeta_invIddddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_T2_ffE4typeES8_S9_SA_PSB_RKT3_(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca double, align 8                   ; 2 uses
  %i.c = alloca double, align 8                   ; 2 uses
  %i.d = alloca x86_fp80, align 16                ; 4 uses
  %5 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  store double %0, ptr %i.a, align 8, !tbaa !185
  store double %1, ptr %i.b, align 8, !tbaa !185
  store double %2, ptr %i.c, align 8, !tbaa !185
  %i.e = fcmp ugt double %0, 0.000000e+00
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @_ZZN5boost4math9ibeta_invIddddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_T2_ffE4typeES8_S9_SA_PSB_RKT3_E8function, align 8, !tbaa !893
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef %i.f, ptr noundef nonnull @.str.336, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.g = fcmp ugt double %1, 0.000000e+00
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_ZZN5boost4math9ibeta_invIddddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_T2_ffE4typeES8_S9_SA_PSB_RKT3_E8function, align 8, !tbaa !893
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef %i.h, ptr noundef nonnull @.str.337, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.i = fcmp olt double %2, 0.000000e+00
  %i.j = fcmp ogt double %2, 1.000000e+00
  %or.cond = or i1 %i.i, %i.j
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @_ZZN5boost4math9ibeta_invIddddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_T2_ffE4typeES8_S9_SA_PSB_RKT3_E8function, align 8, !tbaa !893
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef %i.k, ptr noundef nonnull @.str.338, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.l = fpext double %0 to x86_fp80
  %i.m = fpext double %1 to x86_fp80
  %i.n = fpext double %2 to x86_fp80
  %i.o = fsub double 1.000000e+00, %2
  %i.p = fpext double %i.o to x86_fp80
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.q = call noundef x86_fp80 @_ZN5boost4math6detail13ibeta_inv_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_RKT0_PSB_(x86_fp80 noundef %i.l, x86_fp80 noundef %i.m, x86_fp80 noundef %i.n, x86_fp80 noundef %i.p, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull %i.d) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load x86_fp80, ptr %i.d, align 16, !tbaa !182 ; 2 uses
  %i.s = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.r)
  %i.t = fcmp ogt x86_fp80 %i.s, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.t, label %bb.i, label %_ZN5boost4math8policies22checked_narrowing_castIdNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEeEET_T1_PKc.exit10

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr @_ZZN5boost4math9ibeta_invIddddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_T2_ffE4typeES8_S9_SA_PSB_RKT3_E8function, align 8, !tbaa !893
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef %i.u, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math8policies22checked_narrowing_castIdNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEeEET_T1_PKc.exit10

_ZN5boost4math8policies22checked_narrowing_castIdNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEeEET_T1_PKc.exit10: ; preds = %bb.h, %bb.i
  %.0.i9 = fptrunc x86_fp80 %i.r to double
  store double %.0.i9, ptr %3, align 8, !tbaa !185
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost4math8policies22checked_narrowing_castIdNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEeEET_T1_PKc.exit10, %bb.g
  %i.v = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.q)
  %i.w = fcmp ogt x86_fp80 %i.v, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.w, label %bb.k, label %_ZN5boost4math8policies22checked_narrowing_castIdNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEeEET_T1_PKc.exit

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr @_ZZN5boost4math9ibeta_invIddddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_T2_ffE4typeES8_S9_SA_PSB_RKT3_E8function, align 8, !tbaa !893
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef %i.x, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math8policies22checked_narrowing_castIdNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEeEET_T1_PKc.exit

_ZN5boost4math8policies22checked_narrowing_castIdNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEeEET_T1_PKc.exit: ; preds = %bb.j, %bb.k
  %.0.i = fptrunc x86_fp80 %i.q to double
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost4math8policies22checked_narrowing_castIdNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEeEET_T1_PKc.exit, %bb.f, %bb.d, %bb.b
  %.0 = phi double [ +qnan, %bb.b ], [ +qnan, %bb.d ], [ +qnan, %bb.f ], [ %.0.i, %_ZN5boost4math8policies22checked_narrowing_castIdNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEeEET_T1_PKc.exit ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6detail13ibeta_inv_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_RKT0_PSB_(x86_fp80 noundef %0, x86_fp80 noundef %1, x86_fp80 noundef %2, x86_fp80 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  %6 = alloca %"struct.boost::math::detail::ibeta_roots", align 16 ; 7 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %i.c = fcmp oeq x86_fp80 %3, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not220 = icmp eq ptr %5, null
  br i1 %.not220, label %bb.ck, label %bb.c

bb.c:                                             ; preds = %bb.b
  store x86_fp80 0.000000e+00, ptr %5, align 16, !tbaa !182
  br label %bb.ck

bb.d:                                             ; preds = %bb.a
  %i.d = fcmp oeq x86_fp80 %2, 0.000000e+00
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not219 = icmp eq ptr %5, null
  br i1 %.not219, label %bb.ck, label %bb.f

bb.f:                                             ; preds = %bb.e
  store x86_fp80 1.000000e+00, ptr %5, align 16, !tbaa !182
  br label %bb.ck

bb.g:                                             ; preds = %bb.d
  %i.e = fcmp oeq x86_fp80 %0, 1.000000e+00
  br i1 %i.e, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.f = fcmp oeq x86_fp80 %1, 1.000000e+00
  br i1 %i.f, label %bb.i, label %thread-pre-split.thread

bb.i:                                             ; preds = %bb.h
  %.not218 = icmp eq ptr %5, null
  br i1 %.not218, label %bb.ck, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.g = fsub x86_fp80 1.000000e+00, %2
  store x86_fp80 %i.g, ptr %5, align 16, !tbaa !182
  br label %bb.ck

thread-pre-split:                                 ; preds = %bb.g
  %i.h = fcmp oeq x86_fp80 %0, 5.000000e-01
  br i1 %i.h, label %bb.k, label %thread-pre-split417

thread-pre-split.thread:                          ; preds = %bb.h
  %i.i = fcmp oeq x86_fp80 %1, 5.000000e-01
  br i1 %i.i, label %thread-pre-split417, label %.thread635

bb.k:                                             ; preds = %thread-pre-split
  %i.j = fcmp oeq x86_fp80 %1, 5.000000e-01
  br i1 %i.j, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.k = fmul x86_fp80 %2, f0x3FFFC90FDAA22168C235
  %i.l = tail call noundef x86_fp80 @sinl(x86_fp80 noundef %i.k) #41 ; 2 uses
  %i.m = fmul x86_fp80 %i.l, %i.l                 ; 2 uses
  %.not217 = icmp eq ptr %5, null
  br i1 %.not217, label %bb.ck, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = fmul x86_fp80 %3, f0x3FFFC90FDAA22168C235
  %i.o = tail call noundef x86_fp80 @sinl(x86_fp80 noundef %i.n) #41 ; 2 uses
  %i.p = fmul x86_fp80 %i.o, %i.o
  store x86_fp80 %i.p, ptr %5, align 16, !tbaa !182
  br label %bb.ck

bb.n:                                             ; preds = %bb.k
  %i.q = fcmp ogt x86_fp80 %1, 5.000000e-01
  br i1 %i.q, label %.thread613, label %thread-pre-split417

.thread613:                                       ; preds = %bb.n
  br label %thread-pre-split417

thread-pre-split417:                              ; preds = %thread-pre-split.thread, %.thread613, %bb.n, %thread-pre-split
  %.sroa.0297.sroa.0.1 = phi x86_fp80 [ %3, %thread-pre-split ], [ %3, %bb.n ], [ %3, %thread-pre-split.thread ], [ %2, %.thread613 ] ; 10 uses
  %.sroa.0333.sroa.0.1 = phi x86_fp80 [ %2, %thread-pre-split ], [ %2, %bb.n ], [ %2, %thread-pre-split.thread ], [ %3, %.thread613 ] ; 16 uses
  %.1387 = phi x86_fp80 [ %1, %thread-pre-split ], [ %1, %bb.n ], [ 5.000000e-01, %thread-pre-split.thread ], [ 5.000000e-01, %.thread613 ] ; 17 uses
  %.1379 = phi x86_fp80 [ %0, %thread-pre-split ], [ 5.000000e-01, %bb.n ], [ 1.000000e+00, %thread-pre-split.thread ], [ %1, %.thread613 ] ; 20 uses
  %.1166 = phi i8 [ 0, %thread-pre-split ], [ 0, %bb.n ], [ 0, %thread-pre-split.thread ], [ 1, %.thread613 ] ; 11 uses
  %i.r = fcmp oeq x86_fp80 %.1387, 5.000000e-01
  %i.s = fcmp oge x86_fp80 %.1379, 5.000000e-01
  %or.cond = and i1 %i.r, %i.s
  %i.t = fcmp une x86_fp80 %.sroa.0333.sroa.0.1, 1.000000e+00
  %or.cond3 = and i1 %i.t, %or.cond
  br i1 %or.cond3, label %bb.o, label %bb.p

bb.o:                                             ; preds = %thread-pre-split417
  %i.u = fmul x86_fp80 %.sroa.0333.sroa.0.1, 5.000000e-01 ; 2 uses
  %i.v = fsub x86_fp80 1.000000e+00, %i.u
  %i.w = fmul nnan x86_fp80 %.1379, 2.000000e+00  ; 3 uses
  %i.x = tail call noundef x86_fp80 @_ZN5boost4math6detail18inverse_students_tIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_Pb(x86_fp80 noundef %i.w, x86_fp80 noundef %i.u, x86_fp80 noundef %i.v, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef null) ; 2 uses
  %i.y = fmul x86_fp80 %i.x, %i.x                 ; 2 uses
  %i.z = fadd x86_fp80 %i.w, %i.y                 ; 2 uses
  %i.aa = fdiv x86_fp80 %i.y, %i.z
  %i.ab = fdiv x86_fp80 %i.w, %i.z
  br label %.thread428

bb.p:                                             ; preds = %thread-pre-split417
  %i.ac = fcmp oeq x86_fp80 %.1387, 1.000000e+00
  br i1 %i.ac, label %.thread635, label %bb.w

.thread635:                                       ; preds = %thread-pre-split.thread, %bb.p
  %.sroa.0333.sroa.0.1631644 = phi x86_fp80 [ %.sroa.0297.sroa.0.1, %bb.p ], [ %2, %thread-pre-split.thread ] ; 2 uses
  %.1387632643 = phi x86_fp80 [ %.sroa.0333.sroa.0.1, %bb.p ], [ %3, %thread-pre-split.thread ] ; 3 uses
  %.1379633642 = phi x86_fp80 [ %.1379, %bb.p ], [ %1, %thread-pre-split.thread ] ; 5 uses
  %.1166634641 = phi i8 [ %.1166, %bb.p ], [ 1, %thread-pre-split.thread ]
  %i.ad = fcmp olt x86_fp80 %.1387632643, %.sroa.0333.sroa.0.1631644
  br i1 %i.ad, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.thread635
  %i.ae = fcmp ogt x86_fp80 %.1379633642, 1.000000e+00
  %i.af = fdiv x86_fp80 1.000000e+00, %.1379633642
  %i.ag = tail call noundef x86_fp80 @powl(x86_fp80 noundef %.1387632643, x86_fp80 noundef %i.af) #41 ; 3 uses
  br i1 %i.ae, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ah = tail call noundef x86_fp80 @logl(x86_fp80 noundef %.1387632643) #41
  %i.ai = fdiv x86_fp80 %i.ah, %.1379633642
  %i.aj = tail call noundef x86_fp80 @_ZN5boost4math5expm1IeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_(x86_fp80 noundef %i.ai, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.ak = fneg x86_fp80 %i.aj
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.al = fsub x86_fp80 1.000000e+00, %i.ag
  br label %bb.u

bb.t:                                             ; preds = %.thread635
  %i.am = fneg x86_fp80 %.sroa.0333.sroa.0.1631644 ; 2 uses
  %i.an = tail call noundef x86_fp80 @_ZN5boost4math5log1pINS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEeeRKT_(x86_fp80 noundef %i.am, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.ao = fdiv x86_fp80 %i.an, %.1379633642
  %i.ap = tail call noundef x86_fp80 @expl(x86_fp80 noundef %i.ao) #41
  %i.aq = tail call noundef x86_fp80 @_ZN5boost4math5log1pINS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEeeRKT_(x86_fp80 noundef %i.am, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.ar = fdiv x86_fp80 %i.aq, %.1379633642
  %i.as = tail call noundef x86_fp80 @_ZN5boost4math5expm1IeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_(x86_fp80 noundef %i.ar, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.at = fneg x86_fp80 %i.as
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t
  %.0408 = phi x86_fp80 [ %i.ak, %bb.r ], [ %i.al, %bb.s ], [ %i.at, %bb.t ] ; 2 uses
  %.0396 = phi x86_fp80 [ %i.ag, %bb.r ], [ %i.ag, %bb.s ], [ %i.ap, %bb.t ] ; 2 uses
  %i.au = trunc nuw i8 %.1166634641 to i1         ; 2 uses
  %spec.select546 = select i1 %i.au, x86_fp80 %.0408, x86_fp80 %.0396 ; 2 uses
  %.not215 = icmp eq ptr %5, null
  br i1 %.not215, label %bb.ck, label %bb.v

bb.v:                                             ; preds = %bb.u
  %spec.select = select i1 %i.au, x86_fp80 %.0396, x86_fp80 %.0408
  store x86_fp80 %spec.select, ptr %5, align 16, !tbaa !182
  br label %bb.ck

bb.w:                                             ; preds = %bb.p
  %i.av = fadd x86_fp80 %0, %1                    ; 8 uses
  %i.aw = fcmp ogt x86_fp80 %i.av, 5.000000e+00
  br i1 %i.aw, label %bb.x, label %bb.am

bb.x:                                             ; preds = %bb.w
  %i.ax = fcmp ogt x86_fp80 %.sroa.0333.sroa.0.1, 5.000000e-01
  br i1 %i.ax, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ay = xor i8 %.1166, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.0297.sroa.0.2 = phi x86_fp80 [ %.sroa.0333.sroa.0.1, %bb.y ], [ %.sroa.0297.sroa.0.1, %bb.x ] ; 4 uses
  %.sroa.0333.sroa.0.2 = phi x86_fp80 [ %.sroa.0297.sroa.0.1, %bb.y ], [ %.sroa.0333.sroa.0.1, %bb.x ] ; 7 uses
  %.2388 = phi x86_fp80 [ %.1379, %bb.y ], [ %.1387, %bb.x ] ; 11 uses
  %.2380 = phi x86_fp80 [ %.1387, %bb.y ], [ %.1379, %bb.x ] ; 14 uses
  %.2167 = phi i8 [ %i.ay, %bb.y ], [ %.1166, %bb.x ] ; 4 uses
  %i.az = fcmp olt x86_fp80 %.2388, %.2380
  %i.ba = select i1 %i.az, x86_fp80 %.2388, x86_fp80 %.2380 ; 4 uses
  %i.bb = fcmp olt x86_fp80 %.2380, %.2388        ; 2 uses
  %i.bc = select i1 %i.bb, x86_fp80 %.2388, x86_fp80 %.2380
  %i.bd = tail call noundef x86_fp80 @sqrtl(x86_fp80 noundef %i.ba) #41
  %i.be = fsub x86_fp80 %i.bc, %i.ba
  %i.bf = fcmp ogt x86_fp80 %i.bd, %i.be
  %i.bg = fcmp ogt x86_fp80 %i.ba, 5.000000e+00
  %or.cond5 = and i1 %i.bg, %i.bf
  br i1 %or.cond5, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bh = tail call noundef x86_fp80 @_ZN5boost4math6detail28temme_method_1_ibeta_inverseIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_(x86_fp80 noundef %.2380, x86_fp80 noundef %.2388, x86_fp80 noundef %.sroa.0333.sroa.0.2, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 2 uses
  %i.bi = fsub x86_fp80 1.000000e+00, %i.bh
  br label %.thread428

bb.ab:                                            ; preds = %bb.z
  %i.bj = fdiv x86_fp80 %.2380, %i.av
  %i.bk = tail call noundef x86_fp80 @sqrtl(x86_fp80 noundef %i.bj) #41
  %i.bl = tail call noundef x86_fp80 @asinl(x86_fp80 noundef %i.bk) #41
  %i.bm = fdiv x86_fp80 %i.ba, %i.av              ; 2 uses
  %i.bn = fcmp oge x86_fp80 %i.bm, f0x3FFCCCCCCCCCCCCCD000
  %i.bo = fcmp ole x86_fp80 %i.bm, f0x3FFECCCCCCCCCCCCD000
  %or.cond7 = and i1 %i.bn, %i.bo
  %i.bp = fcmp oge x86_fp80 %i.av, 1.000000e+01
  %or.cond9 = and i1 %i.bp, %or.cond7
  br i1 %or.cond9, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.bq = fdiv x86_fp80 1.000000e+00, %.2380      ; 2 uses
  %i.br = tail call noundef x86_fp80 @powl(x86_fp80 noundef %.sroa.0333.sroa.0.2, x86_fp80 noundef %i.bq) #41 ; 2 uses
  %i.bs = fcmp olt x86_fp80 %i.br, f0x3FF6A3D70A3D70A3D800
  %i.bt = fcmp olt x86_fp80 %i.av, 2.000000e+02
  %or.cond547 = and i1 %i.bt, %i.bs
  br i1 %or.cond547, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bu = tail call noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeESC_SD_SE_(x86_fp80 noundef %.2380, x86_fp80 noundef %.2388)
  %i.bv = fmul x86_fp80 %.2380, %i.bu
  %i.bw = tail call noundef x86_fp80 @powl(x86_fp80 noundef %i.bv, x86_fp80 noundef %i.bq) #41
  %i.bx = fmul x86_fp80 %i.br, %i.bw
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.by = tail call noundef x86_fp80 @_ZN5boost4math6detail28temme_method_2_ibeta_inverseIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_SB_RKT0_(x86_fp80 noundef %.2380, x86_fp80 noundef %.2388, x86_fp80 noundef %.sroa.0333.sroa.0.2, x86_fp80 noundef %i.av, x86_fp80 noundef %i.bl, ptr noundef nonnull align 1 dereferenceable(1) %4)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %storemerge = phi x86_fp80 [ %i.by, %bb.ae ], [ %i.bx, %bb.ad ] ; 2 uses
  %i.bz = fsub x86_fp80 1.000000e+00, %storemerge
  br label %.thread428

bb.ag:                                            ; preds = %bb.ab
  br i1 %i.bb, label %bb.ah, label %thread-pre-split418

bb.ah:                                            ; preds = %bb.ag
  %i.ca = xor i8 %.2167, 1
  br label %thread-pre-split418

thread-pre-split418:                              ; preds = %bb.ah, %bb.ag
  %.sroa.0297.sroa.0.3 = phi x86_fp80 [ %.sroa.0333.sroa.0.2, %bb.ah ], [ %.sroa.0297.sroa.0.2, %bb.ag ] ; 4 uses
  %.sroa.0333.sroa.0.3 = phi x86_fp80 [ %.sroa.0297.sroa.0.2, %bb.ah ], [ %.sroa.0333.sroa.0.2, %bb.ag ] ; 3 uses
  %.3389 = phi x86_fp80 [ %.2380, %bb.ah ], [ %.2388, %bb.ag ] ; 7 uses
  %.3381 = phi x86_fp80 [ %.2388, %bb.ah ], [ %.2380, %bb.ag ] ; 4 uses
  %.3 = phi i8 [ %i.ca, %bb.ah ], [ %.2167, %bb.ag ] ; 2 uses
  %i.cb = fcmp olt x86_fp80 %.3389, 2.000000e+00
  br i1 %i.cb, label %bb.ai, label %.thread423

bb.ai:                                            ; preds = %thread-pre-split418
  %i.cc = invoke noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeESC_SD_SE_(x86_fp80 noundef %.3381, x86_fp80 noundef %.3389)
          to label %bb.ak unwind label %bb.aj     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.cd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt14overflow_error       ; 3 uses
  %i.ce = extractvalue { ptr, i32 } %i.cd, 1
  %i.cf = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt14overflow_error) #41
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %.thread, label %bb.cj

.thread:                                          ; preds = %bb.aj
  %i.ch = extractvalue { ptr, i32 } %i.cd, 0
  %i.ci = tail call ptr @__cxa_begin_catch(ptr %i.ch) #41 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.cj = fcmp une x86_fp80 %i.cc, 0.000000e+00
  br i1 %i.cj, label %bb.al, label %.thread423

bb.al:                                            ; preds = %bb.ak, %.thread
  %.0175420 = phi x86_fp80 [ f0x7FFEFFFFFFFFFFFFFFFF, %.thread ], [ %i.cc, %bb.ak ]
  %i.ck = fmul x86_fp80 %.sroa.0297.sroa.0.3, %.3389
  %i.cl = fmul x86_fp80 %i.ck, %.0175420
  %i.cm = fdiv x86_fp80 1.000000e+00, %.3389
  %i.cn = tail call noundef x86_fp80 @powl(x86_fp80 noundef %i.cl, x86_fp80 noundef %i.cm) #41 ; 3 uses
  %i.co = fsub x86_fp80 1.000000e+00, %i.cn
  %i.cp = fcmp ogt x86_fp80 %i.cn, f0x3FEEA7C5AC471B478800
  br i1 %i.cp, label %.thread423, label %.thread428

.thread423:                                       ; preds = %thread-pre-split418, %bb.ak, %bb.al
  %i.cq = tail call noundef x86_fp80 @_ZN5boost4math6detail28temme_method_3_ibeta_inverseIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_RKT0_(x86_fp80 noundef %.3381, x86_fp80 noundef %.3389, x86_fp80 noundef %.sroa.0333.sroa.0.3, x86_fp80 noundef %.sroa.0297.sroa.0.3, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 2 uses
  %i.cr = fsub x86_fp80 1.000000e+00, %i.cq
  br label %.thread428

bb.am:                                            ; preds = %bb.w
  %i.cs = fcmp olt x86_fp80 %.1379, 1.000000e+00
  %i.ct = fcmp olt x86_fp80 %.1387, 1.000000e+00
  %or.cond11 = and i1 %i.ct, %i.cs
  br i1 %or.cond11, label %bb.an, label %bb.bc

bb.an:                                            ; preds = %bb.am
  %i.cu = fsub x86_fp80 1.000000e+00, %.1379
  %i.cv = fsub x86_fp80 2.000000e+00, %.1379
  %i.cw = fsub x86_fp80 %i.cv, %.1387
  %i.cx = fdiv x86_fp80 %i.cu, %i.cw              ; 6 uses
  %i.cy = tail call noundef x86_fp80 @_ZN5boost4math5ibetaIeeeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeESC_SD_SE_RKT2_(x86_fp80 noundef %.1379, x86_fp80 noundef %.1387, x86_fp80 noundef %i.cx, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.cz = fsub x86_fp80 %i.cy, %.sroa.0333.sroa.0.1 ; 2 uses
  %i.da = tail call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.cz)
  %i.db = fdiv x86_fp80 %i.da, %.sroa.0333.sroa.0.1
  %i.dc = fcmp olt x86_fp80 %i.db, f0x3FC1C000000000000000
  br i1 %i.dc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dd = trunc nuw i8 %.1166 to i1               ; 2 uses
  %i.de = fsub x86_fp80 1.000000e+00, %i.cx       ; 2 uses
  %i.df = select i1 %i.dd, x86_fp80 %i.cx, x86_fp80 %i.de
  store x86_fp80 %i.df, ptr %5, align 16, !tbaa !182
  %i.dg = select i1 %i.dd, x86_fp80 %i.de, x86_fp80 %i.cx
  br label %bb.ck

bb.ap:                                            ; preds = %bb.an
  %i.dh = fcmp olt x86_fp80 %i.cz, 0.000000e+00
  br i1 %i.dh, label %bb.aq, label %thread-pre-split426

bb.aq:                                            ; preds = %bb.ap
  %i.di = xor i8 %.1166, 1
  %i.dj = fsub x86_fp80 1.000000e+00, %i.cx
  br label %thread-pre-split426

thread-pre-split426:                              ; preds = %bb.aq, %bb.ap
  %.sroa.0297.sroa.0.4 = phi x86_fp80 [ %.sroa.0333.sroa.0.1, %bb.aq ], [ %.sroa.0297.sroa.0.1, %bb.ap ] ; 2 uses
  %.sroa.0333.sroa.0.4 = phi x86_fp80 [ %.sroa.0297.sroa.0.1, %bb.aq ], [ %.sroa.0333.sroa.0.1, %bb.ap ] ; 4 uses
  %.4390 = phi x86_fp80 [ %.1379, %bb.aq ], [ %.1387, %bb.ap ] ; 5 uses
  %.4 = phi x86_fp80 [ %.1387, %bb.aq ], [ %.1379, %bb.ap ] ; 8 uses
  %.0178 = phi x86_fp80 [ %i.dj, %bb.aq ], [ %i.cx, %bb.ap ] ; 4 uses
  %.6 = phi i8 [ %i.di, %bb.aq ], [ %.1166, %bb.ap ] ; 4 uses
  %i.dk = fcmp olt x86_fp80 %.4, f0x00018000000000000000
  %i.dl = fcmp ogt x86_fp80 %.4390, f0x00018000000000000000
  %or.cond548 = and i1 %i.dl, %i.dk
  br i1 %or.cond548, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %thread-pre-split426
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dm = xor i8 %.6, 1
  %i.dn = uitofp nneg i8 %i.dm to x86_fp80
  store x86_fp80 %i.dn, ptr %5, align 16, !tbaa !182
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.do = uitofp nneg i8 %.6 to x86_fp80
  br label %bb.ck

bb.au:                                            ; preds = %thread-pre-split426
  %i.dp = invoke noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeESC_SD_SE_(x86_fp80 noundef %.4, x86_fp80 noundef %.4390)
          to label %bb.aw unwind label %bb.av     ; 2 uses

bb.av:                                            ; preds = %bb.au
  %i.dq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt13runtime_error        ; 3 uses
  %i.dr = extractvalue { ptr, i32 } %i.dq, 1
  %i.ds = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt13runtime_error) #41
  %i.dt = icmp eq i32 %i.dr, %i.ds
  br i1 %i.dt, label %.critedge, label %bb.cj

.critedge:                                        ; preds = %bb.av
  %i.du = extractvalue { ptr, i32 } %i.dq, 0
  %i.dv = tail call ptr @__cxa_begin_catch(ptr %i.du) #41 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.dw = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.dp)
  %i.dx = fcmp ueq x86_fp80 %i.dw, +inf
  br i1 %i.dx, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %.critedge, %bb.aw
  %i.dy = fadd x86_fp80 %.4, 1.000000e+00
  %i.dz = tail call noundef x86_fp80 @_ZN5boost4math6lgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_(x86_fp80 noundef %i.dy, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.ea = tail call noundef x86_fp80 @_ZN5boost4math6lgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_(x86_fp80 noundef %.4390, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.eb = fadd x86_fp80 %i.dz, %i.ea
  %i.ec = tail call noundef x86_fp80 @_ZN5boost4math6lgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_(x86_fp80 noundef %i.av, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.ed = fsub x86_fp80 %i.eb, %i.ec
  %i.ee = tail call noundef x86_fp80 @logl(x86_fp80 noundef %.sroa.0333.sroa.0.4) #41
  %i.ef = fadd x86_fp80 %i.ed, %i.ee
  %i.eg = fdiv x86_fp80 %i.ef, %.4
  %i.eh = tail call noundef x86_fp80 @expl(x86_fp80 noundef %i.eg) #41 ; 2 uses
  %i.ei = fcmp ogt x86_fp80 %i.eh, f0x403F8000000000000000
  br i1 %i.ei, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.ej = fmul x86_fp80 %.sroa.0333.sroa.0.4, %.4
  %i.ek = fmul x86_fp80 %i.ej, %i.dp
  %i.el = fdiv x86_fp80 1.000000e+00, %.4
  %i.em = tail call noundef x86_fp80 @powl(x86_fp80 noundef %i.ek, x86_fp80 noundef %i.el) #41
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ax, %bb.ay, %bb.az
  %.0180 = phi x86_fp80 [ f0x403F8000000000000000, %bb.ay ], [ %i.eh, %bb.ax ], [ %i.em, %bb.az ] ; 2 uses
  %i.en = fadd x86_fp80 %.0180, 1.000000e+00      ; 2 uses
  %i.eo = fdiv x86_fp80 %.0180, %i.en             ; 2 uses
  %i.ep = fdiv x86_fp80 1.000000e+00, %i.en       ; 2 uses
  %i.eq = fcmp ogt x86_fp80 %i.eo, %.0178
  br i1 %i.eq, label %bb.bb, label %.thread428

bb.bb:                                            ; preds = %bb.ba
  br label %.thread428

bb.bc:                                            ; preds = %bb.am
  %i.er = fcmp ogt x86_fp80 %.1379, 1.000000e+00
  %i.es = fcmp ogt x86_fp80 %.1387, 1.000000e+00
  %or.cond13 = and i1 %i.es, %i.er
  br i1 %or.cond13, label %bb.bd, label %bb.bl

bb.bd:                                            ; preds = %bb.bc
  %i.et = fadd x86_fp80 %.1379, -1.000000e+00
  %i.eu = fadd x86_fp80 %i.av, -2.000000e+00      ; 2 uses
  %i.ev = fdiv x86_fp80 %i.et, %i.eu              ; 2 uses
  %i.ew = tail call noundef x86_fp80 @_ZN5boost4math5ibetaIeeeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeESC_SD_SE_RKT2_(x86_fp80 noundef %.1379, x86_fp80 noundef %.1387, x86_fp80 noundef %i.ev, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.ex = fcmp olt x86_fp80 %i.ew, %.sroa.0333.sroa.0.1
  br i1 %i.ex, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ey = fadd x86_fp80 %.1387, -1.000000e+00
  %i.ez = fdiv x86_fp80 %i.ey, %i.eu
  %i.fa = xor i8 %.1166, 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sroa.0297.sroa.0.5 = phi x86_fp80 [ %i.ez, %bb.be ], [ %i.ev, %bb.bd ] ; 4 uses
  %.sroa.0333.sroa.0.5 = phi x86_fp80 [ %.sroa.0333.sroa.0.1, %bb.be ], [ %.sroa.0297.sroa.0.1, %bb.bd ] ; 2 uses
  %.0415 = phi x86_fp80 [ %.sroa.0297.sroa.0.1, %bb.be ], [ %.sroa.0333.sroa.0.1, %bb.bd ] ; 3 uses
  %.6392 = phi x86_fp80 [ %.1379, %bb.be ], [ %.1387, %bb.bd ] ; 13 uses
  %.6382 = phi x86_fp80 [ %.1387, %bb.be ], [ %.1379, %bb.bd ] ; 18 uses
  %.8 = phi i8 [ %i.fa, %bb.be ], [ %.1166, %bb.bd ] ; 2 uses
  %i.fb = fmul x86_fp80 %.0415, %.6382
  %i.fc = tail call noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeESC_SD_SE_(x86_fp80 noundef %.6382, x86_fp80 noundef %.6392)
  %i.fd = fmul x86_fp80 %i.fb, %i.fc
  %i.fe = tail call noundef x86_fp80 @logl(x86_fp80 noundef %i.fd) #41
  %i.ff = fdiv x86_fp80 %i.fe, %.6382             ; 2 uses
  %i.fg = tail call noundef x86_fp80 @expl(x86_fp80 noundef %i.ff) #41 ; 8 uses
  %i.fh = fcmp olt x86_fp80 %i.fg, f0x3FFEE666666666666800
  br i1 %i.fh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fi = fsub x86_fp80 1.000000e+00, %i.fg
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.fj = tail call noundef x86_fp80 @_ZN5boost4math5expm1IeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_(x86_fp80 noundef %i.ff, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.fk = fneg x86_fp80 %i.fj
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.fl = phi x86_fp80 [ %i.fi, %bb.bg ], [ %i.fk, %bb.bh ] ; 2 uses
  %i.fm = fcmp olt x86_fp80 %.6392, %.6382
  %i.fn = fcmp olt x86_fp80 %i.fg, f0x3FFCCCCCCCCCCCCCD000
  %or.cond15 = and i1 %i.fm, %i.fn
  br i1 %or.cond15, label %_ZN5boost4math5tools19evaluate_polynomialIeeEET0_PKT_RKS3_m.exit, label %bb.bj

_ZN5boost4math5tools19evaluate_polynomialIeeEET0_PKT_RKS3_m.exit: ; preds = %bb.bi
  %i.fo = fadd x86_fp80 %.6382, -1.000000e+00     ; 3 uses
  %i.fp = fadd x86_fp80 %.6392, -1.000000e+00     ; 3 uses
  %i.fq = fmul x86_fp80 %.6382, %.6382            ; 7 uses
  %i.fr = fmul x86_fp80 %.6382, %i.fq             ; 2 uses
  %i.fs = fmul x86_fp80 %.6392, %.6392            ; 3 uses
  %i.ft = fdiv x86_fp80 %i.fp, %i.fo
  %i.fu = fmul x86_fp80 %i.fo, %i.fo              ; 2 uses
  %i.fv = fmul nnan x86_fp80 %.6382, 3.000000e+00
  %i.fw = fmul x86_fp80 %.6392, %i.fv
  %i.fx = fmul nnan x86_fp80 %.6392, 5.000000e+00
  %i.fy = fadd x86_fp80 %i.fx, %i.fw
  %i.fz = fadd x86_fp80 %i.fq, %i.fy
  %i.ga = fsub x86_fp80 %i.fz, %.6382
  %i.gb = fadd x86_fp80 %i.ga, -4.000000e+00
  %i.gc = fmul x86_fp80 %i.fp, %i.gb
  %i.gd = fadd x86_fp80 %.6382, 2.000000e+00      ; 2 uses
  %i.ge = fmul nnan x86_fp80 %i.gd, 2.000000e+00
  %i.gf = fmul x86_fp80 %i.ge, %i.fu
  %i.gg = fdiv x86_fp80 %i.gc, %i.gf
  %i.gh = fadd nnan x86_fp80 %.6382, 1.000000e+00
  %i.gi = fmul x86_fp80 %i.gh, %i.fu
  %i.gj = fmul nnan x86_fp80 %.6382, 3.300000e+01
  %i.gk = fmul x86_fp80 %i.fs, %i.gj
  %i.gl = fmul nnan x86_fp80 %i.fs, 3.100000e+01
  %i.gm = fadd x86_fp80 %i.gl, %i.gk
  %i.gn = fmul nnan x86_fp80 %i.fq, 8.000000e+00
  %i.go = fmul x86_fp80 %i.fs, %i.gn
  %i.gp = fadd x86_fp80 %i.gm, %i.go
  %i.gq = fmul nnan x86_fp80 %.6382, 3.000000e+01
  %i.gr = fmul x86_fp80 %.6392, %i.gq
  %i.gs = fsub x86_fp80 %i.gp, %i.gr
  %i.gt = fmul nnan x86_fp80 %.6392, 4.700000e+01
  %i.gu = fsub x86_fp80 %i.gs, %i.gt
  %i.gv = fmul nnan x86_fp80 %i.fq, 1.100000e+01
  %i.gw = fmul x86_fp80 %.6392, %i.gv
  %i.gx = fadd x86_fp80 %i.gw, %i.gu
  %i.gy = fmul x86_fp80 %i.fr, 6.000000e+00
  %i.gz = fmul x86_fp80 %.6392, %i.gy
  %i.ha = fadd x86_fp80 %i.gz, %i.gx
  %i.hb = fadd x86_fp80 %i.ha, 1.800000e+01
  %i.hc = fmul nnan x86_fp80 %.6382, 4.000000e+00
  %i.hd = fadd x86_fp80 %i.hc, %i.hb
  %i.he = fsub x86_fp80 %i.hd, %i.fr
  %i.hf = fmul x86_fp80 %i.fq, %i.fq
  %i.hg = fadd x86_fp80 %i.hf, %i.he
  %i.hh = fmul nnan x86_fp80 %i.fq, 1.000000e+01
  %i.hi = fsub x86_fp80 %i.hg, %i.hh
  %i.hj = fmul x86_fp80 %i.fp, %i.hi
  %i.hk = fadd nnan x86_fp80 %.6382, 3.000000e+00
  %i.hl = fmul nnan x86_fp80 %i.hk, 3.000000e+00
  %i.hm = fmul x86_fp80 %i.gd, %i.hl
  %i.hn = fmul x86_fp80 %i.hm, %i.gi
  %i.ho = fdiv x86_fp80 %i.hj, %i.hn
  %i.hp = fmul x86_fp80 %i.fg, %i.ho
  %i.hq = fadd x86_fp80 %i.hp, %i.gg
  %i.hr = fmul x86_fp80 %i.fg, %i.hq
  %i.hs = fadd x86_fp80 %i.hr, %i.ft
  %i.ht = fmul x86_fp80 %i.fg, %i.hs
  %i.hu = fadd x86_fp80 %i.ht, 1.000000e+00
  %i.hv = fmul x86_fp80 %i.fg, %i.hu
  %i.hw = fadd x86_fp80 %i.hv, 0.000000e+00
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN5boost4math5tools19evaluate_polynomialIeeEET0_PKT_RKS3_m.exit, %bb.bi
  %.4400 = phi x86_fp80 [ %i.hw, %_ZN5boost4math5tools19evaluate_polynomialIeeEET0_PKT_RKS3_m.exit ], [ %i.fg, %bb.bi ] ; 2 uses
  %i.hx = fcmp ogt x86_fp80 %.4400, %.sroa.0297.sroa.0.5
  br i1 %i.hx, label %bb.bk, label %.thread428

bb.bk:                                            ; preds = %bb.bj
  br label %.thread428

bb.bl:                                            ; preds = %bb.bc
  %i.hy = fcmp olt x86_fp80 %.1387, %.1379
  br i1 %i.hy, label %bb.bm, label %thread-pre-split437

bb.bm:                                            ; preds = %bb.bl
  %i.hz = xor i8 %.1166, 1
  br label %thread-pre-split437

thread-pre-split437:                              ; preds = %bb.bm, %bb.bl
  %.sroa.0297.sroa.0.6 = phi x86_fp80 [ %.sroa.0333.sroa.0.1, %bb.bm ], [ %.sroa.0297.sroa.0.1, %bb.bl ] ; 5 uses
  %.sroa.0333.sroa.0.6 = phi x86_fp80 [ %.sroa.0297.sroa.0.1, %bb.bm ], [ %.sroa.0333.sroa.0.1, %bb.bl ] ; 9 uses
  %.7393 = phi x86_fp80 [ %.1379, %bb.bm ], [ %.1387, %bb.bl ] ; 9 uses
  %.7383 = phi x86_fp80 [ %.1387, %bb.bm ], [ %.1379, %bb.bl ] ; 10 uses
  %.9 = phi i8 [ %i.hz, %bb.bm ], [ %.1166, %bb.bl ] ; 5 uses
  %i.ia = fcmp olt x86_fp80 %.7383, f0x00018000000000000000
  br i1 %i.ia, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %thread-pre-split437
  %i.ib = fcmp olt x86_fp80 %.sroa.0333.sroa.0.6, 1.000000e+00
  br i1 %i.ib, label %.thread444, label %.thread464.thread

bb.bo:                                            ; preds = %thread-pre-split437
  %i.ic = fdiv x86_fp80 1.000000e+00, %.7383      ; 2 uses
  %i.id = tail call noundef x86_fp80 @powl(x86_fp80 noundef %.sroa.0333.sroa.0.6, x86_fp80 noundef %i.ic) #41
  %i.ie = fcmp olt x86_fp80 %i.id, 5.000000e-01
  br i1 %i.ie, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  %i.if = invoke noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeESC_SD_SE_(x86_fp80 noundef %.7383, x86_fp80 noundef %.7393)
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ig = fmul x86_fp80 %.sroa.0333.sroa.0.6, %.7383
  %i.ih = fmul x86_fp80 %i.ig, %i.if
  %i.ii = tail call noundef x86_fp80 @powl(x86_fp80 noundef %i.ih, x86_fp80 noundef %i.ic) #41 ; 4 uses
  %i.ij = fcmp ule x86_fp80 %i.ii, 1.000000e+00
  %i.ik = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.ii)
  %i.il = fcmp one x86_fp80 %i.ik, +inf
  %or.cond550 = and i1 %i.ij, %i.il
  br i1 %or.cond550, label %bb.bt, label %.thread439

bb.br:                                            ; preds = %bb.bp
  %i.im = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt14overflow_error       ; 3 uses
  %i.in = extractvalue { ptr, i32 } %i.im, 1
  %i.io = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt14overflow_error) #41
  %i.ip = icmp eq i32 %i.in, %i.io
  br i1 %i.ip, label %bb.bs, label %bb.cj

bb.bs:                                            ; preds = %bb.br
  %i.iq = extractvalue { ptr, i32 } %i.im, 0
  %i.ir = tail call ptr @__cxa_begin_catch(ptr %i.iq) #41 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %.thread439

bb.bt:                                            ; preds = %bb.bq
  %i.is = fcmp oeq x86_fp80 %i.ii, 0.000000e+00
  br i1 %i.is, label %bb.bu, label %.thread439

bb.bu:                                            ; preds = %bb.bt
  br label %.thread439

.thread439:                                       ; preds = %bb.bq, %bb.bs, %bb.bu, %bb.bt
  %.7403 = phi x86_fp80 [ f0x00018000000000000000, %bb.bu ], [ %i.ii, %bb.bt ], [ 1.000000e+00, %bb.bs ], [ 1.000000e+00, %bb.bq ] ; 2 uses
  %i.it = fsub x86_fp80 1.000000e+00, %.7403
  br label %.thread428

bb.bv:                                            ; preds = %bb.bo
  %i.iu = invoke noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeESC_SD_SE_(x86_fp80 noundef %.7383, x86_fp80 noundef %.7393)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.iv = fmul x86_fp80 %.7393, %i.iu
  %i.iw = tail call noundef x86_fp80 @powl(x86_fp80 noundef %.sroa.0333.sroa.0.6, x86_fp80 noundef %i.iv) #41
  %i.ix = fsub x86_fp80 1.000000e+00, %i.iw
  %i.iy = fdiv x86_fp80 1.000000e+00, %.7393
  %i.iz = tail call noundef x86_fp80 @powl(x86_fp80 noundef %i.ix, x86_fp80 noundef %i.iy) #41 ; 4 uses
  %i.ja = fcmp ule x86_fp80 %i.iz, 1.000000e+00
  %i.jb = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.iz)
  %i.jc = fcmp one x86_fp80 %i.jb, +inf
  %or.cond552 = and i1 %i.ja, %i.jc
  br i1 %or.cond552, label %bb.bz, label %.thread442

bb.bx:                                            ; preds = %bb.bv
  %i.jd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt14overflow_error       ; 3 uses
  %i.je = extractvalue { ptr, i32 } %i.jd, 1
  %i.jf = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt14overflow_error) #41
  %i.jg = icmp eq i32 %i.je, %i.jf
  br i1 %i.jg, label %bb.by, label %bb.cj

bb.by:                                            ; preds = %bb.bx
  %i.jh = extractvalue { ptr, i32 } %i.jd, 0
  %i.ji = tail call ptr @__cxa_begin_catch(ptr %i.jh) #41 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %.thread442

bb.bz:                                            ; preds = %bb.bw
  %i.jj = fcmp oeq x86_fp80 %i.iz, 0.000000e+00
  br i1 %i.jj, label %bb.ca, label %.thread442

bb.ca:                                            ; preds = %bb.bz
  br label %.thread442

.thread442:                                       ; preds = %bb.bw, %bb.by, %bb.ca, %bb.bz
  %.5413 = phi x86_fp80 [ f0x00018000000000000000, %bb.ca ], [ %i.iz, %bb.bz ], [ 1.000000e+00, %bb.by ], [ 1.000000e+00, %bb.bw ] ; 2 uses
  %i.jk = fsub x86_fp80 1.000000e+00, %.5413
  br label %.thread428

.thread428:                                       ; preds = %bb.ba, %bb.bb, %bb.bj, %bb.bk, %bb.aa, %bb.al, %.thread423, %bb.af, %.thread442, %.thread439, %bb.o
  %.sroa.0297.sroa.0.7 = phi x86_fp80 [ %i.aa, %bb.o ], [ %i.bi, %bb.aa ], [ %i.bz, %bb.af ], [ %i.cr, %.thread423 ], [ %i.cn, %bb.al ], [ %i.it, %.thread439 ], [ %.5413, %.thread442 ], [ %i.fl, %bb.bj ], [ %i.fl, %bb.bk ], [ %i.ep, %bb.bb ], [ %i.ep, %bb.ba ]
  %.sroa.0333.sroa.0.7 = phi x86_fp80 [ %i.ab, %bb.o ], [ %i.bh, %bb.aa ], [ %storemerge, %bb.af ], [ %i.cq, %.thread423 ], [ %i.co, %bb.al ], [ %.7403, %.thread439 ], [ %i.jk, %.thread442 ], [ %.4400, %bb.bj ], [ %.sroa.0297.sroa.0.5, %bb.bk ], [ %.0178, %bb.bb ], [ %i.eo, %bb.ba ] ; 2 uses
  %.6414 = phi x86_fp80 [ %.sroa.0297.sroa.0.1, %bb.o ], [ %.sroa.0297.sroa.0.2, %bb.aa ], [ %.sroa.0297.sroa.0.2, %bb.af ], [ %.sroa.0297.sroa.0.3, %.thread423 ], [ %.sroa.0297.sroa.0.3, %bb.al ], [ %.sroa.0297.sroa.0.6, %.thread439 ], [ %.sroa.0297.sroa.0.6, %.thread442 ], [ %.sroa.0333.sroa.0.5, %bb.bj ], [ %.sroa.0333.sroa.0.5, %bb.bk ], [ %.sroa.0297.sroa.0.4, %bb.bb ], [ %.sroa.0297.sroa.0.4, %bb.ba ] ; 2 uses
  %.8404 = phi x86_fp80 [ %.sroa.0333.sroa.0.1, %bb.o ], [ %.sroa.0333.sroa.0.2, %bb.aa ], [ %.sroa.0333.sroa.0.2, %bb.af ], [ %.sroa.0333.sroa.0.3, %.thread423 ], [ %.sroa.0333.sroa.0.3, %bb.al ], [ %.sroa.0333.sroa.0.6, %.thread439 ], [ %.sroa.0333.sroa.0.6, %.thread442 ], [ %.0415, %bb.bj ], [ %.0415, %bb.bk ], [ %.sroa.0333.sroa.0.4, %bb.bb ], [ %.sroa.0333.sroa.0.4, %bb.ba ] ; 2 uses
  %.8394 = phi x86_fp80 [ 5.000000e-01, %bb.o ], [ %.2388, %bb.aa ], [ %.2388, %bb.af ], [ %.3389, %.thread423 ], [ %.3389, %bb.al ], [ %.7393, %.thread439 ], [ %.7393, %.thread442 ], [ %.6392, %bb.bj ], [ %.6392, %bb.bk ], [ %.4390, %bb.bb ], [ %.4390, %bb.ba ] ; 2 uses
  %.8384 = phi x86_fp80 [ %.1379, %bb.o ], [ %.2380, %bb.aa ], [ %.2380, %bb.af ], [ %.3381, %.thread423 ], [ %.3381, %bb.al ], [ %.7383, %.thread439 ], [ %.7383, %.thread442 ], [ %.6382, %bb.bj ], [ %.6382, %bb.bk ], [ %.4, %bb.bb ], [ %.4, %bb.ba ] ; 2 uses
  %.1173 = phi x86_fp80 [ 1.000000e+00, %bb.o ], [ 1.000000e+00, %bb.aa ], [ 1.000000e+00, %bb.af ], [ 1.000000e+00, %.thread423 ], [ 1.000000e+00, %bb.al ], [ 1.000000e+00, %.thread439 ], [ 1.000000e+00, %.thread442 ], [ %.sroa.0297.sroa.0.5, %bb.bj ], [ %.sroa.0297.sroa.0.5, %bb.bk ], [ %.0178, %bb.bb ], [ %.0178, %bb.ba ] ; 2 uses
  %.10 = phi i8 [ %.1166, %bb.o ], [ %.2167, %bb.aa ], [ %.2167, %bb.af ], [ %.3, %.thread423 ], [ %.3, %bb.al ], [ %.9, %.thread439 ], [ %.9, %.thread442 ], [ %.8, %bb.bj ], [ %.8, %bb.bk ], [ %.6, %bb.bb ], [ %.6, %bb.ba ] ; 2 uses
  %i.jl = fcmp ogt x86_fp80 %.sroa.0333.sroa.0.7, 5.000000e-01
  br i1 %i.jl, label %.thread444, label %.thread464

.thread444:                                       ; preds = %bb.bn, %.thread428
  %.10479 = phi i8 [ %.10, %.thread428 ], [ %.9, %bb.bn ]
  %.sroa.0333.sroa.0.8 = phi x86_fp80 [ %.1173, %.thread428 ], [ 1.000000e+00, %bb.bn ]
  %.8387477 = phi x86_fp80 [ %.8384, %.thread428 ], [ %.7383, %bb.bn ] ; 2 uses
  %.1173454 = phi x86_fp80 [ %.8394, %.thread428 ], [ %.7393, %bb.bn ] ; 2 uses
  %.8384453 = phi x86_fp80 [ %.8404, %.thread428 ], [ %.sroa.0333.sroa.0.6, %bb.bn ] ; 2 uses
  %.8394452 = phi x86_fp80 [ %.6414, %.thread428 ], [ %.sroa.0297.sroa.0.6, %bb.bn ] ; 2 uses
  %.6414451 = phi x86_fp80 [ %.sroa.0297.sroa.0.7, %.thread428 ], [ 0.000000e+00, %bb.bn ] ; 2 uses
  %i.jm = xor i8 %.10479, 1                       ; 2 uses
  %i.jn = fsub x86_fp80 1.000000e+00, %.sroa.0333.sroa.0.8 ; 2 uses
  %i.jo = fcmp oeq x86_fp80 %i.jn, 0.000000e+00
  br i1 %i.jo, label %.thread464, label %bb.ce

.thread464:                                       ; preds = %.thread428, %.thread444
  %.11510 = phi i8 [ %i.jm, %.thread444 ], [ %.10, %.thread428 ] ; 3 uses
  %.sroa.0333.sroa.0.9 = phi x86_fp80 [ 1.000000e+00, %.thread444 ], [ %.1173, %.thread428 ] ; 3 uses
  %.9388507 = phi x86_fp80 [ %.1173454, %.thread444 ], [ %.8384, %.thread428 ] ; 3 uses
  %.2174477 = phi x86_fp80 [ %.8387477, %.thread444 ], [ %.8394, %.thread428 ] ; 3 uses
  %.9385475 = phi x86_fp80 [ %.8394452, %.thread444 ], [ %.8404, %.thread428 ] ; 3 uses
  %.9395473 = phi x86_fp80 [ %.8384453, %.thread444 ], [ %.6414, %.thread428 ] ; 3 uses
  %.9405471 = phi x86_fp80 [ %.6414451, %.thread444 ], [ %.sroa.0333.sroa.0.7, %.thread428 ] ; 3 uses
  %i.jp = trunc nuw i8 %.11510 to i1
  %i.jq = icmp eq ptr %5, null
  %or.cond17 = and i1 %i.jq, %i.jp
  br i1 %or.cond17, label %bb.cb, label %bb.cc

.thread464.thread:                                ; preds = %bb.bn
  %i.jr = trunc nuw i8 %.9 to i1
  %i.js = icmp eq ptr %5, null
  %or.cond17501 = and i1 %i.js, %i.jr
  br i1 %or.cond17501, label %.thread483, label %.thread533

.thread533:                                       ; preds = %.thread464.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i64 200, ptr %i.b, align 8, !tbaa !260
  br label %bb.cf

bb.cb:                                            ; preds = %.thread464
  %i.jt = fcmp olt x86_fp80 %.9405471, f0x3FC08000000000000000
  br i1 %i.jt, label %.thread483, label %bb.cc

.thread483:                                       ; preds = %.thread464.thread, %bb.cb
  %.sroa.0297.sroa.0.10 = phi x86_fp80 [ %.sroa.0333.sroa.0.9, %bb.cb ], [ 1.000000e+00, %.thread464.thread ]
  %.sroa.0333.sroa.0.10 = phi x86_fp80 [ %.9388507, %bb.cb ], [ %.7383, %.thread464.thread ]
  %.2174477505519 = phi x86_fp80 [ %.2174477, %bb.cb ], [ %.7393, %.thread464.thread ]
  %.9385475507518 = phi x86_fp80 [ %.9385475, %bb.cb ], [ %.sroa.0333.sroa.0.6, %.thread464.thread ]
  %.9395473509517 = phi x86_fp80 [ %.9395473, %bb.cb ], [ %.sroa.0297.sroa.0.6, %.thread464.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i64 200, ptr %i.b, align 8, !tbaa !260
  br label %bb.cg

bb.cc:                                            ; preds = %.thread464, %bb.cb
  %.1170 = phi x86_fp80 [ f0x00018000000000000000, %.thread464 ], [ f0x3FC08000000000000000, %bb.cb ] ; 4 uses
  %i.ju = fcmp olt x86_fp80 %.9405471, %.1170
  br i1 %i.ju, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd, %.thread444
  %.11511 = phi i8 [ %i.jm, %.thread444 ], [ %.11510, %bb.cc ], [ %.11510, %bb.cd ] ; 2 uses
  %.sroa.0333.sroa.0.11 = phi x86_fp80 [ 1.000000e+00, %.thread444 ], [ %.sroa.0333.sroa.0.9, %bb.cc ], [ %.sroa.0333.sroa.0.9, %bb.cd ] ; 2 uses
  %.9388506 = phi x86_fp80 [ %.1173454, %.thread444 ], [ %.9388507, %bb.cc ], [ %.9388507, %bb.cd ] ; 2 uses
  %.2174476 = phi x86_fp80 [ %.8387477, %.thread444 ], [ %.2174477, %bb.cc ], [ %.2174477, %bb.cd ] ; 2 uses
  %.9385474 = phi x86_fp80 [ %.8394452, %.thread444 ], [ %.9385475, %bb.cc ], [ %.9385475, %bb.cd ] ; 2 uses
  %.9395472 = phi x86_fp80 [ %.8384453, %.thread444 ], [ %.9395473, %bb.cc ], [ %.9395473, %bb.cd ] ; 2 uses
  %.11407 = phi x86_fp80 [ %.6414451, %.thread444 ], [ %.9405471, %bb.cc ], [ %.1170, %bb.cd ] ; 3 uses
  %.2171 = phi x86_fp80 [ %i.jn, %.thread444 ], [ %.1170, %bb.cc ], [ %.1170, %bb.cd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i64 200, ptr %i.b, align 8, !tbaa !260
  %i.jv = fcmp olt x86_fp80 %.11407, f0x3F58EF73D256A5C0F800
  br i1 %i.jv, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.thread533, %bb.ce
  %.sroa.0297.sroa.0.12 = phi x86_fp80 [ f0x00018000000000000000, %.thread533 ], [ %.2171, %bb.ce ]
  %.sroa.0333.sroa.0.12 = phi x86_fp80 [ f0x00018000000000000000, %.thread533 ], [ %.11407, %bb.ce ]
  %.2171545 = phi x86_fp80 [ %.sroa.0297.sroa.0.6, %.thread533 ], [ %.9395472, %bb.ce ]
  %.11407544 = phi x86_fp80 [ %.sroa.0333.sroa.0.6, %.thread533 ], [ %.9385474, %bb.ce ]
  %.9395472543 = phi x86_fp80 [ %.7393, %.thread533 ], [ %.2174476, %bb.ce ] ; 2 uses
  %.9385474542 = phi x86_fp80 [ %.7383, %.thread533 ], [ %.9388506, %bb.ce ] ; 2 uses
  %.2174476541 = phi x86_fp80 [ 1.000000e+00, %.thread533 ], [ %.sroa.0333.sroa.0.11, %bb.ce ]
  %.11479540 = phi i8 [ %.9, %.thread533 ], [ %.11511, %bb.ce ]
  %i.jw = fcmp olt x86_fp80 %.9385474542, 1.000000e+00
  %i.jx = fcmp olt x86_fp80 %.9395472543, 1.000000e+00
  %or.cond19 = or i1 %i.jx, %i.jw
  %spec.select553 = select i1 %or.cond19, i32 48, i32 32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %.thread483, %bb.ce
  %.sroa.0297.sroa.0.13 = phi x86_fp80 [ f0x3FC08000000000000000, %.thread483 ], [ %.sroa.0297.sroa.0.12, %bb.cf ], [ %.2171, %bb.ce ] ; 2 uses
  %.sroa.0333.sroa.0.13 = phi x86_fp80 [ f0x3FC08000000000000000, %.thread483 ], [ %.sroa.0333.sroa.0.12, %bb.cf ], [ %.11407, %bb.ce ]
  %.2171495 = phi x86_fp80 [ %.9395473509517, %.thread483 ], [ %.2171545, %bb.cf ], [ %.9395472, %bb.ce ] ; 2 uses
  %.11407494 = phi x86_fp80 [ %.9385475507518, %.thread483 ], [ %.11407544, %bb.cf ], [ %.9385474, %bb.ce ] ; 2 uses
  %.9395472493 = phi x86_fp80 [ %.2174477505519, %.thread483 ], [ %.9395472543, %bb.cf ], [ %.2174476, %bb.ce ]
  %.9385474492 = phi x86_fp80 [ %.sroa.0333.sroa.0.10, %.thread483 ], [ %.9385474542, %bb.cf ], [ %.9388506, %bb.ce ]
  %.2174476491 = phi x86_fp80 [ %.sroa.0297.sroa.0.10, %.thread483 ], [ %.2174476541, %bb.cf ], [ %.sroa.0333.sroa.0.11, %bb.ce ]
  %.11479490 = phi i8 [ 1, %.thread483 ], [ %.11479540, %bb.cf ], [ %.11511, %bb.ce ]
  %.0 = phi i32 [ 32, %.thread483 ], [ %spec.select553, %bb.cf ], [ 32, %bb.ce ]
  %i.jy = fcmp uge x86_fp80 %.11407494, %.2171495 ; 2 uses
  %i.jz = select i1 %i.jy, x86_fp80 %.2171495, x86_fp80 %.11407494
  %i.ka = zext i1 %i.jy to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store x86_fp80 %.9385474492, ptr %6, align 16
  %.sroa.2223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store x86_fp80 %.9395472493, ptr %.sroa.2223.0..sroa_idx, align 16
  %.sroa.3224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store x86_fp80 %i.jz, ptr %.sroa.3224.0..sroa_idx, align 16
  %.sroa.4225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i8 %i.ka, ptr %.sroa.4225.0..sroa_idx, align 16
  %i.kb = call noundef x86_fp80 @_ZN5boost4math5tools6detail24second_order_root_finderINS2_11halley_stepENS0_6detail11ibeta_rootsIeNS0_8policies6policyINS7_13promote_floatILb0EEENS7_14promote_doubleILb0EEENS7_14default_policyESD_SD_SD_SD_SD_SD_SD_SD_SD_SD_EEEEeEET1_T0_SG_SG_SG_iRm(ptr noundef nonnull byval(%"struct.boost::math::detail::ibeta_roots") align 16 %6, x86_fp80 noundef %.sroa.0333.sroa.0.13, x86_fp80 noundef %.sroa.0297.sroa.0.13, x86_fp80 noundef %.2174476491, i32 noundef %.0, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.kc = load i64, ptr %i.b, align 8, !tbaa !260 ; 2 uses
  %.not.i222 = icmp ult i64 %i.kc, 200
  br i1 %.not.i222, label %_ZN5boost4math8policies21check_root_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.kd = uitofp i64 %i.kc to double
  %i.ke = fpext double %i.kd to x86_fp80
  store x86_fp80 %i.ke, ptr %i.a, align 16, !tbaa !182
  call void @_ZN5boost4math8policies6detail11raise_errorINS0_16evaluation_errorEeEEvPKcS6_RKT0_(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.363, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5boost4math8policies21check_root_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit

_ZN5boost4math8policies21check_root_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit: ; preds = %bb.cg, %bb.ch
  %i.kf = fcmp oeq x86_fp80 %i.kb, %.sroa.0297.sroa.0.13
  %.12 = select i1 %i.kf, x86_fp80 0.000000e+00, x86_fp80 %i.kb ; 3 uses
  %.not216 = icmp eq ptr %5, null
  %.pre = trunc nuw i8 %.11479490 to i1           ; 2 uses
  %.pre558 = fsub x86_fp80 1.000000e+00, %.12     ; 2 uses
  br i1 %.not216, label %_ZN5boost4math8policies21check_root_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit._crit_edge, label %bb.ci

bb.ci:                                            ; preds = %_ZN5boost4math8policies21check_root_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit
  %i.kg = select i1 %.pre, x86_fp80 %.12, x86_fp80 %.pre558
  store x86_fp80 %i.kg, ptr %5, align 16, !tbaa !182
  br label %_ZN5boost4math8policies21check_root_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit._crit_edge

_ZN5boost4math8policies21check_root_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit._crit_edge: ; preds = %_ZN5boost4math8policies21check_root_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit, %bb.ci
  %i.kh = select i1 %.pre, x86_fp80 %.pre558, x86_fp80 %.12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %bb.ck

bb.cj:                                            ; preds = %bb.av, %bb.aj, %bb.bx, %bb.br
  %.merged = phi { ptr, i32 } [ %i.jd, %bb.bx ], [ %i.cd, %bb.aj ], [ %i.im, %bb.br ], [ %i.dq, %bb.av ]
  resume { ptr, i32 } %.merged

bb.ck:                                            ; preds = %_ZN5boost4math8policies21check_root_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit._crit_edge, %bb.m, %bb.l, %bb.v, %bb.u, %bb.at, %bb.ao, %bb.i, %bb.j, %bb.e, %bb.f, %bb.b, %bb.c
  %.2 = phi x86_fp80 [ %2, %bb.i ], [ 1.000000e+00, %bb.b ], [ 0.000000e+00, %bb.e ], [ 1.000000e+00, %bb.c ], [ 0.000000e+00, %bb.f ], [ %2, %bb.j ], [ %spec.select546, %bb.u ], [ %i.kh, %_ZN5boost4math8policies21check_root_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit._crit_edge ], [ %i.m, %bb.l ], [ %i.m, %bb.m ], [ %spec.select546, %bb.v ], [ %i.dg, %bb.ao ], [ %i.do, %bb.at ]
  ret x86_fp80 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6detail28temme_method_1_ibeta_inverseIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_(x86_fp80 noundef %0, x86_fp80 noundef %1, x86_fp80 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat {
_ZN5boost4math5tools19evaluate_polynomialIeeEET0_PKT_RKS3_m.exit:
  %sqrt = tail call x86_fp80 @llvm.sqrt.f80(x86_fp80 2.000000e+00) ; 2 uses
  %i.a = fmul x86_fp80 %2, 2.000000e+00
  %i.b = tail call noundef x86_fp80 @_ZN5boost4math8erfc_invIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_(x86_fp80 noundef %i.a, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.c = fmul x86_fp80 %0, 5.000000e-01
  %i.d = tail call noundef x86_fp80 @sqrtl(x86_fp80 noundef %i.c) #41
  %i.e = fneg x86_fp80 %i.d
  %i.f = fdiv x86_fp80 %i.b, %i.e                 ; 14 uses
  %i.g = fsub x86_fp80 %1, %0                     ; 16 uses
  %i.h = fneg x86_fp80 %i.g
  %i.i = fmul x86_fp80 %sqrt, %i.h                ; 3 uses
  %i.j = fmul x86_fp80 %i.i, 5.000000e-01
  %i.k = fmul x86_fp80 %i.g, 2.000000e+00
  %i.l = fsub x86_fp80 1.000000e+00, %i.k
  %i.m = fmul x86_fp80 %i.l, 1.250000e-01
  %i.n = fmul x86_fp80 %sqrt, %i.g                ; 6 uses
  %i.o = fdiv x86_fp80 %i.n, -4.800000e+01
  %i.p = fdiv x86_fp80 %i.i, 3.840000e+03
  %i.q = fmul x86_fp80 %i.f, %i.p
  %i.r = fadd x86_fp80 %i.q, f0xBFF7AAAAAAAAAAAAAAAB
  %i.s = fmul x86_fp80 %i.f, %i.r
  %i.t = fadd x86_fp80 %i.s, %i.o
  %i.u = fmul x86_fp80 %i.f, %i.t
  %i.v = fadd x86_fp80 %i.u, %i.m
  %i.w = fmul x86_fp80 %i.f, %i.v
  %i.x = fadd x86_fp80 %i.w, %i.j
  %i.y = fmul x86_fp80 %i.g, %i.g                 ; 8 uses
  %i.z = fmul x86_fp80 %i.g, 3.000000e+00
  %i.aa = fadd x86_fp80 %i.z, -2.000000e+00
  %i.ab = fmul x86_fp80 %i.n, %i.aa
  %i.ac = fdiv x86_fp80 %i.ab, 1.200000e+01
  %i.ad = fmul x86_fp80 %i.y, 2.000000e+01
  %i.ae = fmul x86_fp80 %i.g, 1.200000e+01
  %i.af = fsub x86_fp80 %i.ad, %i.ae
  %i.ag = fadd x86_fp80 %i.af, 1.000000e+00
  %i.ah = fmul x86_fp80 %i.ag, 7.812500e-03
  %i.ai = fmul x86_fp80 %i.g, 2.000000e+01
  %i.aj = fadd x86_fp80 %i.ai, -1.000000e+00
  %i.ak = fmul x86_fp80 %i.n, %i.aj
  %i.al = fdiv x86_fp80 %i.ak, 9.600000e+02
  %i.am = fmul x86_fp80 %i.y, 1.600000e+01
  %i.an = fmul x86_fp80 %i.g, 3.000000e+01
  %i.ao = fadd x86_fp80 %i.an, %i.am
  %i.ap = fadd x86_fp80 %i.ao, -1.500000e+01
  %i.aq = fdiv x86_fp80 %i.ap, 4.608000e+03
  %i.ar = fmul x86_fp80 %i.g, 2.100000e+01
  %i.as = fadd x86_fp80 %i.ar, 3.200000e+01
  %i.at = fmul x86_fp80 %i.n, %i.as
  %i.au = fdiv x86_fp80 %i.at, 5.376000e+04
  %i.av = fmul x86_fp80 %i.y, 3.200000e+01
  %i.aw = fsub x86_fp80 6.300000e+01, %i.av
  %i.ax = fdiv x86_fp80 %i.aw, 3.686400e+05
  %i.ay = fmul x86_fp80 %i.g, 1.200000e+02
  %i.az = fadd x86_fp80 %i.ay, 1.700000e+01
  %i.ba = fmul x86_fp80 %i.i, %i.az
  %i.bb = fdiv x86_fp80 %i.ba, f0x4017C4DF600000000000
  %i.bc = fmul x86_fp80 %i.f, %i.bb
  %i.bd = fadd x86_fp80 %i.bc, %i.ax
  %i.be = fmul x86_fp80 %i.f, %i.bd
  %i.bf = fadd x86_fp80 %i.be, %i.au
  %i.bg = fmul x86_fp80 %i.f, %i.bf
  %i.bh = fadd x86_fp80 %i.bg, %i.aq
  %i.bi = fmul x86_fp80 %i.f, %i.bh
  %i.bj = fadd x86_fp80 %i.bi, %i.al
  %i.bk = fmul x86_fp80 %i.f, %i.bj
  %i.bl = fadd x86_fp80 %i.bk, %i.ah
  %i.bm = fmul x86_fp80 %i.f, %i.bl
  %i.bn = fadd x86_fp80 %i.bm, %i.ac
  %i.bo = fmul x86_fp80 %i.g, %i.y                ; 2 uses
  %i.bp = fmul x86_fp80 %i.y, 7.500000e+01
  %i.bq = fmul x86_fp80 %i.g, 8.000000e+01
  %i.br = fsub x86_fp80 %i.bq, %i.bp
  %i.bs = fadd x86_fp80 %i.br, -1.600000e+01
  %i.bt = fmul x86_fp80 %i.n, %i.bs
  %i.bu = fdiv x86_fp80 %i.bt, 4.800000e+02
  %i.bv = fmul x86_fp80 %i.bo, 1.080000e+03
  %i.bw = fmul x86_fp80 %i.y, 8.680000e+02
  %i.bx = fsub x86_fp80 %i.bw, %i.bv
  %i.by = fmul x86_fp80 %i.g, 9.000000e+01
  %i.bz = fsub x86_fp80 %i.bx, %i.by
  %i.ca = fadd x86_fp80 %i.bz, -4.500000e+01
  %i.cb = fdiv x86_fp80 %i.ca, 9.216000e+03
  %i.cc = fmul x86_fp80 %i.y, 1.190000e+03
  %i.cd = fmul x86_fp80 %i.g, 8.400000e+01
  %i.ce = fsub x86_fp80 %i.cd, %i.cc
  %i.cf = fadd x86_fp80 %i.ce, 3.730000e+02
  %i.cg = fmul x86_fp80 %i.n, %i.cf
  %i.ch = fdiv x86_fp80 %i.cg, 5.376000e+04
  %i.ci = fmul x86_fp80 %i.bo, -2.240000e+03
  %i.cj = fmul x86_fp80 %i.y, 2.508000e+03
  %i.ck = fsub x86_fp80 %i.ci, %i.cj
  %i.cl = fmul x86_fp80 %i.g, 2.100000e+03
  %i.cm = fadd x86_fp80 %i.cl, %i.ck
  %i.cn = fadd x86_fp80 %i.cm, -1.650000e+02
  %i.co = fdiv x86_fp80 %i.cn, 3.686400e+05
  %i.cp = fmul x86_fp80 %i.f, %i.co
  %i.cq = fadd x86_fp80 %i.cp, %i.ch
  %i.cr = fmul x86_fp80 %i.f, %i.cq
  %i.cs = fadd x86_fp80 %i.cr, %i.cb
  %i.ct = fmul x86_fp80 %i.f, %i.cs
  %i.cu = fadd x86_fp80 %i.ct, %i.bu
  %i.cv = fdiv x86_fp80 1.000000e+00, %0          ; 3 uses
  %i.cw = fmul x86_fp80 %i.cv, %i.cu
  %i.cx = fadd x86_fp80 %i.cw, %i.bn
  %i.cy = fmul x86_fp80 %i.cv, %i.cx
  %i.cz = fadd x86_fp80 %i.cy, %i.x
  %i.da = fmul x86_fp80 %i.cv, %i.cz
  %i.db = fadd x86_fp80 %i.da, %i.f               ; 3 uses
  %i.dc = fmul x86_fp80 %i.db, %i.db              ; 3 uses
  %i.dd = fmul x86_fp80 %i.dc, -5.000000e-01
  %i.de = tail call noundef x86_fp80 @expl(x86_fp80 noundef %i.dd) #41
  %i.df = fcmp oeq x86_fp80 %i.dc, 0.000000e+00
  br i1 %i.df, label %.thread81, label %bb.a

bb.a:                                             ; preds = %_ZN5boost4math5tools19evaluate_polynomialIeeEET0_PKT_RKS3_m.exit
  %i.dg = fsub x86_fp80 1.000000e+00, %i.de
  %i.dh = fdiv x86_fp80 %i.dg, %i.dc
  %i.di = tail call noundef x86_fp80 @sqrtl(x86_fp80 noundef %i.dh) #41
  %i.dj = fmul x86_fp80 %i.db, %i.di
  %i.dk = fadd x86_fp80 %i.dj, 1.000000e+00
  %i.dl = fmul x86_fp80 %i.dk, 5.000000e-01       ; 3 uses
  %i.dm = fcmp olt x86_fp80 %i.dl, 0.000000e+00
  br i1 %i.dm, label %.thread81, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.dn = fcmp ogt x86_fp80 %i.dl, 1.000000e+00
  br i1 %i.dn, label %bb.c, label %.thread81

bb.c:                                             ; preds = %bb.b
  br label %.thread81

.thread81:                                        ; preds = %_ZN5boost4math5tools19evaluate_polynomialIeeEET0_PKT_RKS3_m.exit, %bb.a, %bb.b, %bb.c
  %.1 = phi x86_fp80 [ %i.dl, %bb.b ], [ 1.000000e+00, %bb.c ], [ 0.000000e+00, %bb.a ], [ 5.000000e-01, %_ZN5boost4math5tools19evaluate_polynomialIeeEET0_PKT_RKS3_m.exit ]
  ret x86_fp80 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6detail28temme_method_2_ibeta_inverseIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_SB_RKT0_(x86_fp80 noundef %0, x86_fp80 noundef %1, x86_fp80 noundef %2, x86_fp80 noundef %3, x86_fp80 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat {
_ZN5boost4math5tools24evaluate_even_polynomialIieEET0_PKT_S3_m.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"struct.boost::math::detail::temme_root_finder", align 16 ; 5 uses
  %i.b = fmul x86_fp80 %2, 2.000000e+00
  %i.c = tail call noundef x86_fp80 @_ZN5boost4math8erfc_invIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_(x86_fp80 noundef %i.b, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %i.d = fmul x86_fp80 %3, 5.000000e-01
  %i.e = tail call noundef x86_fp80 @sqrtl(x86_fp80 noundef %i.d) #41
  %i.f = fneg x86_fp80 %i.e
  %i.g = fdiv x86_fp80 %i.c, %i.f                 ; 10 uses
  %i.h = tail call noundef x86_fp80 @sinl(x86_fp80 noundef %4) #41 ; 8 uses
  %i.i = tail call noundef x86_fp80 @cosl(x86_fp80 noundef %4) #41 ; 8 uses
  %i.j = fmul x86_fp80 %i.h, 2.000000e+00
  %i.k = fmul x86_fp80 %i.h, %i.j
  %i.l = fadd x86_fp80 %i.k, -1.000000e+00
  %i.m = fmul x86_fp80 %i.h, 3.000000e+00
  %i.n = fmul x86_fp80 %i.m, %i.i
  %i.o = fdiv x86_fp80 %i.l, %i.n
  %i.p = fmul x86_fp80 %i.h, %i.h                 ; 59 uses
  %i.q = fmul x86_fp80 %i.p, 5.000000e+00
  %i.r = fadd x86_fp80 %i.q, -5.000000e+00
  %i.s = fmul x86_fp80 %i.p, %i.r
  %i.t = fadd x86_fp80 %i.s, -1.000000e+00
  %i.u = fmul x86_fp80 %i.h, %i.i                 ; 4 uses
  %i.v = fmul x86_fp80 %i.u, %i.u                 ; 5 uses
  %i.w = fmul x86_fp80 %i.v, 3.600000e+01
  %i.x = fmul x86_fp80 %i.p, 4.600000e+01         ; 2 uses
  %i.y = fadd x86_fp80 %i.x, -6.900000e+01
  %i.z = fmul x86_fp80 %i.p, %i.y
  %i.aa = fadd x86_fp80 %i.z, 2.100000e+01
  %i.ab = fmul x86_fp80 %i.p, %i.aa
  %i.ac = fadd x86_fp80 %i.ab, 1.000000e+00       ; 2 uses
  %i.ad = fmul x86_fp80 %i.u, %i.v                ; 6 uses
  %i.ae = fmul x86_fp80 %i.ad, 1.620000e+03
  %i.af = fdiv x86_fp80 %i.ac, %i.ae
  %i.ag = fmul x86_fp80 %i.p, 3.100000e+01
end_hunk_0
begin_hunk_1_@_ZN5boost4math6detail11erf_inv_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_RKSB_SD_RKT0_PKSt17integral_constantIiLi64EE:bb.a

bb.f:                                             ; preds = %bb.e
  %i.cl = fadd x86_fp80 %i.cj, -1.125000e+00      ; 4 uses
  %i.cm = fmul x86_fp80 %i.cl, %i.cl              ; 15 uses
  %i.cn = fmul nnan x86_fp80 %i.cm, f0x3FE0BB3BAAC47998698D
  %i.co = fsub nnan x86_fp80 f0xBFEAB66484CF3261823F, %i.cn
  %i.cp = fmul nnan x86_fp80 %i.cm, f0x3FE5F501B6B9611732D5
  %i.cq = fadd nnan x86_fp80 %i.cp, f0x3FF68C9D06AEBD41D397
  %i.cr = fmul x86_fp80 %i.cm, %i.co
  %i.cs = fmul x86_fp80 %i.cm, %i.cq
  %i.ct = fadd x86_fp80 %i.cr, f0x3FF9EDB2862D46885FB9
  %i.cu = fadd x86_fp80 %i.cs, f0x3FFC924C642782D934FE
  %i.cv = fmul x86_fp80 %i.cm, %i.ct
  %i.cw = fmul x86_fp80 %i.cm, %i.cu
  %i.cx = fadd x86_fp80 %i.cv, f0x3FFDACF239E560BB61A4
  %i.cy = fadd x86_fp80 %i.cw, f0x3FFDC62F50C7A9C13814
  %i.cz = fmul x86_fp80 %i.cm, %i.cx
  %i.da = fmul x86_fp80 %i.cm, %i.cy
  %i.db = fadd x86_fp80 %i.cz, f0x3FFBEFAD81B113BC5A66
  %i.dc = fadd x86_fp80 %i.da, f0xBFFCA7B9A06FE62C09AD
  %i.dd = fmul x86_fp80 %i.cm, %i.db
  %i.de = fadd x86_fp80 %i.dd, f0xBFFC863FCEBEEB8AB94F
  %i.df = fmul x86_fp80 %i.cl, %i.dc
  %i.dg = fadd x86_fp80 %i.df, %i.de
  %i.dh = fmul nnan x86_fp80 %i.cm, f0x3FF8B531D2FE03A20DF3
  %i.di = fadd nnan x86_fp80 %i.dh, f0x3FFED94E84AC38202A3F
  %i.dj = fmul nnan x86_fp80 %i.cm, f0x3FFC9BEB2EC54D57D759
  %i.dk = fadd nnan x86_fp80 %i.dj, f0x4000A5F406DEE8942888
  %i.dl = fmul x86_fp80 %i.cm, %i.di
  %i.dm = fmul x86_fp80 %i.cm, %i.dk
  %i.dn = fadd x86_fp80 %i.dl, f0x400198E9316182601E75
  %i.do = fadd x86_fp80 %i.dm, f0x4001AC36C039B14906E5
  %i.dp = fmul x86_fp80 %i.cm, %i.dn
  %i.dq = fmul x86_fp80 %i.cm, %i.do
  %i.dr = fadd x86_fp80 %i.dp, f0x4000DDD71B522C7C2AFA
  %i.ds = fadd x86_fp80 %i.dq, 1.000000e+00
  %i.dt = fmul x86_fp80 %i.cl, %i.dr
  %i.du = fadd x86_fp80 %i.ds, %i.dt
  %i.dv = fdiv x86_fp80 %i.dg, %i.du
  %i.dw = fmul nnan x86_fp80 %i.cj, f0x3FFECEA6000000000000
  %i.dx = fmul x86_fp80 %i.cj, %i.dv
  %i.dy = fadd x86_fp80 %i.dw, %i.dx
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.dz = fcmp olt x86_fp80 %i.cj, 6.000000e+00
  br i1 %i.dz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ea = fadd x86_fp80 %i.cj, -3.000000e+00      ; 4 uses
  %i.eb = fmul x86_fp80 %i.ea, %i.ea              ; 12 uses
  %i.ec = fmul nnan x86_fp80 %i.eb, f0x3FD8BB6B68E9AC1A066E
  %i.ed = fadd nnan x86_fp80 %i.ec, f0x3FED9A820FFA90471288
  %i.ee = fmul nnan x86_fp80 %i.eb, f0x3FDEFD552DE10DBB7689
  %i.ef = fsub nnan x86_fp80 f0x3FF2A5328FAC09479ABE, %i.ee
  %i.eg = fmul x86_fp80 %i.eb, %i.ed
  %i.eh = fmul x86_fp80 %i.eb, %i.ef
  %i.ei = fadd x86_fp80 %i.eg, f0x3FF5F54439A3B40A6EC5
  %i.ej = fadd x86_fp80 %i.eh, f0x3FF89BC7A3BE213D1741
  %i.ek = fmul x86_fp80 %i.eb, %i.ei
  %i.el = fmul x86_fp80 %i.eb, %i.ej
  %i.em = fadd x86_fp80 %i.ek, f0x3FF998058B07F728610A
  %i.en = fadd x86_fp80 %i.el, f0xBFF691C4FAAFF5DF7E14
  %i.eo = fmul x86_fp80 %i.eb, %i.em
  %i.ep = fadd x86_fp80 %i.eo, f0xBFFA8F8141DCC5383E31
  %i.eq = fmul x86_fp80 %i.ea, %i.en
  %i.er = fadd x86_fp80 %i.eq, %i.ep
  %i.es = fmul nnan x86_fp80 %i.eb, f0x3FF1A05D313126DBAA66
  %i.et = fadd nnan x86_fp80 %i.es, f0x3FFA8BEA37C12D34B372
  %i.eu = fmul nnan x86_fp80 %i.eb, f0x3FF6ACECA4B816AEA503
  %i.ev = fadd nnan x86_fp80 %i.eu, f0x3FFCE15F901596F57AF2
  %i.ew = fmul x86_fp80 %i.eb, %i.et
  %i.ex = fmul x86_fp80 %i.eb, %i.ev
  %i.ey = fadd x86_fp80 %i.ew, f0x3FFEC3164F355FF91DB3
  %i.ez = fadd x86_fp80 %i.ex, f0x3FFFAEC34BF35CB3767D
  %i.fa = fmul x86_fp80 %i.eb, %i.ey
  %i.fb = fadd x86_fp80 %i.fa, 1.000000e+00
  %i.fc = fmul x86_fp80 %i.ea, %i.ez
  %i.fd = fadd x86_fp80 %i.fc, %i.fb
  %i.fe = fdiv x86_fp80 %i.er, %i.fd
  %i.ff = fmul nnan x86_fp80 %i.cj, f0x3FFEF0A0F00000000000
  %i.fg = fmul x86_fp80 %i.cj, %i.fe
  %i.fh = fadd x86_fp80 %i.ff, %i.fg
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.fi = fcmp olt x86_fp80 %i.cj, 1.800000e+01
  br i1 %i.fi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fj = fadd x86_fp80 %i.cj, -6.000000e+00      ; 4 uses
  %i.fk = fmul x86_fp80 %i.fj, %i.fj              ; 12 uses
  %i.fl = fmul nnan x86_fp80 %i.fk, f0x3FC9E4682BABBE687D8E
  %i.fm = fadd nnan x86_fp80 %i.fl, f0x3FE39EF2638C5EEA32B6
  %i.fn = fmul nnan x86_fp80 %i.fk, f0x3FD1FD37DF7B37644040
  %i.fo = fsub nnan x86_fp80 f0x3FE9F16DDB2F18A41A47, %i.fn
  %i.fp = fmul x86_fp80 %i.fk, %i.fm
  %i.fq = fmul x86_fp80 %i.fk, %i.fo
  %i.fr = fadd x86_fp80 %i.fp, f0x3FEEFB075AF45F238763
  %i.fs = fadd x86_fp80 %i.fq, f0x3FF2DB8EB62C659500A9
  %i.ft = fmul x86_fp80 %i.fk, %i.fr
  %i.fu = fmul x86_fp80 %i.fk, %i.fs
  %i.fv = fadd x86_fp80 %i.ft, f0x3FF58A732A2B4EEBB2D3
  %i.fw = fadd x86_fp80 %i.fu, f0xBFF5940C36B57EF228CD
  %i.fx = fmul x86_fp80 %i.fk, %i.fv
  %i.fy = fadd x86_fp80 %i.fx, f0xBFF98928D3A3A6571085
  %i.fz = fmul x86_fp80 %i.fj, %i.fw
  %i.ga = fadd x86_fp80 %i.fz, %i.fy
  %i.gb = fmul nnan x86_fp80 %i.fk, f0x3FE9978734C8A3A40B70
  %i.gc = fadd nnan x86_fp80 %i.gb, f0x3FF4FCB5BCBC764E34EB
  %i.gd = fmul nnan x86_fp80 %i.fk, f0x3FEFE6F7D7CD59D6CB85
  %i.ge = fadd nnan x86_fp80 %i.gd, f0x3FF983AEE5D67CC55C4F
  %i.gf = fmul x86_fp80 %i.fk, %i.gc
  %i.gg = fmul x86_fp80 %i.fk, %i.ge
  %i.gh = fadd x86_fp80 %i.gf, f0x3FFC8D77AEC518439BF1
  %i.gi = fadd x86_fp80 %i.gg, f0x3FFE9767E9DE2E8EE633
  %i.gj = fmul x86_fp80 %i.fk, %i.gh
  %i.gk = fadd x86_fp80 %i.gj, 1.000000e+00
  %i.gl = fmul x86_fp80 %i.fj, %i.gi
  %i.gm = fadd x86_fp80 %i.gl, %i.gk
  %i.gn = fdiv x86_fp80 %i.ga, %i.gm
  %i.go = fmul nnan x86_fp80 %i.cj, f0x3FFEFBCF100000000000
  %i.gp = fmul x86_fp80 %i.cj, %i.gn
  %i.gq = fadd x86_fp80 %i.go, %i.gp
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.gr = fcmp olt x86_fp80 %i.cj, 4.400000e+01
  br i1 %i.gr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.gs = fadd x86_fp80 %i.cj, -1.800000e+01
  store x86_fp80 %i.gs, ptr %i.a, align 16, !tbaa !182
  %i.gt = call noundef x86_fp80 @_ZN5boost4math5tools19evaluate_polynomialILm8EeeEET1_RAT__KT0_RKS3_(ptr noundef nonnull align 16 dereferenceable(128) @_ZZN5boost4math6detail11erf_inv_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_RKSB_SD_RKT0_PKSt17integral_constantIiLi64EEE1P_4, ptr noundef nonnull align 16 dereferenceable(16) %i.a) #41
  %i.gu = call noundef x86_fp80 @_ZN5boost4math5tools19evaluate_polynomialILm7EeeEET1_RAT__KT0_RKS3_(ptr noundef nonnull align 16 dereferenceable(112) @_ZZN5boost4math6detail11erf_inv_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_RKSB_SD_RKT0_PKSt17integral_constantIiLi64EEE1Q_4, ptr noundef nonnull align 16 dereferenceable(16) %i.a) #41
  %i.gv = fdiv x86_fp80 %i.gt, %i.gu
  %i.gw = fmul nnan x86_fp80 %i.cj, f0x3FFEFF44F00000000000
  %i.gx = fmul x86_fp80 %i.cj, %i.gv
  %i.gy = fadd x86_fp80 %i.gw, %i.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.gz = fadd x86_fp80 %i.cj, -4.400000e+01
  store x86_fp80 %i.gz, ptr %i.b, align 16, !tbaa !182
  %i.ha = call noundef x86_fp80 @_ZN5boost4math5tools19evaluate_polynomialILm8EeeEET1_RAT__KT0_RKS3_(ptr noundef nonnull align 16 dereferenceable(128) @_ZZN5boost4math6detail11erf_inv_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_RKSB_SD_RKT0_PKSt17integral_constantIiLi64EEE1P_5, ptr noundef nonnull align 16 dereferenceable(16) %i.b) #41
  %i.hb = call noundef x86_fp80 @_ZN5boost4math5tools19evaluate_polynomialILm7EeeEET1_RAT__KT0_RKS3_(ptr noundef nonnull align 16 dereferenceable(112) @_ZZN5boost4math6detail11erf_inv_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_RKSB_SD_RKT0_PKSt17integral_constantIiLi64EEE1Q_5, ptr noundef nonnull align 16 dereferenceable(16) %i.b) #41
  %i.hc = fdiv x86_fp80 %i.ha, %i.hb
  %i.hd = fmul x86_fp80 %i.cj, f0x3FFEFFD9900000000000
  %i.he = fmul x86_fp80 %i.cj, %i.hc
  %i.hf = fadd x86_fp80 %i.hd, %i.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.j, %bb.m, %bb.l, %bb.h, %bb.d, %bb.b
  %.1 = phi x86_fp80 [ %i.aq, %bb.b ], [ %i.cg, %bb.d ], [ %i.dy, %bb.f ], [ %i.fh, %bb.h ], [ %i.gq, %bb.j ], [ %i.gy, %bb.l ], [ %i.hf, %bb.m ]
  ret x86_fp80 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math5tools22newton_raphson_iterateINS0_6detail17temme_root_finderIeEEeEET0_T_S6_S6_S6_iRm(ptr noundef byval(%"struct.boost::math::detail::temme_root_finder") align 16 %0, x86_fp80 noundef %1, x86_fp80 noundef %2, x86_fp80 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 2 uses
  %i.b = alloca x86_fp80, align 16                ; 2 uses
  store x86_fp80 %2, ptr %i.b, align 16, !tbaa !182
  %i.c = fcmp ogt x86_fp80 %2, %3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @_ZZN5boost4math5tools22newton_raphson_iterateINS0_6detail17temme_root_finderIeEEeEET0_T_S6_S6_S6_iRmE8function, align 8, !tbaa !893
  call void @_ZN5boost4math8policies6detail11raise_errorINS0_16evaluation_errorEeEEvPKcS6_RKT0_(ptr noundef %i.d, ptr noundef nonnull @.str.346, ptr noundef nonnull align 16 dereferenceable(16) %i.b)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.e = sub nsw i32 1, %4
  %i.f = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.e) #41
  %i.g = fpext double %i.f to x86_fp80
  %i.h = load i64, ptr %5, align 8, !tbaa !260    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load x86_fp80, ptr %i.i, align 16, !tbaa !9958, !noalias !9960 ; 5 uses
  %i.k = load x86_fp80, ptr %0, align 16, !tbaa !9963, !noalias !9960 ; 3 uses
  %i.l = fsub x86_fp80 1.000000e+00, %1           ; 2 uses
  %i.m = tail call noundef x86_fp80 @logl(x86_fp80 noundef %1) #41, !noalias !9960
  %i.n = tail call noundef x86_fp80 @logl(x86_fp80 noundef %i.l) #41, !noalias !9960
  %i.o = fmul x86_fp80 %i.j, %i.n
  %i.p = fadd x86_fp80 %i.m, %i.o
  %i.q = fadd x86_fp80 %i.k, %i.p                 ; 2 uses
  %i.r = add i64 %i.h, -1                         ; 2 uses
  %i.s = fcmp oeq x86_fp80 %i.q, 0.000000e+00
  br i1 %i.s, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.t = fdiv x86_fp80 1.000000e+00, %1
  %i.u = fdiv x86_fp80 %i.j, %i.l
  %i.v = fsub x86_fp80 %i.t, %i.u
  br label %.lr.ph

bb.d:                                             ; preds = %bb.q
  %i.w = fsub x86_fp80 1.000000e+00, %.173        ; 2 uses
  %i.x = tail call noundef x86_fp80 @logl(x86_fp80 noundef %.173) #41, !noalias !9960
  %i.y = tail call noundef x86_fp80 @logl(x86_fp80 noundef %i.w) #41, !noalias !9960
  %i.z = fmul x86_fp80 %i.j, %i.y
  %i.aa = fadd x86_fp80 %i.x, %i.z
  %i.ab = fadd x86_fp80 %i.k, %i.aa               ; 2 uses
  %i.ac = fdiv x86_fp80 1.000000e+00, %.173
  %i.ad = fdiv x86_fp80 %i.j, %i.w
  %i.ae = fsub x86_fp80 %i.ac, %i.ad
  %i.af = add i64 %i.ah, -1                       ; 2 uses
  %i.ag = fcmp oeq x86_fp80 %i.ab, 0.000000e+00
  br i1 %i.ag, label %.critedge, label %.lr.ph, !llvm.loop !9964

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.ah = phi i64 [ %i.af, %bb.d ], [ %i.r, %.lr.ph.preheader ] ; 5 uses
  %i.ai = phi x86_fp80 [ %i.ae, %bb.d ], [ %i.v, %.lr.ph.preheader ] ; 2 uses
  %i.aj = phi x86_fp80 [ %i.ab, %bb.d ], [ %i.q, %.lr.ph.preheader ] ; 5 uses
  %.01391 = phi x86_fp80 [ %.1, %bb.d ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.01690 = phi x86_fp80 [ %.117, %bb.d ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.01889 = phi x86_fp80 [ %.119, %bb.d ], [ f0x7FFEFFFFFFFFFFFFFFFF, %.lr.ph.preheader ]
  %.06788 = phi x86_fp80 [ %.168, %bb.d ], [ %3, %.lr.ph.preheader ] ; 8 uses
  %.06887 = phi x86_fp80 [ %i.aj, %bb.d ], [ 0.000000e+00, %.lr.ph.preheader ] ; 2 uses
  %.07086 = phi x86_fp80 [ %.3, %bb.d ], [ f0x7FFEFFFFFFFFFFFFFFFF, %.lr.ph.preheader ] ; 2 uses
  %.val7685 = phi x86_fp80 [ %.173, %bb.d ], [ %1, %.lr.ph.preheader ] ; 12 uses
  %.sroa.057.val7984 = phi x86_fp80 [ %.sroa.speculate.load.false77, %bb.d ], [ %2, %.lr.ph.preheader ] ; 9 uses
  %i.ak = fcmp oeq x86_fp80 %i.ai, 0.000000e+00
  br i1 %i.ak, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.al = fcmp oeq x86_fp80 %.06887, 0.000000e+00
  br i1 %i.al, label %bb.f, label %_ZN5boost4math5tools6detail22handle_zero_derivativeINS0_6detail17temme_root_finderIeEEeEEvT_RT0_RKS8_S9_S9_S9_SB_SB_.exit

bb.f:                                             ; preds = %bb.e
  %i.am = fcmp oeq x86_fp80 %.val7685, %.sroa.057.val7984
  %storemerge.i = select i1 %i.am, x86_fp80 %.06788, x86_fp80 %.sroa.057.val7984 ; 3 uses
  %i.an = fsub x86_fp80 1.000000e+00, %storemerge.i
  %i.ao = tail call noundef x86_fp80 @logl(x86_fp80 noundef %storemerge.i) #41, !noalias !9965
  %i.ap = tail call noundef x86_fp80 @logl(x86_fp80 noundef %i.an) #41, !noalias !9965
  %i.aq = fmul x86_fp80 %i.j, %i.ap
  %i.ar = fadd x86_fp80 %i.ao, %i.aq
  %i.as = fadd x86_fp80 %i.k, %i.ar
  %i.at = fsub x86_fp80 %storemerge.i, %.val7685
  br label %_ZN5boost4math5tools6detail22handle_zero_derivativeINS0_6detail17temme_root_finderIeEEeEEvT_RT0_RKS8_S9_S9_S9_SB_SB_.exit

_ZN5boost4math5tools6detail22handle_zero_derivativeINS0_6detail17temme_root_finderIeEEeEEvT_RT0_RKS8_S9_S9_S9_SB_SB_.exit: ; preds = %bb.e, %bb.f
  %.4 = phi x86_fp80 [ %i.at, %bb.f ], [ %.07086, %bb.e ]
  %i.au = phi x86_fp80 [ %i.as, %bb.f ], [ %.06887, %bb.e ] ; 2 uses
  %i.av = fcmp oeq x86_fp80 %i.au, 0.000000e+00
  %i.aw = bitcast x86_fp80 %i.au to i80
  %.not.i.i = icmp sgt i80 %i.aw, -1
  %i.ax = select i1 %.not.i.i, i32 1, i32 -1
  %i.ay = select i1 %i.av, i32 0, i32 %i.ax       ; 2 uses
  %i.az = bitcast x86_fp80 %i.aj to i80
  %i.ba = sub nsw i32 0, %i.ay
  %.not.i28.i73 = icmp slt i80 %i.az, 0
  %i.bb = select i1 %.not.i28.i73, i32 %i.ba, i32 %i.ay
  %i.bc = icmp slt i32 %i.bb, 0
  %i.bd = fcmp olt x86_fp80 %.4, 0.000000e+00
  %i.be = xor i1 %i.bd, %i.bc
  %i.bf = select i1 %i.be, x86_fp80 %.06788, x86_fp80 %.sroa.057.val7984
  %i.bg = fsub x86_fp80 %.val7685, %i.bf
  %i.bh = fmul x86_fp80 %i.bg, 5.000000e-01
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.bi = fdiv x86_fp80 %i.aj, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost4math5tools6detail22handle_zero_derivativeINS0_6detail17temme_root_finderIeEEeEEvT_RT0_RKS8_S9_S9_S9_SB_SB_.exit
  %.169 = phi x86_fp80 [ %i.bh, %_ZN5boost4math5tools6detail22handle_zero_derivativeINS0_6detail17temme_root_finderIeEEeEEvT_RT0_RKS8_S9_S9_S9_SB_SB_.exit ], [ %i.bi, %bb.g ] ; 3 uses
  %i.bj = fmul x86_fp80 %.169, 2.000000e+00
  %i.bk = tail call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.bj)
  %i.bl = tail call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %.01889)
  %i.bm = fcmp ogt x86_fp80 %i.bk, %i.bl
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bn = fcmp ogt x86_fp80 %.169, 0.000000e+00
  %.in.v = select i1 %i.bn, x86_fp80 %.sroa.057.val7984, x86_fp80 %.06788
  %.in = fsub x86_fp80 %.val7685, %.in.v
  %i.bo = fmul x86_fp80 %.in, 5.000000e-01        ; 2 uses
  %i.bp = fmul x86_fp80 %i.bo, 3.000000e+00
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2 = phi x86_fp80 [ %i.bo, %bb.i ], [ %.169, %bb.h ] ; 2 uses
  %.119 = phi x86_fp80 [ %i.bp, %bb.i ], [ %.07086, %bb.h ]
  %i.bq = fsub x86_fp80 %.val7685, %.2            ; 3 uses
  %i.br = fcmp ugt x86_fp80 %i.bq, %.sroa.057.val7984
  br i1 %i.br, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = fsub x86_fp80 %.val7685, %.sroa.057.val7984
  %i.bt = fmul x86_fp80 %i.bs, 5.000000e-01       ; 2 uses
  %i.bu = fsub x86_fp80 %.val7685, %i.bt          ; 4 uses
  %i.bv = fcmp oeq x86_fp80 %i.bu, %.sroa.057.val7984
  %i.bw = fcmp oeq x86_fp80 %i.bu, %.06788
  %or.cond = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %or.cond, label %.critedge, label %6

bb.l:                                             ; preds = %bb.j
  %i.bx = fcmp ult x86_fp80 %i.bq, %.06788
  br i1 %i.bx, label %6, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = fsub x86_fp80 %.val7685, %.06788
  %i.bz = fmul x86_fp80 %i.by, 5.000000e-01       ; 2 uses
  %i.ca = fsub x86_fp80 %.val7685, %i.bz          ; 4 uses
  %i.cb = fcmp oeq x86_fp80 %i.ca, %.sroa.057.val7984
  %i.cc = fcmp oeq x86_fp80 %i.ca, %.06788
  %or.cond30 = select i1 %i.cb, i1 true, i1 %i.cc
  br i1 %or.cond30, label %.critedge, label %6

6:                                                ; preds = %bb.m, %bb.k, %bb.l
  %.173 = phi x86_fp80 [ %i.bq, %bb.l ], [ %i.ca, %bb.m ], [ %i.bu, %bb.k ] ; 8 uses
  %.3 = phi x86_fp80 [ %.2, %bb.l ], [ %i.bz, %bb.m ], [ %i.bt, %bb.k ] ; 3 uses
  %7 = fcmp ogt x86_fp80 %.3, 0.000000e+00
  br i1 %7, label %bb.n, label %8

8:                                                ; preds = %6
  br label %bb.n

bb.n:                                             ; preds = %6, %8
  %.sroa.speculate.load.false77 = phi x86_fp80 [ %.val7685, %8 ], [ %.sroa.057.val7984, %6 ]
  %.168 = phi x86_fp80 [ %.06788, %8 ], [ %.val7685, %6 ]
  %.117 = phi x86_fp80 [ %.01690, %8 ], [ %i.aj, %6 ] ; 2 uses
  %.1 = phi x86_fp80 [ %i.aj, %8 ], [ %.01391, %6 ] ; 2 uses
  %i.cd = fmul x86_fp80 %.117, %.1
  %i.ce = fcmp ogt x86_fp80 %i.cd, 0.000000e+00
  br i1 %i.ce, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store x86_fp80 %.val7685, ptr %i.a, align 16
  %i.cf = load ptr, ptr @_ZZN5boost4math5tools22newton_raphson_iterateINS0_6detail17temme_root_finderIeEEeEET0_T_S6_S6_S6_iRmE8function, align 8, !tbaa !893
  call void @_ZN5boost4math8policies6detail11raise_errorINS0_16evaluation_errorEeEEvPKcS6_RKT0_(ptr noundef %i.cf, ptr noundef nonnull @.str.347, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = fmul x86_fp80 %.173, %i.g
  %i.ch = tail call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.cg)
  %i.ci = tail call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %.3)
  %i.cj = fcmp olt x86_fp80 %i.ch, %i.ci
  br i1 %i.cj, label %bb.d, label %..critedge_crit_edge114, !llvm.loop !9964

..critedge_crit_edge114:                          ; preds = %bb.q
  br label %.critedge, !llvm.loop !9964

.critedge:                                        ; preds = %bb.d, %bb.k, %bb.m, %bb.p, %..critedge_crit_edge114, %bb.c
  %.lcssa = phi i64 [ %i.r, %bb.c ], [ %i.ah, %..critedge_crit_edge114 ], [ 0, %bb.p ], [ %i.ah, %bb.m ], [ %i.ah, %bb.k ], [ %i.af, %bb.d ]
  %.272 = phi x86_fp80 [ %1, %bb.c ], [ %.173, %..critedge_crit_edge114 ], [ %.173, %bb.p ], [ %i.ca, %bb.m ], [ %i.bu, %bb.k ], [ %.173, %bb.d ]
  %i.ck = sub i64 %i.h, %.lcssa
  store i64 %i.ck, ptr %5, align 8, !tbaa !260
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %.critedge, %bb.b
  %.115 = phi x86_fp80 [ 0.000000e+00, %bb.b ], [ %.272, %.critedge ], [ 0.000000e+00, %bb.o ]
  ret x86_fp80 %.115
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #34

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6detail15gamma_q_inv_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_RKT0_(x86_fp80 noundef %0, x86_fp80 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  %3 = alloca %"struct.boost::math::detail::gamma_p_inverse_func", align 16 ; 6 uses
  %i.b = alloca x86_fp80, align 16                ; 2 uses
  %i.c = alloca x86_fp80, align 16                ; 2 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  store x86_fp80 %0, ptr %i.b, align 16, !tbaa !182
  store x86_fp80 %1, ptr %i.c, align 16, !tbaa !182
  %i.f = fcmp ugt x86_fp80 %0, 0.000000e+00
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @_ZZN5boost4math6detail15gamma_q_inv_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_RKT0_E8function, align 8, !tbaa !893
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_erroreEEvPKcS6_RKT0_(ptr noundef %i.g, ptr noundef nonnull @.str.349, ptr noundef nonnull align 16 dereferenceable(16) %i.b)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = fcmp olt x86_fp80 %1, 0.000000e+00
  %i.i = fcmp ogt x86_fp80 %1, 1.000000e+00
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @_ZZN5boost4math6detail15gamma_q_inv_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_RKT0_E8function, align 8, !tbaa !893
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_erroreEEvPKcS6_RKT0_(ptr noundef %i.j, ptr noundef nonnull @.str.350, ptr noundef nonnull align 16 dereferenceable(16) %i.c)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.k = fcmp oeq x86_fp80 %1, 0.000000e+00
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @_ZZN5boost4math6detail15gamma_q_inv_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_RKT0_E8function, align 8, !tbaa !893
  tail call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_erroreEEvPKcS6_(ptr noundef %i.l, ptr noundef nonnull @.str.251)
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.m = fcmp oeq x86_fp80 %1, 1.000000e+00
  br i1 %i.m, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.n = fsub x86_fp80 1.000000e+00, %1           ; 2 uses
  %i.o = call noundef x86_fp80 @_ZN5boost4math6detail18find_inverse_gammaIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_Pb(x86_fp80 noundef %0, x86_fp80 noundef %i.n, x86_fp80 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %i.d) ; 2 uses
  %.inv = fcmp ole x86_fp80 %i.o, f0x00018000000000000000
  %.022 = select i1 %.inv, x86_fp80 f0x00018000000000000000, x86_fp80 %i.o ; 2 uses
  %i.p = fcmp olt x86_fp80 %0, 1.250000e-01
  br i1 %i.p, label %bb.i, label %_ZN5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEC2Eeeb.exit

bb.i:                                             ; preds = %bb.h
  %i.q = call noundef x86_fp80 @_ZN5boost4math18gamma_p_derivativeIeeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_RKT1_(x86_fp80 noundef %0, x86_fp80 noundef %.022, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.r = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.q)
  %sqrt = call x86_fp80 @llvm.sqrt.f80(x86_fp80 f0x3FC08000000000000000)
  %i.s = fdiv x86_fp80 1.000000e+00, %sqrt
  %i.t = fcmp ogt x86_fp80 %i.r, %i.s
  br i1 %i.t, label %bb.j, label %_ZN5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEC2Eeeb.exit

bb.j:                                             ; preds = %bb.i
  br label %_ZN5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEC2Eeeb.exit

_ZN5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEC2Eeeb.exit: ; preds = %bb.j, %bb.i, %bb.h
  %.1 = phi i32 [ 64, %bb.j ], [ 31, %bb.i ], [ 31, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  store i64 200, ptr %i.e, align 8, !tbaa !260
  %i.u = fcmp ule x86_fp80 %1, f0x3FFEE666666666666800 ; 2 uses
  %.sroa.230.0 = select i1 %i.u, x86_fp80 %1, x86_fp80 %i.n
  %.sroa.431.0 = zext i1 %i.u to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store x86_fp80 %0, ptr %3, align 16
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store x86_fp80 %.sroa.230.0, ptr %.sroa.230.0..sroa_idx, align 16
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 %.sroa.431.0, ptr %.sroa.431.0..sroa_idx, align 16
  %i.v = call noundef x86_fp80 @_ZN5boost4math5tools6detail24second_order_root_finderINS2_11halley_stepENS0_6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS7_13promote_floatILb0EEENS7_14promote_doubleILb0EEENS7_14default_policyESD_SD_SD_SD_SD_SD_SD_SD_SD_SD_EEEEeEET1_T0_SG_SG_SG_iRm(ptr noundef nonnull byval(%"struct.boost::math::detail::gamma_p_inverse_func") align 16 %3, x86_fp80 noundef %.022, x86_fp80 noundef f0x00018000000000000000, x86_fp80 noundef f0x7FFEFFFFFFFFFFFFFFFF, i32 noundef %.1, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.w = load i64, ptr %i.e, align 8, !tbaa !260  ; 2 uses
  %.not.i = icmp ult i64 %i.w, 200
  br i1 %.not.i, label %_ZN5boost4math8policies21check_root_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEC2Eeeb.exit
  %i.x = load ptr, ptr @_ZZN5boost4math6detail15gamma_q_inv_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_RKT0_E8function, align 8, !tbaa !893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.y = uitofp i64 %i.w to double
  %i.z = fpext double %i.y to x86_fp80
  store x86_fp80 %i.z, ptr %i.a, align 16, !tbaa !182
  call void @_ZN5boost4math8policies6detail11raise_errorINS0_16evaluation_errorEeEEvPKcS6_RKT0_(ptr noundef %i.x, ptr noundef nonnull @.str.363, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5boost4math8policies21check_root_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit

_ZN5boost4math8policies21check_root_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit: ; preds = %_ZN5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEC2Eeeb.exit, %bb.k
  %i.aa = fcmp oeq x86_fp80 %i.v, f0x00018000000000000000
  %.123 = select i1 %i.aa, x86_fp80 0.000000e+00, x86_fp80 %i.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %_ZN5boost4math8policies21check_root_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit, %bb.f, %bb.d, %bb.b
  %.021 = phi x86_fp80 [ +qnan, %bb.b ], [ +qnan, %bb.d ], [ +inf, %bb.f ], [ %.123, %_ZN5boost4math8policies21check_root_iterationsIeNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEvPKcmRKT0_.exit ], [ 0.000000e+00, %bb.g ]
  ret x86_fp80 %.021
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6detail18find_inverse_gammaIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_Pb(x86_fp80 noundef %0, x86_fp80 noundef %1, x86_fp80 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %6 = alloca %"struct.boost::math::lanczos::lanczos17m64", align 1 ; 3 uses
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  %i.b = alloca x86_fp80, align 16                ; 4 uses
  %i.c = alloca x86_fp80, align 16                ; 4 uses
  %7 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %8 = alloca %"struct.boost::math::lanczos::lanczos17m64", align 1 ; 3 uses
  %9 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %10 = alloca %"struct.boost::math::lanczos::lanczos17m64", align 1 ; 3 uses
  %11 = alloca %"struct.boost::math::policies::policy", align 1 ; 3 uses
  %12 = alloca %"struct.boost::math::lanczos::lanczos17m64", align 1 ; 3 uses
  store i8 0, ptr %4, align 1, !tbaa !259
  %i.d = fcmp oeq x86_fp80 %0, 1.000000e+00
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef x86_fp80 @logl(x86_fp80 noundef %2) #41
  %i.f = fneg x86_fp80 %i.e
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %i.g = fcmp olt x86_fp80 %0, 1.000000e+00
  br i1 %i.g, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.h = call noundef x86_fp80 @_ZN5boost4math6detail9gamma_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EENS0_7lanczos12lanczos17m64EEET_SD_RKT0_RKT1_(x86_fp80 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12) ; 3 uses
  %i.i = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.h)
  %i.j = fcmp ogt x86_fp80 %i.i, f0x7FFEFFFFFFFFFFFFFFFF
  br i1 %i.j, label %bb.e, label %_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_erroreEEvPKcS6_(ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit

_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  %i.k = fmul x86_fp80 %2, %i.h                   ; 11 uses
  %i.l = fcmp ogt x86_fp80 %i.k, f0x3FFE9999999999999800
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit
  %i.m = fcmp oge x86_fp80 %i.k, f0x3FFDE666666666666800
  %i.n = fcmp oge x86_fp80 %0, f0x3FFD9999999999999800 ; 2 uses
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %_ZN5boost4math6tgammaIeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeESC_SD_.exit
  %i.o = fmul x86_fp80 %2, %i.k
  %i.p = fcmp ogt x86_fp80 %i.o, f0x3FE4ABCC77118461D000
  %i.q = fcmp ogt x86_fp80 %2, f0x3FEEA7C5AC471B478800
  %or.cond3 = and i1 %i.q, %i.p
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = fmul x86_fp80 %1, %i.h
  %i.s = fmul x86_fp80 %0, %i.r
  %i.t = fdiv x86_fp80 1.000000e+00, %0
  %i.u = call noundef x86_fp80 @powl(x86_fp80 noundef %i.s, x86_fp80 noundef %i.t) #41
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.v = fdiv x86_fp80 %2, %0
  %i.w = fsub x86_fp80 f0xBFFE93C467E37DB0C7A5, %i.v
  %i.x = call noundef x86_fp80 @expl(x86_fp80 noundef %i.w) #41
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0351 = phi x86_fp80 [ %i.u, %bb.h ], [ %i.x, %bb.i ] ; 2 uses
  %i.y = fadd x86_fp80 %0, 1.000000e+00
  %i.z = fdiv x86_fp80 %.0351, %i.y
  %i.aa = fsub x86_fp80 1.000000e+00, %i.z
  %i.ab = fdiv x86_fp80 %.0351, %i.aa
  br label %bb.av

bb.k:                                             ; preds = %bb.f
  %i.ac = fcmp olt x86_fp80 %0, f0x3FFD9999999999999800
  %i.ad = fcmp oge x86_fp80 %i.k, f0x3FFDB333333333333000
  %or.cond5 = and i1 %i.ac, %i.ad
end_hunk_1
begin_hunk_2_@_ZN5boost4math5tools6detail24bracket_root_towards_maxINS0_6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS6_13promote_floatILb0EEENS6_14promote_doubleILb0EEENS6_14default_policyESC_SC_SC_SC_SC_SC_SC_SC_SC_SC_EEEEeEET0_T_SF_RKSF_RSF_SJ_Rm:bb.a
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.m, i1 true) ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 64
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = lshr i32 %i.n, 5
  %i.q = tail call noundef x86_fp80 @ldexpl(x86_fp80 noundef 1.000000e+00, i32 noundef %i.p) #41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = phi x86_fp80 [ %i.q, %bb.d ], [ 2.000000e+00, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.s = load x86_fp80, ptr %2, align 16, !tbaa !182 ; 3 uses
  store x86_fp80 %i.s, ptr %i.c, align 16, !tbaa !182
  %i.t = load x86_fp80, ptr %3, align 16, !tbaa !182
  %i.u = tail call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.t)
  %i.v = tail call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.f)
  %i.w = fcmp olt x86_fp80 %i.u, %i.v
  %i.x = add i64 %i.d, -1
  store i64 %i.x, ptr %5, align 8, !tbaa !260
  %i.y = icmp samesign ugt i32 %i.n, 1024
  %i.z = select i1 %i.y, i32 8, i32 2
  %i.aa = uitofp nneg i32 %i.z to x86_fp80        ; 2 uses
  %i.ab = load x86_fp80, ptr %0, align 16         ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i8, ptr %i.ac, align 16, !range !287
  %i.ae = trunc nuw i8 %i.ad to i1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load x86_fp80, ptr %i.af, align 16      ; 2 uses
  br i1 %i.w, label %.lr.ph93, label %.lr.ph

.lr.ph93:                                         ; preds = %bb.e, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit
  %i.ah = phi x86_fp80 [ %i.ar, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit ], [ %i.s, %bb.e ] ; 2 uses
  %.092 = phi x86_fp80 [ %i.ap, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit ], [ %i.r, %bb.e ] ; 4 uses
  %.06491 = phi x86_fp80 [ %i.am, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit ], [ %1, %bb.e ] ; 3 uses
  %i.ai = fcmp olt x86_fp80 %i.ah, 0.000000e+00
  %i.aj = load x86_fp80, ptr %2, align 16, !tbaa !182
  %i.ak = fcmp uge x86_fp80 %i.aj, 0.000000e+00
  %i.al = xor i1 %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph93
  store x86_fp80 %.06491, ptr %3, align 16, !tbaa !182
  %i.am = fmul x86_fp80 %.06491, %.092            ; 3 uses
  %i.an = load x86_fp80, ptr %4, align 16, !tbaa !182 ; 2 uses
  %i.ao = fcmp ogt x86_fp80 %i.am, %i.an
  br i1 %i.ao, label %.critedge.sink.split, label %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit

_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit: ; preds = %bb.f
  %i.ap = fmul x86_fp80 %.092, %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41, !noalias !9991
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41, !noalias !9991
  %i.aq = call noundef x86_fp80 @_ZN5boost4math6detail20gamma_incomplete_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_bbRKT0_PSB_(x86_fp80 noundef %i.ab, x86_fp80 noundef %i.am, i1 noundef zeroext true, i1 noundef zeroext %i.ae, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull %i.b), !noalias !9991
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41, !noalias !9991
  %i.ar = fsub x86_fp80 %i.aq, %i.ag              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41, !noalias !9991
  store x86_fp80 %i.ar, ptr %i.c, align 16, !tbaa !182
  %i.as = load i64, ptr %5, align 8, !tbaa !260
  %i.at = add i64 %i.as, -1                       ; 2 uses
  store i64 %i.at, ptr %5, align 8, !tbaa !260
  %.not39 = icmp eq i64 %i.at, 0
  br i1 %.not39, label %.critedge.thread, label %.lr.ph93, !llvm.loop !9994

.lr.ph:                                           ; preds = %bb.e, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit44
  %i.au = phi x86_fp80 [ %i.be, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit44 ], [ %i.s, %bb.e ] ; 2 uses
  %.189 = phi x86_fp80 [ %i.bc, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit44 ], [ %i.r, %bb.e ] ; 4 uses
  %.16588 = phi x86_fp80 [ %i.az, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit44 ], [ %1, %bb.e ] ; 3 uses
  %i.av = fcmp olt x86_fp80 %i.au, 0.000000e+00
  %i.aw = load x86_fp80, ptr %2, align 16, !tbaa !182
  %i.ax = fcmp uge x86_fp80 %i.aw, 0.000000e+00
  %i.ay = xor i1 %i.av, %i.ax
  br i1 %i.ay, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph
  store x86_fp80 %.16588, ptr %3, align 16, !tbaa !182
  %i.az = fdiv x86_fp80 %.16588, %.189            ; 3 uses
  %i.ba = load x86_fp80, ptr %4, align 16, !tbaa !182 ; 2 uses
  %i.bb = fcmp ogt x86_fp80 %i.az, %i.ba
  br i1 %i.bb, label %.critedge.sink.split, label %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit44

_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit44: ; preds = %bb.g
  %i.bc = fmul x86_fp80 %.189, %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41, !noalias !9995
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41, !noalias !9995
  %i.bd = call noundef x86_fp80 @_ZN5boost4math6detail20gamma_incomplete_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_bbRKT0_PSB_(x86_fp80 noundef %i.ab, x86_fp80 noundef %i.az, i1 noundef zeroext true, i1 noundef zeroext %i.ae, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull %i.a), !noalias !9995
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41, !noalias !9995
  %i.be = fsub x86_fp80 %i.bd, %i.ag              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41, !noalias !9995
  store x86_fp80 %i.be, ptr %i.c, align 16, !tbaa !182
  %i.bf = load i64, ptr %5, align 8, !tbaa !260
  %i.bg = add i64 %i.bf, -1                       ; 2 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !260
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !9998

.critedge.sink.split:                             ; preds = %bb.g, %bb.f
  %.lcssa130.sink = phi x86_fp80 [ %i.ah, %bb.f ], [ %i.au, %bb.g ]
  %.266.ph.ph = phi x86_fp80 [ %i.an, %bb.f ], [ %i.ba, %bb.g ]
  %.2.ph.ph = phi x86_fp80 [ %.092, %bb.f ], [ %.189, %bb.g ]
  %i.bh = fneg x86_fp80 %.lcssa130.sink
  store x86_fp80 %i.bh, ptr %i.c, align 16, !tbaa !182
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.lr.ph93, %.critedge.sink.split
  %.266.ph = phi x86_fp80 [ %.266.ph.ph, %.critedge.sink.split ], [ %.06491, %.lr.ph93 ], [ %.16588, %.lr.ph ] ; 3 uses
  %.2.ph = phi x86_fp80 [ %.2.ph.ph, %.critedge.sink.split ], [ %.092, %.lr.ph93 ], [ %.189, %.lr.ph ]
  store x86_fp80 %.266.ph, ptr %4, align 16, !tbaa !182
  %i.bi = fcmp ogt x86_fp80 %.2.ph, 1.600000e+01
  br i1 %i.bi, label %bb.h, label %.critedge.thread

bb.h:                                             ; preds = %.critedge
  %i.bj = fsub x86_fp80 %1, %.266.ph
  %i.bk = call noundef x86_fp80 @_ZN5boost4math5tools6detail24bracket_root_towards_minINS0_6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS6_13promote_floatILb0EEENS6_14promote_doubleILb0EEENS6_14default_policyESC_SC_SC_SC_SC_SC_SC_SC_SC_SC_EEEEeEET0_T_SF_RKSF_RSF_SJ_Rm(ptr noundef nonnull byval(%"struct.boost::math::detail::gamma_p_inverse_func") align 16 %0, x86_fp80 noundef %.266.ph, ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.bl = fadd x86_fp80 %i.bj, %i.bk
  br label %bb.i

.critedge.thread:                                 ; preds = %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit44, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit, %.critedge
  %i.bm = load x86_fp80, ptr %4, align 16, !tbaa !182
  %i.bn = load x86_fp80, ptr %3, align 16, !tbaa !182
  %i.bo = fadd x86_fp80 %i.bm, %i.bn
  %i.bp = fmul x86_fp80 %i.bo, 5.000000e-01
  %i.bq = fsub x86_fp80 %1, %i.bp
  br label %bb.i

bb.i:                                             ; preds = %.critedge.thread, %bb.h
  %.034 = phi x86_fp80 [ %i.bl, %bb.h ], [ %i.bq, %.critedge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.135 = phi x86_fp80 [ %i.j, %bb.b ], [ %.034, %bb.i ]
  ret x86_fp80 %.135
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math14float_distanceIeeEENS0_5tools12promote_argsIT_T0_ffffE4typeERKS4_RKS5_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  %i.b = alloca x86_fp80, align 16                ; 4 uses
  %2 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %3 = alloca %"class.boost::math::policies::policy", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.c = load x86_fp80, ptr %0, align 16, !tbaa !182
  store x86_fp80 %i.c, ptr %i.a, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.d = load x86_fp80, ptr %1, align 16, !tbaa !182
  store x86_fp80 %i.d, ptr %i.b, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.e = call noundef x86_fp80 @_ZN5boost4math6detail18float_distance_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_S9_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3), !inline_history !9999
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret x86_fp80 %i.e
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math14float_distanceIeeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeERKS8_RKS9_RKT1_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  %i.b = alloca x86_fp80, align 16                ; 4 uses
  %3 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.c = load x86_fp80, ptr %0, align 16, !tbaa !182
  store x86_fp80 %i.c, ptr %i.a, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.d = load x86_fp80, ptr %1, align 16, !tbaa !182
  store x86_fp80 %i.d, ptr %i.b, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.e = call noundef x86_fp80 @_ZN5boost4math6detail18float_distance_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_S9_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret x86_fp80 %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6detail18float_distance_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_S9_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  %i.b = alloca x86_fp80, align 16                ; 4 uses
  %4 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca x86_fp80, align 16                ; 4 uses
  %i.j = alloca x86_fp80, align 16                ; 4 uses
  %5 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca x86_fp80, align 16                ; 4 uses
  %i.n = alloca x86_fp80, align 16                ; 4 uses
  %6 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %i.o = alloca x86_fp80, align 16                ; 4 uses
  %i.p = alloca x86_fp80, align 16                ; 4 uses
  %i.q = alloca x86_fp80, align 16                ; 4 uses
  %i.r = alloca x86_fp80, align 16                ; 4 uses
  %i.s = load x86_fp80, ptr %0, align 16, !tbaa !182 ; 11 uses
  %i.t = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.s) ; 2 uses
  %i.u = fcmp ueq x86_fp80 %i.t, +inf
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr @_ZZN5boost4math6detail18float_distance_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_S9_RKSt17integral_constantIbLb1EERKT0_E8function, align 8, !tbaa !893
  tail call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_erroreEEvPKcS6_RKT0_(ptr noundef %i.v, ptr noundef nonnull @.str.356, ptr noundef nonnull align 16 dereferenceable(16) %0)
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.w = load x86_fp80, ptr %1, align 16, !tbaa !182 ; 12 uses
  %i.x = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.w)
  %i.y = fcmp ueq x86_fp80 %i.x, +inf
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr @_ZZN5boost4math6detail18float_distance_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_S9_RKSt17integral_constantIbLb1EERKT0_E8function, align 8, !tbaa !893
  tail call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_erroreEEvPKcS6_RKT0_(ptr noundef %i.z, ptr noundef nonnull @.str.357, ptr noundef nonnull align 16 dereferenceable(16) %1)
  br label %bb.ag

bb.e:                                             ; preds = %bb.c
  %i.aa = fcmp ogt x86_fp80 %i.s, %i.w
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #41
  store x86_fp80 %i.w, ptr %i.m, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #41
  store x86_fp80 %i.s, ptr %i.n, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.ab = call noundef x86_fp80 @_ZN5boost4math6detail18float_distance_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_S9_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull align 16 dereferenceable(16) %i.n, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %3), !inline_history !9999
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #41
  %i.ac = fneg x86_fp80 %i.ab
  br label %bb.ag

bb.g:                                             ; preds = %bb.e
  %i.ad = fcmp oeq x86_fp80 %i.s, %i.w
  br i1 %i.ad, label %bb.ag, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = fcmp oeq x86_fp80 %i.s, 0.000000e+00
  br i1 %i.ae, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.af = fcmp olt x86_fp80 %i.w, 0.000000e+00
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.l)
  %i.ag = load i32, ptr %i.l, align 4
  %i.ah = and i32 %i.ag, 32832
  %.not.i.i = icmp eq i32 %i.ah, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ai = select i1 %.not.i.i, x86_fp80 -3.645200e-4951, x86_fp80 f0x80018000000000000000
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.k)
  %i.aj = load i32, ptr %i.k, align 4
  %i.ak = and i32 %i.aj, 32832
  %.not.i.i78 = icmp eq i32 %i.ak, 0
  %i.al = select i1 %.not.i.i78, x86_fp80 3.645200e-4951, x86_fp80 f0x00018000000000000000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = phi x86_fp80 [ %i.ai, %bb.j ], [ %i.al, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41
  store x86_fp80 %i.am, ptr %i.i, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #41
  store x86_fp80 %i.w, ptr %i.j, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.an = call noundef x86_fp80 @_ZN5boost4math6detail18float_distance_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_S9_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %3), !inline_history !9999
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  %i.ao = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.an)
  %i.ap = fadd x86_fp80 %i.ao, 1.000000e+00
  br label %bb.ag

bb.m:                                             ; preds = %bb.h
  %i.aq = fcmp oeq x86_fp80 %i.w, 0.000000e+00
  br i1 %i.aq, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #41
  %i.ar = fcmp olt x86_fp80 %i.s, 0.000000e+00
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.h)
  %i.as = load i32, ptr %i.h, align 4
  %i.at = and i32 %i.as, 32832
  %.not.i.i79 = icmp eq i32 %i.at, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.au = select i1 %.not.i.i79, x86_fp80 -3.645200e-4951, x86_fp80 f0x80018000000000000000
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.av = load i32, ptr %i.g, align 4
  %i.aw = and i32 %i.av, 32832
  %.not.i.i80 = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not.i.i80, x86_fp80 3.645200e-4951, x86_fp80 f0x00018000000000000000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ay = phi x86_fp80 [ %i.au, %bb.o ], [ %i.ax, %bb.p ]
  store x86_fp80 %i.ay, ptr %i.o, align 16, !tbaa !182
  %i.az = call noundef x86_fp80 @_ZN5boost4math14float_distanceIeeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeERKS8_RKS9_RKT1_(ptr noundef nonnull align 16 dereferenceable(16) %i.o, ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.ba = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.az)
  %i.bb = fadd x86_fp80 %i.ba, 1.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #41
  br label %bb.ag

bb.r:                                             ; preds = %bb.m
  %i.bc = bitcast x86_fp80 %i.s to i80
  %i.bd = bitcast x86_fp80 %i.w to i80
  %i.be = xor i80 %i.bd, %i.bc
  %.not = icmp sgt i80 %i.be, -1
  br i1 %.not, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #41
  %i.bf = fcmp olt x86_fp80 %i.w, 0.000000e+00
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.f)
  %i.bg = load i32, ptr %i.f, align 4
  %i.bh = and i32 %i.bg, 32832
  %.not.i.i82 = icmp eq i32 %i.bh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bi = select i1 %.not.i.i82, x86_fp80 -3.645200e-4951, x86_fp80 f0x80018000000000000000
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.bj = load i32, ptr %i.e, align 4
  %i.bk = and i32 %i.bj, 32832
  %.not.i.i83 = icmp eq i32 %i.bk, 0
  %i.bl = select i1 %.not.i.i83, x86_fp80 3.645200e-4951, x86_fp80 f0x00018000000000000000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bm = phi x86_fp80 [ %i.bi, %bb.t ], [ %i.bl, %bb.u ]
  store x86_fp80 %i.bm, ptr %i.p, align 16, !tbaa !182
  %i.bn = call noundef x86_fp80 @_ZN5boost4math14float_distanceIeeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeERKS8_RKS9_RKT1_(ptr noundef nonnull align 16 dereferenceable(16) %i.p, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.bo = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.bn)
  %i.bp = fadd x86_fp80 %i.bo, 2.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #41
  %i.bq = load x86_fp80, ptr %0, align 16, !tbaa !182
  %i.br = fcmp olt x86_fp80 %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.d)
  %i.bs = load i32, ptr %i.d, align 4
  %i.bt = and i32 %i.bs, 32832
  %.not.i.i84 = icmp eq i32 %i.bt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bu = select i1 %.not.i.i84, x86_fp80 -3.645200e-4951, x86_fp80 f0x80018000000000000000
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.bv = load i32, ptr %i.c, align 4
  %i.bw = and i32 %i.bv, 32832
  %.not.i.i85 = icmp eq i32 %i.bw, 0
  %i.bx = select i1 %.not.i.i85, x86_fp80 3.645200e-4951, x86_fp80 f0x00018000000000000000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.by = phi x86_fp80 [ %i.bu, %bb.w ], [ %i.bx, %bb.x ]
  store x86_fp80 %i.by, ptr %i.q, align 16, !tbaa !182
  %i.bz = call noundef x86_fp80 @_ZN5boost4math14float_distanceIeeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeERKS8_RKS9_RKT1_(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.ca = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.bz)
  %i.cb = fadd x86_fp80 %i.bp, %i.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #41
  br label %bb.ag

bb.z:                                             ; preds = %bb.r
  %i.cc = fcmp olt x86_fp80 %i.s, 0.000000e+00
  br i1 %i.cc, label %bb.aa, label %_ZN5boost4math10fpclassifyIeEEiT_.exit

bb.aa:                                            ; preds = %bb.z
  %i.cd = fneg x86_fp80 %i.w
  %i.ce = fneg x86_fp80 %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store x86_fp80 %i.cd, ptr %i.a, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store x86_fp80 %i.ce, ptr %i.b, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.cf = call noundef x86_fp80 @_ZN5boost4math6detail18float_distance_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_S9_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %3), !inline_history !9999
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.ag

_ZN5boost4math10fpclassifyIeEEiT_.exit:           ; preds = %bb.z
  %i.cg = fcmp uge x86_fp80 %i.t, f0x00018000000000000000
  %i.ch = tail call { x86_fp80, i32 } @llvm.frexp.f80.i32(x86_fp80 %i.s)
  %i.ci = extractvalue { x86_fp80, i32 } %i.ch, 1
  %i.cj = select i1 %i.cg, i32 %i.ci, i32 -16381  ; 3 uses
  %i.ck = tail call noundef x86_fp80 @ldexpl(x86_fp80 noundef 1.000000e+00, i32 noundef %i.cj) #41 ; 4 uses
  %i.cl = fcmp ogt x86_fp80 %i.w, %i.ck
  br i1 %i.cl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN5boost4math10fpclassifyIeEEiT_.exit
  %i.cm = tail call { x86_fp80, i32 } @llvm.frexp.f80.i32(x86_fp80 %i.w)
  %i.cn = extractvalue { x86_fp80, i32 } %i.cm, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #41
  %i.co = tail call noundef x86_fp80 @ldexpl(x86_fp80 noundef 5.000000e-01, i32 noundef %i.cn) #41
  store x86_fp80 %i.co, ptr %i.r, align 16, !tbaa !182
  %i.cp = call noundef x86_fp80 @_ZN5boost4math14float_distanceIeeEENS0_5tools12promote_argsIT_T0_ffffE4typeERKS4_RKS5_(ptr noundef nonnull align 16 dereferenceable(16) %i.r, ptr noundef nonnull align 16 dereferenceable(16) %1)
  %i.cq = xor i32 %i.cj, -1
  %i.cr = add i32 %i.cn, %i.cq
  %i.cs = sitofp i32 %i.cr to x86_fp80
  %i.ct = call noundef x86_fp80 @ldexpl(x86_fp80 noundef 1.000000e+00, i32 noundef 63) #41
  %i.cu = fmul x86_fp80 %i.ct, %i.cs
  %i.cv = fadd x86_fp80 %i.cp, %i.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #41
  %.pre = load x86_fp80, ptr %0, align 16, !tbaa !182
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN5boost4math10fpclassifyIeEEiT_.exit
  %i.cw = phi x86_fp80 [ %.pre, %bb.ab ], [ %i.s, %_ZN5boost4math10fpclassifyIeEEiT_.exit ] ; 7 uses
  %.072 = phi x86_fp80 [ %i.cv, %bb.ab ], [ 0.000000e+00, %_ZN5boost4math10fpclassifyIeEEiT_.exit ]
  %or.cond111 = fcmp ueq x86_fp80 %i.cw, 0.000000e+00
  br i1 %or.cond111, label %.select.unfold110_crit_edge, label %bb.ad

.select.unfold110_crit_edge:                      ; preds = %bb.ac
  %.pre116 = load x86_fp80, ptr %1, align 16, !tbaa !182
  br label %select.unfold110

bb.ad:                                            ; preds = %bb.ac
  %or.cond112 = call i1 @llvm.is.fpclass.f80(x86_fp80 %i.cw, /* (inf norm) */ i32 780)
  %.pre117 = load x86_fp80, ptr %1, align 16, !tbaa !182 ; 2 uses
  br i1 %or.cond112, label %select.unfold110, label %_ZN5boost4math10fpclassifyIeEEiT_.exit86

select.unfold110:                                 ; preds = %.select.unfold110_crit_edge, %bb.ad
  %i.cx = phi x86_fp80 [ %.pre116, %.select.unfold110_crit_edge ], [ %.pre117, %bb.ad ] ; 4 uses
  %i.cy = fsub x86_fp80 %i.cx, %i.cw
  %i.cz = fcmp olt x86_fp80 %i.cy, f0x00018000000000000000
  br i1 %i.cz, label %_ZN5boost4math10fpclassifyIeEEiT_.exit86, label %bb.ae

_ZN5boost4math10fpclassifyIeEEiT_.exit86:         ; preds = %bb.ad, %select.unfold110
  %i.da = phi x86_fp80 [ %i.cx, %select.unfold110 ], [ %.pre117, %bb.ad ]
  %i.db = call noundef x86_fp80 @ldexpl(x86_fp80 noundef %i.cw, i32 noundef 64) #41 ; 3 uses
  %i.dc = call noundef x86_fp80 @ldexpl(x86_fp80 noundef %i.da, i32 noundef 64) #41 ; 2 uses
  %i.dd = call noundef x86_fp80 @ldexpl(x86_fp80 noundef %i.ck, i32 noundef 64) #41 ; 2 uses
  %i.de = fcmp olt x86_fp80 %i.dc, %i.dd
  %i.df = select i1 %i.de, x86_fp80 %i.dc, x86_fp80 %i.dd ; 2 uses
  %i.dg = fneg x86_fp80 %i.df
  %i.dh = fsub x86_fp80 %i.db, %i.df              ; 3 uses
  %i.di = fsub x86_fp80 %i.dh, %i.db              ; 2 uses
  %i.dj = fsub x86_fp80 %i.dh, %i.di
  %i.dk = fsub x86_fp80 %i.db, %i.dj
  %i.dl = fsub x86_fp80 %i.dg, %i.di
  %i.dm = fadd x86_fp80 %i.dl, %i.dk
  br label %bb.af

bb.ae:                                            ; preds = %select.unfold110
  %i.dn = fcmp olt x86_fp80 %i.cx, %i.ck
  %.sroa.speculated93 = select i1 %i.dn, x86_fp80 %i.cx, x86_fp80 %i.ck ; 2 uses
  %i.do = fneg x86_fp80 %.sroa.speculated93
  %i.dp = fsub x86_fp80 %i.cw, %.sroa.speculated93 ; 3 uses
  %i.dq = fsub x86_fp80 %i.dp, %i.cw              ; 2 uses
  %i.dr = fsub x86_fp80 %i.dp, %i.dq
  %i.ds = fsub x86_fp80 %i.cw, %i.dr
  %i.dt = fsub x86_fp80 %i.do, %i.dq
  %i.du = fadd x86_fp80 %i.dt, %i.ds
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN5boost4math10fpclassifyIeEEiT_.exit86
  %.pn = phi i32 [ 0, %_ZN5boost4math10fpclassifyIeEEiT_.exit86 ], [ 64, %bb.ae ]
  %.074 = phi x86_fp80 [ %i.dh, %_ZN5boost4math10fpclassifyIeEEiT_.exit86 ], [ %i.dp, %bb.ae ] ; 3 uses
  %.073 = phi x86_fp80 [ %i.dm, %_ZN5boost4math10fpclassifyIeEEiT_.exit86 ], [ %i.du, %bb.ae ] ; 2 uses
  %.0109 = sub i32 %.pn, %i.cj                    ; 2 uses
  %i.dv = fcmp olt x86_fp80 %.074, 0.000000e+00   ; 2 uses
  %i.dw = fneg x86_fp80 %.074
  %i.dx = fneg x86_fp80 %.073
  %.175 = select i1 %i.dv, x86_fp80 %i.dw, x86_fp80 %.074
  %.1 = select i1 %i.dv, x86_fp80 %i.dx, x86_fp80 %.073
  %i.dy = call noundef x86_fp80 @ldexpl(x86_fp80 noundef %.175, i32 noundef %.0109) #41
  %i.dz = call noundef x86_fp80 @ldexpl(x86_fp80 noundef %.1, i32 noundef %.0109) #41
  %i.ea = fadd x86_fp80 %i.dy, %i.dz
  %i.eb = fadd x86_fp80 %.072, %i.ea
  br label %bb.ag

bb.ag:                                            ; preds = %bb.g, %bb.af, %bb.aa, %bb.y, %bb.q, %bb.l, %bb.f, %bb.d, %bb.b
  %.0 = phi x86_fp80 [ %i.ac, %bb.f ], [ +qnan, %bb.b ], [ %i.ap, %bb.l ], [ %i.bb, %bb.q ], [ %i.cb, %bb.y ], [ %i.cf, %bb.aa ], [ %i.eb, %bb.af ], [ +qnan, %bb.d ], [ 0.000000e+00, %bb.g ]
  ret x86_fp80 %.0
}

; Function Attrs: nounwind memory(argmem: write)
declare void @llvm.x86.sse.stmxcsr(ptr) #37

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6detail14float_next_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca x86_fp80, align 16                ; 4 uses
  %3 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = load x86_fp80, ptr %0, align 16, !tbaa !182 ; 6 uses
  %i.e = fcmp oeq x86_fp80 %i.d, 0.000000e+00
  br i1 %i.e, label %_ZN5boost4math10fpclassifyIeEEiT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp uno x86_fp80 %i.d, 0.000000e+00
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.d) ; 3 uses
  %i.h = fcmp oeq x86_fp80 %i.g, +inf
  br i1 %i.h, label %bb.d, label %_ZN5boost4math10fpclassifyIeEEiT_.exit.thread30

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = fcmp olt x86_fp80 %i.d, 0.000000e+00
  br i1 %i.i, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @_ZZN5boost4math6detail14float_next_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_RKSt17integral_constantIbLb1EERKT0_E8function, align 8, !tbaa !893
  tail call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_erroreEEvPKcS6_RKT0_(ptr noundef %i.j, ptr noundef nonnull @.str.359, ptr noundef nonnull align 16 dereferenceable(16) %0)
  br label %bb.p

_ZN5boost4math10fpclassifyIeEEiT_.exit.thread30:  ; preds = %bb.c
  %i.k = fcmp ult x86_fp80 %i.d, f0x7FFEFFFFFFFFFFFFFFFF
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5boost4math10fpclassifyIeEEiT_.exit.thread30
  %i.l = load ptr, ptr @_ZZN5boost4math6detail14float_next_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_RKSt17integral_constantIbLb1EERKT0_E8function, align 8, !tbaa !893
  tail call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_erroreEEvPKcS6_(ptr noundef %i.l, ptr noundef nonnull @.str.251)
  br label %bb.p

_ZN5boost4math10fpclassifyIeEEiT_.exit:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.m = load i32, ptr %i.c, align 4
  %i.n = and i32 %i.m, 32832
  %.not.i.i = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not.i.i, x86_fp80 3.645200e-4951, x86_fp80 f0x00018000000000000000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.g:                                             ; preds = %_ZN5boost4math10fpclassifyIeEEiT_.exit.thread30
  %i.p = fcmp uge x86_fp80 %i.g, f0x00018000000000000000
  br i1 %i.p, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.q = load atomic i8, ptr @_ZGVZN5boost4math6detail19get_min_shift_valueIeEET_vE3val acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.i, label %_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost4math6detail19get_min_shift_valueIeEET_vE3val) #41
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = tail call noundef x86_fp80 @ldexpl(x86_fp80 noundef f0x00018000000000000000, i32 noundef 65) #41
  store x86_fp80 %i.t, ptr @_ZZN5boost4math6detail19get_min_shift_valueIeEET_vE3val, align 16, !tbaa !182
  %i.u = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN5boost4math6detail19get_min_shift_valueIeEET_vE3val) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost4math6detail19get_min_shift_valueIeEET_vE3val) #41
  br label %_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit

_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.v = load x86_fp80, ptr @_ZZN5boost4math6detail19get_min_shift_valueIeEET_vE3val, align 16, !tbaa !182
  %i.w = fcmp olt x86_fp80 %i.g, %i.v
  %.pre = load x86_fp80, ptr %0, align 16, !tbaa !182 ; 3 uses
  br i1 %i.w, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit
  %i.x = fcmp une x86_fp80 %.pre, f0x80018000000000000000
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = tail call noundef x86_fp80 @ldexpl(x86_fp80 noundef %.pre, i32 noundef 128) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store x86_fp80 %i.y, ptr %i.b, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.z = call noundef x86_fp80 @_ZN5boost4math6detail14float_next_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %2), !inline_history !9980
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  %i.aa = call noundef x86_fp80 @ldexpl(x86_fp80 noundef %i.z, i32 noundef -128) #41
  br label %bb.p

bb.m:                                             ; preds = %bb.k, %_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit, %bb.g
  %i.ab = phi x86_fp80 [ f0x80018000000000000000, %bb.k ], [ %.pre, %_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit ], [ %i.d, %bb.g ] ; 2 uses
  %i.ac = tail call { x86_fp80, i32 } @llvm.frexp.f80.i32(x86_fp80 %i.ab) ; 2 uses
  %i.ad = extractvalue { x86_fp80, i32 } %i.ac, 1
  %i.ae = extractvalue { x86_fp80, i32 } %i.ac, 0
  %i.af = fcmp oeq x86_fp80 %i.ae, -5.000000e-01
  %i.ag = sext i1 %i.af to i32
  %.028 = add i32 %i.ad, -64
  %i.ah = add i32 %.028, %i.ag
  %i.ai = tail call noundef x86_fp80 @ldexpl(x86_fp80 noundef 1.000000e+00, i32 noundef %i.ah) #41 ; 2 uses
  %i.aj = fcmp oeq x86_fp80 %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.ak = load i32, ptr %i.a, align 4
  %i.al = and i32 %i.ak, 32832
  %.not.i.i26 = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not.i.i26, x86_fp80 3.645200e-4951, x86_fp80 f0x00018000000000000000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi x86_fp80 [ %i.am, %bb.n ], [ %i.ai, %bb.m ]
  %i.an = fadd x86_fp80 %i.ab, %.0
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.o, %bb.l, %_ZN5boost4math10fpclassifyIeEEiT_.exit, %bb.f, %bb.e
  %.022 = phi x86_fp80 [ %i.an, %bb.o ], [ +qnan, %bb.e ], [ +inf, %bb.f ], [ %i.o, %_ZN5boost4math10fpclassifyIeEEiT_.exit ], [ %i.aa, %bb.l ], [ f0xFFFEFFFFFFFFFFFFFFFF, %bb.d ]
  ret x86_fp80 %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6detail15float_prior_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca x86_fp80, align 16                ; 4 uses
  %3 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = load x86_fp80, ptr %0, align 16, !tbaa !182 ; 6 uses
  %i.e = fcmp oeq x86_fp80 %i.d, 0.000000e+00
  br i1 %i.e, label %_ZN5boost4math10fpclassifyIeEEiT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp uno x86_fp80 %i.d, 0.000000e+00
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.d) ; 3 uses
  %i.h = fcmp oeq x86_fp80 %i.g, +inf
  br i1 %i.h, label %bb.d, label %_ZN5boost4math10fpclassifyIeEEiT_.exit.thread31

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = fcmp ogt x86_fp80 %i.d, 0.000000e+00
  br i1 %i.i, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @_ZZN5boost4math6detail15float_prior_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_RKSt17integral_constantIbLb1EERKT0_E8function, align 8, !tbaa !893
  tail call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_erroreEEvPKcS6_RKT0_(ptr noundef %i.j, ptr noundef nonnull @.str.359, ptr noundef nonnull align 16 dereferenceable(16) %0)
  br label %bb.p

_ZN5boost4math10fpclassifyIeEEiT_.exit.thread31:  ; preds = %bb.c
  %i.k = fcmp ugt x86_fp80 %i.d, f0xFFFEFFFFFFFFFFFFFFFF
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5boost4math10fpclassifyIeEEiT_.exit.thread31
  %i.l = load ptr, ptr @_ZZN5boost4math6detail15float_prior_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_RKSt17integral_constantIbLb1EERKT0_E8function, align 8, !tbaa !893
  tail call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_erroreEEvPKcS6_(ptr noundef %i.l, ptr noundef nonnull @.str.251)
  br label %bb.p

_ZN5boost4math10fpclassifyIeEEiT_.exit:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.m = load i32, ptr %i.c, align 4
  %i.n = and i32 %i.m, 32832
  %.not.i.i = icmp eq i32 %i.n, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.o = select i1 %.not.i.i, x86_fp80 -3.645200e-4951, x86_fp80 f0x80018000000000000000
  br label %bb.p

bb.g:                                             ; preds = %_ZN5boost4math10fpclassifyIeEEiT_.exit.thread31
  %i.p = fcmp uge x86_fp80 %i.g, f0x00018000000000000000
  br i1 %i.p, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.q = load atomic i8, ptr @_ZGVZN5boost4math6detail19get_min_shift_valueIeEET_vE3val acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.i, label %_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost4math6detail19get_min_shift_valueIeEET_vE3val) #41
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = tail call noundef x86_fp80 @ldexpl(x86_fp80 noundef f0x00018000000000000000, i32 noundef 65) #41
  store x86_fp80 %i.t, ptr @_ZZN5boost4math6detail19get_min_shift_valueIeEET_vE3val, align 16, !tbaa !182
  %i.u = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN5boost4math6detail19get_min_shift_valueIeEET_vE3val) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost4math6detail19get_min_shift_valueIeEET_vE3val) #41
end_hunk_2
