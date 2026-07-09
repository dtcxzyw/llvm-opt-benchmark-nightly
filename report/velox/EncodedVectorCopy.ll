inline.NumInlined: 11502
inline.NumDeleted: 2542
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_18copyImplERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b:bb.a
  %i.aii = sub nsw i32 %i.aig, %i.aih             ; 6 uses
  %i.aij = and i32 %.sroa.speculated.i140.i, -64  ; 4 uses
  %i.aik = icmp slt i32 %i.aij, %i.aii
  br i1 %i.aik, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.ail = and i32 %.sroa.speculated.i140.i, 63
  %i.aim = zext nneg i32 %i.ail to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.aim
  %i.ain = xor i64 %notmask.i.i.i.i.i, -1
  %i.aio = sub nsw i32 %i.aii, %i.aic             ; 2 uses
  %i.aip = zext nneg i32 %i.aio to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.aip
  %i.aiq = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.air = sub nsw i32 64, %i.aio
  %i.ais = zext nneg i32 %i.air to i64
  %i.ait = shl i64 %i.aiq, %i.ais
  %i.aiu = and i64 %i.ait, %i.ain
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.sink.split.i.i

bb.gt:                                            ; preds = %bb.gr
  %.not32.i.i.i.i = icmp eq i32 %i.aic, %i.aii
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aiv = sdiv i32 %i.aic, 64
  %i.aiw = sub nsw i32 %i.aii, %i.aic             ; 2 uses
  %i.aix = zext nneg i32 %i.aiw to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.aix
  %i.aiy = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.aiz = sub nsw i32 64, %i.aiw
  %i.aja = zext nneg i32 %i.aiz to i64
  %i.ajb = shl i64 %i.aiy, %i.aja
  %i.ajc = sext i32 %i.aiv to i64
  %i.ajd = getelementptr inbounds [8 x i8], ptr %.sroa.0127.0.i.i, i64 %i.ajc ; 2 uses
  %i.aje = load i64, ptr %i.ajd, align 8, !tbaa !173, !noalias !201
  %i.ajf = or i64 %i.aje, %i.ajb
  store i64 %i.ajf, ptr %i.ajd, align 8, !tbaa !173, !noalias !201
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i: ; preds = %bb.gu, %bb.gt
  %i.ajg = add nsw i32 %i.aii, 64                 ; 2 uses
  %.not3347.i.i.i.i = icmp sgt i32 %i.ajg, %i.aij
  br i1 %.not3347.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %.sroa.speculated.i140.i, %i.aij
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i, label %bb.gv

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ajh = phi i32 [ %i.ajl, %.lr.ph.i.i.i.i ], [ %i.ajg, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i = phi i32 [ %i.ajh, %.lr.ph.i.i.i.i ], [ %i.aii, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i ]
  %i.aji = sdiv i32 %.048.i.i.i.i, 64
  %i.ajj = sext i32 %i.aji to i64
  %i.ajk = getelementptr inbounds [8 x i8], ptr %.sroa.0127.0.i.i, i64 %i.ajj
  store i64 -1, ptr %i.ajk, align 8, !tbaa !173, !noalias !201
  %i.ajl = add nsw i32 %i.ajh, 64                 ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.ajl, %i.aij
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !204

bb.gv:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ajm = and i32 %.sroa.speculated.i140.i, 63
  %i.ajn = zext nneg i32 %i.ajm to i64
  %notmask.i37.i.i.i.i = shl nsw i64 -1, %i.ajn
  %i.ajo = xor i64 %notmask.i37.i.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.sink.split.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.sink.split.i.i: ; preds = %bb.gv, %bb.gs
  %.sink376.i.i = phi i64 [ %i.ajo, %bb.gv ], [ %i.aiu, %bb.gs ]
  %.sink.i.i = ashr i32 %.sroa.speculated.i140.i, 6
  %i.ajp = sext i32 %.sink.i.i to i64
  %i.ajq = getelementptr inbounds [8 x i8], ptr %.sroa.0127.0.i.i, i64 %i.ajp ; 2 uses
  %i.ajr = load i64, ptr %i.ajq, align 8, !tbaa !173, !noalias !201
  %i.ajs = or i64 %i.ajr, %.sink376.i.i
  store i64 %i.ajs, ptr %i.ajq, align 8, !tbaa !173, !noalias !201
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i:  ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.sink.split.i.i, %._crit_edge.i.i.i.i, %.lr.ph.i139.i
  %i.ajt = getelementptr inbounds nuw i8, ptr %.036195.i.i, i64 12 ; 2 uses
  %.not.i142.i = icmp eq ptr %i.ajt, %i.ahq
  br i1 %.not.i142.i, label %._crit_edge.i.i, label %.lr.ph.i139.i

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.i.i:        ; preds = %.noexc46.i.i, %._crit_edge.i.i
  %.sroa.0.0.i.i = phi ptr [ null, %._crit_edge.i.i ], [ %i.ahy, %.noexc46.i.i ] ; 28 uses
  %.sroa.17.0.i.i = phi i64 [ 0, %._crit_edge.i.i ], [ %i.aia, %.noexc46.i.i ] ; 2 uses
  %i.aju = icmp slt i32 %i.ahf, 1
  br i1 %i.aju, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiiT_.exit.i.i", label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i.i"

"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i.i": ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.i.i
  %i.ajv = and i32 %i.ahf, 2147483584             ; 4 uses
  %.not32.not71.not.i.i.i.i.i = icmp eq i32 %i.ajv, 0
  br i1 %.not32.not71.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i179

.lr.ph.i.i.i.i.i179:                              ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i.i"
  %i.ajw = getelementptr inbounds nuw i8, ptr %120, i64 24
  %i.ajx = getelementptr inbounds nuw i8, ptr %120, i64 57
  %i.ajy = zext nneg i32 %i.ajv to i64
  %i.ajz = load ptr, ptr %i.ajw, align 8          ; 7 uses
  %.not.i.i.i47.i.i.i.i.i = icmp eq ptr %i.ajz, null ; 2 uses
  %i.aka = load i8, ptr %i.sd, align 2, !range !13
  %i.akb = trunc nuw i8 %i.aka to i1
  %i.akc = load i8, ptr %i.ajx, align 1, !range !13
  %i.akd = trunc nuw i8 %i.akc to i1
  %or.cond.i.i.i48.i.i.i.i.i = select i1 %i.akb, i1 true, i1 %i.akd ; 2 uses
  %i.ake = load i8, ptr %i.bl, align 1, !range !13
  %i.akf = trunc nuw i8 %i.ake to i1              ; 2 uses
  %i.akg = load ptr, ptr %i.bf, align 8           ; 2 uses
  br label %bb.gw

._crit_edge.i.i.i.i.i:                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i.i"
  %.not33.i.i.i.i.i = icmp eq i32 %i.ahf, %i.ajv
  br i1 %.not33.i.i.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiiT_.exit.i.i", label %bb.hc

bb.gw:                                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i179
  %indvars.iv74.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i179 ], [ %indvars.iv.next75.i.i.i.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i" ] ; 6 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ 64, %.lr.ph.i.i.i.i.i179 ], [ %indvars.iv.next.i.i.i.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i" ] ; 5 uses
  %i.akh = lshr exact i64 %indvars.iv74.i.i.i.i.i, 3 ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %.sroa.0127.0.i.i, i64 %i.akh
  %i.akj = load i64, ptr %i.aki, align 8, !tbaa !173, !noalias !201
  %i.akk = xor i64 %i.akj, -1                     ; 2 uses
  switch i64 %i.akk, label %.lr.ph.i.i.i.i.preheader.i.i [
    i64 -1, label %.preheader.i.i.preheader.i.i
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i"
  ]

.preheader.i.i.preheader.i.i:                     ; preds = %bb.gw
  br i1 %.not.i.i.i47.i.i.i.i.i, label %.preheader.i.i.us.i.i, label %.preheader.i.i.preheader.split.i.i

.preheader.i.i.us.i.i:                            ; preds = %.preheader.i.i.preheader.i.i, %.preheader.i.i.us.i.i
  %.027.i.i.i.i.us.i.i = phi i64 [ %i.alg, %.preheader.i.i.us.i.i ], [ %indvars.iv74.i.i.i.i.i, %.preheader.i.i.preheader.i.i ] ; 3 uses
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %.027.i.i.i.i.us.i.i
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !3, !noalias !201
  %i.akn = sext i32 %i.akm to i64                 ; 2 uses
  %i.ako = and i64 %i.akn, 7
  %i.akp = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ako
  %i.akq = load i8, ptr %i.akp, align 1, !tbaa !59, !noalias !201
  %i.akr = lshr i64 %i.akn, 3
  %i.aks = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.akr ; 2 uses
  %i.akt = load i8, ptr %i.aks, align 1, !tbaa !59, !noalias !201
  %i.aku = and i8 %i.akt, %i.akq
  store i8 %i.aku, ptr %i.aks, align 1, !tbaa !59, !noalias !201
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %.027.i.i.i.i.us.i.i
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 4
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !3, !noalias !201
  %i.aky = sext i32 %i.akx to i64                 ; 2 uses
  %i.akz = and i64 %i.aky, 7
  %i.ala = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.akz
  %i.alb = load i8, ptr %i.ala, align 1, !tbaa !59, !noalias !201
  %i.alc = lshr i64 %i.aky, 3
  %i.ald = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.alc ; 2 uses
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !59, !noalias !201
  %i.alf = and i8 %i.ale, %i.alb
  store i8 %i.alf, ptr %i.ald, align 1, !tbaa !59, !noalias !201
  %i.alg = add nuw nsw i64 %.027.i.i.i.i.us.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.us.i.i.1 = icmp eq i64 %i.alg, %indvars.iv.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.us.i.i.1, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i", label %.preheader.i.i.us.i.i, !llvm.loop !205

.preheader.i.i.preheader.split.i.i:               ; preds = %.preheader.i.i.preheader.i.i
  br i1 %or.cond.i.i.i48.i.i.i.i.i, label %.preheader.i.i.us196.i.i, label %.preheader.i.i.i.i

.preheader.i.i.us196.i.i:                         ; preds = %.preheader.i.i.preheader.split.i.i, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.us199.i.i"
  %.027.i.i.i.i.us197.i.i = phi i64 [ %i.aly, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.us199.i.i" ], [ %indvars.iv74.i.i.i.i.i, %.preheader.i.i.preheader.split.i.i ] ; 4 uses
  %i.alh = lshr i64 %.027.i.i.i.i.us197.i.i, 6
  %i.ali = and i64 %i.alh, 67108863
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %i.ajz, i64 %i.ali
  %i.alk = load i64, ptr %i.alj, align 8, !tbaa !173, !noalias !201
  %i.all = and i64 %.027.i.i.i.i.us197.i.i, 63
  %i.alm = shl nuw i64 1, %i.all
  %i.aln = and i64 %i.alm, %i.alk
  %.not.i.i.i.i53.i.i.i.us.i.i = icmp eq i64 %i.aln, 0
  br i1 %.not.i.i.i.i53.i.i.i.us.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.us199.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i50.i.i.i.us198.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i50.i.i.i.us198.i.i: ; preds = %.preheader.i.i.us196.i.i
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %.027.i.i.i.i.us197.i.i
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !3, !noalias !201
  %i.alq = sext i32 %i.alp to i64                 ; 2 uses
  %i.alr = and i64 %i.alq, 7
  %i.als = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.alr
  %i.alt = load i8, ptr %i.als, align 1, !tbaa !59, !noalias !201
  %i.alu = lshr i64 %i.alq, 3
  %i.alv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.alu ; 2 uses
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !59, !noalias !201
  %i.alx = and i8 %i.alw, %i.alt
  store i8 %i.alx, ptr %i.alv, align 1, !tbaa !59, !noalias !201
  br label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.us199.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.us199.i.i": ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i50.i.i.i.us198.i.i, %.preheader.i.i.us196.i.i
  %i.aly = add nuw nsw i64 %.027.i.i.i.i.us197.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.us200.i.i = icmp eq i64 %i.aly, %indvars.iv.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.us200.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i", label %.preheader.i.i.us196.i.i, !llvm.loop !205

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %bb.gw
  %i.alz = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %i.akh
  br label %.lr.ph.i.i.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.preheader.split.i.i, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.i.i"
  %.027.i.i.i.i.i.i = phi i64 [ %i.amv, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.i.i" ], [ %indvars.iv74.i.i.i.i.i, %.preheader.i.i.preheader.split.i.i ] ; 3 uses
  br i1 %i.akf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i51.i.i.i.i.i, label %bb.gx

bb.gx:                                            ; preds = %.preheader.i.i.i.i
  %sext.i.i.i.i.i.i.i = shl nuw nsw i64 %.027.i.i.i.i.i.i, 2
  %i.ama = getelementptr inbounds nuw i8, ptr %i.akg, i64 %sext.i.i.i.i.i.i.i
  %i.amb = load i32, ptr %i.ama, align 4, !tbaa !3, !noalias !201
  %i.amc = zext i32 %i.amb to i64                 ; 2 uses
  %i.amd = lshr i64 %i.amc, 6
  %i.ame = getelementptr inbounds nuw [8 x i8], ptr %i.ajz, i64 %i.amd
  %i.amf = load i64, ptr %i.ame, align 8, !tbaa !173, !noalias !201
  %i.amg = and i64 %i.amc, 63
  %i.amh = shl nuw i64 1, %i.amg
  %i.ami = and i64 %i.amh, %i.amf
  %.not.i7.i.i.i49.i.i.i.i.i = icmp eq i64 %i.ami, 0
  br i1 %.not.i7.i.i.i49.i.i.i.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i50.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i51.i.i.i.i.i: ; preds = %.preheader.i.i.i.i
  %i.amj = load i64, ptr %i.ajz, align 8, !tbaa !173, !noalias !201
  %i.amk = and i64 %i.amj, 1
  %.not.i6.i.i.i52.i.i.i.i.i = icmp eq i64 %i.amk, 0
  br i1 %.not.i6.i.i.i52.i.i.i.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i50.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i50.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i51.i.i.i.i.i, %bb.gx
  %i.aml = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %.027.i.i.i.i.i.i
  %i.amm = load i32, ptr %i.aml, align 4, !tbaa !3, !noalias !201
  %i.amn = sext i32 %i.amm to i64                 ; 2 uses
  %i.amo = and i64 %i.amn, 7
  %i.amp = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.amo
  %i.amq = load i8, ptr %i.amp, align 1, !tbaa !59, !noalias !201
  %i.amr = lshr i64 %i.amn, 3
  %i.ams = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.amr ; 2 uses
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !59, !noalias !201
  %i.amu = and i8 %i.amt, %i.amq
  store i8 %i.amu, ptr %i.ams, align 1, !tbaa !59, !noalias !201
  br label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.i.i": ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i50.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i51.i.i.i.i.i, %bb.gx
  %i.amv = add nuw nsw i64 %.027.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.amv, %indvars.iv.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i", label %.preheader.i.i.i.i, !llvm.loop !205

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i54.i.i.i.i.i", %.lr.ph.i.i.i.i.preheader.i.i
  %.01526.i.i.i.i.i.i = phi i64 [ %i.anz, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i54.i.i.i.i.i" ], [ %i.akk, %.lr.ph.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.amw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01526.i.i.i.i.i.i, i1 true) ; 2 uses
  %i.amx = or disjoint i64 %i.amw, %indvars.iv74.i.i.i.i.i ; 2 uses
  br i1 %.not.i.i.i47.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i20.i.i.i.i.i.i, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  br i1 %or.cond.i.i.i48.i.i.i.i.i, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.amy = load i64, ptr %i.alz, align 8, !tbaa !173, !noalias !201
  %i.amz = shl nuw i64 1, %i.amw
  %i.ana = and i64 %i.amy, %i.amz
  %.not.i.i.i23.i.i.i.i.i.i = icmp eq i64 %i.ana, 0
  br i1 %.not.i.i.i23.i.i.i.i.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i54.i.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i20.i.i.i.i.i.i

bb.ha:                                            ; preds = %bb.gy
  br i1 %i.akf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i21.i.i.i.i.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.anb = and i64 %i.amx, 4294967295
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.akg, i64 %i.anb
  %i.and = load i32, ptr %i.anc, align 4, !tbaa !3, !noalias !201
  %i.ane = zext i32 %i.and to i64                 ; 2 uses
  %i.anf = lshr i64 %i.ane, 6
  %i.ang = getelementptr inbounds nuw [8 x i8], ptr %i.ajz, i64 %i.anf
  %i.anh = load i64, ptr %i.ang, align 8, !tbaa !173, !noalias !201
  %i.ani = and i64 %i.ane, 63
  %i.anj = shl nuw i64 1, %i.ani
  %i.ank = and i64 %i.anj, %i.anh
  %.not.i7.i.i19.i.i.i.i.i.i = icmp eq i64 %i.ank, 0
  br i1 %.not.i7.i.i19.i.i.i.i.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i54.i.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i20.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i21.i.i.i.i.i.i: ; preds = %bb.ha
  %i.anl = load i64, ptr %i.ajz, align 8, !tbaa !173, !noalias !201
  %i.anm = and i64 %i.anl, 1
  %.not.i6.i.i22.i.i.i.i.i.i = icmp eq i64 %i.anm, 0
  br i1 %.not.i6.i.i22.i.i.i.i.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i54.i.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i20.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i20.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i21.i.i.i.i.i.i, %bb.hb, %bb.gz, %.lr.ph.i.i.i.i.i.i
  %i.ann = and i64 %i.amx, 4294967295
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.ann
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !3, !noalias !201
  %i.anq = sext i32 %i.anp to i64                 ; 2 uses
  %i.anr = and i64 %i.anq, 7
  %i.ans = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.anr
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !59, !noalias !201
  %i.anu = lshr i64 %i.anq, 3
  %i.anv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.anu ; 2 uses
  %i.anw = load i8, ptr %i.anv, align 1, !tbaa !59, !noalias !201
  %i.anx = and i8 %i.anw, %i.ant
  store i8 %i.anx, ptr %i.anv, align 1, !tbaa !59, !noalias !201
  br label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i54.i.i.i.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i54.i.i.i.i.i": ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i20.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i21.i.i.i.i.i.i, %bb.hb, %bb.gz
  %i.any = add i64 %.01526.i.i.i.i.i.i, -1
  %i.anz = and i64 %i.any, %.01526.i.i.i.i.i.i    ; 2 uses
  %.not.i55.i.i.i.i.i = icmp eq i64 %i.anz, 0
  br i1 %.not.i55.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !206

"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i": ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.i.i", %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.us199.i.i", %.preheader.i.i.us.i.i, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i54.i.i.i.i.i", %bb.gw
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 64
  %.not32.not.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.i.i.i.i.i, %i.ajy
  %indvars.iv.next75.i.i.i.i.i = add nuw nsw i64 %indvars.iv74.i.i.i.i.i, 64
  br i1 %.not32.not.i.i.i.i.i, label %bb.gw, label %._crit_edge.i.i.i.i.i, !llvm.loop !207

bb.hc:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.aoa = lshr i32 %i.ahf, 6
  %i.aob = and i32 %i.ahf, 63
  %i.aoc = zext nneg i32 %i.aob to i64
  %notmask.i56.i.i.i.i.i = shl nsw i64 -1, %i.aoc
  %i.aod = zext nneg i32 %i.aoa to i64
  %i.aoe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0127.0.i.i, i64 %i.aod
  %i.aof = load i64, ptr %i.aoe, align 8, !tbaa !173, !noalias !201
  %.demorgan.i.i.i.i = or i64 %i.aof, %notmask.i56.i.i.i.i.i ; 2 uses
  %.not.i57.i.i.i.i.i = icmp eq i64 %.demorgan.i.i.i.i, -1
  br i1 %.not.i57.i.i.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiiT_.exit.i.i", label %.preheader.i58.i.i.i.i.i

.preheader.i58.i.i.i.i.i:                         ; preds = %bb.hc
  %i.aog = xor i64 %.demorgan.i.i.i.i, -1
  %i.aoh = getelementptr inbounds nuw i8, ptr %120, i64 24
  %i.aoi = getelementptr inbounds nuw i8, ptr %120, i64 57
  %i.aoj = load ptr, ptr %i.aoh, align 8, !tbaa !208, !noalias !201 ; 4 uses
  %.not.i.i.i60.i.i.i.i.i = icmp eq ptr %i.aoj, null
  %i.aok = load i8, ptr %i.sd, align 2, !range !13
  %i.aol = trunc nuw i8 %i.aok to i1
  %i.aom = load i8, ptr %i.aoi, align 1, !range !13
  %i.aon = trunc nuw i8 %i.aom to i1
  %or.cond.i.i.i61.i.i.i.i.i = select i1 %i.aol, i1 true, i1 %i.aon
  %i.aoo = load i8, ptr %i.bl, align 1, !range !13
  %i.aop = trunc nuw i8 %i.aoo to i1
  %i.aoq = load ptr, ptr %i.bf, align 8
  br label %bb.hd

bb.hd:                                            ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i64.i.i.i.i.i", %.preheader.i58.i.i.i.i.i
  %.011.i59.i.i.i.i.i = phi i64 [ %i.aog, %.preheader.i58.i.i.i.i.i ], [ %i.apz, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i64.i.i.i.i.i" ] ; 3 uses
  %i.aor = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i59.i.i.i.i.i, i1 true)
  %i.aos = trunc nuw nsw i64 %i.aor to i32
  %i.aot = or disjoint i32 %i.ajv, %i.aos         ; 3 uses
  br i1 %.not.i.i.i60.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i63.i.i.i.i.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  br i1 %or.cond.i.i.i61.i.i.i.i.i, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.aou = zext nneg i32 %i.aot to i64            ; 2 uses
  %i.aov = lshr i64 %i.aou, 6
  %i.aow = getelementptr inbounds nuw [8 x i8], ptr %i.aoj, i64 %i.aov
  %i.aox = load i64, ptr %i.aow, align 8, !tbaa !173, !noalias !201
  %i.aoy = and i64 %i.aou, 63
  %i.aoz = shl nuw i64 1, %i.aoy
  %i.apa = and i64 %i.aox, %i.aoz
  %.not.i.i.i.i68.i.i.i.i.i = icmp eq i64 %i.apa, 0
  br i1 %.not.i.i.i.i68.i.i.i.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i64.i.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i63.i.i.i.i.i

bb.hg:                                            ; preds = %bb.he
  br i1 %i.aop, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i66.i.i.i.i.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.apb = zext nneg i32 %i.aot to i64
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.aoq, i64 %i.apb
  %i.apd = load i32, ptr %i.apc, align 4, !tbaa !3, !noalias !201
  %i.ape = zext i32 %i.apd to i64                 ; 2 uses
  %i.apf = lshr i64 %i.ape, 6
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr %i.aoj, i64 %i.apf
  %i.aph = load i64, ptr %i.apg, align 8, !tbaa !173, !noalias !201
  %i.api = and i64 %i.ape, 63
  %i.apj = shl nuw i64 1, %i.api
  %i.apk = and i64 %i.apj, %i.aph
  %.not.i7.i.i.i62.i.i.i.i.i = icmp eq i64 %i.apk, 0
  br i1 %.not.i7.i.i.i62.i.i.i.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i64.i.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i63.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i66.i.i.i.i.i: ; preds = %bb.hg
  %i.apl = load i64, ptr %i.aoj, align 8, !tbaa !173, !noalias !201
  %i.apm = and i64 %i.apl, 1
  %.not.i6.i.i.i67.i.i.i.i.i = icmp eq i64 %i.apm, 0
  br i1 %.not.i6.i.i.i67.i.i.i.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i64.i.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i63.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i63.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i66.i.i.i.i.i, %bb.hh, %bb.hf, %bb.hd
  %i.apn = zext nneg i32 %i.aot to i64
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.apn
  %i.app = load i32, ptr %i.apo, align 4, !tbaa !3, !noalias !201
  %i.apq = sext i32 %i.app to i64                 ; 2 uses
  %i.apr = and i64 %i.apq, 7
  %i.aps = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.apr
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !59, !noalias !201
  %i.apu = lshr i64 %i.apq, 3
  %i.apv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.apu ; 2 uses
  %i.apw = load i8, ptr %i.apv, align 1, !tbaa !59, !noalias !201
  %i.apx = and i8 %i.apw, %i.apt
  store i8 %i.apx, ptr %i.apv, align 1, !tbaa !59, !noalias !201
  br label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i64.i.i.i.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i64.i.i.i.i.i": ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i63.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i66.i.i.i.i.i, %bb.hh, %bb.hf
  %i.apy = add nsw i64 %.011.i59.i.i.i.i.i, -1
  %i.apz = and i64 %i.apy, %.011.i59.i.i.i.i.i    ; 2 uses
  %.not10.i65.i.i.i.i.i = icmp eq i64 %i.apz, 0
  br i1 %.not10.i65.i.i.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiiT_.exit.i.i", label %bb.hd, !llvm.loop !209

"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiiT_.exit.i.i": ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i64.i.i.i.i.i", %bb.hc, %._crit_edge.i.i.i.i.i, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.i.i
  %i.aqa = getelementptr inbounds nuw i8, ptr %128, i64 59 ; 2 uses
  %i.aqb = load i8, ptr %i.aqa, align 1, !tbaa !88, !range !13, !noalias !201, !noundef !14
  %i.aqc = trunc nuw i8 %i.aqb to i1
  br i1 %i.aqc, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i, label %bb.hm
end_hunk_0
