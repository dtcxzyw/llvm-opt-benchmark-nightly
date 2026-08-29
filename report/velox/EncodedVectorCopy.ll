Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/EncodedVectorCopy?download=true
inline.NumInlined: 11502
inline.NumDeleted: 2542
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_18copyImplERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b:bb.a

bb.gw:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ajw = and i32 %.sroa.speculated.i140.i, 63
  %i.ajx = zext nneg i32 %i.ajw to i64
  %notmask.i37.i.i.i.i = shl nsw i64 -1, %i.ajx
  %i.ajy = xor i64 %notmask.i37.i.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.sink.split.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.sink.split.i.i: ; preds = %bb.gw, %bb.gt
  %.sink373.i.i = phi i64 [ %i.ajy, %bb.gw ], [ %i.aje, %bb.gt ]
  %.sink.i.i = ashr i32 %.sroa.speculated.i140.i, 6
  %i.ajz = sext i32 %.sink.i.i to i64
  %i.aka = getelementptr inbounds [8 x i8], ptr %.sroa.0126.0.i.i, i64 %i.ajz ; 2 uses
  %i.akb = load i64, ptr %i.aka, align 8, !tbaa !175, !noalias !203
  %i.akc = or i64 %i.akb, %.sink373.i.i
  store i64 %i.akc, ptr %i.aka, align 8, !tbaa !175, !noalias !203
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i:  ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.sink.split.i.i, %._crit_edge.i.i.i.i, %bb.gr
  %i.akd = getelementptr inbounds nuw i8, ptr %.0195.i.i, i64 12 ; 2 uses
  %.not.i142.i = icmp eq ptr %i.akd, %i.ahz
  br i1 %.not.i142.i, label %._crit_edge.i.i, label %bb.gr

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.i.i:        ; preds = %.noexc46.i.i, %._crit_edge.i.i
  %.sroa.0.0.i.i = phi ptr [ null, %._crit_edge.i.i ], [ %i.aii, %.noexc46.i.i ] ; 28 uses
  %.sroa.17.0.i.i = phi i64 [ 0, %._crit_edge.i.i ], [ %i.aik, %.noexc46.i.i ] ; 2 uses
  %i.ake = load i32, ptr %120, align 8, !tbaa !71, !noalias !203 ; 5 uses
  %i.akf = icmp slt i32 %i.ake, 1
  br i1 %i.akf, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiiT_.exit.i.i", label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit48.i.i.i.i.i"

"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit48.i.i.i.i.i": ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.i.i
  %i.akg = and i32 %i.ake, 2147483584             ; 4 uses
  %.not32.not77.not.i.i.i.i.i = icmp eq i32 %i.akg, 0
  br i1 %.not32.not77.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i179

.lr.ph.i.i.i.i.i179:                              ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit48.i.i.i.i.i"
  %i.akh = getelementptr inbounds nuw i8, ptr %120, i64 24
  %i.aki = getelementptr inbounds nuw i8, ptr %120, i64 57
  %i.akj = zext nneg i32 %i.akg to i64
  %i.akk = load ptr, ptr %i.akh, align 8          ; 7 uses
  %.not.i.i.i49.i.i.i.i.i = icmp eq ptr %i.akk, null ; 2 uses
  %i.akl = load i8, ptr %i.sg, align 2, !range !14
  %i.akm = trunc nuw i8 %i.akl to i1
  %i.akn = load i8, ptr %i.aki, align 1, !range !14
  %i.ako = trunc nuw i8 %i.akn to i1
  %or.cond.i.i.i50.i.i.i.i.i = select i1 %i.akm, i1 true, i1 %i.ako ; 2 uses
  %i.akp = load i8, ptr %i.bl, align 1, !range !14
  %i.akq = trunc nuw i8 %i.akp to i1              ; 2 uses
  %i.akr = load ptr, ptr %i.bf, align 8           ; 2 uses
  br label %bb.gx

._crit_edge.i.i.i.i.i:                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit48.i.i.i.i.i"
  %.not33.i.i.i.i.i = icmp eq i32 %i.ake, %i.akg
  br i1 %.not33.i.i.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiiT_.exit.i.i", label %bb.ha

bb.gx:                                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i179
  %indvars.iv80.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i179 ], [ %indvars.iv.next81.i.i.i.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i" ] ; 6 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ 64, %.lr.ph.i.i.i.i.i179 ], [ %indvars.iv.next.i.i.i.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i" ] ; 5 uses
  %i.aks = lshr exact i64 %indvars.iv80.i.i.i.i.i, 3 ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %.sroa.0126.0.i.i, i64 %i.aks
  %i.aku = load i64, ptr %i.akt, align 8, !tbaa !175, !noalias !203
  %i.akv = xor i64 %i.aku, -1                     ; 2 uses
  switch i64 %i.akv, label %.lr.ph.i.i.i.i.preheader.i.i [
    i64 -1, label %.preheader.i.i.preheader.i.i
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i"
  ]

.preheader.i.i.preheader.i.i:                     ; preds = %bb.gx
  br i1 %.not.i.i.i49.i.i.i.i.i, label %.preheader.i.i.us.i.i, label %.preheader.i.i.preheader.split.i.i

.preheader.i.i.us.i.i:                            ; preds = %.preheader.i.i.preheader.i.i, %.preheader.i.i.us.i.i
  %.029.i.i.i.i.us.i.i = phi i64 [ %i.alr, %.preheader.i.i.us.i.i ], [ %indvars.iv80.i.i.i.i.i, %.preheader.i.i.preheader.i.i ] ; 3 uses
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %.029.i.i.i.i.us.i.i
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !61, !noalias !203
  %i.aky = sext i32 %i.akx to i64                 ; 2 uses
  %i.akz = and i64 %i.aky, 7
  %i.ala = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.akz
  %i.alb = load i8, ptr %i.ala, align 1, !tbaa !60, !noalias !203
  %i.alc = lshr i64 %i.aky, 3
  %i.ald = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.alc ; 2 uses
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !60, !noalias !203
  %i.alf = and i8 %i.ale, %i.alb
  store i8 %i.alf, ptr %i.ald, align 1, !tbaa !60, !noalias !203
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %.029.i.i.i.i.us.i.i
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 4
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !61, !noalias !203
  %i.alj = sext i32 %i.ali to i64                 ; 2 uses
  %i.alk = and i64 %i.alj, 7
  %i.all = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.alk
  %i.alm = load i8, ptr %i.all, align 1, !tbaa !60, !noalias !203
  %i.aln = lshr i64 %i.alj, 3
  %i.alo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.aln ; 2 uses
  %i.alp = load i8, ptr %i.alo, align 1, !tbaa !60, !noalias !203
  %i.alq = and i8 %i.alp, %i.alm
  store i8 %i.alq, ptr %i.alo, align 1, !tbaa !60, !noalias !203
  %i.alr = add nuw nsw i64 %.029.i.i.i.i.us.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.us.i.i.1 = icmp eq i64 %i.alr, %indvars.iv.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.us.i.i.1, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i", label %.preheader.i.i.us.i.i, !llvm.loop !207

.preheader.i.i.preheader.split.i.i:               ; preds = %.preheader.i.i.preheader.i.i
  br i1 %or.cond.i.i.i50.i.i.i.i.i, label %.preheader.i.i.us196.i.i, label %.preheader.i.i.i.i

.preheader.i.i.us196.i.i:                         ; preds = %.preheader.i.i.preheader.split.i.i, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.us199.i.i"
  %.029.i.i.i.i.us197.i.i = phi i64 [ %i.amj, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.us199.i.i" ], [ %indvars.iv80.i.i.i.i.i, %.preheader.i.i.preheader.split.i.i ] ; 4 uses
  %i.als = lshr i64 %.029.i.i.i.i.us197.i.i, 6
  %i.alt = and i64 %i.als, 67108863
  %i.alu = getelementptr inbounds nuw [8 x i8], ptr %i.akk, i64 %i.alt
  %i.alv = load i64, ptr %i.alu, align 8, !tbaa !175, !noalias !203
  %i.alw = and i64 %.029.i.i.i.i.us197.i.i, 63
  %i.alx = shl nuw i64 1, %i.alw
  %i.aly = and i64 %i.alx, %i.alv
  %.not.i.i.i.i57.i.i.i.us.i.i = icmp eq i64 %i.aly, 0
  br i1 %.not.i.i.i.i57.i.i.i.us.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.us199.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i53.i.i.i.us198.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i53.i.i.i.us198.i.i: ; preds = %.preheader.i.i.us196.i.i
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %.029.i.i.i.i.us197.i.i
  %i.ama = load i32, ptr %i.alz, align 4, !tbaa !61, !noalias !203
  %i.amb = sext i32 %i.ama to i64                 ; 2 uses
  %i.amc = and i64 %i.amb, 7
  %i.amd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.amc
  %i.ame = load i8, ptr %i.amd, align 1, !tbaa !60, !noalias !203
  %i.amf = lshr i64 %i.amb, 3
  %i.amg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.amf ; 2 uses
  %i.amh = load i8, ptr %i.amg, align 1, !tbaa !60, !noalias !203
  %i.ami = and i8 %i.amh, %i.ame
  store i8 %i.ami, ptr %i.amg, align 1, !tbaa !60, !noalias !203
  br label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.us199.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.us199.i.i": ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i53.i.i.i.us198.i.i, %.preheader.i.i.us196.i.i
  %i.amj = add nuw nsw i64 %.029.i.i.i.i.us197.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.us200.i.i = icmp eq i64 %i.amj, %indvars.iv.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.us200.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i", label %.preheader.i.i.us196.i.i, !llvm.loop !207

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %bb.gx
  %i.amk = getelementptr inbounds nuw i8, ptr %i.akk, i64 %i.aks
  br label %.lr.ph.i.i.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.preheader.split.i.i, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.i.i"
  %.029.i.i.i.i.i.i = phi i64 [ %i.anh, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.i.i" ], [ %indvars.iv80.i.i.i.i.i, %.preheader.i.i.preheader.split.i.i ] ; 3 uses
  br i1 %i.akq, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i54.i.i.i.i.i, label %.split3.i.i51.i.i.i.i.i

.split3.i.i51.i.i.i.i.i:                          ; preds = %.preheader.i.i.i.i
  %i.aml = shl nuw nsw i64 %.029.i.i.i.i.i.i, 2
  %i.amm = getelementptr inbounds nuw i8, ptr %i.akr, i64 %i.aml
  %i.amn = load i32, ptr %i.amm, align 4, !tbaa !61, !noalias !203
  %i.amo = zext i32 %i.amn to i64                 ; 2 uses
  %i.amp = lshr i64 %i.amo, 6
  %i.amq = getelementptr inbounds nuw [8 x i8], ptr %i.akk, i64 %i.amp
  %i.amr = load i64, ptr %i.amq, align 8, !tbaa !175, !noalias !203
  %i.ams = and i64 %i.amo, 63
  %i.amt = shl nuw i64 1, %i.ams
  %i.amu = and i64 %i.amt, %i.amr
  %.not.i7.i.i.i52.i.i.i.i.i = icmp eq i64 %i.amu, 0
  br i1 %.not.i7.i.i.i52.i.i.i.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i53.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i54.i.i.i.i.i: ; preds = %.preheader.i.i.i.i
  %i.amv = load i64, ptr %i.akk, align 8, !tbaa !175, !noalias !203
  %i.amw = and i64 %i.amv, 1
  %.not.i6.i.i.i55.i.i.i.i.i = icmp eq i64 %i.amw, 0
  br i1 %.not.i6.i.i.i55.i.i.i.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i53.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i53.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i54.i.i.i.i.i, %.split3.i.i51.i.i.i.i.i
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %.029.i.i.i.i.i.i
  %i.amy = load i32, ptr %i.amx, align 4, !tbaa !61, !noalias !203
  %i.amz = sext i32 %i.amy to i64                 ; 2 uses
  %i.ana = and i64 %i.amz, 7
  %i.anb = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ana
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !60, !noalias !203
  %i.and = lshr i64 %i.amz, 3
  %i.ane = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.and ; 2 uses
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !60, !noalias !203
  %i.ang = and i8 %i.anf, %i.anc
  store i8 %i.ang, ptr %i.ane, align 1, !tbaa !60, !noalias !203
  br label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.i.i": ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i53.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i54.i.i.i.i.i, %.split3.i.i51.i.i.i.i.i
  %i.anh = add nuw nsw i64 %.029.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.anh, %indvars.iv.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i", label %.preheader.i.i.i.i, !llvm.loop !207

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i58.i.i.i.i.i", %.lr.ph.i.i.i.i.preheader.i.i
  %.01528.i.i.i.i.i.i = phi i64 [ %i.aoj, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i58.i.i.i.i.i" ], [ %i.akv, %.lr.ph.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.ani = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01528.i.i.i.i.i.i, i1 true) ; 2 uses
  %i.anj = or disjoint i64 %i.ani, %indvars.iv80.i.i.i.i.i ; 2 uses
  br i1 %.not.i.i.i49.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i21.i.i.i.i.i.i, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  br i1 %or.cond.i.i.i50.i.i.i.i.i, label %.split.i24.i.i.i.i.i.i, label %bb.gz

.split.i24.i.i.i.i.i.i:                           ; preds = %bb.gy
  %i.ank = load i64, ptr %i.amk, align 8, !tbaa !175, !noalias !203
  %i.anl = shl nuw i64 1, %i.ani
  %i.anm = and i64 %i.ank, %i.anl
  %.not.i.i.i25.i.i.i.i.i.i = icmp eq i64 %i.anm, 0
  br i1 %.not.i.i.i25.i.i.i.i.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i58.i.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i21.i.i.i.i.i.i

bb.gz:                                            ; preds = %bb.gy
  br i1 %i.akq, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i22.i.i.i.i.i.i, label %.split3.i19.i.i.i.i.i.i

.split3.i19.i.i.i.i.i.i:                          ; preds = %bb.gz
  %139 = and i64 %i.anj, 4294967295
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.akr, i64 %139
  %i.ano = load i32, ptr %i.ann, align 4, !tbaa !61, !noalias !203
  %i.anp = zext i32 %i.ano to i64                 ; 2 uses
  %i.anq = lshr i64 %i.anp, 6
  %i.anr = getelementptr inbounds nuw [8 x i8], ptr %i.akk, i64 %i.anq
  %i.ans = load i64, ptr %i.anr, align 8, !tbaa !175, !noalias !203
  %i.ant = and i64 %i.anp, 63
  %i.anu = shl nuw i64 1, %i.ant
  %i.anv = and i64 %i.anu, %i.ans
  %.not.i7.i.i20.i.i.i.i.i.i = icmp eq i64 %i.anv, 0
  br i1 %.not.i7.i.i20.i.i.i.i.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i58.i.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i21.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i22.i.i.i.i.i.i: ; preds = %bb.gz
  %i.anw = load i64, ptr %i.akk, align 8, !tbaa !175, !noalias !203
  %i.anx = and i64 %i.anw, 1
  %.not.i6.i.i23.i.i.i.i.i.i = icmp eq i64 %i.anx, 0
  br i1 %.not.i6.i.i23.i.i.i.i.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i58.i.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i21.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i21.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i22.i.i.i.i.i.i, %.split3.i19.i.i.i.i.i.i, %.split.i24.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %140 = and i64 %i.anj, 4294967295
  %i.any = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %140
  %i.anz = load i32, ptr %i.any, align 4, !tbaa !61, !noalias !203
  %i.aoa = sext i32 %i.anz to i64                 ; 2 uses
  %i.aob = and i64 %i.aoa, 7
  %i.aoc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.aob
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !60, !noalias !203
  %i.aoe = lshr i64 %i.aoa, 3
  %i.aof = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.aoe ; 2 uses
  %i.aog = load i8, ptr %i.aof, align 1, !tbaa !60, !noalias !203
  %i.aoh = and i8 %i.aog, %i.aod
  store i8 %i.aoh, ptr %i.aof, align 1, !tbaa !60, !noalias !203
  br label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i58.i.i.i.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i58.i.i.i.i.i": ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i21.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i22.i.i.i.i.i.i, %.split3.i19.i.i.i.i.i.i, %.split.i24.i.i.i.i.i.i
  %i.aoi = add i64 %.01528.i.i.i.i.i.i, -1
  %i.aoj = and i64 %i.aoi, %.01528.i.i.i.i.i.i    ; 2 uses
  %.not.i59.i.i.i.i.i = icmp eq i64 %i.aoj, 0
  br i1 %.not.i59.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !208

"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i": ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.i.i", %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clImEEDaT_.exit.i.i.i.i.us199.i.i", %.preheader.i.i.us.i.i, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i58.i.i.i.i.i", %bb.gx
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 64
  %.not32.not.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.i.i.i.i.i, %i.akj
  %indvars.iv.next81.i.i.i.i.i = add nuw nsw i64 %indvars.iv80.i.i.i.i.i, 64
  br i1 %.not32.not.i.i.i.i.i, label %bb.gx, label %._crit_edge.i.i.i.i.i, !llvm.loop !209

bb.ha:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.aok = lshr i32 %i.ake, 6
  %i.aol = and i32 %i.ake, 63
  %i.aom = zext nneg i32 %i.aol to i64
  %notmask.i60.i.i.i.i.i = shl nsw i64 -1, %i.aom
  %i.aon = zext nneg i32 %i.aok to i64
  %i.aoo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0126.0.i.i, i64 %i.aon
  %i.aop = load i64, ptr %i.aoo, align 8, !tbaa !175, !noalias !203
  %.demorgan.i.i.i.i = or i64 %i.aop, %notmask.i60.i.i.i.i.i ; 2 uses
  %.not.i61.i.i.i.i.i = icmp eq i64 %.demorgan.i.i.i.i, -1
  br i1 %.not.i61.i.i.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiiT_.exit.i.i", label %.preheader.i62.i.i.i.i.i

.preheader.i62.i.i.i.i.i:                         ; preds = %bb.ha
  %i.aoq = xor i64 %.demorgan.i.i.i.i, -1
  %i.aor = getelementptr inbounds nuw i8, ptr %120, i64 24
  %i.aos = getelementptr inbounds nuw i8, ptr %120, i64 57
  %i.aot = load ptr, ptr %i.aor, align 8, !tbaa !210, !noalias !203 ; 4 uses
  %.not.i.i.i64.i.i.i.i.i = icmp eq ptr %i.aot, null
  %i.aou = load i8, ptr %i.sg, align 2, !range !14
  %i.aov = trunc nuw i8 %i.aou to i1
  %i.aow = load i8, ptr %i.aos, align 1, !range !14
  %i.aox = trunc nuw i8 %i.aow to i1
  %or.cond.i.i.i65.i.i.i.i.i = select i1 %i.aov, i1 true, i1 %i.aox
  %i.aoy = load i8, ptr %i.bl, align 1, !range !14
  %i.aoz = trunc nuw i8 %i.aoy to i1
  %i.apa = load ptr, ptr %i.bf, align 8
  br label %bb.hb

bb.hb:                                            ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i69.i.i.i.i.i", %.preheader.i62.i.i.i.i.i
  %.011.i63.i.i.i.i.i = phi i64 [ %i.aoq, %.preheader.i62.i.i.i.i.i ], [ %i.aqj, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i69.i.i.i.i.i" ] ; 3 uses
  %i.apb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i63.i.i.i.i.i, i1 true)
  %i.apc = trunc nuw nsw i64 %i.apb to i32
  %i.apd = or disjoint i32 %i.akg, %i.apc         ; 3 uses
  br i1 %.not.i.i.i64.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i68.i.i.i.i.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  br i1 %or.cond.i.i.i65.i.i.i.i.i, label %.split.i.i73.i.i.i.i.i, label %bb.hd

.split.i.i73.i.i.i.i.i:                           ; preds = %bb.hc
  %i.ape = zext nneg i32 %i.apd to i64            ; 2 uses
  %i.apf = lshr i64 %i.ape, 6
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr %i.aot, i64 %i.apf
  %i.aph = load i64, ptr %i.apg, align 8, !tbaa !175, !noalias !203
  %i.api = and i64 %i.ape, 63
  %i.apj = shl nuw i64 1, %i.api
  %i.apk = and i64 %i.aph, %i.apj
  %.not.i.i.i.i74.i.i.i.i.i = icmp eq i64 %i.apk, 0
  br i1 %.not.i.i.i.i74.i.i.i.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i69.i.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i68.i.i.i.i.i

bb.hd:                                            ; preds = %bb.hc
  br i1 %i.aoz, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i71.i.i.i.i.i, label %.split3.i.i66.i.i.i.i.i

.split3.i.i66.i.i.i.i.i:                          ; preds = %bb.hd
  %i.apl = zext nneg i32 %i.apd to i64
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %i.apa, i64 %i.apl
  %i.apn = load i32, ptr %i.apm, align 4, !tbaa !61, !noalias !203
  %i.apo = zext i32 %i.apn to i64                 ; 2 uses
  %i.app = lshr i64 %i.apo, 6
  %i.apq = getelementptr inbounds nuw [8 x i8], ptr %i.aot, i64 %i.app
  %i.apr = load i64, ptr %i.apq, align 8, !tbaa !175, !noalias !203
  %i.aps = and i64 %i.apo, 63
  %i.apt = shl nuw i64 1, %i.aps
  %i.apu = and i64 %i.apt, %i.apr
  %.not.i7.i.i.i67.i.i.i.i.i = icmp eq i64 %i.apu, 0
  br i1 %.not.i7.i.i.i67.i.i.i.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i69.i.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i68.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i71.i.i.i.i.i: ; preds = %bb.hd
  %i.apv = load i64, ptr %i.aot, align 8, !tbaa !175, !noalias !203
  %i.apw = and i64 %i.apv, 1
  %.not.i6.i.i.i72.i.i.i.i.i = icmp eq i64 %i.apw, 0
  br i1 %.not.i6.i.i.i72.i.i.i.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i69.i.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i68.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i68.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i71.i.i.i.i.i, %.split3.i.i66.i.i.i.i.i, %.split.i.i73.i.i.i.i.i, %bb.hb
  %i.apx = zext nneg i32 %i.apd to i64
  %i.apy = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %i.apx
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !61, !noalias !203
  %i.aqa = sext i32 %i.apz to i64                 ; 2 uses
  %i.aqb = and i64 %i.aqa, 7
  %i.aqc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.aqb
  %i.aqd = load i8, ptr %i.aqc, align 1, !tbaa !60, !noalias !203
  %i.aqe = lshr i64 %i.aqa, 3
  %i.aqf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.aqe ; 2 uses
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !60, !noalias !203
  %i.aqh = and i8 %i.aqg, %i.aqd
  store i8 %i.aqh, ptr %i.aqf, align 1, !tbaa !60, !noalias !203
  br label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i69.i.i.i.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i69.i.i.i.i.i": ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i68.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i71.i.i.i.i.i, %.split3.i.i66.i.i.i.i.i, %.split.i.i73.i.i.i.i.i
  %i.aqi = add nsw i64 %.011.i63.i.i.i.i.i, -1
  %i.aqj = and i64 %i.aqi, %.011.i63.i.i.i.i.i    ; 2 uses
  %.not10.i70.i.i.i.i.i = icmp eq i64 %i.aqj, 0
  br i1 %.not10.i70.i.i.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiiT_.exit.i.i", label %bb.hb, !llvm.loop !211

"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiiT_.exit.i.i": ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_0clIiEEDaT_.exit.i69.i.i.i.i.i", %bb.ha, %._crit_edge.i.i.i.i.i, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.i.i
  %i.aqk = getelementptr inbounds nuw i8, ptr %128, i64 59 ; 5 uses
  %i.aql = load i8, ptr %i.aqk, align 1, !tbaa !90, !range !14, !noalias !203, !noundef !15
  %i.aqm = trunc nuw i8 %i.aql to i1
  br i1 %i.aqm, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i, label %bb.hl

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES6_PiE3$_0EEvPKmiiT_.exit.i.i"
  %i.aqn = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #36
          to label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i unwind label %bb.hk, !noalias !203, !inline_history !174 ; 7 uses

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i: ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aqn, i8 0, i64 12, i1 false), !noalias !203
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 12 ; 4 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %128, i64 58
  %i.aqq = load i8, ptr %i.aqp, align 2, !tbaa !101, !range !14, !noalias !203, !noundef !15
  %i.aqr = trunc nuw i8 %i.aqq to i1
  br i1 %i.aqr, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i, label %bb.he

bb.he:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i
  %i.aqs = load i8, ptr %i.aqk, align 1, !tbaa !90, !range !14, !noalias !203, !noundef !15
  %i.aqt = trunc nuw i8 %i.aqs to i1
  br i1 %i.aqt, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.aqu = load i32, ptr %i.bc, align 8, !tbaa !88, !noalias !203
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i

bb.hg:                                            ; preds = %bb.he
  %i.aqv = load ptr, ptr %i.ay, align 8, !tbaa !126, !noalias !203
  %i.aqw = load i32, ptr %i.aqv, align 4, !tbaa !61, !noalias !203
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i

_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i: ; preds = %bb.hg, %bb.hf, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i
  %.0.i.i.i = phi i32 [ %i.aqw, %bb.hg ], [ %i.aqu, %bb.hf ], [ 0, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i ]
  store i32 %.0.i.i.i, ptr %i.aqn, align 4, !tbaa !212, !noalias !203
  %i.aqx = load ptr, ptr %i.bh, align 8, !tbaa !100, !noalias !203
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 56
  %i.aqz = load i32, ptr %i.aqy, align 8, !tbaa !62, !noalias !203 ; 8 uses
  %.not.i.i49.i.i = icmp sgt i32 %i.aqz, 0
  br i1 %.not.i.i49.i.i, label %bb.hh, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i

bb.hh:                                            ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i
  %i.ara = and i32 %i.aqz, 2147483584             ; 4 uses
  %i.arb = zext nneg i32 %i.ara to i64
  %.not37.i.i.not.i.i1438.not = icmp eq i32 %i.ara, 0
  br i1 %.not37.i.i.not.i.i1438.not, label %.critedge.i.i.i.i, label %.lr.ph1441

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i: ; preds = %.lr.ph1441
  %indvars.iv.next239.i.i = add nuw nsw i64 %indvars.iv238.i.i1439, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next239.i.i, %i.arb
  br i1 %.not37.i.i.not.i.i, label %.lr.ph1441, label %.critedge.i.i.i.i, !llvm.loop !213

.lr.ph1441:                                       ; preds = %bb.hh, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i
  %indvars.iv238.i.i1439 = phi i64 [ %indvars.iv.next239.i.i, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i ], [ 0, %bb.hh ] ; 3 uses
  %i.arc = lshr exact i64 %indvars.iv238.i.i1439, 3
  %i.ard = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.arc
  %i.are = load i64, ptr %i.ard, align 8, !tbaa !175, !noalias !203 ; 2 uses
  %.not.i42.i.i.i.i = icmp eq i64 %i.are, 0
  br i1 %.not.i42.i.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i, !llvm.loop !213

.critedge.i.i.i.i:                                ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i, %bb.hh
  %.not38.i.i.i.i = icmp eq i32 %i.aqz, %i.ara
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i, label %bb.hi

bb.hi:                                            ; preds = %.critedge.i.i.i.i
  %i.arf = lshr i32 %i.aqz, 6
  %i.arg = and i32 %i.aqz, 63
  %i.arh = zext nneg i32 %i.arg to i64
  %notmask.i43.i.i.i.i = shl nsw i64 -1, %i.arh
  %i.ari = xor i64 %notmask.i43.i.i.i.i, -1
  %i.arj = zext nneg i32 %i.arf to i64
  %i.ark = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %i.arj
  %i.arl = load i64, ptr %i.ark, align 8, !tbaa !175, !noalias !203
  %i.arm = and i64 %i.arl, %i.ari                 ; 2 uses
  %.not.i44.i.i.i.i = icmp eq i64 %i.arm, 0
  br i1 %.not.i44.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i: ; preds = %.lr.ph1441
  %i.arn = trunc nuw nsw i64 %indvars.iv238.i.i1439 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i, %bb.hi
  %.sink67.i.i.i.i = phi i64 [ %i.arm, %bb.hi ], [ %i.are, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i ]
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12_GLOBAL__N_18copyImplERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b:bb.a
bb.hy:                                            ; preds = %bb.hx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ayq, i8 0, i64 12, i1 false), !noalias !217
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i.i

bb.hz:                                            ; preds = %bb.hx
  %i.azf = ptrtoint ptr %.sroa.23.7.i.i to i64
  %i.azg = ptrtoint ptr %.sroa.0108.10.i.i to i64
  %i.azh = sub i64 %i.azf, %i.azg                 ; 6 uses
  %i.azi = icmp eq i64 %i.azh, 9223372036854775800
  br i1 %i.azi, label %bb.ia, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i

bb.ia:                                            ; preds = %bb.hz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #33
          to label %.noexc68.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !217, !inline_history !174

.noexc68.i.i.i:                                   ; preds = %bb.ia
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hz
  %i.azj = sdiv exact i64 %i.azh, 12              ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.azj, i64 1)
  %i.azk = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, %i.azj ; 2 uses
  %i.azl = icmp ult i64 %i.azk, %i.azj
  %i.azm = call i64 @llvm.umin.i64(i64 %i.azk, i64 768614336404564650)
  %i.azn = select i1 %i.azl, i64 768614336404564650, i64 %i.azm ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i60.i.i = icmp ne i64 %i.azn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i60.i.i)
  %i.azo = mul nuw nsw i64 %i.azn, 12
  %i.azp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.azo) #36
          to label %.noexc69.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !217, !inline_history !174 ; 4 uses

.noexc69.i.i.i:                                   ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i
  %i.azq = getelementptr inbounds i8, ptr %i.azp, i64 %i.azh ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.azq, i8 0, i64 12, i1 false), !noalias !217
  %i.azr = icmp sgt i64 %i.azh, 0
  br i1 %i.azr, label %bb.ib, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i.i.i.i

bb.ib:                                            ; preds = %.noexc69.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.azp, ptr align 4 %.sroa.0108.10.i.i, i64 %i.azh, i1 false), !noalias !217
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ib, %.noexc69.i.i.i
  %.not.i16.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0108.10.i.i, null
  br i1 %.not.i16.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i, label %bb.ic

bb.ic:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.10.i.i, i64 noundef %i.azh) #34, !noalias !217, !inline_history !174
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ic, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i.i.i.i
  %i.azs = getelementptr inbounds nuw [12 x i8], ptr %i.azp, i64 %i.azn
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i, %bb.hy
  %.sroa.0108.11.i.i = phi ptr [ %i.azp, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.0108.10.i.i, %bb.hy ]
  %.sroa.23.8.i.i = phi ptr [ %i.azs, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.23.7.i.i, %bb.hy ]
  %i.azt = phi ptr [ %i.azq, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.7.i.i, %bb.hy ] ; 4 uses
  %.sroa.14.8.i.i = getelementptr inbounds nuw i8, ptr %i.azt, i64 12 ; 4 uses
  %i.azu = trunc i64 %.020.i.i.i.i.i.i.i to i32
  store i32 %i.azu, ptr %i.azt, align 4, !tbaa !212, !noalias !217
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azt, i64 4
  store i32 %.4.i.i.i, ptr %i.azv, align 4, !tbaa !96, !noalias !217
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azt, i64 8
  store i32 1, ptr %i.azw, align 4, !tbaa !98, !noalias !217
  br label %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES5_PiE3$_1EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES5_PiE3$_1EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i.i.i": ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i.i, %bb.hw
  %.sroa.0108.12.i.i = phi ptr [ %.sroa.0108.11.i.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0108.10.i.i, %bb.hw ] ; 2 uses
  %.sroa.14.9.i.i = phi ptr [ %.sroa.14.8.i.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.14.7.i.i, %bb.hw ] ; 2 uses
  %.sroa.23.9.i.i = phi ptr [ %.sroa.23.8.i.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.23.7.i.i, %bb.hw ] ; 2 uses
  %.pre84.i.i.i156.i.i.i = phi ptr [ %.sroa.14.8.i.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i.i ], [ %.pre84.i.i.i151.i.i.i, %bb.hw ] ; 2 uses
  %.pre.i.i.i150.i.i.i = phi ptr [ %.sroa.14.8.i.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i147.i.i.i, %bb.hw ] ; 2 uses
  %i.azx = phi ptr [ %.sroa.14.8.i.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i.i ], [ %i.ayq, %bb.hw ]
  %i.azy = load ptr, ptr %i.bh, align 8, !tbaa !100, !noalias !217
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 56
  %i.baa = load i32, ptr %i.azz, align 8, !tbaa !62, !noalias !217 ; 8 uses
  %i.bab = icmp slt i32 %.4.i.i, %i.baa
  br i1 %i.bab, label %bb.id, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_1clEv.exit.i.i.i.i.i.i"

bb.id:                                            ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES5_PiE3$_1EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i.i.i"
  %i.bac = add i32 %.4.i.i, 63                    ; 2 uses
  %i.bad = srem i32 %i.bac, 64
  %i.bae = sub nsw i32 %i.bac, %i.bad             ; 5 uses
  %i.baf = and i32 %i.baa, -64                    ; 5 uses
  %i.bag = icmp slt i32 %i.baf, %i.bae
  br i1 %i.bag, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.bah = ashr i32 %i.baa, 6
  %i.bai = and i32 %i.baa, 63
  %i.baj = zext nneg i32 %i.bai to i64
  %notmask.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.baj
  %i.bak = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i, -1
  %i.bal = sub nsw i32 %i.bae, %.4.i.i            ; 2 uses
  %i.bam = zext nneg i32 %i.bal to i64
  %notmask.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.bam
  %i.ban = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bao = sub nsw i32 64, %i.bal
  %i.bap = zext nneg i32 %i.bao to i64
  %i.baq = shl i64 %i.ban, %i.bap
  %i.bar = and i64 %i.baq, %i.bak
  %i.bas = sext i32 %i.bah to i64
  %i.bat = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i.i, i64 %i.bas
  %i.bau = load i64, ptr %i.bat, align 8, !tbaa !175, !noalias !217
  %i.bav = and i64 %i.bar, %i.bau                 ; 2 uses
  %.not.i.i.i.i46.i.i.i.i.i.i = icmp eq i64 %i.bav, 0
  br i1 %.not.i.i.i.i46.i.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i.i

bb.if:                                            ; preds = %bb.id
  %.not36.i.i.i.i.i.i.i.i.i = icmp eq i32 %.4.i.i, %i.bae
  br i1 %.not36.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.preheader, label %bb.ig

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.ig, %bb.if
  br label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i

bb.ig:                                            ; preds = %bb.if
  %i.baw = sdiv i32 %.4.i.i, 64                   ; 2 uses
  %i.bax = sub nsw i32 %i.bae, %.4.i.i            ; 2 uses
  %i.bay = zext nneg i32 %i.bax to i64
  %notmask.i.i39.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.bay
  %i.baz = xor i64 %notmask.i.i39.i.i.i.i.i.i.i.i.i, -1
  %i.bba = sub nsw i32 64, %i.bax
  %i.bbb = zext nneg i32 %i.bba to i64
  %i.bbc = shl i64 %i.baz, %i.bbb
  %i.bbd = sext i32 %i.baw to i64
  %i.bbe = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i.i, i64 %i.bbd
  %i.bbf = load i64, ptr %i.bbe, align 8, !tbaa !175, !noalias !217
  %i.bbg = and i64 %i.bbf, %i.bbc                 ; 2 uses
  %.not.i40.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bbg, 0
  br i1 %.not.i40.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.preheader, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i.i.i.i.i.i.i

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i.i.i.i.i.i.i: ; preds = %bb.ig
  %i.bbh = shl nsw i32 %i.baw, 6
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i.i

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.preheader, %bb.ih
  %.0.i.i.i.i.i.i.i59.i.i = phi i32 [ %i.bbi, %bb.ih ], [ %i.bae, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bbi = add nsw i32 %.0.i.i.i.i.i.i.i59.i.i, 64 ; 2 uses
  %.not37.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.bbi, %i.baf
  br i1 %.not37.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i, label %bb.ih

bb.ih:                                            ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i
  %i.bbj = sdiv i32 %.0.i.i.i.i.i.i.i59.i.i, 64   ; 2 uses
  %i.bbk = sext i32 %i.bbj to i64
  %i.bbl = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i.i, i64 %i.bbk
  %i.bbm = load i64, ptr %i.bbl, align 8, !tbaa !175, !noalias !217 ; 2 uses
  %.not.i42.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bbm, 0
  br i1 %.not.i42.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, label %bb.ii, !llvm.loop !213

bb.ii:                                            ; preds = %bb.ih
  %i.bbn = shl nsw i32 %i.bbj, 6
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.i:                      ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i
  %.not38.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.baa, %i.baf
  br i1 %.not38.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i.i.i.i.i, label %bb.ij

bb.ij:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i
  %i.bbo = ashr i32 %i.baa, 6
  %i.bbp = and i32 %i.baa, 63
  %i.bbq = zext nneg i32 %i.bbp to i64
  %notmask.i43.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.bbq
  %i.bbr = xor i64 %notmask.i43.i.i.i.i.i.i.i.i.i, -1
  %i.bbs = sext i32 %i.bbo to i64
  %i.bbt = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i.i, i64 %i.bbs
  %i.bbu = load i64, ptr %i.bbt, align 8, !tbaa !175, !noalias !217
  %i.bbv = and i64 %i.bbu, %i.bbr                 ; 2 uses
  %.not.i44.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bbv, 0
  br i1 %.not.i44.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i.i: ; preds = %bb.ij, %bb.ii, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i.i.i.i.i.i.i, %bb.ie
  %.sink67.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bav, %bb.ie ], [ %i.bbm, %bb.ii ], [ %i.bbg, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i.i.i.i.i.i.i ], [ %i.bbv, %bb.ij ]
  %.sink65.i.i.i.i.i.i.i.i.i = phi i32 [ %i.baf, %bb.ie ], [ %i.bbn, %bb.ii ], [ %i.bbh, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i.i.i.i.i.i.i ], [ %i.baf, %bb.ij ] ; 2 uses
  %i.bbw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bbx = trunc nuw nsw i64 %i.bbw to i32
  %i.bby = or disjoint i32 %.sink65.i.i.i.i.i.i.i.i.i, %i.bbx
  %i.bbz = icmp slt i32 %.sink65.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bbz, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i.i.i.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_1clEv.exit.i.i.i.i.i.i"

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i.i, %bb.ij, %.critedge.i.i.i.i.i.i.i.i.i, %bb.ie
  br label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_1clEv.exit.i.i.i.i.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_1clEv.exit.i.i.i.i.i.i": ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i.i.i.i.i, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i.i, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES5_PiE3$_1EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i.i.i"
  %i.bca = phi i32 [ %i.bby, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i.i ], [ %i.baa, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i.i.i.i.i ], [ %.4.i.i, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES5_PiE3$_1EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i.i.i" ] ; 3 uses
  %i.bcb = add nsw i32 %i.bca, 1                  ; 2 uses
  %i.bcc = add nuw nsw i64 %.020.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bcc, %indvars.iv.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES7_PiE3$_1EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i.i.i", label %.preheader.i146.i, !llvm.loop !221

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ht, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_1clEv.exit67.i.i.i.i.i.i"
  %.5.i.i = phi i32 [ %i.bfp, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_1clEv.exit67.i.i.i.i.i.i" ], [ %.0149.i.i, %bb.ht ] ; 7 uses
  %.sroa.0108.13.i.i = phi ptr [ %.sroa.0108.15.i.i, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_1clEv.exit67.i.i.i.i.i.i" ], [ %.sroa.0108.1.i.i, %bb.ht ] ; 9 uses
  %.sroa.14.10.i.i = phi ptr [ %.sroa.14.12.i.i, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_1clEv.exit67.i.i.i.i.i.i" ], [ %.sroa.14.0.i.i, %bb.ht ] ; 2 uses
  %.sroa.23.10.i.i = phi ptr [ %.sroa.23.12.i.i, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_1clEv.exit67.i.i.i.i.i.i" ], [ %.sroa.23.0.i.i, %bb.ht ] ; 6 uses
  %.pre84.i.i.i153.i.i.i = phi ptr [ %.pre84.i.i.i152.i.i.i, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_1clEv.exit67.i.i.i.i.i.i" ], [ %.pre84.i.i.i.i.i.i, %bb.ht ]
  %.5.i.i.i = phi i32 [ %i.bfo, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_1clEv.exit67.i.i.i.i.i.i" ], [ %.0107.i.i.i, %bb.ht ] ; 3 uses
  %i.bcd = phi ptr [ %i.bdl, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_1clEv.exit67.i.i.i.i.i.i" ], [ %.pre84.i.i.i.i.i.i, %bb.ht ] ; 7 uses
  %.01519.i.i.i.i.i.i.i = phi i64 [ %i.bfr, %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_1clEv.exit67.i.i.i.i.i.i" ], [ %i.ayp, %bb.ht ] ; 3 uses
  %i.bce = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i.i.i, i1 true)
  %i.bcf = or disjoint i64 %i.bce, %indvars.iv78.i.i.i.i.i.i ; 2 uses
  %i.bcg = trunc i64 %i.bcf to i32                ; 2 uses
  %141 = and i64 %i.bcf, 4294967295
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i.i, i64 %141
  store i32 %.5.i.i.i, ptr %i.bch, align 4, !tbaa !61, !noalias !217
  %i.bci = icmp eq ptr %.sroa.0108.13.i.i, %i.bcd
  br i1 %i.bci, label %bb.in, label %bb.ik

bb.ik:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bcj = getelementptr inbounds i8, ptr %i.bcd, i64 -12
  %i.bck = load i32, ptr %i.bcj, align 4, !tbaa !212, !noalias !217
  %i.bcl = getelementptr inbounds i8, ptr %i.bcd, i64 -4 ; 2 uses
  %i.bcm = load i32, ptr %i.bcl, align 4, !tbaa !98, !noalias !217 ; 3 uses
  %i.bcn = add nsw i32 %i.bcm, %i.bck
  %i.bco = icmp eq i32 %i.bcn, %i.bcg
  br i1 %i.bco, label %bb.il, label %bb.in

bb.il:                                            ; preds = %bb.ik
  %i.bcp = getelementptr inbounds i8, ptr %i.bcd, i64 -8
  %i.bcq = load i32, ptr %i.bcp, align 4, !tbaa !96, !noalias !217
  %i.bcr = add nsw i32 %i.bcq, %i.bcm
  %i.bcs = icmp eq i32 %i.bcr, %.5.i.i.i
  br i1 %i.bcs, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.bct = add nsw i32 %i.bcm, 1
  store i32 %i.bct, ptr %i.bcl, align 4, !tbaa !98, !noalias !217
  br label %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES5_PiE3$_1EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i.i.i"

bb.in:                                            ; preds = %bb.il, %bb.ik, %.lr.ph.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bcd, %.sroa.23.10.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bcd, i8 0, i64 12, i1 false), !noalias !217
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i

bb.ip:                                            ; preds = %bb.in
  %i.bcu = ptrtoint ptr %.sroa.23.10.i.i to i64
  %i.bcv = ptrtoint ptr %.sroa.0108.13.i.i to i64
  %i.bcw = sub i64 %i.bcu, %i.bcv                 ; 6 uses
  %i.bcx = icmp eq i64 %i.bcw, 9223372036854775800
  br i1 %i.bcx, label %bb.iq, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i

bb.iq:                                            ; preds = %bb.ip
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #33
          to label %.noexc70.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !217, !inline_history !174

.noexc70.i.i.i:                                   ; preds = %bb.iq
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ip
  %i.bcy = sdiv exact i64 %i.bcw, 12              ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bcy, i64 1)
  %i.bcz = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %i.bcy ; 2 uses
  %i.bda = icmp ult i64 %i.bcz, %i.bcy
  %i.bdb = call i64 @llvm.umin.i64(i64 %i.bcz, i64 768614336404564650)
  %i.bdc = select i1 %i.bda, i64 768614336404564650, i64 %i.bdb ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.bdc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i)
  %i.bdd = mul nuw nsw i64 %i.bdc, 12
  %i.bde = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bdd) #36
          to label %.noexc71.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !217, !inline_history !174 ; 4 uses

.noexc71.i.i.i:                                   ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  %i.bdf = getelementptr inbounds i8, ptr %i.bde, i64 %i.bcw ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bdf, i8 0, i64 12, i1 false), !noalias !217
  %i.bdg = icmp sgt i64 %i.bcw, 0
  br i1 %i.bdg, label %bb.ir, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i.i.i

bb.ir:                                            ; preds = %.noexc71.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bde, ptr align 4 %.sroa.0108.13.i.i, i64 %i.bcw, i1 false), !noalias !217
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i.i.i: ; preds = %bb.ir, %.noexc71.i.i.i
  %.not.i16.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0108.13.i.i, null
  br i1 %.not.i16.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i, label %bb.is

bb.is:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.13.i.i, i64 noundef %i.bcw) #34, !noalias !217, !inline_history !174
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.is, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i.i.i
  %i.bdh = getelementptr inbounds nuw [12 x i8], ptr %i.bde, i64 %i.bdc
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i, %bb.io
  %.sroa.0108.14.i.i = phi ptr [ %i.bde, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0108.13.i.i, %bb.io ]
  %.sroa.23.11.i.i = phi ptr [ %i.bdh, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.23.10.i.i, %bb.io ]
  %i.bdi = phi ptr [ %i.bdf, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.14.10.i.i, %bb.io ] ; 4 uses
  %.sroa.14.11.i.i = getelementptr inbounds nuw i8, ptr %i.bdi, i64 12 ; 3 uses
  store i32 %i.bcg, ptr %i.bdi, align 4, !tbaa !212, !noalias !217
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 4
  store i32 %.5.i.i.i, ptr %i.bdj, align 4, !tbaa !96, !noalias !217
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdi, i64 8
  store i32 1, ptr %i.bdk, align 4, !tbaa !98, !noalias !217
  br label %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES5_PiE3$_1EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES5_PiE3$_1EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i.i.i": ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i, %bb.im
  %.sroa.0108.15.i.i = phi ptr [ %.sroa.0108.14.i.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i ], [ %.sroa.0108.13.i.i, %bb.im ] ; 2 uses
  %.sroa.14.12.i.i = phi ptr [ %.sroa.14.11.i.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i ], [ %.sroa.14.10.i.i, %bb.im ] ; 2 uses
  %.sroa.23.12.i.i = phi ptr [ %.sroa.23.11.i.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i ], [ %.sroa.23.10.i.i, %bb.im ] ; 2 uses
  %.pre84.i.i.i152.i.i.i = phi ptr [ %.sroa.14.11.i.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i ], [ %.pre84.i.i.i153.i.i.i, %bb.im ] ; 2 uses
  %i.bdl = phi ptr [ %.sroa.14.11.i.i, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i.i ], [ %i.bcd, %bb.im ] ; 2 uses
  %i.bdm = load ptr, ptr %i.bh, align 8, !tbaa !100, !noalias !217
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdm, i64 56
  %i.bdo = load i32, ptr %i.bdn, align 8, !tbaa !62, !noalias !217 ; 8 uses
  %i.bdp = icmp slt i32 %.5.i.i, %i.bdo
  br i1 %i.bdp, label %bb.it, label %"_ZZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES4_PiENK3$_1clEv.exit67.i.i.i.i.i.i"

bb.it:                                            ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEES5_PiE3$_1EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i.i.i"
  %i.bdq = add i32 %.5.i.i, 63                    ; 2 uses
  %i.bdr = srem i32 %i.bdq, 64
  %i.bds = sub nsw i32 %i.bdq, %i.bdr             ; 5 uses
  %i.bdt = and i32 %i.bdo, -64                    ; 5 uses
  %i.bdu = icmp slt i32 %i.bdt, %i.bds
  br i1 %i.bdu, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.bdv = ashr i32 %i.bdo, 6
  %i.bdw = and i32 %i.bdo, 63
  %i.bdx = zext nneg i32 %i.bdw to i64
  %notmask.i.i.i.i64.i.i.i.i.i.i = shl nsw i64 -1, %i.bdx
  %i.bdy = xor i64 %notmask.i.i.i.i64.i.i.i.i.i.i, -1
  %i.bdz = sub nsw i32 %i.bds, %.5.i.i            ; 2 uses
  %i.bea = zext nneg i32 %i.bdz to i64
  %notmask.i.i.i.i.i65.i.i.i.i.i.i = shl nsw i64 -1, %i.bea
  %i.beb = xor i64 %notmask.i.i.i.i.i65.i.i.i.i.i.i, -1
  %i.bec = sub nsw i32 64, %i.bdz
  %i.bed = zext nneg i32 %i.bec to i64
  %i.bee = shl i64 %i.beb, %i.bed
  %i.bef = and i64 %i.bee, %i.bdy
  %i.beg = sext i32 %i.bdv to i64
  %i.beh = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i.i, i64 %i.beg
  %i.bei = load i64, ptr %i.beh, align 8, !tbaa !175, !noalias !217
  %i.bej = and i64 %i.bef, %i.bei                 ; 2 uses
  %.not.i.i.i.i66.i.i.i.i.i.i = icmp eq i64 %i.bej, 0
  br i1 %.not.i.i.i.i66.i.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i63.i.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i51.i.i.i.i.i.i

bb.iv:                                            ; preds = %bb.it
  %.not36.i.i.i47.i.i.i.i.i.i = icmp eq i32 %.5.i.i, %i.bds
  br i1 %.not36.i.i.i47.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i55.i.i.i.i.i.i.preheader, label %bb.iw

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i55.i.i.i.i.i.i.preheader: ; preds = %bb.iw, %bb.iv
  br label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i55.i.i.i.i.i.i

bb.iw:                                            ; preds = %bb.iv
  %i.bek = sdiv i32 %.5.i.i, 64                   ; 2 uses
  %i.bel = sub nsw i32 %i.bds, %.5.i.i            ; 2 uses
  %i.bem = zext nneg i32 %i.bel to i64
  %notmask.i.i39.i.i.i48.i.i.i.i.i.i = shl nsw i64 -1, %i.bem
  %i.ben = xor i64 %notmask.i.i39.i.i.i48.i.i.i.i.i.i, -1
  %i.beo = sub nsw i32 64, %i.bel
  %i.bep = zext nneg i32 %i.beo to i64
  %i.beq = shl i64 %i.ben, %i.bep
  %i.ber = sext i32 %i.bek to i64
  %i.bes = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i.i, i64 %i.ber
  %i.bet = load i64, ptr %i.bes, align 8, !tbaa !175, !noalias !217
  %i.beu = and i64 %i.bet, %i.beq                 ; 2 uses
  %.not.i40.i.i.i49.i.i.i.i.i.i = icmp eq i64 %i.beu, 0
  br i1 %.not.i40.i.i.i49.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i55.i.i.i.i.i.i.preheader, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i50.i.i.i.i.i.i

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i50.i.i.i.i.i.i: ; preds = %bb.iw
  %i.bev = shl nsw i32 %i.bek, 6
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i51.i.i.i.i.i.i

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i55.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i55.i.i.i.i.i.i.preheader, %bb.ix
  %.0.i.i.i56.i.i.i.i.i.i = phi i32 [ %i.bew, %bb.ix ], [ %i.bds, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i55.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bew = add nsw i32 %.0.i.i.i56.i.i.i.i.i.i, 64 ; 2 uses
  %.not37.i.i.i57.i.i.i.i.i.i = icmp sgt i32 %i.bew, %i.bdt
  br i1 %.not37.i.i.i57.i.i.i.i.i.i, label %.critedge.i.i.i59.i.i.i.i.i.i, label %bb.ix

bb.ix:                                            ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i55.i.i.i.i.i.i
  %i.bex = sdiv i32 %.0.i.i.i56.i.i.i.i.i.i, 64   ; 2 uses
  %i.bey = sext i32 %i.bex to i64
  %i.bez = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i.i, i64 %i.bey
  %i.bfa = load i64, ptr %i.bez, align 8, !tbaa !175, !noalias !217 ; 2 uses
  %.not.i42.i.i.i58.i.i.i.i.i.i = icmp eq i64 %i.bfa, 0
  br i1 %.not.i42.i.i.i58.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i55.i.i.i.i.i.i, label %bb.iy, !llvm.loop !213

bb.iy:                                            ; preds = %bb.ix
  %i.bfb = shl nsw i32 %i.bex, 6
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i51.i.i.i.i.i.i

.critedge.i.i.i59.i.i.i.i.i.i:                    ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i55.i.i.i.i.i.i
  %.not38.i.i.i60.i.i.i.i.i.i = icmp eq i32 %i.bdo, %i.bdt
  br i1 %.not38.i.i.i60.i.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i63.i.i.i.i.i.i, label %bb.iz

bb.iz:                                            ; preds = %.critedge.i.i.i59.i.i.i.i.i.i
  %i.bfc = ashr i32 %i.bdo, 6
  %i.bfd = and i32 %i.bdo, 63
  %i.bfe = zext nneg i32 %i.bfd to i64
  %notmask.i43.i.i.i61.i.i.i.i.i.i = shl nsw i64 -1, %i.bfe
  %i.bff = xor i64 %notmask.i43.i.i.i61.i.i.i.i.i.i, -1
  %i.bfg = sext i32 %i.bfc to i64
  %i.bfh = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i.i, i64 %i.bfg
  %i.bfi = load i64, ptr %i.bfh, align 8, !tbaa !175, !noalias !217
  %i.bfj = and i64 %i.bfi, %i.bff                 ; 2 uses
  %.not.i44.i.i.i62.i.i.i.i.i.i = icmp eq i64 %i.bfj, 0
  br i1 %.not.i44.i.i.i62.i.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i63.i.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i51.i.i.i.i.i.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i51.i.i.i.i.i.i: ; preds = %bb.iz, %bb.iy, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i50.i.i.i.i.i.i, %bb.iu
  %.sink67.i.i.i52.i.i.i.i.i.i = phi i64 [ %i.bej, %bb.iu ], [ %i.bfa, %bb.iy ], [ %i.beu, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i50.i.i.i.i.i.i ], [ %i.bfj, %bb.iz ]
  %.sink65.i.i.i53.i.i.i.i.i.i = phi i32 [ %i.bdt, %bb.iu ], [ %i.bfb, %bb.iy ], [ %i.bev, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i50.i.i.i.i.i.i ], [ %i.bdt, %bb.iz ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12_GLOBAL__N_112toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPi:bb.a
  br label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split109.i, %.split.i
  %i.dv = phi i32 [ %i.cc, %.split109.i ], [ %i.cc, %.split.i ], [ %.pre.i, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i ], [ %i.cc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ] ; 2 uses
  %i.dw = add nuw nsw i32 %.049125.i, 1           ; 2 uses
  %i.dx = icmp slt i32 %i.dw, %i.dv
  br i1 %i.dx, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !680

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i:             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc65.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.0.0.i = phi ptr [ %i.bw, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.bw, %.noexc65.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 10 uses
  %.sroa.13.0.i = phi ptr [ %i.bx, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.bx, %.noexc65.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !100, !noalias !677
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !62, !noalias !677 ; 5 uses
  %i.eb = icmp slt i32 %i.ea, 1
  br i1 %i.eb, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiiSM_.exit.i", label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  %i.ec = and i32 %i.ea, 2147483584               ; 4 uses
  %.not32.not47.not.i.i.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not32.not47.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ef = zext nneg i32 %i.ec to i64
  br label %bb.h

._crit_edge.i.i.i.i:                              ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i", %bb.g
  %i.eg = phi ptr [ null, %bb.g ], [ %i.iq, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i" ]
  %i.eh = phi ptr [ null, %bb.g ], [ %i.ir, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i" ]
  %.0 = phi i32 [ %3, %bb.g ], [ %.4, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i" ]
  %.pre21.i.i.i = phi ptr [ null, %bb.g ], [ %.pre56.i.i.i154.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i" ]
  %.2.i = phi i32 [ %3, %bb.g ], [ %.1.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i" ]
  %.not33.i.i.i.i = icmp eq i32 %i.ea, %i.ec
  br i1 %.not33.i.i.i.i, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiiSM_.exit.i", label %bb.aa

bb.h:                                             ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %i.ei = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %i.iq, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i" ] ; 3 uses
  %i.ej = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %i.ir, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i" ] ; 3 uses
  %i.ek = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %i.is, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i" ] ; 3 uses
  %i.el = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %i.it, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i" ] ; 3 uses
  %i.em = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %i.iu, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %.1 = phi i32 [ %3, %.lr.ph.i.i.i.i ], [ %.4, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i" ] ; 3 uses
  %.pre56.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.pre56.i.i.i154.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i" ] ; 4 uses
  %.pre.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.pre.i.i.i144.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i" ] ; 3 uses
  %.0107.i = phi i32 [ %3, %.lr.ph.i.i.i.i ], [ %.1.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i" ] ; 3 uses
  %indvars.iv50.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next51.i.i.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i" ] ; 4 uses
  %indvars.iv.i.i.i.i = phi i64 [ 64, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i" ] ; 3 uses
  %i.en = lshr exact i64 %indvars.iv50.i.i.i.i, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.089.0.i, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !175, !noalias !677 ; 2 uses
  switch i64 %i.ep, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %.preheader
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i"
  ]

.preheader:                                       ; preds = %bb.h, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i"
  %i.eq = phi ptr [ %i.gj, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ], [ %i.ei, %bb.h ] ; 2 uses
  %i.er = phi ptr [ %i.gk, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ], [ %i.ej, %bb.h ] ; 2 uses
  %i.es = phi ptr [ %i.gl, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ], [ %i.ek, %bb.h ] ; 3 uses
  %i.et = phi ptr [ %i.gm, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ], [ %i.el, %bb.h ] ; 6 uses
  %i.eu = phi ptr [ %i.gn, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ], [ %i.em, %bb.h ] ; 9 uses
  %.2 = phi i32 [ %i.gp, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ], [ %.1, %bb.h ]
  %.pre56.i.i.i150.i = phi ptr [ %.pre56.i.i.i155.i, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ], [ %.pre56.i.i.i.i, %bb.h ]
  %.pre.i.i.i142.i = phi ptr [ %.pre.i.i.i145.i, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ], [ %.pre.i.i.i.i, %bb.h ]
  %.4.i = phi i32 [ %i.gp, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ], [ %.0107.i, %bb.h ] ; 3 uses
  %i.ev = phi ptr [ %i.go, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ], [ %.pre.i.i.i.i, %bb.h ] ; 7 uses
  %.020.i.i.i.i.i = phi i64 [ %i.gq, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ], [ %indvars.iv50.i.i.i.i, %bb.h ] ; 4 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %.020.i.i.i.i.i
  store i32 %.4.i, ptr %i.ew, align 4, !tbaa !61, !noalias !677
  %i.ex = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ex, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.ey = getelementptr inbounds i8, ptr %i.ev, i64 -12
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !212, !noalias !677
  %i.fa = getelementptr inbounds i8, ptr %i.ev, i64 -4 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !98, !noalias !677 ; 3 uses
  %i.fc = add nsw i32 %i.fb, %i.ez
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp eq i64 %.020.i.i.i.i.i, %i.fd
  br i1 %i.fe, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ff = getelementptr inbounds i8, ptr %i.ev, i64 -8
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !96, !noalias !677
  %i.fh = add nsw i32 %i.fg, %i.fb
  %i.fi = icmp eq i32 %i.fh, %.4.i
  br i1 %i.fi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fj = add nsw i32 %i.fb, 1
  store i32 %i.fj, ptr %i.fa, align 4, !tbaa !98, !noalias !677
  br label %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i"

bb.l:                                             ; preds = %bb.j, %bb.i, %.preheader
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ev, %i.et
  br i1 %.not.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ev, i8 0, i64 12, i1 false), !noalias !677
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 12 ; 2 uses
  store ptr %i.fk, ptr %i.ed, align 8, !tbaa !149, !alias.scope !677
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.fl = ptrtoint ptr %i.et to i64
  %i.fm = ptrtoint ptr %i.eu to i64
  %i.fn = sub i64 %i.fl, %i.fm                    ; 6 uses
  %i.fo = icmp eq i64 %i.fn, 9223372036854775800
  br i1 %i.fo, label %bb.o, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #33
          to label %.noexc68.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !677

.noexc68.i:                                       ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.fp = sdiv exact i64 %i.fn, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fp, i64 1)
  %i.fq = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, %i.fp ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fp
  %i.fs = tail call i64 @llvm.umin.i64(i64 %i.fq, i64 768614336404564650)
  %i.ft = select i1 %i.fr, i64 768614336404564650, i64 %i.fs ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ft, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i)
  %i.fu = mul nuw nsw i64 %i.ft, 12
  %i.fv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #36
          to label %.noexc69.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !677 ; 6 uses

.noexc69.i:                                       ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %i.fn ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fw, i8 0, i64 12, i1 false), !noalias !677
  %i.fx = icmp sgt i64 %i.fn, 0
  br i1 %i.fx, label %bb.p, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %.noexc69.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fv, ptr align 4 %i.eu, i64 %i.fn, i1 false), !noalias !677
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i.i: ; preds = %bb.p, %.noexc69.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 12 ; 2 uses
  %.not.i16.i.i.i.i.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i16.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.fn) #34, !noalias !677
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i.i
  store ptr %i.fv, ptr %0, align 8, !tbaa !147, !alias.scope !677
  store ptr %i.fy, ptr %i.ed, align 8, !tbaa !149, !alias.scope !677
  %i.fz = getelementptr inbounds nuw [12 x i8], ptr %i.fv, i64 %i.ft ; 3 uses
  store ptr %i.fz, ptr %i.ee, align 8, !tbaa !150, !alias.scope !677
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i, %bb.m
  %i.ga = phi ptr [ %i.fz, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i ], [ %i.eq, %bb.m ]
  %i.gb = phi ptr [ %i.fv, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i ], [ %i.er, %bb.m ]
  %i.gc = phi ptr [ %i.fz, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i ], [ %i.et, %bb.m ]
  %i.gd = phi ptr [ %i.fv, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i ], [ %i.eu, %bb.m ]
  %i.ge = phi ptr [ %i.fy, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i ], [ %i.fk, %bb.m ] ; 4 uses
  %i.gf = phi ptr [ %i.fw, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i ], [ %i.es, %bb.m ] ; 3 uses
  %i.gg = trunc i64 %.020.i.i.i.i.i to i32
  store i32 %i.gg, ptr %i.gf, align 4, !tbaa !212, !noalias !677
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store i32 %.4.i, ptr %i.gh, align 4, !tbaa !96, !noalias !677
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i32 1, ptr %i.gi, align 4, !tbaa !98, !noalias !677
  br label %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i": ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i, %bb.k
  %i.gj = phi ptr [ %i.ga, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i ], [ %i.eq, %bb.k ] ; 2 uses
  %i.gk = phi ptr [ %i.gb, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i ], [ %i.er, %bb.k ] ; 2 uses
  %i.gl = phi ptr [ %i.ge, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i ], [ %i.es, %bb.k ] ; 2 uses
  %i.gm = phi ptr [ %i.gc, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i ], [ %i.et, %bb.k ] ; 2 uses
  %i.gn = phi ptr [ %i.gd, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i ], [ %i.eu, %bb.k ] ; 2 uses
  %.pre56.i.i.i155.i = phi ptr [ %i.ge, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i ], [ %.pre56.i.i.i150.i, %bb.k ] ; 2 uses
  %.pre.i.i.i145.i = phi ptr [ %i.ge, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i ], [ %.pre.i.i.i142.i, %bb.k ] ; 2 uses
  %i.go = phi ptr [ %i.ge, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i.i ], [ %i.ev, %bb.k ]
  %i.gp = add nsw i32 %.2, 1                      ; 4 uses
  %i.gq = add nuw nsw i64 %.020.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.gq, %indvars.iv.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i", label %.preheader, !llvm.loop !681

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i"
  %i.gr = phi ptr [ %i.ii, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %i.ei, %bb.h ] ; 6 uses
  %i.gs = phi ptr [ %i.ij, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %i.ej, %bb.h ] ; 9 uses
  %i.gt = phi ptr [ %i.ik, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %i.ek, %bb.h ] ; 3 uses
  %i.gu = phi ptr [ %i.il, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %i.el, %bb.h ]
  %.3 = phi i32 [ %i.in, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %.1, %bb.h ]
  %.pre56.i.i.i152.i = phi ptr [ %.pre56.i.i.i151.i, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %.pre56.i.i.i.i, %bb.h ]
  %.5.i = phi i32 [ %i.in, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %.0107.i, %bb.h ] ; 3 uses
  %i.gv = phi ptr [ %i.im, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %.pre56.i.i.i.i, %bb.h ] ; 7 uses
  %.01519.i.i.i.i.i = phi i64 [ %i.ip, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %i.ep, %bb.h ] ; 3 uses
  %i.gw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %i.gx = or disjoint i64 %i.gw, %indvars.iv50.i.i.i.i ; 2 uses
  %i.gy = trunc i64 %i.gx to i32                  ; 2 uses
  %5 = and i64 %i.gx, 4294967295
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %5
  store i32 %.5.i, ptr %i.gz, align 4, !tbaa !61, !noalias !677
  %i.ha = icmp eq ptr %i.gs, %i.gv
  br i1 %i.ha, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.hb = getelementptr inbounds i8, ptr %i.gv, i64 -12
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !212, !noalias !677
  %i.hd = getelementptr inbounds i8, ptr %i.gv, i64 -4 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !98, !noalias !677 ; 3 uses
  %i.hf = add nsw i32 %i.he, %i.hc
  %i.hg = icmp eq i32 %i.hf, %i.gy
  br i1 %i.hg, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.hh = getelementptr inbounds i8, ptr %i.gv, i64 -8
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !96, !noalias !677
  %i.hj = add nsw i32 %i.hi, %i.he
  %i.hk = icmp eq i32 %i.hj, %.5.i
  br i1 %i.hk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hl = add nsw i32 %i.he, 1
  store i32 %i.hl, ptr %i.hd, align 4, !tbaa !98, !noalias !677
  br label %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i"

bb.u:                                             ; preds = %bb.s, %bb.r, %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gv, %i.gr
  br i1 %.not.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gv, i8 0, i64 12, i1 false), !noalias !677
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gt, i64 12 ; 2 uses
  store ptr %i.hm, ptr %i.ed, align 8, !tbaa !149, !alias.scope !677
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.hn = ptrtoint ptr %i.gr to i64
  %i.ho = ptrtoint ptr %i.gs to i64
  %i.hp = sub i64 %i.hn, %i.ho                    ; 6 uses
  %i.hq = icmp eq i64 %i.hp, 9223372036854775800
  br i1 %i.hq, label %bb.x, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #33
          to label %.noexc70.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !677

.noexc70.i:                                       ; preds = %bb.x
  unreachable

_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.hr = sdiv exact i64 %i.hp, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.hr, i64 1)
  %i.hs = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.hr ; 2 uses
  %i.ht = icmp ult i64 %i.hs, %i.hr
  %i.hu = tail call i64 @llvm.umin.i64(i64 %i.hs, i64 768614336404564650)
  %i.hv = select i1 %i.ht, i64 768614336404564650, i64 %i.hu ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.hv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.hw = mul nuw nsw i64 %i.hv, 12
  %i.hx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hw) #36
          to label %.noexc71.i unwind label %.thread.loopexit.split-lp.loopexit.i, !noalias !677 ; 5 uses

.noexc71.i:                                       ; preds = %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 %i.hp ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hy, i8 0, i64 12, i1 false), !noalias !677
  %i.hz = icmp sgt i64 %i.hp, 0
  br i1 %i.hz, label %bb.y, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i

bb.y:                                             ; preds = %.noexc71.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hx, ptr align 4 %i.gs, i64 %i.hp, i1 false), !noalias !677
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i: ; preds = %bb.y, %.noexc71.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 12 ; 2 uses
  %.not.i16.i.i.i.i.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i16.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.hp) #34, !noalias !677
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.z, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit15.i.i.i.i.i.i.i
  store ptr %i.hx, ptr %0, align 8, !tbaa !147, !alias.scope !677
  store ptr %i.ia, ptr %i.ed, align 8, !tbaa !149, !alias.scope !677
  %i.ib = getelementptr inbounds nuw [12 x i8], ptr %i.hx, i64 %i.hv ; 2 uses
  store ptr %i.ib, ptr %i.ee, align 8, !tbaa !150, !alias.scope !677
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i, %bb.v
  %i.ic = phi ptr [ %i.ib, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.gr, %bb.v ] ; 2 uses
  %i.id = phi ptr [ %i.hx, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.gs, %bb.v ]
  %i.ie = phi ptr [ %i.ia, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.hm, %bb.v ] ; 3 uses
  %i.if = phi ptr [ %i.hy, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.gt, %bb.v ] ; 3 uses
  store i32 %i.gy, ptr %i.if, align 4, !tbaa !212, !noalias !677
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  store i32 %.5.i, ptr %i.ig, align 4, !tbaa !96, !noalias !677
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store i32 1, ptr %i.ih, align 4, !tbaa !98, !noalias !677
  br label %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i": ; preds = %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i, %bb.t
  %i.ii = phi ptr [ %i.gr, %bb.t ], [ %i.ic, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.ij = phi ptr [ %i.gs, %bb.t ], [ %i.id, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i ] ; 3 uses
  %i.ik = phi ptr [ %i.gt, %bb.t ], [ %i.ie, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.il = phi ptr [ %i.gu, %bb.t ], [ %i.ic, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre56.i.i.i151.i = phi ptr [ %.pre56.i.i.i152.i, %bb.t ], [ %i.ie, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.im = phi ptr [ %i.gv, %bb.t ], [ %i.ie, %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.in = add nsw i32 %.3, 1                      ; 4 uses
  %i.io = add i64 %.01519.i.i.i.i.i, -1
  %i.ip = and i64 %i.io, %.01519.i.i.i.i.i        ; 2 uses
  %.not.i39.i.i.i.i = icmp eq i64 %i.ip, 0
  br i1 %.not.i39.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i, !llvm.loop !682

"_ZZN8facebook5velox4bits10forEachBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiibSM_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i", %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i", %bb.h
  %i.iq = phi ptr [ %i.ei, %bb.h ], [ %i.ii, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %i.gj, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ] ; 2 uses
  %i.ir = phi ptr [ %i.ej, %bb.h ], [ %i.ij, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %i.gk, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ] ; 2 uses
  %i.is = phi ptr [ %i.ek, %bb.h ], [ %i.ik, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %i.gl, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ]
  %i.it = phi ptr [ %i.el, %bb.h ], [ %i.il, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %i.gm, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ]
  %i.iu = phi ptr [ %i.em, %bb.h ], [ %i.ij, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %i.gn, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ]
  %.4 = phi i32 [ %.1, %bb.h ], [ %i.in, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %i.gp, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ] ; 2 uses
  %.pre56.i.i.i154.i = phi ptr [ %.pre56.i.i.i.i, %bb.h ], [ %.pre56.i.i.i151.i, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %.pre56.i.i.i155.i, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ] ; 2 uses
  %.pre.i.i.i144.i = phi ptr [ %.pre.i.i.i.i, %bb.h ], [ %i.im, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %.pre.i.i.i145.i, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ]
  %.1.i = phi i32 [ %.0107.i, %bb.h ], [ %i.in, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i.i" ], [ %i.gp, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clImEEDaSK_.exit.i.i.i.i.i" ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 64
  %.not32.not.i.i.i.i = icmp samesign ult i64 %indvars.iv.i.i.i.i, %i.ef
  %indvars.iv.next51.i.i.i.i = add nuw nsw i64 %indvars.iv50.i.i.i.i, 64
  br i1 %.not32.not.i.i.i.i, label %bb.h, label %._crit_edge.i.i.i.i, !llvm.loop !683

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %i.iv = lshr i32 %i.ea, 6
  %i.iw = and i32 %i.ea, 63
  %i.ix = zext nneg i32 %i.iw to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ix
  %i.iy = xor i64 %notmask.i40.i.i.i.i, -1
  %i.iz = zext nneg i32 %i.iv to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.sroa.089.0.i, i64 %i.iz
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !175, !noalias !677
  %i.jc = and i64 %i.jb, %i.iy                    ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.jc, 0
  br i1 %.not.i41.i.i.i.i, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_12_GLOBAL__N_116toBaseRangesImplIZNS3_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorISB_SaISB_EES7_SG_SH_OT_EUlSM_E_EEvPKmiiSM_.exit.i", label %.preheader.i42.i.preheader.i.i.i

.preheader.i42.i.preheader.i.i.i:                 ; preds = %bb.aa
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.preheader.i42.i.i.i.i

.preheader.i42.i.i.i.i:                           ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i", %.preheader.i42.i.preheader.i.i.i
  %i.jf = phi ptr [ %i.eg, %.preheader.i42.i.preheader.i.i.i ], [ %i.kv, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i" ] ; 6 uses
  %i.jg = phi ptr [ %i.eh, %.preheader.i42.i.preheader.i.i.i ], [ %i.kw, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i" ] ; 9 uses
  %.5 = phi i32 [ %.0, %.preheader.i42.i.preheader.i.i.i ], [ %i.ky, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i" ]
  %.3.i = phi i32 [ %.2.i, %.preheader.i42.i.preheader.i.i.i ], [ %i.ky, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i" ] ; 3 uses
  %i.jh = phi ptr [ %.pre21.i.i.i, %.preheader.i42.i.preheader.i.i.i ], [ %i.kx, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i" ] ; 9 uses
  %.011.i43.i.i.i.i = phi i64 [ %i.jc, %.preheader.i42.i.preheader.i.i.i ], [ %i.la, %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i" ] ; 3 uses
  %i.ji = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i43.i.i.i.i, i1 true)
  %i.jj = trunc nuw nsw i64 %i.ji to i32
  %i.jk = or disjoint i32 %i.ec, %i.jj            ; 3 uses
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.jl
  store i32 %.3.i, ptr %i.jm, align 4, !tbaa !61, !noalias !677
  %i.jn = icmp eq ptr %i.jg, %i.jh
  br i1 %i.jn, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i42.i.i.i.i
  %i.jo = getelementptr inbounds i8, ptr %i.jh, i64 -12
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !212, !noalias !677
  %i.jq = getelementptr inbounds i8, ptr %i.jh, i64 -4 ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !98, !noalias !677 ; 3 uses
  %i.js = add nsw i32 %i.jr, %i.jp
  %i.jt = icmp eq i32 %i.js, %i.jk
  br i1 %i.jt, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ju = getelementptr inbounds i8, ptr %i.jh, i64 -8
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !96, !noalias !677
  %i.jw = add nsw i32 %i.jv, %i.jr
  %i.jx = icmp eq i32 %i.jw, %.3.i
  br i1 %i.jx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jy = add nsw i32 %i.jr, 1
  store i32 %i.jy, ptr %i.jq, align 4, !tbaa !98, !noalias !677
  br label %"_ZZN8facebook5velox12_GLOBAL__N_116toBaseRangesImplIZNS1_12toBaseRangesERKNS0_13DecodedVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEiPiE3$_0EESt6vectorIS9_SaIS9_EES5_SE_SF_OT_ENKUlSK_E_clIiEEDaSK_.exit.i.i.i"

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %.preheader.i42.i.i.i.i
  %.not.i.i.i.i67.i = icmp eq ptr %i.jh, %i.jf
  br i1 %.not.i.i.i.i67.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jh, i8 0, i64 12, i1 false), !noalias !677
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jh, i64 12 ; 2 uses
  store ptr %i.jz, ptr %i.jd, align 8, !tbaa !149, !alias.scope !677
  br label %_ZNSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ka = ptrtoint ptr %i.jf to i64
  %i.kb = ptrtoint ptr %i.jg to i64
  %i.kc = sub i64 %i.ka, %i.kb                    ; 6 uses
  %i.kd = icmp eq i64 %i.kc, 9223372036854775800
  br i1 %i.kd, label %bb.ah, label %_ZNKSt6vectorIN8facebook5velox10BaseVector9CopyRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

end_hunk_2
