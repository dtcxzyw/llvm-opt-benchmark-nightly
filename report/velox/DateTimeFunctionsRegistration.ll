inline.NumInlined: 127525
inline.NumDeleted: 25083
loop-unroll.NumCompletelyUnrolled: 1344
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 1383
begin_hunk_0_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %2, ptr %i.bj, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx6, align 8
  store i8 1, ptr %3, align 8, !tbaa !9233
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bd, ptr %i.bk, align 8, !tbaa !9236
  store i8 1, ptr %4, align 8, !tbaa !9237
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bd, ptr %i.bl, align 8, !tbaa !9239
  call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %i.bf, i32 noundef %i.bh, ptr noundef nonnull byval(%class.anon.4242) align 8 %3, ptr noundef nonnull byval(%class.anon.4243) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit13.i, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.4242) align 8 %2, ptr noundef byval(%class.anon.4243) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !9233, !range !475, !noundef !476
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9236
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !536
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !9240 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !9223, !nonnull !476, !align !580
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !9166, !noalias !9241
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !9226, !nonnull !476, !align !580
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !9230, !nonnull !476, !align !580
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.029.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.as, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i, i1 true)
  %i.am = or disjoint i64 %i.al, %i.ac            ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !536, !noalias !9241
  %i.ap = sdiv i64 %i.ao, 86400000
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !536
  %i.ar = add nsw i64 %.029.i, -1
  %i.as = and i64 %i.ar, %.029.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.as, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i, !llvm.loop !9244

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = sdiv i32 %0, 64                         ; 2 uses
  %i.au = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.av
  %i.aw = xor i64 %notmask.i.i35, -1
  %i.ax = sub nsw i32 64, %i.au
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl i64 %i.aw, %i.ay
  %i.ba = load i8, ptr %2, align 8, !tbaa !9233, !range !475, !noundef !476
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !9236
  %i.bd = sext i32 %i.at to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !536
  %i.bg = xor i8 %i.ba, 1
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = xor i64 %i.bf, %i.bi
  %i.bk = and i64 %i.bj, %i.az                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bk, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit42, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = shl nsw i32 %i.at, 6
  %i.bn = sext i32 %i.bm to i64
  %.pre.i38 = load ptr, ptr %i.bl, align 8, !tbaa !9240 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !9223, !nonnull !476, !align !580
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !9166, !noalias !9245
  %i.br = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !9226, !nonnull !476, !align !580
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !9230, !nonnull !476, !align !580
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i39

_ZN8facebook5velox6StatusD2Ev.exit19.i39:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %.preheader.i37
  %.029.i40 = phi i64 [ %i.bk, %.preheader.i37 ], [ %i.cd, %_ZN8facebook5velox6StatusD2Ev.exit19.i39 ] ; 3 uses
  %i.bw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i40, i1 true)
  %i.bx = or disjoint i64 %i.bw, %i.bn            ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !536, !noalias !9245
  %i.ca = sdiv i64 %i.bz, 86400000
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bx
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !536
  %i.cc = add i64 %.029.i40, -1
  %i.cd = and i64 %i.cc, %.029.i40                ; 2 uses
  %.not10.i41 = icmp eq i64 %i.cd, 0
  br i1 %.not10.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit42, label %_ZN8facebook5velox6StatusD2Ev.exit19.i39, !llvm.loop !9244

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit42: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %bb.e, %bb.d
  %i.ce = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3355 = icmp sgt i32 %i.ce, %i.d
  br i1 %.not3355, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit42
  %i.cf = load i8, ptr %3, align 8, !tbaa !9237, !range !475, !noundef !476
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !9239
  %i.ci = xor i8 %i.cf, 1
  %i.cj = zext nneg i8 %i.ci to i64
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i43 = load ptr, ptr %i.cl, align 8        ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 24 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit42
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  %i.co = phi i32 [ %i.ce, %.lr.ph ], [ %i.eb, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %.056 = phi i32 [ %i.c, %.lr.ph ], [ %i.co, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %i.cp = sdiv i32 %.056, 64                      ; 3 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !536
  %i.ct = xor i64 %i.cs, %i.ck                    ; 2 uses
  switch i64 %i.ct, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i: ; preds = %bb.f
  %i.cu = shl nsw i32 %i.cp, 6
  %i.cv = sext i32 %i.cu to i64
  %i.cw = load ptr, ptr %i.cm, align 8, !tbaa !9223, !nonnull !476, !align !580
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !9166, !noalias !9248
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !9226, !nonnull !476, !align !580
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !9230, !nonnull !476, !align !580
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit51.i

bb.g:                                             ; preds = %bb.f
  %i.dc = shl nsw i32 %i.cp, 6                    ; 2 uses
  %i.dd = add nuw i32 %i.dc, 64
  %i.de = sext i32 %i.dd to i64
  %.0.off = add i32 %.056, 127
  %.not74.i = icmp ult i32 %.0.off, 64
  br i1 %.not74.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i: ; preds = %bb.g
  %i.df = sext i32 %i.dc to i64
  %i.dg = load ptr, ptr %i.cm, align 8, !tbaa !9223, !nonnull !476, !align !580
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !9166, !noalias !9251
  %i.di = load ptr, ptr %i.cn, align 8, !tbaa !9226, !nonnull !476, !align !580
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !9230, !nonnull !476, !align !580
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

_ZN8facebook5velox6StatusD2Ev.exit32.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i
  %.073.i = phi i64 [ %i.df, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i ], [ %i.dr, %_ZN8facebook5velox6StatusD2Ev.exit32.i ] ; 3 uses
  %sext.i = shl i64 %.073.i, 32
  %i.dm = ashr exact i64 %sext.i, 29
  %i.dn = getelementptr inbounds i8, ptr %i.dh, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !536, !noalias !9251
  %i.dp = sdiv i64 %i.do, 86400000
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.073.i
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !536
  %i.dr = add nuw i64 %.073.i, 1                  ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.de
  br i1 %i.ds, label %_ZN8facebook5velox6StatusD2Ev.exit32.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, !llvm.loop !9254

_ZN8facebook5velox6StatusD2Ev.exit51.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit51.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i
  %.01572.i = phi i64 [ %i.ct, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i ], [ %i.ea, %_ZN8facebook5velox6StatusD2Ev.exit51.i ] ; 3 uses
  %i.dt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01572.i, i1 true)
  %i.du = or disjoint i64 %i.dt, %i.cv            ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !536, !noalias !9248
  %i.dx = sdiv i64 %i.dw, 86400000
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.du
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !536
  %i.dz = add i64 %.01572.i, -1
  %i.ea = and i64 %i.dz, %.01572.i                ; 2 uses
  %.not.i44 = icmp eq i64 %i.ea, 0
  br i1 %.not.i44, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit51.i, !llvm.loop !9255

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZN8facebook5velox6StatusD2Ev.exit51.i, %bb.f, %bb.g
  %i.eb = add nsw i32 %i.co, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eb, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !9256

bb.h:                                             ; preds = %._crit_edge
  %i.ec = ashr i32 %1, 6
  %i.ed = and i32 %1, 63
  %i.ee = zext nneg i32 %i.ed to i64
  %notmask.i45 = shl nsw i64 -1, %i.ee
  %i.ef = xor i64 %notmask.i45, -1
  %i.eg = load i8, ptr %2, align 8, !tbaa !9233, !range !475, !noundef !476
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !9236
  %i.ej = sext i32 %i.ec to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !536
  %i.em = xor i8 %i.eg, 1
  %i.en = zext nneg i8 %i.em to i64
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = xor i64 %i.el, %i.eo
  %i.eq = and i64 %i.ep, %i.ef                    ; 2 uses
  %.not.i46 = icmp eq i64 %i.eq, 0
  br i1 %.not.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i47

.preheader.i47:                                   ; preds = %bb.h
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.es = sext i32 %i.d to i64
  %.pre.i48 = load ptr, ptr %i.er, align 8, !tbaa !9240 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !9223, !nonnull !476, !align !580
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !9166, !noalias !9257
  %i.ew = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !9226, !nonnull !476, !align !580
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !9230, !nonnull !476, !align !580
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i49

_ZN8facebook5velox6StatusD2Ev.exit19.i49:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i49, %.preheader.i47
  %.029.i50 = phi i64 [ %i.eq, %.preheader.i47 ], [ %i.fi, %_ZN8facebook5velox6StatusD2Ev.exit19.i49 ] ; 3 uses
  %i.fb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i50, i1 true)
  %i.fc = or disjoint i64 %i.fb, %i.es            ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !536, !noalias !9257
  %i.ff = sdiv i64 %i.fe, 86400000
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fc
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !536
  %i.fh = add nsw i64 %.029.i50, -1
  %i.fi = and i64 %i.fh, %.029.i50                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fi, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i49, !llvm.loop !9244

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i49, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23DayFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.4268) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.4269, align 8           ; 6 uses
  %3 = alloca %class.anon.4270, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1151, !range !475, !noundef !476
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !182, !range !475
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1152
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1154 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1155
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !922    ; 2 uses
  %.not.i.i5 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i5, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i27.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i27.not, label %.critedge.i.i.i, label %.lr.ph29

bb.f:                                             ; preds = %.lr.ph29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i28, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph29, label %.critedge.i.i.i, !llvm.loop !1156

.lr.ph29:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i28, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !536
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1156

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !536
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph29, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph29 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1154 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1152 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !9260, !nonnull !476, !align !580 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !9261
  %i.am = load ptr, ptr %.pre, align 8, !tbaa !9264, !noalias !9266, !nonnull !476, !align !580 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1281, !noalias !9266
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 58
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !1282, !range !475, !noalias !9266, !noundef !476
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E3_EEvSC_:bb.a
  %i.di = and i8 %i.dh, %i.dd
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !26
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i, %bb.q, %bb.r
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !18460

bb.s:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.dj = load ptr, ptr %0, align 8, !tbaa !922
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !1152
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !1154
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E3_EEvPKmiibSD_(ptr noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.dn, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.7672) align 8 %1)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit, %bb.h, %bb.s
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.7673) align 8 %2, ptr noundef byval(%class.anon.7674) align 8 %3) local_unnamed_addr #6 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

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
  %i.q = load i8, ptr %2, align 8, !tbaa !18406, !range !475, !noundef !476
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18409
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !536
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18461
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !18462, !nonnull !476, !align !580
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1390
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !18463, !nonnull !476, !align !580
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !894
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1970
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.av, %bb.d ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.an = or disjoint i64 %i.am, %i.ag            ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !536
  %i.at = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  store i64 %i.as, ptr %i.at, align 8, !tbaa !536
  %i.au = add nsw i64 %.011.i, -1
  %i.av = and i64 %i.au, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !18464

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = sdiv i32 %0, 64                         ; 2 uses
  %i.ax = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ay
  %i.az = xor i64 %notmask.i.i35, -1
  %i.ba = sub nsw i32 64, %i.ax
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl i64 %i.az, %i.bb
  %i.bd = load i8, ptr %2, align 8, !tbaa !18406, !range !475, !noundef !476
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !18409
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !536
  %i.bj = xor i8 %i.bd, 1
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = xor i64 %i.bi, %i.bl
  %i.bn = and i64 %i.bm, %i.bc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = shl nsw i32 %i.aw, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !18461
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !18462, !nonnull !476, !align !580
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1390
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !18463, !nonnull !476, !align !580
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !894
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1970
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bn, %.preheader.i37 ], [ %i.cj, %bb.g ] ; 3 uses
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.cb = or disjoint i64 %i.ca, %i.bu            ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !536
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cb
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !536
  %i.ci = add i64 %.011.i38, -1
  %i.cj = and i64 %i.ci, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cj, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !18464

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.ck = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.ck, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.cl = load i8, ptr %3, align 8, !tbaa !18410, !range !475, !noundef !476
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !18412
  %i.co = xor i8 %i.cl, 1
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %i.cr, align 8, !nonnull !476, !align !580 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !476, !align !580 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cy = phi i32 [ %i.ck, %.lr.ph ], [ %i.ei, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cz = sdiv i32 %.051, 64                      ; 3 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !536
  %i.dd = xor i64 %i.dc, %i.cq                    ; 2 uses
  switch i64 %i.dd, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.de = shl nsw i32 %i.cz, 6
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !1390
  %i.dg = sext i32 %i.de to i64
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !894
  %i.di = load ptr, ptr %i.cx, align 8, !tbaa !1970
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dj = shl nsw i32 %i.cz, 6                    ; 2 uses
  %i.dk = add nuw i32 %i.dj, 64
  %i.dl = sext i32 %i.dk to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dm = sext i32 %i.dj to i64
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !1390
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !894
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !1970
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dm, %.lr.ph21.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.020.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !536
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.020.i
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !536
  %i.dw = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dl
  br i1 %i.dx, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !18465

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.dd, %.lr.ph.i ], [ %i.eh, %bb.k ] ; 3 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dz = or disjoint i64 %i.dy, %i.dg            ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !536
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dz
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !536
  %i.eg = add i64 %.01519.i, -1
  %i.eh = and i64 %i.eg, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eh, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !18466

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ei = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ei, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !18467

bb.l:                                             ; preds = %._crit_edge
  %i.ej = ashr i32 %1, 6
  %i.ek = and i32 %1, 63
  %i.el = zext nneg i32 %i.ek to i64
  %notmask.i42 = shl nsw i64 -1, %i.el
  %i.em = xor i64 %notmask.i42, -1
  %i.en = load i8, ptr %2, align 8, !tbaa !18406, !range !475, !noundef !476
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !18409
  %i.eq = sext i32 %i.ej to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !536
  %i.et = xor i8 %i.en, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = and i64 %i.ew, %i.em                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ex, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !18461
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !18462, !nonnull !476, !align !580
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1390
  %i.fd = sext i32 %i.d to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !18463, !nonnull !476, !align !580
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !894
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 144
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1970
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ex, %.preheader.i44 ], [ %i.fs, %bb.m ] ; 3 uses
  %i.fj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fk = or disjoint i64 %i.fj, %i.fd            ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !536
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fk
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !536
  %i.fr = add nsw i64 %.011.i45, -1
  %i.fs = and i64 %i.fr, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !18464

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.7675) align 8 %2, ptr noundef byval(%class.anon.7676) align 8 %3) local_unnamed_addr #6 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

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
  %i.q = load i8, ptr %2, align 8, !tbaa !18417, !range !475, !noundef !476
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18420
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !536
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18468
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !18469, !nonnull !476, !align !580
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !894
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1970
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !536
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !536
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !18470

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !18417, !range !475, !noundef !476
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !18420
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !536
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !18468
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !18469, !nonnull !476, !align !580
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !894
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
  store ptr %2, ptr %i.bm, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx6, align 8
  store i8 1, ptr %3, align 8, !tbaa !22571
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bg, ptr %i.bn, align 8, !tbaa !22574
  store i8 1, ptr %4, align 8, !tbaa !22575
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bg, ptr %i.bo, align 8, !tbaa !22577
  call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %i.bi, i32 noundef %i.bk, ptr noundef nonnull byval(%class.anon.9535) align 8 %3, ptr noundef nonnull byval(%class.anon.9536) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit13.i, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.9535) align 8 %2, ptr noundef byval(%class.anon.9536) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !22571, !range !475, !noundef !476
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22574
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !536
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !22578 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22562, !nonnull !476, !align !580
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !9166, !noalias !22579
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22564, !nonnull !476, !align !580
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22568, !nonnull !476, !align !580
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.029.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.at, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i, i1 true)
  %i.am = or disjoint i64 %i.al, %i.ac            ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !536, !noalias !22579
  %i.ap = srem i64 %i.ao, 86400000
  %.lhs.trunc.i = trunc nsw i64 %i.ap to i32
  %i.aq = sdiv i32 %.lhs.trunc.i, 3600000
  %.sext.i = sext i32 %i.aq to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am
  store i64 %.sext.i, ptr %i.ar, align 8, !tbaa !536
  %i.as = add nsw i64 %.029.i, -1
  %i.at = and i64 %i.as, %.029.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.at, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i, !llvm.loop !22582

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = sdiv i32 %0, 64                         ; 2 uses
  %i.av = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aw
  %i.ax = xor i64 %notmask.i.i35, -1
  %i.ay = sub nsw i32 64, %i.av
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl i64 %i.ax, %i.az
  %i.bb = load i8, ptr %2, align 8, !tbaa !22571, !range !475, !noundef !476
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !22574
  %i.be = sext i32 %i.au to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !536
  %i.bh = xor i8 %i.bb, 1
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = xor i64 %i.bg, %i.bj
  %i.bl = and i64 %i.bk, %i.ba                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bl, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = shl nsw i32 %i.au, 6
  %i.bo = sext i32 %i.bn to i64
  %.pre.i38 = load ptr, ptr %i.bm, align 8, !tbaa !22578 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !22562, !nonnull !476, !align !580
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !9166, !noalias !22583
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !22564, !nonnull !476, !align !580
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !22568, !nonnull !476, !align !580
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i39

_ZN8facebook5velox6StatusD2Ev.exit19.i39:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %.preheader.i37
  %.029.i40 = phi i64 [ %i.bl, %.preheader.i37 ], [ %i.cf, %_ZN8facebook5velox6StatusD2Ev.exit19.i39 ] ; 3 uses
  %i.bx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i40, i1 true)
  %i.by = or disjoint i64 %i.bx, %i.bo            ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !536, !noalias !22583
  %i.cb = srem i64 %i.ca, 86400000
  %.lhs.trunc.i41 = trunc nsw i64 %i.cb to i32
  %i.cc = sdiv i32 %.lhs.trunc.i41, 3600000
  %.sext.i42 = sext i32 %i.cc to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.by
  store i64 %.sext.i42, ptr %i.cd, align 8, !tbaa !536
  %i.ce = add i64 %.029.i40, -1
  %i.cf = and i64 %i.ce, %.029.i40                ; 2 uses
  %.not10.i43 = icmp eq i64 %i.cf, 0
  br i1 %.not10.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44, label %_ZN8facebook5velox6StatusD2Ev.exit19.i39, !llvm.loop !22582

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %bb.e, %bb.d
  %i.cg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3361 = icmp sgt i32 %i.cg, %i.d
  br i1 %.not3361, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44
  %i.ch = load i8, ptr %3, align 8, !tbaa !22575, !range !475, !noundef !476
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !22577
  %i.ck = xor i8 %i.ch, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i45 = load ptr, ptr %i.cn, align 8        ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 24 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  %i.cq = phi i32 [ %i.cg, %.lr.ph ], [ %i.ef, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %.062 = phi i32 [ %i.c, %.lr.ph ], [ %i.cq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %i.cr = sdiv i32 %.062, 64                      ; 3 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !536
  %i.cv = xor i64 %i.cu, %i.cm                    ; 2 uses
  switch i64 %i.cv, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i: ; preds = %bb.f
  %i.cw = shl nsw i32 %i.cr, 6
  %i.cx = sext i32 %i.cw to i64
  %i.cy = load ptr, ptr %i.co, align 8, !tbaa !22562, !nonnull !476, !align !580
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !9166, !noalias !22586
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !22564, !nonnull !476, !align !580
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !22568, !nonnull !476, !align !580
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit51.i

bb.g:                                             ; preds = %bb.f
  %i.de = shl nsw i32 %i.cr, 6                    ; 2 uses
  %i.df = add nuw i32 %i.de, 64
  %i.dg = sext i32 %i.df to i64
  %.0.off = add i32 %.062, 127
  %.not76.i = icmp ult i32 %.0.off, 64
  br i1 %.not76.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i: ; preds = %bb.g
  %i.dh = sext i32 %i.de to i64
  %i.di = load ptr, ptr %i.co, align 8, !tbaa !22562, !nonnull !476, !align !580
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !9166, !noalias !22589
  %i.dk = load ptr, ptr %i.cp, align 8, !tbaa !22564, !nonnull !476, !align !580
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !22568, !nonnull !476, !align !580
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

_ZN8facebook5velox6StatusD2Ev.exit32.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i
  %.075.i = phi i64 [ %i.dh, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i ], [ %i.du, %_ZN8facebook5velox6StatusD2Ev.exit32.i ] ; 3 uses
  %sext.i = shl i64 %.075.i, 32
  %i.do = ashr exact i64 %sext.i, 29
  %i.dp = getelementptr inbounds i8, ptr %i.dj, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !536, !noalias !22589
  %i.dr = srem i64 %i.dq, 86400000
  %.lhs.trunc.i46 = trunc nsw i64 %i.dr to i32
  %i.ds = sdiv i32 %.lhs.trunc.i46, 3600000
  %.sext.i47 = sext i32 %i.ds to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.075.i
  store i64 %.sext.i47, ptr %i.dt, align 8, !tbaa !536
  %i.du = add nuw i64 %.075.i, 1                  ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dg
  br i1 %i.dv, label %_ZN8facebook5velox6StatusD2Ev.exit32.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, !llvm.loop !22592

_ZN8facebook5velox6StatusD2Ev.exit51.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit51.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i
  %.01574.i = phi i64 [ %i.cv, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i ], [ %i.ee, %_ZN8facebook5velox6StatusD2Ev.exit51.i ] ; 3 uses
  %i.dw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01574.i, i1 true)
  %i.dx = or disjoint i64 %i.dw, %i.cx            ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !536, !noalias !22586
  %i.ea = srem i64 %i.dz, 86400000
  %.lhs.trunc70.i = trunc nsw i64 %i.ea to i32
  %i.eb = sdiv i32 %.lhs.trunc70.i, 3600000
  %.sext71.i = sext i32 %i.eb to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.dx
  store i64 %.sext71.i, ptr %i.ec, align 8, !tbaa !536
  %i.ed = add i64 %.01574.i, -1
  %i.ee = and i64 %i.ed, %.01574.i                ; 2 uses
  %.not.i48 = icmp eq i64 %i.ee, 0
  br i1 %.not.i48, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit51.i, !llvm.loop !22593

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZN8facebook5velox6StatusD2Ev.exit51.i, %bb.f, %bb.g
  %i.ef = add nsw i32 %i.cq, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ef, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !22594

bb.h:                                             ; preds = %._crit_edge
  %i.eg = ashr i32 %1, 6
  %i.eh = and i32 %1, 63
  %i.ei = zext nneg i32 %i.eh to i64
  %notmask.i49 = shl nsw i64 -1, %i.ei
  %i.ej = xor i64 %notmask.i49, -1
  %i.ek = load i8, ptr %2, align 8, !tbaa !22571, !range !475, !noundef !476
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !22574
  %i.en = sext i32 %i.eg to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !536
  %i.eq = xor i8 %i.ek, 1
  %i.er = zext nneg i8 %i.eq to i64
  %i.es = sub nsw i64 0, %i.er
  %i.et = xor i64 %i.ep, %i.es
  %i.eu = and i64 %i.et, %i.ej                    ; 2 uses
  %.not.i50 = icmp eq i64 %i.eu, 0
  br i1 %.not.i50, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i51

.preheader.i51:                                   ; preds = %bb.h
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ew = sext i32 %i.d to i64
  %.pre.i52 = load ptr, ptr %i.ev, align 8, !tbaa !22578 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !22562, !nonnull !476, !align !580
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !9166, !noalias !22595
  %i.fa = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !22564, !nonnull !476, !align !580
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !22568, !nonnull !476, !align !580
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i53

_ZN8facebook5velox6StatusD2Ev.exit19.i53:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i53, %.preheader.i51
  %.029.i54 = phi i64 [ %i.eu, %.preheader.i51 ], [ %i.fn, %_ZN8facebook5velox6StatusD2Ev.exit19.i53 ] ; 3 uses
  %i.ff = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i54, i1 true)
  %i.fg = or disjoint i64 %i.ff, %i.ew            ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !536, !noalias !22595
  %i.fj = srem i64 %i.fi, 86400000
  %.lhs.trunc.i55 = trunc nsw i64 %i.fj to i32
  %i.fk = sdiv i32 %.lhs.trunc.i55, 3600000
  %.sext.i56 = sext i32 %i.fk to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fg
  store i64 %.sext.i56, ptr %i.fl, align 8, !tbaa !536
  %i.fm = add nsw i64 %.029.i54, -1
  %i.fn = and i64 %i.fm, %.029.i54                ; 2 uses
  %.not10.i57 = icmp eq i64 %i.fn, 0
  br i1 %.not10.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i53, !llvm.loop !22582

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i53, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24HourFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.9560) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.9561, align 8           ; 6 uses
  %3 = alloca %class.anon.9562, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1151, !range !475, !noundef !476
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !182, !range !475
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1152
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1154 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1155
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !922    ; 2 uses
  %.not.i.i5 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i5, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i27.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i27.not, label %.critedge.i.i.i, label %.lr.ph29

bb.f:                                             ; preds = %.lr.ph29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i28, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph29, label %.critedge.i.i.i, !llvm.loop !1156

.lr.ph29:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i28, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !536
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1156

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !536
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph29, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph29 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1154 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1152 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !22598, !nonnull !476, !align !580 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
  store ptr %2, ptr %i.bm, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx6, align 8
  store i8 1, ptr %3, align 8, !tbaa !24430
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bg, ptr %i.bn, align 8, !tbaa !24433
  store i8 1, ptr %4, align 8, !tbaa !24434
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bg, ptr %i.bo, align 8, !tbaa !24436
  call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %i.bi, i32 noundef %i.bk, ptr noundef nonnull byval(%class.anon.10453) align 8 %3, ptr noundef nonnull byval(%class.anon.10454) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit13.i, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.10453) align 8 %2, ptr noundef byval(%class.anon.10454) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !24430, !range !475, !noundef !476
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24433
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !536
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !24437 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !24421, !nonnull !476, !align !580
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !9166, !noalias !24438
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !24423, !nonnull !476, !align !580
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !24427, !nonnull !476, !align !580
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.029.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.at, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i, i1 true)
  %i.am = or disjoint i64 %i.al, %i.ac            ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !536, !noalias !24438
  %i.ap = srem i64 %i.ao, 3600000
  %.lhs.trunc.i = trunc nsw i64 %i.ap to i32
  %i.aq = sdiv i32 %.lhs.trunc.i, 60000
  %.sext.i = sext i32 %i.aq to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am
  store i64 %.sext.i, ptr %i.ar, align 8, !tbaa !536
  %i.as = add nsw i64 %.029.i, -1
  %i.at = and i64 %i.as, %.029.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.at, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i, !llvm.loop !24441

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = sdiv i32 %0, 64                         ; 2 uses
  %i.av = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aw
  %i.ax = xor i64 %notmask.i.i35, -1
  %i.ay = sub nsw i32 64, %i.av
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl i64 %i.ax, %i.az
  %i.bb = load i8, ptr %2, align 8, !tbaa !24430, !range !475, !noundef !476
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !24433
  %i.be = sext i32 %i.au to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !536
  %i.bh = xor i8 %i.bb, 1
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = xor i64 %i.bg, %i.bj
  %i.bl = and i64 %i.bk, %i.ba                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bl, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = shl nsw i32 %i.au, 6
  %i.bo = sext i32 %i.bn to i64
  %.pre.i38 = load ptr, ptr %i.bm, align 8, !tbaa !24437 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !24421, !nonnull !476, !align !580
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !9166, !noalias !24442
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !24423, !nonnull !476, !align !580
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !24427, !nonnull !476, !align !580
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i39

_ZN8facebook5velox6StatusD2Ev.exit19.i39:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %.preheader.i37
  %.029.i40 = phi i64 [ %i.bl, %.preheader.i37 ], [ %i.cf, %_ZN8facebook5velox6StatusD2Ev.exit19.i39 ] ; 3 uses
  %i.bx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i40, i1 true)
  %i.by = or disjoint i64 %i.bx, %i.bo            ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !536, !noalias !24442
  %i.cb = srem i64 %i.ca, 3600000
  %.lhs.trunc.i41 = trunc nsw i64 %i.cb to i32
  %i.cc = sdiv i32 %.lhs.trunc.i41, 60000
  %.sext.i42 = sext i32 %i.cc to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.by
  store i64 %.sext.i42, ptr %i.cd, align 8, !tbaa !536
  %i.ce = add i64 %.029.i40, -1
  %i.cf = and i64 %i.ce, %.029.i40                ; 2 uses
  %.not10.i43 = icmp eq i64 %i.cf, 0
  br i1 %.not10.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44, label %_ZN8facebook5velox6StatusD2Ev.exit19.i39, !llvm.loop !24441

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %bb.e, %bb.d
  %i.cg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3361 = icmp sgt i32 %i.cg, %i.d
  br i1 %.not3361, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44
  %i.ch = load i8, ptr %3, align 8, !tbaa !24434, !range !475, !noundef !476
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !24436
  %i.ck = xor i8 %i.ch, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i45 = load ptr, ptr %i.cn, align 8        ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 24 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  %i.cq = phi i32 [ %i.cg, %.lr.ph ], [ %i.ef, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %.062 = phi i32 [ %i.c, %.lr.ph ], [ %i.cq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %i.cr = sdiv i32 %.062, 64                      ; 3 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !536
  %i.cv = xor i64 %i.cu, %i.cm                    ; 2 uses
  switch i64 %i.cv, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i: ; preds = %bb.f
  %i.cw = shl nsw i32 %i.cr, 6
  %i.cx = sext i32 %i.cw to i64
  %i.cy = load ptr, ptr %i.co, align 8, !tbaa !24421, !nonnull !476, !align !580
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !9166, !noalias !24445
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !24423, !nonnull !476, !align !580
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !24427, !nonnull !476, !align !580
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit51.i

bb.g:                                             ; preds = %bb.f
  %i.de = shl nsw i32 %i.cr, 6                    ; 2 uses
  %i.df = add nuw i32 %i.de, 64
  %i.dg = sext i32 %i.df to i64
  %.0.off = add i32 %.062, 127
  %.not76.i = icmp ult i32 %.0.off, 64
  br i1 %.not76.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i: ; preds = %bb.g
  %i.dh = sext i32 %i.de to i64
  %i.di = load ptr, ptr %i.co, align 8, !tbaa !24421, !nonnull !476, !align !580
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !9166, !noalias !24448
  %i.dk = load ptr, ptr %i.cp, align 8, !tbaa !24423, !nonnull !476, !align !580
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !24427, !nonnull !476, !align !580
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

_ZN8facebook5velox6StatusD2Ev.exit32.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i
  %.075.i = phi i64 [ %i.dh, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i ], [ %i.du, %_ZN8facebook5velox6StatusD2Ev.exit32.i ] ; 3 uses
  %sext.i = shl i64 %.075.i, 32
  %i.do = ashr exact i64 %sext.i, 29
  %i.dp = getelementptr inbounds i8, ptr %i.dj, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !536, !noalias !24448
  %i.dr = srem i64 %i.dq, 3600000
  %.lhs.trunc.i46 = trunc nsw i64 %i.dr to i32
  %i.ds = sdiv i32 %.lhs.trunc.i46, 60000
  %.sext.i47 = sext i32 %i.ds to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.075.i
  store i64 %.sext.i47, ptr %i.dt, align 8, !tbaa !536
  %i.du = add nuw i64 %.075.i, 1                  ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dg
  br i1 %i.dv, label %_ZN8facebook5velox6StatusD2Ev.exit32.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, !llvm.loop !24451

_ZN8facebook5velox6StatusD2Ev.exit51.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit51.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i
  %.01574.i = phi i64 [ %i.cv, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i ], [ %i.ee, %_ZN8facebook5velox6StatusD2Ev.exit51.i ] ; 3 uses
  %i.dw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01574.i, i1 true)
  %i.dx = or disjoint i64 %i.dw, %i.cx            ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !536, !noalias !24445
  %i.ea = srem i64 %i.dz, 3600000
  %.lhs.trunc70.i = trunc nsw i64 %i.ea to i32
  %i.eb = sdiv i32 %.lhs.trunc70.i, 60000
  %.sext71.i = sext i32 %i.eb to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.dx
  store i64 %.sext71.i, ptr %i.ec, align 8, !tbaa !536
  %i.ed = add i64 %.01574.i, -1
  %i.ee = and i64 %i.ed, %.01574.i                ; 2 uses
  %.not.i48 = icmp eq i64 %i.ee, 0
  br i1 %.not.i48, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit51.i, !llvm.loop !24452

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZN8facebook5velox6StatusD2Ev.exit51.i, %bb.f, %bb.g
  %i.ef = add nsw i32 %i.cq, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ef, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !24453

bb.h:                                             ; preds = %._crit_edge
  %i.eg = ashr i32 %1, 6
  %i.eh = and i32 %1, 63
  %i.ei = zext nneg i32 %i.eh to i64
  %notmask.i49 = shl nsw i64 -1, %i.ei
  %i.ej = xor i64 %notmask.i49, -1
  %i.ek = load i8, ptr %2, align 8, !tbaa !24430, !range !475, !noundef !476
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !24433
  %i.en = sext i32 %i.eg to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !536
  %i.eq = xor i8 %i.ek, 1
  %i.er = zext nneg i8 %i.eq to i64
  %i.es = sub nsw i64 0, %i.er
  %i.et = xor i64 %i.ep, %i.es
  %i.eu = and i64 %i.et, %i.ej                    ; 2 uses
  %.not.i50 = icmp eq i64 %i.eu, 0
  br i1 %.not.i50, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i51

.preheader.i51:                                   ; preds = %bb.h
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ew = sext i32 %i.d to i64
  %.pre.i52 = load ptr, ptr %i.ev, align 8, !tbaa !24437 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !24421, !nonnull !476, !align !580
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !9166, !noalias !24454
  %i.fa = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !24423, !nonnull !476, !align !580
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !24427, !nonnull !476, !align !580
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i53

_ZN8facebook5velox6StatusD2Ev.exit19.i53:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i53, %.preheader.i51
  %.029.i54 = phi i64 [ %i.eu, %.preheader.i51 ], [ %i.fn, %_ZN8facebook5velox6StatusD2Ev.exit19.i53 ] ; 3 uses
  %i.ff = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i54, i1 true)
  %i.fg = or disjoint i64 %i.ff, %i.ew            ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !536, !noalias !24454
  %i.fj = srem i64 %i.fi, 3600000
  %.lhs.trunc.i55 = trunc nsw i64 %i.fj to i32
  %i.fk = sdiv i32 %.lhs.trunc.i55, 60000
  %.sext.i56 = sext i32 %i.fk to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fg
  store i64 %.sext.i56, ptr %i.fl, align 8, !tbaa !536
  %i.fm = add nsw i64 %.029.i54, -1
  %i.fn = and i64 %i.fm, %.029.i54                ; 2 uses
  %.not10.i57 = icmp eq i64 %i.fn, 0
  br i1 %.not10.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i53, !llvm.loop !24441

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i53, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26MinuteFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.10478) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.10479, align 8          ; 6 uses
  %3 = alloca %class.anon.10480, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1151, !range !475, !noundef !476
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !182, !range !475
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1152
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1154 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1155
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !922    ; 2 uses
  %.not.i.i5 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i5, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i27.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i27.not, label %.critedge.i.i.i, label %.lr.ph29

bb.f:                                             ; preds = %.lr.ph29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i28, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph29, label %.critedge.i.i.i, !llvm.loop !1156

.lr.ph29:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i28, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !536
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1156

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !536
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph29, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph29 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1154 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1152 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !24457, !nonnull !476, !align !580 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
  store ptr %2, ptr %i.bm, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx6, align 8
  store i8 1, ptr %3, align 8, !tbaa !25528
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bg, ptr %i.bn, align 8, !tbaa !25531
  store i8 1, ptr %4, align 8, !tbaa !25532
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bg, ptr %i.bo, align 8, !tbaa !25534
  call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %i.bi, i32 noundef %i.bk, ptr noundef nonnull byval(%class.anon.11031) align 8 %3, ptr noundef nonnull byval(%class.anon.11032) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit13.i, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.11031) align 8 %2, ptr noundef byval(%class.anon.11032) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !25528, !range !475, !noundef !476
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25531
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !536
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !25535 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25519, !nonnull !476, !align !580
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !9166, !noalias !25536
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25521, !nonnull !476, !align !580
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !25525, !nonnull !476, !align !580
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.029.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.at, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i, i1 true)
  %i.am = or disjoint i64 %i.al, %i.ac            ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !536, !noalias !25536
  %i.ap = srem i64 %i.ao, 60000
  %.lhs.trunc.i = trunc nsw i64 %i.ap to i32
  %i.aq = sdiv i32 %.lhs.trunc.i, 1000
  %.sext.i = sext i32 %i.aq to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am
  store i64 %.sext.i, ptr %i.ar, align 8, !tbaa !536
  %i.as = add nsw i64 %.029.i, -1
  %i.at = and i64 %i.as, %.029.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.at, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i, !llvm.loop !25539

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = sdiv i32 %0, 64                         ; 2 uses
  %i.av = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aw
  %i.ax = xor i64 %notmask.i.i35, -1
  %i.ay = sub nsw i32 64, %i.av
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl i64 %i.ax, %i.az
  %i.bb = load i8, ptr %2, align 8, !tbaa !25528, !range !475, !noundef !476
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !25531
  %i.be = sext i32 %i.au to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !536
  %i.bh = xor i8 %i.bb, 1
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = xor i64 %i.bg, %i.bj
  %i.bl = and i64 %i.bk, %i.ba                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bl, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = shl nsw i32 %i.au, 6
  %i.bo = sext i32 %i.bn to i64
  %.pre.i38 = load ptr, ptr %i.bm, align 8, !tbaa !25535 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25519, !nonnull !476, !align !580
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !9166, !noalias !25540
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !25521, !nonnull !476, !align !580
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !25525, !nonnull !476, !align !580
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i39

_ZN8facebook5velox6StatusD2Ev.exit19.i39:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %.preheader.i37
  %.029.i40 = phi i64 [ %i.bl, %.preheader.i37 ], [ %i.cf, %_ZN8facebook5velox6StatusD2Ev.exit19.i39 ] ; 3 uses
  %i.bx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i40, i1 true)
  %i.by = or disjoint i64 %i.bx, %i.bo            ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !536, !noalias !25540
  %i.cb = srem i64 %i.ca, 60000
  %.lhs.trunc.i41 = trunc nsw i64 %i.cb to i32
  %i.cc = sdiv i32 %.lhs.trunc.i41, 1000
  %.sext.i42 = sext i32 %i.cc to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.by
  store i64 %.sext.i42, ptr %i.cd, align 8, !tbaa !536
  %i.ce = add i64 %.029.i40, -1
  %i.cf = and i64 %i.ce, %.029.i40                ; 2 uses
  %.not10.i43 = icmp eq i64 %i.cf, 0
  br i1 %.not10.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44, label %_ZN8facebook5velox6StatusD2Ev.exit19.i39, !llvm.loop !25539

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %bb.e, %bb.d
  %i.cg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3361 = icmp sgt i32 %i.cg, %i.d
  br i1 %.not3361, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44
  %i.ch = load i8, ptr %3, align 8, !tbaa !25532, !range !475, !noundef !476
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !25534
  %i.ck = xor i8 %i.ch, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i45 = load ptr, ptr %i.cn, align 8        ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 24 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  %i.cq = phi i32 [ %i.cg, %.lr.ph ], [ %i.ef, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %.062 = phi i32 [ %i.c, %.lr.ph ], [ %i.cq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %i.cr = sdiv i32 %.062, 64                      ; 3 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !536
  %i.cv = xor i64 %i.cu, %i.cm                    ; 2 uses
  switch i64 %i.cv, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i: ; preds = %bb.f
  %i.cw = shl nsw i32 %i.cr, 6
  %i.cx = sext i32 %i.cw to i64
  %i.cy = load ptr, ptr %i.co, align 8, !tbaa !25519, !nonnull !476, !align !580
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !9166, !noalias !25543
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !25521, !nonnull !476, !align !580
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !25525, !nonnull !476, !align !580
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit51.i

bb.g:                                             ; preds = %bb.f
  %i.de = shl nsw i32 %i.cr, 6                    ; 2 uses
  %i.df = add nuw i32 %i.de, 64
  %i.dg = sext i32 %i.df to i64
  %.0.off = add i32 %.062, 127
  %.not76.i = icmp ult i32 %.0.off, 64
  br i1 %.not76.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i: ; preds = %bb.g
  %i.dh = sext i32 %i.de to i64
  %i.di = load ptr, ptr %i.co, align 8, !tbaa !25519, !nonnull !476, !align !580
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !9166, !noalias !25546
  %i.dk = load ptr, ptr %i.cp, align 8, !tbaa !25521, !nonnull !476, !align !580
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !25525, !nonnull !476, !align !580
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

_ZN8facebook5velox6StatusD2Ev.exit32.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i
  %.075.i = phi i64 [ %i.dh, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i ], [ %i.du, %_ZN8facebook5velox6StatusD2Ev.exit32.i ] ; 3 uses
  %sext.i = shl i64 %.075.i, 32
  %i.do = ashr exact i64 %sext.i, 29
  %i.dp = getelementptr inbounds i8, ptr %i.dj, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !536, !noalias !25546
  %i.dr = srem i64 %i.dq, 60000
  %.lhs.trunc.i46 = trunc nsw i64 %i.dr to i32
  %i.ds = sdiv i32 %.lhs.trunc.i46, 1000
  %.sext.i47 = sext i32 %i.ds to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.075.i
  store i64 %.sext.i47, ptr %i.dt, align 8, !tbaa !536
  %i.du = add nuw i64 %.075.i, 1                  ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dg
  br i1 %i.dv, label %_ZN8facebook5velox6StatusD2Ev.exit32.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, !llvm.loop !25549

_ZN8facebook5velox6StatusD2Ev.exit51.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit51.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i
  %.01574.i = phi i64 [ %i.cv, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i ], [ %i.ee, %_ZN8facebook5velox6StatusD2Ev.exit51.i ] ; 3 uses
  %i.dw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01574.i, i1 true)
  %i.dx = or disjoint i64 %i.dw, %i.cx            ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !536, !noalias !25543
  %i.ea = srem i64 %i.dz, 60000
  %.lhs.trunc70.i = trunc nsw i64 %i.ea to i32
  %i.eb = sdiv i32 %.lhs.trunc70.i, 1000
  %.sext71.i = sext i32 %i.eb to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.dx
  store i64 %.sext71.i, ptr %i.ec, align 8, !tbaa !536
  %i.ed = add i64 %.01574.i, -1
  %i.ee = and i64 %i.ed, %.01574.i                ; 2 uses
  %.not.i48 = icmp eq i64 %i.ee, 0
  br i1 %.not.i48, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit51.i, !llvm.loop !25550

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZN8facebook5velox6StatusD2Ev.exit51.i, %bb.f, %bb.g
  %i.ef = add nsw i32 %i.cq, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ef, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !25551

bb.h:                                             ; preds = %._crit_edge
  %i.eg = ashr i32 %1, 6
  %i.eh = and i32 %1, 63
  %i.ei = zext nneg i32 %i.eh to i64
  %notmask.i49 = shl nsw i64 -1, %i.ei
  %i.ej = xor i64 %notmask.i49, -1
  %i.ek = load i8, ptr %2, align 8, !tbaa !25528, !range !475, !noundef !476
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !25531
  %i.en = sext i32 %i.eg to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !536
  %i.eq = xor i8 %i.ek, 1
  %i.er = zext nneg i8 %i.eq to i64
  %i.es = sub nsw i64 0, %i.er
  %i.et = xor i64 %i.ep, %i.es
  %i.eu = and i64 %i.et, %i.ej                    ; 2 uses
  %.not.i50 = icmp eq i64 %i.eu, 0
  br i1 %.not.i50, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i51

.preheader.i51:                                   ; preds = %bb.h
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ew = sext i32 %i.d to i64
  %.pre.i52 = load ptr, ptr %i.ev, align 8, !tbaa !25535 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !25519, !nonnull !476, !align !580
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !9166, !noalias !25552
  %i.fa = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !25521, !nonnull !476, !align !580
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !25525, !nonnull !476, !align !580
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i53

_ZN8facebook5velox6StatusD2Ev.exit19.i53:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i53, %.preheader.i51
  %.029.i54 = phi i64 [ %i.eu, %.preheader.i51 ], [ %i.fn, %_ZN8facebook5velox6StatusD2Ev.exit19.i53 ] ; 3 uses
  %i.ff = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i54, i1 true)
  %i.fg = or disjoint i64 %i.ff, %i.ew            ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !536, !noalias !25552
  %i.fj = srem i64 %i.fi, 60000
  %.lhs.trunc.i55 = trunc nsw i64 %i.fj to i32
  %i.fk = sdiv i32 %.lhs.trunc.i55, 1000
  %.sext.i56 = sext i32 %i.fk to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fg
  store i64 %.sext.i56, ptr %i.fl, align 8, !tbaa !536
  %i.fm = add nsw i64 %.029.i54, -1
  %i.fn = and i64 %i.fm, %.029.i54                ; 2 uses
  %.not10.i57 = icmp eq i64 %i.fn, 0
  br i1 %.not10.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i53, !llvm.loop !25539

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i53, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26SecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.11056) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.11057, align 8          ; 6 uses
  %3 = alloca %class.anon.11058, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1151, !range !475, !noundef !476
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !182, !range !475
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1152
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1154 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1155
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !922    ; 2 uses
  %.not.i.i5 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i5, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i27.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i27.not, label %.critedge.i.i.i, label %.lr.ph29

bb.f:                                             ; preds = %.lr.ph29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i28, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph29, label %.critedge.i.i.i, !llvm.loop !1156

.lr.ph29:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i28, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !536
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1156

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !536
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph29, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph29 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1154 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1152 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !25555, !nonnull !476, !align !580 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvRKNS0_17SelectivityVectorESO_EUlSO_E_EEvST_SO_T0_:bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %2, ptr %i.bj, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx6, align 8
  store i8 1, ptr %3, align 8, !tbaa !26401
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bd, ptr %i.bk, align 8, !tbaa !26404
  store i8 1, ptr %4, align 8, !tbaa !26405
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bd, ptr %i.bl, align 8, !tbaa !26407
  call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %i.bf, i32 noundef %i.bh, ptr noundef nonnull byval(%class.anon.11609) align 8 %3, ptr noundef nonnull byval(%class.anon.11610) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit13.i, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.11609) align 8 %2, ptr noundef byval(%class.anon.11610) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !26401, !range !475, !noundef !476
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26404
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !536
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !26408 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26392, !nonnull !476, !align !580
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !9166, !noalias !26409
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !26394, !nonnull !476, !align !580
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26398, !nonnull !476, !align !580
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.029.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.as, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i, i1 true)
  %i.am = or disjoint i64 %i.al, %i.ac            ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !536, !noalias !26409
  %i.ap = srem i64 %i.ao, 1000
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !536
  %i.ar = add nsw i64 %.029.i, -1
  %i.as = and i64 %i.ar, %.029.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.as, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i, !llvm.loop !26412

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = sdiv i32 %0, 64                         ; 2 uses
  %i.au = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.av
  %i.aw = xor i64 %notmask.i.i35, -1
  %i.ax = sub nsw i32 64, %i.au
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl i64 %i.aw, %i.ay
  %i.ba = load i8, ptr %2, align 8, !tbaa !26401, !range !475, !noundef !476
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !26404
  %i.bd = sext i32 %i.at to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !536
  %i.bg = xor i8 %i.ba, 1
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = xor i64 %i.bf, %i.bi
  %i.bk = and i64 %i.bj, %i.az                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bk, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit42, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = shl nsw i32 %i.at, 6
  %i.bn = sext i32 %i.bm to i64
  %.pre.i38 = load ptr, ptr %i.bl, align 8, !tbaa !26408 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !26392, !nonnull !476, !align !580
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !9166, !noalias !26413
  %i.br = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !26394, !nonnull !476, !align !580
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !26398, !nonnull !476, !align !580
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i39

_ZN8facebook5velox6StatusD2Ev.exit19.i39:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %.preheader.i37
  %.029.i40 = phi i64 [ %i.bk, %.preheader.i37 ], [ %i.cd, %_ZN8facebook5velox6StatusD2Ev.exit19.i39 ] ; 3 uses
  %i.bw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i40, i1 true)
  %i.bx = or disjoint i64 %i.bw, %i.bn            ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !536, !noalias !26413
  %i.ca = srem i64 %i.bz, 1000
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bx
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !536
  %i.cc = add i64 %.029.i40, -1
  %i.cd = and i64 %i.cc, %.029.i40                ; 2 uses
  %.not10.i41 = icmp eq i64 %i.cd, 0
  br i1 %.not10.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit42, label %_ZN8facebook5velox6StatusD2Ev.exit19.i39, !llvm.loop !26412

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit42: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %bb.e, %bb.d
  %i.ce = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3355 = icmp sgt i32 %i.ce, %i.d
  br i1 %.not3355, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit42
  %i.cf = load i8, ptr %3, align 8, !tbaa !26405, !range !475, !noundef !476
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !26407
  %i.ci = xor i8 %i.cf, 1
  %i.cj = zext nneg i8 %i.ci to i64
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i43 = load ptr, ptr %i.cl, align 8        ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 24 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit42
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  %i.co = phi i32 [ %i.ce, %.lr.ph ], [ %i.eb, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %.056 = phi i32 [ %i.c, %.lr.ph ], [ %i.co, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %i.cp = sdiv i32 %.056, 64                      ; 3 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !536
  %i.ct = xor i64 %i.cs, %i.ck                    ; 2 uses
  switch i64 %i.ct, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i: ; preds = %bb.f
  %i.cu = shl nsw i32 %i.cp, 6
  %i.cv = sext i32 %i.cu to i64
  %i.cw = load ptr, ptr %i.cm, align 8, !tbaa !26392, !nonnull !476, !align !580
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !9166, !noalias !26416
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !26394, !nonnull !476, !align !580
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !26398, !nonnull !476, !align !580
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit51.i

bb.g:                                             ; preds = %bb.f
  %i.dc = shl nsw i32 %i.cp, 6                    ; 2 uses
  %i.dd = add nuw i32 %i.dc, 64
  %i.de = sext i32 %i.dd to i64
  %.0.off = add i32 %.056, 127
  %.not74.i = icmp ult i32 %.0.off, 64
  br i1 %.not74.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i: ; preds = %bb.g
  %i.df = sext i32 %i.dc to i64
  %i.dg = load ptr, ptr %i.cm, align 8, !tbaa !26392, !nonnull !476, !align !580
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !9166, !noalias !26419
  %i.di = load ptr, ptr %i.cn, align 8, !tbaa !26394, !nonnull !476, !align !580
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !26398, !nonnull !476, !align !580
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

_ZN8facebook5velox6StatusD2Ev.exit32.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i
  %.073.i = phi i64 [ %i.df, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSM_.exit.lr.ph.i ], [ %i.dr, %_ZN8facebook5velox6StatusD2Ev.exit32.i ] ; 3 uses
  %sext.i = shl i64 %.073.i, 32
  %i.dm = ashr exact i64 %sext.i, 29
  %i.dn = getelementptr inbounds i8, ptr %i.dh, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !536, !noalias !26419
  %i.dp = srem i64 %i.do, 1000
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.073.i
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !536
  %i.dr = add nuw i64 %.073.i, 1                  ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.de
  br i1 %i.ds, label %_ZN8facebook5velox6StatusD2Ev.exit32.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, !llvm.loop !26422

_ZN8facebook5velox6StatusD2Ev.exit51.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit51.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i
  %.01572.i = phi i64 [ %i.ct, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i ], [ %i.ea, %_ZN8facebook5velox6StatusD2Ev.exit51.i ] ; 3 uses
  %i.dt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01572.i, i1 true)
  %i.du = or disjoint i64 %i.dt, %i.cv            ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !536, !noalias !26416
  %i.dx = srem i64 %i.dw, 1000
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.du
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !536
  %i.dz = add i64 %.01572.i, -1
  %i.ea = and i64 %i.dz, %.01572.i                ; 2 uses
  %.not.i44 = icmp eq i64 %i.ea, 0
  br i1 %.not.i44, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit51.i, !llvm.loop !26423

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZN8facebook5velox6StatusD2Ev.exit51.i, %bb.f, %bb.g
  %i.eb = add nsw i32 %i.co, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eb, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !26424

bb.h:                                             ; preds = %._crit_edge
  %i.ec = ashr i32 %1, 6
  %i.ed = and i32 %1, 63
  %i.ee = zext nneg i32 %i.ed to i64
  %notmask.i45 = shl nsw i64 -1, %i.ee
  %i.ef = xor i64 %notmask.i45, -1
  %i.eg = load i8, ptr %2, align 8, !tbaa !26401, !range !475, !noundef !476
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !26404
  %i.ej = sext i32 %i.ec to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !536
  %i.em = xor i8 %i.eg, 1
  %i.en = zext nneg i8 %i.em to i64
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = xor i64 %i.el, %i.eo
  %i.eq = and i64 %i.ep, %i.ef                    ; 2 uses
  %.not.i46 = icmp eq i64 %i.eq, 0
  br i1 %.not.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i47

.preheader.i47:                                   ; preds = %bb.h
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.es = sext i32 %i.d to i64
  %.pre.i48 = load ptr, ptr %i.er, align 8, !tbaa !26408 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !26392, !nonnull !476, !align !580
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !9166, !noalias !26425
  %i.ew = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !26394, !nonnull !476, !align !580
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !26398, !nonnull !476, !align !580
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !894
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i49

_ZN8facebook5velox6StatusD2Ev.exit19.i49:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i49, %.preheader.i47
  %.029.i50 = phi i64 [ %i.eq, %.preheader.i47 ], [ %i.fi, %_ZN8facebook5velox6StatusD2Ev.exit19.i49 ] ; 3 uses
  %i.fb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i50, i1 true)
  %i.fc = or disjoint i64 %i.fb, %i.es            ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !536, !noalias !26425
  %i.ff = srem i64 %i.fe, 1000
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fc
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !536
  %i.fh = add nsw i64 %.029.i50, -1
  %i.fi = and i64 %i.fh, %.029.i50                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fi, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i49, !llvm.loop !26412

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i49, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions31MillisecondFromIntervalFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_15IntervalDayTimeEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.11634) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.11635, align 8          ; 6 uses
  %3 = alloca %class.anon.11636, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1151, !range !475, !noundef !476
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !182, !range !475
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1152
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1154 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1155
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !922    ; 2 uses
  %.not.i.i5 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i5, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i27.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i27.not, label %.critedge.i.i.i, label %.lr.ph29

bb.f:                                             ; preds = %.lr.ph29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i28, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph29, label %.critedge.i.i.i, !llvm.loop !1156

.lr.ph29:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i28, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !536
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1156

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !536
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph29, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph29 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1154 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1152 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !26428, !nonnull !476, !align !580 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !26429
  %i.am = load ptr, ptr %.pre, align 8, !tbaa !9264, !noalias !26431, !nonnull !476, !align !580 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1281, !noalias !26431
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 58
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !1282, !range !475, !noalias !26431, !noundef !476
end_hunk_5
