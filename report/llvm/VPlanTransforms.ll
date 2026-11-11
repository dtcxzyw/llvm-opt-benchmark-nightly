Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VPlanTransforms?download=true
inline.NumInlined: 28623
inline.NumDeleted: 13159
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN4llvm15VPlanTransforms15simplifyRecipesERNS_5VPlanE:bb.a
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !157
  %i.afx = icmp eq ptr %i.afw, %.pre689.i
  %i.afy = zext i1 %i.afx to i64
  %i.afz = getelementptr inbounds nuw [8 x i8], ptr %i.afv, i64 %i.afy
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !157
  %.0.in.in.in.i272.i = getelementptr inbounds nuw i8, ptr %i.aga, i64 57
  %.0.in.in.i273.i = load i8, ptr %.0.in.in.in.i272.i, align 1
  %.0.in.in.i273.fr.i = freeze i8 %.0.in.in.i273.i
  %.0.in.i274.i = and i8 %.0.in.in.i273.fr.i, 2
  br label %.thread621.i

.thread621.i:                                     ; preds = %bb.gi, %bb.gh
  %i.agb = phi i8 [ 0, %bb.gh ], [ %.0.in.i274.i, %bb.gi ]
  %i.agc = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 80
  %i.agd = load ptr, ptr %i.k, align 8, !tbaa !157
  %i.age = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 64
  %.sroa.0.0.copyload.i276.i = load ptr, ptr %i.age, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #25
  store i16 257, ptr %i.gk, align 8
  %i.agf = call noundef ptr @_ZN4llvm9VPBuilder9createSubEPNS_7VPValueES2_NS_8DebugLocERKNS_5TwineENS_9VPIRFlags11WrapFlagsTyE(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef %.pre689.i, ptr noundef %i.agd, ptr %.sroa.0.0.copyload.i276.i, ptr noundef nonnull align 8 dereferenceable(34) %55, i8 %i.agb) ; 2 uses
  %i.agg = icmp eq ptr %i.agf, null
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agf, i64 96
  %spec.select15.i = select i1 %i.agg, ptr null, ptr %i.agh
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.agc, ptr noundef %spec.select15.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #25
  br label %bb.lb

bb.gj:                                            ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #25
  store <2 x i64> %i.ej, ptr %56, align 16, !tbaa !1329, !alias.scope !1330
  %i.agi = call noundef zeroext i1 @_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_10bind_apintEEELj18ELb1EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE(ptr noundef nonnull align 8 dereferenceable(16) %56, ptr noundef nonnull %i.ih)
  br i1 %i.agi, label %bb.gk, label %.thread628.sink.split.i

bb.gk:                                            ; preds = %bb.gj
  %i.agj = load ptr, ptr %i.m, align 8, !tbaa !398 ; 4 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 8
  %i.agl = load i32, ptr %i.agk, align 8, !tbaa !392
  %i.agm = icmp ult i32 %i.agl, 65
  br i1 %i.agm, label %bb.gl, label %.split.i

bb.gl:                                            ; preds = %bb.gk
  %i.agn = load i64, ptr %i.agj, align 8, !tbaa !155 ; 2 uses
  %.not.i.i.i280.i = icmp eq i64 %i.agn, 0
  br i1 %.not.i.i.i280.i, label %.thread628.sink.split.i, label %_ZNK4llvm5APInt10isPowerOf2Ev.exit.i

.split.i:                                         ; preds = %bb.gk
  %i.ago = call noundef zeroext i1 @_ZNK4llvm5APInt18isPowerOf2SlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.agj) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #25
  br i1 %i.ago, label %.thread626.i, label %.thread628.i

_ZNK4llvm5APInt10isPowerOf2Ev.exit.i:             ; preds = %bb.gl
  %i.agp = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.agn)
  %i.agq = icmp samesign ult i64 %i.agp, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #25
  br i1 %i.agq, label %.thread626.i, label %.thread628.i

.thread626.i:                                     ; preds = %_ZNK4llvm5APInt10isPowerOf2Ev.exit.i, %.split.i
  %i.agr = call noundef i32 @_ZNK4llvm5APInt13exactLogBase2Ev(ptr noundef nonnull align 8 dereferenceable(12) %i.agj) ; 2 uses
  %.0.in.in.i281.i = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 137
  %.0.in.i282.i = load i8, ptr %.0.in.in.i281.i, align 1 ; 2 uses
  %.0.in.i286.i = and i8 %.0.in.i282.i, 2
  %.0.i287.not.i = icmp eq i8 %.0.in.i286.i, 0
  %.pre683.i = load ptr, ptr %i.m, align 8, !tbaa !398
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre683.i, i64 8
  %.pre684.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !392
  %.fr646.i = freeze i32 %.pre684.i               ; 2 uses
  %i.ags = add i32 %.fr646.i, -1
  %.not647.i = icmp eq i32 %i.agr, %i.ags
  %i.agt = or i1 %.0.i287.not.i, %.not647.i
  %i.agu = select i1 %i.agt, i8 0, i8 2
  %i.agv = and i8 %.0.in.i282.i, 1
  %i.agw = or disjoint i8 %i.agu, %i.agv
  %i.agx = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #25
  %i.agy = load ptr, ptr %i.i, align 8, !tbaa !157
  store ptr %i.agy, ptr %i.n, align 8, !tbaa !157
  %i.agz = zext i32 %i.agr to i64
  %i.aha = call noundef ptr @_ZN4llvm5VPlan14getConstantIntEjmb(ptr noundef nonnull align 8 dereferenceable(816) %i.im, i32 noundef %.fr646.i, i64 noundef %i.agz, i1 noundef zeroext false)
  store ptr %i.aha, ptr %i.ek, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #25
  store i8 2, ptr %57, align 1, !tbaa !196
  store i16 0, ptr %i.el, align 1
  store i8 %i.agw, ptr %i.el, align 1, !tbaa !155
  %i.ahb = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 64
  %.sroa.0.0.copyload.i289.i = load ptr, ptr %i.ahb, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #25
  store i16 257, ptr %i.em, align 8
  %i.ahc = call noundef ptr @_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(16) %47, i32 noundef 26, ptr nonnull %i.n, i64 2, ptr noundef nonnull align 1 dereferenceable(3) %57, ptr %.sroa.0.0.copyload.i289.i, ptr noundef nonnull align 8 dereferenceable(34) %58) ; 2 uses
  %i.ahd = icmp eq ptr %i.ahc, null
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahc, i64 96
  %spec.select18.i = select i1 %i.ahd, ptr null, ptr %i.ahe
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.agx, ptr noundef %spec.select18.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  br label %bb.la

bb.gm:                                            ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #25
  br label %.sink.split758.i

.thread628.sink.split.i:                          ; preds = %bb.gl, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #25
  br label %.thread628.i

.thread628.i:                                     ; preds = %.thread628.sink.split.i, %_ZNK4llvm5APInt10isPowerOf2Ev.exit.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #25
  store <2 x i64> %i.ei, ptr %59, align 16, !tbaa !1329, !alias.scope !1331
  %i.ahf = call noundef zeroext i1 @_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_10bind_apintEEELj20ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE(ptr noundef nonnull align 8 dereferenceable(16) %59, ptr noundef nonnull %i.ih)
  br i1 %i.ahf, label %bb.gn, label %.sink.split758.i

bb.gn:                                            ; preds = %.thread628.i
  %i.ahg = load ptr, ptr %i.m, align 8, !tbaa !398 ; 4 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 8 ; 2 uses
  %i.ahi = load i32, ptr %i.ahh, align 8, !tbaa !392
  %i.ahj = icmp ult i32 %i.ahi, 65
  br i1 %i.ahj, label %bb.go, label %.split631.i

bb.go:                                            ; preds = %bb.gn
  %i.ahk = load i64, ptr %i.ahg, align 8, !tbaa !155 ; 2 uses
  %.not.i.i.i293.i = icmp eq i64 %i.ahk, 0
  br i1 %.not.i.i.i293.i, label %.sink.split758.i, label %_ZNK4llvm5APInt10isPowerOf2Ev.exit294.i

.split631.i:                                      ; preds = %bb.gn
  %i.ahl = call noundef zeroext i1 @_ZNK4llvm5APInt18isPowerOf2SlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.ahg) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #25
  br i1 %i.ahl, label %bb.gp, label %bb.gq

_ZNK4llvm5APInt10isPowerOf2Ev.exit294.i:          ; preds = %bb.go
  %i.ahm = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.ahk)
  %i.ahn = icmp samesign ult i64 %i.ahm, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #25
  br i1 %i.ahn, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %_ZNK4llvm5APInt10isPowerOf2Ev.exit294.i, %.split631.i
  %i.aho = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #25
  %i.ahp = load ptr, ptr %i.i, align 8, !tbaa !157
  store ptr %i.ahp, ptr %i.o, align 8, !tbaa !157
  %i.ahq = load i32, ptr %i.ahh, align 8, !tbaa !392
  %i.ahr = call noundef i32 @_ZNK4llvm5APInt13exactLogBase2Ev(ptr noundef nonnull align 8 dereferenceable(12) %i.ahg)
  %i.ahs = sext i32 %i.ahr to i64
  %i.aht = call noundef ptr @_ZN4llvm5VPlan14getConstantIntEjmb(ptr noundef nonnull align 8 dereferenceable(816) %i.im, i32 noundef %i.ahq, i64 noundef %i.ahs, i1 noundef zeroext false)
  store ptr %i.aht, ptr %i.en, align 8, !tbaa !157
  %i.ahu = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 136
  %i.ahv = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 64
  %.sroa.0.0.copyload.i296.i = load ptr, ptr %i.ahv, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #25
  store i16 257, ptr %i.eo, align 8
  %i.ahw = call noundef ptr @_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(16) %47, i32 noundef 27, ptr nonnull %i.o, i64 2, ptr noundef nonnull align 1 dereferenceable(3) %i.ahu, ptr %.sroa.0.0.copyload.i296.i, ptr noundef nonnull align 8 dereferenceable(34) %60) ; 2 uses
  %i.ahx = icmp eq ptr %i.ahw, null
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahw, i64 96
  %spec.select21.i = select i1 %i.ahx, ptr null, ptr %i.ahy
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.aho, ptr noundef %spec.select21.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #25
  br label %bb.la

.sink.split758.i:                                 ; preds = %bb.go, %.thread628.i, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #25
  br label %bb.gq

bb.gq:                                            ; preds = %.sink.split758.i, %_ZNK4llvm5APInt10isPowerOf2Ev.exit294.i, %.split631.i
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #25
  store i64 %i.ao, ptr %61, align 8, !alias.scope !1332
  store i64 %i.ao, ptr %i.ep, align 8, !alias.scope !1333
  %i.ahz = call noundef zeroext i1 @_ZN4llvm17VPlanPatternMatch5matchINS_19PatternMatchHelpers16match_combine_orIJNS0_12Recipe_matchISt5tupleIJNS2_10match_bindINS_7VPValueEEEEELj72ELb0EJNS_13VPInstructionEEEENS4_IS5_IJNS0_11int_pred_tyINS0_11is_all_onesELj0EEES8_EELj31ELb1EJNS_13VPWidenRecipeENS_17VPReplicateRecipeESA_EEEEEEEEbPNS_17VPSingleDefRecipeERKT_(ptr noundef nonnull %i.ih, ptr noundef nonnull align 8 dereferenceable(24) %61)
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #25
  br i1 %i.ahz, label %bb.gr, label %bb.hc

bb.gr:                                            ; preds = %bb.gq
  %i.aia = load ptr, ptr %i.i, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #25
  store i64 %i.ao, ptr %62, align 8, !alias.scope !1334
  store i64 %i.ao, ptr %i.eq, align 8, !alias.scope !1335
  %i.aib = call noundef zeroext i1 @_ZNK4llvm19PatternMatchHelpers16match_combine_orIJNS_17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_10match_bindINS_7VPValueEEEEELj72ELb0EJNS_13VPInstructionEEEENS3_IS4_IJNS2_11int_pred_tyINS2_11is_all_onesELj0EEES7_EELj31ELb1EJNS_13VPWidenRecipeENS_17VPReplicateRecipeES9_EEEEE5matchIS6_EEbPT_(ptr noundef nonnull align 8 dereferenceable(24) %62, ptr noundef %i.aia)
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #25
  br i1 %i.aib, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.aic = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 80
  %i.aid = load ptr, ptr %i.i, align 8, !tbaa !157
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.aic, ptr noundef %i.aid) #25
  br label %bb.la

bb.gt:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #25
  store i32 42, ptr %63, align 4, !tbaa !1337
  store i8 0, ptr %i.er, align 4, !tbaa !1338
  %i.aie = load ptr, ptr %i.i, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #25
  store ptr %63, ptr %64, align 8
  %i.aif = call noundef zeroext i1 @_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_9Cmp_matchINS_19PatternMatchHelpers9match_isaIJS2_EEES6_JLj55ELj56EEEEEEbPT_RKT0_(ptr noundef %i.aie, ptr noundef nonnull align 8 dereferenceable(10) %64)
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #25
  br i1 %i.aif, label %bb.gu, label %.critedge26.i

bb.gu:                                            ; preds = %bb.gt
  %i.aig = load ptr, ptr %i.i, align 8, !tbaa !157 ; 4 uses
  %i.aih = icmp eq ptr %i.aig, null
  %i.aii = getelementptr inbounds i8, ptr %i.aig, i64 -96
  %i.aij = select i1 %i.aih, ptr null, ptr %i.aii ; 4 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 112 ; 2 uses
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !75 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aij, i64 120 ; 2 uses
  %i.ain = load i32, ptr %i.aim, align 8, !tbaa !76
  %i.aio = zext i32 %i.ain to i64
  %i.aip = getelementptr inbounds nuw [8 x i8], ptr %i.ail, i64 %i.aio ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #25
  %i.aiq = ptrtoint ptr %i.aig to i64             ; 4 uses
  store i64 %i.aiq, ptr %65, align 8, !alias.scope !1339
  store i64 %i.aiq, ptr %i.es, align 8
  store i64 %i.aiq, ptr %.sroa.4460.0..sroa_idx.i, align 8
  %i.air = call noundef ptr @_ZSt9__find_ifIPPN4llvm6VPUserEN9__gnu_cxx5__ops12_Iter_negateIZNS0_17VPlanPatternMatch8match_fnINS0_19PatternMatchHelpers16match_combine_orIJNSA_IJNS7_12Recipe_matchISt5tupleIJNS7_14specificval_tyEEELj72ELb0EJNS0_13VPInstructionEEEENSB_ISC_IJNS7_11int_pred_tyINS7_11is_all_onesELj0EEESD_EELj31ELb1EJNS0_13VPWidenRecipeENS0_17VPReplicateRecipeESF_EEEEEENSB_ISC_IJSD_NS9_9match_isaIJNS0_7VPValueEEEESR_EELj59ELb0EJSL_SM_NS0_17VPWidenCastRecipeESF_EEEEEEEEDaRKT_EUlPSW_E_EEESW_SW_SW_T0_St26random_access_iterator_tag(ptr noundef %i.ail, ptr noundef %i.aip, ptr nonnull %65)
  %i.ais = icmp eq ptr %i.aip, %i.air
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #25
  br i1 %i.ais, label %bb.gv, label %.critedge26.i

bb.gv:                                            ; preds = %bb.gu
  %i.ait = load i32, ptr %63, align 4, !tbaa !1337
  %i.aiu = call noundef i32 @_ZN4llvm7CmpInst19getInversePredicateENS0_9PredicateE(i32 noundef %i.ait) #25
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aij, i64 153 ; 2 uses
  %i.aiw = load i8, ptr %i.aiv, align 1, !tbaa !155
  %i.aix = and i8 %i.aiw, -64
  %i.aiy = trunc i32 %i.aiu to i8
  %i.aiz = and i8 %i.aiy, 63
  %i.aja = or disjoint i8 %i.aix, %i.aiz
  store i8 %i.aja, ptr %i.aiv, align 1, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #25
  %i.ajb = load ptr, ptr %i.aik, align 8, !tbaa !75 ; 2 uses
  %i.ajc = load i32, ptr %i.aim, align 8, !tbaa !76
  %i.ajd = zext i32 %i.ajc to i64
  %i.aje = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %i.ajd
  store ptr %i.ajb, ptr %67, align 8
  store ptr %i.aje, ptr %i.et, align 8
  call void @_ZN4llvm9to_vectorINS_14iterator_rangeIPPNS_6VPUserEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.352") align 8 %66, ptr noundef nonnull align 8 dereferenceable(16) %67)
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #25
  %i.ajf = load ptr, ptr %66, align 8, !tbaa !75  ; 3 uses
  %i.ajg = load i32, ptr %i.eu, align 8, !tbaa !76 ; 2 uses
  %i.ajh = zext i32 %i.ajg to i64
  %.idx676.i = shl nuw nsw i64 %i.ajh, 3
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajf, i64 %.idx676.i
  %.not228668.i = icmp eq i32 %i.ajg, 0
  br i1 %.not228668.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %bb.gz
  %.pre685.i = load ptr, ptr %66, align 8, !tbaa !75
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.gv
  %i.ajj = phi ptr [ %.pre685.i, %._crit_edge.loopexit.i ], [ %i.ajf, %bb.gv ] ; 2 uses
  %i.ajk = icmp eq ptr %i.ajj, %i.ex
  br i1 %i.ajk, label %_ZN4llvm11SmallVectorIPNS_6VPUserELj6EED2Ev.exit.i, label %bb.gw

bb.gw:                                            ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.ajj) #25
  br label %_ZN4llvm11SmallVectorIPNS_6VPUserELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_6VPUserELj6EED2Ev.exit.i: ; preds = %bb.gw, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #25
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aij, i64 80 ; 2 uses
  %.sroa.0.0.copyload.i305.i = load ptr, ptr %i.ajl, align 8, !tbaa !150
  %.not648.i = icmp eq ptr %.sroa.0.0.copyload.i305.i, null
  br i1 %.not648.i, label %bb.ha, label %.critedge26.i

.lr.ph.i:                                         ; preds = %bb.gv, %bb.gz
  %.0210669.i = phi ptr [ %i.ajv, %bb.gz ], [ %i.ajf, %bb.gv ] ; 2 uses
  %i.ajm = load ptr, ptr %.0210669.i, align 8, !tbaa !298 ; 3 uses
  %i.ajn = icmp eq ptr %i.ajm, null
  %i.ajo = getelementptr inbounds i8, ptr %i.ajm, i64 -32
  %i.ajp = select i1 %i.ajn, ptr null, ptr %i.ajo ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #25
  store i64 %i.ed, ptr %68, align 8, !tbaa !396, !alias.scope !1340
  store i64 %i.ef, ptr %i.ev, align 8, !tbaa !396, !alias.scope !1340
  store i64 %i.aiq, ptr %i.ew, align 8, !tbaa !157, !alias.scope !1340
  %i.ajq = call noundef zeroext i1 @_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef %i.ajp)
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #25
  br i1 %i.ajq, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %.lr.ph.i
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajp, i64 32 ; 2 uses
  %i.ajs = load ptr, ptr %i.k, align 8, !tbaa !157
  call void @_ZN4llvm6VPUser10setOperandEjPNS_7VPValueE(ptr noundef nonnull align 8 dereferenceable(40) %i.ajr, i32 noundef 1, ptr noundef %i.ajs)
  %i.ajt = load ptr, ptr %i.j, align 8, !tbaa !157
  call void @_ZN4llvm6VPUser10setOperandEjPNS_7VPValueE(ptr noundef nonnull align 8 dereferenceable(40) %i.ajr, i32 noundef 2, ptr noundef %i.ajt)
  br label %bb.gz

bb.gy:                                            ; preds = %.lr.ph.i
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajm, i64 64
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.aju, ptr noundef %i.aig) #25
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %i.ajv = getelementptr inbounds nuw i8, ptr %.0210669.i, i64 8 ; 2 uses
  %.not228.i = icmp eq ptr %i.ajv, %i.aji
  br i1 %.not228.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.ha:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_6VPUserELj6EED2Ev.exit.i
  %i.ajw = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 64
  %.sroa.0.0.copyload.i307.i = load ptr, ptr %i.ajw, align 8, !tbaa !150 ; 2 uses
  %.not649.i = icmp eq ptr %.sroa.0.0.copyload.i307.i, null
  br i1 %.not649.i, label %.critedge26.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  store ptr %.sroa.0.0.copyload.i307.i, ptr %i.ajl, align 8, !tbaa !150
  br label %.critedge26.i

.critedge26.i:                                    ; preds = %bb.hb, %bb.ha, %_ZN4llvm11SmallVectorIPNS_6VPUserELj6EED2Ev.exit.i, %bb.gu, %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #25
  br label %bb.hc

bb.hc:                                            ; preds = %.critedge26.i, %bb.gq
  %i.ajx = load i8, ptr %i.ii, align 8, !tbaa !135
  %.not650.i = icmp eq i8 %i.ajx, 5
  br i1 %.not650.i, label %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJEELj94ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.i, label %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJEELj94ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.thread.i

_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJEELj94ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.i: ; preds = %bb.hc
  %i.ajy = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 208
  %i.ajz = load i8, ptr %i.ajy, align 8, !tbaa !149
  %i.aka = icmp eq i8 %i.ajz, 94
  br i1 %i.aka, label %bb.hd, label %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJEELj94ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.thread.i

bb.hd:                                            ; preds = %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJEELj94ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #25
  store ptr %i.ey, ptr %69, align 8, !tbaa !75
  store i32 0, ptr %i.ez, align 8, !tbaa !76
  store i32 4, ptr %i.fa, align 4, !tbaa !77
  %i.akb = load ptr, ptr %i.it, align 8, !tbaa !75 ; 2 uses
  %i.akc = load i32, ptr %i.iv, align 8, !tbaa !76 ; 2 uses
  %i.akd = zext i32 %i.akc to i64
  %.idx677.i = shl nuw nsw i64 %i.akd, 3
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akb, i64 %.idx677.i ; 2 uses
  %.not229670.i = icmp eq i32 %i.akc, 0
  br i1 %.not229670.i, label %._crit_edge675.thread.i, label %.lr.ph674.i

._crit_edge675.i:                                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i
  %.not230.i = icmp eq ptr %.1209.i, null
  br i1 %.not230.i, label %._crit_edge675.thread.i, label %bb.hl

.lr.ph674.i:                                      ; preds = %bb.hd, %.lr.ph674.i.backedge
  %.0207672.i = phi ptr [ %.0207672.i.be, %.lr.ph674.i.backedge ], [ %i.akb, %bb.hd ] ; 3 uses
  %.0208671.i = phi ptr [ %.0208671.i.be, %.lr.ph674.i.backedge ], [ null, %bb.hd ] ; 4 uses
  %i.akf = load ptr, ptr %.0207672.i, align 8, !tbaa !157 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #25
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 24
  %i.akh = load i32, ptr %i.akg, align 8, !tbaa !76
  %i.aki = icmp ugt i32 %i.akh, 1
  br i1 %i.aki, label %.critedge28.i, label %bb.he

bb.he:                                            ; preds = %.lr.ph674.i
  %i.akj = call noundef ptr @_ZNK4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.akf) #25 ; 4 uses
  %.not.i.i312.i = icmp eq ptr %i.akj, null
  br i1 %.not.i.i312.i, label %.critedge28.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store <2 x i64> %i.ho, ptr %9, align 16, !tbaa !396, !alias.scope !1341
  %i.akk = call noundef zeroext i1 @_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS3_14match_deferredIS5_EEEELj55ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.akj)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  br i1 %i.akk, label %.critedge.i.i.i.i.i, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  store <2 x i64> %i.ho, ptr %10, align 16, !tbaa !396, !alias.scope !1342
  %i.akl = call noundef zeroext i1 @_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS3_14match_deferredIS5_EEEELj56ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %i.akj)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br i1 %i.akl, label %_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_17SpecificCmp_matchINS_19PatternMatchHelpers10match_bindIS2_EENS4_14match_deferredIS2_EEJLj55ELj56EEEEEEbPT_RKT0_.exit.i, label %.critedge28.i

.critedge.i.i.i.i.i:                              ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_17SpecificCmp_matchINS_19PatternMatchHelpers10match_bindIS2_EENS4_14match_deferredIS2_EEJLj55ELj56EEEEEEbPT_RKT0_.exit.i

_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_17SpecificCmp_matchINS_19PatternMatchHelpers10match_bindIS2_EENS4_14match_deferredIS2_EEJLj55ELj56EEEEEEbPT_RKT0_.exit.i: ; preds = %.critedge.i.i.i.i.i, %bb.hg
  %.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.akj, i64 153
  %i.akm = load i8, ptr %.in.i.i.i.i.i.i, align 1, !tbaa !155
  %i.akn = and i8 %i.akm, 63
  %.sroa.0.0.insert.ext.i.i.i.i = zext nneg i8 %i.akn to i64
  %i.ako = call { i64, i8 } @_ZN4llvm12CmpPredicate11getMatchingES0_S0_(i64 %.sroa.0.0.insert.ext.i.i.i.i, i64 8) #25
  %.fca.1.extract.i.i.i.i = extractvalue { i64, i8 } %i.ako, 1
  %i.akp = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.akp, label %bb.hj, label %.critedge28.i

.critedge28.i:                                    ; preds = %_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_17SpecificCmp_matchINS_19PatternMatchHelpers10match_bindIS2_EENS4_14match_deferredIS2_EEJLj55ELj56EEEEEEbPT_RKT0_.exit.i, %bb.hg, %bb.he, %.lr.ph674.i
  %i.akq = load i32, ptr %i.ez, align 8, !tbaa !76 ; 2 uses
  %i.akr = load i32, ptr %i.fa, align 4, !tbaa !77
  %.not.i.i = icmp ult i32 %i.akq, %i.akr
  br i1 %.not.i.i, label %bb.hi, label %bb.hh, !prof !194

bb.hh:                                            ; preds = %.critedge28.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %69, ptr noundef nonnull %i.akf)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i

bb.hi:                                            ; preds = %.critedge28.i
  %i.aks = zext i32 %i.akq to i64
  %i.akt = load ptr, ptr %69, align 8, !tbaa !75
  %i.aku = getelementptr inbounds nuw [8 x i8], ptr %i.akt, i64 %i.aks
  store ptr %i.akf, ptr %i.aku, align 1
  %i.akv = load i32, ptr %i.ez, align 8, !tbaa !76
  %i.akw = add i32 %i.akv, 1
  store i32 %i.akw, ptr %i.ez, align 8, !tbaa !76
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i

bb.hj:                                            ; preds = %_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_17SpecificCmp_matchINS_19PatternMatchHelpers10match_bindIS2_EENS4_14match_deferredIS2_EEJLj55ELj56EEEEEEbPT_RKT0_.exit.i
  %.not239.i = icmp eq ptr %.0208671.i, null
  br i1 %.not239.i, label %bb.hk, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.thread

bb.hk:                                            ; preds = %bb.hj
  %i.akx = call noundef ptr @_ZN4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.akf) #25
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i: ; preds = %bb.hk, %bb.hi, %bb.hh
  %.1209.i = phi ptr [ %i.akx, %bb.hk ], [ %.0208671.i, %bb.hi ], [ %.0208671.i, %bb.hh ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #25
  %i.aky = getelementptr inbounds nuw i8, ptr %.0207672.i, i64 8 ; 2 uses
  %.not229.i = icmp eq ptr %i.aky, %i.ake
  br i1 %.not229.i, label %._crit_edge675.i, label %.lr.ph674.i.backedge

.lr.ph674.i.backedge:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.thread
  %.0207672.i.be = phi ptr [ %i.alg, %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.thread ], [ %i.aky, %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i ]
  %.0208671.i.be = phi ptr [ null, %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.thread ], [ %.1209.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i ]
  br label %.lr.ph674.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.thread: ; preds = %bb.hj
  %i.akz = getelementptr inbounds nuw i8, ptr %.0208671.i, i64 40
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !75
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !157
  %i.alc = load ptr, ptr %i.p, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #25
  store i16 257, ptr %i.fc, align 8
  %i.ald = call noundef ptr @_ZN4llvm9VPBuilder10createFCmpENS_7CmpInst9PredicateEPNS_7VPValueES4_NS_8DebugLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(16) %47, i32 noundef 8, ptr noundef %i.alb, ptr noundef %i.alc, ptr null, ptr noundef nonnull align 8 dereferenceable(34) %70) ; 2 uses
  %i.ale = icmp eq ptr %i.ald, null
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ald, i64 96
  %spec.select29.i = select i1 %i.ale, ptr null, ptr %i.alf
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %69, ptr noundef %spec.select29.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #25
  %i.alg = getelementptr inbounds nuw i8, ptr %.0207672.i, i64 8 ; 2 uses
  %.not229.i124 = icmp eq ptr %i.alg, %i.ake
  br i1 %.not229.i124, label %._crit_edge675.thread.i, label %.lr.ph674.i.backedge

bb.hl:                                            ; preds = %._crit_edge675.i
  %i.alh = getelementptr inbounds nuw i8, ptr %.1209.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.alh, align 8 ; 3 uses
  %i.ali = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.alj = icmp eq i64 %i.ali, 0
  br i1 %i.alj, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.alk = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZN4llvm5VPDef16getVPSingleValueEv.exit.i

bb.hn:                                            ; preds = %bb.hl
  %i.all = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.alm = inttoptr i64 %i.all to ptr
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !75
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !99
  br label %_ZN4llvm5VPDef16getVPSingleValueEv.exit.i

_ZN4llvm5VPDef16getVPSingleValueEv.exit.i:        ; preds = %bb.hn, %bb.hm
  %.0.i.i313.i = phi ptr [ %i.alk, %bb.hm ], [ %i.alo, %bb.hn ]
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %69, ptr noundef %.0.i.i313.i)
  br label %._crit_edge675.thread.i

._crit_edge675.thread.i:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.thread, %_ZN4llvm5VPDef16getVPSingleValueEv.exit.i, %._crit_edge675.i, %bb.hd
  %i.alp = load i32, ptr %i.ez, align 8, !tbaa !76 ; 2 uses
  %i.alq = load i32, ptr %i.iv, align 8, !tbaa !76
  %.not231.i = icmp ult i32 %i.alp, %i.alq
  br i1 %.not231.i, label %bb.ho, label %.critedge247.i

bb.ho:                                            ; preds = %._crit_edge675.thread.i
  %i.alr = zext i32 %i.alp to i64
  %i.als = load ptr, ptr %69, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #25
  store i8 10, ptr %71, align 1, !tbaa !196
  store i16 0, ptr %i.gf, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gg, i8 0, i64 48, i1 false)
  store ptr %i.gg, ptr %72, align 8, !tbaa !75
  store i32 0, ptr %i.gh, align 8, !tbaa !76
  store i32 3, ptr %i.gi, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #25
  store i16 257, ptr %i.gj, align 8
  %i.alt = call noundef ptr @_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_11InstructionERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %47, i32 noundef 94, ptr %i.als, i64 %i.alr, ptr noundef null, ptr noundef nonnull align 1 dereferenceable(3) %71, ptr noundef nonnull align 8 dereferenceable(64) %72, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %73, ptr noundef null) ; 2 uses
  %i.alu = icmp eq ptr %i.alt, null
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alt, i64 96
  %spec.select30.i = select i1 %i.alu, ptr null, ptr %i.alv
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #25
  %i.alw = load ptr, ptr %72, align 8, !tbaa !75  ; 2 uses
  %i.alx = icmp eq ptr %i.alw, %i.gg
end_hunk_0
