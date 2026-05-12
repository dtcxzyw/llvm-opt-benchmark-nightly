inline.NumInlined: 3044
inline.NumDeleted: 1648
begin_hunk_0_@_ZN6duckdb18FixedSizeAllocator3NewEv:bb.a
  %1 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, duckdb::unique_ptr<duckdb::FixedSizeBuffer>>, std::allocator<std::pair<const unsigned long, duckdb::unique_ptr<duckdb::FixedSizeBuffer>>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 10 uses
  %4 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %5 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  %6 = alloca %"struct.duckdb::ValidityMask", align 8 ; 10 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb18FixedSizeAllocator3NewEv:bb.a
  br label %common.resume

_ZN6duckdb9make_uniqINS_15FixedSizeBufferEJRNS_12BlockManagerERNS_9MemoryTagEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %_ZNK6duckdb18FixedSizeAllocator20GetAvailableBufferIdEv.exit
  %i.am = load i64, ptr %i.a, align 8, !tbaa !73  ; 4 uses
  %i.an = load i64, ptr %i.h, align 8, !tbaa !47  ; 2 uses
  %i.ao = urem i64 %i.am, %i.an                   ; 3 uses
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !46
end_hunk_1
begin_hunk_2_@_ZN6duckdb18FixedSizeAllocator3NewEv:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.bb, align 8, !tbaa !66
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %7 = load i64, ptr %i.a, align 8, !tbaa !73
  store i64 %7, ptr %i.bd, align 8, !tbaa !87
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr null, ptr %i.be, align 8, !tbaa !96
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !97
end_hunk_2
begin_hunk_3_@_ZN6duckdb15FixedSizeBuffer9SerializeERNS_19PartialBlockManagerEmmm:bb.a
.body.thread:                                     ; preds = %bb.x
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb20PartialBlockForIndexESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb9make_uniqINS_20PartialBlockForIndexEJRNS_17PartialBlockStateERNS_12BlockManagerERNS_10shared_ptrINS_11BlockHandleELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %bb.s
  invoke void @_ZN6duckdb12BufferHandle7DestroyEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
end_hunk_3
begin_hunk_4_@_ZN6duckdb15FixedSizeBuffer9SerializeERNS_19PartialBlockManagerEmmm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i36, %bb.aq, %.body.thread, %bb.y, %bb.t, %bb.w, %bb.ar, %bb.ap
  %.pn21 = phi { ptr, i32 } [ %i.ef, %bb.ar ], [ %i.bx, %bb.y ], [ %i.dz, %bb.ap ], [ %i.bs, %bb.t ], [ %.pn18, %bb.w ], [ %i.cc, %.body.thread ], [ %i.ea, %bb.aq ], [ %i.ea, %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i36 ]
  %.pr = load ptr, ptr %i.az, align 8, !tbaa !217 ; 3 uses
  %.not.i.i38 = icmp eq ptr %.pr, null
  br i1 %.not.i.i38, label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit40, label %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i39
end_hunk_4
begin_hunk_5_@_ZN6duckdb15FixedSizeBuffer9SerializeERNS_19PartialBlockManagerEmmm:bb.a
  call void %i.ei(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.pr) #25, !inline_history !222
  br label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit40

_ZN6duckdb22PartialBlockAllocationD2Ev.exit40:    ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %_ZN6duckdb22PartialBlockAllocationD2Ev.exit40
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %_ZN6duckdb22PartialBlockAllocationD2Ev.exit40 ], [ %.pn46, %bb.g ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn21.pn

bb.at:                                            ; preds = %bb.e
end_hunk_5
begin_hunk_6_@_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_:bb.a

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.aa = phi i64 [ %i.q, %bb.e ], [ %i.f, %.thread34 ], [ %i.f, %..loopexit_crit_edge21.i.i ], [ %i.f, %.lr.ph.i.i ]
  %i.ab = phi i64 [ %i.k, %bb.e ], [ %i.c, %.thread34 ], [ %i.c, %..loopexit_crit_edge21.i.i ], [ %i.c, %.lr.ph.i.i ]
  %i.ac = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %4 = load i64, ptr %1, align 8, !tbaa !73
  store i64 %4, ptr %i.ad, align 8, !tbaa !73
  %i.ae = invoke ptr @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.aa, i64 noundef %i.ab, ptr noundef nonnull %i.ac, i64 noundef 1)
          to label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

end_hunk_6
begin_hunk_7_@_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueImmNS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_:bb.a

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.aa = phi i64 [ %i.q, %bb.e ], [ %i.f, %.thread34 ], [ %i.f, %..loopexit_crit_edge21.i.i ], [ %i.f, %.lr.ph.i.i ]
  %i.ab = phi i64 [ %i.k, %bb.e ], [ %i.c, %.thread34 ], [ %i.c, %..loopexit_crit_edge21.i.i ], [ %i.c, %.lr.ph.i.i ]
  %i.ac = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %4 = load i64, ptr %1, align 8, !tbaa !73
  store i64 %4, ptr %i.ad, align 8, !tbaa !73
  %i.ae = invoke ptr @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.aa, i64 noundef %i.ab, ptr noundef nonnull %i.ac, i64 noundef 1)
          to label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

end_hunk_7
