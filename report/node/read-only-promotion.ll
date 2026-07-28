inline.NumInlined: 1067
inline.NumDeleted: 575
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal17ReadOnlyPromotion7PromoteEPNS0_7IsolateERKNS0_14SafepointScopeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS8_2EEEE:bb.a
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hg, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader132, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader132 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader132 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.hm = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !26, !noalias !28
  store i64 %i.hm, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !23, !noalias !29
  %i.hn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hn, %i.fi
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6TaggedINS1_10HeapObjectEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !33

_ZNSt6vectorIN2v88internal6TaggedINS1_10HeapObjectEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal6TaggedINS1_10HeapObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.gw, %_ZNKSt6vectorIN2v88internal6TaggedINS1_10HeapObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.hg, %middle.block ], [ %i.ho, %.lr.ph.i.i.i.i.i.i.i ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.go) #19, !noalias !8
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gu ; 2 uses
  br label %_ZN2v88internal12_GLOBAL__N_18ContainsERKSt13unordered_setINS0_6TaggedINS0_10HeapObjectEEENS0_6Object6HasherENS6_12KeyEqualSafeESaIS5_EES5_.exit.i.i

_ZN2v88internal12_GLOBAL__N_18ContainsERKSt13unordered_setINS0_6TaggedINS0_10HeapObjectEEENS0_6Object6HasherENS6_12KeyEqualSafeESaIS5_EES5_.exit.i.i: ; preds = %bb.ab, %bb.y, %_ZNSt6vectorIN2v88internal6TaggedINS1_10HeapObjectEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.ad, %bb.aa
  %.sroa.0.1 = phi ptr [ %i.gw, %_ZNSt6vectorIN2v88internal6TaggedINS1_10HeapObjectEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.0.0, %bb.ad ], [ %.sroa.0.0, %bb.y ], [ %.sroa.0.0, %bb.aa ], [ %.sroa.0.0, %bb.ab ] ; 2 uses
  %.sroa.7.1 = phi ptr [ %i.hp, %_ZNSt6vectorIN2v88internal6TaggedINS1_10HeapObjectEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %i.gl, %bb.ad ], [ %.sroa.7.0, %bb.y ], [ %.sroa.7.0, %bb.aa ], [ %.sroa.7.0, %bb.ab ] ; 2 uses
  %.sroa.11.1 = phi ptr [ %i.hq, %_ZNSt6vectorIN2v88internal6TaggedINS1_10HeapObjectEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.11.0, %bb.ad ], [ %.sroa.11.0, %bb.y ], [ %.sroa.11.0, %bb.aa ], [ %.sroa.11.0, %bb.ab ] ; 2 uses
  %.pre71.i.i = phi ptr [ %i.gw, %_ZNSt6vectorIN2v88internal6TaggedINS1_10HeapObjectEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %i.fh, %bb.ad ], [ %i.fh, %bb.y ], [ %i.fh, %bb.aa ], [ %i.fh, %bb.ab ] ; 2 uses
  %i.hr = phi ptr [ %i.hq, %_ZNSt6vectorIN2v88internal6TaggedINS1_10HeapObjectEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %i.fi, %bb.ad ], [ %i.fi, %bb.y ], [ %i.fi, %bb.aa ], [ %i.fi, %bb.ab ]
  %i.hs = phi ptr [ %i.hp, %_ZNSt6vectorIN2v88internal6TaggedINS1_10HeapObjectEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %i.gl, %bb.ad ], [ %i.fj, %bb.y ], [ %i.fj, %bb.aa ], [ %i.fj, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17, !noalias !8
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.038.065.i.i, i64 8 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.ep
  br i1 %i.hu, label %._crit_edge67.loopexit.i.i, label %bb.x

bb.ag:                                            ; preds = %._crit_edge67.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #20, !noalias !8
  unreachable

bb.ah:                                            ; preds = %._crit_edge67.i.i
  %i.hv = load ptr, ptr %i.el, align 8, !noalias !8 ; 2 uses
  %.not5.i.i.i.i27.i.i = icmp eq ptr %i.hv, null
  br i1 %.not5.i.i.i.i27.i.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i31.i.i, label %.lr.ph.i.i.i.i28.i.i

.lr.ph.i.i.i.i28.i.i:                             ; preds = %bb.ah, %.lr.ph.i.i.i.i28.i.i
  %.06.i.i.i.i29.i.i = phi ptr [ %i.hw, %.lr.ph.i.i.i.i28.i.i ], [ %i.hv, %bb.ah ] ; 2 uses
  %i.hw = load ptr, ptr %.06.i.i.i.i29.i.i, align 8, !noalias !8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i29.i.i, i64 noundef 24) #19, !noalias !8
  %.not.i.i.i.i30.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i30.i.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i31.i.i, label %.lr.ph.i.i.i.i28.i.i, !llvm.loop !18

_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i31.i.i: ; preds = %.lr.ph.i.i.i.i28.i.i, %bb.ah
  %i.hx = load ptr, ptr %16, align 8, !noalias !8
  %i.hy = load i64, ptr %i.ek, align 8, !noalias !8
  %i.hz = shl i64 %i.hy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hx, i8 0, i64 %i.hz, i1 false), !noalias !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i8 0, i64 16, i1 false), !noalias !8
  %i.ia = load ptr, ptr %16, align 8, !noalias !8 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.ej
  br i1 %i.ib, label %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit32.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i31.i.i
  %i.ic = load i64, ptr %i.ek, align 8, !noalias !8
  %i.id = shl i64 %i.ic, 3
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #19, !noalias !8
  br label %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit32.i.i

_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit32.i.i: ; preds = %bb.ai, %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i31.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17, !noalias !8
  call void @_ZN2v88internal18HeapObjectIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #17, !noalias !8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17, !noalias !8
  %i.ie = load ptr, ptr %11, align 8, !noalias !8 ; 3 uses
  %.not.i.i.i33.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i33.i.i, label %_ZN2v88internal12_GLOBAL__N_19Committee18DeterminePromoteesERKNS0_14SafepointScopeE.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit32.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !noalias !8
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = ptrtoint ptr %i.ie to i64
  %i.ij = sub i64 %i.ih, %i.ii
  call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef %i.ij) #19, !noalias !8
  br label %_ZN2v88internal12_GLOBAL__N_19Committee18DeterminePromoteesERKNS0_14SafepointScopeE.exit.i

_ZN2v88internal12_GLOBAL__N_19Committee18DeterminePromoteesERKNS0_14SafepointScopeE.exit.i: ; preds = %bb.aj, %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit32.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17, !noalias !8
  %i.ik = load ptr, ptr %i.q, align 8, !noalias !5 ; 2 uses
  %.not5.i.i.i.i.i2.i = icmp eq ptr %i.ik, null
  br i1 %.not5.i.i.i.i.i2.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i6.i, label %.lr.ph.i.i.i.i.i3.i

.lr.ph.i.i.i.i.i3.i:                              ; preds = %_ZN2v88internal12_GLOBAL__N_19Committee18DeterminePromoteesERKNS0_14SafepointScopeE.exit.i, %.lr.ph.i.i.i.i.i3.i
  %.06.i.i.i.i.i4.i = phi ptr [ %i.il, %.lr.ph.i.i.i.i.i3.i ], [ %i.ik, %_ZN2v88internal12_GLOBAL__N_19Committee18DeterminePromoteesERKNS0_14SafepointScopeE.exit.i ] ; 2 uses
  %i.il = load ptr, ptr %.06.i.i.i.i.i4.i, align 8, !noalias !5 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i4.i, i64 noundef 24) #19, !noalias !5
  %.not.i.i.i.i.i5.i = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i.i.i5.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i6.i, label %.lr.ph.i.i.i.i.i3.i, !llvm.loop !18

_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i6.i: ; preds = %.lr.ph.i.i.i.i.i3.i, %_ZN2v88internal12_GLOBAL__N_19Committee18DeterminePromoteesERKNS0_14SafepointScopeE.exit.i
  %i.im = load ptr, ptr %i.n, align 8, !noalias !5
  %i.in = load i64, ptr %i.p, align 8, !noalias !5
  %i.io = shl i64 %i.in, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.im, i8 0, i64 %i.io, i1 false), !noalias !5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !noalias !5
  %i.ip = load ptr, ptr %i.n, align 8, !noalias !5 ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.o
  br i1 %i.iq, label %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit.i7.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i6.i
  %i.ir = load i64, ptr %i.p, align 8, !noalias !5
  %i.is = shl i64 %i.ir, 3
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #19, !noalias !5
  br label %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit.i7.i

_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit.i7.i: ; preds = %bb.ak, %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i6.i
  %i.it = load ptr, ptr %i.k, align 8, !noalias !5 ; 2 uses
  %.not5.i.i.i.i1.i.i = icmp eq ptr %i.it, null
  br i1 %.not5.i.i.i.i1.i.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i5.i.i, label %.lr.ph.i.i.i.i2.i.i

.lr.ph.i.i.i.i2.i.i:                              ; preds = %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit.i7.i, %.lr.ph.i.i.i.i2.i.i
  %.06.i.i.i.i3.i.i = phi ptr [ %i.iu, %.lr.ph.i.i.i.i2.i.i ], [ %i.it, %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit.i7.i ] ; 2 uses
  %i.iu = load ptr, ptr %.06.i.i.i.i3.i.i, align 8, !noalias !5 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i3.i.i, i64 noundef 24) #19, !noalias !5
  %.not.i.i.i.i4.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i.i4.i.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i5.i.i, label %.lr.ph.i.i.i.i2.i.i, !llvm.loop !18

_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i5.i.i: ; preds = %.lr.ph.i.i.i.i2.i.i, %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit.i7.i
  %i.iv = load ptr, ptr %i.h, align 8, !noalias !5
  %i.iw = load i64, ptr %i.j, align 8, !noalias !5
  %i.ix = shl i64 %i.iw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.iv, i8 0, i64 %i.ix, i1 false), !noalias !5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false), !noalias !5
  %i.iy = load ptr, ptr %i.h, align 8, !noalias !5 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.i
  br i1 %i.iz, label %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit6.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i5.i.i
  %i.ja = load i64, ptr %i.j, align 8, !noalias !5
  %i.jb = shl i64 %i.ja, 3
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #19, !noalias !5
  br label %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit6.i.i

_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit6.i.i: ; preds = %bb.al, %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i5.i.i
  %i.jc = load ptr, ptr %i.e, align 8, !noalias !5 ; 2 uses
  %.not5.i.i.i.i7.i.i = icmp eq ptr %i.jc, null
  br i1 %.not5.i.i.i.i7.i.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i11.i.i, label %.lr.ph.i.i.i.i8.i.i

.lr.ph.i.i.i.i8.i.i:                              ; preds = %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit6.i.i, %.lr.ph.i.i.i.i8.i.i
  %.06.i.i.i.i9.i.i = phi ptr [ %i.jd, %.lr.ph.i.i.i.i8.i.i ], [ %i.jc, %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit6.i.i ] ; 2 uses
  %i.jd = load ptr, ptr %.06.i.i.i.i9.i.i, align 8, !noalias !5 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i9.i.i, i64 noundef 24) #19, !noalias !5
  %.not.i.i.i.i10.i.i = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i.i10.i.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i11.i.i, label %.lr.ph.i.i.i.i8.i.i, !llvm.loop !18

_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i11.i.i: ; preds = %.lr.ph.i.i.i.i8.i.i, %_ZNSt13unordered_setIN2v88internal6TaggedINS1_10HeapObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit6.i.i
  %i.je = load ptr, ptr %i.b, align 8, !noalias !5
  %i.jf = load i64, ptr %i.d, align 8, !noalias !5
  %i.jg = shl i64 %i.jf, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.je, i8 0, i64 %i.jg, i1 false), !noalias !5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !5
  %i.jh = load ptr, ptr %i.b, align 8, !noalias !5 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.c
  br i1 %i.ji, label %_ZN2v88internal12_GLOBAL__N_19Committee18DeterminePromoteesEPNS0_7IsolateERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEERKNS0_14SafepointScopeE.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i11.i.i
  %i.jj = load i64, ptr %i.d, align 8, !noalias !5
  %i.jk = shl i64 %i.jj, 3
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #19, !noalias !5
  br label %_ZN2v88internal12_GLOBAL__N_19Committee18DeterminePromoteesEPNS0_7IsolateERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEERKNS0_14SafepointScopeE.exit

_ZN2v88internal12_GLOBAL__N_19Committee18DeterminePromoteesEPNS0_7IsolateERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEERKNS0_14SafepointScopeE.exit: ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i11.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17, !noalias !5
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %i.jl = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  store ptr %i.jl, ptr %19, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  store i64 1, ptr %i.jm, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %19, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jo, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jp, i8 0, i64 16, i1 false)
  %i.jq = getelementptr i8, ptr %0, i64 55744
  %.val = load ptr, ptr %i.jq, align 8
  %i.jr = icmp eq ptr %.sroa.0.2, %.sroa.7.2
  br i1 %i.jr, label %_ZN2v88internal12_GLOBAL__N_121ReadOnlyPromotionImpl18CopyToReadOnlyHeapEPNS0_7IsolateERKSt6vectorINS0_6TaggedINS0_10HeapObjectEEESaIS8_EEPSt13unordered_mapIS8_S8_NS0_6Object6HasherENSE_12KeyEqualSafeESaISt4pairIKS8_S8_EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal12_GLOBAL__N_19Committee18DeterminePromoteesEPNS0_7IsolateERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEERKNS0_14SafepointScopeE.exit, %bb.aq
  %.sroa.02.07.i = phi ptr [ %i.lp, %bb.aq ], [ %.sroa.0.2, %_ZN2v88internal12_GLOBAL__N_19Committee18DeterminePromoteesEPNS0_7IsolateERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEERKNS0_14SafepointScopeE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.js = load i64, ptr %.sroa.02.07.i, align 8   ; 3 uses
  store i64 %i.js, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store i64 %i.js, ptr %8, align 8
  %i.jt = add i64 %i.js, -1
  %i.ju = inttoptr i64 %i.jt to ptr
  %i.jv = load atomic volatile i64, ptr %i.ju monotonic, align 8
  %i.jw = call noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 %i.jv) #17 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.jx = call i64 @_ZN2v88internal13ReadOnlySpace11AllocateRawEiNS0_19AllocationAlignmentE(ptr noundef nonnull align 8 dereferenceable(120) %.val, i32 noundef %i.jw, i8 noundef zeroext 0) #17 ; 4 uses
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %bb.an, label %_ZNK2v88internal16AllocationResult15ToObjectCheckedEv.exit.i, !prof !13

bb.an:                                            ; preds = %.lr.ph.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #20
  unreachable

_ZNK2v88internal16AllocationResult15ToObjectCheckedEv.exit.i: ; preds = %.lr.ph.i
  store i64 %i.jx, ptr %9, align 8
  %i.jz = add i64 %i.jx, -1
  %i.ka = load i64, ptr %7, align 8               ; 2 uses
  %i.kb = add i64 %i.ka, -1
  %i.kc = sext i32 %i.jw to i64                   ; 2 uses
  %i.kd = lshr i64 %i.kc, 3                       ; 5 uses
  %i.ke = inttoptr i64 %i.jz to ptr               ; 9 uses
  %i.kf = inttoptr i64 %i.kb to ptr               ; 9 uses
  %i.kg = icmp eq i64 %i.kd, 0
  br i1 %i.kg, label %_ZN2v88internal4Heap9CopyBlockEmmm.exit.i, label %20

20:                                               ; preds = %_ZNK2v88internal16AllocationResult15ToObjectCheckedEv.exit.i
  %21 = icmp ult i32 %i.jw, 128
  br i1 %21, label %.preheader.i.i.i.i.preheader.a, label %bb.ao

.preheader.i.i.i.i.preheader.a:                   ; preds = %20
  %min.iters.check109 = icmp ult i32 %i.jw, 32
  %22 = sub i64 %i.ka, %i.jx
  %diff.check107 = icmp ugt i64 %22, -32
  %or.cond125 = select i1 %min.iters.check109, i1 true, i1 %diff.check107
  br i1 %or.cond125, label %.preheader.i.i.i.i.preheader131, label %vector.ph110

vector.ph110:                                     ; preds = %.preheader.i.i.i.i.preheader.a
  %n.vec112 = and i64 %i.kd, 12                   ; 4 uses
  %23 = shl nuw nsw i64 %n.vec112, 3              ; 2 uses
  %24 = getelementptr i8, ptr %i.kf, i64 %23
  %25 = and i64 %i.kd, 3
  %26 = getelementptr i8, ptr %i.ke, i64 %23
  %27 = getelementptr i8, ptr %i.kf, i64 16
  %wide.load117 = load <2 x i64>, ptr %i.kf, align 8
  %wide.load118 = load <2 x i64>, ptr %27, align 8
  %28 = getelementptr i8, ptr %i.ke, i64 16
  store <2 x i64> %wide.load117, ptr %i.ke, align 8
  store <2 x i64> %wide.load118, ptr %28, align 8
  %29 = icmp eq i64 %n.vec112, 4
  br i1 %29, label %middle.block120, label %vector.body113.1

vector.body113.1:                                 ; preds = %vector.ph110
  %next.gep115.1 = getelementptr i8, ptr %i.kf, i64 32
  %next.gep116.1 = getelementptr i8, ptr %i.ke, i64 32
  %30 = getelementptr i8, ptr %i.kf, i64 48
  %wide.load117.1 = load <2 x i64>, ptr %next.gep115.1, align 8
  %wide.load118.1 = load <2 x i64>, ptr %30, align 8
  %31 = getelementptr i8, ptr %i.ke, i64 48
  store <2 x i64> %wide.load117.1, ptr %next.gep116.1, align 8
  store <2 x i64> %wide.load118.1, ptr %31, align 8
  %32 = icmp eq i64 %n.vec112, 8
  br i1 %32, label %middle.block120, label %vector.body113.2

vector.body113.2:                                 ; preds = %vector.body113.1
  %next.gep115.2 = getelementptr i8, ptr %i.kf, i64 64
  %next.gep116.2 = getelementptr i8, ptr %i.ke, i64 64
  %33 = getelementptr i8, ptr %i.kf, i64 80
  %wide.load117.2 = load <2 x i64>, ptr %next.gep115.2, align 8
  %wide.load118.2 = load <2 x i64>, ptr %33, align 8
  %34 = getelementptr i8, ptr %i.ke, i64 80
  store <2 x i64> %wide.load117.2, ptr %next.gep116.2, align 8
  store <2 x i64> %wide.load118.2, ptr %34, align 8
  br label %middle.block120

middle.block120:                                  ; preds = %vector.body113.2, %vector.body113.1, %vector.ph110
  %cmp.n121 = icmp eq i64 %i.kd, %n.vec112
  br i1 %cmp.n121, label %_ZN2v88internal4Heap9CopyBlockEmmm.exit.i, label %.preheader.i.i.i.i.preheader131

.preheader.i.i.i.i.preheader131:                  ; preds = %.preheader.i.i.i.i.preheader.a, %middle.block120
  %.09.i.i.i.i.ph = phi ptr [ %i.kf, %.preheader.i.i.i.i.preheader.a ], [ %24, %middle.block120 ] ; 2 uses
  %.08.i.i.i.i.ph = phi i64 [ %i.kd, %.preheader.i.i.i.i.preheader.a ], [ %25, %middle.block120 ] ; 4 uses
  %.0.i.i.i.i.ph = phi ptr [ %i.ke, %.preheader.i.i.i.i.preheader.a ], [ %26, %middle.block120 ] ; 2 uses
  %35 = add nsw i64 %.08.i.i.i.i.ph, -1
  %xtraiter = and i64 %.08.i.i.i.i.ph, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.prol

.preheader.i.i.i.i.prol:                          ; preds = %.preheader.i.i.i.i.preheader131, %.preheader.i.i.i.i.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.ki, %.preheader.i.i.i.i.prol ], [ %.09.i.i.i.i.ph, %.preheader.i.i.i.i.preheader131 ] ; 2 uses
  %.08.i.i.i.i.prol = phi i64 [ %i.kh, %.preheader.i.i.i.i.prol ], [ %.08.i.i.i.i.ph, %.preheader.i.i.i.i.preheader131 ]
  %.0.i.i.i.i.prol = phi ptr [ %i.kk, %.preheader.i.i.i.i.prol ], [ %.0.i.i.i.i.ph, %.preheader.i.i.i.i.preheader131 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.preheader131 ]
  %i.kh = add nsw i64 %.08.i.i.i.i.prol, -1       ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 8 ; 2 uses
  %i.kj = load i64, ptr %.09.i.i.i.i.prol, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.prol, i64 8 ; 2 uses
  store i64 %i.kj, ptr %.0.i.i.i.i.prol, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.prol, !llvm.loop !34

.preheader.i.i.i.i.prol.loopexit:                 ; preds = %.preheader.i.i.i.i.prol, %.preheader.i.i.i.i.preheader131
  %.09.i.i.i.i.unr = phi ptr [ %.09.i.i.i.i.ph, %.preheader.i.i.i.i.preheader131 ], [ %i.ki, %.preheader.i.i.i.i.prol ]
  %.08.i.i.i.i.unr = phi i64 [ %.08.i.i.i.i.ph, %.preheader.i.i.i.i.preheader131 ], [ %i.kh, %.preheader.i.i.i.i.prol ]
  %.0.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.ph, %.preheader.i.i.i.i.preheader131 ], [ %i.kk, %.preheader.i.i.i.i.prol ]
  %i.kl = icmp ult i64 %35, 7
  br i1 %i.kl, label %_ZN2v88internal4Heap9CopyBlockEmmm.exit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.li, %.preheader.i.i.i.i ], [ %.09.i.i.i.i.unr, %.preheader.i.i.i.i.prol.loopexit ] ; 9 uses
  %.08.i.i.i.i = phi i64 [ %i.lh, %.preheader.i.i.i.i ], [ %.08.i.i.i.i.unr, %.preheader.i.i.i.i.prol.loopexit ]
  %.0.i.i.i.i = phi ptr [ %i.lk, %.preheader.i.i.i.i ], [ %.0.i.i.i.i.unr, %.preheader.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %i.kn = load i64, ptr %.09.i.i.i.i, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  store i64 %i.kn, ptr %.0.i.i.i.i, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  %i.kq = load i64, ptr %i.km, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  store i64 %i.kq, ptr %i.ko, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  %i.kt = load i64, ptr %i.kp, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  store i64 %i.kt, ptr %i.kr, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32
  %i.kw = load i64, ptr %i.ks, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 32
  store i64 %i.kw, ptr %i.ku, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 40
  %i.kz = load i64, ptr %i.kv, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 40
  store i64 %i.kz, ptr %i.kx, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  %i.lc = load i64, ptr %i.ky, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 48
  store i64 %i.lc, ptr %i.la, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 56
  %i.lf = load i64, ptr %i.lb, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 56
  store i64 %i.lf, ptr %i.ld, align 8
  %i.lh = add nsw i64 %.08.i.i.i.i, -8            ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 64
  %i.lj = load i64, ptr %i.le, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 64
  store i64 %i.lj, ptr %i.lg, align 8
  %.not.i.i.i.i.7 = icmp eq i64 %i.lh, 0
  br i1 %.not.i.i.i.i.7, label %_ZN2v88internal4Heap9CopyBlockEmmm.exit.i, label %.preheader.i.i.i.i, !llvm.loop !36

bb.ao:                                            ; preds = %20
  %i.ll = and i64 %i.kc, -8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ke, ptr align 1 %i.kf, i64 %i.ll, i1 false)
  br label %_ZN2v88internal4Heap9CopyBlockEmmm.exit.i

_ZN2v88internal4Heap9CopyBlockEmmm.exit.i:        ; preds = %.preheader.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i, %middle.block120, %bb.ao, %_ZNK2v88internal16AllocationResult15ToObjectCheckedEv.exit.i
  %i.lm = call { ptr, i8 } @_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEESt4pairIKS4_S4_ESaIS7_ENSt8__detail10_Select1stENS1_6Object12KeyEqualSafeENSB_6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS4_SL_EEES5_INS9_14_Node_iteratorIS7_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 0 uses
  %i.ln = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1634), align 2, !range !11, !noundef !12
  %i.lo = trunc nuw i8 %i.ln to i1
  br i1 %i.lo, label %bb.ap, label %bb.aq, !prof !13

bb.ap:                                            ; preds = %_ZN2v88internal4Heap9CopyBlockEmmm.exit.i
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 8
  %.sroa.0.0.copyload.i = load i64, ptr %9, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_121ReadOnlyPromotionImpl17LogPromotedObjectENS0_6TaggedINS0_10HeapObjectEEES5_(i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN2v88internal4Heap9CopyBlockEmmm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 8 ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %.sroa.7.2
  br i1 %i.lq, label %_ZN2v88internal12_GLOBAL__N_121ReadOnlyPromotionImpl18CopyToReadOnlyHeapEPNS0_7IsolateERKSt6vectorINS0_6TaggedINS0_10HeapObjectEEESaIS8_EEPSt13unordered_mapIS8_S8_NS0_6Object6HasherENSE_12KeyEqualSafeESaISt4pairIKS8_S8_EEE.exit, label %.lr.ph.i

_ZN2v88internal12_GLOBAL__N_121ReadOnlyPromotionImpl18CopyToReadOnlyHeapEPNS0_7IsolateERKSt6vectorINS0_6TaggedINS0_10HeapObjectEEESaIS8_EEPSt13unordered_mapIS8_S8_NS0_6Object6HasherENSE_12KeyEqualSafeESaISt4pairIKS8_S8_EEE.exit: ; preds = %bb.aq, %_ZN2v88internal12_GLOBAL__N_19Committee18DeterminePromoteesEPNS0_7IsolateERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEERKNS0_14SafepointScopeE.exit
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 55464 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ls = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 200) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_121ReadOnlyPromotionImpl21UpdatePointersVisitorE, i64 16), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_121ReadOnlyPromotionImpl21UpdatePointersVisitorE, i64 232), ptr %i.ls, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %0, ptr %i.lt, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %19, ptr %i.lu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN2v88internal23EmbedderStackStateScopeC1EPNS0_4HeapENS0_24EmbedderStackStateOriginEN5cppgc18EmbedderStackStateE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %i.lr, i32 noundef 1, i32 noundef 1) #17
  call void @_ZN2v88internal4Heap12IterateRootsEPNS0_11RootVisitorENS_4base7EnumSetINS0_8SkipRootEiEENS1_16IterateRootsModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.lr, ptr noundef nonnull %i.ls, i32 0, i32 noundef 0) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZN2v88internal18HeapObjectIteratorC1EPNS0_4HeapERKNS0_14SafepointScopeENS1_20HeapObjectsFilteringE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull %i.lr, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 0) #17
  %i.lv = call i64 @_ZN2v88internal18HeapObjectIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #17 ; 2 uses
  %i.lw = icmp eq i64 %i.lv, 0
  br i1 %i.lw, label %._crit_edge.i, label %.lr.ph.i13

._crit_edge.i:                                    ; preds = %.lr.ph.i13, %_ZN2v88internal12_GLOBAL__N_121ReadOnlyPromotionImpl18CopyToReadOnlyHeapEPNS0_7IsolateERKSt6vectorINS0_6TaggedINS0_10HeapObjectEEESaIS8_EEPSt13unordered_mapIS8_S8_NS0_6Object6HasherENSE_12KeyEqualSafeESaISt4pairIKS8_S8_EEE.exit
  %.sroa.019.031.i = load ptr, ptr %i.jn, align 8 ; 2 uses
  %i.lx = icmp eq ptr %.sroa.019.031.i, null
  br i1 %i.lx, label %._crit_edge35.i, label %.lr.ph34.i

.lr.ph.i13:                                       ; preds = %_ZN2v88internal12_GLOBAL__N_121ReadOnlyPromotionImpl18CopyToReadOnlyHeapEPNS0_7IsolateERKSt6vectorINS0_6TaggedINS0_10HeapObjectEEESaIS8_EEPSt13unordered_mapIS8_S8_NS0_6Object6HasherENSE_12KeyEqualSafeESaISt4pairIKS8_S8_EEE.exit, %.lr.ph.i13
  %storemerge30.i = phi i64 [ %i.ly, %.lr.ph.i13 ], [ %i.lv, %_ZN2v88internal12_GLOBAL__N_121ReadOnlyPromotionImpl18CopyToReadOnlyHeapEPNS0_7IsolateERKSt6vectorINS0_6TaggedINS0_10HeapObjectEEESaIS8_EEPSt13unordered_mapIS8_S8_NS0_6Object6HasherENSE_12KeyEqualSafeESaISt4pairIKS8_S8_EEE.exit ]
  call void @_ZN2v88internal11VisitObjectEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEEPNS0_13ObjectVisitorE(ptr noundef nonnull %0, i64 %storemerge30.i, ptr noundef nonnull %4) #17
  %i.ly = call i64 @_ZN2v88internal18HeapObjectIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #17 ; 2 uses
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %._crit_edge.i, label %.lr.ph.i13, !llvm.loop !37

._crit_edge35.i:                                  ; preds = %.lr.ph34.i, %._crit_edge.i
  %i.ma = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 10688 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 55984 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mc) #17
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 55952
  %i.me = load ptr, ptr %i.md, align 8            ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 55936 ; 2 uses
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %_ZN2v88internal12_GLOBAL__N_121ReadOnlyPromotionImpl14UpdatePointersEPNS0_7IsolateERKNS0_14SafepointScopeERKSt13unordered_mapINS0_6TaggedINS0_10HeapObjectEEESB_NS0_6Object6HasherENSC_12KeyEqualSafeESaISt4pairIKSB_SB_EEE.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %._crit_edge35.i
  %i.mh = getelementptr inbounds nuw i8, ptr %19, i64 24
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ar, %.lr.ph.i.preheader.i.i
  %.sroa.03.014.i.i.i = phi ptr [ %i.mm, %bb.ar ], [ %i.me, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.03.014.i.i.i, i64 32
  %i.mj = load i32, ptr %i.mi, align 4
  %i.mk = shl i32 %i.mj, 10                       ; 2 uses
  %i.ml = or disjoint i32 %i.mk, 1023
  br label %bb.as

bb.ar:                                            ; preds = %_ZZN2v88internal15JSDispatchTable22IterateActiveEntriesInIZNS0_12_GLOBAL__N_121ReadOnlyPromotionImpl14UpdatePointersEPNS0_7IsolateERKNS0_14SafepointScopeERKSt13unordered_mapINS0_6TaggedINS0_10HeapObjectEEESD_NS0_6Object6HasherENSE_12KeyEqualSafeESaISt4pairIKSD_SD_EEEEUlNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEE_EEvPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportET_ENKUljE_clEj.exit.i.i.i
  %i.mm = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.014.i.i.i) #21 ; 2 uses
  %i.mn = icmp eq ptr %i.mm, %i.mf
  br i1 %i.mn, label %_ZN2v88internal12_GLOBAL__N_121ReadOnlyPromotionImpl14UpdatePointersEPNS0_7IsolateERKNS0_14SafepointScopeERKSt13unordered_mapINS0_6TaggedINS0_10HeapObjectEEESB_NS0_6Object6HasherENSC_12KeyEqualSafeESaISt4pairIKSB_SB_EEE.exit, label %.lr.ph.i.i.i

bb.as:                                            ; preds = %_ZZN2v88internal15JSDispatchTable22IterateActiveEntriesInIZNS0_12_GLOBAL__N_121ReadOnlyPromotionImpl14UpdatePointersEPNS0_7IsolateERKNS0_14SafepointScopeERKSt13unordered_mapINS0_6TaggedINS0_10HeapObjectEEESD_NS0_6Object6HasherENSE_12KeyEqualSafeESaISt4pairIKSD_SD_EEEEUlNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEE_EEvPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportET_ENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.013.i.i.i = phi i32 [ %i.mk, %.lr.ph.i.i.i ], [ %i.om, %_ZZN2v88internal15JSDispatchTable22IterateActiveEntriesInIZNS0_12_GLOBAL__N_121ReadOnlyPromotionImpl14UpdatePointersEPNS0_7IsolateERKNS0_14SafepointScopeERKSt13unordered_mapINS0_6TaggedINS0_10HeapObjectEEESD_NS0_6Object6HasherENSE_12KeyEqualSafeESaISt4pairIKSD_SD_EEEEUlNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEE_EEvPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportET_ENKUljE_clEj.exit.i.i.i ] ; 4 uses
  %i.mo = load ptr, ptr %i.mb, align 8            ; 2 uses
  %i.mp = zext i32 %.013.i.i.i to i64
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %i.mo, i64 %i.mp
  %i.mr = load atomic i64, ptr %i.mq monotonic, align 8
  %i.ms = icmp ugt i64 %i.mr, -281474976710657
  br i1 %i.ms, label %_ZZN2v88internal15JSDispatchTable22IterateActiveEntriesInIZNS0_12_GLOBAL__N_121ReadOnlyPromotionImpl14UpdatePointersEPNS0_7IsolateERKNS0_14SafepointScopeERKSt13unordered_mapINS0_6TaggedINS0_10HeapObjectEEESD_NS0_6Object6HasherENSE_12KeyEqualSafeESaISt4pairIKSD_SD_EEEEUlNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEE_EEvPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportET_ENKUljE_clEj.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.mt = shl i32 %.013.i.i.i, 8
  %i.mu = and i32 %.013.i.i.i, 16777215
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [16 x i8], ptr %i.mo, i64 %i.mv ; 2 uses
  %i.mx = load atomic i64, ptr %i.mw monotonic, align 8
  %i.my = icmp ugt i64 %i.mx, -281474976710657
  br i1 %i.my, label %bb.au, label %_ZN2v88internal15JSDispatchTable7GetCodeENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i.i.i.i.i, !prof !13

bb.au:                                            ; preds = %bb.at
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.29) #20
  unreachable

_ZN2v88internal15JSDispatchTable7GetCodeENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i.i.i.i.i: ; preds = %bb.at
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.na = load atomic i64, ptr %i.mz monotonic, align 8
  %i.nb = lshr i64 %i.na, 16
  %i.nc = or i64 %i.nb, 1                         ; 6 uses
  %i.nd = load i64, ptr %i.mh, align 8
  %.not.not.i.i.i.i.i.i.i = icmp eq i64 %i.nd, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %.preheader.i.i15, label %bb.aw

.preheader.i.i15:                                 ; preds = %_ZN2v88internal15JSDispatchTable7GetCodeENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i.i.i.i.i, %bb.av
  %.sroa.07.0.in.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i, %bb.av ], [ %i.jn, %_ZN2v88internal15JSDispatchTable7GetCodeENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i.i.i.i.i ]
  %.sroa.07.0.i.i.i.i.i.i.i = load ptr, ptr %.sroa.07.0.in.i.i.i.i.i.i.i, align 8 ; 4 uses
  %i.ne = icmp eq ptr %.sroa.07.0.i.i.i.i.i.i.i, null
  br i1 %i.ne, label %_ZZN2v88internal15JSDispatchTable22IterateActiveEntriesInIZNS0_12_GLOBAL__N_121ReadOnlyPromotionImpl14UpdatePointersEPNS0_7IsolateERKNS0_14SafepointScopeERKSt13unordered_mapINS0_6TaggedINS0_10HeapObjectEEESD_NS0_6Object6HasherENSE_12KeyEqualSafeESaISt4pairIKSD_SD_EEEEUlNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEE_EEvPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportET_ENKUljE_clEj.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %.preheader.i.i15
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.nf, align 8
  %i.ng = icmp eq i64 %i.nc, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.ng, label %_ZNKSt13unordered_mapIN2v88internal6TaggedINS1_10HeapObjectEEES4_NS1_6Object6HasherENS5_12KeyEqualSafeESaISt4pairIKS4_S4_EEE4findERS9_.exit.i.i.i.i.i, label %.preheader.i.i15, !llvm.loop !38

bb.aw:                                            ; preds = %_ZN2v88internal15JSDispatchTable7GetCodeENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i.i.i.i.i
  %i.nh = load i64, ptr %i.jm, align 8            ; 2 uses
  %i.ni = urem i64 %i.nc, %i.nh                   ; 2 uses
  %i.nj = load ptr, ptr %19, align 8
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.ni
  %i.nl = load ptr, ptr %i.nk, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZZN2v88internal15JSDispatchTable22IterateActiveEntriesInIZNS0_12_GLOBAL__N_121ReadOnlyPromotionImpl14UpdatePointersEPNS0_7IsolateERKNS0_14SafepointScopeERKSt13unordered_mapINS0_6TaggedINS0_10HeapObjectEEESD_NS0_6Object6HasherENSE_12KeyEqualSafeESaISt4pairIKSD_SD_EEEEUlNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEE_EEvPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportET_ENKUljE_clEj.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nm = load ptr, ptr %i.nl, align 8            ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.np = load i64, ptr %i.no, align 8
  %i.nq = icmp eq i64 %i.nc, %i.np
  %.sroa.0.0.copyload.i.i20.i.i.i.i.i.i.i.i.i = load i64, ptr %i.nn, align 8
  %i.nr = icmp eq i64 %i.nc, %.sroa.0.0.copyload.i.i20.i.i.i.i.i.i.i.i.i
  %i.ns = select i1 %i.nq, i1 %i.nr, i1 false
  br i1 %i.ns, label %_ZNKSt13unordered_mapIN2v88internal6TaggedINS1_10HeapObjectEEES4_NS1_6Object6HasherENS5_12KeyEqualSafeESaISt4pairIKS4_S4_EEE4findERS9_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.az
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.nu = icmp eq i64 %i.nc, %i.nz
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.nt, align 8
  %i.nv = icmp eq i64 %i.nc, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  %i.nw = select i1 %i.nu, i1 %i.nv, i1 false
  br i1 %i.nw, label %_ZNKSt13unordered_mapIN2v88internal6TaggedINS1_10HeapObjectEEES4_NS1_6Object6HasherENS5_12KeyEqualSafeESaISt4pairIKS4_S4_EEE4findERS9_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !39

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ax, %bb.ay
  %.021.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nx, %bb.ay ], [ %i.nm, %bb.ax ]
  %i.nx = load ptr, ptr %.021.i.i.i.i.i.i.i.i.i, align 8 ; 5 uses
  %.not18.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nx, null
  br i1 %.not18.i.i.i.i.i.i.i.i.i, label %_ZZN2v88internal15JSDispatchTable22IterateActiveEntriesInIZNS0_12_GLOBAL__N_121ReadOnlyPromotionImpl14UpdatePointersEPNS0_7IsolateERKNS0_14SafepointScopeERKSt13unordered_mapINS0_6TaggedINS0_10HeapObjectEEESD_NS0_6Object6HasherENSE_12KeyEqualSafeESaISt4pairIKSD_SD_EEEEUlNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEE_EEvPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportET_ENKUljE_clEj.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 24
  %i.nz = load i64, ptr %i.ny, align 8            ; 2 uses
  %i.oa = urem i64 %i.nz, %i.nh
  %.not19.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.oa, %i.ni
  br i1 %.not19.i.i.i.i.i.i.i.i.i, label %bb.ay, label %..loopexit_crit_edge22.i.i.i.i.i.i.i.i.i, !llvm.loop !39

..loopexit_crit_edge22.i.i.i.i.i.i.i.i.i:         ; preds = %bb.az
  br label %_ZZN2v88internal15JSDispatchTable22IterateActiveEntriesInIZNS0_12_GLOBAL__N_121ReadOnlyPromotionImpl14UpdatePointersEPNS0_7IsolateERKNS0_14SafepointScopeERKSt13unordered_mapINS0_6TaggedINS0_10HeapObjectEEESD_NS0_6Object6HasherENSE_12KeyEqualSafeESaISt4pairIKSD_SD_EEEEUlNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEE_EEvPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportET_ENKUljE_clEj.exit.i.i.i, !llvm.loop !39

_ZNKSt13unordered_mapIN2v88internal6TaggedINS1_10HeapObjectEEES4_NS1_6Object6HasherENS5_12KeyEqualSafeESaISt4pairIKS4_S4_EEE4findERS9_.exit.i.i.i.i.i: ; preds = %bb.ay, %bb.av, %bb.ax
  %.sroa.07.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i, %bb.av ], [ %i.nm, %bb.ax ], [ %i.nx, %bb.ay ]
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i.i.i, i64 16
  %.sroa.05.0.copyload.i.i.i.i.i = load i64, ptr %i.ob, align 8 ; 3 uses
  %i.oc = add i64 %.sroa.05.0.copyload.i.i.i.i.i, -1
  %i.od = inttoptr i64 %i.oc to ptr
  %i.oe = load atomic volatile i64, ptr %i.od monotonic, align 8
  %i.of = add i64 %i.oe, 11
  %i.og = inttoptr i64 %i.of to ptr
  %i.oh = load atomic volatile i16, ptr %i.og monotonic, align 2
  %i.oi = icmp eq i16 %i.oh, 185
  br i1 %i.oi, label %bb.bb, label %bb.ba, !prof !20

bb.ba:                                            ; preds = %_ZNKSt13unordered_mapIN2v88internal6TaggedINS1_10HeapObjectEEES4_NS1_6Object6HasherENS5_12KeyEqualSafeESaISt4pairIKS4_S4_EEE4findERS9_.exit.i.i.i.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.28) #20
  unreachable

bb.bb:                                            ; preds = %_ZNKSt13unordered_mapIN2v88internal6TaggedINS1_10HeapObjectEEES4_NS1_6Object6HasherENS5_12KeyEqualSafeESaISt4pairIKS4_S4_EEE4findERS9_.exit.i.i.i.i.i
  %i.oj = add i64 %.sroa.05.0.copyload.i.i.i.i.i, 39
  %i.ok = inttoptr i64 %i.oj to ptr
  %i.ol = load i64, ptr %i.ok, align 8
  call void @_ZN2v88internal15JSDispatchTable34SetCodeAndEntrypointNoWriteBarrierENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_6TaggedINS0_4CodeEEEm(ptr noundef nonnull align 8 dereferenceable(44) %i.mb, i32 %i.mt, i64 %.sroa.05.0.copyload.i.i.i.i.i, i64 noundef %i.ol)
  br label %_ZZN2v88internal15JSDispatchTable22IterateActiveEntriesInIZNS0_12_GLOBAL__N_121ReadOnlyPromotionImpl14UpdatePointersEPNS0_7IsolateERKNS0_14SafepointScopeERKSt13unordered_mapINS0_6TaggedINS0_10HeapObjectEEESD_NS0_6Object6HasherENSE_12KeyEqualSafeESaISt4pairIKSD_SD_EEEEUlNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEE_EEvPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportET_ENKUljE_clEj.exit.i.i.i

_ZZN2v88internal15JSDispatchTable22IterateActiveEntriesInIZNS0_12_GLOBAL__N_121ReadOnlyPromotionImpl14UpdatePointersEPNS0_7IsolateERKNS0_14SafepointScopeERKSt13unordered_mapINS0_6TaggedINS0_10HeapObjectEEESD_NS0_6Object6HasherENSE_12KeyEqualSafeESaISt4pairIKSD_SD_EEEEUlNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEEE_EEvPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportET_ENKUljE_clEj.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.preheader.i.i15, %bb.bb, %..loopexit_crit_edge22.i.i.i.i.i.i.i.i.i, %bb.aw, %bb.as
  %i.om = add i32 %.013.i.i.i, 1                  ; 2 uses
  %.not.i.i.i14 = icmp ugt i32 %i.om, %i.ml
  br i1 %.not.i.i.i14, label %bb.ar, label %bb.as, !llvm.loop !40

.lr.ph34.i:                                       ; preds = %._crit_edge.i, %.lr.ph34.i
  %.sroa.019.032.i = phi ptr [ %.sroa.019.0.i, %.lr.ph34.i ], [ %.sroa.019.031.i, %._crit_edge.i ] ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.019.032.i, i64 16
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8
  call void @_ZN2v88internal11VisitObjectEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEEPNS0_13ObjectVisitorE(ptr noundef nonnull %0, i64 %.sroa.3.0.copyload.i, ptr noundef nonnull %4) #17
  %.sroa.019.0.i = load ptr, ptr %.sroa.019.032.i, align 8 ; 2 uses
  %i.on = icmp eq ptr %.sroa.019.0.i, null
end_hunk_0
begin_hunk_1_@_ZN2v88internal15JSDispatchTable34SetCodeAndEntrypointNoWriteBarrierENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_6TaggedINS0_4CodeEEEm:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.29) #20
  unreachable

_ZN2v88internal15JSDispatchTable17GetParameterCountENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %i.i = trunc i64 %i.h to i16
  %i.j = add i64 %2, 51
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = load atomic volatile i32, ptr %i.k monotonic, align 4
  %i.m = trunc i32 %i.l to i8
  %i.n = and i8 %i.m, 15
  switch i8 %i.n, label %_ZNK2v88internal4Code14entrypoint_tagEv.exit.thread18.i [
    i8 0, label %_ZN2v88internal15JSDispatchTable16IsCompatibleCodeENS0_6TaggedINS0_4CodeEEEt.exit
    i8 2, label %_ZNK2v88internal4Code14entrypoint_tagEv.exit.i
    i8 3, label %_ZN2v88internal15JSDispatchTable16IsCompatibleCodeENS0_6TaggedINS0_4CodeEEEt.exit
    i8 4, label %_ZN2v88internal15JSDispatchTable16IsCompatibleCodeENS0_6TaggedINS0_4CodeEEEt.exit
    i8 5, label %_ZN2v88internal15JSDispatchTable16IsCompatibleCodeENS0_6TaggedINS0_4CodeEEEt.exit
    i8 6, label %_ZN2v88internal15JSDispatchTable16IsCompatibleCodeENS0_6TaggedINS0_4CodeEEEt.exit
  ]

_ZNK2v88internal4Code14entrypoint_tagEv.exit.i:   ; preds = %_ZN2v88internal15JSDispatchTable17GetParameterCountENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit
  %i.o = add i64 %2, 89
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i16, ptr %i.p, align 2
  %i.r = sext i16 %i.q to i32
  %i.s = tail call noundef i64 @_ZN2v88internal8Builtins16EntrypointTagForENS0_7BuiltinE(i32 noundef %i.r) #17
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %_ZNK2v88internal4Code14entrypoint_tagEv.exit.thread18.i, label %_ZN2v88internal15JSDispatchTable16IsCompatibleCodeENS0_6TaggedINS0_4CodeEEEt.exit, !prof !70

_ZNK2v88internal4Code14entrypoint_tagEv.exit.thread18.i: ; preds = %_ZNK2v88internal4Code14entrypoint_tagEv.exit.i, %_ZN2v88internal15JSDispatchTable17GetParameterCountENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit
  %i.t = add i64 %2, 87
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i16, ptr %i.u, align 2
  %i.w = icmp eq i16 %i.v, %i.i
  br i1 %i.w, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal4Code14entrypoint_tagEv.exit.thread18.i
  %i.x = load atomic volatile i32, ptr %i.k monotonic, align 4
  %i.y = and i32 %i.x, 15
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.e, label %bb.d, !prof !70

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %2, 89
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i16, ptr %i.ab, align 2
  switch i16 %i.ac, label %_ZN2v88internal15JSDispatchTable16IsCompatibleCodeENS0_6TaggedINS0_4CodeEEEt.exit [
    i16 196, label %bb.e
    i16 104, label %bb.e
    i16 83, label %bb.e
    i16 105, label %bb.e
    i16 135, label %bb.e
    i16 1313, label %bb.e
    i16 1312, label %bb.e
    i16 1311, label %bb.e
    i16 1314, label %bb.e
    i16 1315, label %bb.e
  ]

_ZN2v88internal15JSDispatchTable16IsCompatibleCodeENS0_6TaggedINS0_4CodeEEEt.exit: ; preds = %bb.d, %_ZNK2v88internal4Code14entrypoint_tagEv.exit.i, %_ZN2v88internal15JSDispatchTable17GetParameterCountENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit, %_ZN2v88internal15JSDispatchTable17GetParameterCountENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit, %_ZN2v88internal15JSDispatchTable17GetParameterCountENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit, %_ZN2v88internal15JSDispatchTable17GetParameterCountENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit, %_ZN2v88internal15JSDispatchTable17GetParameterCountENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.30) #20
  unreachable

bb.e:                                             ; preds = %bb.c, %_ZNK2v88internal4Code14entrypoint_tagEv.exit.thread18.i, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !11, !noundef !12
  %i.ae = trunc nuw i8 %i.ad to i1
  %.not = xor i1 %i.ae, true
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !11
  %i.ag = trunc nuw i8 %i.af to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.ag
  br i1 %or.cond, label %bb.f, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not12 = icmp eq i32 %i.ah, -1
  br i1 %.not12, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.ah, i32 noundef 0) #17
  br label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit

_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit:  ; preds = %bb.e, %bb.g, %bb.f
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.c ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load atomic i64, ptr %i.ak monotonic, align 8
  %i.am = shl i64 %2, 16
  %i.an = and i64 %i.am, -131072
  %i.ao = and i64 %i.al, 131071
  %i.ap = or disjoint i64 %i.ao, %i.an
  store atomic i64 %i.ap, ptr %i.ak monotonic, align 8
  store atomic i64 %3, ptr %i.aj monotonic, align 8
  %i.aq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !11, !noundef !12
  %i.ar = trunc nuw i8 %i.aq to i1
  %.not9 = xor i1 %i.ar, true
  %i.as = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !11
  %i.at = trunc nuw i8 %i.as to i1
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.at
  br i1 %or.cond11, label %bb.h, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

bb.h:                                             ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not13 = icmp eq i32 %i.au, -1
  br i1 %.not13, label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.au, i32 noundef 2) #17
  br label %_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit

_ZN2v88internal19RwxMemoryWriteScopeD2Ev.exit:    ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit, %bb.i, %bb.h
  ret void
}

declare noundef i64 @_ZN2v88internal8Builtins16EntrypointTagForENS0_7BuiltinE(i32 noundef) local_unnamed_addr #2

declare void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v88internal4Heap20CreateFillerObjectAtEmiNS0_20ClearFreedMemoryModeESt8optionalINS0_14AllocationTypeEE(ptr noundef nonnull align 8 dereferenceable(2992), i64 noundef, i32 noundef, i32 noundef, i16) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN2v88internal12_GLOBAL__N_19Committee18DeterminePromoteesEPNS0_7IsolateERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEERKNS0_14SafepointScopeE: argument 0"}
!7 = distinct !{!7, !"_ZN2v88internal12_GLOBAL__N_19Committee18DeterminePromoteesEPNS0_7IsolateERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEERKNS0_14SafepointScopeE"}
!8 = !{!9, !6}
!9 = distinct !{!9, !10, !"_ZN2v88internal12_GLOBAL__N_19Committee18DeterminePromoteesERKNS0_14SafepointScopeE: argument 0"}
!10 = distinct !{!10, !"_ZN2v88internal12_GLOBAL__N_19Committee18DeterminePromoteesERKNS0_14SafepointScopeE"}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZSt19__relocate_object_aIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!25 = distinct !{!25, !"_ZSt19__relocate_object_aIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_EEvPT_PT0_RT1_"}
!26 = !{!27}
!27 = distinct !{!27, !25, !"_ZSt19__relocate_object_aIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!28 = !{!24, !9, !6}
!29 = !{!27, !9, !6}
!30 = distinct !{!30, !15, !31, !32}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = distinct !{!33, !15, !31}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !15, !31}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZSt19__relocate_object_aIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!44 = distinct !{!44, !"_ZSt19__relocate_object_aIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_EEvPT_PT0_RT1_"}
!45 = !{!46}
!46 = distinct !{!46, !44, !"_ZSt19__relocate_object_aIN2v88internal6TaggedINS1_10HeapObjectEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!47 = distinct !{!47, !15, !31, !32}
!48 = distinct !{!48, !15, !31}
!49 = distinct !{!49, !15}
!50 = !{ptr @_ZN2v88internal12_GLOBAL__N_19Committee16CandidateVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotES7_}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15, !31, !32}
!54 = distinct !{!54, !15, !31}
!55 = distinct !{!55, !15, !31, !32}
!56 = distinct !{!56, !15, !31}
!57 = distinct !{!57, !15, !31, !32}
!58 = distinct !{!58, !15, !31}
!59 = distinct !{!59, !15, !31, !32}
!60 = distinct !{!60, !15, !31}
!61 = distinct !{!61, !15, !31, !32}
!62 = distinct !{!62, !15, !31}
!63 = distinct !{!63, !15, !31, !32}
!64 = distinct !{!64, !15, !31}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = !{!"branch_weights", i32 2146410443, i32 1073205}
end_hunk_1
