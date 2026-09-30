Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ProfileAnalyzer?download=true
inline.NumInlined: 3091
inline.NumDeleted: 1556
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt8__detail9_Map_baseIN6hermes4inst6OpCodeESt4pairIKS3_mESaIS6_ENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_:bb.a
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
  %3 = or disjoint i64 %i.l, 1                    ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %3 ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i", %._crit_edge
  %.011.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.az, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %.011.i.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i.i = load i8, ptr %i.v, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.w = icmp slt i64 %.011.i.i.i, %i.o
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.011.i.i.i, %bb.c ] ; 2 uses
  %i.x = shl i64 %.038.i.i.i.i, 1                 ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !188
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !188
  %i.ae = icmp ugt i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ae, i64 %i.aa, i64 %i.y ; 4 uses
  %i.af = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i ; 2 uses
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i.i.i ; 2 uses
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !189
  store i8 %i.ah, ptr %i.ag, align 8, !tbaa !186
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !111
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !188
  %i.al = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.al, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !763

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.011.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.am = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.am, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.an = load i8, ptr %i.r, align 1, !tbaa !189
  store i8 %i.an, ptr %i.s, align 8, !tbaa !186
  %i.ao = load i64, ptr %i.t, align 8, !tbaa !111
  store i64 %i.ao, ptr %i.u, align 8, !tbaa !188
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ap = icmp sgt i64 %.1.i.i.i.i, %.011.i.i.i
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.011.i.i.i.i.i = phi i64 [ %.0912.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0912.in.i.i.i.i.i = add nsw i64 %.011.i.i.i.i.i, -1
  %.0912.i.i.i.i.i = sdiv i64 %.0912.in.i.i.i.i.i, 2 ; 4 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0912.i.i.i.i.i ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !188 ; 2 uses
  %i.as = icmp ugt i64 %.val.i.i.i.i.i.i, %.sroa.5.0.copyload.i.i.i
  br i1 %i.as, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.011.i.i.i.i.i ; 2 uses
  %i.au = load i8, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.au, ptr %i.at, align 8, !tbaa !186
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %.val.i.i.i.i.i.i, ptr %i.av, align 8, !tbaa !188
  %i.aw = icmp sgt i64 %.0912.i.i.i.i.i, %.011.i.i.i
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i", !llvm.loop !764

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0912.i.i.i.i.i, %bb.f ]
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i8 %.sroa.04.0.copyload.i.i.i, ptr %i.ax, align 8, !tbaa !186
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %i.ay, align 8, !tbaa !188
  %.not.i.i.i = icmp eq i64 %.011.i.i.i, 0
  %i.az = add nsw i64 %.011.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_RT0_.exit.i.i", label %bb.c, !llvm.loop !765

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i"
  %i.ba = icmp sgt i64 %.fr.i.i28.lcssa, 16
  br i1 %i.ba, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN6hermes4inst6OpCodeEmESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer20dumpInstructionStatsEvE3$_1EEEvT_SH_SH_T0_.exit"

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
end_hunk_0
begin_hunk_1_@"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_T0_":bb.a
_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit10.thread: ; preds = %bb.l, %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 0, ptr %i.cr, align 8, !tbaa !203
  store i64 1, ptr %i.g, align 8, !tbaa !95
  store ptr null, ptr %i.r, align 8, !tbaa !141
  store ptr %i.r, ptr %i.d, align 8, !tbaa !94
  br label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i

_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit10: ; preds = %._crit_edge
  %.pr = load ptr, ptr %i.j, align 8, !tbaa !97   ; 2 uses
  %.not5.i.i.i.i.i.i11 = icmp eq ptr %.pr, null
  br i1 %.not5.i.i.i.i.i.i11, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i12

.lr.ph.i.i.i.i.i.i12:                             ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit10, %.lr.ph.i.i.i.i.i.i12
  %.06.i.i.i.i.i.i13 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i12 ], [ %.pr, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit10 ] ; 2 uses
  %i.cs = load ptr, ptr %.06.i.i.i.i.i.i13, align 8, !tbaa !67 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i13, i64 noundef 24) #22
  %.not.i.i.i.i.i.i14 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i14, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i12, !llvm.loop !0

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i12, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit10.thread, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit10
  %i.ct = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.cu = load i64, ptr %i.g, align 8, !tbaa !95
  %i.cv = shl i64 %i.cu, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %i.cv, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !94  ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.r
  br i1 %i.cx, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.cy = load i64, ptr %i.g, align 8, !tbaa !95
  %i.cz = shl i64 %i.cy, 3
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #22
  br label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit

_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit: ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEES7_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 80
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit
  %.010 = phi i64 [ %i.ar, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.069 = phi ptr [ %i.g, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit ], [ %2, %.lr.ph.preheader ] ; 10 uses
  %.078 = phi ptr [ %i.f, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit ], [ %1, %.lr.ph.preheader ] ; 10 uses
  %i.f = getelementptr inbounds i8, ptr %.078, i64 -80 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.069, i64 -80 ; 3 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !25
  store i32 %i.h, ptr %i.g, align 8, !tbaa !194
  %i.i = getelementptr inbounds i8, ptr %.078, i64 -72
  %i.j = getelementptr inbounds i8, ptr %.069, i64 -72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 16, i1 false)
  %i.k = getelementptr inbounds i8, ptr %.069, i64 -56 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.078, i64 -56 ; 2 uses
  %i.m = icmp eq ptr %.078, %.069
  br i1 %i.m, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit, label %bb.b, !prof !83

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds i8, ptr %.069, i64 -40 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97   ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.o, %bb.b ] ; 2 uses
  %i.p = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i, i64 noundef 24) #22
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !94   ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.069, i64 -8 ; 3 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i.i.i
  %i.t = getelementptr inbounds i8, ptr %.069, i64 -48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !95
  %i.v = shl i64 %i.u, 3
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.v) #22
  br label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i.i.i
  %i.w = getelementptr inbounds i8, ptr %.078, i64 -24
  %i.x = getelementptr inbounds i8, ptr %.069, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !196
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.078, i64 -8 ; 4 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !141
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !141
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i
  %i.ac = phi ptr [ %i.r, %bb.d ], [ %i.y, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i ] ; 2 uses
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !94
  %i.ad = getelementptr inbounds i8, ptr %.078, i64 -48 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !95 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.069, i64 -48
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !95
  %i.ag = getelementptr inbounds i8, ptr %.078, i64 -40 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !97 ; 3 uses
  store ptr %i.ah, ptr %i.n, align 8, !tbaa !97
  %i.ai = getelementptr inbounds i8, ptr %.078, i64 -32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !140
  %i.ak = getelementptr inbounds i8, ptr %.069, i64 -32
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !140
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i12.i.i.i.i.i, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = load i16, ptr %i.al, align 2, !tbaa !112
  %i.an = zext i16 %i.am to i64
  %i.ao = urem i64 %i.an, %i.ae
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ao
  store ptr %i.n, ptr %i.ap, align 8, !tbaa !139
  br label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.aq = getelementptr inbounds i8, ptr %.078, i64 -16
  store i64 0, ptr %i.aq, align 8, !tbaa !203
  store i64 1, ptr %i.ad, align 8, !tbaa !95
  store ptr null, ptr %i.z, align 8, !tbaa !141
  store ptr %i.z, ptr %i.l, align 8, !tbaa !94
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  br label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit

_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit: ; preds = %.lr.ph, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i
  %i.ar = add nsw i64 %.010, -1
  %i.as = icmp sgt i64 %.010, 1
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !794

._crit_edge:                                      ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit, %bb.a
  %.06.lcssa = phi ptr [ %2, %bb.a ], [ %i.g, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit ]
  ret ptr %.06.lcssa
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

declare noundef i32 @_ZN6hermes9HBCParser19getBasicBlockOffsetEjt(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_SE_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #14 {
bb.a:
  %3 = alloca %struct.BasicBlockRuntimeStatistics, align 8 ; 4 uses
  %4 = alloca %struct.BasicBlockRuntimeStatistics, align 8 ; 4 uses
  %5 = alloca %struct.BasicBlockRuntimeStatistics, align 8 ; 4 uses
  %6 = alloca %struct.BasicBlockRuntimeStatistics, align 8 ; 4 uses
  %7 = alloca %struct.BasicBlockRuntimeStatistics, align 8 ; 4 uses
  %8 = alloca %struct.BasicBlockRuntimeStatistics, align 8 ; 4 uses
  %9 = alloca %struct.BasicBlockRuntimeStatistics, align 8 ; 4 uses
  %.sroa.03.i.i9.i = alloca { i32, i16, i32, i64 }, align 8 ; 4 uses
  %.sroa.03.i.i.i = alloca { i32, i16, i32, i64 }, align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr53.i23 = freeze i64 %i.c                    ; 3 uses
  %i.d = icmp sgt i64 %.fr53.i23, 640
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_SE_SE_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 64
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph39

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEET_SE_SE_T0_.exit"
  %i.i = icmp eq i64 %i.bv, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph39, !llvm.loop !795

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr53.i26.lcssa = phi i64 [ %.fr53.i23, %.lr.ph ], [ %.fr53.i, %bb.b ]
  %storemerge24.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.fr53.i26.lcssa, 40      ; 3 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %i.j, 1
  %i.p = icmp eq i64 %i.o, 0
  %10 = or disjoint i64 %i.k, 1                   ; 2 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %10
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_T0_SF_T1_T2_.exit.i.i.i", %._crit_edge
  %.08.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.an, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_T0_SF_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.s = getelementptr inbounds [40 x i8], ptr %0, i64 %.08.i.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %.sroa.46.0..sroa.0.0..val12.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.46.0.copyload.i.i.i = load i64, ptr %.sroa.46.0..sroa.0.0..val12.sroa_idx.i.i.i, align 8, !tbaa !111 ; 2 uses
  %.sroa.57.0..sroa.0.0..val12.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.57.0.copyload.i.i.i = load double, ptr %.sroa.57.0..sroa.0.0..val12.sroa_idx.i.i.i, align 8, !tbaa !238
  %i.t = icmp slt i64 %.08.i.i.i, %i.n
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.044.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.044.i.i.i.i, 1                 ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [40 x i8], ptr %0, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [40 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr i8, ptr %i.w, i64 24
  %.val2.i.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !237
  %i.aa = getelementptr i8, ptr %i.y, i64 24
  %.val3.i.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !237
  %i.ab = icmp ugt i64 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ab, i64 %i.x, i64 %i.v ; 4 uses
  %i.ac = getelementptr inbounds [40 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ad = getelementptr inbounds [40 x i8], ptr %0, i64 %.044.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !tbaa.struct !239
  %i.ae = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.ae, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !796

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.af = icmp eq i64 %.0.lcssa.i.i.i.i, %i.l
  %or.cond.i.i.i = select i1 %i.p, i1 %i.af, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !tbaa.struct !239
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %10, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ag = icmp sgt i64 %.1.i.i.i.i, %.08.i.i.i
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_T0_SF_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.06.i.i.i.i.i = phi i64 [ %.097.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.097.in.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i, -1
  %.097.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i, 2 ; 4 uses
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.097.i.i.i.i.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %.val2.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !237
  %i.aj = icmp ugt i64 %.val2.i.i.i.i.i.i, %.sroa.46.0.copyload.i.i.i
  br i1 %i.aj, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_T0_SF_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.06.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !tbaa.struct !239
  %i.al = icmp sgt i64 %.097.i.i.i.i.i, %.08.i.i.i
  br i1 %i.al, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_T0_SF_T1_T2_.exit.i.i.i", !llvm.loop !797

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_T0_SF_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.06.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.097.i.i.i.i.i, %bb.f ]
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i.i, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %.sroa.46.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !111
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store double %.sroa.57.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !tbaa !238
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.an = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !798

.lr.ph.i10.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_T0_SF_T1_T2_.exit.i.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_SE_SE_RT0_.exit.i24.i"
  %.sroa.0.02.i.i = phi ptr [ %i.ao, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_SE_SE_RT0_.exit.i24.i" ], [ %storemerge24.lcssa, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_T0_SF_T1_T2_.exit.i.i.i" ] ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i9.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i9.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  %.sroa.46.0..sroa.0.0..val5.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -16
  %.sroa.46.0.copyload.i.i11.i = load i64, ptr %.sroa.46.0..sroa.0.0..val5.sroa_idx.i.i.i, align 8, !tbaa !111 ; 2 uses
  %.sroa.57.0..sroa.0.0..val5.sroa_idx.i.i12.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8
  %.sroa.57.0.copyload.i.i13.i = load double, ptr %.sroa.57.0..sroa.0.0..val5.sroa_idx.i.i12.i, align 8, !tbaa !238
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !239
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.a                     ; 3 uses
  %i.ar = sdiv exact i64 %i.aq, 40                ; 3 uses
  %i.as = add nsw i64 %i.ar, -1
  %i.at = sdiv i64 %i.as, 2
  %i.au = icmp sgt i64 %i.aq, 80
  br i1 %i.au, label %.lr.ph.i.i.i30.i, label %._crit_edge.i.i.i14.i

.lr.ph.i.i.i30.i:                                 ; preds = %.lr.ph.i10.i, %.lr.ph.i.i.i30.i
  %.044.i.i.i31.i = phi i64 [ %spec.select.i.i.i34.i, %.lr.ph.i.i.i30.i ], [ 0, %.lr.ph.i10.i ] ; 2 uses
  %i.av = shl i64 %.044.i.i.i31.i, 1              ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [40 x i8], ptr %0, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [40 x i8], ptr %0, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.ax, i64 24
  %.val2.i.i.i.i32.i = load i64, ptr %i.ba, align 8, !tbaa !237
  %i.bb = getelementptr i8, ptr %i.az, i64 24
  %.val3.i.i.i.i33.i = load i64, ptr %i.bb, align 8, !tbaa !237
  %i.bc = icmp ugt i64 %.val2.i.i.i.i32.i, %.val3.i.i.i.i33.i
  %spec.select.i.i.i34.i = select i1 %i.bc, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bd = getelementptr inbounds [40 x i8], ptr %0, i64 %spec.select.i.i.i34.i
  %i.be = getelementptr inbounds [40 x i8], ptr %0, i64 %.044.i.i.i31.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i64 40, i1 false), !tbaa.struct !239
  %i.bf = icmp slt i64 %spec.select.i.i.i34.i, %i.at
  br i1 %i.bf, label %.lr.ph.i.i.i30.i, label %._crit_edge.i.i.i14.i, !llvm.loop !796

._crit_edge.i.i.i14.i:                            ; preds = %.lr.ph.i.i.i30.i, %.lr.ph.i10.i
  %.0.lcssa.i.i.i15.i = phi i64 [ 0, %.lr.ph.i10.i ], [ %spec.select.i.i.i34.i, %.lr.ph.i.i.i30.i ] ; 5 uses
  %i.bg = and i64 %i.ar, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i14.i
  %i.bi = add nsw i64 %i.ar, -2
  %i.bj = ashr exact i64 %i.bi, 1
  %i.bk = icmp eq i64 %.0.lcssa.i.i.i15.i, %i.bj
  br i1 %i.bk, label %.thread.i.i29.i, label %bb.h

.thread.i.i29.i:                                  ; preds = %bb.g
  %i.bl = shl nuw nsw i64 %.0.lcssa.i.i.i15.i, 1
  %i.bm = or disjoint i64 %i.bl, 1                ; 2 uses
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bm
  %i.bo = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa.i.i.i15.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, ptr noundef nonnull align 8 dereferenceable(40) %i.bn, i64 40, i1 false), !tbaa.struct !239
  br label %.lr.ph.i.i.i.i19.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i14.i
  %.not.i.i16.i = icmp eq i64 %.0.lcssa.i.i.i15.i, 0
  br i1 %.not.i.i16.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_SE_SE_RT0_.exit.i24.i", label %.lr.ph.i.i.i.i19.i.preheader

.lr.ph.i.i.i.i19.i.preheader:                     ; preds = %bb.h, %.thread.i.i29.i
  %.06.i.i.i.i20.i.ph = phi i64 [ %.0.lcssa.i.i.i15.i, %bb.h ], [ %i.bm, %.thread.i.i29.i ]
  br label %.lr.ph.i.i.i.i19.i

.lr.ph.i.i.i.i19.i:                               ; preds = %.lr.ph.i.i.i.i19.i.preheader, %bb.i
  %.06.i.i.i.i20.i = phi i64 [ %.097.i.i89.i.i22.i, %bb.i ], [ %.06.i.i.i.i20.i.ph, %.lr.ph.i.i.i.i19.i.preheader ] ; 3 uses
  %.097.in.i.i.i.i21.i = add nsw i64 %.06.i.i.i.i20.i, -1
  %.097.i.i89.i.i22.i = lshr i64 %.097.in.i.i.i.i21.i, 1 ; 3 uses
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.097.i.i89.i.i22.i ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 24
  %.val2.i.i.i.i.i23.i = load i64, ptr %i.bq, align 8, !tbaa !237
  %i.br = icmp ugt i64 %.val2.i.i.i.i.i23.i, %.sroa.46.0.copyload.i.i11.i
  br i1 %i.br, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_SE_SE_RT0_.exit.i24.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i19.i
  %i.bs = getelementptr inbounds [40 x i8], ptr %0, i64 %.06.i.i.i.i20.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bs, ptr noundef nonnull align 8 dereferenceable(40) %i.bp, i64 40, i1 false), !tbaa.struct !239
  %.not10.i.i28.i = icmp eq i64 %.097.i.i89.i.i22.i, 0
  br i1 %.not10.i.i28.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_SE_SE_RT0_.exit.i24.i", label %.lr.ph.i.i.i.i19.i, !llvm.loop !797

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_SE_SE_RT0_.exit.i24.i": ; preds = %bb.i, %.lr.ph.i.i.i.i19.i, %bb.h
  %.0.lcssa.i.i.i.i25.i = phi i64 [ 0, %bb.h ], [ %.06.i.i.i.i20.i, %.lr.ph.i.i.i.i19.i ], [ 0, %bb.i ]
  %i.bt = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i25.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i9.i, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i26.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i64 %.sroa.46.0.copyload.i.i11.i, ptr %.sroa.4.0..sroa_idx.i.i.i26.i, align 8, !tbaa !111
  %.sroa.5.0..sroa_idx.i.i.i27.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store double %.sroa.57.0.copyload.i.i13.i, ptr %.sroa.5.0..sroa_idx.i.i.i27.i, align 8, !tbaa !238
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i9.i)
  %i.bu = icmp sgt i64 %i.aq, 40
  br i1 %i.bu, label %.lr.ph.i10.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_SE_SE_T0_.exit", !llvm.loop !799

.lr.ph39:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2438 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02537 = phi i64 [ %i.bv, %bb.b ], [ %2, %.lr.ph ]
  %.fr53.i2636 = phi i64 [ %.fr53.i, %bb.b ], [ %.fr53.i23, %.lr.ph ]
  %i.bv = add nsw i64 %.02537, -1                 ; 3 uses
  %i.bw = udiv i64 %.fr53.i2636, 80
  %i.bx = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bw ; 5 uses
  %i.by = getelementptr inbounds i8, ptr %storemerge2438, i64 -40 ; 4 uses
  %.val2.i.i.i = load i64, ptr %i.f, align 8, !tbaa !237 ; 3 uses
  %i.bz = getelementptr i8, ptr %i.bx, i64 24
  %.val3.i.i.i = load i64, ptr %i.bz, align 8, !tbaa !237 ; 3 uses
  %i.ca = icmp ugt i64 %.val2.i.i.i, %.val3.i.i.i
  %i.cb = getelementptr i8, ptr %storemerge2438, i64 -16
  %.val3.i27.i.i = load i64, ptr %i.cb, align 8, !tbaa !237 ; 4 uses
  br i1 %i.ca, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph39
  %i.cc = icmp ugt i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !239
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.bx, i64 40, i1 false), !tbaa.struct !239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bx, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !239
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.cd = icmp ugt i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.cd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !239
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.by, i64 40, i1 false), !tbaa.struct !239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !239
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !239
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !tbaa.struct !239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !239
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph39
  %i.ce = icmp ugt i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !239
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !tbaa.struct !239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !239
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.cf = icmp ugt i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !239
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.by, i64 40, i1 false), !tbaa.struct !239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !239
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEvE27BasicBlockRuntimeStatisticsSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19dumpBasicBlockStatsEvE3$_1EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !239
end_hunk_1
