inline.NumInlined: 75479
inline.NumDeleted: 20342
begin_hunk_0_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112CeilFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vector.ph328:                                     ; preds = %vector.main.loop.iter.check326
  %n.mod.vf329 = and i64 %i.vu, 12
  %n.vec330 = and i64 %i.vu, 8589934576           ; 4 uses
  %8 = add nsw i64 %n.vec330, %i.sx
  %9 = load double, ptr %i.vq, align 8, !tbaa !1890, !alias.scope !1934, !noalias !1928
  %.scalar = call double @llvm.ceil.f64(double %9)
  %i.we = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.wf = shufflevector <4 x double> %i.we, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep552 = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112CeilFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vec.epilog.ph343:                                 ; preds = %vector.main.loop.iter.check326, %vec.epilog.iter.check341
  %vec.epilog.resume.val338 = phi i64 [ %n.vec330, %vec.epilog.iter.check341 ], [ 0, %vector.main.loop.iter.check326 ]
  %n.vec345 = and i64 %i.vu, 8589934588           ; 3 uses
  %10 = add nsw i64 %n.vec345, %i.sx
  %11 = load double, ptr %i.vq, align 8, !tbaa !1890, !alias.scope !1934, !noalias !1928
  %.scalar520 = call double @llvm.ceil.f64(double %11)
  %i.wk = insertelement <4 x double> poison, double %.scalar520, i64 0
  %i.wl = shufflevector <4 x double> %i.wk, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.gep554 = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112CeilFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n352, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112CeilFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit14.i.us13.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit14.i.us13.i.i.i.i.i.i.preheader: ; preds = %vector.memcheck318, %iter.check339, %vec.epilog.iter.check341, %vec.epilog.middle.block351
  %indvars.iv.i.us12.i.i.i.i.i.i.ph = phi i64 [ %i.sx, %iter.check339 ], [ %i.sx, %vector.memcheck318 ], [ %8, %vec.epilog.iter.check341 ], [ %10, %vec.epilog.middle.block351 ] ; 3 uses
  %i.wn = trunc i64 %indvars.iv.i.us12.i.i.i.i.i.i.ph to i32 ; 2 uses
  %i.wo = sub i32 %i.st, %i.wn
  %xtraiter541 = and i32 %i.wo, 3                 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112CeilFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check293 = icmp ult i64 %i.afd, 16
  %n.mod.vf308 = and i64 %umax290, 1              ; 3 uses
  %n.vec309 = sub i64 %i.afd, %n.mod.vf308        ; 3 uses
  %12 = add i64 %n.vec309, %i.acw                 ; 2 uses
  %13 = load double, ptr %i.afb, align 8, !tbaa !1890, !alias.scope !1960, !noalias !1954
  %.scalar521 = call double @llvm.ceil.f64(double %13)
  %i.afi = insertelement <4 x double> poison, double %.scalar521, i64 0
  %i.afj = shufflevector <4 x double> %i.afi, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check293, label %vec.epilog.vector.body312.preheader, label %vector.body297.preheader
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112CeilFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n316, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112CeilFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_12VectorReaderIdEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block300, %vector.memcheck285, %iter.check303, %vec.epilog.middle.block315
  %.078.i.us77.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %12, %middle.block300 ], [ %i.acw, %vector.memcheck285 ], [ %i.acw, %iter.check303 ], [ %12, %vec.epilog.middle.block315 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112CeilFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vector.ph328:                                     ; preds = %vector.main.loop.iter.check326
  %n.mod.vf329 = and i64 %i.vu, 28
  %n.vec330 = and i64 %i.vu, 8589934560           ; 4 uses
  %8 = add nsw i64 %n.vec330, %i.sx
  %9 = load float, ptr %i.vq, align 4, !tbaa !2097, !alias.scope !2141, !noalias !2135
  %.scalar = call float @llvm.ceil.f32(float %9)
  %i.we = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.wf = shufflevector <8 x float> %i.we, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep553 = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112CeilFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vec.epilog.ph343:                                 ; preds = %vector.main.loop.iter.check326, %vec.epilog.iter.check341
  %vec.epilog.resume.val338 = phi i64 [ %n.vec330, %vec.epilog.iter.check341 ], [ 0, %vector.main.loop.iter.check326 ]
  %n.vec345 = and i64 %i.vu, 8589934588           ; 3 uses
  %10 = add nsw i64 %n.vec345, %i.sx
  %11 = load float, ptr %i.vq, align 4, !tbaa !2097, !alias.scope !2141, !noalias !2135
  %.scalar520 = call float @llvm.ceil.f32(float %11)
  %i.wk = insertelement <4 x float> poison, float %.scalar520, i64 0
  %i.wl = shufflevector <4 x float> %i.wk, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep555 = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_6
begin_hunk_7_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112CeilFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n352, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112CeilFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit15.i.us13.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit15.i.us13.i.i.i.i.i.i.preheader: ; preds = %vector.memcheck318, %iter.check339, %vec.epilog.iter.check341, %vec.epilog.middle.block351
  %indvars.iv.i.us12.i.i.i.i.i.i.ph = phi i64 [ %i.sx, %iter.check339 ], [ %i.sx, %vector.memcheck318 ], [ %8, %vec.epilog.iter.check341 ], [ %10, %vec.epilog.middle.block351 ] ; 3 uses
  %i.wn = trunc i64 %indvars.iv.i.us12.i.i.i.i.i.i.ph to i32 ; 2 uses
  %i.wo = sub i32 %i.st, %i.wn
  %xtraiter542 = and i32 %i.wo, 3                 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112CeilFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check293 = icmp ult i64 %i.afd, 32
  %n.mod.vf308 = and i64 %umax290, 1              ; 3 uses
  %n.vec309 = sub i64 %i.afd, %n.mod.vf308        ; 3 uses
  %12 = add i64 %n.vec309, %i.acw                 ; 2 uses
  %13 = load float, ptr %i.afb, align 4, !tbaa !2097, !alias.scope !2167, !noalias !2161 ; 2 uses
  br i1 %min.iters.check293, label %vec.epilog.ph307, label %vector.ph294

vector.ph294:                                     ; preds = %vector.main.loop.iter.check292
  %.scalar521 = call float @llvm.ceil.f32(float %13)
  %i.afi = insertelement <8 x float> poison, float %.scalar521, i64 0
  %i.afj = shufflevector <8 x float> %i.afi, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.acw
end_hunk_8
begin_hunk_9_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112CeilFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n301, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112CeilFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_12VectorReaderIfEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.ph307:                                 ; preds = %vector.main.loop.iter.check292
  %.scalar522 = call float @llvm.ceil.f32(float %13)
  %i.afo = insertelement <4 x float> poison, float %.scalar522, i64 0
  %i.afp = shufflevector <4 x float> %i.afo, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep551 = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.acw
end_hunk_9
begin_hunk_10_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112CeilFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n316, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112CeilFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_12VectorReaderIfEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block300, %vector.memcheck285, %iter.check303, %vec.epilog.middle.block315
  %.080.i.us77.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %12, %middle.block300 ], [ %i.acw, %vector.memcheck285 ], [ %i.acw, %iter.check303 ], [ %12, %vec.epilog.middle.block315 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i
end_hunk_10
begin_hunk_11_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113FloorFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vector.ph328:                                     ; preds = %vector.main.loop.iter.check326
  %n.mod.vf329 = and i64 %i.vu, 12
  %n.vec330 = and i64 %i.vu, 8589934576           ; 4 uses
  %8 = add nsw i64 %n.vec330, %i.sx
  %9 = load double, ptr %i.vq, align 8, !tbaa !1890, !alias.scope !2874, !noalias !2868
  %.scalar = call double @llvm.floor.f64(double %9)
  %i.we = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.wf = shufflevector <4 x double> %i.we, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep552 = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_11
begin_hunk_12_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113FloorFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vec.epilog.ph343:                                 ; preds = %vector.main.loop.iter.check326, %vec.epilog.iter.check341
  %vec.epilog.resume.val338 = phi i64 [ %n.vec330, %vec.epilog.iter.check341 ], [ 0, %vector.main.loop.iter.check326 ]
  %n.vec345 = and i64 %i.vu, 8589934588           ; 3 uses
  %10 = add nsw i64 %n.vec345, %i.sx
  %11 = load double, ptr %i.vq, align 8, !tbaa !1890, !alias.scope !2874, !noalias !2868
  %.scalar520 = call double @llvm.floor.f64(double %11)
  %i.wk = insertelement <4 x double> poison, double %.scalar520, i64 0
  %i.wl = shufflevector <4 x double> %i.wk, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.gep554 = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_12
begin_hunk_13_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113FloorFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n352, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113FloorFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit14.i.us13.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit14.i.us13.i.i.i.i.i.i.preheader: ; preds = %vector.memcheck318, %iter.check339, %vec.epilog.iter.check341, %vec.epilog.middle.block351
  %indvars.iv.i.us12.i.i.i.i.i.i.ph = phi i64 [ %i.sx, %iter.check339 ], [ %i.sx, %vector.memcheck318 ], [ %8, %vec.epilog.iter.check341 ], [ %10, %vec.epilog.middle.block351 ] ; 3 uses
  %i.wn = trunc i64 %indvars.iv.i.us12.i.i.i.i.i.i.ph to i32 ; 2 uses
  %i.wo = sub i32 %i.st, %i.wn
  %xtraiter541 = and i32 %i.wo, 3                 ; 2 uses
end_hunk_13
begin_hunk_14_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113FloorFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check293 = icmp ult i64 %i.afd, 16
  %n.mod.vf308 = and i64 %umax290, 1              ; 3 uses
  %n.vec309 = sub i64 %i.afd, %n.mod.vf308        ; 3 uses
  %12 = add i64 %n.vec309, %i.acw                 ; 2 uses
  %13 = load double, ptr %i.afb, align 8, !tbaa !1890, !alias.scope !2900, !noalias !2894
  %.scalar521 = call double @llvm.floor.f64(double %13)
  %i.afi = insertelement <4 x double> poison, double %.scalar521, i64 0
  %i.afj = shufflevector <4 x double> %i.afi, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check293, label %vec.epilog.vector.body312.preheader, label %vector.body297.preheader
end_hunk_14
begin_hunk_15_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113FloorFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n316, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113FloorFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_12VectorReaderIdEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block300, %vector.memcheck285, %iter.check303, %vec.epilog.middle.block315
  %.078.i.us77.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %12, %middle.block300 ], [ %i.acw, %vector.memcheck285 ], [ %i.acw, %iter.check303 ], [ %12, %vec.epilog.middle.block315 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i
end_hunk_15
begin_hunk_16_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113FloorFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vector.ph328:                                     ; preds = %vector.main.loop.iter.check326
  %n.mod.vf329 = and i64 %i.vu, 28
  %n.vec330 = and i64 %i.vu, 8589934560           ; 4 uses
  %8 = add nsw i64 %n.vec330, %i.sx
  %9 = load float, ptr %i.vq, align 4, !tbaa !2097, !alias.scope !3028, !noalias !3022
  %.scalar = call float @llvm.floor.f32(float %9)
  %i.we = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.wf = shufflevector <8 x float> %i.we, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep553 = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_16
begin_hunk_17_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113FloorFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vec.epilog.ph343:                                 ; preds = %vector.main.loop.iter.check326, %vec.epilog.iter.check341
  %vec.epilog.resume.val338 = phi i64 [ %n.vec330, %vec.epilog.iter.check341 ], [ 0, %vector.main.loop.iter.check326 ]
  %n.vec345 = and i64 %i.vu, 8589934588           ; 3 uses
  %10 = add nsw i64 %n.vec345, %i.sx
  %11 = load float, ptr %i.vq, align 4, !tbaa !2097, !alias.scope !3028, !noalias !3022
  %.scalar520 = call float @llvm.floor.f32(float %11)
  %i.wk = insertelement <4 x float> poison, float %.scalar520, i64 0
  %i.wl = shufflevector <4 x float> %i.wk, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep555 = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_17
begin_hunk_18_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113FloorFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n352, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113FloorFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit15.i.us13.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit15.i.us13.i.i.i.i.i.i.preheader: ; preds = %vector.memcheck318, %iter.check339, %vec.epilog.iter.check341, %vec.epilog.middle.block351
  %indvars.iv.i.us12.i.i.i.i.i.i.ph = phi i64 [ %i.sx, %iter.check339 ], [ %i.sx, %vector.memcheck318 ], [ %8, %vec.epilog.iter.check341 ], [ %10, %vec.epilog.middle.block351 ] ; 3 uses
  %i.wn = trunc i64 %indvars.iv.i.us12.i.i.i.i.i.i.ph to i32 ; 2 uses
  %i.wo = sub i32 %i.st, %i.wn
  %xtraiter542 = and i32 %i.wo, 3                 ; 2 uses
end_hunk_18
begin_hunk_19_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113FloorFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check293 = icmp ult i64 %i.afd, 32
  %n.mod.vf308 = and i64 %umax290, 1              ; 3 uses
  %n.vec309 = sub i64 %i.afd, %n.mod.vf308        ; 3 uses
  %12 = add i64 %n.vec309, %i.acw                 ; 2 uses
  %13 = load float, ptr %i.afb, align 4, !tbaa !2097, !alias.scope !3054, !noalias !3048 ; 2 uses
  br i1 %min.iters.check293, label %vec.epilog.ph307, label %vector.ph294

vector.ph294:                                     ; preds = %vector.main.loop.iter.check292
  %.scalar521 = call float @llvm.floor.f32(float %13)
  %i.afi = insertelement <8 x float> poison, float %.scalar521, i64 0
  %i.afj = shufflevector <8 x float> %i.afi, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.acw
end_hunk_19
begin_hunk_20_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113FloorFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n301, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113FloorFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_12VectorReaderIfEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.ph307:                                 ; preds = %vector.main.loop.iter.check292
  %.scalar522 = call float @llvm.floor.f32(float %13)
  %i.afo = insertelement <4 x float> poison, float %.scalar522, i64 0
  %i.afp = shufflevector <4 x float> %i.afo, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep551 = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.acw
end_hunk_20
begin_hunk_21_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113FloorFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n316, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113FloorFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_12VectorReaderIfEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block300, %vector.memcheck285, %iter.check303, %vec.epilog.middle.block315
  %.080.i.us77.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %12, %middle.block300 ], [ %i.acw, %vector.memcheck285 ], [ %i.acw, %iter.check303 ], [ %12, %vec.epilog.middle.block315 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i
end_hunk_21
begin_hunk_22_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check285 = icmp ult i64 %i.aai, 16
  %n.mod.vf300 = and i64 %umax282, 1              ; 3 uses
  %n.vec301 = sub i64 %i.aai, %n.mod.vf300        ; 3 uses
  %8 = add i64 %n.vec301, %i.yb                   ; 2 uses
  %9 = load double, ptr %i.aag, align 8, !tbaa !1890, !alias.scope !4195, !noalias !4189 ; 2 uses
  br i1 %min.iters.check285, label %vec.epilog.ph299, label %vector.ph286

vector.ph286:                                     ; preds = %vector.main.loop.iter.check284
  %.scalar = call double @llvm.fabs.f64(double %9)
  %i.aan = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.aao = shufflevector <4 x double> %i.aan, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.yb
end_hunk_22
begin_hunk_23_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n293, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_12VectorReaderIdEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.ph299:                                 ; preds = %vector.main.loop.iter.check284
  %.scalar439 = call double @llvm.fabs.f64(double %9)
  %i.aat = insertelement <2 x double> poison, double %.scalar439, i64 0
  %i.aau = shufflevector <2 x double> %i.aat, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.gep457 = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.yb
end_hunk_23
begin_hunk_24_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n308, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_12VectorReaderIdEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block292, %vector.memcheck277, %iter.check295, %vec.epilog.middle.block307
  %.080.i.us77.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %8, %middle.block292 ], [ %i.yb, %vector.memcheck277 ], [ %i.yb, %iter.check295 ], [ %8, %vec.epilog.middle.block307 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i
end_hunk_24
begin_hunk_25_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check285 = icmp ult i64 %i.aai, 32
  %n.mod.vf300 = and i64 %umax282, 1              ; 3 uses
  %n.vec301 = sub i64 %i.aai, %n.mod.vf300        ; 3 uses
  %8 = add i64 %n.vec301, %i.yb                   ; 2 uses
  %9 = load float, ptr %i.aag, align 4, !tbaa !2097, !alias.scope !4337, !noalias !4331 ; 2 uses
  br i1 %min.iters.check285, label %vec.epilog.ph299, label %vector.ph286

vector.ph286:                                     ; preds = %vector.main.loop.iter.check284
  %.scalar = call float @llvm.fabs.f32(float %9)
  %i.aan = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.aao = shufflevector <8 x float> %i.aan, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.yb
end_hunk_25
begin_hunk_26_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n293, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_12VectorReaderIfEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.ph299:                                 ; preds = %vector.main.loop.iter.check284
  %.scalar439 = call float @llvm.fabs.f32(float %9)
  %i.aat = insertelement <4 x float> poison, float %.scalar439, i64 0
  %i.aau = shufflevector <4 x float> %i.aat, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep457 = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.yb
end_hunk_26
begin_hunk_27_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n308, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_111AbsFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_12VectorReaderIfEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block292, %vector.memcheck277, %iter.check295, %vec.epilog.middle.block307
  %.080.i.us77.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %8, %middle.block292 ], [ %i.yb, %vector.memcheck277 ], [ %i.yb, %iter.check295 ], [ %8, %vec.epilog.middle.block307 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i
end_hunk_27
begin_hunk_28_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISP_EERKSN_IKNS0_4TypeEERNS1_7EvalCtxERSP_:bb.a
  %min.iters.check287 = icmp ult i64 %i.zv, 16
  %n.mod.vf302 = and i64 %umax284, 1              ; 3 uses
  %n.vec303 = sub i64 %i.zv, %n.mod.vf302         ; 3 uses
  %8 = add i64 %n.vec303, %i.xo                   ; 2 uses
  %9 = load i64, ptr %i.zt, align 8, !tbaa !366, !alias.scope !4651, !noalias !4645
  %.scalar = call i64 @llvm.abs.i64(i64 %9, i1 true)
  %i.aaa = insertelement <4 x i64> poison, i64 %.scalar, i64 0
  %i.aab = shufflevector <4 x i64> %i.aaa, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check287, label %vec.epilog.vector.body306.preheader, label %vector.body291.preheader
end_hunk_28
begin_hunk_29_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISP_EERKSN_IKNS0_4TypeEERNS1_7EvalCtxERSP_:bb.a
  br i1 %cmp.n310, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_118DecimalAbsFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEENS0_15ConstantCheckerIJSI_EEEJSI_EEEE7iterateIJNS3_12VectorReaderISI_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block294, %vector.memcheck279, %iter.check297, %vec.epilog.middle.block309
  %.079.i.us77.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %8, %middle.block294 ], [ %i.xo, %vector.memcheck279 ], [ %i.xo, %iter.check297 ], [ %8, %vec.epilog.middle.block309 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i
end_hunk_29
begin_hunk_30_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vector.ph328:                                     ; preds = %vector.main.loop.iter.check326
  %n.mod.vf329 = and i64 %i.vu, 12
  %n.vec330 = and i64 %i.vu, 8589934576           ; 4 uses
  %8 = add nsw i64 %n.vec330, %i.sx
  %9 = load double, ptr %i.vq, align 8, !tbaa !1890, !alias.scope !4779, !noalias !4773
  %.scalar = fneg double %9
  %i.we = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.wf = shufflevector <4 x double> %i.we, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep552 = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_30
begin_hunk_31_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vec.epilog.ph343:                                 ; preds = %vector.main.loop.iter.check326, %vec.epilog.iter.check341
  %vec.epilog.resume.val338 = phi i64 [ %n.vec330, %vec.epilog.iter.check341 ], [ 0, %vector.main.loop.iter.check326 ]
  %n.vec345 = and i64 %i.vu, 8589934588           ; 3 uses
  %10 = add nsw i64 %n.vec345, %i.sx
  %11 = load double, ptr %i.vq, align 8, !tbaa !1890, !alias.scope !4779, !noalias !4773
  %.scalar520 = fneg double %11
  %i.wk = insertelement <4 x double> poison, double %.scalar520, i64 0
  %i.wl = shufflevector <4 x double> %i.wk, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.gep554 = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_31
begin_hunk_32_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n352, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit15.i.us13.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit15.i.us13.i.i.i.i.i.i.preheader: ; preds = %vector.memcheck318, %iter.check339, %vec.epilog.iter.check341, %vec.epilog.middle.block351
  %indvars.iv.i.us12.i.i.i.i.i.i.ph = phi i64 [ %i.sx, %iter.check339 ], [ %i.sx, %vector.memcheck318 ], [ %8, %vec.epilog.iter.check341 ], [ %10, %vec.epilog.middle.block351 ] ; 3 uses
  %i.wn = trunc i64 %indvars.iv.i.us12.i.i.i.i.i.i.ph to i32 ; 2 uses
  %i.wo = sub i32 %i.st, %i.wn
  %xtraiter541 = and i32 %i.wo, 3                 ; 2 uses
end_hunk_32
begin_hunk_33_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check293 = icmp ult i64 %i.afd, 16
  %n.mod.vf308 = and i64 %umax290, 1              ; 3 uses
  %n.vec309 = sub i64 %i.afd, %n.mod.vf308        ; 3 uses
  %12 = add i64 %n.vec309, %i.acw                 ; 2 uses
  %13 = load double, ptr %i.afb, align 8, !tbaa !1890, !alias.scope !4805, !noalias !4799
  %.scalar521 = fneg double %13
  %i.afi = insertelement <4 x double> poison, double %.scalar521, i64 0
  %i.afj = shufflevector <4 x double> %i.afi, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check293, label %vec.epilog.vector.body312.preheader, label %vector.body297.preheader
end_hunk_33
begin_hunk_34_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n316, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_12VectorReaderIdEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block300, %vector.memcheck285, %iter.check303, %vec.epilog.middle.block315
  %.080.i.us77.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %12, %middle.block300 ], [ %i.acw, %vector.memcheck285 ], [ %i.acw, %iter.check303 ], [ %12, %vec.epilog.middle.block315 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i
end_hunk_34
begin_hunk_35_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vector.ph328:                                     ; preds = %vector.main.loop.iter.check326
  %n.mod.vf329 = and i64 %i.vu, 28
  %n.vec330 = and i64 %i.vu, 8589934560           ; 4 uses
  %8 = add nsw i64 %n.vec330, %i.sx
  %9 = load float, ptr %i.vq, align 4, !tbaa !2097, !alias.scope !4933, !noalias !4927
  %.scalar = fneg float %9
  %i.we = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.wf = shufflevector <8 x float> %i.we, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep553 = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_35
begin_hunk_36_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vec.epilog.ph343:                                 ; preds = %vector.main.loop.iter.check326, %vec.epilog.iter.check341
  %vec.epilog.resume.val338 = phi i64 [ %n.vec330, %vec.epilog.iter.check341 ], [ 0, %vector.main.loop.iter.check326 ]
  %n.vec345 = and i64 %i.vu, 8589934588           ; 3 uses
  %10 = add nsw i64 %n.vec345, %i.sx
  %11 = load float, ptr %i.vq, align 4, !tbaa !2097, !alias.scope !4933, !noalias !4927
  %.scalar520 = fneg float %11
  %i.wk = insertelement <4 x float> poison, float %.scalar520, i64 0
  %i.wl = shufflevector <4 x float> %i.wk, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep555 = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_36
begin_hunk_37_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n352, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit15.i.us13.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit15.i.us13.i.i.i.i.i.i.preheader: ; preds = %vector.memcheck318, %iter.check339, %vec.epilog.iter.check341, %vec.epilog.middle.block351
  %indvars.iv.i.us12.i.i.i.i.i.i.ph = phi i64 [ %i.sx, %iter.check339 ], [ %i.sx, %vector.memcheck318 ], [ %8, %vec.epilog.iter.check341 ], [ %10, %vec.epilog.middle.block351 ] ; 3 uses
  %i.wn = trunc i64 %indvars.iv.i.us12.i.i.i.i.i.i.ph to i32 ; 2 uses
  %i.wo = sub i32 %i.st, %i.wn
  %xtraiter542 = and i32 %i.wo, 3                 ; 2 uses
end_hunk_37
begin_hunk_38_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check293 = icmp ult i64 %i.afd, 32
  %n.mod.vf308 = and i64 %umax290, 1              ; 3 uses
  %n.vec309 = sub i64 %i.afd, %n.mod.vf308        ; 3 uses
  %12 = add i64 %n.vec309, %i.acw                 ; 2 uses
  %13 = load float, ptr %i.afb, align 4, !tbaa !2097, !alias.scope !4959, !noalias !4953 ; 2 uses
  br i1 %min.iters.check293, label %vec.epilog.ph307, label %vector.ph294

vector.ph294:                                     ; preds = %vector.main.loop.iter.check292
  %.scalar521 = fneg float %13
  %i.afi = insertelement <8 x float> poison, float %.scalar521, i64 0
  %i.afj = shufflevector <8 x float> %i.afi, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.acw
end_hunk_38
begin_hunk_39_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n301, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_12VectorReaderIfEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.ph307:                                 ; preds = %vector.main.loop.iter.check292
  %.scalar522 = fneg float %13
  %i.afo = insertelement <4 x float> poison, float %.scalar522, i64 0
  %i.afp = shufflevector <4 x float> %i.afo, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep551 = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.acw
end_hunk_39
begin_hunk_40_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n316, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_12VectorReaderIfEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block300, %vector.memcheck285, %iter.check303, %vec.epilog.middle.block315
  %.080.i.us77.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %12, %middle.block300 ], [ %i.acw, %vector.memcheck285 ], [ %i.acw, %iter.check303 ], [ %12, %vec.epilog.middle.block315 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i
end_hunk_40
begin_hunk_41_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISP_EERKSN_IKNS0_4TypeEERNS1_7EvalCtxERSP_:bb.a
vector.ph328:                                     ; preds = %vector.main.loop.iter.check326
  %n.mod.vf329 = and i64 %i.vu, 12
  %n.vec330 = and i64 %i.vu, 8589934576           ; 4 uses
  %8 = add nsw i64 %n.vec330, %i.sx
  %9 = load i64, ptr %i.vq, align 8, !tbaa !366, !alias.scope !5192, !noalias !5186
  %i.we = sub nsw i64 0, %9
  %broadcast.splatinsert333 = insertelement <4 x i64> poison, i64 %i.we, i64 0
  %broadcast.splat334 = shufflevector <4 x i64> %broadcast.splatinsert333, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep550 = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_41
begin_hunk_42_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISP_EERKSN_IKNS0_4TypeEERNS1_7EvalCtxERSP_:bb.a
vec.epilog.ph343:                                 ; preds = %vector.main.loop.iter.check326, %vec.epilog.iter.check341
  %vec.epilog.resume.val338 = phi i64 [ %n.vec330, %vec.epilog.iter.check341 ], [ 0, %vector.main.loop.iter.check326 ]
  %n.vec345 = and i64 %i.vu, 8589934588           ; 3 uses
  %10 = add nsw i64 %n.vec345, %i.sx
  %11 = load i64, ptr %i.vq, align 8, !tbaa !366, !alias.scope !5192, !noalias !5186
  %i.wj = sub nsw i64 0, %11
  %broadcast.splatinsert348 = insertelement <4 x i64> poison, i64 %i.wj, i64 0
  %broadcast.splat349 = shufflevector <4 x i64> %broadcast.splatinsert348, <4 x i64> poison, <4 x i32> zeroinitializer
  %invariant.gep552 = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_42
begin_hunk_43_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISP_EERKSN_IKNS0_4TypeEERNS1_7EvalCtxERSP_:bb.a
  br i1 %cmp.n352, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSI_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISP_EEDpRT0_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit15.i.us13.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit15.i.us13.i.i.i.i.i.i.preheader: ; preds = %vector.memcheck318, %iter.check339, %vec.epilog.iter.check341, %vec.epilog.middle.block351
  %indvars.iv.i.us12.i.i.i.i.i.i.ph = phi i64 [ %i.sx, %iter.check339 ], [ %i.sx, %vector.memcheck318 ], [ %8, %vec.epilog.iter.check341 ], [ %10, %vec.epilog.middle.block351 ] ; 3 uses
  %i.wl = trunc i64 %indvars.iv.i.us12.i.i.i.i.i.i.ph to i32 ; 2 uses
  %i.wm = sub i32 %i.st, %i.wl
  %xtraiter539 = and i32 %i.wm, 3                 ; 2 uses
end_hunk_43
begin_hunk_44_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISP_EERKSN_IKNS0_4TypeEERNS1_7EvalCtxERSP_:bb.a
  %min.iters.check293 = icmp ult i64 %i.afb, 16
  %n.mod.vf308 = and i64 %umax290, 1              ; 3 uses
  %n.vec309 = sub i64 %i.afb, %n.mod.vf308        ; 3 uses
  %12 = add i64 %n.vec309, %i.acu                 ; 2 uses
  %13 = load i64, ptr %i.aez, align 8, !tbaa !366, !alias.scope !5218, !noalias !5212
  %i.afg = sub nsw i64 0, %13
  %broadcast.splatinsert312 = insertelement <4 x i64> poison, i64 %i.afg, i64 0
  %broadcast.splat313 = shufflevector <4 x i64> %broadcast.splatinsert312, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check293, label %vec.epilog.vector.body310.preheader, label %vector.body297.preheader
end_hunk_44
begin_hunk_45_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_EEEJSE_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISP_EERKSN_IKNS0_4TypeEERNS1_7EvalCtxERSP_:bb.a
  br i1 %cmp.n316, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114NegateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEENS0_15ConstantCheckerIJSI_EEEJSI_EEEE7iterateIJNS3_12VectorReaderISI_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block300, %vector.memcheck285, %iter.check303, %vec.epilog.middle.block315
  %.081.i.us77.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %12, %middle.block300 ], [ %i.acu, %vector.memcheck285 ], [ %i.acu, %iter.check303 ], [ %12, %vec.epilog.middle.block315 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit37.i.us78.i.i.i.i.i.i.i.i.i.i
end_hunk_45
begin_hunk_46_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115RadiansFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vector.ph330:                                     ; preds = %vector.main.loop.iter.check328
  %n.mod.vf331 = and i64 %i.vq, 12
  %n.vec332 = and i64 %i.vq, 8589934576           ; 4 uses
  %8 = add nsw i64 %n.vec332, %i.st
  %9 = load double, ptr %i.vm, align 8, !tbaa !1890, !alias.scope !5346, !noalias !5340
  %i.wa = fmul double %9, f0x3F91DF46A2529D39
  %broadcast.splatinsert335 = insertelement <4 x double> poison, double %i.wa, i64 0
  %broadcast.splat336 = shufflevector <4 x double> %broadcast.splatinsert335, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep552 = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.st
end_hunk_46
begin_hunk_47_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115RadiansFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vec.epilog.ph345:                                 ; preds = %vector.main.loop.iter.check328, %vec.epilog.iter.check343
  %vec.epilog.resume.val340 = phi i64 [ %n.vec332, %vec.epilog.iter.check343 ], [ 0, %vector.main.loop.iter.check328 ]
  %n.vec347 = and i64 %i.vq, 8589934588           ; 3 uses
  %10 = add nsw i64 %n.vec347, %i.st
  %11 = load double, ptr %i.vm, align 8, !tbaa !1890, !alias.scope !5346, !noalias !5340
  %i.wf = fmul double %11, f0x3F91DF46A2529D39
  %broadcast.splatinsert350 = insertelement <4 x double> poison, double %i.wf, i64 0
  %broadcast.splat351 = shufflevector <4 x double> %broadcast.splatinsert350, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.gep554 = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.st
end_hunk_47
begin_hunk_48_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115RadiansFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n354, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115RadiansFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit14.i.us13.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit14.i.us13.i.i.i.i.i.i.preheader: ; preds = %vector.memcheck320, %iter.check341, %vec.epilog.iter.check343, %vec.epilog.middle.block353
  %indvars.iv.i.us12.i.i.i.i.i.i.ph = phi i64 [ %i.st, %iter.check341 ], [ %i.st, %vector.memcheck320 ], [ %8, %vec.epilog.iter.check343 ], [ %10, %vec.epilog.middle.block353 ] ; 3 uses
  %i.wh = trunc i64 %indvars.iv.i.us12.i.i.i.i.i.i.ph to i32 ; 2 uses
  %i.wi = sub i32 %i.sp, %i.wh
  %xtraiter541 = and i32 %i.wi, 3                 ; 2 uses
end_hunk_48
begin_hunk_49_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115RadiansFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check295 = icmp ult i64 %i.aex, 16
  %n.mod.vf310 = and i64 %umax292, 1              ; 3 uses
  %n.vec311 = sub i64 %i.aex, %n.mod.vf310        ; 3 uses
  %12 = add i64 %n.vec311, %i.acq                 ; 2 uses
  %13 = load double, ptr %i.aev, align 8, !tbaa !1890, !alias.scope !5372, !noalias !5366
  %i.afc = fmul double %13, f0x3F91DF46A2529D39
  %broadcast.splatinsert314 = insertelement <4 x double> poison, double %i.afc, i64 0
  %broadcast.splat315 = shufflevector <4 x double> %broadcast.splatinsert314, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check295, label %vec.epilog.vector.body312.preheader, label %vector.body299.preheader
end_hunk_49
begin_hunk_50_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115RadiansFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n318, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115RadiansFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_12VectorReaderIdEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block302, %vector.memcheck287, %iter.check305, %vec.epilog.middle.block317
  %.078.i.us77.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %12, %middle.block302 ], [ %i.acq, %vector.memcheck287 ], [ %i.acq, %iter.check305 ], [ %12, %vec.epilog.middle.block317 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i
end_hunk_50
begin_hunk_51_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DegreesFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vector.ph330:                                     ; preds = %vector.main.loop.iter.check328
  %n.mod.vf331 = and i64 %i.vq, 12
  %n.vec332 = and i64 %i.vq, 8589934576           ; 4 uses
  %8 = add nsw i64 %n.vec332, %i.st
  %9 = load double, ptr %i.vm, align 8, !tbaa !1890, !alias.scope !5500, !noalias !5494
  %i.wa = fmul double %9, f0x404CA5DC1A63C1F8
  %broadcast.splatinsert335 = insertelement <4 x double> poison, double %i.wa, i64 0
  %broadcast.splat336 = shufflevector <4 x double> %broadcast.splatinsert335, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep552 = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.st
end_hunk_51
begin_hunk_52_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DegreesFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vec.epilog.ph345:                                 ; preds = %vector.main.loop.iter.check328, %vec.epilog.iter.check343
  %vec.epilog.resume.val340 = phi i64 [ %n.vec332, %vec.epilog.iter.check343 ], [ 0, %vector.main.loop.iter.check328 ]
  %n.vec347 = and i64 %i.vq, 8589934588           ; 3 uses
  %10 = add nsw i64 %n.vec347, %i.st
  %11 = load double, ptr %i.vm, align 8, !tbaa !1890, !alias.scope !5500, !noalias !5494
  %i.wf = fmul double %11, f0x404CA5DC1A63C1F8
  %broadcast.splatinsert350 = insertelement <4 x double> poison, double %i.wf, i64 0
  %broadcast.splat351 = shufflevector <4 x double> %broadcast.splatinsert350, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.gep554 = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.st
end_hunk_52
begin_hunk_53_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DegreesFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n354, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DegreesFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit14.i.us13.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit14.i.us13.i.i.i.i.i.i.preheader: ; preds = %vector.memcheck320, %iter.check341, %vec.epilog.iter.check343, %vec.epilog.middle.block353
  %indvars.iv.i.us12.i.i.i.i.i.i.ph = phi i64 [ %i.st, %iter.check341 ], [ %i.st, %vector.memcheck320 ], [ %8, %vec.epilog.iter.check343 ], [ %10, %vec.epilog.middle.block353 ] ; 3 uses
  %i.wh = trunc i64 %indvars.iv.i.us12.i.i.i.i.i.i.ph to i32 ; 2 uses
  %i.wi = sub i32 %i.sp, %i.wh
  %xtraiter541 = and i32 %i.wi, 3                 ; 2 uses
end_hunk_53
begin_hunk_54_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DegreesFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check295 = icmp ult i64 %i.aex, 16
  %n.mod.vf310 = and i64 %umax292, 1              ; 3 uses
  %n.vec311 = sub i64 %i.aex, %n.mod.vf310        ; 3 uses
  %12 = add i64 %n.vec311, %i.acq                 ; 2 uses
  %13 = load double, ptr %i.aev, align 8, !tbaa !1890, !alias.scope !5526, !noalias !5520
  %i.afc = fmul double %13, f0x404CA5DC1A63C1F8
  %broadcast.splatinsert314 = insertelement <4 x double> poison, double %i.afc, i64 0
  %broadcast.splat315 = shufflevector <4 x double> %broadcast.splatinsert314, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check295, label %vec.epilog.vector.body312.preheader, label %vector.body299.preheader
end_hunk_54
begin_hunk_55_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DegreesFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n318, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DegreesFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_12VectorReaderIdEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block302, %vector.memcheck287, %iter.check305, %vec.epilog.middle.block317
  %.078.i.us77.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %12, %middle.block302 ], [ %i.acq, %vector.memcheck287 ], [ %i.acq, %iter.check305 ], [ %12, %vec.epilog.middle.block317 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i
end_hunk_55
begin_hunk_56_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check281 = icmp ult i64 %i.ade, 16
  %n.mod.vf296 = and i64 %umax278, 1              ; 3 uses
  %n.vec297 = sub i64 %i.ade, %n.mod.vf296        ; 3 uses
  %8 = add i64 %n.vec297, %i.aag                  ; 2 uses
  %9 = load double, ptr %i.adc, align 8, !tbaa !1890, !alias.scope !6204, !noalias !6198 ; 2 uses
  br i1 %min.iters.check281, label %vec.epilog.ph295, label %vector.ph282

vector.ph282:                                     ; preds = %vector.main.loop.iter.check280
  %broadcast.splatinsert = insertelement <4 x double> poison, double %9, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.adj = call <4 x double> @llvm.fabs.v4f64(<4 x double> %broadcast.splat)
  %i.adk = fcmp one <4 x double> %i.adj, splat (double +inf)
end_hunk_56
begin_hunk_57_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n289, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_12VectorReaderIdEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us82.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.ph295:                                 ; preds = %vector.main.loop.iter.check280
  %broadcast.splatinsert298 = insertelement <2 x double> poison, double %9, i64 0
  %broadcast.splat299 = shufflevector <2 x double> %broadcast.splatinsert298, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.adr = call <2 x double> @llvm.fabs.v2f64(<2 x double> %broadcast.splat299)
  %i.ads = fcmp one <2 x double> %i.adr, splat (double +inf)
end_hunk_57
begin_hunk_58_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n304, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_12VectorReaderIdEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us82.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.us82.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block288, %vector.memcheck273, %iter.check291, %vec.epilog.middle.block303
  %.090.i.us81.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %8, %middle.block288 ], [ %i.aag, %vector.memcheck273 ], [ %i.aag, %iter.check291 ], [ %8, %vec.epilog.middle.block303 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us82.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit35.i.us82.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.us82.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i.us82.i.i.i.i.i.i.i.i.i.i
end_hunk_58
begin_hunk_59_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check281 = icmp ult i64 %i.ade, 32
  %n.mod.vf296 = and i64 %umax278, 1              ; 3 uses
  %n.vec297 = sub i64 %i.ade, %n.mod.vf296        ; 3 uses
  %8 = add i64 %n.vec297, %i.aag                  ; 2 uses
  %9 = load float, ptr %i.adc, align 4, !tbaa !2097, !alias.scope !6345, !noalias !6339 ; 2 uses
  br i1 %min.iters.check281, label %vec.epilog.ph295, label %vector.ph282

vector.ph282:                                     ; preds = %vector.main.loop.iter.check280
  %broadcast.splatinsert = insertelement <8 x float> poison, float %9, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.adj = call <8 x float> @llvm.fabs.v8f32(<8 x float> %broadcast.splat)
  %i.adk = fcmp one <8 x float> %i.adj, splat (float +inf)
end_hunk_59
begin_hunk_60_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n289, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_12VectorReaderIfEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us82.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.ph295:                                 ; preds = %vector.main.loop.iter.check280
  %broadcast.splatinsert298 = insertelement <4 x float> poison, float %9, i64 0
  %broadcast.splat299 = shufflevector <4 x float> %broadcast.splatinsert298, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.adr = call <4 x float> @llvm.fabs.v4f32(<4 x float> %broadcast.splat299)
  %i.ads = fcmp one <4 x float> %i.adr, splat (float +inf)
end_hunk_60
begin_hunk_61_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n304, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_12VectorReaderIfEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us82.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.us82.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block288, %vector.memcheck273, %iter.check291, %vec.epilog.middle.block303
  %.094.i.us81.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %8, %middle.block288 ], [ %i.aag, %vector.memcheck273 ], [ %i.aag, %iter.check291 ], [ %8, %vec.epilog.middle.block303 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us82.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit35.i.us82.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.us82.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i.us82.i.i.i.i.i.i.i.i.i.i
end_hunk_61
begin_hunk_62_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112SignFunctionINS1_10VectorExecEEES8_sNS0_15ConstantCheckerIJsEEEJsEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check280 = icmp ult i64 %i.zv, 64
  %n.mod.vf295 = and i64 %umax277, 1              ; 3 uses
  %n.vec296 = sub i64 %i.zv, %n.mod.vf295         ; 3 uses
  %8 = add i64 %n.vec296, %i.xo                   ; 2 uses
  %9 = load i16, ptr %i.zt, align 2, !tbaa !1306, !alias.scope !12626, !noalias !12620 ; 2 uses
  br i1 %min.iters.check280, label %vec.epilog.ph294, label %vector.ph281

vector.ph281:                                     ; preds = %vector.main.loop.iter.check279
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %9, i64 0
  %i.aaa = call <16 x i16> @llvm.scmp.v16i16.v16i16(<16 x i16> %broadcast.splatinsert, <16 x i16> <i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.aab = shufflevector <16 x i16> %i.aaa, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %.sink.i.i, i64 %i.xo
end_hunk_62
begin_hunk_63_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112SignFunctionINS1_10VectorExecEEES8_sNS0_15ConstantCheckerIJsEEEJsEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n288, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112SignFunctionINS3_10VectorExecEEESC_sNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.ph294:                                 ; preds = %vector.main.loop.iter.check279
  %broadcast.splatinsert297 = insertelement <4 x i16> poison, i16 %9, i64 0
  %i.aag = call <4 x i16> @llvm.scmp.v4i16.v4i16(<4 x i16> %broadcast.splatinsert297, <4 x i16> <i16 0, i16 poison, i16 poison, i16 poison>)
  %i.aah = shufflevector <4 x i16> %i.aag, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep449 = getelementptr [2 x i8], ptr %.sink.i.i, i64 %i.xo
end_hunk_63
begin_hunk_64_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112SignFunctionINS1_10VectorExecEEES8_sNS0_15ConstantCheckerIJsEEEJsEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n303, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112SignFunctionINS3_10VectorExecEEESC_sNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block287, %vector.memcheck272, %iter.check290, %vec.epilog.middle.block302
  %.079.i.us77.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %8, %middle.block287 ], [ %i.xo, %vector.memcheck272 ], [ %i.xo, %iter.check290 ], [ %8, %vec.epilog.middle.block302 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i
end_hunk_64
begin_hunk_65_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112SignFunctionINS1_10VectorExecEEES8_lNS0_15ConstantCheckerIJlEEEJlEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check280 = icmp ult i64 %i.zv, 16
  %n.mod.vf295 = and i64 %umax277, 1              ; 3 uses
  %n.vec296 = sub i64 %i.zv, %n.mod.vf295         ; 3 uses
  %8 = add i64 %n.vec296, %i.xo                   ; 2 uses
  %9 = load i64, ptr %i.zt, align 8, !tbaa !366, !alias.scope !12900, !noalias !12894 ; 2 uses
  br i1 %min.iters.check280, label %vec.epilog.ph294, label %vector.ph281

vector.ph281:                                     ; preds = %vector.main.loop.iter.check279
  %.scalar = call i64 @llvm.scmp.i64.i64(i64 %9, i64 0)
  %i.aaa = insertelement <4 x i64> poison, i64 %.scalar, i64 0
  %i.aab = shufflevector <4 x i64> %i.aaa, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.xo
end_hunk_65
begin_hunk_66_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112SignFunctionINS1_10VectorExecEEES8_lNS0_15ConstantCheckerIJlEEEJlEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n288, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112SignFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.ph294:                                 ; preds = %vector.main.loop.iter.check279
  %broadcast.splatinsert297 = insertelement <2 x i64> poison, i64 %9, i64 0
  %i.aag = call <2 x i64> @llvm.scmp.v2i64.v2i64(<2 x i64> %broadcast.splatinsert297, <2 x i64> <i64 0, i64 poison>)
  %i.aah = shufflevector <2 x i64> %i.aag, <2 x i64> poison, <2 x i32> zeroinitializer
  %invariant.gep449 = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.xo
end_hunk_66
begin_hunk_67_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112SignFunctionINS1_10VectorExecEEES8_lNS0_15ConstantCheckerIJlEEEJlEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n303, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_112SignFunctionINS3_10VectorExecEEESC_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block287, %vector.memcheck272, %iter.check290, %vec.epilog.middle.block302
  %.079.i.us77.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %8, %middle.block287 ], [ %i.xo, %vector.memcheck272 ], [ %i.xo, %iter.check290 ], [ %8, %vec.epilog.middle.block302 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i
end_hunk_67
begin_hunk_68_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vector.ph330:                                     ; preds = %vector.main.loop.iter.check328
  %n.mod.vf331 = and i64 %i.vu, 12
  %n.vec332 = and i64 %i.vu, 8589934576           ; 4 uses
  %8 = add nsw i64 %n.vec332, %i.sx
  %9 = load double, ptr %i.vq, align 8, !tbaa !1890, !alias.scope !19258, !noalias !19252
  %.scalar = call double @llvm.trunc.f64(double %9)
  %i.we = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.wf = shufflevector <4 x double> %i.we, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep554 = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_68
begin_hunk_69_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vec.epilog.ph345:                                 ; preds = %vector.main.loop.iter.check328, %vec.epilog.iter.check343
  %vec.epilog.resume.val340 = phi i64 [ %n.vec332, %vec.epilog.iter.check343 ], [ 0, %vector.main.loop.iter.check328 ]
  %n.vec347 = and i64 %i.vu, 8589934588           ; 3 uses
  %10 = add nsw i64 %n.vec347, %i.sx
  %11 = load double, ptr %i.vq, align 8, !tbaa !1890, !alias.scope !19258, !noalias !19252
  %.scalar522 = call double @llvm.trunc.f64(double %11)
  %i.wk = insertelement <4 x double> poison, double %.scalar522, i64 0
  %i.wl = shufflevector <4 x double> %i.wk, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.gep556 = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_69
begin_hunk_70_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n354, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit14.i.us13.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit14.i.us13.i.i.i.i.i.i.preheader: ; preds = %vector.memcheck320, %iter.check341, %vec.epilog.iter.check343, %vec.epilog.middle.block353
  %indvars.iv.i.us12.i.i.i.i.i.i.ph = phi i64 [ %i.sx, %iter.check341 ], [ %i.sx, %vector.memcheck320 ], [ %8, %vec.epilog.iter.check343 ], [ %10, %vec.epilog.middle.block353 ] ; 3 uses
  %i.wn = trunc i64 %indvars.iv.i.us12.i.i.i.i.i.i.ph to i32 ; 2 uses
  %i.wo = sub i32 %i.st, %i.wn
  %xtraiter543 = and i32 %i.wo, 3                 ; 2 uses
end_hunk_70
begin_hunk_71_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check295 = icmp ult i64 %i.afd, 16
  %n.mod.vf310 = and i64 %umax292, 1              ; 3 uses
  %n.vec311 = sub i64 %i.afd, %n.mod.vf310        ; 3 uses
  %12 = add i64 %n.vec311, %i.acw                 ; 2 uses
  %13 = load double, ptr %i.afb, align 8, !tbaa !1890, !alias.scope !19284, !noalias !19278
  %.scalar523 = call double @llvm.trunc.f64(double %13)
  %i.afi = insertelement <4 x double> poison, double %.scalar523, i64 0
  %i.afj = shufflevector <4 x double> %i.afi, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check295, label %vec.epilog.vector.body314.preheader, label %vector.body299.preheader
end_hunk_71
begin_hunk_72_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdEEEJdEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n318, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116TruncateFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_12VectorReaderIdEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block302, %vector.memcheck287, %iter.check305, %vec.epilog.middle.block317
  %.078.i.us77.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %12, %middle.block302 ], [ %i.acw, %vector.memcheck287 ], [ %i.acw, %iter.check305 ], [ %12, %vec.epilog.middle.block317 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i
end_hunk_72
begin_hunk_73_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vector.ph330:                                     ; preds = %vector.main.loop.iter.check328
  %n.mod.vf331 = and i64 %i.vu, 28
  %n.vec332 = and i64 %i.vu, 8589934560           ; 4 uses
  %8 = add nsw i64 %n.vec332, %i.sx
  %9 = load float, ptr %i.vq, align 4, !tbaa !2097, !alias.scope !19412, !noalias !19406
  %.scalar = call float @llvm.trunc.f32(float %9)
  %i.we = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.wf = shufflevector <8 x float> %i.we, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep555 = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_73
begin_hunk_74_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
vec.epilog.ph345:                                 ; preds = %vector.main.loop.iter.check328, %vec.epilog.iter.check343
  %vec.epilog.resume.val340 = phi i64 [ %n.vec332, %vec.epilog.iter.check343 ], [ 0, %vector.main.loop.iter.check328 ]
  %n.vec347 = and i64 %i.vu, 8589934588           ; 3 uses
  %10 = add nsw i64 %n.vec347, %i.sx
  %11 = load float, ptr %i.vq, align 4, !tbaa !2097, !alias.scope !19412, !noalias !19406
  %.scalar522 = call float @llvm.trunc.f32(float %11)
  %i.wk = insertelement <4 x float> poison, float %.scalar522, i64 0
  %i.wl = shufflevector <4 x float> %i.wk, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep557 = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.sx
end_hunk_74
begin_hunk_75_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n354, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit14.i.us13.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit14.i.us13.i.i.i.i.i.i.preheader: ; preds = %vector.memcheck320, %iter.check341, %vec.epilog.iter.check343, %vec.epilog.middle.block353
  %indvars.iv.i.us12.i.i.i.i.i.i.ph = phi i64 [ %i.sx, %iter.check341 ], [ %i.sx, %vector.memcheck320 ], [ %8, %vec.epilog.iter.check343 ], [ %10, %vec.epilog.middle.block353 ] ; 3 uses
  %i.wn = trunc i64 %indvars.iv.i.us12.i.i.i.i.i.i.ph to i32 ; 2 uses
  %i.wo = sub i32 %i.st, %i.wn
  %xtraiter544 = and i32 %i.wo, 3                 ; 2 uses
end_hunk_75
begin_hunk_76_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %min.iters.check295 = icmp ult i64 %i.afd, 32
  %n.mod.vf310 = and i64 %umax292, 1              ; 3 uses
  %n.vec311 = sub i64 %i.afd, %n.mod.vf310        ; 3 uses
  %12 = add i64 %n.vec311, %i.acw                 ; 2 uses
  %13 = load float, ptr %i.afb, align 4, !tbaa !2097, !alias.scope !19438, !noalias !19432 ; 2 uses
  br i1 %min.iters.check295, label %vec.epilog.ph309, label %vector.ph296

vector.ph296:                                     ; preds = %vector.main.loop.iter.check294
  %.scalar523 = call float @llvm.trunc.f32(float %13)
  %i.afi = insertelement <8 x float> poison, float %.scalar523, i64 0
  %i.afj = shufflevector <8 x float> %i.afi, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.acw
end_hunk_76
begin_hunk_77_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n303, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116TruncateFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_12VectorReaderIfEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

vec.epilog.ph309:                                 ; preds = %vector.main.loop.iter.check294
  %.scalar524 = call float @llvm.trunc.f32(float %13)
  %i.afo = insertelement <4 x float> poison, float %.scalar524, i64 0
  %i.afp = shufflevector <4 x float> %i.afo, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep553 = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.acw
end_hunk_77
begin_hunk_78_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfEEEJfEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  br i1 %cmp.n318, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116TruncateFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_12VectorReaderIfEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %middle.block302, %vector.memcheck287, %iter.check305, %vec.epilog.middle.block317
  %.078.i.us77.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %12, %middle.block302 ], [ %i.acw, %vector.memcheck287 ], [ %i.acw, %iter.check305 ], [ %12, %vec.epilog.middle.block317 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i.us78.i.i.i.i.i.i.i.i.i.i
end_hunk_78
