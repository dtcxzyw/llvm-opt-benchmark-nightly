inline.NumInlined: 1642
inline.NumDeleted: 696
begin_hunk_0_@_ZN6duckdb15MetadataManager20MarkBlocksAsModifiedEv:bb.a

_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49: ; preds = %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit, %.lr.ph116
  %.0.lcssa.i47 = phi i64 [ -1, %.lr.ph116 ], [ %i.eh, %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.077.0115, i64 32
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !37 ; 5 uses
  %i.ek = load i64, ptr %i.r, align 8, !tbaa !86  ; 2 uses
  %i.el = urem i64 %i.ej, %i.ek                   ; 3 uses
  %i.em = load ptr, ptr %i.i, align 8, !tbaa !84
end_hunk_0
begin_hunk_1_@_ZN6duckdb15MetadataManager20MarkBlocksAsModifiedEv:bb.a
.noexc56:                                         ; preds = %.loopexit.i.i
  store ptr null, ptr %i.ey, align 8, !tbaa !88
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %i.ej, ptr %i.ez, align 8, !tbaa !164
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 0, ptr %i.fa, align 8, !tbaa !166
  %i.fb = invoke ptr @_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 noundef %i.el, i64 noundef %i.ej, ptr noundef nonnull %i.ey, i64 noundef 1)
end_hunk_1
begin_hunk_2_@_ZNSt8__detail9_Map_baseIlSt4pairIKlN6duckdb13MetadataBlockEESaIS5_ENS_10_Select1stESt8equal_toIlESt4hashIlENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_
define linkonce_odr noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt8__detail9_Map_baseIlSt4pairIKlN6duckdb13MetadataBlockEESaIS5_ENS_10_Select1stESt8equal_toIlESt4hashIlENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<long, std::pair<const long, duckdb::MetadataBlock>, std::allocator<std::pair<const long, duckdb::MetadataBlock>>, std::__detail::_Select1st, std::equal_to<long>, std::hash<long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !37     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.d = urem i64 %i.a, %i.c                      ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNSt8__detail9_Map_baseIlSt4pairIKlN6duckdb13MetadataBlockEESaIS5_ENS_10_Select1stESt8equal_toIlESt4hashIlENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_:bb.a
  %i.q = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25 ; 6 uses
  store ptr null, ptr %i.q, align 8, !tbaa !88
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.a, ptr %i.r, align 8, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  invoke void @_ZN6duckdb13MetadataBlockC1Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.s)
          to label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit unwind label %bb.e
end_hunk_3
