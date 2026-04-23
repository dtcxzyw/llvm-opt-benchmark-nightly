inline.NumInlined: 75479
inline.NumDeleted: 20342
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_20ConstantVectorReaderIdEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.p:                                             ; preds = %bb.o
  %6 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.p, %bb.o
  %.016.i.i.i.i.i.i = phi double [ %6, %bb.p ], [ %i.bp, %bb.o ]
  %i.bz = fmul double %i.bl, %.016.i.i.i.i.i.i
  %i.ca = fadd double %i.bz, 0.000000e+00
  br label %.noexc11
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_20ConstantVectorReaderIdEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @nextafter(double noundef, double noundef) local_unnamed_addr #39

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_20ConstantVectorReaderIdEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.11605) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_20ConstantVectorReaderIdEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.i:                                             ; preds = %bb.h
  %7 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.i, %bb.h
  %.016.i.i.i.i.i.i = phi double [ %7, %bb.i ], [ %i.av, %bb.h ]
  %i.bf = fmul double %i.ar, %.016.i.i.i.i.i.i
  %i.bg = fadd double %i.bf, 0.000000e+00
  br label %.noexc18
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_20ConstantVectorReaderIdEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.j:                                             ; preds = %bb.i
  %10 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.j, %bb.i
  %.016.i.i.i.i.i.i = phi double [ %10, %bb.j ], [ %i.bf, %bb.i ]
  %i.bp = fmul double %i.bb, %.016.i.i.i.i.i.i
  %i.bq = fadd double %i.bp, 0.000000e+00
  br label %.noexc38
end_hunk_3
begin_hunk_4_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_20ConstantVectorReaderIdEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i66, label %bb.af, label %select.unfold.i.i.i.i.i.i62, !llvm.loop !16915

bb.ag:                                            ; preds = %bb.af
  %11 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i67

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i67: ; preds = %bb.ag, %bb.af
  %.016.i.i.i.i.i.i68 = phi double [ %11, %bb.ag ], [ %i.eg, %bb.af ]
  %i.eq = fmul double %i.ec, %.016.i.i.i.i.i.i68
  %i.er = fadd double %i.eq, 0.000000e+00
  br label %.noexc24
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_20ConstantVectorReaderIdEENS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.p:                                             ; preds = %bb.o
  %6 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.p, %bb.o
  %.016.i.i.i.i.i.i = phi double [ %6, %bb.p ], [ %i.br, %bb.o ]
  %i.cb = fmul double %i.bn, %.016.i.i.i.i.i.i
  %i.cc = fadd double %i.cb, 0.000000e+00
  br label %.noexc10
end_hunk_5
begin_hunk_6_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_20ConstantVectorReaderIdEENS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.i:                                             ; preds = %bb.h
  %7 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.i, %bb.h
  %.016.i.i.i.i.i.i = phi double [ %7, %bb.i ], [ %i.ay, %bb.h ]
  %i.bi = fmul double %i.au, %.016.i.i.i.i.i.i
  %i.bj = fadd double %i.bi, 0.000000e+00
  br label %.noexc17
end_hunk_6
begin_hunk_7_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_20ConstantVectorReaderIdEENS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.j:                                             ; preds = %bb.i
  %10 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.j, %bb.i
  %.016.i.i.i.i.i.i = phi double [ %10, %bb.j ], [ %i.bj, %bb.i ]
  %i.bt = fmul double %i.bf, %.016.i.i.i.i.i.i
  %i.bu = fadd double %i.bt, 0.000000e+00
  br label %.noexc33
end_hunk_7
begin_hunk_8_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_20ConstantVectorReaderIdEENS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i61, label %bb.af, label %select.unfold.i.i.i.i.i.i57, !llvm.loop !16915

bb.ag:                                            ; preds = %bb.af
  %11 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i62

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i62: ; preds = %bb.ag, %bb.af
  %.016.i.i.i.i.i.i63 = phi double [ %11, %bb.ag ], [ %i.el, %bb.af ]
  %i.ev = fmul double %i.eh, %.016.i.i.i.i.i.i63
  %i.ew = fadd double %i.ev, 0.000000e+00
  br label %.noexc23
end_hunk_8
begin_hunk_9_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_16FlatVectorReaderIdEENS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.p:                                             ; preds = %bb.o
  %6 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.p, %bb.o
  %.016.i.i.i.i.i.i = phi double [ %6, %bb.p ], [ %i.br, %bb.o ]
  %i.cb = fmul double %i.bn, %.016.i.i.i.i.i.i
  %i.cc = fadd double %i.cb, 0.000000e+00
  br label %.noexc9
end_hunk_9
begin_hunk_10_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_16FlatVectorReaderIdEENS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.i:                                             ; preds = %bb.h
  %7 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.i, %bb.h
  %.016.i.i.i.i.i.i = phi double [ %7, %bb.i ], [ %i.ay, %bb.h ]
  %i.bi = fmul double %i.au, %.016.i.i.i.i.i.i
  %i.bj = fadd double %i.bi, 0.000000e+00
  br label %.noexc16
end_hunk_10
begin_hunk_11_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_16FlatVectorReaderIdEENS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.j:                                             ; preds = %bb.i
  %10 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.j, %bb.i
  %.016.i.i.i.i.i.i = phi double [ %10, %bb.j ], [ %i.bj, %bb.i ]
  %i.bt = fmul double %i.bf, %.016.i.i.i.i.i.i
  %i.bu = fadd double %i.bt, 0.000000e+00
  br label %.noexc32
end_hunk_11
begin_hunk_12_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_16FlatVectorReaderIdEENS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i60, label %bb.af, label %select.unfold.i.i.i.i.i.i56, !llvm.loop !16915

bb.ag:                                            ; preds = %bb.af
  %11 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i61

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i61: ; preds = %bb.ag, %bb.af
  %.016.i.i.i.i.i.i62 = phi double [ %11, %bb.ag ], [ %i.el, %bb.af ]
  %i.ev = fmul double %i.eh, %.016.i.i.i.i.i.i62
  %i.ew = fadd double %i.ev, 0.000000e+00
  br label %.noexc22
end_hunk_12
begin_hunk_13_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_16FlatVectorReaderIdEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.p:                                             ; preds = %bb.o
  %6 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.p, %bb.o
  %.016.i.i.i.i.i.i = phi double [ %6, %bb.p ], [ %i.bt, %bb.o ]
  %i.cd = fmul double %i.bp, %.016.i.i.i.i.i.i
  %i.ce = fadd double %i.cd, 0.000000e+00
  br label %.noexc9
end_hunk_13
begin_hunk_14_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_16FlatVectorReaderIdEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.i:                                             ; preds = %bb.h
  %7 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.i, %bb.h
  %.016.i.i.i.i.i.i = phi double [ %7, %bb.i ], [ %i.ba, %bb.h ]
  %i.bk = fmul double %i.aw, %.016.i.i.i.i.i.i
  %i.bl = fadd double %i.bk, 0.000000e+00
  br label %.noexc16
end_hunk_14
begin_hunk_15_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_16FlatVectorReaderIdEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.j:                                             ; preds = %bb.i
  %10 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.j, %bb.i
  %.016.i.i.i.i.i.i = phi double [ %10, %bb.j ], [ %i.bl, %bb.i ]
  %i.bv = fmul double %i.bh, %.016.i.i.i.i.i.i
  %i.bw = fadd double %i.bv, 0.000000e+00
  br label %.noexc32
end_hunk_15
begin_hunk_16_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_16FlatVectorReaderIdEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i60, label %bb.af, label %select.unfold.i.i.i.i.i.i56, !llvm.loop !16915

bb.ag:                                            ; preds = %bb.af
  %11 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i61

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i61: ; preds = %bb.ag, %bb.af
  %.016.i.i.i.i.i.i62 = phi double [ %11, %bb.ag ], [ %i.ep, %bb.af ]
  %i.ez = fmul double %i.el, %.016.i.i.i.i.i.i62
  %i.fa = fadd double %i.ez, 0.000000e+00
  br label %.noexc22
end_hunk_16
begin_hunk_17_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.v:                                             ; preds = %bb.u
  %6 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.v, %bb.u
  %.016.i.i.i.i.i.i = phi double [ %6, %bb.v ], [ %i.da, %bb.u ]
  %i.dk = fmul double %i.cw, %.016.i.i.i.i.i.i
  %i.dl = fadd double %i.dk, 0.000000e+00
  br label %.noexc10
end_hunk_17
begin_hunk_18_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.o:                                             ; preds = %bb.n
  %7 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.o, %bb.n
  %.016.i.i.i.i.i.i = phi double [ %7, %bb.o ], [ %i.cg, %bb.n ]
  %i.cq = fmul double %i.cc, %.016.i.i.i.i.i.i
  %i.cr = fadd double %i.cq, 0.000000e+00
  br label %.noexc17
end_hunk_18
begin_hunk_19_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.p:                                             ; preds = %bb.o
  %10 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.p, %bb.o
  %.016.i.i.i.i.i.i = phi double [ %10, %bb.p ], [ %i.cq, %bb.o ]
  %i.da = fmul double %i.cm, %.016.i.i.i.i.i.i
  %i.db = fadd double %i.da, 0.000000e+00
  br label %.noexc33
end_hunk_19
begin_hunk_20_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJddEEEJddEEEE7iterateIJNS3_12VectorReaderIdEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i70, label %bb.ar, label %select.unfold.i.i.i.i.i.i66, !llvm.loop !16915

bb.as:                                            ; preds = %bb.ar
  %11 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i71

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i71: ; preds = %bb.as, %bb.ar
  %.016.i.i.i.i.i.i72 = phi double [ %11, %bb.as ], [ %i.ha, %bb.ar ]
  %i.hk = fmul double %i.gw, %.016.i.i.i.i.i.i72
  %i.hl = fadd double %i.hk, 0.000000e+00
  br label %.noexc23
end_hunk_20
begin_hunk_21_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_20ConstantVectorReaderIfEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.p:                                             ; preds = %bb.o
  %6 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.p, %bb.o
  %.016.i.i.i.i.i.i = phi double [ %6, %bb.p ], [ %i.bq, %bb.o ]
  %i.ca = fmul double %.016.i.i.i.i.i.i, %i.bm
  %i.cb = fadd double %i.ca, 0.000000e+00
  %i.cc = fptrunc double %i.cb to float
end_hunk_21
begin_hunk_22_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_20ConstantVectorReaderIfEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.i:                                             ; preds = %bb.h
  %7 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.i, %bb.h
  %.016.i.i.i.i.i.i = phi double [ %7, %bb.i ], [ %i.aw, %bb.h ]
  %i.bg = fmul double %.016.i.i.i.i.i.i, %i.as
  %i.bh = fadd double %i.bg, 0.000000e+00
  %i.bi = fptrunc double %i.bh to float
end_hunk_22
begin_hunk_23_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_20ConstantVectorReaderIfEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.j:                                             ; preds = %bb.i
  %10 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.j, %bb.i
  %.016.i.i.i.i.i.i = phi double [ %10, %bb.j ], [ %i.bg, %bb.i ]
  %i.bq = fmul double %.016.i.i.i.i.i.i, %i.bc
  %i.br = fadd double %i.bq, 0.000000e+00
  %i.bs = fptrunc double %i.br to float
end_hunk_23
begin_hunk_24_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_20ConstantVectorReaderIfEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i66, label %bb.af, label %select.unfold.i.i.i.i.i.i62, !llvm.loop !16915

bb.ag:                                            ; preds = %bb.af
  %11 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i67

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i67: ; preds = %bb.ag, %bb.af
  %.016.i.i.i.i.i.i68 = phi double [ %11, %bb.ag ], [ %i.ej, %bb.af ]
  %i.et = fmul double %.016.i.i.i.i.i.i68, %i.ef
  %i.eu = fadd double %i.et, 0.000000e+00
  %i.ev = fptrunc double %i.eu to float
end_hunk_24
begin_hunk_25_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_20ConstantVectorReaderIfEENS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.p:                                             ; preds = %bb.o
  %6 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.p, %bb.o
  %.016.i.i.i.i.i.i = phi double [ %6, %bb.p ], [ %i.bs, %bb.o ]
  %i.cc = fmul double %.016.i.i.i.i.i.i, %i.bo
  %i.cd = fadd double %i.cc, 0.000000e+00
  %i.ce = fptrunc double %i.cd to float
end_hunk_25
begin_hunk_26_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_20ConstantVectorReaderIfEENS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.i:                                             ; preds = %bb.h
  %7 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.i, %bb.h
  %.016.i.i.i.i.i.i = phi double [ %7, %bb.i ], [ %i.az, %bb.h ]
  %i.bj = fmul double %.016.i.i.i.i.i.i, %i.av
  %i.bk = fadd double %i.bj, 0.000000e+00
  %i.bl = fptrunc double %i.bk to float
end_hunk_26
begin_hunk_27_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_20ConstantVectorReaderIfEENS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.j:                                             ; preds = %bb.i
  %10 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.j, %bb.i
  %.016.i.i.i.i.i.i = phi double [ %10, %bb.j ], [ %i.bk, %bb.i ]
  %i.bu = fmul double %.016.i.i.i.i.i.i, %i.bg
  %i.bv = fadd double %i.bu, 0.000000e+00
  %i.bw = fptrunc double %i.bv to float
end_hunk_27
begin_hunk_28_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_20ConstantVectorReaderIfEENS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i61, label %bb.af, label %select.unfold.i.i.i.i.i.i57, !llvm.loop !16915

bb.ag:                                            ; preds = %bb.af
  %11 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i62

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i62: ; preds = %bb.ag, %bb.af
  %.016.i.i.i.i.i.i63 = phi double [ %11, %bb.ag ], [ %i.eo, %bb.af ]
  %i.ey = fmul double %.016.i.i.i.i.i.i63, %i.ek
  %i.ez = fadd double %i.ey, 0.000000e+00
  %i.fa = fptrunc double %i.ez to float
end_hunk_28
begin_hunk_29_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_16FlatVectorReaderIfEENS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.p:                                             ; preds = %bb.o
  %6 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.p, %bb.o
  %.016.i.i.i.i.i.i = phi double [ %6, %bb.p ], [ %i.bs, %bb.o ]
  %i.cc = fmul double %.016.i.i.i.i.i.i, %i.bo
  %i.cd = fadd double %i.cc, 0.000000e+00
  %i.ce = fptrunc double %i.cd to float
end_hunk_29
begin_hunk_30_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_16FlatVectorReaderIfEENS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.i:                                             ; preds = %bb.h
  %7 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.i, %bb.h
  %.016.i.i.i.i.i.i = phi double [ %7, %bb.i ], [ %i.az, %bb.h ]
  %i.bj = fmul double %.016.i.i.i.i.i.i, %i.av
  %i.bk = fadd double %i.bj, 0.000000e+00
  %i.bl = fptrunc double %i.bk to float
end_hunk_30
begin_hunk_31_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_16FlatVectorReaderIfEENS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.j:                                             ; preds = %bb.i
  %10 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.j, %bb.i
  %.016.i.i.i.i.i.i = phi double [ %10, %bb.j ], [ %i.bk, %bb.i ]
  %i.bu = fmul double %.016.i.i.i.i.i.i, %i.bg
  %i.bv = fadd double %i.bu, 0.000000e+00
  %i.bw = fptrunc double %i.bv to float
end_hunk_31
begin_hunk_32_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_16FlatVectorReaderIfEENS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i60, label %bb.af, label %select.unfold.i.i.i.i.i.i56, !llvm.loop !16915

bb.ag:                                            ; preds = %bb.af
  %11 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i61

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i61: ; preds = %bb.ag, %bb.af
  %.016.i.i.i.i.i.i62 = phi double [ %11, %bb.ag ], [ %i.eo, %bb.af ]
  %i.ey = fmul double %.016.i.i.i.i.i.i62, %i.ek
  %i.ez = fadd double %i.ey, 0.000000e+00
  %i.fa = fptrunc double %i.ez to float
end_hunk_32
begin_hunk_33_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_16FlatVectorReaderIfEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.p:                                             ; preds = %bb.o
  %6 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.p, %bb.o
  %.016.i.i.i.i.i.i = phi double [ %6, %bb.p ], [ %i.bu, %bb.o ]
  %i.ce = fmul double %.016.i.i.i.i.i.i, %i.bq
  %i.cf = fadd double %i.ce, 0.000000e+00
  %i.cg = fptrunc double %i.cf to float
end_hunk_33
begin_hunk_34_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_16FlatVectorReaderIfEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.i:                                             ; preds = %bb.h
  %7 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.i, %bb.h
  %.016.i.i.i.i.i.i = phi double [ %7, %bb.i ], [ %i.bb, %bb.h ]
  %i.bl = fmul double %.016.i.i.i.i.i.i, %i.ax
  %i.bm = fadd double %i.bl, 0.000000e+00
  %i.bn = fptrunc double %i.bm to float
end_hunk_34
begin_hunk_35_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_16FlatVectorReaderIfEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.j:                                             ; preds = %bb.i
  %10 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.j, %bb.i
  %.016.i.i.i.i.i.i = phi double [ %10, %bb.j ], [ %i.bm, %bb.i ]
  %i.bw = fmul double %.016.i.i.i.i.i.i, %i.bi
  %i.bx = fadd double %i.bw, 0.000000e+00
  %i.by = fptrunc double %i.bx to float
end_hunk_35
begin_hunk_36_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_16FlatVectorReaderIfEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i60, label %bb.af, label %select.unfold.i.i.i.i.i.i56, !llvm.loop !16915

bb.ag:                                            ; preds = %bb.af
  %11 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i61

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i61: ; preds = %bb.ag, %bb.af
  %.016.i.i.i.i.i.i62 = phi double [ %11, %bb.ag ], [ %i.es, %bb.af ]
  %i.fc = fmul double %.016.i.i.i.i.i.i62, %i.eo
  %i.fd = fadd double %i.fc, 0.000000e+00
  %i.fe = fptrunc double %i.fd to float
end_hunk_36
begin_hunk_37_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.v:                                             ; preds = %bb.u
  %6 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.v, %bb.u
  %.016.i.i.i.i.i.i = phi double [ %6, %bb.v ], [ %i.db, %bb.u ]
  %i.dl = fmul double %.016.i.i.i.i.i.i, %i.cx
  %i.dm = fadd double %i.dl, 0.000000e+00
  %i.dn = fptrunc double %i.dm to float
end_hunk_37
begin_hunk_38_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.o:                                             ; preds = %bb.n
  %7 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.o, %bb.n
  %.016.i.i.i.i.i.i = phi double [ %7, %bb.o ], [ %i.ch, %bb.n ]
  %i.cr = fmul double %.016.i.i.i.i.i.i, %i.cd
  %i.cs = fadd double %i.cr, 0.000000e+00
  %i.ct = fptrunc double %i.cs to float
end_hunk_38
begin_hunk_39_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %select.unfold.i.i.i.i.i.i, !llvm.loop !16915

bb.p:                                             ; preds = %bb.o
  %10 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i: ; preds = %bb.p, %bb.o
  %.016.i.i.i.i.i.i = phi double [ %10, %bb.p ], [ %i.cr, %bb.o ]
  %i.db = fmul double %.016.i.i.i.i.i.i, %i.cn
  %i.dc = fadd double %i.db, 0.000000e+00
  %i.dd = fptrunc double %i.dc to float
end_hunk_39
begin_hunk_40_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions18SecureRandFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi:bb.a
  br i1 %.not.i.i.i.i.i.i70, label %bb.ar, label %select.unfold.i.i.i.i.i.i66, !llvm.loop !16915

bb.as:                                            ; preds = %bb.ar
  %11 = call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #38, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i71

_ZNSt25uniform_real_distributionIdEclIN5folly6Random9SecureRNGImEEEEdRT_.exit.i.i71: ; preds = %bb.as, %bb.ar
  %.016.i.i.i.i.i.i72 = phi double [ %11, %bb.as ], [ %i.hd, %bb.ar ]
  %i.hn = fmul double %.016.i.i.i.i.i.i72, %i.gz
  %i.ho = fadd double %i.hn, 0.000000e+00
  %i.hp = fptrunc double %i.ho to float
end_hunk_40
