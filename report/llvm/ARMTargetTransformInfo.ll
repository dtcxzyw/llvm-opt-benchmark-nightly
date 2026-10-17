Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMTargetTransformInfo?download=true
inline.NumInlined: 8503
inline.NumDeleted: 3567
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNK4llvm10ARMTTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionE:bb.a
  %i.ai = icmp ult i64 %i.ah, -2305843009213693952
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp sgt i64 %.sroa.019.0.i, 0
  %spec.select28.i = select i1 %i.aj, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ak = shl nsw i64 %.sroa.019.0.i, 1
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

_ZN4llvm15InstructionCostmLEl.exit.i:             ; preds = %bb.j, %bb.i, %bb.g
  %.sroa.019.1.i = phi i64 [ %.sroa.019.0.i, %bb.g ], [ %i.ak, %bb.j ], [ %spec.select28.i, %bb.i ] ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.ad, align 8, !tbaa !309, !noalias !685 ; 2 uses
  %.sroa.24.0.copyload.i = load ptr, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !286, !noalias !685 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.sroa.025.0.i, %.sroa.0.0.copyload.i
  %i.al = icmp eq ptr %.sroa.1027.0.i, %.sroa.24.0.copyload.i
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.al, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm15InstructionCostmLEl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21, !noalias !685
  br label %bb.f, !llvm.loop !2

_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit.loopexit: ; preds = %bb.f
  br label %_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit

_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit: ; preds = %_ZN4llvm15InstructionCostmLEl.exit.i, %bb.f, %_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit.loopexit
  %.sroa.019.1.lcssa.sink.i = phi i64 [ 0, %bb.f ], [ %.sroa.019.1.i, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ %.sroa.019.0.i, %_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit.loopexit ] ; 2 uses
  %.sink.i = phi i32 [ 1, %bb.f ], [ 0, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ 0, %_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21, !noalias !685
  %.0.i1.i.i = call i64 @llvm.sadd.sat.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 4)
  %i.am = load i32, ptr %i.n, align 8
  %i.an = icmp eq i32 %i.am, 268
  br i1 %i.an, label %bb.l, label %.critedge173

bb.l:                                             ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  %.0.i1.i.i175 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 8)
  br label %.critedge173

bb.m:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.ao = icmp eq i32 %1, 56
  %i.ap = add i32 %1, -55
  %or.cond5 = icmp ult i32 %i.ap, 2               ; 2 uses
  %i.aq = icmp ne ptr %8, null
  %or.cond7 = and i1 %or.cond5, %i.aq
  br i1 %or.cond7, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !280 ; 3 uses
  %.not.i176 = icmp eq ptr %i.as, null
  br i1 %.not.i176, label %.thread, label %_ZNK4llvm5Value9hasOneUseEv.exit

_ZNK4llvm5Value9hasOneUseEv.exit:                 ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !281
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.o, label %.thread

bb.o:                                             ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !282
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o
  %.0152 = phi ptr [ %i.ax, %bb.o ], [ %8, %bb.m ] ; 2 uses
  %.not = icmp eq ptr %.0152, null
  br i1 %.not, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.n, %_ZNK4llvm5Value9hasOneUseEv.exit, %bb.p
  %.0152351 = phi ptr [ %.0152, %bb.p ], [ %8, %_ZNK4llvm5Value9hasOneUseEv.exit ], [ %8, %bb.n ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = and i32 %i.az, 254
  %spec.select.i177 = icmp eq i32 %i.ba, 18
  br i1 %spec.select.i177, label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit, label %.critedge

_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit:        ; preds = %.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !330
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !286
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8 ; 3 uses
  %i.be = and i32 %.pre.i, 255
  %i.bf = icmp eq i32 %i.be, 12
  br i1 %i.bf, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i:           ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit
  %trunc.i.i.i = trunc i32 %.pre.i to i8
  switch i8 %trunc.i.i.i, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit [
    i8 3, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
    i8 2, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
    i8 0, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
    i8 1, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
    i8 5, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
  ]

_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit:          ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i
  %i.bg = and i32 %.pre.i, 253
  %spec.select.i.i = icmp eq i32 %i.bg, 4
  br i1 %spec.select.i.i, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread, label %.critedge

_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread:   ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit, %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.bh = call { i64, i8 } @_ZN4llvm18matchSelectPatternEPNS_5ValueERS1_S2_PNS_11Instruction7CastOpsEj(ptr noundef nonnull %.0152351, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef null, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.fca.0.extract82 = extractvalue { i64, i8 } %i.bh, 0
  %.sroa.086.0.extract.trunc = trunc i64 %.fca.0.extract82 to i32
  %switch.tableidx = add i32 %.sroa.086.0.extract.trunc, -1 ; 2 uses
  %i.bi = icmp ult i32 %switch.tableidx, 7
  br i1 %i.bi, label %switch.lookup, label %.critedge

switch.lookup:                                    ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
  %.not163 = icmp eq ptr %.0152351, %8
  br i1 %.not163, label %bb.q, label %.critedge173

bb.q:                                             ; preds = %switch.lookup
  %i.bj = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm10ARMTTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionE, i64 %i.bj
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %2, ptr %i.c, align 8, !tbaa !286
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.bk, align 8, !tbaa !286
  store i64 0, ptr %13, align 8
  %.sroa.277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 1, ptr %.sroa.277.0..sroa_idx, align 8
  call void @_ZN4llvm23IntrinsicCostAttributesC1EjPNS_4TypeENS_8ArrayRefIS2_EENS_13FastMathFlagsEPKNS_13IntrinsicInstENS_15InstructionCostE(ptr noundef nonnull align 8 dereferenceable(144) %12, i32 noundef %switch.ext, ptr noundef nonnull %2, ptr nonnull %i.c, i64 2, i32 0, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::InstructionCost") align 8 %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.bl = call { i64, i32 } @_ZNK4llvm10ARMTTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(144) %12, i32 noundef %5) ; 2 uses
  %.fca.0.extract70 = extractvalue { i64, i32 } %i.bl, 0
  %.fca.1.extract71 = extractvalue { i64, i32 } %i.bl, 1
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZN4llvm11SmallVectorIPKNS_5ValueELj4EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef %i.bn) #21
  br label %_ZN4llvm11SmallVectorIPKNS_5ValueELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorIPKNS_5ValueELj4EED2Ev.exit.i: ; preds = %bb.r, %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZN4llvm23IntrinsicCostAttributesD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIPKNS_5ValueELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.br) #21
  br label %_ZN4llvm23IntrinsicCostAttributesD2Ev.exit

_ZN4llvm23IntrinsicCostAttributesD2Ev.exit:       ; preds = %_ZN4llvm11SmallVectorIPKNS_5ValueELj4EED2Ev.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.critedge173

.critedge:                                        ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit, %.thread, %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !40 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 398
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !304, !range !28, !noundef !29
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %.critedge
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = and i32 %i.ca, 254
  %spec.select.i182 = icmp eq i32 %i.cb, 18
  %i.cc = icmp ne ptr %3, null
  %i.cd = and i1 %i.cc, %spec.select.i182
  %or.cond11 = and i1 %i.h, %i.cd
  br i1 %or.cond11, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !305
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !306, !nonnull !29, !align !253
  %i.ch = call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.ce, ptr noundef nonnull align 8 dereferenceable(912) %i.cg, ptr noundef nonnull %3, i1 noundef zeroext false)
  %i.ci = extractvalue { i16, ptr } %i.ch, 0      ; 4 uses
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !305
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !306, !nonnull !29, !align !253
  %i.cl = call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.cj, ptr noundef nonnull align 8 dereferenceable(912) %i.ck, ptr noundef nonnull %2, i1 noundef zeroext false)
  %i.cm = extractvalue { i16, ptr } %i.cl, 0      ; 4 uses
  %i.cn = icmp ne i16 %i.ci, 0
  %i.co = icmp ne i16 %i.cm, 0
  %or.cond366 = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond366, label %bb.v, label %.critedge167

bb.v:                                             ; preds = %bb.u
  %i.cp = icmp eq i16 %i.cm, 96
  %i.cq = icmp eq i16 %i.ci, 22
  %or.cond8.i = select i1 %i.cp, i1 %i.cq, i1 false
  br i1 %or.cond8.i, label %_ZSt9__find_ifIPKN4llvm27TypeConversionCostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_22ConvertCostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTESF_EUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.thread.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm22ConvertCostTableLookupItEEPKNS2_27TypeConversionCostTblEntryTIT_EENS2_8ArrayRefIS6_EEiNS2_3MVTESB_EUlRKNS4_ItEEE_EclIPSD_EEbS5_.exit33.thread.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm22ConvertCostTableLookupItEEPKNS2_27TypeConversionCostTblEntryTIT_EENS2_8ArrayRefIS6_EEiNS2_3MVTESB_EUlRKNS4_ItEEE_EclIPSD_EEbS5_.exit33.thread.i.i: ; preds = %bb.v
  %i.cr = icmp eq i16 %i.cm, 97
  %i.cs = icmp eq i16 %i.ci, 26
  %or.cond14.i = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %or.cond14.i, label %_ZSt9__find_ifIPKN4llvm27TypeConversionCostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_22ConvertCostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTESF_EUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.thread.i, label %_ZSt9__find_ifIPKN4llvm27TypeConversionCostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_22ConvertCostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTESF_EUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.i

_ZSt9__find_ifIPKN4llvm27TypeConversionCostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_22ConvertCostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTESF_EUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm22ConvertCostTableLookupItEEPKNS2_27TypeConversionCostTblEntryTIT_EENS2_8ArrayRefIS6_EEiNS2_3MVTESB_EUlRKNS4_ItEEE_EclIPSD_EEbS5_.exit33.thread.i.i, %bb.v
  %.028.i.idx.ph.i = phi i64 [ 0, %bb.v ], [ 8, %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm22ConvertCostTableLookupItEEPKNS2_27TypeConversionCostTblEntryTIT_EENS2_8ArrayRefIS6_EEiNS2_3MVTESB_EUlRKNS4_ItEEE_EclIPSD_EEbS5_.exit33.thread.i.i ]
  %.028.i.ptr29.i = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm10ARMTTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionEE19NEONVectorSelectTbl, i64 %.028.i.idx.ph.i
  br label %_ZSt9__find_ifIPKN4llvm27TypeConversionCostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_22ConvertCostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTESF_EUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.thread.i.a

_ZSt9__find_ifIPKN4llvm27TypeConversionCostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_22ConvertCostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTESF_EUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm22ConvertCostTableLookupItEEPKNS2_27TypeConversionCostTblEntryTIT_EENS2_8ArrayRefIS6_EEiNS2_3MVTESB_EUlRKNS4_ItEEE_EclIPSD_EEbS5_.exit33.thread.i.i
  %i.ct = icmp ne i16 %i.cm, 98
  %i.cu = icmp ne i16 %i.ci, 27
  %or.cond22.not.i = select i1 %i.ct, i1 true, i1 %i.cu
  %cond.fr.i = freeze i1 %or.cond22.not.i
  br i1 %cond.fr.i, label %.critedge167, label %_ZSt9__find_ifIPKN4llvm27TypeConversionCostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_22ConvertCostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTESF_EUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.thread.i.a

_ZSt9__find_ifIPKN4llvm27TypeConversionCostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_22ConvertCostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTESF_EUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.thread.i.a: ; preds = %_ZSt9__find_ifIPKN4llvm27TypeConversionCostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_22ConvertCostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTESF_EUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.thread.i, %_ZSt9__find_ifIPKN4llvm27TypeConversionCostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_22ConvertCostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTESF_EUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.i
  %.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm10ARMTTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionEE19NEONVectorSelectTbl, i64 16), %_ZSt9__find_ifIPKN4llvm27TypeConversionCostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_22ConvertCostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTESF_EUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.i ], [ %.028.i.ptr29.i, %_ZSt9__find_ifIPKN4llvm27TypeConversionCostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_22ConvertCostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTESF_EUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.thread.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.ph, i64 6
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !314
  %i.cx = zext i16 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 2
  br label %.critedge173

.critedge167:                                     ; preds = %_ZSt9__find_ifIPKN4llvm27TypeConversionCostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_22ConvertCostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTESF_EUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.i, %bb.u
  %i.cz = load ptr, ptr %2, align 8, !tbaa !262, !noalias !686, !nonnull !29, !align !253
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !305, !noalias !686
  %i.db = load ptr, ptr %i.cf, align 8, !tbaa !306, !noalias !686, !nonnull !29, !align !253
  %i.dc = call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.da, ptr noundef nonnull align 8 dereferenceable(912) %i.db, ptr noundef nonnull %2, i1 noundef zeroext false), !noalias !686 ; 2 uses
  %i.dd = extractvalue { i16, ptr } %i.dc, 0
  %i.de = extractvalue { i16, ptr } %i.dc, 1
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.24.0..sroa_idx.i187 = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %.critedge167
  %.sroa.019.0.i188 = phi i64 [ 4, %.critedge167 ], [ %.sroa.019.1.i199, %bb.ab ] ; 5 uses
  %.sroa.025.0.i189 = phi i16 [ %i.dd, %.critedge167 ], [ %.sroa.0.0.copyload.i200, %bb.ab ] ; 2 uses
  %.sroa.1027.0.i190 = phi ptr [ %i.de, %.critedge167 ], [ %.sroa.24.0.copyload.i201, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21, !noalias !686
  %i.dg = load ptr, ptr %i.d, align 8, !tbaa !305, !noalias !686
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.564") align 8 %10, ptr noundef nonnull align 8 dereferenceable(518435) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i16 %.sroa.025.0.i189, ptr %.sroa.1027.0.i190) #21, !noalias !686
  %i.dh = load i8, ptr %10, align 8, !tbaa !329, !noalias !686 ; 2 uses
  switch i8 %i.dh, label %bb.x [
    i8 9, label %_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit205
    i8 0, label %_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit205.loopexit
  ]

bb.x:                                             ; preds = %bb.w
  %i.di = and i8 %i.dh, -5
  %or.cond.i197 = icmp eq i8 %i.di, 2
  br i1 %or.cond.i197, label %bb.y, label %_ZN4llvm15InstructionCostmLEl.exit.i198

bb.y:                                             ; preds = %bb.x
  %i.dj = add i64 %.sroa.019.0.i188, -1152921504606846976
  %i.dk = icmp ult i64 %i.dj, -2305843009213693952
  br i1 %i.dk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dl = icmp sgt i64 %.sroa.019.0.i188, 0
  %spec.select28.i204 = select i1 %i.dl, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvm15InstructionCostmLEl.exit.i198

bb.aa:                                            ; preds = %bb.y
  %i.dm = shl nsw i64 %.sroa.019.0.i188, 1
  br label %_ZN4llvm15InstructionCostmLEl.exit.i198

_ZN4llvm15InstructionCostmLEl.exit.i198:          ; preds = %bb.aa, %bb.z, %bb.x
  %.sroa.019.1.i199 = phi i64 [ %.sroa.019.0.i188, %bb.x ], [ %i.dm, %bb.aa ], [ %spec.select28.i204, %bb.z ] ; 2 uses
  %.sroa.0.0.copyload.i200 = load i16, ptr %i.df, align 8, !tbaa !309, !noalias !686 ; 2 uses
  %.sroa.24.0.copyload.i201 = load ptr, ptr %.sroa.24.0..sroa_idx.i187, align 8, !tbaa !286, !noalias !686 ; 2 uses
  %.not.i.i.i202 = icmp eq i16 %.sroa.025.0.i189, %.sroa.0.0.copyload.i200
  %i.dn = icmp eq ptr %.sroa.1027.0.i190, %.sroa.24.0.copyload.i201
  %.not4.i.i203 = select i1 %.not.i.i.i202, i1 %i.dn, i1 false
  br i1 %.not4.i.i203, label %_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit205, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm15InstructionCostmLEl.exit.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21, !noalias !686
  br label %bb.w, !llvm.loop !2

_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit205.loopexit: ; preds = %bb.w
  br label %_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit205

_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit205: ; preds = %_ZN4llvm15InstructionCostmLEl.exit.i198, %bb.w, %_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit205.loopexit
  %.sroa.019.1.lcssa.sink.i191 = phi i64 [ 0, %bb.w ], [ %.sroa.019.1.i199, %_ZN4llvm15InstructionCostmLEl.exit.i198 ], [ %.sroa.019.0.i188, %_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit205.loopexit ]
  %.sink.i192 = phi i32 [ 1, %bb.w ], [ 0, %_ZN4llvm15InstructionCostmLEl.exit.i198 ], [ 0, %_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit205.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21, !noalias !686
  br label %.critedge173

bb.ac:                                            ; preds = %bb.t, %.critedge
  %i.do = getelementptr inbounds nuw i8, ptr %i.bv, i64 395
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !165, !range !28, !noundef !29
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.ad, label %bb.bc

bb.ad:                                            ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = and i32 %i.ds, 254
  %spec.select.i206 = icmp eq i32 %i.dt, 18
  %brmerge.not = and i1 %or.cond5, %spec.select.i206
  br i1 %brmerge.not, label %bb.ae, label %bb.bc

bb.ae:                                            ; preds = %bb.ad
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !267
  %i.dw = icmp ugt i32 %i.dv, 1
  br i1 %i.dw, label %bb.af, label %bb.bc

bb.af:                                            ; preds = %bb.ae
  %.not.i.i207 = icmp eq ptr %3, null
  br i1 %.not.i.i207, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dy = load i32, ptr %i.dx, align 8
  %i.dz = and i32 %i.dy, 255
  %i.ea = icmp eq i32 %i.dz, 18
  br i1 %i.ea, label %_ZN4llvm16dyn_cast_or_nullINS_15FixedVectorTypeENS_4TypeEEEDaPT0_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eb = load ptr, ptr %2, align 8, !tbaa !262, !nonnull !29, !align !253
  %i.ec = call noundef ptr @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.eb) #21
  %i.ed = load i32, ptr %i.du, align 8, !tbaa !267
  %i.ee = load i32, ptr %i.dr, align 8
  %i.ef = and i32 %i.ee, 255
  %i.eg = icmp eq i32 %i.ef, 19
  %.sroa.2.0.insert.shift.i.i.i = select i1 %i.eg, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.ed to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.eh = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.ec, i64 %.sroa.0.0.insert.insert.i.i.i) #21
  br label %_ZN4llvm16dyn_cast_or_nullINS_15FixedVectorTypeENS_4TypeEEEDaPT0_.exit

_ZN4llvm16dyn_cast_or_nullINS_15FixedVectorTypeENS_4TypeEEEDaPT0_.exit: ; preds = %bb.ah, %bb.ag
  %.0155 = phi ptr [ %3, %bb.ag ], [ %i.eh, %bb.ah ] ; 5 uses
  br i1 %i.ao, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %_ZN4llvm16dyn_cast_or_nullINS_15FixedVectorTypeENS_4TypeEEEDaPT0_.exit
  %i.ei = load ptr, ptr %i.bu, align 8, !tbaa !40
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 394
  %i.ek = load i8, ptr %i.ej, align 2, !tbaa !307, !range !28, !noundef !29
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.an, label %.critedge170

.critedge170:                                     ; preds = %bb.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.em = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %5, i1 noundef zeroext true, ptr noundef nonnull byval(%"class.llvm::ArrayRef.178") align 8 %14, i8 noundef zeroext 0) ; 2 uses
  %.fca.0.extract56 = extractvalue { i64, i32 } %i.em, 0
  %.fca.1.extract57 = extractvalue { i64, i32 } %i.em, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.en = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_10ARMTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0155, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %5, i1 noundef zeroext true, ptr noundef nonnull byval(%"class.llvm::ArrayRef.178") align 8 %15, i8 noundef zeroext 0) ; 2 uses
  %.fca.0.extract52 = extractvalue { i64, i32 } %i.en, 0
  %.fca.1.extract53 = extractvalue { i64, i32 } %i.en, 1
  %i.eo = icmp eq i32 %.fca.1.extract53, 1
  %.0.i.i211 = call i64 @llvm.sadd.sat.i64(i64 %.fca.0.extract56, i64 %.fca.0.extract52)
  %i.ep = load i32, ptr %i.du, align 8, !tbaa !267 ; 2 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = shl nuw nsw i64 %i.eq, 2
  %i.es = load i32, ptr %i.dr, align 8
  %i.et = and i32 %i.es, 254
  %spec.select.i.i213 = icmp eq i32 %i.et, 18
  br i1 %spec.select.i.i213, label %bb.aj, label %_ZNK4llvm4Type13getScalarTypeEv.exit

bb.aj:                                            ; preds = %.critedge170
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !330
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !286
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit

_ZNK4llvm4Type13getScalarTypeEv.exit:             ; preds = %.critedge170, %bb.aj
  %.0.i214 = phi ptr [ %i.ew, %bb.aj ], [ %2, %.critedge170 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.0155, i64 8
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = and i32 %i.ey, 254
  %spec.select.i.i215 = icmp eq i32 %i.ez, 18
  br i1 %spec.select.i.i215, label %bb.ak, label %_ZNK4llvm4Type13getScalarTypeEv.exit217

bb.ak:                                            ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %.0155, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !330
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !286
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit217

_ZNK4llvm4Type13getScalarTypeEv.exit217:          ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit, %bb.ak
  %.0.i216 = phi ptr [ %i.fc, %bb.ak ], [ %.0155, %_ZNK4llvm4Type13getScalarTypeEv.exit ]
  %i.fd = call { i64, i32 } @_ZNK4llvm10ARMTTIImpl18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_PKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 56, ptr noundef %.0.i214, ptr noundef %.0.i216, i32 noundef %4, i32 noundef %5, i64 %6, i64 %7, ptr noundef %8) ; 2 uses
  %.fca.0.extract42 = extractvalue { i64, i32 } %i.fd, 0 ; 2 uses
  %.fca.1.extract43 = extractvalue { i64, i32 } %i.fd, 1
  %i.fe = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.er, i64 %.fca.0.extract42) ; 2 uses
  %i.ff = extractvalue { i64, i1 } %i.fe, 1
  br i1 %i.ff, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit217
  %.not369 = icmp ne i32 %i.ep, 0
  %i.fg = icmp sgt i64 %.fca.0.extract42, 0
  %or.cond370 = select i1 %.not369, i1 %i.fg, i1 false
  %spec.select = select i1 %or.cond370, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit

bb.am:                                            ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit217
  %i.fh = extractvalue { i64, i1 } %i.fe, 0
  %i.fi = ashr exact i64 %i.fh, 2
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit

_ZN4llvmmlERKNS_15InstructionCostES2_.exit:       ; preds = %bb.al, %bb.am
  %.0.i.i221 = phi i64 [ %i.fi, %bb.am ], [ %spec.select, %bb.al ]
  %i.fj = icmp eq i32 %.fca.1.extract43, 1
  %i.fk = select i1 %i.fj, i1 true, i1 %i.eo
  %spec.select.i228 = select i1 %i.fk, i32 1, i32 %.fca.1.extract57
  %.0.i.i229 = call i64 @llvm.sadd.sat.i64(i64 %.0.i.i211, i64 %.0.i.i221)
  br label %.critedge173

bb.an:                                            ; preds = %bb.ai, %_ZN4llvm16dyn_cast_or_nullINS_15FixedVectorTypeENS_4TypeEEEDaPT0_.exit
  %i.fl = load ptr, ptr %2, align 8, !tbaa !262, !noalias !687, !nonnull !29, !align !253
  %i.fm = load ptr, ptr %i.d, align 8, !tbaa !305, !noalias !687
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !306, !noalias !687, !nonnull !29, !align !253
  %i.fp = call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.fm, ptr noundef nonnull align 8 dereferenceable(912) %i.fo, ptr noundef nonnull %2, i1 noundef zeroext false), !noalias !687 ; 2 uses
end_hunk_0
