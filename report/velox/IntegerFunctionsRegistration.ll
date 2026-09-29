Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/IntegerFunctionsRegistration?download=true
inline.NumInlined: 10881
inline.NumDeleted: 3611
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_20ConstantVectorReaderIlEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_20ConstantVectorReaderIlEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1344) align 8 %2, ptr noundef byval(%class.anon.1345) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !682, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !683
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1757 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !675, !nonnull !79, !align !163
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !676, !nonnull !79, !align !163
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !677, !nonnull !79, !align !163
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !679, !nonnull !79, !align !163
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !342
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.al, i64 %i.ac
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i

_ZN8facebook5velox6StatusD2Ev.exit23.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i, %.preheader.i
  %.034.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.as, %_ZN8facebook5velox6StatusD2Ev.exit23.i ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i, i1 true)
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !126, !noalias !1758
  %i.ao = load i64, ptr %i.ag, align 8, !tbaa !126, !noalias !1759
  %i.ap = mul i64 %i.an, 31
  %i.aq = add i64 %i.ap, %i.ao
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.am
  store i64 %i.aq, ptr %gep.i, align 8, !tbaa !126
  %i.ar = add nsw i64 %.034.i, -1
  %i.as = and i64 %i.ar, %.034.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.as, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit23.i, !llvm.loop !1731

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = sdiv i32 %0, 64                         ; 2 uses
  %i.au = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.av
  %i.aw = xor i64 %notmask.i.i35, -1
  %i.ax = sub nsw i32 64, %i.au
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl i64 %i.aw, %i.ay
  %i.ba = load i8, ptr %2, align 8, !tbaa !682, !range !78, !noundef !79
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !683
  %i.bd = sext i32 %i.at to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !126
  %i.bg = xor i8 %i.ba, 1
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = xor i64 %i.bf, %i.bi
  %i.bk = and i64 %i.bj, %i.az                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bk, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = shl nsw i32 %i.at, 6
  %i.bn = sext i32 %i.bm to i64
  %.pre.i38 = load ptr, ptr %i.bl, align 8, !tbaa !1757 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !675, !nonnull !79, !align !163
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !676, !nonnull !79, !align !163
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !677, !nonnull !79, !align !163
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !679, !nonnull !79, !align !163
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !342
  %invariant.gep.i39 = getelementptr [8 x i8], ptr %i.bw, i64 %i.bn
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i40

_ZN8facebook5velox6StatusD2Ev.exit23.i40:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i40, %.preheader.i37
  %.034.i41 = phi i64 [ %i.bk, %.preheader.i37 ], [ %i.cd, %_ZN8facebook5velox6StatusD2Ev.exit23.i40 ] ; 3 uses
  %i.bx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i41, i1 true)
  %i.by = load i64, ptr %i.bp, align 8, !tbaa !126, !noalias !1760
  %i.bz = load i64, ptr %i.br, align 8, !tbaa !126, !noalias !1761
  %i.ca = mul i64 %i.by, 31
  %i.cb = add i64 %i.ca, %i.bz
  %gep.i42 = getelementptr [8 x i8], ptr %invariant.gep.i39, i64 %i.bx
  store i64 %i.cb, ptr %gep.i42, align 8, !tbaa !126
  %i.cc = add i64 %.034.i41, -1
  %i.cd = and i64 %i.cc, %.034.i41                ; 2 uses
  %.not10.i43 = icmp eq i64 %i.cd, 0
  br i1 %.not10.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %_ZN8facebook5velox6StatusD2Ev.exit23.i40, !llvm.loop !1731

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i40, %bb.e, %bb.d
  %i.ce = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3361 = icmp sgt i32 %i.ce, %i.d
  br i1 %.not3361, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44
  %i.cf = load i8, ptr %3, align 8, !tbaa !685, !range !78, !noundef !79
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !686
  %i.ci = xor i8 %i.cf, 1
  %i.cj = zext nneg i8 %i.ci to i64
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i45 = load ptr, ptr %i.cl, align 8        ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 32 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit
  %i.cp = phi i32 [ %i.ce, %.lr.ph ], [ %i.er, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit ] ; 2 uses
  %.062 = phi i32 [ %i.c, %.lr.ph ], [ %i.cp, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit ] ; 2 uses
  %i.cq = sdiv i32 %.062, 64                      ; 3 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !126
  %i.cu = xor i64 %i.ct, %i.ck                    ; 2 uses
  switch i64 %i.cu, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEESF_EEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEESF_EEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph.i: ; preds = %bb.f
  %i.cv = shl nsw i32 %i.cq, 6
  %i.cw = sext i32 %i.cv to i64
  %i.cx = load ptr, ptr %i.cm, align 8, !tbaa !675, !nonnull !79, !align !163
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !676, !nonnull !79, !align !163
  %i.cz = load ptr, ptr %i.co, align 8, !tbaa !677, !nonnull !79, !align !163
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !679, !nonnull !79, !align !163
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !342
  %invariant.gep.i46 = getelementptr [8 x i8], ptr %i.dc, i64 %i.cw
  br label %_ZN8facebook5velox6StatusD2Ev.exit55.i

bb.g:                                             ; preds = %bb.f
  %i.dd = shl nsw i32 %i.cq, 6                    ; 2 uses
  %i.de = add i32 %i.dd, 64
  %i.df = sext i32 %i.de to i64                   ; 3 uses
  %.0.off = add i32 %.062, 127
  %.not80.i = icmp ult i32 %.0.off, 64
  br i1 %.not80.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.dg = sext i32 %i.dd to i64                   ; 9 uses
  %i.dh = load ptr, ptr %i.cm, align 8, !tbaa !675, !nonnull !79, !align !163 ; 4 uses
  %i.di = load ptr, ptr %i.cn, align 8, !tbaa !676, !nonnull !79, !align !163 ; 4 uses
  %i.dj = load ptr, ptr %i.co, align 8, !tbaa !677, !nonnull !79, !align !163
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !679, !nonnull !79, !align !163
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !342 ; 5 uses
  %i.dn = or disjoint i64 %i.dg, 1
  %umax84 = tail call i64 @llvm.umax.i64(i64 %i.dn, i64 %i.df) ; 2 uses
  %i.do = sub i64 %umax84, %i.dg                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.do, 2
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dp = shl nuw nsw i64 %i.dg, 3
  %scevgep = getelementptr nuw i8, ptr %i.dm, i64 %i.dp ; 2 uses
  %i.dq = or disjoint i64 %i.dg, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.df)
  %i.dr = shl nsw i64 %umax, 3
  %scevgep78 = getelementptr i8, ptr %i.dm, i64 %i.dr ; 2 uses
  %scevgep79 = getelementptr i8, ptr %i.dh, i64 8
  %scevgep80 = getelementptr i8, ptr %i.di, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep79
  %bound1 = icmp ult ptr %i.dh, %scevgep78
  %found.conflict = and i1 %bound0, %bound1
  %bound081 = icmp ult ptr %scevgep, %scevgep80
  %bound182 = icmp ult ptr %i.di, %scevgep78
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx = or i1 %found.conflict, %found.conflict83
  br i1 %conflict.rdx, label %_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check85 = icmp ult i64 %i.do, 16
  %i.ds = and i64 %umax84, 1                      ; 3 uses
  %n.vec86 = sub i64 %i.do, %i.ds                 ; 3 uses
  %i.dt = add i64 %n.vec86, %i.dg                 ; 2 uses
  %i.du = load i64, ptr %i.dh, align 8, !tbaa !126, !alias.scope !1762, !noalias !1763
  %i.dv = load i64, ptr %i.di, align 8, !tbaa !126, !alias.scope !1764, !noalias !1765
  %i.dw = mul i64 %i.du, 31
  %i.dx = add i64 %i.dw, %i.dv                    ; 2 uses
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.dx, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.dm, i64 %i.dg
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.ea = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <4 x i64> %broadcast.splat, ptr %gep, align 8, !tbaa !126, !alias.scope !1766, !noalias !1767
  store <4 x i64> %broadcast.splat, ptr %i.dy, align 8, !tbaa !126, !alias.scope !1766, !noalias !1767
  store <4 x i64> %broadcast.splat, ptr %i.dz, align 8, !tbaa !126, !alias.scope !1766, !noalias !1767
  store <4 x i64> %broadcast.splat, ptr %i.ea, align 8, !tbaa !126, !alias.scope !1766, !noalias !1767
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec86
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !1744

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ds, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert88 = insertelement <2 x i64> poison, i64 %i.dx, i64 0
  %broadcast.splat89 = shufflevector <2 x i64> %broadcast.splatinsert88, <2 x i64> poison, <2 x i32> zeroinitializer
  %invariant.gep95 = getelementptr [8 x i8], ptr %i.dm, i64 %i.dg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index87 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 2 uses
  %gep96 = getelementptr [8 x i8], ptr %invariant.gep95, i64 %index87
  store <2 x i64> %broadcast.splat89, ptr %gep96, align 8, !tbaa !126, !alias.scope !1766, !noalias !1767
  %index.next90 = add nuw i64 %index87, 2         ; 2 uses
  %i.ec = icmp eq i64 %index.next90, %n.vec86
  br i1 %i.ec, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1745

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n91 = icmp eq i64 %i.ds, 0
  br i1 %cmp.n91, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader: ; preds = %middle.block, %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.079.i.ph = phi i64 [ %i.dt, %middle.block ], [ %i.dg, %vector.memcheck ], [ %i.dg, %iter.check ], [ %i.dt, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit36.i

_ZN8facebook5velox6StatusD2Ev.exit36.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit36.i
  %.079.i = phi i64 [ %i.ei, %_ZN8facebook5velox6StatusD2Ev.exit36.i ], [ %.079.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader ] ; 2 uses
  %i.ed = load i64, ptr %i.dh, align 8, !tbaa !126, !noalias !1763
  %i.ee = load i64, ptr %i.di, align 8, !tbaa !126, !noalias !1765
  %i.ef = mul i64 %i.ed, 31
  %i.eg = add i64 %i.ef, %i.ee
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.079.i
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !126
  %i.ei = add nuw i64 %.079.i, 1                  ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.df
  br i1 %i.ej, label %_ZN8facebook5velox6StatusD2Ev.exit36.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, !llvm.loop !1746

_ZN8facebook5velox6StatusD2Ev.exit55.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit55.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEESF_EEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph.i
  %.01578.i = phi i64 [ %i.cu, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEESF_EEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph.i ], [ %i.eq, %_ZN8facebook5velox6StatusD2Ev.exit55.i ] ; 3 uses
  %i.ek = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01578.i, i1 true)
  %i.el = load i64, ptr %i.cx, align 8, !tbaa !126, !noalias !1768
  %i.em = load i64, ptr %i.cy, align 8, !tbaa !126, !noalias !1769
  %i.en = mul i64 %i.el, 31
  %i.eo = add i64 %i.en, %i.em
  %gep.i47 = getelementptr [8 x i8], ptr %invariant.gep.i46, i64 %i.ek
  store i64 %i.eo, ptr %gep.i47, align 8, !tbaa !126
  %i.ep = add i64 %.01578.i, -1
  %i.eq = and i64 %i.ep, %.01578.i                ; 2 uses
  %.not.i48 = icmp eq i64 %i.eq, 0
  br i1 %.not.i48, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit55.i, !llvm.loop !1751

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit36.i, %_ZN8facebook5velox6StatusD2Ev.exit55.i, %middle.block, %vec.epilog.middle.block, %bb.f, %bb.g
  %i.er = add nsw i32 %i.cp, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.er, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !1752

bb.h:                                             ; preds = %._crit_edge
  %i.es = ashr i32 %1, 6
  %i.et = and i32 %1, 63
  %i.eu = zext nneg i32 %i.et to i64
  %notmask.i49 = shl nsw i64 -1, %i.eu
  %i.ev = xor i64 %notmask.i49, -1
  %i.ew = load i8, ptr %2, align 8, !tbaa !682, !range !78, !noundef !79
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !683
  %i.ez = sext i32 %i.es to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !126
  %i.fc = xor i8 %i.ew, 1
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = sub nsw i64 0, %i.fd
  %i.ff = xor i64 %i.fb, %i.fe
  %i.fg = and i64 %i.ff, %i.ev                    ; 2 uses
  %.not.i50 = icmp eq i64 %i.fg, 0
  br i1 %.not.i50, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i51

.preheader.i51:                                   ; preds = %bb.h
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fi = sext i32 %i.d to i64
  %.pre.i52 = load ptr, ptr %i.fh, align 8, !tbaa !1757 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !675, !nonnull !79, !align !163
  %i.fl = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !676, !nonnull !79, !align !163
  %i.fn = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !677, !nonnull !79, !align !163
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !679, !nonnull !79, !align !163
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !342
  %invariant.gep.i53 = getelementptr [8 x i8], ptr %i.fr, i64 %i.fi
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i54

_ZN8facebook5velox6StatusD2Ev.exit23.i54:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i54, %.preheader.i51
  %.034.i55 = phi i64 [ %i.fg, %.preheader.i51 ], [ %i.fy, %_ZN8facebook5velox6StatusD2Ev.exit23.i54 ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i55, i1 true)
  %i.ft = load i64, ptr %i.fk, align 8, !tbaa !126, !noalias !1770
  %i.fu = load i64, ptr %i.fm, align 8, !tbaa !126, !noalias !1771
  %i.fv = mul i64 %i.ft, 31
  %i.fw = add i64 %i.fv, %i.fu
  %gep.i56 = getelementptr [8 x i8], ptr %invariant.gep.i53, i64 %i.fs
  store i64 %i.fw, ptr %gep.i56, align 8, !tbaa !126
  %i.fx = add nsw i64 %.034.i55, -1
  %i.fy = and i64 %i.fx, %.034.i55                ; 2 uses
  %.not10.i57 = icmp eq i64 %i.fy, 0
  br i1 %.not10.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit23.i54, !llvm.loop !1731

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i54, %_ZN8facebook5velox6StatusD2Ev.exit23.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEENS1_16FlatVectorReaderIlEEEEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef byval(%class.anon.1355) align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.1370, align 8           ; 8 uses
  %4 = alloca %class.anon.1371, align 8           ; 8 uses
  %5 = alloca %class.anon.1367, align 1           ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !427, !range !78, !noundef !79
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.a
  %.0.in.pre.i.i = load i8, ptr %i.a, align 4, !tbaa !60, !range !78
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !429
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !430  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !431
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %1, align 8, !tbaa !366    ; 2 uses
  %.not.i.i6.i = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i6.i, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i.i10.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i.i10.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEENS1_16FlatVectorReaderIlEEEEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_:bb.a
  call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_20ConstantVectorReaderIlEENS4_16FlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %i.dd, i32 noundef %i.df, ptr noundef nonnull byval(%class.anon.1370) align 8 %3, ptr noundef nonnull byval(%class.anon.1371) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_20ConstantVectorReaderIlEENS4_16FlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1370) align 8 %2, ptr noundef byval(%class.anon.1371) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !695, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !696
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1819 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !688, !nonnull !79, !align !163
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !689, !nonnull !79, !align !163
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !351, !noalias !1820
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !690, !nonnull !79, !align !163
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !692, !nonnull !79, !align !163
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i

_ZN8facebook5velox6StatusD2Ev.exit20.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i, %.preheader.i
  %.031.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.aw, %_ZN8facebook5velox6StatusD2Ev.exit20.i ] ; 3 uses
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i, i1 true)
  %i.ao = load i64, ptr %i.ae, align 8, !tbaa !126, !noalias !1821
  %i.ap = or disjoint i64 %i.an, %i.ac            ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !126, !noalias !1820
  %i.as = mul i64 %i.ao, 31
  %i.at = add i64 %i.ar, %i.as
  %i.au = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ap
  store i64 %i.at, ptr %i.au, align 8, !tbaa !126
  %i.av = add nsw i64 %.031.i, -1
  %i.aw = and i64 %i.av, %.031.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.aw, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, !llvm.loop !1793

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = sdiv i32 %0, 64                         ; 2 uses
  %i.ay = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.az
  %i.ba = xor i64 %notmask.i.i35, -1
  %i.bb = sub nsw i32 64, %i.ay
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl i64 %i.ba, %i.bc
  %i.be = load i8, ptr %2, align 8, !tbaa !695, !range !78, !noundef !79
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !696
  %i.bh = sext i32 %i.ax to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !126
  %i.bk = xor i8 %i.be, 1
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = xor i64 %i.bj, %i.bm
  %i.bo = and i64 %i.bn, %i.bd                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bo, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = shl nsw i32 %i.ax, 6
  %i.br = sext i32 %i.bq to i64
  %.pre.i38 = load ptr, ptr %i.bp, align 8, !tbaa !1819 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !688, !nonnull !79, !align !163
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !689, !nonnull !79, !align !163
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !351, !noalias !1822
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !690, !nonnull !79, !align !163
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !692, !nonnull !79, !align !163
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i39

_ZN8facebook5velox6StatusD2Ev.exit20.i39:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i39, %.preheader.i37
  %.031.i40 = phi i64 [ %i.bo, %.preheader.i37 ], [ %i.cl, %_ZN8facebook5velox6StatusD2Ev.exit20.i39 ] ; 3 uses
  %i.cc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i40, i1 true)
  %i.cd = load i64, ptr %i.bt, align 8, !tbaa !126, !noalias !1823
  %i.ce = or disjoint i64 %i.cc, %i.br            ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !126, !noalias !1822
  %i.ch = mul i64 %i.cd, 31
  %i.ci = add i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.ce
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !126
  %i.ck = add i64 %.031.i40, -1
  %i.cl = and i64 %i.ck, %.031.i40                ; 2 uses
  %.not10.i41 = icmp eq i64 %i.cl, 0
  br i1 %.not10.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42, label %_ZN8facebook5velox6StatusD2Ev.exit20.i39, !llvm.loop !1793

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i39, %bb.e, %bb.d
  %i.cm = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3355 = icmp sgt i32 %i.cm, %i.d
  br i1 %.not3355, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42
  %i.cn = load i8, ptr %3, align 8, !tbaa !698, !range !78, !noundef !79
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !699
  %i.cq = xor i8 %i.cn, 1
  %i.cr = zext nneg i8 %i.cq to i64
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i43 = load ptr, ptr %i.ct, align 8        ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 32 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  %i.cx = phi i32 [ %i.cm, %.lr.ph ], [ %i.gm, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %.056 = phi i32 [ %i.c, %.lr.ph ], [ %i.cx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %i.cy = sdiv i32 %.056, 64                      ; 3 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !126
  %i.dc = xor i64 %i.db, %i.cs                    ; 2 uses
  switch i64 %i.dc, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEENS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEENS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i: ; preds = %bb.f
  %i.dd = shl nsw i32 %i.cy, 6
  %i.de = sext i32 %i.dd to i64
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !688, !nonnull !79, !align !163
  %i.dg = load ptr, ptr %i.cv, align 8, !tbaa !689, !nonnull !79, !align !163
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !351, !noalias !1824
  %i.di = load ptr, ptr %i.cw, align 8, !tbaa !690, !nonnull !79, !align !163
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !692, !nonnull !79, !align !163
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit52.i

bb.g:                                             ; preds = %bb.f
  %i.dm = shl nsw i32 %i.cy, 6                    ; 4 uses
  %i.dn = add i32 %i.dm, 64
  %i.do = sext i32 %i.dn to i64                   ; 4 uses
  %.0.off = add i32 %.056, 127
  %.not77.i = icmp ult i32 %.0.off, 64
  br i1 %.not77.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.dp = sext i32 %i.dm to i64                   ; 13 uses
  %i.dq = load ptr, ptr %i.cu, align 8, !tbaa !688, !nonnull !79, !align !163 ; 4 uses
  %i.dr = load ptr, ptr %i.cv, align 8, !tbaa !689, !nonnull !79, !align !163
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !351, !noalias !1825 ; 5 uses
  %i.dt = load ptr, ptr %i.cw, align 8, !tbaa !690, !nonnull !79, !align !163
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !692, !nonnull !79, !align !163
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !342 ; 5 uses
  %i.dx = or disjoint i64 %i.dp, 1
  %umax80 = tail call i64 @llvm.umax.i64(i64 %i.dx, i64 %i.do) ; 2 uses
  %i.dy = sub i64 %umax80, %i.dp                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.dy, 4
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dz = or disjoint i64 %i.dp, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 %i.do)
  %i.ea = xor i64 %i.dp, -1
  %i.eb = add i64 %umax, %i.ea                    ; 2 uses
  %i.ec = sext i32 %i.dm to i35                   ; 2 uses
  %i.ed = shl nsw i35 %i.ec, 3
  %i.ee = trunc i64 %i.eb to i35
  %i.ef = add i35 %i.ec, %i.ee
  %i.eg = shl i35 %i.ef, 3
  %i.eh = icmp slt i35 %i.eg, %i.ed
  %i.ei = icmp ugt i64 %i.eb, 4294967295
  %i.ej = or i1 %i.eh, %i.ei
  br i1 %i.ej, label %_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ek = shl nuw nsw i64 %i.dp, 3
  %scevgep = getelementptr nuw i8, ptr %i.dw, i64 %i.ek ; 2 uses
  %i.el = or disjoint i64 %i.dp, 1
  %umax72 = tail call i64 @llvm.umax.i64(i64 %i.el, i64 %i.do)
  %i.em = shl nsw i64 %umax72, 3                  ; 2 uses
  %scevgep73 = getelementptr i8, ptr %i.dw, i64 %i.em ; 2 uses
  %scevgep74 = getelementptr i8, ptr %i.dq, i64 8
  %i.en = sext i32 %i.dm to i35
  %i.eo = shl nsw i35 %i.en, 3
  %i.ep = sext i35 %i.eo to i64                   ; 2 uses
  %scevgep75 = getelementptr i8, ptr %i.ds, i64 %i.ep
  %i.eq = add i64 %i.em, %i.ep
  %4 = shl nsw i64 %i.dp, 3
  %i.er = sub i64 %i.eq, %4
  %scevgep76 = getelementptr i8, ptr %i.ds, i64 %i.er
  %bound0 = icmp ult ptr %scevgep, %scevgep74
  %bound1 = icmp ult ptr %i.dq, %scevgep73
  %found.conflict = and i1 %bound0, %bound1
  %bound077 = icmp ult ptr %scevgep, %scevgep76
  %bound178 = icmp ult ptr %scevgep75, %scevgep73
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx = or i1 %found.conflict, %found.conflict79
  br i1 %conflict.rdx, label %_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check81 = icmp ult i64 %i.dy, 16
  %i.es = and i64 %umax80, 1                      ; 3 uses
  %n.vec85 = sub i64 %i.dy, %i.es                 ; 3 uses
  %i.et = add i64 %n.vec85, %i.dp                 ; 2 uses
  %i.eu = load i64, ptr %i.dq, align 8, !tbaa !126, !alias.scope !1826, !noalias !1827
  %i.ev = mul i64 %i.eu, 31
  %broadcast.splatinsert88 = insertelement <4 x i64> poison, i64 %i.ev, i64 0
  %broadcast.splat89 = shufflevector <4 x i64> %broadcast.splatinsert88, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check81, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ew = add nuw i64 %index, %i.dp               ; 2 uses
  %i.ex = shl i64 %i.ew, 32
  %i.ey = ashr exact i64 %i.ex, 29
  %i.ez = getelementptr inbounds i8, ptr %i.ds, i64 %i.ey ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 96
  %wide.load = load <4 x i64>, ptr %i.ez, align 8, !tbaa !126, !alias.scope !1828, !noalias !1825
  %wide.load82 = load <4 x i64>, ptr %i.fa, align 8, !tbaa !126, !alias.scope !1828, !noalias !1825
  %wide.load83 = load <4 x i64>, ptr %i.fb, align 8, !tbaa !126, !alias.scope !1828, !noalias !1825
  %wide.load84 = load <4 x i64>, ptr %i.fc, align 8, !tbaa !126, !alias.scope !1828, !noalias !1825
  %i.fd = add <4 x i64> %wide.load, %broadcast.splat89
  %i.fe = add <4 x i64> %wide.load82, %broadcast.splat89
  %i.ff = add <4 x i64> %wide.load83, %broadcast.splat89
  %i.fg = add <4 x i64> %wide.load84, %broadcast.splat89
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ew ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 96
  store <4 x i64> %i.fd, ptr %i.fh, align 8, !tbaa !126, !alias.scope !1829, !noalias !1830
  store <4 x i64> %i.fe, ptr %i.fi, align 8, !tbaa !126, !alias.scope !1829, !noalias !1830
  store <4 x i64> %i.ff, ptr %i.fj, align 8, !tbaa !126, !alias.scope !1829, !noalias !1830
  store <4 x i64> %i.fg, ptr %i.fk, align 8, !tbaa !126, !alias.scope !1829, !noalias !1830
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec85
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !1808

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.es, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index86 = phi i64 [ %index.next90, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.fm = add nuw i64 %index86, %i.dp             ; 2 uses
  %i.fn = shl i64 %i.fm, 32
  %i.fo = ashr exact i64 %i.fn, 29
  %i.fp = getelementptr inbounds i8, ptr %i.ds, i64 %i.fo
  %wide.load87 = load <4 x i64>, ptr %i.fp, align 8, !tbaa !126, !alias.scope !1828, !noalias !1825
  %i.fq = add <4 x i64> %wide.load87, %broadcast.splat89
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fm
  store <4 x i64> %i.fq, ptr %i.fr, align 8, !tbaa !126, !alias.scope !1829, !noalias !1830
  %index.next90 = add nuw i64 %index86, 4         ; 2 uses
  %i.fs = icmp eq i64 %index.next90, %n.vec85
  br i1 %i.fs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1809

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n91 = icmp eq i64 %i.es, 0
  br i1 %cmp.n91, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader: ; preds = %middle.block, %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.middle.block
  %.076.i.ph = phi i64 [ %i.et, %middle.block ], [ %i.dp, %vector.scevcheck ], [ %i.dp, %vector.memcheck ], [ %i.dp, %iter.check ], [ %i.et, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit33.i

_ZN8facebook5velox6StatusD2Ev.exit33.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit33.i
  %.076.i = phi i64 [ %i.ga, %_ZN8facebook5velox6StatusD2Ev.exit33.i ], [ %.076.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader ] ; 3 uses
  %i.ft = load i64, ptr %i.dq, align 8, !tbaa !126, !noalias !1827
  %sext.i = shl i64 %.076.i, 32
  %i.fu = ashr exact i64 %sext.i, 29
  %i.fv = getelementptr inbounds i8, ptr %i.ds, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !126, !noalias !1825
  %i.fx = mul i64 %i.ft, 31
  %i.fy = add i64 %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.076.i
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !126
  %i.ga = add nuw i64 %.076.i, 1                  ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %i.do
  br i1 %i.gb, label %_ZN8facebook5velox6StatusD2Ev.exit33.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, !llvm.loop !1810

_ZN8facebook5velox6StatusD2Ev.exit52.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit52.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEENS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i
  %.01575.i = phi i64 [ %i.dc, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEENS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i ], [ %i.gl, %_ZN8facebook5velox6StatusD2Ev.exit52.i ] ; 3 uses
  %i.gc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01575.i, i1 true)
  %i.gd = load i64, ptr %i.df, align 8, !tbaa !126, !noalias !1831
  %i.ge = or disjoint i64 %i.gc, %i.de            ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !126, !noalias !1824
  %i.gh = mul i64 %i.gd, 31
  %i.gi = add i64 %i.gg, %i.gh
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ge
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !126
  %i.gk = add i64 %.01575.i, -1
  %i.gl = and i64 %i.gk, %.01575.i                ; 2 uses
  %.not.i44 = icmp eq i64 %i.gl, 0
  br i1 %.not.i44, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit52.i, !llvm.loop !1813

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit33.i, %_ZN8facebook5velox6StatusD2Ev.exit52.i, %middle.block, %vec.epilog.middle.block, %bb.f, %bb.g
  %i.gm = add nsw i32 %i.cx, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.gm, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !1814

bb.h:                                             ; preds = %._crit_edge
  %i.gn = ashr i32 %1, 6
  %i.go = and i32 %1, 63
  %i.gp = zext nneg i32 %i.go to i64
  %notmask.i45 = shl nsw i64 -1, %i.gp
  %i.gq = xor i64 %notmask.i45, -1
  %i.gr = load i8, ptr %2, align 8, !tbaa !695, !range !78, !noundef !79
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !696
  %i.gu = sext i32 %i.gn to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gu
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !126
  %i.gx = xor i8 %i.gr, 1
  %i.gy = zext nneg i8 %i.gx to i64
  %i.gz = sub nsw i64 0, %i.gy
  %i.ha = xor i64 %i.gw, %i.gz
  %i.hb = and i64 %i.ha, %i.gq                    ; 2 uses
  %.not.i46 = icmp eq i64 %i.hb, 0
  br i1 %.not.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i47

.preheader.i47:                                   ; preds = %bb.h
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hd = sext i32 %i.d to i64
  %.pre.i48 = load ptr, ptr %i.hc, align 8, !tbaa !1819 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !688, !nonnull !79, !align !163
  %i.hg = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !689, !nonnull !79, !align !163
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !351, !noalias !1832
  %i.hj = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !690, !nonnull !79, !align !163
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !692, !nonnull !79, !align !163
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i49

_ZN8facebook5velox6StatusD2Ev.exit20.i49:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i49, %.preheader.i47
  %.031.i50 = phi i64 [ %i.hb, %.preheader.i47 ], [ %i.hx, %_ZN8facebook5velox6StatusD2Ev.exit20.i49 ] ; 3 uses
  %i.ho = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i50, i1 true)
  %i.hp = load i64, ptr %i.hf, align 8, !tbaa !126, !noalias !1833
  %i.hq = or disjoint i64 %i.ho, %i.hd            ; 2 uses
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.hq
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !126, !noalias !1832
  %i.ht = mul i64 %i.hp, 31
  %i.hu = add i64 %i.hs, %i.ht
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.hq
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !126
  %i.hw = add nsw i64 %.031.i50, -1
  %i.hx = and i64 %i.hw, %.031.i50                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.hx, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i49, !llvm.loop !1793

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i49, %_ZN8facebook5velox6StatusD2Ev.exit20.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEENS1_20ConstantVectorReaderIlEEEEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef byval(%class.anon.1381) align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.1396, align 8           ; 8 uses
  %4 = alloca %class.anon.1397, align 8           ; 8 uses
  %5 = alloca %class.anon.1393, align 1           ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !427, !range !78, !noundef !79
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.a
  %.0.in.pre.i.i = load i8, ptr %i.a, align 4, !tbaa !60, !range !78
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !429
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !430  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !431
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %1, align 8, !tbaa !366    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEENS1_20ConstantVectorReaderIlEEEEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_:bb.a
  call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_16FlatVectorReaderIlEENS4_20ConstantVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %i.dg, i32 noundef %i.di, ptr noundef nonnull byval(%class.anon.1396) align 8 %3, ptr noundef nonnull byval(%class.anon.1397) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit13.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_16FlatVectorReaderIlEENS4_20ConstantVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1396) align 8 %2, ptr noundef byval(%class.anon.1397) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !708, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !709
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1881 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !701, !nonnull !79, !align !163
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !702, !nonnull !79, !align !163
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !351, !noalias !1882
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !703, !nonnull !79, !align !163
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !705, !nonnull !79, !align !163
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.030.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.aw, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ac            ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !126, !noalias !1882
  %i.ar = load i64, ptr %i.ag, align 8, !tbaa !126, !noalias !1883
  %i.as = mul i64 %i.aq, 31
  %i.at = add i64 %i.as, %i.ar
  %i.au = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao
  store i64 %i.at, ptr %i.au, align 8, !tbaa !126
  %i.av = add nsw i64 %.030.i, -1
  %i.aw = and i64 %i.av, %.030.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.aw, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i, !llvm.loop !1855

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = sdiv i32 %0, 64                         ; 2 uses
  %i.ay = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.az
  %i.ba = xor i64 %notmask.i.i35, -1
  %i.bb = sub nsw i32 64, %i.ay
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl i64 %i.ba, %i.bc
  %i.be = load i8, ptr %2, align 8, !tbaa !708, !range !78, !noundef !79
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !709
  %i.bh = sext i32 %i.ax to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !126
  %i.bk = xor i8 %i.be, 1
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = xor i64 %i.bj, %i.bm
  %i.bo = and i64 %i.bn, %i.bd                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bo, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = shl nsw i32 %i.ax, 6
  %i.br = sext i32 %i.bq to i64
  %.pre.i38 = load ptr, ptr %i.bp, align 8, !tbaa !1881 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !701, !nonnull !79, !align !163
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !702, !nonnull !79, !align !163
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !351, !noalias !1884
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !703, !nonnull !79, !align !163
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !705, !nonnull !79, !align !163
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i39

_ZN8facebook5velox6StatusD2Ev.exit19.i39:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %.preheader.i37
  %.030.i40 = phi i64 [ %i.bo, %.preheader.i37 ], [ %i.cl, %_ZN8facebook5velox6StatusD2Ev.exit19.i39 ] ; 3 uses
  %i.cc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i40, i1 true)
  %i.cd = or disjoint i64 %i.cc, %i.br            ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !126, !noalias !1884
  %i.cg = load i64, ptr %i.bv, align 8, !tbaa !126, !noalias !1885
  %i.ch = mul i64 %i.cf, 31
  %i.ci = add i64 %i.ch, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cd
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !126
  %i.ck = add i64 %.030.i40, -1
  %i.cl = and i64 %i.ck, %.030.i40                ; 2 uses
  %.not10.i41 = icmp eq i64 %i.cl, 0
  br i1 %.not10.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42, label %_ZN8facebook5velox6StatusD2Ev.exit19.i39, !llvm.loop !1855

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %bb.e, %bb.d
  %i.cm = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3355 = icmp sgt i32 %i.cm, %i.d
  br i1 %.not3355, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42
  %i.cn = load i8, ptr %3, align 8, !tbaa !711, !range !78, !noundef !79
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !712
  %i.cq = xor i8 %i.cn, 1
  %i.cr = zext nneg i8 %i.cq to i64
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i43 = load ptr, ptr %i.ct, align 8        ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 32 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  %i.cx = phi i32 [ %i.cm, %.lr.ph ], [ %i.gq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %.056 = phi i32 [ %i.c, %.lr.ph ], [ %i.cx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %i.cy = sdiv i32 %.056, 64                      ; 3 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !126
  %i.dc = xor i64 %i.db, %i.cs                    ; 2 uses
  switch i64 %i.dc, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEENS1_20ConstantVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEENS1_20ConstantVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i: ; preds = %bb.f
  %i.dd = shl nsw i32 %i.cy, 6
  %i.de = sext i32 %i.dd to i64
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !701, !nonnull !79, !align !163
  %i.dg = load ptr, ptr %i.cv, align 8, !tbaa !702, !nonnull !79, !align !163
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !351, !noalias !1886
  %i.di = load ptr, ptr %i.cw, align 8, !tbaa !703, !nonnull !79, !align !163
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !705, !nonnull !79, !align !163
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit51.i

bb.g:                                             ; preds = %bb.f
  %i.dm = shl nsw i32 %i.cy, 6                    ; 4 uses
  %i.dn = add i32 %i.dm, 64
  %i.do = sext i32 %i.dn to i64                   ; 4 uses
  %.0.off = add i32 %.056, 127
  %.not76.i = icmp ult i32 %.0.off, 64
  br i1 %.not76.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.dp = sext i32 %i.dm to i64                   ; 13 uses
  %i.dq = load ptr, ptr %i.cu, align 8, !tbaa !701, !nonnull !79, !align !163
  %i.dr = load ptr, ptr %i.cv, align 8, !tbaa !702, !nonnull !79, !align !163 ; 4 uses
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !351, !noalias !1887 ; 5 uses
  %i.dt = load ptr, ptr %i.cw, align 8, !tbaa !703, !nonnull !79, !align !163
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !705, !nonnull !79, !align !163
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !342 ; 5 uses
  %i.dx = or disjoint i64 %i.dp, 1
  %umax80 = tail call i64 @llvm.umax.i64(i64 %i.dx, i64 %i.do) ; 2 uses
  %i.dy = sub i64 %umax80, %i.dp                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.dy, 4
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dz = or disjoint i64 %i.dp, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 %i.do)
  %i.ea = xor i64 %i.dp, -1
  %i.eb = add i64 %umax, %i.ea                    ; 2 uses
  %i.ec = sext i32 %i.dm to i35                   ; 2 uses
  %i.ed = shl nsw i35 %i.ec, 3
  %i.ee = trunc i64 %i.eb to i35
  %i.ef = add i35 %i.ec, %i.ee
  %i.eg = shl i35 %i.ef, 3
  %i.eh = icmp slt i35 %i.eg, %i.ed
  %i.ei = icmp ugt i64 %i.eb, 4294967295
  %i.ej = or i1 %i.eh, %i.ei
  br i1 %i.ej, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ek = shl nuw nsw i64 %i.dp, 3
  %scevgep = getelementptr nuw i8, ptr %i.dw, i64 %i.ek ; 2 uses
  %i.el = or disjoint i64 %i.dp, 1
  %umax72 = tail call i64 @llvm.umax.i64(i64 %i.el, i64 %i.do)
  %i.em = shl nsw i64 %umax72, 3                  ; 2 uses
  %scevgep73 = getelementptr i8, ptr %i.dw, i64 %i.em ; 2 uses
  %scevgep74 = getelementptr i8, ptr %i.dr, i64 8
  %i.en = sext i32 %i.dm to i35
  %i.eo = shl nsw i35 %i.en, 3
  %i.ep = sext i35 %i.eo to i64                   ; 2 uses
  %scevgep75 = getelementptr i8, ptr %i.ds, i64 %i.ep
  %i.eq = add i64 %i.em, %i.ep
  %4 = shl nsw i64 %i.dp, 3
  %i.er = sub i64 %i.eq, %4
  %scevgep76 = getelementptr i8, ptr %i.ds, i64 %i.er
  %bound0 = icmp ult ptr %scevgep, %scevgep74
  %bound1 = icmp ult ptr %i.dr, %scevgep73
  %found.conflict = and i1 %bound0, %bound1
  %bound077 = icmp ult ptr %scevgep, %scevgep76
  %bound178 = icmp ult ptr %scevgep75, %scevgep73
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx = or i1 %found.conflict, %found.conflict79
  br i1 %conflict.rdx, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check81 = icmp ult i64 %i.dy, 16
  %i.es = and i64 %umax80, 1                      ; 3 uses
  %n.vec85 = sub i64 %i.dy, %i.es                 ; 3 uses
  %i.et = add i64 %n.vec85, %i.dp                 ; 2 uses
  %i.eu = load i64, ptr %i.dr, align 8, !tbaa !126, !alias.scope !1888, !noalias !1889
  %broadcast.splatinsert88 = insertelement <4 x i64> poison, i64 %i.eu, i64 0
  %broadcast.splat89 = shufflevector <4 x i64> %broadcast.splatinsert88, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check81, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ev = add nuw i64 %index, %i.dp               ; 2 uses
  %i.ew = shl i64 %i.ev, 32
  %i.ex = ashr exact i64 %i.ew, 29
  %i.ey = getelementptr inbounds i8, ptr %i.ds, i64 %i.ex ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 96
  %wide.load = load <4 x i64>, ptr %i.ey, align 8, !tbaa !126, !alias.scope !1890, !noalias !1887
  %wide.load82 = load <4 x i64>, ptr %i.ez, align 8, !tbaa !126, !alias.scope !1890, !noalias !1887
  %wide.load83 = load <4 x i64>, ptr %i.fa, align 8, !tbaa !126, !alias.scope !1890, !noalias !1887
  %wide.load84 = load <4 x i64>, ptr %i.fb, align 8, !tbaa !126, !alias.scope !1890, !noalias !1887
  %i.fc = mul <4 x i64> %wide.load, splat (i64 31)
  %i.fd = mul <4 x i64> %wide.load82, splat (i64 31)
  %i.fe = mul <4 x i64> %wide.load83, splat (i64 31)
  %i.ff = mul <4 x i64> %wide.load84, splat (i64 31)
  %i.fg = add <4 x i64> %i.fc, %broadcast.splat89
  %i.fh = add <4 x i64> %i.fd, %broadcast.splat89
  %i.fi = add <4 x i64> %i.fe, %broadcast.splat89
  %i.fj = add <4 x i64> %i.ff, %broadcast.splat89
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ev ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 96
  store <4 x i64> %i.fg, ptr %i.fk, align 8, !tbaa !126, !alias.scope !1891, !noalias !1892
  store <4 x i64> %i.fh, ptr %i.fl, align 8, !tbaa !126, !alias.scope !1891, !noalias !1892
  store <4 x i64> %i.fi, ptr %i.fm, align 8, !tbaa !126, !alias.scope !1891, !noalias !1892
  store <4 x i64> %i.fj, ptr %i.fn, align 8, !tbaa !126, !alias.scope !1891, !noalias !1892
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec85
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !1870

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.es, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index86 = phi i64 [ %index.next90, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.fp = add nuw i64 %index86, %i.dp             ; 2 uses
  %i.fq = shl i64 %i.fp, 32
  %i.fr = ashr exact i64 %i.fq, 29
  %i.fs = getelementptr inbounds i8, ptr %i.ds, i64 %i.fr
  %wide.load87 = load <4 x i64>, ptr %i.fs, align 8, !tbaa !126, !alias.scope !1890, !noalias !1887
  %i.ft = mul <4 x i64> %wide.load87, splat (i64 31)
  %i.fu = add <4 x i64> %i.ft, %broadcast.splat89
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fp
  store <4 x i64> %i.fu, ptr %i.fv, align 8, !tbaa !126, !alias.scope !1891, !noalias !1892
  %index.next90 = add nuw i64 %index86, 4         ; 2 uses
  %i.fw = icmp eq i64 %index.next90, %n.vec85
  br i1 %i.fw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1871

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n91 = icmp eq i64 %i.es, 0
  br i1 %cmp.n91, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader: ; preds = %middle.block, %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.middle.block
  %.075.i.ph = phi i64 [ %i.et, %middle.block ], [ %i.dp, %vector.scevcheck ], [ %i.dp, %vector.memcheck ], [ %i.dp, %iter.check ], [ %i.et, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

_ZN8facebook5velox6StatusD2Ev.exit32.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit32.i
  %.075.i = phi i64 [ %i.ge, %_ZN8facebook5velox6StatusD2Ev.exit32.i ], [ %.075.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader ] ; 3 uses
  %sext.i = shl i64 %.075.i, 32
  %i.fx = ashr exact i64 %sext.i, 29
  %i.fy = getelementptr inbounds i8, ptr %i.ds, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !126, !noalias !1887
  %i.ga = load i64, ptr %i.dr, align 8, !tbaa !126, !noalias !1889
  %i.gb = mul i64 %i.fz, 31
  %i.gc = add i64 %i.gb, %i.ga
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.075.i
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !126
  %i.ge = add nuw i64 %.075.i, 1                  ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.do
  br i1 %i.gf, label %_ZN8facebook5velox6StatusD2Ev.exit32.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, !llvm.loop !1872

_ZN8facebook5velox6StatusD2Ev.exit51.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit51.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEENS1_20ConstantVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i
  %.01574.i = phi i64 [ %i.dc, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEENS1_20ConstantVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i ], [ %i.gp, %_ZN8facebook5velox6StatusD2Ev.exit51.i ] ; 3 uses
  %i.gg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01574.i, i1 true)
  %i.gh = or disjoint i64 %i.gg, %i.de            ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !126, !noalias !1886
  %i.gk = load i64, ptr %i.dg, align 8, !tbaa !126, !noalias !1893
  %i.gl = mul i64 %i.gj, 31
  %i.gm = add i64 %i.gl, %i.gk
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.gh
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !126
  %i.go = add i64 %.01574.i, -1
  %i.gp = and i64 %i.go, %.01574.i                ; 2 uses
  %.not.i44 = icmp eq i64 %i.gp, 0
  br i1 %.not.i44, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit51.i, !llvm.loop !1875

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZN8facebook5velox6StatusD2Ev.exit51.i, %middle.block, %vec.epilog.middle.block, %bb.f, %bb.g
  %i.gq = add nsw i32 %i.cx, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.gq, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !1876

bb.h:                                             ; preds = %._crit_edge
  %i.gr = ashr i32 %1, 6
  %i.gs = and i32 %1, 63
  %i.gt = zext nneg i32 %i.gs to i64
  %notmask.i45 = shl nsw i64 -1, %i.gt
  %i.gu = xor i64 %notmask.i45, -1
  %i.gv = load i8, ptr %2, align 8, !tbaa !708, !range !78, !noundef !79
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !709
  %i.gy = sext i32 %i.gr to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !126
  %i.hb = xor i8 %i.gv, 1
  %i.hc = zext nneg i8 %i.hb to i64
  %i.hd = sub nsw i64 0, %i.hc
  %i.he = xor i64 %i.ha, %i.hd
  %i.hf = and i64 %i.he, %i.gu                    ; 2 uses
  %.not.i46 = icmp eq i64 %i.hf, 0
  br i1 %.not.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i47

.preheader.i47:                                   ; preds = %bb.h
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hh = sext i32 %i.d to i64
  %.pre.i48 = load ptr, ptr %i.hg, align 8, !tbaa !1881 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !701, !nonnull !79, !align !163
  %i.hk = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !702, !nonnull !79, !align !163
  %i.hm = load ptr, ptr %i.hj, align 8, !tbaa !351, !noalias !1894
  %i.hn = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !703, !nonnull !79, !align !163
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !705, !nonnull !79, !align !163
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i49

_ZN8facebook5velox6StatusD2Ev.exit19.i49:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i49, %.preheader.i47
  %.030.i50 = phi i64 [ %i.hf, %.preheader.i47 ], [ %i.ib, %_ZN8facebook5velox6StatusD2Ev.exit19.i49 ] ; 3 uses
  %i.hs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i50, i1 true)
  %i.ht = or disjoint i64 %i.hs, %i.hh            ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !126, !noalias !1894
  %i.hw = load i64, ptr %i.hl, align 8, !tbaa !126, !noalias !1895
  %i.hx = mul i64 %i.hv, 31
  %i.hy = add i64 %i.hx, %i.hw
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.ht
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !126
  %i.ia = add nsw i64 %.030.i50, -1
  %i.ib = and i64 %i.ia, %.030.i50                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.ib, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i49, !llvm.loop !1855

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i49, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEESH_EEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISO_EEvRKNS0_17SelectivityVectorESN_EUlSN_E_EEvSS_SN_T0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef byval(%class.anon.1407) align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.1422, align 8           ; 8 uses
  %4 = alloca %class.anon.1423, align 8           ; 8 uses
  %5 = alloca %class.anon.1419, align 1           ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !427, !range !78, !noundef !79
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.a
  %.0.in.pre.i.i = load i8, ptr %i.a, align 4, !tbaa !60, !range !78
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !429
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !430  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !431
  %i.l = icmp eq i32 %i.i, %i.k
end_hunk_2
