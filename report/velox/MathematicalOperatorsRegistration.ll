inline.NumInlined: 29983
inline.NumDeleted: 8059
begin_hunk_0_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check356 = icmp ult i64 %i.axn, 16
  %n.mod.vf370 = and i64 %umax353, 1              ; 3 uses
  %n.vec371 = sub i64 %i.axn, %n.mod.vf370        ; 3 uses
  %i.ayi = load double, ptr %i.axl, align 8, !tbaa !561, !alias.scope !725
  %broadcast.splatinsert374 = insertelement <4 x double> poison, double %i.ayi, i64 0
  %broadcast.splat375 = shufflevector <4 x double> %broadcast.splatinsert374, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  %9 = add i64 %n.vec371, %i.avi                  ; 2 uses
  br i1 %min.iters.check356, label %vec.epilog.vector.body, label %vector.body360

vector.body360:                                   ; preds = %vector.main.loop.iter.check, %vector.body360
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check365 = icmp ult i64 %i.ayd, 32
  %n.mod.vf384 = and i64 %umax362, 1              ; 3 uses
  %n.vec385 = sub i64 %i.ayd, %n.mod.vf384        ; 3 uses
  %9 = load float, ptr %i.ayb, align 4, !tbaa !1051, !alias.scope !1199, !noalias !1193 ; 2 uses
  %10 = add i64 %n.vec385, %i.avq                 ; 2 uses
  br i1 %min.iters.check365, label %vec.epilog.ph383, label %vector.ph366

vector.ph366:                                     ; preds = %vector.main.loop.iter.check364
  %broadcast.splatinsert = insertelement <8 x float> poison, float %9, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body369

end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n377, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.ph383:                                 ; preds = %vector.main.loop.iter.check364
  %broadcast.splatinsert389 = insertelement <4 x float> poison, float %9, i64 0
  %broadcast.splat390 = shufflevector <4 x float> %broadcast.splatinsert389, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body386

end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n393, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i.preheader

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block376, %vector.memcheck351, %vector.scevcheck346, %iter.check379, %vec.epilog.middle.block392
  %.087.i.us.us83.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %10, %middle.block376 ], [ %i.avq, %vector.scevcheck346 ], [ %i.avq, %vector.memcheck351 ], [ %i.avq, %iter.check379 ], [ %10, %vec.epilog.middle.block392 ]
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a
  %min.iters.check356 = icmp ult i64 %i.axr, 16
  %n.mod.vf370 = and i64 %umax353, 1              ; 3 uses
  %n.vec371 = sub i64 %i.axr, %n.mod.vf370        ; 3 uses
  %i.aym = load i64, ptr %i.axp, align 8, !tbaa !209, !alias.scope !1475, !noalias !1470
  %broadcast.splatinsert374 = insertelement <4 x i64> poison, i64 %i.aym, i64 0
  %broadcast.splat375 = shufflevector <4 x i64> %broadcast.splatinsert374, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  %9 = add i64 %n.vec371, %i.avm                  ; 2 uses
  br i1 %min.iters.check356, label %vec.epilog.vector.body, label %vector.body360

vector.body360:                                   ; preds = %vector.main.loop.iter.check, %vector.body360
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check356 = icmp ult i64 %i.axr, 16
  %n.mod.vf370 = and i64 %umax353, 1              ; 3 uses
  %n.vec371 = sub i64 %i.axr, %n.mod.vf370        ; 3 uses
  %i.aym = load double, ptr %i.axp, align 8, !tbaa !561, !alias.scope !1972
  %broadcast.splatinsert374 = insertelement <4 x double> poison, double %i.aym, i64 0
  %broadcast.splat375 = shufflevector <4 x double> %broadcast.splatinsert374, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  %9 = add i64 %n.vec371, %i.avm                  ; 2 uses
  br i1 %min.iters.check356, label %vec.epilog.vector.body, label %vector.body360

vector.body360:                                   ; preds = %vector.main.loop.iter.check, %vector.body360
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check365 = icmp ult i64 %i.ayh, 32
  %n.mod.vf384 = and i64 %umax362, 1              ; 3 uses
  %n.vec385 = sub i64 %i.ayh, %n.mod.vf384        ; 3 uses
  %9 = load float, ptr %i.ayf, align 4, !tbaa !1051, !alias.scope !2214, !noalias !2208 ; 2 uses
  %10 = add i64 %n.vec385, %i.avu                 ; 2 uses
  br i1 %min.iters.check365, label %vec.epilog.ph383, label %vector.ph366

vector.ph366:                                     ; preds = %vector.main.loop.iter.check364
  %broadcast.splatinsert = insertelement <8 x float> poison, float %9, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body369

end_hunk_6
begin_hunk_7_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n377, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.ph383:                                 ; preds = %vector.main.loop.iter.check364
  %broadcast.splatinsert389 = insertelement <4 x float> poison, float %9, i64 0
  %broadcast.splat390 = shufflevector <4 x float> %broadcast.splatinsert389, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body386

end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n393, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i.preheader

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block376, %vector.memcheck351, %vector.scevcheck346, %iter.check379, %vec.epilog.middle.block392
  %.087.i.us.us83.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %10, %middle.block376 ], [ %i.avu, %vector.scevcheck346 ], [ %i.avu, %vector.memcheck351 ], [ %i.avu, %iter.check379 ], [ %10, %vec.epilog.middle.block392 ]
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i
end_hunk_8
begin_hunk_9_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a
  %min.iters.check356 = icmp ult i64 %i.axr, 16
  %n.mod.vf370 = and i64 %umax353, 1              ; 3 uses
  %n.vec371 = sub i64 %i.axr, %n.mod.vf370        ; 3 uses
  %i.aym = load i64, ptr %i.axp, align 8, !tbaa !209, !alias.scope !2460, !noalias !2455
  %broadcast.splatinsert374 = insertelement <4 x i64> poison, i64 %i.aym, i64 0
  %broadcast.splat375 = shufflevector <4 x i64> %broadcast.splatinsert374, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  %9 = add i64 %n.vec371, %i.avm                  ; 2 uses
  br i1 %min.iters.check356, label %vec.epilog.vector.body, label %vector.body360

vector.body360:                                   ; preds = %vector.main.loop.iter.check, %vector.body360
end_hunk_9
begin_hunk_10_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check356 = icmp ult i64 %i.axn, 16
  %n.mod.vf370 = and i64 %umax353, 1              ; 3 uses
  %n.vec371 = sub i64 %i.axn, %n.mod.vf370        ; 3 uses
  %i.ayi = load double, ptr %i.axl, align 8, !tbaa !561, !alias.scope !2913
  %broadcast.splatinsert374 = insertelement <4 x double> poison, double %i.ayi, i64 0
  %broadcast.splat375 = shufflevector <4 x double> %broadcast.splatinsert374, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  %9 = add i64 %n.vec371, %i.avi                  ; 2 uses
  br i1 %min.iters.check356, label %vec.epilog.vector.body, label %vector.body360

vector.body360:                                   ; preds = %vector.main.loop.iter.check, %vector.body360
end_hunk_10
begin_hunk_11_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check365 = icmp ult i64 %i.ayd, 32
  %n.mod.vf384 = and i64 %umax362, 1              ; 3 uses
  %n.vec385 = sub i64 %i.ayd, %n.mod.vf384        ; 3 uses
  %9 = load float, ptr %i.ayb, align 4, !tbaa !1051, !alias.scope !3155, !noalias !3149 ; 2 uses
  %10 = add i64 %n.vec385, %i.avq                 ; 2 uses
  br i1 %min.iters.check365, label %vec.epilog.ph383, label %vector.ph366

vector.ph366:                                     ; preds = %vector.main.loop.iter.check364
  %broadcast.splatinsert = insertelement <8 x float> poison, float %9, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body369

end_hunk_11
begin_hunk_12_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n377, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.ph383:                                 ; preds = %vector.main.loop.iter.check364
  %broadcast.splatinsert389 = insertelement <4 x float> poison, float %9, i64 0
  %broadcast.splat390 = shufflevector <4 x float> %broadcast.splatinsert389, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body386

end_hunk_12
begin_hunk_13_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n393, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJffEEEJffEEEE7iterateIJNS3_12VectorReaderIfEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i.preheader

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block376, %vector.memcheck351, %vector.scevcheck346, %iter.check379, %vec.epilog.middle.block392
  %.087.i.us.us83.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %10, %middle.block376 ], [ %i.avq, %vector.scevcheck346 ], [ %i.avq, %vector.memcheck351 ], [ %i.avq, %iter.check379 ], [ %10, %vec.epilog.middle.block392 ]
  br label %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i57.us.us82.i.i.i.i.i.i.i.i.i.i.i
end_hunk_13
begin_hunk_14_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_lEEEJSA_lEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a
  %min.iters.check356 = icmp ult i64 %i.axn, 16
  %n.mod.vf370 = and i64 %umax353, 1              ; 3 uses
  %n.vec371 = sub i64 %i.axn, %n.mod.vf370        ; 3 uses
  %i.ayi = load i64, ptr %i.axl, align 8, !tbaa !209, !alias.scope !3401, !noalias !3396
  %broadcast.splatinsert374 = insertelement <4 x i64> poison, i64 %i.ayi, i64 0
  %broadcast.splat375 = shufflevector <4 x i64> %broadcast.splatinsert374, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  %9 = add i64 %n.vec371, %i.avi                  ; 2 uses
  br i1 %min.iters.check356, label %vec.epilog.vector.body, label %vector.body360

vector.body360:                                   ; preds = %vector.main.loop.iter.check, %vector.body360
end_hunk_14
begin_hunk_15_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSA_EEEJlSA_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a
  %min.iters.check356 = icmp ult i64 %i.axn, 16
  %n.mod.vf370 = and i64 %umax353, 1              ; 3 uses
  %n.vec371 = sub i64 %i.axn, %n.mod.vf370        ; 3 uses
  %i.ayi = load i64, ptr %i.axl, align 8, !tbaa !209, !alias.scope !3647, !noalias !3642
  %broadcast.splatinsert374 = insertelement <4 x i64> poison, i64 %i.ayi, i64 0
  %broadcast.splat375 = shufflevector <4 x i64> %broadcast.splatinsert374, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  %9 = add i64 %n.vec371, %i.avi                  ; 2 uses
  br i1 %min.iters.check356, label %vec.epilog.vector.body, label %vector.body360

vector.body360:                                   ; preds = %vector.main.loop.iter.check, %vector.body360
end_hunk_15
begin_hunk_16_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vector.ph354:                                     ; preds = %vector.memcheck340
  %n.mod.vf355 = and i64 %umax351, 1              ; 2 uses
  %n.vec356 = sub i64 %i.aug, %n.mod.vf355        ; 2 uses
  %i.avb = load double, ptr %i.aue, align 8, !tbaa !561, !alias.scope !5178
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.avb, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %9 = add i64 %n.vec356, %i.asf
  br label %vector.body357

vector.body357:                                   ; preds = %vector.body357, %vector.ph354
end_hunk_16
begin_hunk_17_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vector.ph358:                                     ; preds = %vector.memcheck344
  %n.mod.vf359 = and i64 %umax355, 1              ; 2 uses
  %n.vec360 = sub i64 %i.awd, %n.mod.vf359        ; 2 uses
  %i.awy = load float, ptr %i.awb, align 4, !tbaa !1051, !alias.scope !5415, !noalias !5410
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.awy, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %9 = add i64 %n.vec360, %i.auc
  br label %vector.body361

vector.body361:                                   ; preds = %vector.body361, %vector.ph358
end_hunk_17
