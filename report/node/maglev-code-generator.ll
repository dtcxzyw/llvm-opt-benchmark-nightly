Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-code-generator?download=true
inline.NumInlined: 32460
inline.NumDeleted: 3456
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNSt13unordered_mapIiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS1_8RegisterELb0EE14GapMoveTargetsESt4hashIiESt8equal_toIiESaISt4pairIKiS7_EEEixERSD_:bb.a
  %i.x = load i64, ptr %i.w, align 8
  %i.y = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 noundef %i.v, i64 noundef %i.x, i64 noundef 1) #20 ; 2 uses
  %i.z = extractvalue { i8, i64 } %i.y, 0
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.loopexit.i
  %.pre.i.i = load ptr, ptr %0, align 8
  br label %bb.p

bb.e:                                             ; preds = %.loopexit.i
  %i.ab = extractvalue { i8, i64 } %i.y, 1        ; 7 uses
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.f, label %bb.g, !prof !36

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.ad, align 8
  br label %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = icmp ugt i64 %i.ab, 1152921504606846975
  br i1 %i.ae, label %bb.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS5_8RegisterELb0EE14GapMoveTargetsEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i, !prof !36

bb.h:                                             ; preds = %bb.g
  %i.af = icmp ugt i64 %i.ab, 2305843009213693951
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS5_8RegisterELb0EE14GapMoveTargetsEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ag = shl nuw nsw i64 %i.ab, 3                ; 2 uses
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #21 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ah, i8 0, i64 %i.ag, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i

_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS5_8RegisterELb0EE14GapMoveTargetsEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i, %bb.f
  %.0.i.i.i.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.ah, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS5_8RegisterELb0EE14GapMoveTargetsEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.val29.i.i.i.i = load ptr, ptr %i.ai, align 8  ; 2 uses
  store ptr null, ptr %i.ai, align 8
  %.not30.i.i.i.i = icmp eq ptr %.val29.i.i.i.i, null
  br i1 %.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i, %bb.n
  %.032.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.n ], [ 0, %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i ] ; 2 uses
  %.02531.i.i.i.i = phi ptr [ %.025.val.i.i.i.i, %bb.n ], [ %.val29.i.i.i.i, %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i ] ; 8 uses
  %.025.val.i.i.i.i = load ptr, ptr %.02531.i.i.i.i, align 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.02531.i.i.i.i, i64 8
  %.val.i.i.i.i = load i32, ptr %i.aj, align 8
  %i.ak = sext i32 %.val.i.i.i.i to i64
  %i.al = urem i64 %i.ak, %i.ab                   ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %i.al ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not27.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not27.i.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = load ptr, ptr %i.ai, align 8
  store ptr %i.ao, ptr %.02531.i.i.i.i, align 8
  store ptr %.02531.i.i.i.i, ptr %i.ai, align 8
  store ptr %i.ai, ptr %i.am, align 8
  %i.ap = load ptr, ptr %.02531.i.i.i.i, align 8
  %.not28.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not28.i.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %.032.i.i.i.i
  store ptr %.02531.i.i.i.i, ptr %i.aq, align 8
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ar = load ptr, ptr %i.an, align 8
  store ptr %i.ar, ptr %.02531.i.i.i.i, align 8
  %i.as = load ptr, ptr %i.am, align 8
  store ptr %.02531.i.i.i.i, ptr %i.as, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.1.i.i.i.i = phi i64 [ %.032.i.i.i.i, %bb.m ], [ %i.al, %bb.l ], [ %i.al, %bb.k ]
  %.not.i.i.i.i = icmp eq ptr %.025.val.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !222

._crit_edge.i.i.i.i:                              ; preds = %bb.n, %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i
  %i.at = load ptr, ptr %0, align 8               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aw = load i64, ptr %i.b, align 8
  %i.ax = shl i64 %i.aw, 3
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
  br label %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i

_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i: ; preds = %bb.o, %._crit_edge.i.i.i.i
  store i64 %i.ab, ptr %i.b, align 8
  store ptr %.0.i.i.i.i.i, ptr %0, align 8
  %i.ay = urem i64 %i.a, %i.ab
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i, %._crit_edge.i.i
  %i.az = phi ptr [ %.0.i.i.i.i.i, %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %.pre.i.i, %._crit_edge.i.i ] ; 3 uses
  %.0.i25.i = phi i64 [ %i.ay, %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %i.c, %._crit_edge.i.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.0.i25.i ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not.i.i26.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i26.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr %i.bb, align 8
  store ptr %i.bc, ptr %i.n, align 8
  %i.bd = load ptr, ptr %i.ba, align 8
  store ptr %i.n, ptr %i.bd, align 8
  br label %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i

bb.r:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 3 uses
  store ptr %i.bf, ptr %i.n, align 8
  store ptr %i.n, ptr %i.be, align 8
  %.not11.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not11.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val12.i.i.i = load i64, ptr %i.b, align 8
  %.val13.i.i.i = load i32, ptr %i.bg, align 4
  %i.bh = sext i32 %.val13.i.i.i to i64
  %i.bi = urem i64 %i.bh, %.val12.i.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bi
  store ptr %i.n, ptr %i.bj, align 8
  %.pre.i = load ptr, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bk = phi ptr [ %.pre.i, %bb.s ], [ %i.az, %bb.r ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.0.i25.i
  store ptr %i.be, ptr %i.bl, align 8
  br label %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i

_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i: ; preds = %bb.t, %bb.q
  %i.bm = load i64, ptr %i.w, align 8
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.w, align 8
  br label %_ZNSt8__detail9_Map_baseIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS4_8RegisterELb0EE14GapMoveTargetsEESaISB_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit

_ZNSt8__detail9_Map_baseIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS4_8RegisterELb0EE14GapMoveTargetsEESaISB_ENS_10_Select1stESt8equal_toIiESt4hashIiENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit: ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i
  %.pn.i = phi ptr [ %i.n, %_ZNSt10_HashtableIiSt4pairIKiN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS3_8RegisterELb0EE14GapMoveTargetsEESaISA_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %i.f, %bb.b ], [ %i.j, %bb.c ]
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  ret ptr %.1.i
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIiLm1ESaIiEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #11 comdat align 2 !guid !224 {
_ZSt9destroy_nIPilET_S1_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPilET_S1_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPilET_S1_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIiLm1ESaIiEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #11 comdat align 2 !guid !225 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIiLm1ESaIiEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(28) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIiLm1ESaIiEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(28) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 !guid !226 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h) ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %.sroa.speculated, 1152921504606846976
  br i1 %i.k, label %bb.b, label %bb.e, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %.sroa.speculated, 2305843009213693952
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 4, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 5 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp sgt i64 %i.t, 4
  br i1 %i.u, label %bb.f, label %bb.g, !prof !38

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.p, i64 %i.t, i1 false)
  br label %_ZSt18uninitialized_moveIPiS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq i64 %i.t, 4
  br i1 %i.v, label %bb.h, label %_ZSt18uninitialized_moveIPiS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %bb.g
  %i.w = load i32, ptr %i.p, align 4
  store i32 %i.w, ptr %i.o, align 4
  br label %_ZSt18uninitialized_moveIPiS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_moveIPiS0_ET0_T_S2_S1_.exit:  ; preds = %bb.f, %bb.g, %bb.h
  %i.x = shl nuw i64 1, %i.j
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.y, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIiLm1ESaIiEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.x
  store ptr %i.ab, ptr %i.c, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind uwtable
define internal preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6maglev12_GLOBAL__N_133ExceptionHandlerTrampolineBuilder4MoveELm16ESaIS6_EE4GrowEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(280) %0) unnamed_addr #11 align 2 !guid !227 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6maglev12_GLOBAL__N_133ExceptionHandlerTrampolineBuilder4MoveELm16ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6maglev12_GLOBAL__N_133ExceptionHandlerTrampolineBuilder4MoveELm16ESaIS6_EE4GrowEm(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(280) %0) unnamed_addr #11 align 2 !guid !229 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val8 = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.d = ptrtoint ptr %.val8 to i64
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %.not = icmp eq ptr %.val8, %i.b
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 %i.g, i64 1)
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i
  %i.k = shl nuw i64 1, %i.j
  %i.l = select i1 %.not, i64 1, i64 %i.k         ; 4 uses
  %i.m = icmp ugt i64 %i.l, 576460752303423487
  br i1 %i.m, label %bb.b, label %_ZN2v84base11SmallVectorINS_8internal6maglev12_GLOBAL__N_133ExceptionHandlerTrampolineBuilder4MoveELm16ESaIS6_EE22AllocateDynamicStorageEm.exit, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.l, 1152921504606846975
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZN2v84base11SmallVectorINS_8internal6maglev12_GLOBAL__N_133ExceptionHandlerTrampolineBuilder4MoveELm16ESaIS6_EE22AllocateDynamicStorageEm.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = shl nuw nsw i64 %i.l, 4
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21 ; 4 uses
  %i.r = load ptr, ptr %0, align 8                ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt18uninitialized_moveIPN2v88internal6maglev12_GLOBAL__N_133ExceptionHandlerTrampolineBuilder4MoveES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN2v84base11SmallVectorINS_8internal6maglev12_GLOBAL__N_133ExceptionHandlerTrampolineBuilder4MoveELm16ESaIS6_EE22AllocateDynamicStorageEm.exit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.q, %_ZN2v84base11SmallVectorINS_8internal6maglev12_GLOBAL__N_133ExceptionHandlerTrampolineBuilder4MoveELm16ESaIS6_EE22AllocateDynamicStorageEm.exit ] ; 2 uses
  %.sroa.06.07.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.r, %_ZN2v84base11SmallVectorINS_8internal6maglev12_GLOBAL__N_133ExceptionHandlerTrampolineBuilder4MoveELm16ESaIS6_EE22AllocateDynamicStorageEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.06.07.i.i.i.i, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.07.i.i.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 16
  %i.w = icmp eq ptr %i.u, %i.s
  br i1 %i.w, label %_ZSt18uninitialized_moveIPN2v88internal6maglev12_GLOBAL__N_133ExceptionHandlerTrampolineBuilder4MoveES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !228

_ZSt18uninitialized_moveIPN2v88internal6maglev12_GLOBAL__N_133ExceptionHandlerTrampolineBuilder4MoveES6_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZN2v84base11SmallVectorINS_8internal6maglev12_GLOBAL__N_133ExceptionHandlerTrampolineBuilder4MoveELm16ESaIS6_EE22AllocateDynamicStorageEm.exit
  %i.x = ptrtoint ptr %i.o to i64
  %i.y = sub i64 %i.x, %i.e
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6maglev12_GLOBAL__N_133ExceptionHandlerTrampolineBuilder4MoveELm16ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0)
  store ptr %i.q, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.y
  store ptr %i.z, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.l
  store ptr %i.aa, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6maglev12_GLOBAL__N_133ExceptionHandlerTrampolineBuilder4MoveELm16ESaIS6_EE11FreeStorageEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(280) %0) unnamed_addr #11 align 2 !guid !230 {
_ZSt9destroy_nIPN2v88internal6maglev12_GLOBAL__N_133ExceptionHandlerTrampolineBuilder4MoveElET_S7_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal6maglev12_GLOBAL__N_133ExceptionHandlerTrampolineBuilder4MoveElET_S7_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal6maglev12_GLOBAL__N_133ExceptionHandlerTrampolineBuilder4MoveElET_S7_T0_.exit
  ret void
}

declare void @_ZN2v88internal6maglev15MaglevAssembler20MaterialiseValueNodeENS0_8RegisterEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(456), i8, ptr noundef) local_unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436), i8) local_unnamed_addr #1

declare void @_ZNK2v88internal6maglev9ValueNode14LoadToRegisterEPNS1_15MaglevAssemblerENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef, i8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS0_8RegisterELb0EE10PopTargetsES4_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(865) %1, i8 %2) unnamed_addr #0 align 2 !guid !235 {
bb.a:
  %3 = alloca %"struct.v8::internal::maglev::(anonymous namespace)::ParallelMoveResolver<v8::internal::Register, false>::GapMoveTargets", align 16 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.b)
  %i.c = zext nneg i8 %2 to i64
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.c ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %3, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %i.e, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  store ptr %i.i, ptr %i.h, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.j, ptr %0, align 8, !alias.scope !238
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !238
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  store ptr %i.m, ptr %i.l, align 8, !alias.scope !238
  %i.n = icmp eq ptr %0, %i.d
  br i1 %i.n, label %_ZN2v88internal6maglev12_GLOBAL__N_120ParallelMoveResolverINS0_8RegisterELb0EE14GapMoveTargetsC2EOS6_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.d, align 8, !noalias !238 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call preserve_mostcc void @_ZN2v84base11SmallVectorIiLm1ESaIiEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %i.q = load <2 x ptr>, ptr %i.d, align 8, !noalias !238
  store <2 x ptr> %i.q, ptr %0, align 8, !alias.scope !238
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !238
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !238
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.o to i64
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev14GraphProcessorINS1_18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS4_33MaglevCodeGeneratingNodeProcessorEEEEE15ProcessNodeBaseEPNS1_8NodeBaseERKNS1_15ProcessingStateE:bb.a
  br label %bb.lk

bb.ju:                                            ; preds = %bb.a
  %i.js = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_24GenericShiftRightLogicalEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.jv:                                            ; preds = %bb.a
  %i.jt = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_17GenericBitwiseNotEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.jw:                                            ; preds = %bb.a
  %i.ju = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_13GenericNegateEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.jx:                                            ; preds = %bb.a
  %i.jv = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_16GenericIncrementEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.jy:                                            ; preds = %bb.a
  %i.jw = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_16GenericDecrementEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.jz:                                            ; preds = %bb.a
  %i.jx = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_12GenericEqualEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.ka:                                            ; preds = %bb.a
  %i.jy = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_18GenericStrictEqualEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kb:                                            ; preds = %bb.a
  %i.jz = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_15GenericLessThanEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kc:                                            ; preds = %bb.a
  %i.ka = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_22GenericLessThanOrEqualEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kd:                                            ; preds = %bb.a
  %i.kb = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_18GenericGreaterThanEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.ke:                                            ; preds = %bb.a
  %i.kc = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_25GenericGreaterThanOrEqualEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kf:                                            ; preds = %bb.a
  %i.kd = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_25BuiltinStringFromCharCodeEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kg:                                            ; preds = %bb.a
  %i.ke = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_43BuiltinStringPrototypeCharCodeOrCodePointAtEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kh:                                            ; preds = %bb.a
  %i.kf = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_33BuiltinSeqOneByteStringCharCodeAtEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.ki:                                            ; preds = %bb.a
  %i.kg = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_23CreateFastArrayElementsEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kj:                                            ; preds = %bb.a
  %i.kh = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_13NewConsStringEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kk:                                            ; preds = %bb.a
  %i.ki = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_15MapPrototypeGetEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kl:                                            ; preds = %bb.a
  %i.kj = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_23MapPrototypeGetInt32KeyEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.km:                                            ; preds = %bb.a
  %i.kk = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_15SetPrototypeHasEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kn:                                            ; preds = %bb.a
  %i.kl = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_5AbortEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.ko:                                            ; preds = %bb.a
  %i.km = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_6ReturnEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kp:                                            ; preds = %bb.a
  %i.kn = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_5DeoptEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kq:                                            ; preds = %bb.a
  %i.ko = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_6SwitchEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kr:                                            ; preds = %bb.a
  %i.kp = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_11BranchIfSmiEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.ks:                                            ; preds = %bb.a
  %i.kq = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_20BranchIfRootConstantEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kt:                                            ; preds = %bb.a
  %i.kr = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_21BranchIfToBooleanTrueEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.ku:                                            ; preds = %bb.a
  %i.ks = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_26BranchIfInt32ToBooleanTrueEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kv:                                            ; preds = %bb.a
  %i.kt = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_27BranchIfIntPtrToBooleanTrueEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kw:                                            ; preds = %bb.a
  %i.ku = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_28BranchIfFloat64ToBooleanTrueEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kx:                                            ; preds = %bb.a
  %i.kv = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_21BranchIfFloat64IsHoleEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.ky:                                            ; preds = %bb.a
  %i.kw = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_22BranchIfReferenceEqualEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kz:                                            ; preds = %bb.a
  %i.kx = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_20BranchIfInt32CompareEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.la:                                            ; preds = %bb.a
  %i.ky = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_21BranchIfUint32CompareEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.lb:                                            ; preds = %bb.a
  %i.kz = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_22BranchIfFloat64CompareEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.lc:                                            ; preds = %bb.a
  %i.la = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_23BranchIfUndefinedOrNullEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.ld:                                            ; preds = %bb.a
  %i.lb = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_20BranchIfUndetectableEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.le:                                            ; preds = %bb.a
  %i.lc = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_18BranchIfJSReceiverEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.lf:                                            ; preds = %bb.a
  %i.ld = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_14BranchIfTypeOfEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.lg:                                            ; preds = %bb.a
  %i.le = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_4JumpEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.lh:                                            ; preds = %bb.a
  %i.lf = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_16CheckpointedJumpEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.li:                                            ; preds = %bb.a
  %i.lg = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_8JumpLoopEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.lj:                                            ; preds = %bb.a
  unreachable

bb.lk:                                            ; preds = %bb.li, %bb.lh, %bb.lg, %bb.lf, %bb.le, %bb.ld, %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp, %bb.ko, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hl, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ %i.h, %bb.f ], [ %i.i, %bb.g ], [ %i.j, %bb.h ], [ %i.k, %bb.i ], [ %i.l, %bb.j ], [ %i.m, %bb.k ], [ %i.n, %bb.l ], [ %i.o, %bb.m ], [ %i.p, %bb.n ], [ %i.q, %bb.o ], [ %i.r, %bb.p ], [ %i.s, %bb.q ], [ %i.t, %bb.r ], [ %i.u, %bb.s ], [ %i.v, %bb.t ], [ %i.w, %bb.u ], [ %i.x, %bb.v ], [ %i.y, %bb.w ], [ %i.z, %bb.x ], [ %i.aa, %bb.y ], [ %i.ab, %bb.z ], [ %i.ac, %bb.aa ], [ %i.ad, %bb.ab ], [ %i.ae, %bb.ac ], [ %i.af, %bb.ad ], [ %i.ag, %bb.ae ], [ %i.ah, %bb.af ], [ %i.ai, %bb.ag ], [ %i.ld, %bb.lf ], [ %i.aj, %bb.ai ], [ %i.ak, %bb.aj ], [ %i.al, %bb.ak ], [ %i.am, %bb.al ], [ %i.an, %bb.am ], [ %i.ao, %bb.an ], [ %i.ap, %bb.ao ], [ %i.aq, %bb.ap ], [ %i.ar, %bb.aq ], [ %i.as, %bb.ar ], [ %i.at, %bb.as ], [ %i.au, %bb.at ], [ %i.av, %bb.au ], [ %i.aw, %bb.av ], [ %i.ax, %bb.aw ], [ %i.ay, %bb.ax ], [ %i.az, %bb.ay ], [ %i.ba, %bb.az ], [ %i.bb, %bb.ba ], [ %i.bc, %bb.bb ], [ %i.bd, %bb.bc ], [ %i.be, %bb.bd ], [ %i.bf, %bb.be ], [ %i.bg, %bb.bf ], [ %i.bh, %bb.bg ], [ %i.bi, %bb.bh ], [ %i.bj, %bb.bi ], [ %i.bk, %bb.bj ], [ %i.bl, %bb.bk ], [ %i.bm, %bb.bl ], [ %i.bn, %bb.bm ], [ %i.bo, %bb.bn ], [ %i.bp, %bb.bo ], [ %i.bq, %bb.bp ], [ %i.le, %bb.lg ], [ %i.br, %bb.br ], [ %i.bs, %bb.bs ], [ %i.bt, %bb.bt ], [ %i.bu, %bb.bu ], [ %i.bv, %bb.bv ], [ %i.bw, %bb.bw ], [ %i.bx, %bb.bx ], [ %i.by, %bb.by ], [ %i.bz, %bb.bz ], [ %i.ca, %bb.ca ], [ %i.cb, %bb.cb ], [ %i.cc, %bb.cc ], [ %i.cd, %bb.cd ], [ %i.ce, %bb.ce ], [ %i.cf, %bb.cf ], [ %i.cg, %bb.cg ], [ %i.ch, %bb.ch ], [ %i.ci, %bb.ci ], [ %i.cj, %bb.cj ], [ %i.ck, %bb.ck ], [ %i.cl, %bb.cl ], [ %i.cm, %bb.cm ], [ %i.cn, %bb.cn ], [ %i.co, %bb.co ], [ %i.cp, %bb.cp ], [ %i.cq, %bb.cq ], [ %i.cr, %bb.cr ], [ %i.cs, %bb.cs ], [ %i.ct, %bb.ct ], [ %i.cu, %bb.cu ], [ %i.cv, %bb.cv ], [ %i.cw, %bb.cw ], [ %i.cx, %bb.cx ], [ %i.cy, %bb.cy ], [ %i.cz, %bb.cz ], [ %i.da, %bb.da ], [ %i.db, %bb.db ], [ %i.dc, %bb.dc ], [ %i.dd, %bb.dd ], [ %i.de, %bb.de ], [ %i.df, %bb.df ], [ %i.dg, %bb.dg ], [ %i.dh, %bb.dh ], [ %i.di, %bb.di ], [ %i.dj, %bb.dj ], [ %i.dk, %bb.dk ], [ %i.dl, %bb.dl ], [ %i.dm, %bb.dm ], [ %i.dn, %bb.dn ], [ %i.do, %bb.do ], [ %i.dp, %bb.dp ], [ %i.dq, %bb.dq ], [ %i.dr, %bb.dr ], [ %i.ds, %bb.ds ], [ %i.dt, %bb.dt ], [ %i.du, %bb.du ], [ %i.dv, %bb.dv ], [ %i.dw, %bb.dw ], [ %i.dx, %bb.dx ], [ %i.dy, %bb.dy ], [ %i.dz, %bb.dz ], [ %i.ea, %bb.ea ], [ %i.eb, %bb.eb ], [ %i.ec, %bb.ec ], [ %i.ed, %bb.ed ], [ %i.ee, %bb.ee ], [ %i.ef, %bb.ef ], [ %i.eg, %bb.eg ], [ %i.eh, %bb.eh ], [ %i.ei, %bb.ei ], [ %i.ej, %bb.ej ], [ %i.ek, %bb.ek ], [ %i.el, %bb.el ], [ %i.em, %bb.em ], [ %i.en, %bb.en ], [ %i.eo, %bb.eo ], [ %i.ep, %bb.ep ], [ %i.eq, %bb.eq ], [ %i.er, %bb.er ], [ %i.es, %bb.es ], [ %i.et, %bb.et ], [ %i.eu, %bb.eu ], [ %i.ev, %bb.ev ], [ %i.ew, %bb.ew ], [ %i.ex, %bb.ex ], [ %i.ey, %bb.ey ], [ %i.ez, %bb.ez ], [ %i.fa, %bb.fa ], [ %i.fb, %bb.fb ], [ %i.fc, %bb.fc ], [ %i.fd, %bb.fd ], [ %i.fe, %bb.fe ], [ %i.ff, %bb.ff ], [ %i.fg, %bb.fg ], [ %i.fh, %bb.fh ], [ %i.fi, %bb.fi ], [ %i.fj, %bb.fj ], [ %i.fk, %bb.fk ], [ %i.fl, %bb.fl ], [ %i.fm, %bb.fm ], [ %i.fn, %bb.fn ], [ %i.fo, %bb.fo ], [ %i.fp, %bb.fp ], [ %i.fq, %bb.fq ], [ %i.fr, %bb.fr ], [ %i.fs, %bb.fs ], [ %i.ft, %bb.ft ], [ %i.fu, %bb.fu ], [ %i.fv, %bb.fv ], [ %i.fw, %bb.fw ], [ %i.fx, %bb.fx ], [ %i.fy, %bb.fy ], [ %i.fz, %bb.fz ], [ %i.ga, %bb.ga ], [ %i.gb, %bb.gb ], [ %i.gc, %bb.gc ], [ %i.gd, %bb.gd ], [ %i.ge, %bb.ge ], [ %i.gf, %bb.gf ], [ %i.gg, %bb.gg ], [ %i.gh, %bb.gh ], [ %i.gi, %bb.gi ], [ %i.gj, %bb.gj ], [ %i.gk, %bb.gk ], [ %i.gl, %bb.gl ], [ %i.gm, %bb.gm ], [ %i.gn, %bb.gn ], [ %i.go, %bb.go ], [ %i.gp, %bb.gp ], [ %i.gq, %bb.gq ], [ %i.gr, %bb.gr ], [ %i.gs, %bb.gs ], [ %i.gt, %bb.gt ], [ %i.gu, %bb.gu ], [ %i.gv, %bb.gv ], [ %i.gw, %bb.gw ], [ %i.gx, %bb.gx ], [ %i.gy, %bb.gy ], [ %i.gz, %bb.gz ], [ %i.ha, %bb.ha ], [ %i.hb, %bb.hb ], [ %i.hc, %bb.hc ], [ %i.hd, %bb.hd ], [ %i.he, %bb.he ], [ %i.hf, %bb.hf ], [ %i.hg, %bb.hg ], [ %i.hh, %bb.hh ], [ %i.hi, %bb.hi ], [ %i.hj, %bb.hj ], [ %i.lf, %bb.lh ], [ %i.hk, %bb.hl ], [ %i.lg, %bb.li ], [ %i.hl, %bb.hn ], [ %i.hm, %bb.ho ], [ %i.hn, %bb.hp ], [ %i.ho, %bb.hq ], [ %i.hp, %bb.hr ], [ %i.hq, %bb.hs ], [ %i.hr, %bb.ht ], [ %i.hs, %bb.hu ], [ %i.ht, %bb.hv ], [ %i.hu, %bb.hw ], [ %i.hv, %bb.hx ], [ %i.hw, %bb.hy ], [ %i.hx, %bb.hz ], [ %i.hy, %bb.ia ], [ %i.hz, %bb.ib ], [ %i.ia, %bb.ic ], [ %i.ib, %bb.id ], [ %i.ic, %bb.ie ], [ %i.id, %bb.if ], [ %i.ie, %bb.ig ], [ %i.if, %bb.ih ], [ %i.ig, %bb.ii ], [ %i.ih, %bb.ij ], [ %i.ii, %bb.ik ], [ %i.ij, %bb.il ], [ %i.ik, %bb.im ], [ %i.il, %bb.in ], [ %i.im, %bb.io ], [ %i.in, %bb.ip ], [ %i.io, %bb.iq ], [ %i.ip, %bb.ir ], [ %i.iq, %bb.is ], [ %i.ir, %bb.it ], [ %i.is, %bb.iu ], [ %i.it, %bb.iv ], [ %i.iu, %bb.iw ], [ %i.iv, %bb.ix ], [ %i.iw, %bb.iy ], [ %i.ix, %bb.iz ], [ %i.iy, %bb.ja ], [ %i.iz, %bb.jb ], [ %i.ja, %bb.jc ], [ %i.jb, %bb.jd ], [ %i.jc, %bb.je ], [ %i.jd, %bb.jf ], [ %i.je, %bb.jg ], [ %i.jf, %bb.jh ], [ %i.jg, %bb.ji ], [ %i.jh, %bb.jj ], [ %i.ji, %bb.jk ], [ %i.jj, %bb.jl ], [ %i.jk, %bb.jm ], [ %i.jl, %bb.jn ], [ %i.jm, %bb.jo ], [ %i.jn, %bb.jp ], [ %i.jo, %bb.jq ], [ %i.jp, %bb.jr ], [ %i.jq, %bb.js ], [ %i.jr, %bb.jt ], [ %i.js, %bb.ju ], [ %i.jt, %bb.jv ], [ %i.ju, %bb.jw ], [ %i.jv, %bb.jx ], [ %i.jw, %bb.jy ], [ %i.jx, %bb.jz ], [ %i.jy, %bb.ka ], [ %i.jz, %bb.kb ], [ %i.ka, %bb.kc ], [ %i.kb, %bb.kd ], [ %i.kc, %bb.ke ], [ %i.kd, %bb.kf ], [ %i.ke, %bb.kg ], [ %i.kf, %bb.kh ], [ %i.kg, %bb.ki ], [ %i.kh, %bb.kj ], [ %i.ki, %bb.kk ], [ %i.kj, %bb.kl ], [ %i.kk, %bb.km ], [ %i.kl, %bb.kn ], [ %i.km, %bb.ko ], [ %i.kn, %bb.kp ], [ %i.ko, %bb.kq ], [ %i.kp, %bb.kr ], [ %i.kq, %bb.ks ], [ %i.kr, %bb.kt ], [ %i.ks, %bb.ku ], [ %i.kt, %bb.kv ], [ %i.ku, %bb.kw ], [ %i.kv, %bb.kx ], [ %i.kw, %bb.ky ], [ %i.kx, %bb.kz ], [ %i.ky, %bb.la ], [ %i.kz, %bb.lb ], [ %i.la, %bb.lc ], [ %i.lb, %bb.ld ], [ %i.lc, %bb.le ]
  ret i32 %.0
}

declare void @_ZN2v88internal14MacroAssembler10DebugBreakEv(ptr noundef nonnull align 8 dereferenceable(436)) local_unnamed_addr #1

declare void @_ZN2v88internal6maglev15MaglevAssembler11OSRPrologueEPNS1_5GraphE(ptr noundef nonnull align 8 dereferenceable(456), ptr noundef) local_unnamed_addr #1

declare void @_ZN2v88internal6maglev15MaglevAssembler8PrologueEPNS1_5GraphE(ptr noundef nonnull align 8 dereferenceable(456), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #11 comdat align 2 !guid !268 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 !guid !269 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j) ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = load ptr, ptr %0, align 8                ; 3 uses
  %i.n = icmp ult i64 %.sroa.speculated, 1152921504606846977
  br i1 %i.n, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.84) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = shl nuw i64 8, %i.l                      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = icmp ugt i64 %i.o, %i.t
  br i1 %i.u, label %bb.d, label %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit, !prof !36

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 noundef %i.o) #20
  %.pre.i.i.i.i = load i64, ptr %i.r, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit

_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit: ; preds = %bb.c, %bb.d
  %i.v = phi i64 [ %.pre.i.i.i.i, %bb.d ], [ %i.s, %bb.c ] ; 3 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 5 uses
  %i.x = add i64 %i.v, %i.o
  store i64 %i.x, ptr %i.r, align 8
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.44) #22
  unreachable

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit
  %i.z = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, 8
  br i1 %i.ae, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.z, i64 %i.ad, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.f
  %i.af = icmp eq i64 %i.ad, 8
  br i1 %i.af, label %bb.i, label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.z, align 8
  store ptr %i.ag, ptr %i.w, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.h
  %i.aj = shl nuw i64 1, %i.l
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  store ptr %i.w, ptr %i.c, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ai
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.aj
  store ptr %i.al, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #11 comdat align 2 !guid !270 {
_ZSt9destroy_nIPPN2v88internal6maglev10BasicBlockElET_S6_T0_.exit:
  ret void
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #14 comdat !guid !271 {
bb.a:
  tail call void @abort() #22
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 !guid !272 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = icmp eq i8 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit, label %bb.c

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not54 = icmp eq i64 %i.k, 0
  br i1 %.not54, label %bb.c, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.0.0.copyload.i9.1.i = load i64, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.sroa.0.0.copyload.i9.2.i = load i64, ptr %i.m, align 8
  %.not.i.i.i.2.i = trunc i64 %.sroa.0.0.copyload.i9.2.i to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.o = load <8 x i64>, ptr %i.n, align 8
  %.fr58 = freeze <8 x i64> %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.q = load <8 x i64>, ptr %i.p, align 8
  %.fr57 = freeze <8 x i64> %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.s = load <8 x i64>, ptr %i.r, align 8
  %.fr = freeze <8 x i64> %i.s
  %i.t = or i64 %.sroa.0.0.copyload.i9.1.i, %i.j
  %i.u = trunc i64 %i.t to i1
  %i.v = or <8 x i64> %.fr, %.fr57
  %i.w = or <8 x i64> %i.v, %.fr58
  %rdx.op55 = trunc <8 x i64> %i.w to <8 x i1>
  %i.x = bitcast <8 x i1> %rdx.op55 to i8
  %i.y = icmp ne i8 %i.x, 0
  %op.rdx = select i1 %i.y, i1 true, i1 %.not.i.i.i.2.i
  %op.rdx56 = select i1 %op.rdx, i1 true, i1 %i.u
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i, %bb.b, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit ], [ %op.rdx56, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i ], [ true, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 !guid !273 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.84) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit, !prof !36

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #20
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit ]
end_hunk_1
