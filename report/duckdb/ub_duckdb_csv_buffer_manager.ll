inline.NumInlined: 851
inline.NumDeleted: 469
begin_hunk_0_@_ZN6duckdb16CSVBufferManager11ResetBufferEm
define void @_ZN6duckdb16CSVBufferManager11ResetBufferEm(ptr noundef nonnull align 8 dereferenceable(257) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !72
end_hunk_0
begin_hunk_1_@_ZN6duckdb16CSVBufferManager11ResetBufferEm:bb.a
  br i1 %.not51, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %1)
          to label %bb.ad unwind label %bb.y

bb.ad:                                            ; preds = %bb.ac
end_hunk_1
begin_hunk_2_@_ZN6duckdb16CSVBufferManager11ResetBufferEm:bb.a
  br label %bb.bh

bb.am:                                            ; preds = %bb.ae
  %i.dh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %1)
          to label %bb.an unwind label %bb.y      ; 2 uses

bb.an:                                            ; preds = %bb.am
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_:bb.a

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.aa = phi i64 [ %i.q, %bb.e ], [ %i.f, %.thread34 ], [ %i.f, %..loopexit_crit_edge21.i.i ], [ %i.f, %.lr.ph.i.i ]
  %i.ab = phi i64 [ %i.k, %bb.e ], [ %i.c, %.thread34 ], [ %i.c, %..loopexit_crit_edge21.i.i ], [ %i.c, %.lr.ph.i.i ] ; 2 uses
  %i.ac = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21 ; 4 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !184
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !72
  %i.ae = invoke ptr @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.aa, i64 noundef %i.ab, ptr noundef nonnull %i.ac, i64 noundef 1)
          to label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

end_hunk_3
