inline.NumInlined: 89673
inline.NumDeleted: 14427
begin_hunk_0_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ao, 12
  %n.vec = and i64 %i.ao, 8589934576              ; 4 uses
  %6 = load i64, ptr %.pre.i, align 8, !alias.scope !6465, !noalias !6468
  %7 = add nsw i64 %n.vec, %i.ak
  %i.aw = and i64 %6, 4294967295
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.aw, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.pre30.i, i64 %i.ak
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.ao, 8589934588            ; 3 uses
  %8 = load i64, ptr %.pre.i, align 8, !alias.scope !6465, !noalias !6468
  %9 = add nsw i64 %n.vec16, %i.ak
  %i.bb = and i64 %8, 4294967295
  %broadcast.splatinsert18 = insertelement <4 x i64> poison, i64 %i.bb, i64 0
  %broadcast.splat19 = shufflevector <4 x i64> %broadcast.splatinsert18, <4 x i64> poison, <4 x i32> zeroinitializer
  %invariant.gep23 = getelementptr [8 x i8], ptr %.pre30.i, i64 %i.ak
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
  br i1 %cmp.n21, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit17.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit17.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %7, %vec.epilog.iter.check ], [ %9, %vec.epilog.middle.block ] ; 3 uses
  %i.bd = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.be = sub i32 %i.ae, %i.bd
  %xtraiter = and i32 %i.be, 3                    ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %min.iters.check93 = icmp ult i64 %i.cg, 16
  %n.mod.vf94 = and i64 %umax92, 1                ; 3 uses
  %n.vec95 = sub i64 %i.cg, %n.mod.vf94           ; 3 uses
  %4 = load i64, ptr %.pre85.i, align 8, !alias.scope !6492, !noalias !6495
  %5 = add i64 %n.vec95, %i.ce                    ; 2 uses
  %i.ck = and i64 %4, 4294967295
  %broadcast.splatinsert97 = insertelement <4 x i64> poison, i64 %i.ck, i64 0
  %broadcast.splat98 = shufflevector <4 x i64> %broadcast.splatinsert97, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check93, label %vec.epilog.vector.body.preheader, label %vector.body.preheader
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  br i1 %cmp.n100, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader: ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.082.i.ph = phi i64 [ %5, %middle.block ], [ %i.ce, %vector.memcheck ], [ %i.ce, %iter.check ], [ %5, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit36.i

_ZN8facebook5velox6StatusD2Ev.exit36.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit36.i
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %min.iters.check159 = icmp ult i64 %i.hs, 16
  %n.mod.vf173 = and i64 %umax156, 1              ; 3 uses
  %n.vec174 = sub i64 %i.hs, %n.mod.vf173         ; 3 uses
  %4 = load i64, ptr %i.hq, align 8, !alias.scope !6722, !noalias !6711
  %5 = add i64 %n.vec174, %i.eq                   ; 2 uses
  %i.hx = and i64 %4, 4294967295
  %broadcast.splatinsert177 = insertelement <4 x i64> poison, i64 %i.hx, i64 0
  %broadcast.splat178 = shufflevector <4 x i64> %broadcast.splatinsert177, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check159, label %vec.epilog.vector.body175.preheader, label %vector.body163.preheader
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  br i1 %cmp.n181, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us82.preheader

_ZN8facebook5velox6StatusD2Ev.exit32.i.us82.preheader: ; preds = %middle.block166, %vector.memcheck147, %iter.check168, %vec.epilog.middle.block180
  %.081.i.us81.ph = phi i64 [ %5, %middle.block166 ], [ %i.eq, %vector.memcheck147 ], [ %i.eq, %iter.check168 ], [ %5, %vec.epilog.middle.block180 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us82

_ZN8facebook5velox6StatusD2Ev.exit32.i.us82:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i.us82.preheader, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us82
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ao, 14
  %n.vec = and i64 %i.ao, 8589934576              ; 4 uses
  %6 = load i64, ptr %.pre.i, align 8, !alias.scope !6883, !noalias !6886
  %7 = add nsw i64 %n.vec, %i.ak
  %i.aw = shl i64 %6, 3
  %.scalar = and i64 %i.aw, 34359738360
  %i.ax = insertelement <4 x i64> poison, i64 %.scalar, i64 0
  %i.ay = shufflevector <4 x i64> %i.ax, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.ao, 8589934590            ; 3 uses
  %8 = load i64, ptr %.pre.i, align 8, !alias.scope !6883, !noalias !6886
  %9 = add nsw i64 %n.vec16, %i.ak
  %i.bd = shl i64 %8, 3
  %.scalar23 = and i64 %i.bd, 34359738360
  %i.be = insertelement <2 x i64> poison, i64 %.scalar23, i64 0
  %i.bf = shufflevector <2 x i64> %i.be, <2 x i64> poison, <2 x i32> zeroinitializer
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
  br i1 %cmp.n21, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %7, %vec.epilog.iter.check ], [ %9, %vec.epilog.middle.block ] ; 3 uses
  %i.bh = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.bi = sub i32 %i.ae, %i.bh
  %xtraiter = and i32 %i.bi, 3                    ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %min.iters.check93 = icmp ult i64 %i.ci, 16
  %n.mod.vf94 = and i64 %umax92, 1                ; 3 uses
  %n.vec95 = sub i64 %i.ci, %n.mod.vf94           ; 3 uses
  %4 = load i64, ptr %.pre84.i, align 8, !alias.scope !6911, !noalias !6914
  %5 = add i64 %n.vec95, %i.cg                    ; 2 uses
  %i.cm = shl i64 %4, 3                           ; 2 uses
  br i1 %min.iters.check93, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
end_hunk_10
begin_hunk_11_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  br i1 %cmp.n100, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader: ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.081.i.ph = phi i64 [ %5, %middle.block ], [ %i.cg, %vector.memcheck ], [ %i.cg, %iter.check ], [ %5, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i

_ZN8facebook5velox6StatusD2Ev.exit35.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i
end_hunk_11
begin_hunk_12_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ao, 12
  %n.vec = and i64 %i.ao, 8589934576              ; 4 uses
  %6 = load i64, ptr %.pre.i, align 8, !alias.scope !7283, !noalias !7286
  %7 = add nsw i64 %n.vec, %i.ak
  %i.aw = and i64 %6, 4294967295
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.aw, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.pre29.i, i64 %i.ak
end_hunk_12
begin_hunk_13_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.ao, 8589934588            ; 3 uses
  %8 = load i64, ptr %.pre.i, align 8, !alias.scope !7283, !noalias !7286
  %9 = add nsw i64 %n.vec16, %i.ak
  %i.bb = and i64 %8, 4294967295
  %broadcast.splatinsert18 = insertelement <4 x i64> poison, i64 %i.bb, i64 0
  %broadcast.splat19 = shufflevector <4 x i64> %broadcast.splatinsert18, <4 x i64> poison, <4 x i32> zeroinitializer
  %invariant.gep23 = getelementptr [8 x i8], ptr %.pre29.i, i64 %i.ak
end_hunk_13
begin_hunk_14_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
  br i1 %cmp.n21, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %7, %vec.epilog.iter.check ], [ %9, %vec.epilog.middle.block ] ; 3 uses
  %i.bd = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.be = sub i32 %i.ae, %i.bd
  %xtraiter = and i32 %i.be, 3                    ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %min.iters.check93 = icmp ult i64 %i.cg, 16
  %n.mod.vf94 = and i64 %umax92, 1                ; 3 uses
  %n.vec95 = sub i64 %i.cg, %n.mod.vf94           ; 3 uses
  %4 = load i64, ptr %.pre84.i, align 8, !alias.scope !7310, !noalias !7313
  %5 = add i64 %n.vec95, %i.ce                    ; 2 uses
  %i.ck = and i64 %4, 4294967295
  %broadcast.splatinsert97 = insertelement <4 x i64> poison, i64 %i.ck, i64 0
  %broadcast.splat98 = shufflevector <4 x i64> %broadcast.splatinsert97, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check93, label %vec.epilog.vector.body.preheader, label %vector.body.preheader
end_hunk_15
begin_hunk_16_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  br i1 %cmp.n100, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader: ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.081.i.ph = phi i64 [ %5, %middle.block ], [ %i.ce, %vector.memcheck ], [ %i.ce, %iter.check ], [ %5, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i

_ZN8facebook5velox6StatusD2Ev.exit35.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i
end_hunk_16
begin_hunk_17_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %min.iters.check159 = icmp ult i64 %i.hs, 16
  %n.mod.vf173 = and i64 %umax156, 1              ; 3 uses
  %n.vec174 = sub i64 %i.hs, %n.mod.vf173         ; 3 uses
  %4 = load i64, ptr %i.hq, align 8, !alias.scope !7421, !noalias !7410
  %5 = add i64 %n.vec174, %i.eq                   ; 2 uses
  %i.hx = and i64 %4, 4294967295
  %broadcast.splatinsert177 = insertelement <4 x i64> poison, i64 %i.hx, i64 0
  %broadcast.splat178 = shufflevector <4 x i64> %broadcast.splatinsert177, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check159, label %vec.epilog.vector.body175.preheader, label %vector.body163.preheader
end_hunk_17
begin_hunk_18_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  br i1 %cmp.n181, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us82.preheader

_ZN8facebook5velox6StatusD2Ev.exit32.i.us82.preheader: ; preds = %middle.block166, %vector.memcheck147, %iter.check168, %vec.epilog.middle.block180
  %.081.i.us81.ph = phi i64 [ %5, %middle.block166 ], [ %i.eq, %vector.memcheck147 ], [ %i.eq, %iter.check168 ], [ %5, %vec.epilog.middle.block180 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us82

_ZN8facebook5velox6StatusD2Ev.exit32.i.us82:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i.us82.preheader, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us82
end_hunk_18
