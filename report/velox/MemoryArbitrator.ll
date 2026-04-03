begin_hunk_0

bb.bd:                                            ; preds = %bb.bc
  %i.hm = add i64 %i.hl, %.039192                 ; 2 uses
  %.not = icmp eq i64 %.035193, 0                 ; 2 uses
  %.not52 = icmp ult i64 %i.hl, %.035193          ; 2 uses
  %cond = or i1 %.not, %.not52
  br i1 %cond, label %bb.bf, label %.lr.ph.i.i.i.preheader

bb.be:                                            ; preds = %bb.bc
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bf:                                            ; preds = %bb.bd
  %12 = select i1 %.not52, i64 %i.hl, i64 0
  %spec.select62 = sub nuw i64 %.035193, %12
  %.2 = select i1 %.not, i64 0, i64 %spec.select62
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0156.0191, i64 24 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %.val70
  br i1 %i.hp, label %.lr.ph.i.i.i.preheader, label %.lr.ph194

.lr.ph.i.i.i.preheader:                           ; preds = %bb.bd, %bb.bf
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateEvPT_.exit.i.i.i
end_hunk_0
begin_hunk_1
  %i.bn = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSO_15_Hash_node_baseEPNSO_10_Hash_nodeISM_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %.018, ptr noundef nonnull %.016, ptr noundef nonnull %.120) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.us.i, %bb.j, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread.i, %bb.h, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread.us.i, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, %bb.b, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit
  %.1 = phi i64 [ 1, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit ], [ 0, %bb.j ], [ 0, %bb.b ], [ 0, %bb.h ], [ 0, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.us.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread.us.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.i ]
  ret i64 %.1
}

end_hunk_1
