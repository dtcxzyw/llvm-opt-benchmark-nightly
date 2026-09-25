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
begin_hunk_1_@_ZN4llvm15VPlanTransforms15simplifyRecipesERNS_5VPlanE:bb.a
    i8 5, label %_ZN4llvm8CastInfoINS_5VPPhiEKPNS_17VPSingleDefRecipeEvE10isPossibleERS4_.exit.i.i
    i8 27, label %_ZN4llvm3isaIJNS_5VPPhiENS_16VPWidenPHIRecipeENS_17VPHeaderPHIRecipeEEPNS_17VPSingleDefRecipeEEEbRKT0_.exit.thread.i
  ]

_ZN4llvm8CastInfoINS_5VPPhiEKPNS_17VPSingleDefRecipeEvE10isPossibleERS4_.exit.i.i: ; preds = %bb.jl
  %i.asi = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 208
  %i.asj = load i8, ptr %i.asi, align 8, !tbaa !149
  %i.ask = icmp eq i8 %i.asj, 57
  br i1 %i.ask, label %_ZN4llvm3isaIJNS_5VPPhiENS_16VPWidenPHIRecipeENS_17VPHeaderPHIRecipeEEPNS_17VPSingleDefRecipeEEEbRKT0_.exit.thread.i, label %_ZN4llvm3isaIJNS_5VPPhiENS_16VPWidenPHIRecipeENS_17VPHeaderPHIRecipeEEPNS_17VPSingleDefRecipeEEEbRKT0_.exit.thread635.i

_ZN4llvm3isaIJNS_5VPPhiENS_16VPWidenPHIRecipeENS_17VPHeaderPHIRecipeEEPNS_17VPSingleDefRecipeEEEbRKT0_.exit.i: ; preds = %bb.jl
  %i.asl = add i8 %i.ash, -29
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.asl, 6
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJNS_5VPPhiENS_16VPWidenPHIRecipeENS_17VPHeaderPHIRecipeEEPNS_17VPSingleDefRecipeEEEbRKT0_.exit.thread.i, label %_ZN4llvm3isaIJNS_5VPPhiENS_16VPWidenPHIRecipeENS_17VPHeaderPHIRecipeEEPNS_17VPSingleDefRecipeEEEbRKT0_.exit.thread635.i

_ZN4llvm3isaIJNS_5VPPhiENS_16VPWidenPHIRecipeENS_17VPHeaderPHIRecipeEEPNS_17VPSingleDefRecipeEEEbRKT0_.exit.thread.i: ; preds = %_ZN4llvm3isaIJNS_5VPPhiENS_16VPWidenPHIRecipeENS_17VPHeaderPHIRecipeEEPNS_17VPSingleDefRecipeEEEbRKT0_.exit.i, %_ZN4llvm8CastInfoINS_5VPPhiEKPNS_17VPSingleDefRecipeEvE10isPossibleERS4_.exit.i.i, %bb.jl
  %i.asm = load i32, ptr %i.iv, align 8, !tbaa !76
  %i.asn = icmp eq i32 %i.asm, 1
  br i1 %i.asn, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %_ZN4llvm3isaIJNS_5VPPhiENS_16VPWidenPHIRecipeENS_17VPHeaderPHIRecipeEEPNS_17VPSingleDefRecipeEEEbRKT0_.exit.thread.i
  %i.aso = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 80
  %i.asp = load ptr, ptr %i.it, align 8, !tbaa !75
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !157
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.aso, ptr noundef %i.asq) #25
  br label %bb.kz

bb.jn:                                            ; preds = %_ZN4llvm3isaIJNS_5VPPhiENS_16VPWidenPHIRecipeENS_17VPHeaderPHIRecipeEEPNS_17VPSingleDefRecipeEEEbRKT0_.exit.thread.i
  %.not658.i = icmp eq i8 %i.ash, 31
  br i1 %.not658.i, label %bb.jo, label %bb.kz

bb.jo:                                            ; preds = %bb.jn
  %i.asr = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 136
  %i.ass = call { ptr, ptr } @_ZNK4llvm14VPPhiAccessors15incoming_valuesEv(ptr noundef nonnull align 8 dereferenceable(8) %i.asr) ; 2 uses
  %i.ast = extractvalue { ptr, ptr } %i.ass, 0    ; 3 uses
  %i.asu = extractvalue { ptr, ptr } %i.ass, 1    ; 3 uses
  %i.asv = icmp eq ptr %i.ast, %i.asu
  br i1 %i.asv, label %_ZN4llvm9all_equalINS_14iterator_rangeIPKPNS_7VPValueEEEEEbOT_.exit.thread.i, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ast, i64 8 ; 3 uses
  %.not.not.i.i.i.i.i344.i = icmp eq ptr %i.asu, %i.asw
  br i1 %.not.not.i.i.i.i.i344.i, label %_ZN4llvm9all_equalINS_14iterator_rangeIPKPNS_7VPValueEEEEEbOT_.exit.thread.i, label %_ZN4llvm9all_equalINS_14iterator_rangeIPKPNS_7VPValueEEEEEbOT_.exit.i

_ZN4llvm9all_equalINS_14iterator_rangeIPKPNS_7VPValueEEEEEbOT_.exit.i: ; preds = %bb.jp
  %i.asx = ptrtoint ptr %i.asw to i64
  %i.asy = ptrtoint ptr %i.asu to i64
  %i.asz = sub i64 %i.asy, %i.asx
  %bcmp.i.i.i.i.i345.i = call i32 @bcmp(ptr nonnull %i.asw, ptr %i.ast, i64 %i.asz)
  %.not9.i.i.i.i.i346.i = icmp eq i32 %bcmp.i.i.i.i.i345.i, 0
  br i1 %.not9.i.i.i.i.i346.i, label %_ZN4llvm9all_equalINS_14iterator_rangeIPKPNS_7VPValueEEEEEbOT_.exit.thread.i, label %bb.kz

_ZN4llvm9all_equalINS_14iterator_rangeIPKPNS_7VPValueEEEEEbOT_.exit.thread.i: ; preds = %_ZN4llvm9all_equalINS_14iterator_rangeIPKPNS_7VPValueEEEEEbOT_.exit.i, %bb.jp, %bb.jo
  %i.ata = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 80
  %i.atb = load ptr, ptr %i.it, align 8, !tbaa !75
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !157
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ata, ptr noundef %i.atc) #25
  br label %bb.kz

_ZN4llvm3isaIJNS_5VPPhiENS_16VPWidenPHIRecipeENS_17VPHeaderPHIRecipeEEPNS_17VPSingleDefRecipeEEEbRKT0_.exit.thread635.i: ; preds = %_ZN4llvm3isaIJNS_5VPPhiENS_16VPWidenPHIRecipeENS_17VPHeaderPHIRecipeEEPNS_17VPSingleDefRecipeEEEbRKT0_.exit.i, %_ZN4llvm8CastInfoINS_5VPPhiEKPNS_17VPSingleDefRecipeEvE10isPossibleERS4_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #25
  %i.atd = load i32, ptr %i.iv, align 8, !tbaa !76
  %i.ate = icmp eq i32 %i.atd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #25
  br i1 %i.ate, label %bb.jq, label %.critedge45.i

bb.jq:                                            ; preds = %_ZN4llvm3isaIJNS_5VPPhiENS_16VPWidenPHIRecipeENS_17VPHeaderPHIRecipeEEPNS_17VPSingleDefRecipeEEEbRKT0_.exit.thread635.i
  store i64 %i.fo, ptr %96, align 8, !tbaa !408, !alias.scope !1352
  %i.atf = call noundef zeroext i1 @_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_9VPIRValueEEEEELj85ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_(ptr noundef nonnull %i.ih, ptr noundef nonnull align 8 dereferenceable(8) %96)
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #25
  br i1 %i.atf, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  %i.atg = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 80
  %i.ath = load ptr, ptr %i.s, align 8, !tbaa !409
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.atg, ptr noundef %i.ath) #25
  br label %bb.ky

.critedge45.i:                                    ; preds = %_ZN4llvm3isaIJNS_5VPPhiENS_16VPWidenPHIRecipeENS_17VPHeaderPHIRecipeEEPNS_17VPSingleDefRecipeEEEbRKT0_.exit.thread635.i
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #25
  br label %bb.js

bb.js:                                            ; preds = %.critedge45.i, %bb.jq
  %i.ati = getelementptr inbounds nuw i8, ptr %i.im, i64 136
  %i.atj = load i32, ptr %i.ati, align 8, !tbaa !76
  %i.atk = icmp eq i32 %i.atj, 1
  br i1 %i.atk, label %bb.jt, label %bb.ky

bb.jt:                                            ; preds = %bb.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #25
  store <2 x i64> %i.fr, ptr %97, align 16, !tbaa !396, !alias.scope !1353
  %i.atl = call noundef zeroext i1 @_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEES7_EELj99ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_(ptr noundef nonnull %i.ih, ptr noundef nonnull align 8 dereferenceable(16) %97)
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #25
  br i1 %i.atl, label %bb.ju, label %bb.kc

bb.ju:                                            ; preds = %bb.jt
  %i.atm = load ptr, ptr %i.i, align 8, !tbaa !157
  %i.atn = call noundef zeroext i1 @_ZN4llvm7vputils14isSingleScalarEPKNS_7VPValueE(ptr noundef %i.atm) #25
  br i1 %i.atn, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  %i.ato = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 80
  %i.atp = load ptr, ptr %i.i, align 8, !tbaa !157
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ato, ptr noundef %i.atp) #25
  br label %bb.kx

bb.jw:                                            ; preds = %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #25
  %i.atq = load ptr, ptr %i.t, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #25
  %i.atr = call noundef zeroext i1 @_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_11int_pred_tyINS0_11is_zero_intELj0EEEEEbPT_RKT0_(ptr noundef %i.atq, ptr noundef nonnull align 1 dereferenceable(1) %98)
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #25
  br i1 %i.atr, label %bb.jx, label %.critedge47.i

bb.jx:                                            ; preds = %bb.jw
  %i.ats = load ptr, ptr %i.i, align 8, !tbaa !157
  store ptr %i.u, ptr %99, align 8
  %i.att = call noundef zeroext i1 @_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_24canonical_widen_iv_matchEEEbPT_RKT0_(ptr noundef %i.ats, ptr noundef nonnull align 8 dereferenceable(8) %99)
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #25
  br i1 %i.att, label %bb.jy, label %bb.ka

bb.jy:                                            ; preds = %bb.jx
  %i.atu = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 80
  %i.atv = load ptr, ptr %i.u, align 8, !tbaa !411
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 72
  %i.atx = load ptr, ptr %i.atw, align 8, !tbaa !195
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 40
  %i.atz = load ptr, ptr %i.aty, align 8, !tbaa !94
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 128
  %i.aub = load ptr, ptr %i.aua, align 8, !tbaa !284 ; 2 uses
  %.not.i350.i = icmp eq ptr %i.aub, null
  br i1 %.not.i350.i, label %_ZN4llvm13VPRegionBlock14getCanonicalIVEv.exit.i, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.auc = load ptr, ptr %i.aub, align 8, !tbaa !309
  br label %_ZN4llvm13VPRegionBlock14getCanonicalIVEv.exit.i

_ZN4llvm13VPRegionBlock14getCanonicalIVEv.exit.i: ; preds = %bb.jz, %bb.jy
  %i.aud = phi ptr [ %i.auc, %bb.jz ], [ null, %bb.jy ]
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.atu, ptr noundef %i.aud) #25
  br label %bb.kb

.critedge47.i:                                    ; preds = %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #25
  br label %bb.ka

bb.ka:                                            ; preds = %.critedge47.i, %bb.jx
  %i.aue = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #25
  %i.auf = load ptr, ptr %i.i, align 8, !tbaa !157
  store ptr %i.auf, ptr %i.v, align 8, !tbaa !157
  %i.aug = load ptr, ptr %i.t, align 8, !tbaa !157
  store ptr %i.aug, ptr %i.fw, align 8, !tbaa !157
  %i.auh = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 64
  %.sroa.0.0.copyload.i352.i = load ptr, ptr %i.auh, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #25
  store i16 257, ptr %i.fx, align 8
  %i.aui = call noundef ptr @_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEENS_8DebugLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(16) %47, i32 noundef 63, ptr nonnull %i.v, i64 2, ptr %.sroa.0.0.copyload.i352.i, ptr noundef nonnull align 8 dereferenceable(34) %100) ; 2 uses
  %i.auj = icmp eq ptr %i.aui, null
  %i.auk = getelementptr inbounds nuw i8, ptr %i.aui, i64 96
  %spec.select48.i = select i1 %i.auj, ptr null, ptr %i.auk
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.aue, ptr noundef %spec.select48.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #25
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %_ZN4llvm13VPRegionBlock14getCanonicalIVEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #25
  br label %bb.kx

bb.kc:                                            ; preds = %bb.jt
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #25
  store i64 %i.ed, ptr %101, align 8, !tbaa !396, !alias.scope !1354
  store i64 %i.ef, ptr %i.fs, align 8, !alias.scope !1354
  %i.aul = call noundef zeroext i1 @_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS3_9match_isaIJS5_EEEEELj14ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEES6_EELj14ELb0EJSA_SB_SC_SD_EE5matchEPKNS_12VPRecipeBaseE(ptr noundef nonnull align 8 dereferenceable(16) %101, ptr noundef nonnull %i.ih)
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #25
  br i1 %i.aul, label %bb.kd, label %.critedge50.i

bb.kd:                                            ; preds = %bb.kc
  %i.aum = load ptr, ptr %i.k, align 8, !tbaa !157
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 8
  %i.auo = load i8, ptr %i.aun, align 8, !tbaa !319
  %i.aup = icmp eq i8 %i.auo, 0
  br i1 %i.aup, label %bb.ke, label %.critedge50.i

bb.ke:                                            ; preds = %bb.kd
  %i.auq = load ptr, ptr %i.j, align 8, !tbaa !157
  %i.aur = load ptr, ptr %i.it, align 8, !tbaa !75
  %i.aus = load ptr, ptr %i.aur, align 8, !tbaa !157
  %i.aut = ptrtoint ptr %i.aus to i64
  store i64 %i.aut, ptr %102, align 8, !tbaa !157, !alias.scope !1355
  %i.auu = call noundef zeroext i1 @_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_12Recipe_matchISt5tupleIJNS0_11int_pred_tyINS0_11is_zero_intELj0EEENS0_14specificval_tyEEELj57ELb0EJNS_13VPInstructionEEEEEEbPT_RKT0_(ptr noundef %i.auq, ptr noundef nonnull align 8 dereferenceable(16) %102)
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #25
  br i1 %i.auu, label %bb.kf, label %bb.kn

bb.kf:                                            ; preds = %bb.ke
  %i.auv = load ptr, ptr %i.j, align 8, !tbaa !157 ; 5 uses
  %i.auw = load ptr, ptr %i.it, align 8, !tbaa !75
  %i.aux = load ptr, ptr %i.auw, align 8, !tbaa !157 ; 3 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aux, i64 24
  %i.auz = load i32, ptr %i.auy, align 8, !tbaa !76
  %i.ava = icmp eq i32 %i.auz, 2
  br i1 %i.ava, label %bb.kg, label %bb.kn

bb.kg:                                            ; preds = %bb.kf
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #25
  %i.avb = load ptr, ptr %i.k, align 8, !tbaa !157
  %i.avc = ptrtoint ptr %i.avb to i64
  store i64 %i.avc, ptr %103, align 8, !tbaa !157, !alias.scope !1356
  %i.avd = ptrtoint ptr %i.auv to i64
  store i64 %i.avd, ptr %i.ft, align 8, !tbaa !157, !alias.scope !1356
  %i.ave = call noundef ptr @_ZN4llvm17VPlanPatternMatch10findUserOfINS0_12Recipe_matchISt5tupleIJNS0_14specificval_tyES4_EELj14ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEEEEPNS_12VPRecipeBaseEPNS_7VPValueERKT_(ptr noundef %i.auv, ptr noundef nonnull align 8 dereferenceable(16) %103) ; 3 uses
  %.not.i.i358.i = icmp eq ptr %i.ave, null
  br i1 %.not.i.i358.i, label %_ZN4llvm16dyn_cast_or_nullINS_17VPSingleDefRecipeENS_12VPRecipeBaseEEEDaPT0_.exit.i, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 88
  %i.avg = load i8, ptr %i.avf, align 8, !tbaa !135
  switch i8 %i.avg, label %bb.ki [
    i8 1, label %bb.kj
    i8 2, label %bb.kj
    i8 3, label %bb.kj
    i8 5, label %bb.kj
    i8 8, label %bb.kj
    i8 9, label %bb.kj
    i8 10, label %bb.kj
    i8 11, label %bb.kj
    i8 12, label %bb.kj
    i8 13, label %bb.kj
    i8 14, label %bb.kj
    i8 15, label %bb.kj
    i8 16, label %bb.kj
    i8 17, label %bb.kj
    i8 18, label %bb.kj
    i8 19, label %bb.kj
    i8 24, label %bb.kj
    i8 25, label %bb.kj
    i8 28, label %bb.kj
    i8 29, label %bb.kj
    i8 30, label %bb.kj
    i8 31, label %bb.kj
    i8 27, label %bb.kj
    i8 32, label %bb.kj
    i8 33, label %bb.kj
    i8 34, label %bb.kj
    i8 20, label %bb.kj
    i8 21, label %bb.kj
    i8 0, label %_ZN4llvm16dyn_cast_or_nullINS_17VPSingleDefRecipeENS_12VPRecipeBaseEEEDaPT0_.exit.i
    i8 6, label %_ZN4llvm16dyn_cast_or_nullINS_17VPSingleDefRecipeENS_12VPRecipeBaseEEEDaPT0_.exit.i
    i8 7, label %_ZN4llvm16dyn_cast_or_nullINS_17VPSingleDefRecipeENS_12VPRecipeBaseEEEDaPT0_.exit.i
    i8 4, label %_ZN4llvm16dyn_cast_or_nullINS_17VPSingleDefRecipeENS_12VPRecipeBaseEEEDaPT0_.exit.i
    i8 22, label %_ZN4llvm16dyn_cast_or_nullINS_17VPSingleDefRecipeENS_12VPRecipeBaseEEEDaPT0_.exit.i
    i8 23, label %_ZN4llvm16dyn_cast_or_nullINS_17VPSingleDefRecipeENS_12VPRecipeBaseEEEDaPT0_.exit.i
    i8 26, label %_ZN4llvm16dyn_cast_or_nullINS_17VPSingleDefRecipeENS_12VPRecipeBaseEEEDaPT0_.exit.i
  ]

bb.ki:                                            ; preds = %bb.kh
  unreachable

bb.kj:                                            ; preds = %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh
  br label %_ZN4llvm16dyn_cast_or_nullINS_17VPSingleDefRecipeENS_12VPRecipeBaseEEEDaPT0_.exit.i

_ZN4llvm16dyn_cast_or_nullINS_17VPSingleDefRecipeENS_12VPRecipeBaseEEEDaPT0_.exit.i: ; preds = %bb.kj, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kh, %bb.kg
  %.0.i.i359.i = phi ptr [ null, %bb.kg ], [ %i.ave, %bb.kj ], [ null, %bb.kh ], [ null, %bb.kh ], [ null, %bb.kh ], [ null, %bb.kh ], [ null, %bb.kh ], [ null, %bb.kh ], [ null, %bb.kh ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #25
  %i.avh = getelementptr inbounds nuw i8, ptr %i.auv, i64 24
  %i.avi = load i32, ptr %i.avh, align 8, !tbaa !76 ; 2 uses
  %i.avj = icmp eq i32 %i.avi, 1
  br i1 %i.avj, label %bb.kl, label %bb.kk

bb.kk:                                            ; preds = %_ZN4llvm16dyn_cast_or_nullINS_17VPSingleDefRecipeENS_12VPRecipeBaseEEEDaPT0_.exit.i
  %i.avk = icmp eq i32 %i.avi, 2
  %i.avl = icmp ne ptr %.0.i.i359.i, null
  %or.cond.i = and i1 %i.avl, %i.avk
  br i1 %or.cond.i, label %.thread637.i, label %bb.kn

.thread637.i:                                     ; preds = %bb.kk
  %i.avm = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 80
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.avm, ptr noundef nonnull %i.aux) #25
  br label %bb.km

bb.kl:                                            ; preds = %_ZN4llvm16dyn_cast_or_nullINS_17VPSingleDefRecipeENS_12VPRecipeBaseEEEDaPT0_.exit.i
  %i.avn = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 80
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.avn, ptr noundef nonnull %i.aux) #25
  %.not232.i = icmp eq ptr %.0.i.i359.i, null
  br i1 %.not232.i, label %.critedge249.i, label %bb.km

bb.km:                                            ; preds = %bb.kl, %.thread637.i
  %i.avo = getelementptr inbounds nuw i8, ptr %.0.i.i359.i, i64 96
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.avo, ptr noundef nonnull %i.auv) #25
  br label %.critedge249.i

.critedge249.i:                                   ; preds = %bb.km, %bb.kl
  %i.avp = getelementptr inbounds i8, ptr %i.auv, i64 -64
  %i.avq = load ptr, ptr %i.k, align 8, !tbaa !157
  call void @_ZN4llvm6VPUser10setOperandEjPNS_7VPValueE(ptr noundef nonnull align 8 dereferenceable(40) %i.avp, i32 noundef 0, ptr noundef %i.avq)
  br label %bb.kx

.critedge50.i:                                    ; preds = %bb.kd, %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #25
  br label %bb.kn

bb.kn:                                            ; preds = %.critedge50.i, %bb.kk, %bb.kf, %bb.ke
  %i.avr = load i8, ptr %i.ii, align 8, !tbaa !135 ; 2 uses
  %.not656.i = icmp eq i8 %i.avr, 12
  br i1 %.not656.i, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  %i.avs = load i32, ptr %i.iv, align 8, !tbaa !76
  %i.avt = icmp ugt i32 %i.avs, 2
  br i1 %i.avt, label %_ZNK4llvm21VPVectorPointerRecipe10getVFxPartEv.exit.i, label %_ZNK4llvm21VPVectorPointerRecipe10getVFxPartEv.exit.thread.i

_ZNK4llvm21VPVectorPointerRecipe10getVFxPartEv.exit.thread.i: ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #25
  br label %.critedge55.i

_ZNK4llvm21VPVectorPointerRecipe10getVFxPartEv.exit.i: ; preds = %bb.ko
  %i.avu = load ptr, ptr %i.it, align 8, !tbaa !75
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 16
  %i.avw = load ptr, ptr %i.avv, align 8, !tbaa !157 ; 2 uses
  %.not234.i = icmp eq ptr %i.avw, null
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #25
  br i1 %.not234.i, label %.critedge55.i, label %_ZNK4llvm21VPVectorPointerRecipe10getVFxPartEv.exit361.i

_ZNK4llvm21VPVectorPointerRecipe10getVFxPartEv.exit361.i: ; preds = %_ZNK4llvm21VPVectorPointerRecipe10getVFxPartEv.exit.i
  %i.avx = call noundef zeroext i1 @_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_11int_pred_tyINS0_11is_zero_intELj0EEEEEbPT_RKT0_(ptr noundef nonnull %i.avw, ptr noundef nonnull align 1 dereferenceable(1) %104)
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #25
  br i1 %i.avx, label %.critedge253.i, label %_ZNK4llvm21VPVectorPointerRecipe10getVFxPartEv.exit361._crit_edge.i

_ZNK4llvm21VPVectorPointerRecipe10getVFxPartEv.exit361._crit_edge.i: ; preds = %_ZNK4llvm21VPVectorPointerRecipe10getVFxPartEv.exit361.i
  %.pre687.i = load i8, ptr %i.ii, align 8, !tbaa !135
  br label %bb.kp

.critedge55.i:                                    ; preds = %_ZNK4llvm21VPVectorPointerRecipe10getVFxPartEv.exit.i, %_ZNK4llvm21VPVectorPointerRecipe10getVFxPartEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #25
  br label %.critedge253.i

.critedge253.i:                                   ; preds = %.critedge55.i, %_ZNK4llvm21VPVectorPointerRecipe10getVFxPartEv.exit361.i
  %i.avy = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 80
  %i.avz = load ptr, ptr %i.it, align 8, !tbaa !75
  %i.awa = load ptr, ptr %i.avz, align 8, !tbaa !157
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.avy, ptr noundef %i.awa) #25
  br label %bb.kx

bb.kp:                                            ; preds = %_ZNK4llvm21VPVectorPointerRecipe10getVFxPartEv.exit361._crit_edge.i, %bb.kn
  %i.awb = phi i8 [ %.pre687.i, %_ZNK4llvm21VPVectorPointerRecipe10getVFxPartEv.exit361._crit_edge.i ], [ %i.avr, %bb.kn ]
  %.not657.i = icmp eq i8 %i.awb, 11
  br i1 %.not657.i, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.awc = load i32, ptr %i.iv, align 8, !tbaa !76
  %i.awd = icmp eq i32 %i.awc, 4
  br i1 %i.awd, label %_ZNK4llvm21VPScalarIVStepsRecipe13getStartIndexEv.exit.i, label %_ZNK4llvm21VPScalarIVStepsRecipe13getStartIndexEv.exit.thread.i

_ZNK4llvm21VPScalarIVStepsRecipe13getStartIndexEv.exit.i: ; preds = %bb.kq
  %i.awe = load ptr, ptr %i.it, align 8, !tbaa !75
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 24
  %i.awg = load ptr, ptr %i.awf, align 8, !tbaa !157
  %.not236.i = icmp eq ptr %i.awg, null
  br i1 %.not236.i, label %_ZNK4llvm21VPScalarIVStepsRecipe13getStartIndexEv.exit.thread.i, label %bb.kr

_ZNK4llvm21VPScalarIVStepsRecipe13getStartIndexEv.exit.thread.i: ; preds = %_ZNK4llvm21VPScalarIVStepsRecipe13getStartIndexEv.exit.i, %bb.kq
  %i.awh = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 80 ; 2 uses
  %i.awi = call noundef zeroext i1 @_ZN4llvm7vputils17onlyFirstLaneUsedEPKNS_7VPValueE(ptr noundef nonnull %i.awh) #25
  br i1 %i.awi, label %.critedge255.i, label %bb.kr

.critedge255.i:                                   ; preds = %_ZNK4llvm21VPScalarIVStepsRecipe13getStartIndexEv.exit.thread.i
  %i.awj = load ptr, ptr %i.it, align 8, !tbaa !75
  %i.awk = load ptr, ptr %i.awj, align 8, !tbaa !157
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.awh, ptr noundef %i.awk) #25
  br label %bb.kx

bb.kr:                                            ; preds = %_ZNK4llvm21VPScalarIVStepsRecipe13getStartIndexEv.exit.thread.i, %_ZNK4llvm21VPScalarIVStepsRecipe13getStartIndexEv.exit.i, %bb.kp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #25
  store i64 %i.fu, ptr %105, align 8, !tbaa !396, !alias.scope !1357
  %i.awl = call noundef zeroext i1 @_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS4_9match_isaIJS6_EEES9_EELj98ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_(ptr noundef nonnull %i.ih, ptr noundef nonnull align 8 dereferenceable(8) %105)
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #25
  br i1 %i.awl, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.awm = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 80
  %i.awn = load ptr, ptr %i.w, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #25
  call void @_ZN4llvm7VPValue17replaceUsesWithIfEPS0_NS_12function_refIFbRNS_6VPUserEjEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.awm, ptr noundef %i.awn, ptr nonnull @"_ZN4llvm12function_refIFbRNS_6VPUserEjEE11callback_fnIZL14simplifyRecipePNS_17VPSingleDefRecipeEE3$_2EEblS2_j", i64 %i.fv) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #25
  br label %bb.kw

bb.kt:                                            ; preds = %bb.kr
  %i.awo = getelementptr inbounds nuw i8, ptr %i.im, i64 128
  %i.awp = load ptr, ptr %i.awo, align 8, !tbaa !75
  %i.awq = load i32, ptr %i.awp, align 4, !tbaa !197
  %i.awr = icmp eq i32 %i.awq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #25
  br i1 %i.awr, label %bb.ku, label %.critedge58.i

bb.ku:                                            ; preds = %bb.kt
  store i64 %i.ao, ptr %107, align 8, !tbaa !396, !alias.scope !1358
  %i.aws = call noundef zeroext i1 @_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEEEELj86ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_(ptr noundef nonnull %i.ih, ptr noundef nonnull align 8 dereferenceable(8) %107)
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #25
  br i1 %i.aws, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.awt = getelementptr inbounds nuw i8, ptr %.sroa.081.0143, i64 80
  %i.awu = load ptr, ptr %i.i, align 8, !tbaa !157
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.awt, ptr noundef %i.awu) #25
  br label %bb.kw

.critedge58.i:                                    ; preds = %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #25
  br label %bb.kw

bb.kw:                                            ; preds = %.critedge58.i, %bb.kv, %bb.ku, %bb.ks
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #25
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %.critedge255.i, %.critedge253.i, %.critedge249.i, %bb.kb, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #25
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.js, %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #25
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %_ZN4llvm9all_equalINS_14iterator_rangeIPKPNS_7VPValueEEEEEbOT_.exit.thread.i, %_ZN4llvm9all_equalINS_14iterator_rangeIPKPNS_7VPValueEEEEEbOT_.exit.i, %bb.jn, %bb.jm, %bb.jk, %bb.ji, %_ZN4llvm12VPIRMetadataD2Ev.exit337.i, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #25
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.jb, %bb.ja, %bb.iy, %bb.iv, %bb.iu, %_ZNK4llvm13VPInstruction8isMaskedEv.exit.thread.i, %bb.il, %bb.id, %bb.hz, %bb.ht, %_ZN4llvm11SmallVectorIPNS_7VPValueELj4EED2Ev.exit.i, %bb.gs, %bb.gp, %.thread626.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #25
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %.thread621.i, %bb.gf, %bb.gc, %bb.ga, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  br label %.critedge245.i

.critedge245.i:                                   ; preds = %bb.lb, %_ZL21simplifyLogicalRecipePN4llvm17VPSingleDefRecipeERNS_9VPBuilderEb.exit.thread619.i, %_ZL21simplifyLogicalRecipePN4llvm17VPSingleDefRecipeERNS_9VPBuilderEb.exit.thread.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #25
  br label %_ZL14simplifyRecipePN4llvm17VPSingleDefRecipeE.exit

_ZL14simplifyRecipePN4llvm17VPSingleDefRecipeE.exit: ; preds = %bb.g, %_ZN4llvm12VPIRMetadataD2Ev.exit.i, %.critedge245.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  br label %_ZN4llvm8dyn_castINS_17VPSingleDefRecipeENS_12VPRecipeBaseEEEDcPT0_.exit.thread

_ZN4llvm8dyn_castINS_17VPSingleDefRecipeENS_12VPRecipeBaseEEEDcPT0_.exit.thread: ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %_ZL14simplifyRecipePN4llvm17VPSingleDefRecipeE.exit
  %.not128 = icmp eq ptr %i.ig, %i.hz
  br i1 %.not128, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15VPlanTransforms16simplifyReversesERNS_5VPlanE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(816) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::VPBlockDeepTraversalWrapper", align 8 ; 4 uses
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_negate.2827", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.llvm::VPIRFlags", align 1   ; 5 uses
  %4 = alloca %"class.llvm::VPIRMetadata", align 8 ; 8 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvm::VPBlockDeepTraversalWrapper", align 8 ; 4 uses
  %7 = alloca %"class.llvm::iterator_range.82", align 8 ; 8 uses
  %8 = alloca %"class.llvm::iterator_range.114", align 8 ; 12 uses
  %9 = alloca %"class.llvm::mapped_iterator.83", align 8 ; 15 uses
  %10 = alloca %"class.llvm::mapped_iterator.83", align 8 ; 13 uses
  %11 = alloca %"struct.llvm::VPlanPatternMatch::Recipe_match.2818", align 1 ; 3 uses
  %12 = alloca %"struct.llvm::PatternMatchHelpers::match_combine_or.2820", align 1 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %class.anon.2823, align 8          ; 4 uses
  %14 = alloca %"class.llvm::iterator_range.82", align 8 ; 8 uses
  %15 = alloca %"class.llvm::iterator_range.114", align 8 ; 12 uses
  %16 = alloca %"class.llvm::mapped_iterator.83", align 8 ; 15 uses
  %17 = alloca %"class.llvm::mapped_iterator.83", align 8 ; 13 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !1373
  store ptr %.val, ptr %6, align 8, !tbaa !73, !noalias !1373
  call void @_ZN4llvm11depth_firstINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEEEENS_14iterator_rangeINS_11df_iteratorIT_NS_23df_iterator_default_setINS_11GraphTraitsIS7_E7NodeRefELj8EEELb0ESA_EEEERKS7_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.114") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !1373
  call void @_ZN4llvm12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS_14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS7_Lj8EEELb0ENS_11GraphTraitsIS8_EEEEEEEEDaOT0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.82") align 8 %7, ptr noundef nonnull align 8 dereferenceable(224) %8)
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !249  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN4llvm15VPlanTransforms19removeBranchOnConstERNS_5VPlanEb:bb.a
bb.q:                                             ; preds = %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i
  %i.dx = call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %i.dk) #25 ; 2 uses
  %i.dy = icmp eq i32 %i.dx, -1
  br i1 %i.dy, label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dz = add nuw i32 %i.dx, 1
  %i.ea = load i32, ptr %i.dq, align 8, !tbaa !76
  %i.eb = icmp eq i32 %i.dz, %i.ea
  %i.ec = sext i1 %i.eb to i32
  br label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i

_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.ec, %bb.r ], [ 0, %bb.q ]
  %i.ed = add i32 %.0.i.i.i.i, %i.du
  %.not22.i.i = icmp eq i32 %i.ed, 1
  br i1 %.not22.i.i, label %.critedge.i.i, label %.critedge

.critedge.i.i:                                    ; preds = %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i, %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !75
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !157 ; 13 uses
  %.not.i.i.i.not.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.not.i.i, label %.critedge, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i
  br i1 %1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eh = call noundef zeroext i1 @_ZN4llvm12VPBlockUtils7isLatchEPKNS_11VPBlockBaseERKNS_15VPDominatorTreeE(ptr noundef nonnull %i.dg, ptr noundef nonnull align 8 dereferenceable(220) %5) #25
  br i1 %i.eh, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i32 64, ptr %i.ak, align 8, !tbaa !392, !alias.scope !1554
  store i64 1, ptr %8, align 8, !alias.scope !1554
  store i8 0, ptr %i.al, align 8, !tbaa !394, !alias.scope !1554
  %i.ei = call noundef ptr @_ZNK4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.eg) #25 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i, label %_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i

_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i: ; preds = %bb.u
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 88
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !135
  %i.el = icmp eq i8 %i.ek, 5
  br i1 %i.el, label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i, label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i

_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 128
  %i.en = load i8, ptr %i.em, align 8, !tbaa !149
  %i.eo = icmp eq i8 %i.en, 81
  br i1 %i.eo, label %bb.v, label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i

bb.v:                                             ; preds = %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i
  %i.ep = getelementptr inbounds i8, ptr %i.eg, i64 -56
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !75
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !157
  br label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i

_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i: ; preds = %bb.v, %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i, %_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i, %bb.u
  %.0.i.i = phi ptr [ %i.er, %bb.v ], [ %i.eg, %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i ], [ %i.eg, %bb.u ], [ %i.eg, %_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.et = load i8, ptr %i.es, align 8, !tbaa !319
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i, label %_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEEbPT_RKT0_.exit

_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i: ; preds = %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !107 ; 3 uses
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !112
  %i.ex = icmp eq i8 %i.ew, 5
  br i1 %i.ex, label %_ZN4llvm8dyn_castINS_13VPConstantIntEKNS_7VPValueEEEDcPT0_.exit.i.i, label %_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEEbPT_RKT0_.exit

_ZN4llvm8dyn_castINS_13VPConstantIntEKNS_7VPValueEEEDcPT0_.exit.i.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !392
  %.not14.i.i = icmp eq i32 %i.ez, 1
  br i1 %.not14.i.i, label %bb.w, label %_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEEbPT_RKT0_.exit

bb.w:                                             ; preds = %_ZN4llvm8dyn_castINS_13VPConstantIntEKNS_7VPValueEEEDcPT0_.exit.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.fb = load i8, ptr %i.al, align 8, !tbaa !394, !range !254, !noundef !255
  %i.fc = trunc nuw i8 %i.fb to i1
  %i.fd = call noundef zeroext i1 @_ZN4llvm5APInt11isSameValueERKS0_S2_b(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(12) %i.fa, i1 noundef zeroext %i.fc)
  br label %_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEEbPT_RKT0_.exit

_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEEbPT_RKT0_.exit: ; preds = %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i, %_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i, %_ZN4llvm8dyn_castINS_13VPConstantIntEKNS_7VPValueEEEDcPT0_.exit.i.i, %bb.w
  %.010.i.i = phi i1 [ false, %_ZN4llvm8dyn_castINS_13VPConstantIntEKNS_7VPValueEEEDcPT0_.exit.i.i ], [ %i.fd, %bb.w ], [ false, %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i ], [ false, %_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i ]
  %i.fe = load i32, ptr %i.ak, align 8, !tbaa !392
  %i.ff = icmp ugt i32 %i.fe, 64
  br i1 %i.ff, label %bb.x, label %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj1EED2Ev.exit

bb.x:                                             ; preds = %_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEEbPT_RKT0_.exit
  %i.fg = load ptr, ptr %8, align 8, !tbaa !155   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj1EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.fg) #28
  br label %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj1EED2Ev.exit

_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj1EED2Ev.exit: ; preds = %_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEEbPT_RKT0_.exit, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.010.i.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj1EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store i32 64, ptr %i.am, align 8, !tbaa !392, !alias.scope !1555
  store i64 0, ptr %9, align 8, !alias.scope !1555
  store i8 0, ptr %i.an, align 8, !tbaa !394, !alias.scope !1555
  %i.fi = call noundef ptr @_ZNK4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.eg) #25 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i78 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i78, label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i80, label %_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i79

_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i79: ; preds = %bb.z
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 88
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !135
  %i.fl = icmp eq i8 %i.fk, 5
  br i1 %i.fl, label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i87, label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i80

_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i87: ; preds = %_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i79
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eg, i64 128
  %i.fn = load i8, ptr %i.fm, align 8, !tbaa !149
  %i.fo = icmp eq i8 %i.fn, 81
  br i1 %i.fo, label %bb.aa, label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i80

bb.aa:                                            ; preds = %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i87
  %i.fp = getelementptr inbounds i8, ptr %i.eg, i64 -56
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !75
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !157
  br label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i80

_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i80: ; preds = %bb.aa, %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i87, %_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i79, %bb.z
  %.0.i.i81 = phi ptr [ %i.fr, %bb.aa ], [ %i.eg, %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i87 ], [ %i.eg, %bb.z ], [ %i.eg, %_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i79 ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i81, i64 8
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !319
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i82 = icmp eq i8 %i.ft, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i82, label %_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i84, label %_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEEbPT_RKT0_.exit88

_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i84: ; preds = %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i80
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i.i81, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !107 ; 3 uses
  %i.fw = load i8, ptr %i.fv, align 8, !tbaa !112
  %i.fx = icmp eq i8 %i.fw, 5
  br i1 %i.fx, label %_ZN4llvm8dyn_castINS_13VPConstantIntEKNS_7VPValueEEEDcPT0_.exit.i.i85, label %_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEEbPT_RKT0_.exit88

_ZN4llvm8dyn_castINS_13VPConstantIntEKNS_7VPValueEEEDcPT0_.exit.i.i85: ; preds = %_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i84
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !392
  %.not14.i.i86 = icmp eq i32 %i.fz, 1
  br i1 %.not14.i.i86, label %bb.ab, label %_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEEbPT_RKT0_.exit88

bb.ab:                                            ; preds = %_ZN4llvm8dyn_castINS_13VPConstantIntEKNS_7VPValueEEEDcPT0_.exit.i.i85
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.gb = load i8, ptr %i.an, align 8, !tbaa !394, !range !254, !noundef !255
  %i.gc = trunc nuw i8 %i.gb to i1
  %i.gd = call noundef zeroext i1 @_ZN4llvm5APInt11isSameValueERKS0_S2_b(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(12) %i.ga, i1 noundef zeroext %i.gc)
  br label %_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEEbPT_RKT0_.exit88

_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEEbPT_RKT0_.exit88: ; preds = %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i80, %_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i84, %_ZN4llvm8dyn_castINS_13VPConstantIntEKNS_7VPValueEEEDcPT0_.exit.i.i85, %bb.ab
  %.010.i.i83 = phi i1 [ false, %_ZN4llvm8dyn_castINS_13VPConstantIntEKNS_7VPValueEEEDcPT0_.exit.i.i85 ], [ %i.gd, %bb.ab ], [ false, %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i80 ], [ false, %_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i84 ]
  %i.ge = load i32, ptr %i.am, align 8, !tbaa !392
  %i.gf = icmp ugt i32 %i.ge, 64
  br i1 %i.gf, label %bb.ac, label %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj1EED2Ev.exit89

bb.ac:                                            ; preds = %_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEEbPT_RKT0_.exit88
  %i.gg = load ptr, ptr %9, align 8, !tbaa !155   ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj1EED2Ev.exit89, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.gg) #28
  br label %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj1EED2Ev.exit89

_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj1EED2Ev.exit89: ; preds = %_ZN4llvm17VPlanPatternMatch5matchINS_7VPValueENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEEbPT_RKT0_.exit88, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br i1 %.010.i.i83, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj1EED2Ev.exit89, %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj1EED2Ev.exit
  %.066 = phi i64 [ 1, %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj1EED2Ev.exit ], [ 0, %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj1EED2Ev.exit89 ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dg, i64 72
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !75
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.066
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !78 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 120
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !97 ; 3 uses
  %i.go = call ptr @_ZN4llvm12VPBasicBlock14getFirstNonPhiEv(ptr noundef nonnull align 8 dereferenceable(128) %i.gl) #25 ; 3 uses
  %.not175183 = icmp eq ptr %i.gn, %i.go
  br i1 %.not175183, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm4castINS_14VPPhiAccessorsENS_12VPRecipeBaseEEEDcPT0_.exit, %bb.ae
  %i.gp = icmp ne ptr %i.gn, %i.go
  %i.gq = or i1 %.0188, %i.gp
  call void @_ZN4llvm12VPBlockUtils16disconnectBlocksEPNS_11VPBlockBaseES2_(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.gl)
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !280
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -16
  %i.gt = call ptr @_ZN4llvm12VPRecipeBase15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(89) %i.gs) #25 ; 0 uses
  br label %.critedge

.lr.ph:                                           ; preds = %bb.ae, %_ZN4llvm4castINS_14VPPhiAccessorsENS_12VPRecipeBaseEEEDcPT0_.exit
  %.sroa.0144.0184 = phi ptr [ %i.he, %_ZN4llvm4castINS_14VPPhiAccessorsENS_12VPRecipeBaseEEEDcPT0_.exit ], [ %i.gn, %bb.ae ] ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0144.0184, i64 72
  %i.gv = load i8, ptr %i.gu, align 8, !tbaa !135
  switch i8 %i.gv, label %.thread.i.i.thread [
    i8 5, label %_ZN4llvm14CastIsPossibleINS_5VPPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i
    i8 4, label %_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i
  ]

_ZN4llvm14CastIsPossibleINS_5VPPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i: ; preds = %.lr.ph
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0144.0184, i64 208
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !149
  %i.gy = icmp eq i8 %i.gx, 57
  br i1 %i.gy, label %_ZN4llvm4castINS_14VPPhiAccessorsENS_12VPRecipeBaseEEEDcPT0_.exit, label %.thread.i.i.thread

_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i: ; preds = %.lr.ph
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0144.0184, i64 80
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !529, !nonnull !255, !align !432
  %i.hb = load i8, ptr %i.ha, align 8, !tbaa !112
  %i.hc = icmp eq i8 %i.hb, 87
  br i1 %i.hc, label %_ZN4llvm4castINS_14VPPhiAccessorsENS_12VPRecipeBaseEEEDcPT0_.exit, label %.thread.i.i.thread

.thread.i.i.thread:                               ; preds = %_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i, %_ZN4llvm14CastIsPossibleINS_5VPPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i, %.lr.ph
  br label %_ZN4llvm4castINS_14VPPhiAccessorsENS_12VPRecipeBaseEEEDcPT0_.exit

_ZN4llvm4castINS_14VPPhiAccessorsENS_12VPRecipeBaseEEEDcPT0_.exit: ; preds = %_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i, %_ZN4llvm14CastIsPossibleINS_5VPPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i, %.thread.i.i.thread
  %.sink = phi i64 [ 136, %.thread.i.i.thread ], [ 248, %_ZN4llvm14CastIsPossibleINS_5VPPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i ], [ 88, %_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i ]
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.0144.0184, i64 %.sink
  call void @_ZNK4llvm14VPPhiAccessors22removeIncomingValueForEPNS_11VPBlockBaseE(ptr noundef nonnull align 8 dereferenceable(8) %spec.select, ptr noundef nonnull %i.dg) #25
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0144.0184, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !97 ; 2 uses
  %.not175 = icmp eq ptr %i.he, %i.go
  br i1 %.not175, label %._crit_edge, label %.lr.ph

.critedge:                                        ; preds = %bb.o, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i, %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i, %.critedge.i.i, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEEEELj79ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i.i, %bb.n, %bb.p, %bb.m, %._crit_edge, %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj1EED2Ev.exit89, %bb.t
  %.2 = phi i1 [ %.0188, %bb.m ], [ %.0188, %bb.t ], [ %.0188, %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj1EED2Ev.exit89 ], [ %i.gq, %._crit_edge ], [ %.0188, %bb.p ], [ %.0188, %bb.n ], [ %.0188, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEEEELj79ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i.i ], [ %.0188, %.critedge.i.i ], [ %.0188, %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i ], [ %.0188, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i ], [ %.0188, %bb.o ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0153.0187, i64 8 ; 3 uses
  %.not1.i.i.i = icmp eq ptr %i.hf, %i.ae
  br i1 %.not1.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS1_IPPNS_11VPBlockBaseEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockERNS_11SmallVectorIS4_Lj6EEEEEDaOT0_EUlS4_E_RS3_EEZNS7_IS8_SB_EEDaSD_EUlSF_E_St26bidirectional_iterator_tagEEZNS7_IS8_SB_EEDaSD_EUlSF_E0_PS8_EESJ_SI_SL_lPSL_SL_EppEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge, %bb.af
  %.sroa.0153.1 = phi ptr [ %i.hk, %bb.af ], [ %i.hf, %.critedge ] ; 3 uses
  %i.hg = load ptr, ptr %.sroa.0153.1, align 8, !tbaa !78
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 104
  %i.hi = load i8, ptr %i.hh, align 8, !tbaa !92
  %i.hj = add i8 %i.hi, -1
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.hj, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS1_IPPNS_11VPBlockBaseEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockERNS_11SmallVectorIS4_Lj6EEEEEDaOT0_EUlS4_E_RS3_EEZNS7_IS8_SB_EEDaSD_EUlSF_E_St26bidirectional_iterator_tagEEZNS7_IS8_SB_EEDaSD_EUlSF_E0_PS8_EESJ_SI_SL_lPSL_SL_EppEv.exit, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0153.1, i64 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.hk, %i.ae
  br i1 %.not.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS1_IPPNS_11VPBlockBaseEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockERNS_11SmallVectorIS4_Lj6EEEEEDaOT0_EUlS4_E_RS3_EEZNS7_IS8_SB_EEDaSD_EUlSF_E_St26bidirectional_iterator_tagEEZNS7_IS8_SB_EEDaSD_EUlSF_E0_PS8_EESJ_SI_SL_lPSL_SL_EppEv.exit, label %.lr.ph.i.i.i, !llvm.loop !1535

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS1_IPPNS_11VPBlockBaseEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockERNS_11SmallVectorIS4_Lj6EEEEEDaOT0_EUlS4_E_RS3_EEZNS7_IS8_SB_EEDaSD_EUlSF_E_St26bidirectional_iterator_tagEEZNS7_IS8_SB_EEDaSD_EUlSF_E0_PS8_EESJ_SI_SL_lPSL_SL_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.af, %.critedge
  %.sroa.0153.2 = phi ptr [ %i.hf, %.critedge ], [ %i.hk, %bb.af ], [ %.sroa.0153.1, %.lr.ph.i.i.i ] ; 2 uses
  %.not167 = icmp eq ptr %.sroa.0153.2, %i.ae
  br i1 %.not167, label %._crit_edge190, label %bb.m

._crit_edge228:                                   ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_11VPBlockBaseEE8containsEPKS1_.exit.thread165
  %.pre247 = load ptr, ptr %i.bn, align 8, !tbaa !75 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm7VPValueE, i64 16), ptr %12, align 8, !tbaa !159
  %i.hl = icmp eq ptr %.pre247, %i.bo
  br i1 %i.hl, label %_ZN4llvm7VPValueD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge228
  call void @free(ptr noundef %.pre247) #25, !inline_history !530
  br label %_ZN4llvm7VPValueD2Ev.exit

_ZN4llvm7VPValueD2Ev.exit:                        ; preds = %_ZN4llvm14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS5_EEEEED2Ev.exit77, %._crit_edge228, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.hm = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !253, !range !254, !noundef !255
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm7VPValueD2Ev.exit
  %i.hp = load ptr, ptr %10, align 8, !tbaa !256
  call void @free(ptr noundef %i.hp) #25
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvm7VPValueD2Ev.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.hq = load ptr, ptr %6, align 8, !tbaa !75    ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj6EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  call void @free(ptr noundef %i.hq) #25
  br label %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj6EED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ht = load i8, ptr %i.a, align 8, !tbaa !521, !range !254, !noundef !255
  %i.hu = trunc nuw i8 %i.ht to i1
  store i8 0, ptr %i.a, align 8, !tbaa !521
  br i1 %i.hu, label %bb.aj, label %_ZNSt14_Optional_baseIN4llvm15VPDominatorTreeELb0ELb0EED2Ev.exit

bb.aj:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj6EED2Ev.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 3 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !75 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !76 ; 2 uses
  %i.hz = zext i32 %i.hy to i64
  %.idx.i127 = shl nuw nsw i64 %i.hz, 3
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.idx.i127
  %.not6.i.i = icmp eq i32 %i.hy, 0
  br i1 %.not6.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i, label %.lr.ph.i.i128

.lr.ph.i.i128:                                    ; preds = %bb.aj, %.lr.ph.i.i128
  %.07.i.i = phi ptr [ %i.ik, %.lr.ph.i.i128 ], [ %i.hw, %bb.aj ] ; 3 uses
  %i.ib = load ptr, ptr %i.hv, align 8, !tbaa !75
  %i.ic = ptrtoint ptr %.07.i.i to i64
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = sub i64 %i.ic, %i.id
  %sum.shift.i.i = lshr i64 %i.ie, 4
  %i.if = trunc i64 %sum.shift.i.i to i32
  %i.ig = and i32 %i.if, 2147483647
  %i.ih = call i32 @llvm.umin.i32(i32 %i.ig, i32 30)
  %.sroa.speculated.i.i.i = zext nneg i32 %i.ih to i64
  %i.ii = shl nuw nsw i64 448, %.sroa.speculated.i.i.i
  %i.ij = load ptr, ptr %.07.i.i, align 8, !tbaa !305
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ij, i64 noundef %i.ii, i64 noundef 16) #25
  %i.ik = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %.not.i.i129 = icmp eq ptr %i.ik, %i.ia
  br i1 %.not.i.i129, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i, label %.lr.ph.i.i128, !llvm.loop !14

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i: ; preds = %.lr.ph.i.i128, %bb.aj
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !75 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 200
  %i.io = load i32, ptr %i.in, align 8, !tbaa !76 ; 2 uses
  %i.ip = zext i32 %i.io to i64
  %.idx.i.i130 = shl nuw nsw i64 %i.ip, 4
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 %.idx.i.i130
  %.not10.i.i = icmp eq i32 %i.io, 0
  br i1 %.not10.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i, label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i, %.lr.ph.i1.i
  %.011.i.i = phi ptr [ %i.iu, %.lr.ph.i1.i ], [ %i.im, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i ] ; 3 uses
  %i.ir = load ptr, ptr %.011.i.i, align 8, !tbaa !493
  %i.is = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.it = load i64, ptr %i.is, align 8, !tbaa !494
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ir, i64 noundef %i.it, i64 noundef 16) #25
  %i.iu = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.iu, %i.iq
  br i1 %.not.i2.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i, label %.lr.ph.i1.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i: ; preds = %.lr.ph.i1.i
  %.pre.i = load ptr, ptr %i.il, align 8, !tbaa !75
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i
  %i.iv = phi ptr [ %.pre.i, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i ], [ %i.im, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.ix = icmp eq ptr %i.iv, %i.iw
  br i1 %i.ix, label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i
  call void @free(ptr noundef %i.iv) #25
  br label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i: ; preds = %bb.ak, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i
  %i.iy = load ptr, ptr %i.hv, align 8, !tbaa !75 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i
  call void @free(ptr noundef %i.iy) #25
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i, %bb.al
  %i.jb = getelementptr inbounds nuw i8, ptr %5, i64 108
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !495 ; 2 uses
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev.exit
  %i.je = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !496
  %i.jg = zext i32 %i.jc to i64                   ; 2 uses
  %i.jh = shl nuw nsw i64 %i.jg, 4
  %i.ji = add nuw nsw i64 %i.jg, 31
  %i.jj = lshr i64 %i.ji, 3
  %i.jk = and i64 %i.jj, 1073741820
  %i.jl = add nuw nsw i64 %i.jk, %i.jh
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.jf, i64 noundef %i.jl, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i.i.i.i.i

_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i.i.i.i.i: ; preds = %bb.am, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev.exit
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !75 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_11VPBlockBaseEEELj6EED2Ev.exit.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i.i.i.i.i
  call void @free(ptr noundef %i.jn) #25
  br label %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_11VPBlockBaseEEELj6EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_11VPBlockBaseEEELj6EED2Ev.exit.i.i.i.i.i: ; preds = %bb.an, %_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i.i.i.i.i
  %i.jq = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZNSt14_Optional_baseIN4llvm15VPDominatorTreeELb0ELb0EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_11VPBlockBaseEEELj6EED2Ev.exit.i.i.i.i.i
  call void @free(ptr noundef %i.jq) #25
  br label %_ZNSt14_Optional_baseIN4llvm15VPDominatorTreeELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm15VPDominatorTreeELb0ELb0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj6EED2Ev.exit, %_ZN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_11VPBlockBaseEEELj6EED2Ev.exit.i.i.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i1 %.0.lcssa

bb.ap:                                            ; preds = %.lr.ph227, %_ZNK4llvm15SmallPtrSetImplIPNS_11VPBlockBaseEE8containsEPKS1_.exit.thread165
  %.065226 = phi ptr [ %i.bu, %.lr.ph227 ], [ %i.uh, %_ZNK4llvm15SmallPtrSetImplIPNS_11VPBlockBaseEE8containsEPKS1_.exit.thread165 ] ; 2 uses
  %i.jt = load ptr, ptr %.065226, align 8, !tbaa !78 ; 13 uses
  %i.ju = load i8, ptr %i.by, align 8, !tbaa !253, !range !254, !noundef !255
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %bb.aq, label %_ZNK4llvm15SmallPtrSetImplIPNS_11VPBlockBaseEE8containsEPKS1_.exit

bb.aq:                                            ; preds = %bb.ap
  %i.jw = load ptr, ptr %10, align 8, !tbaa !256  ; 2 uses
  %i.jx = load i32, ptr %i.bz, align 4, !tbaa !302 ; 2 uses
  %i.jy = zext i32 %i.jx to i64
  %.idx.i.i = shl nuw nsw i64 %i.jy, 3
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx.i.i
  %.not17.i.i = icmp eq i32 %i.jx, 0
  br i1 %.not17.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_11VPBlockBaseEE8containsEPKS1_.exit.thread, label %.lr.ph.i.i

bb.ar:                                            ; preds = %.lr.ph.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %.01218.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ka, %i.jz
  br i1 %.not.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_11VPBlockBaseEE8containsEPKS1_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aq, %bb.ar
  %.01218.i.i = phi ptr [ %i.ka, %bb.ar ], [ %i.jw, %bb.aq ] ; 2 uses
  %i.kb = load ptr, ptr %.01218.i.i, align 8, !tbaa !305
  %.not15.i.i = icmp eq ptr %i.kb, %i.jt
  br i1 %.not15.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_11VPBlockBaseEE8containsEPKS1_.exit.thread165, label %bb.ar

_ZNK4llvm15SmallPtrSetImplIPNS_11VPBlockBaseEE8containsEPKS1_.exit: ; preds = %bb.ap
  %i.kc = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %10, ptr noundef %i.jt) #25
  %.not168 = icmp eq ptr %i.kc, null
  br i1 %.not168, label %_ZNK4llvm15SmallPtrSetImplIPNS_11VPBlockBaseEE8containsEPKS1_.exit.thread, label %_ZNK4llvm15SmallPtrSetImplIPNS_11VPBlockBaseEE8containsEPKS1_.exit.thread165

_ZNK4llvm15SmallPtrSetImplIPNS_11VPBlockBaseEE8containsEPKS1_.exit.thread: ; preds = %bb.ar, %bb.aq, %_ZNK4llvm15SmallPtrSetImplIPNS_11VPBlockBaseEE8containsEPKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jt, i64 72 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !75
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jt, i64 80 ; 4 uses
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !76 ; 4 uses
  %i.kh = zext i32 %i.kg to i64                   ; 2 uses
  store ptr %i.ca, ptr %13, align 8, !tbaa !75, !alias.scope !1556
  store i32 0, ptr %i.cb, align 8, !tbaa !76, !alias.scope !1556
  store i32 6, ptr %i.cc, align 4, !tbaa !77, !alias.scope !1556
  %.idx = shl nuw nsw i64 %i.kh, 3
  %i.ki = icmp ugt i32 %i.kg, 6
  br i1 %i.ki, label %_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE7reserveEm.exit.i.i.i.thread, label %_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE7reserveEm.exit.i.i.i.thread: ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_11VPBlockBaseEE8containsEPKS1_.exit.thread
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull %i.ca, i64 noundef %i.kh, i64 noundef 8) #25
  %.pre8.pre.i.i.i = load i32, ptr %i.cb, align 8, !tbaa !76, !alias.scope !1556
  %.pre243.pre = load ptr, ptr %13, align 8, !tbaa !75
  %i.kj = zext i32 %.pre8.pre.i.i.i to i64
  br label %bb.as

_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE7reserveEm.exit.i.i.i: ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_11VPBlockBaseEE8containsEPKS1_.exit.thread
  %.not.i.i.i.i = icmp eq i32 %i.kg, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm9to_vectorINS_14iterator_rangeIPPNS_11VPBlockBaseEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE7reserveEm.exit.i.i.i.thread, %_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE7reserveEm.exit.i.i.i
  %.pre8.i.i.i318 = phi i64 [ %i.kj, %_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE7reserveEm.exit.i.i.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE7reserveEm.exit.i.i.i ]
  %.pre243317 = phi ptr [ %.pre243.pre, %_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE7reserveEm.exit.i.i.i.thread ], [ %i.ca, %_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE7reserveEm.exit.i.i.i ]
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.pre243317, i64 %.pre8.i.i.i318
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kk, ptr align 8 %i.ke, i64 %.idx, i1 false)
  %.pre.i.i.i = load i32, ptr %i.cb, align 8, !tbaa !76, !alias.scope !1556
  %.pre = load ptr, ptr %13, align 8, !tbaa !75
  br label %_ZN4llvm9to_vectorINS_14iterator_rangeIPPNS_11VPBlockBaseEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit

_ZN4llvm9to_vectorINS_14iterator_rangeIPPNS_11VPBlockBaseEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE7reserveEm.exit.i.i.i, %bb.as
  %i.kl = phi ptr [ %i.ca, %_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE7reserveEm.exit.i.i.i ], [ %.pre, %bb.as ] ; 3 uses
  %i.km = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i, %bb.as ]
  %i.kn = add i32 %i.km, %i.kg                    ; 3 uses
  store i32 %i.kn, ptr %i.cb, align 8, !tbaa !76, !alias.scope !1556
  %i.ko = zext i32 %i.kn to i64
  %.idx230.a = shl nuw nsw i64 %i.ko, 3
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 %.idx230.a
  %.not68212 = icmp eq i32 %i.kn, 0
  br i1 %.not68212, label %._crit_edge215, label %.lr.ph214

._crit_edge215.loopexit:                          ; preds = %_ZN4llvm12VPBlockUtils16disconnectBlocksEPNS_11VPBlockBaseES2_.exit
  %.pre244.a = load ptr, ptr %13, align 8, !tbaa !75
  br label %._crit_edge215

._crit_edge215:                                   ; preds = %._crit_edge215.loopexit, %_ZN4llvm9to_vectorINS_14iterator_rangeIPPNS_11VPBlockBaseEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit
  %i.kq = phi ptr [ %.pre244.a, %._crit_edge215.loopexit ], [ %i.kl, %_ZN4llvm9to_vectorINS_14iterator_rangeIPPNS_11VPBlockBaseEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit ] ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.ca
  br i1 %i.kr, label %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj6EED2Ev.exit92, label %bb.at

bb.at:                                            ; preds = %._crit_edge215
  call void @free(ptr noundef %i.kq) #25
  br label %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj6EED2Ev.exit92

_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj6EED2Ev.exit92: ; preds = %._crit_edge215, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !1557
  store ptr %i.jt, ptr %2, align 8, !tbaa !73, !noalias !1557
  call void @_ZN4llvm11depth_firstINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEEEENS_14iterator_rangeINS_11df_iteratorIT_NS_23df_iterator_default_setINS_11GraphTraitsIS7_E7NodeRefELj8EEELb0ESA_EEEERKS7_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.114") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1557
  call void @_ZN4llvm12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS_14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS7_Lj8EEELb0ENS_11GraphTraitsIS8_EEEEEEEEDaOT0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.82") align 8 %14, ptr noundef nonnull align 8 dereferenceable(224) %15)
  %i.ks = load ptr, ptr %i.ce, align 8, !tbaa !249 ; 3 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i.i.i93, label %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EED2Ev.exit.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj6EED2Ev.exit92
  %i.kt = load ptr, ptr %i.cf, align 8, !tbaa !250
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = ptrtoint ptr %i.ks to i64
  %i.kw = sub i64 %i.ku, %i.kv
  call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef %i.kw) #28
  br label %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EED2Ev.exit.i.i

_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EED2Ev.exit.i.i: ; preds = %bb.au, %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj6EED2Ev.exit92
  %i.kx = load i8, ptr %i.cg, align 8, !tbaa !253, !range !254, !noundef !255
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %_ZN4llvm11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEED2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EED2Ev.exit.i.i
  %i.kz = load ptr, ptr %i.cd, align 8, !tbaa !256
  call void @free(ptr noundef %i.kz) #25
  br label %_ZN4llvm11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEED2Ev.exit.i

_ZN4llvm11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEED2Ev.exit.i: ; preds = %bb.av, %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EED2Ev.exit.i.i
  %i.la = load ptr, ptr %i.ch, align 8, !tbaa !249 ; 3 uses
  %.not.i.i.i.i1.i94 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i.i1.i94, label %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EED2Ev.exit.i2.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEED2Ev.exit.i
  %i.lb = load ptr, ptr %i.ci, align 8, !tbaa !250
  %i.lc = ptrtoint ptr %i.lb to i64
  %i.ld = ptrtoint ptr %i.la to i64
  %i.le = sub i64 %i.lc, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.le) #28
  br label %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EED2Ev.exit.i2.i

_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EED2Ev.exit.i2.i: ; preds = %bb.aw, %_ZN4llvm11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEED2Ev.exit.i
  %i.lf = load i8, ptr %i.cj, align 8, !tbaa !253, !range !254, !noundef !255
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %_ZN4llvm14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS5_EEEEED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EED2Ev.exit.i2.i
  %i.lh = load ptr, ptr %15, align 8, !tbaa !256
  call void @free(ptr noundef %i.lh) #25
  br label %_ZN4llvm14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS5_EEEEED2Ev.exit

_ZN4llvm14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS5_EEEEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EED2Ev.exit.i2.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1558)
  call void @_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS_14iterator_rangeISB_EEEEDaOT0_EUlS5_E_RS4_EEZNSD_ISE_SG_EEDaSI_EUlSK_E_St20forward_iterator_tagEC2ERKSO_(ptr noundef nonnull align 8 dereferenceable(250) %16, ptr noundef nonnull align 8 dereferenceable(512) %14)
  %i.li = load i16, ptr %i.cl, align 8, !noalias !1558
  store i16 %i.li, ptr %i.ck, align 8, !alias.scope !1558
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  call void @_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS_14iterator_rangeISB_EEEEDaOT0_EUlS5_E_RS4_EEZNSD_ISE_SG_EEDaSI_EUlSK_E_St20forward_iterator_tagEC2ERKSO_(ptr noundef nonnull align 8 dereferenceable(250) %17, ptr noundef nonnull align 8 dereferenceable(250) %i.cm)
  %i.lj = load i16, ptr %i.co, align 8, !noalias !1559
  store i16 %i.lj, ptr %i.cn, align 8, !alias.scope !1559
  %.pre245.a = load ptr, ptr %i.cr, align 8, !tbaa !257
  %.pre246 = load ptr, ptr %i.cp, align 8, !tbaa !249
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS1_INS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS_14iterator_rangeISC_EEEEDaOT0_EUlS6_E_RS5_EEZNSE_ISF_SH_EEDaSJ_EUlSL_E_St20forward_iterator_tagEEZNSE_ISF_SH_EEDaSJ_EUlSL_E0_PSF_EESP_SO_SR_lPSR_SR_EppEv.exit

.lr.ph214:                                        ; preds = %_ZN4llvm9to_vectorINS_14iterator_rangeIPPNS_11VPBlockBaseEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit, %_ZN4llvm12VPBlockUtils16disconnectBlocksEPNS_11VPBlockBaseES2_.exit
  %.064213 = phi ptr [ %i.pk, %_ZN4llvm12VPBlockUtils16disconnectBlocksEPNS_11VPBlockBaseES2_.exit ], [ %i.kl, %_ZN4llvm9to_vectorINS_14iterator_rangeIPPNS_11VPBlockBaseEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit ] ; 2 uses
  %i.lk = load ptr, ptr %.064213, align 8, !tbaa !78 ; 13 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 104
  %i.lm = load i8, ptr %i.ll, align 8, !tbaa !92
  %i.ln = add i8 %i.lm, -3
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i8 %i.ln, -2
  %.not70170 = icmp eq ptr %i.lk, null
  %.not70 = or i1 %.not70170, %spec.select.i.i.i.i.i.i.i.i
  br i1 %.not70, label %.loopexit178, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph214
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 120
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !97 ; 2 uses
  %i.lq = call ptr @_ZN4llvm12VPBasicBlock14getFirstNonPhiEv(ptr noundef nonnull align 8 dereferenceable(128) %i.lk) #25 ; 2 uses
  %.not171191 = icmp eq ptr %i.lp, %i.lq
  br i1 %.not171191, label %.loopexit178, label %.lr.ph195

.lr.ph195:                                        ; preds = %bb.ay, %_ZN4llvm4castINS_14VPPhiAccessorsENS_12VPRecipeBaseEEEDcPT0_.exit109
  %.sroa.0136.0192 = phi ptr [ %i.mb, %_ZN4llvm4castINS_14VPPhiAccessorsENS_12VPRecipeBaseEEEDcPT0_.exit109 ], [ %i.lp, %bb.ay ] ; 5 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0136.0192, i64 72
  %i.ls = load i8, ptr %i.lr, align 8, !tbaa !135
  switch i8 %i.ls, label %.thread.i.i100.thread [
    i8 5, label %_ZN4llvm14CastIsPossibleINS_5VPPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i107
    i8 4, label %_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i99
  ]

_ZN4llvm14CastIsPossibleINS_5VPPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i107: ; preds = %.lr.ph195
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0136.0192, i64 208
  %i.lu = load i8, ptr %i.lt, align 8, !tbaa !149
  %i.lv = icmp eq i8 %i.lu, 57
  br i1 %i.lv, label %_ZN4llvm4castINS_14VPPhiAccessorsENS_12VPRecipeBaseEEEDcPT0_.exit109, label %.thread.i.i100.thread

_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i99: ; preds = %.lr.ph195
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0136.0192, i64 80
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !529, !nonnull !255, !align !432
  %i.ly = load i8, ptr %i.lx, align 8, !tbaa !112
  %i.lz = icmp eq i8 %i.ly, 87
  br i1 %i.lz, label %_ZN4llvm4castINS_14VPPhiAccessorsENS_12VPRecipeBaseEEEDcPT0_.exit109, label %.thread.i.i100.thread

.thread.i.i100.thread:                            ; preds = %_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i99, %_ZN4llvm14CastIsPossibleINS_5VPPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i107, %.lr.ph195
  br label %_ZN4llvm4castINS_14VPPhiAccessorsENS_12VPRecipeBaseEEEDcPT0_.exit109

_ZN4llvm4castINS_14VPPhiAccessorsENS_12VPRecipeBaseEEEDcPT0_.exit109: ; preds = %_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i99, %_ZN4llvm14CastIsPossibleINS_5VPPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i107, %.thread.i.i100.thread
  %.sink337 = phi i64 [ 136, %.thread.i.i100.thread ], [ 248, %_ZN4llvm14CastIsPossibleINS_5VPPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i107 ], [ 88, %_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPNS_12VPRecipeBaseEvE10isPossibleERKS3_.exit.i.i.i.i99 ]
  %spec.select177 = getelementptr inbounds nuw i8, ptr %.sroa.0136.0192, i64 %.sink337
  call void @_ZNK4llvm14VPPhiAccessors22removeIncomingValueForEPNS_11VPBlockBaseE(ptr noundef nonnull align 8 dereferenceable(8) %spec.select177, ptr noundef nonnull %i.jt) #25
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0136.0192, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !97 ; 2 uses
  %.not171 = icmp eq ptr %i.mb, %i.lq
  br i1 %.not171, label %.loopexit178, label %.lr.ph195

.loopexit178:                                     ; preds = %_ZN4llvm4castINS_14VPPhiAccessorsENS_12VPRecipeBaseEEEDcPT0_.exit109, %bb.ay, %.lr.ph214
  %i.mc = load ptr, ptr %i.kd, align 8, !tbaa !75 ; 5 uses
  %i.md = load i32, ptr %i.kf, align 8, !tbaa !76 ; 5 uses
  %i.me = zext i32 %i.md to i64                   ; 3 uses
  %.idx3.i.i.i = shl nuw nsw i64 %i.me, 3         ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 %.idx3.i.i.i
  %i.mg = lshr i64 %i.me, 2                       ; 2 uses
  %.not.i.i.i110 = icmp eq i64 %i.mg, 0
  br i1 %.not.i.i.i110, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.loopexit178
  %i.mh = and i64 %.idx3.i.i.i, 34359738336
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.mc, i64 %i.mh
  br label %bb.az

bb.az:                                            ; preds = %bb.bd, %.lr.ph.i.i.i.i.i.i
  %.047.i.i.i.i.i.i = phi i64 [ %i.mg, %.lr.ph.i.i.i.i.i.i ], [ %i.mu, %bb.bd ] ; 2 uses
  %.02946.i.i.i.i.i.i = phi ptr [ %i.mc, %.lr.ph.i.i.i.i.i.i ], [ %i.mt, %bb.bd ] ; 9 uses
  %i.mi = load ptr, ptr %.02946.i.i.i.i.i.i, align 8, !tbaa !78
  %i.mj = icmp eq ptr %i.mi, %i.lk
  br i1 %i.mj, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mk = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !78
  %i.mm = icmp eq ptr %i.ml, %i.lk
  br i1 %i.mm, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i.loopexit.split.loop.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !78
  %i.mp = icmp eq ptr %i.mo, %i.lk
  br i1 %i.mp, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i.loopexit.split.loop.exit328, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 24
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !78
  %i.ms = icmp eq ptr %i.mr, %i.lk
  br i1 %i.ms, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i.loopexit.split.loop.exit330, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mt = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 32
  %i.mu = add nsw i64 %.047.i.i.i.i.i.i, -1
  %i.mv = icmp sgt i64 %.047.i.i.i.i.i.i, 1
  br i1 %i.mv, label %bb.az, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !4

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.bd
  %i.mw = and i32 %i.md, 3
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %.loopexit178
  %.pre-phi56.i.i.i.i.i.i = phi i32 [ %i.mw, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.md, %.loopexit178 ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.mc, %.loopexit178 ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i, label %bb.bh [
    i32 3, label %bb.be
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i
  ]

bb.be:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.mx = load ptr, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !78
  %i.my = icmp eq ptr %i.mx, %i.lk
  br i1 %i.my, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mz = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %bb.bf, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.mz, %bb.bf ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.na = load ptr, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !78
  %i.nb = icmp eq ptr %i.na, %i.lk
  br i1 %i.nb, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i:             ; preds = %bb.bg, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.nc, %bb.bg ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.nd = load ptr, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !78
  %i.ne = icmp eq ptr %i.nd, %i.lk
  br i1 %i.ne, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  br label %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i

_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.ba
  %i.nf = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 8
  br label %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i

_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i.loopexit.split.loop.exit328: ; preds = %bb.bb
  %i.ng = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 16
  br label %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i

_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i.loopexit.split.loop.exit330: ; preds = %bb.bc
  %i.nh = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 24
  br label %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i

_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i: ; preds = %bb.az, %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i.loopexit.split.loop.exit, %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i.loopexit.split.loop.exit328, %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i.loopexit.split.loop.exit330, %bb.bh, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i, %bb.be
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %i.mf, %bb.bh ], [ %.2.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i, %bb.be ], [ %i.nh, %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i.loopexit.split.loop.exit330 ], [ %i.nf, %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i.loopexit.split.loop.exit ], [ %i.ng, %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i.loopexit.split.loop.exit328 ], [ %.02946.i.i.i.i.i.i, %bb.az ] ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i.i.i, i64 8 ; 3 uses
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %i.me
  %i.nk = ptrtoint ptr %i.nj to i64
  %i.nl = ptrtoint ptr %i.ni to i64
  %i.nm = sub i64 %i.nk, %i.nl                    ; 3 uses
  %i.nn = icmp sgt i64 %i.nm, 8
  br i1 %i.nn, label %bb.bi, label %bb.bj, !prof !194

bb.bi:                                            ; preds = %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.028.i.i.i.i.i.i, ptr nonnull align 8 %i.ni, i64 %i.nm, i1 false)
  %.pre.i.i.i111 = load i32, ptr %i.kf, align 8, !tbaa !76
  br label %_ZN4llvm11VPBlockBase15removeSuccessorEPS0_.exit.i

bb.bj:                                            ; preds = %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i.i
  %i.no = icmp eq i64 %i.nm, 8
  br i1 %i.no, label %bb.bk, label %_ZN4llvm11VPBlockBase15removeSuccessorEPS0_.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.np = load ptr, ptr %i.ni, align 8, !tbaa !78
  store ptr %i.np, ptr %.028.i.i.i.i.i.i, align 8, !tbaa !78
  br label %_ZN4llvm11VPBlockBase15removeSuccessorEPS0_.exit.i

_ZN4llvm11VPBlockBase15removeSuccessorEPS0_.exit.i: ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.nq = phi i32 [ %.pre.i.i.i111, %bb.bi ], [ %i.md, %bb.bj ], [ %i.md, %bb.bk ]
  %i.nr = add i32 %i.nq, -1
  store i32 %i.nr, ptr %i.kf, align 8, !tbaa !76
  %i.ns = getelementptr inbounds nuw i8, ptr %i.lk, i64 48
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !75 ; 5 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.lk, i64 56 ; 3 uses
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !76 ; 5 uses
  %i.nw = zext i32 %i.nv to i64                   ; 3 uses
  %.idx3.i.i4.i = shl nuw nsw i64 %i.nw, 3        ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 %.idx3.i.i4.i
  %i.ny = lshr i64 %i.nw, 2                       ; 2 uses
  %.not.i.i5.i = icmp eq i64 %i.ny, 0
  br i1 %.not.i.i5.i, label %._crit_edge.i.i.i.i.i11.i, label %.lr.ph.i.i.i.i.i6.i

.lr.ph.i.i.i.i.i6.i:                              ; preds = %_ZN4llvm11VPBlockBase15removeSuccessorEPS0_.exit.i
  %i.nz = and i64 %.idx3.i.i4.i, 34359738336
  %scevgep.i.i.i.i.i7.i = getelementptr i8, ptr %i.nt, i64 %i.nz
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i.i.i.i.i6.i
  %.047.i.i.i.i.i8.i = phi i64 [ %i.ny, %.lr.ph.i.i.i.i.i6.i ], [ %i.om, %bb.bp ] ; 2 uses
  %.02946.i.i.i.i.i9.i = phi ptr [ %i.nt, %.lr.ph.i.i.i.i.i6.i ], [ %i.ol, %bb.bp ] ; 9 uses
  %i.oa = load ptr, ptr %.02946.i.i.i.i.i9.i, align 8, !tbaa !78
  %i.ob = icmp eq ptr %i.oa, %i.jt
  br i1 %i.ob, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i16.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.oc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i9.i, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !78
  %i.oe = icmp eq ptr %i.od, %i.jt
  br i1 %i.oe, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i16.i.loopexit.split.loop.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.of = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i9.i, i64 16
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !78
  %i.oh = icmp eq ptr %i.og, %i.jt
  br i1 %i.oh, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i16.i.loopexit.split.loop.exit336, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.oi = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i9.i, i64 24
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !78
  %i.ok = icmp eq ptr %i.oj, %i.jt
  br i1 %i.ok, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i16.i.loopexit.split.loop.exit338, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ol = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i9.i, i64 32
  %i.om = add nsw i64 %.047.i.i.i.i.i8.i, -1
  %i.on = icmp sgt i64 %.047.i.i.i.i.i8.i, 1
  br i1 %i.on, label %bb.bl, label %._crit_edge.loopexit.i.i.i.i.i10.i, !llvm.loop !4

._crit_edge.loopexit.i.i.i.i.i10.i:               ; preds = %bb.bp
  %i.oo = and i32 %i.nv, 3
  br label %._crit_edge.i.i.i.i.i11.i

._crit_edge.i.i.i.i.i11.i:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i10.i, %_ZN4llvm11VPBlockBase15removeSuccessorEPS0_.exit.i
  %.pre-phi56.i.i.i.i.i12.i = phi i32 [ %i.oo, %._crit_edge.loopexit.i.i.i.i.i10.i ], [ %i.nv, %_ZN4llvm11VPBlockBase15removeSuccessorEPS0_.exit.i ]
  %.029.lcssa.i.i.i.i.i13.i = phi ptr [ %scevgep.i.i.i.i.i7.i, %._crit_edge.loopexit.i.i.i.i.i10.i ], [ %i.nt, %_ZN4llvm11VPBlockBase15removeSuccessorEPS0_.exit.i ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i12.i, label %bb.bt [
    i32 3, label %bb.bq
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i19.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i14.i
  ]

bb.bq:                                            ; preds = %._crit_edge.i.i.i.i.i11.i
  %i.op = load ptr, ptr %.029.lcssa.i.i.i.i.i13.i, align 8, !tbaa !78
  %i.oq = icmp eq ptr %i.op, %i.jt
  br i1 %i.oq, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_11VPBlockBaseELj1EEES3_EEDaOT_RKT0_.exit.i16.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.or = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i13.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i19.i
end_hunk_2
begin_hunk_3_@_ZN4llvm15VPlanTransforms22createInterleaveGroupsERNS_5VPlanERKNS_15SmallPtrSetImplIPKNS_15InterleaveGroupINS_11InstructionEEEEERKb:bb.a
  %i.ha = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ha, %i.ga
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS1_INS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS_14iterator_rangeISC_EEEEDaOT0_EUlS6_E_RS5_EEZNSE_ISF_SH_EEDaSJ_EUlSL_E_St20forward_iterator_tagEEZNSE_ISF_SH_EEDaSJ_EUlSL_E0_PSF_EESP_SO_SR_lPSR_SR_EppEv.exit.backedge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !16

.loopexit.i.i.i:                                  ; preds = %_ZSteqIPN4llvm11VPBlockBaseESt8optionalIPS2_EEbRKSt4pairIT_T0_ESB_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.s
  %i.hc = getelementptr inbounds i8, ptr %i.ga, i64 -24
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !78
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 104
  %i.hf = load i8, ptr %i.he, align 8, !tbaa !92
  %i.hg = add i8 %i.hf, -1
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.hg, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS1_INS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS_14iterator_rangeISC_EEEEDaOT0_EUlS6_E_RS5_EEZNSE_ISF_SH_EEDaSJ_EUlSL_E_St20forward_iterator_tagEEZNSE_ISF_SH_EEDaSJ_EUlSL_E0_PSF_EESP_SO_SR_lPSR_SR_EppEv.exit.backedge, label %.preheader

.preheader:                                       ; preds = %.loopexit.i.i.i, %.thread.i
  %i.hh = phi ptr [ %i.jt, %.thread.i ], [ %i.ga, %.loopexit.i.i.i ] ; 4 uses
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -24
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !539 ; 4 uses
  %i.hk = getelementptr inbounds i8, ptr %i.hh, i64 -16 ; 4 uses
  %i.hl = getelementptr inbounds i8, ptr %i.hh, i64 -8 ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 8, !tbaa !540, !range !254, !noundef !255
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %._crit_edge546, label %bb.v

._crit_edge546:                                   ; preds = %.preheader
  %.pre547 = load ptr, ptr %i.hk, align 8, !tbaa !542
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.hj, i64 72
  %.pre548 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !75
  br label %bb.w

bb.v:                                             ; preds = %.preheader
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 72
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !75 ; 3 uses
  store ptr %i.hp, ptr %i.hk, align 8, !tbaa !542
  store i8 1, ptr %i.hl, align 8, !tbaa !540
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge546, %bb.v
  %i.hq = phi ptr [ %.pre548, %._crit_edge546 ], [ %i.hp, %bb.v ]
  %i.hr = phi ptr [ %.pre547, %._crit_edge546 ], [ %i.hp, %bb.v ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 72
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hj, i64 80 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !76 ; 2 uses
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.hv
  %.not.not.i463 = icmp eq ptr %i.hr, %i.hw
  br i1 %.not.not.i463, label %.thread.i, label %.lr.ph465

.lr.ph465:                                        ; preds = %bb.w, %.critedge.i.backedge
  %i.hx = phi i32 [ %i.ip, %.critedge.i.backedge ], [ %i.hu, %bb.w ]
  %i.hy = phi ptr [ %i.iq, %.critedge.i.backedge ], [ %i.hr, %bb.w ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 2 uses
  store ptr %i.hz, ptr %i.hk, align 8, !tbaa !542
  %i.ia = load ptr, ptr %i.hy, align 8, !tbaa !78 ; 5 uses
  %i.ib = load i8, ptr %i.aw, align 8, !tbaa !253, !range !254, !noalias !2059, !noundef !255
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %bb.x, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.x:                                             ; preds = %.lr.ph465
  %i.id = load ptr, ptr %10, align 8, !tbaa !256, !noalias !2059 ; 2 uses
  %i.ie = load i32, ptr %i.ax, align 4, !tbaa !302, !noalias !2059 ; 4 uses
  %i.if = zext i32 %i.ie to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.if, 3
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %.idx.i.i.i.i ; 2 uses
  %.not22.i.i.i.i = icmp eq i32 %i.ie, 0
  br i1 %.not22.i.i.i.i, label %._crit_edge.i.i.i.i309, label %.lr.ph.i.i.i.i307

.lr.ph.i.i.i.i307:                                ; preds = %bb.x, %.critedge.i.i.i.i
  %.023.i.i.i.i = phi ptr [ %i.ii, %.critedge.i.i.i.i ], [ %i.id, %bb.x ] ; 2 uses
  %i.ih = load ptr, ptr %.023.i.i.i.i, align 8, !tbaa !305, !noalias !2059
  %.not15.i.i.i.i = icmp eq ptr %i.ih, %i.ia
  br i1 %.not15.i.i.i.i, label %.critedge.i.backedge, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i307
  %i.ii = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i308 = icmp eq ptr %i.ii, %i.ig
  br i1 %.not.i.i.i.i308, label %._crit_edge.i.i.i.i309, label %.lr.ph.i.i.i.i307

._crit_edge.i.i.i.i309:                           ; preds = %.critedge.i.i.i.i, %bb.x
  %i.ij = load i32, ptr %i.ay, align 8, !tbaa !301, !noalias !2059
  %i.ik = icmp ult i32 %i.ie, %i.ij
  br i1 %i.ik, label %.critedge38.i, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

.critedge38.i:                                    ; preds = %._crit_edge.i.i.i.i309
  %i.il = add nuw i32 %i.ie, 1
  store i32 %i.il, ptr %i.ax, align 4, !tbaa !302, !noalias !2059
  store ptr %i.ia, ptr %i.ig, align 8, !tbaa !305, !noalias !2059
  br label %.loopexit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i309, %.lr.ph465
  %i.im = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(248) %10, ptr noundef %i.ia) #25, !noalias !2059
  %i.in = extractvalue { ptr, i8 } %i.im, 1
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %.loopexit, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i..critedge.i.backedge_crit_edge

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i..critedge.i.backedge_crit_edge: ; preds = %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i
  %.pre549 = load ptr, ptr %i.hk, align 8, !tbaa !542
  %.pre550 = load i32, ptr %i.ht, align 8, !tbaa !76
  br label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %.lr.ph.i.i.i.i307, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i..critedge.i.backedge_crit_edge
  %i.ip = phi i32 [ %.pre550, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i..critedge.i.backedge_crit_edge ], [ %i.hx, %.lr.ph.i.i.i.i307 ] ; 2 uses
  %i.iq = phi ptr [ %.pre549, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i..critedge.i.backedge_crit_edge ], [ %i.hz, %.lr.ph.i.i.i.i307 ] ; 2 uses
  %i.ir = load ptr, ptr %i.hs, align 8, !tbaa !75
  %i.is = zext i32 %i.ip to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.is
  %.not.not.i = icmp eq ptr %i.iq, %i.it
  br i1 %.not.not.i, label %.thread.i.loopexit, label %.lr.ph465

.loopexit:                                        ; preds = %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i, %.critedge38.i
  %i.iu = load ptr, ptr %i.ap, align 8, !tbaa !531 ; 6 uses
  %i.iv = load ptr, ptr %i.az, align 8, !tbaa !527
  %.not.i.i.i305 = icmp eq ptr %i.iu, %i.iv
  br i1 %.not.i.i.i305, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.loopexit
  store ptr %i.ia, ptr %i.iu, align 8
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  store i8 0, ptr %.sroa.514.0..sroa_idx.i, align 8
  %i.iw = load ptr, ptr %i.ap, align 8, !tbaa !531
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24 ; 2 uses
  store ptr %i.ix, ptr %i.ap, align 8, !tbaa !531
  br label %_ZN4llvm11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEE6toNextEv.exit

bb.z:                                             ; preds = %.loopexit
  %i.iy = load ptr, ptr %i.an, align 8, !tbaa !526 ; 5 uses
  %i.iz = ptrtoint ptr %i.iu to i64
  %i.ja = ptrtoint ptr %i.iy to i64               ; 2 uses
  %i.jb = sub i64 %i.iz, %i.ja                    ; 3 uses
  %i.jc = icmp eq i64 %i.jb, 9223372036854775800
  br i1 %i.jc, label %bb.aa, label %_ZNKSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #29
  unreachable

_ZNKSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.z
  %i.jd = sdiv exact i64 %i.jb, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jd, i64 1)
  %i.je = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.jd ; 2 uses
  %i.jf = icmp ult i64 %i.je, %i.jd
  %i.jg = call i64 @llvm.umin.i64(i64 %i.je, i64 384307168202282325)
  %i.jh = select i1 %i.jf, i64 384307168202282325, i64 %i.jg ; 3 uses
  %.not.i.i.i.i.i306 = icmp ne i64 %i.jh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i306)
  %i.ji = mul nuw nsw i64 %i.jh, 24
  %i.jj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ji) #26 ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jb ; 2 uses
  store ptr %i.ia, ptr %i.jk, align 8
  %.sroa.514.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  store i8 0, ptr %.sroa.514.0..sroa_idx15.i, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.iy, %i.iu
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i9.i

.lr.ph.i.i.i.i.i.i9.i:                            ; preds = %_ZNKSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i9.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i.i9.i ], [ %i.jj, %_ZNKSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i.i9.i ], [ %i.iy, %_ZNKSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !2060
  %i.jl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i10.i = icmp eq ptr %i.jl, %i.iu
  br i1 %.not.i.i.i.i.i.i10.i, label %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i9.i, !llvm.loop !17

_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i9.i, %_ZNKSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.jj, %_ZNKSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.jm, %.lr.ph.i.i.i.i.i.i9.i ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  %i.jo = load ptr, ptr %i.az, align 8, !tbaa !527
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = sub i64 %i.jp, %i.ja
  call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef %i.jq) #28
  br label %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.ab, %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.jj, ptr %i.an, align 8, !tbaa !526
  store ptr %i.jn, ptr %i.ap, align 8, !tbaa !531
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.jj, i64 %i.jh
  store ptr %i.jr, ptr %i.az, align 8, !tbaa !527
  br label %_ZN4llvm11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEE6toNextEv.exit

.thread.i.loopexit:                               ; preds = %.critedge.i.backedge
  %.pre551 = load ptr, ptr %i.ap, align 8, !tbaa !531
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.i.loopexit, %bb.w
  %i.js = phi ptr [ %.pre551, %.thread.i.loopexit ], [ %i.hh, %bb.w ]
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 -24 ; 4 uses
  store ptr %i.jt, ptr %i.ap, align 8, !tbaa !531
  %i.ju = load ptr, ptr %i.an, align 8, !tbaa !533
  %i.jv = icmp eq ptr %i.ju, %i.jt
  br i1 %i.jv, label %_ZN4llvm11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEE6toNextEv.exit, label %.preheader, !llvm.loop !18

_ZN4llvm11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEE6toNextEv.exit: ; preds = %.thread.i, %bb.y, %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i
  %i.jw = phi ptr [ %i.jn, %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i ], [ %i.ix, %bb.y ], [ %i.jt, %.thread.i ]
  br label %bb.s, !llvm.loop !19

.lr.ph:                                           ; preds = %"_ZN4llvm17make_filter_rangeIRNS_12VPBasicBlockEZNS_15VPlanTransforms22createInterleaveGroupsERNS_5VPlanERKNS_15SmallPtrSetImplIPKNS_15InterleaveGroupINS_11InstructionEEEEERKbE3$_0EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISM_E17iterator_categoryEEESP_St20forward_iterator_tagE4typeEEEEEOSK_SN_.exit", %"_ZN4llvm20filter_iterator_baseINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12VPRecipeBaseELb0ELb0EvLb0EvEELb0ELb0EEEZNS_15VPlanTransforms22createInterleaveGroupsERNS_5VPlanERKNS_15SmallPtrSetImplIPKNS_15InterleaveGroupINS_11InstructionEEEEERKbE3$_0St26bidirectional_iterator_tagEppEv.exit"
  %.sroa.0374.0462 = phi ptr [ %.sroa.0374.2, %"_ZN4llvm20filter_iterator_baseINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12VPRecipeBaseELb0ELb0EvLb0EvEELb0ELb0EEEZNS_15VPlanTransforms22createInterleaveGroupsERNS_5VPlanERKNS_15SmallPtrSetImplIPKNS_15InterleaveGroupINS_11InstructionEEEEERKbE3$_0St26bidirectional_iterator_tagEppEv.exit" ], [ %.sroa.011.1.i, %"_ZN4llvm17make_filter_rangeIRNS_12VPBasicBlockEZNS_15VPlanTransforms22createInterleaveGroupsERNS_5VPlanERKNS_15SmallPtrSetImplIPKNS_15InterleaveGroupINS_11InstructionEEEEERKbE3$_0EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISM_E17iterator_categoryEEESP_St20forward_iterator_tagE4typeEEEEEOSK_SN_.exit" ] ; 4 uses
  %i.jx = getelementptr inbounds i8, ptr %.sroa.0374.0462, i64 -16 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.0374.0462, i64 72
  %i.jz = load i8, ptr %i.jy, align 8, !tbaa !135 ; 4 uses
  %.not394 = icmp eq i8 %i.jz, 21                 ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not394, ptr %i.jx, ptr null
  %i.ka = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 152
  br i1 %.not394, label %_ZN4llvm4castINS_19VPWidenMemoryRecipeENS_12VPRecipeBaseEEEDcPT0_.exit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph
  %.not395 = icmp eq i8 %i.jz, 20                 ; 2 uses
  %spec.select.i.i8.i.i = select i1 %.not395, ptr %i.jx, ptr null
  %i.kb = getelementptr inbounds nuw i8, ptr %spec.select.i.i8.i.i, i64 152
  br i1 %.not395, label %_ZN4llvm4castINS_19VPWidenMemoryRecipeENS_12VPRecipeBaseEEEDcPT0_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not396 = icmp eq i8 %i.jz, 23                 ; 2 uses
  %spec.select.i.i9.i.i = select i1 %.not396, ptr %i.jx, ptr null
  %i.kc = getelementptr inbounds nuw i8, ptr %spec.select.i.i9.i.i, i64 96
  br i1 %.not396, label %_ZN4llvm4castINS_19VPWidenMemoryRecipeENS_12VPRecipeBaseEEEDcPT0_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not397 = icmp eq i8 %i.jz, 22
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0374.0462, i64 80
  %spec.select3.i.i = select i1 %.not397, ptr %i.kd, ptr null
  br label %_ZN4llvm4castINS_19VPWidenMemoryRecipeENS_12VPRecipeBaseEEEDcPT0_.exit

_ZN4llvm4castINS_19VPWidenMemoryRecipeENS_12VPRecipeBaseEEEDcPT0_.exit: ; preds = %.lr.ph, %bb.ac, %bb.ad, %bb.ae
  %.0.i.i = phi ptr [ %i.ka, %.lr.ph ], [ %i.kb, %bb.ac ], [ %i.kc, %bb.ad ], [ %spec.select3.i.i, %bb.ae ] ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !614, !nonnull !255, !align !432 ; 5 uses
  %i.kg = load ptr, ptr %7, align 8, !tbaa !617, !noalias !2061 ; 3 uses
  %i.kh = load ptr, ptr %i.ar, align 8, !tbaa !618, !noalias !2061 ; 3 uses
  %i.ki = load i32, ptr %i.as, align 4, !tbaa !619, !noalias !2061 ; 4 uses
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %.loopexit.i, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm4castINS_19VPWidenMemoryRecipeENS_12VPRecipeBaseEEEDcPT0_.exit
  %i.kk = add i32 %i.ki, -1                       ; 2 uses
  %i.kl = ptrtoint ptr %i.kf to i64
  %i.km = mul i64 %i.kl, -4658895280553007687     ; 2 uses
  %i.kn = lshr i64 %i.km, 31
  %i.ko = xor i64 %i.kn, %i.km
  %i.kp = trunc i64 %i.ko to i32
  %i.kq = and i32 %i.kk, %i.kp                    ; 3 uses
  %i.kr = zext i32 %i.kq to i64                   ; 2 uses
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %i.kr ; 2 uses
  %i.kt = lshr i64 %i.kr, 5
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !197
  %i.kw = and i32 %i.kq, 31
  %i.kx = lshr i32 %i.kv, %i.kw
  %i.ky = trunc i32 %i.kx to i1
  br i1 %i.ky, label %.lr.ph.i.i313, label %.loopexit.i, !prof !290

.lr.ph.i.i313:                                    ; preds = %bb.af, %bb.ag
  %i.kz = phi ptr [ %i.lf, %bb.ag ], [ %i.ks, %bb.af ] ; 2 uses
  %.024.i.i = phi i32 [ %i.ld, %bb.ag ], [ %i.kq, %bb.af ]
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !162
  %i.lb = icmp eq ptr %i.kf, %i.la
  br i1 %i.lb, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit, label %bb.ag, !prof !194

bb.ag:                                            ; preds = %.lr.ph.i.i313
  %i.lc = add nuw i32 %.024.i.i, 1
  %i.ld = and i32 %i.lc, %i.kk                    ; 3 uses
  %i.le = zext i32 %i.ld to i64                   ; 2 uses
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %i.le ; 2 uses
  %i.lg = lshr i64 %i.le, 5
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !197
  %i.lj = and i32 %i.ld, 31
  %i.lk = lshr i32 %i.li, %i.lj
  %i.ll = trunc i32 %i.lk to i1
  br i1 %i.ll, label %.lr.ph.i.i313, label %.loopexit.i, !prof !294, !llvm.loop !1981

.loopexit.i:                                      ; preds = %bb.ag, %bb.af, %_ZN4llvm4castINS_19VPWidenMemoryRecipeENS_12VPRecipeBaseEEEDcPT0_.exit
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.ks, %bb.af ], [ null, %_ZN4llvm4castINS_19VPWidenMemoryRecipeENS_12VPRecipeBaseEEEDcPT0_.exit ], [ %i.lf, %bb.ag ]
  %i.lm = load i32, ptr %i.at, align 8, !tbaa !620
  %i.ln = shl i32 %i.lm, 2
  %i.lo = add i32 %i.ln, 4
  %i.lp = mul i32 %i.ki, 3
  %.not.i.i310 = icmp ult i32 %i.lo, %i.lp
  br i1 %.not.i.i310, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i, label %bb.ah, !prof !194

bb.ah:                                            ; preds = %.loopexit.i
  %i.lq = shl i32 %i.ki, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %7, i32 noundef %i.lq)
  %i.lr = load ptr, ptr %7, align 8, !tbaa !617, !noalias !2062 ; 5 uses
  %i.ls = load ptr, ptr %i.ar, align 8, !tbaa !618, !noalias !2062 ; 5 uses
  %i.lt = load i32, ptr %i.as, align 4, !tbaa !619, !noalias !2062 ; 2 uses
  %i.lu = icmp ne i32 %i.lt, 0
  call void @llvm.assume(i1 %i.lu)
  %i.lv = add i32 %i.lt, -1                       ; 2 uses
  %i.lw = ptrtoint ptr %i.kf to i64
  %i.lx = mul i64 %i.lw, -4658895280553007687     ; 2 uses
  %i.ly = lshr i64 %i.lx, 31
  %i.lz = xor i64 %i.ly, %i.lx
  %i.ma = trunc i64 %i.lz to i32
  %i.mb = and i32 %i.lv, %i.ma                    ; 3 uses
  %i.mc = zext i32 %i.mb to i64                   ; 2 uses
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.mc ; 2 uses
  %i.me = lshr i64 %i.mc, 5
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.me
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !197
  %i.mh = and i32 %i.mb, 31
  %i.mi = lshr i32 %i.mg, %i.mh
  %i.mj = trunc i32 %i.mi to i1
  br i1 %i.mj, label %.lr.ph.i319, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i, !prof !290

.lr.ph.i319:                                      ; preds = %bb.ah, %bb.ai
  %i.mk = phi ptr [ %i.mq, %bb.ai ], [ %i.md, %bb.ah ] ; 2 uses
  %.024.i = phi i32 [ %i.mo, %bb.ai ], [ %i.mb, %bb.ah ]
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !162
  %i.mm = icmp eq ptr %i.kf, %i.ml
  br i1 %i.mm, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i, label %bb.ai, !prof !194

bb.ai:                                            ; preds = %.lr.ph.i319
  %i.mn = add nuw i32 %.024.i, 1
  %i.mo = and i32 %i.mn, %i.lv                    ; 3 uses
  %i.mp = zext i32 %i.mo to i64                   ; 2 uses
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.mp ; 2 uses
  %i.mr = lshr i64 %i.mp, 5
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !197
  %i.mu = and i32 %i.mo, 31
  %i.mv = lshr i32 %i.mt, %i.mu
  %i.mw = trunc i32 %i.mv to i1
  br i1 %i.mw, label %.lr.ph.i319, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i, !prof !294, !llvm.loop !1981

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i: ; preds = %bb.ai, %.lr.ph.i319, %bb.ah, %.loopexit.i
  %i.mx = phi ptr [ %i.kg, %.loopexit.i ], [ %i.lr, %bb.ah ], [ %i.lr, %.lr.ph.i319 ], [ %i.lr, %bb.ai ]
  %i.my = phi ptr [ %i.kh, %.loopexit.i ], [ %i.ls, %bb.ah ], [ %i.ls, %.lr.ph.i319 ], [ %i.ls, %bb.ai ]
  %i.mz = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.md, %bb.ah ], [ %i.mq, %bb.ai ], [ %i.mk, %.lr.ph.i319 ] ; 4 uses
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = ptrtoint ptr %i.mx to i64
  %i.nc = sub i64 %i.na, %i.nb
  %i.nd = ashr exact i64 %i.nc, 4                 ; 2 uses
  %i.ne = trunc i64 %i.nd to i32
  %i.nf = and i32 %i.ne, 31
  %i.ng = shl nuw i32 1, %i.nf
  %i.nh = lshr i64 %i.nd, 5
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.nh ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !197
  %i.nk = or i32 %i.ng, %i.nj
  store i32 %i.nk, ptr %i.ni, align 4, !tbaa !197
  %i.nl = load i32, ptr %i.at, align 8, !tbaa !620
  %i.nm = add i32 %i.nl, 1
  store i32 %i.nm, ptr %i.at, align 8, !tbaa !620
  store ptr %i.kf, ptr %i.mz, align 8, !tbaa !162
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store ptr null, ptr %i.nn, align 8, !tbaa !622
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i313, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i
  %.sroa.0.0.i = phi ptr [ %i.mz, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i ], [ %i.kz, %.lr.ph.i.i313 ]
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  store ptr %.0.i.i, ptr %i.no, align 8, !tbaa !622
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0374.0462, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !97 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.nq, %i.fu
  br i1 %.not1.i.i, label %"_ZN4llvm20filter_iterator_baseINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12VPRecipeBaseELb0ELb0EvLb0EvEELb0ELb0EEEZNS_15VPlanTransforms22createInterleaveGroupsERNS_5VPlanERKNS_15SmallPtrSetImplIPKNS_15InterleaveGroupINS_11InstructionEEEEERKbE3$_0St26bidirectional_iterator_tagEppEv.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit, %bb.aj
  %.sroa.0374.1 = phi ptr [ %i.nv, %bb.aj ], [ %i.nq, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit ] ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0374.1, i64 72
  %i.ns = load i8, ptr %i.nr, align 8, !tbaa !135
  %i.nt = and i8 %i.ns, -4
  %switch.selectcmp.i.i.i.i.i.i.i.i = icmp eq i8 %i.nt, 20
  br i1 %switch.selectcmp.i.i.i.i.i.i.i.i, label %"_ZN4llvm20filter_iterator_baseINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12VPRecipeBaseELb0ELb0EvLb0EvEELb0ELb0EEEZNS_15VPlanTransforms22createInterleaveGroupsERNS_5VPlanERKNS_15SmallPtrSetImplIPKNS_15InterleaveGroupINS_11InstructionEEEEERKbE3$_0St26bidirectional_iterator_tagEppEv.exit", label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0374.1, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !97 ; 3 uses
  %.not.i.i = icmp eq ptr %i.nv, %i.fu
  br i1 %.not.i.i, label %"_ZN4llvm20filter_iterator_baseINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12VPRecipeBaseELb0ELb0EvLb0EvEELb0ELb0EEEZNS_15VPlanTransforms22createInterleaveGroupsERNS_5VPlanERKNS_15SmallPtrSetImplIPKNS_15InterleaveGroupINS_11InstructionEEEEERKbE3$_0St26bidirectional_iterator_tagEppEv.exit", label %.lr.ph.i.i, !llvm.loop !1969

"_ZN4llvm20filter_iterator_baseINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12VPRecipeBaseELb0ELb0EvLb0EvEELb0ELb0EEEZNS_15VPlanTransforms22createInterleaveGroupsERNS_5VPlanERKNS_15SmallPtrSetImplIPKNS_15InterleaveGroupINS_11InstructionEEEEERKbE3$_0St26bidirectional_iterator_tagEppEv.exit": ; preds = %.lr.ph.i.i, %bb.aj, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit
  %.sroa.0374.2 = phi ptr [ %i.nq, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit ], [ %i.nv, %bb.aj ], [ %.sroa.0374.1, %.lr.ph.i.i ] ; 2 uses
  %.not393 = icmp eq ptr %.sroa.0374.2, %i.fu
  br i1 %.not393, label %._crit_edge, label %.lr.ph

._crit_edge491:                                   ; preds = %_ZN4llvm19SmallPtrSetIteratorIPKNS_15InterleaveGroupINS_11InstructionEEEEppEv.exit, %_ZNK4llvm15SmallPtrSetImplIPKNS_15InterleaveGroupINS_11InstructionEEEE5beginEv.exit
  %i.nw = load ptr, ptr %i.dz, align 8, !tbaa !75 ; 2 uses
  %i.nx = load i32, ptr %i.eb, align 8, !tbaa !76 ; 2 uses
  %i.ny = zext i32 %i.nx to i64
  %.idx.i314 = shl nuw nsw i64 %i.ny, 3
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 %.idx.i314
  %.not6.i.i = icmp eq i32 %i.nx, 0
  br i1 %.not6.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i, label %.lr.ph.i.i315

.lr.ph.i.i315:                                    ; preds = %._crit_edge491, %.lr.ph.i.i315
  %.07.i.i = phi ptr [ %i.oj, %.lr.ph.i.i315 ], [ %i.nw, %._crit_edge491 ] ; 3 uses
  %i.oa = load ptr, ptr %i.dz, align 8, !tbaa !75
  %i.ob = ptrtoint ptr %.07.i.i to i64
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = sub i64 %i.ob, %i.oc
  %sum.shift.i.i = lshr i64 %i.od, 4
  %i.oe = trunc i64 %sum.shift.i.i to i32
  %i.of = and i32 %i.oe, 2147483647
  %i.og = call i32 @llvm.umin.i32(i32 %i.of, i32 30)
  %.sroa.speculated.i.i.i = zext nneg i32 %i.og to i64
  %i.oh = shl nuw nsw i64 448, %.sroa.speculated.i.i.i
  %i.oi = load ptr, ptr %.07.i.i, align 8, !tbaa !305
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.oi, i64 noundef %i.oh, i64 noundef 16) #25
  %i.oj = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %.not.i.i316 = icmp eq ptr %i.oj, %i.nz
  br i1 %.not.i.i316, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i, label %.lr.ph.i.i315, !llvm.loop !14

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i: ; preds = %.lr.ph.i.i315, %._crit_edge491
  %i.ok = load ptr, ptr %i.ed, align 8, !tbaa !75 ; 3 uses
  %i.ol = load i32, ptr %i.ef, align 8, !tbaa !76 ; 2 uses
  %i.om = zext i32 %i.ol to i64
  %.idx.i.i = shl nuw nsw i64 %i.om, 4
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 %.idx.i.i
  %.not10.i.i = icmp eq i32 %i.ol, 0
  br i1 %.not10.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i, label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i, %.lr.ph.i1.i
  %.011.i.i = phi ptr [ %i.or, %.lr.ph.i1.i ], [ %i.ok, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i ] ; 3 uses
  %i.oo = load ptr, ptr %.011.i.i, align 8, !tbaa !493
  %i.op = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !494
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.oo, i64 noundef %i.oq, i64 noundef 16) #25
  %i.or = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4llvm15VPlanTransforms27handleUncountableEarlyExitsERNS_5VPlanEPNS_12VPBasicBlockES4_S4_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheENS_20UncountableExitStyleE:bb.a
  br i1 %.not.i.i.i.i.i43.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit44.thread.i.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit44.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit44.i.i.i.i.i.i.i": ; preds = %bb.co
  %i.zb = getelementptr inbounds nuw i8, ptr %.029.val.i.i.i.i.i.i.i, i64 224
  %i.zc = load i8, ptr %i.zb, align 8, !tbaa !149
  %i.zd = icmp eq i8 %i.zc, 35
  br i1 %i.zd, label %"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit44.thread.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit44.thread.i.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit44.i.i.i.i.i.i.i", %bb.co
  %i.ze = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i, i64 8
  br label %bb.cp

bb.cp:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit44.thread.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = phi ptr [ %i.ze, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit44.thread.i.i.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i.i.i, align 8, !tbaa !635 ; 3 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %.1.val.i.i.i.i.i.i.i, i64 88
  %i.zg = load i8, ptr %i.zf, align 8, !tbaa !135
  %i.zh = icmp ne i8 %i.zg, 5
  %.not3.i.i.i.i.i45.i.i.i.i.i.i.i = icmp eq ptr %.1.val.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i46.i.i.i.i.i.i.i = or i1 %.not3.i.i.i.i.i45.i.i.i.i.i.i.i, %i.zh
  br i1 %.not.i.i.i.i.i46.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit47.thread.i.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit47.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit47.i.i.i.i.i.i.i": ; preds = %bb.cp
  %i.zi = getelementptr inbounds nuw i8, ptr %.1.val.i.i.i.i.i.i.i, i64 224
  %i.zj = load i8, ptr %i.zi, align 8, !tbaa !149
  %i.zk = icmp eq i8 %i.zj, 35
  br i1 %i.zk, label %"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit47.thread.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit47.thread.i.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit47.i.i.i.i.i.i.i", %bb.cp
  %i.zl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i, i64 8
  br label %bb.cq

bb.cq:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit47.thread.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i = phi ptr [ %i.zl, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit47.thread.i.i.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i.i.i, align 8, !tbaa !635 ; 3 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.2.val.i.i.i.i.i.i.i, i64 88
  %i.zn = load i8, ptr %i.zm, align 8, !tbaa !135
  %i.zo = icmp ne i8 %i.zn, 5
  %.not3.i.i.i.i.i48.i.i.i.i.i.i.i = icmp eq ptr %.2.val.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i49.i.i.i.i.i.i.i = or i1 %.not3.i.i.i.i.i48.i.i.i.i.i.i.i, %i.zo
  br i1 %.not.i.i.i.i.i49.i.i.i.i.i.i.i, label %.thread.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit50.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit50.i.i.i.i.i.i.i": ; preds = %bb.cq
  %i.zp = getelementptr inbounds nuw i8, ptr %.2.val.i.i.i.i.i.i.i, i64 224
  %i.zq = load i8, ptr %i.zp, align 8, !tbaa !149
  %i.zr = icmp eq i8 %i.zq, 35
  br i1 %i.zr, label %"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i", label %.thread.i.i

"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit35.i.i.i.i.i.i.i"
  %i.zs = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i.i.i.i, i64 8
  br label %"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i"

"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i.loopexit.split.loop.exit763": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit38.i.i.i.i.i.i.i"
  %i.zt = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i.i.i.i, i64 16
  br label %"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i"

"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i.loopexit.split.loop.exit765": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit41.i.i.i.i.i.i.i"
  %i.zu = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i.i.i.i, i64 24
  br label %"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i"

"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit.i.i.i.i.i.i.i", %"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i.loopexit.split.loop.exit", %"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i.loopexit.split.loop.exit763", %"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i.loopexit.split.loop.exit765", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit50.i.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit47.i.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit44.i.i.i.i.i.i.i"
  %.028.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit47.i.i.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit44.i.i.i.i.i.i.i" ], [ %.2.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit50.i.i.i.i.i.i.i" ], [ %i.zu, %"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i.loopexit.split.loop.exit765" ], [ %i.zt, %"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i.loopexit.split.loop.exit763" ], [ %i.zs, %"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i.loopexit.split.loop.exit" ], [ %.02961.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit.i.i.i.i.i.i.i" ]
  %i.zv = icmp ne ptr %i.xq, %.028.i.i.i.i.i.i.i
  %spec.select85.i.i = zext i1 %i.zv to i8
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bf, %"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit50.i.i.i.i.i.i.i", %bb.cq, %._crit_edge.i.i.i.i.i.i.i, %bb.cm, %.thread81.i.i
  %.sroa.2.3.i.i = phi i8 [ 0, %bb.cm ], [ 0, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS2_13VPInstructionEEEPNS2_12VPBasicBlockEE3$_0EclIPS5_EEbT_.exit50.i.i.i.i.i.i.i" ], [ 0, %.thread81.i.i ], [ 0, %bb.cq ], [ %spec.select85.i.i, %"_ZN4llvm7none_ofIRNS_15SmallVectorImplIPNS_13VPInstructionEEEZL28getRecipesForUncountableExitS5_PNS_12VPBasicBlockEE3$_0EEbOT_T0_.exit.i.i" ], [ 0, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.bf ] ; 2 uses
  %i.zw = load ptr, ptr %24, align 8, !tbaa !75   ; 2 uses
  %i.zx = icmp eq ptr %i.zw, %i.sr
  br i1 %i.zx, label %_ZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS_13VPInstructionEEEPNS_12VPBasicBlockE.exit.i, label %bb.cr

bb.cr:                                            ; preds = %.thread.i.i
  call void @free(ptr noundef %i.zw) #25
  br label %_ZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS_13VPInstructionEEEPNS_12VPBasicBlockE.exit.i

_ZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS_13VPInstructionEEEPNS_12VPBasicBlockE.exit.i: ; preds = %bb.cr, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  store ptr %i.sq, ptr %27, align 8
  %i.zy = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i8 %.sroa.2.3.i.i, ptr %i.zy, align 8
  %i.zz = trunc nuw i8 %.sroa.2.3.i.i to i1
  br i1 %i.zz, label %bb.cu, label %_ZN4llvm17VPlanPatternMatch5matchINS_13VPInstructionENS0_12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_9VPIRValueENS_15VPSymbolicValueEEEENS0_14specificval_tyEEELj35ELb0EJS2_EEEEEbPT_RKT0_.exit.thread.i

.lr.ph63.i:                                       ; preds = %_ZN4llvm11VPBlockBase17appendPredecessorEPS0_.exit.i.1, %bb.ct
  %.011461.i = phi ptr [ %i.aaq, %bb.ct ], [ %.val178, %_ZN4llvm11VPBlockBase17appendPredecessorEPS0_.exit.i.1 ] ; 6 uses
  %i.aaa = load ptr, ptr %.011461.i, align 8, !tbaa !639
  %i.aab = icmp eq ptr %i.aaa, %2
  br i1 %i.aab, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph63.i
  %i.aac = getelementptr inbounds nuw i8, ptr %.011461.i, i64 8 ; 2 uses
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !2207 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 120
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !97 ; 2 uses
  %i.aag = call ptr @_ZN4llvm12VPBasicBlock14getFirstNonPhiEv(ptr noundef nonnull align 8 dereferenceable(128) %i.aad) #25 ; 2 uses
  %.not5358.i = icmp eq ptr %i.aaf, %i.aag
  br i1 %.not5358.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.cs
  %i.aah = load ptr, ptr %.011461.i, align 8, !tbaa !639
  %i.aai = call noundef ptr @_ZN4llvm12VPBasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(128) %i.aah) #25
  %i.aaj = call ptr @_ZN4llvm12VPRecipeBase15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(89) %i.aai) #25 ; 0 uses
  %i.aak = load ptr, ptr %.011461.i, align 8, !tbaa !639
  %i.aal = load ptr, ptr %i.aac, align 8, !tbaa !2207
  call void @_ZN4llvm12VPBlockUtils16disconnectBlocksEPNS_11VPBlockBaseES2_(ptr noundef %i.aak, ptr noundef %i.aal)
  br label %bb.ct

.lr.ph.i:                                         ; preds = %bb.cs, %.lr.ph.i
  %.sroa.036.059.i = phi ptr [ %i.aap, %.lr.ph.i ], [ %i.aaf, %bb.cs ] ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.sroa.036.059.i, i64 88
  %i.aan = load ptr, ptr %.011461.i, align 8, !tbaa !639
  call void @_ZNK4llvm14VPPhiAccessors22removeIncomingValueForEPNS_11VPBlockBaseE(ptr noundef nonnull align 8 dereferenceable(8) %i.aam, ptr noundef %i.aan) #25
  %i.aao = getelementptr inbounds nuw i8, ptr %.sroa.036.059.i, i64 8
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !97 ; 2 uses
  %.not53.i = icmp eq ptr %i.aap, %i.aag
  br i1 %.not53.i, label %._crit_edge.i, label %.lr.ph.i

bb.ct:                                            ; preds = %._crit_edge.i, %.lr.ph63.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %.011461.i, i64 24 ; 2 uses
  %.not.i199 = icmp eq ptr %i.aaq, %i.pz
  br i1 %.not.i199, label %._crit_edge64.i, label %.lr.ph63.i

bb.cu:                                            ; preds = %_ZL28getRecipesForUncountableExitRN4llvm15SmallVectorImplIPNS_13VPInstructionEEEPNS_12VPBasicBlockE.exit.i
  %.val.i = load ptr, ptr %26, align 8, !tbaa !75 ; 2 uses
  %.val133.i = load i32, ptr %i.qt, align 8, !tbaa !76 ; 2 uses
  %i.aar = zext i32 %.val133.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.aar, 3
  %i.aas = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i.i
  %.not7.i.i = icmp eq i32 %.val133.i, 0
  br i1 %.not7.i.i, label %"_ZN4llvm14find_singletonINS_13VPInstructionERNS_11SmallVectorIPS1_Lj8EEEZL37handleUncountableExitsWithSideEffectsRNS_5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockESD_SD_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEE3$_0EEPT_OT0_T1_b.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cu, %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.thread.i.i"
  %.0219.i.i = phi ptr [ %i.abo, %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.thread.i.i" ], [ %.val.i, %bb.cu ] ; 2 uses
  %.0228.i.i = phi ptr [ %.26.i.i, %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.thread.i.i" ], [ null, %bb.cu ] ; 7 uses
  %i.aat = load ptr, ptr %.0219.i.i, align 8, !tbaa !635 ; 7 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 88
  %i.aav = load i8, ptr %i.aau, align 8, !tbaa !135
  %i.aaw = icmp ne i8 %i.aav, 5
  %.not3.i.i.i.i.i.i.i = icmp eq ptr %i.aat, null
  %.not.i.i.i.i.i.i.i = or i1 %.not3.i.i.i.i.i.i.i, %i.aaw
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.thread.i.i", label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEEEELj33ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i.i.i.i.i.i

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEEEELj33ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aat, i64 224
  %i.aay = load i8, ptr %i.aax, align 8, !tbaa !149
  %i.aaz = icmp eq i8 %i.aay, 33
  br i1 %i.aaz, label %bb.cv, label %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.thread.i.i"

bb.cv:                                            ; preds = %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEEEELj33ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i.i.i.i.i.i
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aat, i64 48 ; 3 uses
  %i.abb = load i32, ptr %i.aba, align 8, !tbaa !76
  switch i32 %i.abb, label %bb.cw [
    i32 0, label %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.thread.i.i"
    i32 1, label %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.i.i"
  ]

bb.cw:                                            ; preds = %bb.cv
  %i.abc = call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %i.aat) #25 ; 2 uses
  %i.abd = icmp eq i32 %i.abc, -1
  br i1 %i.abd, label %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.thread.i.i", label %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i.i.i.i136.i

_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i.i.i.i136.i: ; preds = %bb.cw
  %i.abe = add nuw i32 %i.abc, 1                  ; 2 uses
  %i.abf = load i32, ptr %i.aba, align 8, !tbaa !76
  %i.abg = icmp eq i32 %i.abe, %i.abf
  br i1 %i.abg, label %bb.cx, label %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.thread.i.i"

bb.cx:                                            ; preds = %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i.i.i.i136.i
  %i.abh = call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %i.aat) #25 ; 2 uses
  %i.abi = icmp eq i32 %i.abh, -1
  br i1 %i.abi, label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i.i.i.i137.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.abj = add nuw i32 %i.abh, 1
  %i.abk = load i32, ptr %i.aba, align 8, !tbaa !76
  %i.abl = icmp eq i32 %i.abj, %i.abk
  %i.abm = sext i1 %i.abl to i32
  br label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i.i.i.i137.i

_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i.i.i.i137.i: ; preds = %bb.cy, %bb.cx
  %.0.i.i.i.i.i.i.i138.i = phi i32 [ %i.abm, %bb.cy ], [ 0, %bb.cx ]
  %i.abn = add i32 %.0.i.i.i.i.i.i.i138.i, %i.abe
  %.not22.i.i.i.i.i139.i = icmp eq i32 %i.abn, 1
  br i1 %.not22.i.i.i.i.i139.i, label %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.i.i", label %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.thread.i.i"

"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.i.i": ; preds = %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i.i.i.i137.i, %bb.cv
  %.not30.i.i = icmp eq ptr %.0228.i.i, null
  br i1 %.not30.i.i, label %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.thread.i.i", label %"_ZN4llvm14find_singletonINS_13VPInstructionERNS_11SmallVectorIPS1_Lj8EEEZL37handleUncountableExitsWithSideEffectsRNS_5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockESD_SD_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEE3$_0EEPT_OT0_T1_b.exit.i"

"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.thread.i.i": ; preds = %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.i.i", %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i.i.i.i137.i, %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i.i.i.i136.i, %bb.cw, %bb.cv, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEEEELj33ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %.26.i.i = phi ptr [ %i.aat, %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.i.i" ], [ %.0228.i.i, %.lr.ph.i.i ], [ %.0228.i.i, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEEEELj33ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i.i.i.i.i.i ], [ %.0228.i.i, %bb.cv ], [ %.0228.i.i, %bb.cw ], [ %.0228.i.i, %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i.i.i.i136.i ], [ %.0228.i.i, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i.i.i.i137.i ] ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %.0219.i.i, i64 8 ; 2 uses
  %.not.i135.i = icmp eq ptr %i.abo, %i.aas
  br i1 %.not.i135.i, label %"_ZN4llvm14find_singletonINS_13VPInstructionERNS_11SmallVectorIPS1_Lj8EEEZL37handleUncountableExitsWithSideEffectsRNS_5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockESD_SD_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEE3$_0EEPT_OT0_T1_b.exit.i", label %.lr.ph.i.i

"_ZN4llvm14find_singletonINS_13VPInstructionERNS_11SmallVectorIPS1_Lj8EEEZL37handleUncountableExitsWithSideEffectsRNS_5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockESD_SD_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEE3$_0EEPT_OT0_T1_b.exit.i": ; preds = %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.thread.i.i", %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.i.i", %bb.cu
  %spec.select.i.i = phi ptr [ null, %bb.cu ], [ %.26.i.i, %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.thread.i.i" ], [ null, %"_ZZL37handleUncountableExitsWithSideEffectsRN4llvm5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockES7_S7_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEENK3$_0clINS_13VPInstructionEEEDaPT_b.exit.i.i" ] ; 4 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 40
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !75
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !157 ; 8 uses
  %i.abs = icmp eq ptr %i.abr, null
  %i.abt = getelementptr inbounds i8, ptr %i.abr, i64 -96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.abu = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  store ptr %i.abu, ptr %28, align 8, !tbaa !75
  %i.abv = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 0, ptr %i.abv, align 8, !tbaa !76
  %i.abw = getelementptr inbounds nuw i8, ptr %28, i64 12
  store i32 4, ptr %i.abw, align 4, !tbaa !77
  %i.abx = call noundef ptr @_ZN4llvm7vputils21getSCEVExprForVPValueEPKNS_7VPValueERNS_25PredicatedScalarEvolutionEPKNS_4LoopE(ptr noundef %i.abr, ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef %4) #25
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !375
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 128
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !382
  %i.acc = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.acb) #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abr, i64 48
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !326
  %i.acf = call noundef i32 @_ZNK4llvm10DataLayout22getIndexTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.acc, ptr noundef %i.ace) #25 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 144
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !326
  %i.aci = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.acc, ptr noundef %i.ach)
  %.fca.0.extract.i.i.i = extractvalue { i64, i8 } %i.aci, 0
  %i.acj = add i64 %.fca.0.extract.i.i.i, 7
  %i.ack = lshr i64 %i.acj, 3                     ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store i32 %i.acf, ptr %i.acl, align 8, !tbaa !392
  %i.acm = icmp ult i32 %i.acf, 65
  br i1 %i.acm, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %"_ZN4llvm14find_singletonINS_13VPInstructionERNS_11SmallVectorIPS1_Lj8EEEZL37handleUncountableExitsWithSideEffectsRNS_5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockESD_SD_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEE3$_0EEPT_OT0_T1_b.exit.i"
  store i64 %i.ack, ptr %29, align 8, !tbaa !155
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i

bb.da:                                            ; preds = %"_ZN4llvm14find_singletonINS_13VPInstructionERNS_11SmallVectorIPS1_Lj8EEEZL37handleUncountableExitsWithSideEffectsRNS_5VPlanERNS_15SmallVectorImplI13EarlyExitInfoEEPNS_12VPBasicBlockESD_SD_PNS_4LoopERNS_25PredicatedScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEE3$_0EEPT_OT0_T1_b.exit.i"
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %29, i64 noundef %i.ack, i1 noundef zeroext false) #25
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i

_ZN4llvm5APIntC2Ejmbb.exit.i:                     ; preds = %bb.da, %bb.cz
  %i.acn = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 136
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !107
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 2
  %i.acq = load i16, ptr %i.acp, align 2, !tbaa !163
  %i.acr = trunc i16 %i.acq to i8
  %i.acs = lshr i8 %i.acr, 1
  %i.act = and i8 %i.acs, 63
  %i.acu = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !431, !nonnull !255, !align !432
  %i.acw = call noundef ptr @_ZN4llvm15ScalarEvolution11getConstantERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(1152) %i.acv, ptr noundef nonnull align 8 dereferenceable(12) %29) #25
  %i.acx = load ptr, ptr %i.acu, align 8, !tbaa !431, !nonnull !255, !align !432
  %i.acy = call noundef zeroext i1 @_ZN4llvm33isDereferenceableAndAlignedInLoopEPKNS_4SCEVENS_5AlignES2_PNS_4LoopERNS_15ScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEPNS_15SmallVectorImplIPKNS_13SCEVPredicateEEE(ptr noundef %i.abx, i8 %i.act, ptr noundef %i.acw, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(1152) %i.acx, ptr noundef nonnull align 8 dereferenceable(204) %6, ptr noundef %7, ptr noundef nonnull %28) #25
  %i.acz = load i32, ptr %i.acl, align 8, !tbaa !392
  %i.ada = icmp ugt i32 %i.acz, 64
  br i1 %i.ada, label %bb.db, label %_ZN4llvm5APIntD2Ev.exit.i

bb.db:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %i.adb = load ptr, ptr %29, align 8, !tbaa !155 ; 2 uses
  %i.adc = icmp eq ptr %i.adb, null
  br i1 %i.adc, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @_ZdaPv(ptr noundef nonnull %i.adb) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.dc, %bb.db, %_ZN4llvm5APIntC2Ejmbb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.add = load ptr, ptr %28, align 8, !tbaa !75  ; 2 uses
  %i.ade = icmp eq ptr %i.add, %i.abu
  br i1 %i.ade, label %_ZN4llvm11SmallVectorIPKNS_13SCEVPredicateELj4EED2Ev.exit.i, label %bb.dd

bb.dd:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  call void @free(ptr noundef %i.add) #25
  br label %_ZN4llvm11SmallVectorIPKNS_13SCEVPredicateELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorIPKNS_13SCEVPredicateELj4EED2Ev.exit.i: ; preds = %bb.dd, %_ZN4llvm5APIntD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br i1 %i.acy, label %bb.de, label %_ZN4llvm17VPlanPatternMatch5matchINS_13VPInstructionENS0_12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_9VPIRValueENS_15VPSymbolicValueEEEENS0_14specificval_tyEEELj35ELb0EJS2_EEEEEbPT_RKT0_.exit.thread.i

bb.de:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_13SCEVPredicateELj4EED2Ev.exit.i
  %i.adf = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !97 ; 3 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 24 ; 2 uses
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !75
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !157 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  %i.adk = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store i32 64, ptr %i.adk, align 8, !tbaa !392, !alias.scope !2214
  store i64 0, ptr %30, align 8, !alias.scope !2214
  %i.adl = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  store i8 0, ptr %i.adl, align 8, !tbaa !394, !alias.scope !2214
  %i.adm = call noundef ptr @_ZNK4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.adj) #25 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.adm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i.i, label %_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i.i

_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i.i: ; preds = %bb.de
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 88
  %i.ado = load i8, ptr %i.adn, align 8, !tbaa !135
  %i.adp = icmp eq i8 %i.ado, 5
  br i1 %i.adp, label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i.i, label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i.i

_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i.i
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adj, i64 128
  %i.adr = load i8, ptr %i.adq, align 8, !tbaa !149
  %i.ads = icmp eq i8 %i.adr, 81
  br i1 %i.ads, label %bb.df, label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i.i

bb.df:                                            ; preds = %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i.i
  %i.adt = getelementptr inbounds i8, ptr %i.adj, i64 -56
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !75
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !157
  br label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i.i

_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i.i: ; preds = %bb.df, %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i.i, %_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i.i, %bb.de
  %.0.i.i.i = phi ptr [ %i.adv, %bb.df ], [ %i.adj, %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i.i ], [ %i.adj, %bb.de ], [ %i.adj, %_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i.i ] ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.adx = load i8, ptr %i.adw, align 8, !tbaa !319
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.adx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i.i, label %.critedge126.i

_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i.i: ; preds = %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i.i
  %i.ady = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !107 ; 2 uses
  %i.aea = load i8, ptr %i.adz, align 8, !tbaa !112
  %i.aeb = icmp eq i8 %i.aea, 5
  br i1 %i.aeb, label %_ZN4llvm17VPlanPatternMatch5matchINS_9VPIRValueENS0_11int_pred_tyINS0_15is_specific_intELj0EEEEEbPT_RKT0_.exit.i, label %.critedge126.i

_ZN4llvm17VPlanPatternMatch5matchINS_9VPIRValueENS0_11int_pred_tyINS0_15is_specific_intELj0EEEEEbPT_RKT0_.exit.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i.i
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adz, i64 24
  %i.aed = load i8, ptr %i.adl, align 8, !tbaa !394, !range !254, !noundef !255
  %i.aee = trunc nuw i8 %i.aed to i1
  %i.aef = call noundef zeroext i1 @_ZN4llvm5APInt11isSameValueERKS0_S2_b(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(12) %i.aec, i1 noundef zeroext %i.aee)
  br i1 %i.aef, label %bb.dg, label %.critedge126.i

bb.dg:                                            ; preds = %_ZN4llvm17VPlanPatternMatch5matchINS_9VPIRValueENS0_11int_pred_tyINS0_15is_specific_intELj0EEEEEbPT_RKT0_.exit.i
  %i.aeg = load ptr, ptr %i.adh, align 8, !tbaa !75
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !157 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  %i.aej = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  store i32 64, ptr %i.aej, align 8, !tbaa !392, !alias.scope !2215
  store i64 1, ptr %31, align 8, !alias.scope !2215
  %i.aek = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  store i8 0, ptr %i.aek, align 8, !tbaa !394, !alias.scope !2215
  %i.ael = call noundef ptr @_ZNK4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aei) #25 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i142.i = icmp eq ptr %i.ael, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i142.i, label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i144.i, label %_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i143.i

_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i143.i: ; preds = %bb.dg
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 88
  %i.aen = load i8, ptr %i.aem, align 8, !tbaa !135
  %i.aeo = icmp eq i8 %i.aen, 5
  br i1 %i.aeo, label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i150.i, label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i144.i

_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i150.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i143.i
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aei, i64 128
  %i.aeq = load i8, ptr %i.aep, align 8, !tbaa !149
  %i.aer = icmp eq i8 %i.aeq, 81
  br i1 %i.aer, label %bb.dh, label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i144.i

bb.dh:                                            ; preds = %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i150.i
  %i.aes = getelementptr inbounds i8, ptr %i.aei, i64 -56
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !75
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !157
  br label %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i144.i

_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i144.i: ; preds = %bb.dh, %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i150.i, %_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i143.i, %bb.dg
  %.0.i.i145.i = phi ptr [ %i.aeu, %bb.dh ], [ %i.aei, %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.i.i150.i ], [ %i.aei, %bb.dg ], [ %i.aei, %_ZN4llvm14CastIsPossibleINS_13VPInstructionEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i143.i ] ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %.0.i.i145.i, i64 8
  %i.aew = load i8, ptr %i.aev, align 8, !tbaa !319
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i = icmp eq i8 %i.aew, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i, label %_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i148.i, label %bb.di

_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i148.i: ; preds = %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i144.i
  %i.aex = getelementptr inbounds nuw i8, ptr %.0.i.i145.i, i64 40
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !107 ; 2 uses
  %i.aez = load i8, ptr %i.aey, align 8, !tbaa !112
  %i.afa = icmp eq i8 %i.aez, 5
  br i1 %i.afa, label %_ZN4llvm8dyn_castINS_13VPConstantIntEKNS_7VPValueEEEDcPT0_.exit.i.i149.i, label %bb.di

_ZN4llvm8dyn_castINS_13VPConstantIntEKNS_7VPValueEEEDcPT0_.exit.i.i149.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i148.i
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aey, i64 24
  %i.afc = load i8, ptr %i.aek, align 8, !tbaa !394, !range !254, !noundef !255
  %i.afd = trunc nuw i8 %i.afc to i1
  %i.afe = call noundef zeroext i1 @_ZN4llvm5APInt11isSameValueERKS0_S2_b(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(12) %i.afb, i1 noundef zeroext %i.afd)
  %i.aff = xor i1 %i.afe, true
  br label %bb.di

bb.di:                                            ; preds = %_ZN4llvm8dyn_castINS_13VPConstantIntEKNS_7VPValueEEEDcPT0_.exit.i.i149.i, %_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i148.i, %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i144.i
  %.09.i.i147.i = phi i1 [ %i.aff, %_ZN4llvm8dyn_castINS_13VPConstantIntEKNS_7VPValueEEEDcPT0_.exit.i.i149.i ], [ true, %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i144.i ], [ true, %_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i148.i ]
  %i.afg = load i32, ptr %i.aej, align 8, !tbaa !392
  %i.afh = icmp ugt i32 %i.afg, 64
  br i1 %i.afh, label %bb.dj, label %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj0EED2Ev.exit.i

bb.dj:                                            ; preds = %bb.di
  %i.afi = load ptr, ptr %31, align 8, !tbaa !155 ; 2 uses
  %i.afj = icmp eq ptr %i.afi, null
  br i1 %i.afj, label %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj0EED2Ev.exit.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @_ZdaPv(ptr noundef nonnull %i.afi) #28
  br label %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj0EED2Ev.exit.i

_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj0EED2Ev.exit.i: ; preds = %bb.dk, %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  br label %.critedge126.i

.critedge126.i:                                   ; preds = %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj0EED2Ev.exit.i, %_ZN4llvm17VPlanPatternMatch5matchINS_9VPIRValueENS0_11int_pred_tyINS0_15is_specific_intELj0EEEEEbPT_RKT0_.exit.i, %_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i.i, %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i.i
  %i.afk = phi i1 [ %.09.i.i147.i, %_ZN4llvm17VPlanPatternMatch11int_pred_tyINS0_15is_specific_intELj0EED2Ev.exit.i ], [ true, %_ZN4llvm17VPlanPatternMatch5matchINS_9VPIRValueENS0_11int_pred_tyINS0_15is_specific_intELj0EEEEEbPT_RKT0_.exit.i ], [ true, %_ZN4llvm8dyn_castINS_13VPInstructionEKNS_7VPValueEEEDcPT0_.exit.thread.i.i.i ], [ true, %_ZN4llvm14CastIsPossibleINS_13VPConstantIntEPKNS_7VPValueEvE10isPossibleERKS4_.exit.i.i.i.i.i ]
  %i.afl = load i32, ptr %i.adk, align 8, !tbaa !392
  %i.afm = icmp ugt i32 %i.afl, 64
end_hunk_4
begin_hunk_5_@_ZN4llvm12VPIRMetadata11setMetadataEjPNS_6MDNodeE:bb.a
  %i.b = alloca ptr, align 8                      ; 2 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !197
  store ptr %2, ptr %i.b, align 8, !tbaa !758
  %i.c = load ptr, ptr %0, align 8, !tbaa !75     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !76   ; 5 uses
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %.idx3.i = shl nuw nsw i64 %i.f, 4              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx3.i
  %i.h = lshr i64 %i.f, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.a
  %i.i = and i64 %.idx3.i, 68719476672
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.c, i64 %i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.v, %bb.e ], [ %i.h, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.u, %bb.e ], [ %i.c, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %i.j = load i32, ptr %.02946.i.i.i.i, align 8, !tbaa !2551
  %i.k = icmp eq i32 %i.j, %1
  br i1 %i.k, label %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2551
  %i.n = icmp eq i32 %i.m, %1
  br i1 %i.n, label %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !2551
  %i.q = icmp eq i32 %i.p, %1
  br i1 %i.q, label %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit.loopexit.split.loop.exit18, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 48
  %i.s = load i32, ptr %i.r, align 8, !tbaa !2551
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit.loopexit.split.loop.exit20, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 64
  %i.v = add nsw i64 %.047.i.i.i.i, -1
  %i.w = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !2549

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %i.x = and i32 %i.e, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi53.i.i.i.i = phi i32 [ %i.x, %._crit_edge.loopexit.i.i.i.i ], [ %i.e, %bb.a ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.c, %bb.a ] ; 5 uses
  switch i32 %.pre-phi53.i.i.i.i, label %bb.k [
    i32 3, label %bb.f
    i32 2, label %bb.h
    i32 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.y = load i32, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !2551
  %i.z = icmp eq i32 %i.y, %1
  br i1 %i.z, label %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.aa, %bb.g ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ab = load i32, ptr %.1.i.i.i.i, align 8, !tbaa !2551
  %i.ac = icmp eq i32 %i.ab, %1
  br i1 %i.ac, label %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.ad, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ae = load i32, ptr %.2.i.i.i.i, align 8, !tbaa !2551
  %i.af = icmp eq i32 %i.ae, %1
  br i1 %i.af, label %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i
  br label %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit

_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit

_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit.loopexit.split.loop.exit18: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  br label %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit

_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit.loopexit.split.loop.exit20: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 48
  br label %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit

_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit.loopexit.split.loop.exit, %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit.loopexit.split.loop.exit18, %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit.loopexit.split.loop.exit20, %bb.f, %bb.h, %bb.j, %bb.k
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.h ], [ %i.g, %bb.k ], [ %.2.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i, %bb.f ], [ %i.ai, %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit.loopexit.split.loop.exit20 ], [ %i.ag, %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit.loopexit.split.loop.exit ], [ %i.ah, %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit.loopexit.split.loop.exit18 ], [ %.02946.i.i.i.i, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.f
  %.not = icmp eq ptr %.028.i.i.i.i, %i.aj
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i, i64 8
  store ptr %2, ptr %i.ak, align 8, !tbaa !2552
  br label %_ZN4llvm15SmallVectorImplISt4pairIjPNS_6MDNodeEEE12emplace_backIJRjRS3_EEERS4_DpOT_.exit

bb.m:                                             ; preds = %_ZN4llvm7find_ifIRNS_11SmallVectorISt4pairIjPNS_6MDNodeEELj3EEEZNS_12VPIRMetadata11setMetadataEjS4_EUlRKS5_E_EEDaOT_T0_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !77
  %.not.i3 = icmp ult i32 %i.e, %i.am
  br i1 %.not.i3, label %bb.o, label %bb.n, !prof !194

bb.n:                                             ; preds = %bb.m
  %i.an = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIjPNS_6MDNodeEELb1EE18growAndEmplaceBackIJRjRS3_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplISt4pairIjPNS_6MDNodeEEE12emplace_backIJRjRS3_EEERS4_DpOT_.exit

bb.o:                                             ; preds = %bb.m
  store i32 %1, ptr %.028.i.i.i.i, align 8, !tbaa !2551
  %i.ao = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i, i64 8
  store ptr %2, ptr %i.ao, align 8, !tbaa !2552
  %i.ap = add nuw i32 %i.e, 1
  store i32 %i.ap, ptr %i.d, align 8, !tbaa !76
  br label %_ZN4llvm15SmallVectorImplISt4pairIjPNS_6MDNodeEEE12emplace_backIJRjRS3_EEERS4_DpOT_.exit

_ZN4llvm15SmallVectorImplISt4pairIjPNS_6MDNodeEEE12emplace_backIJRjRS3_EEERS4_DpOT_.exit: ; preds = %bb.o, %bb.n, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeE(ptr noundef nonnull align 8 dereferenceable(816) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::VPIRFlags", align 1   ; 5 uses
  %3 = alloca %"class.llvm::VPIRMetadata", align 8 ; 8 uses
  %4 = alloca %"struct.llvm::VPlanPatternMatch::Recipe_match.3025", align 1 ; 3 uses
  %5 = alloca %"class.std::function.965", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.352", align 8 ; 10 uses
  %i.b = tail call noundef ptr @_ZN4llvm5VPlan19getVectorLoopRegionEv(ptr noundef nonnull align 8 dereferenceable(816) %0) #25
  %i.c = tail call noundef ptr @_ZN4llvm5VPlan19getVectorLoopRegionEv(ptr noundef nonnull align 8 dereferenceable(816) %0) #25 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !76
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78   ; 4 uses
  %i.l = tail call ptr @_ZN4llvm12VPBasicBlock14getFirstNonPhiEv(ptr noundef nonnull align 8 dereferenceable(128) %i.k) #25 ; 3 uses
  %i.m = tail call noundef ptr @_ZN4llvm11VPBlockBase18getEntryBasicBlockEv(ptr noundef nonnull align 8 dereferenceable(105) %i.b) #25 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97   ; 2 uses
  %i.p = tail call ptr @_ZN4llvm12VPBasicBlock14getFirstNonPhiEv(ptr noundef nonnull align 8 dereferenceable(128) %i.m) #25 ; 2 uses
  %.not92113 = icmp eq ptr %i.o, %i.p
  br i1 %.not92113, label %.critedge._crit_edge, label %.lr.ph116

.lr.ph116:                                        ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 33
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph116, %.loopexit
  %.sroa.077.0114 = phi ptr [ %i.o, %.lr.ph116 ], [ %i.fn, %.loopexit ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.077.0114, i64 72
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !135
  %.not = icmp eq i8 %i.ac, 31
  br i1 %.not, label %_ZN4llvm17VPlanPatternMatch10findUserOfILj71EEEPNS_13VPInstructionEPNS_7VPValueE.exit, label %.loopexit

_ZN4llvm17VPlanPatternMatch10findUserOfILj71EEEPNS_13VPInstructionEPNS_7VPValueE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.077.0114, i64 96 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.077.0114, i64 104 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !76
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = call noundef ptr @_ZSt9__find_ifIPPN4llvm6VPUserEN9__gnu_cxx5__ops10_Iter_predIZNS0_17VPlanPatternMatch8match_fnINS7_12Recipe_matchISt5tupleIJEELj71ELb0EJNS0_13VPInstructionEEEEEEDaRKT_EUlPSE_E_EEESE_SE_SE_T0_St26random_access_iterator_tag(ptr noundef %i.ae, ptr noundef %i.ai, ptr nonnull align 1 dereferenceable(1) %4) ; 2 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.al = load i32, ptr %i.af, align 8, !tbaa !76
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.am
  %i.ao = icmp ne ptr %i.aj, %i.an
  call void @llvm.assume(i1 %i.ao)
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !298 ; 5 uses
  %i.aq = icmp eq ptr %i.ap, null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !75 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.av = load i32, ptr %i.au, align 8, !tbaa !76 ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %.idx94 = shl nuw nsw i64 %i.aw, 3              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx94
  %i.ay = lshr i64 %i.aw, 2                       ; 2 uses
  %.not93 = icmp eq i64 %i.ay, 0
  br i1 %.not93, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZN4llvm17VPlanPatternMatch10findUserOfILj71EEEPNS_13VPInstructionEPNS_7VPValueE.exit
  %i.az = and i64 %.idx94, 34359738336
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.at, i64 %i.az
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i.i.i
  %.050.i.i.i.i.i.i = phi i64 [ %i.bm, %bb.f ], [ %i.ay, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02949.i.i.i.i.i.i = phi ptr [ %i.bl, %bb.f ], [ %i.at, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i = load ptr, ptr %.02949.i.i.i.i.i.i, align 8, !tbaa !298
  %i.ba = getelementptr i8, ptr %.029.val32.i.i.i.i.i.i, i64 40
  %.029.val32.val.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !195
  %i.bb = getelementptr i8, ptr %.029.val32.val.i.i.i.i.i.i, i64 40
  %.029.val32.val.val.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !94
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.029.val32.val.val.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 8
  %.val31.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !298
  %i.bd = getelementptr i8, ptr %.val31.i.i.i.i.i.i, i64 40
  %.val31.val.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !195
  %i.be = getelementptr i8, ptr %.val31.val.i.i.i.i.i.i, i64 40
  %.val31.val.val.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !94
  %.not.i.i33.i.i.i.i.i.i = icmp eq ptr %.val31.val.val.i.i.i.i.i.i, null
  br i1 %.not.i.i33.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 16
  %.val30.i.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !298
  %i.bg = getelementptr i8, ptr %.val30.i.i.i.i.i.i, i64 40
  %.val30.val.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !195
  %i.bh = getelementptr i8, ptr %.val30.val.i.i.i.i.i.i, i64 40
  %.val30.val.val.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !94
  %.not.i.i34.i.i.i.i.i.i = icmp eq ptr %.val30.val.val.i.i.i.i.i.i, null
  br i1 %.not.i.i34.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit148", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 24
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !298
  %i.bj = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 40
  %.val.val.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !195
  %i.bk = getelementptr i8, ptr %.val.val.i.i.i.i.i.i, i64 40
  %.val.val.val.i.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !94
  %.not.i.i35.i.i.i.i.i.i = icmp eq ptr %.val.val.val.i.i.i.i.i.i, null
  br i1 %.not.i.i35.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit150", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 32
  %i.bm = add nsw i64 %.050.i.i.i.i.i.i, -1
  %i.bn = icmp sgt i64 %.050.i.i.i.i.i.i, 1
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !2553

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.f
  %i.bo = and i32 %i.av, 3
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %_ZN4llvm17VPlanPatternMatch10findUserOfILj71EEEPNS_13VPInstructionEPNS_7VPValueE.exit
  %.pre-phi56.i.i.i.i.i.i = phi i32 [ %i.bo, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.av, %_ZN4llvm17VPlanPatternMatch10findUserOfILj71EEEPNS_13VPInstructionEPNS_7VPValueE.exit ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.at, %_ZN4llvm17VPlanPatternMatch10findUserOfILj71EEEPNS_13VPInstructionEPNS_7VPValueE.exit ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i, label %.critedge.thread [
    i32 3, label %bb.g
    i32 2, label %bb.i
    i32 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !298
  %i.bp = getelementptr i8, ptr %.029.val.i.i.i.i.i.i, i64 40
  %.029.val.val.i.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !tbaa !195
  %i.bq = getelementptr i8, ptr %.029.val.val.i.i.i.i.i.i, i64 40
  %.029.val.val.val.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !tbaa !94
  %.not.i.i36.i.i.i.i.i.i = icmp eq ptr %.029.val.val.val.i.i.i.i.i.i, null
  br i1 %.not.i.i36.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.br, %bb.h ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !298
  %i.bs = getelementptr i8, ptr %.1.val.i.i.i.i.i.i, i64 40
  %.1.val.val.i.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !195
  %i.bt = getelementptr i8, ptr %.1.val.val.i.i.i.i.i.i, i64 40
  %.1.val.val.val.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !tbaa !94
  %.not.i.i37.i.i.i.i.i.i = icmp eq ptr %.1.val.val.val.i.i.i.i.i.i, null
  br i1 %.not.i.i37.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.bu, %bb.j ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !298
  %i.bv = getelementptr i8, ptr %.2.val.i.i.i.i.i.i, i64 40
  %.2.val.val.i.i.i.i.i.i = load ptr, ptr %i.bv, align 8, !tbaa !195
  %i.bw = getelementptr i8, ptr %.2.val.val.i.i.i.i.i.i, i64 40
  %.2.val.val.val.i.i.i.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !94
  %.not.i.i38.i.i.i.i.i.i = icmp eq ptr %.2.val.val.val.i.i.i.i.i.i, null
  br i1 %.not.i.i38.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit", label %.critedge.thread

"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.c
  %i.bx = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit148": ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit150": ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit148", %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit150", %bb.g, %bb.i, %bb.k
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i, %bb.g ], [ %.2.i.i.i.i.i.i, %bb.k ], [ %i.bz, %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit150" ], [ %i.by, %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit148" ], [ %i.bx, %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02949.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.not95 = icmp eq ptr %i.ax, %.028.i.i.i.i.i.i
  br i1 %.not95, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFbN4llvm12ElementCountEEZNS0_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS0_5VPlanERNS0_7VFRangeEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFbN4llvm12ElementCountEEZNS0_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS0_5VPlanERNS0_7VFRangeEE3$_0E9_M_invokeERKSt9_Any_dataOS1_">, ptr %i.q, align 8, !tbaa !305
  %i.ca = call noundef zeroext i1 @_ZN4llvm24LoopVectorizationPlanner24getDecisionAndClampRangeERKSt8functionIFbNS_12ElementCountEEERNS_7VFRangeE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(16) %1) #25
  %i.cb = load ptr, ptr %i.q, align 8, !tbaa !661 ; 2 uses
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = call noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3) #25, !inline_history !37 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %i.ca, label %.critedge._crit_edge, label %.critedge.thread

.critedge.thread:                                 ; preds = %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms37adjustFirstOrderRecurrenceMiddleUsersERNS_5VPlanERNS_7VFRangeEE3$_1EEbOT_T0_.exit", %._crit_edge.i.i.i.i.i.i, %bb.k, %.critedge
  %i.cd = call ptr @_ZN4llvm12VPBasicBlock14getFirstNonPhiEv(ptr noundef nonnull align 8 dereferenceable(128) %i.k) #25 ; 2 uses
  %.not96110 = icmp eq ptr %i.cd, %i.r
  br i1 %.not96110, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %.critedge.thread
  %spec.select2 = select i1 %i.aq, ptr null, ptr %i.ar
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph112, %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS0_14specificval_tyEEELj86ELb0EJNS_13VPInstructionEEEEEELj87ELb0EJS5_EE5matchEPKNS_12VPRecipeBaseE.exit.thread
  %.sroa.069.0111 = phi ptr [ %i.cd, %.lr.ph112 ], [ %i.cg, %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS0_14specificval_tyEEELj86ELb0EJNS_13VPInstructionEEEEEELj87ELb0EJS5_EE5matchEPKNS_12VPRecipeBaseE.exit.thread ] ; 9 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.069.0111, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !97 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.sroa.069.0111, i64 -16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.069.0111, i64 72
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !135
  %.not97 = icmp eq i8 %i.cj, 5
  br i1 %.not97, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS0_14specificval_tyEEELj86ELb0EJNS_13VPInstructionEEEEEELj87ELb0EJS5_EE20matchRecipeAndOpcodeIS5_EEbPKNS_12VPRecipeBaseE.exit.i, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS0_14specificval_tyEEELj86ELb0EJNS_13VPInstructionEEEEEELj87ELb0EJS5_EE5matchEPKNS_12VPRecipeBaseE.exit.thread

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS0_14specificval_tyEEELj86ELb0EJNS_13VPInstructionEEEEEELj87ELb0EJS5_EE20matchRecipeAndOpcodeIS5_EEbPKNS_12VPRecipeBaseE.exit.i: ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.069.0111, i64 208
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !149
  %i.cm = icmp eq i8 %i.cl, 87
  br i1 %i.cm, label %bb.o, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS0_14specificval_tyEEELj86ELb0EJNS_13VPInstructionEEEEEELj87ELb0EJS5_EE5matchEPKNS_12VPRecipeBaseE.exit.thread

bb.o:                                             ; preds = %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS0_14specificval_tyEEELj86ELb0EJNS_13VPInstructionEEEEEELj87ELb0EJS5_EE20matchRecipeAndOpcodeIS5_EEbPKNS_12VPRecipeBaseE.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.069.0111, i64 32 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !76
  switch i32 %i.co, label %bb.p [
    i32 0, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS0_14specificval_tyEEELj86ELb0EJNS_13VPInstructionEEEEEELj87ELb0EJS5_EE5matchEPKNS_12VPRecipeBaseE.exit.thread
    i32 1, label %.critedge.i
  ]

bb.p:                                             ; preds = %bb.o
  %i.cp = call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %i.ch) #25 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, -1
  br i1 %i.cq, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS0_14specificval_tyEEELj86ELb0EJNS_13VPInstructionEEEEEELj87ELb0EJS5_EE5matchEPKNS_12VPRecipeBaseE.exit.thread, label %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i

_ZNK4llvm13VPInstruction8isMaskedEv.exit.i:       ; preds = %bb.p
  %i.cr = add nuw i32 %i.cp, 1                    ; 2 uses
  %i.cs = load i32, ptr %i.cn, align 8, !tbaa !76
  %i.ct = icmp eq i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.q, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS0_14specificval_tyEEELj86ELb0EJNS_13VPInstructionEEEEEELj87ELb0EJS5_EE5matchEPKNS_12VPRecipeBaseE.exit.thread

bb.q:                                             ; preds = %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i
  %i.cu = call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %i.ch) #25 ; 2 uses
  %i.cv = icmp eq i32 %i.cu, -1
  br i1 %i.cv, label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = add nuw i32 %i.cu, 1
  %i.cx = load i32, ptr %i.cn, align 8, !tbaa !76
end_hunk_5
