inline.NumInlined: 127525
inline.NumDeleted: 25083
begin_hunk_0_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ao, 12
  %n.vec = and i64 %i.ao, 8589934576              ; 4 uses
  %6 = add nsw i64 %n.vec, %i.ak
  %7 = load i64, ptr %.pre.i, align 8, !tbaa !536, !alias.scope !9178, !noalias !9181
  %i.aw = sdiv i64 %7, 86400000
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.aw, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.pre30.i, i64 %i.ak
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.ao, 8589934588            ; 3 uses
  %8 = add nsw i64 %n.vec16, %i.ak
  %9 = load i64, ptr %.pre.i, align 8, !tbaa !536, !alias.scope !9178, !noalias !9181
  %i.bb = sdiv i64 %9, 86400000
  %broadcast.splatinsert18 = insertelement <4 x i64> poison, i64 %i.bb, i64 0
  %broadcast.splat19 = shufflevector <4 x i64> %broadcast.splatinsert18, <4 x i64> poison, <4 x i32> zeroinitializer
  %invariant.gep23 = getelementptr [8 x i8], ptr %.pre30.i, i64 %i.ak
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
  br i1 %cmp.n21, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %6, %vec.epilog.iter.check ], [ %8, %vec.epilog.middle.block ] ; 4 uses
  %i.bd = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.be = sub i32 %i.ae, %i.bd
  %.neg = add i32 %i.bd, 1
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %min.iters.check90 = icmp ult i64 %i.ci, 16
  %n.mod.vf91 = and i64 %umax89, 1                ; 3 uses
  %n.vec92 = sub i64 %i.ci, %n.mod.vf91           ; 3 uses
  %4 = add i64 %n.vec92, %i.cg                    ; 2 uses
  %5 = load i64, ptr %.pre79.i, align 8, !tbaa !536, !alias.scope !9204, !noalias !9207
  %i.cm = sdiv i64 %5, 86400000
  %broadcast.splatinsert94 = insertelement <4 x i64> poison, i64 %i.cm, i64 0
  %broadcast.splat95 = shufflevector <4 x i64> %broadcast.splatinsert94, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check90, label %vec.epilog.vector.body.preheader, label %vector.body.preheader
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  br i1 %cmp.n97, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader: ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.076.i.ph = phi i64 [ %4, %middle.block ], [ %i.cg, %vector.memcheck ], [ %i.cg, %iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i

_ZN8facebook5velox6StatusD2Ev.exit35.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %min.iters.check116 = icmp ult i64 %i.fq, 16
  %n.mod.vf117 = and i64 %umax115, 1              ; 3 uses
  %n.vec118 = sub i64 %i.fq, %n.mod.vf117         ; 3 uses
  %4 = add i64 %n.vec118, %i.eu                   ; 2 uses
  %5 = load i64, ptr %i.fo, align 8, !tbaa !536, !alias.scope !9293, !noalias !9289
  %i.fv = sdiv i64 %5, 86400000
  %broadcast.splatinsert120 = insertelement <4 x i64> poison, i64 %i.fv, i64 0
  %broadcast.splat121 = shufflevector <4 x i64> %broadcast.splatinsert120, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check116, label %vec.epilog.vector.body.preheader, label %vector.body.preheader
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  br i1 %cmp.n123, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us78.preheader

_ZN8facebook5velox6StatusD2Ev.exit32.i.us78.preheader: ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.076.i.us77.ph = phi i64 [ %4, %middle.block ], [ %i.eu, %vector.memcheck ], [ %i.eu, %iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us78

_ZN8facebook5velox6StatusD2Ev.exit32.i.us78:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i.us78.preheader, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us78
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ao, 14
  %n.vec = and i64 %i.ao, 8589934576              ; 4 uses
  %6 = add nsw i64 %n.vec, %i.ak
  %7 = load i64, ptr %.pre.i, align 8, !tbaa !536, !alias.scope !22516, !noalias !22519
  %i.aw = srem i64 %7, 86400000
  %i.ax = trunc nsw i64 %i.aw to i32
  %.scalar = sdiv i32 %i.ax, 3600000
  %i.ay = insertelement <4 x i32> poison, i32 %.scalar, i64 0
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.ao, 8589934590            ; 3 uses
  %8 = add nsw i64 %n.vec16, %i.ak
  %9 = load i64, ptr %.pre.i, align 8, !tbaa !536, !alias.scope !22516, !noalias !22519
  %i.bf = srem i64 %9, 86400000
  %i.bg = trunc nsw i64 %i.bf to i32
  %.scalar23 = sdiv i32 %i.bg, 3600000
  %i.bh = insertelement <2 x i32> poison, i32 %.scalar23, i64 0
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
  br i1 %cmp.n21, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %6, %vec.epilog.iter.check ], [ %8, %vec.epilog.middle.block ] ; 4 uses
  %i.bl = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.bm = sub i32 %i.ae, %i.bl
  %.neg = add i32 %i.bl, 1
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %min.iters.check96 = icmp ult i64 %i.ck, 16
  %n.mod.vf97 = and i64 %umax95, 1                ; 3 uses
  %n.vec98 = sub i64 %i.ck, %n.mod.vf97           ; 3 uses
  %4 = add i64 %n.vec98, %i.ci                    ; 2 uses
  %5 = load i64, ptr %.pre81.i, align 8, !tbaa !536, !alias.scope !22543, !noalias !22546
  %i.co = srem i64 %5, 86400000
  %i.cp = trunc nsw i64 %i.co to i32              ; 2 uses
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

end_hunk_10
begin_hunk_11_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  br i1 %cmp.n103, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader: ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.078.i.ph = phi i64 [ %4, %middle.block ], [ %i.ci, %vector.memcheck ], [ %i.ci, %iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i

_ZN8facebook5velox6StatusD2Ev.exit35.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i
end_hunk_11
begin_hunk_12_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ao, 14
  %n.vec = and i64 %i.ao, 8589934576              ; 4 uses
  %6 = add nsw i64 %n.vec, %i.ak
  %7 = load i64, ptr %.pre.i, align 8, !tbaa !536, !alias.scope !24376, !noalias !24379
  %i.aw = srem i64 %7, 3600000
  %i.ax = trunc nsw i64 %i.aw to i32
  %.scalar = sdiv i32 %i.ax, 60000
  %i.ay = insertelement <4 x i32> poison, i32 %.scalar, i64 0
end_hunk_12
begin_hunk_13_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.ao, 8589934590            ; 3 uses
  %8 = add nsw i64 %n.vec16, %i.ak
  %9 = load i64, ptr %.pre.i, align 8, !tbaa !536, !alias.scope !24376, !noalias !24379
  %i.bf = srem i64 %9, 3600000
  %i.bg = trunc nsw i64 %i.bf to i32
  %.scalar23 = sdiv i32 %i.bg, 60000
  %i.bh = insertelement <2 x i32> poison, i32 %.scalar23, i64 0
end_hunk_13
begin_hunk_14_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
  br i1 %cmp.n21, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %6, %vec.epilog.iter.check ], [ %8, %vec.epilog.middle.block ] ; 4 uses
  %i.bl = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.bm = sub i32 %i.ae, %i.bl
  %.neg = add i32 %i.bl, 1
end_hunk_14
begin_hunk_15_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %min.iters.check96 = icmp ult i64 %i.ck, 16
  %n.mod.vf97 = and i64 %umax95, 1                ; 3 uses
  %n.vec98 = sub i64 %i.ck, %n.mod.vf97           ; 3 uses
  %4 = add i64 %n.vec98, %i.ci                    ; 2 uses
  %5 = load i64, ptr %.pre81.i, align 8, !tbaa !536, !alias.scope !24402, !noalias !24405
  %i.co = srem i64 %5, 3600000
  %i.cp = trunc nsw i64 %i.co to i32              ; 2 uses
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

end_hunk_15
begin_hunk_16_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  br i1 %cmp.n103, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader: ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.078.i.ph = phi i64 [ %4, %middle.block ], [ %i.ci, %vector.memcheck ], [ %i.ci, %iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i

_ZN8facebook5velox6StatusD2Ev.exit35.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i
end_hunk_16
begin_hunk_17_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ao, 14
  %n.vec = and i64 %i.ao, 8589934576              ; 4 uses
  %6 = add nsw i64 %n.vec, %i.ak
  %7 = load i64, ptr %.pre.i, align 8, !tbaa !536, !alias.scope !25474, !noalias !25477
  %i.aw = srem i64 %7, 60000
  %i.ax = trunc nsw i64 %i.aw to i32
  %.scalar = sdiv i32 %i.ax, 1000
  %i.ay = insertelement <4 x i32> poison, i32 %.scalar, i64 0
end_hunk_17
begin_hunk_18_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.ao, 8589934590            ; 3 uses
  %8 = add nsw i64 %n.vec16, %i.ak
  %9 = load i64, ptr %.pre.i, align 8, !tbaa !536, !alias.scope !25474, !noalias !25477
  %i.bf = srem i64 %9, 60000
  %i.bg = trunc nsw i64 %i.bf to i32
  %.scalar23 = sdiv i32 %i.bg, 1000
  %i.bh = insertelement <2 x i32> poison, i32 %.scalar23, i64 0
end_hunk_18
begin_hunk_19_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
  br i1 %cmp.n21, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %6, %vec.epilog.iter.check ], [ %8, %vec.epilog.middle.block ] ; 4 uses
  %i.bl = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.bm = sub i32 %i.ae, %i.bl
  %.neg = add i32 %i.bl, 1
end_hunk_19
begin_hunk_20_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %min.iters.check96 = icmp ult i64 %i.ck, 16
  %n.mod.vf97 = and i64 %umax95, 1                ; 3 uses
  %n.vec98 = sub i64 %i.ck, %n.mod.vf97           ; 3 uses
  %4 = add i64 %n.vec98, %i.ci                    ; 2 uses
  %5 = load i64, ptr %.pre81.i, align 8, !tbaa !536, !alias.scope !25500, !noalias !25503
  %i.co = srem i64 %5, 60000
  %i.cp = trunc nsw i64 %i.co to i32              ; 2 uses
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

end_hunk_20
begin_hunk_21_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  br i1 %cmp.n103, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader: ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.078.i.ph = phi i64 [ %4, %middle.block ], [ %i.ci, %vector.memcheck ], [ %i.ci, %iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i

_ZN8facebook5velox6StatusD2Ev.exit35.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i
end_hunk_21
begin_hunk_22_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19MillisecondFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ao, 12
  %n.vec = and i64 %i.ao, 8589934576              ; 4 uses
  %6 = add nsw i64 %n.vec, %i.ak
  %7 = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !536, !alias.scope !25668, !noalias !25671
  %i.aw = udiv i64 %7, 1000000
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.aw, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.pre29.i, i64 %i.ak
end_hunk_22
begin_hunk_23_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19MillisecondFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.ao, 8589934588            ; 3 uses
  %8 = add nsw i64 %n.vec16, %i.ak
  %9 = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !536, !alias.scope !25668, !noalias !25671
  %i.bb = udiv i64 %9, 1000000
  %broadcast.splatinsert18 = insertelement <4 x i64> poison, i64 %i.bb, i64 0
  %broadcast.splat19 = shufflevector <4 x i64> %broadcast.splatinsert18, <4 x i64> poison, <4 x i32> zeroinitializer
  %invariant.gep23 = getelementptr [8 x i8], ptr %.pre29.i, i64 %i.ak
end_hunk_23
begin_hunk_24_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19MillisecondFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
  br i1 %cmp.n21, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19MillisecondFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %6, %vec.epilog.iter.check ], [ %8, %vec.epilog.middle.block ] ; 4 uses
  %i.bd = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.be = sub i32 %i.ae, %i.bd
  %.neg = add i32 %i.bd, 1
end_hunk_24
begin_hunk_25_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19MillisecondFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %min.iters.check96 = icmp ult i64 %i.cg, 16
  %n.mod.vf97 = and i64 %umax95, 1                ; 3 uses
  %n.vec98 = sub i64 %i.cg, %n.mod.vf97           ; 3 uses
  %4 = add i64 %n.vec98, %i.ce                    ; 2 uses
  %5 = load i64, ptr %.sroa.2.0..sroa_idx.i.i54, align 8, !tbaa !536, !alias.scope !25694, !noalias !25697
  %i.ck = udiv i64 %5, 1000000
  %broadcast.splatinsert100 = insertelement <4 x i64> poison, i64 %i.ck, i64 0
  %broadcast.splat101 = shufflevector <4 x i64> %broadcast.splatinsert100, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check96, label %vec.epilog.vector.body.preheader, label %vector.body.preheader
end_hunk_25
begin_hunk_26_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19MillisecondFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  br i1 %cmp.n103, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19MillisecondFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader: ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.081.i.ph = phi i64 [ %4, %middle.block ], [ %i.ce, %vector.memcheck ], [ %i.ce, %iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i

_ZN8facebook5velox6StatusD2Ev.exit35.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i
end_hunk_26
begin_hunk_27_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19MillisecondFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %min.iters.check126 = icmp ult i64 %i.fl, 16
  %n.mod.vf127 = and i64 %umax125, 1              ; 3 uses
  %n.vec128 = sub i64 %i.fl, %n.mod.vf127         ; 3 uses
  %4 = add i64 %n.vec128, %i.eq                   ; 2 uses
  %5 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i56.us88, align 8, !tbaa !536, !alias.scope !25764
  %i.fq = udiv i64 %5, 1000000
  %broadcast.splatinsert130 = insertelement <4 x i64> poison, i64 %i.fq, i64 0
  %broadcast.splat131 = shufflevector <4 x i64> %broadcast.splatinsert130, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check126, label %vec.epilog.vector.body.preheader, label %vector.body.preheader
end_hunk_27
begin_hunk_28_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19MillisecondFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  br i1 %cmp.n133, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19MillisecondFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit34.i.us86.preheader

_ZN8facebook5velox6StatusD2Ev.exit34.i.us86.preheader: ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.083.i.us85.ph = phi i64 [ %4, %middle.block ], [ %i.eq, %vector.memcheck ], [ %i.eq, %iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit34.i.us86

_ZN8facebook5velox6StatusD2Ev.exit34.i.us86:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit34.i.us86.preheader, %_ZN8facebook5velox6StatusD2Ev.exit34.i.us86
end_hunk_28
begin_hunk_29_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ao, 14
  %n.vec = and i64 %i.ao, 8589934576              ; 4 uses
  %6 = add nsw i64 %n.vec, %i.ak
  %7 = load i64, ptr %.pre.i, align 8, !tbaa !536, !alias.scope !26325, !noalias !26328
  %i.aw = srem i64 %7, 1000
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.aw, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.pre30.i, i64 %i.ak
end_hunk_29
begin_hunk_30_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.ao, 8589934590            ; 3 uses
  %8 = add nsw i64 %n.vec16, %i.ak
  %9 = load i64, ptr %.pre.i, align 8, !tbaa !536, !alias.scope !26325, !noalias !26328
  %i.bb = srem i64 %9, 1000
  %broadcast.splatinsert18 = insertelement <2 x i64> poison, i64 %i.bb, i64 0
  %broadcast.splat19 = shufflevector <2 x i64> %broadcast.splatinsert18, <2 x i64> poison, <2 x i32> zeroinitializer
  %invariant.gep23 = getelementptr [8 x i8], ptr %.pre30.i, i64 %i.ak
end_hunk_30
begin_hunk_31_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
  br i1 %cmp.n21, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %6, %vec.epilog.iter.check ], [ %8, %vec.epilog.middle.block ] ; 4 uses
  %i.bd = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.be = sub i32 %i.ae, %i.bd
  %.neg = add i32 %i.bd, 1
end_hunk_31
begin_hunk_32_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %min.iters.check90 = icmp ult i64 %i.ci, 16
  %n.mod.vf91 = and i64 %umax89, 1                ; 3 uses
  %n.vec92 = sub i64 %i.ci, %n.mod.vf91           ; 3 uses
  %4 = add i64 %n.vec92, %i.cg                    ; 2 uses
  %5 = load i64, ptr %.pre79.i, align 8, !tbaa !536, !alias.scope !26351, !noalias !26354
  %i.cm = srem i64 %5, 1000                       ; 2 uses
  br i1 %min.iters.check90, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
end_hunk_32
begin_hunk_33_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  br i1 %cmp.n97, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader: ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.076.i.ph = phi i64 [ %4, %middle.block ], [ %i.cg, %vector.memcheck ], [ %i.cg, %iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i

_ZN8facebook5velox6StatusD2Ev.exit35.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i
end_hunk_33
begin_hunk_34_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %min.iters.check116 = icmp ult i64 %i.fq, 16
  %n.mod.vf117 = and i64 %umax115, 1              ; 3 uses
  %n.vec118 = sub i64 %i.fq, %n.mod.vf117         ; 3 uses
  %4 = add i64 %n.vec118, %i.eu                   ; 2 uses
  %5 = load i64, ptr %i.fo, align 8, !tbaa !536, !alias.scope !26436, !noalias !26432
  %i.fv = srem i64 %5, 1000                       ; 2 uses
  br i1 %min.iters.check116, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
end_hunk_34
begin_hunk_35_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  br i1 %cmp.n123, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us78.preheader

_ZN8facebook5velox6StatusD2Ev.exit32.i.us78.preheader: ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.076.i.us77.ph = phi i64 [ %4, %middle.block ], [ %i.eu, %vector.memcheck ], [ %i.eu, %iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us78

_ZN8facebook5velox6StatusD2Ev.exit32.i.us78:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i.us78.preheader, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us78
end_hunk_35
begin_hunk_36_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64TimeFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_4TimeEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ap, 14
  %n.vec = and i64 %i.ap, 8589934576              ; 4 uses
  %4 = add nsw i64 %n.vec, %i.al
  %i.ax = load i64, ptr %.pre, align 8, !tbaa !536, !alias.scope !43512, !noalias !43515
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ax, i64 0
  %i.ay = tail call <4 x i64> @llvm.bswap.v4i64(<4 x i64> %broadcast.splatinsert)
  %i.az = mul <4 x i64> %i.ay, <i64 -4417276706812531889, i64 poison, i64 poison, i64 poison>
  %i.ba = shufflevector <4 x i64> %i.az, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
end_hunk_36
begin_hunk_37_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64TimeFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_4TimeEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %i.ap, 8589934590            ; 3 uses
  %5 = add nsw i64 %n.vec43, %i.al
  %i.bt = load i64, ptr %.pre, align 8, !tbaa !536, !alias.scope !43512, !noalias !43515
  %broadcast.splatinsert44 = insertelement <2 x i64> poison, i64 %i.bt, i64 0
  %i.bu = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %broadcast.splatinsert44)
  %i.bv = mul <2 x i64> %i.bu, <i64 -4417276706812531889, i64 poison>
  %i.bw = shufflevector <2 x i64> %i.bv, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_37
begin_hunk_38_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64TimeFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_4TimeEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi:bb.a
  %min.iters.check108 = icmp ult i64 %i.s, 16
  %n.mod.vf109 = and i64 %umax107, 1              ; 3 uses
  %n.vec110 = sub i64 %i.s, %n.mod.vf109          ; 3 uses
  %2 = add i64 %n.vec110, %i.p                    ; 2 uses
  %3 = load i64, ptr %.pre87, align 8, !tbaa !536, !alias.scope !43540, !noalias !43543 ; 2 uses
  br i1 %min.iters.check108, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %3, i64 0
  %i.w = tail call <4 x i64> @llvm.bswap.v4i64(<4 x i64> %broadcast.splatinsert)
  %i.x = mul <4 x i64> %i.w, <i64 -4417276706812531889, i64 poison, i64 poison, i64 poison>
  %i.y = shufflevector <4 x i64> %i.x, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
end_hunk_38
begin_hunk_39_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64TimeFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_4TimeEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi:bb.a
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit41.preheader

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert111 = insertelement <2 x i64> poison, i64 %3, i64 0
  %i.ar = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %broadcast.splatinsert111)
  %i.as = mul <2 x i64> %i.ar, <i64 -4417276706812531889, i64 poison>
  %i.at = shufflevector <2 x i64> %i.as, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_39
begin_hunk_40_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64TimeFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_4TimeEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi:bb.a
  br i1 %cmp.n115, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit41.preheader

_ZN8facebook5velox6StatusD2Ev.exit41.preheader:   ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.084.ph = phi i64 [ %2, %middle.block ], [ %i.p, %vector.memcheck ], [ %i.p, %iter.check ], [ %2, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit41

_ZN8facebook5velox6StatusD2Ev.exit41:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit41.preheader, %_ZN8facebook5velox6StatusD2Ev.exit41
end_hunk_40
begin_hunk_41_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22LocalTimestampFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJEEEJEEEE7iterateIJEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISN_EEvRKNS0_17SelectivityVectorESM_EUlSM_E_EEvSR_SM_T0_:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.an, 14
  %n.vec = and i64 %i.an, 8589934576              ; 4 uses
  %6 = add nsw i64 %n.vec, %i.aj
  %i.av = load i64, ptr %.pre25.i, align 8, !tbaa !536, !alias.scope !44256, !noalias !44259
  %broadcast.splatinsert15.a = insertelement <4 x i64> poison, i64 %i.av, i64 0
  %i.aw = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !536, !alias.scope !44256, !noalias !44259
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.aw, i64 0
  %interleaved.vec = shufflevector <4 x i64> %broadcast.splatinsert15.a, <4 x i64> %broadcast.splatinsert, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_41
begin_hunk_42_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22LocalTimestampFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJEEEJEEEE7iterateIJEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISN_EEvRKNS0_17SelectivityVectorESM_EUlSM_E_EEvSR_SM_T0_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.an, 8589934590            ; 3 uses
  %7 = add nsw i64 %n.vec21, %i.aj
  %i.bg = load i64, ptr %.pre25.i, align 8, !tbaa !536, !alias.scope !44256, !noalias !44259
  %broadcast.splatinsert25.a = insertelement <2 x i64> poison, i64 %i.bg, i64 0
  %i.bh = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !536, !alias.scope !44256, !noalias !44259
  %broadcast.splatinsert23 = insertelement <2 x i64> poison, i64 %i.bh, i64 0
  %invariant.gep = getelementptr [16 x i8], ptr %.pre29.i, i64 %i.aj
  %interleaved.vec27 = shufflevector <2 x i64> %broadcast.splatinsert25.a, <2 x i64> %broadcast.splatinsert23, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
end_hunk_42
begin_hunk_43_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22LocalTimestampFunctionINS4_10VectorExecEEESC_NS0_9TimestampENS0_15ConstantCheckerIJEEEJEEEE7iterateIJEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_EUlimE_ZNS3_ISX_EEvSZ_iibSP_EUliE_EEviiSP_SW_:bb.a
  %min.iters.check104 = icmp ult i64 %i.cg, 16
  %n.mod.vf110 = and i64 %umax103, 1              ; 3 uses
  %n.vec111 = sub i64 %i.cg, %n.mod.vf110         ; 3 uses
  %4 = add i64 %n.vec111, %i.ce                   ; 2 uses
  %i.ck = load i64, ptr %.pre81.i, align 8, !tbaa !536, !alias.scope !44295, !noalias !44298 ; 2 uses
  %5 = load i64, ptr %.sroa.673.0..sroa_idx.i, align 8, !tbaa !536, !alias.scope !44295, !noalias !44298 ; 2 uses
  br i1 %min.iters.check104, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert105.a = insertelement <4 x i64> poison, i64 %i.ck, i64 0
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %5, i64 0
  %interleaved.vec = shufflevector <4 x i64> %broadcast.splatinsert105.a, <4 x i64> %broadcast.splatinsert, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_43
begin_hunk_44_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22LocalTimestampFunctionINS4_10VectorExecEEESC_NS0_9TimestampENS0_15ConstantCheckerIJEEEJEEEE7iterateIJEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_EUlimE_ZNS3_ISX_EEvSZ_iibSP_EUliE_EEviiSP_SW_:bb.a
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22LocalTimestampFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJEEEJEEEE7iterateIJEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit38.i.preheader

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert115.a = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %broadcast.splatinsert113 = insertelement <2 x i64> poison, i64 %5, i64 0
  %invariant.gep = getelementptr [16 x i8], ptr %.pre86.i, i64 %i.ce
  %interleaved.vec117 = shufflevector <2 x i64> %broadcast.splatinsert115.a, <2 x i64> %broadcast.splatinsert113, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
end_hunk_44
begin_hunk_45_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22LocalTimestampFunctionINS4_10VectorExecEEESC_NS0_9TimestampENS0_15ConstantCheckerIJEEEJEEEE7iterateIJEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_EUlimE_ZNS3_ISX_EEvSZ_iibSP_EUliE_EEviiSP_SW_:bb.a
  br i1 %cmp.n119, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22LocalTimestampFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJEEEJEEEE7iterateIJEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit38.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit38.i.preheader: ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.077.i.ph = phi i64 [ %4, %middle.block ], [ %i.ce, %vector.memcheck ], [ %i.ce, %iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit38.i

_ZN8facebook5velox6StatusD2Ev.exit38.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit38.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit38.i
end_hunk_45
