Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_catalog_entries?download=true
inline.NumInlined: 10301
inline.NumDeleted: 5043
begin_hunk_0_@_ZN6duckdb23ColumnDependencyManagerD2Ev:bb.a
  %i.g = load i64, ptr %i.f, align 8, !tbaa !413
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !412  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_setIN6duckdb12LogicalIndexENS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #31
  br label %_ZNSt13unordered_setIN6duckdb12LogicalIndexENS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit

_ZNSt13unordered_setIN6duckdb12LogicalIndexENS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !408  ; 2 uses
  %.not5.i.i.i.i1 = icmp eq ptr %i.n, null
  br i1 %.not5.i.i.i.i1, label %_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt13unordered_setIN6duckdb12LogicalIndexENS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i3 = phi ptr [ %i.o, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.n, %_ZNSt13unordered_setIN6duckdb12LogicalIndexENS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit ] ; 6 uses
  %i.o = load ptr, ptr %.06.i.i.i.i3, align 8, !tbaa !193 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i3, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !414  ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i2, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i2 ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !193 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i.i.i.i.i) #31
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !39

_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i2
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !412
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i3, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !413
  %i.w = shl i64 %i.v, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.w, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !412  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i3, i64 64
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.x) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %bb.c, %_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i3) #31
  %.not.i.i.i.i4 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i4, label %_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !1861

_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %_ZNSt13unordered_setIN6duckdb12LogicalIndexENS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !406
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !407
  %i.ad = shl i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ad, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !406 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.ae) #31
  br label %_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit

_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !408 ; 2 uses
  %.not5.i.i.i.i5 = icmp eq ptr %i.aj, null
  br i1 %.not5.i.i.i.i5, label %_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i15, label %.lr.ph.i.i.i.i6

.lr.ph.i.i.i.i6:                                  ; preds = %_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i13
  %.06.i.i.i.i7 = phi ptr [ %i.ak, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i13 ], [ %i.aj, %_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit ] ; 6 uses
  %i.ak = load ptr, ptr %.06.i.i.i.i7, align 8, !tbaa !193 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i7, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i7, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !414 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i8 = icmp eq ptr %i.an, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i8, label %_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i.i.i.i.i9

.lr.ph.i.i.i.i.i.i.i.i.i.i9:                      ; preds = %.lr.ph.i.i.i.i6, %.lr.ph.i.i.i.i.i.i.i.i.i.i9
  %.06.i.i.i.i.i.i.i.i.i.i10 = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i9 ], [ %i.an, %.lr.ph.i.i.i.i6 ] ; 2 uses
  %i.ao = load ptr, ptr %.06.i.i.i.i.i.i.i.i.i.i10, align 8, !tbaa !193 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i.i.i.i.i10) #31
  %.not.i.i.i.i.i.i.i.i.i.i11 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i11, label %_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i12, label %.lr.ph.i.i.i.i.i.i.i.i.i.i9, !llvm.loop !39

_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i12: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i9, %.lr.ph.i.i.i.i6
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !412
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i7, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !413
  %i.as = shl i64 %i.ar, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ap, i8 0, i64 %i.as, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !412 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i7, i64 64
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i13, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i12
  tail call void @_ZdlPv(ptr noundef %i.at) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i13

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i13: ; preds = %bb.e, %_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i12
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i7) #31
  %.not.i.i.i.i14 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i14, label %_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i15, label %.lr.ph.i.i.i.i6, !llvm.loop !1861

_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i15: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i13, %_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit
  %i.aw = load ptr, ptr %i.ah, align 8, !tbaa !406
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !407
  %i.az = shl i64 %i.ay, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.az, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.ba = load ptr, ptr %i.ah, align 8, !tbaa !406 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit16, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i15
  tail call void @_ZdlPv(ptr noundef %i.ba) #31
  br label %_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit16

_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit16: ; preds = %_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i15, %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !408 ; 2 uses
  %.not5.i.i.i.i17 = icmp eq ptr %i.be, null
  br i1 %.not5.i.i.i.i17, label %_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i27, label %.lr.ph.i.i.i.i18

.lr.ph.i.i.i.i18:                                 ; preds = %_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit16, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i25
  %.06.i.i.i.i19 = phi ptr [ %i.bf, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i25 ], [ %i.be, %_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit16 ] ; 6 uses
  %i.bf = load ptr, ptr %.06.i.i.i.i19, align 8, !tbaa !193 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i19, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i19, i64 32 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !414 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.bi, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i20, label %_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i24, label %.lr.ph.i.i.i.i.i.i.i.i.i.i21

.lr.ph.i.i.i.i.i.i.i.i.i.i21:                     ; preds = %.lr.ph.i.i.i.i18, %.lr.ph.i.i.i.i.i.i.i.i.i.i21
  %.06.i.i.i.i.i.i.i.i.i.i22 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i.i.i21 ], [ %i.bi, %.lr.ph.i.i.i.i18 ] ; 2 uses
  %i.bj = load ptr, ptr %.06.i.i.i.i.i.i.i.i.i.i22, align 8, !tbaa !193 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i.i.i.i.i22) #31
  %.not.i.i.i.i.i.i.i.i.i.i23 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i23, label %_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i24, label %.lr.ph.i.i.i.i.i.i.i.i.i.i21, !llvm.loop !39

_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i24: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i21, %.lr.ph.i.i.i.i18
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !412
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i19, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !413
  %i.bn = shl i64 %i.bm, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bk, i8 0, i64 %i.bn, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  %i.bo = load ptr, ptr %i.bg, align 8, !tbaa !412 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i19, i64 64
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i25, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i24
  tail call void @_ZdlPv(ptr noundef %i.bo) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i25

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i25: ; preds = %bb.g, %_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i24
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i19) #31
  %.not.i.i.i.i26 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i26, label %_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i27, label %.lr.ph.i.i.i.i18, !llvm.loop !1861

_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i27: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i25, %_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit16
  %i.br = load ptr, ptr %0, align 8, !tbaa !406
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !407
  %i.bu = shl i64 %i.bt, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.br, i8 0, i64 %i.bu, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  %i.bv = load ptr, ptr %0, align 8, !tbaa !406   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit28, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i27
  tail call void @_ZdlPv(ptr noundef %i.bv) #31
  br label %_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit28

_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit28: ; preds = %_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i27, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb23ColumnDependencyManager18AddGeneratedColumnERKNS_16ColumnDefinitionERKNS_10ColumnListE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(105) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector.181", align 8 ; 10 uses
  %4 = alloca %"class.duckdb::vector.836", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZNK6duckdb16ColumnDefinition21GetListOfDependenciesERNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %3, align 8, !tbaa !459    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !459  ; 2 uses
  %.not45 = icmp eq ptr %i.a, %i.c
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit, %bb.b
  %i.f = phi ptr [ null, %bb.b ], [ %i.ao, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %i.g = invoke i64 @_ZNK6duckdb16ColumnDefinition7LogicalEv(ptr noundef nonnull align 8 dereferenceable(216) %1)
          to label %bb.r unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 11 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.an, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %.sroa.032.046.a = phi ptr [ null, %.lr.ph ], [ %i.am, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.k = phi ptr [ %i.a, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %i.l = invoke noundef zeroext i1 @_ZNK6duckdb10ColumnList12ColumnExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.e unwind label %.loopexit

bb.e:                                             ; preds = %bb.d
  br i1 %i.l, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.93, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb15BinderExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.y unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.013 = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.p = load ptr, ptr %5, align 8, !tbaa !104    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.p) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.013, label %bb.j, label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.013, label %bb.j, label %bb.v

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn37 = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.m) #30
  br label %bb.v

bb.k:                                             ; preds = %bb.e
  %i.s = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.t = invoke i64 @_ZNK6duckdb16ColumnDefinition7LogicalEv(ptr noundef nonnull align 8 dereferenceable(216) %i.s)
          to label %bb.m unwind label %.loopexit  ; 2 uses

bb.m:                                             ; preds = %bb.l
  %.not.i.i = icmp eq ptr %i.j, %.sroa.032.046.a
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.t, ptr %i.j, align 8, !tbaa !106
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.d, align 8, !tbaa !388
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit

bb.o:                                             ; preds = %bb.m
  %i.v = ptrtoint ptr %i.j to i64
  %i.w = ptrtoint ptr %i.i to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.p, label %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ad, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #33
          to label %.noexc26 unwind label %.loopexit ; 6 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store i64 %i.t, ptr %i.ag, align 8, !tbaa !106
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc26, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %i.af, %.noexc26 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %i.i, %.noexc26 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  %i.ah = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !106, !alias.scope !1866
  store i64 %i.ah, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !106, !alias.scope !1865
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.j
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !15

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc26
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.af, %.noexc26 ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #31
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.af, ptr %4, align 8, !tbaa !386
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !388
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad ; 2 uses
  store ptr %i.al, ptr %i.e, align 8, !tbaa !389
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.n
  %i.am = phi ptr [ %.sroa.032.046.a, %bb.n ], [ %i.al, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.an = phi ptr [ %i.u, %bb.n ], [ %i.ak, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.ao = phi ptr [ %i.i, %bb.n ], [ %i.af, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.c
  br i1 %.not, label %._crit_edge, label %bb.d

bb.r:                                             ; preds = %._crit_edge
  invoke void @_ZN6duckdb23ColumnDependencyManager18AddGeneratedColumnENS_12LogicalIndexERKNS_6vectorIS1_Lb1ESaIS1_EEEb(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 %i.g, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true)
          to label %bb.s unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdlPv(ptr noundef nonnull %i.f) #31
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.aq = load ptr, ptr %3, align 8, !tbaa !461   ; 3 uses
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !460 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aq, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit ] ; 3 uses
  %i.as = load ptr, ptr %.05.i.i.i, align 8, !tbaa !104 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.as) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.av, %i.ar
  br i1 %.not.i.i.i27, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !27

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !461
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit
  %i.aw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.aq, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

.loopexit:                                        ; preds = %bb.k, %bb.d, %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.r, %bb.p
  %i.ax = phi ptr [ %i.f, %._crit_edge ], [ %i.f, %bb.r ], [ %i.i, %bb.p ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ay = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.j ], [ %i.i, %.loopexit ], [ %i.ax, %.loopexit.split-lp ] ; 2 uses
  %.pn21.pn.pn = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn37, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i28 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit29, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdlPv(ptr noundef nonnull %i.ay) #31
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit29

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit29: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit29, %bb.c
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit29 ], [ %i.h, %bb.c ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn21.pn.pn.pn

bb.y:                                             ; preds = %bb.h
  unreachable
}

declare void @_ZNK6duckdb16ColumnDefinition21GetListOfDependenciesERNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15BinderExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.1438", align 8  ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !1869
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1869
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !283, !noalias !1869 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !284, !noalias !1869 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #31
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !283, !noalias !1869
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #31
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !1869
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !1869
  invoke void @_ZN6duckdb15BinderExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb23ColumnDependencyManager18AddGeneratedColumnENS_12LogicalIndexERKNS_6vectorIS1_Lb1ESaIS1_EEEb(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Hashtable<duckdb::LogicalIndex, std::pair<const duckdb::LogicalIndex, std::unordered_set<duckdb::LogicalIndex, duckdb::LogicalIndexHashFunction>>, std::allocator<std::pair<const duckdb::LogicalIndex, std::unordered_set<duckdb::LogicalIndex, duckdb::LogicalIndexHashFunction>>>, std::__detail::_Select1st, std::equal_to<duckdb::LogicalIndex>, duckdb::LogicalIndexHashFunction, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %5 = alloca %"struct.std::__detail::_AllocNode.1638", align 8 ; 4 uses
  %6 = alloca %"struct.std::__detail::_AllocNode.1638", align 8 ; 4 uses
  %7 = alloca %"struct.std::__detail::_AllocNode.1638", align 8 ; 4 uses
  %8 = alloca %"struct.duckdb::LogicalIndex", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  store i64 %1, ptr %8, align 8
  %i.a = load ptr, ptr %2, align 8, !tbaa !665
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !665
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNK6duckdb23ColumnDependencyManager13HasDependentsENS_12LogicalIndexE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.f = call noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt8__detail9_Map_baseIN6duckdb12LogicalIndexESt4pairIKS2_St13unordered_setIS2_NS1_24LogicalIndexHashFunctionESt8equal_toIS2_ESaIS2_EEESaISB_ENS_10_Select1stES8_S6_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %8) ; 12 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !665    ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !665  ; 2 uses
  %.not220 = icmp eq ptr %i.g, %i.h
  br i1 %.not220, label %._crit_edge, label %.lr.ph222

.lr.ph222:                                        ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.j

._crit_edge:                                      ; preds = %bb.cf, %bb.b
  %.sroa.07.0.copyload = load i64, ptr %8, align 8, !tbaa !106 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !409
  %.not.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.not.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.ab, %bb.c ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !193 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNK6duckdb23ColumnDependencyManager13HasDependentsENS_12LogicalIndexE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !488
  %i.ae = icmp eq i64 %.sroa.07.0.copyload, %i.ad
  br i1 %i.ae, label %_ZNK6duckdb23ColumnDependencyManager13HasDependentsENS_12LogicalIndexE.exit, label %bb.d, !llvm.loop !33

bb.f:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !407 ; 2 uses
  %i.ah = urem i64 %.sroa.07.0.copyload, %i.ag    ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !406
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !377 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb23ColumnDependencyManager13HasDependentsENS_12LogicalIndexE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !193 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
end_hunk_0
