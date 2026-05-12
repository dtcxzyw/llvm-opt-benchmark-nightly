inline.NumInlined: 10881
inline.NumDeleted: 3611
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ap, 14
  %n.vec = and i64 %i.ap, 8589934576              ; 4 uses
  %4 = load i64, ptr %.pre, align 8, !tbaa !131, !alias.scope !761, !noalias !764
  %5 = add nsw i64 %n.vec, %i.al
  %i.ax = mul i64 %4, -4417276706812531889
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ax, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ay = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %broadcast.splat, <4 x i64> %broadcast.splat, <4 x i64> splat (i64 31))
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec41 = and i64 %i.ap, 8589934590            ; 3 uses
  %6 = load i64, ptr %.pre, align 8, !tbaa !131, !alias.scope !761, !noalias !764
  %7 = add nsw i64 %n.vec41, %i.al
  %i.bq = mul i64 %6, -4417276706812531889
  %broadcast.splatinsert42 = insertelement <2 x i64> poison, i64 %i.bq, i64 0
  %broadcast.splat43 = shufflevector <2 x i64> %broadcast.splatinsert42, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %broadcast.splat43, <2 x i64> %broadcast.splat43, <2 x i64> splat (i64 31))
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  br i1 %cmp.n46, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit18.preheader

_ZN8facebook5velox6StatusD2Ev.exit18.preheader:   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.al, %iter.check ], [ %i.al, %vector.memcheck ], [ %5, %vec.epilog.iter.check ], [ %7, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit18

_ZN8facebook5velox6StatusD2Ev.exit18:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit18.preheader, %_ZN8facebook5velox6StatusD2Ev.exit18
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi:bb.a
  %min.iters.check104 = icmp ult i64 %i.s, 16
  %n.mod.vf105 = and i64 %umax103, 1              ; 3 uses
  %n.vec106 = sub i64 %i.s, %n.mod.vf105          ; 3 uses
  %2 = load i64, ptr %.pre83, align 8, !tbaa !131, !alias.scope !790, !noalias !793
  %3 = add i64 %n.vec106, %i.p                    ; 2 uses
  %i.w = mul i64 %2, -4417276706812531889         ; 2 uses
  br i1 %min.iters.check104, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
end_hunk_3
begin_hunk_4_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi:bb.a
  br i1 %cmp.n111, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit39.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.preheader:   ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.080.ph = phi i64 [ %3, %middle.block ], [ %i.p, %vector.memcheck ], [ %i.p, %iter.check ], [ %3, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39

_ZN8facebook5velox6StatusD2Ev.exit39:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ap, 14
  %n.vec = and i64 %i.ap, 8589934576              ; 4 uses
  %i.ax = load i8, ptr %.pre, align 1, !tbaa !26, !alias.scope !1420, !noalias !1423
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.ax, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %4 = add nsw i64 %n.vec, %i.al
  %i.ay = sext <4 x i8> %broadcast.splat to <4 x i64>
  %i.az = mul <4 x i64> %i.ay, splat (i64 -4417276706812531889) ; 2 uses
  %i.ba = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.az, <4 x i64> %i.az, <4 x i64> splat (i64 31))
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %i.ap, 8589934590            ; 3 uses
  %i.bs = load i8, ptr %.pre, align 1, !tbaa !26, !alias.scope !1420, !noalias !1423
  %broadcast.splatinsert43 = insertelement <2 x i8> poison, i8 %i.bs, i64 0
  %broadcast.splat44 = shufflevector <2 x i8> %broadcast.splatinsert43, <2 x i8> poison, <2 x i32> zeroinitializer
  %5 = add nsw i64 %n.vec42, %i.al
  %i.bt = sext <2 x i8> %broadcast.splat44 to <2 x i64>
  %i.bu = mul <2 x i64> %i.bt, splat (i64 -4417276706812531889) ; 2 uses
  %i.bv = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.bu, <2 x i64> %i.bu, <2 x i64> splat (i64 31))
end_hunk_6
begin_hunk_7_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi:bb.a
  %min.iters.check106 = icmp ult i64 %i.s, 16
  %n.mod.vf107 = and i64 %umax105, 1              ; 3 uses
  %n.vec108 = sub i64 %i.s, %n.mod.vf107          ; 3 uses
  %2 = load i8, ptr %.pre85, align 1, !tbaa !26, !alias.scope !1448, !noalias !1451 ; 2 uses
  %3 = add i64 %n.vec108, %i.p                    ; 2 uses
  br i1 %min.iters.check106, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %2, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.w = sext <4 x i8> %broadcast.splat to <4 x i64>
  %i.x = mul <4 x i64> %i.w, splat (i64 -4417276706812531889) ; 2 uses
end_hunk_7
begin_hunk_8_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi:bb.a
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit39.preheader

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert109 = insertelement <2 x i8> poison, i8 %2, i64 0
  %broadcast.splat110 = shufflevector <2 x i8> %broadcast.splatinsert109, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.aq = sext <2 x i8> %broadcast.splat110 to <2 x i64>
  %i.ar = mul <2 x i64> %i.aq, splat (i64 -4417276706812531889) ; 2 uses
end_hunk_8
begin_hunk_9_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi:bb.a
  br i1 %cmp.n113, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit39.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.preheader:   ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.082.ph = phi i64 [ %3, %middle.block ], [ %i.p, %vector.memcheck ], [ %i.p, %iter.check ], [ %3, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39

_ZN8facebook5velox6StatusD2Ev.exit39:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEESH_EEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISO_EEvRKNS0_17SelectivityVectorESN_EUlSN_E_EEvSS_SN_T0_:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ap, 14
  %n.vec = and i64 %i.ap, 8589934576              ; 4 uses
  %6 = load i64, ptr %.pre30.i, align 8, !tbaa !131, !alias.scope !1640, !noalias !1643
  %i.ax = load i64, ptr %.pre.i, align 8, !tbaa !131, !alias.scope !1646, !noalias !1648
  %7 = add nsw i64 %n.vec, %i.al
  %i.ay = mul i64 %i.ax, 31
  %i.az = add i64 %i.ay, %6
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.az, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.pre33.i, i64 %i.al
end_hunk_10
begin_hunk_11_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEESH_EEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISO_EEvRKNS0_17SelectivityVectorESN_EUlSN_E_EEvSS_SN_T0_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.ap, 8589934590            ; 3 uses
  %8 = load i64, ptr %.pre30.i, align 8, !tbaa !131, !alias.scope !1640, !noalias !1643
  %i.be = load i64, ptr %.pre.i, align 8, !tbaa !131, !alias.scope !1646, !noalias !1648
  %9 = add nsw i64 %n.vec20, %i.al
  %i.bf = mul i64 %i.be, 31
  %i.bg = add i64 %i.bf, %8
  %broadcast.splatinsert22 = insertelement <2 x i64> poison, i64 %i.bg, i64 0
  %broadcast.splat23 = shufflevector <2 x i64> %broadcast.splatinsert22, <2 x i64> poison, <2 x i32> zeroinitializer
  %invariant.gep27 = getelementptr [8 x i8], ptr %.pre33.i, i64 %i.al
end_hunk_11
begin_hunk_12_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEESH_EEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISO_EEvRKNS0_17SelectivityVectorESN_EUlSN_E_EEvSS_SN_T0_:bb.a
  br i1 %cmp.n25, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit17.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit17.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.al, %iter.check ], [ %i.al, %vector.memcheck ], [ %7, %vec.epilog.iter.check ], [ %9, %vec.epilog.middle.block ] ; 4 uses
  %i.bi = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.bj = sub i32 %i.ae, %i.bi
  %.neg = add i32 %i.bi, 1
end_hunk_12
begin_hunk_13_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEESH_EEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISO_EEvRKNS0_17SelectivityVectorESN_EUlSN_E_EEvSS_SN_T0_:bb.a
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit17.i.prol.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit17.i.prol

_ZN8facebook5velox6StatusD2Ev.exit17.i.prol:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit17.i.preheader
  %i.bk = load i64, ptr %.pre.i, align 8, !tbaa !131, !noalias !1648
  %i.bl = load i64, ptr %.pre30.i, align 8, !tbaa !131, !noalias !1643
  %i.bm = mul i64 %i.bk, 31
  %i.bn = add i64 %i.bm, %i.bl
  %i.bo = getelementptr inbounds [8 x i8], ptr %.pre33.i, i64 %indvars.iv.i.ph
end_hunk_13
begin_hunk_14_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEESH_EEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISO_EEvRKNS0_17SelectivityVectorESN_EUlSN_E_EEvSS_SN_T0_:bb.a

_ZN8facebook5velox6StatusD2Ev.exit17.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit17.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit17.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %_ZN8facebook5velox6StatusD2Ev.exit17.i ], [ %indvars.iv.i.unr, %_ZN8facebook5velox6StatusD2Ev.exit17.i.prol.loopexit ] ; 3 uses
  %i.bq = load i64, ptr %.pre.i, align 8, !tbaa !131, !noalias !1648
  %i.br = load i64, ptr %.pre30.i, align 8, !tbaa !131, !noalias !1643
  %i.bs = mul i64 %i.bq, 31
  %i.bt = add i64 %i.bs, %i.br
  %i.bu = getelementptr inbounds [8 x i8], ptr %.pre33.i, i64 %indvars.iv.i
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !131
  %i.bv = load i64, ptr %.pre.i, align 8, !tbaa !131, !noalias !1648
  %i.bw = load i64, ptr %.pre30.i, align 8, !tbaa !131, !noalias !1643
  %i.bx = mul i64 %i.bv, 31
  %i.by = add i64 %i.bx, %i.bw
  %i.bz = getelementptr [8 x i8], ptr %.pre33.i, i64 %indvars.iv.i
end_hunk_14
begin_hunk_15_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_20ConstantVectorReaderIlEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_:bb.a
  %min.iters.check98 = icmp ult i64 %i.cm, 16
  %n.mod.vf99 = and i64 %umax97, 1                ; 3 uses
  %n.vec100 = sub i64 %i.cm, %n.mod.vf99          ; 3 uses
  %4 = load i64, ptr %.pre84.i, align 8, !tbaa !131, !alias.scope !1678, !noalias !1681
  %i.cq = load i64, ptr %.pre82.i, align 8, !tbaa !131, !alias.scope !1684, !noalias !1686
  %5 = add i64 %n.vec100, %i.ck                   ; 2 uses
  %i.cr = mul i64 %i.cq, 31
  %i.cs = add i64 %i.cr, %4                       ; 2 uses
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
end_hunk_15
begin_hunk_16_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_20ConstantVectorReaderIlEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_:bb.a
  br i1 %cmp.n105, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader: ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.079.i.ph = phi i64 [ %5, %middle.block ], [ %i.ck, %vector.memcheck ], [ %i.ck, %iter.check ], [ %5, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit36.i

_ZN8facebook5velox6StatusD2Ev.exit36.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit36.i
  %.079.i = phi i64 [ %i.dd, %_ZN8facebook5velox6StatusD2Ev.exit36.i ], [ %.079.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader ] ; 2 uses
  %i.cy = load i64, ptr %.pre82.i, align 8, !tbaa !131, !noalias !1686
  %i.cz = load i64, ptr %.pre84.i, align 8, !tbaa !131, !noalias !1681
  %i.da = mul i64 %i.cy, 31
  %i.db = add i64 %i.da, %i.cz
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.pre89.i, i64 %.079.i
end_hunk_16
begin_hunk_17_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEENS1_16FlatVectorReaderIlEEEEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ap, 12
  %n.vec = and i64 %i.ap, 8589934576              ; 4 uses
  %6 = load i64, ptr %.pre.i, align 8, !tbaa !131, !alias.scope !1718, !noalias !1721
  %7 = add nsw i64 %n.vec, %i.al
  %i.ax = mul i64 %6, 31
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ax, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body
end_hunk_17
begin_hunk_18_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEENS1_16FlatVectorReaderIlEEEEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %i.ap, 8589934588            ; 3 uses
  %8 = load i64, ptr %.pre.i, align 8, !tbaa !131, !alias.scope !1718, !noalias !1721
  %9 = add nsw i64 %n.vec24, %i.al
  %i.bm = mul i64 %8, 31
  %broadcast.splatinsert27 = insertelement <4 x i64> poison, i64 %i.bm, i64 0
  %broadcast.splat28 = shufflevector <4 x i64> %broadcast.splatinsert27, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body
end_hunk_18
begin_hunk_19_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEENS1_16FlatVectorReaderIlEEEEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_:bb.a
  br i1 %cmp.n30, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit14.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit14.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.al, %iter.check ], [ %i.al, %vector.memcheck ], [ %7, %vec.epilog.iter.check ], [ %9, %vec.epilog.middle.block ] ; 5 uses
  %i.bs = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.bt = sub i32 %i.ae, %i.bs
  %.neg = add i32 %i.bs, 1
end_hunk_19
begin_hunk_20_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_20ConstantVectorReaderIlEENS4_16FlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_:bb.a
  %min.iters.check102 = icmp ult i64 %i.co, 16
  %n.mod.vf106 = and i64 %umax101, 1              ; 3 uses
  %n.vec107 = sub i64 %i.co, %n.mod.vf106         ; 3 uses
  %4 = load i64, ptr %.pre79.i, align 8, !tbaa !131, !alias.scope !1759, !noalias !1762
  %5 = add i64 %n.vec107, %i.cm                   ; 2 uses
  %i.di = mul i64 %4, 31
  %broadcast.splatinsert110 = insertelement <4 x i64> poison, i64 %i.di, i64 0
  %broadcast.splat111 = shufflevector <4 x i64> %broadcast.splatinsert110, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check102, label %vec.epilog.vector.body, label %vector.body
end_hunk_20
begin_hunk_21_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_20ConstantVectorReaderIlEENS4_16FlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_:bb.a
  br i1 %cmp.n113, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader: ; preds = %middle.block, %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.076.i.ph = phi i64 [ %5, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %vector.memcheck ], [ %i.cm, %iter.check ], [ %5, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit33.i

_ZN8facebook5velox6StatusD2Ev.exit33.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit33.i
end_hunk_21
begin_hunk_22_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEENS1_20ConstantVectorReaderIlEEEEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ap, 12
  %n.vec = and i64 %i.ap, 8589934576              ; 4 uses
  %i.ax = load i64, ptr %.pre26.i, align 8, !tbaa !131, !alias.scope !1793, !noalias !1796
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ax, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %6 = add nsw i64 %n.vec, %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_22
begin_hunk_23_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEENS1_20ConstantVectorReaderIlEEEEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %i.ap, 8589934588            ; 3 uses
  %i.bq = load i64, ptr %.pre26.i, align 8, !tbaa !131, !alias.scope !1793, !noalias !1796
  %broadcast.splatinsert27 = insertelement <4 x i64> poison, i64 %i.bq, i64 0
  %broadcast.splat28 = shufflevector <4 x i64> %broadcast.splatinsert27, <4 x i64> poison, <4 x i32> zeroinitializer
  %7 = add nsw i64 %n.vec24, %i.al
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
end_hunk_23
begin_hunk_24_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_16FlatVectorReaderIlEENS4_20ConstantVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_:bb.a
  %min.iters.check102 = icmp ult i64 %i.co, 16
  %n.mod.vf106 = and i64 %umax101, 1              ; 3 uses
  %n.vec107 = sub i64 %i.co, %n.mod.vf106         ; 3 uses
  %i.di = load i64, ptr %.pre80.i, align 8, !tbaa !131, !alias.scope !1834, !noalias !1837
  %broadcast.splatinsert110 = insertelement <4 x i64> poison, i64 %i.di, i64 0
  %broadcast.splat111 = shufflevector <4 x i64> %broadcast.splatinsert110, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  %4 = add i64 %n.vec107, %i.cm                   ; 2 uses
  br i1 %min.iters.check102, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
end_hunk_24
begin_hunk_25_@llvm.fshl.v2i64
!1641 = distinct !{!1641, !1642}
!1642 = distinct !{!1642, !"LVerDomain"}
!1643 = !{!1644}
!1644 = distinct !{!1644, !1645, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderIlEEJlETnNSt9enable_ifIXneT_L_ZNSB_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_: argument 0"}
!1645 = distinct !{!1645, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderIlEEJlETnNSt9enable_ifIXneT_L_ZNSB_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_"}
!1646 = !{!1647}
!1647 = distinct !{!1647, !1642}
!1648 = !{!1649}
!1649 = distinct !{!1649, !1650, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIlEEJSF_ETnNSt9enable_ifIXneT_L_ZNSB_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_: argument 0"}
!1650 = distinct !{!1650, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIlEEJSF_ETnNSt9enable_ifIXneT_L_ZNSB_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_"}
!1651 = !{!1652}
!1652 = distinct !{!1652, !1642}
!1653 = !{!1647, !1641}
!1654 = distinct !{!1654, !28, !228, !229}
!1655 = distinct !{!1655, !28, !228, !229}
!1656 = distinct !{!1656, !28, !228}
end_hunk_25
begin_hunk_26_@llvm.fshl.v2i64
!1679 = distinct !{!1679, !1680}
!1680 = distinct !{!1680, !"LVerDomain"}
!1681 = !{!1682}
!1682 = distinct !{!1682, !1683, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderIlEEJlETnNSt9enable_ifIXneT_L_ZNSB_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_: argument 0"}
!1683 = distinct !{!1683, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE14doApplyNotNullILm1EKNS1_20ConstantVectorReaderIlEEJlETnNSt9enable_ifIXneT_L_ZNSB_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_"}
!1684 = !{!1685}
!1685 = distinct !{!1685, !1680}
!1686 = !{!1687}
!1687 = distinct !{!1687, !1688, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIlEEJSF_ETnNSt9enable_ifIXneT_L_ZNSB_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_: argument 0"}
!1688 = distinct !{!1688, !"_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE14doApplyNotNullILm0ENS1_20ConstantVectorReaderIlEEJSF_ETnNSt9enable_ifIXneT_L_ZNSB_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_"}
!1689 = !{!1690}
!1690 = distinct !{!1690, !1680}
!1691 = !{!1685, !1679}
!1692 = distinct !{!1692, !28, !228, !229}
!1693 = distinct !{!1693, !28, !228, !229}
!1694 = distinct !{!1694, !28, !228}
end_hunk_26
