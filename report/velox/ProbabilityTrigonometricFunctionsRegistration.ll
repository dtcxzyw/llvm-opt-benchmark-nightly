Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ProbabilityTrigonometricFunctionsRegistration?download=true
inline.NumInlined: 54762
inline.NumDeleted: 11385
loop-unroll.NumCompletelyUnrolled: 843
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 896
begin_hunk_0_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdddEEEJdddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_:bb.a
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit97.i.i.i.i.i.i.i.i.i.i95.i94.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit97.i.i.i.i.i.i.i.i.i.i95.i94.i: ; preds = %bb.xp, %bb.xo
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJdddEEEJdddEEEE7iterateIJNS1_16FlatVectorReaderIdEESI_SI_EEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_ENKUlSO_E_clIiEEDaSO_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.xq:                                            ; preds = %tailrecurse.i.i.i.i90.3.i.i.i.i.i.i.i.i.i.i91.i90.i
  %i.cfs = landingpad { ptr, i32 }
          cleanup
  %i.cft = load ptr, ptr %7, align 8, !tbaa !229
  %.not.i98.i.i.i.i.i.i.i.i.i.i92.i91.i = icmp eq ptr %i.cft, null
  br i1 %.not.i98.i.i.i.i.i.i.i.i.i.i92.i91.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit99.i.i.i.i.i.i.i.i.i.i93.i92.i, label %bb.xr

bb.xr:                                            ; preds = %bb.xq
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit99.i.i.i.i.i.i.i.i.i.i93.i92.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit99.i.i.i.i.i.i.i.i.i.i93.i92.i: ; preds = %bb.xr, %bb.xq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.xs

bb.xs:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit99.i.i.i.i.i.i.i.i.i.i93.i92.i, %bb.xn
  %.pn.i.i.i.i.i.i.i.i.i.i.i82.i81.i = phi { ptr, i32 } [ %i.cfs, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit99.i.i.i.i.i.i.i.i.i.i93.i92.i ], [ %i.cfq, %bb.xn ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.xt

bb.xt:                                            ; preds = %bb.xs, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit95.i.i.i.i.i.i.i.i.i.i77.i76.i
  %i.cfu = landingpad { ptr, i32 }
          catch ptr null
  %i.cfv = extractvalue { ptr, i32 } %i.cfu, 0
  call void @__clang_call_terminate(ptr %i.cfv) #45
  unreachable

bb.xu:                                            ; preds = %.loopexit112.i.i.i.i.i.i.i.i.i.i81.i80.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJdddEEEJdddEEEE7iterateIJNS1_16FlatVectorReaderIdEESI_SI_EEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_ENKUlSO_E_clIiEEDaSO_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit97.i.i.i.i.i.i.i.i.i.i95.i94.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit93.i.i.i.i.i.i.i.i.i.i79.i78.i, %_ZN8facebook5velox6StatusD2Ev.exit86.i.i.i.i.i.i.i.i.i.i98.i97.i
  %i.cfw = add i64 %.015126.i.i.i.i.i.i.i.i.i.i73.i72.i, -1
  %i.cfx = and i64 %i.cfw, %.015126.i.i.i.i.i.i.i.i.i.i73.i72.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i80.i79.i = icmp eq i64 %i.cfx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i80.i79.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdddEEEJdddEEEE7iterateIJNS3_16FlatVectorReaderIdEESK_SK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.xa, !llvm.loop !11013

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdddEEEJdddEEEE7iterateIJNS3_16FlatVectorReaderIdEESK_SK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJdddEEEJdddEEEE7iterateIJNS1_16FlatVectorReaderIdEESI_SI_EEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_ENKUlSO_E_clImEEDaSO_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122InverseBetaCDFFunctionINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJdddEEEJdddEEEE7iterateIJNS1_16FlatVectorReaderIdEESI_SI_EEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_ENKUlSO_E_clIiEEDaSO_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.we, %.lr.ph.i.i.i.i.i.i.i.i.i34.i33.i32
  %i.cfy = add nsw i32 %i.caq, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i.i.i36.i35.i34 = icmp sgt i32 %i.cfy, %i.bzv
  br i1 %.not33.i.i.i.i.i.i.i.i.i36.i35.i34, label %._crit_edge.i.i.i.i.i.i.i.i.i37.i36.i35, label %.lr.ph.i.i.i.i.i.i.i.i.i34.i33.i32, !llvm.loop !11014

bb.xv:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i37.i36.i35
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
  store double %0, ptr %i.a, align 8, !tbaa !82
  store double %1, ptr %i.b, align 8, !tbaa !82
  store double %2, ptr %i.c, align 8, !tbaa !82
  %i.e = fcmp ugt double %0, 0.000000e+00
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @_ZZN5boost4math9ibeta_invIddddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_T2_ffE4typeES8_S9_SA_PSB_RKT3_E8function, align 8, !tbaa !417
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef %i.f, ptr noundef nonnull @.str.336, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.g = fcmp ugt double %1, 0.000000e+00
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_ZZN5boost4math9ibeta_invIddddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_T2_ffE4typeES8_S9_SA_PSB_RKT3_E8function, align 8, !tbaa !417
  call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_(ptr noundef %i.h, ptr noundef nonnull @.str.337, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.i = fcmp olt double %2, 0.000000e+00
  %i.j = fcmp ogt double %2, 1.000000e+00
  %or.cond = or i1 %i.i, %i.j
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @_ZZN5boost4math9ibeta_invIddddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_T2_ffE4typeES8_S9_SA_PSB_RKT3_E8function, align 8, !tbaa !417
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
  %i.r = load x86_fp80, ptr %i.d, align 16, !tbaa !80 ; 2 uses
  %i.s = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.r)
  %i.t = fcmp ogt x86_fp80 %i.s, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.t, label %bb.i, label %_ZN5boost4math8policies22checked_narrowing_castIdNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEeEET_T1_PKc.exit10

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr @_ZZN5boost4math9ibeta_invIddddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_T2_ffE4typeES8_S9_SA_PSB_RKT3_E8function, align 8, !tbaa !417
  call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_errordEEvPKcS6_(ptr noundef %i.u, ptr noundef nonnull @.str.235)
  br label %_ZN5boost4math8policies22checked_narrowing_castIdNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEeEET_T1_PKc.exit10

_ZN5boost4math8policies22checked_narrowing_castIdNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEeEET_T1_PKc.exit10: ; preds = %bb.h, %bb.i
  %.0.i9 = fptrunc x86_fp80 %i.r to double
  store double %.0.i9, ptr %3, align 8, !tbaa !82
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost4math8policies22checked_narrowing_castIdNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEeEET_T1_PKc.exit10, %bb.g
  %i.v = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.q)
  %i.w = fcmp ogt x86_fp80 %i.v, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.w, label %bb.k, label %_ZN5boost4math8policies22checked_narrowing_castIdNS1_6policyINS1_13promote_floatILb0EEENS1_14promote_doubleILb0EEENS1_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEeEET_T1_PKc.exit

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr @_ZZN5boost4math9ibeta_invIddddNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_T1_T2_ffE4typeES8_S9_SA_PSB_RKT3_E8function, align 8, !tbaa !417
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
  br i1 %.not220, label %bb.cj, label %bb.c

bb.c:                                             ; preds = %bb.b
  store x86_fp80 0.000000e+00, ptr %5, align 16, !tbaa !80
  br label %bb.cj

bb.d:                                             ; preds = %bb.a
  %i.d = fcmp oeq x86_fp80 %2, 0.000000e+00
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not219 = icmp eq ptr %5, null
  br i1 %.not219, label %bb.cj, label %bb.f

bb.f:                                             ; preds = %bb.e
  store x86_fp80 1.000000e+00, ptr %5, align 16, !tbaa !80
  br label %bb.cj

bb.g:                                             ; preds = %bb.d
  %7 = fcmp une x86_fp80 %0, 1.000000e+00         ; 2 uses
  br i1 %7, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.e = fcmp oeq x86_fp80 %1, 1.000000e+00
  br i1 %i.e, label %bb.i, label %.thread641

bb.i:                                             ; preds = %bb.h
  %.not218 = icmp eq ptr %5, null
  br i1 %.not218, label %bb.cj, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.f = fsub x86_fp80 1.000000e+00, %2
  store x86_fp80 %i.f, ptr %5, align 16, !tbaa !80
  br label %bb.cj

bb.k:                                             ; preds = %bb.g
  %i.g = fcmp oeq x86_fp80 %0, 5.000000e-01
  br i1 %i.g, label %bb.l, label %bb.p

.thread641:                                       ; preds = %bb.h
  %i.h = fcmp oeq x86_fp80 %1, 5.000000e-01
  br i1 %i.h, label %.thread660, label %.thread682

bb.l:                                             ; preds = %bb.k
  %i.i = fcmp oeq x86_fp80 %1, 5.000000e-01
  br i1 %i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.j = fmul x86_fp80 %2, f0x3FFFC90FDAA22168C235
  %i.k = tail call noundef x86_fp80 @sinl(x86_fp80 noundef %i.j) #41 ; 2 uses
  %i.l = fmul x86_fp80 %i.k, %i.k                 ; 2 uses
  %.not217 = icmp eq ptr %5, null
  br i1 %.not217, label %bb.cj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.m = fmul x86_fp80 %3, f0x3FFFC90FDAA22168C235
  %i.n = tail call noundef x86_fp80 @sinl(x86_fp80 noundef %i.m) #41 ; 2 uses
  %i.o = fmul x86_fp80 %i.n, %i.n
  store x86_fp80 %i.o, ptr %5, align 16, !tbaa !80
  br label %bb.cj

bb.o:                                             ; preds = %bb.l
  %i.p = fcmp ogt x86_fp80 %1, 5.000000e-01
  br i1 %i.p, label %.thread660, label %bb.p

.thread660:                                       ; preds = %.thread641, %bb.o
  %.0389649657667 = phi x86_fp80 [ %1, %bb.o ], [ 1.000000e+00, %.thread641 ]
  %.0399648658666 = phi x86_fp80 [ %2, %bb.o ], [ %3, %.thread641 ]
  %.0409647659665 = phi x86_fp80 [ %3, %bb.o ], [ %2, %.thread641 ]
  %8 = zext i1 %7 to i8
  br label %bb.p

bb.p:                                             ; preds = %.thread660, %bb.o, %bb.k
  %.1410 = phi x86_fp80 [ %.0399648658666, %.thread660 ], [ %3, %bb.o ], [ %3, %bb.k ] ; 10 uses
  %.1400 = phi x86_fp80 [ %.0409647659665, %.thread660 ], [ %2, %bb.o ], [ %2, %bb.k ] ; 16 uses
  %.1390 = phi x86_fp80 [ 5.000000e-01, %.thread660 ], [ %1, %bb.o ], [ %1, %bb.k ] ; 17 uses
  %.1382 = phi x86_fp80 [ %.0389649657667, %.thread660 ], [ 5.000000e-01, %bb.o ], [ %0, %bb.k ] ; 20 uses
  %.1166 = phi i8 [ %8, %.thread660 ], [ 0, %bb.o ], [ 0, %bb.k ] ; 11 uses
  %i.q = fcmp oeq x86_fp80 %.1390, 5.000000e-01
  %i.r = fcmp oge x86_fp80 %.1382, 5.000000e-01
  %or.cond = and i1 %i.q, %i.r
  %i.s = fcmp une x86_fp80 %.1400, 1.000000e+00
  %or.cond3 = and i1 %i.s, %or.cond
  br i1 %or.cond3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.t = fmul x86_fp80 %.1400, 5.000000e-01       ; 2 uses
  %i.u = fsub x86_fp80 1.000000e+00, %i.t
  %i.v = fmul nnan x86_fp80 %.1382, 2.000000e+00  ; 3 uses
  %i.w = tail call noundef x86_fp80 @_ZN5boost4math6detail18inverse_students_tIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_Pb(x86_fp80 noundef %i.v, x86_fp80 noundef %i.t, x86_fp80 noundef %i.u, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef null) ; 2 uses
  %i.x = fmul x86_fp80 %i.w, %i.w                 ; 2 uses
  %i.y = fadd x86_fp80 %i.v, %i.x                 ; 2 uses
  %i.z = fdiv x86_fp80 %i.x, %i.y
  %i.aa = fdiv x86_fp80 %i.v, %i.y
  br label %.thread447

bb.r:                                             ; preds = %bb.p
  %i.ab = fcmp oeq x86_fp80 %.1390, 1.000000e+00
  br i1 %i.ab, label %.thread682, label %bb.y

.thread682:                                       ; preds = %.thread641, %bb.r
  %.1410677691 = phi x86_fp80 [ %.1410, %bb.r ], [ %2, %.thread641 ] ; 2 uses
  %.1400678690 = phi x86_fp80 [ %.1400, %bb.r ], [ %3, %.thread641 ] ; 3 uses
  %.1382680689 = phi x86_fp80 [ %.1382, %bb.r ], [ %1, %.thread641 ] ; 5 uses
  %.1166681688 = phi i8 [ %.1166, %bb.r ], [ 1, %.thread641 ]
  %i.ac = fcmp olt x86_fp80 %.1400678690, %.1410677691
  br i1 %i.ac, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.thread682
  %i.ad = fcmp ogt x86_fp80 %.1382680689, 1.000000e+00
  %i.ae = fdiv x86_fp80 1.000000e+00, %.1382680689
  %i.af = tail call noundef x86_fp80 @powl(x86_fp80 noundef %.1400678690, x86_fp80 noundef %i.ae) #41 ; 3 uses
  br i1 %i.ad, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ag = tail call noundef x86_fp80 @logl(x86_fp80 noundef %.1400678690) #41
  %i.ah = fdiv x86_fp80 %i.ag, %.1382680689
  %i.ai = tail call noundef x86_fp80 @_ZN5boost4math5expm1IeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_(x86_fp80 noundef %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.aj = fneg x86_fp80 %i.ai
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ak = fsub x86_fp80 1.000000e+00, %i.af
  br label %bb.w

bb.v:                                             ; preds = %.thread682
  %i.al = fneg x86_fp80 %.1410677691              ; 2 uses
  %i.am = tail call noundef x86_fp80 @_ZN5boost4math5log1pINS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEeeRKT_(x86_fp80 noundef %i.al, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.an = fdiv x86_fp80 %i.am, %.1382680689
  %i.ao = tail call noundef x86_fp80 @expl(x86_fp80 noundef %i.an) #41
  %i.ap = tail call noundef x86_fp80 @_ZN5boost4math5log1pINS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEEeeRKT_(x86_fp80 noundef %i.al, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.aq = fdiv x86_fp80 %i.ap, %.1382680689
  %i.ar = tail call noundef x86_fp80 @_ZN5boost4math5expm1IeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_fffffE4typeESC_RKT0_(x86_fp80 noundef %i.aq, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.as = fneg x86_fp80 %i.ar
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v
  %.0432 = phi x86_fp80 [ %i.aj, %bb.t ], [ %i.ak, %bb.u ], [ %i.as, %bb.v ] ; 2 uses
  %.0419 = phi x86_fp80 [ %i.af, %bb.t ], [ %i.af, %bb.u ], [ %i.ao, %bb.v ] ; 2 uses
  %i.at = trunc nuw i8 %.1166681688 to i1         ; 2 uses
  %spec.select600 = select i1 %i.at, x86_fp80 %.0432, x86_fp80 %.0419 ; 2 uses
  %.not215 = icmp eq ptr %5, null
  br i1 %.not215, label %bb.cj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %spec.select = select i1 %i.at, x86_fp80 %.0419, x86_fp80 %.0432
  store x86_fp80 %spec.select, ptr %5, align 16, !tbaa !80
  br label %bb.cj

bb.y:                                             ; preds = %bb.r
  %i.au = fadd x86_fp80 %0, %1                    ; 8 uses
  %i.av = fcmp ogt x86_fp80 %i.au, 5.000000e+00
  br i1 %i.av, label %bb.z, label %bb.ap

bb.z:                                             ; preds = %bb.y
  %i.aw = fcmp ogt x86_fp80 %.1400, 5.000000e-01
  br i1 %i.aw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ax = xor i8 %.1166, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.2411 = phi x86_fp80 [ %.1400, %bb.aa ], [ %.1410, %bb.z ] ; 4 uses
  %.2401 = phi x86_fp80 [ %.1410, %bb.aa ], [ %.1400, %bb.z ] ; 7 uses
  %.2391 = phi x86_fp80 [ %.1382, %bb.aa ], [ %.1390, %bb.z ] ; 11 uses
  %.2383 = phi x86_fp80 [ %.1390, %bb.aa ], [ %.1382, %bb.z ] ; 14 uses
  %.2167 = phi i8 [ %i.ax, %bb.aa ], [ %.1166, %bb.z ] ; 4 uses
  %i.ay = fcmp olt x86_fp80 %.2391, %.2383
  %.sroa.speculated335 = select i1 %i.ay, x86_fp80 %.2391, x86_fp80 %.2383 ; 4 uses
  %i.az = fcmp olt x86_fp80 %.2383, %.2391        ; 2 uses
  %.sroa.speculated = select i1 %i.az, x86_fp80 %.2391, x86_fp80 %.2383
  %i.ba = tail call noundef x86_fp80 @sqrtl(x86_fp80 noundef %.sroa.speculated335) #41
  %i.bb = fsub x86_fp80 %.sroa.speculated, %.sroa.speculated335
  %i.bc = fcmp ogt x86_fp80 %i.ba, %i.bb
  %i.bd = fcmp ogt x86_fp80 %.sroa.speculated335, 5.000000e+00
  %or.cond5 = and i1 %i.bd, %i.bc
  br i1 %or.cond5, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.be = tail call noundef x86_fp80 @_ZN5boost4math6detail28temme_method_1_ibeta_inverseIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_RKT0_(x86_fp80 noundef %.2383, x86_fp80 noundef %.2391, x86_fp80 noundef %.2401, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 2 uses
  %i.bf = fsub x86_fp80 1.000000e+00, %i.be
  br label %.thread447

bb.ad:                                            ; preds = %bb.ab
  %i.bg = fdiv x86_fp80 %.2383, %i.au
  %i.bh = tail call noundef x86_fp80 @sqrtl(x86_fp80 noundef %i.bg) #41
  %i.bi = tail call noundef x86_fp80 @asinl(x86_fp80 noundef %i.bh) #41
  %i.bj = fdiv x86_fp80 %.sroa.speculated335, %i.au ; 2 uses
  %i.bk = fcmp oge x86_fp80 %i.bj, f0x3FFCCCCCCCCCCCCCD000
  %i.bl = fcmp ole x86_fp80 %i.bj, f0x3FFECCCCCCCCCCCCD000
  %or.cond7 = and i1 %i.bk, %i.bl
  %i.bm = fcmp oge x86_fp80 %i.au, 1.000000e+01
  %or.cond9 = and i1 %i.bm, %or.cond7
  br i1 %or.cond9, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.bn = fdiv x86_fp80 1.000000e+00, %.2383      ; 2 uses
  %i.bo = tail call noundef x86_fp80 @powl(x86_fp80 noundef %.2401, x86_fp80 noundef %i.bn) #41 ; 2 uses
  %i.bp = fcmp olt x86_fp80 %i.bo, f0x3FF6A3D70A3D70A3D800
  %i.bq = fcmp olt x86_fp80 %i.au, 2.000000e+02
  %or.cond601 = and i1 %i.bq, %i.bp
  br i1 %or.cond601, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.br = tail call noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeESC_SD_SE_(x86_fp80 noundef %.2383, x86_fp80 noundef %.2391)
  %i.bs = fmul x86_fp80 %.2383, %i.br
  %i.bt = tail call noundef x86_fp80 @powl(x86_fp80 noundef %i.bs, x86_fp80 noundef %i.bn) #41
  %i.bu = fmul x86_fp80 %i.bo, %i.bt
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.bv = tail call noundef x86_fp80 @_ZN5boost4math6detail28temme_method_2_ibeta_inverseIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_SB_RKT0_(x86_fp80 noundef %.2383, x86_fp80 noundef %.2391, x86_fp80 noundef %.2401, x86_fp80 noundef %i.au, x86_fp80 noundef %i.bi, ptr noundef nonnull align 1 dereferenceable(1) %4)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %storemerge = phi x86_fp80 [ %i.bv, %bb.ag ], [ %i.bu, %bb.af ] ; 2 uses
  %i.bw = fsub x86_fp80 1.000000e+00, %storemerge
  br label %.thread447

bb.ai:                                            ; preds = %bb.ad
  br i1 %i.az, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bx = xor i8 %.2167, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.3412 = phi x86_fp80 [ %.2401, %bb.aj ], [ %.2411, %bb.ai ] ; 4 uses
  %.3402 = phi x86_fp80 [ %.2411, %bb.aj ], [ %.2401, %bb.ai ] ; 3 uses
  %.3392 = phi x86_fp80 [ %.2383, %bb.aj ], [ %.2391, %bb.ai ] ; 7 uses
  %.3384 = phi x86_fp80 [ %.2391, %bb.aj ], [ %.2383, %bb.ai ] ; 4 uses
  %.3 = phi i8 [ %i.bx, %bb.aj ], [ %.2167, %bb.ai ] ; 2 uses
  %i.by = fcmp olt x86_fp80 %.3392, 2.000000e+00
  br i1 %i.by, label %bb.al, label %.thread443

bb.al:                                            ; preds = %bb.ak
  %i.bz = invoke noundef x86_fp80 @_ZN5boost4math4betaIeeNS0_8policies6policyINS2_13promote_floatILb0EEENS2_14promote_doubleILb0EEENS2_14default_policyES8_S8_S8_S8_S8_S8_S8_S8_S8_S8_EEEENS0_5tools12promote_argsIT_T0_T1_fffE4typeESC_SD_SE_(x86_fp80 noundef %.3384, x86_fp80 noundef %.3392)
          to label %bb.an unwind label %bb.am     ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.ca = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt14overflow_error       ; 3 uses
  %i.cb = extractvalue { ptr, i32 } %i.ca, 1
  %i.cc = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt14overflow_error) #41
  %i.cd = icmp eq i32 %i.cb, %i.cc
  br i1 %i.cd, label %.thread, label %bb.ci

.thread:                                          ; preds = %bb.am
  %i.ce = extractvalue { ptr, i32 } %i.ca, 0
  %i.cf = tail call ptr @__cxa_begin_catch(ptr %i.ce) #41 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.cg = fcmp une x86_fp80 %i.bz, 0.000000e+00
  br i1 %i.cg, label %bb.ao, label %.thread443

bb.ao:                                            ; preds = %bb.an, %.thread
  %.0175440 = phi x86_fp80 [ f0x7FFEFFFFFFFFFFFFFFFF, %.thread ], [ %i.bz, %bb.an ]
  %i.ch = fmul x86_fp80 %.3412, %.3392
  %i.ci = fmul x86_fp80 %i.ch, %.0175440
  %i.cj = fdiv x86_fp80 1.000000e+00, %.3392
  %i.ck = tail call noundef x86_fp80 @powl(x86_fp80 noundef %i.ci, x86_fp80 noundef %i.cj) #41 ; 3 uses
  %i.cl = fsub x86_fp80 1.000000e+00, %i.ck
  %i.cm = fcmp ogt x86_fp80 %i.ck, f0x3FEEA7C5AC471B478800
  br i1 %i.cm, label %.thread443, label %.thread447

.thread443:                                       ; preds = %bb.ak, %bb.an, %bb.ao
  %i.cn = tail call noundef x86_fp80 @_ZN5boost4math6detail28temme_method_3_ibeta_inverseIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_SB_SB_RKT0_(x86_fp80 noundef %.3384, x86_fp80 noundef %.3392, x86_fp80 noundef %.3402, x86_fp80 noundef %.3412, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 2 uses
  %i.co = fsub x86_fp80 1.000000e+00, %i.cn
  br label %.thread447

bb.ap:                                            ; preds = %bb.y
  %i.cp = fcmp olt x86_fp80 %.1382, 1.000000e+00
  %i.cq = fcmp olt x86_fp80 %.1390, 1.000000e+00
  %or.cond11 = and i1 %i.cq, %i.cp
end_hunk_0
