inline.NumInlined: 330
inline.NumDeleted: 230
begin_hunk_0_@_ZN6Assimp20FindInstancesProcess7ExecuteEP7aiScene:bb.a
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull @.str.1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.cb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #21 ; 4 uses
  %i.h = shl nuw nsw i64 %i.e, 2
  %i.i = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #21
          to label %.lr.ph322 unwind label %bb.c  ; 6 uses

.lr.ph322:                                        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %i.j, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp20FindInstancesProcess7ExecuteEP7aiScene:bb.a
  store i32 %.1147, ptr %i.c, align 8
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit

bb.bz:                                            ; preds = %._crit_edge323
  %i.sf = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ca unwind label %bb.bw

end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_:bb.a
  br i1 %.not.not, label %bb.b, label %.thread34

.thread34:                                        ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %1, align 8                ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
end_hunk_3
begin_hunk_4_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_:bb.a
.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.ad = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread34 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.ae = phi i64 [ %i.p, %bb.e ], [ %i.d, %.thread34 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %4 = phi ptr [ %i.l, %bb.e ], [ %i.c, %.thread34 ], [ %i.c, %..loopexit_crit_edge21.i.i ], [ %i.c, %.lr.ph.i.i ]
  %i.af = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21 ; 4 uses
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %4, ptr %i.ag, align 8
  %i.ah = invoke ptr @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20
end_hunk_4
