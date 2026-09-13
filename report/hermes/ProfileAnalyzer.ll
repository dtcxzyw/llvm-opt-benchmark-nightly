Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ProfileAnalyzer?download=true
inline.NumInlined: 3091
inline.NumDeleted: 1556
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt8__detail9_Map_baseIN6hermes4inst6OpCodeESt4pairIKS3_mESaIS6_ENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_:bb.a
  %.not19.i.i = icmp eq i64 %i.y, %i.e
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !758

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !758

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  %i.z = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i8, ptr %1, align 1, !tbaa !189
  store i8 %i.ab, ptr %i.aa, align 8, !tbaa !184
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %i.ac, align 8, !tbaa !187
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !176
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !759
  %i.ah = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 noundef %i.ae, i64 noundef %i.ag, i64 noundef 1) #21 ; 2 uses
  %i.ai = extractvalue { i8, i64 } %i.ah, 0
  %i.aj = trunc i8 %i.ai to i1
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.ak = extractvalue { i8, i64 } %i.ah, 1
  tail call void @_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ak)
  %i.al = load i64, ptr %i.c, align 8, !tbaa !176
  %i.am = urem i64 %i.b, %i.al
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.0.i19 = phi i64 [ %i.am, %bb.e ], [ %i.e, %.loopexit ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %i.b, ptr %i.an, align 8, !tbaa !275
  %i.ao = load ptr, ptr %0, align 8, !tbaa !175   ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0.i19 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !139 ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !67
  store ptr %i.ar, ptr %i.z, align 8, !tbaa !67
  store ptr %i.z, ptr %i.aq, align 8, !tbaa !67
  br label %_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !181 ; 3 uses
  store ptr %i.at, ptr %i.z, align 8, !tbaa !67
  store ptr %i.z, ptr %i.as, align 8, !tbaa !181
  %.not11.i.i = icmp eq ptr %i.at, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load i64, ptr %i.c, align 8, !tbaa !176
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !275
  %i.ax = urem i64 %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ax
  store ptr %i.z, ptr %i.ay, align 8, !tbaa !139
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !139
  br label %_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.j, %bb.g
  %i.az = load i64, ptr %i.af, align 8, !tbaa !759
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.af, align 8, !tbaa !759
  br label %.loopexit30

.loopexit30:                                      ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.z, %_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.i, %bb.b ], [ %i.v, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !761
  br label %_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6hermes4inst6OpCodeEmELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !83

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6hermes4inst6OpCodeEmELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6hermes4inst6OpCodeEmELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6hermes4inst6OpCodeEmELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !181  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !181
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !67 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !275
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !139  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !181
  store ptr %i.o, ptr %.02530, align 8, !tbaa !67
  store ptr %.02530, ptr %i.g, align 8, !tbaa !181
  store ptr %i.g, ptr %i.m, align 8, !tbaa !139
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !67
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !139
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !67
  store ptr %i.r, ptr %.02530, align 8, !tbaa !67
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !139
  store ptr %.02530, ptr %i.s, align 8, !tbaa !67
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !760

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !175    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !176
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #22
  br label %_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN6hermes4inst6OpCodeESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !176
  store ptr %.0.i, ptr %0, align 8, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #14 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i.i25 = freeze i64 %i.c                    ; 2 uses
  %i.d = ashr exact i64 %.fr.i.i25, 4             ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 8          ; 14 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEET_SH_SH_T0_.exit"
  %i.j = icmp eq i64 %i.cw, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph46, !llvm.loop !762

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i28.lcssa = phi i64 [ %.fr.i.i25, %.lr.ph ], [ %.fr.i.i, %bb.b ] ; 3 uses
  %storemerge26.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i.i28.lcssa, 4             ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i.i28.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i", %._crit_edge
  %.011.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.ba, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %.011.i.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i.i = load i8, ptr %i.w, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.x = icmp slt i64 %.011.i.i.i, %i.o
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.011.i.i.i, %bb.c ] ; 2 uses
  %i.y = shl i64 %.038.i.i.i.i, 1                 ; 2 uses
  %i.z = add i64 %i.y, 2                          ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %i.z
  %i.ab = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.aa, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !188
  %i.ae = getelementptr i8, ptr %i.ac, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.ae, align 8, !tbaa !188
  %i.af = icmp ugt i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.af, i64 %i.ab, i64 %i.z ; 4 uses
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i ; 2 uses
  %i.ah = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i.i.i ; 2 uses
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !189
  store i8 %i.ai, ptr %i.ah, align 8, !tbaa !186
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !188
  %i.am = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.am, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !763

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.011.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.an = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.an, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ao = load i8, ptr %i.s, align 1, !tbaa !189
  store i8 %i.ao, ptr %i.t, align 8, !tbaa !186
  %i.ap = load i64, ptr %i.u, align 8, !tbaa !111
  store i64 %i.ap, ptr %i.v, align 8, !tbaa !188
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aq = icmp sgt i64 %.1.i.i.i.i, %.011.i.i.i
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.011.i.i.i.i.i = phi i64 [ %.0912.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0912.in.i.i.i.i.i = add nsw i64 %.011.i.i.i.i.i, -1
  %.0912.i.i.i.i.i = sdiv i64 %.0912.in.i.i.i.i.i, 2 ; 4 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0912.i.i.i.i.i ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %.val.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !tbaa !188 ; 2 uses
  %i.at = icmp ugt i64 %.val.i.i.i.i.i.i, %.sroa.5.0.copyload.i.i.i
  br i1 %i.at, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.011.i.i.i.i.i ; 2 uses
  %i.av = load i8, ptr %i.ar, align 8, !tbaa !189
  store i8 %i.av, ptr %i.au, align 8, !tbaa !186
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %.val.i.i.i.i.i.i, ptr %i.aw, align 8, !tbaa !188
  %i.ax = icmp sgt i64 %.0912.i.i.i.i.i, %.011.i.i.i
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i", !llvm.loop !764

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0912.i.i.i.i.i, %bb.f ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i8 %.sroa.04.0.copyload.i.i.i, ptr %i.ay, align 8, !tbaa !186
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %i.az, align 8, !tbaa !188
  %.not.i.i.i = icmp eq i64 %.011.i.i.i, 0
  %i.ba = add nsw i64 %.011.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_RT0_.exit.i.i", label %bb.c, !llvm.loop !765

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i28.lcssa, 16
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bb, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_RT0_.exit.i.i" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_RT0_.exit.i.i" ] ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i.i10.i = load i8, ptr %i.bb, align 8
  %.sroa.5.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %.sroa.5.0.copyload.i.i12.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i11.i, align 8 ; 2 uses
  %i.bc = load i8, ptr %0, align 1, !tbaa !189
  store i8 %i.bc, ptr %i.bb, align 8, !tbaa !186
  %i.bd = load i64, ptr %i.h, align 8, !tbaa !111
  store i64 %i.bd, ptr %.sroa.5.0..sroa_idx.i.i11.i, align 8, !tbaa !188
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.be, %i.a                     ; 3 uses
  %i.bg = ashr exact i64 %i.bf, 4                 ; 3 uses
  %i.bh = add nsw i64 %i.bg, -1
  %i.bi = lshr i64 %i.bh, 1
  %i.bj = icmp sgt i64 %i.bg, 2
  br i1 %i.bj, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i21.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i21.i
  %.038.i.i.i22.i = phi i64 [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bk = shl i64 %.038.i.i.i22.i, 1              ; 2 uses
  %i.bl = add i64 %i.bk, 2                        ; 2 uses
  %i.bm = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bl
  %i.bn = or disjoint i64 %i.bk, 1                ; 2 uses
  %i.bo = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bm, i64 8
  %.val.i.i.i.i23.i = load i64, ptr %i.bp, align 8, !tbaa !188
  %i.bq = getelementptr i8, ptr %i.bo, i64 8
  %.val1.i.i.i.i24.i = load i64, ptr %i.bq, align 8, !tbaa !188
  %i.br = icmp ugt i64 %.val.i.i.i.i23.i, %.val1.i.i.i.i24.i
  %spec.select.i.i.i25.i = select i1 %i.br, i64 %i.bn, i64 %i.bl ; 4 uses
  %i.bs = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i25.i ; 2 uses
  %i.bt = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i.i22.i ; 2 uses
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !189
  store i8 %i.bu, ptr %i.bt, align 8, !tbaa !186
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !111
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !188
  %i.by = icmp slt i64 %spec.select.i.i.i25.i, %i.bi
  br i1 %i.by, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i, !llvm.loop !763

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i21.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ] ; 5 uses
  %i.bz = and i64 %i.bf, 16
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.cb = add nsw i64 %i.bg, -2
  %i.cc = ashr exact i64 %i.cb, 1
  %i.cd = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.cc
  br i1 %i.cd, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.ce = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.cf = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i ; 2 uses
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !189
  store i8 %i.ci, ptr %i.ch, align 8, !tbaa !186
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !111
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !188
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.011.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.cf, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.011.i.i.i.i17.i = phi i64 [ %.0912.i.i56.i.i.i, %bb.i ], [ %.011.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0912.in.i.i.i.i18.i = add nsw i64 %.011.i.i.i.i17.i, -1
  %.0912.i.i56.i.i.i = lshr i64 %.0912.in.i.i.i.i18.i, 1 ; 3 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0912.i.i56.i.i.i ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  %.val.i.i.i.i.i19.i = load i64, ptr %i.cn, align 8, !tbaa !188 ; 2 uses
  %i.co = icmp ugt i64 %.val.i.i.i.i.i19.i, %.sroa.5.0.copyload.i.i12.i
  br i1 %i.co, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.cp = getelementptr inbounds [16 x i8], ptr %0, i64 %.011.i.i.i.i17.i ; 2 uses
  %i.cq = load i8, ptr %i.cm, align 8, !tbaa !189
  store i8 %i.cq, ptr %i.cp, align 8, !tbaa !186
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %.val.i.i.i.i.i19.i, ptr %i.cr, align 8, !tbaa !188
  %.not7.i.i.i = icmp eq i64 %.0912.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !764

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.011.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.cs = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i20.i ; 2 uses
  store i8 %.sroa.04.0.copyload.i.i10.i, ptr %i.cs, align 8, !tbaa !186
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %.sroa.5.0.copyload.i.i12.i, ptr %i.ct, align 8, !tbaa !188
  %i.cu = icmp sgt i64 %i.bf, 16
  br i1 %i.cu, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_T0_.exit", !llvm.loop !766

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2645 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02744 = phi i64 [ %i.cw, %bb.b ], [ %2, %.lr.ph ]
  %i.cv = phi i64 [ %i.ej, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cw = add nsw i64 %.02744, -1                 ; 3 uses
  %i.cx = lshr i64 %i.cv, 1
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cx ; 5 uses
  %i.cz = getelementptr inbounds i8, ptr %storemerge2645, i64 -16 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.g, align 8, !tbaa !188 ; 5 uses
  %i.da = getelementptr i8, ptr %i.cy, i64 8      ; 3 uses
  %.val1.i.i.i = load i64, ptr %i.da, align 8, !tbaa !188 ; 5 uses
  %i.db = icmp ugt i64 %.val.i.i.i, %.val1.i.i.i
  %i.dc = getelementptr i8, ptr %storemerge2645, i64 -8 ; 3 uses
  %.val1.i27.i.i = load i64, ptr %i.dc, align 8, !tbaa !188 ; 6 uses
  br i1 %i.db, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph46
  %i.dd = icmp ugt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.de = load i8, ptr %0, align 8, !tbaa !189
  %i.df = load i8, ptr %i.cy, align 8, !tbaa !189
  store i8 %i.df, ptr %0, align 8, !tbaa !189
  store i8 %i.de, ptr %i.cy, align 8, !tbaa !189
  %i.dg = load i64, ptr %i.h, align 8, !tbaa !111
  store i64 %.val1.i.i.i, ptr %i.h, align 8, !tbaa !111
  store i64 %i.dg, ptr %i.da, align 8, !tbaa !111
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.dh = icmp ugt i64 %.val.i.i.i, %.val1.i27.i.i
  %i.di = load i8, ptr %0, align 8, !tbaa !189    ; 2 uses
  br i1 %i.dh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dj = load i8, ptr %i.cz, align 8, !tbaa !189
  store i8 %i.dj, ptr %0, align 8, !tbaa !189
  store i8 %i.di, ptr %i.cz, align 8, !tbaa !189
  %i.dk = load i64, ptr %i.h, align 8, !tbaa !111
  store i64 %.val1.i27.i.i, ptr %i.h, align 8, !tbaa !111
  store i64 %i.dk, ptr %i.dc, align 8, !tbaa !111
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.dl = load i8, ptr %i.f, align 8, !tbaa !189
  store i8 %i.dl, ptr %0, align 8, !tbaa !189
  store i8 %i.di, ptr %i.f, align 8, !tbaa !189
  %i.dm = load i64, ptr %i.h, align 8, !tbaa !111
  store i64 %.val.i.i.i, ptr %i.h, align 8, !tbaa !111
  store i64 %i.dm, ptr %i.g, align 8, !tbaa !111
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph46
  %i.dn = icmp ugt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.dn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.do = load i8, ptr %0, align 8, !tbaa !189
  %i.dp = load i8, ptr %i.f, align 8, !tbaa !189
  store i8 %i.dp, ptr %0, align 8, !tbaa !189
  store i8 %i.do, ptr %i.f, align 8, !tbaa !189
  %i.dq = load i64, ptr %i.h, align 8, !tbaa !111
  store i64 %.val.i.i.i, ptr %i.h, align 8, !tbaa !111
  store i64 %i.dq, ptr %i.g, align 8, !tbaa !111
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.dr = icmp ugt i64 %.val1.i.i.i, %.val1.i27.i.i
  %i.ds = load i8, ptr %0, align 8, !tbaa !189    ; 2 uses
  br i1 %i.dr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dt = load i8, ptr %i.cz, align 8, !tbaa !189
  store i8 %i.dt, ptr %0, align 8, !tbaa !189
  store i8 %i.ds, ptr %i.cz, align 8, !tbaa !189
  %i.du = load i64, ptr %i.h, align 8, !tbaa !111
  store i64 %.val1.i27.i.i, ptr %i.h, align 8, !tbaa !111
  store i64 %i.du, ptr %i.dc, align 8, !tbaa !111
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.dv = load i8, ptr %i.cy, align 8, !tbaa !189
  store i8 %i.dv, ptr %0, align 8, !tbaa !189
  store i8 %i.ds, ptr %i.cy, align 8, !tbaa !189
  %i.dw = load i64, ptr %i.h, align 8, !tbaa !111
  store i64 %.val1.i.i.i, ptr %i.h, align 8, !tbaa !111
  store i64 %i.dw, ptr %i.da, align 8, !tbaa !111
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.dz, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2645, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i64, ptr %i.h, align 8, !tbaa !188 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i" ], [ %i.dz, %bb.t ] ; 10 uses
  %i.dx = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  %.val.i.i14.i = load i64, ptr %i.dx, align 8, !tbaa !188 ; 2 uses
  %i.dy = icmp ugt i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.dy, label %bb.t, label %.preheader.i.i.preheader, !llvm.loop !767

.preheader.i.i.preheader:                         ; preds = %bb.t
  %i.ea = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.eb = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val1.i9.i.i = load i64, ptr %i.eb, align 8, !tbaa !188 ; 2 uses
  %i.ec = icmp ugt i64 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.ec, label %.preheader.i.i, label %bb.u, !llvm.loop !768

bb.u:                                             ; preds = %.preheader.i.i
  %i.ed = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ed, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEET_SH_SH_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.ee = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.ef = load i8, ptr %.sroa.012.1.i.i, align 1, !tbaa !189
  %i.eg = load i8, ptr %.sroa.0.1.i.i, align 1, !tbaa !189
  store i8 %i.eg, ptr %.sroa.012.1.i.i, align 1, !tbaa !189
  store i8 %i.ef, ptr %.sroa.0.1.i.i, align 1, !tbaa !189
  store i64 %.val1.i9.i.i, ptr %i.ea, align 8, !tbaa !111
  store i64 %.val.i.i14.i, ptr %i.ee, align 8, !tbaa !111
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i", !llvm.loop !769

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEET_SH_SH_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2645, i64 noundef %i.cw)
  %i.eh = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ei = sub i64 %i.eh, %i.a
  %.fr.i.i = freeze i64 %i.ei                     ; 2 uses
  %i.ej = ashr exact i64 %.fr.i.i, 4              ; 2 uses
  %i.ek = icmp sgt i64 %i.ej, 16
  br i1 %i.ek, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_T0_.exit", !llvm.loop !762

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEET_SH_SH_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_assignIRKSF_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !94
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !95   ; 4 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !83

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !141
  br label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.f, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !83

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.h = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_allocate_bucketsEm.exit.i ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !94
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97   ; 3 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 4 uses
  store ptr null, ptr %i.m, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8, !tbaa !97
  %i.p = load ptr, ptr %0, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !95
  %i.s = load i16, ptr %i.n, align 8, !tbaa !112
  %i.t = zext i16 %i.s to i64
  %i.u = urem i64 %i.t, %i.r
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.u
  store ptr %i.o, ptr %i.v, align 8, !tbaa !139
  %.02226 = load ptr, ptr %i.k, align 8, !tbaa !67 ; 2 uses
  %.not2427 = icmp eq ptr %.02226, null
  br i1 %.not2427, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.k
  %.02229 = phi ptr [ %.022, %bb.k ], [ %.02226, %bb.i ] ; 2 uses
  %.028 = phi ptr [ %i.x, %bb.k ], [ %i.m, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02229, i64 8
  %i.x = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 4 uses
  store ptr null, ptr %i.x, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false)
  store ptr %i.x, ptr %.028, align 8, !tbaa !67
  %i.z = load i64, ptr %i.q, align 8, !tbaa !95
  %i.aa = load i16, ptr %i.y, align 8, !tbaa !112
  %i.ab = zext i16 %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.z
  %i.ad = load ptr, ptr %0, align 8, !tbaa !94
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !139
  %.not25 = icmp eq ptr %i.af, null
  br i1 %.not25, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  store ptr %.028, ptr %i.ae, align 8, !tbaa !139
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %.022 = load ptr, ptr %.02229, align 8, !tbaa !67 ; 2 uses
  %.not24 = icmp eq ptr %.022, null
  br i1 %.not24, label %.loopexit, label %.lr.ph, !llvm.loop !770

.loopexit:                                        ; preds = %bb.k, %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !219    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775760
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #26
  unreachable

_ZNKSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 80                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 115292150460684697)
  %i.l = select i1 %i.j, i64 115292150460684697, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 80
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.r = load i32, ptr %2, align 8, !tbaa !194
  store i32 %i.r, ptr %i.q, align 8, !tbaa !194
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !94   ; 3 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !95   ; 2 uses
  store i64 %i.z, ptr %i.x, align 8, !tbaa !95
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !97 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !140
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !196
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 4 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !141
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.ak = icmp eq ptr %i.w, %i.aj
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE12_M_check_lenEmPKc.exit
  store ptr %i.ai, ptr %i.u, align 8, !tbaa !94
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !141
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !141
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.am = phi ptr [ %i.ai, %bb.c ], [ %i.w, %_ZNKSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE12_M_check_lenEmPKc.exit ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !112
  %i.ap = zext i16 %i.ao to i64
  %i.aq = urem i64 %i.ap, %i.z
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.aa, ptr %i.ar, align 8, !tbaa !139
  br label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit

_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit: ; preds = %bb.d, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 0, ptr %i.as, align 8, !tbaa !203
  store i64 1, ptr %i.y, align 8, !tbaa !95
  store ptr null, ptr %i.aj, align 8, !tbaa !141
  store ptr %i.aj, ptr %i.v, align 8, !tbaa !94
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit, %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
end_hunk_0
