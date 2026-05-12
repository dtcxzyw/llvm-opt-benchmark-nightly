inline.NumInlined: 189
inline.NumDeleted: 134
begin_hunk_0_@_ZN6aiNode11addChildrenEjPPS_:bb.a
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.epil, !llvm.loop !20

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.lr.ph.preheader, label %bb.i

end_hunk_0
begin_hunk_1_@_ZN6aiNode11addChildrenEjPPS_:bb.a
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader, !llvm.loop !22

bb.i:                                             ; preds = %.epilog-lcssa
  %i.y = zext i32 %i.i to i64                     ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 3                  ; 3 uses
  %i.aa = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %i.ac, i64 %i.z, i1 false)
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #18
  %.pre = load i32, ptr %i.h, align 8             ; 2 uses
  %.pre41 = zext i32 %.pre to i64                 ; 2 uses
  %.pre42 = shl nuw nsw i64 %.pre41, 3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi43 = phi i64 [ %.pre42, %bb.j ], [ %i.z, %bb.i ]
  %.pre-phi = phi i64 [ %.pre41, %bb.j ], [ %i.y, %bb.i ]
  %i.ae = phi i32 [ %.pre, %bb.j ], [ %i.i, %bb.i ]
  %i.af = add i32 %i.ae, %1                       ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ah) #16 ; 3 uses
  store ptr %i.ai, ptr %i.ab, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr nonnull align 8 %i.aa, i64 %.pre-phi43, i1 false)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.pre-phi
  %i.ak = shl nuw nsw i64 %wide.trip.count, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 %2, i64 %i.ak, i1 false)
  store i32 %i.af, ptr %i.h, align 8
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #18
  br label %bb.l

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
  %i.af = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #16 ; 4 uses
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %4, ptr %i.ag, align 8
  %i.ah = invoke ptr @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20
end_hunk_4
